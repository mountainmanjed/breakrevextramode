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

loc_0e60ac:
	dc.b $01,$d0,$dc,$fe,$0a
	dc.b $01,$d6,$00,$f7,$08
	dc.b $01,$e8,$00,$f4,$0c
	dc.b $02,$dc,$f0,$08,$10
	dc.b $00
	even

loc_0e60c2:
	dc.b $01,$d0,$dc,$fa,$06
	dc.b $01,$d6,$00,$f5,$0b
	dc.b $01,$e8,$00,$f4,$0c
	dc.b $02,$dc,$00,$f0,$10
	dc.b $00
	even

loc_0e60d8:
	dc.b $01,$d2,$de,$fe,$0a
	dc.b $01,$d8,$00,$f7,$08
	dc.b $01,$e8,$00,$f3,$0c
	dc.b $02,$dc,$f0,$08,$10
	dc.b $00
	even

loc_0e60ee:
	dc.b $01,$d6,$f0,$00,$0c
	dc.b $01,$dc,$f0,$f6,$0e
	dc.b $01,$ec,$00,$f2,$0c
	dc.b $00
	even

loc_0e60fe:
	dc.b $01,$e0,$00,$f6,$0a
	dc.b $01,$ec,$00,$f1,$0d
	dc.b $00
	even

loc_0e610a:
	dc.b $01,$de,$ea,$fa,$06
	dc.b $01,$e0,$00,$f6,$0a
	dc.b $01,$ec,$00,$f2,$0e
	dc.b $00
	even

loc_0e611a:
	dc.b $01,$cc,$d8,$00,$0c
	dc.b $01,$d3,$00,$f8,$0a
	dc.b $01,$e8,$00,$f4,$0a
	dc.b $02,$d6,$00,$f4,$0e
	dc.b $00
	even

loc_0e6130:
	dc.b $01,$cc,$d8,$f9,$05
	dc.b $01,$d2,$00,$f6,$0b
	dc.b $02,$e8,$00,$f3,$0e
	dc.b $00
	even

loc_0e6140:
	dc.b $01,$cc,$f0,$fb,$09
	dc.b $02,$d3,$e4,$f4,$0c
	dc.b $0c,$e0,$f8,$fe,$06
	dc.b $00
	even

loc_0e6150:
	dc.b $01,$cd,$ec,$fe,$0a
	dc.b $01,$d3,$f0,$f6,$02
	dc.b $02,$d8,$ea,$f6,$0d
	dc.b $00
	even

loc_0e6160:
	dc.b $01,$d1,$e5,$f4,$0d
	dc.b $00
	even

loc_0e6166:
	dc.b $01,$cd,$ec,$fe,$0a
	dc.b $01,$d3,$f0,$f6,$02
	dc.b $02,$d8,$ea,$f6,$0d
	dc.b $00
	even

loc_0e6176:
	dc.b $01,$cd,$f0,$00,$0c
	dc.b $01,$d3,$fa,$f6,$00
	dc.b $00
	even

loc_0e6182:
	dc.b $01,$cb,$e0,$00,$0c
	dc.b $01,$d0,$ea,$f8,$08
	dc.b $0c,$e0,$f8,$f5,$fd
	dc.b $00
	even

loc_0e6192:
	dc.b $01,$d6,$e6,$f3,$0d
	dc.b $01,$d2,$ea,$f8,$08
	dc.b $00
	even

loc_0e619e:
	dc.b $01,$e6,$f2,$00,$0e
	dc.b $01,$d2,$e9,$f5,$07
	dc.b $00
	even

loc_0e61aa:
	dc.b $01,$e6,$f0,$00,$0d
	dc.b $01,$d2,$e9,$f5,$06
	dc.b $00
	even

loc_0e61b6:
	dc.b $01,$d6,$e6,$f3,$0d
	dc.b $01,$d2,$ea,$f8,$08
	dc.b $00
	even

loc_0e61c2:
	dc.b $01,$cb,$e0,$00,$0c
	dc.b $01,$d0,$ea,$f8,$08
	dc.b $02,$e0,$f8,$f5,$fd
	dc.b $00
	even

loc_0e61d2:
	dc.b $01,$dc,$00,$ff,$0b
	dc.b $01,$e0,$f8,$f6,$08
	dc.b $01,$f0,$00,$f4,$0e
	dc.b $00
	even

