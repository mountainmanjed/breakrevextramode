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
;40 attack 1
;80 attack 2
;==============================

loc_0e4ad2:
	dc.b $01,$c4,$ce,$02,$0a
	dc.b $01,$c8,$00,$f0,$0e
	dc.b $02,$d0,$e8,$ee,$11
	dc.b $01,$e8,$00,$ea,$0e
	dc.b $00
	even

loc_0e4ae8:
	dc.b $01,$c4,$ce,$fa,$06
	dc.b $01,$c8,$00,$f1,$0f
	dc.b $02,$d0,$e8,$ee,$12
	dc.b $01,$e8,$00,$ee,$12
	dc.b $00
	even

loc_0e4afe:
	dc.b $01,$c9,$d3,$03,$0b
	dc.b $01,$cd,$00,$f0,$0f
	dc.b $01,$e8,$00,$ea,$11
	dc.b $00
	even

loc_0e4b0e:
	dc.b $01,$cb,$d5,$03,$0b
	dc.b $01,$cf,$00,$f1,$0d
	dc.b $02,$d8,$f0,$00,$12
	dc.b $01,$e8,$00,$ec,$11
	dc.b $00
	even

loc_0e4b24:
	dc.b $01,$d1,$db,$01,$09
	dc.b $01,$d6,$00,$f2,$11
	dc.b $02,$dc,$f0,$f2,$15
	dc.b $01,$f0,$00,$ef,$15
	dc.b $00
	even

loc_0e4b3a:
	dc.b $01,$d1,$db,$fa,$06
	dc.b $01,$d6,$00,$f1,$0f
	dc.b $01,$e8,$00,$ed,$13
	dc.b $00
	even

loc_0e4b4a:
	dc.b $01,$c5,$cf,$02,$0a
	dc.b $01,$c8,$00,$f2,$0b
	dc.b $02,$d0,$00,$ee,$0e
	dc.b $01,$e8,$00,$eb,$0e
	dc.b $00
	even

loc_0e4b60:
	dc.b $01,$c3,$cd,$f4,$04
	dc.b $01,$c8,$00,$f0,$0b
	dc.b $02,$cc,$00,$f0,$10
	dc.b $01,$e8,$00,$ec,$08
	dc.b $00
	even

loc_0e4b76:
	dc.b $01,$cb,$d5,$01,$09
	dc.b $01,$cf,$f0,$f0,$0b
	dc.b $01,$e8,$00,$ec,$07
	dc.b $00
	even

loc_0e4b86:
	dc.b $01,$c8,$e8,$f3,$0d
	dc.b $02,$c5,$f0,$f8,$08
	dc.b $0c,$c8,$f8,$f9,$03
	dc.b $00
	even

loc_0e4b96:
	dc.b $01,$c8,$e8,$f3,$0d
	dc.b $01,$c4,$ec,$f8,$08
	dc.b $00
	even

loc_0e4ba2:
	dc.b $01,$c8,$e6,$f3,$10
	dc.b $01,$c4,$ec,$f7,$07
	dc.b $00
	even

loc_0e4bae:
	dc.b $01,$c8,$e8,$f3,$0d
	dc.b $01,$c5,$f0,$f8,$08
	dc.b $01,$c8,$f8,$fa,$04
	dc.b $00
	even

loc_0e4bbe:
	dc.b $01,$c4,$00,$eb,$0f
	dc.b $00
	even

loc_0e4bc4:
	dc.b $01,$d2,$00,$ed,$15
	dc.b $00
	even

loc_0e4bca:
	dc.b $01,$c4,$d8,$e2,$00
	dc.b $01,$cc,$f0,$e9,$0b
	dc.b $01,$e0,$00,$ea,$11
	dc.b $00
	even

loc_0e4bda:
	dc.b $01,$c4,$e0,$e8,$04
	dc.b $01,$d0,$00,$ed,$0b
	dc.b $01,$e0,$00,$ea,$0e
	dc.b $00
	even

