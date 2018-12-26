;Collsion box Data
;==============================
; 5 bytes 
; byte 0 bit flags (if 0 loop ends)
; byte 1 y1
; byte 2 y2
; byte 3 x1
; byte 4 x2

;bit flags
;0 hurt 1
;1 hurt 2
;2 projectile invul
;3 unknown
;4 invul
;5 clash
;6 attack
;7 attack
;==============================

loc_0e969e:
	dc.b $01,$c5,$d8,$f2,$03
	dc.b $01,$ce,$00,$f6,$09
	dc.b $00
	even

loc_0e96aa:
	dc.b $01,$c5,$d5,$f9,$07
	dc.b $01,$cc,$00,$f4,$0c
	dc.b $00
	even

loc_0e96b6:
	dc.b $01,$cb,$d5,$ff,$09
	dc.b $01,$d0,$00,$f4,$0c
	dc.b $00
	even

loc_0e96c2:
	dc.b $01,$d2,$00,$f2,$04
	dc.b $01,$d9,$00,$f1,$09
	dc.b $01,$e8,$00,$f1,$0e
	dc.b $00
	even

loc_0e96d2:
	dc.b $01,$d8,$00,$ef,$06
	dc.b $01,$e4,$00,$ef,$0e
	dc.b $00
	even

loc_0e96de:
	dc.b $01,$d8,$e8,$f9,$07
	dc.b $01,$df,$00,$f1,$0f
	dc.b $00
	even

loc_0e96ea:
	dc.b $01,$c2,$d0,$fc,$08
	dc.b $01,$c8,$e8,$f4,$0c
	dc.b $01,$c8,$00,$f9,$08
	dc.b $00
	even

loc_0e96fa:
	dc.b $01,$c2,$e8,$f4,$00
	dc.b $01,$c8,$dc,$ed,$08
	dc.b $01,$d8,$00,$f9,$09
	dc.b $00
	even

loc_0e970a:
	dc.b $01,$c3,$eb,$f7,$07
	dc.b $0c,$e0,$fc,$f7,$ff
	dc.b $00
	even

loc_0e9716:
	dc.b $01,$cc,$eb,$f4,$07
	dc.b $01,$d8,$ee,$f8,$0b
	dc.b $02,$e8,$f3,$f4,$fe
	dc.b $00
	even

loc_0e9726:
	dc.b $01,$c3,$ee,$f6,$08
	dc.b $02,$e0,$fc,$f6,$00
	dc.b $00
	even

loc_0e9732:
	dc.b $01,$c5,$e1,$f5,$ff
	dc.b $01,$cc,$d9,$f0,$06
	dc.b $01,$d4,$ec,$fd,$0f
	dc.b $0c,$e8,$f8,$02,$0c
	dc.b $00
	even

loc_0e9748:
	dc.b $01,$d5,$ea,$f2,$08
	dc.b $01,$d2,$de,$f8,$10
	dc.b $00
	even

loc_0e9754:
	dc.b $01,$d2,$ea,$f7,$09
	dc.b $01,$ca,$e3,$f2,$fe
	dc.b $00
	even

loc_0e9760:
	dc.b $01,$d2,$e6,$f7,$0d
	dc.b $01,$dc,$ea,$f0,$08
	dc.b $00
	even

loc_0e976c:
	dc.b $01,$c9,$e6,$fc,$0c
	dc.b $01,$d1,$ee,$f5,$05
	dc.b $02,$ea,$f6,$ee,$fe
	dc.b $00
	even

loc_0e977c:
	dc.b $01,$c4,$00,$ee,$0f
	dc.b $00
	even

loc_0e9782:
	dc.b $01,$d6,$00,$ec,$11
	dc.b $00
	even

loc_0e9788:
	dc.b $01,$c9,$de,$e9,$02
	dc.b $01,$cf,$f0,$ee,$0a
	dc.b $01,$e4,$00,$f2,$12
	dc.b $00
	even

