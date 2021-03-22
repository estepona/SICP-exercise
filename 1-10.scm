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
(A 1 (A 2 3))
(A 1 (A 1 (A 2 2)))
(A 1 (A 1 (A 1 (A 2 1))))
(A 1 (A 1 (A 1 2)))
(A 1 (A 1 (A 0 (A 1 1))))
(A 1 (A 1 (* 2 2)))
(A 1 (A 1 4))
(A 1 (A 0 (A 1 3)))
(A 1 (* 2 (A 0 (A 1 2))))
(A 1 (* 2 (* 2 (A 0 (A 1 1)))))
(A 1 (* 2 (* 2 (* 2 2))))
(A 1 (* 2 (* 2 4)))
(A 1 (* 2 8))
(A 1 16)
(A 0 (A 1 15))
(* 2 (A 0 (A 1 14)))
(* 2 (* 2 (A 0 (A 1 13))))
(* 2 (* 2 (* 2 (A 0 (A 1 12)))))
(* 2 (* 2 (* 2 (* 2 (A 0 (A 1 11))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 10)))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 9))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 8)))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 7))))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 6)))))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 5))))))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 4)))))))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 3))))))))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 2)))))))))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 1))))))))))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 2)))))))))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 4))))))))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 8)))))))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 16))))))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 32)))))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 64))))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 128)))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 256))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 512)))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 1024))))))
(* 2 (* 2 (* 2 (* 2 (* 2 2048)))))
(* 2 (* 2 (* 2 (* 2 4096))))
(* 2 (* 2 (* 2 8192)))
(* 2 (* 2 16384))
(* 2 32768)
=> 65536
