; Auto-generated. Do not edit!


(cl:in-package tutorial_beginner-srv)


;//! \htmlinclude nums-request.msg.html

(cl:defclass <nums-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass nums-request (<nums-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nums-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nums-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorial_beginner-srv:<nums-request> is deprecated: use tutorial_beginner-srv:nums-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <nums-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial_beginner-srv:num1-val is deprecated.  Use tutorial_beginner-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <nums-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial_beginner-srv:num2-val is deprecated.  Use tutorial_beginner-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nums-request>) ostream)
  "Serializes a message object of type '<nums-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nums-request>) istream)
  "Deserializes a message object of type '<nums-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nums-request>)))
  "Returns string type for a service object of type '<nums-request>"
  "tutorial_beginner/numsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nums-request)))
  "Returns string type for a service object of type 'nums-request"
  "tutorial_beginner/numsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nums-request>)))
  "Returns md5sum for a message object of type '<nums-request>"
  "5b345eb3e3672a43cb5b3d560a6e8961")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nums-request)))
  "Returns md5sum for a message object of type 'nums-request"
  "5b345eb3e3672a43cb5b3d560a6e8961")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nums-request>)))
  "Returns full string definition for message of type '<nums-request>"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nums-request)))
  "Returns full string definition for message of type 'nums-request"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nums-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nums-request>))
  "Converts a ROS message object to a list"
  (cl:list 'nums-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude nums-response.msg.html

(cl:defclass <nums-response> (roslisp-msg-protocol:ros-message)
  ((total
    :reader total
    :initarg :total
    :type cl:integer
    :initform 0))
)

(cl:defclass nums-response (<nums-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nums-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nums-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorial_beginner-srv:<nums-response> is deprecated: use tutorial_beginner-srv:nums-response instead.")))

(cl:ensure-generic-function 'total-val :lambda-list '(m))
(cl:defmethod total-val ((m <nums-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial_beginner-srv:total-val is deprecated.  Use tutorial_beginner-srv:total instead.")
  (total m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nums-response>) ostream)
  "Serializes a message object of type '<nums-response>"
  (cl:let* ((signed (cl:slot-value msg 'total)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nums-response>) istream)
  "Deserializes a message object of type '<nums-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'total) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nums-response>)))
  "Returns string type for a service object of type '<nums-response>"
  "tutorial_beginner/numsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nums-response)))
  "Returns string type for a service object of type 'nums-response"
  "tutorial_beginner/numsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nums-response>)))
  "Returns md5sum for a message object of type '<nums-response>"
  "5b345eb3e3672a43cb5b3d560a6e8961")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nums-response)))
  "Returns md5sum for a message object of type 'nums-response"
  "5b345eb3e3672a43cb5b3d560a6e8961")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nums-response>)))
  "Returns full string definition for message of type '<nums-response>"
  (cl:format cl:nil "int32 total~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nums-response)))
  "Returns full string definition for message of type 'nums-response"
  (cl:format cl:nil "int32 total~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nums-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nums-response>))
  "Converts a ROS message object to a list"
  (cl:list 'nums-response
    (cl:cons ':total (total msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'nums)))
  'nums-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'nums)))
  'nums-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nums)))
  "Returns string type for a service object of type '<nums>"
  "tutorial_beginner/nums")