#lang sicp

; Describe:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; Translates into a + |b|
;; The operator is changed according to b > or < 0.
