#!/usr/bin/env racket
#lang sicp

(#%require "../util.rkt")

; Newton法を一回行う
(define (newton* guess x)
  (let* ((quo (/ x guess)))
    (displayln (string-append "quo:" (number->string quo)))
    (/ (+ quo guess) 2)))

(display (newton* (newton* 1.0 2.0) 2.0))
