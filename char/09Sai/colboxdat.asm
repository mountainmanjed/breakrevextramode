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

loc_0e9f70:
	dc.b $01,$cf,$d9,$ee,$05
	dc.b $01,$da,$e3,$05,$15
	dc.b $01,$d9,$e8,$f7,$05
	dc.b $01,$e8,$f6,$ed,$0e
	dc.b $01,$f6,$00,$ef,$14
	dc.b $00
	even

loc_0e9f8a:
	dc.b $01,$c7,$cf,$fd,$08
	dc.b $01,$cf,$00,$f2,$0c
	dc.b $00
	even

loc_0e9f96:
	dc.b $01,$e9,$00,$ee,$16
	dc.b $01,$d1,$e9,$f5,$18
	dc.b $00
	even

loc_0e9fa2:
	dc.b $01,$e9,$00,$ee,$18
	dc.b $01,$d1,$e9,$fd,$1a
	dc.b $00
	even

loc_0e9fae:
	dc.b $01,$e9,$00,$ed,$1b
	dc.b $01,$d1,$e9,$01,$1f
	dc.b $00
	even

loc_0e9fba:
	dc.b $01,$c2,$cb,$fc,$07
	dc.b $01,$cb,$00,$f2,$0a
	dc.b $00
	even

loc_0e9fc6:
	dc.b $01,$d2,$f7,$f7,$0c
	dc.b $00
	even

loc_0e9fcc:
	dc.b $01,$ce,$f6,$f6,$08
	dc.b $00
	even

loc_0e9fd2:
	dc.b $01,$d0,$dc,$f4,$09
	dc.b $01,$dc,$e6,$f9,$17
	dc.b $01,$e6,$00,$f0,$12
	dc.b $00
	even

loc_0e9fe2:
	dc.b $01,$cc,$00,$f3,$0a
	dc.b $00
	even

loc_0e9fe8:
	dc.b $01,$e6,$00,$ef,$09
	dc.b $01,$d2,$e6,$f3,$ff
	dc.b $01,$da,$e6,$ff,$06
	dc.b $00
	even

loc_0e9ff8:
	dc.b $01,$d0,$00,$f0,$16
	dc.b $00
	even

loc_0e9ffe:
	dc.b $01,$dd,$00,$ef,$0f
	dc.b $00
	even

loc_0ea004:
	dc.b $01,$d1,$00,$ee,$09
	dc.b $01,$e2,$f7,$09,$0f
	dc.b $00
	even

loc_0ea010:
	dc.b $01,$d0,$ec,$f6,$0a
	dc.b $00
	even

loc_0ea016:
	dc.b $01,$cc,$da,$ec,$0d
	dc.b $01,$da,$e7,$f5,$09
	dc.b $01,$e7,$00,$f0,$11
	dc.b $01,$f4,$fe,$11,$19
	dc.b $00
	even

loc_0ea02c:
	dc.b $01,$f3,$00,$ee,$13
	dc.b $01,$d2,$f3,$f5,$19
	dc.b $00
	even

loc_0ea038:
	dc.b $01,$f3,$00,$ee,$15
	dc.b $01,$ea,$f3,$fa,$1a
	dc.b $01,$db,$ea,$04,$14
	dc.b $01,$d8,$e4,$14,$23
	dc.b $00
	even

loc_0ea04e:
	dc.b $01,$d1,$e0,$f6,$0f
	dc.b $01,$e0,$f4,$f6,$13
	dc.b $01,$f4,$00,$ee,$15
	dc.b $00
	even

loc_0ea05e:
	dc.b $01,$cc,$d6,$f2,$ff
	dc.b $01,$cf,$e2,$02,$0f
	dc.b $01,$d4,$e7,$f9,$07
	dc.b $01,$e7,$00,$f2,$10
	dc.b $00
	even

loc_0ea074:
	dc.b $01,$d8,$e2,$f7,$1e
	dc.b $01,$df,$ec,$04,$17
	dc.b $01,$ec,$00,$ef,$1e
	dc.b $c0,$d3,$e1,$10,$21
	dc.b $00
	even

loc_0ea08a:
	dc.b $01,$cc,$d8,$f7,$04
	dc.b $01,$d1,$dd,$fb,$0e
	dc.b $01,$db,$e4,$fc,$12
	dc.b $01,$e4,$ed,$fc,$09
	dc.b $01,$e9,$f5,$f6,$12
	dc.b $01,$f5,$00,$ef,$11
	dc.b $00
	even

loc_0ea0aa:
	dc.b $01,$cd,$d9,$fb,$09
	dc.b $01,$d2,$dd,$ff,$13
	dc.b $01,$dd,$e4,$01,$14
	dc.b $01,$e4,$ea,$00,$0e
	dc.b $01,$ea,$f5,$fc,$17
	dc.b $01,$f3,$00,$f3,$13
	dc.b $c0,$da,$e5,$0a,$20
	dc.b $00
	even

loc_0ea0ce:
	dc.b $01,$df,$e9,$fd,$0c
	dc.b $01,$e9,$f2,$f7,$17
	dc.b $01,$f2,$00,$ef,$13
	dc.b $01,$d3,$df,$f5,$18
	dc.b $00
	even

loc_0ea0e4:
	dc.b $01,$d7,$e0,$f7,$1c
	dc.b $01,$e0,$eb,$05,$15
	dc.b $01,$eb,$f6,$f8,$1c
	dc.b $01,$f6,$00,$ee,$1e
	dc.b $00
	even

loc_0ea0fa:
	dc.b $01,$d7,$e0,$f7,$1c
	dc.b $01,$e0,$eb,$05,$15
	dc.b $01,$eb,$f6,$f8,$1c
	dc.b $01,$f6,$00,$ee,$1e
	dc.b $c0,$d5,$e0,$10,$2a
	dc.b $00
	even

loc_0ea114:
	dc.b $01,$da,$e2,$f0,$12
	dc.b $01,$e2,$eb,$fe,$0e
	dc.b $01,$eb,$f6,$fa,$17
	dc.b $01,$f6,$00,$ee,$13
	dc.b $c0,$d7,$e2,$0e,$24
	dc.b $00
	even

loc_0ea12e:
	dc.b $01,$ea,$00,$ef,$08
	dc.b $01,$dc,$ea,$f0,$0f
	dc.b $00
	even

loc_0ea13a:
	dc.b $01,$ea,$00,$ef,$08
	dc.b $01,$dc,$ea,$f0,$0f
	dc.b $01,$d5,$e5,$0f,$1e
	dc.b $c0,$cf,$e2,$11,$24
	dc.b $00
	even

loc_0ea150:
	dc.b $01,$d8,$df,$f8,$04
	dc.b $01,$df,$ea,$ea,$0d
	dc.b $01,$ea,$00,$f2,$0a
	dc.b $00
	even

loc_0ea160:
	dc.b $01,$d4,$de,$fd,$09
	dc.b $01,$de,$e7,$f8,$15
	dc.b $01,$e7,$f3,$ee,$07
	dc.b $01,$f3,$00,$f3,$0c
	dc.b $00
	even

loc_0ea176:
	dc.b $01,$d4,$dc,$ff,$09
	dc.b $01,$e3,$f2,$ee,$08
	dc.b $01,$f2,$00,$f1,$0d
	dc.b $01,$dc,$e3,$f7,$16
	dc.b $c0,$da,$e5,$07,$1c
	dc.b $c0,$d3,$df,$14,$24
	dc.b $00
	even

loc_0ea196:
	dc.b $01,$d0,$e1,$f7,$0e
	dc.b $01,$f6,$00,$f1,$11
	dc.b $01,$e1,$ea,$fc,$14
	dc.b $01,$ea,$f6,$f6,$13
	dc.b $00
	even

loc_0ea1ac:
	dc.b $01,$cd,$d8,$09,$1a
	dc.b $01,$d8,$e0,$0a,$16
	dc.b $01,$e0,$ec,$0b,$1d
	dc.b $01,$ec,$00,$0a,$14
	dc.b $00
	even

loc_0ea1c2:
	dc.b $01,$cc,$00,$0e,$1a
	dc.b $01,$da,$ef,$1a,$24
	dc.b $c0,$d7,$ee,$0d,$2b
	dc.b $00
	even

loc_0ea1d2:
	dc.b $01,$cc,$00,$0e,$1a
	dc.b $01,$d9,$e8,$1a,$28
	dc.b $01,$e8,$f1,$1a,$23
	dc.b $00
	even

loc_0ea1e2:
	dc.b $01,$cb,$00,$0d,$1c
	dc.b $01,$d7,$e7,$1c,$28
	dc.b $c0,$d0,$e5,$10,$2e
	dc.b $00
	even

loc_0ea1f2:
	dc.b $01,$cc,$00,$0d,$1d
	dc.b $01,$d5,$e9,$1d,$2c
	dc.b $00
	even

loc_0ea1fe:
	dc.b $01,$dd,$00,$e7,$04
	dc.b $01,$ef,$00,$04,$0c
	dc.b $00
	even

loc_0ea20a:
	dc.b $01,$de,$00,$e6,$02
	dc.b $c1,$ef,$00,$02,$20
	dc.b $00
	even

loc_0ea216:
	dc.b $01,$dc,$e6,$f1,$fd
	dc.b $01,$e6,$00,$ea,$00
	dc.b $01,$ec,$00,$00,$09
	dc.b $01,$f4,$00,$09,$1c
	dc.b $00
	even

