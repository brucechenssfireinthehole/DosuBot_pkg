;; Auto-generated. Do not edit!


(when (boundp 'xm_arm_msgs::xm_ArmGripperCommandGoal)
  (if (not (find-package "XM_ARM_MSGS"))
    (make-package "XM_ARM_MSGS"))
  (shadow 'xm_ArmGripperCommandGoal (find-package "XM_ARM_MSGS")))
(unless (find-package "XM_ARM_MSGS::XM_ARMGRIPPERCOMMANDGOAL")
  (make-package "XM_ARM_MSGS::XM_ARMGRIPPERCOMMANDGOAL"))

(in-package "ROS")
;;//! \htmlinclude xm_ArmGripperCommandGoal.msg.html


(defclass xm_arm_msgs::xm_ArmGripperCommandGoal
  :super ros::object
  :slots (_command ))

(defmethod xm_arm_msgs::xm_ArmGripperCommandGoal
  (:init
   (&key
    ((:command __command) (instance xm_arm_msgs::xm_ArmGripperCommand :init))
    )
   (send-super :init)
   (setq _command __command)
   self)
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:serialization-length
   ()
   (+
    ;; xm_arm_msgs/xm_ArmGripperCommand _command
    (send _command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; xm_arm_msgs/xm_ArmGripperCommand _command
       (send _command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; xm_arm_msgs/xm_ArmGripperCommand _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;;
   self)
  )

(setf (get xm_arm_msgs::xm_ArmGripperCommandGoal :md5sum-) "bbdf141ff7e4fd37d8aa342f2709b46e")
(setf (get xm_arm_msgs::xm_ArmGripperCommandGoal :datatype-) "xm_arm_msgs/xm_ArmGripperCommandGoal")
(setf (get xm_arm_msgs::xm_ArmGripperCommandGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#Goal
xm_arm_msgs/xm_ArmGripperCommand command

================================================================================
MSG: xm_arm_msgs/xm_ArmGripperCommand
float64 position
float64 torque

")



(provide :xm_arm_msgs/xm_ArmGripperCommandGoal "bbdf141ff7e4fd37d8aa342f2709b46e")

