;; Auto-generated. Do not edit!


(when (boundp 'xm_arm_msgs::xm_ArmSerialDatagram)
  (if (not (find-package "XM_ARM_MSGS"))
    (make-package "XM_ARM_MSGS"))
  (shadow 'xm_ArmSerialDatagram (find-package "XM_ARM_MSGS")))
(unless (find-package "XM_ARM_MSGS::XM_ARMSERIALDATAGRAM")
  (make-package "XM_ARM_MSGS::XM_ARMSERIALDATAGRAM"))

(in-package "ROS")
;;//! \htmlinclude xm_ArmSerialDatagram.msg.html


(defclass xm_arm_msgs::xm_ArmSerialDatagram
  :super ros::object
  :slots (_sender _receiver _data ))

(defmethod xm_arm_msgs::xm_ArmSerialDatagram
  (:init
   (&key
    ((:sender __sender) 0)
    ((:receiver __receiver) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _sender (round __sender))
   (setq _receiver (round __receiver))
   (setq _data __data)
   self)
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:receiver
   (&optional __receiver)
   (if __receiver (setq _receiver __receiver)) _receiver)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8 _sender
    1
    ;; uint8 _receiver
    1
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _sender
       (write-byte _sender s)
     ;; uint8 _receiver
       (write-byte _receiver s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _sender
     (setq _sender (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _receiver
     (setq _receiver (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get xm_arm_msgs::xm_ArmSerialDatagram :md5sum-) "fb52cf5e6af617ea0f02003fae608c29")
(setf (get xm_arm_msgs::xm_ArmSerialDatagram :datatype-) "xm_arm_msgs/xm_ArmSerialDatagram")
(setf (get xm_arm_msgs::xm_ArmSerialDatagram :definition-)
      "uint8   sender
uint8   receiver
uint8[] data

")



(provide :xm_arm_msgs/xm_ArmSerialDatagram "fb52cf5e6af617ea0f02003fae608c29")


