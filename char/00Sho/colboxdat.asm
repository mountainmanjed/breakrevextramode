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

loc_0e3584:
	dc.w $01cd,$d5fe,$0601,$d2e8,$f608,$01e8,$00f2,$0d02,$d8e8,$020d,$0000

loc_0e359a:
	dc.w $01cc,$d4fc,$0401,$d2e8,$f60a,$01e8,$00f3,$0d00

loc_0e35aa:
	dc.w $01d2,$dafe,$0601,$d8e8,$f608,$01e8,$00f2,$0d02,$d8e8,$020d,$0000


loc_0e35c0:
	dc.w $01d9,$e1fe,$0601,$def0,$f60d,$01ec,$00f2,$0d00

loc_0e35d0:
	dc.w $01d9,$e1fc,$0401,$def0,$f60a,$01e4,$00f3,$0d00

loc_0e35e0:
	dc.w $01ca,$d2f6,$0501,$d000,$f608,$02d0,$00f2,$0d00

loc_0e35f0:
	dc.w $01ca,$d2fa,$0201,$cf00,$f60b,$02e0,$00f2,$0d00

loc_0e3600:
	dc.w $01d0,$d8fd,$0501,$d6e8,$f607,$01e8,$00f2,$0d02,$d8e8,$020b,$0000

loc_0e3616:
	dc.w $01c8,$d0fd,$0501,$cef0,$f707,$0ce4,$f8f8,$0002,$c9d8,$030c,$0000

loc_0e362c:
	dc.w $01ca,$d2fd,$0501,$d0ea,$f70a,$02d4,$f2f6,$0102,$cfe8,$050d,$0000

loc_0e3642:
	dc.w $01c8,$f4fd,$0501,$cef0,$f707,$02e4,$fcf8,$0002,$c9d8,$030c,$0000

loc_0e3658:
	dc.w $01ca,$ec00,$0801,$d0f0,$f800,$02e8,$f4f0,$fc02,$d4e8,$060e,$0000

loc_0e366e:
	dc.w $01d6,$e6f1,$0f01,$d2ea,$f60a,$0000

loc_0e367a:
	dc.w $01d4,$e8f4,$0c01,$cbeb,$f907,$0000

loc_0e3686:
	dc.w $01cb,$d3f2,$fa01,$d2e2,$f004,$01d8,$eafc,$0c02,$e0f3,$040f,$0000

loc_0e369c:
	dc.w $01cc,$00f2,$0c00

loc_0e36a2:
	dc.w $01d8,$00f2,$0d00

loc_0e36a8:
	dc.w $01cb,$e0ec,$0001,$d3e8,$f006,$01dc,$00f2,$0d00

loc_0e36b8:
	dc.w $01cb,$e8f3,$0101,$d0e8,$f60a,$01e0,$00f2,$0d00

loc_0e36c8:
	dc.w $01d0,$f0ef,$0801,$d4e8,$eb08,$01ec,$00f2,$0d00

loc_0e36d8:
	dc.w $01cd,$d5fd,$0501,$d1e8,$f40a,$01e8,$00f2,$0d00

loc_0e36e8:
	dc.w $01d8,$e8ec,$0001,$def0,$ee06,$01e8,$00f0,$0d00

loc_0e36f8:
	dc.w $01d9,$e1f8,$0201,$ddf0,$f30a,$01e8,$00f2,$0d00

loc_0e3708:
	dc.w $01cc,$f8f0,$0d00

loc_0e370e:
	dc.w $01cc,$f8f6,$0a00

loc_0e3714:
	dc.w $01d8,$f8f0,$0d00

loc_0e371a:
	dc.w $01e8,$00ec,$1400

loc_0e3720:
	dc.w $01ce,$f0f5,$0501,$e800,$f00e,$02d6,$e8f0,$0a00

loc_0e3730:
	dc.w $01cd,$d502,$0a01,$d2e8,$f90a,$01e8,$00f2,$0e02,$d4e8,$020e,$0000

