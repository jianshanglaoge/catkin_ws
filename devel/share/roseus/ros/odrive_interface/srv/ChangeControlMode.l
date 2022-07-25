;; Auto-generated. Do not edit!


(when (boundp 'odrive_interface::ChangeControlMode)
  (if (not (find-package "ODRIVE_INTERFACE"))
    (make-package "ODRIVE_INTERFACE"))
  (shadow 'ChangeControlMode (find-package "ODRIVE_INTERFACE")))
(unless (find-package "ODRIVE_INTERFACE::CHANGECONTROLMODE")
  (make-package "ODRIVE_INTERFACE::CHANGECONTROLMODE"))
(unless (find-package "ODRIVE_INTERFACE::CHANGECONTROLMODEREQUEST")
  (make-package "ODRIVE_INTERFACE::CHANGECONTROLMODEREQUEST"))
(unless (find-package "ODRIVE_INTERFACE::CHANGECONTROLMODERESPONSE")
  (make-package "ODRIVE_INTERFACE::CHANGECONTROLMODERESPONSE"))

(in-package "ROS")





(defclass odrive_interface::ChangeControlModeRequest
  :super ros::object
  :slots (_axis _requestedControlMode ))

(defmethod odrive_interface::ChangeControlModeRequest
  (:init
   (&key
    ((:axis __axis) 0)
    ((:requestedControlMode __requestedControlMode) 0)
    )
   (send-super :init)
   (setq _axis (round __axis))
   (setq _requestedControlMode (round __requestedControlMode))
   self)
  (:axis
   (&optional __axis)
   (if __axis (setq _axis __axis)) _axis)
  (:requestedControlMode
   (&optional __requestedControlMode)
   (if __requestedControlMode (setq _requestedControlMode __requestedControlMode)) _requestedControlMode)
  (:serialization-length
   ()
   (+
    ;; uint8 _axis
    1
    ;; uint8 _requestedControlMode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _axis
       (write-byte _axis s)
     ;; uint8 _requestedControlMode
       (write-byte _requestedControlMode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _axis
     (setq _axis (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _requestedControlMode
     (setq _requestedControlMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass odrive_interface::ChangeControlModeResponse
  :super ros::object
  :slots (_success ))

(defmethod odrive_interface::ChangeControlModeResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass odrive_interface::ChangeControlMode
  :super ros::object
  :slots ())

(setf (get odrive_interface::ChangeControlMode :md5sum-) "0a2ba8c6fd2d6248f36b6ba23a9c88c0")
(setf (get odrive_interface::ChangeControlMode :datatype-) "odrive_interface/ChangeControlMode")
(setf (get odrive_interface::ChangeControlMode :request) odrive_interface::ChangeControlModeRequest)
(setf (get odrive_interface::ChangeControlMode :response) odrive_interface::ChangeControlModeResponse)

(defmethod odrive_interface::ChangeControlModeRequest
  (:response () (instance odrive_interface::ChangeControlModeResponse :init)))

(setf (get odrive_interface::ChangeControlModeRequest :md5sum-) "0a2ba8c6fd2d6248f36b6ba23a9c88c0")
(setf (get odrive_interface::ChangeControlModeRequest :datatype-) "odrive_interface/ChangeControlModeRequest")
(setf (get odrive_interface::ChangeControlModeRequest :definition-)
      "uint8 axis
uint8 requestedControlMode
---
bool success

")

(setf (get odrive_interface::ChangeControlModeResponse :md5sum-) "0a2ba8c6fd2d6248f36b6ba23a9c88c0")
(setf (get odrive_interface::ChangeControlModeResponse :datatype-) "odrive_interface/ChangeControlModeResponse")
(setf (get odrive_interface::ChangeControlModeResponse :definition-)
      "uint8 axis
uint8 requestedControlMode
---
bool success

")



(provide :odrive_interface/ChangeControlMode "0a2ba8c6fd2d6248f36b6ba23a9c88c0")


