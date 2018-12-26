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

loc_0e6a86:
	dc.b $01,$cb,$d5,$ff,$09
	dc.b $01,$d1,$00,$f4,$0a
	dc.b $01,$e8,$00,$f1,$0f
	dc.b $02,$d4,$e8,$f1,$0f
	dc.b $00
	even

loc_0e6a9c:
	dc.b $01,$cb,$d5,$fb,$05
	dc.b $01,$d1,$00,$f5,$0b
	dc.b $01,$e8,$00,$f1,$0f
	dc.b $02,$d4,$e8,$f1,$0f
	dc.b $00
	even

loc_0e6ab2:
	dc.b $01,$d0,$da,$fd,$07
	dc.b $01,$d8,$00,$f3,$0a
	dc.b $01,$e4,$00,$f1,$0f
	dc.b $00
	even

loc_0e6ac2:
	dc.b $01,$d6,$e0,$ff,$09
	dc.b $01,$de,$f0,$f4,$0d
	dc.b $01,$e8,$00,$f1,$0d
	dc.b $00
	even

loc_0e6ad2:
	dc.b $01,$da,$e4,$00,$0a
	dc.b $01,$e0,$f0,$f6,$10
	dc.b $01,$ec,$00,$f1,$0d
	dc.b $00
	even

loc_0e6ae2:
	dc.b $01,$d8,$e2,$fb,$05
	dc.b $01,$e0,$00,$f1,$0f
	dc.b $00
	even

loc_0e6aee:
	dc.b $01,$c8,$d2,$fe,$08
	dc.b $01,$d0,$00,$f5,$0c
	dc.b $02,$d4,$00,$ef,$0f
	dc.b $00
	even

loc_0e6afe:
	dc.b $01,$c8,$d2,$fe,$08
	dc.b $01,$d0,$00,$f5,$0c
	dc.b $02,$d4,$00,$ef,$0f
	dc.b $00
	even

loc_0e6b0e:
	dc.b $01,$c9,$ea,$f8,$08
	dc.b $0c,$d0,$f8,$fa,$06
	dc.b $02,$cb,$d7,$ed,$13
	dc.b $00
	even

loc_0e6b1e:
	dc.b $01,$cc,$d6,$fa,$04
	dc.b $01,$d1,$e8,$f3,$0d
	dc.b $01,$e0,$f2,$f6,$04
	dc.b $02,$d7,$e3,$ed,$11
	dc.b $00
	even

loc_0e6b34:
	dc.b $01,$c9,$f0,$f7,$09
	dc.b $02,$d0,$f8,$fa,$06
	dc.b $02,$cb,$d7,$ed,$13
	dc.b $00
	even

loc_0e6b44:
	dc.b $01,$e4,$00,$f1,$0f
	dc.b $00
	even

loc_0e6b4a:
	dc.b $01,$c8,$00,$f1,$0f
	dc.b $00
	even

loc_0e6b50:
	dc.b $01,$da,$00,$f0,$10
	dc.b $00
	even

loc_0e6b56:
	dc.b $01,$c8,$d2,$ea,$00
	dc.b $01,$d2,$e4,$e8,$0c
	dc.b $01,$e4,$00,$f0,$0f
	dc.b $00
	even

loc_0e6b66:
	dc.b $01,$c8,$d2,$f1,$01
	dc.b $01,$d0,$e8,$ef,$0a
	dc.b $01,$e4,$00,$f1,$0f
	dc.b $02,$d8,$e8,$f1,$0f
	dc.b $00
	even

loc_0e6b7c:
	dc.b $01,$c8,$f0,$ea,$00
	dc.b $01,$d0,$e8,$e5,$0a
	dc.b $01,$e4,$00,$ee,$0e
	dc.b $00
	even

loc_0e6b8c:
	dc.b $01,$c8,$d2,$f3,$03
	dc.b $01,$d0,$e8,$ee,$0a
	dc.b $01,$e4,$00,$f1,$0f
	dc.b $02,$d8,$e8,$f1,$0f
	dc.b $00
	even

loc_0e6ba2:
	dc.b $01,$e0,$00,$ed,$0d
	dc.b $01,$d5,$f0,$e5,$07
	dc.b $00
	even

loc_0e6bae:
	dc.b $01,$d8,$e2,$f7,$05
	dc.b $01,$e0,$f0,$f0,$10
	dc.b $01,$ec,$00,$f1,$0d
	dc.b $00
	even

loc_0e6bbe:
	dc.b $01,$ca,$f8,$ef,$0f
	dc.b $00
	even

loc_0e6bc4:
	dc.b $01,$ca,$f8,$f5,$0b
	dc.b $00
	even

loc_0e6bca:
	dc.b $01,$d8,$f8,$ed,$11
	dc.b $00
	even

loc_0e6bd0:
	dc.b $01,$e8,$00,$e8,$18
	dc.b $00
	even

loc_0e6bd6:
	dc.b $01,$c7,$d3,$f2,$02
	dc.b $01,$d0,$e4,$ee,$0a
	dc.b $01,$dc,$00,$ee,$0d
	dc.b $00
	even

