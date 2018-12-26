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

loc_0e40b0:
	dc.w $01ce,$f0f2,$0201,$d8f0,$ef0a,$01f0,$00f1,$1000

loc_0e40c0:
	dc.w $01cc,$d4fc,$0401,$d3f0,$f30d,$01f0,$00f0,$1000

loc_0e40d0:
	dc.w $01d2,$dafd,$0501,$d8f0,$f108,$01e4,$00f1,$0d00

loc_0e40e0:
	dc.w $01d8,$e0fd,$0501,$def0,$f10a,$01e4,$00f3,$0e00

loc_0e40f0:
	dc.w $01d8,$e0fc,$0401,$e000,$f20e,$0000

loc_0e40fc:
	dc.w $01cc,$00f4,$0a02,$c8d8,$f90e,$02ec,$00f0,$0e00

loc_0e410c:
	dc.w $01ca,$d2fa,$0201,$d000,$f40a,$02d4,$00f0,$0e00

loc_0e411c:
	dc.w $01d2,$dafc,$0401,$d8f0,$f108,$01e4,$00f3,$0c00

loc_0e412c:
	dc.w $01c8,$ecf7,$0402,$cae0,$fd0a,$01dc,$e6f7,$0c0c,$dcf8,$f7ff,$0000

loc_0e4142:
	dc.w $01ca,$f2f9,$0301,$d0e8,$f60b,$0000

loc_0e414e:
	dc.w $01ce,$eafd,$0501,$d4e4,$f40a,$01d1,$f0f8,$0000

loc_0e415e:
	dc.w $01ca,$f2f9,$0301,$d0e8,$f60b,$0000

loc_0e416a:
	dc.w $01c8,$f0f7,$0801,$d0e8,$f70c,$02dc,$faf7,$ff00

loc_0e417a:
	dc.w $01c9,$d101,$0901,$ceea,$f90c,$01e4,$f0f5,$070c,$eef8,$f1fb,$0000

loc_0e4190:
	dc.w $01d4,$e8f2,$0e01,$d0ec,$f60a,$0000

loc_0e419c:
	dc.w $01d0,$ecf6,$0a00

loc_0e41a2:
	dc.w $01d4,$e8f2,$0e01,$d0ec,$f60a,$0000

loc_0e41ae:
	dc.w $01ca,$dcf4,$0701,$dcf0,$f80e,$02dc,$f8f8,$0000

loc_0e41be:
	dc.w $01ca,$daf3,$fb01,$d0f0,$f804,$02dc,$e8fa,$0d0c,$dcf8,$f800,$0000

loc_0e41d4:
	dc.w $01c9,$ec01,$0c01,$cff2,$f904,$02e4,$f8f2,$fc00

loc_0e41e4:
	dc.w $01ca,$00f1,$0d00

loc_0e41ea:
	dc.w $01d9,$00f1,$0d00

loc_0e41f0:
	dc.w $01cc,$e0e7,$fe01,$d4f0,$eb08,$01e4,$00ef,$0d00

loc_0e4200:
	dc.w $01cc,$f0f1,$0201,$d8f0,$ed0b,$01ec,$00f1,$1000

loc_0e4210:
	dc.w $01ce,$e0ed,$0701,$d8f0,$e907,$01eb,$00ed,$0d00

loc_0e4220:
	dc.w $01cc,$f0f3,$0401,$d8f0,$ef0b,$01ec,$00f0,$1000

loc_0e4230:
	dc.w $01d6,$e8ea,$0001,$dcf0,$eb0a,$01e8,$00f0,$0f00

loc_0e4240:
	dc.w $01d7,$e7f7,$0301,$ddf0,$ef0a,$01e4,$00f2,$0e00

loc_0e4250:
	dc.w $01cc,$f8ee,$1000

loc_0e4256:
	dc.w $01cc,$f8f6,$0a00

loc_0e425c:
	dc.w $01dc,$f8ee,$1000

loc_0e4262:
	dc.w $01e8,$00ec,$1400

loc_0e4268:
	dc.w $01ce,$eef6,$0601,$d800,$f10b,$01e8,$00f1,$1000

loc_0e4278:
	dc.w $01d0,$f0f4,$0601,$e800,$f20d,$0000

loc_0e4284:
	dc.w $01d0,$f0ff,$0a02,$d8f0,$fe0e,$01ec,$00f4,$12c0,$d2e2,$041e,$2cd8,$ec04,$1400

