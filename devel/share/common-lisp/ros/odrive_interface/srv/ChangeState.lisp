; Auto-generated. Do not edit!


(cl:in-package odrive_interface-srv)


;//! \htmlinclude ChangeState-request.msg.html

(cl:defclass <ChangeState-request> (roslisp-msg-protocol:ros-message)
  ((axis
    :reader axis
    :initarg :axis
    :type cl:fixnum
    :initform 0)
   (requestedState
    :reader requestedState
    :initarg :requestedState
    :type cl:fixnum
    :initform 0)
   (isCalibration
    :reader isCalibration
    :initarg :isCalibration
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeState-request (<ChangeState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name odrive_interface-srv:<ChangeState-request> is deprecated: use odrive_interface-srv:ChangeState-request instead.")))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <ChangeState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odrive_interface-srv:axis-val is deprecated.  Use odrive_interface-srv:axis instead.")
  (axis m))

(cl:ensure-generic-function 'requestedState-val :lambda-list '(m))
(cl:defmethod requestedState-val ((m <ChangeState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odrive_interface-srv:requestedState-val is deprecated.  Use odrive_interface-srv:requestedState instead.")
  (requestedState m))

(cl:ensure-generic-function 'isCalibration-val :lambda-list '(m))
(cl:defmethod isCalibration-val ((m <ChangeState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odrive_interface-srv:isCalibration-val is deprecated.  Use odrive_interface-srv:isCalibration instead.")
  (isCalibration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeState-request>) ostream)
  "Serializes a message object of type '<ChangeState-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axis)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'requestedState)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isCalibration) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeState-request>) istream)
  "Deserializes a message object of type '<ChangeState-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axis)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'requestedState)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'isCalibration) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeState-request>)))
  "Returns string type for a service object of type '<ChangeState-request>"
  "odrive_interface/ChangeStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeState-request)))
  "Returns string type for a service object of type 'ChangeState-request"
  "odrive_interface/ChangeStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeState-request>)))
  "Returns md5sum for a message object of type '<ChangeState-request>"
  "7cf842fa729c0d06e59d479de5a05570")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeState-request)))
  "Returns md5sum for a message object of type 'ChangeState-request"
  "7cf842fa729c0d06e59d479de5a05570")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeState-request>)))
  "Returns full string definition for message of type '<ChangeState-request>"
  (cl:format cl:nil "uint8 axis~%uint8 requestedState~%bool isCalibration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeState-request)))
  "Returns full string definition for message of type 'ChangeState-request"
  (cl:format cl:nil "uint8 axis~%uint8 requestedState~%bool isCalibration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeState-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeState-request
    (cl:cons ':axis (axis msg))
    (cl:cons ':requestedState (requestedState msg))
    (cl:cons ':isCalibration (isCalibration msg))
))
;//! \htmlinclude ChangeState-response.msg.html

(cl:defclass <ChangeState-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeState-response (<ChangeState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name odrive_interface-srv:<ChangeState-response> is deprecated: use odrive_interface-srv:ChangeState-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ChangeState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odrive_interface-srv:success-val is deprecated.  Use odrive_interface-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeState-response>) ostream)
  "Serializes a message object of type '<ChangeState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeState-response>) istream)
  "Deserializes a message object of type '<ChangeState-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeState-response>)))
  "Returns string type for a service object of type '<ChangeState-response>"
  "odrive_interface/ChangeStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeState-response)))
  "Returns string type for a service object of type 'ChangeState-response"
  "odrive_interface/ChangeStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeState-response>)))
  "Returns md5sum for a message object of type '<ChangeState-response>"
  "7cf842fa729c0d06e59d479de5a05570")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeState-response)))
  "Returns md5sum for a message object of type 'ChangeState-response"
  "7cf842fa729c0d06e59d479de5a05570")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeState-response>)))
  "Returns full string definition for message of type '<ChangeState-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeState-response)))
  "Returns full string definition for message of type 'ChangeState-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeState-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeState)))
  'ChangeState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeState)))
  'ChangeState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeState)))
  "Returns string type for a service object of type '<ChangeState>"
  "odrive_interface/ChangeState")