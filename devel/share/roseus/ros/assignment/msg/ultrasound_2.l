;; Auto-generated. Do not edit!


(when (boundp 'assignment::ultrasound_2)
  (if (not (find-package "ASSIGNMENT"))
    (make-package "ASSIGNMENT"))
  (shadow 'ultrasound_2 (find-package "ASSIGNMENT")))
(unless (find-package "ASSIGNMENT::ULTRASOUND_2")
  (make-package "ASSIGNMENT::ULTRASOUND_2"))

(in-package "ROS")
;;//! \htmlinclude ultrasound_2.msg.html


(defclass assignment::ultrasound_2
  :super ros::object
  :slots (_b _a ))

(defmethod assignment::ultrasound_2
  (:init
   (&key
    ((:b __b) "")
    ((:a __a) "")
    )
   (send-super :init)
   (setq _b (string __b))
   (setq _a (string __a))
   self)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; string _b
    4 (length _b)
    ;; string _a
    4 (length _a)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _b
       (write-long (length _b) s) (princ _b s)
     ;; string _a
       (write-long (length _a) s) (princ _a s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _b
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _b (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _a
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _a (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get assignment::ultrasound_2 :md5sum-) "6903e7caf1ccb729fc400b6c391325a3")
(setf (get assignment::ultrasound_2 :datatype-) "assignment/ultrasound_2")
(setf (get assignment::ultrasound_2 :definition-)
      "string b
string a

")



(provide :assignment/ultrasound_2 "6903e7caf1ccb729fc400b6c391325a3")


