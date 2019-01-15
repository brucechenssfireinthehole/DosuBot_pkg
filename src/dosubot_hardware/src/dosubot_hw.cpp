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

// Authors: dusobot
// Created: 2018.9.12


#include <dosubot_hardware/dosubot_hw.h>

DosuBotHardware::DosuBotHardware(ros::NodeHandle nh)
  : nh_(nh),
   freq_(20)
{
   nh_.setCallbackQueue(&callback_queue_);
    jnt_name_.push_back("JOINT1");
    jnt_name_.push_back("JOINT2");
    jnt_name_.push_back("JOINT3");
    jnt_name_.push_back("JOINT4");
    jnt_name_.push_back("JOINT5");

    act_name_.push_back("JOINT1");
    act_name_.push_back("JOINT2");
    act_name_.push_back("JOINT3");
    act_name_.push_back("JOINT4");
    act_name_.push_back("JOINT5");

for (int i = 0; i < 5; i++)
    {
        jnt_pos_[jnt_name_[i]] = 0.0;
        jnt_vel_[jnt_name_[i]] = 0.0;
        jnt_eff_[jnt_name_[i]] = 0.0;
        jnt_cmd_[jnt_name_[i]] = 0.0;
        act_cmd_[act_name_[i]] = 0.0;
        act_pos_[act_name_[i]] = 0.0;
    
        hardware_interface::JointStateHandle jnt_state_handle(jnt_name_[i],
            &jnt_pos_[jnt_name_[i]], &jnt_vel_[jnt_name_[i]],
            &jnt_eff_[jnt_name_[i]]);
        jnt_state_interface.registerHandle(jnt_state_handle);
        hardware_interface::JointHandle jnt_position_handle(
            jnt_state_interface.getHandle(jnt_name_[i]),
            &jnt_cmd_[jnt_name_[i]]);
        jnt_position_interface.registerHandle(jnt_position_handle);  
  }

    registerInterface(&jnt_state_interface);
    registerInterface(&jnt_position_interface);

 for (int i = 0; i < 5; i++)
    {
        jnt_stamp_.push_back(ros::Time::now());
        jnt_status_.push_back(UNKNOWN);
    }
    arm_command_id_ = 3;
    arm_state_id_   = 4;

    arm_serial_pub_ = nh_.advertise<xm_arm_msgs::xm_ArmSerialDatagram>(
        "xm_arm_serial/send_arm_command", 1000);
    arm_state_sub_ = nh_.subscribe("xm_arm_serial/receive_arm_state", 1000,
        &DosuBotHardware::getArmStateCallback, this);
    arm_status_sub_ = nh_.subscribe("xm_arm_serial/receive_arm_status", 1000,
        &DosuBotHardware::getArmStatusCallback, this);
}


DosuBotHardware::~DosuBotHardware()
{
    nh_.shutdown();

}


void DosuBotHardware::getArmStateCallback(
    const xm_arm_msgs::xm_ArmSerialDatagram::ConstPtr& msg)
{
    const u_int8_t *data_ptr = msg->data.data();
    size_t jnt_index = msg->sender - 0x2B;

    if (*data_ptr != 0x01)
        return ;

    float data = *(float *)(data_ptr + 1);
//>>>>>>>>>>>>>>>>>>>>u8 to float>>>>>>>>>>>>>>>>>>>>>>>>>>//
/*
union float_char
{
  float angle;
   u_int8_t dt[4];
}r1;
r1.dt[0]=*(data_ptr+1);
r1.dt[1]=*(data_ptr+2);
r1.dt[3]=*(data_ptr+3);
r1.dt[4]=*(data_ptr+4);
float data=r1.angle;
*/
 // ROS_INFO_STREAM("ID: "<<jnt_index<<"  "<<"angle: "<<data<<"   ");
   // ROS_INFO_STREAM("------");

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
    ros::Time current_time = ros::Time::now();
    float delta_time = (current_time - jnt_stamp_[jnt_index]).toSec();
    jnt_stamp_[jnt_index] = current_time;

    act_pos_[jnt_name_[jnt_index]] = data;
    jnt_vel_[jnt_name_[jnt_index]] = 0;
    jnt_eff_[jnt_name_[jnt_index]] = 0;

    if (jnt_status_[jnt_index] == UNKNOWN)
    {
        jnt_status_[jnt_index] = READY;
        return ;
    }
    else
        jnt_status_[jnt_index] = RUNNING;
}


