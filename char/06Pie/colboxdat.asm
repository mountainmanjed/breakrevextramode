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

loc_0e76a2:
	dc.b $01,$cb,$e8,$f4,$02
	dc.b $01,$d2,$f0,$ec,$0a
	dc.b $01,$ec,$00,$ee,$12
	dc.b $02,$d8,$00,$ef,$0e
	dc.b $02,$c6,$d6,$eb,$f8
	dc.b $00
	even

loc_0e76bc:
	dc.b $01,$cb,$e8,$fa,$06
	dc.b $01,$d2,$f0,$f1,$0f
	dc.b $01,$e8,$00,$ed,$13
	dc.b $00
	even

loc_0e76cc:
	dc.b $01,$cf,$d8,$ee,$03
	dc.b $01,$d8,$f0,$ef,$0e
	dc.b $01,$e8,$00,$ef,$10
	dc.b $00
	even

loc_0e76dc:
	dc.b $01,$d6,$df,$f8,$01
	dc.b $01,$dc,$f0,$ec,$0a
	dc.b $01,$e0,$00,$f0,$0f
	dc.b $00
	even

loc_0e76ec:
	dc.b $01,$d8,$e1,$fa,$03
	dc.b $01,$de,$f0,$ec,$0b
	dc.b $01,$e8,$00,$f0,$0f
	dc.b $00
	even

loc_0e76fc:
	dc.b $01,$d8,$e2,$fb,$05
	dc.b $01,$e0,$00,$f0,$10
	dc.b $00
	even

loc_0e7708:
	dc.b $01,$c8,$d8,$ee,$06
	dc.b $01,$d0,$00,$f2,$0c
	dc.b $01,$ec,$00,$f2,$10
	dc.b $02,$d8,$00,$ec,$10
	dc.b $00
	even

loc_0e771e:
	dc.b $01,$c8,$d8,$ee,$06
	dc.b $01,$d0,$00,$f2,$0c
	dc.b $01,$ec,$00,$f2,$10
	dc.b $02,$d8,$00,$ec,$10
	dc.b $00
	even

loc_0e7734:
	dc.b $01,$cf,$d8,$ee,$03
	dc.b $01,$d8,$f0,$ef,$0e
	dc.b $01,$e8,$00,$ef,$10
	dc.b $00
	even

loc_0e7744:
	dc.b $01,$c4,$f0,$f8,$04
	dc.b $01,$ca,$e8,$f2,$0a
	dc.b $0c,$c8,$fc,$f8,$02
	dc.b $02,$d0,$dc,$f3,$12
	dc.b $00
	even

loc_0e775a:
	dc.b $01,$c6,$f4,$fb,$09
	dc.b $01,$ca,$e2,$f2,$0a
	dc.b $02,$d6,$e6,$f2,$12
	dc.b $00
	even

loc_0e776a:
	dc.b $01,$c4,$f4,$f8,$04
	dc.b $01,$ca,$e8,$f2,$0a
	dc.b $02,$c8,$fc,$f8,$02
	dc.b $02,$d0,$dc,$f3,$12
	dc.b $00
	even

loc_0e7780:
	dc.b $01,$cd,$de,$f7,$12
	dc.b $01,$c6,$d6,$f9,$07
	dc.b $01,$dc,$ee,$ef,$01
	dc.b $02,$d0,$e4,$f7,$12
	dc.b $02,$ec,$f8,$ec,$f8
	dc.b $00
	even

loc_0e779a:
	dc.b $01,$cc,$e2,$02,$14
	dc.b $01,$d6,$ea,$f2,$08
	dc.b $01,$ea,$f2,$e8,$f8
	dc.b $00
	even

loc_0e77aa:
	dc.b $01,$d8,$f0,$fe,$14
	dc.b $01,$d2,$e5,$f7,$09
	dc.b $01,$ce,$da,$e9,$00
	dc.b $00
	even

loc_0e77ba:
	dc.b $01,$e5,$f3,$f4,$10
	dc.b $01,$ba,$ed,$f8,$08
	dc.b $00
	even

loc_0e77c6:
	dc.b $01,$d8,$f0,$ec,$02
	dc.b $01,$d2,$e5,$f6,$08
	dc.b $01,$ce,$da,$00,$17
	dc.b $00
	even

loc_0e77d6:
	dc.b $01,$cc,$e2,$ea,$00
	dc.b $01,$d6,$ea,$f6,$0c
	dc.b $01,$ea,$f2,$06,$16
	dc.b $00
	even

loc_0e77e6:
	dc.b $01,$c7,$e9,$f4,$00
	dc.b $01,$cd,$e0,$ec,$06
	dc.b $01,$da,$f0,$00,$0e
	dc.b $02,$ec,$f8,$04,$10
	dc.b $00
	even

loc_0e77fc:
	dc.b $01,$c4,$00,$f0,$10
	dc.b $00
	even

loc_0e7802:
	dc.b $01,$d5,$00,$ea,$0e
	dc.b $00
	even

loc_0e7808:
	dc.b $01,$c9,$e0,$e4,$fe
	dc.b $01,$d0,$f0,$ea,$0c
	dc.b $01,$e8,$00,$ee,$12
	dc.b $00
	even

loc_0e7818:
	dc.b $01,$ca,$e7,$f0,$fe
	dc.b $01,$d1,$e8,$e8,$0a
	dc.b $01,$e0,$f0,$e8,$0e
	dc.b $01,$e8,$00,$ee,$12
	dc.b $00
	even

loc_0e782e:
	dc.b $01,$ca,$df,$ea,$06
	dc.b $01,$d0,$f0,$e3,$0b
	dc.b $01,$e8,$00,$eb,$12
	dc.b $00
	even