loc_0ea22c:
	dc.b $01,$c2,$d1,$f3,$fb
	dc.b $01,$d1,$df,$f3,$09
	dc.b $01,$df,$ea,$f4,$0d
	dc.b $01,$ea,$00,$ef,$0e
	dc.b $00
	even

loc_0ea242:
	dc.b $01,$d1,$db,$02,$0c
	dc.b $01,$e9,$00,$f1,$11
	dc.b $c0,$c6,$d6,$ec,$f6
	dc.b $c0,$cb,$dc,$f2,$fc
	dc.b $c0,$d1,$dd,$f7,$02
	dc.b $01,$d5,$e9,$f9,$09
	dc.b $01,$dc,$e5,$09,$10
	dc.b $00
	even

loc_0ea266:
	dc.b $01,$d1,$db,$04,$0e
	dc.b $01,$d6,$db,$fa,$04
	dc.b $01,$db,$eb,$fa,$16
	dc.b $01,$eb,$f6,$f6,$12
	dc.b $c0,$ea,$01,$12,$24
	dc.b $01,$f6,$00,$ee,$10
	dc.b $00
	even

loc_0ea286:
	dc.b $01,$d3,$da,$03,$15
	dc.b $c0,$db,$f2,$17,$27
	dc.b $01,$d9,$e0,$f2,$1f
	dc.b $01,$e0,$ea,$ff,$0f
	dc.b $01,$ea,$f3,$f7,$18
	dc.b $01,$f3,$00,$ee,$14
	dc.b $00
	even

loc_0ea2a6:
	dc.b $01,$d2,$d9,$0d,$19
	dc.b $01,$d9,$e0,$f6,$25
	dc.b $01,$e0,$ea,$03,$15
	dc.b $01,$ea,$f5,$f8,$1d
	dc.b $01,$f5,$00,$ee,$14
	dc.b $00
	even

loc_0ea2c0:
	dc.b $01,$c9,$d8,$02,$10
	dc.b $01,$d8,$e9,$fa,$0c
	dc.b $01,$e9,$f3,$f4,$11
	dc.b $01,$f3,$00,$ef,$10
	dc.b $00
	even

loc_0ea2d6:
	dc.b $01,$d0,$dd,$ef,$09
	dc.b $01,$dd,$e6,$f8,$07
	dc.b $01,$d8,$e0,$07,$11
	dc.b $01,$e6,$00,$ef,$11
	dc.b $00
	even

loc_0ea2ec:
	dc.b $01,$ca,$d8,$06,$10
	dc.b $01,$d8,$de,$08,$0f
	dc.b $01,$d8,$e8,$f8,$08
	dc.b $01,$f4,$00,$ed,$0f
	dc.b $01,$e8,$f4,$f3,$10
	dc.b $00
	even

loc_0ea306:
	dc.b $01,$d1,$df,$0d,$1d
	dc.b $c0,$bc,$c5,$05,$0e
	dc.b $c0,$c1,$cb,$0a,$12
	dc.b $c0,$c6,$d0,$0e,$17
	dc.b $01,$d7,$e2,$03,$13
	dc.b $01,$de,$e8,$fe,$0f
	dc.b $01,$e8,$f4,$f6,$15
	dc.b $01,$f4,$00,$ed,$10
	dc.b $00
	even

loc_0ea330:
	dc.b $01,$d8,$e7,$04,$17
	dc.b $01,$df,$e7,$17,$24
	dc.b $c2,$d0,$e3,$1e,$3f
	dc.b $01,$e7,$ed,$ff,$0e
	dc.b $01,$f6,$00,$ed,$0e
	dc.b $01,$ed,$f6,$f6,$17
	dc.b $00
	even

loc_0ea350:
	dc.b $01,$d8,$e8,$02,$15
	dc.b $01,$e8,$f4,$fc,$17
	dc.b $01,$f4,$00,$ec,$0b
	dc.b $01,$f0,$f9,$f7,$11
	dc.b $00
	even

loc_0ea366:
	dc.b $01,$d7,$ea,$00,$10
	dc.b $01,$dd,$ea,$f9,$00
	dc.b $01,$ea,$00,$fa,$0d
	dc.b $01,$f2,$00,$ec,$fa
	dc.b $00
	even

loc_0ea37c:
	dc.b $01,$d3,$e0,$05,$16
	dc.b $01,$da,$e6,$fe,$0c
	dc.b $01,$f5,$00,$ec,$0e
	dc.b $01,$ea,$f5,$f4,$14
	dc.b $01,$e6,$ea,$fa,$0d
	dc.b $00
	even

loc_0ea396:
	dc.b $01,$c9,$de,$f6,$fe
	dc.b $01,$da,$e4,$fb,$0b
	dc.b $01,$e4,$f0,$fb,$0f
	dc.b $01,$e8,$00,$f2,$0a
	dc.b $00
	even

loc_0ea3ac:
	dc.b $01,$dc,$e8,$fa,$0d
	dc.b $01,$e8,$ee,$f4,$10
	dc.b $01,$ee,$00,$f3,$0b
	dc.b $c0,$ce,$dc,$ec,$f5
	dc.b $c0,$d4,$e3,$f2,$fa
	dc.b $c0,$d9,$e7,$f9,$01
	dc.b $00
	even

loc_0ea3cc:
	dc.b $01,$dd,$e9,$f5,$0e
	dc.b $01,$e2,$eb,$0e,$15
	dc.b $01,$e9,$00,$f3,$08
	dc.b $c0,$ea,$f8,$fe,$13
	dc.b $01,$f3,$00,$08,$0d
	dc.b $00
	even

loc_0ea3e6:
	dc.b $01,$dd,$e9,$f5,$0e
	dc.b $01,$e2,$eb,$0e,$15
	dc.b $01,$e9,$00,$f3,$08
	dc.b $01,$f3,$00,$08,$0d
	dc.b $00
	even

loc_0ea3fc:
	dc.b $01,$d6,$de,$ee,$fc
	dc.b $c2,$ea,$fa,$0e,$40
	dc.b $01,$d9,$e4,$f9,$0d
	dc.b $01,$e3,$ea,$fc,$16
	dc.b $01,$e5,$ee,$12,$20
	dc.b $01,$ea,$f1,$f4,$09
	dc.b $01,$f1,$00,$f3,$0e
	dc.b $00
	even

loc_0ea420:
	dc.b $01,$dc,$00,$fd,$0d
	dc.b $01,$e3,$00,$f3,$fd
	dc.b $00
	even

loc_0ea42c:
	dc.b $01,$f4,$00,$fd,$0d
	dc.b $01,$da,$f4,$fd,$0b
	dc.b $01,$e1,$00,$f3,$fd
	dc.b $01,$cd,$df,$06,$10
	dc.b $00
	even

loc_0ea442:
	dc.b $01,$d6,$e4,$ee,$06
	dc.b $01,$dd,$e6,$f7,$0f
	dc.b $01,$e6,$f0,$f2,$06
	dc.b $01,$ee,$00,$f2,$0a
	dc.b $00
	even

loc_0ea458:
	dc.b $01,$cc,$d6,$f2,$fc
	dc.b $01,$d6,$e2,$eb,$00
	dc.b $01,$e2,$00,$ef,$00
	dc.b $01,$ef,$00,$00,$06
	dc.b $01,$d1,$dd,$fc,$06
	dc.b $00
	even

loc_0ea472:
	dc.b $01,$cc,$e9,$e9,$04
	dc.b $01,$e9,$00,$ee,$fb
	dc.b $01,$e1,$ee,$03,$11
	dc.b $00
	even

loc_0ea482:
	dc.b $01,$d9,$00,$e9,$f7
	dc.b $01,$d3,$db,$ef,$0b
	dc.b $01,$cd,$d7,$05,$1a
	dc.b $01,$cb,$e2,$fc,$05
	dc.b $01,$db,$f4,$f7,$fc
	dc.b $00
	even

loc_0ea49c:
	dc.b $01,$d9,$00,$e9,$f7
	dc.b $01,$d3,$db,$ef,$0b
	dc.b $01,$cd,$d7,$05,$1a
	dc.b $01,$cb,$e2,$fc,$05
	dc.b $01,$db,$f4,$f7,$fc
	dc.b $80,$ca,$e6,$fd,$1f
	dc.b $00
	even

loc_0ea4bc:
	dc.b $01,$d8,$e8,$e9,$fd
	dc.b $01,$e8,$00,$ea,$f9
	dc.b $01,$d2,$de,$fd,$0c
	dc.b $c0,$ca,$e6,$fd,$1f
	dc.b $00
	even

loc_0ea4d2:
	dc.b $01,$d1,$e2,$eb,$0a
	dc.b $01,$e2,$00,$eb,$f9
	dc.b $00
	even

loc_0ea4de:
	dc.b $01,$cc,$d3,$ef,$fc
	dc.b $01,$e4,$00,$ef,$fa
	dc.b $01,$d3,$e4,$e9,$00
	dc.b $01,$db,$eb,$fa,$0a
	dc.b $00
	even

loc_0ea4f4:
	dc.b $01,$cb,$da,$ec,$07
	dc.b $01,$da,$00,$ef,$0f
	dc.b $00
	even

loc_0ea500:
	dc.b $01,$cc,$e2,$00,$0c
	dc.b $01,$d1,$00,$f7,$08
	dc.b $00
	even

loc_0ea50c:
	dc.b $01,$c8,$d9,$ef,$09
	dc.b $01,$d9,$e1,$f9,$0e
	dc.b $01,$e1,$00,$f6,$0a
	dc.b $00
	even

loc_0ea51c:
	dc.b $01,$c9,$f1,$f6,$08
	dc.b $01,$cf,$dc,$e9,$f6
	dc.b $01,$f1,$00,$f4,$00
	dc.b $00
	even

