#!/Users/detomasomodena/local/bin/sbcl --script
;;;
;;; 
;;;

(with-input-from-string 
  (my-stream "This is my favorite string.")
  (print (read my-stream))
  (print (read my-stream)))

;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")