loc_0e61e2:
	dc.b $01,$cc,$00,$f2,$0e
	dc.b $00
	even

loc_0e61e8:
	dc.b $01,$e0,$00,$f6,$0a
	dc.b $01,$dc,$00,$f0,$0e
	dc.b $00
	even

loc_0e61f4:
	dc.b $01,$cc,$e8,$e6,$04
	dc.b $01,$d8,$f0,$ec,$0a
	dc.b $01,$e8,$00,$f0,$0e
	dc.b $00
	even

loc_0e6204:
	dc.b $01,$ce,$e8,$f4,$09
	dc.b $01,$dc,$f0,$f4,$10
	dc.b $01,$e4,$00,$f3,$0d
	dc.b $00
	even

loc_0e6214:
	dc.b $01,$cf,$00,$f2,$0a
	dc.b $01,$d8,$f0,$eb,$0c
	dc.b $01,$e8,$00,$f0,$0e
	dc.b $00
	even

loc_0e6224:
	dc.b $01,$d0,$00,$f2,$0c
	dc.b $01,$dc,$f0,$f0,$0e
	dc.b $00
	even

loc_0e6230:
	dc.b $01,$d9,$f0,$e6,$06
	dc.b $01,$e2,$00,$ef,$0d
	dc.b $00
	even

loc_0e623c:
	dc.b $01,$dc,$f0,$f3,$0b
	dc.b $01,$e8,$00,$ef,$0d
	dc.b $00
	even

loc_0e6248:
	dc.b $01,$ca,$f8,$f0,$0f
	dc.b $00
	even

loc_0e624e:
	dc.b $01,$ca,$f8,$f6,$0a
	dc.b $00
	even

loc_0e6254:
	dc.b $01,$d8,$f8,$f0,$0f
	dc.b $00
	even

loc_0e625a:
	dc.b $01,$e8,$00,$ec,$14
	dc.b $00
	even

loc_0e6260:
	dc.b $01,$c8,$d8,$f8,$08
	dc.b $01,$d0,$00,$f2,$0e
	dc.b $00
	even

loc_0e626c:
	dc.b $01,$ce,$de,$f8,$08
	dc.b $01,$d6,$00,$f2,$0e
	dc.b $00
	even

loc_0e6278:
	dc.b $01,$d4,$e0,$02,$0e
	dc.b $01,$d8,$f0,$fc,$12
	dc.b $01,$e8,$00,$f2,$0e
	dc.b $02,$d0,$e8,$f6,$04
	dc.b $00
	even

loc_0e628e:
	dc.b $02,$d2,$de,$04,$10
	dc.b $01,$d8,$f0,$fe,$12
	dc.b $01,$e8,$00,$f2,$10
	dc.b $00
	even

loc_0e629e:
	dc.b $01,$d4,$f0,$fe,$12
	dc.b $01,$ec,$00,$f4,$10
	dc.b $c8,$e0,$f0,$18,$24
	dc.b $40,$cc,$e0,$0a,$20
	dc.b $22,$d4,$e8,$0a,$18
	dc.b $00
	even

loc_0e62b8:
	dc.b $01,$d0,$da,$06,$10
	dc.b $01,$d4,$f0,$fa,$12
	dc.b $01,$e8,$00,$f4,$10
	dc.b $00
	even

loc_0e62c8:
	dc.b $01,$d0,$00,$f6,$0a
	dc.b $01,$e8,$00,$f3,$0c
	dc.b $02,$d8,$e8,$00,$10
	dc.b $00
	even

loc_0e62d8:
	dc.b $01,$ce,$d8,$06,$10
	dc.b $01,$d5,$f0,$fc,$0f
	dc.b $02,$d6,$f0,$0a,$14
	dc.b $01,$ec,$00,$f4,$0f
	dc.b $c0,$d4,$df,$14,$28
	dc.b $28,$d3,$e5,$0c,$1f
	dc.b $00
	even

loc_0e62f8:
	dc.b $01,$ce,$d8,$06,$10
	dc.b $01,$d5,$f0,$fc,$10
	dc.b $02,$d6,$f0,$0a,$14
	dc.b $01,$e8,$00,$f4,$10
	dc.b $00
	even

