#include "ros/ros.h"
#include "std_msgs/String.h"
//回调函数
void callback(const std_msgs::String::ConstPtr& msg)
{
 ROS_INFO("I heard: [%s]", msg->data.c_str());
}
 
int main(int argc, char **argv)
{
 ros::init(argc, argv, "dosubot_serial_listener");
 ros::NodeHandle n;
 //订阅主题,接收串口数据
 ros::Subscriber sub = n.subscribe("sensor", 1000, callback);
 ros::spin();
 return 0;
}
