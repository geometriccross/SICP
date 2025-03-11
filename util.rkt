#!/usr/bin/env racket
#lang sicp

(#%provide displayln)
(define (displayln x)
  (display x)
  (newline))

(#%provide lndisplay)
(define (lndisplay x)
  (newline)
  (display x))

(#%provide lndisplayln)
(define (lndisplayln x)
  (newline)
  (display x)
  (newline))
