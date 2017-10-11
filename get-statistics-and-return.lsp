#!/Users/detomasomodena/local/bin/sbcl --script
;;;
;;; 
;;;

(defun get-statistics-and-return ()
 (format t "~%Please type a symbol, then a string, then a list~%")
 (list (read) (read) (read)))

(print (get-statistics-and-return))

;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")