loc_0e4bea:
	dc.b $01,$c4,$d8,$ec,$05
	dc.b $01,$cc,$e8,$e4,$0b
	dc.b $01,$e0,$00,$ec,$0f
	dc.b $00
	even


loc_0e4bfa:
	dc.b $01,$c5,$cf,$fb,$05
	dc.b $01,$ca,$00,$ed,$0b
	dc.b $01,$e0,$00,$ea,$0e
	dc.b $00
	even

loc_0e4c0a:
	dc.b $01,$d0,$e0,$ea,$06
	dc.b $01,$d8,$f0,$e6,$10
	dc.b $01,$e8,$00,$ea,$15
	dc.b $00
	even

loc_0e4c1a:
	dc.b $01,$d1,$db,$f9,$03
	dc.b $01,$d6,$f0,$ed,$0a
	dc.b $01,$e0,$00,$ef,$15
	dc.b $00
	even

loc_0e4c2a:
	dc.b $01,$c4,$f8,$eb,$11
	dc.b $00
	even

loc_0e4c30:
	dc.b $01,$c4,$f4,$f3,$0d
	dc.b $00
	even

loc_0e4c36:
	dc.b $01,$d4,$f8,$eb,$11
	dc.b $00
	even

loc_0e4c3c:
	dc.b $01,$e8,$00,$e8,$18
	dc.b $00
	even

loc_0e4c42:
	dc.b $01,$c8,$f0,$f8,$15
	dc.b $01,$f0,$00,$eb,$0f
	dc.b $01,$d8,$00,$f2,$0d
	dc.b $00
	even

loc_0e4c52:
	dc.b $01,$c4,$dc,$f6,$06
	dc.b $01,$d0,$00,$00,$0f
	dc.b $00
	even

loc_0e4c5e:
	dc.b $01,$c8,$00,$f8,$0d
	dc.b $01,$e4,$00,$ea,$0f
	dc.b $c0,$ce,$e2,$11,$20
	dc.b $28,$c8,$dc,$00,$18
	dc.b $4c,$be,$d3,$00,$18
	dc.b $00
	even

loc_0e4c78:
	dc.b $01,$c8,$d2,$05,$0d
	dc.b $01,$cc,$ec,$f6,$13
	dc.b $01,$e8,$00,$ea,$0d
	dc.b $68,$d8,$f0,$00,$1c
	dc.b $00
	even

loc_0e4c8e:
	dc.b $01,$c1,$cb,$f5,$fd
	dc.b $01,$c6,$00,$ec,$02
	dc.b $01,$e0,$00,$e7,$08
	dc.b $01,$f0,$00,$f2,$0f
	dc.b $00
	even

loc_0e4ca4:
	dc.b $01,$c2,$cc,$f6,$fe
	dc.b $01,$c8,$00,$ed,$05
	dc.b $01,$e0,$00,$ea,$09
	dc.b $01,$f0,$00,$f2,$0f
	dc.b $00
	even

loc_0e4cba:
	dc.b $01,$c4,$ce,$fb,$05
	dc.b $01,$c9,$00,$f0,$0b
	dc.b $01,$e0,$00,$eb,$0e
	dc.b $c8,$cc,$d4,$11,$24
	dc.b $2c,$ca,$d9,$03,$1b
	dc.b $00
	even

loc_0e4cd4:
	dc.b $01,$c4,$ce,$02,$0a
	dc.b $01,$ca,$00,$f2,$0a
	dc.b $01,$e2,$00,$ea,$10
	dc.b $00
	even

loc_0e4ce4:
	dc.b $01,$d1,$db,$02,$0a
	dc.b $01,$d6,$00,$f1,$0e
	dc.b $01,$ec,$00,$ef,$14
	dc.b $00
	even

loc_0e4cf4:
	dc.b $01,$d0,$da,$ff,$07
	dc.b $01,$d4,$00,$f3,$0d
	dc.b $01,$ec,$00,$f0,$13
	dc.b $02,$d8,$f0,$f8,$14
	dc.b $00
	even