loc_0ea52c:
	dc.b $01,$c8,$00,$f6,$08
	dc.b $01,$d4,$f1,$08,$15
	dc.b $00
	even

loc_0ea538:
	dc.b $01,$cb,$e0,$f0,$00
	dc.b $01,$d7,$e2,$00,$21
	dc.b $01,$e0,$00,$f9,$03
	dc.b $00
	even

loc_0ea548:
	dc.b $01,$cb,$e0,$f0,$00
	dc.b $01,$d7,$e2,$00,$21
	dc.b $01,$e0,$00,$f9,$03
	dc.b $80,$d4,$e5,$0b,$24
	dc.b $00
	even

loc_0ea55e:
	dc.b $01,$cb,$e0,$f0,$00
	dc.b $01,$d5,$dd,$00,$12
	dc.b $01,$cf,$d7,$0a,$19
	dc.b $01,$dd,$00,$fb,$06
	dc.b $00
	even

loc_0ea574:
	dc.b $01,$cb,$e0,$f0,$00
	dc.b $01,$d5,$dd,$00,$12
	dc.b $01,$cf,$d7,$0a,$19
	dc.b $01,$dd,$00,$fb,$06
	dc.b $c0,$c8,$db,$0a,$26
	dc.b $00
	even

loc_0ea58e:
	dc.b $01,$cb,$e0,$f0,$00
	dc.b $01,$d5,$dd,$00,$12
	dc.b $01,$cf,$d7,$0a,$19
	dc.b $01,$dd,$00,$fb,$06
	dc.b $c0,$c7,$e0,$06,$23
	dc.b $00
	even

loc_0ea5a8:
	dc.b $01,$cb,$e0,$f0,$00
	dc.b $01,$d5,$dd,$00,$12
	dc.b $01,$cf,$d7,$0a,$19
	dc.b $01,$dd,$00,$fb,$06
	dc.b $00
	even

loc_0ea5be:
	dc.b $01,$de,$00,$f0,$0d
	dc.b $00
	even

loc_0ea5c4:
	dc.b $01,$de,$00,$ee,$00
	dc.b $01,$e1,$ec,$00,$09
	dc.b $01,$ee,$fa,$00,$0d
	dc.b $00
	even

loc_0ea5d4:
	dc.b $01,$e5,$00,$ed,$f6
	dc.b $01,$dc,$e5,$f3,$0f
	dc.b $01,$e5,$f3,$f6,$15
	dc.b $00
	even

loc_0ea5e4:
	dc.b $01,$e7,$00,$ee,$f8
	dc.b $01,$da,$e7,$f4,$03
	dc.b $01,$e1,$f0,$f8,$13
	dc.b $01,$e0,$e8,$13,$25
	dc.b $c0,$de,$ec,$09,$32
	dc.b $00
	even

loc_0ea5fe:
	dc.b $01,$e0,$00,$e9,$14
	dc.b $00
	even

loc_0ea604:
	dc.b $01,$f5,$00,$de,$07
	dc.b $c1,$f5,$00,$07,$29
	dc.b $01,$ea,$f5,$e7,$07
	dc.b $01,$e0,$ea,$f1,$04
	dc.b $00
	even

loc_0ea61a:
	dc.b $01,$e0,$00,$e7,$0c
	dc.b $00
	even

loc_0ea620:
	dc.b $01,$d1,$df,$ee,$0c
	dc.b $01,$df,$e7,$f9,$15
	dc.b $01,$e7,$f1,$f5,$10
	dc.b $01,$f1,$00,$ed,$10
	dc.b $00
	even

loc_0ea636:
	dc.b $01,$cf,$00,$f7,$09
	dc.b $01,$cb,$e1,$02,$0d
	dc.b $00
	even

loc_0ea642:
	dc.b $01,$d2,$00,$f3,$0d
	dc.b $01,$cc,$d3,$fb,$06
	dc.b $00
	even

loc_0ea64e:
	dc.b $01,$ce,$00,$f5,$0a
	dc.b $01,$c8,$cf,$fd,$07
	dc.b $00
	even

loc_0ea65a:
	dc.b $01,$ce,$00,$f0,$0a
	dc.b $01,$c8,$cf,$f9,$02
	dc.b $00
	even

loc_0ea666:
	dc.b $01,$cf,$e0,$e6,$06
	dc.b $01,$e0,$00,$f6,$05
	dc.b $01,$c4,$cf,$f8,$09
	dc.b $00
	even

loc_0ea676:
	dc.b $01,$e0,$00,$ee,$fd
	dc.b $01,$c6,$e1,$ee,$05
	dc.b $c0,$c2,$d6,$fe,$17
	dc.b $00
	even

loc_0ea686:
	dc.b $01,$c7,$e5,$ed,$02
	dc.b $c0,$d8,$ed,$fe,$1e
	dc.b $01,$e5,$00,$ee,$f8
	dc.b $01,$c1,$d2,$fa,$06
	dc.b $01,$da,$e4,$02,$11
	dc.b $01,$df,$eb,$10,$1b
	dc.b $00
	even

loc_0ea6a6:
	dc.b $01,$cb,$da,$eb,$06
	dc.b $01,$da,$e5,$f5,$0f
	dc.b $01,$e5,$00,$ef,$0c
	dc.b $01,$eb,$fd,$0c,$14
	dc.b $00
	even

loc_0ea6bc:
	dc.b $01,$d0,$00,$f1,$0a
	dc.b $01,$db,$00,$0a,$13
	dc.b $00
	even

loc_0ea6c8:
	dc.b $01,$d1,$db,$04,$0e
	dc.b $01,$d6,$db,$fa,$04
	dc.b $01,$db,$eb,$fa,$16
	dc.b $01,$eb,$f6,$f6,$12
	dc.b $01,$f6,$00,$ee,$10
	dc.b $00
	even

loc_0ea6e2:
	dc.b $01,$d2,$ea,$f7,$08
	dc.b $01,$ea,$00,$f2,$0c
	dc.b $00
	even

loc_0ea6ee:
	dc.b $01,$d4,$ec,$fb,$0b
	dc.b $01,$ec,$00,$f5,$0e
	dc.b $c0,$c6,$db,$ec,$f7
	dc.b $c0,$cc,$de,$f6,$01
	dc.b $00
	even

loc_0ea704:
	dc.b $01,$d5,$ec,$fc,$0d
	dc.b $c0,$e6,$00,$fc,$13
	dc.b $01,$ec,$00,$f6,$0f
	dc.b $01,$d7,$e7,$0d,$19
	dc.b $00
	even

loc_0ea71a:
	dc.b $01,$dc,$00,$ed,$21
	dc.b $01,$d4,$dd,$f8,$14
	dc.b $c0,$e4,$05,$09,$31
	dc.b $00
	even

loc_0ea72a:
	dc.b $01,$d8,$00,$ee,$1b
	dc.b $01,$c2,$d8,$07,$19
	dc.b $42,$c2,$05,$0c,$34
	dc.b $c0,$b0,$c2,$0c,$34
	dc.b $42,$c4,$fa,$34,$43
	dc.b $42,$b5,$c4,$34,$3f
	dc.b $00
	even

loc_0ea74a:
	dc.b $01,$d3,$00,$ee,$1c
	dc.b $42,$b9,$dc,$ec,$fc
	dc.b $42,$b1,$f9,$fc,$35
	dc.b $42,$f9,$03,$11,$33
	dc.b $42,$a8,$b1,$02,$33
	dc.b $42,$b2,$f8,$35,$45
	dc.b $00
	even

loc_0ea76a:
	dc.b $01,$d3,$00,$ee,$1c
	dc.b $00
	even

loc_0ea770:
	dc.b $01,$d3,$00,$ee,$1c
	dc.b $00
	even

loc_0ea776:
	dc.b $01,$d3,$00,$ee,$1c
	dc.b $00
	even

loc_0ea77c:
	dc.b $01,$d3,$00,$ee,$1c
	dc.b $00
	even

loc_0ea782:
	dc.b $01,$c9,$df,$f3,$0d
	dc.b $01,$df,$ea,$f8,$0a
	dc.b $01,$ea,$00,$ef,$13
	dc.b $00
	even

loc_0ea792:
	dc.b $01,$ce,$df,$ee,$06
	dc.b $01,$df,$e9,$f7,$07
	dc.b $01,$e9,$00,$ef,$10
	dc.b $01,$d3,$e2,$06,$11
	dc.b $00
	even

loc_0ea7a8:
	dc.b $01,$d5,$df,$fc,$0e
	dc.b $01,$df,$00,$f5,$10
	dc.b $00
	even

loc_0ea7b4:
	dc.b $01,$ce,$d5,$ef,$fa
	dc.b $01,$df,$f4,$ea,$0c
	dc.b $01,$f4,$00,$ef,$12
	dc.b $01,$d5,$df,$ea,$02
	dc.b $00
	even

loc_0ea7ca:
	dc.b $01,$d0,$d9,$e6,$f6
	dc.b $01,$d9,$f4,$e8,$0c
	dc.b $01,$f4,$00,$ef,$16
	dc.b $00
	even

loc_0ea7da:
	dc.b $01,$d0,$e7,$f1,$07
	dc.b $01,$e7,$00,$e6,$0b
	dc.b $00
	even

loc_0ea7e6:
	dc.b $01,$d9,$f5,$f5,$16
	dc.b $01,$f5,$00,$ed,$13
	dc.b $01,$d0,$db,$fd,$11
	dc.b $00
	even