loc_0e783e:
	dc.b $01,$ca,$e7,$f5,$03
	dc.b $01,$d0,$e8,$eb,$0a
	dc.b $01,$e0,$f0,$e8,$0e
	dc.b $01,$f0,$00,$ee,$12
	dc.b $00
	even

loc_0e7854:
	dc.b $01,$d8,$f0,$e7,$02
	dc.b $01,$de,$f0,$e7,$0c
	dc.b $01,$e8,$00,$ed,$11
	dc.b $00
	even

loc_0e7864:
	dc.b $01,$d8,$e1,$f5,$05
	dc.b $01,$de,$f0,$eb,$0d
	dc.b $01,$e8,$00,$ee,$0f
	dc.b $00
	even

loc_0e7874:
	dc.b $01,$c4,$f8,$ea,$0f
	dc.b $00
	even

loc_0e787a:
	dc.b $01,$c4,$f8,$f2,$0a
	dc.b $00
	even

loc_0e7880:
	dc.b $01,$d4,$f8,$ea,$0f
	dc.b $00
	even

loc_0e7886:
	dc.b $01,$e8,$00,$e8,$18
	dc.b $00
	even

loc_0e788c:
	dc.b $01,$c6,$e0,$f8,$08
	dc.b $01,$d0,$f0,$f1,$0f
	dc.b $01,$ec,$00,$ee,$12
	dc.b $02,$d8,$00,$ee,$12
	dc.b $02,$c9,$d9,$f4,$0c
	dc.b $00
	even

loc_0e78a6:
	dc.b $01,$cd,$e8,$f0,$04
	dc.b $01,$d5,$f0,$f0,$0d
	dc.b $01,$e8,$00,$ed,$13
	dc.b $00
	even

loc_0e78b6:
	dc.b $01,$cd,$f0,$f8,$0d
	dc.b $02,$d5,$f0,$f5,$12
	dc.b $01,$e8,$00,$ef,$16
	dc.b $c0,$d6,$e3,$10,$25
	dc.b $68,$d0,$e3,$04,$18
	dc.b $00
	even

loc_0e78d0:
	dc.b $01,$cd,$f0,$f6,$0c
	dc.b $01,$d4,$f0,$f6,$11
	dc.b $01,$e8,$00,$ee,$16
	dc.b $02,$d8,$f0,$10,$1a
	dc.b $00
	even

loc_0e78e6:
	dc.b $01,$cc,$f0,$f1,$0a
	dc.b $01,$d4,$00,$f0,$12
	dc.b $02,$dc,$ec,$0c,$20
	dc.b $01,$e8,$00,$ee,$17
	dc.b $00
	even

loc_0e78fc:
	dc.b $01,$cd,$f0,$f8,$0f
	dc.b $01,$d5,$f0,$f8,$15
	dc.b $01,$e8,$00,$ef,$18
	dc.b $02,$da,$f0,$14,$22
	dc.b $80,$e6,$f0,$22,$3c
	dc.b $2c,$e0,$f0,$1c,$30
	dc.b $00
	even


loc_0e791c:
	dc.b $01,$cd,$f0,$f8,$0e
	dc.b $01,$d4,$f0,$f6,$13
	dc.b $01,$e8,$00,$f0,$18
	dc.b $02,$d8,$e8,$10,$1f
	dc.b $00
	even

loc_0e7932:
	dc.b $01,$d3,$e0,$fb,$0b
	dc.b $01,$dc,$f0,$f4,$0d
	dc.b $01,$e8,$00,$f0,$10
	dc.b $00
	even

loc_0e7942:
	dc.b $01,$d5,$e4,$f1,$08
	dc.b $01,$de,$00,$f1,$12
	dc.b $02,$d5,$ec,$04,$20
	dc.b $00
	even

loc_0e7952:
	dc.b $01,$d8,$ea,$fc,$0c
	dc.b $01,$e0,$00,$f2,$12
	dc.b $02,$d0,$e0,$f6,$04
	dc.b $22,$e8,$00,$12,$1e
	dc.b $8c,$e8,$00,$1e,$32
	dc.b $44,$d8,$f0,$18,$2e
	dc.b $00
	even

loc_0e7972:
	dc.b $01,$d8,$ec,$ee,$0c
	dc.b $01,$e4,$00,$f0,$10
	dc.b $02,$ec,$00,$ee,$1e
	dc.b $00
	even

loc_0e7982:
	dc.b $02,$cb,$e8,$f8,$08
	dc.b $01,$d1,$f0,$f6,$0b
	dc.b $01,$ec,$00,$ee,$12
	dc.b $00
	even

loc_0e7992:
	dc.b $01,$cd,$f3,$fe,$11
	dc.b $01,$e0,$00,$f6,$11
	dc.b $08,$c8,$f0,$fe,$17
	dc.b $40,$d4,$e8,$0c,$22
	dc.b $c0,$da,$ec,$04,$1c
	dc.b $00
	even

loc_0e79ac:
	dc.b $01,$c8,$00,$f8,$10
	dc.b $01,$e0,$00,$f3,$12
	dc.b $02,$c5,$e0,$f7,$14
	dc.b $00
	even

loc_0e79bc:
	dc.b $01,$c9,$d3,$f4,$00
	dc.b $01,$cf,$e8,$ec,$07
	dc.b $01,$e0,$00,$ef,$0d
	dc.b $00
	even

loc_0e79cc:
	dc.b $01,$c9,$ed,$f4,$08
	dc.b $01,$d2,$00,$f8,$0f
	dc.b $00
	even

