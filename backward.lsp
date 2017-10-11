#!/opt/local/bin/sbcl --script

;;;
;;; 
;;;

(defun backward ( number )
 (cond ((= number 0) nil)
       (t (backward (- number 1)) (print number))))

(trace backward)

(backward 5)

;;;
;;; 
;;;

(format t "~%")
(format t "--end of code--")
(forMat t "~%")

