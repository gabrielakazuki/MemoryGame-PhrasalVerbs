#lang racket/gui
(require net/url)


(define frame (new frame% 
               [label "Memory Game - Phrasal Verbs"]
               [width 500]
               [height 500]))

(new button% [parent frame]
             [label "Iniciar"]
             ; Callback procedure for a button click:
             )

(define c0 (make-object bitmap% (get-pure-port 
                                 (string->url "file:///C:/Users/Gabriela/Desktop/GABRIELA/jogo/sit.png"))))
(define c1 (make-object bitmap% (get-pure-port 
                                 (string->url "file:///C:/Users/Gabriela/Desktop/GABRIELA/jogo/sleep.png"))))

(define mycanvas%
  (class canvas%
    (super-new)
    (inherit get-dc)
    (define/override (on-paint)
      (let ([my-dc (get-dc)])
        (send my-dc draw-bitmap c0 150 50) (send my-dc draw-bitmap c1 225 50) (send my-dc draw-bitmap c1 150 150) (send my-dc draw-bitmap c0 225 150)))))

(define c (new mycanvas% [parent frame]))

(send frame show #t)

