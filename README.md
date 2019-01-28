#**Dosubot_pkg**

[Dosubot](https://github.com/brucechenssfireinthehole/DosuBot_pkg) is a 5-DOF linear driven robot arm. It's based on ROS-control frame structure. This pkg contains all the packages needed to run the robot, as well as dependencies.
* Notice: Provides a complete upper development kit for controlling a five-degree-of-freedom line-driven robot. Similar five-degree-of-freedom robots can be used well. If you need to expand to more or reduce to less degrees of freedom, please prepare your own robot description file, and modify the configuration of ROS-control.

>贴图片
###**Features**
***
* **Functionality:**
  * *Arbitrary movement and motion planning in simulated environment*
  * *IMU-based human hand following movement in real environment*
  * *Human hand following movement based on skeleton recognition in real environment*
* **OS:** Ubuntu(16.04)
* **Princple:**
>贴图片
* **Packages:**
  * **dosubot_bringup**
    * The startup package include launch files to control real Dosubot robot.
  * **dosubot_control**
    * The startup package include launch files to control simulated Dosubot robot.
  * **dosubot_description**
    * The description urdf and mesh files of Dosubot.
  * **dosubot_hardware**
    * The hardware_interface src files, based on ROS-control frame.
  * **dosubot_hardware_controller_config**
    * The hardware_interface config files, based on ROS-control frame.
  * **dosubot_moveit_config**
    * Moveit config files generated from movit configuraion assistant.
  * **dosubot_serial**
    * The serial communicaton driver for communicating with real Dosubot robot.
  * **skeleton**
    * Simple Nite-2 skeleton detection soure code based on Kinect-2 RGB-D camera input.
  * **skeleton_send_node**
    * A node which is used to calculate human leg Kinematics based on skeleton detection result and send the human joint-angle to real Dosubot robot.
  * **xm_arm_hardware_serial_node**
    * Another serial communication driver in case **dosubot_serial** doesn't work. Here thanks to [myyerrol](https://github.com/myyerrol/xm_arm_workspace) for providing this package.
###**Results**
* **control with IMU msg:**
>贴视频
* **control with skeleton detection:**
>贴视频
###**Installation, Reinstallation and Uninstallation**

###**Citation**
If this pkg helps your research, please cite the paper below in your publication.
###**License**
Dosubotpkg is freely available for free non-commerical use, and it follows the [MIT license](https://github.com/brucechenssfireinthehole/DosuBot_pkg/blob/master/LICENSE)  rules, that's all.
