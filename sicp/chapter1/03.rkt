#lang racket/base

(require rackunit)

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (solution x y z)
  (cond((and(> y x) (> z x)) (sum-of-squares y z))
       ((and(> x y) (> z y)) (sum-of-squares x z))
       ((and(> x z) (> y z)) (sum-of-squares x y))))

(check-equal? (solution 5 1 2) 29)
