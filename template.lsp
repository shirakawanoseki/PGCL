#!/opt/local/bin/sbcl --script
;;;
;;; 
;;;

(defun my-count(number)
 (cond ((= number 0) nil)
       (t (print number) (my-count (- number 1))))) 

(my-count 5)

(format t "~%日本語テスト~%")

;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")