loc_0e4d0a:
	dc.b $01,$d0,$da,$01,$09
	dc.b $01,$d5,$00,$f3,$11
	dc.b $01,$f0,$00,$ef,$13
	dc.b $c8,$d8,$e1,$15,$28
	dc.b $2c,$d6,$e6,$0b,$20
	dc.b $00
	even

loc_0e4d24:
	dc.b $01,$d1,$db,$ff,$0f
	dc.b $01,$d6,$00,$f5,$10
	dc.b $02,$dc,$f0,$f2,$16
	dc.b $01,$f0,$00,$ef,$14
	dc.b $00
	even

loc_0e4d3a:
	dc.b $02,$c2,$cc,$05,$0d
	dc.b $01,$c6,$e8,$f8,$0b
	dc.b $01,$d8,$00,$f0,$09
	dc.b $00
	even

loc_0e4d4a:
	dc.b $02,$bd,$c7,$ff,$07
	dc.b $01,$c3,$e0,$f4,$07
	dc.b $01,$d0,$00,$fd,$09
	dc.b $02,$d8,$ec,$ff,$14
	dc.b $00
	even

loc_0e4d60:
	dc.b $02,$c0,$ca,$fc,$04
	dc.b $01,$c6,$e0,$f3,$05
	dc.b $01,$cc,$00,$fd,$09
	dc.b $c0,$e4,$f8,$10,$1e
	dc.b $6c,$dc,$f0,$00,$18
	dc.b $02,$d4,$e8,$00,$12
	dc.b $00
	even


loc_0e4d80:
	dc.b $01,$c3,$cd,$fe,$06
	dc.b $01,$c8,$00,$f1,$0b
	dc.b $00
	even

loc_0e4d8c:
	dc.b $01,$c3,$ec,$fe,$06
	dc.b $01,$c8,$00,$f2,$00
	dc.b $02,$d2,$e8,$00,$11
	dc.b $00
	even

loc_0e4d9c:
	dc.b $01,$c4,$ce,$f3,$fb
	dc.b $01,$ca,$da,$e8,$00
	dc.b $01,$ca,$00,$f5,$00
	dc.b $01,$d0,$ec,$f8,$0b
	dc.b $8c,$db,$ec,$14,$29
	dc.b $62,$d4,$e5,$0b,$1b
	dc.b $00
	even

loc_0e4dbc:
	dc.b $01,$d1,$db,$fb,$05
	dc.b $01,$d8,$00,$ef,$0d
	dc.b $02,$e4,$00,$f3,$15
	dc.b $01,$f0,$00,$ef,$15
	dc.b $00
	even

loc_0e4dd2:
	dc.b $01,$d1,$dc,$e9,$fe
	dc.b $01,$d8,$00,$f0,$0d
	dc.b $22,$ea,$00,$04,$16
	dc.b $cc,$f0,$00,$10,$28
	dc.b $00
	even

loc_0e4de8:
	dc.b $01,$d1,$db,$fb,$05
	dc.b $01,$d7,$f0,$ef,$0d
	dc.b $02,$ec,$00,$fb,$1d
	dc.b $01,$e0,$00,$f3,$14
	dc.b $00
	even

loc_0e4dfe:
	dc.b $01,$cc,$00,$f2,$0b
	dc.b $02,$d8,$ec,$f2,$12
	dc.b $01,$e8,$00,$eb,$0e
	dc.b $00
	even

loc_0e4e0e:
	dc.b $01,$cc,$00,$f6,$0f
	dc.b $01,$e4,$00,$ec,$13
	dc.b $c0,$ce,$e4,$00,$13
	dc.b $00
	even

loc_0e4e1e:
	dc.b $01,$c8,$00,$f8,$0d
	dc.b $01,$e4,$00,$ec,$13
	dc.b $c8,$c4,$d8,$04,$20
	dc.b $2c,$cc,$e4,$08,$1a
	dc.b $00
	even

