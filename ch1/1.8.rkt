#!/usr/bin/env racket
#lang sicp

(#%require "../util.rkt")
(#%require "../ch1/1.6.rkt")

(#%provide cube)
(define (cube x) (* x x x))

(#%provide good-enough-cube?)
(define (good-enough-cube? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (newton-cube x y)
  (let* ((a (/ x (square y)))
         (b (* 2 y))
         (calced (* (/ 1 3) (+ a b))))

    ;; (displayln (string-append "x: " (number->string x)))
    ;; (displayln (string-append "y: " (number->string y)))
    ;; (displayln (string-append "a: " (number->string a)))
    ;; (displayln (string-append "b: " (number->string b)))
    ;; (displayln (string-append "calced: " (number->string calced)))

    (if (good-enough-cube? calced x)
        calced
        (newton-cube x calced))))

(displayln
 (string-append
  "result: "
  (number->string (newton-cube 9.0 1.0))))

