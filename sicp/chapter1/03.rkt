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
       (else (sum-of-squares x y))))

(check-equal? (sum-of-squares-two-bigest-numbers 2 2 2) 8)
(check-equal? (sum-of-squares-two-bigest-numbers 5 2 2) 29)
(check-equal? (sum-of-squares-two-bigest-numbers 1 2 5) 29)