loc_0e4e34:
	dc.b $01,$c8,$d2,$00,$08
	dc.b $01,$cc,$00,$f6,$11
	dc.b $01,$e4,$00,$ec,$15
	dc.b $ac,$b4,$c8,$04,$20
	dc.b $6c,$c8,$dc,$11,$20
	dc.b $22,$c0,$d0,$08,$18
	dc.b $00
	even

loc_0e4e54:
	dc.b $01,$c5,$cf,$02,$0a
	dc.b $01,$ca,$00,$f8,$0d
	dc.b $01,$e4,$00,$ec,$13
	dc.b $02,$c5,$e8,$08,$18
	dc.b $00
	even

loc_0e4e6a:
	dc.b $01,$c7,$e8,$05,$0f
	dc.b $01,$ca,$00,$f6,$0b
	dc.b $01,$e4,$00,$ec,$13
	dc.b $02,$d0,$ec,$f2,$15
	dc.b $00
	even

loc_0e4e80:
	dc.b $01,$c8,$00,$f2,$0d
	dc.b $02,$d0,$f0,$f0,$13
	dc.b $01,$e8,$00,$ec,$0f
	dc.b $00
	even

loc_0e4e90:
	dc.b $01,$be,$f0,$ee,$09
	dc.b $01,$e8,$00,$00,$0d
	dc.b $00
	even

loc_0e4e9c:
	dc.b $01,$c4,$00,$f2,$0b
	dc.b $01,$e0,$00,$f8,$0d
	dc.b $02,$cc,$ec,$08,$11
	dc.b $00
	even

loc_0e4eac:
	dc.b $01,$c8,$00,$f2,$0b
	dc.b $01,$ec,$00,$ea,$0d
	dc.b $01,$e0,$f0,$f2,$11
	dc.b $02,$c6,$e0,$01,$11
	dc.b $c8,$cc,$e2,$11,$26
	dc.b $62,$c4,$da,$04,$1a
	dc.b $00
	even

loc_0e4ecc:
	dc.b $01,$d2,$f0,$ee,$06
	dc.b $01,$d8,$00,$f2,$0f
	dc.b $01,$f0,$00,$ef,$15
	dc.b $00
	even

loc_0e4edc:
	dc.b $01,$d1,$db,$ff,$0f
	dc.b $01,$d6,$00,$f5,$10
	dc.b $02,$dc,$f0,$f2,$16
	dc.b $01,$f0,$00,$ef,$14
	dc.b $00
	even

loc_0e4ef2:
	dc.b $02,$d1,$da,$05,$11
	dc.b $01,$d5,$00,$f9,$12
	dc.b $01,$e0,$f0,$f3,$12
	dc.b $01,$f0,$00,$ef,$14
	dc.b $c8,$d3,$e2,$18,$2a
	dc.b $2c,$d5,$e6,$08,$22
	dc.b $00
	even

loc_0e4f12:
	dc.b $01,$c8,$d2,$02,$0a
	dc.b $01,$ce,$00,$f1,$0d
	dc.b $01,$e8,$00,$ea,$0d
	dc.b $00
	even

loc_0e4f22:
	dc.b $02,$bd,$c7,$ff,$07
	dc.b $01,$c3,$e0,$f4,$07
	dc.b $01,$d0,$00,$fd,$09
	dc.b $c0,$d0,$e8,$07,$20
	dc.b $2c,$d8,$ec,$fc,$18
	dc.b $00
	even

loc_0e4f3c:
	dc.b $02,$c2,$cc,$fd,$05
	dc.b $01,$c7,$e0,$f3,$07
	dc.b $01,$cc,$00,$ff,$0b
	dc.b $cc,$d0,$e2,$18,$2e
	dc.b $2c,$d0,$e6,$11,$24
	dc.b $02,$d0,$ec,$00,$14
	dc.b $00
	even

