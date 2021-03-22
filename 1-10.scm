#|
 | The following procedure computes a mathematical function called Ackermann's function.
 | What are the valus of the following expression?
 |#

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))

; expression one
(A 1 10)
(A 0 (A 1 9))
(* 2 (A 0 (A 1 8)))
(* 2 (* 2 (A 0 (A 1 7))))
(* 2 (* 2 (* 2 (A 0 (A 1 6)))))
(* 2 (* 2 (* 2 (* 2 (A 0 (A 1 5))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 4)))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 3))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 2)))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 1))))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 2)))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 2 2))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 2 2 2)))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 2 2 2 2))))))
(* 2 (* 2 (* 2 (* 2 (* 2 2 2 2 2 2)))))
(* 2 (* 2 (* 2 (* 2 2 2 2 2 2 2))))
(* 2 (* 2 (* 2 2 2 2 2 2 2 2)))
(* 2 (* 2 2 2 2 2 2 2 2 2))
(* 2 2 2 2 2 2 2 2 2 2)
=> 1024

; expression two
(A 2 4)
