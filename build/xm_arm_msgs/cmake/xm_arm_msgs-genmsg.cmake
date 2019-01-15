# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "xm_arm_msgs: 10 messages, 0 services")

set(MSG_I_FLAGS "-Ixm_arm_msgs:/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg;-Ixm_arm_msgs:/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(xm_arm_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandAction.msg" NAME_WE)
add_custom_target(_xm_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xm_arm_msgs" "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandAction.msg" "xm_arm_msgs/xm_ArmGripperCommandActionGoal:std_msgs/Header:xm_arm_msgs/xm_ArmGripperCommandGoal:xm_arm_msgs/xm_ArmGripperCommandActionFeedback:xm_arm_msgs/xm_ArmGripperCommandActionResult:xm_arm_msgs/xm_ArmGripperCommandResult:xm_arm_msgs/xm_ArmGripperCommand:xm_arm_msgs/xm_ArmGripperCommandFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg" NAME_WE)
add_custom_target(_xm_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xm_arm_msgs" "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg" ""
)

get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg" NAME_WE)
add_custom_target(_xm_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xm_arm_msgs" "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg" "xm_arm_msgs/xm_ArmGripperCommand"
)

get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg" NAME_WE)
add_custom_target(_xm_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xm_arm_msgs" "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg" "actionlib_msgs/GoalID:xm_arm_msgs/xm_ArmGripperCommandResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg" NAME_WE)
add_custom_target(_xm_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xm_arm_msgs" "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg" "xm_arm_msgs/xm_ArmGripperCommandFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg" NAME_WE)
add_custom_target(_xm_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xm_arm_msgs" "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg" "xm_arm_msgs/xm_ArmGripperCommandGoal:actionlib_msgs/GoalID:xm_arm_msgs/xm_ArmGripperCommand:std_msgs/Header"
)

get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg" NAME_WE)
add_custom_target(_xm_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xm_arm_msgs" "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg" ""
)

get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialDatagram.msg" NAME_WE)
add_custom_target(_xm_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xm_arm_msgs" "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialDatagram.msg" ""
)

get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg" NAME_WE)
add_custom_target(_xm_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xm_arm_msgs" "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg" ""
)

get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialData.msg" NAME_WE)
add_custom_target(_xm_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xm_arm_msgs" "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialData.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_cpp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_cpp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_cpp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_cpp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_cpp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_cpp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_cpp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_cpp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandAction.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg;/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_cpp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialDatagram.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xm_arm_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(xm_arm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xm_arm_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(xm_arm_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(xm_arm_msgs_generate_messages xm_arm_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandAction.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_cpp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_cpp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_cpp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_cpp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_cpp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_cpp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_cpp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialDatagram.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_cpp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_cpp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialData.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_cpp _xm_arm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xm_arm_msgs_gencpp)
add_dependencies(xm_arm_msgs_gencpp xm_arm_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xm_arm_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_eus(xm_arm_msgs
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_eus(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_eus(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_eus(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_eus(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_eus(xm_arm_msgs
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_eus(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_eus(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandAction.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg;/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_eus(xm_arm_msgs
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialDatagram.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xm_arm_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(xm_arm_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xm_arm_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(xm_arm_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(xm_arm_msgs_generate_messages xm_arm_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandAction.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_eus _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_eus _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_eus _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_eus _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_eus _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_eus _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_eus _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialDatagram.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_eus _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_eus _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialData.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_eus _xm_arm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xm_arm_msgs_geneus)
add_dependencies(xm_arm_msgs_geneus xm_arm_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xm_arm_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_lisp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_lisp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_lisp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_lisp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_lisp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_lisp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_lisp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_lisp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandAction.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg;/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_lisp(xm_arm_msgs
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialDatagram.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xm_arm_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(xm_arm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xm_arm_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(xm_arm_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(xm_arm_msgs_generate_messages xm_arm_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandAction.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_lisp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_lisp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_lisp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_lisp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_lisp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_lisp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_lisp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialDatagram.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_lisp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_lisp _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialData.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_lisp _xm_arm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xm_arm_msgs_genlisp)
add_dependencies(xm_arm_msgs_genlisp xm_arm_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xm_arm_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_nodejs(xm_arm_msgs
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_nodejs(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_nodejs(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_nodejs(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_nodejs(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_nodejs(xm_arm_msgs
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_nodejs(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_nodejs(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandAction.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg;/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_nodejs(xm_arm_msgs
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialDatagram.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xm_arm_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(xm_arm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xm_arm_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(xm_arm_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(xm_arm_msgs_generate_messages xm_arm_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandAction.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_nodejs _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_nodejs _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_nodejs _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_nodejs _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_nodejs _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_nodejs _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_nodejs _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialDatagram.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_nodejs _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_nodejs _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialData.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_nodejs _xm_arm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xm_arm_msgs_gennodejs)
add_dependencies(xm_arm_msgs_gennodejs xm_arm_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xm_arm_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_py(xm_arm_msgs
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_py(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_py(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_py(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_py(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_py(xm_arm_msgs
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_py(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_py(xm_arm_msgs
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandAction.msg"
  "${MSG_I_FLAGS}"
  "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg;/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg;/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xm_arm_msgs
)
_generate_msg_py(xm_arm_msgs
  "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialDatagram.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xm_arm_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(xm_arm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xm_arm_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(xm_arm_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(xm_arm_msgs_generate_messages xm_arm_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandAction.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_py _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_py _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_py _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_py _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_py _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_py _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_py _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialDatagram.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_py _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_py _xm_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialData.msg" NAME_WE)
add_dependencies(xm_arm_msgs_generate_messages_py _xm_arm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xm_arm_msgs_genpy)
add_dependencies(xm_arm_msgs_genpy xm_arm_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xm_arm_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xm_arm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xm_arm_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(xm_arm_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(xm_arm_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xm_arm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xm_arm_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(xm_arm_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(xm_arm_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xm_arm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xm_arm_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(xm_arm_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(xm_arm_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xm_arm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xm_arm_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(xm_arm_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(xm_arm_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xm_arm_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xm_arm_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xm_arm_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(xm_arm_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(xm_arm_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
