;; Auto-generated. Do not edit!


(when (boundp 'odrive_interface::ChangeState)
  (if (not (find-package "ODRIVE_INTERFACE"))
    (make-package "ODRIVE_INTERFACE"))
  (shadow 'ChangeState (find-package "ODRIVE_INTERFACE")))
(unless (find-package "ODRIVE_INTERFACE::CHANGESTATE")
  (make-package "ODRIVE_INTERFACE::CHANGESTATE"))
(unless (find-package "ODRIVE_INTERFACE::CHANGESTATEREQUEST")
  (make-package "ODRIVE_INTERFACE::CHANGESTATEREQUEST"))
(unless (find-package "ODRIVE_INTERFACE::CHANGESTATERESPONSE")
  (make-package "ODRIVE_INTERFACE::CHANGESTATERESPONSE"))

(in-package "ROS")





(defclass odrive_interface::ChangeStateRequest
  :super ros::object
  :slots (_axis _requestedState _isCalibration ))

(defmethod odrive_interface::ChangeStateRequest
  (:init
   (&key
    ((:axis __axis) 0)
    ((:requestedState __requestedState) 0)
    ((:isCalibration __isCalibration) nil)
    )
   (send-super :init)
   (setq _axis (round __axis))
   (setq _requestedState (round __requestedState))
   (setq _isCalibration __isCalibration)
   self)
  (:axis
   (&optional __axis)
   (if __axis (setq _axis __axis)) _axis)
  (:requestedState
   (&optional __requestedState)
   (if __requestedState (setq _requestedState __requestedState)) _requestedState)
  (:isCalibration
   (&optional __isCalibration)
   (if __isCalibration (setq _isCalibration __isCalibration)) _isCalibration)
  (:serialization-length
   ()
   (+
    ;; uint8 _axis
    1
    ;; uint8 _requestedState
    1
    ;; bool _isCalibration
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _axis
       (write-byte _axis s)
     ;; uint8 _requestedState
       (write-byte _requestedState s)
     ;; bool _isCalibration
       (if _isCalibration (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _axis
     (setq _axis (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _requestedState
     (setq _requestedState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _isCalibration
     (setq _isCalibration (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass odrive_interface::ChangeStateResponse
  :super ros::object
  :slots (_success ))

(defmethod odrive_interface::ChangeStateResponse
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

(defclass odrive_interface::ChangeState
  :super ros::object
  :slots ())

(setf (get odrive_interface::ChangeState :md5sum-) "7cf842fa729c0d06e59d479de5a05570")
(setf (get odrive_interface::ChangeState :datatype-) "odrive_interface/ChangeState")
(setf (get odrive_interface::ChangeState :request) odrive_interface::ChangeStateRequest)
(setf (get odrive_interface::ChangeState :response) odrive_interface::ChangeStateResponse)

(defmethod odrive_interface::ChangeStateRequest
  (:response () (instance odrive_interface::ChangeStateResponse :init)))

(setf (get odrive_interface::ChangeStateRequest :md5sum-) "7cf842fa729c0d06e59d479de5a05570")
(setf (get odrive_interface::ChangeStateRequest :datatype-) "odrive_interface/ChangeStateRequest")
(setf (get odrive_interface::ChangeStateRequest :definition-)
      "uint8 axis
uint8 requestedState
bool isCalibration
---
bool success
")

(setf (get odrive_interface::ChangeStateResponse :md5sum-) "7cf842fa729c0d06e59d479de5a05570")
(setf (get odrive_interface::ChangeStateResponse :datatype-) "odrive_interface/ChangeStateResponse")
(setf (get odrive_interface::ChangeStateResponse :definition-)
      "uint8 axis
uint8 requestedState
bool isCalibration
---
bool success
")



(provide :odrive_interface/ChangeState "7cf842fa729c0d06e59d479de5a05570")


