#!/Users/detomasomodena/local/bin/sbcl --script
;;;
;;; 
;;;

(defun musical-taste ()
  (format t "~%Do you like rock 'n' roll?~%")
  (case (read-char)
    ((#\y #\Y)
     (format t "~%Great! We'll have to tke in a concert sometimes.~%"))
    (t (format t "~%Nice weather, isn't it?~%"))))

(musical-taste)

;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")
