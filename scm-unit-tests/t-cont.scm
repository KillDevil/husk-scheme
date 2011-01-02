; Test cases for continuations
(load "skim-unit.scm")

; TODO: consider examples from http://en.wikipedia.org/wiki/Call-with-current-continuation - although most may be better as example programs rather than test cases

; TODO: should not need 'vec' at the end of first line; see R5RS spec
;(assert/equal 
;                (do ((vec (make-vector 5) vec)
;                     (i 0 (+ i 1)))
;                    ((= i 5) vec)
;                     (vector-set! vec i i))
;                #(0 1 2 3 4))

(define (f return)
    (return 2)
      3)
 
(assert/equal (f (lambda (x) x)) 3) 
(assert/equal (call/cc f) 2)

(define (f return)
    (return (+ 1 2 3 (+ 4 5 6)))
      3)

(assert/equal (call/cc f) (+ 1 2 3 4 5 6))
(assert/equal (call-with-current-continuation f) (+ 1 2 3 4 5 6))

(assert/equal (call/cc procedure?) #t)
(assert/equal (call-with-current-continuation procedure?) #t)

; TODO:
;(call-with-current-continuation
;    (lambda (exit)
;          (for-each (lambda (x)
;                            (if (negative? x)
;                                (exit x)))
;                   '(54 0 37 -3 245 19))
;              #t))
;===>  -3

(define list-length
  (lambda (obj)
    (call-with-current-continuation
      (lambda (return)
              (letrec ((r
                (lambda (obj)
                  (cond ((null? obj) 0)
                        ((pair? obj) 
                         (+ (r (cdr obj)) 1))
                        (else (return #f))))))
        (r obj))))))

; TODO:
;(list-length '(1 2 3 4))                    ===>  4

;(list-length '(a b . c))                    ===>  #f

(unit-test-handler-results)