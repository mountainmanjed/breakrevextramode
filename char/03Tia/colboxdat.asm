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

loc_0e5406:
	dc.b $01,$ce,$d6,$f9,$01
	dc.b $01,$d3,$00,$f3,$05
	dc.b $01,$e8,$00,$f0,$0b
	dc.b $02,$d6,$e8,$ff,$09
	dc.b $00
	even

loc_0e541c:
	dc.b $01,$cd,$d5,$fc,$04
	dc.b $01,$d4,$00,$f6,$0a
	dc.b $01,$e8,$00,$f3,$0d
	dc.b $00
	even

loc_0e542c:
	dc.b $01,$d0,$d8,$fc,$04
	dc.b $01,$d6,$00,$f5,$05
	dc.b $01,$e8,$00,$f1,$0b
	dc.b $02,$d6,$e8,$ff,$0a
	dc.b $00
	even

loc_0e5442:
	dc.b $01,$d5,$dd,$fc,$04
	dc.b $01,$dc,$00,$f5,$05
	dc.b $01,$e8,$00,$f2,$0b
	dc.b $02,$dc,$f0,$fe,$09
	dc.b $00
	even

loc_0e5458:
	dc.b $01,$dd,$e5,$fb,$03
	dc.b $01,$e2,$00,$f4,$08
	dc.b $01,$e8,$00,$f2,$0b
	dc.b $00
	even

loc_0e5468:
	dc.b $01,$dd,$e5,$fc,$04
	dc.b $01,$e2,$00,$f6,$0a
	dc.b $01,$e8,$00,$f4,$0c
	dc.b $00
	even

loc_0e5478:
	dc.b $01,$cc,$d4,$fb,$03
	dc.b $01,$d2,$00,$f4,$08
	dc.b $02,$e8,$00,$f1,$0c
	dc.b $00
	even

loc_0e5488:
	dc.b $01,$cb,$d3,$f9,$01
	dc.b $01,$d3,$00,$f3,$07
	dc.b $02,$d0,$e8,$f0,$08
	dc.b $02,$e8,$00,$f2,$0b
	dc.b $00
	even

loc_0e549e:
	dc.b $01,$d3,$db,$ff,$07
	dc.b $01,$d8,$00,$f5,$07
	dc.b $01,$e8,$00,$f2,$0c
	dc.b $02,$e0,$f0,$ff,$0c
	dc.b $00
	even

loc_0e54b4:
	dc.b $01,$cc,$ec,$f9,$0a
	dc.b $02,$c9,$f2,$f9,$06
	dc.b $0c,$e0,$00,$fc,$04
	dc.b $00
	even

loc_0e54c4:
	dc.b $01,$cd,$ec,$01,$09
	dc.b $01,$d2,$ef,$f9,$01
	dc.b $02,$d0,$db,$f7,$0d
	dc.b $00
	even

loc_0e54d4:
	dc.b $01,$ce,$ea,$01,$09
	dc.b $01,$d1,$ec,$f9,$01
	dc.b $02,$d3,$e0,$f6,$0d
	dc.b $00
	even

loc_0e54e4:
	dc.b $01,$cc,$f0,$fd,$05
	dc.b $01,$cf,$ea,$fb,$0b
	dc.b $02,$ca,$f8,$fa,$02
	dc.b $00
	even

loc_0e54f4:
	dc.b $01,$cb,$fc,$f9,$01
	dc.b $01,$cf,$f4,$fa,$08
	dc.b $01,$e0,$ec,$f9,$0c
	dc.b $00
	even

loc_0e5504:
	dc.b $01,$ce,$de,$03,$0b
	dc.b $01,$d2,$f0,$f7,$05
	dc.b $0c,$e8,$f8,$f7,$ff
	dc.b $00
	even

loc_0e5514:
	dc.b $01,$df,$eb,$f8,$0f
	dc.b $01,$d5,$e1,$f1,$0c
	dc.b $00
	even

loc_0e5520:
	dc.b $01,$d5,$eb,$f7,$06
	dc.b $01,$ce,$e7,$ff,$0b
	dc.b $00
	even

loc_0e552c:
	dc.b $01,$df,$eb,$f4,$0f
	dc.b $01,$d5,$e1,$f1,$08
	dc.b $00
	even

loc_0e5538:
	dc.b $01,$cc,$df,$f4,$02
	dc.b $01,$da,$ee,$fb,$09
	dc.b $02,$da,$fa,$01,$0b
	dc.b $00
	even

loc_0e5548:
	dc.b $01,$cc,$df,$f7,$04
	dc.b $01,$d8,$ec,$fb,$08
	dc.b $0c,$e2,$f8,$03,$0b
	dc.b $00
	even

loc_0e5558:
	dc.b $01,$ce,$e8,$fc,$0a
	dc.b $01,$d8,$ee,$f7,$06
	dc.b $0c,$d8,$f8,$f7,$ff
	dc.b $00
	even

loc_0e5568:
	dc.b $01,$cb,$00,$f2,$0b
	dc.b $00
	even

loc_0e556e:
	dc.b $01,$db,$00,$f1,$0b
	dc.b $00
	even

loc_0e5574:
	dc.b $01,$cc,$e4,$ed,$ff
	dc.b $01,$d4,$e4,$eb,$08
	dc.b $01,$db,$00,$ef,$0b
	dc.b $00
	even

loc_0e5584:
	dc.b $01,$cc,$d4,$f3,$ff
	dc.b $01,$d4,$00,$f2,$09
	dc.b $01,$e8,$00,$f0,$0b
	dc.b $00
	even