loc_0e429e:
	dc.w $01ce,$d600,$0801,$d4f0,$f609,$01e8,$00f4,$0f00

loc_0e42ae:
	dc.w $01cc,$d4fe,$0601,$d3f0,$f70a,$01e8,$00f4,$0f00

loc_0e42be:
	dc.w $01cc,$d407,$0f01,$d3f0,$ff0f,$01e8,$00f6,$11c0,$cede,$1624,$2cd2,$e408,$1a00

loc_0e42d8:
	dc.w $01d8,$e0fe,$0601,$ddf0,$f50a,$01e8,$00f4,$0e00

loc_0e42e8:
	dc.w $01d7,$df00,$0801,$def0,$f90a
	dc.w $01ec,$00f4,$0fc0,$d9e8
	dc.w $121e,$2cdb,$ec08,$1400

loc_0e4302:
	dc.b $01,$c9,$db,$03,$0d
	dc.b $01,$d0,$00,$fc,$0a
	dc.b $00
	even

loc_0e430e:
	dc.w $01cc,$e4fc,$0a01,$e000,$000f,$02dc,$f0fe,$1400

loc_0e431e:
	dc.b $01,$cc,$e4,$fc,$0a
	dc.b $01,$d8,$00,$00,$0f
	dc.b $02,$dc,$f0,$fe,$14
	dc.b $80,$e8,$f8,$14,$26
	dc.b $6c,$e0,$f0,$08,$1e
	dc.b $00
	even

loc_0e4338:
	dc.b $01,$cc,$d4,$fc,$04
	dc.b $01,$d2,$00,$f4,$0a
	dc.b $00
	even

loc_0e4344:
	dc.w $01d9,$e1fa,$0201,$dff0,$f10a,$01ec,$00f4,$1000

loc_0e4354:
	dc.w $01dc,$e4f7,$ff01,$e3f0,$f106,$01e8,$00ed,$1000

loc_0e4364:
	dc.w $01e0,$e8f7,$ff01,$e400,$f108,$02e8,$00ed,$10c8,$f000,$1023,$2cf0,$0008,$1c00

loc_0e437e:
	dc.w $01d0,$f0f6,$0701,$e800,$f210,$0000

loc_0e438a:
	dc.w $01d4,$f0fd,$0d01,$e800,$f512,$0000

loc_0e4396:
	dc.w $01d4,$f0fd,$0d01,$e800,$f714,$c0cc,$e004,$1d2c,$d6e8,$0414,$0000

loc_0e43ac:
	dc.w $01c8,$d0ff,$0701,$d0f0,$fa0a,$01e8,$00f7,$14c8,$bcd0,$0016,$42cc,$e807,$1400

loc_0e43c6:
	dc.w $01cc,$d402,$0a01,$d3f0,$fa10,$01e8,$00f7,$1400

loc_0e43d6:
	dc.w $01ce,$d607,$0f01,$d2f0,$fb0f,$01e8,$00f5,$1200

loc_0e43e6:
	dc.w $01cc,$d407,$0f01,$d2f0,$fb0d,$01e8,$00f4,$1502,$d4e8,$fb12,$0000

loc_0e43fc:
	dc.w $01ce,$d60c,$1401,$d2f0,$0014,$01e8,$00f5,$1880,$cede,$1c2c,$6cd0,$e214,$2400

loc_0e4416:
	dc.w $01d7,$df01,$0901,$ddf0,$f809,$01e4,$00f4,$0f00

loc_0e4426:
	dc.w $01d8,$f0f8,$0b01,$ec00,$f410,$01e0,$f000,$1800

loc_0e4436:
	dc.w $01d8,$f0f9,$1001,$ec00,$f410,$c0d9,$e816,$2468,$dcea,$0a1c,$0000

loc_0e444c:
	dc.w $01ce,$e0ee,$0001,$dc00,$f404,$0000

loc_0e4458:
	dc.w $01d0,$e8f1,$0001,$d800,$fe0c,$0000

loc_0e4464:
	dc.w $01d4,$ecf4,$1001,$d000,$fe0e,$02ce,$e807,$18c0,$bccc,$0c22,$68c4,$e204,$1900

loc_0e447e:
	dc.w $01cc,$e4f2,$fe01,$d400,$fe0a,$02d0,$e4fe,$1400

loc_0e448e:
	dc.w $01ca,$f002,$0a01,$ce00,$fa04,$0000

