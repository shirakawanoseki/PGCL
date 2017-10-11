#!/Users/detomasomodena/local/bin/sbcl --script
;;;
;;; 
;;;
(defvar *animal-data* '("Does it sting" (canary)
			("Could it have spots" (dog)
			 ("Does it lay eggs" (chicken)
			  (dolphin)))))

;;; 
;;; 
;;; 
;;; 
(defun question (knowledge)
  (car knowledge))

(defun animal (knowledge)
  (car knowledge))

(defun question-node-p (knowledge)
  (stringp (question knowledge)))

(defun yes-branch (knowledge)
  (cadr knowledge))

(defun no-branch (knowledge)
  (caddr knowledge))

;;;
;;; 
;;;
(defun add (new-question old-animal new-animal node)
  (setf (car node) new-question)
  (setf (cdr node) (list (list new-animal)
			 (list old-animal))))

(defun a-or-an (symbol)
  (let ((word (format nil "~a" symbol)))
	(cond ((member (char word 0) '(#\A #\I #\U #\E #\O))
	       (format nil "an ~a" (string-downcase word)))
	      (t (format nil "a ~a" (string-downcase word))))))

(defun play-again? ()
  (format t "~%Do you want to play again?~%")
  (let ((response (read-line)))
    (cond ((equalp response "yes")
	   (init-animal))
	  ((equalp response "no")
	   (format t "~%I come back soon now, y'hear?~%"))
	  (t (format t "~%I guess that's a no. Well, godbye.~%")))))

(defun gloat ()
  (format t "~%It was nothing folks. I knew it all along.~%"))

;;;
;;; 
;;;
(defun learn (old-node)
  (format t "~%Oh, well, I give up. What was the answer?~%")
  (let ((new-animal (read)))
    (format t "~%Please type a question whose answer is yes for ~a and no for ~a.~%"
	    (a-or-an new-animal)
	    (a-or-an (animal old-node)))
    (let ((new-question (read-line)))
      (add new-question (animal old-node) new-animal old-node)))) 

;;;
;;;
;;; 
(defun guess (knowledge)
  (format t "~%Is it ~A?~%" (a-or-an (animal knowledge)))
  (let ((answer (read-line)))
    (cond ((equalp answer "yes") (gloat) (play-again?))
	  ((equalp answer "no") (learn knowledge) (play-again?))
	  (t (format nil "~% Please type yes or no.~%")
	     (guess knowledge)))))

;;;
;;;
;;; 
(defun ask (knowledge)
  (format t "~%~A?~%" (question knowledge))
  (let ((answer (read-line)))
    (cond ((equalp answer "yes")
	 (main-loop (yes-branch knowledge)))
	((equalp answer "no")
	 (main-loop (no-branch knowledge)))
	(t (format t "%Please type yes or no.~%")
	   (ask knowledge)))))

;;;
;;;
;;; 
(defun main-loop (knowledge)
  (cond ((question-node-p knowledge) (ask knowledge))
	(t (guess knowledge))))

;;;
(defun init-animal ()
  (format t "~%Think of an animal and I will try to guess what it is ~%by asking question.~%")
  (main-loop *animal-data*))

;;;
(init-animal)

;;;
;;; 
;;;
(format t "~%")
(format t "--end of code--")
(forMat t "~%")

