#!/usr/bin/env racket
#lang sicp

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))
; 作用的順序では無限ループ
; 正規的順序では0