loc_0e79d8:
	dc.b $01,$c9,$dc,$f7,$0d
	dc.b $01,$d0,$00,$fe,$11
	dc.b $02,$da,$f0,$10,$1d
	dc.b $80,$e3,$f0,$20,$36
	dc.b $6c,$df,$f0,$17,$2b
	dc.b $00
	even

loc_0e79f2:
	dc.b $01,$d8,$e3,$f2,$04
	dc.b $01,$de,$00,$ed,$0b
	dc.b $02,$ec,$00,$f2,$16
	dc.b $00
	even

loc_0e7a02:
	dc.b $01,$d9,$ed,$f2,$05
	dc.b $01,$e0,$00,$ed,$0c
	dc.b $22,$ec,$00,$04,$16
	dc.b $cc,$f0,$00,$16,$26
	dc.b $00
	even

loc_0e7a18:
	dc.b $01,$cb,$e0,$e7,$f8
	dc.b $01,$e0,$f0,$ea,$00
	dc.b $01,$e8,$00,$ed,$07
	dc.b $00
	even

loc_0e7a28:
	dc.b $02,$ca,$da,$f1,$ff
	dc.b $01,$d2,$f0,$ea,$fe
	dc.b $01,$e0,$00,$f0,$07
	dc.b $01,$ec,$00,$ed,$10
	dc.b $00
	even

loc_0e7a3e:
	dc.b $02,$c9,$d1,$f0,$f8
	dc.b $01,$cf,$f0,$ea,$ff
	dc.b $01,$e8,$00,$ed,$10
	dc.b $02,$d3,$f0,$f7,$0b
	dc.b $cc,$b6,$cc,$10,$27
	dc.b $44,$a8,$bc,$f8,$14
	dc.b $00
	even

loc_0e7a5e:
	dc.b $01,$c9,$d1,$f0,$f8
	dc.b $01,$ce,$f0,$eb,$02
	dc.b $01,$e8,$00,$ea,$13
	dc.b $02,$d4,$e8,$ff,$10
	dc.b $44,$c4,$e4,$18,$2b
	dc.b $88,$e0,$f0,$0c,$27
	dc.b $00
	even

loc_0e7a7e:
	dc.b $01,$c9,$d1,$f0,$f8
	dc.b $01,$ce,$f0,$eb,$02
	dc.b $01,$e8,$00,$ea,$18
	dc.b $02,$d4,$e8,$ff,$10
	dc.b $00
	even

loc_0e7a94:
	dc.b $01,$ca,$dc,$e8,$fe
	dc.b $01,$d2,$f0,$eb,$0a
	dc.b $01,$e8,$00,$ed,$12
	dc.b $00
	even

loc_0e7aa4:
	dc.b $02,$c6,$f0,$f7,$07
	dc.b $01,$d0,$00,$f3,$0a
	dc.b $01,$e4,$00,$ee,$13
	dc.b $00
	even

loc_0e7ab4:
	dc.b $01,$cc,$f0,$f4,$0e
	dc.b $01,$d3,$f0,$00,$13
	dc.b $01,$e8,$00,$f0,$18
	dc.b $02,$d2,$e8,$08,$20
	dc.b $88,$cd,$dc,$20,$39
	dc.b $6c,$c8,$d8,$17,$2d
	dc.b $00
	even

loc_0e7ad4:
	dc.b $01,$ce,$f0,$fc,$13
	dc.b $01,$e4,$00,$f0,$19
	dc.b $02,$d5,$ec,$10,$25
	dc.b $02,$c7,$e8,$f9,$09
	dc.b $44,$d5,$e8,$20,$38
	dc.b $cc,$e4,$f0,$0c,$28
	dc.b $00
	even

loc_0e7af4:
	dc.b $01,$cd,$f0,$f5,$0e
	dc.b $01,$e0,$00,$f8,$13
	dc.b $01,$e8,$00,$f0,$18
	dc.b $02,$c8,$e8,$f2,$06
	dc.b $00
	even

loc_0e7b0a:
	dc.b $01,$d6,$00,$f1,$04
	dc.b $01,$dd,$f0,$f2,$0b
	dc.b $01,$e8,$00,$f0,$0f
	dc.b $00
	even

loc_0e7b1a:
	dc.b $01,$d1,$f0,$f2,$08
	dc.b $02,$da,$f0,$f8,$1a
	dc.b $01,$e4,$00,$f0,$14
	dc.b $00
	even

loc_0e7b2a:
	dc.b $02,$cb,$d5,$fd,$09
	dc.b $01,$d2,$e8,$f4,$0e
	dc.b $01,$e4,$00,$f0,$14
	dc.b $02,$d8,$f0,$04,$1c
	dc.b $c0,$d0,$e0,$14,$2a
	dc.b $6c,$d8,$e8,$16,$28
	dc.b $00
	even

loc_0e7b4a:
	dc.b $01,$c5,$cd,$06,$0e
	dc.b $01,$cb,$00,$fc,$13
	dc.b $01,$d8,$00,$f4,$16
	dc.b $02,$c7,$e0,$0e,$20
	dc.b $c8,$ab,$b7,$0e,$27
	dc.b $40,$b0,$d0,$10,$28
	dc.b $2c,$b6,$d0,$0e,$1a
	dc.b $00
	even

loc_0e7b6e:
	dc.b $01,$c5,$cd,$06,$16
	dc.b $01,$cb,$00,$fc,$16
	dc.b $01,$d8,$00,$f4,$16
	dc.b $02,$b8,$d4,$0e,$1b
	dc.b $00
	even