loc_0e6be6:
	dc.b $01,$ca,$d4,$f7,$01
	dc.b $01,$d2,$00,$f1,$06
	dc.b $01,$e8,$00,$f1,$0f
	dc.b $02,$d8,$e8,$f1,$0a
	dc.b $00
	even

loc_0e6bfc:
	dc.b $02,$c8,$e8,$fb,$0a
	dc.b $01,$ce,$00,$f4,$06
	dc.b $01,$e8,$00,$f1,$0f
	dc.b $00
	even


loc_0e6c0c:
	dc.b $02,$ce,$e8,$04,$10
	dc.b $01,$d0,$00,$f9,$0e
	dc.b $01,$e8,$00,$f2,$13
	dc.b $c8,$d4,$e4,$1a,$2c
	dc.b $40,$c4,$d4,$08,$24
	dc.b $2c,$d0,$e0,$0e,$24
	dc.b $00
	even

loc_0e6c2c:
	dc.b $01,$cb,$d5,$02,$0c
	dc.b $01,$d2,$00,$f7,$0a
	dc.b $01,$e8,$00,$f1,$10
	dc.b $02,$d4,$e8,$00,$10
	dc.b $00
	even

loc_0e6c42:
	dc.b $01,$cb,$d5,$fb,$05
	dc.b $01,$d2,$00,$f2,$0a
	dc.b $01,$e8,$00,$f1,$0f
	dc.b $00
	even

loc_0e6c52:
	dc.b $01,$ca,$d4,$00,$0a
	dc.b $01,$d0,$00,$f7,$10
	dc.b $01,$e8,$00,$f0,$12
	dc.b $02,$d0,$e0,$0a,$1a
	dc.b $00
	even

loc_0e6c68:
	dc.b $01,$cc,$d6,$08,$12
	dc.b $01,$d0,$f0,$fa,$16
	dc.b $01,$e8,$00,$f0,$12
	dc.b $80,$d2,$db,$22,$3a
	dc.b $42,$d0,$e2,$12,$22
	dc.b $2c,$d0,$df,$13,$2e
	dc.b $00
	even

loc_0e6c88:
	dc.b $01,$d8,$e2,$02,$0c
	dc.b $01,$e0,$f0,$f7,$13
	dc.b $01,$ec,$00,$f1,$0d
	dc.b $00
	even

loc_0e6c98:
	dc.b $01,$d9,$e3,$07,$13
	dc.b $01,$e0,$f0,$fb,$16
	dc.b $01,$ec,$00,$f3,$13
	dc.b $02,$e0,$f0,$10,$20
	dc.b $00
	even

loc_0e6cae:
	dc.b $01,$d9,$e3,$0e,$1a
	dc.b $01,$df,$f0,$fe,$1d
	dc.b $01,$ec,$00,$f2,$1a
	dc.b $80,$e0,$e9,$26,$3c
	dc.b $42,$df,$ee,$14,$26
	dc.b $2c,$de,$ec,$1a,$32
	dc.b $00
	even

loc_0e6cce:
	dc.b $01,$c4,$ce,$f5,$ff
	dc.b $01,$ca,$f0,$ed,$04
	dc.b $01,$e8,$00,$f1,$01
	dc.b $00
	even

loc_0e6cde:
	dc.b $01,$c4,$e8,$f8,$08
	dc.b $02,$dc,$ec,$fb,$12
	dc.b $01,$cb,$00,$f2,$00
	dc.b $00
	even

loc_0e6cee:
	dc.b $01,$c6,$d0,$04,$0e
	dc.b $01,$cc,$e8,$f8,$11
	dc.b $01,$cf,$00,$f1,$00
	dc.b $c0,$e8,$f8,$16,$26
	dc.b $2c,$e2,$f0,$10,$24
	dc.b $22,$e0,$ec,$08,$1c
	dc.b $00
	even

loc_0e6d0e:
	dc.b $01,$c1,$cd,$ed,$f9
	dc.b $01,$c9,$f0,$e7,$fd
	dc.b $01,$e8,$00,$ef,$00
	dc.b $00
	even

loc_0e6d1e:
	dc.b $01,$c4,$e8,$fa,$0a
	dc.b $02,$d8,$e8,$fb,$18
	dc.b $01,$cc,$00,$f2,$00
	dc.b $00
	even

loc_0e6d2e:
	dc.b $01,$c4,$f0,$fd,$09
	dc.b $01,$d1,$ec,$fc,$12
	dc.b $01,$ca,$00,$f2,$04
	dc.b $02,$d8,$e8,$10,$28
	dc.b $00
	even

loc_0e6d44:
	dc.b $01,$ca,$d6,$fa,$06
	dc.b $01,$d2,$f0,$fc,$14
	dc.b $01,$d4,$00,$f2,$06
	dc.b $88,$da,$e4,$28,$44
	dc.b $42,$d8,$e8,$14,$28
	dc.b $2c,$d8,$e6,$1e,$38
	dc.b $00
	even

loc_0e6d64:
	dc.b $01,$c4,$ce,$f5,$ff
	dc.b $01,$ca,$f0,$ed,$03
	dc.b $01,$e8,$00,$f1,$0a
	dc.b $00
	even

