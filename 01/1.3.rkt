#lang racket

(define (sum-of-squares a b) (+ (* a a) (* b b)))
(define (largest-squares a b c) (cond
                                  ((and (< a b) (< a c)) (sum-of-squares b c))
                                  ((and (< b c) (< b a)) (sum-of-squares a c))
                                  (else (sum-of-squares a b))
                                  ))
(display (largest-squares 1 2 3))
(display (largest-squares 3 2 1))