loc_0e9798:
	dc.b $01,$c6,$d2,$f3,$ff
	dc.b $01,$cc,$e4,$ec,$05
	dc.b $01,$d8,$00,$f2,$0c
	dc.b $00
	even

loc_0e97a8:
	dc.b $01,$ca,$d8,$f2,$08
	dc.b $01,$d0,$f0,$ea,$0c
	dc.b $01,$ec,$00,$f2,$12
	dc.b $00
	even

loc_0e97b8:
	dc.b $01,$c7,$d3,$fa,$06
	dc.b $01,$cb,$f0,$f0,$09
	dc.b $01,$d4,$00,$f2,$0c
	dc.b $00
	even

loc_0e97c8:
	dc.b $01,$d5,$e4,$ea,$00
	dc.b $01,$dc,$f0,$e6,$06
	dc.b $01,$e4,$00,$ef,$10
	dc.b $00
	even

loc_0e97d8:
	dc.b $01,$d7,$e1,$f5,$ff
	dc.b $01,$dc,$f0,$ec,$08
	dc.b $01,$e8,$00,$ef,$10
	dc.b $00
	even

loc_0e97e8:
	dc.b $01,$c8,$f8,$ea,$11
	dc.b $00
	even

loc_0e97ee:
	dc.b $01,$c8,$f8,$f2,$0c
	dc.b $00
	even

loc_0e97f4:
	dc.b $01,$d8,$f8,$ea,$11
	dc.b $00
	even

loc_0e97fa:
	dc.b $01,$e8,$00,$e8,$18
	dc.b $00
	even

loc_0e9800:
	dc.b $01,$c8,$d8,$f8,$08
	dc.b $01,$ce,$f0,$ef,$0c
	dc.b $01,$d8,$00,$ef,$10
	dc.b $00
	even

loc_0e9810:
	dc.b $01,$cc,$00,$f7,$0d
	dc.b $02,$d8,$00,$f7,$14
	dc.b $00
	even

loc_0e981c:
	dc.b $01,$d0,$00,$fd,$10
	dc.b $01,$e8,$00,$f6,$10
	dc.b $02,$dc,$00,$00,$18
	dc.b $c0,$cc,$e4,$08,$24
	dc.b $00
	even

loc_0e9832:
	dc.b $01,$cc,$00,$f5,$0e
	dc.b $01,$c7,$d1,$ff,$09
	dc.b $01,$d8,$00,$f9,$12
	dc.b $00
	even

loc_0e9842:
	dc.b $01,$c7,$d1,$ff,$0b
	dc.b $02,$d4,$f0,$f2,$14
	dc.b $01,$cc,$00,$f8,$10
	dc.b $00
	even

loc_0e9852:
	dc.b $01,$cc,$d6,$09,$13
	dc.b $01,$d0,$ea,$fc,$17
	dc.b $01,$e4,$00,$fa,$1e
	dc.b $c0,$ca,$de,$20,$30
	dc.b $6c,$d4,$e4,$10,$23
	dc.b $00
	even

loc_0e986c:
	dc.b $01,$c7,$d1,$02,$0c
	dc.b $01,$cd,$00,$f8,$13
	dc.b $01,$d4,$00,$f7,$19
	dc.b $00
	even

loc_0e987c:
	dc.b $01,$d7,$00,$f2,$08
	dc.b $01,$e0,$00,$ef,$0e
	dc.b $00
	even

loc_0e9888:
	dc.b $01,$d9,$00,$f6,$0b
	dc.b $01,$e8,$00,$f2,$0e
	dc.b $c0,$d7,$e8,$0d,$22
	dc.b $6c,$de,$ec,$04,$15
	dc.b $00
	even

loc_0e989e:
	dc.b $01,$c8,$d3,$01,$0b
	dc.b $01,$cf,$00,$f4,$09
	dc.b $02,$d0,$dd,$f2,$10
	dc.b $00
	even

