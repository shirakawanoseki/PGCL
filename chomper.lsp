#!/Users/detomasomodena/local/bin/sbcl --script
;;;
;;; 
;;;

(defun move-left (list)
  (cond ((eql (cadr list) '>)
	 (cons '> (cons 0 (cddr list))))
	(t (cons (car list) (move-left (cdr list))))))

(defun move-right (list)
  (cond ((eql (car list) '<)
	 (cons 0 (cons '< (cddr list))))
	(t (cons (car list) (move-right (cdr list))))))

(defun chomper-going-where? (list)
  (case (car list)
    (< '<)
    (> '>)
    (V 'V)
    (t (chomper-going-where? (cdr list)))))

(defun anything-to-chomp-left (list)
  (case (car list)
    (1 t)
    (0 (anything-to-chomp-left (cdr list)))
    ((< > V) nil)))

(defun flush-until-chomper (list)
  (if (null list) nil
    (case (car list)
      ((< > V) (cdr list))
      (t (flush-until-chomper (cdr list))))))

(defun anything-to-chomp-right (list)
  (let ((list (flush-until-chomper list)))
    (member 1 list)))

(defun chomper-point (direction list)
  (let ((old-direction (chomper-going-where? list)))
    (substitute direction old-direction list)))

(defun chomp-once (list)
  (let ((chomper-direction (chomper-going-where? list)))
    (case chomper-direction
      (> (if (anything-to-chomp-left list)
	   (move-left list)
	   (chomper-point 'V list)))
      (< (if (anything-to-chomp-right list)
	   (move-right list)
	   (chomper-point 'V list)))
      (V (cond ((anything-to-chomp-left list)
		(chomper-point '> list))
	       ((anything-to-chomp-right list)
		(chomper-point '< list))
	       (t nil))))))

(defun chomp (list)
  (do ((list (chomp-once list) (chomp-once list)))
    ((null list) (format t "~% That's all, folks.~%"))
    (print list))) 

(chomp '(0 1 0 1 0 0 0 V 1 1 0 0))

;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")