loc_0e4f5c:
	dc.b $01,$c0,$ca,$fe,$06
	dc.b $01,$c6,$dc,$f0,$0b
	dc.b $01,$c6,$00,$f2,$02
	dc.b $02,$d8,$ec,$00,$14
	dc.b $00
	even

loc_0e4f72:
	dc.b $01,$bd,$cc,$f0,$04
	dc.b $01,$c4,$e8,$fa,$10
	dc.b $01,$e4,$00,$f0,$02
	dc.b $02,$d0,$e8,$00,$1b
	dc.b $c0,$c9,$e1,$10,$23
	dc.b $2c,$d1,$f0,$0a,$21
	dc.b $00
	even

loc_0e4f92:
	dc.b $01,$d4,$de,$f2,$fa
	dc.b $01,$d9,$00,$e7,$0c
	dc.b $62,$e4,$00,$0a,$18
	dc.b $ac,$ea,$00,$18,$2c
	dc.b $00
	even

loc_0e4fa8:
	dc.b $01,$c3,$e8,$ea,$00
	dc.b $01,$c8,$f0,$f2,$09
	dc.b $01,$e8,$00,$eb,$11
	dc.b $00
	even

loc_0e4fb8:
	dc.b $01,$c5,$cf,$07,$0f
	dc.b $01,$c9,$f0,$f7,$0f
	dc.b $01,$e4,$00,$ed,$13
	dc.b $02,$cc,$e4,$00,$18
	dc.b $00
	even

loc_0e4fce:
	dc.b $01,$c5,$cf,$06,$10
	dc.b $01,$ca,$f0,$f7,$0f
	dc.b $01,$e4,$00,$ec,$14
	dc.b $02,$cc,$ec,$0c,$18
	dc.b $8c,$ca,$d6,$18,$2c
	dc.b $22,$ca,$da,$0c,$23
	dc.b $00
	even

loc_0e4fee:
	dc.b $01,$c0,$ee,$f3,$05
	dc.b $02,$d6,$e4,$f3,$0d
	dc.b $0c,$c8,$f8,$f3,$fd
	dc.b $00
	even

loc_0e4ffe:
	dc.b $01,$c8,$f0,$fb,$05
	dc.b $02,$cc,$ed,$03,$0b
	dc.b $0c,$d8,$f8,$f7,$01
	dc.b $c0,$c8,$de,$14,$25
	dc.b $2c,$c0,$d8,$06,$1c
	dc.b $40,$bc,$cc,$08,$20
	dc.b $00
	even

loc_0e501e:
	dc.b $01,$ca,$d4,$0a,$12
	dc.b $01,$cd,$e4,$00,$15
	dc.b $01,$dc,$f4,$f3,$03
	dc.b $6c,$d4,$e4,$13,$23
	dc.b $68,$e4,$f4,$03,$1c
	dc.b $00
	even

loc_0e5038:
	dc.b $01,$c6,$e8,$ff,$0f
	dc.b $01,$cb,$dc,$f6,$16
	dc.b $01,$dc,$ef,$ee,$0a
	dc.b $00
	even

loc_0e5048:
	dc.b $01,$c5,$e1,$f6,$0d
	dc.b $01,$c2,$f0,$f6,$06
	dc.b $02,$c1,$c9,$ee,$12
	dc.b $00
	even

loc_0e5058:
	dc.b $01,$c4,$ee,$f5,$07
	dc.b $01,$c9,$da,$f0,$12
	dc.b $02,$d8,$f4,$f0,$00
	dc.b $00
	even

loc_0e5068:
	dc.b $01,$c9,$d3,$08,$10
	dc.b $01,$cc,$da,$fd,$13
	dc.b $01,$d8,$f0,$f5,$07
	dc.b $02,$e8,$f4,$ec,$00
	dc.b $c0,$da,$ea,$10,$24
	dc.b $2c,$d0,$e6,$04,$1c
	dc.b $00
	even

