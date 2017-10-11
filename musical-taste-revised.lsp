#!/Users/detomasomodena/local/bin/sbcl --script
;;;
;;; 
;;;

(defun musical-taste-revise ()
  (format t "~%What kind of music do you like?~%")
  (let ((answer (read-line)))
    (if (search "rock" answer)
      (format t "~%Now we're cooki8ng with gas.~%"))
    (if (search "classical" answer)
      (format t "~%Good, good.~%"))
    (if (search "baroque" answer)
      (format t "~%Here today, Bach tomorrow!~%")))
  (format t "~%Well, there's plenty of room for conversation here!~%"))


(musical-taste-revise)

;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")
