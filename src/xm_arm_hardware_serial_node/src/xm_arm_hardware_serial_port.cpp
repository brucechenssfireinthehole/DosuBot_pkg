/*********************************************************************
 *  Software License Agreement (BSD License)
 *
 *  Copyright (c) 2016, Team-Xmbot-Service-Robot
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of the Team-Xmbot-Service-Robot nor the names
 *     of its contributors may be used to endorse or promote products
 *     derived from this software without specific prior written
 *     permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 ********************************************************************/
// Authors: startar, myyerrol
// Created: 2012.4.8, 2016.4.15

#include <xm_arm_hardware_serial_node/xm_arm_hardware_serial_port.h>

namespace xm_serial_node {
SerialPort::SerialPort()
{
    cout << "SerialPort Object created!" << endl;
    num1=20;   
num2=20;   
num3=20;
    temp_buffer_.resize(1024, 0);
}

SerialPort::~SerialPort()
{
    ptr_io_service_->stop();
    thread_.join();
}

void SerialPort::startOneRead()
{
    cout << "SerialPort::startOneRead called !!" << endl;
    mutex::scoped_lock lock(serial_mutex_);
//>>>>>>>>>>>>>>>>>change occurs>>>>>>>>>>>>>>>>>>

    ptr_serial_->async_read_some(buffer(temp_buffer_),
        bind(&SerialPort::readHandler, this, placeholders::error,
        placeholders::bytes_transferred));

}

void SerialPort::startOneWrite()
{
    mutex::scoped_lock lock(serial_mutex_);
    async_write(*ptr_serial_, buffer(*(write_queue_.front())),
            bind(&SerialPort::writeHandler, this, placeholders::error));
}

void SerialPort::runMain()
{
    cout << "SerialPort mainThread STARTED!" << endl;
    state_ = WAITING_FF;
    current_header_.resize(4, 0);
    startOneRead();
    ptr_io_service_->run();
    cout << "SerialPort mainThread EXITED!" << endl;
}

void SerialPort::readHandler(const system::error_code &ec, size_t bytes_trans)
{
    if (ec)
    {
        cout << "SerialPort read error !!" << endl;
        return;
    }

    for (size_t i = 0; i < bytes_trans; i++)
    {
        u_int8_t byte = temp_buffer_.at(i);
      //  printf("State=%d, Processing byte: 0x%X \n", state_, byte);

        switch (state_)
        {
            case WAITING_FF:
                if (byte == (u_int8_t)0xFF)
                {
                    state_ = WAITING_FF2;
                    ptr_timer_.reset(new deadline_timer(*ptr_io_service_,
                        posix_time::milliseconds(timeout_)));
                    ptr_timer_->async_wait(bind(&SerialPort::timeoutHandler,
                        this, placeholders::error));
                }
            break;
            case WAITING_FF2:
                if (byte == (u_int8_t)0xFF)
                {
                    cout << "Get a new datagram header !!" << endl;
                    header_bytes_read_ = 0;
                    state_ = READING_HEAD;
                }
                else
                    state_ = WAITING_FF;
            break;
            case READING_HEAD:
                current_header_[header_bytes_read_] = byte;
                header_bytes_read_++;

                if (HEADER_LEN == header_bytes_read_)
                {
                    uint16_t data_len = ((uint16_t)(current_header_[2]) << 8) +
                        current_header_[3];
                    
                if (data_len > 0)
                {
                    current_data_.resize(data_len, 0);
                    data_bytes_read_ = 0;
                    state_ = READING_DATA;
                }
                else
                    state_ = WAITING_FF;
                }
                break;
            case READING_DATA:
                current_data_[data_bytes_read_++] = byte;

                if (current_data_.size() == data_bytes_read_)
                    state_ = READING_CHECKSUM;
                break;
            case READING_CHECKSUM:
                ptr_timer_->cancel();
                ptr_timer_.reset();
                u_int8_t byte_sum = 0;

                for (size_t k = 0; k < current_header_.size(); k++)
                    byte_sum += current_header_.at(k);
              
                for (size_t k = 0; k < current_data_.size(); k++)
                   byte_sum += current_data_.at(k);
          // printf("byte_sum  0x%X ;byte: 0x%X \r\n",  byte_sum, byte);
                if (byte_sum == byte)
                {
                    xm_arm_msgs::xm_ArmSerialDatagramPtr ptr_new_diagram =
                        make_shared<xm_arm_msgs::xm_ArmSerialDatagram>();
                    ptr_new_diagram->sender     = current_header_.at(1); //id+0x2a
                    ptr_new_diagram->receiver   = current_header_.at(0); //4
                    ptr_new_diagram->data       = current_data_;
                //    cout << "A new datagram received !!" << endl;
                    data_callback_func_(ptr_new_diagram);
                }
                else
                //    cout << "checksum error !!" << endl;

                state_ = WAITING_FF;
                break;
        }
    }
    startOneRead();
}

void SerialPort::writeHandler(const system::error_code &ec)
{
    if (ec)
    {
        cout << "Serial write error!" << endl;
        return ;
    }
    else
    {
        mutex::scoped_lock lock(write_queue_mutex_);
        write_queue_.pop();

        if (write_queue_.empty()==false)
            startOneWrite();
    }
}

void SerialPort::timeoutHandler(const system::error_code &ec)
{
    if (!ec)
    {
        cout << "Time Out !" << endl;
        state_ = WAITING_FF;
    }
}

void SerialPort::setSerialParams(const SerialParams &params)
{
    serial_params_ = params;
}

void SerialPort::setTimeOut(int timeout)
{
    timeout_ = timeout;
}

bool SerialPort::startThread()
{
    cout << "SerialPort::startThread() called!" << endl;
    ptr_io_service_ = make_shared<io_service>();

    try
    {
        ptr_serial_ = make_shared<serial_port>(ref(*ptr_io_service_),
            serial_params_.serial_port_);
//cout<<serial_params_.serial_port_<<endl;
        ptr_serial_->set_option(
            serial_port::baud_rate(serial_params_.baud_rate_));
//cout<<serial_params_.baud_rate_<<endl;
        ptr_serial_->set_option(
            serial_port::flow_control((
            serial_port::flow_control::type)serial_params_.flow_control_));
//cout<<serial_params_.flow_control_<<endl;
        ptr_serial_->set_option(
            serial_port::parity((
            serial_port::parity::type)serial_params_.parity_bits_));
//cout<<serial_params_.parity_bits_<<endl;
        ptr_serial_->set_option(
            serial_port::stop_bits((
            serial_port::stop_bits::type)serial_params_.stop_bits_));
     //   prt_serial_->set_option(serial__port::stop_bits(serial_port::stop_bits::one)); 
//cout<<serial_params_.stop_bits_<<endl;
        ptr_serial_->set_option(serial_port::character_size(8));
    }
    catch (std::exception &e)
    {
        cout << "Failed to open serial port !" << endl;
        cout << "Error Info: " << e.what() << endl;
        return false;
    }

    try
    {
        thread_ = thread(bind(&SerialPort::runMain, this));
    }
    catch (std::exception &e)
    {
        cout << "Failed to create thread !" << endl;
        cout << "Error Info: " << e.what() << endl;
        return false;
    }

    return true;
}

bool SerialPort::stopThread()
{
    ptr_io_service_->stop();
    return true;
}

void SerialPort::setCallbackFunc(
    const function<void(xm_arm_msgs::xm_ArmSerialDatagramPtr)> &func)
{
    data_callback_func_ = func;
}

bool SerialPort::writeDataGram(
    const xm_arm_msgs::xm_ArmSerialDatagram &datagram)
{
    u_int8_t byte_sum = 0;
    const size_t data_len = datagram.data.size();
    byte_vector buffer_to_send(2 + HEADER_LEN + data_len + 1, 0);
    buffer_to_send[0] = buffer_to_send[1] = (u_int8_t)0xFF;
    buffer_to_send[2] = datagram.sender;
    buffer_to_send[3] = datagram.receiver;
    buffer_to_send[4] = (u_int8_t)(data_len >> 8);
    buffer_to_send[5] = (u_int8_t)(data_len & 0xFF);


    for (size_t i = 0; i < data_len; i++)
        buffer_to_send[6 + i] = datagram.data.at(i);

    for (size_t i = 2; i < buffer_to_send.size() - 1; i++)
        byte_sum += buffer_to_send.at(i);

  // buffer_to_send[buffer_to_send.size() - 1] = (u_int8_t)(byte_sum % 255);
    buffer_to_send[buffer_to_send.size() - 1]= byte_sum;
 /*  buffer_to_send[2]=(u_int8_t)0x03;
   buffer_to_send[3]=(u_int8_t)0x2c;
   buffer_to_send[4]=(u_int8_t)0x00;
  buffer_to_send[5]=(u_int8_t)0x05;
buffer_to_send[6]=(u_int8_t)0x01;
for (size_t j = 7; j<10;j++)
buffer_to_send[j]=(u_int8_t)0x00;
buffer_to_send[10]=(u_int8_t)0x80;   
buffer_to_send[11]=(u_int8_t)0xb5;   
*/
 cout << "Sending Bytes: " << endl;

    for (size_t i = 0; i < buffer_to_send.size(); i++)
        printf("%02X ", buffer_to_send.at(i));

    cout << endl;
  // boost::this_thread::sleep( boost::posix_time::milliseconds(2000) );  //change here
/* 
if (buffer_to_send[3]==0x2B)
 { 
  if(!(num1==0))
  {
   num1--;
   return true;
  }
  num1=10;
 }

 if (buffer_to_send[3]==0x2C)
 { 
  if(!(num2==0))
  {
   num2--;
   return true;
  }
  num2=10;
 }

 if (buffer_to_send[3]==0x2D)
 { 
  if(!(num3==0))
  {
   num3--;
   return true;
  }
  num3=10;
 }
 */
    return writeRaw(buffer_to_send);

}

bool SerialPort::writeRaw(const byte_vector &raw_data)
{
    mutex::scoped_lock lock(write_queue_mutex_);
    bool empty = write_queue_.empty();
    ptr_byte_vector data(new byte_vector(raw_data));
    write_queue_.push(data);
  
    if (empty)
        startOneWrite();
    
    return true;
}

} /* namespace xm_serial_node */
