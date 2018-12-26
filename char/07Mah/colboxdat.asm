;Collsion box Data
;==============================
; 5 bytes 
; byte 0 bit flags (if 0 loop ends)
; byte 1 y1
; byte 2 y2
; byte 3 x1
; byte 4 x2

;bit flags
;01 hurt 1
;02 hurt 2
;04 projectile invul
;08 unknown
;10 invul
;20 clash
;40 attack
;80 attack
;==============================

loc_0e83dc:
	dc.b $01,$cd,$d5,$fa,$02
	dc.b $01,$d3,$00,$f0,$08
	dc.b $01,$e8,$00,$eb,$0d
	dc.b $02,$f0,$00,$eb,$12
	dc.b $00
	even

loc_0e83f2:
	dc.b $01,$cc,$d6,$fb,$05
	dc.b $01,$d3,$00,$f2,$0e
	dc.b $01,$e8,$00,$ef,$11
	dc.b $02,$f0,$00,$ec,$14
	dc.b $00
	even

loc_0e8408:
	dc.b $01,$d3,$db,$fc,$04
	dc.b $01,$d9,$00,$f3,$0b
	dc.b $01,$e0,$00,$ee,$10
	dc.b $00
	even

loc_0e8418:
	dc.b $01,$dd,$e5,$fc,$04
	dc.b $01,$e3,$00,$ef,$0c
	dc.b $01,$ec,$00,$ef,$11
	dc.b $00
	even

loc_0e8428:
	dc.b $01,$dc,$e4,$fc,$04
	dc.b $01,$e2,$00,$f2,$0e
	dc.b $01,$ec,$00,$ef,$11
	dc.b $00
	even

loc_0e8438:
	dc.b $01,$c8,$d2,$fb,$05
	dc.b $01,$d0,$00,$f2,$0b
	dc.b $02,$e8,$00,$ed,$10
	dc.b $00
	even

loc_0e8448:
	dc.b $01,$c8,$d2,$fb,$05
	dc.b $01,$d0,$00,$f3,$0a
	dc.b $02,$e8,$00,$ed,$10
	dc.b $00
	even

loc_0e8458:
	dc.b $01,$e8,$00,$f0,$0f
	dc.b $01,$d8,$f0,$f2,$07
	dc.b $01,$d2,$dc,$f9,$05
	dc.b $00
	even

loc_0e8468:
	dc.b $01,$ca,$d4,$ee,$02
	dc.b $01,$d0,$f0,$f2,$0c
	dc.b $0c,$d0,$fc,$f4,$05
	dc.b $00
	even

loc_0e8478:
	dc.b $01,$cd,$f3,$f8,$04
	dc.b $01,$d2,$ed,$f2,$0a
	dc.b $02,$d6,$e8,$ec,$0d
	dc.b $00
	even

loc_0e8488:
	dc.b $01,$cf,$f0,$f8,$04
	dc.b $01,$d3,$ec,$f0,$0b
	dc.b $02,$d7,$e7,$ec,$0d
	dc.b $00
	even

loc_0e8498:
	dc.b $01,$c9,$d5,$ee,$02
	dc.b $01,$d0,$f0,$f2,$0d
	dc.b $02,$d0,$fc,$f3,$06
	dc.b $00
	even

loc_0e84a8:
	dc.b $01,$cc,$00,$ed,$0e
	dc.b $00
	even

loc_0e84ae:
	dc.b $01,$d7,$00,$ee,$12
	dc.b $00
	even

loc_0e84b4:
	dc.b $01,$cb,$d9,$e9,$fd
	dc.b $01,$d4,$e4,$e6,$08
	dc.b $01,$e0,$f0,$ea,$0e
	dc.b $01,$f0,$00,$ec,$12
	dc.b $00
	even

loc_0e84ca:
	dc.b $01,$cc,$d8,$f5,$01
	dc.b $01,$d3,$00,$ec,$09
	dc.b $01,$e4,$00,$eb,$0d
	dc.b $01,$f0,$00,$eb,$11
	dc.b $00
	even

loc_0e84e0:
	dc.b $01,$cb,$da,$ee,$03
	dc.b $01,$d3,$f0,$e6,$0a
	dc.b $01,$ec,$00,$ea,$12
	dc.b $00
	even

loc_0e84f0:
	dc.b $01,$cc,$d8,$f7,$03
	dc.b $01,$d3,$00,$ec,$0b
	dc.b $01,$e4,$00,$ec,$11
	dc.b $00
	even

loc_0e8500:
	dc.b $01,$d7,$e7,$f0,$05
	dc.b $01,$de,$f0,$e6,$0c
	dc.b $01,$e8,$00,$e8,$12
	dc.b $00
	even

loc_0e8510:
	dc.b $01,$da,$e6,$fa,$06
	dc.b $01,$e0,$f0,$ec,$0c
	dc.b $01,$e8,$00,$eb,$12
	dc.b $00
	even

loc_0e8520:
	dc.b $01,$ca,$f8,$ed,$0f
	dc.b $00
	even

loc_0e8526:
	dc.b $01,$ca,$f8,$f4,$0a
	dc.b $00
	even

loc_0e852c:
	dc.b $01,$d8,$f8,$ed,$0f
	dc.b $00
	even

loc_0e8532:
	dc.b $01,$e8,$00,$ec,$14
	dc.b $00
	even

loc_0e8538:
	dc.b $01,$cc,$d8,$fa,$06
	dc.b $01,$d2,$ec,$ee,$0e
	dc.b $01,$e8,$00,$ee,$12
	dc.b $00
	even

loc_0e8548:
	dc.b $01,$cb,$d5,$f8,$02
	dc.b $01,$d3,$00,$f0,$06
	dc.b $01,$ea,$00,$ed,$0e
	dc.b $00
	even

loc_0e8558:
	dc.b $02,$d0,$d8,$00,$0c
	dc.b $01,$d7,$00,$f5,$0e
	dc.b $01,$ec,$00,$ef,$12
	dc.b $02,$dc,$f0,$08,$16
	dc.b $c0,$d0,$e4,$10,$22
	dc.b $28,$d8,$e8,$08,$1a
	dc.b $00
	even

loc_0e8578:
	dc.b $01,$e8,$00,$ee,$12
	dc.b $01,$d5,$f0,$f3,$0a
	dc.b $01,$cd,$d7,$fb,$05
	dc.b $00
	even

loc_0e8588:
	dc.b $02,$ce,$d6,$01,$0d
	dc.b $01,$d5,$00,$f8,$14
	dc.b $01,$e8,$00,$f0,$13
	dc.b $c0,$d5,$e3,$1a,$28
	dc.b $2c,$d8,$e6,$10,$20
	dc.b $02,$da,$f0,$09,$18
	dc.b $00
	even

loc_0e85a8:
	dc.b $01,$d9,$e3,$fc,$06
	dc.b $01,$e0,$00,$f2,$12
	dc.b $00
	even

loc_0e85b4:
	dc.b $01,$da,$e4,$fd,$09
	dc.b $01,$e2,$00,$f2,$12
	dc.b $02,$df,$00,$f7,$16
	dc.b $c0,$e1,$ea,$16,$28
	dc.b $2c,$e0,$ee,$0e,$21
	dc.b $00
	even

loc_0e85ce:
	dc.b $01,$cb,$d5,$f7,$01
	dc.b $01,$d3,$f0,$ee,$05
	dc.b $01,$e4,$00,$f0,$0c
	dc.b $00
	even

loc_0e85de:
	dc.b $01,$c8,$d0,$f6,$fe
	dc.b $01,$cd,$ec,$ef,$06
	dc.b $01,$cd,$00,$ef,$fe
	dc.b $00
	even

loc_0e85ee:
	dc.b $01,$cb,$db,$e5,$f5
	dc.b $02,$d7,$ec,$ed,$08
	dc.b $01,$d2,$00,$ef,$00
	dc.b $c0,$d5,$e5,$08,$21
	dc.b $2c,$d9,$e9,$00,$18
	dc.b $00
	even

loc_0e8608:
	dc.b $01,$ca,$d2,$eb,$fb
	dc.b $01,$d2,$dc,$e6,$01
	dc.b $01,$dc,$00,$ed,$07
	dc.b $00
	even

