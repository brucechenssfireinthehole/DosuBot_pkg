;; Auto-generated. Do not edit!


(when (boundp 'skeleton::JointMsg)
  (if (not (find-package "SKELETON"))
    (make-package "SKELETON"))
  (shadow 'JointMsg (find-package "SKELETON")))
(unless (find-package "SKELETON::JOINTMSG")
  (make-package "SKELETON::JOINTMSG"))

(in-package "ROS")
;;//! \htmlinclude JointMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass skeleton::JointMsg
  :super ros::object
  :slots (_joints ))

(defmethod skeleton::JointMsg
  (:init
   (&key
    ((:joints __joints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _joints __joints)
   self)
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _joints
    (apply #'+ (send-all _joints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get skeleton::JointMsg :md5sum-) "1202c50759ccad57166aaeb5af77c4fa")
(setf (get skeleton::JointMsg :datatype-) "skeleton/JointMsg")
(setf (get skeleton::JointMsg :definition-)
      "geometry_msgs/Point[] joints 

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :skeleton/JointMsg "1202c50759ccad57166aaeb5af77c4fa")