loc_0e98ae:
	dc.b $01,$c8,$00,$fe,$0a
	dc.b $01,$cf,$e8,$f8,$0c
	dc.b $02,$d4,$e4,$f9,$11
	dc.b $00
	even

loc_0e98be:
	dc.b $01,$c8,$00,$fe,$0a
	dc.b $01,$cf,$e8,$f8,$0c
	dc.b $02,$d8,$e8,$f8,$13
	dc.b $c0,$e8,$f8,$10,$28
	dc.b $68,$e0,$f0,$04,$1e
	dc.b $00
	even

loc_0e98d8:
	dc.b $01,$cc,$00,$f4,$0a
	dc.b $01,$c6,$d0,$ff,$09
	dc.b $02,$d4,$f0,$f9,$10
	dc.b $00
	even

loc_0e98e8:
	dc.b $01,$cc,$00,$f5,$0c
	dc.b $01,$c5,$cf,$ff,$09
	dc.b $00
	even

loc_0e98f4:
	dc.b $01,$c5,$e4,$fe,$08
	dc.b $01,$cb,$dc,$f2,$0e
	dc.b $01,$d0,$00,$f4,$02
	dc.b $00
	even

loc_0e9904:
	dc.b $01,$c4,$e1,$fe,$08
	dc.b $01,$ca,$d8,$f3,$0d
	dc.b $01,$d0,$00,$f6,$03
	dc.b $00
	even

loc_0e9914:
	dc.b $01,$c6,$e0,$02,$0c
	dc.b $01,$cc,$00,$f8,$04
	dc.b $c0,$c4,$d8,$0c,$24
	dc.b $68,$c8,$de,$00,$1a
	dc.b $2c,$d0,$e4,$00,$14
	dc.b $00
	even

loc_0e992e:
	dc.b $01,$c5,$e4,$ff,$09
	dc.b $01,$cc,$00,$f6,$03
	dc.b $02,$cc,$e4,$f3,$10
	dc.b $2c,$d8,$ec,$08,$1a
	dc.b $c0,$d0,$f4,$14,$26
	dc.b $00
	even

loc_0e9948:
	dc.b $01,$da,$00,$f0,$04
	dc.b $01,$e0,$00,$ef,$0a
	dc.b $02,$ec,$00,$f0,$14
	dc.b $00
	even

loc_0e9958:
	dc.b $01,$e1,$00,$f2,$05
	dc.b $01,$e6,$00,$ee,$0c
	dc.b $c8,$f0,$00,$0c,$26
	dc.b $22,$f0,$00,$04,$16
	dc.b $00
	even

loc_0e996e:
	dc.b $01,$c5,$cf,$fa,$04
	dc.b $01,$cb,$00,$f1,$09
	dc.b $00
	even

loc_0e997a:
	dc.b $01,$c3,$cf,$f6,$04
	dc.b $01,$cb,$00,$f1,$09
	dc.b $0c,$c8,$d4,$f4,$14
	dc.b $00
	even

loc_0e998a:
	dc.b $01,$c3,$cd,$f6,$05
	dc.b $01,$cb,$00,$f1,$09
	dc.b $c0,$c4,$d8,$12,$2c
	dc.b $20,$d0,$e2,$18,$2a
	dc.b $40,$c0,$d0,$00,$26
	dc.b $00
	even

loc_0e99a4:
	dc.b $01,$c9,$d3,$04,$0e
	dc.b $01,$ce,$00,$f9,$11
	dc.b $01,$e4,$00,$f7,$15
	dc.b $00
	even

loc_0e99b4:
	dc.b $01,$d0,$00,$04,$18
	dc.b $02,$cc,$ec,$0b,$21
	dc.b $01,$e4,$00,$f8,$1e
	dc.b $00
	even