loc_0e6d74:
	dc.b $01,$d4,$e6,$fc,$11
	dc.b $01,$dc,$f0,$f4,$0d
	dc.b $01,$f0,$00,$f1,$0a
	dc.b $00
	even

loc_0e6d84:
	dc.b $01,$da,$e4,$04,$0e
	dc.b $01,$df,$00,$f4,$11
	dc.b $02,$ec,$00,$ef,$24
	dc.b $00
	even

loc_0e6d94:
	dc.b $01,$e0,$00,$f1,$10
	dc.b $02,$ea,$00,$e1,$1c
	dc.b $2c,$f0,$00,$e0,$25
	dc.b $88,$f0,$00,$00,$2e
	dc.b $00
	even

loc_0e6daa:
	dc.b $01,$d8,$e2,$05,$0f
	dc.b $01,$dc,$f0,$f6,$0e
	dc.b $01,$e8,$00,$f0,$0d
	dc.b $00
	even

loc_0e6dba:
	dc.b $01,$c7,$00,$00,$12
	dc.b $01,$d0,$e0,$fc,$12
	dc.b $02,$dd,$ed,$00,$1e
	dc.b $00
	even

loc_0e6dca:
	dc.b $02,$c4,$d4,$fc,$0c
	dc.b $01,$cc,$00,$00,$16
	dc.b $02,$e4,$00,$04,$1b
	dc.b $00
	even

loc_0e6dda:
	dc.b $01,$c6,$d0,$00,$0a
	dc.b $01,$cc,$00,$00,$14
	dc.b $02,$d8,$f0,$00,$18
	dc.b $c8,$dc,$ea,$18,$2b
	dc.b $28,$d4,$e4,$10,$20
	dc.b $00
	even

loc_0e6df4:
	dc.b $01,$c5,$cf,$00,$0a
	dc.b $01,$cb,$00,$f8,$0b
	dc.b $01,$e8,$00,$f4,$10
	dc.b $02,$d0,$e8,$01,$13
	dc.b $00
	even

loc_0e6e0a:
	dc.b $01,$c1,$ea,$ef,$04
	dc.b $01,$e0,$00,$f2,$0a
	dc.b $00
	even

loc_0e6e16:
	dc.b $01,$c4,$f0,$ea,$fe
	dc.b $01,$e8,$00,$f0,$00
	dc.b $00
	even

loc_0e6e22:
	dc.b $01,$c8,$f0,$fa,$16
	dc.b $01,$e0,$00,$f2,$16
	dc.b $02,$d0,$e8,$08,$22
	dc.b $00
	even

loc_0e6e32:
	dc.b $01,$d0,$e0,$00,$1e
	dc.b $01,$dc,$f0,$f8,$1a
	dc.b $01,$ec,$00,$f1,$18
	dc.b $8c,$d0,$de,$2f,$3f
	dc.b $6c,$d2,$e2,$1d,$2f
	dc.b $22,$d4,$e4,$11,$24
	dc.b $00
	even

loc_0e6e52:
	dc.b $01,$cb,$e4,$03,$17
	dc.b $01,$d2,$f0,$f9,$13
	dc.b $01,$ec,$00,$f2,$13
	dc.b $02,$ce,$e0,$11,$24
	dc.b $00
	even

loc_0e6e68:
	dc.b $01,$cc,$d6,$06,$10
	dc.b $01,$d2,$00,$f8,$12
	dc.b $01,$e8,$00,$f2,$12
	dc.b $02,$d2,$e2,$ff,$1b
	dc.b $00
	even

loc_0e6e7e:
	dc.b $01,$e0,$00,$f9,$12
	dc.b $01,$e8,$00,$08,$1e
	dc.b $01,$f0,$00,$f0,$0f
	dc.b $02,$f0,$00,$10,$24
	dc.b $00
	even

loc_0e6e94:
	dc.b $01,$ec,$00,$00,$22
	dc.b $0c,$e4,$00,$00,$1a
	dc.b $01,$e4,$00,$f1,$0a
	dc.b $02,$f0,$00,$10,$2c
	dc.b $00
	even

loc_0e6eaa:
	dc.b $01,$ea,$00,$f2,$2e
	dc.b $88,$e2,$f0,$28,$3f
	dc.b $22,$e4,$f0,$0a,$36
	dc.b $4c,$e2,$f0,$1a,$2e
	dc.b $00
	even

loc_0e6ec0:
	dc.b $01,$dc,$00,$0c,$27
	dc.b $01,$e4,$f0,$00,$27
	dc.b $01,$ec,$00,$f2,$2e
	dc.b $00
	even

loc_0e6ed0:
	dc.b $01,$ce,$d8,$fb,$05
	dc.b $01,$d4,$f0,$f4,$09
	dc.b $01,$de,$f0,$ee,$0d
	dc.b $00
	even

loc_0e6ee0:
	dc.b $01,$c8,$dc,$f3,$05
	dc.b $0c,$dc,$f0,$fc,$10
	dc.b $02,$cd,$dc,$ee,$0a
	dc.b $28,$e4,$f0,$ff,$19
	dc.b $c0,$ec,$00,$07,$22
	dc.b $00
	even