loc_0e7b84:
	dc.b $01,$c9,$d3,$ff,$0b
	dc.b $01,$d1,$00,$f4,$12
	dc.b $01,$e8,$00,$ee,$13
	dc.b $02,$cf,$e8,$06,$1c
	dc.b $00
	even

loc_0e7b9a:
	dc.b $01,$c8,$ec,$e8,$fc
	dc.b $01,$dd,$00,$ed,$01
	dc.b $00
	even

loc_0e7ba6:
	dc.b $01,$cd,$ec,$ea,$04
	dc.b $01,$c7,$00,$ed,$fb
	dc.b $02,$d6,$e8,$f8,$0c
	dc.b $00
	even

loc_0e7bb6:
	dc.b $01,$c8,$e0,$de,$f4
	dc.b $01,$cc,$00,$ed,$fa
	dc.b $02,$d0,$e6,$f8,$08
	dc.b $c0,$c6,$d6,$04,$1e
	dc.b $28,$cc,$e2,$f8,$14
	dc.b $00
	even

loc_0e7bd0:
	dc.b $01,$d2,$dc,$fa,$10
	dc.b $01,$db,$00,$fa,$16
	dc.b $02,$cd,$e8,$f6,$05
	dc.b $00
	even

loc_0e7be0:
	dc.b $01,$d2,$e8,$fa,$15
	dc.b $01,$e8,$00,$00,$18
	dc.b $02,$ca,$ec,$fc,$0c
	dc.b $00
	even

loc_0e7bf0:
	dc.b $01,$d0,$e8,$fa,$13
	dc.b $01,$d8,$00,$08,$19
	dc.b $02,$c8,$d8,$03,$1c
	dc.b $c0,$bc,$cb,$10,$27
	dc.b $2c,$c4,$d0,$08,$21
	dc.b $00
	even

loc_0e7c0a:
	dc.b $01,$cc,$e0,$fd,$1a
	dc.b $01,$ca,$00,$06,$1a
	dc.b $c0,$c2,$d4,$20,$34
	dc.b $2c,$c8,$dc,$1a,$2d
	dc.b $02,$c8,$e1,$14,$22
	dc.b $00

loc_0e7c24:
	dc.b $01,$cb,$00,$00,$19
	dc.b $02,$d0,$e4,$14,$2b
	dc.b $00
	even

loc_0e7c30:
	dc.b $01,$ca,$00,$fc,$0f
	dc.b $01,$d8,$00,$f8,$14
	dc.b $01,$e8,$00,$f5,$19
	dc.b $02,$dc,$f0,$0c,$20
	dc.b $00
	even

loc_0e7c46:
	dc.b $01,$d0,$dc,$f7,$07
	dc.b $01,$d8,$f0,$f2,$10
	dc.b $01,$e8,$00,$ee,$14
	dc.b $00
	even

loc_0e7c56:
	dc.b $01,$d8,$e1,$f6,$ff
	dc.b $01,$dd,$00,$eb,$08
	dc.b $02,$ec,$00,$f0,$17
	dc.b $00
	even

loc_0e7c66:
	dc.b $01,$d4,$de,$ef,$f9
	dc.b $01,$d9,$f0,$e4,$00
	dc.b $01,$e4,$00,$e6,$0a
	dc.b $02,$ec,$00,$f0,$17
	dc.b $00
	even

loc_0e7c7c:
	dc.b $01,$d4,$e4,$ea,$f6
	dc.b $01,$dc,$e8,$e1,$01
	dc.b $01,$e4,$00,$eb,$0c
	dc.b $2c,$f0,$00,$10,$20
	dc.b $8c,$f0,$00,$0a,$1a
	dc.b $22,$ec,$00,$fc,$14
	dc.b $00
	even

loc_0e7c9c:
	dc.b $01,$c3,$cd,$f7,$03
	dc.b $01,$cb,$e4,$f2,$05
	dc.b $01,$d8,$f4,$f6,$0d
	dc.b $0c,$c0,$d8,$fb,$14
	dc.b $00
	even

loc_0e7cb2:
	dc.b $01,$c9,$d3,$ed,$04
	dc.b $01,$d2,$ea,$f4,$06
	dc.b $01,$d0,$f2,$fa,$0a
	dc.b $02,$d2,$e4,$ff,$19
	dc.b $c8,$db,$e9,$1e,$30
	dc.b $2c,$d6,$e6,$12,$26
	dc.b $00
	even

loc_0e7cd2:
	dc.b $01,$c6,$ce,$fb,$03
	dc.b $01,$cc,$e0,$f2,$0c
	dc.b $01,$dc,$ec,$f6,$12
	dc.b $00
	even

loc_0e7ce2:
	dc.b $01,$cc,$d4,$fc,$04
	dc.b $01,$d6,$e4,$ed,$10
	dc.b $01,$d0,$ec,$f3,$0a
	dc.b $c0,$e8,$02,$fa,$06
	dc.b $2c,$e0,$f0,$f7,$09
	dc.b $00
	even

loc_0e7cfc:
	dc.b $01,$c7,$eb,$fb,$07
	dc.b $01,$cc,$e3,$f1,$07
	dc.b $02,$d8,$f0,$f8,$0f
	dc.b $00
	even

loc_0e7d0c:
	dc.b $01,$c8,$e8,$f2,$02
	dc.b $01,$cc,$dc,$e8,$ff
	dc.b $01,$d4,$ec,$f8,$0b
	dc.b $c0,$e4,$f4,$0a,$22
	dc.b $2c,$e0,$f0,$00,$1a
	dc.b $22,$d0,$e0,$00,$0e
	dc.b $00
	even

loc_0e7d2c:
	dc.b $01,$c6,$d6,$ed,$06
	dc.b $01,$c9,$f0,$f5,$0d
	dc.b $00
	even

