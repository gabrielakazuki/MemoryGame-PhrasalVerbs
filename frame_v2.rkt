#lang racket/gui
(require net/url racket/gui racket/class racket/unit racket/draw)
(require (lib "graphics.ss" "graphics")); se importa la libreria graphics
(open-graphics) ; se abre el modo gráfico



(define carta-catch "C:/Users/Eduardo/Desktop/Paradgmas/MemoryGame-PhrasalVerbs/images/catch-up.jpg")
(define carta-break "C:/Users/Eduardo/Desktop/Paradgmas/MemoryGame-PhrasalVerbs/images/break-down.jpg")
(define carta-add "C:/Users/Eduardo/Desktop/Paradgmas/MemoryGame-PhrasalVerbs/images/add-up.png")
(define carta-come-across "C:/Users/Eduardo/Desktop/Paradgmas/MemoryGame-PhrasalVerbs/images/come-across.png")
(define carta-get-away "C:/Users/Eduardo/Desktop/Paradgmas/MemoryGame-PhrasalVerbs/images/get-away-with.jpg")
(define carta-ask-out "C:/Users/Eduardo/Desktop/Paradgmas/MemoryGame-PhrasalVerbs/images/ask-out.jpg")




(define z (open-viewport "HELP" 300 300))
(define p (open-pixmap "HELP" 300 300))


(define frame (new frame% 
               [label "Memory Game - Phrasal Verbs"]
               [stretchable-height #f]
               [stretchable-width #f]))

(define msg1 (new message% [parent frame]
                          [label "Memory Game - Phrasal Verbs"]))

(define row1
  (new horizontal-panel%
       [parent frame]
       [min-width   50]
       [min-height  10]
       [style       '(border)]
       [stretchable-height #f]))

(define row2
  (new horizontal-panel%
       [parent frame]
       [min-width   320]
       [min-height  80]
       [style       '(border)]
       [stretchable-height #f]
       [stretchable-width #f]))

(define row3
  (new horizontal-panel%
       [parent frame]
       [min-width   320]
       [min-height  80]
       [style       '(border)]
       [stretchable-height #f]
       [stretchable-width #f]))

(define row4
  (new horizontal-panel%
       [parent frame]
       [min-width   320]
       [min-height  80]
       [style       '(border)]
       [stretchable-height #f]
       [stretchable-width #f]))


(define (exibe color carta)
  ((draw-pixmap p) carta (make-posn 50 50))
  (copy-viewport p z)
  ((draw-solid-rectangle p ) (make-posn 50 50) 200 200 "white"))



(define msg (new message% [parent row1]
                 [label "Press Start!"]))



(define begin 0.0)
(define diff 0.0)
(define x 0)
(define y 1)


; Timer
(define timer (new timer%
                   [notify-callback (lambda ()
                                      (set! diff (- (current-inexact-milliseconds) begin))
                                      (send msg set-label (number->string diff)))]
                   [interval #f]))

; Start button
(new button% [parent row1] [label "Start"]
     (callback (lambda (button event)
                 (set! begin (- (current-inexact-milliseconds) diff))
                 (send timer start 10))))

; Stop button
(new button% [parent row1] [label "Stop"]
     (callback (lambda (button event)
                 (send timer stop))))

(new button% [parent row1]
     [label "Clear"]
     (callback (lambda (button event)
                 (set! diff 0)
                 (set! begin (current-inexact-milliseconds))
                 (send msg set-label (number->string diff)))))

(define button0 (new button%
                    [parent       row2]
                    [label        ""]
                    [vert-margin  0]   
                    [horiz-margin 0]
                    [min-width 80]
                    [min-height 120]
                    [style        '(border)]
                    [callback     (λ (button event)
                                    (send button set-label "Catch up")
                                    (exibe "black" carta-catch))]))

(define button1 (new button%
                    [parent       row2]
                    [label        ""]
                    [vert-margin  0]   
                    [horiz-margin 0]
                    [min-width 80]
                    [min-height 120]
                    [style        '(border)]
                    [callback     (λ (button event)
                                    (send button set-label "Alcançar um padrão/nível"))]))                         

(define button2 (new button%
                    [parent       row2]
                    [label        ""]
                    [vert-margin  0]   
                    [horiz-margin 0]
                    [min-width 80]
                    [min-height 120]
                    [style        '(border)]
                    [callback     (λ (button event)
                                    (send button set-label "Break down")
                                    (exibe "black" carta-break)
                                    (sleep 2)
                                    (send button set-label ""))]))

(define button3 (new button%
                    [parent       row2]
                    [label        ""]
                    [vert-margin  0]   
                    [horiz-margin 0]
                    [min-width 80]
                    [min-height 120]
                    [style        '(border)]
                    [callback     (λ (button event)
                                    (send button set-label "Convidar alguém"))]))

(define button4 (new button%
                    [parent       row3]
                    [label        ""]
                    [vert-margin  0]   
                    [horiz-margin 0]
                    [min-width 80]
                    [min-height 120]
                    [style        '(border)]
                    [callback     (λ (button event)
                                    (send button set-label "Add up")
                                    (exibe "black" carta-add))]))

(define button5 (new button%
                    [parent       row3]
                    [label        ""]
                    [vert-margin  0]   
                    [horiz-margin 0]
                    [min-width 80]
                    [min-height 120]
                    [style        '(border)]
                    [callback     (λ (button event)
                                    (send button set-label "Ficar triste/decepcionado"))]))

(define button6 (new button%
                    [parent       row3]
                    [label        ""]
                    [vert-margin  0]   
                    [horiz-margin 0]
                    [min-width 80]
                    [min-height 120]
                    [style        '(border)]
                    [callback     (λ (button event)
                                    (send button set-label "Come across")
                                    (exibe "black" carta-come-across))]))

(define button7 (new button%
                    [parent       row3]
                    [label        ""]
                    [vert-margin  0]   
                    [horiz-margin 0]
                    [min-width 80]
                    [min-height 120]
                    [style        '(border)]
                    [callback     (λ (button event)
                                    (send button set-label "Fazer sentido"))]))
(define button8 (new button%
                    [parent       row4]
                    [label        ""]
                    [vert-margin  0]   
                    [horiz-margin 0]
                    [min-width 80]
                    [min-height 120]
                    [style        '(border)]
                    [callback     (λ (button event)
                                    (send button set-label "Sair impune"))]))
(define button9 (new button%
                    [parent       row4]
                    [label        ""]
                    [vert-margin  0]   
                    [horiz-margin 0]
                    [min-width 80]
                    [min-height 120]
                    [style        '(border)]
                    [callback     (λ (button event)
                                    (send button set-label "Ask out")
                                    (exibe "black" carta-ask-out))]))
(define button10 (new button%
                    [parent       row4]
                    [label        ""]
                    [vert-margin  0]   
                    [horiz-margin 0]
                    [min-width 80]
                    [min-height 120]
                    [style        '(border)]
                    [callback     (λ (button event)
                                    (send button set-label "Encontrar por acaso"))]))
(define button11 (new button%
                    [parent       row4]
                    [label        ""]
                    [vert-margin  0]   
                    [horiz-margin 0]
                    [min-width 80]
                    [min-height 120]
                    [style        '(border)]
                    [callback     (λ (button event)
                                    (send button set-label "Get away with")
                                    (exibe "black" carta-get-away))]))


(send frame show #t)