loc_0e449a:
	dc.w $01d0,$e0f6,$0a01,$ca00,$fa06,$0000

loc_0e44a6:
	dc.w $01ca,$e0f4,$ff01,$d000,$f806,$0000

loc_0e44b2:
	dc.w $01cc,$d4f4,$fc01,$dcf0,$f408,$01ed,$00f4,$1001,$d2e0,$ee04,$0000

loc_0e44c8:
	dc.w $01c8,$dcf0,$fb01,$d000,$f402,$0000

loc_0e44d4:
	dc.w $01d0,$dcf5,$0d02,$d6ea,$0016,$01ca,$00fb,$0500

loc_0e44e4:
	dc.w $01d0,$e4ef,$0001,$d500,$fd08,$02ce,$e800,$1480
	dc.w $c2d2,$1428,$68c8,$d80d,$212c,$cee2,$0a1a,$0000

loc_0e4504:
	dc.w $01ce,$e4ee,$0001,$d400,$fc08,$02ce,$e400,$1800

loc_0e4514:
	dc.w $01cc,$e0f2,$fa01,$d200,$f704,$01e0,$f0f6,$0b02,$d8e4,$ec08,$0000

loc_0e452a:
	dc.w $01d8,$e000,$0801,$def0,$f811,$01f0,$00f4,$1000

loc_0e453a:
	dc.w $01dc,$e4fd,$0501,$e0f0,$f70c,$01ec,$00f2,$1000

loc_0e454a:
	dc.w $01dc,$e400,$0c01,$e400,$f80e,$02f0,$0000,$1600

loc_0e455a:
	dc.w $01dd,$e507,$0f01,$e300,$0011,$01ec,$00fa,$16cc,$f000,$162e,$22f0,$000a,$1e00

loc_0e4574:
	dc.w $01dc,$e402,$0e01,$e400,$fc12,$02ec,$0000,$2400

loc_0e4584:
	dc.w $01da,$e203,$0b01,$e000,$fa0b,$01e8,$00f4,$1300

loc_0e4594:
	dc.w $01cb,$eefa,$0701,$dce8,$f70b,$0000

loc_0e45a0:
	dc.w $01ca,$ecfa,$0702,$e5f8,$f6fe,$02e0,$e8f8,$0c00

loc_0e45b0:
	dc.w $02c9,$d101,$0901,$d0f0,$fa08,$02e4,$f8f8,$00c0
	dc.w $d0e6,$1022,$2cd0,$e002,$182c,$c9d5,$eb02,$0000

loc_0e45d0:
	dc.w $02c9,$f9fd,$0501,$cee6,$fa08,$01e4,$f2f8,$00c0
	dc.w $c0d4,$0f1f,$2cc7,$d802,$152c,$d5e5,$e902,$0000

loc_0e45f0:
	dc.w $02c9,$f8fa,$0201,$cce6,$fe0a,$01dc,$f0f6,$0200

loc_0e4600:
	dc.w $01ca,$f4fb,$0301,$d0f0,$f509,$02d2,$e2f0,$1000

loc_0e4610:
	dc.w $01cb,$d5f0,$0201,$d5e6,$f60e,$01d4,$eef6,$0200

loc_0e4620:
	dc.w $01d0,$e6f8,$0a01,$c8ee,$fb05,$0000

loc_0e462c:
	dc.w $01cd,$ddfd,$0d01,$cdee,$f906,$c0d9,$e912,$242c,$d4e2,$061a,$0000

loc_0e4642:
	dc.w $01cc,$eef7,$0702,$d6e8,$f50d,$0000

loc_0e464e:
	dc.w $01d4,$e8f6,$0601,$c8da,$f0ff,$02c8,$d4eb
	dc.w $06c0,$ecfc,$0014,$c0d4,$f2fa,$0c00

loc_0e4668:
	dc.w $01d9,$e6f6,$0e01,$c8ee,$f604,$0000

loc_0e4674:
	dc.w $01cd,$d5f2,$fa01,$d2e4,$ee0a,$02d0,$dee7,$0cc0
	dc.w $e6f0,$f626,$2ce2,$edf1,$1e02,$deea,$f416,$0000

loc_0e4694:
	dc.w $01d0,$f0f8,$0701,$e0ec,$f70b,$02e8,$f8f6,$00c0,$c8dc,$041a,$28d0,$e400,$1400

