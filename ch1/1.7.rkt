#!/usr/bin/env racket
#lang sicp

(#%require "../util.rkt")

; Newton法を一回行う
(define (newton pre x)
  (let* ((quo (/ x pre)))
    (displayln (string-append "quo:" (number->string quo)))
    (/ (+ quo pre) 2)))

(display (newton (newton 1.0 2.0) 2.0))
