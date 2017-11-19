#lang racket

(define (square x)
	(* x x))

(define (sum-of-squares x y z)
	(+ (square x) (square y) (square z)))

(define (sum-of-two-largest a b c)
	(- (sumOfSquares a b c) (* (min a b c) (min a b c))))