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

(define (smallest a b c)
  (remove (small a (small b c)) (list a b c)))

(small 3 2)
(smallest 3 5 2)
