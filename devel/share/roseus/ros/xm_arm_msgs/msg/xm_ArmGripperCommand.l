;; Auto-generated. Do not edit!


(when (boundp 'xm_arm_msgs::xm_ArmGripperCommand)
  (if (not (find-package "XM_ARM_MSGS"))
    (make-package "XM_ARM_MSGS"))
  (shadow 'xm_ArmGripperCommand (find-package "XM_ARM_MSGS")))
(unless (find-package "XM_ARM_MSGS::XM_ARMGRIPPERCOMMAND")
  (make-package "XM_ARM_MSGS::XM_ARMGRIPPERCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude xm_ArmGripperCommand.msg.html


(defclass xm_arm_msgs::xm_ArmGripperCommand
  :super ros::object
  :slots (_position _torque ))

(defmethod xm_arm_msgs::xm_ArmGripperCommand
  (:init
   (&key
    ((:position __position) 0.0)
    ((:torque __torque) 0.0)
    )
   (send-super :init)
   (setq _position (float __position))
   (setq _torque (float __torque))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:serialization-length
   ()
   (+
    ;; float64 _position
    8
    ;; float64 _torque
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _position
       (sys::poke _position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _torque
       (sys::poke _torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _position
     (setq _position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _torque
     (setq _torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get xm_arm_msgs::xm_ArmGripperCommand :md5sum-) "c571c356574ad59e90e484d638ffc0f0")
(setf (get xm_arm_msgs::xm_ArmGripperCommand :datatype-) "xm_arm_msgs/xm_ArmGripperCommand")
(setf (get xm_arm_msgs::xm_ArmGripperCommand :definition-)
      "float64 position
float64 torque

")



(provide :xm_arm_msgs/xm_ArmGripperCommand "c571c356574ad59e90e484d638ffc0f0")


