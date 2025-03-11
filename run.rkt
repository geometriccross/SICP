#!/usr/bin/env racket
#lang sicp

(define (displayln x)
  (display x)
  (newline))

; 1.6.rkt
(#%require "./ch1/1.6.rkt")

(display (sqrt 9))
(display (sqrt (+ 100 37)))
(newline)
; (display (sqrt-newif 3))

(displayln
 (string-append "good-enough in 1.4142 vs 2: "
                (if (good-enough? 1.4142 2) "#t" "#f")))
