(define-syntax mac-apply
  (syntax-rules ()
    ((mac-apply mac f n ...)
     (begin (mac f)
            (mac-apply mac n ...)))
    ((mac-apply mac) #t)))