loc_0e8618:
	dc.b $01,$c9,$00,$f2,$02
	dc.b $01,$d2,$ec,$f8,$0c
	dc.b $02,$cc,$d8,$ea,$08
	dc.b $c0,$c9,$d6,$11,$24
	dc.b $2c,$d0,$e4,$08,$1b
	dc.b $00
	even

loc_0e8632:
	dc.b $01,$db,$e5,$fa,$04
	dc.b $01,$df,$00,$f2,$0f
	dc.b $02,$ec,$00,$fa,$1a
	dc.b $00
	even

loc_0e8642:
	dc.b $01,$dc,$e8,$ee,$02
	dc.b $01,$e0,$00,$f1,$0a
	dc.b $22,$ec,$00,$06,$18
	dc.b $c8,$f0,$00,$13,$24
	dc.b $00
	even

loc_0e8658:
	dc.b $02,$d4,$e8,$e8,$00
	dc.b $01,$e4,$00,$ec,$0e
	dc.b $00
	even

loc_0e8664:
	dc.b $02,$d6,$f0,$f2,$08
	dc.b $01,$e6,$00,$ee,$0e
	dc.b $00
	even

loc_0e8670:
	dc.b $01,$d8,$f0,$f8,$0f
	dc.b $01,$e8,$00,$f0,$14
	dc.b $c0,$ce,$e4,$0e,$22
	dc.b $68,$c8,$d8,$fc,$16
	dc.b $22,$d4,$e8,$04,$17
	dc.b $00
	even

loc_0e868a:
	dc.b $02,$e0,$f0,$0a,$1e
	dc.b $01,$da,$f0,$f6,$16
	dc.b $01,$e8,$00,$f0,$0c
	dc.b $c0,$e8,$f8,$0c,$24
	dc.b $6c,$d8,$e8,$04,$22
	dc.b $00
	even

loc_0e86a4:
	dc.b $01,$d2,$e4,$00,$1c
	dc.b $01,$d8,$f0,$f7,$19
	dc.b $01,$e8,$00,$f0,$15
	dc.b $00
	even

loc_0e86b4:
	dc.b $01,$cc,$d8,$f8,$04
	dc.b $01,$d5,$e8,$ee,$0d
	dc.b $01,$e8,$00,$ee,$10
	dc.b $00
	even

loc_0e86c4:
	dc.b $01,$e8,$00,$ed,$0f
	dc.b $01,$d4,$eb,$f0,$0a
	dc.b $01,$cc,$d6,$f8,$02
	dc.b $00
	even

loc_0e86d4:
	dc.b $01,$cc,$d6,$f6,$00
	dc.b $01,$d3,$00,$ec,$09
	dc.b $01,$e6,$00,$ed,$0d
	dc.b $00
	even

loc_0e86e4:
	dc.b $01,$cc,$d6,$03,$0d
	dc.b $01,$d4,$eb,$f7,$0d
	dc.b $01,$e8,$00,$f0,$13
	dc.b $02,$d4,$e8,$fe,$18
	dc.b $00
	even

loc_0e86fa:
	dc.b $02,$cc,$e8,$0b,$18
	dc.b $01,$d2,$f0,$fb,$15
	dc.b $01,$e8,$00,$f1,$18
	dc.b $80,$cd,$dd,$23,$2f
	dc.b $68,$d0,$e2,$13,$27
	dc.b $00
	even

loc_0e8714:
	dc.b $01,$db,$e5,$f8,$02
	dc.b $01,$e2,$f0,$ee,$0e
	dc.b $01,$ec,$00,$f1,$12
	dc.b $00
	even

loc_0e8724:
	dc.b $01,$d9,$e3,$ff,$09
	dc.b $01,$e0,$f0,$f5,$0f
	dc.b $02,$e0,$f0,$f8,$17
	dc.b $01,$ec,$00,$f1,$13
	dc.b $00
	even

loc_0e873a:
	dc.b $01,$dc,$00,$f7,$11
	dc.b $01,$ec,$00,$f0,$18
	dc.b $02,$e0,$f0,$ff,$17
	dc.b $80,$dc,$ea,$1a,$2a
	dc.b $68,$de,$ec,$0e,$22
	dc.b $00
	even

loc_0e8754:
	dc.b $02,$cd,$d5,$ea,$f2
	dc.b $01,$d4,$00,$e8,$fb
	dc.b $01,$e8,$00,$e5,$06
	dc.b $00
	even

loc_0e8764:
	dc.b $02,$ce,$d6,$f0,$f8
	dc.b $01,$d2,$00,$e8,$f8
	dc.b $01,$ec,$00,$e8,$00
	dc.b $00
	even

loc_0e8774:
	dc.b $02,$cb,$d3,$e8,$f0
	dc.b $01,$d0,$f0,$e0,$f4
	dc.b $01,$ec,$00,$da,$f4
	dc.b $00
	even

loc_0e8784:
	dc.b $02,$c9,$d1,$ec,$f4
	dc.b $01,$d0,$e7,$e0,$f8
	dc.b $01,$e0,$00,$ec,$fb
	dc.b $00
	even

loc_0e8794:
	dc.b $02,$c8,$d0,$f1,$f9
	dc.b $02,$ce,$e8,$e6,$00
	dc.b $01,$cc,$00,$ea,$f9
	dc.b $c0,$ca,$dd,$06,$20
	dc.b $2c,$d0,$e4,$00,$15
	dc.b $00
	even

loc_0e87ae:
	dc.b $01,$c7,$d1,$ef,$f9
	dc.b $01,$cd,$ec,$e8,$03
	dc.b $01,$cd,$00,$e8,$f9
	dc.b $00
	even

loc_0e87be:
	dc.b $01,$c8,$d2,$f6,$00
	dc.b $01,$d0,$00,$ec,$09
	dc.b $00
	even

loc_0e87ca:
	dc.b $01,$cc,$00,$fc,$0c
	dc.b $01,$d0,$f0,$f6,$11
	dc.b $02,$da,$f0,$f3,$19
	dc.b $00
	even

loc_0e87da:
	dc.b $01,$c9,$00,$ff,$0f
	dc.b $01,$d0,$f0,$fa,$15
	dc.b $02,$d4,$ee,$03,$1f
	dc.b $8c,$de,$ea,$1c,$32
	dc.b $6c,$da,$ec,$10,$29
	dc.b $00
	even

loc_0e87f4:
	dc.b $01,$ca,$ec,$04,$16
	dc.b $01,$d0,$00,$00,$11
	dc.b $02,$d4,$e4,$08,$24
	dc.b $00
	even

loc_0e8804:
	dc.b $01,$cc,$00,$fe,$0e
	dc.b $01,$d2,$ec,$f7,$16
	dc.b $00
	even

loc_0e8810:
	dc.b $01,$cc,$00,$ff,$11
	dc.b $01,$d4,$f0,$f6,$14
	dc.b $00
	even

loc_0e881c:
	dc.b $01,$e8,$00,$f0,$13
	dc.b $01,$d5,$00,$f3,$0c
	dc.b $01,$cc,$d6,$fa,$04
	dc.b $00
	even

loc_0e882c:
	dc.b $01,$d8,$e2,$fe,$08
	dc.b $01,$e0,$00,$f2,$12
	dc.b $00
	even

loc_0e8838:
	dc.b $01,$d7,$f0,$f6,$0c
	dc.b $01,$e2,$00,$f9,$1c
	dc.b $00
	even

loc_0e8844:
	dc.b $01,$d9,$f0,$ff,$13
	dc.b $01,$e0,$00,$f9,$1e
	dc.b $80,$d9,$e4,$1a,$30
	dc.b $2c,$de,$ec,$16,$32
	dc.b $42,$e0,$f0,$10,$28
	dc.b $00
	even

loc_0e885e:
	dc.b $01,$cc,$d4,$ef,$06
	dc.b $01,$d4,$f2,$f4,$0b
	dc.b $02,$d4,$f8,$ef,$06
	dc.b $00
	even

