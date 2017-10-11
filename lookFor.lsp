#!/Users/detomasomodena/local/bin/sbcl --script
;;;
;;; 
;;;

(defun look-for (list)
 (do ((rest-of-list list (cdr rest-of-list)))
     ((null rest-of-list) nil)
     (if (member (car rest-of-list) '(den-of-thieves barrel-of-moneys))
          (return (car rest-of-list)))))

(print (look-for '(at the den-of-thieves yard)))

;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")