loc_0e99c4:
	dc.b $01,$d0,$00,$04,$18
	dc.b $02,$cc,$ec,$0b,$21
	dc.b $01,$e4,$00,$f8,$1e
	dc.b $c0,$cc,$e0,$20,$3b
	dc.b $c0,$c4,$e8,$20,$33
	dc.b $68,$cc,$e0,$10,$33
	dc.b $00
	even

loc_0e99e4:
	dc.b $01,$ca,$da,$0c,$1c
	dc.b $01,$d0,$00,$04,$1e
	dc.b $02,$cc,$ec,$08,$21
	dc.b $01,$e4,$00,$f8,$1e
	dc.b $0c,$cc,$e0,$10,$2f
	dc.b $00
	even

loc_0e99fe:
	dc.b $01,$e0,$00,$f6,$0a
	dc.b $02,$da,$e8,$fa,$15
	dc.b $0c,$d4,$e8,$fe,$0a
	dc.b $c0,$e8,$00,$0a,$20
	dc.b $28,$e0,$f0,$0a,$1a
	dc.b $00
	even

loc_0e9a18:
	dc.b $01,$d2,$00,$fa,$17
	dc.b $01,$e4,$00,$f1,$18
	dc.b $c0,$c8,$e0,$09,$21
	dc.b $28,$ce,$e8,$04,$1c
	dc.b $00
	even

loc_0e9a2e:
	dc.b $01,$cc,$d4,$fd,$0d
	dc.b $01,$d0,$00,$f7,$15
	dc.b $01,$e8,$00,$f1,$18
	dc.b $00
	even

loc_0e9a3e:
	dc.b $01,$d8,$ec,$ed,$0a
	dc.b $01,$d4,$00,$f7,$07
	dc.b $00
	even

loc_0e9a4a:
	dc.b $01,$cc,$e4,$f0,$00
	dc.b $01,$dc,$00,$f8,$08
	dc.b $02,$d8,$e8,$eb,$0c
	dc.b $00
	even

loc_0e9a5a:
	dc.b $01,$c8,$e4,$ef,$00
	dc.b $01,$d4,$00,$f8,$06
	dc.b $02,$c0,$d2,$e7,$fc
	dc.b $c0,$b4,$d0,$00,$14
	dc.b $40,$c8,$e8,$06,$1c
	dc.b $28,$bc,$dc,$fc,$0c
	dc.b $00
	even

loc_0e9a7a:
	dc.b $01,$c4,$d8,$e7,$fd
	dc.b $01,$c9,$00,$f6,$06
	dc.b $02,$cc,$e0,$f2,$14
	dc.b $00
	even

loc_0e9a8a:
	dc.b $01,$c6,$00,$f6,$06
	dc.b $01,$cc,$e0,$eb,$0d
	dc.b $02,$d8,$f0,$f8,$12
	dc.b $00
	even

loc_0e9a9a:
	dc.b $01,$ca,$da,$f3,$fd
	dc.b $01,$d4,$e8,$ec,$0a
	dc.b $01,$ce,$00,$f6,$06
	dc.b $00
	even

loc_0e9aaa:
	dc.b $01,$d4,$00,$f5,$03
	dc.b $01,$d8,$00,$f2,$0b
	dc.b $02,$dc,$f0,$ed,$10
	dc.b $00
	even

loc_0e9aba:
	dc.b $01,$c8,$ec,$fe,$0c
	dc.b $01,$c8,$00,$f5,$04
	dc.b $02,$ce,$e4,$f2,$12
	dc.b $c8,$d8,$ec,$17,$2f
	dc.b $40,$ec,$00,$04,$20
	dc.b $2c,$d4,$ec,$0c,$1c
	dc.b $00
	even

loc_0e9ada:
	dc.b $01,$c4,$00,$f5,$05
	dc.b $02,$be,$d2,$ea,$f6
	dc.b $02,$c8,$e8,$fc,$10
	dc.b $c0,$b6,$d0,$0c,$1e
	dc.b $40,$c4,$dc,$15,$2a
	dc.b $28,$c0,$e1,$04,$15
	dc.b $00
	even

