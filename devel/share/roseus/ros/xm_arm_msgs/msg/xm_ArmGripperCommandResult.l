;; Auto-generated. Do not edit!


(when (boundp 'xm_arm_msgs::xm_ArmGripperCommandResult)
  (if (not (find-package "XM_ARM_MSGS"))
    (make-package "XM_ARM_MSGS"))
  (shadow 'xm_ArmGripperCommandResult (find-package "XM_ARM_MSGS")))
(unless (find-package "XM_ARM_MSGS::XM_ARMGRIPPERCOMMANDRESULT")
  (make-package "XM_ARM_MSGS::XM_ARMGRIPPERCOMMANDRESULT"))

(in-package "ROS")
;;//! \htmlinclude xm_ArmGripperCommandResult.msg.html


(defclass xm_arm_msgs::xm_ArmGripperCommandResult
  :super ros::object
  :slots (_finish ))

(defmethod xm_arm_msgs::xm_ArmGripperCommandResult
  (:init
   (&key
    ((:finish __finish) nil)
    )
   (send-super :init)
   (setq _finish __finish)
   self)
  (:finish
   (&optional __finish)
   (if __finish (setq _finish __finish)) _finish)
  (:serialization-length
   ()
   (+
    ;; bool _finish
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _finish
       (if _finish (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _finish
     (setq _finish (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get xm_arm_msgs::xm_ArmGripperCommandResult :md5sum-) "474a58dbb494a45bb1ca99544cd64e45")
(setf (get xm_arm_msgs::xm_ArmGripperCommandResult :datatype-) "xm_arm_msgs/xm_ArmGripperCommandResult")
(setf (get xm_arm_msgs::xm_ArmGripperCommandResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Result
bool finish

")



(provide :xm_arm_msgs/xm_ArmGripperCommandResult "474a58dbb494a45bb1ca99544cd64e45")

