#!/usr/bin/env python
import sys
import rospy
import moveit_commander
import moveit_msgs.msg
from moveit_commander import RobotCommander,roscpp_initialize,roscpp_shutdown
from moveit_msgs.msg import RobotState

if __name__=='__main__':
    roscpp_initialize(sys.argv)
    rospy.init_node('moveit_py_demo', anonymous=True)
    
    robot = RobotCommander()
    rospy.sleep(1)
    
    print "Current state:"
    print robot.get_current_state()
    
    # plan to a random location 
    a = robot.arm


    while not rospy.is_shutdown():
        a.set_start_state(RobotState())
        r = a.get_random_joint_values()
        p = a.plan(r)
        a.execute(p)
        rospy.sleep(10)
#        print "Planning to random joint position: "
#        print r
#        print "Solution:"
#        print p

    
    roscpp_shutdown()