loc_0e5594:
	dc.b $01,$d0,$e0,$f3,$08
	dc.b $01,$d5,$ec,$e8,$0a
	dc.b $01,$e8,$00,$ef,$0c
	dc.b $00
	even

loc_0e55a4:
	dc.b $01,$ce,$d6,$fa,$05
	dc.b $01,$d5,$00,$f2,$0a
	dc.b $01,$e8,$00,$f0,$0b
	dc.b $00
	even

loc_0e55b4:
	dc.b $01,$da,$e8,$eb,$fb
	dc.b $01,$dd,$f0,$e7,$08
	dc.b $01,$e3,$00,$ee,$0b
	dc.b $00
	even

loc_0e55c4:
	dc.b $01,$db,$e3,$f2,$fd
	dc.b $01,$df,$f0,$ec,$08
	dc.b $01,$e8,$00,$f1,$0b
	dc.b $00
	even

loc_0e55d4:
	dc.b $01,$cc,$f8,$ef,$0d
	dc.b $00
	even

loc_0e55da:
	dc.b $01,$cc,$f8,$f5,$0b
	dc.b $00
	even

loc_0e55e0:
	dc.b $01,$d8,$f8,$ef,$0d
	dc.b $00
	even

loc_0e55e6:
	dc.b $01,$e8,$00,$ec,$14
	dc.b $00
	even

loc_0e55ec:
	dc.b $01,$cd,$d5,$f7,$05
	dc.b $01,$d4,$00,$f3,$09
	dc.b $01,$e8,$00,$f1,$0b
	dc.b $00
	even

loc_0e55fc:
	dc.b $02,$d0,$d8,$f8,$00
	dc.b $01,$d6,$00,$f4,$02
	dc.b $01,$e8,$00,$f1,$0b
	dc.b $00
	even

loc_0e560c:
	dc.b $02,$d0,$d8,$fa,$02
	dc.b $01,$d5,$00,$f6,$04
	dc.b $01,$e8,$00,$f1,$0b
	dc.b $c0,$cb,$da,$fe,$12
	dc.b $2c,$d6,$e4,$fe,$0b
	dc.b $00
	even

loc_0e5626:
	dc.b $01,$cd,$d5,$f9,$01
	dc.b $01,$d4,$00,$f4,$05
	dc.b $01,$e8,$00,$f1,$0b
	dc.b $00
	even

loc_0e5636:
	dc.b $01,$cf,$d7,$fc,$04
	dc.b $01,$d5,$00,$f4,$04
	dc.b $01,$e8,$00,$f1,$0b
	dc.b $02,$d5,$e8,$ff,$0b
	dc.b $00
	even

loc_0e564c:
	dc.b $01,$cf,$d7,$00,$08
	dc.b $01,$d4,$00,$f7,$08
	dc.b $01,$e8,$00,$f2,$0c
	dc.b $c0,$d4,$de,$0e,$1d
	dc.b $2c,$d2,$e2,$06,$14
	dc.b $00
	even

loc_0e5666:
	dc.b $01,$dc,$e4,$fc,$04
	dc.b $01,$e2,$00,$f6,$0c
	dc.b $01,$e8,$00,$f2,$0c
	dc.b $00
	even

loc_0e5676:
	dc.b $01,$db,$e3,$00,$08
	dc.b $01,$e0,$00,$f8,$0a
	dc.b $01,$e8,$00,$f2,$0e
	dc.b $c0,$e1,$e9,$11,$1d
	dc.b $2c,$df,$ed,$08,$16
	dc.b $00
	even

loc_0e5690:
	dc.b $01,$d0,$d8,$fd,$05
	dc.b $01,$d6,$00,$f6,$05
	dc.b $01,$e8,$00,$f2,$0a
	dc.b $00
	even

loc_0e56a0:
	dc.b $01,$d4,$00,$f6,$07
	dc.b $01,$cd,$dc,$00,$08
	dc.b $00
	even

loc_0e56ac:
	dc.b $02,$d4,$f0,$f9,$0b
	dc.b $01,$cb,$00,$fc,$06
	dc.b $c0,$d1,$e0,$0b,$1a
	dc.b $28,$d9,$ec,$04,$12
	dc.b $00
	even

loc_0e56c2:
	dc.b $01,$cd,$d5,$fb,$03
	dc.b $01,$d3,$00,$f5,$08
	dc.b $01,$e8,$00,$f2,$0b
	dc.b $00
	even

loc_0e56d2:
	dc.b $01,$cc,$d4,$f8,$00
	dc.b $01,$d2,$00,$f4,$04
	dc.b $01,$e8,$00,$f4,$0a
	dc.b $00
	even

loc_0e56e2:
	dc.b $01,$cf,$e8,$f3,$fb
	dc.b $02,$dc,$ec,$f6,$0d
	dc.b $01,$d4,$00,$f6,$02
	dc.b $00
	even

loc_0e56f2:
	dc.b $01,$cc,$e0,$f4,$fc
	dc.b $01,$d0,$00,$fb,$05
	dc.b $02,$d4,$e4,$ee,$10
	dc.b $c8,$d4,$e0,$10,$24
	dc.b $2c,$d4,$e4,$04,$1c
	dc.b $00
	even

loc_0e570c:
	dc.b $01,$cf,$e8,$f3,$fb
	dc.b $02,$dc,$f0,$f6,$0d
	dc.b $0c,$d8,$e4,$f8,$1c
	dc.b $01,$d4,$00,$f6,$02
	dc.b $00
	even

