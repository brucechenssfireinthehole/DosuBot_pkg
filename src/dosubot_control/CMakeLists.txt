cmake_minimum_required(VERSION 2.8.3)
project(dosubot_control)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  controller_manager
  serial
  urdf
 )

catkin_package()

install(DIRECTORY config
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
