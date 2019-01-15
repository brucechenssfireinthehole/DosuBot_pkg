; Auto-generated. Do not edit!


(cl:in-package xm_arm_msgs-msg)


;//! \htmlinclude xm_ArmGripperCommandFeedback.msg.html

(cl:defclass <xm_ArmGripperCommandFeedback> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (torque
    :reader torque
    :initarg :torque
    :type cl:float
    :initform 0.0))
)

(cl:defclass xm_ArmGripperCommandFeedback (<xm_ArmGripperCommandFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xm_ArmGripperCommandFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xm_ArmGripperCommandFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xm_arm_msgs-msg:<xm_ArmGripperCommandFeedback> is deprecated: use xm_arm_msgs-msg:xm_ArmGripperCommandFeedback instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <xm_ArmGripperCommandFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xm_arm_msgs-msg:position-val is deprecated.  Use xm_arm_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <xm_ArmGripperCommandFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xm_arm_msgs-msg:torque-val is deprecated.  Use xm_arm_msgs-msg:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xm_ArmGripperCommandFeedback>) ostream)
  "Serializes a message object of type '<xm_ArmGripperCommandFeedback>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xm_ArmGripperCommandFeedback>) istream)
  "Deserializes a message object of type '<xm_ArmGripperCommandFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'torque) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xm_ArmGripperCommandFeedback>)))
  "Returns string type for a message object of type '<xm_ArmGripperCommandFeedback>"
  "xm_arm_msgs/xm_ArmGripperCommandFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xm_ArmGripperCommandFeedback)))
  "Returns string type for a message object of type 'xm_ArmGripperCommandFeedback"
  "xm_arm_msgs/xm_ArmGripperCommandFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xm_ArmGripperCommandFeedback>)))
  "Returns md5sum for a message object of type '<xm_ArmGripperCommandFeedback>"
  "c571c356574ad59e90e484d638ffc0f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xm_ArmGripperCommandFeedback)))
  "Returns md5sum for a message object of type 'xm_ArmGripperCommandFeedback"
  "c571c356574ad59e90e484d638ffc0f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xm_ArmGripperCommandFeedback>)))
  "Returns full string definition for message of type '<xm_ArmGripperCommandFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%float64 position~%float64 torque~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xm_ArmGripperCommandFeedback)))
  "Returns full string definition for message of type 'xm_ArmGripperCommandFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%float64 position~%float64 torque~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xm_ArmGripperCommandFeedback>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xm_ArmGripperCommandFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'xm_ArmGripperCommandFeedback
    (cl:cons ':position (position msg))
    (cl:cons ':torque (torque msg))
))