loc_0e630e:
	dc.b $01,$cf,$db,$04,$0e
	dc.b $01,$d5,$f0,$f9,$11
	dc.b $01,$e8,$00,$f4,$0f
	dc.b $00

loc_0e631e:
	dc.b $01,$dc,$00,$f2,$09
	dc.b $01,$ec,$00,$f2,$12
	dc.b $00
	even

loc_0e632a:
	dc.b $01,$de,$f0,$fd,$12
	dc.b $01,$ec,$00,$f4,$12
	dc.b $c8,$ec,$00,$12,$26
	dc.b $2c,$e4,$f0,$0c,$20
	dc.b $00
	even

loc_0e6340:
	dc.b $01,$e0,$00,$f4,$0a
	dc.b $01,$ec,$00,$f2,$12
	dc.b $00
	even

loc_0e634c:
	dc.b $01,$d0,$dc,$f4,$00
	dc.b $01,$da,$00,$f2,$05
	dc.b $01,$e8,$00,$f4,$0a
	dc.b $00
	even

loc_0e635c:
	dc.b $01,$d0,$dc,$f3,$ff
	dc.b $01,$d8,$f0,$f1,$03
	dc.b $01,$e4,$00,$f6,$08
	dc.b $00
	even

loc_0e636c:
	dc.b $02,$cc,$f0,$f4,$01
	dc.b $01,$d8,$00,$f6,$05
	dc.b $00
	even

loc_0e6378:
	dc.b $02,$cc,$e8,$f2,$00
	dc.b $01,$d8,$00,$f8,$05
	dc.b $c0,$d2,$e4,$0c,$23
	dc.b $2c,$d6,$e8,$00,$14
	dc.b $00
	even

loc_0e638e:
	dc.b $01,$cc,$00,$fc,$08
	dc.b $02,$d4,$e8,$f6,$0f
	dc.b $00
	even

loc_0e639a:
	dc.b $01,$ce,$da,$00,$0e
	dc.b $01,$d8,$f0,$f9,$0e
	dc.b $01,$e8,$00,$f4,$0c
	dc.b $00
	even

loc_0e63aa:
	dc.b $01,$d5,$f0,$fe,$16
	dc.b $02,$dc,$f0,$fb,$1a
	dc.b $01,$ec,$00,$f4,$14
	dc.b $00
	even

loc_0e63ba:
	dc.b $01,$d0,$dc,$02,$0e
	dc.b $01,$d8,$f0,$fb,$10
	dc.b $01,$e8,$00,$f6,$0e
	dc.b $00
	even

loc_0e63ca:
	dc.b $02,$d8,$f0,$fb,$10
	dc.b $01,$ce,$00,$00,$0d
	dc.b $00
	even

loc_0e63d6:
	dc.b $01,$cc,$e0,$f6,$05
	dc.b $02,$d8,$f0,$fd,$11
	dc.b $01,$d8,$00,$00,$0d
	dc.b $c0,$c4,$d6,$0e,$20
	dc.b $2c,$cc,$e4,$05,$18
	dc.b $00
	even

loc_0e63f0:
	dc.b $01,$d0,$de,$f2,$04
	dc.b $01,$d8,$ec,$f6,$0b
	dc.b $01,$e4,$00,$00,$12
	dc.b $00
	even

loc_0e6400:
	dc.b $01,$d0,$00,$01,$0d
	dc.b $01,$d6,$00,$f7,$08
	dc.b $01,$e8,$00,$f3,$0d
	dc.b $00
	even

loc_0e6410:
	dc.b $01,$dd,$e9,$fa,$06
	dc.b $01,$e2,$00,$f1,$0a
	dc.b $02,$ec,$00,$f2,$11
	dc.b $00
	even

loc_0e6420:
	dc.b $01,$e0,$ec,$f5,$01
	dc.b $01,$e5,$00,$f0,$0d
	dc.b $c8,$f0,$00,$11,$25
	dc.b $2c,$ec,$00,$04,$19
	dc.b $00
	even

loc_0e6436:
	dc.b $02,$d8,$e4,$fc,$08
	dc.b $01,$de,$f0,$f7,$0d
	dc.b $01,$e8,$00,$f2,$12
	dc.b $00
	even

loc_0e6446:
	dc.b $02,$d4,$e3,$03,$18
	dc.b $01,$d8,$f0,$fc,$12
	dc.b $01,$e8,$00,$f5,$12
	dc.b $c8,$cc,$e0,$0e,$26
	dc.b $6c,$d8,$ec,$0e,$1e
	dc.b $00
	even