loc_0e5722:
	dc.b $01,$dd,$e5,$f8,$00
	dc.b $01,$e3,$f0,$ef,$05
	dc.b $01,$ec,$00,$f1,$0b
	dc.b $00
	even

loc_0e5732:
	dc.b $01,$de,$e6,$f4,$fc
	dc.b $01,$e3,$00,$eb,$03
	dc.b $02,$f0,$00,$f6,$10
	dc.b $00
	even

loc_0e5742:
	dc.b $01,$df,$e7,$f4,$fc
	dc.b $01,$e4,$00,$eb,$04
	dc.b $cc,$f0,$00,$10,$20
	dc.b $22,$f0,$00,$00,$10
	dc.b $00
	even

loc_0e5758:
	dc.b $01,$d4,$00,$f4,$05
	dc.b $01,$e8,$00,$f1,$0b
	dc.b $00
	even

loc_0e5764:
	dc.b $01,$d2,$00,$f6,$08
	dc.b $01,$e8,$00,$f1,$0e
	dc.b $00
	even

loc_0e5770:
	dc.b $02,$cd,$d5,$03,$0b
	dc.b $01,$d2,$00,$fa,$0b
	dc.b $01,$e8,$00,$f2,$11
	dc.b $c0,$d2,$e4,$10,$20
	dc.b $2c,$d8,$e8,$08,$17
	dc.b $00
	even

loc_0e578a:
	dc.b $01,$cf,$d7,$fe,$06
	dc.b $01,$d5,$00,$fa,$0a
	dc.b $02,$d8,$e8,$f4,$0f
	dc.b $01,$e8,$00,$f2,$0f
	dc.b $00
	even

loc_0e57a0:
	dc.b $01,$cf,$d7,$f9,$01
	dc.b $01,$d4,$00,$f4,$05
	dc.b $01,$e8,$00,$f1,$0b
	dc.b $02,$d8,$e8,$f2,$09
	dc.b $00
	even

loc_0e57b6:
	dc.b $01,$d0,$d8,$fa,$02
	dc.b $01,$d4,$00,$f5,$0c
	dc.b $01,$e4,$00,$f3,$12
	dc.b $00
	even

loc_0e57c6:
	dc.b $01,$ce,$d6,$01,$09
	dc.b $01,$d4,$00,$f9,$09
	dc.b $01,$e4,$00,$f3,$12
	dc.b $02,$d4,$e4,$f8,$0e
	dc.b $00
	even

loc_0e57dc:
	dc.b $01,$cf,$d7,$08,$10
	dc.b $01,$d4,$00,$fc,$10
	dc.b $01,$e4,$f0,$f8,$12
	dc.b $01,$f0,$00,$f1,$14
	dc.b $c8,$d3,$dd,$14,$27
	dc.b $2c,$d3,$e4,$0c,$1f
	dc.b $00
	even

loc_0e57fc:
	dc.b $01,$cf,$d7,$02,$0c
	dc.b $01,$d6,$00,$f7,$0c
	dc.b $02,$d4,$e8,$ff,$12
	dc.b $01,$e8,$00,$f1,$12
	dc.b $00
	even

loc_0e5812:
	dc.b $01,$cf,$d7,$00,$08
	dc.b $01,$d5,$00,$f5,$09
	dc.b $02,$d7,$f0,$fb,$0e
	dc.b $01,$ec,$00,$f1,$12
	dc.b $00
	even

loc_0e5828:
	dc.b $01,$cf,$d7,$fc,$04
	dc.b $01,$d6,$00,$f4,$09
	dc.b $01,$e8,$00,$f1,$0b
	dc.b $00
	even

loc_0e5838:
	dc.b $01,$df,$00,$f5,$08
	dc.b $01,$ec,$00,$f2,$14
	dc.b $00
	even

loc_0e5844:
	dc.b $02,$d9,$ec,$06,$11
	dc.b $01,$dc,$00,$f9,$0e
	dc.b $01,$ec,$00,$f2,$14
	dc.b $00
	even

loc_0e5854:
	dc.b $01,$d5,$00,$fe,$12
	dc.b $01,$e8,$00,$f3,$17
	dc.b $c0,$d4,$e8,$11,$21
	dc.b $2c,$dc,$f0,$0b,$1d
	dc.b $00
	even

loc_0e586a:
	dc.b $02,$ce,$dc,$09,$19
	dc.b $01,$d8,$f0,$00,$1a
	dc.b $01,$ec,$00,$f4,$19
	dc.b $80,$c0,$d4,$0d,$1b
	dc.b $68,$cc,$dc,$10,$20
	dc.b $00
	even

loc_0e5884:
	dc.b $01,$ce,$d9,$07,$17
	dc.b $01,$d8,$f0,$00,$1a
	dc.b $01,$ec,$00,$f6,$19
	dc.b $6c,$c0,$d0,$03,$13
	dc.b $02,$c8,$d8,$05,$15
	dc.b $00
	even

loc_0e589e:
	dc.b $01,$d4,$dc,$0b,$13
	dc.b $01,$d8,$f0,$ff,$18
	dc.b $01,$ec,$00,$f4,$17
	dc.b $02,$d0,$e0,$06,$1c
	dc.b $00
	even

loc_0e58b4:
	dc.b $01,$d8,$e0,$05,$0d
	dc.b $01,$dd,$00,$fb,$13
	dc.b $01,$ec,$00,$f2,$15
	dc.b $00
	even

