#|
 | Write a procedure that computes elements of Psacal's triangle by means of a recursive process.
 |#

(define (fn x y)
  if (or (= x 1) (= y 1) (= x y)) 1
     (+ (fn (- x 1) (- y 1))
        (fn (- x 1) y)))