loc_0e6460:
	dc.b $01,$c4,$e8,$02,$12
	dc.b $01,$d8,$00,$fa,$14
	dc.b $02,$cc,$e8,$0c,$1c
	dc.b $68,$ac,$bc,$04,$12
	dc.b $44,$b4,$cc,$12,$24
	dc.b $08,$b4,$d8,$04,$18
	dc.b $00
	even

loc_0e6480:
	dc.b $01,$c6,$d6,$02,$14
	dc.b $01,$d0,$f0,$fa,$16
	dc.b $01,$e8,$00,$f3,$12
	dc.b $00
	even

loc_0e6490:
	dc.b $01,$d4,$f0,$00,$1a
	dc.b $02,$d1,$e0,$0f,$1d
	dc.b $01,$ec,$00,$f5,$17
	dc.b $80,$d5,$e3,$20,$32
	dc.b $28,$d4,$e8,$12,$2a
	dc.b $00
	even

loc_0e64aa:
	dc.b $01,$d6,$f0,$00,$19
	dc.b $01,$d1,$e0,$0d,$19
	dc.b $01,$ec,$00,$f5,$17
	dc.b $02,$d6,$e4,$10,$25
	dc.b $00
	even

loc_0e64c0:
	dc.b $01,$dc,$e8,$f0,$04
	dc.b $01,$e6,$00,$f4,$0b
	dc.b $00
	even

loc_0e64cc:
	dc.b $01,$dd,$f0,$01,$0e
	dc.b $01,$e0,$00,$f3,$0a
	dc.b $00
	even

loc_0e64d8:
	dc.b $01,$e0,$f0,$fc,$13
	dc.b $02,$e8,$00,$08,$1c
	dc.b $01,$f0,$00,$f3,$10
	dc.b $00
	even

loc_0e64e8:
	dc.b $02,$de,$f0,$08,$24
	dc.b $01,$e4,$f0,$00,$24
	dc.b $01,$f0,$00,$f4,$1c
	dc.b $c0,$d4,$e4,$1d,$31
	dc.b $6c,$da,$ec,$12,$2f
	dc.b $00
	even

loc_0e6502:
	dc.b $01,$dd,$f0,$01,$0e
	dc.b $01,$e0,$00,$f3,$0a
	dc.b $00
	even

loc_0e650e:
	dc.b $01,$de,$ee,$06,$12
	dc.b $01,$d4,$e8,$f2,$0a
	dc.b $00
	even

loc_0e651a:
	dc.b $01,$d0,$ef,$fa,$08
	dc.b $01,$d0,$e0,$f0,$06
	dc.b $00
	even

loc_0e6526:
	dc.b $01,$db,$e7,$f1,$0e
	dc.b $02,$d6,$ec,$f5,$07
	dc.b $0c,$ce,$de,$ee,$f8
	dc.b $00
	even

loc_0e6536:
	dc.b $01,$d5,$e8,$f0,$06
	dc.b $02,$d0,$f2,$f8,$08
	dc.b $c0,$c2,$d0,$f2,$11
	dc.b $08,$c7,$db,$f2,$0a
	dc.b $00
	even

loc_0e654c:
	dc.b $01,$d0,$ea,$f6,$06
	dc.b $02,$d8,$f0,$f5,$0e
	dc.b $c0,$e3,$f4,$0d,$23
	dc.b $40,$cc,$ed,$0a,$21
	dc.b $28,$de,$f0,$00,$1c
	dc.b $00
	even

loc_0e6566:
	dc.b $01,$ce,$ec,$03,$10
	dc.b $01,$d8,$00,$fa,$0a
	dc.b $02,$d8,$e8,$fa,$17
	dc.b $00
	even

loc_0e6576:
	dc.b $01,$ce,$f0,$04,$10
	dc.b $01,$d0,$00,$fc,$07
	dc.b $02,$d6,$ec,$04,$16
	dc.b $c0,$d4,$e2,$16,$2a
	dc.b $2c,$da,$ec,$0c,$24
	dc.b $00
	even

