#!/Users/detomasomodena/local/bin/sbcl --script
;;;
;;; 
;;;

(defun read-two-chars ()
 (format t "~%Please type two characters:~%")
 (let ((a (read-char))
       (b (read-char)))
 (format t "~a ~a" a b)))

(read-two-chars)

;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")