loc_0ea7f6:
	dc.b $01,$e1,$eb,$02,$14
	dc.b $01,$eb,$f5,$f7,$1c
	dc.b $01,$f5,$00,$ed,$15
	dc.b $01,$d8,$e1,$f6,$20
	dc.b $00
	even

loc_0ea80c:
	dc.b $01,$e1,$eb,$02,$12
	dc.b $c0,$d2,$e5,$15,$32
	dc.b $01,$eb,$f5,$f7,$1c
	dc.b $01,$f5,$00,$ed,$15
	dc.b $01,$d8,$e1,$f5,$29
	dc.b $00
	even

loc_0ea826:
	dc.b $01,$d6,$eb,$ff,$0f
	dc.b $c0,$d0,$e6,$0a,$30
	dc.b $01,$eb,$f5,$f7,$18
	dc.b $01,$f5,$00,$ed,$15
	dc.b $01,$d4,$e3,$0f,$29
	dc.b $00
	even

loc_0ea840:
	dc.b $01,$d4,$e7,$ef,$17
	dc.b $01,$e7,$f5,$f7,$19
	dc.b $01,$f5,$00,$ef,$14
	dc.b $00
	even

loc_0ea850:
	dc.b $01,$d2,$d9,$02,$0f
	dc.b $01,$d9,$e3,$f5,$17
	dc.b $01,$e3,$ed,$fa,$0c
	dc.b $01,$ed,$00,$f0,$12
	dc.b $c0,$e2,$f1,$02,$18
	dc.b $00
	even

loc_0ea86a:
	dc.b $01,$d2,$d9,$05,$0f
	dc.b $01,$d9,$e1,$fd,$22
	dc.b $01,$e1,$eb,$fb,$0b
	dc.b $01,$eb,$f4,$f5,$13
	dc.b $01,$f4,$00,$ed,$10
	dc.b $c0,$d7,$e8,$14,$3f
	dc.b $00
	even

loc_0ea88a:
	dc.b $01,$d5,$e1,$02,$12
	dc.b $01,$e1,$eb,$fd,$0e
	dc.b $01,$eb,$f6,$f6,$16
	dc.b $01,$f6,$00,$ec,$13
	dc.b $00
	even

loc_0ea8a0:
	dc.b $01,$d5,$e3,$fe,$0f
	dc.b $01,$e3,$eb,$ff,$1c
	dc.b $01,$cb,$db,$f6,$00
	dc.b $01,$eb,$f6,$f6,$16
	dc.b $01,$f6,$00,$ec,$13
	dc.b $c0,$b3,$d5,$f8,$2c
	dc.b $00
	even

loc_0ea8c0:
	dc.b $01,$d5,$e3,$fe,$0f
	dc.b $01,$e3,$eb,$ff,$1c
	dc.b $01,$cb,$db,$f6,$00
	dc.b $01,$eb,$f6,$f6,$16
	dc.b $01,$f6,$00,$ec,$13
	dc.b $00
	even

loc_0ea8da:
	dc.b $01,$d4,$e2,$fe,$16
	dc.b $01,$e2,$eb,$fc,$0a
	dc.b $01,$c9,$d9,$fa,$03
	dc.b $01,$eb,$f6,$f4,$13
	dc.b $01,$f6,$00,$ec,$11
	dc.b $00
	even

loc_0ea8f4:
	dc.b $01,$da,$e4,$01,$1c
	dc.b $01,$e4,$ea,$fc,$0e
	dc.b $01,$d1,$da,$05,$13
	dc.b $01,$ea,$f5,$f6,$16
	dc.b $01,$f5,$00,$ef,$12
	dc.b $c0,$b0,$e1,$0e,$3f
	dc.b $00
	even

loc_0ea914:
	dc.b $01,$d7,$e4,$02,$14
	dc.b $01,$e4,$ec,$fd,$12
	dc.b $01,$ec,$f8,$f6,$1a
	dc.b $01,$f8,$00,$ef,$12
	dc.b $c0,$d8,$01,$0b,$34
	dc.b $00
	even

loc_0ea92e:
	dc.b $01,$d7,$e4,$02,$14
	dc.b $01,$e4,$ec,$fd,$12
	dc.b $01,$ec,$f8,$f6,$1a
	dc.b $01,$f8,$00,$ef,$12
	dc.b $00
	even

loc_0ea944:
	dc.b $01,$cd,$00,$ef,$1f
	dc.b $00
	even

loc_0ea94a:
	dc.b $01,$c4,$00,$ee,$0d
	dc.b $00
	even

loc_0ea950:
	dc.b $01,$b8,$00,$f3,$0f
	dc.b $00
	even

loc_0ea956:
	dc.b $01,$c0,$00,$f5,$0b
	dc.b $00
	even

loc_0ea95c:
	dc.b $01,$c9,$d7,$02,$0b
	dc.b $01,$ca,$e2,$fb,$07
	dc.b $01,$e0,$e8,$fc,$0c
	dc.b $00
	even

loc_0ea96c:
	dc.b $01,$ca,$e1,$f9,$0b
	dc.b $c2,$d6,$e2,$e6,$04
	dc.b $00
	even

loc_0ea978:
	dc.b $01,$cb,$d4,$fb,$21
	dc.b $01,$d3,$e3,$fb,$0d
	dc.b $c2,$c9,$d5,$1c,$43
	dc.b $00
	even

loc_0ea988:
	dc.b $01,$c8,$d1,$ef,$1a
	dc.b $01,$d0,$e1,$00,$0e
	dc.b $c2,$c1,$cd,$19,$35
	dc.b $00
	even

loc_0ea998:
	dc.b $01,$c8,$d1,$ef,$1a
	dc.b $01,$d0,$e4,$00,$0e
	dc.b $c2,$c1,$cd,$19,$23
	dc.b $00
	even

loc_0ea9a8:
	dc.b $01,$c6,$d9,$fd,$0b
	dc.b $01,$d9,$e6,$fb,$0e
	dc.b $00
	even

loc_0ea9b4:
	dc.b $01,$c5,$d0,$05,$0e
	dc.b $01,$c0,$cf,$fa,$05
	dc.b $01,$ce,$df,$fc,$0a
	dc.b $01,$cd,$d9,$0a,$19
	dc.b $01,$d3,$de,$14,$21
	dc.b $c2,$d7,$e9,$1e,$3f
	dc.b $00
	even

loc_0ea9d4:
	dc.b $01,$ca,$e4,$f9,$06
	dc.b $01,$ce,$d8,$ec,$11
	dc.b $01,$dc,$ec,$f4,$05
	dc.b $00
	even

loc_0ea9e4:
	dc.b $01,$ca,$e4,$fb,$06
	dc.b $01,$d4,$df,$ec,$0e
	dc.b $01,$de,$e9,$f4,$07
	dc.b $00
	even

loc_0ea9f4:
	dc.b $01,$ca,$e4,$fc,$05
	dc.b $01,$cf,$da,$f1,$0d
	dc.b $01,$da,$eb,$fb,$0a
	dc.b $01,$c7,$d5,$0d,$17
	dc.b $00
	even

loc_0eaa0a:
	dc.b $01,$cb,$e7,$ff,$08
	dc.b $01,$ce,$dc,$f6,$08
	dc.b $c1,$d9,$ec,$08,$31
	dc.b $00
	even

loc_0eaa1a:
	dc.b $01,$cb,$e3,$fa,$08
	dc.b $01,$cd,$d8,$f2,$0f
	dc.b $01,$db,$e4,$fd,$10
	dc.b $00
	even

loc_0eaa2a:
	dc.b $01,$ca,$d7,$f6,$0b
	dc.b $01,$d7,$df,$fc,$12
	dc.b $01,$df,$ea,$fc,$10
	dc.b $00
	even

loc_0eaa3a:
	dc.b $01,$cb,$d8,$06,$12
	dc.b $01,$cf,$e5,$fb,$08
	dc.b $01,$dc,$e6,$fd,$13
	dc.b $00
	even

loc_0eaa4a:
	dc.b $01,$cb,$d8,$00,$14
	dc.b $01,$cf,$e3,$fa,$08
	dc.b $01,$db,$e3,$f9,$13
	dc.b $c2,$ad,$cc,$06,$12
	dc.b $00
	even

loc_0eaa60:
	dc.b $01,$cc,$d8,$07,$11
	dc.b $01,$d1,$dd,$fc,$1c
	dc.b $01,$db,$e3,$f9,$13
	dc.b $c2,$d4,$e0,$1c,$3e
	dc.b $00
	even

loc_0eaa76:
	dc.b $01,$cc,$d8,$07,$11
	dc.b $01,$cf,$dd,$00,$10
	dc.b $01,$d6,$e4,$fa,$13
	dc.b $c2,$ea,$fa,$02,$31
	dc.b $00
	even

loc_0eaa8c:
	dc.b $01,$ca,$d6,$08,$12
	dc.b $01,$cd,$e4,$fa,$0f
	dc.b $c2,$e4,$05,$0d,$22
	dc.b $c2,$e4,$f9,$fb,$12
	dc.b $00
	even

loc_0eaaa2:
	dc.b $01,$cf,$f5,$f1,$0d
	dc.b $00
	even

loc_0eaaa8:
	dc.b $01,$cd,$f9,$f2,$0e
	dc.b $00
	even

loc_0eaaae:
	dc.b $01,$cc,$da,$fa,$04
	dc.b $01,$d0,$df,$f2,$0d
	dc.b $01,$df,$e8,$f9,$0c
	dc.b $c1,$e8,$fa,$09,$26
	dc.b $c1,$e2,$ef,$f1,$09
	dc.b $00
	even

