cmake_minimum_required(VERSION 2.8.3)
project(trobo_control)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  hardware_interface
  transmission_interface
  controller_manager
  actionlib
  actionlib_msgs
  trajectory_msgs
  control_msgs
  sensor_msgs
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

add_executable(trobo_control src/trobo_control.cpp src/trobo_hw.cpp)

target_link_libraries(trobo_control
  ${catkin_LIBRARIES}
)

install(TARGETS trobo_control
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
