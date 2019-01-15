
(cl:in-package :asdf)

(defsystem "xm_arm_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "xm_ArmGripperCommand" :depends-on ("_package_xm_ArmGripperCommand"))
    (:file "_package_xm_ArmGripperCommand" :depends-on ("_package"))
    (:file "xm_ArmGripperCommandAction" :depends-on ("_package_xm_ArmGripperCommandAction"))
    (:file "_package_xm_ArmGripperCommandAction" :depends-on ("_package"))
    (:file "xm_ArmGripperCommandActionFeedback" :depends-on ("_package_xm_ArmGripperCommandActionFeedback"))
    (:file "_package_xm_ArmGripperCommandActionFeedback" :depends-on ("_package"))
    (:file "xm_ArmGripperCommandActionGoal" :depends-on ("_package_xm_ArmGripperCommandActionGoal"))
    (:file "_package_xm_ArmGripperCommandActionGoal" :depends-on ("_package"))
    (:file "xm_ArmGripperCommandActionResult" :depends-on ("_package_xm_ArmGripperCommandActionResult"))
    (:file "_package_xm_ArmGripperCommandActionResult" :depends-on ("_package"))
    (:file "xm_ArmGripperCommandFeedback" :depends-on ("_package_xm_ArmGripperCommandFeedback"))
    (:file "_package_xm_ArmGripperCommandFeedback" :depends-on ("_package"))
    (:file "xm_ArmGripperCommandGoal" :depends-on ("_package_xm_ArmGripperCommandGoal"))
    (:file "_package_xm_ArmGripperCommandGoal" :depends-on ("_package"))
    (:file "xm_ArmGripperCommandResult" :depends-on ("_package_xm_ArmGripperCommandResult"))
    (:file "_package_xm_ArmGripperCommandResult" :depends-on ("_package"))
    (:file "xm_ArmSerialData" :depends-on ("_package_xm_ArmSerialData"))
    (:file "_package_xm_ArmSerialData" :depends-on ("_package"))
    (:file "xm_ArmSerialDatagram" :depends-on ("_package_xm_ArmSerialDatagram"))
    (:file "_package_xm_ArmSerialDatagram" :depends-on ("_package"))
  ))