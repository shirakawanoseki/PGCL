#!/Users/detomasomodena/local/bin/sbcl --script
;;;
;;; 
;;;

(with-output-to-string (my-stream)
  (princ "This" my-stream)
  (princ "is" my-stream))

(format nil "~a~a" "This" "is")

;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")
