#!/Users/detomasomodena/local/bin/sbcl --script

;;;
;;; 
;;;


(defun count-everything ( list )
 (cond ((null list) 0)
       ((not (listp list)) 1)
       (t (+ (count-everything (car list)) (count-everything (cdr list))))))

(print (count-everything '(a b (c d)) ) )

;;;
;;; 
;;;

(format t "~%")
(format t "--end of code--")
(forMat t "~%")