loc_0e6efa:
	dc.b $01,$c4,$d4,$ee,$0c
	dc.b $01,$d0,$e0,$f6,$0c
	dc.b $0c,$e0,$f0,$00,$18
	dc.b $2c,$ec,$fc,$0e,$24
	dc.b $6c,$fc,$0c,$16,$2e
	dc.b $00
	even

loc_0e6f14:
	dc.b $01,$bc,$d8,$ec,$0b
	dc.b $01,$d8,$f0,$fa,$14
	dc.b $0c,$f0,$00,$0e,$2b
	dc.b $0c,$00,$0c,$1c,$37
	dc.b $00
	even

loc_0e6f2a:
	dc.b $01,$c1,$d8,$ec,$0a
	dc.b $01,$d8,$e8,$f8,$0e
	dc.b $02,$e2,$f0,$00,$18
	dc.b $0c,$f0,$fe,$0a,$25
	dc.b $0c,$fe,$0c,$19,$33
	dc.b $00
	even

loc_0e6f44:
	dc.b $01,$c3,$e9,$f8,$0a
	dc.b $01,$c9,$d5,$ec,$0c
	dc.b $01,$e3,$f5,$04,$17
	dc.b $02,$ef,$fe,$13,$23
	dc.b $00
	even

loc_0e6f5a:
	dc.b $01,$ce,$e0,$e8,$01
	dc.b $01,$d4,$e6,$fc,$16
	dc.b $02,$dc,$f3,$0a,$19
	dc.b $00
	even

loc_0e6f6a:
	dc.b $01,$cc,$ed,$ed,$09
	dc.b $02,$d0,$f3,$fa,$11
	dc.b $00
	even

loc_0e6f76:
	dc.b $01,$dc,$ee,$fa,$11
	dc.b $01,$d0,$e3,$ea,$0c
	dc.b $02,$cd,$f3,$fa,$0a
	dc.b $00
	even

loc_0e6f86:
	dc.b $01,$d0,$e8,$f9,$0f
	dc.b $01,$d6,$f0,$f0,$05
	dc.b $02,$f0,$fc,$ef,$fc
	dc.b $02,$da,$ea,$05,$16
	dc.b $00
	even

loc_0e6f9c:
	dc.b $01,$cb,$e8,$f4,$0a
	dc.b $02,$de,$ee,$fc,$10
	dc.b $01,$db,$f5,$f9,$05
	dc.b $00
	even

loc_0e6fac:
	dc.b $01,$c8,$00,$00,$14
	dc.b $01,$d0,$e0,$fc,$12
	dc.b $02,$e0,$f0,$00,$1d
	dc.b $00
	even

loc_0e6fbc:
	dc.b $01,$c5,$00,$00,$14
	dc.b $02,$d0,$f0,$10,$1c
	dc.b $0c,$d4,$ec,$07,$24
	dc.b $00
	even

loc_0e6fcc:
	dc.b $01,$ce,$e0,$0e,$20
	dc.b $01,$d0,$00,$00,$12
	dc.b $02,$d3,$f0,$07,$20
	dc.b $00
	even

loc_0e6fdc:
	dc.b $01,$d1,$e4,$0e,$20
	dc.b $01,$cb,$00,$00,$12
	dc.b $02,$c6,$e4,$f0,$0b
	dc.b $00
	even

loc_0e6fec:
	dc.b $01,$d8,$f0,$06,$1c
	dc.b $01,$ca,$00,$04,$14
	dc.b $02,$b8,$e8,$00,$10
	dc.b $0c,$b4,$ec,$f9,$0d
	dc.b $c0,$aa,$b8,$00,$12
	dc.b $00
	even

loc_0e7006:
	dc.b $01,$d0,$ec,$ff,$18
	dc.b $01,$d0,$00,$04,$12
	dc.b $02,$d0,$e0,$f9,$17
	dc.b $02,$c0,$d0,$0e,$1d
	dc.b $80,$b0,$c4,$22,$34
	dc.b $48,$ac,$c0,$12,$2c
	dc.b $2c,$b4,$c4,$10,$24
	dc.b $00
	even

loc_0e702a:
	dc.b $01,$d0,$ec,$01,$18
	dc.b $01,$d0,$00,$04,$12
	dc.b $02,$d0,$e0,$f9,$1a
	dc.b $02,$c2,$d0,$10,$24
	dc.b $88,$c0,$d8,$2c,$40
	dc.b $6c,$b8,$cc,$24,$3c
	dc.b $00
	even

loc_0e704a:
	dc.b $01,$d0,$ec,$00,$18
	dc.b $01,$d0,$00,$06,$12
	dc.b $02,$d0,$e0,$f9,$19
	dc.b $01,$c0,$d0,$0f,$1f
	dc.b $02,$b6,$c6,$1d,$34
	dc.b $00
	even

loc_0e7064:
	dc.b $01,$d8,$f0,$fc,$1c
	dc.b $01,$c8,$00,$04,$14
	dc.b $02,$b0,$d8,$06,$1d
	dc.b $00
	even

loc_0e7074:
	dc.b $01,$cb,$e0,$06,$1e
	dc.b $02,$d4,$f0,$06,$22
	dc.b $01,$d0,$00,$04,$14
	dc.b $02,$bc,$e0,$f6,$0a
	dc.b $00
	even

