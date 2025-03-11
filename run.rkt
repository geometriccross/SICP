#!/usr/bin/env racket
#lang sicp

(define (displayln x)
  (display x)
  (newline))

(define (lndisplay x)
  (newline)
  (display x))

(define (lndisplayln x)
  (newline)
  (display x)
  (newline))

; 1.6.rkt
(#%require "./ch1/1.6.rkt")

(displayln (sqrt 2))
;; (display (sqrt (+ 100 37)))
(newline)
; (display (sqrt-newif 3))

(lndisplayln "Correct Pattern")
(displayln "guess: 1.4142156862745097, x: 2, 許容値: 0.001")
(displayln (string-append
            "expect: #t, actual: "
            (if (good-enough? 1.4142156862745097 2) "#t" "#f")))

(lndisplayln "SMALL NUMBER")
(displayln "guess: 0.01 x: 0.0001, 許容値: 0.001")
(displayln (string-append
            "expect: #f, actual: "
            (if (good-enough? 0.1 0.01) "#t" "#f")))

(lndisplayln "BIG NUMBER")
(displayln "guess: 501, x: 2500, 許容値: 0.001")
(displayln (string-append
            "expect: #t, actual: "
            (if (good-enough? 500 2500) "#t" "#f")))