loc_0e886e:
	dc.b $01,$ce,$f2,$f4,$0a
	dc.b $01,$dc,$ed,$ec,$0a
	dc.b $02,$d0,$e0,$00,$12
	dc.b $00
	even

loc_0e887e:
	dc.b $01,$cf,$ec,$f4,$0c
	dc.b $01,$df,$ef,$e9,$02
	dc.b $02,$c8,$f2,$f6,$03
	dc.b $c0,$e2,$ee,$12,$22
	dc.b $2c,$dc,$ea,$0a,$1a
	dc.b $22,$d6,$e6,$03,$12
	dc.b $00
	even

loc_0e889e:
	dc.b $01,$cf,$df,$eb,$04
	dc.b $01,$da,$ee,$f2,$10
	dc.b $00
	even

loc_0e88aa:
	dc.b $01,$ce,$d9,$e6,$f6
	dc.b $01,$d8,$ec,$ee,$0a
	dc.b $01,$d4,$f4,$f4,$00
	dc.b $c0,$d9,$e7,$0a,$23
	dc.b $2c,$d6,$ea,$00,$19
	dc.b $00
	even

loc_0e88c4:
	dc.b $01,$cc,$d4,$f7,$ff
	dc.b $01,$d0,$e0,$ee,$0a
	dc.b $01,$dc,$ee,$f6,$12
	dc.b $00
	even

loc_0e88d4:
	dc.b $01,$ca,$d8,$ea,$ff
	dc.b $01,$d2,$fa,$f7,$05
	dc.b $01,$d8,$f2,$f1,$0b
	dc.b $00
	even

loc_0e88e4:
	dc.b $01,$cb,$f0,$f5,$05
	dc.b $01,$d8,$ec,$f1,$0e
	dc.b $02,$d0,$f4,$f3,$01
	dc.b $00
	even

loc_0e88f4:
	dc.b $01,$ce,$eb,$f2,$09
	dc.b $02,$dc,$ef,$ff,$12
	dc.b $c0,$e8,$f5,$04,$20
	dc.b $2c,$e4,$f2,$fc,$19
	dc.b $2c,$e0,$ee,$f0,$08
	dc.b $00
	even

loc_0e890e:
	dc.b $01,$d0,$e4,$ec,$07
	dc.b $c0,$e4,$f2,$f5,$0b
	dc.b $22,$d9,$ec,$f2,$11
	dc.b $00
	even

loc_0e891e:
	dc.b $01,$d3,$ec,$fb,$0d
	dc.b $01,$e3,$f3,$ef,$0a
	dc.b $02,$cd,$f7,$f5,$07
	dc.b $00
	even

loc_0e892e:
	dc.b $01,$d0,$f5,$f5,$04
	dc.b $02,$dc,$f0,$f1,$0e
	dc.b $c0,$ce,$e7,$04,$18
	dc.b $20,$d8,$f0,$ff,$16
	dc.b $00
	even

loc_0e8944:
	dc.b $01,$c9,$f0,$f2,$07
	dc.b $02,$c3,$f8,$f3,$fc
	dc.b $02,$d8,$ec,$f8,$0e
	dc.b $00
	even

loc_0e8954:
	dc.b $01,$c9,$f0,$fd,$0b
	dc.b $02,$c2,$eb,$03,$11
	dc.b $01,$d0,$f6,$f4,$00
	dc.b $00
	even

loc_0e8964:
	dc.b $01,$ce,$f2,$f5,$0d
	dc.b $02,$d5,$f4,$f7,$11
	dc.b $c0,$cf,$e3,$17,$27
	dc.b $2c,$c8,$dc,$0d,$1e
	dc.b $40,$c0,$cf,$0a,$23
	dc.b $00
	even

loc_0e897e:
	dc.b $01,$d0,$e8,$f9,$10
	dc.b $02,$cb,$f8,$fc,$0a
	dc.b $01,$dc,$f3,$f3,$0a
	dc.b $c8,$e0,$f3,$13,$25
	dc.b $2c,$da,$ec,$0a,$1d
	dc.b $00
	even

loc_0e8998:
	dc.b $01,$cc,$f0,$f6,$0b
	dc.b $02,$d8,$e8,$f4,$12
	dc.b $02,$cc,$fa,$fb,$05
	dc.b $00
	even

loc_0e89a8:
	dc.b $01,$cc,$ec,$fa,$11
	dc.b $01,$e4,$f2,$ed,$0a
	dc.b $02,$ca,$f9,$f8,$08
	dc.b $00
	even

loc_0e89b8:
	dc.b $01,$d3,$eb,$eb,$15
	dc.b $02,$d0,$f2,$f4,$0c
	dc.b $cc,$eb,$f3,$fe,$11
	dc.b $2c,$de,$ef,$ee,$13
	dc.b $00
	even

loc_0e89ce:
	dc.b $01,$d5,$e7,$e7,$0e
	dc.b $01,$d0,$ec,$f0,$07
	dc.b $c8,$d8,$e7,$18,$28
	dc.b $2c,$d9,$eb,$0e,$1d
	dc.b $22,$da,$ef,$04,$15
	dc.b $00
	even

loc_0e89e8:
	dc.b $01,$ce,$de,$eb,$05
	dc.b $01,$d6,$f1,$f2,$10
	dc.b $02,$e0,$f5,$03,$17
	dc.b $00
	even

loc_0e89f8:
	dc.b $01,$cf,$e7,$ea,$01
	dc.b $01,$d7,$ec,$f2,$08
	dc.b $22,$de,$f1,$fe,$12
	dc.b $c8,$ea,$f8,$12,$24
	dc.b $2c,$e4,$f5,$08,$1c
	dc.b $00
	even

loc_0e8a12:
	dc.b $01,$ce,$f4,$f5,$05
	dc.b $02,$d8,$f0,$f1,$0b
	dc.b $c0,$d0,$ea,$ff,$13
	dc.b $20,$d6,$f2,$ff,$13
	dc.b $00
	even

loc_0e8a28:
	dc.b $01,$c8,$d2,$fb,$05
	dc.b $01,$d0,$00,$f2,$0c
	dc.b $00
	even

loc_0e8a34:
	dc.b $01,$cc,$e8,$ef,$01
	dc.b $01,$d4,$f0,$f4,$08
	dc.b $01,$e8,$00,$ef,$11
	dc.b $00
	even

loc_0e8a44:
	dc.b $01,$ce,$d6,$f9,$09
	dc.b $01,$d5,$f0,$f4,$0c
	dc.b $02,$e4,$f0,$f7,$13
	dc.b $01,$e8,$00,$ef,$0c
	dc.b $00
	even

loc_0e8a5a:
	dc.b $01,$cf,$d7,$fe,$08
	dc.b $01,$d5,$f0,$f6,$0c
	dc.b $02,$e0,$f0,$f2,$1a
	dc.b $01,$e8,$00,$ee,$10
	dc.b $00
	even

loc_0e8a70:
	dc.b $01,$cc,$ec,$f4,$02
	dc.b $01,$d2,$00,$f6,$10
	dc.b $02,$dc,$f0,$f4,$21
	dc.b $01,$ec,$00,$ec,$17
	dc.b $00
	even

loc_0e8a86:
	dc.b $01,$cc,$da,$f3,$01
	dc.b $01,$d2,$00,$f4,$12
	dc.b $01,$e8,$00,$ec,$18
	dc.b $8c,$dc,$e8,$16,$2c
	dc.b $62,$d8,$ec,$06,$1e
	dc.b $00
	even

loc_0e8aa0:
	dc.b $01,$cc,$da,$f3,$01
	dc.b $01,$d2,$00,$f4,$12
	dc.b $01,$e8,$00,$ec,$18
	dc.b $cc,$d6,$e6,$1e,$2e
	dc.b $22,$d8,$ea,$12,$24
	dc.b $00
	even

loc_0e8aba:
	dc.b $01,$c8,$d4,$f1,$05
	dc.b $01,$d0,$00,$f9,$12
	dc.b $02,$d4,$e8,$f1,$1c
	dc.b $01,$e8,$00,$ef,$1c
	dc.b $0c,$c0,$d4,$f0,$18
	dc.b $6c,$d4,$e4,$1e,$2e
	dc.b $00
	even