loc_0e7d38:
	dc.b $01,$c8,$d8,$e9,$fe
	dc.b $01,$d0,$e8,$f2,$08
	dc.b $01,$d8,$ea,$01,$12
	dc.b $80,$e6,$f2,$12,$26
	dc.b $2c,$e2,$ee,$06,$20
	dc.b $22,$de,$ea,$f1,$16
	dc.b $00
	even

loc_0e7d58:
	dc.b $01,$bd,$f2,$f6,$03
	dc.b $01,$c3,$e5,$f9,$0a
	dc.b $02,$d6,$ec,$f9,$13
	dc.b $02,$e7,$f7,$eb,$fb
	dc.b $00
	even

loc_0e7d6e:
	dc.b $01,$c2,$e4,$fd,$11
	dc.b $01,$c8,$f4,$f5,$02
	dc.b $02,$c2,$ec,$ff,$0d
	dc.b $02,$e8,$f8,$f2,$09
	dc.b $00
	even

loc_0e7d84:
	dc.b $01,$c6,$f0,$00,$0a
	dc.b $01,$cc,$f4,$f6,$04
	dc.b $02,$cc,$e4,$00,$1a
	dc.b $02,$e8,$fa,$f2,$00
	dc.b $00
	even

loc_0e7d9a:
	dc.b $01,$c9,$f0,$fc,$0a
	dc.b $01,$cc,$f8,$f5,$fe
	dc.b $02,$d4,$e8,$fc,$18
	dc.b $44,$d4,$e8,$28,$34
	dc.b $88,$e4,$f8,$14,$2a
	dc.b $00
	even

loc_0e7db4:
	dc.b $01,$ca,$e0,$f8,$0b
	dc.b $01,$d8,$f2,$f0,$04
	dc.b $02,$d8,$ec,$f8,$10
	dc.b $a8,$f0,$00,$04,$12
	dc.b $44,$ec,$fc,$0c,$28
	dc.b $00
	even

loc_0e7dce:
	dc.b $01,$c9,$d8,$f0,$06
	dc.b $01,$d2,$f2,$f2,$0a
	dc.b $02,$c6,$f6,$f0,$fc
	dc.b $00
	even

loc_0e7dde:
	dc.b $01,$cd,$fa,$f2,$00
	dc.b $01,$c9,$f0,$fa,$0a
	dc.b $02,$da,$ec,$ed,$18
	dc.b $00
	even

loc_0e7dee:
	dc.b $01,$c9,$f4,$ff,$07
	dc.b $01,$ce,$e0,$f1,$0a
	dc.b $01,$d0,$f0,$f8,$0e
	dc.b $02,$d8,$fa,$f5,$00
	dc.b $02,$d2,$e8,$09,$1c
	dc.b $cc,$d4,$e0,$1c,$36
	dc.b $44,$e0,$e8,$15,$2c
	dc.b $00
	even

loc_0e7e12:
	dc.b $01,$c9,$f0,$fb,$0d
	dc.b $01,$d0,$f2,$f0,$ff
	dc.b $02,$d6,$f6,$ea,$f5
	dc.b $02,$c0,$ea,$04,$14
	dc.b $cc,$b3,$c0,$0a,$18
	dc.b $2c,$bc,$ce,$04,$18
	dc.b $44,$bc,$d8,$18,$37
	dc.b $00
	even

loc_0e7e36:
	dc.b $01,$c9,$f0,$fb,$0d
	dc.b $01,$d0,$f2,$f0,$ff
	dc.b $02,$d6,$f6,$ea,$f5
	dc.b $02,$c0,$ea,$04,$14
	dc.b $00
	even

loc_0e7e4c:
	dc.b $01,$c5,$d5,$ec,$05
	dc.b $01,$c9,$f1,$f4,$0e
	dc.b $02,$e0,$f6,$03,$17
	dc.b $00
	even

loc_0e7e5c:
	dc.b $01,$c3,$d8,$e5,$01
	dc.b $01,$d2,$e8,$f2,$10
	dc.b $8c,$e0,$f5,$18,$2a
	dc.b $6c,$dc,$f1,$0c,$22
	dc.b $22,$d8,$ed,$00,$18
	dc.b $00
	even

loc_0e7e76:
	dc.b $01,$cd,$f0,$f6,$0d
	dc.b $01,$d3,$f0,$00,$13
	dc.b $01,$e8,$00,$f0,$18
	dc.b $02,$d0,$e8,$0a,$26
	dc.b $00
	even

loc_0e7e8c:
	dc.b $01,$ce,$f0,$fa,$13
	dc.b $01,$e8,$00,$f0,$18
	dc.b $02,$d5,$00,$0a,$20
	dc.b $c8,$e8,$00,$20,$3a
	dc.b $6c,$d8,$f0,$18,$36
	dc.b $00
	even

loc_0e7ea6:
	dc.b $01,$ce,$f0,$fa,$13
	dc.b $01,$e8,$00,$f0,$1c
	dc.b $02,$d5,$e8,$0a,$1b
	dc.b $02,$e0,$f0,$10,$26
	dc.b $00
	even

loc_0e7ebc:
	dc.b $01,$cd,$d7,$09,$13
	dc.b $01,$d2,$f0,$f9,$18
	dc.b $01,$e8,$00,$ef,$1c
	dc.b $00
	even

loc_0e7ecc:
	dc.b $01,$c4,$ce,$f8,$02
	dc.b $01,$ca,$f8,$f3,$0a
	dc.b $00
	even

