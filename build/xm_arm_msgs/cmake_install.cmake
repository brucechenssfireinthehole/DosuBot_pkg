# Install script for directory: /home/brucechen/dosubot_ws/src/xm_arm_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/brucechen/dosubot_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xm_arm_msgs/msg" TYPE FILE FILES
    "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialData.msg"
    "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmSerialDatagram.msg"
    "/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg/xm_ArmGripperCommand.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xm_arm_msgs/action" TYPE FILE FILES "/home/brucechen/dosubot_ws/src/xm_arm_msgs/action/xm_ArmGripperCommand.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xm_arm_msgs/msg" TYPE FILE FILES
    "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandAction.msg"
    "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionGoal.msg"
    "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionResult.msg"
    "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandActionFeedback.msg"
    "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandGoal.msg"
    "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandResult.msg"
    "/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg/xm_ArmGripperCommandFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xm_arm_msgs/cmake" TYPE FILE FILES "/home/brucechen/dosubot_ws/build/xm_arm_msgs/catkin_generated/installspace/xm_arm_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/brucechen/dosubot_ws/devel/include/xm_arm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/brucechen/dosubot_ws/devel/share/roseus/ros/xm_arm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/brucechen/dosubot_ws/devel/share/common-lisp/ros/xm_arm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/brucechen/dosubot_ws/devel/share/gennodejs/ros/xm_arm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/brucechen/dosubot_ws/devel/lib/python2.7/dist-packages/xm_arm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/brucechen/dosubot_ws/devel/lib/python2.7/dist-packages/xm_arm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/brucechen/dosubot_ws/build/xm_arm_msgs/catkin_generated/installspace/xm_arm_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xm_arm_msgs/cmake" TYPE FILE FILES "/home/brucechen/dosubot_ws/build/xm_arm_msgs/catkin_generated/installspace/xm_arm_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xm_arm_msgs/cmake" TYPE FILE FILES
    "/home/brucechen/dosubot_ws/build/xm_arm_msgs/catkin_generated/installspace/xm_arm_msgsConfig.cmake"
    "/home/brucechen/dosubot_ws/build/xm_arm_msgs/catkin_generated/installspace/xm_arm_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xm_arm_msgs" TYPE FILE FILES "/home/brucechen/dosubot_ws/src/xm_arm_msgs/package.xml")
endif()

