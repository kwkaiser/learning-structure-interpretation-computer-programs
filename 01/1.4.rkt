#lang racket

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; If b is greater than 0, eval (+ a b) [adds b to a]
; Otherwise, eavl (- a b)  [subtracts b from a]
;
; (a-plus-abs-b 3 -1) -> (- 3 -1) -> (+ 3 1) -> 4