loc_0e7ed8:
	dc.b $01,$ca,$da,$ed,$06
	dc.b $01,$cd,$f0,$f5,$0e
	dc.b $00
	even

loc_0e7ee4:
	dc.b $01,$c8,$f8,$f2,$0c
	dc.b $01,$c3,$ed,$f8,$11
	dc.b $00
	even

loc_0e7ef0:
	dc.b $01,$cb,$f4,$fb,$13
	dc.b $02,$c4,$e0,$ff,$16
	dc.b $c0,$d8,$ec,$0f,$20
	dc.b $2c,$d4,$e8,$08,$18
	dc.b $00
	even


loc_0e7f06:
	dc.b $01,$c6,$d0,$fc,$06
	dc.b $01,$cb,$f8,$f6,$0e
	dc.b $00
	even

loc_0e7f12:
	dc.b $02,$d0,$f0,$ff,$10
	dc.b $01,$e4,$f0,$f5,$18
	dc.b $01,$f0,$00,$f0,$15
	dc.b $0c,$ca,$e8,$f9,$08
	dc.b $00
	even

loc_0e7f28:
	dc.b $02,$d3,$f0,$ff,$15
	dc.b $01,$e4,$f0,$f9,$1c
	dc.b $01,$ec,$00,$f0,$16
	dc.b $00
	even

loc_0e7f38:
	dc.b $02,$d3,$f0,$fc,$12
	dc.b $01,$e2,$f0,$f7,$1a
	dc.b $01,$ec,$00,$f0,$18
	dc.b $00
	even

loc_0e7f48:
	dc.b $01,$c4,$ee,$f9,$0b
	dc.b $01,$cc,$dc,$f1,$09
	dc.b $02,$e8,$fc,$fd,$07
	dc.b $40,$d8,$00,$10,$28
	dc.b $c8,$a0,$bc,$10,$20
	dc.b $c8,$ac,$d8,$10,$24
	dc.b $02,$b4,$cc,$08,$10
	dc.b $00
	even

loc_0e7f6c:
	dc.b $01,$c4,$ee,$f9,$0d
	dc.b $01,$cc,$dc,$f1,$09
	dc.b $02,$e8,$fc,$fd,$08
	dc.b $cc,$a0,$bc,$10,$1c
	dc.b $2c,$ac,$d4,$0a,$16
	dc.b $02,$b4,$cc,$07,$11
	dc.b $00
	even

loc_0e7f8c:
	dc.b $01,$c1,$e4,$f9,$08
	dc.b $01,$d4,$f5,$f2,$02
	dc.b $02,$d0,$fe,$fb,$04
	dc.b $02,$b4,$cc,$00,$0a
	dc.b $00
	even

loc_0e7fa2:
	dc.b $01,$c2,$ec,$f6,$08
	dc.b $01,$c0,$fc,$f9,$04
	dc.b $02,$ca,$d6,$f2,$0d
	dc.b $02,$be,$ca,$ee,$02
	dc.b $00
	even

loc_0e7fb8:
	dc.b $02,$d2,$f0,$ff,$16
	dc.b $01,$e4,$f0,$f9,$24
	dc.b $01,$ec,$00,$f0,$1c
	dc.b $00
	even

loc_0e7fc8:
	dc.b $01,$d0,$f0,$fb,$13
	dc.b $02,$dc,$00,$08,$20
	dc.b $01,$e4,$00,$f2,$16
	dc.b $cc,$e8,$00,$20,$38
	dc.b $2c,$e0,$f0,$10,$25
	dc.b $00
	even

loc_0e7fe2:
	dc.b $01,$cd,$d7,$09,$13
	dc.b $01,$d2,$ee,$f8,$16
	dc.b $01,$e8,$00,$f0,$1a
	dc.b $00
	even

loc_0e7ff2:
	dc.b $01,$cd,$d7,$0e,$18
	dc.b $01,$d2,$f0,$fa,$1d
	dc.b $01,$e8,$00,$f0,$1a
	dc.b $00
	even

loc_0e8002:
	dc.b $01,$ce,$f0,$fc,$14
	dc.b $01,$e8,$00,$f0,$18
	dc.b $02,$c8,$d0,$fa,$08
	dc.b $c0,$cd,$dd,$22,$39
	dc.b $20,$c8,$d0,$10,$28
	dc.b $00
	even

loc_0e801c:
	dc.b $01,$ce,$f0,$fc,$14
	dc.b $01,$e8,$00,$f0,$18
	dc.b $02,$c8,$d0,$fa,$08
	dc.b $00
	even

loc_0e802c:
	dc.b $01,$cd,$e5,$01,$11
	dc.b $01,$d5,$f0,$fa,$1a
	dc.b $01,$e8,$00,$f0,$17
	dc.b $00
	even

loc_0e803c:
	dc.b $01,$cd,$e8,$fa,$12
	dc.b $01,$d4,$f0,$0a,$1b
	dc.b $01,$e8,$00,$f0,$18
	dc.b $cc,$e4,$f0,$28,$38
	dc.b $cc,$dc,$e8,$20,$30
	dc.b $cc,$d4,$e0,$18,$28
	dc.b $2c,$cc,$d8,$10,$20
	dc.b $00
	even

loc_0e8060:
	dc.b $01,$cd,$e8,$fa,$12
	dc.b $01,$d4,$f0,$0a,$1a
	dc.b $01,$e8,$00,$f0,$18
	dc.b $02,$dc,$ec,$18,$26
	dc.b $00
	even

loc_0e8076:
	dc.b $01,$cc,$e8,$f7,$0e
	dc.b $01,$d4,$f0,$fa,$13
	dc.b $01,$e8,$00,$f0,$18
	dc.b $02,$da,$e8,$0a,$1d
	dc.b $00
	even

