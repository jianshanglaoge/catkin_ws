
(cl:in-package :asdf)

(defsystem "odrive_interface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "VelocityControl" :depends-on ("_package_VelocityControl"))
    (:file "_package_VelocityControl" :depends-on ("_package"))
  ))