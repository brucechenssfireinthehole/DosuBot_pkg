
(cl:in-package :asdf)

(defsystem "skeleton-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "JointMsg" :depends-on ("_package_JointMsg"))
    (:file "_package_JointMsg" :depends-on ("_package"))
  ))