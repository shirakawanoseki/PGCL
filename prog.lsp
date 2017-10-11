#!/Users/detomasomodena/local/bin/sbcl --script
;;;
;;; 
;;;

(defun find-greater (a b)
  (if (> a b)
    (progn (format t "~%The first argument to FIND-GREATER, ~a was greater than ~
		   second ~a~%." a b) a)
    (progn (format t "~%The seconf argument to FIND-GREATER, ~a was a greater than ~
		   or equal to the first,~a.~%" b a) b)))

(find-greater 3 5)

(defvar a 3)

(defvar b 5)

(print (setf a (prog2 b (setf b a))))

;;; (print (setf a (prog2 b (setf b a))))

;;; (print (setf a (prog b (setf b a))))
;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")