loc_0eaac8:
	dc.b $01,$cc,$da,$fa,$04
	dc.b $01,$d3,$e2,$f2,$09
	dc.b $01,$e2,$eb,$f9,$10
	dc.b $c1,$eb,$f8,$10,$1c
	dc.b $00
	even

loc_0eaade:
	dc.b $01,$cd,$d5,$fe,$06
	dc.b $01,$d2,$e8,$f6,$08
	dc.b $01,$e8,$00,$f2,$0d
	dc.b $02,$d8,$e8,$02,$0d
	dc.b $00
	even

loc_0eaaf4:
	dc.b $01,$cc,$d4,$fc,$04
	dc.b $01,$d2,$e8,$f6,$0a
	dc.b $01,$e8,$00,$f3,$0d
	dc.b $00
	even

loc_0eab04:
	dc.b $01,$d2,$da,$fe,$06
	dc.b $01,$d8,$e8,$f6,$08
	dc.b $01,$e8,$00,$f2,$0d
	dc.b $02,$d8,$e8,$02,$0d
	dc.b $00
	even

loc_0eab1a:
	dc.b $01,$d9,$e1,$fe,$06
	dc.b $01,$de,$f0,$f6,$0d
	dc.b $01,$ec,$00,$f2,$0d
	dc.b $00
	even

loc_0eab2a:
	dc.b $01,$d9,$e1,$fc,$04
	dc.b $01,$de,$f0,$f6,$0a
	dc.b $01,$e4,$00,$f3,$0d
	dc.b $00
	even

loc_0eab3a:
	dc.b $01,$ca,$d2,$f6,$05
	dc.b $01,$d0,$00,$f6,$08
	dc.b $02,$d0,$00,$f2,$0d
	dc.b $00
	even

loc_0eab4a:
	dc.b $01,$ca,$d2,$fa,$02
	dc.b $01,$cf,$00,$f6,$0b
	dc.b $02,$e0,$00,$f2,$0d
	dc.b $00
	even

loc_0eab5a:
	dc.b $01,$d0,$d8,$fd,$05
	dc.b $01,$d6,$e8,$f6,$07
	dc.b $01,$e8,$00,$f2,$0d
	dc.b $02,$d8,$e8,$02,$0b
	dc.b $00
	even

loc_0eab70:
	dc.b $01,$c8,$d0,$fd,$05
	dc.b $01,$ce,$f0,$f7,$07
	dc.b $0c,$e4,$f8,$f8,$00
	dc.b $02,$c9,$d8,$03,$0c
	dc.b $00
	even

loc_0eab86:
	dc.b $01,$ca,$d2,$fd,$05
	dc.b $01,$d0,$ea,$f7,$0a
	dc.b $02,$d4,$f2,$f6,$01
	dc.b $02,$cf,$e8,$05,$0d
	dc.b $00
	even

loc_0eab9c:
	dc.b $01,$c8,$f4,$fd,$05
	dc.b $01,$ce,$f0,$f7,$07
	dc.b $02,$e4,$fc,$f8,$00
	dc.b $02,$c9,$d8,$03,$0c
	dc.b $00
	even

loc_0eabb2:
	dc.b $01,$ca,$ec,$00,$08
	dc.b $01,$d0,$f0,$f8,$00
	dc.b $02,$e8,$f4,$f0,$fc
	dc.b $02,$d4,$e8,$06,$0e
	dc.b $00
	even

loc_0eabc8:
	dc.b $01,$d6,$e6,$f1,$0f
	dc.b $01,$d2,$ea,$f6,$0a
	dc.b $00
	even

loc_0eabd4:
	dc.b $01,$d4,$e8,$f4,$0c
	dc.b $01,$cb,$eb,$f9,$07
	dc.b $00
	even

loc_0eabe0:
	dc.b $01,$cb,$d3,$f2,$fa
	dc.b $01,$d2,$e2,$f0,$04
	dc.b $01,$d8,$ea,$fc,$0c
	dc.b $02,$e0,$f3,$04,$0f
	dc.b $00
	even

loc_0eabf6:
	dc.b $01,$cc,$00,$f2,$0c
	dc.b $00
	even

loc_0eabfc:
	dc.b $01,$d8,$00,$f2,$0d
	dc.b $00
	even

loc_0eac02:
	dc.b $01,$cb,$e0,$ec,$00
	dc.b $01,$d3,$e8,$f0,$06
	dc.b $01,$dc,$00,$f2,$0d
	dc.b $00
	even

loc_0eac12:
	dc.b $01,$cb,$e8,$f3,$01
	dc.b $01,$d0,$e8,$f6,$0a
	dc.b $01,$e0,$00,$f2,$0d
	dc.b $00
	even

loc_0eac22:
	dc.b $01,$d0,$f0,$ef,$08
	dc.b $01,$d4,$e8,$eb,$08
	dc.b $01,$ec,$00,$f2,$0d
	dc.b $00
	even

loc_0eac32:
	dc.b $01,$cd,$d5,$fd,$05
	dc.b $01,$d1,$e8,$f4,$0a
	dc.b $01,$e8,$00,$f2,$0d
	dc.b $00
	even

loc_0eac42:
	dc.b $01,$d8,$e8,$ec,$00
	dc.b $01,$de,$f0,$ee,$06
	dc.b $01,$e8,$00,$f0,$0d
	dc.b $00
	even

loc_0eac52:
	dc.b $01,$d9,$e1,$f8,$02
	dc.b $01,$dd,$f0,$f3,$0a
	dc.b $01,$e8,$00,$f2,$0d
	dc.b $00
	even

loc_0eac62:
	dc.b $01,$cc,$f8,$f0,$0d
	dc.b $00
	even

loc_0eac68:
	dc.b $01,$cc,$f8,$f6,$0a
	dc.b $00
	even

loc_0eac6e:
	dc.b $01,$d8,$f8,$f0,$0d
	dc.b $00
	even

loc_0eac74:
	dc.b $01,$e8,$00,$ec,$14
	dc.b $00
	even

loc_0eac7a:
	dc.b $01,$ce,$f0,$f5,$05
	dc.b $01,$e8,$00,$f0,$0e
	dc.b $02,$d6,$e8,$f0,$0a
	dc.b $00
	even

loc_0eac8a:
	dc.b $01,$cd,$d5,$02,$0a
	dc.b $01,$d2,$e8,$f9,$0a
	dc.b $01,$e8,$00,$f2,$0e
	dc.b $02,$d4,$e8,$02,$0e
	dc.b $00
	even

loc_0eaca0:
	dc.b $01,$cd,$d5,$05,$0d
	dc.b $01,$d2,$e8,$f9,$0c
	dc.b $01,$e8,$00,$f2,$0e
	dc.b $02,$d0,$f0,$02,$11
	dc.b $c0,$d2,$da,$11,$23
	dc.b $c0,$d2,$e1,$11,$1c
	dc.b $2c,$d2,$e1,$08,$18
	dc.b $00
	even

loc_0eacc4:
	dc.b $01,$cd,$d5,$02,$0a
	dc.b $01,$d2,$e8,$f9,$0a
	dc.b $01,$e8,$00,$f2,$0e
	dc.b $02,$d2,$e0,$02,$12
	dc.b $00
	even

loc_0eacda:
	dc.b $01,$cd,$d5,$00,$08
	dc.b $01,$d2,$e8,$f8,$0a
	dc.b $01,$e8,$00,$f2,$0d
	dc.b $02,$d2,$f0,$02,$0e
	dc.b $00
	even

loc_0eacf0:
	dc.b $01,$d9,$e1,$fe,$06
	dc.b $01,$de,$f0,$f2,$06
	dc.b $01,$ec,$00,$f2,$0d
	dc.b $00
	even

loc_0ead00:
	dc.b $02,$da,$f0,$04,$0d
	dc.b $01,$de,$f0,$f8,$06
	dc.b $01,$ec,$00,$f2,$0d
	dc.b $c0,$de,$ea,$0c,$20
	dc.b $2c,$de,$ec,$04,$14
	dc.b $00
	even

loc_0ead1a:
	dc.b $01,$d9,$e1,$03,$0b
	dc.b $01,$de,$ec,$f6,$0d
	dc.b $01,$ec,$00,$f2,$0d
	dc.b $c0,$df,$e8,$0d,$20
	dc.b $2c,$de,$ec,$06,$16
	dc.b $00
	even

loc_0ead34:
	dc.b $01,$cb,$d3,$00,$08
	dc.b $01,$d0,$e8,$f9,$0a
	dc.b $01,$e8,$00,$f6,$0c
	dc.b $00
	even

loc_0ead44:
	dc.b $01,$cc,$e8,$fe,$0a
	dc.b $01,$e0,$00,$04,$0c
	dc.b $00
	even

loc_0ead50:
	dc.b $01,$cd,$e8,$fc,$08
	dc.b $01,$e0,$00,$04,$0c
	dc.b $c0,$d2,$e5,$0e,$1d
	dc.b $2c,$d8,$ec,$05,$15
	dc.b $00
	even

loc_0ead66:
	dc.b $02,$c8,$d0,$01,$09
	dc.b $01,$cc,$e4,$fc,$0a
	dc.b $02,$d6,$e6,$06,$17
	dc.b $01,$d8,$00,$03,$0d
	dc.b $00
	even

loc_0ead7c:
	dc.b $01,$ca,$d2,$02,$0a
	dc.b $01,$d0,$e8,$fb,$0c
	dc.b $01,$e8,$00,$f6,$0e
	dc.b $00
	even

