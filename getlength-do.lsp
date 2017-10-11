#!/Users/detomasomodena/local/bin/sbcl --script
;;;
;;; 
;;;

(defun get-length (list)
 (do ((current-list list (cdr current-list))
      (counter 0 (+ counter 1)))
     ((null current-list) counter)))

(print (get-length '(a b c d e f g h i j k)))

;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")

