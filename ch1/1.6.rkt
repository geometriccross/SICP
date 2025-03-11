#!/usr/bin/env racket
#lang sicp

(#%provide square)
(define (square x) (* x x))

(#%provide average)
(define (average x y)
  (/ (+ x y) 2))

(#%provide improve)
(define (improve guess x)
  (average guess (/ x guess)))

(#%provide good-enough?)
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(#%provide sqrt-iter)
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(#%provide sqrt)
(define (sqrt x)
  (sqrt-iter 1.0 x))

;; 問1.6

(#%provide new-if)
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(#%provide sqrt-iter-newif)
(define (sqrt-iter-newif guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(#%provide sqrt-newif)
(define (sqrt-newif x)
  (sqrt-iter-newif 1.0 x))

;; 無限ループに陥る