loc_0e5088:
	dc.b $01,$c4,$ce,$f7,$ff
	dc.b $01,$c8,$e4,$f4,$0b
	dc.b $01,$d8,$ec,$f1,$04
	dc.b $00
	even

loc_0e5098:
	dc.b $01,$c4,$d0,$f9,$08
	dc.b $01,$cc,$f0,$f1,$08
	dc.b $02,$dc,$f4,$ed,$11
	dc.b $00
	even

loc_0e50a8:
	dc.b $01,$c4,$d4,$ee,$00
	dc.b $01,$c8,$e8,$f8,$08
	dc.b $02,$e1,$f8,$ef,$f9
	dc.b $c0,$cb,$dc,$04,$1e
	dc.b $6c,$d3,$ec,$04,$1b
	dc.b $02,$d0,$e1,$f8,$10
	dc.b $00
	even

loc_0e50c8:
	dc.b $01,$c5,$e4,$f3,$09
	dc.b $02,$cb,$d8,$ef,$10
	dc.b $22,$d8,$ee,$f1,$06
	dc.b $c0,$e0,$f1,$f8,$1a
	dc.b $2c,$d8,$e8,$f1,$11
	dc.b $00
	even

loc_0e50e2:
	dc.b $01,$c5,$e4,$f9,$0b
	dc.b $01,$cc,$f0,$f2,$00
	dc.b $00
	even

loc_0e50ee:
	dc.b $01,$c4,$e8,$f3,$0c
	dc.b $02,$d0,$f0,$f3,$11
	dc.b $00
	even

loc_0e50fa:
	dc.b $01,$c4,$e8,$fc,$10
	dc.b $01,$cc,$e0,$f6,$08
	dc.b $02,$d8,$f4,$fe,$0a
	dc.b $cc,$c6,$dc,$18,$28
	dc.b $22,$c4,$d2,$06,$1c
	dc.b $00
	even

loc_0e5114:
	dc.b $01,$ce,$de,$04,$1a
	dc.b $01,$dc,$ea,$e4,$0c
	dc.b $02,$d8,$f0,$f4,$04
	dc.b $c8,$d6,$e8,$12,$26
	dc.b $22,$d1,$e3,$0a,$1e
	dc.b $00
	even

loc_0e512e:
	dc.b $01,$c8,$dc,$00,$1a
	dc.b $01,$d0,$da,$00,$28
	dc.b $01,$d4,$e6,$e4,$0d
	dc.b $02,$d8,$ec,$ee,$08
	dc.b $c8,$d4,$e2,$00,$1a
	dc.b $20,$d8,$e6,$ee,$0d
	dc.b $22,$d4,$de,$04,$23
	dc.b $00
	even

loc_0e5152:
	dc.b $01,$cb,$ee,$ef,$0a
	dc.b $01,$c3,$cd,$f8,$00
	dc.b $02,$dc,$f0,$f3,$14
	dc.b $00
	even

loc_0e5162:
	dc.b $01,$c5,$e8,$f1,$09
	dc.b $02,$de,$f0,$e5,$f8
	dc.b $02,$cd,$e8,$f6,$12
	dc.b $88,$dc,$ec,$15,$27
	dc.b $6c,$da,$ec,$f8,$17
	dc.b $00
	even

loc_0e517c:
	dc.b $01,$c6,$ea,$f7,$0a
	dc.b $01,$ce,$e0,$ec,$0f
	dc.b $02,$dc,$ee,$f2,$1c
	dc.b $00
	even

loc_0e518c:
	dc.b $01,$c3,$e2,$eb,$04
	dc.b $02,$d0,$dc,$dc,$0d
	dc.b $01,$d6,$ee,$00,$16
	dc.b $8c,$df,$eb,$15,$2c
	dc.b $62,$db,$ee,$08,$1e
	dc.b $00
	even

loc_0e51a6:
	dc.b $01,$ca,$ec,$f9,$0e
	dc.b $01,$c6,$d4,$ee,$05
	dc.b $c8,$ec,$fe,$0a,$1e
	dc.b $6c,$e0,$f2,$fe,$15
	dc.b $00
	even