loc_0e58c4:
	dc.b $01,$db,$e3,$00,$08
	dc.b $01,$e2,$00,$f7,$0e
	dc.b $01,$ec,$00,$f2,$13
	dc.b $00
	even

loc_0e58d4:
	dc.b $01,$d4,$f0,$f5,$03
	dc.b $01,$e8,$00,$fa,$0d
	dc.b $00
	even

loc_0e58e0:
	dc.b $01,$d8,$e8,$f1,$04
	dc.b $01,$dc,$00,$f9,$07
	dc.b $02,$dc,$f0,$fa,$0e
	dc.b $00
	even

loc_0e58f0:
	dc.b $01,$d6,$e8,$ed,$02
	dc.b $01,$d0,$00,$fb,$07
	dc.b $22,$cc,$e4,$00,$0a
	dc.b $c8,$ba,$cc,$03,$15
	dc.b $40,$b6,$e4,$0a,$17
	dc.b $2c,$c2,$dd,$00,$0f
	dc.b $00
	even

loc_0e5910:
	dc.b $01,$cc,$d4,$fb,$03
	dc.b $01,$d0,$00,$f6,$07
	dc.b $01,$e0,$00,$f2,$0b
	dc.b $00
	even

loc_0e5920:
	dc.b $01,$cd,$d5,$fa,$02
	dc.b $01,$d0,$00,$fa,$0a
	dc.b $01,$e0,$00,$f5,$0d
	dc.b $00
	even

loc_0e5930:
	dc.b $01,$ce,$e0,$fc,$0c
	dc.b $01,$d8,$00,$00,$0f
	dc.b $c8,$d2,$e2,$0c,$1e
	dc.b $2c,$d8,$e8,$08,$18
	dc.b $00
	even

loc_0e5946:
	dc.b $01,$d4,$ec,$ff,$1a
	dc.b $01,$d0,$00,$04,$14
	dc.b $22,$d0,$e0,$12,$1f
	dc.b $c8,$c3,$d0,$1b,$2d
	dc.b $2c,$c9,$d8,$17,$26
	dc.b $00
	even

loc_0e5960:
	dc.b $01,$cc,$e0,$fe,$0b
	dc.b $01,$d0,$00,$03,$0f
	dc.b $02,$d0,$e0,$0d,$1e
	dc.b $01,$d8,$e8,$08,$18
	dc.b $00
	even

loc_0e5976:
	dc.b $01,$dc,$e4,$fe,$09
	dc.b $01,$e0,$f0,$f4,$0f
	dc.b $01,$ec,$00,$f0,$0c
	dc.b $00
	even

loc_0e5986:
	dc.b $01,$de,$e6,$fc,$06
	dc.b $01,$e2,$00,$f1,$0e
	dc.b $02,$ec,$00,$fb,$18
	dc.b $00
	even

loc_0e5996:
	dc.b $01,$e0,$00,$f6,$09
	dc.b $01,$e8,$00,$f6,$13
	dc.b $22,$ec,$00,$06,$1c
	dc.b $cc,$f0,$00,$19,$29
	dc.b $00
	even

loc_0e59ac:
	dc.b $01,$df,$f0,$f4,$0c
	dc.b $01,$e8,$00,$f9,$11
	dc.b $02,$f0,$00,$0a,$24
	dc.b $00
	even

loc_0e59bc:
	dc.b $01,$dd,$e8,$f5,$05
	dc.b $01,$e8,$00,$f8,$11
	dc.b $02,$e2,$f0,$ee,$0b
	dc.b $00
	even

loc_0e59cc:
	dc.b $01,$cc,$db,$ff,$0a
	dc.b $01,$d7,$ea,$f7,$06
	dc.b $02,$e3,$f0,$f6,$00
	dc.b $00
	even

loc_0e59dc:
	dc.b $0c,$d0,$df,$0a,$17
	dc.b $01,$d4,$e4,$f7,$10
	dc.b $02,$df,$ed,$f3,$fc
	dc.b $00
	even

loc_0e59ec:
	dc.b $01,$d5,$e5,$f4,$13
	dc.b $02,$d0,$e1,$ee,$00
	dc.b $c0,$de,$f0,$10,$22
	dc.b $40,$d0,$eb,$0c,$1f
	dc.b $2c,$d9,$e8,$04,$1a
	dc.b $00
	even

loc_0e5a06:
	dc.b $01,$d3,$e7,$fb,$13
	dc.b $01,$e0,$ef,$f3,$08
	dc.b $00
	even

loc_0e5a12:
	dc.b $01,$ce,$e8,$02,$0c
	dc.b $01,$d3,$f3,$fb,$04
	dc.b $0c,$ee,$fb,$f5,$00
	dc.b $00
	even

loc_0e5a22:
	dc.b $01,$ce,$de,$03,$0c
	dc.b $01,$d3,$ee,$f8,$08
	dc.b $02,$e5,$f2,$f3,$01
	dc.b $00
	even

loc_0e5a32:
	dc.b $01,$d3,$e2,$fe,$13
	dc.b $01,$d0,$ea,$fb,$09
	dc.b $02,$e4,$ee,$f5,$04
	dc.b $c0,$e2,$f0,$13,$22
	dc.b $2c,$db,$e8,$08,$1b
	dc.b $00
	even

