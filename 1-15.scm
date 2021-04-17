#| 
 | (define (cube x) (* x x x))
 | (define (p x) (- (* 3 x) (* 4 (cube x))))
 | (define (sine angle)
 |   (if (not (> (abs angle) 0.1))
 |     angle
 |     (p (sine (/ angle 3.0)))))
 | 
 | a. How many times is the procedure p applied when (sine 12.15) is evaluated?
 | b. What is the order of growth in space and number of steps (as a function of a) used by process
 |    generated by the sine procudure when (sine a) is evaluated?
 |#

; a. p is applied 5 times
(sine 12.15)
(p (sine 4.05))
(p (p (sine 1.35)))
(p (p (p (sine 0.45))))
(p (p (p (p (sine 0.15)))))
(p (p (p (p (p (sine 0.05))))))

; b. O(log(a))
; solution: http://community.schemewiki.org/?sicp-ex-1.15