loc_0e8ada:
	dc.b $01,$c8,$d4,$f1,$05
	dc.b $01,$d0,$00,$f8,$11
	dc.b $02,$d4,$e8,$f1,$18
	dc.b $01,$e8,$00,$ef,$1c
	dc.b $00
	even

loc_0e8af0:
	dc.b $01,$c8,$d2,$f7,$05
	dc.b $01,$d0,$00,$f3,$0a
	dc.b $02,$c4,$e8,$00,$0c
	dc.b $01,$e8,$00,$ed,$11
	dc.b $00
	even

loc_0e8b06:
	dc.b $01,$cb,$d3,$fb,$0b
	dc.b $01,$d1,$00,$f3,$08
	dc.b $02,$c8,$e8,$00,$0c
	dc.b $01,$e8,$00,$ee,$10
	dc.b $00
	even

loc_0e8b1c:
	dc.b $02,$cc,$e8,$ef,$01
	dc.b $01,$d4,$f0,$f2,$06
	dc.b $01,$e8,$00,$ef,$11
	dc.b $00
	even

loc_0e8b2c:
	dc.b $02,$cc,$e8,$f0,$00
	dc.b $01,$d4,$f0,$f1,$04
	dc.b $01,$e4,$00,$ef,$0e
	dc.b $00
	even

loc_0e8b3c:
	dc.b $02,$e4,$00,$fa,$15
	dc.b $01,$da,$00,$f0,$0e
	dc.b $0c,$cc,$e8,$f0,$04
	dc.b $00
	even

loc_0e8b4c:
	dc.b $01,$e4,$00,$f0,$16
	dc.b $01,$d8,$00,$f8,$10
	dc.b $08,$cc,$e8,$fe,$18
	dc.b $88,$b8,$c8,$10,$24
	dc.b $44,$b6,$c6,$f8,$10
	dc.b $00
	even

loc_0e8b66:
	dc.b $01,$c8,$e8,$fa,$0a
	dc.b $01,$e4,$00,$f0,$16
	dc.b $01,$d0,$e4,$f6,$16
	dc.b $cc,$bc,$cc,$1a,$30
	dc.b $2c,$cc,$d8,$16,$2c
	dc.b $00
	even

loc_0e8b80:
	dc.b $02,$d8,$f0,$04,$1c
	dc.b $01,$d0,$00,$f1,$0a
	dc.b $01,$e8,$00,$ec,$13
	dc.b $6c,$c8,$dc,$18,$28
	dc.b $22,$d8,$e4,$12,$22
	dc.b $00
	even

loc_0e8b9a:
	dc.b $01,$ce,$d6,$f8,$04
	dc.b $01,$d4,$00,$f2,$0a
	dc.b $02,$dc,$00,$04,$1a
	dc.b $01,$e4,$00,$ed,$14
	dc.b $00
	even

loc_0e8bb0:
	dc.b $01,$ce,$d6,$f3,$03
	dc.b $01,$d4,$00,$ed,$07
	dc.b $02,$dc,$ec,$e4,$0c
	dc.b $01,$e4,$00,$ed,$10
	dc.b $00
	even

loc_0e8bc6:
	dc.b $01,$cb,$d7,$f2,$05
	dc.b $01,$d3,$f0,$f4,$0a
	dc.b $02,$c8,$e8,$ed,$f9
	dc.b $01,$e4,$00,$ed,$10
	dc.b $00
	even

loc_0e8bdc:
	dc.b $01,$cc,$e8,$ee,$01
	dc.b $01,$d4,$f0,$f4,$08
	dc.b $01,$e6,$00,$ed,$10
	dc.b $00
	even

loc_0e8bec:
	dc.b $01,$e8,$00,$f0,$16
	dc.b $01,$d0,$00,$f9,$12
	dc.b $02,$cc,$e8,$fe,$18
	dc.b $88,$ba,$cc,$14,$28
	dc.b $44,$b8,$c8,$08,$1c
	dc.b $00
	even

loc_0e8c06:
	dc.b $01,$c8,$e8,$fa,$0a
	dc.b $01,$e4,$00,$f0,$16
	dc.b $01,$d0,$e4,$f6,$16
	dc.b $cc,$bc,$d0,$1c,$30
	dc.b $2c,$c8,$dc,$16,$2a
	dc.b $00
	even

loc_0e8c20:
	dc.b $02,$d8,$f0,$04,$1a
	dc.b $01,$d0,$00,$f1,$0a
	dc.b $01,$e8,$00,$ec,$13
	dc.b $6c,$c4,$d8,$1e,$2a
	dc.b $2c,$d0,$de,$17,$27
	dc.b $22,$d8,$e4,$10,$22
	dc.b $00
	even

loc_0e8c40:
	dc.b $01,$e6,$00,$fa,$15
	dc.b $01,$d8,$00,$f0,$0c
	dc.b $02,$cc,$e0,$f0,$04
	dc.b $00
	even

loc_0e8c50:
	dc.b $01,$cf,$f9,$f3,$05
	dc.b $01,$e0,$f9,$f2,$0a
	dc.b $01,$e7,$f9,$f0,$10
	dc.b $00
	even

loc_0e8c60:
	dc.b $01,$d5,$ef,$f0,$02
	dc.b $01,$e2,$f3,$f0,$13
	dc.b $01,$da,$fa,$f6,$0a
	dc.b $00
	even

loc_0e8c70:
	dc.b $01,$d4,$f4,$f0,$12
	dc.b $02,$cc,$fc,$f4,$09
	dc.b $00
	even

loc_0e8c7c:
	dc.b $01,$d4,$fa,$ea,$16
	dc.b $02,$cc,$fe,$f2,$0e
	dc.b $00
	even

loc_0e8c88:
	dc.b $01,$d8,$f6,$e8,$18
	dc.b $02,$d0,$fc,$f0,$10
	dc.b $c0,$e0,$f0,$f0,$10
	dc.b $00
	even

loc_0e8c98:
	dc.b $01,$ec,$00,$e6,$1a
	dc.b $21,$e4,$00,$ec,$14
	dc.b $40,$d8,$00,$e4,$1c
	dc.b $00
	even

loc_0e8ca8:
	dc.b $01,$d8,$f8,$ea,$16
	dc.b $01,$d0,$00,$f2,$0e
	dc.b $00
	even

loc_0e8cb4:
	dc.b $01,$f0,$00,$e8,$18
	dc.b $01,$e8,$00,$f0,$10
	dc.b $00
	even

loc_0e8cc0:
	dc.b $01,$da,$00,$f2,$0e
	dc.b $00
	even

loc_0e8cc6:
	dc.b $01,$ca,$d6,$fa,$06
	dc.b $01,$d0,$f0,$f0,$06
	dc.b $01,$dc,$00,$f0,$0e
	dc.b $00
	even

loc_0e8cd6:
	dc.b $01,$cb,$d3,$00,$08
	dc.b $01,$d2,$00,$f4,$0e
	dc.b $01,$d8,$00,$ef,$11
	dc.b $00
	even

loc_0e8ce6:
	dc.b $01,$cd,$d7,$fc,$06
	dc.b $01,$d5,$ff,$f3,$0e
	dc.b $01,$e8,$00,$ed,$15
	dc.b $00
	even

loc_0e8cf6:
	dc.b $01,$cf,$db,$f5,$01
	dc.b $01,$d6,$ff,$f0,$0e
	dc.b $01,$e8,$00,$ed,$15
	dc.b $00
	even

loc_0e8d06:
	dc.b $01,$cd,$00,$f5,$10
	dc.b $01,$e8,$00,$ed,$15
	dc.b $00
	even

loc_0e8d12:
	dc.b $01,$d3,$e1,$06,$19
	dc.b $01,$dc,$f0,$ee,$14
	dc.b $01,$d6,$00,$00,$10
	dc.b $00
	even

loc_0e8d22:
	dc.b $01,$d4,$e8,$ec,$18
	dc.b $01,$d6,$f0,$f8,$10
	dc.b $01,$d8,$00,$fc,$0c
	dc.b $00
	even