loc_0e5a4c:
	dc.b $01,$ca,$f4,$fd,$05
	dc.b $02,$d0,$ec,$f9,$09
	dc.b $00
	even

loc_0e5a58:
	dc.b $02,$cd,$f4,$fd,$05
	dc.b $01,$d0,$e2,$f9,$05
	dc.b $01,$da,$f0,$fd,$09
	dc.b $c0,$bf,$d8,$03,$15
	dc.b $28,$cd,$e4,$01,$0f
	dc.b $00
	even

loc_0e5a72:
	dc.b $01,$ce,$f1,$f9,$05
	dc.b $02,$d4,$ec,$fe,$09
	dc.b $c0,$d0,$e3,$0f,$22
	dc.b $2c,$d0,$df,$01,$14
	dc.b $00
	even

loc_0e5a88:
	dc.b $01,$cf,$ef,$f6,$02
	dc.b $02,$d8,$e8,$f9,$10
	dc.b $c0,$e0,$f0,$14,$23
	dc.b $2c,$dd,$ec,$02,$1f
	dc.b $00
	even

loc_0e5a9e:
	dc.b $01,$ce,$ee,$fe,$06
	dc.b $01,$d3,$ec,$f9,$0a
	dc.b $02,$d3,$e8,$f6,$0d
	dc.b $00
	even

loc_0e5aae:
	dc.b $01,$cd,$ee,$fd,$05
	dc.b $01,$d3,$ec,$f4,$08
	dc.b $02,$d7,$ec,$f5,$0f
	dc.b $00
	even

loc_0e5abe:
	dc.b $01,$d0,$eb,$f7,$06
	dc.b $01,$db,$e9,$f3,$10
	dc.b $02,$ca,$ea,$f5,$00
	dc.b $c0,$e5,$f0,$0c,$25
	dc.b $2c,$e0,$ed,$f1,$1a
	dc.b $00
	even

loc_0e5ad8:
	dc.b $01,$c8,$ec,$fa,$06
	dc.b $02,$e0,$f3,$f4,$fc
	dc.b $01,$ce,$e1,$03,$0d
	dc.b $00
	even

loc_0e5ae8:
	dc.b $02,$c8,$e7,$05,$0d
	dc.b $01,$dc,$ec,$f7,$09
	dc.b $01,$cc,$dc,$fe,$12
	dc.b $00
	even

loc_0e5af8:
	dc.b $01,$d2,$e0,$00,$18
	dc.b $02,$df,$ec,$f6,$09
	dc.b $01,$da,$e8,$fb,$10
	dc.b $40,$c8,$ea,$18,$27
	dc.b $c0,$e0,$f4,$11,$25
	dc.b $2c,$d9,$ee,$0e,$1e
	dc.b $00
	even

loc_0e5b18:
	dc.b $01,$ce,$e3,$fe,$14
	dc.b $01,$dd,$ef,$f8,$0c
	dc.b $40,$df,$fa,$09,$1d
	dc.b $cc,$e3,$f8,$06,$12
	dc.b $00
	even

loc_0e5b2e:
	dc.b $01,$ce,$e8,$fb,$0d
	dc.b $01,$e4,$f4,$f9,$03
	dc.b $00
	even

loc_0e5b3a:
	dc.b $01,$cf,$f0,$fc,$08
	dc.b $02,$e9,$f8,$f8,$00
	dc.b $00
	even

loc_0e5b46:
	dc.b $02,$cf,$df,$02,$0a
	dc.b $01,$d3,$f0,$fa,$09
	dc.b $02,$ec,$fa,$f6,$00
	dc.b $c0,$d3,$e8,$0e,$1f
	dc.b $2c,$db,$e8,$05,$16
	dc.b $00
	even

loc_0e5b60:
	dc.b $02,$c9,$e3,$06,$13
	dc.b $01,$cf,$ef,$fd,$0f
	dc.b $02,$cd,$fa,$ff,$07
	dc.b $c0,$b9,$d0,$0b,$1a
	dc.b $40,$c0,$d6,$0e,$1e
	dc.b $2c,$c3,$db,$06,$16
	dc.b $00
	even

loc_0e5b80:
	dc.b $01,$cb,$f0,$03,$0b
	dc.b $01,$d2,$f4,$fb,$08
	dc.b $02,$cf,$fc,$fd,$05
	dc.b $02,$c4,$d8,$04,$10
	dc.b $00
	even

loc_0e5b96:
	dc.b $02,$e0,$ed,$fb,$0d
	dc.b $01,$d5,$eb,$f2,$08
	dc.b $00
	even

loc_0e5ba2:
	dc.b $0c,$e0,$ec,$ed,$12
	dc.b $01,$d9,$eb,$f0,$0b
	dc.b $00
	even

loc_0e5bae:
	dc.b $01,$d8,$ea,$ed,$f8
	dc.b $01,$dd,$ed,$f3,$0b
	dc.b $c0,$cf,$e4,$0e,$25
	dc.b $68,$d8,$f1,$08,$20
	dc.b $22,$d8,$e9,$04,$16
	dc.b $00
	even

loc_0e5bc8:
	dc.b $01,$d3,$e4,$f0,$00
	dc.b $01,$d8,$ee,$f8,$0c
	dc.b $02,$d6,$e8,$f4,$14
	dc.b $00
	even

loc_0e5bd8:
	dc.b $01,$d2,$f4,$f8,$00
	dc.b $01,$d5,$ed,$f4,$0b
	dc.b $00
	even