loc_0e3746:
	dc.w $01cd,$d505,$0d01,$d2e8,$f90c,$01e8,$00f2,$0e02,$d0f0
	dc.w $0211,$c0d2,$da11,$23c0,$d2e1,$111c,$2cd2,$e108,$1800

loc_0e376a:
	dc.w $01cd,$d502,$0a01,$d2e8,$f90a,$01e8,$00f2,$0e02,$d2e0,$0212,$0000

loc_0e3780:
	dc.w $01cd,$d500,$0801,$d2e8,$f80a,$01e8,$00f2,$0d02,$d2f0,$020e,$0000

loc_0e3796:
	dc.w $01d9,$e1fe,$0601,$def0,$f206,$01ec,$00f2,$0d00

loc_0e37a6:
	dc.w $02da,$f004,$0d01,$def0,$f806,$01ec,$00f2,$0dc0,$deea,$0c20,$2cde,$ec04,$1400

loc_0e37c0:
	dc.w $01d9,$e103,$0b01,$deec,$f60d,$01ec,$00f2,$0dc0,$dfe8,$0d20,$2cde,$ec06,$1600

loc_0e37da:
	dc.w $01cb,$d300,$0801,$d0e8,$f90a,$01e8,$00f6,$0c00

loc_0e37ea:
	dc.w $01cc,$e8fe,$0a01,$e000,$040c,$0000

loc_0e37f6:
	dc.w $01cd,$e8fc,$0801,$e000,$040c,$c0d2,$e50e,$1d2c,$d8ec,$0515,$0000

loc_0e380c:
	dc.w $02c8,$d001,$0901,$cce4,$fc0a,$02d6,$e606,$1701,$d800,$030d,$0000

loc_0e3822:
	dc.w $01ca,$d202,$0a01,$d0e8,$fb0c,$01e8,$00f6,$0e00

loc_0e3832:
	dc.w $01c9,$d105,$0d01,$cde4,$fe0c,$01dd,$0005,$0f00

loc_0e3842:
	dc.w $01d0,$0006,$1001,$c9e6,$0109,$01cd,$e0fa,$09c0
	dc.w $c2d6,$1621,$68d0,$e216,$242c,$cae8,$0f1a,$0000

loc_0e3862:
	dc.w $01c9,$d104,$0c01,$cce4,$fc0c,$01d0,$0005,$0f02,$d0e0,$081a,$0cd3,$e012,$2200

loc_0e387c:
	dc.w $01c9,$d105,$0d01,$cde4,$fe0c,$01dd,$0005,$0f02,$d0e8,$0815,$0000

loc_0e3892:
	dc.w $01cc,$d402,$0a01,$d1e8,$fa0a,$01e8,$00f3,$0e02,$d0f0,$030f,$0000

loc_0e38a8:
	dc.w $01d9,$e1fb,$0301,$df00,$f20c,$02f0,$0001,$1300

loc_0e38b8:
	dc.w $01da,$e2f7,$0101,$e000,$f10a,$22f0,$0002,$12cc,$f000,$1221,$0000

loc_0e38ce:
	dc.w $01cd,$d501,$0901,$d2e8,$f909,$01e8,$00f2,$0e02,$d8f0,$020e,$0000

loc_0e38e4:
	dc.w $01d0,$f0fb,$0d01,$ec00,$f10f,$02d5,$f008,$13c0,$d0e2,$0d1c,$28cc,$db07,$1900

loc_0e38fe:
	dc.w $01d0,$f0fb,$1101,$ec00,$f111,$22ca,$d403,$15c0,$c4cc,$0015,$0000

loc_0e3914:
	dc.w $01cc,$d400,$0801,$d3e8,$f60e,$01e8,$00f2,$0e00

loc_0e3924:
	dc.w $01cd,$d500,$0801,$d2e8,$f80a,$01e8,$00f2,$0d02,$d8f0,$020f,$0000