loc_0e6590:
	dc.b $01,$cc,$e0,$f6,$05
	dc.b $02,$d8,$f0,$fd,$15
	dc.b $01,$d8,$00,$00,$0d
	dc.b $c0,$c6,$d6,$0e,$20
	dc.b $2c,$cc,$e4,$05,$1a
	dc.b $00
	even

loc_0e65aa:
	dc.b $01,$d2,$e8,$f5,$0f
	dc.b $02,$cc,$e8,$05,$16
	dc.b $01,$cc,$f8,$01,$11
	dc.b $c0,$bc,$cc,$01,$16
	dc.b $2c,$c4,$dc,$0b,$1a
	dc.b $00
	even

loc_0e65c4:
	dc.b $01,$d0,$00,$f5,$06
	dc.b $02,$c8,$d8,$f0,$00
	dc.b $02,$d8,$e8,$00,$12
	dc.b $2c,$c0,$c8,$e6,$00
	dc.b $2c,$d4,$e1,$02,$20
	dc.b $00
	even

loc_0e65de:
	dc.b $01,$e0,$fc,$fe,$0d
	dc.b $01,$cc,$e8,$f6,$04
	dc.b $02,$d3,$e6,$ee,$08
	dc.b $0c,$c0,$e4,$e6,$06
	dc.b $00
	even

loc_0e65f4:
	dc.b $01,$d0,$e9,$f2,$0c
	dc.b $02,$dc,$ef,$f8,$12
	dc.b $00
	even

loc_0e6600:
	dc.b $01,$ca,$e4,$f1,$01
	dc.b $02,$d4,$ec,$f6,$11
	dc.b $01,$d4,$00,$f8,$04
	dc.b $68,$d8,$e4,$09,$27
	dc.b $cc,$d6,$e6,$11,$1f
	dc.b $00
	even

loc_0e661a:
	dc.b $01,$dc,$00,$f2,$04
	dc.b $01,$e7,$00,$ee,$09
	dc.b $01,$f0,$00,$f8,$0f
	dc.b $00
	even

loc_0e662a:
	dc.b $01,$de,$00,$f0,$04
	dc.b $01,$e7,$00,$ed,$0d
	dc.b $02,$f0,$00,$f8,$14
	dc.b $00
	even

loc_0e663a:
	dc.b $01,$e0,$00,$f3,$01
	dc.b $01,$e6,$00,$ec,$0a
	dc.b $22,$ec,$00,$00,$12
	dc.b $cc,$f0,$00,$0e,$28
	dc.b $00
	even

loc_0e6650:
	dc.b $01,$cd,$ec,$f4,$0a
	dc.b $02,$ec,$f4,$ef,$fa
	dc.b $00
	even

loc_0e665c:
	dc.b $01,$d2,$e0,$01,$0f
	dc.b $01,$d4,$ef,$f4,$07
	dc.b $c0,$d9,$e9,$14,$26
	dc.b $2c,$d5,$e3,$07,$1e
	dc.b $00
	even

loc_0e6672:
	dc.b $01,$d2,$ef,$f8,$0f
	dc.b $00
	even

loc_0e6678:
	dc.b $01,$d0,$de,$f5,$0a
	dc.b $01,$dc,$ed,$f5,$04
	dc.b $02,$ce,$d7,$f3,$0e
	dc.b $00
	even

loc_0e6688:
	dc.b $01,$d2,$e0,$fd,$0e
	dc.b $01,$da,$ed,$f5,$00
	dc.b $02,$e0,$ed,$f2,$0a
	dc.b $c0,$e0,$f0,$08,$1f
	dc.b $2c,$db,$ec,$00,$18
	dc.b $00
	even

loc_0e66a2:
	dc.b $01,$d1,$ec,$f7,$0b
	dc.b $02,$e2,$ee,$ed,$00
	dc.b $00
	even

loc_0e66ae:
	dc.b $01,$d2,$e6,$f9,$0a
	dc.b $01,$dc,$ee,$f1,$00
	dc.b $00
	even

loc_0e66ba:
	dc.b $01,$ce,$da,$f1,$01
	dc.b $01,$d6,$ee,$f5,$0b
	dc.b $c0,$e5,$f3,$02,$24
	dc.b $2c,$e1,$f0,$f4,$1c
	dc.b $00
	even

loc_0e66d0:
	dc.b $01,$d0,$e4,$f1,$09
	dc.b $02,$dc,$ef,$f6,$10
	dc.b $00
	even

