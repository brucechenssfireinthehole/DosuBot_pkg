;; Auto-generated. Do not edit!


(when (boundp 'xm_arm_msgs::xm_ArmSerialData)
  (if (not (find-package "XM_ARM_MSGS"))
    (make-package "XM_ARM_MSGS"))
  (shadow 'xm_ArmSerialData (find-package "XM_ARM_MSGS")))
(unless (find-package "XM_ARM_MSGS::XM_ARMSERIALDATA")
  (make-package "XM_ARM_MSGS::XM_ARMSERIALDATA"))

(in-package "ROS")
;;//! \htmlinclude xm_ArmSerialData.msg.html


(defclass xm_arm_msgs::xm_ArmSerialData
  :super ros::object
  :slots (_data ))

(defmethod xm_arm_msgs::xm_ArmSerialData
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get xm_arm_msgs::xm_ArmSerialData :md5sum-) "f43a8e1b362b75baa741461b46adc7e0")
(setf (get xm_arm_msgs::xm_ArmSerialData :datatype-) "xm_arm_msgs/xm_ArmSerialData")
(setf (get xm_arm_msgs::xm_ArmSerialData :definition-)
      "uint8[] data

")



(provide :xm_arm_msgs/xm_ArmSerialData "f43a8e1b362b75baa741461b46adc7e0")


