cmake_minimum_required(VERSION 2.8.3)
project(dosubot_hardware)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  hardware_interface
  transmission_interface
  controller_manager
  realtime_tools
  control_toolbox
  actionlib
  actionlib_msgs
  trajectory_msgs
  control_msgs
  sensor_msgs
  std_msgs
  xm_arm_msgs
)

catkin_package(
 INCLUDE_DIRS include
#  LIBRARIES trobo_control
  CATKIN_DEPENDS roscpp hardware_interface transmission_interface controller_manager
#  DEPENDS system_lib
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(dosubot_hardware src/main.cpp src/dosubot_hw.cpp)

target_link_libraries(dosubot_hardware
  ${catkin_LIBRARIES}
)

add_dependencies(
 dosubot_hardware
 xm_arm_msgs_generate_messages_cpp
)

install(TARGETS dosubot_hardware
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