loc_0e46ae:
	dc.w $01c8,$e4ff,$0d01,$e0f0,$f90a,$02d0,$f8f9,$04c8,$b8cc,$0c1a,$22c8,$d80c,$1400

loc_0e46c8:
	dc.w $01c2,$f0fc,$0401,$d4ec,$f608,$02c8,$f800,$0800

loc_0e46d8:
	dc.w $01c6,$f0f6,$0401,$d0dc,$f60a,$02d0,$f8fc,$0400

loc_0e46e8:
	dc.w $01c8,$f2fc,$0401,$ceee,$f408,$0000

loc_0e46f4:
	dc.w $01d0,$e8f8,$0c01,$ddec,$ecfc,$02c6,$dc02,$1400

loc_0e4704:
	dc.w $01d0,$dcf8,$0c01,$daea,$f203,$02cc
	dc.w $f0f0,$fa68,$c4d8,$0c24,$80d0,$e610
	dc.w $2428,$ccde,$0c1c,$2cc4,$d0e7,$0c00

loc_0e4728:
	dc.w $01cb,$e2fe,$0c01,$dcf0,$f402,$02c2,$f8fa,$0268,$dcec
	dc.w $1422,$80e2,$f20a,$1c2c,$d7ec,$0214,$2cbc,$cbfa,$0a00

loc_0e474c:
	dc.w $01c9,$e8fe,$0801,$d2f0,$f600,$02d0,$f8fc,$06c0
	dc.w $c0d0,$0820,$22c7,$d6f2,$142c,$d4e4,$e8fa,$0000

loc_0e476c:
	dc.w $01c9,$e801,$0b01,$cdf0,$f802,$02d0,$f8fa,$04c0
	dc.w $d0e6,$1222,$2ccc,$de08,$202c,$c4d0,$ec08,$0000

loc_0e478c:
	dc.w $01cc,$e0f4,$fc01,$cff2,$f80a,$02d8,$eef8,$1600

loc_0e479c:
	dc.w $01cc,$dcf0,$ff01,$d2f0,$f808,$02d4,$e8f8,$18c8,$d0e2,$142c,$2cd6,$e506,$2600

loc_0e47b6:
	dc.w $01ca,$d2fd,$0501,$d0ee,$f60e,$02dc,$f400,$1600

loc_0e47c6:
	dc.w $01c8,$d0f0,$0201,$cee8,$f40a,$02d6,$f0fe,$14c0,$e8fc,$1022,$2ce2,$f408,$1e00

loc_0e47e0:
	dc.w $01c8,$d0f0,$0201,$cee8,$f40a,$02d6,$eefe,$14cc,$e8fa,$1426,$2ce2,$f408,$1e00

loc_0e47fa:
	dc.w $01c8,$d0f0,$0201,$cee8,$f40a,$02d6,$eefe,$14c0,$e8f8,$1428,$2ce0,$f308,$1e00

loc_0e4814:
	dc.w $01c8,$d0f0,$0201,$cee8,$f40a,$02d6,$eefe,$10cc,$e6f6,$182c,$2ce0,$f208,$1e00

loc_0e482e:
	dc.w $01c8,$d0f0,$0201,$d0e8,$f40a,$02d8,$ecfe,$14c8,$e0f4,$1c2c,$2cdc,$f00c,$2400

loc_0e4848:
	dc.w $01c8,$d0f0,$0201,$d0e8,$f40a,$02d8,$eefe,$140c,$dcec,$1020,$0000

loc_0e485e:
	dc.w $02c4,$cd00,$0e01,$cde2,$f706,$0ce2,$f0f2,$fe00

loc_0e486e:
	dc.w $01c4,$cc02,$1201,$ccdc,$fc06,$02d8,$f0f6,$fec0,$cce2,$0619,$0000

loc_0e4884:
	dc.w $01ce,$d6ff,$0a01,$d6f0,$fa0c,$01e8,$f8f6,$1001,$f000,$f215,$0000

loc_0e489a:
	dc.w $01ce,$d605,$0d01,$d6f0,$fe12,$02d8,$ec08,$1a01,$e8f8,$fa16,$01f0,$00f2,$1600

loc_0e48b4:
	dc.w $01d0,$d80a,$1601,$d8f0,$0214,$01e8,$00f4,$1a02,$d4ec
	dc.w $101c,$c8d4,$e41a,$2a2c,$d2e6,$1222,$20d6,$e222,$3200