void DosuBotHardware::transPositionJointToActuator()
{
    act_cmd_["JOINT1"]        = (-jnt_cmd_["JOINT1"] -jnt_cmd_["JOINT2"]+jnt_cmd_["JOINT3"])*180.0/3.1415+368.8;
    act_cmd_["JOINT2"]       =  (-2.1628*jnt_cmd_["JOINT1"]+jnt_cmd_["JOINT2"])*180.0/3.1415+377.0;
    act_cmd_["JOINT3"]       = (jnt_cmd_["JOINT1"] +jnt_cmd_["JOINT2"]+jnt_cmd_["JOINT3"])*180.0/3.1415+265.3;
act_cmd_["JOINT4"]=(-jnt_cmd_["JOINT4"]-jnt_cmd_["JOINT5"])*180/3.1415+286;
act_cmd_["JOINT5"]=(jnt_cmd_["JOINT4"]-jnt_cmd_["JOINT5"])*180/3.1415+40;
/*
    act_cmd_["JOINT4"]     = -jnt_cmd_["joint_forearm"] +
        jnt_cmd_["joint_big_arm"] * 1.6667;
    act_cmd_["actuator_wrist_left"]  = -(-jnt_cmd_["joint_big_arm"] * 1.6667 +
        jnt_cmd_["joint_forearm"] * 1.6000 + jnt_cmd_["joint_wrist_pitching"]) *
        0.6250 + jnt_cmd_["joint_wrist_rotation"] * 0.7917;
    act_cmd_["actuator_wrist_right"] = -(-jnt_cmd_["joint_big_arm"] * 1.6667 +
        jnt_cmd_["joint_forearm"] * 1.6000 + jnt_cmd_["joint_wrist_pitching"]) *
        0.6250 - jnt_cmd_["joint_wrist_rotation"] * 0.7917;
*/
}


/*
// Because autuator's direction is not unified, the signs of positive and
// negative may have problem in the following formula.
void DosuBotHardware::transPositionActuatorToJoint()
{
    jnt_pos_["joint_lift"]    = -act_pos_["actuator_lift"] * 0.010;
    jnt_pos_["joint_waist"]   =  act_pos_["actuator_waist"];
    jnt_pos_["joint_big_arm"] = -act_pos_["actuator_big_arm"] * 0.600;
    jnt_pos_["joint_forearm"] = -(act_pos_["actuator_forearm"] +
        act_pos_["actuator_big_arm"]);
    jnt_pos_["joint_wrist_pitching"] = -(-act_pos_["actuator_big_arm"] * 0.6400
        - act_pos_["actuator_forearm"] * 1.6000 +
        (act_pos_["actuator_wrist_left"] + act_pos_["actuator_wrist_right"]) *
        0.8000);
    jnt_pos_["joint_wrist_rotation"] = (act_pos_["actuator_wrist_left"] -
        act_pos_["actuator_wrist_right"]) * 0.6316;
}
*/

void DosuBotHardware::getArmStatusCallback(
    const xm_arm_msgs::xm_ArmSerialDatagram::ConstPtr &msg)
{
    const u_int8_t *data_ptr = msg->data.data();
    size_t jnt_index = msg->sender - 0x2B;

    if (*data_ptr == 0x01)
    {
        if(*(data_ptr + 1) != 0x00)
        {
            ROS_ERROR_STREAM(
                "Writing joint's commands to embedded system failed!");
            jnt_status_[jnt_index] = ERROR;
            return ;
        }
        else
            jnt_status_[jnt_index] = RUNNING;
    }
}

void DosuBotHardware::publishArmJState(const u_int8_t func,
                                        const u_int8_t jnt_id)
{
    xm_arm_msgs::xm_ArmSerialDatagramPtr datagram_ptr =
        boost::make_shared<xm_arm_msgs::xm_ArmSerialDatagram>();
    datagram_ptr->sender = arm_state_id_;
    datagram_ptr->receiver = jnt_id + 0x2B;
    datagram_ptr->data.resize(1, 0);
    u_int8_t *data_ptr = datagram_ptr->data.data();
    data_ptr[0] = func;
  //  arm_serial_pub_.publish(datagram_ptr);
}

void DosuBotHardware::publishArmCommand(const u_int8_t func,
                                         const u_int8_t jnt_id,
                                         const float    jnt_pos)
{
    xm_arm_msgs::xm_ArmSerialDatagramPtr datagram_ptr =
        boost::make_shared<xm_arm_msgs::xm_ArmSerialDatagram>();
    datagram_ptr->sender = arm_command_id_;
    datagram_ptr->receiver = jnt_id + 0x2B;
    datagram_ptr->data.resize(5, 0);
    u_int8_t *data_ptr = datagram_ptr->data.data();
    data_ptr[0] = func;
    *(float *)(data_ptr + 1) = jnt_pos;
    arm_serial_pub_.publish(datagram_ptr);
}

bool DosuBotHardware::checkArmStatus()
{
    for (int i = 0; i < 5; i++)
    {
        if (jnt_status_[i] == ERROR)
        {
            ROS_ERROR_STREAM("%s state error" << jnt_name_[i]);
            return false;
        }
    }

    return true;
}

void DosuBotHardware::read(ros::Time time, ros::Duration period)
{
    for (size_t i = 0; i < 5; i++)
       publishArmJState(0x01, i);

    //transPositionActuatorToJoint();

    callback_queue_.callAvailable(ros::WallDuration(1 / freq_ / 3));
    ros::Time current_time = ros::Time::now();

    for (size_t i = 0; i < 5; i++)
    {
        if ((current_time - jnt_stamp_[i]).toSec() > 0.5)
        {
         //   ROS_WARN_STREAM("Reading timeout!");
            return ;
        }
    }
}

