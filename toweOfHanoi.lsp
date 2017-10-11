#!/Users/detomasomodena/local/bin/sbcl --script
;;;
;;; 
;;;

(defun move-disk (from to)
 (format t "~%Move a disk from ~a to ~a." from to))

(defun tower-of-hanoi (n from to spare)
 (cond ((= n 1) (move-disk from to))
 (t (tower-of-hanoi (- n 1) from spare to)
    (move-disk from to)
    (tower-of-hanoi (- n 1) spare to from))))  

;;; (defun move-disk (from to)
;;;  (format t "%Move a disk from ~a to ~a.~%" from to))

(tower-of-hanoi 3 'a 'b 'c)

;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")

