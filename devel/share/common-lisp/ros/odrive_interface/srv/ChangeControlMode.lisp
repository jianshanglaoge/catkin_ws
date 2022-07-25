; Auto-generated. Do not edit!


(cl:in-package odrive_interface-srv)


;//! \htmlinclude ChangeControlMode-request.msg.html

(cl:defclass <ChangeControlMode-request> (roslisp-msg-protocol:ros-message)
  ((axis
    :reader axis
    :initarg :axis
    :type cl:fixnum
    :initform 0)
   (requestedControlMode
    :reader requestedControlMode
    :initarg :requestedControlMode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ChangeControlMode-request (<ChangeControlMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeControlMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeControlMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name odrive_interface-srv:<ChangeControlMode-request> is deprecated: use odrive_interface-srv:ChangeControlMode-request instead.")))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <ChangeControlMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odrive_interface-srv:axis-val is deprecated.  Use odrive_interface-srv:axis instead.")
  (axis m))

(cl:ensure-generic-function 'requestedControlMode-val :lambda-list '(m))
(cl:defmethod requestedControlMode-val ((m <ChangeControlMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odrive_interface-srv:requestedControlMode-val is deprecated.  Use odrive_interface-srv:requestedControlMode instead.")
  (requestedControlMode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeControlMode-request>) ostream)
  "Serializes a message object of type '<ChangeControlMode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axis)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'requestedControlMode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeControlMode-request>) istream)
  "Deserializes a message object of type '<ChangeControlMode-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axis)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'requestedControlMode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeControlMode-request>)))
  "Returns string type for a service object of type '<ChangeControlMode-request>"
  "odrive_interface/ChangeControlModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeControlMode-request)))
  "Returns string type for a service object of type 'ChangeControlMode-request"
  "odrive_interface/ChangeControlModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeControlMode-request>)))
  "Returns md5sum for a message object of type '<ChangeControlMode-request>"
  "0a2ba8c6fd2d6248f36b6ba23a9c88c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeControlMode-request)))
  "Returns md5sum for a message object of type 'ChangeControlMode-request"
  "0a2ba8c6fd2d6248f36b6ba23a9c88c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeControlMode-request>)))
  "Returns full string definition for message of type '<ChangeControlMode-request>"
  (cl:format cl:nil "uint8 axis~%uint8 requestedControlMode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeControlMode-request)))
  "Returns full string definition for message of type 'ChangeControlMode-request"
  (cl:format cl:nil "uint8 axis~%uint8 requestedControlMode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeControlMode-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeControlMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeControlMode-request
    (cl:cons ':axis (axis msg))
    (cl:cons ':requestedControlMode (requestedControlMode msg))
))
;//! \htmlinclude ChangeControlMode-response.msg.html

(cl:defclass <ChangeControlMode-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeControlMode-response (<ChangeControlMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeControlMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeControlMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name odrive_interface-srv:<ChangeControlMode-response> is deprecated: use odrive_interface-srv:ChangeControlMode-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ChangeControlMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odrive_interface-srv:success-val is deprecated.  Use odrive_interface-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeControlMode-response>) ostream)
  "Serializes a message object of type '<ChangeControlMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeControlMode-response>) istream)
  "Deserializes a message object of type '<ChangeControlMode-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeControlMode-response>)))
  "Returns string type for a service object of type '<ChangeControlMode-response>"
  "odrive_interface/ChangeControlModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeControlMode-response)))
  "Returns string type for a service object of type 'ChangeControlMode-response"
  "odrive_interface/ChangeControlModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeControlMode-response>)))
  "Returns md5sum for a message object of type '<ChangeControlMode-response>"
  "0a2ba8c6fd2d6248f36b6ba23a9c88c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeControlMode-response)))
  "Returns md5sum for a message object of type 'ChangeControlMode-response"
  "0a2ba8c6fd2d6248f36b6ba23a9c88c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeControlMode-response>)))
  "Returns full string definition for message of type '<ChangeControlMode-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeControlMode-response)))
  "Returns full string definition for message of type 'ChangeControlMode-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeControlMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeControlMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeControlMode-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeControlMode)))
  'ChangeControlMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeControlMode)))
  'ChangeControlMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeControlMode)))
  "Returns string type for a service object of type '<ChangeControlMode>"
  "odrive_interface/ChangeControlMode")