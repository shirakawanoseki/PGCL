#!/Users/detomasomodena/local/bin/sbcl --script

;;;
;;; 
;;;

(defun get-length( list )
 (if (null list) 0
     (+ 1 (get-length (cdr list)))))

(print (get-length '(a b c)))

;;;
;;; 
;;;

(format t "~%")
(format t "--end of code--")
(forMat t "~%")