loc_0ead8c:
	dc.b $01,$c9,$d1,$05,$0d
	dc.b $01,$cd,$e4,$fe,$0c
	dc.b $01,$dd,$00,$05,$0f
	dc.b $00
	even

loc_0ead9c:
	dc.b $01,$d0,$00,$06,$10
	dc.b $01,$c9,$e6,$01,$09
	dc.b $01,$cd,$e0,$fa,$09
	dc.b $c0,$c2,$d6,$16,$21
	dc.b $68,$d0,$e2,$16,$24
	dc.b $2c,$ca,$e8,$0f,$1a
	dc.b $00
	even

loc_0eadbc:
	dc.b $01,$c9,$d1,$04,$0c
	dc.b $01,$cc,$e4,$fc,$0c
	dc.b $01,$d0,$00,$05,$0f
	dc.b $02,$d0,$e0,$08,$1a
	dc.b $0c,$d3,$e0,$12,$22
	dc.b $00
	even

loc_0eadd6:
	dc.b $01,$c9,$d1,$05,$0d
	dc.b $01,$cd,$e4,$fe,$0c
	dc.b $01,$dd,$00,$05,$0f
	dc.b $02,$d0,$e8,$08,$15
	dc.b $00
	even

loc_0eadec:
	dc.b $01,$cc,$d4,$02,$0a
	dc.b $01,$d1,$e8,$fa,$0a
	dc.b $01,$e8,$00,$f3,$0e
	dc.b $02,$d0,$f0,$03,$0f
	dc.b $00
	even

loc_0eae02:
	dc.b $01,$d9,$e1,$fb,$03
	dc.b $01,$df,$00,$f2,$0c
	dc.b $02,$f0,$00,$01,$13
	dc.b $00
	even

loc_0eae12:
	dc.b $01,$da,$e2,$f7,$01
	dc.b $01,$e0,$00,$f1,$0a
	dc.b $22,$f0,$00,$02,$12
	dc.b $cc,$f0,$00,$12,$21
	dc.b $00
	even

loc_0eae28:
	dc.b $01,$cd,$d5,$01,$09
	dc.b $01,$d2,$e8,$f9,$09
	dc.b $01,$e8,$00,$f2,$0e
	dc.b $02,$d8,$f0,$02,$0e
	dc.b $00
	even

loc_0eae3e:
	dc.b $01,$d0,$f0,$fb,$0d
	dc.b $01,$ec,$00,$f1,$0f
	dc.b $02,$d5,$f0,$08,$13
	dc.b $c0,$d0,$e2,$0d,$1c
	dc.b $28,$cc,$db,$07,$19
	dc.b $00
	even

loc_0eae58:
	dc.b $01,$d0,$f0,$fb,$11
	dc.b $01,$ec,$00,$f1,$11
	dc.b $22,$ca,$d4,$03,$15
	dc.b $c0,$c4,$cc,$00,$15
	dc.b $00
	even

loc_0eae6e:
	dc.b $01,$cc,$d4,$00,$08
	dc.b $01,$d3,$e8,$f6,$0e
	dc.b $01,$e8,$00,$f2,$0e
	dc.b $00
	even

loc_0eae7e:
	dc.b $01,$cd,$d5,$00,$08
	dc.b $01,$d2,$e8,$f8,$0a
	dc.b $01,$e8,$00,$f2,$0d
	dc.b $02,$d8,$f0,$02,$0f
	dc.b $00
	even

loc_0eae94:
	dc.b $01,$d3,$f0,$09,$13
	dc.b $01,$d6,$f0,$fb,$10
	dc.b $01,$ec,$00,$f1,$0e
	dc.b $c2,$d8,$e8,$0c,$1e
	dc.b $00
	even

loc_0eaeaa:
	dc.b $01,$d0,$d8,$05,$0d
	dc.b $01,$d5,$f0,$f8,$0d
	dc.b $01,$f0,$00,$ef,$00
	dc.b $00
	even

loc_0eaeba:
	dc.b $0c,$c8,$d0,$fd,$05
	dc.b $01,$ce,$f2,$f6,$05
	dc.b $02,$e4,$f8,$f6,$fe
	dc.b $00
	even

loc_0eaeca:
	dc.b $01,$cd,$f2,$f8,$05
	dc.b $02,$e0,$f8,$fb,$0c
	dc.b $00
	even

loc_0eaed6:
	dc.b $01,$d0,$f2,$fa,$08
	dc.b $02,$e0,$f8,$fb,$03
	dc.b $c8,$c0,$d4,$03,$13
	dc.b $22,$c8,$dc,$00,$0d
	dc.b $00
	even

loc_0eaeec:
	dc.b $01,$c8,$e4,$fc,$0b
	dc.b $01,$da,$f0,$f7,$08
	dc.b $02,$dc,$f8,$03,$0b
	dc.b $00
	even

loc_0eaefc:
	dc.b $01,$c8,$ec,$f7,$0a
	dc.b $01,$da,$f4,$f7,$04
	dc.b $02,$c4,$fc,$f7,$ff
	dc.b $00
	even

loc_0eaf0c:
	dc.b $02,$cd,$e4,$09,$12
	dc.b $01,$d2,$f0,$fb,$0d
	dc.b $01,$ec,$00,$f2,$12
	dc.b $01,$e4,$f0,$fb,$14
	dc.b $c0,$d1,$dc,$16,$28
	dc.b $2c,$cf,$de,$0c,$20
	dc.b $00
	even

loc_0eaf2c:
	dc.b $01,$cd,$d5,$04,$0c
	dc.b $01,$d2,$e8,$fa,$0c
	dc.b $01,$e8,$00,$f3,$11
	dc.b $02,$d2,$e8,$03,$13
	dc.b $00
	even

loc_0eaf42:
	dc.b $01,$d7,$df,$04,$0c
	dc.b $01,$dc,$f0,$f9,$0c
	dc.b $01,$f0,$00,$f2,$10
	dc.b $0c,$de,$f0,$08,$12
	dc.b $00
	even

loc_0eaf58:
	dc.b $01,$da,$00,$fd,$10
	dc.b $01,$ec,$00,$f2,$10
	dc.b $0c,$dc,$f0,$08,$16
	dc.b $c0,$d0,$dc,$08,$1c
	dc.b $48,$d6,$e8,$10,$1e
	dc.b $00
	even

loc_0eaf72:
	dc.b $01,$d4,$00,$fb,$10
	dc.b $01,$e8,$00,$f2,$10
	dc.b $02,$cb,$e0,$02,$13
	dc.b $c0,$bc,$cc,$08,$18
	dc.b $6c,$c8,$d8,$0c,$1a
	dc.b $00
	even

loc_0eaf8c:
	dc.b $01,$d8,$00,$fd,$12
	dc.b $01,$ec,$00,$f2,$10
	dc.b $01,$d3,$e8,$06,$17
	dc.b $00
	even

loc_0eaf9c:
	dc.b $02,$c8,$d0,$01,$09
	dc.b $01,$cc,$e0,$fc,$0a
	dc.b $01,$d8,$00,$03,$0d
	dc.b $22,$dc,$ec,$02,$12
	dc.b $c0,$d4,$e2,$0d,$1d
	dc.b $cc,$d8,$e7,$08,$17
	dc.b $00
	even

loc_0eafbc:
	dc.b $02,$c9,$d1,$fe,$06
	dc.b $01,$ce,$e6,$f8,$0d
	dc.b $01,$d5,$00,$06,$11
	dc.b $c0,$c6,$d5,$19,$2b
	dc.b $2c,$ca,$dc,$13,$24
	dc.b $22,$ce,$e3,$0d,$1c
	dc.b $00
	even

loc_0eafdc:
	dc.b $01,$c7,$cf,$02,$0a
	dc.b $01,$cc,$e4,$fd,$0c
	dc.b $02,$d4,$e4,$06,$1b
	dc.b $01,$d4,$00,$04,$0f
	dc.b $00
	even

loc_0eaff2:
	dc.b $01,$cc,$d4,$fa,$02
	dc.b $01,$d4,$e8,$fa,$0e
	dc.b $01,$e8,$00,$f2,$0a
	dc.b $00
	even

loc_0eb002:
	dc.b $02,$cb,$d3,$02,$0a
	dc.b $01,$d0,$f0,$fc,$10
	dc.b $01,$d8,$00,$f6,$00
	dc.b $00
	even

loc_0eb012:
	dc.b $01,$dd,$ec,$fa,$0a
	dc.b $01,$e1,$00,$f5,$0e
	dc.b $02,$ec,$00,$f3,$14
	dc.b $00
	even

loc_0eb022:
	dc.b $02,$da,$e8,$f1,$04
	dc.b $01,$dd,$f3,$f5,$0a
	dc.b $01,$e8,$00,$f6,$0f
	dc.b $cc,$f0,$00,$0f,$26
	dc.b $22,$ec,$00,$05,$18
	dc.b $00
	even

loc_0eb03c:
	dc.b $01,$d8,$e0,$fa,$02
	dc.b $01,$dd,$00,$f4,$0a
	dc.b $01,$e8,$00,$f2,$10
	dc.b $02,$f0,$00,$00,$18
	dc.b $00
	even

loc_0eb052:
	dc.b $01,$d9,$e1,$f9,$01
	dc.b $01,$de,$00,$f2,$0d
	dc.b $00
	even

loc_0eb05e:
	dc.b $01,$ca,$d2,$fd,$05
	dc.b $01,$ce,$e6,$f6,$08
	dc.b $01,$e4,$00,$f3,$0e
	dc.b $02,$d2,$e8,$06,$0e
	dc.b $00
	even

