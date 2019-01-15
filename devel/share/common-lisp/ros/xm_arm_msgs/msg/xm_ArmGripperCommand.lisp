; Auto-generated. Do not edit!


(cl:in-package xm_arm_msgs-msg)


;//! \htmlinclude xm_ArmGripperCommand.msg.html

(cl:defclass <xm_ArmGripperCommand> (roslisp-msg-protocol:ros-message)
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

(cl:defclass xm_ArmGripperCommand (<xm_ArmGripperCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xm_ArmGripperCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xm_ArmGripperCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xm_arm_msgs-msg:<xm_ArmGripperCommand> is deprecated: use xm_arm_msgs-msg:xm_ArmGripperCommand instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <xm_ArmGripperCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xm_arm_msgs-msg:position-val is deprecated.  Use xm_arm_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <xm_ArmGripperCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xm_arm_msgs-msg:torque-val is deprecated.  Use xm_arm_msgs-msg:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xm_ArmGripperCommand>) ostream)
  "Serializes a message object of type '<xm_ArmGripperCommand>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xm_ArmGripperCommand>) istream)
  "Deserializes a message object of type '<xm_ArmGripperCommand>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xm_ArmGripperCommand>)))
  "Returns string type for a message object of type '<xm_ArmGripperCommand>"
  "xm_arm_msgs/xm_ArmGripperCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xm_ArmGripperCommand)))
  "Returns string type for a message object of type 'xm_ArmGripperCommand"
  "xm_arm_msgs/xm_ArmGripperCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xm_ArmGripperCommand>)))
  "Returns md5sum for a message object of type '<xm_ArmGripperCommand>"
  "c571c356574ad59e90e484d638ffc0f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xm_ArmGripperCommand)))
  "Returns md5sum for a message object of type 'xm_ArmGripperCommand"
  "c571c356574ad59e90e484d638ffc0f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xm_ArmGripperCommand>)))
  "Returns full string definition for message of type '<xm_ArmGripperCommand>"
  (cl:format cl:nil "float64 position~%float64 torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xm_ArmGripperCommand)))
  "Returns full string definition for message of type 'xm_ArmGripperCommand"
  (cl:format cl:nil "float64 position~%float64 torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xm_ArmGripperCommand>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xm_ArmGripperCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'xm_ArmGripperCommand
    (cl:cons ':position (position msg))
    (cl:cons ':torque (torque msg))
))