loc_0e808c:
	dc.b $01,$cd,$f0,$fc,$10
	dc.b $01,$d8,$ec,$f7,$1c
	dc.b $01,$ec,$00,$ed,$16
	dc.b $00
	even

loc_0e809c:
	dc.b $01,$cd,$e0,$fa,$10
	dc.b $01,$d4,$f0,$fe,$19
	dc.b $01,$e8,$00,$f1,$15
	dc.b $02,$cd,$d8,$ee,$00
	dc.b $cc,$e2,$ee,$12,$34
	dc.b $2c,$da,$e6,$02,$24
	dc.b $00
	even

loc_0e80bc:
	dc.b $01,$cd,$e0,$fa,$10
	dc.b $01,$d4,$f0,$fe,$19
	dc.b $01,$e8,$00,$f1,$15
	dc.b $02,$cd,$d8,$ee,$00
	dc.b $00
	even

loc_0e80d2:
	dc.b $01,$ce,$f0,$eb,$03
	dc.b $01,$e0,$f0,$e7,$0f
	dc.b $01,$ec,$00,$eb,$17
	dc.b $02,$c8,$e8,$e7,$f4
	dc.b $00
	even

loc_0e80e8:
	dc.b $01,$d0,$f0,$f0,$08
	dc.b $01,$e4,$00,$ed,$0f
	dc.b $02,$ca,$e8,$e9,$fc
	dc.b $00
	even

loc_0e80f8:
	dc.b $01,$d4,$f0,$f3,$0e
	dc.b $01,$e8,$00,$ed,$11
	dc.b $02,$d0,$e8,$ed,$04
	dc.b $00
	even

loc_0e8108:
	dc.b $01,$d8,$e8,$ed,$0a
	dc.b $01,$e0,$00,$f0,$12
	dc.b $02,$e8,$00,$00,$20
	dc.b $00
	even

loc_0e8118:
	dc.b $01,$d6,$00,$fd,$11
	dc.b $02,$cc,$00,$0a,$16
	dc.b $01,$dc,$00,$ef,$04
	dc.b $00
	even

loc_0e8128:
	dc.b $01,$c4,$d0,$f1,$05
	dc.b $01,$cb,$e0,$f2,$0c
	dc.b $01,$e0,$00,$f2,$0f
	dc.b $00
	even

loc_0e8138:
	dc.b $01,$bc,$00,$f6,$08
	dc.b $00
	even

loc_0e813e:
	dc.b $01,$b4,$00,$fa,$06
	dc.b $00
	even

loc_0e8144:
	dc.b $01,$c2,$00,$fa,$06
	dc.b $01,$c8,$d8,$f8,$10
	dc.b $00
	even

loc_0e8150:
	dc.b $01,$c2,$00,$fa,$06
	dc.b $02,$c8,$e0,$f4,$0c
	dc.b $c0,$d0,$d8,$00,$2a
	dc.b $2c,$ce,$dd,$e0,$20
	dc.b $00
	even

loc_0e8166:
	dc.b $01,$c2,$00,$fa,$06
	dc.b $02,$c8,$e0,$f4,$0c
	dc.b $c0,$ce,$da,$f8,$1c
	dc.b $2c,$ce,$dd,$e0,$20
	dc.b $00
	even

loc_0e817c:
	dc.b $01,$c2,$00,$fa,$06
	dc.b $02,$c8,$e0,$f4,$0c
	dc.b $c0,$ca,$de,$f4,$0c
	dc.b $2c,$ce,$dd,$e0,$20
	dc.b $00
	even

loc_0e8192:
	dc.b $01,$c2,$00,$fa,$06
	dc.b $02,$c8,$e0,$f4,$0c
	dc.b $c0,$ce,$da,$e4,$08
	dc.b $2c,$ce,$dd,$e0,$20
	dc.b $00
	even

loc_0e81a8:
	dc.b $01,$c2,$00,$fa,$06
	dc.b $02,$c8,$e0,$f4,$0c
	dc.b $c0,$d0,$d8,$d6,$08
	dc.b $2c,$ce,$dd,$e0,$20
	dc.b $00
	even

loc_0e81be:
	dc.b $01,$c2,$00,$fa,$06
	dc.b $01,$c8,$d8,$f0,$08
	dc.b $00
	even

loc_0e81ca:
	dc.b $01,$cb,$d5,$fe,$08
	dc.b $01,$d2,$00,$f4,$0c
	dc.b $01,$e4,$00,$f0,$10
	dc.b $02,$d6,$e4,$f0,$12
	dc.b $00
	even

loc_0e81e0:
	dc.b $01,$c4,$e0,$f4,$00
	dc.b $01,$cb,$f0,$ef,$0a
	dc.b $01,$e4,$00,$ee,$12
	dc.b $01,$d8,$e8,$ef,$0e
	dc.b $00
	even

loc_0e81f6:
	dc.b $01,$c4,$e0,$fa,$06
	dc.b $01,$cc,$f0,$f4,$0c
	dc.b $01,$ec,$00,$ee,$12
	dc.b $01,$d8,$f0,$f1,$0f
	dc.b $00
	even

loc_0e820c:
	dc.b $01,$c4,$e0,$00,$0c
	dc.b $01,$cb,$f0,$f6,$11
	dc.b $01,$e4,$00,$ee,$12
	dc.b $01,$d8,$e8,$f2,$11
	dc.b $00
	even

loc_0e8222:
	dc.b $01,$cb,$f0,$f5,$0b
	dc.b $01,$e4,$00,$ee,$12
	dc.b $01,$d0,$f0,$f2,$0e
	dc.b $00
	even

