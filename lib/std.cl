;; TODO Newtons algorithm for finding roots
(defun power (x y)
  (cond ((= 0 y) 1)
        ((and (integerp y) (> y 0)) (power-aux-int x y x))
        ((and (integerp y) (< y 0)) (power-aux-int (/ 1 x) (- y) (/ 1 x)))
        ;; TODO need to write for cases when y is some kind of fraction
        ;((and (floatp y) (> 0)) (rationalize y))
        (t 1)
  )
)

(defun mantiss (x)
  (cond ((floatp x) (mantiss-aux x))
        ((integerp x) 0)
        (t (print "X has to be floating point number"))
  )
)

(defun mantiss-aux (x)
  (cond ((> x 0) (- x (floor x)))
        ((< x 0) (- x (floor x)))
        (t 0)
  )
)

(defun power-aux-int (x y acc)
  (if (= y 1)
      acc
      (power-aux-int x (- y 1) (* acc x))
  )
)