loc_0e5be4:
	dc.b $01,$ce,$d6,$f8,$00
	dc.b $01,$d4,$00,$f1,$03
	dc.b $01,$e8,$00,$f1,$0b
	dc.b $02,$d2,$e8,$ff,$09
	dc.b $00
	even

loc_0e5bfa:
	dc.b $01,$cf,$d7,$ff,$07
	dc.b $01,$d4,$00,$f6,$0b
	dc.b $01,$e8,$00,$f1,$0b
	dc.b $00
	even

loc_0e5c0a:
	dc.b $02,$d0,$f0,$07,$0f
	dc.b $01,$d5,$f0,$f9,$0c
	dc.b $01,$e8,$00,$f1,$0d
	dc.b $cc,$d4,$e4,$06,$1a
	dc.b $2c,$d0,$dc,$00,$16
	dc.b $00
	even

loc_0e5c24:
	dc.b $01,$d0,$d8,$00,$08
	dc.b $01,$d4,$00,$f5,$0c
	dc.b $01,$e8,$00,$f0,$0c
	dc.b $00
	even

loc_0e5c34:
	dc.b $01,$d8,$f0,$f0,$00
	dc.b $01,$e8,$00,$f0,$0b
	dc.b $00
	even

loc_0e5c40:
	dc.b $01,$d0,$d8,$fd,$05
	dc.b $01,$d6,$00,$f5,$07
	dc.b $01,$e8,$00,$f0,$0b
	dc.b $00
	even

loc_0e5c50:
	dc.b $01,$ce,$e8,$f8,$00
	dc.b $01,$d5,$00,$fd,$08
	dc.b $02,$d0,$e0,$f4,$08
	dc.b $22,$e0,$f0,$00,$13
	dc.b $00
	even

loc_0e5c66:
	dc.b $01,$cc,$e4,$f9,$03
	dc.b $01,$d0,$00,$fd,$08
	dc.b $0c,$c4,$da,$03,$0d
	dc.b $00
	even

loc_0e5c76:
	dc.b $01,$cc,$e4,$f9,$08
	dc.b $01,$c4,$00,$fd,$08
	dc.b $00
	even

loc_0e5c82:
	dc.b $01,$d0,$f0,$fb,$0a
	dc.b $01,$cd,$00,$fd,$08
	dc.b $0c,$d0,$e0,$ff,$19
	dc.b $00
	even

loc_0e5c92:
	dc.b $01,$d0,$e8,$fc,$04
	dc.b $02,$d5,$e0,$f5,$08
	dc.b $01,$da,$00,$fd,$08
	dc.b $02,$d8,$f0,$fd,$0c
	dc.b $c0,$d8,$ec,$13,$21
	dc.b $2c,$d4,$e8,$08,$19
	dc.b $00
	even

loc_0e5cb2:
	dc.b $01,$cd,$e8,$f8,$02
	dc.b $01,$d3,$e0,$f4,$04
	dc.b $01,$e0,$00,$fd,$08
	dc.b $02,$dc,$f0,$f6,$10
	dc.b $00
	even

loc_0e5cc8:
	dc.b $0c,$e8,$00,$f7,$0e
	dc.b $c0,$d4,$e8,$0e,$19
	dc.b $60,$da,$f0,$02,$17
	dc.b $00
	even

loc_0e5cd8:
	dc.b $02,$cc,$d8,$fc,$08
	dc.b $0c,$d8,$ec,$f8,$08
	dc.b $0c,$ec,$f8,$f3,$fd
	dc.b $c0,$be,$d0,$00,$0d
	dc.b $68,$c8,$dc,$06,$0f
	dc.b $00
	even

loc_0e5cf2:
	dc.b $01,$cb,$e3,$f9,$0a
	dc.b $0c,$da,$f0,$f7,$06
	dc.b $0c,$cb,$f8,$fe,$06
	dc.b $cc,$ba,$cb,$fd,$09
	dc.b $2c,$c2,$d4,$03,$0b
	dc.b $00
	even

loc_0e5d0c:
	dc.b $01,$d0,$e8,$f7,$09
	dc.b $01,$cb,$f8,$f8,$02
	dc.b $00
	even

loc_0e5d18:
	dc.b $01,$d0,$fc,$f6,$06
	dc.b $02,$cd,$dc,$f4,$09
	dc.b $00
	even

loc_0e5d24:
	dc.b $0c,$d6,$ec,$f0,$00
	dc.b $00
	even

loc_0e5d2a:
	dc.b $0c,$e8,$00,$f4,$0d
	dc.b $c0,$d7,$e8,$0c,$1a
	dc.b $60,$e0,$f8,$00,$0c
	dc.b $00
	even

loc_0e5d3a:
	dc.b $01,$c6,$d8,$fc,$0b
	dc.b $0c,$d0,$ec,$f7,$09
	dc.b $0c,$ec,$f8,$f3,$ff
	dc.b $cc,$be,$d0,$02,$0e
	dc.b $6c,$d0,$e4,$09,$12
	dc.b $00
	even

loc_0e5d54:
	dc.b $01,$c8,$e6,$fc,$0a
	dc.b $02,$da,$f0,$f7,$06
	dc.b $0c,$cb,$f8,$fe,$06
	dc.b $cc,$ba,$cb,$00,$0b
	dc.b $22,$c8,$dc,$04,$0e
	dc.b $00
	even

loc_0e5d6e:
	dc.b $01,$cf,$d9,$f3,$fe
	dc.b $01,$d5,$e0,$eb,$03
	dc.b $01,$de,$f0,$ef,$08
	dc.b $01,$ec,$00,$ef,$0d
	dc.b $00
	even

