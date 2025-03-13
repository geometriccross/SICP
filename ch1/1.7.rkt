#!/usr/bin/env racket
#lang sicp

(#%require "../util.rkt")

; Newton法を一回行う
(define (newton* guess x)
  (let* ((quo (/ x guess)))
    (displayln (string-append "quo:" (number->string quo)))
    (/ (+ quo guess) 2)))

;; (display (newton* (newton* 1.0 2.0) 2.0))

(#%provide my-newton)
(define (my-newton x pre)
  (let* ((calced (newton* pre x))
         (n (abs (- calced pre))))
    (if (< n 0.0001)
        calced
        (my-newton x calced))))

(display (my-newton 9.0 1.0))