loc_0e8232:
	dc.b $01,$c5,$f0,$f9,$09
	dc.b $01,$ca,$e0,$f4,$0c
	dc.b $02,$d8,$fc,$fd,$05
	dc.b $00
	even

loc_0e8242:
	dc.b $01,$c0,$e0,$00,$0f
	dc.b $01,$d4,$eb,$f8,$0a
	dc.b $01,$e6,$f2,$ea,$04
	dc.b $02,$c4,$d0,$00,$14
	dc.b $00
	even

loc_0e8258:
	dc.b $01,$c9,$f0,$fc,$0a
	dc.b $01,$cc,$f8,$f5,$fe
	dc.b $02,$d0,$ec,$fc,$18
	dc.b $44,$c0,$e8,$24,$32
	dc.b $88,$e8,$f8,$0c,$28
	dc.b $00
	even

loc_0e8272:
	dc.b $01,$ca,$e0,$f8,$0e
	dc.b $01,$d8,$f2,$ef,$04
	dc.b $02,$d8,$f0,$f8,$14
	dc.b $a8,$f0,$00,$04,$1a
	dc.b $44,$ec,$fc,$14,$28
	dc.b $00
	even

loc_0e828c:
	dc.b $01,$c9,$f0,$fb,$0a
	dc.b $01,$ce,$00,$f3,$00
	dc.b $01,$e0,$ed,$fb,$10
	dc.b $02,$cf,$e8,$0a,$1e
	dc.b $cc,$cc,$e4,$1e,$36
	dc.b $44,$e0,$f0,$08,$28
	dc.b $00
	even

loc_0e82ac:
	dc.b $01,$ca,$f3,$f8,$0a
	dc.b $02,$d2,$f8,$ec,$f8
	dc.b $02,$c0,$ea,$04,$12
	dc.b $44,$c0,$e0,$22,$37
	dc.b $00
	even

loc_0e82c2:
	dc.b $01,$ca,$d4,$ed,$04
	dc.b $01,$d2,$ea,$f4,$07
	dc.b $01,$d0,$f2,$fa,$0b
	dc.b $02,$d2,$e4,$ff,$19
	dc.b $c8,$d8,$e8,$1e,$30
	dc.b $2c,$d0,$e6,$12,$26
	dc.b $00
	even

loc_0e82e2:
	dc.b $01,$c2,$00,$fa,$06
	dc.b $01,$c4,$d8,$f4,$09
	dc.b $00
	even

loc_0e82ee:
	dc.b $01,$c2,$00,$fa,$06
	dc.b $01,$c8,$d8,$f4,$08
	dc.b $02,$c0,$c8,$ea,$fa
	dc.b $00
	even

loc_0e82fe:
	dc.b $01,$c0,$e0,$f6,$0a
	dc.b $01,$e0,$00,$f0,$10
	dc.b $22,$98,$c0,$fa,$06
	dc.b $80,$a0,$e8,$ee,$12
	dc.b $40,$e0,$00,$e4,$1c
	dc.b $00
	even

loc_0e8318:
	dc.b $01,$c0,$e0,$f6,$0a
	dc.b $01,$e0,$00,$f0,$10
	dc.b $22,$98,$c0,$fa,$06
	dc.b $80,$a0,$e8,$ee,$12
	dc.b $00
	even

loc_0e832e:
	dc.b $01,$c4,$d8,$e8,$00
	dc.b $01,$d0,$e8,$ec,$0c
	dc.b $01,$e4,$00,$ec,$10
	dc.b $cc,$cc,$dc,$00,$10
	dc.b $00
	even

loc_0e8344:
	dc.b $01,$cb,$00,$fe,$0e
	dc.b $01,$ce,$f0,$f5,$18
	dc.b $01,$ec,$00,$eb,$15
	dc.b $22,$d0,$e4,$14,$28
	dc.b $8c,$d2,$de,$28,$40
	dc.b $00
	even

loc_0e835e:
	dc.b $02,$d0,$f0,$00,$0f
	dc.b $01,$e4,$f0,$f7,$1a
	dc.b $01,$ec,$00,$f0,$0f
	dc.b $c0,$d4,$00,$0a,$1c
	dc.b $00
	even

loc_0e8374:
	dc.b $01,$c0,$00,$f8,$08
	dc.b $02,$c4,$00,$f0,$10
	dc.b $c0,$d0,$d8,$e0,$20
	dc.b $2c,$c9,$e3,$e2,$1e
	dc.b $00
	even

loc_0e838a:
	dc.b $01,$c4,$ce,$fd,$07
	dc.b $01,$cb,$f0,$f8,$0f
	dc.b $01,$d0,$00,$ed,$07
	dc.b $02,$d8,$e8,$f8,$14
	dc.b $00
	even

loc_0e83a0:
	dc.b $01,$ca,$e0,$ed,$06
	dc.b $01,$e0,$f0,$f0,$0c
	dc.b $01,$ec,$00,$f2,$12
	dc.b $00
	even

loc_0e83b0:
	dc.b $01,$c8,$d8,$f6,$04
	dc.b $01,$cd,$00,$ed,$fc
	dc.b $01,$d2,$f2,$ee,$0d
	dc.b $00
	even

loc_0e83c0:
	dc.b $01,$bb,$d0,$f8,$0c
	dc.b $01,$c4,$00,$f2,$10
	dc.b $00
	even

loc_0e83cc:
	dc.b $01,$c2,$00,$fa,$06
	dc.b $02,$c8,$d8,$f6,$0a
	dc.b $cc,$c8,$e4,$f0,$10
	dc.b $00
	even


;0e83dc