loc_0e48d8:
	dc.w $01cb,$d3f2,$fa01,$d0e0,$ec00,$01dc,$00f6,$0400

loc_0e48e8:
	dc.w $01cd,$e0ee,$fe01,$d400,$fa04,$02dc,$ecf8,$0a00

loc_0e48f8:
	dc.w $01ce,$deee,$0001,$d400,$fa06,$02d2,$e8fe,$0ec0
	dc.w $c8d4,$1226,$c8ce,$dc0a,$202c,$d4e4,$0218,$0000

loc_0e4918:
	dc.w $01cd,$e4ee,$0401,$d400,$fa06,$02d0,$ecf8,$0a00

loc_0e4928:
	dc.w $01cc,$d4f0,$f801,$dcf0,$f004,$01ed,$00f0,$0c01,$d2e0,$ea00,$0000

loc_0e493e:
	dc.w $01cc,$f0f8,$0a01,$e800,$f210,$0000

loc_0e494a:
	dc.w $01c8,$d0fc,$0401,$d0f0,$f407,$01e8,$f8f2,$0c01,$f000,$f210,$0000

loc_0e4960:
	dc.w $01ce,$d6ff,$0a01,$d6f0,$f60c,$01e8,$f8f6,$1001,$f000,$f215,$0000

loc_0e4976:
	dc.w $01ce,$d605,$0d01,$d6f0,$fa12,$01e8,$f8f8,$1601,$f000,$f216,$0000

loc_0e498c:
	dc.w $01d0,$d805,$1501,$d8f0,$0015,$01e8,$f8fa,$1901,$f000,$f219,$02d8,$f010,$1c00

loc_0e49a6:
	dc.w $01ca,$d2fb,$0301,$d0f0,$f208,$01e0,$f8f2,$0c01,$f000,$f210,$0000

loc_0e49bc:
	dc.w $c0d8,$f004,$1800

loc_0e49c2:
	dc.w $c0cc,$dcf8,$14c0,$b8d0,$020e,$0000

loc_0e49ce:
	dc.w $01c4,$e4fc,$0a02,$b4ec,$ff09,$02ce,$def4,$110c
	dc.w $d4fc,$fc06,$c0b0,$cc00,$0d60,$cae0,$0014,$0000

loc_0e49ee:
	dc.w $01d0,$e8f2,$1102,$d0f0,$f808,$02c8,$e0ee,$1400

loc_0e49fe:
	dc.w $01d1,$e8f1,$1100

loc_0e4a04:
	dc.w $01c8,$f0ff,$0a01,$cedc,$fa0f,$01d4,$e6f2,$0c00

loc_0e4a14:
	dc.w $40dc,$0008,$1ec0,$d8e8,$041a,$0000

loc_0e4a20:
	dc.w $c0c0,$e0fc,$1400

loc_0e4a26:
	dc.w $01d0,$f0f8,$0802,$c4f8,$fa06,$c0bc,$d0f6,$0a2c,$c8dc,$f20e,$0000

loc_0e4a3c:
	dc.w $01d0,$f000,$0d01,$d8f0,$f409,$01e8,$00f0,$1000

loc_0e4a4c:
	dc.w $01e0,$ecec,$1201,$dcf0,$f20a,$0000

loc_0e4a58:
	dc.w $01d0,$f0f4,$0e00

loc_0e4a5e:
	dc.w $01e8,$f4f1,$04cc,$bce0,$0a26,$01d0,$ecf4,$0e00

loc_0e4a6e:
	dc.w $c0d8,$f00a,$1c0c,$e000,$f400,$0000

loc_0e4a7a:
	dc.w $c0b8,$e002,$0e2c,$cce4,$0014,$0cd0,$f0f4,$0400

loc_0e4a8a:
	dc.w $01cf,$d703,$0b01,$d2f0,$f80d,$01e8,$00f1,$1000

loc_0e4a9a:
	dc.w $01cb,$d3fc,$0401,$d000,$f60c,$0000

loc_0e4aa6:
	dc.w $01cd,$d5fe,$0601,$d2f0,$f70d,$01e8,$00f3,$1000

loc_0e4ab6:
	dc.w $01d1,$d9f7,$0701,$d8f1,$f30c,$01e8,$00f1,$0f00

loc_0e4ac6:
	dc.w $01c6,$cefc,$0401,$ce00,$f40b,$0000

;0e4ad2