loc_0e9afa:
	dc.b $01,$c8,$f0,$fe,$0c
	dc.b $01,$c8,$00,$f5,$04
	dc.b $02,$ce,$e8,$f2,$1c
	dc.b $00
	even

loc_0e9b0a:
	dc.b $01,$dc,$00,$ee,$0c
	dc.b $02,$e8,$00,$f8,$13
	dc.b $01,$d4,$00,$f9,$0c
	dc.b $00
	even

loc_0e9b1a:
	dc.b $01,$d8,$f0,$e9,$00
	dc.b $02,$ec,$00,$f8,$16
	dc.b $01,$e0,$00,$f2,$0e
	dc.b $00
	even

loc_0e9b2a:
	dc.b $01,$de,$f0,$e6,$fc
	dc.b $01,$e4,$00,$ee,$08
	dc.b $8c,$f0,$00,$0c,$26
	dc.b $2c,$e8,$00,$00,$14
	dc.b $00
	even

loc_0e9b40:
	dc.b $01,$d4,$00,$f4,$07
	dc.b $01,$d9,$00,$f3,$0c
	dc.b $01,$e8,$00,$f2,$10
	dc.b $00
	even

loc_0e9b50:
	dc.b $01,$c8,$f0,$fe,$0a
	dc.b $01,$ce,$00,$f5,$03
	dc.b $00
	even

loc_0e9b5c:
	dc.b $01,$c8,$d2,$f9,$03
	dc.b $01,$ce,$e2,$f2,$0b
	dc.b $01,$cf,$00,$f5,$07
	dc.b $00
	even

loc_0e9b6c:
	dc.b $01,$cf,$00,$fc,$08
	dc.b $01,$d3,$ec,$f3,$0c
	dc.b $00
	even

loc_0e9b78:
	dc.b $01,$ce,$e4,$ef,$02
	dc.b $01,$d4,$00,$f9,$07
	dc.b $02,$d4,$e8,$00,$10
	dc.b $c0,$c8,$d6,$18,$2c
	dc.b $6c,$ce,$e0,$0f,$24
	dc.b $2c,$d4,$e4,$06,$1c
	dc.b $00
	even

loc_0e9b98:
	dc.b $01,$c4,$e3,$f4,$07
	dc.b $01,$d0,$e8,$f2,$0c
	dc.b $02,$e0,$ed,$f3,$00
	dc.b $00
	even

loc_0e9ba8:
	dc.b $01,$bf,$c9,$fe,$08
	dc.b $01,$c4,$e0,$f4,$0c
	dc.b $02,$c4,$f0,$f8,$08
	dc.b $c0,$e8,$00,$f8,$08
	dc.b $20,$dc,$f0,$f2,$0e
	dc.b $00
	even

loc_0e9bc2:
	dc.b $01,$ca,$ee,$fb,$05
	dc.b $01,$d1,$f4,$f0,$00
	dc.b $00
	even

loc_0e9bce:
	dc.b $01,$d0,$ec,$f4,$08
	dc.b $02,$d3,$f4,$ef,$02
	dc.b $c0,$da,$ec,$10,$24
	dc.b $28,$d5,$e6,$08,$1a
	dc.b $00
	even

loc_0e9be4:
	dc.b $01,$ca,$f0,$f7,$05
	dc.b $01,$d1,$e4,$eb,$05
	dc.b $02,$de,$f4,$00,$0b
	dc.b $00
	even

loc_0e9bf4:
	dc.b $01,$cc,$ee,$f0,$00
	dc.b $01,$d4,$e4,$e7,$08
	dc.b $c0,$db,$eb,$12,$22
	dc.b $c0,$d6,$e0,$02,$15
	dc.b $2c,$e0,$ee,$00,$12
	dc.b $2c,$e4,$f2,$f0,$00
	dc.b $00
	even