loc_0e51bc:
	dc.b $01,$e4,$00,$ec,$11
	dc.b $0c,$d0,$e8,$f0,$00
	dc.b $00
	even

loc_0e51c8:
	dc.b $01,$e8,$00,$e8,$11
	dc.b $0c,$cc,$e8,$f0,$00
	dc.b $00
	even

loc_0e51d4:
	dc.b $02,$c8,$00,$f2,$0b
	dc.b $01,$e4,$00,$ea,$14
	dc.b $c0,$c4,$de,$0b,$26
	dc.b $28,$ca,$e8,$f8,$1c
	dc.b $00
	even

loc_0e51ea:
	dc.b $02,$c4,$e0,$ff,$15
	dc.b $01,$ca,$00,$f2,$0b
	dc.b $01,$e0,$00,$ea,$1b
	dc.b $68,$c0,$d8,$14,$24
	dc.b $40,$b8,$e0,$08,$14
	dc.b $00
	even

loc_0e5204:
	dc.b $02,$bc,$ce,$ff,$15
	dc.b $01,$c9,$00,$f7,$0f
	dc.b $01,$e0,$00,$ea,$1b
	dc.b $00
	even

loc_0e5214:
	dc.b $01,$c4,$ce,$fd,$05
	dc.b $01,$ca,$00,$f0,$0d
	dc.b $01,$e0,$00,$ea,$13
	dc.b $00
	even

loc_0e5224:
	dc.b $01,$c6,$ce,$fc,$06
	dc.b $01,$ca,$00,$f0,$03
	dc.b $01,$e2,$00,$e9,$0e
	dc.b $00
	even

loc_0e5234:
	dc.b $0c,$d1,$f8,$f9,$07
	dc.b $01,$d4,$f0,$f5,$0f
	dc.b $02,$d8,$e0,$ed,$13
	dc.b $00
	even

loc_0e5244:
	dc.b $0c,$e2,$ec,$f3,$fb
	dc.b $0c,$e8,$00,$ed,$18
	dc.b $01,$f8,$00,$ed,$1c
	dc.b $00
	even

loc_0e5254:
	dc.b $0c,$e4,$f0,$eb,$0d
	dc.b $01,$ec,$00,$e6,$0d
	dc.b $02,$f0,$00,$00,$1c
	dc.b $2c,$f0,$00,$12,$24
	dc.b $cc,$ec,$00,$00,$1c
	dc.b $00
	even

loc_0e526e:
	dc.b $01,$e3,$ed,$ef,$f7
	dc.b $01,$e8,$00,$e5,$12
	dc.b $02,$f0,$00,$00,$1c
	dc.b $00
	even

loc_0e527e:
	dc.b $01,$e2,$ec,$f3,$fb
	dc.b $01,$e8,$00,$ed,$10
	dc.b $02,$f0,$00,$00,$1a
	dc.b $00
	even

loc_0e528e:
	dc.b $01,$df,$e9,$00,$08
	dc.b $01,$e4,$00,$f3,$10
	dc.b $02,$f0,$00,$00,$1a
	dc.b $00
	even

loc_0e529e:
	dc.b $01,$d4,$de,$00,$08
	dc.b $01,$d8,$e8,$f0,$0a
	dc.b $01,$e8,$00,$f3,$0f
	dc.b $00
	even

loc_0e52ae:
	dc.b $01,$d0,$00,$ed,$02
	dc.b $01,$ca,$00,$f5,$0d
	dc.b $00
	even

loc_0e52ba:
	dc.b $01,$c4,$e6,$f6,$0e
	dc.b $01,$d0,$00,$ef,$04
	dc.b $00
	even

loc_0e52c6:
	dc.b $01,$c5,$da,$ec,$12
	dc.b $01,$c0,$00,$f4,$02
	dc.b $01,$d8,$e8,$f8,$0a
	dc.b $02,$cd,$ec,$00,$1a
	dc.b $00
	even