loc_0e5d84:
	dc.b $01,$d0,$db,$fa,$06
	dc.b $01,$d6,$00,$f1,$08
	dc.b $01,$e8,$00,$ef,$0b
	dc.b $00
	even

loc_0e5d94:
	dc.b $01,$d0,$d8,$00,$08
	dc.b $01,$d6,$e8,$f6,$11
	dc.b $01,$e8,$00,$f0,$0c
	dc.b $00
	even

loc_0e5da4:
	dc.b $01,$cc,$dc,$fb,$07
	dc.b $01,$d4,$f0,$f8,$0b
	dc.b $01,$e8,$00,$f2,$0c
	dc.b $00
	even

loc_0e5db4:
	dc.b $01,$d0,$d8,$00,$08
	dc.b $01,$d6,$e8,$f6,$0c
	dc.b $01,$e8,$00,$f0,$0c
	dc.b $00
	even

loc_0e5dc4:
	dc.b $01,$d6,$de,$fc,$04
	dc.b $01,$db,$00,$f1,$04
	dc.b $00
	even

loc_0e5dd0:
	dc.b $01,$d0,$e0,$fa,$0c
	dc.b $02,$dc,$ee,$f6,$01
	dc.b $0c,$e8,$fc,$f0,$fc
	dc.b $00
	even

loc_0e5de0:
	dc.b $01,$d5,$ea,$fc,$0c
	dc.b $02,$cc,$ea,$f6,$02
	dc.b $0c,$c6,$f6,$f1,$f9
	dc.b $00
	even

loc_0e5df0:
	dc.b $01,$d3,$ea,$fa,$07
	dc.b $01,$d3,$e1,$f4,$00
	dc.b $02,$c9,$e6,$fe,$0a
	dc.b $0c,$d9,$e8,$e9,$07
	dc.b $00
	even

loc_0e5e06:
	dc.b $01,$d0,$e8,$f8,$06
	dc.b $02,$ce,$e4,$f1,$0a
	dc.b $0c,$c9,$dc,$ec,$fe
	dc.b $00
	even

loc_0e5e16:
	dc.b $01,$d4,$ec,$f2,$04
	dc.b $02,$da,$e8,$f0,$0c
	dc.b $0c,$c5,$ec,$f1,$03
	dc.b $00
	even

loc_0e5e26:
	dc.b $01,$dc,$f2,$f2,$08
	dc.b $2c,$d4,$ef,$02,$14
	dc.b $c8,$d8,$ec,$08,$1e
	dc.b $00
	even

loc_0e5e36:
	dc.b $01,$e2,$f0,$f0,$fc
	dc.b $01,$f0,$00,$ec,$06
	dc.b $02,$e8,$f0,$ee,$0c
	dc.b $c8,$f0,$00,$10,$20
	dc.b $40,$dc,$f8,$0c,$1e
	dc.b $08,$ec,$00,$00,$10
	dc.b $00
	even

loc_0e5e56:
	dc.b $01,$e2,$ea,$f0,$fc
	dc.b $01,$e8,$00,$ee,$0a
	dc.b $02,$f0,$00,$10,$20
	dc.b $0c,$ec,$00,$08,$18
	dc.b $00
	even

loc_0e5e6c:
	dc.b $01,$de,$e6,$f0,$f8
	dc.b $01,$e4,$f0,$e8,$00
	dc.b $01,$ec,$00,$f2,$0c
	dc.b $02,$f0,$00,$00,$14
	dc.b $00
	even

loc_0e5e82:
	dc.b $01,$dd,$e5,$fb,$03
	dc.b $01,$e3,$00,$f2,$0b
	dc.b $01,$f0,$00,$f1,$13
	dc.b $00
	even

loc_0e5e92:
	dc.b $01,$e2,$f0,$f0,$fc
	dc.b $01,$f0,$00,$ec,$06
	dc.b $02,$e8,$f0,$ee,$0c
	dc.b $c8,$f0,$00,$10,$20
	dc.b $48,$dc,$f8,$0c,$1e
	dc.b $22,$ec,$fb,$00,$10
	dc.b $00
	even

loc_0e5eb2:
	dc.b $01,$dd,$e8,$f5,$05
	dc.b $01,$e8,$00,$fa,$0b
	dc.b $02,$e2,$f0,$ee,$0b
	dc.b $00
	even

loc_0e5ec2:
	dc.b $01,$cd,$00,$f6,$00
	dc.b $01,$d3,$e8,$f1,$04
	dc.b $02,$dc,$ec,$f8,$10
	dc.b $00
	even

loc_0e5ed2:
	dc.b $01,$cd,$d5,$f3,$fb
	dc.b $01,$d1,$e0,$ee,$ff
	dc.b $01,$d8,$00,$f9,$03
	dc.b $02,$d4,$e8,$f7,$10
	dc.b $00
	even

loc_0e5ee8:
	dc.b $01,$cc,$d4,$f5,$fd
	dc.b $01,$d0,$e0,$f0,$00
	dc.b $01,$d8,$00,$fa,$04
	dc.b $02,$d0,$e8,$00,$10
	dc.b $c0,$d3,$e3,$16,$26
	dc.b $2c,$d3,$e3,$08,$1e
	dc.b $00
	even