loc_0e393a:
	dc.w $01d3,$f009,$1301,$d6f0,$fb10,$01ec,$00f1,$0ec2,$d8e8,$0c1e,$0000

loc_0e3950:
	dc.w $01d0,$d805,$0d01,$d5f0,$f80d,$01f0,$00ef,$0000

loc_0e3960:
	dc.w $0cc8,$d0fd,$0501,$cef2,$f605,$02e4,$f8f6,$fe00

loc_0e3970:
	dc.w $01cd,$f2f8,$0502,$e0f8,$fb0c,$0000

loc_0e397c:
	dc.w $01d0,$f2fa,$0802,$e0f8,$fb03,$c8c0,$d403,$1322,$c8dc,$000d,$0000

loc_0e3992:
	dc.w $01c8,$e4fc,$0b01,$daf0,$f708,$02dc,$f803,$0b00

loc_0e39a2:
	dc.w $01c8,$ecf7,$0a01,$daf4,$f704,$02c4,$fcf7,$ff00

loc_0e39b2:
	dc.w $02cd,$e409,$1201,$d2f0,$fb0d,$01ec,$00f2,$1201
	dc.w $e4f0,$fb14,$c0d1,$dc16,$282c,$cfde,$0c20,$0000

loc_0e39d2:
	dc.w $01cd,$d504,$0c01,$d2e8,$fa0c,$01e8,$00f3,$1102,$d2e8,$0313,$0000

loc_0e39e8:
	dc.w $01d7,$df04,$0c01,$dcf0,$f90c,$01f0,$00f2,$100c,$def0,$0812,$0000

loc_0e39fe:
	dc.w $01da,$00fd,$1001,$ec00,$f210,$0cdc,$f008,$16c0,$d0dc,$081c,$48d6,$e810,$1e00

loc_0e3a18:
	dc.w $01d4,$00fb,$1001,$e800,$f210,$02cb,$e002,$13c0,$bccc,$0818,$6cc8,$d80c,$1a00

loc_0e3a32:
	dc.w $01d8,$00fd,$1201,$ec00,$f210,$01d3,$e806,$1700

loc_0e3a42:
	dc.w $02c8,$d001,$0901,$cce0,$fc0a,$01d8,$0003,$0d22
	dc.w $dcec,$0212,$c0d4,$e20d,$1dcc,$d8e7,$0817,$0000

loc_0e3a62:
	dc.w $02c9,$d1fe,$0601,$cee6,$f80d,$01d5,$0006,$11c0
	dc.w $c6d5,$192b,$2cca,$dc13,$2422,$cee3,$0d1c,$0000

loc_0e3a82:
	dc.w $01c7,$cf02,$0a01,$cce4,$fd0c,$02d4,$e406,$1b01,$d400,$040f,$0000

loc_0e3a98:
	dc.w $01cc,$d4fa,$0201,$d4e8,$fa0e,$01e8,$00f2,$0a00

loc_0e3aa8:
	dc.w $02cb,$d302,$0a01,$d0f0,$fc10,$01d8,$00f6,$0000

loc_0e3ab8:
	dc.w $01dd,$ecfa,$0a01,$e100,$f50e,$02ec,$00f3,$1400

loc_0e3ac8:
	dc.w $02da,$e8f1,$0401,$ddf3,$f50a,$01e8,$00f6,$0fcc,$f000,$0f26,$22ec,$0005,$1800

loc_0e3ae2:
	dc.w $01d8,$e0fa,$0201,$dd00,$f40a,$01e8,$00f2,$1002,$f000,$0018,$0000

loc_0e3af8:
	dc.w $01d9,$e1f9,$0101,$de00,$f20d,$0000

loc_0e3b04:
	dc.w $01ca,$d2fd,$0501,$cee6,$f608,$01e4,$00f3,$0e02,$d2e8,$060e,$0000

loc_0e3b1a:
	dc.w $01cc,$d4fe,$0601,$d0e8,$f208,$01e8,$00f2,$0d02,$d4e8,$020d,$0000

