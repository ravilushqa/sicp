#lang racket/base

(require rackunit)

(define (>= x y)
  (or (> x y) (= x y)))

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-squares-two-bigest-numbers x y z)
  (cond((and(>= y x) (>= z x)) (sum-of-squares y z))
       ((and(>= x y) (>= z y)) (sum-of-squares x z))
       ((and(>= x z) (>= y z)) (sum-of-squares x y))))

(check-equal? (sum-of-squares-two-bigest-numbers 5 2 2) 29)