loc_0e708a:
	dc.b $01,$dd,$f0,$f8,$1a
	dc.b $01,$f0,$00,$f1,$1a
	dc.b $02,$e8,$00,$00,$24
	dc.b $00
	even

loc_0e709a:
	dc.b $01,$db,$fd,$02,$14
	dc.b $01,$e2,$00,$f9,$1a
	dc.b $02,$e0,$00,$08,$20
	dc.b $00
	even

loc_0e70aa:
	dc.b $01,$d8,$e4,$00,$0c
	dc.b $01,$e0,$f0,$fd,$28
	dc.b $01,$ec,$00,$fa,$1a
	dc.b $02,$d8,$ec,$1a,$34
	dc.b $00
	even

loc_0e70c0:
	dc.b $01,$d8,$e4,$02,$0e
	dc.b $01,$e0,$f0,$fe,$2a
	dc.b $01,$ec,$00,$fa,$1a
	dc.b $22,$dc,$ec,$1a,$34
	dc.b $8c,$d8,$e8,$2e,$48
	dc.b $00
	even

loc_0e70da:
	dc.b $01,$cd,$e0,$f5,$11
	dc.b $01,$d2,$f0,$f8,$11
	dc.b $02,$e0,$f8,$fb,$09
	dc.b $02,$d8,$e8,$08,$23
	dc.b $88,$e2,$f0,$23,$38
	dc.b $6c,$dd,$ec,$15,$2d
	dc.b $00
	even

loc_0e70fa:
	dc.b $01,$cc,$da,$00,$10
	dc.b $02,$d0,$e8,$f5,$0d
	dc.b $01,$d0,$ed,$f3,$05
	dc.b $02,$dc,$f4,$ef,$fc
	dc.b $00
	even

loc_0e7110:
	dc.b $01,$c7,$df,$f3,$0e
	dc.b $01,$d7,$e8,$f0,$04
	dc.b $02,$e2,$f0,$ec,$fa
	dc.b $02,$d4,$e4,$f1,$15
	dc.b $c8,$e6,$fa,$16,$28
	dc.b $2c,$e0,$f0,$0f,$20
	dc.b $2c,$da,$e8,$08,$18
	dc.b $00
	even

loc_0e7134:
	dc.b $01,$c9,$f3,$f3,$05
	dc.b $0c,$e3,$f3,$fc,$16
	dc.b $01,$d3,$ed,$fc,$0b
	dc.b $02,$cc,$f0,$ed,$05
	dc.b $00
	even

loc_0e714a:
	dc.b $01,$c8,$ed,$01,$0d
	dc.b $01,$d0,$f3,$f6,$01
	dc.b $02,$d0,$f0,$01,$13
	dc.b $00
	even

loc_0e715a:
	dc.b $01,$ce,$e8,$fb,$10
	dc.b $01,$d4,$f6,$f6,$07
	dc.b $02,$e6,$f6,$ee,$07
	dc.b $40,$e8,$fb,$07,$1d
	dc.b $80,$d6,$f3,$17,$29
	dc.b $2c,$d9,$f0,$07,$1f
	dc.b $00
	even

loc_0e717a:
	dc.b $01,$ce,$e8,$fb,$10
	dc.b $01,$d4,$f6,$f6,$07
	dc.b $02,$e6,$f6,$ee,$07
	dc.b $02,$d6,$f0,$02,$17
	dc.b $40,$c4,$da,$17,$28
	dc.b $c0,$ba,$ce,$12,$22
	dc.b $2c,$c6,$e4,$0c,$1e
	dc.b $00
	even

loc_0e719e:
	dc.b $01,$ce,$e8,$fb,$10
	dc.b $01,$d4,$f6,$f6,$07
	dc.b $02,$e6,$f6,$ee,$07
	dc.b $02,$c8,$e4,$07,$17
	dc.b $0c,$bd,$df,$11,$1e
	dc.b $20,$bc,$c8,$17,$1f
	dc.b $00
	even

loc_0e71be:
	dc.b $01,$ce,$e8,$fa,$0a
	dc.b $01,$d4,$f0,$f2,$05
	dc.b $0c,$d8,$f8,$f7,$10
	dc.b $00
	even

loc_0e71ce:
	dc.b $01,$cc,$e6,$f0,$04
	dc.b $02,$d6,$ea,$f6,$0f
	dc.b $c8,$e0,$ee,$0f,$25
	dc.b $4c,$ea,$f6,$fe,$1a
	dc.b $28,$d8,$ee,$00,$16
	dc.b $00
	even

loc_0e71e8:
	dc.b $01,$ce,$e8,$f5,$07
	dc.b $01,$d8,$f0,$ed,$0d
	dc.b $02,$e0,$f0,$e8,$13
	dc.b $c8,$b5,$c8,$06,$16
	dc.b $40,$c3,$e4,$12,$24
	dc.b $28,$bd,$ed,$00,$12
	dc.b $00
	even


