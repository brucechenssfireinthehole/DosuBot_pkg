#!/usr/bin/env python

import rospy
import copy
import sys
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from moveit_commander import RobotCommander,roscpp_initialize,roscpp_shutdown
from moveit_msgs.msg import RobotState

def move_arm():
    # plan to a random location 
    group = moveit_commander.MoveGroupCommander("arm")
    robot = RobotCommander()
    a = robot.arm

    a.set_start_state(RobotState())
    p = a.plan([0,0])
    print "Solution:"
    print p
    a.execute(p)
    rospy.sleep(10)

    a.set_start_state(RobotState())
    p = a.plan([1.57, -1.57])
    print "Solution:"
    print p
    a.execute(p)
    rospy.sleep(10)

    a.set_start_state(RobotState())
    p = a.plan([3.14,3.14])
    print "Solution:"
    print p
    a.execute(p)
    rospy.sleep(10)

    moveit_commander.roscpp_shutdown()

    print "Finishing"

if __name__ == '__main__':
    try:
        move_arm()
    except rospy.ROSInterruptException:
        pass
