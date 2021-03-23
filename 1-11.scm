#|
 | A function f is defined by the rule that
 | f(n) = n if n < 3,
 |      = f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3.
 |#

; write a procedure that computes f by means of a recursive process
(define (fn n)
  (if (< n 3) n
      (+ (* 1 (fn (- n 1)))
         (* 2 (fn (- n 2)))
         (* 3 (fn (- n 3))))))

; write a procedure that computes f by means of an iterative process
(define (fn n)
  (if (< n 3) n
      (iter-fn 2 1 0 3 n)))

(define (iter-fn a b c step n)
  (if (> step n) a
      (iter-fn (+ a (* 2 b) (* 3 c)) a b (+ step 1) n)))