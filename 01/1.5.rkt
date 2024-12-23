#lang racket

(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; Applicative -> tries to evaluate (p) before evaluating test
;   (p) recurses infinitely, program doesn't finish
;
; Normative -> expands (test 0 (p)) into (cond <...>)
; Never needs to evaluate (p) since first conditional branch of test is fulfilled immediately.