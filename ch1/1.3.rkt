#!/usr/bin/env racket
#lang scheme

;; 三つの数を引数として取り、大きい二つの数の二畳の輪を返す手続きを定義せよ

(define (big a b)
  (cond ((> a b) a)
        (else b)))

(big 1 2) ; 2
(big (big 4 2) 3) ; 4

(define (small a b)
  (cond ((< a b) a)
        (else b)))

(define (big2 a b c)
  (remove (small a (small b c)) (list a b c)))

(small 3 2)
(big2 2 4 6)

(apply + (map sqr (list 2 4 6)))

(define (sqr_big2_and_sum a b c)
  (apply + (map sqr (big2 a b c)))) 

;; expected 16 + 36 = 52
(sqr_big2_and_sum 2 4 6)