loc_0e7208:
	dc.b $01,$cc,$e4,$f0,$04
	dc.b $01,$d8,$ec,$f6,$11
	dc.b $02,$e0,$ec,$f6,$18
	dc.b $02,$d4,$f4,$fd,$0a
	dc.b $00
	even

loc_0e721e:
	dc.b $01,$cc,$e4,$f6,$0f
	dc.b $01,$dc,$f0,$f3,$0a
	dc.b $02,$c9,$f8,$ec,$04
	dc.b $00
	even

loc_0e722e:
	dc.b $01,$cc,$e0,$fc,$12
	dc.b $01,$d4,$f0,$f3,$0f
	dc.b $02,$d9,$f7,$eb,$04
	dc.b $00
	even

loc_0e723e:
	dc.b $01,$cb,$ec,$ff,$11
	dc.b $01,$d0,$f5,$f8,$0a
	dc.b $02,$dc,$f8,$ef,$10
	dc.b $00
	even

loc_0e724e:
	dc.b $01,$cb,$f0,$fe,$0e
	dc.b $01,$d0,$f4,$f5,$08
	dc.b $02,$e8,$f8,$f0,$00
	dc.b $02,$d8,$f4,$00,$20
	dc.b $00
	even

loc_0e7264:
	dc.b $01,$c9,$f2,$fe,$0c
	dc.b $01,$cf,$f8,$f1,$01
	dc.b $02,$d1,$f0,$f6,$18
	dc.b $8c,$e6,$f8,$2a,$3e
	dc.b $6c,$e0,$ef,$20,$32
	dc.b $22,$da,$e6,$16,$25
	dc.b $00
	even

loc_0e7284:
	dc.b $01,$c9,$f0,$fc,$0c
	dc.b $01,$d6,$f7,$f0,$04
	dc.b $01,$d0,$ec,$f6,$17
	dc.b $02,$d8,$e8,$10,$23
	dc.b $00
	even

loc_0e729a:
	dc.b $01,$c9,$f0,$fc,$0d
	dc.b $01,$d6,$f7,$f0,$04
	dc.b $01,$ce,$ea,$f6,$17
	dc.b $00
	even

loc_0e72aa:
	dc.b $01,$cd,$df,$fe,$12
	dc.b $01,$d0,$ee,$f0,$0d
	dc.b $02,$cd,$f5,$ee,$00
	dc.b $00
	even

loc_0e72ba:
	dc.b $01,$c9,$ec,$01,$0d
	dc.b $01,$d0,$f0,$f3,$05
	dc.b $02,$e9,$f5,$ec,$fe
	dc.b $02,$c4,$d6,$00,$18
	dc.b $00
	even

loc_0e72d0:
	dc.b $01,$cb,$ec,$01,$0d
	dc.b $01,$d1,$f5,$f0,$01
	dc.b $02,$ce,$e6,$0b,$1e
	dc.b $0c,$d0,$e2,$18,$2c
	dc.b $08,$d8,$ee,$01,$2c
	dc.b $00
	even

loc_0e72ea:
	dc.b $01,$cb,$f0,$fe,$0a
	dc.b $01,$cd,$f5,$ee,$ff
	dc.b $22,$d8,$f3,$0a,$1e
	dc.b $8c,$ec,$fe,$10,$2f
	dc.b $4c,$d8,$f2,$1e,$32
	dc.b $00
	even

loc_0e7304:
	dc.b $01,$cb,$db,$ec,$0a
	dc.b $01,$db,$ec,$f2,$0e
	dc.b $02,$db,$f8,$ec,$08
	dc.b $6c,$ec,$00,$f8,$12
	dc.b $00
	even

loc_0e731a:
	dc.b $01,$ca,$f1,$f0,$09
	dc.b $01,$db,$ec,$f2,$0e
	dc.b $02,$d0,$f8,$e5,$00
	dc.b $00
	even

loc_0e732a:
	dc.b $01,$cc,$f6,$fc,$0a
	dc.b $01,$d4,$f0,$ec,$14
	dc.b $02,$e0,$f4,$f4,$1d
	dc.b $00
	even

loc_0e733a:
	dc.b $01,$cd,$db,$f6,$04
	dc.b $01,$d5,$ec,$f0,$16
	dc.b $02,$e0,$f0,$f0,$24
	dc.b $02,$ce,$e0,$e9,$14
	dc.b $8c,$ea,$f5,$0c,$38
	dc.b $2c,$e5,$f1,$f0,$2a
	dc.b $00
	even

loc_0e735a:
	dc.b $01,$cd,$f3,$fa,$06
	dc.b $01,$d2,$f0,$ed,$0e
	dc.b $02,$e0,$f4,$fa,$1c
	dc.b $00
	even

loc_0e736a:
	dc.b $01,$cd,$f3,$fc,$0c
	dc.b $01,$d6,$f5,$f6,$04
	dc.b $c8,$e6,$f5,$00,$1c
	dc.b $2c,$e0,$f0,$00,$12
	dc.b $28,$e8,$f8,$f1,$0a
	dc.b $22,$e8,$f0,$eb,$12
	dc.b $00
	even

loc_0e738a:
	dc.b $01,$c8,$f0,$f6,$07
	dc.b $02,$e4,$f2,$ed,$0d
	dc.b $02,$c2,$f8,$ed,$f6
	dc.b $00
	even