loc_0e3b30:
	dc.w $01ce,$e5fa,$0901,$dbf3,$fa0e,$01e8,$00f1,$0600

loc_0e3b40:
	dc.w $01d4,$dc0c,$1401,$d6f0,$fe10,$01f0,$00f2,$1002
	dc.w $d8f0,$0515,$c0e0,$f015,$262c,$dce8,$0c22,$0000

loc_0e3b60:
	dc.w $01c7,$cff9,$0101,$cde0,$f108,$01d0,$00f4,$0002,$e0f0,$f808,$0000

loc_0e3b76:
	dc.w $01c8,$d0f0,$f801,$cee0,$e902,$01d0,$00f0,$fa02,$d8f0,$f808,$0000

loc_0e3b8c:
	dc.w $01d5,$e8e9,$0201,$ce00,$f0fc,$02d8,$f0fc,$0ac0,$ecf8,$081a,$2ce6,$f0fc,$1200

loc_0e3ba6:
	dc.w $01cc,$d406,$0e01,$d2ec,$fa10,$02e8,$f8f0,$0000

loc_0e3bb6:
	dc.w $01ca,$d2fb,$0301,$d0e0,$f508,$01d4,$f0fb,$05c0
	dc.w $d8e8,$0818,$2ce0,$f005,$102c,$e8f8,$020a,$0000

loc_0e3bd6:
	dc.w $01ca,$d2fd,$0501,$cfe4,$f60a,$01e4,$f2f2,$0200

loc_0e3be6:
	dc.w $01cb,$ecf9,$0701,$d2f0,$f604,$02d4,$e6fe,$0ec0,$dce9,$0e1b,$2cd8,$e606,$1700

loc_0e3c00:
	dc.w $01c9,$f0fe,$0601,$cef8,$f7ff,$02d0,$ec02,$0a00

loc_0e3c10:
	dc.w $01c8,$eefa,$0201,$cfdd,$f406,$01d9,$eaf8,$0d00

loc_0e3c20:
	dc.w $01ca,$d2fc,$0801,$dcf0,$f3fd,$01d0,$e8f6,$0602
	dc.w $ecf4,$f0f8,$c0ce,$de0f,$1f2c,$d2e4,$0617,$0000

loc_0e3c40:
	dc.w $01cb,$ecfb,$0301,$d2e8,$f40a,$02cf,$eefe,$0c00

loc_0e3c50:
	dc.w $01cb,$edf8,$0501,$cee4,$f409,$02d6,$e4f9,$10c0,$cfdd
	dc.w $1222,$0ce4,$f3fd,$07cc,$d5e3,$0919,$2cdd,$e9fd,$1000

loc_0e3c74:
	dc.w $01cb,$e0f2,$0301,$d0f0,$fa08,$02d8,$f802,$0c00

loc_0e3c84:
	dc.w $01d4,$ebf4,$0c02,$ddf4,$f40c,$c0e8,$f8f6,$0c00

loc_0e3c94:
	dc.w $01cc,$f0f6,$0702,$d4e4,$f50d,$02c4,$f4f6,$0000

loc_0e3ca4:
	dc.w $02d3,$e400,$0d01,$cbeb,$f609,$02cf,$f2f6,$0200

loc_0e3cb4:
	dc.w $01d0,$e2f9,$0e02,$e0f1,$f4fe,$01cb,$eaf9,$04c8,$e0f1,$0e21,$2cd9,$e904,$1900

loc_0e3cce:
	dc.w $01ce,$e8fa,$0d01,$dcf4,$f704,$02d4,$ec00,$1200

loc_0e3cde:
	dc.w $01ce,$f2fa,$0802,$e0f8,$fb03,$c0c0,$d403,$1628,$bddc,$0010,$0000

loc_0e3cf4:
	dc.w $01cc,$e0f0,$0d01,$d0ea,$f400,$0000

