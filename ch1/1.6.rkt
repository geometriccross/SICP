#!/usr/bin/env racket
#lang scheme

(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)

(sqrt (+ 100 37))

;; 問1.6
;; (define (new-if predicate then-clause else-clause)
;;   (cond (predicate then-clause)
;;         (else else-clause)))
;;
;; (define (sqrt-iter-newif guess x)
;;   (new-if (good-enough? guess x)
;;       guess
;;       (sqrt-iter (improve guess x)
;;                  x)))
;;
;; (sqrt-iter-newif 1.0 9)

;; (new-if (= 2 3) 0 5)
