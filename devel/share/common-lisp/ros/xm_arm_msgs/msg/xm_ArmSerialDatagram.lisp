; Auto-generated. Do not edit!


(cl:in-package xm_arm_msgs-msg)


;//! \htmlinclude xm_ArmSerialDatagram.msg.html

(cl:defclass <xm_ArmSerialDatagram> (roslisp-msg-protocol:ros-message)
  ((sender
    :reader sender
    :initarg :sender
    :type cl:fixnum
    :initform 0)
   (receiver
    :reader receiver
    :initarg :receiver
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass xm_ArmSerialDatagram (<xm_ArmSerialDatagram>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xm_ArmSerialDatagram>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xm_ArmSerialDatagram)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xm_arm_msgs-msg:<xm_ArmSerialDatagram> is deprecated: use xm_arm_msgs-msg:xm_ArmSerialDatagram instead.")))

(cl:ensure-generic-function 'sender-val :lambda-list '(m))
(cl:defmethod sender-val ((m <xm_ArmSerialDatagram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xm_arm_msgs-msg:sender-val is deprecated.  Use xm_arm_msgs-msg:sender instead.")
  (sender m))

(cl:ensure-generic-function 'receiver-val :lambda-list '(m))
(cl:defmethod receiver-val ((m <xm_ArmSerialDatagram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xm_arm_msgs-msg:receiver-val is deprecated.  Use xm_arm_msgs-msg:receiver instead.")
  (receiver m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <xm_ArmSerialDatagram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xm_arm_msgs-msg:data-val is deprecated.  Use xm_arm_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xm_ArmSerialDatagram>) ostream)
  "Serializes a message object of type '<xm_ArmSerialDatagram>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sender)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receiver)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xm_ArmSerialDatagram>) istream)
  "Deserializes a message object of type '<xm_ArmSerialDatagram>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sender)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receiver)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xm_ArmSerialDatagram>)))
  "Returns string type for a message object of type '<xm_ArmSerialDatagram>"
  "xm_arm_msgs/xm_ArmSerialDatagram")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xm_ArmSerialDatagram)))
  "Returns string type for a message object of type 'xm_ArmSerialDatagram"
  "xm_arm_msgs/xm_ArmSerialDatagram")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xm_ArmSerialDatagram>)))
  "Returns md5sum for a message object of type '<xm_ArmSerialDatagram>"
  "fb52cf5e6af617ea0f02003fae608c29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xm_ArmSerialDatagram)))
  "Returns md5sum for a message object of type 'xm_ArmSerialDatagram"
  "fb52cf5e6af617ea0f02003fae608c29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xm_ArmSerialDatagram>)))
  "Returns full string definition for message of type '<xm_ArmSerialDatagram>"
  (cl:format cl:nil "uint8   sender~%uint8   receiver~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xm_ArmSerialDatagram)))
  "Returns full string definition for message of type 'xm_ArmSerialDatagram"
  (cl:format cl:nil "uint8   sender~%uint8   receiver~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xm_ArmSerialDatagram>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xm_ArmSerialDatagram>))
  "Converts a ROS message object to a list"
  (cl:list 'xm_ArmSerialDatagram
    (cl:cons ':sender (sender msg))
    (cl:cons ':receiver (receiver msg))
    (cl:cons ':data (data msg))
))
