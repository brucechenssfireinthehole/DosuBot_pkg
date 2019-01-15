#include <ros/ros.h>
#include <ros/time.h>
#include <controller_manager/controller_manager.h>
#include <dosubot_hardware/dosubot_hw.h>

int main(int argc, char *argv[])
{
  ros::init(argc, argv, "dosubot_hardware");
  ros::NodeHandle do_nh;

  DosuBotHardware dosubot(do_nh);

  ros::NodeHandle cm_nh("dosubot");
  ros::CallbackQueue cm_callback_queue;
  cm_nh.setCallbackQueue(&cm_callback_queue);
  controller_manager::ControllerManager cm(&dosubot, cm_nh);

  ros::Rate rate(dosubot.getFreq());
  ros::AsyncSpinner hw_spinner(1, dosubot.getCallbackQueue());
    ros::AsyncSpinner cm_spinner(1, &cm_callback_queue);
    hw_spinner.start();
    cm_spinner.start();


  while(ros::ok())
  {
    ros::Time current_time = dosubot.getTime();
   dosubot.read(current_time,
            ros::Duration(1 / dosubot.getFreq()));
        cm.update(current_time,
            ros::Duration(1 / dosubot.getFreq()));
        dosubot.write(current_time,
            ros::Duration(1 / dosubot.getFreq()));
        rate.sleep();
  }
   hw_spinner.stop();
    cm_spinner.stop();

  return 0;
}