loc_0e3d00:
	dc.w $01d0,$dcef,$1001,$d8e7,$ea08,$0000

loc_0e3d0c:
	dc.w $01ce,$eef6,$0602,$c6d8,$ea01,$0000

loc_0e3d18:
	dc.w $01c6,$ecf1,$0001,$cee8,$f808,$02d2,$e004,$12c0,$cce8,$1224,$68c4,$e400,$1c00

loc_0e3d32:
	dc.w $01d2,$e3ed,$0801,$c7e8,$fa08,$02dc,$f404,$1100

loc_0e3d42:
	dc.w $01ce,$deee,$0c01,$d7f8,$f602,$02d2,$e600,$1000

loc_0e3d52:
	dc.w $01cb,$deee,$0201,$d7f8,$f602,$02d8,$ec00,$1000

loc_0e3d62:
	dc.w $01c9,$def3,$0201,$d7f8,$f602,$02d0,$ec00,$0a00

loc_0e3d72:
	dc.w $01cc,$dcf5,$0301,$d4ea,$f50a,$02d9,$eeef,$152c,$dfef,$f11d,$c0e2,$f20a,$2500

loc_0e3d8c:
	dc.w $01ca,$f0fb,$0301,$d2ed,$f3fb,$01d0,$e403,$0b00

loc_0e3d9c:
	dc.w $01c9,$dcfb,$0301,$cfdc,$fd0d,$01dc,$f1f6,$0800

loc_0e3dac:
	dc.w $01c8,$f0fe,$0601,$cee0,$f70b,$01ce,$f4f8,$0200

loc_0e3dbc:
	dc.w $01c7,$cff1,$0101,$cfe4,$f00a,$01d8,$ecf8,$0ccc
	dc.w $ecfa,$0c16,$22e4,$f404,$112c,$dbe8,$f004,$0000

loc_0e3ddc:
	dc.w $01cb,$d301,$0d01,$d3f0,$f80d,$01e8,$00f1,$1102
	dc.w $cbec,$0816,$c0ce,$e010,$282c,$c6e8,$1224,$0000

loc_0e3dfc:
	dc.w $01cd,$d509,$1201,$d2f0,$fb14,$01ec,$00f2,$13cc,$d0df,$0e28,$0000

loc_0e3e12:
	dc.w $0cd8,$f0f6,$0a01,$e800,$f200,$0000

loc_0e3e1e:
	dc.w $01d0,$e8f9,$080c,$e4f0,$f403,$0000

loc_0e3e2a:
	dc.w $02cd,$d5fe,$0e01,$d0e4,$f908,$0cdc,$f0f4,$0000

loc_0e3e3a:
	dc.w $01cd,$e4f3,$0502,$d0d8,$f80c,$0cdc,$eef8,$0100

loc_0e3e4a:
	dc.w $01ca,$dcf2,$0201,$d8e8,$fa0a,$0cd4,$f0fe,$0ac8,$d4e2,$1125,$2cd4,$e609,$1a00

loc_0e3e64:
	dc.w $01c8,$e4fa,$0802,$d4f0,$f60c,$02e8,$f808,$186c,$e8f8,$f008,$44d4,$ece0,$f600

loc_0e3e7e:
	dc.w $01c8,$e4f8,$0601,$d4f0,$f40a,$02e8,$f8e8,$f800

loc_0e3e8e:
	dc.w $01ce,$f000,$0801,$d4f4,$f800,$02ec,$f8f0,$fc02,$d8ec,$060e,$0000

loc_0e3ea4:
	dc.w $01ec,$00f0,$100c,$e400,$f60a,$0000

loc_0e3eb0:
	dc.w $01d6,$defd,$0501,$dd00,$f60d,$0000

loc_0e3ebc:
	dc.w $01cb,$00f9,$0301,$d0e8,$f307,$01d8,$f0fc,$1100