loc_0e739a:
	dc.b $01,$c6,$d6,$01,$0d
	dc.b $01,$d0,$f1,$f4,$07
	dc.b $02,$c8,$ef,$fc,$0d
	dc.b $02,$ec,$f8,$ea,$f8
	dc.b $00
	even

loc_0e73b0:
	dc.b $01,$c9,$ea,$00,$0c
	dc.b $02,$c9,$e4,$08,$18
	dc.b $01,$d0,$f2,$f3,$03
	dc.b $02,$ec,$f6,$ec,$fa
	dc.b $8c,$c9,$df,$18,$2c
	dc.b $00
	even

loc_0e73ca:
	dc.b $01,$c9,$ec,$01,$0d
	dc.b $01,$d0,$f0,$f2,$03
	dc.b $02,$e8,$f2,$ed,$fc
	dc.b $88,$e0,$f2,$10,$2b
	dc.b $6c,$d2,$e8,$18,$2f
	dc.b $22,$dc,$f0,$03,$18
	dc.b $00
	even

loc_0e73ea:
	dc.b $01,$c9,$eb,$01,$0d
	dc.b $01,$d0,$f0,$f3,$03
	dc.b $02,$e0,$f8,$f1,$10
	dc.b $88,$f0,$00,$00,$18
	dc.b $44,$e8,$fa,$0a,$24
	dc.b $00
	even

loc_0e7404:
	dc.b $01,$c9,$eb,$01,$0d
	dc.b $01,$d1,$f8,$f2,$03
	dc.b $02,$e0,$00,$f6,$06
	dc.b $00
	even

loc_0e7414:
	dc.b $02,$be,$f0,$04,$0e
	dc.b $01,$c6,$e0,$fc,$0f
	dc.b $01,$d0,$00,$00,$11
	dc.b $02,$d0,$e4,$f8,$19
	dc.b $00
	even

loc_0e742a:
	dc.b $01,$c6,$e0,$f9,$0a
	dc.b $01,$d4,$00,$02,$14
	dc.b $02,$d0,$e8,$02,$1b
	dc.b $00
	even

loc_0e743a:
	dc.b $01,$c4,$e0,$f9,$09
	dc.b $01,$d0,$00,$08,$17
	dc.b $02,$c8,$e0,$08,$17
	dc.b $80,$b0,$c8,$13,$22
	dc.b $2c,$bd,$d0,$0c,$1b
	dc.b $00
	even

loc_0e7454:
	dc.b $01,$c0,$d8,$f4,$0d
	dc.b $01,$cc,$00,$00,$0c
	dc.b $02,$b0,$e0,$08,$10
	dc.b $00
	even

loc_0e7464:
	dc.b $01,$cc,$f0,$00,$17
	dc.b $01,$c9,$00,$03,$12
	dc.b $02,$c8,$e0,$0e,$22
	dc.b $88,$b8,$cc,$14,$2c
	dc.b $44,$b4,$cc,$08,$20
	dc.b $00
	even

loc_0e747e:
	dc.b $01,$cb,$d7,$0c,$18
	dc.b $01,$d6,$f0,$00,$1b
	dc.b $01,$d2,$00,$04,$14
	dc.b $44,$c8,$f0,$22,$32
	dc.b $88,$e0,$f0,$1a,$32
	dc.b $22,$d0,$e8,$18,$2a
	dc.b $00
	even

loc_0e749e:
	dc.b $01,$c7,$d3,$0b,$17
	dc.b $01,$cf,$ec,$00,$17
	dc.b $01,$e8,$00,$fc,$0f
	dc.b $02,$d0,$e8,$0d,$22
	dc.b $00
	even

loc_0e74b4:
	dc.b $01,$c6,$d2,$f1,$fd
	dc.b $01,$cc,$e0,$e3,$00
	dc.b $01,$e0,$00,$ec,$02
	dc.b $00
	even

loc_0e74c4:
	dc.b $01,$c4,$d0,$f3,$ff
	dc.b $01,$cc,$f0,$ed,$05
	dc.b $01,$cc,$00,$ed,$fa
	dc.b $00
	even

loc_0e74d4:
	dc.b $01,$c8,$e8,$00,$16
	dc.b $01,$cd,$f0,$f8,$0f
	dc.b $01,$f0,$00,$f1,$03
	dc.b $00
	even

loc_0e74e4:
	dc.b $01,$d0,$f0,$02,$1c
	dc.b $01,$e6,$f6,$eb,$07
	dc.b $02,$f0,$fc,$df,$ef
	dc.b $02,$d8,$f0,$f4,$21
	dc.b $22,$dc,$e4,$12,$24
	dc.b $20,$d8,$f2,$07,$1c
	dc.b $c0,$dc,$ee,$0b,$18
	dc.b $00
	even

loc_0e7508:
	dc.b $01,$cd,$f0,$f6,$0c
	dc.b $01,$ec,$00,$ec,$0c
	dc.b $02,$e0,$f0,$ec,$17
	dc.b $00
	even

loc_0e7518:
	dc.b $01,$c8,$e0,$ee,$02
	dc.b $01,$d8,$f0,$f4,$08
	dc.b $01,$e0,$00,$fa,$0e
	dc.b $00
	even