loc_0eb074:
	dc.b $01,$cc,$d4,$fe,$06
	dc.b $01,$d0,$e8,$f2,$08
	dc.b $01,$e8,$00,$f2,$0d
	dc.b $02,$d4,$e8,$02,$0d
	dc.b $00
	even

loc_0eb08a:
	dc.b $01,$ce,$e5,$fa,$09
	dc.b $01,$db,$f3,$fa,$0e
	dc.b $01,$e8,$00,$f1,$06
	dc.b $00
	even

loc_0eb09a:
	dc.b $01,$d4,$dc,$0c,$14
	dc.b $01,$d6,$f0,$fe,$10
	dc.b $01,$f0,$00,$f2,$10
	dc.b $02,$d8,$f0,$05,$15
	dc.b $c0,$e0,$f0,$15,$26
	dc.b $2c,$dc,$e8,$0c,$22
	dc.b $00
	even

loc_0eb0ba:
	dc.b $01,$c7,$cf,$f9,$01
	dc.b $01,$cd,$e0,$f1,$08
	dc.b $01,$d0,$00,$f4,$00
	dc.b $02,$e0,$f0,$f8,$08
	dc.b $00
	even

loc_0eb0d0:
	dc.b $01,$c8,$d0,$f0,$f8
	dc.b $01,$ce,$e0,$e9,$02
	dc.b $01,$d0,$00,$f0,$fa
	dc.b $02,$d8,$f0,$f8,$08
	dc.b $00
	even

loc_0eb0e6:
	dc.b $01,$d5,$e8,$e9,$02
	dc.b $01,$ce,$00,$f0,$fc
	dc.b $02,$d8,$f0,$fc,$0a
	dc.b $c0,$ec,$f8,$08,$1a
	dc.b $2c,$e6,$f0,$fc,$12
	dc.b $00
	even

loc_0eb100:
	dc.b $01,$cc,$d4,$06,$0e
	dc.b $01,$d2,$ec,$fa,$10
	dc.b $02,$e8,$f8,$f0,$00
	dc.b $00
	even

loc_0eb110:
	dc.b $01,$ca,$d2,$fb,$03
	dc.b $01,$d0,$e0,$f5,$08
	dc.b $01,$d4,$f0,$fb,$05
	dc.b $c0,$d8,$e8,$08,$18
	dc.b $2c,$e0,$f0,$05,$10
	dc.b $2c,$e8,$f8,$02,$0a
	dc.b $00
	even

loc_0eb130:
	dc.b $01,$ca,$d2,$fd,$05
	dc.b $01,$cf,$e4,$f6,$0a
	dc.b $01,$e4,$f2,$f2,$02
	dc.b $00
	even

loc_0eb140:
	dc.b $01,$cb,$ec,$f9,$07
	dc.b $01,$d2,$f0,$f6,$04
	dc.b $02,$d4,$e6,$fe,$0e
	dc.b $c0,$dc,$e9,$0e,$1b
	dc.b $2c,$d8,$e6,$06,$17
	dc.b $00
	even

loc_0eb15a:
	dc.b $01,$c9,$f0,$fe,$06
	dc.b $01,$ce,$f8,$f7,$ff
	dc.b $02,$d0,$ec,$02,$0a
	dc.b $00
	even

loc_0eb16a:
	dc.b $01,$c8,$ee,$fa,$02
	dc.b $01,$cf,$dd,$f4,$06
	dc.b $01,$d9,$ea,$f8,$0d
	dc.b $00
	even

loc_0eb17a:
	dc.b $01,$ca,$d2,$fc,$08
	dc.b $01,$dc,$f0,$f3,$fd
	dc.b $01,$d0,$e8,$f6,$06
	dc.b $02,$ec,$f4,$f0,$f8
	dc.b $c0,$ce,$de,$0f,$1f
	dc.b $2c,$d2,$e4,$06,$17
	dc.b $00
	even

loc_0eb19a:
	dc.b $01,$cb,$ec,$fb,$03
	dc.b $01,$d2,$e8,$f4,$0a
	dc.b $02,$cf,$ee,$fe,$0c
	dc.b $00
	even

loc_0eb1aa:
	dc.b $01,$cb,$ed,$f8,$05
	dc.b $01,$ce,$e4,$f4,$09
	dc.b $02,$d6,$e4,$f9,$10
	dc.b $c0,$cf,$dd,$12,$22
	dc.b $0c,$e4,$f3,$fd,$07
	dc.b $cc,$d5,$e3,$09,$19
	dc.b $2c,$dd,$e9,$fd,$10
	dc.b $00
	even

loc_0eb1ce:
	dc.b $01,$cb,$e0,$f2,$03
	dc.b $01,$d0,$f0,$fa,$08
	dc.b $02,$d8,$f8,$02,$0c
	dc.b $00
	even

loc_0eb1de:
	dc.b $01,$d4,$eb,$f4,$0c
	dc.b $02,$dd,$f4,$f4,$0c
	dc.b $c0,$e8,$f8,$f6,$0c
	dc.b $00
	even

loc_0eb1ee:
	dc.b $01,$cc,$f0,$f6,$07
	dc.b $02,$d4,$e4,$f5,$0d
	dc.b $02,$c4,$f4,$f6,$00
	dc.b $00
	even

loc_0eb1fe:
	dc.b $02,$d3,$e4,$00,$0d
	dc.b $01,$cb,$eb,$f6,$09
	dc.b $02,$cf,$f2,$f6,$02
	dc.b $00
	even

loc_0eb20e:
	dc.b $01,$d0,$e2,$f9,$0e
	dc.b $02,$e0,$f1,$f4,$fe
	dc.b $01,$cb,$ea,$f9,$04
	dc.b $c8,$e0,$f1,$0e,$21
	dc.b $2c,$d9,$e9,$04,$19
	dc.b $00
	even

loc_0eb228:
	dc.b $01,$ce,$e8,$fa,$0d
	dc.b $01,$dc,$f4,$f7,$04
	dc.b $02,$d4,$ec,$00,$12
	dc.b $00
	even

loc_0eb238:
	dc.b $01,$ce,$f2,$fa,$08
	dc.b $02,$e0,$f8,$fb,$03
	dc.b $c0,$c0,$d4,$03,$16
	dc.b $28,$bd,$dc,$00,$10
	dc.b $00
	even

loc_0eb24e:
	dc.b $01,$cc,$e0,$f0,$0d
	dc.b $01,$d0,$ea,$f4,$00
	dc.b $00
	even

loc_0eb25a:
	dc.b $01,$d0,$dc,$ef,$10
	dc.b $01,$d8,$e7,$ea,$08
	dc.b $00
	even

loc_0eb266:
	dc.b $01,$ce,$ee,$f6,$06
	dc.b $02,$c6,$d8,$ea,$01
	dc.b $00
	even

loc_0eb272:
	dc.b $01,$c6,$ec,$f1,$00
	dc.b $01,$ce,$e8,$f8,$08
	dc.b $02,$d2,$e0,$04,$12
	dc.b $c0,$cc,$e8,$12,$24
	dc.b $68,$c4,$e4,$00,$1c
	dc.b $00
	even

loc_0eb28c:
	dc.b $01,$d2,$e3,$ed,$08
	dc.b $01,$c7,$e8,$fa,$08
	dc.b $02,$dc,$f4,$04,$11
	dc.b $00
	even

loc_0eb29c:
	dc.b $01,$ce,$de,$ee,$0c
	dc.b $01,$d7,$f8,$f6,$02
	dc.b $02,$d2,$e6,$00,$10
	dc.b $00
	even

loc_0eb2ac:
	dc.b $01,$cb,$de,$ee,$02
	dc.b $01,$d7,$f8,$f6,$02
	dc.b $02,$d8,$ec,$00,$10
	dc.b $00
	even

loc_0eb2bc:
	dc.b $01,$c9,$de,$f3,$02
	dc.b $01,$d7,$f8,$f6,$02
	dc.b $02,$d0,$ec,$00,$0a
	dc.b $00
	even

loc_0eb2cc:
	dc.b $01,$cc,$dc,$f5,$03
	dc.b $01,$d4,$ea,$f5,$0a
	dc.b $02,$d9,$ee,$ef,$15
	dc.b $2c,$df,$ef,$f1,$1d
	dc.b $c0,$e2,$f2,$0a,$25
	dc.b $00
	even

loc_0eb2e6:
	dc.b $01,$ca,$f0,$fb,$03
	dc.b $01,$d2,$ed,$f3,$fb
	dc.b $01,$d0,$e4,$03,$0b
	dc.b $00
	even

loc_0eb2f6:
	dc.b $01,$c9,$dc,$fb,$03
	dc.b $01,$cf,$dc,$fd,$0d
	dc.b $01,$dc,$f1,$f6,$08
	dc.b $00
	even

loc_0eb306:
	dc.b $01,$c8,$f0,$fe,$06
	dc.b $01,$ce,$e0,$f7,$0b
	dc.b $01,$ce,$f4,$f8,$02
	dc.b $00
	even

loc_0eb316:
	dc.b $01,$c7,$cf,$f1,$01
	dc.b $01,$cf,$e4,$f0,$0a
	dc.b $01,$d8,$ec,$f8,$0c
	dc.b $cc,$ec,$fa,$0c,$16
	dc.b $22,$e4,$f4,$04,$11
	dc.b $2c,$db,$e8,$f0,$04
	dc.b $00
	even

