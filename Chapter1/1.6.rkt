#lang scheme

(require  "./../common.rkt")

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)
        )
  )

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001)
  )

(define (improve guess x)
  (average guess (/ x guess))
  )

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)
          )
  )


;;; Infinite loop because all sub-expressions in new-if are evaluated.