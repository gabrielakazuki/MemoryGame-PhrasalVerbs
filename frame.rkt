#lang racket/gui
(require net/url racket/gui racket/class racket/unit racket/draw)


(define frame (new frame% 
               [label "Memory Game - Phrasal Verbs"]
               [width 500]
               [height 500]))

(new button% [parent frame]
             [label "Iniciar"]
             ; Callback procedure for a button click:
             )

(define c0 (make-object bitmap% "images/green.png"))
(define c1 (make-object bitmap% "images/red.png"))
(define c2 (make-object bitmap% "images/brown.png"))
(define c3 (make-object bitmap% "images/blue.png"))
(define c4 (make-object bitmap% "images/orange.png"))
(define c5 (make-object bitmap% "images/purple.png"))
(define c6 (make-object bitmap% "images/pink.png"))
(define c7 (make-object bitmap% "images/yellow.png"))
(define c8 (make-object bitmap% "images/gray.png"))


(define mycanvas%
  (class canvas%
    (super-new)
    (inherit get-dc)
    (define/override (on-paint)
      (let ([my-dc (get-dc)])
      (send my-dc draw-bitmap c0 50 10) (send my-dc draw-bitmap c1 160 10) (send my-dc draw-bitmap c2 270 10) (send my-dc draw-bitmap c3 380 10)
      (send my-dc draw-bitmap c4 50 176) (send my-dc draw-bitmap c5 160 176) (send my-dc draw-bitmap c6 270 176) (send my-dc draw-bitmap c7 380 176)
      (send my-dc draw-bitmap c0 50 342) (send my-dc draw-bitmap c1 160 342) (send my-dc draw-bitmap c2 270 342) (send my-dc draw-bitmap c3 380 342)
      (send my-dc draw-bitmap c4 50 508) (send my-dc draw-bitmap c5 160 508) (send my-dc draw-bitmap c6 270 508) (send my-dc draw-bitmap c7 380 508)
        ))))
      
(define c (new mycanvas% [parent frame]))

(send frame show #t)

