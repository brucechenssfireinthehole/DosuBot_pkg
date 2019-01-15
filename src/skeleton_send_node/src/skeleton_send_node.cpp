//transfer skeleton pose to actuator angle

#include <ros/ros.h>
#include <stdlib.h>
#include <iostream>
#include <vector>
#include <math.h>
#include <ros/package.h>
#include <tf/transform_broadcaster.h>
#include <stdio.h>
#include <geometry_msgs/Point.h>
#include <boost/shared_ptr.hpp>
#include <realtime_tools/realtime_buffer.h>
#include <realtime_tools/realtime_publisher.h>
#include "skeleton/JointMsg.h"
#include <xm_arm_msgs/xm_ArmSerialDatagram.h>

using namespace std;
ros::Publisher     arm_serial_pub_;
ros::Subscriber    skeleton_state_sub_;
float joint_angle[4];
float act_angle[4];


void transfromjointtomotor()
{//need change!
    act_angle[0]=1.5*(-joint_angle[0]+joint_angle[1]-joint_angle[2])*180/3.1415+220;
    act_angle[1]=1.5*(-2.1628*joint_angle[0]-joint_angle[1])*180/3.1415+300;
    act_angle[2]=1.5*(joint_angle[0]-joint_angle[1]-joint_angle[2])*180/3.1415+260;
    act_angle[3]=200-120*joint_angle[3];
//act_angle[3]=100;
}

geometry_msgs::Point rotate(float angle,geometry_msgs::Point Point)
{
  geometry_msgs::Point feedback;
  feedback.x=Point.x;
  feedback.y=Point.y*cos(angle)-Point.z*sin(angle);
  feedback.z=Point.y*sin(angle)+Point.z*cos(angle);

  return feedback;
}


void publishArmCommand(const u_int8_t func,
                                         const u_int8_t jnt_id,
                                         const float    jnt_pos)
{
    xm_arm_msgs::xm_ArmSerialDatagramPtr datagram_ptr =
        boost::make_shared<xm_arm_msgs::xm_ArmSerialDatagram>();
    datagram_ptr->sender = 0x03;
    datagram_ptr->receiver = jnt_id + 0x2B;
    datagram_ptr->data.resize(5, 0);
    u_int8_t *data_ptr = datagram_ptr->data.data();
    data_ptr[0] = func;
    *(float *)(data_ptr + 1) = jnt_pos;
    arm_serial_pub_.publish(datagram_ptr);
}

void transfer_skeleton_motor(const skeleton::JointMsg::ConstPtr &msg)

{  
   std::vector<geometry_msgs::Point> skeletonPoints;
   skeletonPoints= msg->joints;
   
  geometry_msgs::Point point1= skeletonPoints[0];
   geometry_msgs::Point point2= skeletonPoints[1];
    geometry_msgs::Point point3= skeletonPoints[2];

//ROS_INFO("I heard: %f \r\n", point1.x);
if (point1.x>5000) 
  {
  ROS_INFO("initialize failed ,please check you standing pose!!!");
  return ;
  }
if(point1.x<0)
 {
  ROS_INFO("initialize failed ,please check you standing pose!!!");
  return ;
 }

float x1,y1,z1,x2,y2,z2,x3,y3,z3,l1,l2;
float angle1,angle2,angle3,angle4;
float sum2;
x1=point1.x;
x2=point2.x;
x3=point3.x;
y1=point1.y;
y2=point2.y;
y3=point3.y;
z1=point1.z;
z2=point2.z;
z3=point3.z;

l1=sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1)+(z2-z1)*(z2-z1));
l2=sqrt((x3-x2)*(x3-x2)+(y3-y2)*(y3-y2)+(z3-z2)*(z3-z2));

if((x2-x1)<0) {
ROS_INFO("ALERT:　sorry, angle2 out of range, please move your body~~");
return;
}
//angle2 range is ok
angle2=asin((x2-x1)/l1);
//sum2=pow((x2-x1)/l1,2)+pow((z1-z2)/l1,2)+pow((y2-y1)/l1,2);
//printf("sum2: >>>>>>>>>>>>>>>    %f",sum2);
if((y2-y1)<0){
ROS_INFO("ALERT:　sorry again, angle out of range, please move your body~~");
return;
}

if((z1-z2)<0){
ROS_INFO("ALERT:　sorry again again, angle out of range, please move your body~~");
return;
}
//angle1 range is ok
//angle1=acos((y2-y1)/(l1*cos(angle2)));
//need change here
if((z1-z2)>(y2-y1))
{
  angle1=asin((z1-z2)/(l1*cos(angle2)));
}
else angle1=acos((y2-y1)/(l1*cos(angle2)));
//angle1=(asin((z1-z2)/(l1*cos(angle2)))+acos((y2-y1)/(l1*cos(angle2))))/2;
//>>>>>>>>>>>>>>>rotate transmission>>>>>>>>>>>>>>>>>
point1=rotate(angle1,point1);
point2=rotate(angle1,point2);
point3=rotate(angle1,point3);
x1=point1.x;
x2=point2.x;
x3=point3.x;
y1=point1.y;
y2=point2.y;
y3=point3.y;
z1=point1.z;
z2=point2.z;
z3=point3.z;
//angle4 is ready!!!!!
angle4=acos(((x3-x2)*(x2-x1)+(y3-y2)*(y2-y1)+(z3-z2)*(z2-z1))/(l1*l2));

//>>>>>>>>>>>>>>>>>calculate angle3>>>>>>>>>>>>>>>>>>>
float d_long,d_short;
float mark;
d_long=l2*sin(angle4);
d_short=abs(x3*(-cos(angle2))+y3*sin(angle2)+x1*cos(angle2)-y1*sin(angle2));
angle3=asin(d_short/d_long);

mark=-cos(angle2)*(x3-x1)+sin(angle2)*(y3-y1);

if(mark>0) angle3=-angle3;
//angle3 is ready!!!!!


ROS_INFO("I heard joint1:%f ;joint2:%f ; joint3:%f ;joint4:%f  \r\n",angle1,angle2,angle3,angle4);
joint_angle[0]=angle1;
joint_angle[1]=angle2;
joint_angle[2]=angle3;
joint_angle[3]=angle4;

//transmit from joint_angle to motor_angle

transfromjointtomotor();
for(size_t i =0;i<3;i++)
{ 
  if (act_angle[i]<1) act_angle[i]=1;
  if(act_angle[i]>359)act_angle[i]=359;
}
printf(">>>>>>>>>>act_angle:>>>>>>>>>> motor1:  %f , motor2:  %f  , motor3: %f,motor4: %f", act_angle[0],act_angle[1],act_angle[2],act_angle[3]);

  for(size_t i=0;i<4;i++)
  {
   publishArmCommand(0x01,i, act_angle[i]);
   //delay func
   boost::this_thread::sleep( boost::posix_time::milliseconds(5) ); //单位是毫秒
  }

}




//main func
int main( int argc, char**argv)
{
    ros::init(argc,argv,"skeleton_send_node");
    ros::NodeHandle nh;

for(size_t i=0; i<4; i++)  
  {
  joint_angle[i]=0;
  }

    arm_serial_pub_ = nh.advertise<xm_arm_msgs::xm_ArmSerialDatagram>(
        "xm_arm_serial/send_arm_command", 1000);
    
   skeleton_state_sub_=nh.subscribe("skeleton_msg", 1000,
        transfer_skeleton_motor);

ros::spin();

return 0;

}