loc_0e8d32:
	dc.b $01,$ca,$d4,$fa,$04
	dc.b $01,$d1,$ff,$f1,$07
	dc.b $01,$e6,$00,$ed,$11
	dc.b $00
	even

loc_0e8d42:
	dc.b $02,$d4,$e6,$ea,$16
	dc.b $01,$d6,$f0,$f0,$10
	dc.b $01,$d8,$00,$f8,$08
	dc.b $00
	even

loc_0e8d52:
	dc.b $01,$c0,$c9,$ec,$00
	dc.b $01,$c8,$fc,$f2,$02
	dc.b $01,$d0,$e8,$f8,$07
	dc.b $00
	even

loc_0e8d62:
	dc.b $01,$e6,$00,$ec,$1a
	dc.b $0c,$d8,$f0,$f8,$1a
	dc.b $00
	even

loc_0e8d6e:
	dc.b $01,$e6,$00,$ea,$16
	dc.b $0c,$da,$00,$ee,$12
	dc.b $00
	even

loc_0e8d7a:
	dc.b $01,$e6,$00,$ee,$12
	dc.b $0c,$da,$00,$ee,$12
	dc.b $00
	even

loc_0e8d86:
	dc.b $01,$cb,$d7,$f4,$00
	dc.b $01,$d3,$f0,$f0,$0a
	dc.b $01,$e4,$00,$ed,$10
	dc.b $00
	even

loc_0e8d96:
	dc.b $01,$cb,$d5,$f9,$03
	dc.b $01,$d1,$e8,$f1,$0f
	dc.b $01,$e4,$00,$ed,$10
	dc.b $00
	even

loc_0e8da6:
	dc.b $01,$cb,$d5,$fb,$11
	dc.b $01,$d1,$e8,$f3,$0a
	dc.b $01,$e6,$00,$ed,$10
	dc.b $00
	even

loc_0e8db6:
	dc.b $01,$cb,$d7,$f4,$00
	dc.b $01,$d3,$f0,$ed,$09
	dc.b $01,$e8,$00,$ec,$10
	dc.b $00
	even

loc_0e8dc6:
	dc.b $01,$cd,$d5,$fa,$02
	dc.b $01,$d3,$00,$f1,$0a
	dc.b $01,$e8,$00,$ed,$0f
	dc.b $02,$f0,$00,$eb,$12
	dc.b $00
	even

loc_0e8ddc:
	dc.b $01,$cd,$d5,$fa,$02
	dc.b $01,$d3,$00,$f0,$08
	dc.b $01,$e8,$00,$eb,$0d
	dc.b $02,$f0,$00,$eb,$12
	dc.b $00
	even

loc_0e8df2:
	dc.b $01,$cd,$d5,$fc,$04
	dc.b $01,$d3,$00,$f4,$0c
	dc.b $01,$e8,$00,$ef,$11
	dc.b $02,$f0,$00,$ec,$14
	dc.b $00
	even

loc_0e8e08:
	dc.b $01,$d3,$db,$fd,$05
	dc.b $01,$db,$00,$f3,$0b
	dc.b $01,$e0,$00,$ee,$10
	dc.b $00
	even

loc_0e8e18:
	dc.b $01,$dd,$e5,$fc,$04
	dc.b $01,$e3,$00,$ef,$0c
	dc.b $01,$ec,$00,$ef,$11
	dc.b $00
	even

loc_0e8e28:
	dc.b $01,$dc,$e4,$fc,$04
	dc.b $01,$e2,$00,$f3,$0d
	dc.b $01,$ec,$00,$ef,$11
	dc.b $00
	even

loc_0e8e38:
	dc.b $01,$c8,$d0,$fc,$04
	dc.b $01,$d0,$00,$f2,$0b
	dc.b $02,$e8,$00,$ed,$10
	dc.b $00
	even

loc_0e8e48:
	dc.b $01,$c8,$d0,$fc,$04
	dc.b $01,$d0,$00,$f4,$0a
	dc.b $02,$e8,$00,$ed,$10
	dc.b $00
	even

loc_0e8e58:
	dc.b $01,$ca,$d4,$ee,$02
	dc.b $01,$d0,$f0,$f2,$0d
	dc.b $0c,$d0,$fc,$f4,$05
	dc.b $00
	even

loc_0e8e68:
	dc.b $01,$cc,$f4,$f9,$03
	dc.b $01,$d2,$ec,$f4,$0a
	dc.b $02,$d4,$e8,$ed,$0c
	dc.b $00
	even

loc_0e8e78:
	dc.b $01,$ca,$d4,$ee,$02
	dc.b $01,$d0,$f0,$f2,$0c
	dc.b $02,$d0,$fc,$f2,$05
	dc.b $00
	even

loc_0e8e88:
	dc.b $01,$ca,$00,$eb,$10
	dc.b $00
	even

loc_0e8e8e:
	dc.b $01,$d8,$00,$ed,$12
	dc.b $00
	even

loc_0e8e94:
	dc.b $01,$ca,$da,$e9,$01
	dc.b $01,$d4,$ec,$e7,$0e
	dc.b $01,$e8,$00,$ec,$12
	dc.b $00
	even

loc_0e8ea4:
	dc.b $01,$ca,$da,$ed,$05
	dc.b $01,$d4,$f0,$e7,$0e
	dc.b $01,$ec,$00,$ec,$12
	dc.b $00
	even

loc_0e8eb4:
	dc.b $01,$d6,$e7,$ee,$06
	dc.b $01,$de,$f0,$e7,$0c
	dc.b $01,$e6,$00,$e7,$12
	dc.b $00
	even

loc_0e8ec4:
	dc.b $01,$c8,$f8,$ec,$14
	dc.b $00
	even

loc_0e8eca:
	dc.b $01,$f0,$00,$e8,$18
	dc.b $00
	even

loc_0e8ed0:
	dc.b $01,$cc,$d8,$fa,$06
	dc.b $01,$d3,$ec,$ea,$0e
	dc.b $01,$e8,$00,$ed,$10
	dc.b $00
	even

loc_0e8ee0:
	dc.b $01,$cc,$d4,$fb,$03
	dc.b $01,$d3,$00,$f2,$06
	dc.b $01,$ea,$00,$ee,$0e
	dc.b $00
	even

loc_0e8ef0:
	dc.b $02,$cf,$d7,$02,$0e
	dc.b $01,$d6,$00,$fb,$11
	dc.b $01,$ea,$00,$f2,$11
	dc.b $c0,$d0,$e4,$17,$25
	dc.b $22,$d8,$f0,$07,$17
	dc.b $00
	even

loc_0e8f0a:
	dc.b $01,$ea,$00,$ef,$12
	dc.b $01,$d5,$eb,$f7,$0b
	dc.b $01,$ce,$d8,$fc,$06
	dc.b $00
	even

loc_0e8f1a:
	dc.b $01,$e8,$00,$ed,$11
	dc.b $01,$d4,$eb,$f2,$08
	dc.b $01,$cd,$d5,$f9,$01
	dc.b $00
	even

loc_0e8f2a:
	dc.b $02,$ce,$d6,$03,$0f
	dc.b $01,$d6,$00,$fc,$13
	dc.b $01,$ea,$00,$f2,$13
	dc.b $c0,$d3,$e3,$1b,$29
	dc.b $2c,$d6,$e6,$11,$21
	dc.b $02,$d8,$f0,$09,$19
	dc.b $00
	even

loc_0e8f4a:
	dc.b $01,$d8,$e0,$ff,$07
	dc.b $01,$e0,$00,$f2,$11
	dc.b $00
	even

loc_0e8f56:
	dc.b $01,$da,$e2,$ff,$0c
	dc.b $01,$e2,$00,$f2,$11
	dc.b $02,$e0,$00,$ff,$16
	dc.b $c0,$e1,$eb,$15,$29
	dc.b $2c,$e0,$ee,$0e,$21
	dc.b $00
	even

loc_0e8f70:
	dc.b $01,$cc,$d4,$f8,$00
	dc.b $01,$d3,$f0,$ee,$05
	dc.b $01,$e5,$00,$f1,$0c
	dc.b $00
	even