loc_0e9c14:
	dc.b $01,$c5,$e1,$fb,$05
	dc.b $01,$ca,$d8,$f2,$0a
	dc.b $01,$cf,$f0,$f4,$ff
	dc.b $0c,$d8,$f8,$f8,$01
	dc.b $00
	even

loc_0e9c2a:
	dc.b $01,$c5,$e2,$fb,$06
	dc.b $02,$ca,$da,$f3,$12
	dc.b $01,$ca,$f0,$f4,$00
	dc.b $0c,$d8,$f8,$f4,$fe
	dc.b $00
	even

loc_0e9c40:
	dc.b $01,$c6,$e2,$fc,$08
	dc.b $01,$cd,$f3,$f5,$02
	dc.b $02,$d5,$e8,$fc,$0c
	dc.b $c0,$ec,$fc,$08,$21
	dc.b $40,$cc,$f0,$12,$26
	dc.b $28,$e2,$f3,$02,$17
	dc.b $00
	even

loc_0e9c60:
	dc.b $01,$c7,$f0,$f9,$05
	dc.b $01,$ce,$e6,$f4,$08
	dc.b $02,$e0,$f8,$fc,$0e
	dc.b $00
	even

loc_0e9c70:
	dc.b $01,$ca,$e4,$ff,$0b
	dc.b $01,$ce,$f2,$f6,$06
	dc.b $02,$ec,$f8,$f2,$00
	dc.b $c0,$ca,$da,$0c,$20
	dc.b $40,$d8,$f4,$06,$24
	dc.b $28,$d2,$ea,$06,$18
	dc.b $00
	even

loc_0e9c90:
	dc.b $01,$cc,$f0,$f9,$07
	dc.b $02,$e2,$f4,$f3,$0c
	dc.b $c0,$c8,$e2,$02,$1c
	dc.b $28,$d2,$e8,$07,$13
	dc.b $00
	even

loc_0e9ca6:
	dc.b $01,$c8,$f0,$f6,$0a
	dc.b $02,$cc,$f6,$f8,$0d
	dc.b $c0,$c2,$d8,$08,$22
	dc.b $28,$cc,$e4,$08,$1a
	dc.b $00
	even

loc_0e9cbc:
	dc.b $01,$c4,$e0,$02,$0e
	dc.b $01,$ca,$f1,$f6,$0b
	dc.b $02,$ca,$f8,$f5,$00
	dc.b $c0,$b4,$c8,$04,$1e
	dc.b $28,$b8,$d8,$0c,$1a
	dc.b $00
	even

loc_0e9cd6:
	dc.b $01,$cb,$da,$ef,$0e
	dc.b $01,$ce,$ee,$f2,$07
	dc.b $02,$d8,$f4,$f6,$00
	dc.b $00
	even

loc_0e9ce6:
	dc.b $01,$c7,$f6,$f9,$05
	dc.b $01,$d0,$e4,$f5,$0a
	dc.b $01,$d8,$f0,$f1,$04
	dc.b $00
	even

loc_0e9cf6:
	dc.b $01,$ce,$ec,$f2,$05
	dc.b $02,$d8,$f4,$f6,$00
	dc.b $00
	even

loc_0e9d02:
	dc.b $01,$d1,$ea,$f2,$08
	dc.b $02,$e4,$f0,$eb,$0c
	dc.b $00
	even

loc_0e9d0e:
	dc.b $01,$cc,$e2,$f0,$06
	dc.b $01,$e0,$f2,$f8,$0c
	dc.b $00
	even

loc_0e9d1a:
	dc.b $01,$cc,$f0,$f6,$08
	dc.b $02,$d2,$e4,$ed,$08
	dc.b $02,$e0,$f2,$fa,$0f
	dc.b $c0,$cc,$e0,$13,$2d
	dc.b $68,$d0,$e6,$08,$1e
	dc.b $00
	even