loc_0e5f08:
	dc.b $01,$cc,$d4,$f5,$fd
	dc.b $01,$d0,$e0,$f0,$00
	dc.b $01,$d8,$00,$fa,$04
	dc.b $02,$d0,$e8,$00,$10
	dc.b $c0,$d3,$e3,$16,$24
	dc.b $2c,$c8,$d8,$08,$1e
	dc.b $00
	even

loc_0e5f28:
	dc.b $01,$cc,$d4,$f5,$fd
	dc.b $01,$d0,$e0,$f0,$00
	dc.b $01,$d8,$00,$fa,$04
	dc.b $02,$d0,$e8,$00,$10
	dc.b $2c,$c4,$d4,$08,$1e
	dc.b $00
	even

loc_0e5f42:
	dc.b $01,$cc,$d4,$f5,$fd
	dc.b $01,$d0,$e0,$f0,$00
	dc.b $01,$d8,$00,$fa,$04
	dc.b $02,$d0,$e8,$00,$10
	dc.b $c0,$e0,$f0,$16,$24
	dc.b $2c,$e0,$f0,$04,$1e
	dc.b $00
	even

loc_0e5f62:
	dc.b $01,$cc,$d4,$f5,$fd
	dc.b $01,$d0,$e0,$f0,$00
	dc.b $01,$d8,$00,$fa,$04
	dc.b $02,$d0,$00,$00,$10
	dc.b $20,$e8,$00,$04,$1e
	dc.b $2c,$e8,$f0,$04,$1e
	dc.b $00
	even

loc_0e5f82:
	dc.b $01,$d0,$e0,$ec,$00
	dc.b $01,$d8,$00,$fa,$04
	dc.b $02,$d0,$e8,$00,$10
	dc.b $2c,$c2,$d2,$08,$1e
	dc.b $00
	even

loc_0e5f98:
	dc.b $01,$d2,$e2,$eb,$00
	dc.b $01,$d8,$00,$fa,$04
	dc.b $02,$c8,$e0,$00,$10
	dc.b $00
	even

loc_0e5fa8:
	dc.b $01,$d9,$eb,$e8,$1c
	dc.b $cc,$d9,$eb,$10,$22
	dc.b $2c,$d4,$f0,$00,$18
	dc.b $22,$dc,$e8,$e0,$10
	dc.b $00
	even

loc_0e5fbe:
	dc.b $01,$d8,$e8,$f6,$10
	dc.b $01,$e8,$00,$f0,$0c
	dc.b $00
	even

loc_0e5fca:
	dc.b $01,$d8,$00,$f6,$10
	dc.b $01,$f0,$00,$eb,$10
	dc.b $00
	even

loc_0e5fd6:
	dc.b $01,$d4,$dc,$00,$08
	dc.b $01,$d8,$00,$f4,$0a
	dc.b $01,$e8,$00,$f0,$0e
	dc.b $00
	even

loc_0e5fe6:
	dc.b $01,$d3,$db,$f4,$fc
	dc.b $01,$d8,$f0,$f0,$00
	dc.b $01,$e8,$00,$f0,$08
	dc.b $01,$f0,$00,$f0,$10
	dc.b $00
	even

loc_0e5ffc:
	dc.b $01,$cd,$d5,$fa,$02
	dc.b $01,$d2,$00,$f5,$07
	dc.b $01,$ec,$00,$f0,$0c
	dc.b $00
	even

loc_0e600c:
	dc.b $01,$ca,$d8,$f8,$08
	dc.b $01,$d2,$00,$f4,$04
	dc.b $01,$ea,$00,$f1,$0b
	dc.b $00
	even

loc_0e601c:
	dc.b $01,$c4,$d8,$f9,$05
	dc.b $01,$d0,$00,$f4,$05
	dc.b $01,$e8,$00,$f1,$0a
	dc.b $00

loc_0e602c:
	dc.b $01,$d0,$e8,$fa,$04
	dc.b $02,$d5,$e0,$f5,$08
	dc.b $01,$d8,$f3,$fd,$06
	dc.b $02,$d8,$ee,$fd,$0c
	dc.b $c0,$d8,$f0,$13,$23
	dc.b $68,$cc,$ec,$0c,$1b
	dc.b $00
	even

loc_0e604c:
	dc.b $01,$c6,$d0,$fc,$0a
	dc.b $01,$cd,$00,$f7,$08
	dc.b $00
	even

loc_0e6058:
	dc.b $01,$c6,$00,$fb,$0b
	dc.b $00
	even

loc_0e605e:
	dc.b $01,$c8,$00,$fb,$0b
	dc.b $01,$e0,$00,$f2,$08
	dc.b $00
	even

loc_0e606a:
	dc.b $01,$ce,$d6,$fb,$03
	dc.b $01,$d4,$00,$f4,$08
	dc.b $01,$e8,$00,$ee,$0e
	dc.b $02,$d8,$e8,$ff,$0d
	dc.b $00
	even

loc_0e6080:
	dc.b $01,$d6,$e6,$f1,$0f
	dc.b $01,$d6,$f8,$fa,$04
	dc.b $01,$d4,$e8,$ff,$0b
	dc.b $00
	even

loc_0e6090:
	dc.b $01,$cc,$e4,$f9,$08
	dc.b $01,$c0,$f6,$fd,$08
	dc.b $00
	even

loc_0e609c:
	dc.b $01,$d0,$f0,$fb,$0a
	dc.b $01,$cd,$f4,$fd,$08
	dc.b $0c,$d0,$e0,$ff,$19
	dc.b $00
	even
;0e60ac