loc_0e8f80:
	dc.b $01,$c7,$cf,$f7,$ff
	dc.b $01,$cd,$ec,$ef,$06
	dc.b $01,$cd,$00,$ef,$fb
	dc.b $00
	even

loc_0e8f90:
	dc.b $01,$cc,$d8,$e4,$f4
	dc.b $02,$d6,$e8,$ec,$08
	dc.b $01,$d2,$00,$f0,$00
	dc.b $c0,$d7,$e7,$0c,$20
	dc.b $2c,$d9,$ea,$fc,$15
	dc.b $00
	even

loc_0e8faa:
	dc.b $01,$ca,$d2,$eb,$fb
	dc.b $01,$d2,$dc,$e6,$01
	dc.b $01,$dc,$00,$ed,$07
	dc.b $00
	even

loc_0e8fba:
	dc.b $01,$c9,$00,$f2,$02
	dc.b $01,$d2,$ec,$f8,$0b
	dc.b $02,$cb,$d3,$e8,$ff
	dc.b $c0,$c8,$d6,$11,$25
	dc.b $2c,$d0,$e4,$0b,$1b
	dc.b $00
	even

loc_0e8fd4:
	dc.b $01,$dc,$e4,$fb,$03
	dc.b $01,$e0,$00,$f2,$0c
	dc.b $02,$f0,$00,$fa,$18
	dc.b $00
	even

loc_0e8fe4:
	dc.b $01,$dd,$e5,$f0,$02
	dc.b $01,$e0,$00,$f2,$08
	dc.b $22,$ec,$00,$06,$18
	dc.b $c8,$f0,$00,$13,$25
	dc.b $00
	even

loc_0e8ffa:
	dc.b $01,$cd,$d5,$f7,$ff
	dc.b $01,$d3,$00,$ee,$07
	dc.b $01,$e8,$00,$ed,$0c
	dc.b $00
	even

loc_0e900a:
	dc.b $01,$cc,$d6,$03,$0d
	dc.b $01,$d4,$eb,$fa,$0d
	dc.b $01,$e8,$00,$f1,$13
	dc.b $02,$d6,$e8,$fe,$15
	dc.b $00
	even

loc_0e9020:
	dc.b $02,$e0,$f0,$0a,$1e
	dc.b $01,$dc,$f0,$f8,$18
	dc.b $01,$e8,$00,$f0,$0c
	dc.b $c0,$e8,$f8,$0c,$24
	dc.b $6c,$d8,$e8,$04,$22
	dc.b $00
	even

loc_0e903a:
	dc.b $02,$cc,$e8,$0b,$18
	dc.b $01,$d3,$f0,$fd,$15
	dc.b $01,$e8,$00,$f1,$18
	dc.b $80,$cd,$dd,$23,$2f
	dc.b $68,$d0,$e2,$13,$27
	dc.b $00
	even

loc_0e9054:
	dc.b $01,$dc,$ec,$ed,$07
	dc.b $01,$ec,$00,$f2,$11
	dc.b $00
	even

loc_0e9060:
	dc.b $01,$dc,$00,$f9,$11
	dc.b $01,$f0,$00,$f2,$11
	dc.b $02,$e0,$00,$ff,$17
	dc.b $80,$dc,$ea,$1c,$2c
	dc.b $68,$de,$ec,$0e,$22
	dc.b $00
	even

loc_0e907a:
	dc.b $02,$cd,$d5,$ea,$f2
	dc.b $01,$d4,$00,$e8,$fb
	dc.b $01,$e8,$00,$e5,$06
	dc.b $00
	even

loc_0e908a:
	dc.b $02,$ce,$d6,$f0,$f8
	dc.b $01,$d2,$00,$e8,$f8
	dc.b $01,$ec,$00,$e8,$00
	dc.b $00
	even

loc_0e909a:
	dc.b $02,$cb,$d3,$e4,$ec
	dc.b $01,$d0,$f0,$dc,$ec
	dc.b $01,$ec,$00,$d6,$f0
	dc.b $00
	even

loc_0e90aa:
	dc.b $02,$c9,$d1,$e8,$f0
	dc.b $01,$d0,$e7,$dc,$f0
	dc.b $01,$e0,$00,$e8,$f7
	dc.b $00
	even

loc_0e90ba:
	dc.b $02,$c8,$d0,$f1,$f9
	dc.b $02,$ce,$e8,$e6,$00
	dc.b $01,$cc,$00,$ea,$f9
	dc.b $c0,$ca,$de,$06,$20
	dc.b $2c,$d0,$e4,$00,$14
	dc.b $00
	even

loc_0e90d4:
	dc.b $01,$c7,$cf,$ef,$f7
	dc.b $01,$cd,$ec,$e7,$fe
	dc.b $01,$cd,$00,$e7,$f3
	dc.b $00
	even

loc_0e90e4:
	dc.b $01,$c8,$d0,$fc,$04
	dc.b $01,$d0,$00,$f2,$0b
	dc.b $01,$e8,$00,$ed,$10
	dc.b $00
	even

loc_0e90f4:
	dc.b $01,$cc,$00,$fe,$0d
	dc.b $01,$d0,$f0,$f8,$10
	dc.b $02,$d9,$f0,$f4,$19
	dc.b $00
	even

loc_0e9104:
	dc.b $01,$ca,$e0,$fc,$10
	dc.b $01,$d0,$00,$00,$14
	dc.b $02,$d4,$f0,$03,$20
	dc.b $8c,$de,$ea,$1c,$30
	dc.b $6c,$da,$ec,$0c,$28
	dc.b $00
	even

loc_0e911e:
	dc.b $01,$cc,$e8,$04,$16
	dc.b $01,$d0,$00,$fc,$12
	dc.b $02,$d4,$e4,$08,$24
	dc.b $00
	even

loc_0e912e:
	dc.b $01,$cc,$00,$00,$0c
	dc.b $01,$d2,$ea,$f8,$16
	dc.b $00
	even

loc_0e913a:
	dc.b $01,$cc,$d8,$ff,$09
	dc.b $01,$d0,$00,$02,$11
	dc.b $01,$d8,$f0,$f8,$14
	dc.b $00
	even

loc_0e914a:
	dc.b $01,$e8,$00,$f2,$13
	dc.b $01,$d5,$00,$f5,$0b
	dc.b $01,$cd,$d5,$fb,$03
	dc.b $00
	even

loc_0e915a:
	dc.b $01,$d7,$f0,$f8,$0a
	dc.b $01,$e4,$00,$fd,$18
	dc.b $00
	even

loc_0e9166:
	dc.b $01,$da,$f0,$00,$14
	dc.b $01,$e0,$00,$f9,$18
	dc.b $80,$da,$e6,$1a,$32
	dc.b $2c,$e0,$f0,$14,$32
	dc.b $42,$e0,$f0,$08,$2a
	dc.b $00
	even

loc_0e9180:
	dc.b $01,$cc,$d4,$ef,$06
	dc.b $01,$d4,$f2,$f4,$0b
	dc.b $02,$e8,$f8,$ef,$06
	dc.b $00
	even

loc_0e9190:
	dc.b $01,$ce,$f0,$f4,$0a
	dc.b $01,$e0,$ed,$ec,$0a
	dc.b $02,$d0,$e0,$00,$12
	dc.b $00
	even

loc_0e91a0:
	dc.b $01,$cf,$ec,$f6,$0c
	dc.b $01,$df,$f0,$e9,$ff
	dc.b $02,$c8,$f3,$f6,$03
	dc.b $c0,$e0,$ec,$12,$22
	dc.b $2c,$db,$e9,$0a,$1a
	dc.b $22,$d6,$e6,$02,$12
	dc.b $00
	even

loc_0e91c0:
	dc.b $01,$cf,$dd,$eb,$03
	dc.b $01,$da,$ee,$f4,$10
	dc.b $00
	even

loc_0e91cc:
	dc.b $01,$ce,$d9,$e6,$f6
	dc.b $01,$d8,$e8,$ee,$0a
	dc.b $01,$d4,$f4,$f2,$00
	dc.b $c8,$d8,$e8,$0a,$24
	dc.b $2c,$d6,$ea,$fc,$17
	dc.b $00
	even