loc_0e7528:
	dc.b $01,$c8,$d2,$f0,$fa
	dc.b $01,$d0,$e4,$ed,$03
	dc.b $01,$e4,$00,$f0,$0d
	dc.b $02,$d8,$e4,$ea,$0d
	dc.b $00
	even

loc_0e753e:
	dc.b $01,$d0,$e4,$e7,$f9
	dc.b $02,$d8,$e4,$e1,$00
	dc.b $01,$e0,$f0,$ed,$06
	dc.b $01,$f0,$00,$ef,$0d
	dc.b $00
	even

loc_0e7554:
	dc.b $01,$d8,$ea,$02,$0e
	dc.b $01,$dc,$f0,$f4,$0a
	dc.b $01,$e4,$00,$f0,$0e
	dc.b $00
	even

loc_0e7564:
	dc.b $01,$e4,$00,$fd,$1d
	dc.b $01,$e8,$00,$f0,$10
	dc.b $0c,$dc,$00,$f8,$15
	dc.b $00
	even

loc_0e7574:
	dc.b $01,$e2,$00,$fd,$1a
	dc.b $01,$e6,$00,$f0,$10
	dc.b $0c,$dc,$00,$f8,$15
	dc.b $00
	even

loc_0e7584:
	dc.b $01,$d7,$e3,$03,$0f
	dc.b $01,$dc,$f0,$f6,$0f
	dc.b $01,$e8,$00,$f0,$13
	dc.b $00
	even

loc_0e7594:
	dc.b $01,$d1,$00,$f5,$0a
	dc.b $01,$e0,$00,$f1,$0f
	dc.b $00
	even

loc_0e75a0:
	dc.b $01,$c9,$f0,$f8,$08
	dc.b $02,$e8,$f8,$fa,$06
	dc.b $02,$c9,$d8,$ed,$13
	dc.b $00
	even

loc_0e75b0:
	dc.b $01,$d0,$e8,$f0,$10
	dc.b $01,$dc,$f0,$f6,$0a
	dc.b $02,$c8,$d8,$e8,$18
	dc.b $2c,$c0,$d0,$d8,$28
	dc.b $00
	even

loc_0e75c6:
	dc.b $01,$d8,$e8,$ee,$12
	dc.b $01,$d4,$ee,$f6,$0a
	dc.b $0c,$d8,$f2,$e0,$20
	dc.b $c0,$c0,$d8,$d8,$28
	dc.b $00
	even

loc_0e75dc:
	dc.b $01,$dc,$e8,$ee,$12
	dc.b $01,$d8,$f0,$f6,$0a
	dc.b $c0,$d0,$00,$e0,$20
	dc.b $00
	even

loc_0e75ec:
	dc.b $01,$e8,$00,$ea,$16
	dc.b $02,$e0,$00,$f4,$0a
	dc.b $00
	even

loc_0e75f8:
	dc.b $01,$c2,$cc,$fd,$07
	dc.b $01,$cb,$00,$f7,$0c
	dc.b $01,$ec,$00,$f4,$0f
	dc.b $00
	even

loc_0e7608:
	dc.b $01,$c3,$cf,$fc,$08
	dc.b $01,$ca,$00,$f7,$0a
	dc.b $00
	even

loc_0e7614:
	dc.b $01,$c9,$d3,$07,$11
	dc.b $01,$d3,$00,$00,$16
	dc.b $00
	even

loc_0e7620:
	dc.b $01,$c9,$d5,$fb,$07
	dc.b $01,$d0,$00,$f4,$0c
	dc.b $01,$e4,$00,$ed,$13
	dc.b $02,$d2,$e4,$e8,$18
	dc.b $00
	even

loc_0e7636:
	dc.b $01,$c9,$d5,$f5,$01
	dc.b $01,$d0,$00,$f0,$08
	dc.b $01,$e4,$00,$ec,$12
	dc.b $02,$d0,$e4,$e3,$13
	dc.b $00
	even

loc_0e764c:
	dc.b $01,$c9,$d5,$f3,$ff
	dc.b $01,$d0,$00,$eb,$03
	dc.b $01,$e4,$00,$eb,$11
	dc.b $02,$d0,$e4,$e2,$0e
	dc.b $00
	even

loc_0e7662:
	dc.b $01,$c9,$d5,$01,$0d
	dc.b $01,$d0,$00,$f8,$10
	dc.b $01,$e4,$00,$ee,$14
	dc.b $02,$d0,$e4,$ed,$05
	dc.b $02,$d5,$e4,$05,$1d
	dc.b $00
	even

loc_0e767c:
	dc.b $01,$cb,$d7,$06,$12
	dc.b $01,$d0,$00,$fb,$13
	dc.b $01,$e4,$00,$f0,$16
	dc.b $02,$d0,$e4,$f2,$0a
	dc.b $02,$d5,$e4,$0a,$22
	dc.b $00
	even

loc_0e7696:
	dc.b $01,$cb,$d5,$f8,$02
	dc.b $01,$d1,$00,$f0,$06
	dc.b $00
	even

;0e76a2