loc_0eb336:
	dc.b $01,$cb,$d3,$01,$0d
	dc.b $01,$d3,$f0,$f8,$0d
	dc.b $01,$e8,$00,$f1,$11
	dc.b $02,$cb,$ec,$08,$16
	dc.b $c0,$ce,$e0,$10,$28
	dc.b $2c,$c6,$e8,$12,$24
	dc.b $00
	even

loc_0eb356:
	dc.b $01,$cd,$d5,$09,$12
	dc.b $01,$d2,$f0,$fb,$14
	dc.b $01,$ec,$00,$f2,$13
	dc.b $cc,$d0,$df,$0e,$28
	dc.b $00
	even

loc_0eb36c:
	dc.b $0c,$d8,$f0,$f6,$0a
	dc.b $01,$e8,$00,$f2,$00
	dc.b $00
	even

loc_0eb378:
	dc.b $01,$d0,$e8,$f9,$08
	dc.b $0c,$e4,$f0,$f4,$03
	dc.b $00
	even

loc_0eb384:
	dc.b $02,$cd,$d5,$fe,$0e
	dc.b $01,$d0,$e4,$f9,$08
	dc.b $0c,$dc,$f0,$f4,$00
	dc.b $00
	even

loc_0eb394:
	dc.b $01,$cd,$e4,$f3,$05
	dc.b $02,$d0,$d8,$f8,$0c
	dc.b $0c,$dc,$ee,$f8,$01
	dc.b $00
	even

loc_0eb3a4:
	dc.b $01,$ca,$dc,$f2,$02
	dc.b $01,$d8,$e8,$fa,$0a
	dc.b $0c,$d4,$f0,$fe,$0a
	dc.b $c8,$d4,$e2,$11,$25
	dc.b $2c,$d4,$e6,$09,$1a
	dc.b $00
	even

loc_0eb3be:
	dc.b $01,$c8,$e4,$fa,$08
	dc.b $02,$d4,$f0,$f6,$0c
	dc.b $02,$e8,$f8,$08,$18
	dc.b $6c,$e8,$f8,$f0,$08
	dc.b $44,$d4,$ec,$e0,$f6
	dc.b $00
	even

loc_0eb3d8:
	dc.b $01,$c8,$e4,$f8,$06
	dc.b $01,$d4,$f0,$f4,$0a
	dc.b $02,$e8,$f8,$e8,$f8
	dc.b $00
	even

loc_0eb3e8:
	dc.b $01,$ce,$f0,$00,$08
	dc.b $01,$d4,$f4,$f8,$00
	dc.b $02,$ec,$f8,$f0,$fc
	dc.b $02,$d8,$ec,$06,$0e
	dc.b $00
	even

loc_0eb3fe:
	dc.b $01,$ec,$00,$f0,$10
	dc.b $0c,$e4,$00,$f6,$0a
	dc.b $00
	even

loc_0eb40a:
	dc.b $01,$d6,$de,$fd,$05
	dc.b $01,$dd,$00,$f6,$0d
	dc.b $00
	even

loc_0eb416:
	dc.b $01,$cb,$00,$f9,$03
	dc.b $01,$d0,$e8,$f3,$07
	dc.b $01,$d8,$f0,$fc,$11
	dc.b $00
	even

loc_0eb426:
	dc.b $01,$cb,$d3,$f6,$fe
	dc.b $01,$d0,$e8,$f0,$07
	dc.b $01,$d8,$f4,$fc,$0b
	dc.b $22,$d4,$f0,$07,$0f
	dc.b $cc,$ce,$da,$0f,$1f
	dc.b $2c,$d2,$e5,$07,$17
	dc.b $00
	even

loc_0eb446:
	dc.b $01,$cb,$f4,$f9,$05
	dc.b $01,$d0,$ec,$f2,$08
	dc.b $02,$d0,$e4,$ff,$16
	dc.b $00
	even

loc_0eb456:
	dc.b $01,$cb,$d3,$f9,$01
	dc.b $01,$d0,$e0,$f9,$0b
	dc.b $01,$e0,$f4,$f4,$08
	dc.b $02,$f0,$fc,$f0,$f8
	dc.b $00
	even

loc_0eb46c:
	dc.b $01,$ca,$f8,$fa,$06
	dc.b $01,$cf,$f0,$f7,$0a
	dc.b $02,$d0,$dc,$f1,$0e
	dc.b $00
	even

loc_0eb47c:
	dc.b $01,$cc,$ec,$fd,$07
	dc.b $01,$d0,$e8,$f5,$07
	dc.b $01,$e8,$f8,$f0,$fe
	dc.b $02,$d6,$ea,$fe,$12
	dc.b $cc,$d3,$e3,$10,$1c
	dc.b $2c,$e0,$f0,$06,$14
	dc.b $00
	even

loc_0eb49c:
	dc.b $01,$ca,$d2,$fe,$06
	dc.b $01,$cf,$f8,$f6,$06
	dc.b $02,$d9,$f0,$00,$12
	dc.b $00
	even

loc_0eb4ac:
	dc.b $01,$c9,$f4,$fe,$08
	dc.b $01,$ce,$e7,$f5,$07
	dc.b $02,$dc,$f8,$fc,$0d
	dc.b $00
	even

loc_0eb4bc:
	dc.b $01,$cc,$ec,$fa,$02
	dc.b $01,$d0,$e0,$f5,$0a
	dc.b $01,$d8,$f4,$00,$10
	dc.b $00
	even

loc_0eb4cc:
	dc.b $01,$cc,$d4,$f9,$01
	dc.b $01,$d1,$f0,$f1,$04
	dc.b $01,$da,$ec,$f6,$12
	dc.b $cc,$e4,$f4,$12,$20
	dc.b $22,$e0,$f0,$04,$20
	dc.b $00
	even

loc_0eb4e6:
	dc.b $01,$cc,$d4,$fc,$04
	dc.b $01,$d0,$e8,$f2,$06
	dc.b $01,$e8,$00,$f0,$0f
	dc.b $02,$dc,$e8,$02,$0d
	dc.b $00
	even

loc_0eb4fc:
	dc.b $01,$cc,$d4,$f7,$ff
	dc.b $01,$d2,$f0,$f0,$06
	dc.b $01,$ec,$00,$f0,$11
	dc.b $02,$dc,$f0,$02,$0d
	dc.b $00
	even

loc_0eb512:
	dc.b $01,$ce,$e8,$f7,$0d
	dc.b $01,$e8,$00,$f0,$11
	dc.b $02,$d8,$e8,$01,$11
	dc.b $00
	even

loc_0eb522:
	dc.b $01,$d0,$e0,$04,$14
	dc.b $01,$d8,$f0,$fc,$14
	dc.b $01,$ec,$00,$f0,$11
	dc.b $00
	even

loc_0eb532:
	dc.b $01,$ce,$d6,$04,$0c
	dc.b $01,$d4,$f0,$fb,$11
	dc.b $01,$e8,$00,$f2,$11
	dc.b $00
	even

loc_0eb542:
	dc.b $02,$d6,$e6,$f1,$11
	dc.b $01,$cd,$f4,$f5,$0a
	dc.b $00
	even

loc_0eb54e:
	dc.b $01,$cd,$d5,$02,$0a
	dc.b $01,$d3,$e8,$f8,$0a
	dc.b $01,$e8,$00,$f2,$0f
	dc.b $02,$d8,$f0,$08,$12
	dc.b $00
	even

loc_0eb564:
	dc.b $01,$d0,$f0,$01,$0d
	dc.b $01,$d4,$f0,$f8,$0d
	dc.b $01,$e8,$00,$f1,$0d
	dc.b $00
	even

loc_0eb574:
	dc.b $01,$cc,$ec,$01,$0d
	dc.b $01,$d4,$f0,$fa,$0f
	dc.b $01,$e8,$00,$ef,$05
	dc.b $00
	even

loc_0eb584:
	dc.b $01,$d0,$dc,$f1,$04
	dc.b $01,$d8,$f0,$f3,$0d
	dc.b $01,$ec,$00,$f3,$10
	dc.b $00
	even

loc_0eb594:
	dc.b $01,$d0,$d8,$fc,$04
	dc.b $01,$d4,$f0,$f5,$0b
	dc.b $01,$e8,$00,$f2,$0d
	dc.b $00
	even

loc_0eb5a4:
	dc.b $01,$cc,$d4,$fb,$03
	dc.b $01,$d2,$f0,$f6,$09
	dc.b $01,$ec,$00,$ee,$fc
	dc.b $00
	even

loc_0eb5b4:
	dc.b $01,$cc,$d4,$fc,$04
	dc.b $01,$d0,$ed,$f5,$06
	dc.b $01,$d7,$ea,$f0,$10
	dc.b $cc,$e0,$f4,$10,$20
	dc.b $22,$e4,$ef,$02,$24
	dc.b $00
	even

loc_0eb5ce:
	dc.b $01,$ca,$d2,$fe,$06
	dc.b $01,$d0,$00,$f6,$0a
	dc.b $01,$e0,$00,$f6,$0d
	dc.b $00
	even

loc_0eb5de:
	dc.b $01,$ce,$d6,$01,$09
	dc.b $01,$d3,$00,$f5,$0b
	dc.b $01,$dc,$f0,$f4,$12
	dc.b $01,$e8,$00,$eb,$10
	dc.b $00
	even

loc_0eb5f4:
	dc.b $01,$cb,$d3,$01,$09
	dc.b $01,$d1,$00,$f6,$0b
	dc.b $02,$d8,$f0,$f7,$10
	dc.b $01,$e8,$00,$ee,$10
	dc.b $00
	even

;0eb60a