loc_0e66dc:
	dc.b $01,$d1,$f2,$ef,$04
	dc.b $02,$d7,$ee,$f2,$0d
	dc.b $c0,$e5,$f2,$f8,$20
	dc.b $2c,$e1,$f0,$f0,$1a
	dc.b $00
	even

loc_0e66f2:
	dc.b $01,$c9,$f1,$f9,$05
	dc.b $01,$d0,$e8,$fd,$0c
	dc.b $02,$c5,$cd,$f3,$05
	dc.b $00
	even

loc_0e6702:
	dc.b $01,$ce,$e0,$fc,$0d
	dc.b $01,$d4,$ec,$f4,$06
	dc.b $c8,$c8,$e2,$0d,$20
	dc.b $20,$c0,$d4,$00,$10
	dc.b $00
	even

loc_0e6718:
	dc.b $01,$d8,$ec,$fe,$0e
	dc.b $01,$d2,$e4,$f2,$09
	dc.b $88,$e4,$ff,$f6,$14
	dc.b $68,$dc,$f4,$0c,$22
	dc.b $00
	even

loc_0e672e:
	dc.b $01,$e1,$f1,$f8,$08
	dc.b $01,$d0,$e8,$f6,$0d
	dc.b $00
	even

loc_0e673a:
	dc.b $01,$da,$f2,$00,$0c
	dc.b $01,$d0,$ea,$f3,$04
	dc.b $00
	even

loc_0e6746:
	dc.b $01,$cd,$d9,$00,$0a
	dc.b $01,$d3,$e1,$f9,$0d
	dc.b $01,$d7,$f2,$f4,$04
	dc.b $00
	even

loc_0e6756:
	dc.b $01,$ce,$ea,$f6,$0a
	dc.b $00
	even

loc_0e675c:
	dc.b $01,$ce,$dc,$fc,$10
	dc.b $01,$d8,$ec,$f5,$09
	dc.b $00
	even

loc_0e6768:
	dc.b $01,$cf,$e0,$fd,$14
	dc.b $01,$da,$eb,$f6,$0a
	dc.b $02,$e4,$ee,$f2,$07
	dc.b $80,$df,$f2,$10,$26
	dc.b $2c,$d9,$ed,$04,$1c
	dc.b $00
	even

loc_0e6782:
	dc.b $01,$d0,$e3,$00,$18
	dc.b $01,$da,$ef,$f6,$0c
	dc.b $00
	even

loc_0e678e:
	dc.b $01,$ce,$dc,$f6,$0e
	dc.b $01,$d0,$ec,$f6,$0a
	dc.b $00
	even

loc_0e679a:
	dc.b $02,$ca,$f4,$f9,$05
	dc.b $01,$d0,$f0,$f3,$05
	dc.b $00
	even

loc_0e67a6:
	dc.b $01,$ca,$f2,$f5,$06
	dc.b $02,$d0,$e4,$fd,$0a
	dc.b $02,$d8,$e8,$ed,$00
	dc.b $00
	even

loc_0e67b6:
	dc.b $01,$ce,$e4,$f1,$05
	dc.b $01,$d6,$ee,$fb,$0e
	dc.b $02,$ce,$f8,$fb,$05
	dc.b $c0,$d4,$e6,$16,$2a
	dc.b $6c,$d7,$ea,$0a,$1e
	dc.b $00
	even

loc_0e67d0:
	dc.b $01,$cc,$e4,$00,$0c
	dc.b $01,$d4,$f2,$f4,$06
	dc.b $00
	even

loc_0e67dc:
	dc.b $01,$cf,$ea,$f2,$0d
	dc.b $02,$da,$f0,$fa,$13
	dc.b $00
	even

loc_0e67e8:
	dc.b $01,$ca,$df,$ec,$01
	dc.b $01,$d4,$e7,$f8,$0d
	dc.b $c8,$e6,$f6,$11,$25
	dc.b $2c,$e0,$f2,$09,$1b
	dc.b $22,$dc,$ee,$00,$11
	dc.b $00
	even

loc_0e6802:
	dc.b $01,$d0,$f0,$f8,$0e
	dc.b $01,$e8,$00,$ef,$04
	dc.b $02,$d8,$e8,$f4,$14
	dc.b $00
	even