loc_0e9d34:
	dc.b $01,$ca,$f2,$fb,$07
	dc.b $01,$d6,$ee,$f2,$0c
	dc.b $01,$d0,$f6,$f0,$00
	dc.b $00
	even

loc_0e9d44:
	dc.b $01,$cd,$e0,$ec,$02
	dc.b $01,$d6,$ec,$f5,$0c
	dc.b $02,$e0,$f1,$fc,$14
	dc.b $00
	even

loc_0e9d54:
	dc.b $01,$ca,$da,$e8,$00
	dc.b $01,$cf,$eb,$f0,$08
	dc.b $02,$d1,$eb,$ed,$11
	dc.b $c8,$e0,$f0,$ec,$26
	dc.b $2c,$dd,$ed,$ee,$1a
	dc.b $00
	even

loc_0e9d6e:
	dc.b $01,$c4,$d8,$ee,$03
	dc.b $01,$cc,$00,$f4,$08
	dc.b $00
	even

loc_0e9d7a:
	dc.b $01,$c4,$dc,$ed,$00
	dc.b $01,$ca,$00,$f4,$07
	dc.b $00
	even

loc_0e9d86:
	dc.b $01,$c4,$ce,$f8,$02
	dc.b $02,$cc,$e0,$eb,$1a
	dc.b $01,$c8,$00,$f3,$08
	dc.b $00
	even

loc_0e9d96:
	dc.b $01,$c4,$ce,$f8,$02
	dc.b $02,$cc,$dc,$ef,$12
	dc.b $01,$c8,$00,$f4,$09
	dc.b $00
	even

loc_0e9da6:
	dc.b $02,$d4,$ed,$f7,$04
	dc.b $01,$dc,$f9,$fa,$0f
	dc.b $01,$ec,$00,$f0,$14
	dc.b $00
	even

loc_0e9db6:
	dc.b $01,$e8,$00,$f3,$12
	dc.b $00
	even

loc_0e9dbc:
	dc.b $01,$cc,$00,$00,$18
	dc.b $01,$e0,$f0,$fa,$1c
	dc.b $01,$f0,$00,$f4,$1a
	dc.b $c0,$d0,$dc,$18,$28
	dc.b $2c,$ce,$e4,$0c,$20
	dc.b $00
	even

loc_0e9dd6:
	dc.b $01,$cc,$f0,$04,$1b
	dc.b $01,$e0,$f0,$fc,$1d
	dc.b $01,$f0,$00,$f4,$1a
	dc.b $02,$d0,$e0,$10,$28
	dc.b $00
	even

loc_0e9dec:
	dc.b $01,$ca,$d4,$fe,$08
	dc.b $01,$d1,$e8,$f3,$0e
	dc.b $01,$d8,$00,$f7,$15
	dc.b $00
	even

loc_0e9dfc:
	dc.b $01,$c9,$f8,$f5,$07
	dc.b $01,$cc,$ec,$f5,$0d
	dc.b $00
	even

loc_0e9e08:
	dc.b $01,$c7,$d1,$fb,$05
	dc.b $01,$ce,$e0,$f1,$0b
	dc.b $01,$d8,$00,$f4,$0f
	dc.b $00
	even

loc_0e9e18:
	dc.b $01,$c8,$d0,$03,$0d
	dc.b $01,$ce,$00,$fa,$10
	dc.b $01,$e8,$00,$f5,$16
	dc.b $00
	even

loc_0e9e28:
	dc.b $01,$c8,$d0,$03,$0d
	dc.b $01,$ce,$00,$fa,$10
	dc.b $01,$e8,$00,$f5,$16
	dc.b $c0,$d8,$e8,$ee,$0a
	dc.b $00
	even