loc_0e3ecc:
	dc.w $01cb,$d3f6,$fe01,$d0e8,$f007,$01d8,$f4fc,$0b22
	dc.w $d4f0,$070f,$ccce,$da0f,$1f2c,$d2e5,$0717,$0000

loc_0e3eec:
	dc.w $01cb,$f4f9,$0501,$d0ec,$f208,$02d0,$e4ff,$1600

loc_0e3efc:
	dc.w $01cb,$d3f9,$0101,$d0e0,$f90b,$01e0,$f4f4,$0802,$f0fc,$f0f8,$0000

loc_0e3f12:
	dc.w $01ca,$f8fa,$0601,$cff0,$f70a,$02d0,$dcf1,$0e00

loc_0e3f22:
	dc.w $01cc,$ecfd,$0701,$d0e8,$f507,$01e8,$f8f0,$fe02
	dc.w $d6ea,$fe12,$ccd3,$e310,$1c2c,$e0f0,$0614,$0000

loc_0e3f42:
	dc.w $01ca,$d2fe,$0601,$cff8,$f606,$02d9,$f000,$1200

loc_0e3f52:
	dc.w $01c9,$f4fe,$0801,$cee7,$f507,$02dc,$f8fc,$0d00

loc_0e3f62:
	dc.w $01cc,$ecfa,$0201,$d0e0,$f50a,$01d8,$f400,$1000

loc_0e3f72:
	dc.w $01cc,$d4f9,$0101,$d1f0
	dc.w $f104,$01da,$ecf6,$12cc
	dc.w $e4f4,$1220,$22e0,$f004,$2000

loc_0e3f8c:
	dc.w $01cc,$d4fc,$0401,$d0e8,$f206,$01e8,$00f0,$0f02,$dce8,$020d,$0000

loc_0e3fa2:
	dc.w $01cc,$d4f7,$ff01,$d2f0,$f006,$01ec,$00f0,$1102,$dcf0,$020d,$0000

loc_0e3fb8:
	dc.w $01ce,$e8f7,$0d01,$e800,$f011,$02d8,$e801,$1100

loc_0e3fc8:
	dc.w $01d0,$e004,$1401,$d8f0,$fc14,$01ec,$00f0,$1100

loc_0e3fd8:
	dc.w $01ce,$d604,$0c01,$d4f0,$fb11,$01e8,$00f2,$1100

loc_0e3fe8:
	dc.w $02d6,$e6f1,$1101,$cdf4,$f50a,$0000

loc_0e3ff4:
	dc.w $01cd,$d502,$0a01,$d3e8,$f80a,$01e8,$00f2,$0f02,$d8f0,$0812,$0000

loc_0e400a:
	dc.w $01d0,$f001,$0d01,$d4f0,$f80d,$01e8,$00f1,$0d00

loc_0e401a:
	dc.w $01cc,$ec01,$0d01,$d4f0,$fa0f,$01e8,$00ef,$0500

loc_0e402a:
	dc.w $01d0,$dcf1,$0401,$d8f0,$f30d,$01ec,$00f3,$1000

loc_0e403a:
	dc.w $01d0,$d8fc,$0401,$d4f0,$f50b,$01e8,$00f2,$0d00

loc_0e404a:
	dc.w $01cc,$d4fb,$0301,$d2f0,$f609,$01ec,$00ee,$fc00

loc_0e405a:
	dc.w $01cc,$d4fc,$0401,$d0ed,$f506,$01d7,$eaf0,$10cc,$e0f4,$1020,$22e4,$ef02,$2400

loc_0e4074:
	dc.w $01ca,$d2fe,$0601,$d000,$f60a,$01e0,$00f6,$0d00

loc_0e4084:
	dc.w $01ce,$d601,$0901,$d300,$f50b,$01dc,$f0f4,$1201,$e800,$eb10,$0000

loc_0e409a:
	dc.w $01cb,$d301,$0901,$d100,$f60b,$02d8,$f0f7,$1001,$e800,$ee10,$0000

;dao start 0e40b0