loc_0e52dc:
	dc.b $01,$c0,$e0,$ed,$04
	dc.b $01,$d3,$00,$f3,$08
	dc.b $01,$d0,$e4,$f8,$10
	dc.b $ac,$ce,$e2,$10,$26
	dc.b $02,$d3,$ec,$04,$1e
	dc.b $00
	even

loc_0e52f6:
	dc.b $01,$be,$c8,$fd,$05
	dc.b $01,$c2,$d4,$ec,$0b
	dc.b $01,$cc,$00,$f2,$06
	dc.b $02,$d4,$ec,$f6,$20
	dc.b $00
	even

loc_0e530c:
	dc.b $01,$c3,$cc,$fa,$08
	dc.b $01,$cf,$ec,$ee,$13
	dc.b $01,$c8,$00,$f2,$0b
	dc.b $00
	even

loc_0e531c:
	dc.b $01,$c2,$cc,$fb,$03
	dc.b $01,$c8,$00,$ee,$03
	dc.b $02,$d0,$e8,$ee,$09
	dc.b $01,$e4,$00,$ea,$10
	dc.b $00
	even

loc_0e5332:
	dc.b $01,$c5,$cf,$fe,$08
	dc.b $01,$ca,$00,$f2,$07
	dc.b $02,$d0,$e8,$ef,$0b
	dc.b $01,$e0,$00,$ea,$10
	dc.b $00
	even

loc_0e5348:
	dc.b $01,$c7,$e9,$fb,$0e
	dc.b $01,$d0,$00,$f2,$0c
	dc.b $02,$d4,$e8,$ef,$15
	dc.b $01,$e8,$00,$ea,$10
	dc.b $00
	even

loc_0e535e:
	dc.b $0c,$c2,$dc,$08,$10
	dc.b $02,$c8,$f0,$fb,$0d
	dc.b $01,$dc,$ec,$f7,$14
	dc.b $01,$ec,$00,$e9,$08
	dc.b $cc,$ca,$dc,$05,$1a
	dc.b $2c,$c8,$e4,$fd,$14
	dc.b $00
	even

loc_0e537e:
	dc.b $02,$c8,$ec,$fb,$13
	dc.b $01,$d8,$ec,$f3,$13
	dc.b $01,$e0,$00,$e9,$08
	dc.b $68,$ce,$de,$0c,$2c
	dc.b $2c,$c8,$e4,$07,$18
	dc.b $00
	even

loc_0e5398:
	dc.b $01,$c4,$00,$fa,$14
	dc.b $02,$ce,$e8,$07,$1a
	dc.b $00
	even

loc_0e53a4:
	dc.b $01,$d0,$e0,$00,$1e
	dc.b $01,$ec,$00,$ec,$15
	dc.b $01,$dc,$f0,$fa,$1b
	dc.b $00
	even

loc_0e53b4:
	dc.b $01,$c0,$ca,$ff,$07
	dc.b $01,$c4,$00,$f1,$0c
	dc.b $02,$c8,$e0,$f0,$10
	dc.b $01,$e0,$00,$eb,$0d
	dc.b $00
	even


loc_0e53ca:
	dc.b $01,$bc,$c6,$fe,$08
	dc.b $01,$c0,$00,$f2,$0a
	dc.b $01,$e0,$00,$ee,$0a
	dc.b $00
	even

loc_0e53da:
	dc.b $01,$be,$c8,$ff,$07
	dc.b $01,$c4,$00,$f3,$0f
	dc.b $02,$c8,$e8,$ee,$15
	dc.b $01,$e4,$00,$ec,$18
	dc.b $00
	even

loc_0e53f0:
	dc.b $01,$c3,$cd,$fe,$06
	dc.b $01,$c8,$00,$f5,$0f
	dc.b $02,$cc,$e8,$f0,$14
	dc.b $01,$e4,$00,$ec,$18
	dc.b $00
	even

;0e5406