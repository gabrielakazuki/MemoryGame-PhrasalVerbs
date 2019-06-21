#lang racket

(require racket/gui/base)

(define frame (new frame%
                   [label "Memory Game"]
                   [width 600]
                   [height 600]))
(new canvas% [parent frame]
             [paint-callback
              (lambda (canvas dc)
                (send dc set-scale 3 3)
                (send dc set-text-foreground "blue")
                (send dc draw-text "MemoryGame" 0 20)
                (send dc draw-text "PhrasalVerbs!" 0 40))])
(send frame show #t)
