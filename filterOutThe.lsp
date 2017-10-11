#!/Users/detomasomodena/local/bin/sbcl --script

;;;
;;; 
;;;

(defun filter-out-the (list)
 (cond ((null list) nil)
       ((equal (car list) 'the) (filter-out-the (cdr list)))
       (t (cons (car list) (filter-out-the (cdr list))))))

(print (filter-out-the '(this is the pen)))

;;;
;;; 
;;;

(format t "~%")
(format t "--end of code--")
(forMat t "~%")