loc_0e91e6:
	dc.b $01,$cc,$d4,$f7,$ff
	dc.b $01,$d0,$e0,$ee,$08
	dc.b $01,$de,$ee,$f6,$12
	dc.b $00
	even

loc_0e91f6:
	dc.b $01,$ca,$d8,$ea,$ff
	dc.b $01,$d2,$fa,$f7,$05
	dc.b $01,$d8,$f2,$f1,$0b
	dc.b $00
	even

loc_0e9206:
	dc.b $01,$cb,$f0,$f7,$05
	dc.b $01,$d8,$ec,$f3,$0c
	dc.b $02,$d0,$f4,$f3,$01
	dc.b $00
	even

loc_0e9216:
	dc.b $01,$ce,$e7,$ee,$03
	dc.b $02,$dc,$ef,$fc,$0d
	dc.b $c0,$e8,$f6,$ff,$1c
	dc.b $2c,$e3,$f1,$f6,$13
	dc.b $2c,$de,$ec,$ec,$04
	dc.b $00
	even

loc_0e9230:
	dc.b $01,$d5,$e8,$ed,$06
	dc.b $c0,$e8,$f6,$f5,$0a
	dc.b $22,$dd,$f0,$f3,$11
	dc.b $00
	even

loc_0e9240:
	dc.b $01,$d3,$ec,$fb,$0b
	dc.b $01,$e7,$f3,$ef,$07
	dc.b $02,$cd,$f7,$f5,$05
	dc.b $00
	even

loc_0e9250:
	dc.b $01,$d0,$f5,$f5,$04
	dc.b $02,$dc,$f0,$f1,$0a
	dc.b $c0,$ce,$e7,$04,$18
	dc.b $20,$d8,$f0,$ff,$16
	dc.b $00
	even

loc_0e9266:
	dc.b $01,$c9,$f0,$f2,$07
	dc.b $02,$c3,$f8,$f3,$fc
	dc.b $02,$d8,$ec,$f8,$0d
	dc.b $00
	even

loc_0e9276:
	dc.b $01,$c9,$e9,$fd,$09
	dc.b $02,$e2,$f0,$f4,$0e
	dc.b $01,$d0,$f6,$f4,$ff
	dc.b $00
	even

loc_0e9286:
	dc.b $01,$ce,$f0,$f7,$0d
	dc.b $02,$d5,$f4,$f7,$0f
	dc.b $c0,$d0,$e4,$13,$27
	dc.b $2c,$c8,$dc,$0a,$1e
	dc.b $40,$c0,$d0,$05,$23
	dc.b $00
	even

loc_0e92a0:
	dc.b $01,$d1,$e4,$f9,$0f
	dc.b $02,$cb,$f8,$fc,$08
	dc.b $01,$de,$f2,$f3,$07
	dc.b $c8,$e0,$f4,$12,$26
	dc.b $2c,$d8,$ea,$08,$1d
	dc.b $00
	even

loc_0e92ba:
	dc.b $01,$cc,$f0,$f6,$0b
	dc.b $02,$d8,$e8,$f4,$12
	dc.b $02,$cc,$fa,$fb,$05
	dc.b $00
	even

loc_0e92ca:
	dc.b $01,$d1,$ea,$eb,$07
	dc.b $22,$dc,$f0,$fd,$15
	dc.b $c8,$d8,$e8,$15,$28
	dc.b $2c,$da,$ec,$07,$1d
	dc.b $00
	even

loc_0e92e0:
	dc.b $01,$e8,$00,$f0,$0f
	dc.b $01,$d8,$f0,$f2,$07
	dc.b $01,$d2,$da,$f9,$05
	dc.b $00
	even

loc_0e92f0:
	dc.b $01,$c8,$d0,$fc,$04
	dc.b $01,$d0,$00,$f2,$0b
	dc.b $00
	even

loc_0e92fc:
	dc.b $01,$cc,$e8,$ef,$01
	dc.b $01,$d4,$f0,$f4,$08
	dc.b $01,$e8,$00,$ef,$11
	dc.b $00
	even

loc_0e930c:
	dc.b $01,$ce,$d6,$f8,$08
	dc.b $01,$d5,$f0,$f5,$0b
	dc.b $02,$e4,$f0,$f7,$13
	dc.b $01,$e8,$00,$ef,$08
	dc.b $00
	even

loc_0e9322:
	dc.b $01,$cf,$d7,$00,$08
	dc.b $01,$d5,$f0,$f6,$0b
	dc.b $02,$e0,$f0,$f2,$1a
	dc.b $01,$e8,$00,$ee,$12
	dc.b $00
	even

loc_0e9338:
	dc.b $01,$cd,$d5,$f8,$00
	dc.b $01,$d2,$00,$f4,$0c
	dc.b $01,$e8,$00,$ec,$18
	dc.b $c8,$de,$e8,$16,$2e
	dc.b $62,$d8,$e8,$0c,$1e
	dc.b $00
	even

loc_0e9352:
	dc.b $01,$cd,$d5,$f8,$00
	dc.b $01,$d2,$00,$f4,$0c
	dc.b $01,$e8,$00,$ec,$18
	dc.b $cc,$e0,$f0,$16,$2e
	dc.b $62,$d8,$e8,$0c,$1e
	dc.b $00
	even

loc_0e936c:
	dc.b $01,$c9,$d3,$f1,$05
	dc.b $01,$d2,$00,$f9,$0e
	dc.b $02,$d4,$e8,$00,$16
	dc.b $01,$e8,$00,$ef,$18
	dc.b $0c,$c0,$d4,$f0,$18
	dc.b $6c,$d0,$e0,$1c,$2c
	dc.b $00
	even

loc_0e938c:
	dc.b $01,$c8,$d2,$f1,$05
	dc.b $01,$d0,$00,$f8,$0f
	dc.b $02,$d4,$e8,$00,$16
	dc.b $01,$e8,$00,$ef,$18
	dc.b $00
	even

loc_0e93a2:
	dc.b $01,$c8,$d0,$f8,$02
	dc.b $01,$d0,$00,$f4,$0a
	dc.b $02,$c4,$e8,$00,$0c
	dc.b $01,$e8,$00,$ed,$11
	dc.b $00
	even

loc_0e93b8:
	dc.b $01,$cb,$d3,$fb,$03
	dc.b $01,$d1,$00,$f3,$08
	dc.b $02,$c8,$e8,$00,$0c
	dc.b $01,$e8,$00,$ee,$10
	dc.b $00
	even

loc_0e93ce:
	dc.b $01,$d4,$f0,$f2,$04
	dc.b $01,$e8,$00,$ef,$11
	dc.b $00
	even

loc_0e93da:
	dc.b $01,$d4,$f0,$f0,$02
	dc.b $01,$e4,$00,$ef,$0f
	dc.b $00
	even

loc_0e93e6:
	dc.b $02,$dc,$f0,$fa,$15
	dc.b $01,$e8,$00,$f0,$10
	dc.b $00
	even

loc_0e93f2:
	dc.b $01,$e8,$00,$f0,$16
	dc.b $01,$d8,$00,$fa,$12
	dc.b $08,$cc,$e8,$fe,$18
	dc.b $88,$b4,$c8,$18,$2c
	dc.b $44,$b0,$c0,$f8,$20
	dc.b $00
	even

loc_0e940c:
	dc.b $02,$d8,$f0,$04,$1c
	dc.b $01,$d2,$00,$f2,$0c
	dc.b $01,$e8,$00,$f0,$16
	dc.b $6c,$c0,$d4,$22,$32
	dc.b $22,$dc,$e8,$0e,$24
	dc.b $00
	even

loc_0e9426:
	dc.b $01,$ce,$d6,$f8,$04
	dc.b $01,$d4,$00,$f2,$0a
	dc.b $02,$dc,$00,$04,$18
	dc.b $01,$e8,$00,$ef,$12
	dc.b $00
	even

loc_0e943c:
	dc.b $01,$ce,$d6,$f3,$03
	dc.b $01,$d4,$00,$ed,$07
	dc.b $02,$dc,$e8,$e4,$0c
	dc.b $01,$e8,$00,$ed,$10
	dc.b $00
	even

