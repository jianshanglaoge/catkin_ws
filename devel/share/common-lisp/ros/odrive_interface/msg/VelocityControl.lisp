; Auto-generated. Do not edit!


(cl:in-package odrive_interface-msg)


;//! \htmlinclude VelocityControl.msg.html

(cl:defclass <VelocityControl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (axis0_velocity
    :reader axis0_velocity
    :initarg :axis0_velocity
    :type cl:float
    :initform 0.0)
   (axis1_velocity
    :reader axis1_velocity
    :initarg :axis1_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass VelocityControl (<VelocityControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name odrive_interface-msg:<VelocityControl> is deprecated: use odrive_interface-msg:VelocityControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VelocityControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odrive_interface-msg:header-val is deprecated.  Use odrive_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'axis0_velocity-val :lambda-list '(m))
(cl:defmethod axis0_velocity-val ((m <VelocityControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odrive_interface-msg:axis0_velocity-val is deprecated.  Use odrive_interface-msg:axis0_velocity instead.")
  (axis0_velocity m))

(cl:ensure-generic-function 'axis1_velocity-val :lambda-list '(m))
(cl:defmethod axis1_velocity-val ((m <VelocityControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odrive_interface-msg:axis1_velocity-val is deprecated.  Use odrive_interface-msg:axis1_velocity instead.")
  (axis1_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityControl>) ostream)
  "Serializes a message object of type '<VelocityControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'axis0_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'axis1_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityControl>) istream)
  "Deserializes a message object of type '<VelocityControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'axis0_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'axis1_velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityControl>)))
  "Returns string type for a message object of type '<VelocityControl>"
  "odrive_interface/VelocityControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityControl)))
  "Returns string type for a message object of type 'VelocityControl"
  "odrive_interface/VelocityControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityControl>)))
  "Returns md5sum for a message object of type '<VelocityControl>"
  "b59885a312e0b694846b6fdb25769d14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityControl)))
  "Returns md5sum for a message object of type 'VelocityControl"
  "b59885a312e0b694846b6fdb25769d14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityControl>)))
  "Returns full string definition for message of type '<VelocityControl>"
  (cl:format cl:nil "Header header~%float32 axis0_velocity~%float32 axis1_velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityControl)))
  "Returns full string definition for message of type 'VelocityControl"
  (cl:format cl:nil "Header header~%float32 axis0_velocity~%float32 axis1_velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityControl>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityControl
    (cl:cons ':header (header msg))
    (cl:cons ':axis0_velocity (axis0_velocity msg))
    (cl:cons ':axis1_velocity (axis1_velocity msg))
))
