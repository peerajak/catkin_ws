
(cl:in-package :asdf)

(defsystem "moveo_moveit-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ArmJointState" :depends-on ("_package_ArmJointState"))
    (:file "_package_ArmJointState" :depends-on ("_package"))
  ))