#!/Users/detomasomodena/local/bin/sbcl --script
;;;
;;; 
;;;

(defun print-number ()
 (dotimes (i 2 "Done") (print i)))

(print (print-number))

(defun sq (x)
 (* x x))

(defun print-square (list)
 (dolist (x list)
  (print (sq x))))

(print-square '(1 2 3 4 5 6 7))

;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")

