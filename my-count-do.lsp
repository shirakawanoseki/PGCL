#!/Users/detomasomodena/local/bin/sbcl --script
;;;
;;; 
;;;

(defun my-count(number)
 (do ((counter number (- counter 1)))
     ((= counter 0) nil)
      (print counter)))

(my-count 5)

;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")

