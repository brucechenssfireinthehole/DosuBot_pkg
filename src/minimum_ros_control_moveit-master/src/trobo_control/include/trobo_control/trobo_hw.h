#include <ros/ros.h>
#include <hardware_interface/joint_command_interface.h>
#include <hardware_interface/joint_state_interface.h>
#include <hardware_interface/robot_hw.h>
#include <map>
#include <string>
#include <vector>

class TRobo : public hardware_interface::RobotHW
{
public:
  TRobo();

  ros::Time getTime() const { return ros::Time::now(); }
  ros::Duration getPeriod() const { return ros::Duration(0.01); }

  void read(ros::Time, ros::Duration);

  void write(ros::Time, ros::Duration);

protected:
  double cmd_[5];
  double pos_[5];
  double vel_[5];
  double eff_[5];
  hardware_interface::JointStateInterface jnt_state_interface;
  hardware_interface::PositionJointInterface jnt_pos_interface;

};