loc_0e9452:
	dc.b $01,$cc,$d4,$f2,$05
	dc.b $01,$d3,$f0,$f5,$0a
	dc.b $02,$c8,$e8,$ed,$f9
	dc.b $01,$e8,$00,$ed,$10
	dc.b $00
	even

loc_0e9468:
	dc.b $01,$cc,$e8,$ef,$01
	dc.b $01,$d4,$f0,$f4,$08
	dc.b $01,$e8,$00,$ed,$0e
	dc.b $00
	even

loc_0e9478:
	dc.b $01,$cb,$e8,$f2,$ff
	dc.b $01,$d4,$f0,$f4,$04
	dc.b $01,$e4,$00,$ef,$0e
	dc.b $00
	even

loc_0e9488:
	dc.b $02,$e4,$00,$fa,$15
	dc.b $01,$d8,$00,$f0,$0e
	dc.b $02,$cc,$e0,$f0,$02
	dc.b $00
	even

loc_0e9498:
	dc.b $01,$e8,$00,$f0,$16
	dc.b $01,$d0,$00,$fa,$12
	dc.b $02,$cc,$e8,$fe,$18
	dc.b $88,$bc,$d8,$18,$30
	dc.b $44,$b4,$c0,$08,$28
	dc.b $00
	even

loc_0e94b2:
	dc.b $02,$d8,$f0,$04,$1c
	dc.b $01,$d3,$00,$f2,$0a
	dc.b $01,$d0,$d8,$fc,$08
	dc.b $01,$e8,$00,$f0,$16
	dc.b $6c,$c0,$e8,$18,$30
	dc.b $00
	even

loc_0e94cc:
	dc.w $0000
	even

loc_0e94ce:
	dc.w $0000
	even

loc_0e94d0:
	dc.w $0000
	even

loc_0e94d2:
	dc.w $0000
	even

loc_0e94d4:
	dc.b $01,$cf,$f9,$f3,$05
	dc.b $01,$e0,$f9,$f2,$0a
	dc.b $01,$e7,$f9,$f0,$10
	dc.b $00
	even

loc_0e94e4:
	dc.b $01,$d5,$ef,$f0,$02
	dc.b $01,$e2,$f3,$f0,$13
	dc.b $01,$da,$fa,$f6,$0a
	dc.b $00
	even

loc_0e94f4:
	dc.b $01,$d4,$f4,$f0,$12
	dc.b $02,$cc,$fc,$f4,$09
	dc.b $00
	even

loc_0e9500:
	dc.b $01,$d4,$fa,$ea,$16
	dc.b $02,$cc,$fe,$f2,$0e
	dc.b $00
	even

loc_0e950c:
	dc.b $01,$d8,$f6,$e8,$18
	dc.b $02,$d0,$fc,$f0,$10
	dc.b $c0,$e0,$f0,$f0,$10
	dc.b $00
	even

loc_0e951c:
	dc.b $c1,$ec,$00,$e6,$1a
	dc.b $21,$e4,$00,$ec,$14
	dc.b $40,$d8,$00,$e2,$1e
	dc.b $00
	even

loc_0e952c:
	dc.b $01,$d8,$f8,$ea,$16
	dc.b $01,$d0,$00,$f2,$0e
	dc.b $00
	even

loc_0e9538:
	dc.b $01,$f0,$00,$e8,$18
	dc.b $01,$e8,$00,$f0,$10
	dc.b $00
	even

loc_0e9544:
	dc.b $01,$da,$00,$f6,$12
	dc.b $00
	even

loc_0e954a:
	dc.b $01,$ca,$d2,$ff,$07
	dc.b $01,$d0,$f0,$f4,$0a
	dc.b $01,$dc,$00,$f4,$12
	dc.b $00
	even

loc_0e955a:
	dc.b $01,$cb,$d3,$fe,$06
	dc.b $01,$d2,$00,$f2,$0c
	dc.b $01,$d8,$00,$ed,$0f
	dc.b $00
	even

loc_0e956a:
	dc.b $01,$ca,$d2,$fc,$04
	dc.b $01,$d1,$ff,$f2,$07
	dc.b $01,$e6,$00,$ed,$11
	dc.b $00
	even

loc_0e957a:
	dc.b $01,$cd,$d5,$fe,$06
	dc.b $01,$d5,$ff,$f4,$0c
	dc.b $01,$e8,$00,$ed,$15
	dc.b $00
	even

loc_0e958a:
	dc.b $01,$cf,$d7,$f7,$01
	dc.b $01,$d6,$ff,$f0,$0e
	dc.b $01,$e8,$00,$ed,$15
	dc.b $00
	even

loc_0e959a:
	dc.b $01,$cd,$00,$fb,$10
	dc.b $01,$e8,$00,$ed,$15
	dc.b $00
	even

loc_0e95a6:
	dc.b $01,$d3,$dd,$08,$1b
	dc.b $01,$dc,$f0,$ee,$15
	dc.b $01,$d8,$00,$04,$10
	dc.b $00
	even

loc_0e95b6:
	dc.b $02,$d4,$e6,$e8,$18
	dc.b $01,$d6,$f0,$f0,$10
	dc.b $01,$d8,$00,$f8,$08
	dc.b $00
	even

loc_0e95c6:
	dc.b $01,$c0,$c9,$ec,$00
	dc.b $01,$c8,$fc,$f2,$02
	dc.b $01,$d0,$e8,$f8,$06
	dc.b $00
	even

loc_0e95d6:
	dc.b $01,$ce,$dc,$ea,$05
	dc.b $01,$da,$f0,$f2,$0d
	dc.b $00
	even

loc_0e95e2:
	dc.b $01,$cf,$ea,$ea,$06
	dc.b $22,$de,$f1,$fb,$12
	dc.b $c8,$ea,$f8,$12,$24
	dc.b $2c,$e3,$f5,$05,$1c
	dc.b $00
	even

loc_0e95f8:
	dc.b $01,$cd,$e9,$fb,$0e
	dc.b $01,$e4,$f0,$eb,$08
	dc.b $02,$ca,$f7,$f6,$05
	dc.b $00
	even

loc_0e9608:
	dc.b $01,$d3,$eb,$eb,$15
	dc.b $02,$d0,$f1,$f4,$0c
	dc.b $cc,$eb,$f3,$fe,$11
	dc.b $2c,$dd,$ef,$ee,$13
	dc.b $00
	even

loc_0e961e:
	dc.b $01,$ce,$f4,$f5,$05
	dc.b $02,$d8,$f0,$f1,$0a
	dc.b $c0,$ce,$e8,$ff,$13
	dc.b $20,$d4,$f0,$ff,$13
	dc.b $00
	even

loc_0e9634:
	dc.b $02,$d4,$e8,$e8,$00
	dc.b $01,$e4,$00,$ed,$0f
	dc.b $00
	even

loc_0e9640:
	dc.b $02,$d6,$f0,$f2,$08
	dc.b $01,$e8,$00,$ed,$10
	dc.b $00
	even

loc_0e964c:
	dc.b $01,$d8,$f0,$fc,$0f
	dc.b $01,$e8,$00,$ef,$14
	dc.b $c0,$ce,$e4,$0e,$22
	dc.b $68,$c8,$d8,$fc,$16
	dc.b $22,$d4,$e8,$04,$17
	dc.b $00
	even

loc_0e9666:
	dc.b $01,$d0,$e8,$00,$1c
	dc.b $01,$e0,$f0,$f8,$18
	dc.b $01,$e8,$00,$f0,$16
	dc.b $00
	even

loc_0e9676:
	dc.b $01,$cc,$d6,$fa,$04
	dc.b $01,$d4,$e8,$f0,$0c
	dc.b $01,$e8,$00,$ee,$10
	dc.b $00
	even

loc_0e9686:
	dc.b $01,$e6,$00,$e8,$18
	dc.b $0c,$dc,$00,$ec,$14
	dc.b $00
	even

loc_0e9692:
	dc.b $01,$ec,$00,$e6,$1a
	dc.b $01,$e4,$00,$ec,$14
	dc.b $00
	even

;e969e
