;; Auto-generated. Do not edit!


(when (boundp 'odrive_interface::VelocityControl)
  (if (not (find-package "ODRIVE_INTERFACE"))
    (make-package "ODRIVE_INTERFACE"))
  (shadow 'VelocityControl (find-package "ODRIVE_INTERFACE")))
(unless (find-package "ODRIVE_INTERFACE::VELOCITYCONTROL")
  (make-package "ODRIVE_INTERFACE::VELOCITYCONTROL"))

(in-package "ROS")
;;//! \htmlinclude VelocityControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass odrive_interface::VelocityControl
  :super ros::object
  :slots (_header _axis0_velocity _axis1_velocity ))

(defmethod odrive_interface::VelocityControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:axis0_velocity __axis0_velocity) 0.0)
    ((:axis1_velocity __axis1_velocity) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _axis0_velocity (float __axis0_velocity))
   (setq _axis1_velocity (float __axis1_velocity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:axis0_velocity
   (&optional __axis0_velocity)
   (if __axis0_velocity (setq _axis0_velocity __axis0_velocity)) _axis0_velocity)
  (:axis1_velocity
   (&optional __axis1_velocity)
   (if __axis1_velocity (setq _axis1_velocity __axis1_velocity)) _axis1_velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _axis0_velocity
    4
    ;; float32 _axis1_velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _axis0_velocity
       (sys::poke _axis0_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _axis1_velocity
       (sys::poke _axis1_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _axis0_velocity
     (setq _axis0_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _axis1_velocity
     (setq _axis1_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get odrive_interface::VelocityControl :md5sum-) "b59885a312e0b694846b6fdb25769d14")
(setf (get odrive_interface::VelocityControl :datatype-) "odrive_interface/VelocityControl")
(setf (get odrive_interface::VelocityControl :definition-)
      "Header header
float32 axis0_velocity
float32 axis1_velocity

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :odrive_interface/VelocityControl "b59885a312e0b694846b6fdb25769d14")


