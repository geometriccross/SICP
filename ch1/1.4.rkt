#!/usr/bin/env racket
#lang scheme

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 5 -1)
(a-plus-abs-b 5 1)
;; どちらも結果は6
