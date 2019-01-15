#include <ros/ros.h>
#include <ros/package.h>
#include <angles/angles.h>
#include <trobo_control/trobo_hw.h>
#include <iostream> // for debug
#include <math.h>


TRobo::TRobo()
{
  // connect and register the joint state interface
  hardware_interface::JointStateHandle state_handle_1("JOINT1", &pos_[0], &vel_[0], &eff_[0]);
  jnt_state_interface.registerHandle(state_handle_1);

  // connect and register the joint state interface
  hardware_interface::JointStateHandle state_handle_2("JOINT2", &pos_[1], &vel_[1], &eff_[1]);
  jnt_state_interface.registerHandle(state_handle_2);

  hardware_interface::JointStateHandle state_handle_3("JOINT3", &pos_[2], &vel_[2], &eff_[2]);
  jnt_state_interface.registerHandle(state_handle_3);

  hardware_interface::JointStateHandle state_handle_4("JOINT4", &pos_[3], &vel_[3], &eff_[3]);
  jnt_state_interface.registerHandle(state_handle_4);

  hardware_interface::JointStateHandle state_handle_5("JOINT5", &pos_[4], &vel_[4], &eff_[4]);
  jnt_state_interface.registerHandle(state_handle_5);
  registerInterface(&jnt_state_interface);

  // connect and register the joint position interface
  hardware_interface::JointHandle pos_handle_1(jnt_state_interface.getHandle("JOINT1"), &cmd_[0]);
  jnt_pos_interface.registerHandle(pos_handle_1);
  
  // connect and register the joint position interface
  hardware_interface::JointHandle pos_handle_2(jnt_state_interface.getHandle("JOINT2"), &cmd_[1]);
  jnt_pos_interface.registerHandle(pos_handle_2);

  hardware_interface::JointHandle pos_handle_3(jnt_state_interface.getHandle("JOINT3"), &cmd_[2]);
  jnt_pos_interface.registerHandle(pos_handle_3);

  hardware_interface::JointHandle pos_handle_4(jnt_state_interface.getHandle("JOINT4"), &cmd_[3]);
  jnt_pos_interface.registerHandle(pos_handle_4);

  hardware_interface::JointHandle pos_handle_5(jnt_state_interface.getHandle("JOINT5"), &cmd_[4]);
  jnt_pos_interface.registerHandle(pos_handle_5);
  registerInterface(&jnt_pos_interface);
}

void TRobo::read(ros::Time time, ros::Duration period)
{
}

void TRobo::write(ros::Time time, ros::Duration period)
{
 
  // Real Robot functionality coding here...
  // below code is simulating real robot delay.	
  pos_[0] = pos_[0] + 0.0001* (cmd_[0] - pos_[0]);
  pos_[1] = pos_[1] + 0.0001* (cmd_[1] - pos_[1]);
pos_[2] = pos_[2] + 0.0001* (cmd_[2] - pos_[2]);
pos_[3] = pos_[3] + 0.0001* (cmd_[3] - pos_[3]);
pos_[4] = pos_[4] + 0.0001* (cmd_[4] - pos_[4]);
  ROS_DEBUG_STREAM("Debug:" << pos_[0] << cmd_[0]);
  // Dump cmd_ from MoveIt!, current simulated real robot pos_.
  printf("%f, %f, %f, %f\n",pos_[0],cmd_[0],pos_[1],cmd_[1]);
}

