;; Auto-generated. Do not edit!


(when (boundp 'tutorial_beginner::nums)
  (if (not (find-package "TUTORIAL_BEGINNER"))
    (make-package "TUTORIAL_BEGINNER"))
  (shadow 'nums (find-package "TUTORIAL_BEGINNER")))
(unless (find-package "TUTORIAL_BEGINNER::NUMS")
  (make-package "TUTORIAL_BEGINNER::NUMS"))
(unless (find-package "TUTORIAL_BEGINNER::NUMSREQUEST")
  (make-package "TUTORIAL_BEGINNER::NUMSREQUEST"))
(unless (find-package "TUTORIAL_BEGINNER::NUMSRESPONSE")
  (make-package "TUTORIAL_BEGINNER::NUMSRESPONSE"))

(in-package "ROS")





(defclass tutorial_beginner::numsRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod tutorial_beginner::numsRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass tutorial_beginner::numsResponse
  :super ros::object
  :slots (_total ))

(defmethod tutorial_beginner::numsResponse
  (:init
   (&key
    ((:total __total) 0)
    )
   (send-super :init)
   (setq _total (round __total))
   self)
  (:total
   (&optional __total)
   (if __total (setq _total __total)) _total)
  (:serialization-length
   ()
   (+
    ;; int32 _total
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _total
       (write-long _total s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _total
     (setq _total (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass tutorial_beginner::nums
  :super ros::object
  :slots ())

(setf (get tutorial_beginner::nums :md5sum-) "5b345eb3e3672a43cb5b3d560a6e8961")
(setf (get tutorial_beginner::nums :datatype-) "tutorial_beginner/nums")
(setf (get tutorial_beginner::nums :request) tutorial_beginner::numsRequest)
(setf (get tutorial_beginner::nums :response) tutorial_beginner::numsResponse)

(defmethod tutorial_beginner::numsRequest
  (:response () (instance tutorial_beginner::numsResponse :init)))

(setf (get tutorial_beginner::numsRequest :md5sum-) "5b345eb3e3672a43cb5b3d560a6e8961")
(setf (get tutorial_beginner::numsRequest :datatype-) "tutorial_beginner/numsRequest")
(setf (get tutorial_beginner::numsRequest :definition-)
      "int32 num1
int32 num2
---
int32 total
")

(setf (get tutorial_beginner::numsResponse :md5sum-) "5b345eb3e3672a43cb5b3d560a6e8961")
(setf (get tutorial_beginner::numsResponse :datatype-) "tutorial_beginner/numsResponse")
(setf (get tutorial_beginner::numsResponse :definition-)
      "int32 num1
int32 num2
---
int32 total
")



(provide :tutorial_beginner/nums "5b345eb3e3672a43cb5b3d560a6e8961")