loc_0e6812:
	dc.b $01,$d0,$f0,$fa,$10
	dc.b $01,$ec,$00,$ef,$06
	dc.b $02,$d8,$f0,$f5,$12
	dc.b $00
	even

loc_0e6822:
	dc.b $01,$d4,$e4,$00,$16
	dc.b $01,$d8,$f0,$f6,$12
	dc.b $01,$f0,$00,$f0,$04
	dc.b $00
	even

loc_0e6832:
	dc.b $01,$d4,$f0,$f6,$12
	dc.b $01,$f0,$00,$f0,$00
	dc.b $68,$de,$f0,$10,$22
	dc.b $00
	even

loc_0e6842:
	dc.b $01,$d2,$f0,$f6,$12
	dc.b $01,$f0,$00,$f0,$10
	dc.b $00
	even

loc_0e684e:
	dc.b $01,$d4,$e0,$04,$10
	dc.b $01,$da,$eb,$fc,$12
	dc.b $01,$e0,$00,$f6,$0c
	dc.b $00
	even

loc_0e685e:
	dc.b $01,$de,$f0,$f8,$1e
	dc.b $01,$ec,$00,$f0,$18
	dc.b $02,$d8,$e8,$00,$14
	dc.b $00
	even

loc_0e686e:
	dc.b $01,$da,$f0,$00,$20
	dc.b $01,$e8,$00,$f2,$1a
	dc.b $02,$d4,$e8,$00,$18
	dc.b $00
	even

loc_0e687e:
	dc.b $02,$d0,$d8,$08,$24
	dc.b $01,$d4,$ec,$fe,$22
	dc.b $01,$e8,$00,$f3,$1c
	dc.b $6c,$ca,$da,$16,$2c
	dc.b $2c,$da,$e8,$10,$22
	dc.b $00
	even

loc_0e6898:
	dc.b $02,$cc,$d8,$0a,$26
	dc.b $01,$d4,$ec,$fe,$20
	dc.b $01,$e8,$00,$f3,$1a
	dc.b $00
	even

loc_0e68a8:
	dc.b $01,$ce,$dc,$04,$19
	dc.b $01,$d4,$f0,$fc,$1c
	dc.b $01,$ec,$00,$f6,$19
	dc.b $00
	even

loc_0e68b8:
	dc.b $01,$ce,$de,$02,$1b
	dc.b $01,$dc,$f0,$fc,$1b
	dc.b $01,$e8,$00,$f6,$14
	dc.b $00
	even

loc_0e68c8:
	dc.b $4c,$e0,$f8,$f4,$0a
	dc.b $c0,$bc,$d0,$08,$18
	dc.b $68,$c8,$e0,$fe,$12
	dc.b $00
	even

loc_0e68d8:
	dc.b $01,$dd,$f4,$f6,$08
	dc.b $01,$cc,$e8,$fb,$0f
	dc.b $28,$b4,$c8,$0d,$15
	dc.b $22,$bc,$dc,$03,$12
	dc.b $00
	even

loc_0e68ee:
	dc.b $01,$dd,$f4,$f5,$03
	dc.b $01,$d4,$f0,$fc,$0a
	dc.b $02,$c8,$e0,$05,$0d
	dc.b $0c,$bc,$cc,$0a,$12
	dc.b $00
	even

loc_0e6904:
	dc.b $01,$e1,$f1,$f8,$08
	dc.b $01,$d0,$e8,$f6,$0d
	dc.b $00
	even

loc_0e6910:
	dc.b $01,$f0,$00,$f2,$0a
	dc.b $0c,$ec,$00,$f2,$10
	dc.b $0c,$e0,$00,$fa,$06
	dc.b $00
	even

loc_0e6920:
	dc.b $01,$f0,$00,$f2,$04
	dc.b $0c,$e0,$00,$f3,$0e
	dc.b $c8,$c4,$e0,$fc,$0e
	dc.b $c8,$d8,$ec,$04,$18
	dc.b $00
	even

loc_0e6936:
	dc.b $01,$e0,$00,$f6,$05
	dc.b $02,$d0,$f0,$fb,$0e
	dc.b $2c,$c4,$e8,$fe,$18
	dc.b $c8,$bc,$d8,$fe,$16
	dc.b $00
	even

