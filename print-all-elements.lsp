#!/Users/detomasomodena/local/bin/sbcl --script
;;;
;;; 
;;;

(defun print-all-elements (string)
  (with-input-from-string (my-stream string)
    (let ((eof (list 'eof)))
      (do ((current-object (read my-stream nil eof)
			   (read my-stream nil eof)))
	((eq current-object eof) t)
	(print current-object)))))

(print-all-elements "brother sister eof mother father")

;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")
