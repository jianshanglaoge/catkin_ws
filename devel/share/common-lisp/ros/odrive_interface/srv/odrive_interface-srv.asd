
(cl:in-package :asdf)

(defsystem "odrive_interface-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ChangeControlMode" :depends-on ("_package_ChangeControlMode"))
    (:file "_package_ChangeControlMode" :depends-on ("_package"))
    (:file "ChangeState" :depends-on ("_package_ChangeState"))
    (:file "_package_ChangeState" :depends-on ("_package"))
  ))