; Auto-generated. Do not edit!


(cl:in-package test_roslib-srv)


;//! \htmlinclude Service1-request.msg.html

(cl:defclass <Service1-request> (roslisp-msg-protocol:ros-message)
  ((robot
    :reader robot
    :initarg :robot
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (th
    :reader th
    :initarg :th
    :type cl:float
    :initform 0.0))
)

(cl:defclass Service1-request (<Service1-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Service1-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Service1-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roslib-srv:<Service1-request> is deprecated: use test_roslib-srv:Service1-request instead.")))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <Service1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib-srv:robot-val is deprecated.  Use test_roslib-srv:robot instead.")
  (robot m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Service1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib-srv:x-val is deprecated.  Use test_roslib-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Service1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib-srv:y-val is deprecated.  Use test_roslib-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'th-val :lambda-list '(m))
(cl:defmethod th-val ((m <Service1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib-srv:th-val is deprecated.  Use test_roslib-srv:th instead.")
  (th m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Service1-request>) ostream)
  "Serializes a message object of type '<Service1-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'th))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Service1-request>) istream)
  "Deserializes a message object of type '<Service1-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Service1-request>)))
  "Returns string type for a service object of type '<Service1-request>"
  "test_roslib/Service1Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Service1-request)))
  "Returns string type for a service object of type 'Service1-request"
  "test_roslib/Service1Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Service1-request>)))
  "Returns md5sum for a message object of type '<Service1-request>"
  "491e0a0c037dc07b80d48fdfeb4011a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Service1-request)))
  "Returns md5sum for a message object of type 'Service1-request"
  "491e0a0c037dc07b80d48fdfeb4011a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Service1-request>)))
  "Returns full string definition for message of type '<Service1-request>"
  (cl:format cl:nil "string robot~%float64 x~%float64 y~%float64 th~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Service1-request)))
  "Returns full string definition for message of type 'Service1-request"
  (cl:format cl:nil "string robot~%float64 x~%float64 y~%float64 th~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Service1-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Service1-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Service1-request
    (cl:cons ':robot (robot msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':th (th msg))
))
;//! \htmlinclude Service1-response.msg.html

(cl:defclass <Service1-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Service1-response (<Service1-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Service1-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Service1-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roslib-srv:<Service1-response> is deprecated: use test_roslib-srv:Service1-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Service1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib-srv:success-val is deprecated.  Use test_roslib-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Service1-response>) ostream)
  "Serializes a message object of type '<Service1-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Service1-response>) istream)
  "Deserializes a message object of type '<Service1-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Service1-response>)))
  "Returns string type for a service object of type '<Service1-response>"
  "test_roslib/Service1Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Service1-response)))
  "Returns string type for a service object of type 'Service1-response"
  "test_roslib/Service1Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Service1-response>)))
  "Returns md5sum for a message object of type '<Service1-response>"
  "491e0a0c037dc07b80d48fdfeb4011a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Service1-response)))
  "Returns md5sum for a message object of type 'Service1-response"
  "491e0a0c037dc07b80d48fdfeb4011a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Service1-response>)))
  "Returns full string definition for message of type '<Service1-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Service1-response)))
  "Returns full string definition for message of type 'Service1-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Service1-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Service1-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Service1-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Service1)))
  'Service1-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Service1)))
  'Service1-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Service1)))
  "Returns string type for a service object of type '<Service1>"
  "test_roslib/Service1")