void DosuBotHardware::write(ros::Time time, ros::Duration period)
{
 
  // Real Robot functionality coding here...
  // below code is simulating real robot delay.	
//  pos_[0] = pos_[0] + 0.0001* (cmd_[0] - pos_[0]);
 // pos_[1] = pos_[1] + 0.0001* (cmd_[1] - pos_[1]);
//pos_[2] = pos_[2] + 0.0001* (cmd_[2] - pos_[2]);
//pos_[3] = pos_[3] + 0.0001* (cmd_[3] - pos_[3]);
//pos_[4] = pos_[4] + 0.0001* (cmd_[4] - pos_[4]);
 // ROS_DEBUG_STREAM("Debug:" << pos_[0] << cmd_[0]);
  // Dump cmd_ from MoveIt!, current simulated real robot pos_.
 // printf("%f, %f, %f, %f\n",pos_[0],cmd_[0],pos_[1],cmd_[1]);


transPositionJointToActuator();
for(size_t i =0;i<5;i++)
{ 
  if (act_cmd_[act_name_[i]]<1) act_cmd_[act_name_[i]]=1;
  if(act_cmd_[act_name_[i]]>359)act_cmd_[act_name_[i]]=359;
}
for(size_t i =0;i<5;i++){
   // jnt_pos_[jnt_name_[i]] = jnt_pos_[jnt_name_[i]]+0.01*(jnt_cmd_[jnt_name_[i]] - jnt_pos_[jnt_name_[i]]);
  jnt_pos_[jnt_name_[i]]=jnt_cmd_[jnt_name_[i]];
  //  printf("%f, %f\n",jnt_pos_[jnt_name_[i]],jnt_cmd_[jnt_name_[i]]);
   }
ROS_INFO_STREAM("------");
printf("%f, %f, %f, %f, %f \r\n",jnt_pos_[jnt_name_[0]],jnt_pos_[jnt_name_[1]],jnt_pos_[jnt_name_[2]],jnt_pos_[jnt_name_[3]],jnt_pos_[jnt_name_[4]]);
printf("%f, %f, %f, %f, %f \r\n",jnt_cmd_[jnt_name_[0]],jnt_cmd_[jnt_name_[1]],jnt_cmd_[jnt_name_[2]],jnt_cmd_[jnt_name_[3]],jnt_cmd_[jnt_name_[4]]);
ROS_INFO_STREAM("------");
//>>>>>>>>>>>>>>>>>>>>>>change here
    for (size_t i = 0; i < 3; i++)
   {   printf("act_cmd: %f  ",act_cmd_[act_name_[i]]);
       publishArmCommand(0x01, i, act_cmd_[act_name_[i]]);
       //std::cout << "Hello World!" << std::endl;
       boost::this_thread::sleep( boost::posix_time::milliseconds(5) ); //单位是毫秒
   }
/*

    ROS_INFO_STREAM("joint_command");

    ROS_INFO_STREAM(
        "lift: "    << jnt_cmd_["joint_lift"]    << " " <<
        "waist: "   << jnt_cmd_["joint_waist"]   << " " <<
        "big_arm: " << jnt_cmd_["joint_big_arm"] << " " <<
        "forearm: " << jnt_cmd_["joint_forearm"] << " " <<
        "wrist_pitching: " << jnt_cmd_["joint_wrist_pitching"] << " " <<
        "wrist_rotation: " << jnt_cmd_["joint_wrist_rotation"] << " ");
    ROS_INFO_STREAM("------");
*/
    callback_queue_.callAvailable(ros::WallDuration(1 / freq_ / 3));
    ros::Time current_time = ros::Time::now();

    for (size_t i = 0; i < 5; i++)
    {
        if ((current_time - jnt_stamp_[i]).toSec() > 0.5)
        {
          //  ROS_WARN_STREAM("Writing timeout!");
            return ;
        }
    }
}

bool DosuBotHardware::start()
{
    for (size_t i = 0; i < 5; i++)
    {
        publishArmJState(0x01, i);
        publishArmCommand(0x01, i, 0.0);
    }

    ROS_INFO_STREAM("Starting to read and write joint's states!");
    callback_queue_.callAvailable(ros::WallDuration(1 / freq_));

    if (!checkArmStatus())
    {
        ROS_ERROR_STREAM("Initialize Failed!");
        return false;
    }
    else
        return true;
}

void DosuBotHardware::stop()
{
    nh_.shutdown();
}

double DosuBotHardware::getFreq() const
{
    return freq_;
}

ros::Time DosuBotHardware::getTime()
{
    return ros::Time::now();
}

ros::Duration DosuBotHardware::getPeriod()
{
    return ros::Duration(1 / freq_);
}

ros::CallbackQueue* DosuBotHardware::getCallbackQueue()
{
    return &callback_queue_;
}
