; Auto-generated. Do not edit!


(cl:in-package skeleton-msg)


;//! \htmlinclude JointMsg.msg.html

(cl:defclass <JointMsg> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass JointMsg (<JointMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name skeleton-msg:<JointMsg> is deprecated: use skeleton-msg:JointMsg instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <JointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader skeleton-msg:joints-val is deprecated.  Use skeleton-msg:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointMsg>) ostream)
  "Serializes a message object of type '<JointMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointMsg>) istream)
  "Deserializes a message object of type '<JointMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointMsg>)))
  "Returns string type for a message object of type '<JointMsg>"
  "skeleton/JointMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointMsg)))
  "Returns string type for a message object of type 'JointMsg"
  "skeleton/JointMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointMsg>)))
  "Returns md5sum for a message object of type '<JointMsg>"
  "1202c50759ccad57166aaeb5af77c4fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointMsg)))
  "Returns md5sum for a message object of type 'JointMsg"
  "1202c50759ccad57166aaeb5af77c4fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointMsg>)))
  "Returns full string definition for message of type '<JointMsg>"
  (cl:format cl:nil "geometry_msgs/Point[] joints ~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointMsg)))
  "Returns full string definition for message of type 'JointMsg"
  (cl:format cl:nil "geometry_msgs/Point[] joints ~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'JointMsg
    (cl:cons ':joints (joints msg))
))
