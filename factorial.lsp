#!/Users/detomasomodena/local/bin/sbcl --script

;;;
;;; 
;;;

(defun factorial (n)
 (if (= n 0) 1
     (* n (factorial (- n 1) )))) 

(print (factorial 5))

;;;
;;; 
;;;

(format t "~%")
(format t "--end of code--")
(forMat t "~%")