loc_0e9e3e:
	dc.b $01,$c8,$d0,$03,$0d
	dc.b $01,$ce,$00,$fa,$10
	dc.b $01,$e8,$00,$f5,$16
	dc.b $c0,$e0,$f8,$08,$25
	dc.b $00
	even

loc_0e9e54:
	dc.b $01,$c8,$d0,$03,$0d
	dc.b $01,$ce,$00,$fa,$10
	dc.b $01,$e8,$00,$f5,$16
	dc.b $c0,$e0,$f8,$1c,$38
	dc.b $00
	even

loc_0e9e6a:
	dc.b $01,$c8,$d0,$03,$0d
	dc.b $01,$ce,$00,$fa,$10
	dc.b $01,$e8,$00,$f5,$16
	dc.b $c0,$c3,$e0,$24,$44
	dc.b $00
	even

loc_0e9e80:
	dc.b $01,$c8,$d0,$03,$0d
	dc.b $01,$ce,$00,$fa,$10
	dc.b $01,$e8,$00,$f5,$16
	dc.b $c0,$b0,$d4,$10,$30
	dc.b $00
	even

loc_0e9e96:
	dc.b $01,$c8,$d0,$03,$0d
	dc.b $01,$ce,$00,$fa,$10
	dc.b $01,$e8,$00,$f5,$16
	dc.b $c0,$b8,$d0,$fe,$20
	dc.b $00
	even

loc_0e9eac:
	dc.b $01,$c8,$d0,$03,$0d
	dc.b $01,$ce,$00,$fa,$10
	dc.b $01,$e8,$00,$f5,$16
	dc.b $c0,$d8,$f8,$10,$23
	dc.b $00
	even

loc_0e9ec2:
	dc.b $01,$c8,$d0,$03,$0d
	dc.b $01,$ce,$00,$fa,$10
	dc.b $01,$e8,$00,$f5,$16
	dc.b $c0,$c8,$e4,$10,$34
	dc.b $00
	even

loc_0e9ed8:
	dc.b $01,$c8,$d0,$03,$0d
	dc.b $01,$ce,$00,$fa,$10
	dc.b $01,$e8,$00,$f5,$16
	dc.b $c0,$ac,$d0,$00,$20
	dc.b $00
	even

loc_0e9eee:
	dc.b $01,$c8,$d0,$03,$0d
	dc.b $01,$ce,$00,$fa,$10
	dc.b $01,$e8,$00,$f5,$16
	dc.b $c0,$bc,$d8,$ec,$14
	dc.b $00
	even

loc_0e9f04:
	dc.b $01,$c8,$d0,$03,$0d
	dc.b $01,$ce,$00,$fa,$10
	dc.b $01,$e8,$00,$f5,$16
	dc.b $c0,$d8,$ec,$10,$2c
	dc.b $00
	even

loc_0e9f1a:
	dc.b $01,$cc,$00,$00,$18
	dc.b $01,$e0,$f0,$fa,$1e
	dc.b $01,$f0,$00,$f4,$1c
	dc.b $cc,$d0,$dc,$10,$28
	dc.b $2c,$ce,$e4,$04,$20
	dc.b $00
	even

loc_0e9f34:
	dc.b $01,$c7,$d1,$f9,$03
	dc.b $01,$ce,$e0,$ef,$09
	dc.b $01,$d8,$00,$f2,$0d
	dc.b $00
	even

loc_0e9f44:
	dc.b $01,$c6,$d0,$fa,$04
	dc.b $01,$c9,$db,$ec,$0f
	dc.b $01,$d0,$00,$f2,$0d
	dc.b $00
	even

loc_0e9f54:
	dc.b $01,$c6,$d0,$fa,$04
	dc.b $02,$c1,$d3,$eb,$11
	dc.b $01,$d0,$00,$f2,$0d
	dc.b $00
	even

loc_0e9f64:
	dc.b $01,$c5,$cf,$fa,$04
	dc.b $01,$cc,$00,$f2,$0a
	dc.b $00
	even

;0e9f70
