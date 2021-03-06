;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; EMAIL: <darkestkhan@gmail.com>                                           ;;
;; License: GNU GPLv3 or any later as published by Free Software Foundation ;;
;; (see README file)                                                        ;;
;;                    Copyright © 2012 darkestkhan                          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  This Program is Free Software: You can redistribute it and/or modify    ;;
;;  it under the terms of The GNU General Public License as published by    ;;
;;    the Free Software Foundation, either version 3 of the license, or     ;;
;;                (at Your option) any later version.                       ;;
;;                                                                          ;;
;;      This Program is distributed in the hope that it will be useful,     ;;
;;      but WITHOUT ANY WARRANTY; without even the implied warranty of      ;;
;;      MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE. See the        ;;
;;              GNU General Public License for more details.                ;;
;;                                                                          ;;
;;    You should have received a copy of the GNU General Public License     ;;
;;   along with this program. If not, see <http://www.gnu.org/licenses/>.   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
