cmake_minimum_required(VERSION 2.8.3)
project(skeleton_send_node)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  roslib
 # rosopencv
  sensor_msgs
  std_msgs
  tf
  skeleton
 # message_generation
  xm_arm_msgs
)

catkin_package(
 INCLUDE_DIRS include
#  LIBRARIES trobo_control
  CATKIN_DEPENDS roscpp 
#  DEPENDS system_lib
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(skeleton_send_node src/skeleton_send_node.cpp)



add_dependencies(
 skeleton_send_node
 skeleton_generate_messages_cpp
 xm_arm_msgs_generate_messages_cpp
)

target_link_libraries(skeleton_send_node
  ${catkin_LIBRARIES}
)

install(TARGETS skeleton_send_node
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