loc_0e694c:
	dc.b $01,$d1,$e2,$ee,$00
	dc.b $02,$d8,$ea,$f6,$08
	dc.b $c0,$ea,$f8,$06,$18
	dc.b $68,$e0,$f2,$fe,$10
	dc.b $00
	even

loc_0e6962:
	dc.b $01,$d8,$ea,$f6,$0a
	dc.b $0c,$e2,$f2,$fe,$10
	dc.b $01,$d1,$e2,$ee,$00
	dc.b $00
	even

loc_0e6972:
	dc.b $01,$d0,$e8,$f2,$04
	dc.b $02,$da,$f0,$fa,$0e
	dc.b $c0,$ee,$fc,$0a,$20
	dc.b $2c,$e0,$f4,$04,$16
	dc.b $00
	even

loc_0e6988:
	dc.b $01,$d1,$e2,$ee,$00
	dc.b $02,$d8,$ea,$f6,$08
	dc.b $c0,$ea,$f8,$06,$18
	dc.b $68,$e0,$f2,$fe,$10
	dc.b $00
	even

loc_0e699e:
	dc.b $01,$dc,$00,$f4,$0c
	dc.b $02,$e0,$00,$f0,$10
	dc.b $00
	even

loc_0e69aa:
	dc.b $01,$de,$00,$f4,$0c
	dc.b $02,$e4,$00,$f0,$10
	dc.b $c0,$e4,$f0,$e6,$1a
	dc.b $00
	even

loc_0e69ba:
	dc.b $01,$dc,$00,$f6,$0a
	dc.b $02,$e2,$00,$ee,$12
	dc.b $c0,$e8,$f0,$e0,$20
	dc.b $00
	even

loc_0e69ca:
	dc.b $01,$e8,$00,$f2,$0e
	dc.b $02,$e0,$00,$f2,$0e
	dc.b $c0,$e0,$f0,$f0,$10
	dc.b $00
	even

loc_0e69da:
	dc.b $01,$d0,$e0,$00,$10
	dc.b $01,$d4,$ec,$f4,$06
	dc.b $0c,$cc,$e0,$06,$1b
	dc.b $00
	even

loc_0e69ea:
	dc.b $01,$d3,$e3,$fd,$0d
	dc.b $01,$da,$ed,$f5,$fe
	dc.b $c0,$de,$f0,$07,$20
	dc.b $2c,$d8,$e8,$00,$18
	dc.b $c2,$e3,$ed,$f5,$0a
	dc.b $00
	even

loc_0e6a04:
	dc.b $21,$f0,$00,$ec,$18
	dc.b $2c,$e4,$00,$f0,$14
	dc.b $00
	even

loc_0e6a10:
	dc.b $68,$db,$f4,$f8,$1c
	dc.b $c1,$e0,$f8,$ec,$10
	dc.b $00
	even

loc_0e6a1c:
	dc.b $01,$dc,$fc,$f0,$10
	dc.b $00
	even

loc_0e6a22:
	dc.b $01,$db,$f4,$f8,$1c
	dc.b $01,$e0,$f8,$ec,$10
	dc.b $00
	even

loc_0e6a2e:
	dc.b $01,$e8,$f8,$e8,$18
	dc.b $01,$e0,$00,$f0,$10
	dc.b $00
	even

loc_0e6a3a:
	dc.b $01,$d0,$f0,$f9,$13
	dc.b $01,$e0,$00,$f4,$0f
	dc.b $00
	even

loc_0e6a46:
	dc.b $01,$d6,$e6,$02,$0e
	dc.b $01,$dc,$ef,$f6,$0a
	dc.b $02,$e6,$f2,$ef,$00
	dc.b $00
	even

loc_0e6a56:
	dc.b $01,$d2,$de,$03,$0f
	dc.b $01,$d6,$f0,$f4,$0f
	dc.b $01,$e8,$00,$f4,$0c
	dc.b $00
	even

loc_0e6a66:
	dc.b $01,$c8,$d4,$fb,$07
	dc.b $01,$d0,$00,$f4,$08
	dc.b $01,$dc,$00,$f2,$0e
	dc.b $00
	even

loc_0e6a76:
	dc.b $01,$c4,$d0,$f9,$03
	dc.b $01,$ca,$00,$f6,$0d
	dc.b $01,$dc,$00,$f2,$0d
	dc.b $00
	even

;0e6a86
