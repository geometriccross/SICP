#!/usr/bin/env racket
#lang sicp

(#%require "../util.rkt")
(#%require "../ch1/1.6.rkt")

(define (newton-cube x y)
  (let* ((a (/ x (square y)))
         (b (* 2 y))
         (calced (* (/ 1 3) (+ a b))))

    (displayln (string-append "x: " (number->string x)))
    (displayln (string-append "y: " (number->string y)))
    (displayln (string-append "a: " (number->string a)))
    (displayln (string-append "b: " (number->string b)))
    (displayln (string-append "calced: " (number->string calced)))

    (if (good-enough? calced x)
        (displayln calced)
        (newton-cube x calced))))

(newton-cube 9.0 1.0)
