loc_0021ae:
	cmpi.l #$5f5e100,d0

loc_0021b4:
	bcs.b loc_0021ba
	moveq #-$1,d0
	rts

loc_0021ba:
	movem.l d1/d2/d3/d4/d5/d6/d7/a0,-(a7)

;loc_0021be
HextoDec:
	move.w #$1e,d6
	
	ror.l #3,d0
	move.b d0,d1
	and.w d6,d1
	
	ror.l #4,d0
	move.b d0,d2
	and.w d6,d2
	move.w #$3c,d6

	ror.l #3,d0
	move.b d0,d3
	and.w d6,d3

;21d8
	ror.l #4,d0
	move.b d0,d4
	and.w d6,d4

;21de
	ror.l #4,d0
	move.b d0,d5
	and.w d6,d5

;21e4
	ror.l #4,d0
	and.w d0,d6
	rol.w #6,d0
	andi.w #$f,d0

;21ee
	lea loc_002280(pc),a0
	adda.w d0,a0
	move.b (a0),d0

;21f6
	lea loc_002291(pc),a0
	adda.w d1,a0	
	sub.w d1,d1
	move.b (a0),d7
	abcd d7,d0
	move.b -(a0),d7
	abcd d7,d1

;2206
	lea loc_0022b1(pc),a0
	adda.w d2,a0
	move.b (a0),d7
	abcd d7,d0
	move.b -(a0),d7
	abcd d7,d1

;2214
	lea loc_0022d3(pc),a0
	adda.w d3,a0
	sub.w d2,d2
	move.b (a0),d7
	abcd d7,d0
	move.b -(a0),d7
	abcd d7,d1
	move.b -(a0),d7
	abcd d7,d2

;2228
	lea loc_002313(pc),a0
	adda.w d4,a0	
	sub.w d3,d3
	move.b (a0),d7
	abcd d7,d0
	move.b -(a0),d7
	abcd d7,d1
	move.b -(a0),d7
	abcd d7,d2
	move.b -(a0),d7
	abcd d7,d3
	
;2240
	lea loc_002353(pc),a0
	adda.w d5,a0
	move.b (a0),d7
	abcd d7,d0
	move.b -(a0),d7
	abcd d7,d1
	move.b -(a0),d7
	abcd d7,d2
	move.b -(a0),d7
	abcd d7,d3

;2256
	lea loc_002393(pc),a0 
	adda.w d6,a0
	move.b (a0),d7
	abcd d7,d0
	move.b -(a0),d7
	abcd d7,d1
	move.b -(a0),d7
	abcd d7,d2
	move.b -(a0),d7
	abcd d7,d3
	lsl.w #8,d1
	or.w d1,d0
	swap d0
	lsl.w #8,d3
	move.b d2,d3
	move.w d3,d0
	swap d0
	movem.l (a7)+,d1/d2/d3/d4/d5/d6/d7/a0
	rts

;Numbers for Hex to Decimal conversions
loc_002280:
	dc.b $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$10,$11,$12,$13,$14,$15
	dc.b $00

loc_002291:
	dc.b $00
	dc.w $0016,$0032,$0048,$0064,$0080,$0096,$0112,$0128
	dc.w $0144,$0160,$0176,$0192,$0208,$0224,$0240
	dc.b $00

loc_0022b1:
	dc.b $00
	dc.w $0256,$0512,$0768,$1024,$1280,$1536,$1792,$2048
	dc.w $2304,$2560,$2816,$3072,$3328,$3584,$3840,$0000 
	dc.b $00

loc_0022d3:
	dc.w $0000,$0040,$9600,$0081,$9200,$0122,$8800,$0163
	dc.w $8400,$0204,$8000,$0245,$7600,$0286,$7200,$0327
	dc.w $6800,$0368,$6400,$0409,$6000,$0450,$5600,$0491 
	dc.w $5200,$0532,$4800,$0573,$4400,$0614,$4000,$0000 

loc_002313:
	dc.w $0000,$0655,$3600,$1310,$7200,$1966,$0800,$2621
	dc.w $4400,$3276,$8000,$3932,$1600,$4587,$5200,$5242
	dc.w $8800,$5898,$2400,$6553,$6000,$7208,$9600,$7864
	dc.w $3200,$8519,$6800,$9175,$0400,$9830,$4000,$0000
	
loc_002353:
	dc.w $0001,$0485,$7602,$0971,$5203,$1457,$2804,$1943
	dc.w $0405,$2428,$8006,$2914,$5607,$3400,$3208,$3886
	dc.w $0809,$4371,$8410,$4857,$6011,$5343,$3612,$5829
	dc.w $1213,$6314,$8814,$6800,$6415,$7286,$4000,$0000

loc_002393:
	dc.w $0016,$7772,$1633,$5544,$3250,$3316,$4867,$1088
 	dc.w $6483,$8860,$80ff,$ffff,$ffff,$ffff,$ffff,$ffff
	dc.w $ffff,$ffff,$ffff,$ffff,$ffff,$ffff,$ffff,$ffff
	dc.w $ffff,$ffff,$ffff,$ffff,$ffff,$ffff
	dc.b $ff

loc_0023d0:
	movem.l d1/d2/a0,-(a7)
	move.l d0,d2
	moveq #$0,d0

	lea dat_002468(pc),a0
	move.w d2,d1
	andi.w #$f,d1
	adda.w d1,a0
	add.b (a0),d0

	lea dat_002478(pc),a0
	ror.l #4,d2
	move.w d2,d1
	andi.w #$f,d1
	adda.w d1,a0
	add.b (a0),d0
	
;23f6
	lea dat_002488(pc),a0
	ror.l #4,d2
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d1
	adda.w d1,a0
	add.w (a0),d0

;2408
	lea dat_0024a8(pc),a0
	ror.l #4,d2
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d1
	adda.w d1,a0
	add.w (a0),d0

;241a
	lea dat_0024c8(pc),a0
	ror.l #4,d2
	move.w d2,d1
	andi.w #$f,d1
	lsl.w #2,d1
	adda.w d1,a0
	add.l (a0),d0

;242c
	lea dat_002508(pc),a0
	ror.l #4,d2
	move.w d2,d1
	andi.w #$f,d1
	lsl.w #2,d1
	adda.w d1,a0
	add.l (a0),d0

;243e
	lea dat_002548(pc),a0
	ror.l #4,d2
	move.w d2,d1
	andi.w #$f,d1
	lsl.w #2,d1
	adda.w d1,a0
	add.l (a0),d0

;2450	
	lea dat_002588(pc),a0
	ror.l #4,d2
	move.w d2,d1
	andi.w #$f,d1
	lsl.w #2,d1
	adda.w d1,a0
	add.l (a0),d0
	movem.l (a7)+,d1/d2/a0
	rts

dat_002468:
	dc.b $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f
	
dat_002478:
	dc.b $00,$0a,$14,$1e,$28,$32,$3c,$46,$50,$5a,$64,$6e,$78,$82,$8c,$96

dat_002488:
	dc.w $0000,$0064,$00c8,$012c,$0190,$01f4,$0258,$02bc
	dc.w $0320,$0384,$03e8,$044c,$04b0,$0514,$0578,$05dc

dat_0024a8:
	dc.w $0000,$03e8,$07d0,$0bb8,$0fa0,$1388,$1770,$1b58
	dc.w $1f40,$2328,$2710,$2af8,$2ee0,$32c8,$36b0,$3a98

dat_0024c8:
	dc.l $00000000,$00002710,$00004e20,$00007530
	dc.l $00009c40,$0000c350,$0000ea60,$00011170
	dc.l $00013880,$00015f90,$000186a0,$0001adb0
	dc.l $0001d4c0,$0001fbd0,$000222e0,$000249f0

dat_002508:
	dc.l $00000000,$000186a0,$00030d40,$000493e0
	dc.l $00061a80,$0007a120,$000927c0,$000aae60
	dc.l $000c3500,$000dbba0,$000f4240,$0010c8e0
	dc.l $00124f80,$0013d620,$00155cc0,$0016e360

dat_002548:
	dc.l $00000000,$000f4240,$001e8480,$002dc6c0
	dc.l $003d0900,$004c4b40,$005b8d80,$006acfc0
	dc.l $007a1200,$00895440,$00989680,$00a7d8c0
	dc.l $00b71b00,$00c65d40,$00d59f80,$00e4e1c0
	
dat_002588:
	dc.l $00000000,$00989680,$01312d00,$01c9c380
	dc.l $02625a00,$02faf080,$03938700,$042c1d80
	dc.l $04c4b400,$055d4a80,$05f5e100,$068e7780
	dc.l $07270e00,$07bfa480,$08583b00,$08f0d180

loc_0025c8:
	move.l d1,-(a7)
	moveq #$0,d1
	lsl.b #1,d0
	roxl.b #4,d1
	lsl.b #1,d0
	roxl.b #4,d1
	lsl.b #1,d0

;25d6
	roxl.w #4,d1
	lsl.b #1,d0
	roxl.w #4,d1
	lsl.b #1,d0

;25de
	roxl.l #4,d1
	lsl.b #1,d0
	roxl.l #4,d1
	lsl.b #1,d0
	roxl.l #4,d1
	lsl.b #1,d0
	roxl.l #1,d1
	move.l d1,d0
	move.l (a7)+,d1
	rts

loc_0025f2:
	move.w d1,-(a7)
	move.w #$f,d1

loc_0025f8:
	ror.w #1,d0
	dbcs d1,loc_0025f8
	bcs.b loc_002608
	move.w #$ffff,d0
	bra loc_00260e
	
loc_002608:
	move.w #$f,d0
	sub.w d1,d0
	
loc_00260e:
	move.w (a7)+,d1
	tst.w d0
	rts

writeCharPalid: ;2614
	move.w d1,-(a7)
	move.w #$f,d1

loc_00261a:
	rol.w #1,d0
	dbcs d1,loc_00261a
	bcs.b loc_00262a
	move.w #$ffff,d0
	bra loc_00262c

loc_00262a:
	move.w d1,d0

loc_00262c:
	move.w (a7)+,d1
	tst.w d0
	rts

;--------------------------
;RNG Function loc_002632
RandomNumberGod:
	move.w d1,-(a7)
	move.w (-$7fa6,a5),d0
	move.w d0,d1
	ror.w #1,d1
	add.w d1,d0
	rol.w #2,d1
	addx.w d1,d0
	move.w (-$7fa4,a5),d1
	addx.w d1,d0
	addi.w #$1210,d0
	move.w d0,(-$7fa6,a5)
	addi.w #$4225,(-$7fa4,a5)
	move.w (a7)+,d1
	tst.w d0
	rts

;--------------------------
loc_00265c:
	addi.b #$40,d0
	andi.w #$ff,d0
	add.w d0,d0
	add.w d0,d0
	move.l loc_00266e(pc,d0.w),d0
	rts

loc_00266e:
	incbin "tables/loc266e.bin"

loc_00276e:
	incbin "tables/loc276e.bin"

loc_00286e:
	incbin "tables/loc286e.bin"

loc_00296e:
	incbin "tables/loc296e.bin"

loc_002a6e:
	addi.b #$40,d0

loc_002a72:
	andi.w #$ff,d0
	add.w d0,d0
	move.w loc_002a7e(pc,d0.w),d0
	rts

loc_002a7e:
	incbin "tables/loc2a7e.bin"

loc_002b7e:
	incbin "tables/loc2b7e.bin"

;
homing:	include "effect/homing.asm";loc_002c7e 

loc_0038be:
	jsr RandomNumberGod(pc)
	rts


loc_0038c4:;Rendering regular sprites(not the fix ram)
	lea $108000.l,a5
	tst.b (-$4ab5,a5);
	beq.b loc_0038d2
	rts

loc_0038d2:
	tst.l (-$4ab4,a5)
	beq.b loc_0038dc
	bsr loc_003962
	
loc_0038dc:
	addq.b #1,(-$4ab5,a5)
	lea VRAMRW,a1
	move.w #$1,($2,a1)
	lea $10323c.l,a0
	move #$8401,(-$2,a1)

	jsr loc_00392e(pc)
	lea $102f3c.l,a0
	move.w #$8201,(-$2,a1)	
	
	jsr loc_00392e(pc)
	lea $102c3c.l,a0
	move.w #$8001,(-$2,a1)
	jsr loc_00392e(pc)
	jsr loc_006dec
	tst.l (-$4ab4,a5)
	beq.b loc_00392c 
	bsr loc_0039b0

loc_00392c:
	rts

loc_00392e:
	move.w #$12,d7
	
loc_003932:
	move.w (a0)+,(a1)
	move.w (a0)+,(a1)
	move.w (a0)+,(a1)
	move.w (a0)+,(a1)

	move.w (a0)+,(a1)
	move.w (a0)+,(a1)
	move.w (a0)+,(a1)
	move.w (a0)+,(a1)

	move.w (a0)+,(a1)
	move.w (a0)+,(a1)
	move.w (a0)+,(a1)
	move.w (a0)+,(a1)

	move.w (a0)+,(a1)
	move.w (a0)+,(a1)
	move.w (a0)+,(a1)
	move.w (a0)+,(a1)

	move.w (a0)+,(a1)
	move.w (a0)+,(a1)
	move.w (a0)+,(a1)
	move.w (a0)+,(a1)
	dbra d7,loc_003932
	addq.w #8,a0
	rts

loc_003962:
	move.w (-$4ab2,a5),d0
	lea $102f3c.l,a0
	move.w #$25,d7

loc_003970:
	add.w d0,(a0)+	
	add.w d0,(a0)+	
	add.w d0,(a0)+	
	add.w d0,(a0)+

	add.w d0,(a0)+	
	add.w d0,(a0)+	
	add.w d0,(a0)+	
	add.w d0,(a0)+	

	add.w d0,(a0)+	
	add.w d0,(a0)+	
	dbra d7,loc_003970

	move.w (-$4ab4,a5),d0
	lea $10323c.l,a0
	move.w #$25,d7

loc_003996:
	add.w d0,(a0)+	
	add.w d0,(a0)+	
	add.w d0,(a0)+	
	add.w d0,(a0)+

	add.w d0,(a0)+	
	add.w d0,(a0)+	
	add.w d0,(a0)+	
	add.w d0,(a0)+	

	add.w d0,(a0)+	
	add.w d0,(a0)+

	dbra d7,loc_003996
	rts


loc_0039b0:
	move.w (-$4ab2,a5),d0
	lea $102f3c.l,a0
	move.w #$25,d7
	
loc_0039be:
	sub.w d0,(a0)+
	sub.w d0,(a0)+
	sub.w d0,(a0)+
	sub.w d0,(a0)+

	sub.w d0,(a0)+
	sub.w d0,(a0)+
	sub.w d0,(a0)+
	sub.w d0,(a0)+

	sub.w d0,(a0)+
	sub.w d0,(a0)+

	dbra d7,loc_0039be

	move.w (-$4ab4,a5),d0
	lea $10323c.l,a0
	move.w #$25,d7

loc_0039e4:
	sub.w d0,(a0)+
	sub.w d0,(a0)+
	sub.w d0,(a0)+
	sub.w d0,(a0)+

	sub.w d0,(a0)+
	sub.w d0,(a0)+
	sub.w d0,(a0)+
	sub.w d0,(a0)+

	sub.w d0,(a0)+
	sub.w d0,(a0)+

	dbra d7,loc_0039e4
	rts

loc_0039fe:
	move.b #$1,(-$4ab5,a5)
	move.w #$1,(-$4ac6,a5)
	move.w #$bf,(-$4ac4,a5)
	move.w #$17d,(-$4ac2,a5)

;Clear Vram
loc_003a16:
	movem.l d0/d7/a0, -(a7)
	move.b #$1,(-$4ab5,a5)
	clr.l (-$4ab4,a5)
	moveq #$0,d0
	lea VRAMRW,a0
	move.w #$1,($2,a0)
	move.w #$8201,(-$2,a0)
	move #$25,d7
		
loc_003a3c:
	clr.w (a0)
	clr.w (a0)
	clr.w (a0)
	clr.w (a0)

	clr.w (a0)
	clr.w (a0)
	clr.w (a0)
	clr.w (a0)

	clr.w (a0)
	clr.w (a0)
	
	dbra d7,loc_003a3c
	
	lea VRAMRW,a0
	move.w #$1,(2,a0)
	move.w #0,(-2,a0)
	moveq #$f,d7

loc_003a68:
	clr.w (a0)
	clr.w (a0)
	clr.w (a0)
	clr.w (a0)
	dbra d7, loc_003a68
	move.w #$8200,(-$2,a0)
	move.w #$0,(a0)
	lea (-$53c6,a5),a0
	move.l #$0fff0fff,d0
	move #$17,d7

loc_003a8c:
	move.l d0,(a0)+
	move.l d0,(a0)+
	move.l d0,(a0)+
	move.l d0,(a0)+
	move.l d0,(a0)+
	move.l d0,(a0)+
	move.l d0,(a0)+
	move.l d0,(a0)+
	dbra d7,loc_003a8c
	clr.l d0
	move #$17,d7

loc_003aa6:
	move.l d0,(a0)+
	move.l d0,(a0)+
	move.l d0,(a0)+
	move.l d0,(a0)+

	move.l d0,(a0)+
	move.l d0,(a0)+
	move.l d0,(a0)+
	move.l d0,(a0)+

	dbra d7,loc_003aa6
	move.l #$c000c000,d0
	move.w #$17,d7

loc_003ac4:
	move.l d0,(a0)+	
	move.l d0,(a0)+
	move.l d0,(a0)+
	move.l d0,(a0)+

	move.l d0,(a0)+
	move.l d0,(a0)+
	move.l d0,(a0)+
	move.l d0,(a0)+
	dbra d7,loc_003ac4
	jsr loc_00922c
	bsr loc_003ae8
	movem.l (a7)+,d0/d7/a0
	rts
	
loc_003ae8:
	move.w (-$4ac2,a5),d0
	sub.w (-$4ac6,a5),d0
	lsr.w #1,d0
	neg.w d0
	add.w (-$4ac2,a5),d0
	move.w d0,(-$4ac4,a5)
	move.w (-$4ac2,a5),(-$4ac0,a5)
	move.w (-$4ac0,a5),(-$4abe,a5)
	move.w #$ffff,(-$4abc,a5)
	lea (-$53c6,a5),a0
	move.w (-$4ac0,a5),d0
	adda.w d0,a0
	adda.w d0,a0
	move.l a0,(-$4aba,a5)
	sf (-$4ab6,a5)
	clr.w (-$4870,a5)
	rts

loc_003b28:
	jsr loc_003a16(pc)

;3b2c
;Debug Dip 0010 0000 0000 0000
	include "debug/objramstatus.asm"


loc_003e2c:
	lea (-$45e6,a5),a1
	lea (-$4ab0,a5),a2
	lea (-$49b0,a5),a3
	move.w (-$4870,a5),d7
	subq.w #1,d7
	bmi loc_003e54

loc_003e42:
	movea.l (a2)+,a4
	movea.l (a3)+,a0
	movem.l d7/a1/a2/a3,-(a7)
	jsr (a0)
	movem.l (a7)+,d7/a1/a2/a3
	dbra d7,loc_003e42

loc_003e54:
	clr.w (-$4870,a5)
	rts

loc_003e5a:
	lea (-$50c6,a5),a0
	move.w (-$4abe,a5),d0
	adda.w d0,a0
	adda.w d0,a0
	move.w (-$4abc,a5),d0
	subq.w #1,d0
	bmi loc_003e76

loc_003e70:
	clr.w (a0)+
	dbra d0,loc_003e70

loc_003e76:
	rts

loc_003e78:
	tst.b (-$4ab6,a5)
	bne.b loc_003eaa
	move.w (-$4ac0,a5),d0
	move.w d0,d1
	neg.w d0
	add.w (-$4ac2,a5),d0
	move.w d0,d7
	bsr loc_003ed4
	move.w (-$4ac2,a5),d0
	move.w d0,(-$4ac0,a5)
	add.w d0,d0
	ext.l d0
	addi.l #$102c3a,d0
	move.l d0,(-$4aba,a5)
	bra loc_003ed2

loc_003eaa:
	move.w (-$4ac0,a5),d0
	move.w d0,d1
	neg.w d0
	add (-$4ac4,a5),d0
	move.w d0,d7
	bsr loc_003ed4
	move.w (-$4ac4,a5),d0
	move.w d0,(-$4ac0,a5)
	add.w d0,d0
	ext.l d0
	addi.l #$102c3a,d0
	move.l d0,(-$4aba,a5)

loc_003ed2:
	rts

loc_003ed4:
	lea (-$50c6,a5),a0
	move.w d1,d0
	adda.w d0,a0
	adda.w d0,a0	
	move.w d7,d0
	subq.w #1,d0
	bmi loc_003eec

loc_003ee6:
	clr.w (a0)+
	dbra d0,loc_003ee6

loc_003eec:
	rts

loc_003eee:
	tst.b (-$4ab6,a5)
	bne.b loc_003f3c
	move.w (-$4ac0,a5),d0
	move.w d0,(-$4abe,a5)
	neg.w d0
	add.w (-$4ac2,a5),d0
	move.w d0,(-$4abc,a5)
	move.w (-$4ac2,a5),d0
	move.w d0,d1
	sub.w (-$4ac6,a5),d1
	lsr.w #1,d1
	sub.w d1,d0
	cmp.w (-$4ac0,a5),d0
	ble.b loc_003f1e
	move.w (-$4ac0,a5),d0

loc_003f1e:
	move.w d0,(-$4ac4,a5)
	move.w d0,(-$4ac0,a5)
	add.w d0,d0
	ext.l d0
	addi.l #$102c3a,d0
	move.l d0,(-$4aba,a5)
	st (-$4ab6,a5)
	bra loc_003f78

loc_003f3c:
	move.w (-$4ac0,a5),d0
	move.w d0,(-$4abe,a5)
	neg.w d0
	add.w (-$4ac4,a5),d0
	move.w d0,(-$4abc,a5)
	move.w (-$4ac2,a5),d0
	move.w d0,d1
	move.w d0,d2
	sub.w (-$4ac6,a5),d1
	lsr.w #1,d1
	sub.w  d1,d2
	move.w d2,(-$4ac4,a5)
	move.w d0,(-$4ac0,a5)
	add.w d0,d0
	ext.l d0
	addi.l #$102c3a,d0
	move.l d0,(-$4aba,a5)
	sf (-$4ab6,a5)

loc_003f78:
	rts

loc_003f7a:
	move.w (-$4ac6,a5),-(a7)
	movem.l d0/d1/a0,-(a7)
	cmp.w (-$4ac6,a5),d0
	beq loc_003fe0
	bgt loc_003f9e
	move.w (-$4ac6,a5),d1
	move.w d0,(-$4ac6,a5)
	sub.w d0,d1
	subq.w #1,d1
	bra loc_003fd0

loc_003f9e:
	move.w (-$4abe,a5),d1
	cmp.w d1,d0
	ble.b loc_003fb8
	move.w d0,(-$4abe,a5)
	add.w (-$4abc,a5),d1
	sub.w d0,d1
	bge.b loc_003fb4
	clr.w d1

loc_003fb4:
	move.w d1,(-$4abc,a5)

loc_003fb8:
	cmp.w (-$4ac0,a5),d0
	ble.b loc_003fc2
	move.w d0,(-$4ac0,a5)

loc_003fc2:
	move.w (-$4ac6,a5),d1
	move.w d0,(-$4ac6,a5)
	sub.w d1,d0
	subq.w #1,d0
	dc.w $c340;exg d1,d0

loc_003fd0:
	lea (-$50c6,a5),a0
	adda.w d0,a0
	adda.w d0,a0
	moveq #$0,d0

loc_003fda:
	move.w d0,(a0)+
	dbra d1,loc_003fda

loc_003fe0:
	movem.l (a7)+,d0/d1/a0
	move.w (a7)+,d0
	rts

loc_003fe8:
	move.w (-$4ac6,a5),-(a7)
	movem.l d0/d1/a0,-(a7)
	cmp.w (-$4ac2,a5),d0
	beq loc_004050
	blt loc_00400e
	move.w (-$4ac2,a5),d1
	move.w d0,(-$4ac2,a5)
	sub.w d1,d0
	subq.w #1,d0
	dc.w $c340 ;exg d1,d0
	bra loc_004040

loc_00400e:
	move.w (-$4abe,a5),d1
	add.w (-$4abc,a5),d1
	sub.w d0,d1
	ble.b loc_004028
	neg.w d1
	add.w (-$4abc,a5),d1
	bge.b loc_004024
	clr.w d1

loc_004024:
	move.w d1,(-$4abc,a5)

loc_004028:
	cmp.w (-$4ac0,a5),d0
	bge loc_004034
	move.w d0,(-$4ac0,a5)

loc_004034:
	move.w (-$4ac2,a5),d1
	move.w d0,(-$4ac2,a5)
	sub.w d0,d1
	subq.w #1,d1

loc_004040:
	lea (-$50c6,a5),a0
	adda.w d0,a0
	adda.w d0,a0
	moveq #$0,d0

loc_00404a:
	move.w d0,(a0)+
	dbra d1,loc_00404a

loc_004050:
	movem.l (a7)+,d0/d1/a0
	move.w (a7)+,d0
	rts

;========--========;
;
;========--========;

loc_004058:
	movem.l d0/d7/a0,-(a7)
	move.w (-$4ac6,a5),d0
	move.w d0,d7
	subq.w #2,d7
	bmi.b loc_004076
	lea (-$50c6,a5),a0
	adda.w d0,a0
	adda.w d0,a0
	moveq #$0,d0

loc_004070:
	move.w d0,-(a0)
	dbra d7,loc_004070

loc_004076:
	move.w (-$4ac2,a5),d0
	move.w #$17d,d7
	sub.w d0,d7
	subq #1,d7
	bmi.b loc_004094
	lea (-$50c6,a5),a0
	adda.w d0,a0
	adda.w d0,a0
	moveq #$0,d0

loc_00408e:
	move.w d0,(a0)+
	dbra d7,loc_00408e
	
loc_004094:
	movem.l (a7)+,d0/d7/a0
	rts

;========--========
;
;========--========
loc_00409a:
	movem.l d0/d7/a0,-(a7)
	move.w (-$4ac2,a5),d0
	move.w #$17d,d7
	sub.w d0,d7
	subq.w #1,d7
	bmi.b loc_0040bc
	lea (-$50c6,a5),a0
	adda.w d0,a0
	adda.w d0,a0
	moveq #$0,d0

loc_0040b6:
	move.w d0,(a0)+
	dbra d7,loc_0040b6

loc_0040bc:
	movem.l (a7)+,d0/d7/a0
	rts

;--------------------------
;Render Sprites
loc_0040c2:
	movem.l d1/d2/d3/a1/a2/a3,-(a7)
	move.w (-$4870,a5),d1
	cmpi.w #$40,d1
	blt loc_0040d8
	st d0
	bra loc_00414a

loc_0040d8:
	move.w #$20,d2
	move.w #$20,d3
	lea (-$48b0,a5),a1

loc_0040e4:
	cmp.w d1,d2
	bgt loc_004106

loc_0040ea:
	cmp.b (-$1,a1,d2.w),d0
	bcc loc_0040fc
	lsr.w #1,d3
	beq loc_004112
	sub.w d3,d2
	bra.b loc_0040ea

loc_0040fc:
	lsr.w #1,d3
	beq loc_004110
	add.w d3,d2
	bra.b loc_0040e4

loc_004106:
	lsr.w #1,d3
	beq loc_004112
	sub.w d3,d2
	bra.b loc_0040e4

loc_004110:
	addq.w #1,d2

loc_004112:
	lea (-$4ab0,a5),a2
	lea (-$49b0,a5),a3
	addq.w #1,d1
	adda.w d1,a1
	lsl.w #2,d1
	adda.w d1,a2
	adda.w d1,a3
	lsr.w #2,d1
	sub.w d2,d1
	subq.w #1,d1
	bmi loc_00413e

loc_00412e:
	move.b (-$2,a1),-(a1)
	move.l (-$8,a2),-(a2)
	move.l (-$8,a3),-(a3)
	dbra d1,loc_00412e

loc_00413e:
	move.b d0,-(a1)
	move.l a4,-(a2)
	move.l a0,-(a3)
	addq.w #1,(-$4870,a5)
	sf d0

loc_00414a:
	movem.l (a7)+,d1/d2/d3/a1/a2/a3
	rts

;------------------------------
loc_004150:
	sub.w (-$45e0,a5),d1
	bra.w loc_004158

loc_004158:
	sub.w (-$45d6,a5),d0
	sub.w (-$45da,a5),d1
	moveq #$0,d7
	move.b (-$45ca,a5),d7
	beq.b loc_00416e
	neg.b d7
	muls.w d7,d0
	asr.l #8,d0

loc_00416e:
	swap d7
	move.b (-$45c9,a5),d7
	beq.b loc_00417c
	neg.b d7
	muls.w d7,d1
	asr.l #8,d1

loc_00417c:
	tst.w d3
	bne.b loc_004188
	move.w (-$45ca,a5),d3
	bra loc_0041ce	

loc_004188:
	clr.w d6
	move.b d3,d6
	andi.l #$ff00,d3
	tst.l d7
	beq loc_0041b6
	lsr.w #8,d3
	not.b d3
	addq.w #1,d3
	not.b d6
	addq.w #1,d6
	mulu.w d7,d6
	lsr.l #8,d6
	subq.w #1,d6
	not.b d6
	swap d7
	mulu.w d7,d3
	subi.l #$100,d3
	not.w d3

loc_0041b6:
	cmpi.l #$f000,d3
	bls.b loc_0041c2
	move.w #$f000,d3

loc_0041c2:
	cmpi.w #$ff,d6
	bls.b loc_0041cc	
	move.w #$ff,d6

loc_0041cc:
	move.b d6,d3

loc_0041ce:
	tst.w d3
	beq loc_0041d8
	bra loc_00431c

;===================
;Main OBJ
;===================

loc_0041d8:
	tst.b ($1,a0)
	beq loc_0044f2
	tst.b (a0)
	beq loc_0044f2
	cmpi.b #$11,(a0)
	bcc loc_0044f2
	swap d4
	swap d5
	move.w (-$4ac0,a5),d4
	move.w d4,d5
	tst.b (-$4ab6,a5)
	bne.b loc_004204
	sub.w (-$4ac4,a5),d5
	bra.b loc_004208 

loc_004204:
	sub.w (-$4ac6,a5),d5

loc_004208:
	ble loc_004312
	clr.w d6
	move.b (a0)+,d6
	clr.w d7
	move.b (a0)+,d7
	sub.w d7,d5
	blt loc_004312
	sub.w d7,d4
	move.w d4, (-$4ac0,a5)
	movea.l (-$4aba,a5),a1
	suba.w d7,a1
	suba.w d7,a1
	move.l a1,(-$4aba,a5)
	swap d5
	swap d4
	ext.l d0
	ext.l d1
	lsl.l #7,d0
	addi.l #$10,d1
	neg.l d1
	lsl.l #7,d1

;4240
	swap d2
	move.b (a0)+,d2
	ext.w d2
	add.w d2,d2
	add.w d2,d4
	move.b (a0)+,d2
	ext.w d2
	add.w d2,d2
	add.w d2,d5
	swap d2
	btst #$0,d2
	beq.b loc_004262
	move.w d7,d3
	lsl.w #4,d3
	sub.w d4,d3
	move.w d3,d4

loc_004262:
	btst #$1,d2
	beq.b loc_004270
	move.w d6,d3
	lsl.w #4,d3
	sub.w d5,d3
	move.w d3,d5

loc_004270:
	ext.l d4
	ext.l d5
	lsl.l #7,d4
	lsl.l #7,d5
	sub.l d4,d0
	add.l d5,d1
	move.w d6,d5
	ext.l d5
	lsl.l #4,d5
	lsl.l #7,d5
	move.l d1,d4
	cmpi.l #-$7c00,d4
	blt loc_0042a0
	sub.l d5,d4
	cmpi.l #-$400,d4
	bgt loc_0042a0
	bra loc_0042a6

loc_0042a0:
	move.l #$80000000,d0

loc_0042a6:
	andi.w #$ff80,d1
	add.w d6,d1
	move.w #$fff,d4
	moveq #$0,d3
	move.w #$800,d3
	lea ($300,a1),a1
	move.w d7,d5
	subq.w #1,d5

loc_0042be:
	cmpi.l #$a000,d0
	blt.b loc_0042cc
	move.l #$80000000,d0

loc_0042cc:
	move.w d0,($300,a1)
	move.w d4,(-$300,a1)
	add.l d3,d0
	bgt.b loc_0042dc
	clr.w (a1)+ 
	bra.b loc_0042de 

loc_0042dc:
	move.w d1,(a1)+	

loc_0042de:
	dbra d5,loc_0042be
	move.w (-$4ac0,a5),d1
	lsl.w #6,d1
	clr.w d5
	move.w d2,d3
	move.w d2,d4
	andi.w #$3,d4
	lea VRAMRW,a1
	move.w d7,d0
	mulu.w d6,d0
	add.w d0,d0
	lea (a0,d0.w),a2
	subq.w #1,d6
	subq.w #1,d7
	move.w d4,d0
	add.w d0,d0
	move.w loc_004314(pc,d0.w),d0
	jmp loc_004314(pc,d0.w)
	
loc_004312:
	rts

loc_004314:
	;dc.w $01e8,$020c,$0236,$0260
	dc.w loc_0044fc-loc_004314,loc_004520-loc_004314,loc_00454a-loc_004314,loc_004574-loc_004314
 	;noflip,xflip,yflip,xandyflip
	
loc_00431c:
	tst.b ($1,a0)
	beq loc_0044f2
	tst.b (a0)
	beq loc_0044f2
	cmpi.b #$11,(a0)
	bcc loc_0044f2
	swap d4
	swap d5
	move.w (-$4ac0,a5),d4
	move.w d4,d5
	tst.b (-$4ab6,a5)	
	bne.b loc_004348
	sub.w (-$4ac4,a5),d5
	bra.b loc_00434c

loc_004348:
	sub.w (-$4ac6,a5),d5

loc_00434c:
	ble loc_0044f2
	clr.w d6
	move.b (a0)+,d6
	clr.w d7
	move.b (a0)+,d7
	sub.w d7,d5
	blt loc_0044f2
	sub.w d7,d4
	move.w d4,(-$4ac0,a5)
	movea.l (-$4aba,a5),a1
	suba.w d7,a1
	suba.w d7,a1
	move.l a1,(-$4aba,a5)
	swap d5
	swap d4
	ext.l d0
	ext.l d1
	lsl.l #7,d0
	addi.l #$10,d1
	neg.l d1
	lsl.l #7,d1
	move.w d6,-(a7)
	move.w d7,-(a7)
;4388
	swap d2
	move.b (a0)+,d2
	ext.w d2
	add.w d2,d2
	add.w d2,d4

	move.b (a0)+,d2
	ext.w d2
	add.w d2,d2
	add.w d2,d5
	
	swap d2
	btst #$0,d2
	beq.b loc_0043a8
	lsl.w #4,d7
	sub.w d4,d7
	move.w d7,d4

loc_0043a8:
	btst #1,d2
	beq.b loc_0043b4
	lsl.w #$4,d6
	sub.w d5,d6
	move.w d6,d5

loc_0043b4:
	not.w d3
	move.w d3,d7
	lsr.w #8,d7
	addq.w #1,d7
	clr.w d6
	move.b d3,d6
	addq.w #1,d6
	muls.w d7,d4
	muls.w d6,d5
	asr.l #1,d4
	asr.l #1,d5
	sub.l d4,d0
	add.l d5,d1
	move.w (a7)+,d7
	move.w (a7)+,d6
	swap d2
	move.w d7,d2
	subq.w #1,d2
	swap d7
	clr.w d5
	move.b d3,d5
	addq.w #1,d5
	mulu.w d6,d5
	move.w d5,d7
	lsl.l #3,d5
	move.l d1,d4
	cmpi.l #-$7c00,d4
	blt loc_004402
	sub.l d5,d4
	cmpi.l #-$400,d4
	bgt loc_004402
	bra loc_004408
	
loc_004402:
	move.l #$80000000,d0

loc_004408:
	addi.w #$ff,d7
	lsr.w #8,d7
	andi.w #$ff80,d1
	add.w d7,d1
	move.w d3,d5
	lsr.w #4,d3
	andi.w #$f00,d3
	move.b d5,d3
	clr.b d5
	lsr.w #4,d5
	addi.w #$10,d5
	move.b d0,d7
	ext.w d7
	add.w d7,d7
	andi.w #$f0,d7
	andi.w #$ff80,d0
	moveq #$0,d4
	move.w d3,d4 
	lea ($300,a1),a1

loc_00443c:
	cmpi.l #$a000,d0
	blt.b loc_00444a
	move.l #$80000000,d0

loc_00444a:
	move.w d0,($300,a1)
	move.w d4,(-$300,a1)
	clr.b d4
	addi.w #$100,d4
	lsr.w #1,d4
	add.l d4,d0
	bgt.b loc_004462
	clr.w (a1)+
	bra.b loc_004464

loc_004462:
	move.w d1,(a1)+

loc_004464:
	add.w d5,d7
	move.w d7,d4
	andi.w #$f0,d7
	subi.w #$100,d4
	move.b d3,d4
	dbra d2,loc_00443c
	swap d7
	swap d2
	move.w (-$4ac0,a5),d1
	lsl.w #6,d1
	cmpi.b #$1f,d3
	bcc loc_004494
	moveq #$10,d5
	sub.w d6,d5
	andi.w #$f,d5
	bra loc_0044ca

;===================
;Layer 2
;===================

loc_004494:
	moveq #$0,d5
	not.b d3
	beq.b loc_0044ca

	subi.b #-$80,d3	
	bls.b loc_0044c8

	subi.b #$2a,d3	
	bls.b loc_0044c6

	subi.b #$16,d3	
	bls.b loc_0044c4

	subi.b #$c,d3	
	bls.b loc_0044c2

	subi.b #$9,d3	
	bls.b loc_0044c0

	subq.b #6,d3	
	bls.b loc_0044be
	
	addq.w #1,d5

loc_0044be:
	addq.w #1,d5

loc_0044c0:
	addq.w #1,d5

loc_0044c2:
	addq.w #1,d5

loc_0044c4:
	addq.w #1,d5

loc_0044c6:
	addq.w #1,d5

loc_0044c8:
	addq.w #2,d5

loc_0044ca:
	move.w d2,d3
	move.w d2,d4
	andi.w #$3,d4
	lea VRAMRW,a1
	move.w d7,d0
	mulu.w d6,d0
	add.w d0,d0
	lea (a0,d0.w),a2
	subq #1,d6
	subq #1,d7
	move.w d4,d0
	add.w d0,d0
	move.w loc_0044f4(pc,d0.w),d0
	jmp loc_0044f4(pc,d0.w)	

loc_0044f2:
	rts

loc_0044f4:
	;dc.w $0008,$002c,$0056,$0080
	dc.w loc_0044fc-loc_0044f4,loc_004520-loc_0044f4,loc_00454a-loc_0044f4,loc_004574-loc_0044f4

loc_0044fc:
	add.w d6,d6
	eori.w #$1e,d6
	move.w d6,d0
	
	add.w d6,d6
	add.w d6,d6
	add.w d0,d6
	add.w d5,d5
	add.w d5,d5
	
	eori.w #$3c,d5
	move.w #$1,($2,a1)
	move.w #$40,d2
	bra loc_0045a4

loc_004520:
	move.w d7,d0
	lsl.w #6,d0
	add.w d0,d1
	add.w d6,d6
	eori.w #$1e,d6
	move.w d6,d0
	add.w d6,d6
	add.w d6,d6
	add.w d0,d6
	add.w d5,d5
	add.w d5,d5
	
	eori.w #$3c,d5
	move.w #$1,($2,a1) 
	move.w #$ffc0,d2
	bra loc_0045a4

loc_00454a:
	add.w d6,d6
	add.w d6,d1
	eori.w #$1e,d6
	move.w d6,d0
	add.w d6,d6
	add.w d6,d6
	add.w d0,d6
	add.w d5,d5
	add.w d5,d1
	add.w d5,d5
	eor.w #$3c,d5
	addq.w #1,d1
	move.w #$ffff,($2,a1)
	move.w #$40,d2
	bra loc_004694

loc_004574:
	move.w d7,d0
	lsl.w #6,d0
	add.w d0,d1
	add.w d6,d6
	add.w d6,d1
	eori.w #$1e,d6
	move.w d6,d0

	add.w d6,d6 
	add.w d6,d6
	add.w d0,d6
	add.w d5,d5
	add.w d5,d1
	add.w d5,d5
	eori.w #$3c,d5
	addq.w #1,d1
	move.w #$ffff,($2,a1)
	move.w #$ffc0,d2
	bra loc_004694

loc_0045a4:
	move.w d1,(-$2,a1) 
	jmp loc_0045ac(pc,d6.w)
	
loc_0045ac:
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

;45b6
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

;45c0
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

;45ca
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

;45d4
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

;45de
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

;45e8
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

;45f2
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

;45fc
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

;4606
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

;4610
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

;461a
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

;4624
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

;462e
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

;4638
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

;4642
	move.w (a0)+,(a1)
	move.b (a2)+,d3 
	eor.b d4,d3
	move.w d3,(a1)
	nop

loc_00464c:
	jmp loc_004650(pc,d5.w)
	
loc_004650:
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)

;4660	
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)

;4670
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)

;4680
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)

	add.w d2,d1
	dbra d7,loc_0045a4
	rts

loc_004694:
	move.w d1,(-2,a1)
	jmp loc_00469c(pc,d5.w)

loc_00469c:	
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)

	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)

	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)

;46b4
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)

	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)

;46c4
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)

	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)

;46d4
	clr.w (a1)
	clr.w (a1)

loc_0046d8:
	jmp loc_0046dc(pc,d6.w)

loc_0046dc:
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;46e4
	move.w (a0)+,(a1)
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;46ee
	move.w (a0)+,(a1)
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;46f8
	move.w (a0)+,(a1)
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;4702
	move.w (a0)+,(a1)
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;470c
	move.w (a0)+,(a1)
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;4716
	move.w (a0)+,(a1)
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;4720
	move.w (a0)+,(a1)
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;472a
	move.w (a0)+,(a1)
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;4734
	move.w (a0)+,(a1)
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;473e
	move.w (a0)+,(a1)
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;4748
	move.w (a0)+,(a1)
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;4752
	move.w (a0)+,(a1)
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;475c
	move.w (a0)+,(a1)
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;4766
	move.w (a0)+,(a1)
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;4770
	move.w (a0)+,(a1)
	move.b (a2)+,d3
	eor.b d4,d3
	move.w d3,(a1)
	nop

;477a
	move.w (a0)+,(a1)
	add.w d2,d1
	dbra d7,loc_004694
	rts

loc_004784:
	movea.l ($10,a4),a0
	move.w ($0,a4),d0
	move.w ($4,a4),d1
	move.w ($8,a4),d4
	move.w ($a,a4),d5
	move.w ($c,a4),d2
	move.w ($e,a4),d3
	bra loc_004158

loc_0047a4:
	movea.l ($10,a4),a0
	move.w ($0,a4),d0
	move.w ($4,a4),d1
	move.w ($8,a4),d4
	move.w ($a,a4),d5
	move.w ($c,a4),d2
	move.w ($e,a4),d3
	beq loc_0041d8
	bra	loc_00431c

;===================
;
;===================

loc_0047c8:
	clr.w d6
	move.b (-$4,a0),d6
	clr.w d7
	move.b (-$3,a0),d7
	move.w d2,d3
	clr.b d3
	move.w d2,d4
	andi.w #$3,d4
	lea VRAMRW,a1
	move.w d7,d0
	mulu.w d6,d0
	add.w d0,d0
	lea (a0,d0.w),a2
	subq.w #1,d6
	subq.w #1,d7
	move.w d4,d0
	add.w d0,d0
	move.w loc_004800(pc,d0.w),d0
	jmp loc_004800(pc,d0.w)
	rts

loc_004800:
	;dc.w $fcfc,$fd20,$fd4a,$fd74
	dc.w loc_0044fc-loc_004800,loc_004520-loc_004800,loc_00454a-loc_004800,loc_004574-loc_004800

;===================
;
;===================
loc_004808:
	clr.w d6
	move.b (-$4,a0),d6
	clr.w d7
	move.b (-$3,a0),d7
	move.w d2,d3
	clr.b d3
	move.w d2,d4
	andi.w #$3,d4
	lea VRAMRW,a1
	move.w d7,d0
	mulu.w d6,d0
	add.w d0,d0
	lea (a0,d0.w),a2
	subq.w #1,d6
	subq.w #1,d7
	move.w d4,d0
	add.w d0,d0
	move.w loc_004840(pc,d0.w),d0
	jmp loc_004840(pc,d0.w)
	rts

loc_004840:
	dc.w $01fa,$023e,$0288,$02d2
;	dc.w loc_004a3a,loc_004a7e,loc_004ac8,loc_004b12

loc_004848:
	st (-$486e,a5)
	jmp loc_004854(pc)

loc_004850:
	sf (-$486e,a5)

loc_004854:
	tst.b ($1,a0)
	beq loc_004a2c
	tst.b (a0)
	beq loc_004a2c
	cmpi.b #$11,(a0)
	bcc loc_004a2c
	swap d4
	swap d5
	move.w (-$4ac0,a5),d4
	move.w d4,d5
	tst.b (-$4ab6,a5)
	bne.b loc_004880
	sub.w (-$4ac4,a5),d5
	bra.b loc_004884
	
loc_004880:
	sub.w (-$4ac6,a5),d5

loc_004884:
	ble loc_004a2c
	clr.w d6
	move.b (a0)+,d6
	clr.w d7
	move.b (a0)+,d7
	sub.w d7,d5
	blt loc_004a2c
	sub.w d7,d4
	move.w d4,(-$4ac0,a5)
	movea.l (-$4aba,a5),a1
	suba.w d7,a1
	suba.w d7,a1
	move.l a1,(-$4aba,a5)
	swap d5
	swap d4
	ext.l d0
	ext.l d1
	lsl.l #7,d0
	addi.l #$10,d1
	neg.l d1
	lsl.l #7,d1

;48bc
	move.w d6,-(a7)
	move.w d7,-(a7)
	swap d2
	move.b (a0)+,d2
	ext.w d2
	add.w d2,d2
	add.w d2,d4
	move.b (a0)+,d2
;48cc
	ext.w d2
	add.w d2,d2
	add.w d2,d5
	swap d2

	btst #$0,d2
	beq.b loc_0048e0
	lsl.w #4,d7
	sub.w d4,d7
	move.w d7,d4

loc_0048e0:
	btst #$1,d2
	beq.b loc_0048ec
	lsl.w #4,d6
	sub.w d5,d6
	move.w d6,d5

loc_0048ec:
	not.w d3
	move.w d3,d7
	lsr.w #8,d7
	addq.w #1,d7
	clr.w d6
	move.b d3,d6
	addq.w #1,d6
	muls.w d7,d4
	muls.w d6,d5
	asr.l #1,d4
	asr.l #1,d5
	sub.l d4,d0
	add.l d5,d1
	move.w (a7)+,d7
	move.w (a7)+,d6
	swap d2
	move.w d7,d2
	subq.w #1,d2
	swap d7
	clr.w d5
	move.b d3,d5
	addq.w #1,d5
	mulu.w d6,d5
	move.w d5,d7
	lsl.l #3,d5
	move.l d1,d4
	cmpi.l #-$7c00,d4
	blt loc_00493a
	sub.l d5,d4
	cmpi.l #-$400,d4
	bgt loc_00493a
	bra loc_004940

loc_00493a:
	move.l #$80000000,d0

loc_004940:
	addi.w #$ff,d7
	lsr.w #8,d7
	andi.w #$ff80,d1
	add.w d7,d1
	move.w d3,d5
	lsr.w #4,d3
	andi.w #$f00,d3
	move.b d5,d3
	clr.b d5
	lsr.w #4,d5
	addi.w #$10,d5
	move.b d0,d7
	ext.w d7
	add.w d7,d7
	andi.w #$f0,d7
	andi.w #$ff80,d0
	moveq #$0,d4
	move.w d3,d4
	lea ($300,a1),a1

loc_004974:
	cmpi.l #$a000,d0
	blt.b loc_004982 
	move.l #$80000000,d0

loc_004982:
	move.w d0,($300,a1)
	move.w d4,(-$300,a1)
	clr.b d4
	addi.w #$100,d4
	lsr.w #1,d4
	add.l d4,d0
	bgt.b loc_00499a
	clr.w (a1)+
	bra.b loc_00499c

loc_00499a:
	move.w d1,(a1)+
	
loc_00499c:
	add.w d5,d7
	move.w d7,d4
	andi.w #$f0,d7
	subi.w #$100,d4
	move.b d3,d4
	dbra d2,loc_004974	
	swap d7
	swap d2
	move.w (-$4ac0,a5),d1
	lsl.w #6,d1
	cmpi.b #$1f,d3
	bcc loc_0049cc
	moveq #$10,d5
	sub.w d6,d5	
	andi.w #$f,d5
	bra loc_004a02
	
loc_0049cc:
	moveq #$0,d5
	not.b d3
	beq.b loc_004a02
	
	subi.b #-$80,d3
	bls.b loc_004a00

	subi.b #$2a,d3
	bls.b loc_0049fe

	subi.b #$16,d3
	bls.b loc_0049fc

	subi.b #$c,d3
	bls.b loc_0049fa

	subi.b #$9,d3
	bls.b loc_0049f8

	subq.b #6,d3
	bls.b loc_0049f6

;49f4
	addq.w #1,d5

loc_0049f6:
	addq.w #1,d5

loc_0049f8:
	addq.w #1,d5

loc_0049fa:
	addq.w #1,d5

loc_0049fc:
	addq.w #1,d5

loc_0049fe:
	addq.w #1,d5

loc_004a00:
	addq.w #2,d5


;===================
;
;===================

loc_004a02:
	move.w d2,d3
	clr.b d3
	move.w d2,d4
	andi.w #$3,d4
	lea VRAMRW,a1
	move.w d7,d0
	mulu.w d6,d0
	add.w d0,d0
	lea (a0,d0.w),a2
	subq.w #1,d6
	subq.w #1,d7
	move.w d4,d0
	add.w d0,d0
	move.w loc_004a32(pc,d0.w),d0
	jmp loc_004a32(pc,d0.w)

loc_004a2c:
	sf (-$486e,a5)
	rts

loc_004a32:
	dc.w loc_004a3a-loc_004a32
	dc.w loc_004a7e-loc_004a32
	dc.w loc_004ac8-loc_004a32
	dc.w loc_004b12-loc_004a32
;	dc.w $0008,$004c,$0096,$00e0


;===================
;ObjLayer1 NoFlip
;===================
loc_004a3a:
	add.w d6,d6
	eori.w #$1e,d6
	add.w d5,d5
	add.w d5,d5
	eori.w #$3c,d5
	move.w #$1,($2,a1)
	move.w #$ff,d2
	swap d2
	move.w #$40,d2
	tst.b (-$486e,a5)
	bne.b loc_004a6a
	add.w d6,d6
	move.w d6,d0
	add.w d6,d6
	add.w d0,d6
	bra loc_004b62

loc_004a6a:
	move.w d6,d0
	swap d0
	add.w d6,d6
	move.w d6,d0
	add.w d6,d6
	add.w d0,d6
	swap d0
	add.w d0,d6
	bra loc_004d8a

;===================
;L__ XFlip
;===================
loc_004a7e:
	move.w d7,d0
	lsl.w #6,d0
	add.w d0,d1
	add.w d6,d6
	eori.w #$1e,d6
	add.w d5,d5
	add.w d5,d5
	eori.w #$3c,d5
	move.w #$1,($2,a1)
	move.w #$ff,d2
	swap d2
	move.w #$ffc0,d2
	tst.b (-$486e,a5)
	bne.b loc_004ab4
	add.w d6,d6
	move.w d6,d0
	add.w d6,d6
	add.w d0,d6
	bra loc_004b62

loc_004ab4:
	move.w d6,d0
	swap d0
	add.w d6,d6
	move.w d6,d0
	add.w d6,d6
	add.w d0,d6
	swap d0
	add.w d0,d6
	bra loc_004d8a

;===================
;L__ YFlip
;===================
loc_004ac8:
	add.w d6,d6
	add.w d6,d1
	eori.w #$1e,d6
	add.w d5,d5
	add.w d5,d1
	add.w d5,d5
	eori.w #$3c,d5
	addq.w #1,d1
	move.w #$ffff,($2,a1)
	move.w #$ff,d2
	swap d2
	move.w #$40,d2
	tst.b (-$486e,a5)
	bne.b loc_004afe
	add.w d6,d6
	move.w d6,d0
	add.w d6,d6
	add.w d0,d6
	bra loc_004c76

loc_004afe:
	move.w d6,d0
	swap d0
	add.w d6,d6
	move.w d6,d0
	add.w d6,d6
	add.w d0,d6
	swap d0
	add.w d0,d6
	bra loc_004ec2

;===================
;L__ XYFlip
;===================
loc_004b12:
	move.w d7,d0
	lsl.w #6,d0
	add.w d0,d1
	add.w d6,d6
	add.w d6,d1
	eori.w #$1e,d6
	add.w d5,d5
	add.w d5,d1
	add.w d5,d5
	eori.w #$3c,d5
	addq.w #1,d1
	move.w #$ffff,($2,a1)
	move.w #$ff,d2
	swap d2
	move.w #$ffc0,d2
	tst.b (-$486e,a5)
	bne.b loc_004b4e
	add.w d6,d6
	move.w d6,d0
	add.w d6,d6
	add.w d0,d6
	bra loc_004c76

loc_004b4e:
	move.w d6,d0
	swap d0
	add.w d6,d6
	move.w d6,d0
	add.w d6,d6
	add.w d0,d6
	swap d0
	add.w d0,d6
	bra loc_004ec2

;===================
;Layer 1
;===================

loc_004b62:
	move.w d1,(-$2,a1)	
	jmp loc_004b6a(pc,d6.w)
	
loc_004b6a:
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

;4b76
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

;4b82
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

;4b8e
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

;4b9a
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

;4ba6
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

;4bb2
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

;4bbe
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

;4bca
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

;4bd6
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

;4be2
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

;4bee
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

;4bfa
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

;4c06
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

;4c12
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

;4c1e
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

loc_004c2a:
	jmp loc_004c2e(pc,d5.w) 

loc_004c2e:
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
;4c3e
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
;4c4e
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
;4c5e
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)

;4c6a
	add.w d2,d1
	dbra d7,loc_004b62
	sf (-$486e,a5)
	rts

loc_004c76:
	move.w d1,(-$2,a1)	
	jmp loc_004c7e(pc,d5.w)
	
loc_004c7e:
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
;4c8e
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
;4c9e
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
;4cae
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)

loc_004cba:
	jmp loc_004cbe(pc,d6.w)

loc_004cbe:
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4cca
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4cd6
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4ce2
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4cee
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4cfa
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4d06
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4d12
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4d1e
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4d2a
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4d36
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4d42
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4d4e
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4d5a
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4d66
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4d72
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4d7e
	add.w d2,d1
	dbra d7,loc_004c76
	sf (-$486e,a5)
	rts

;===================
;
;===================

loc_004d8a:
	move.w d1,(-$2,a1)
	swap d2
	jmp loc_004d94(pc,d6.w)

loc_004d94:
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop
;4da2
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop
;4db0	
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop
;4dbe
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop
;4dcc
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop
;4dda
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop
;4de8
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop
;4df6
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop
;4e04
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop
;4e12
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop
;4e20
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop
;4e2e
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop
;4e3c
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop
;4e4a
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop
;4e58
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop
;4e66
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0
	move.w d0,(a1)
	nop

loc_004e74:
	jmp loc_004e78(pc,d5.w)

loc_004e78:
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
;4e88
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
;4e98
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
;4ea8
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)	
;4eb4
	swap d2
	add.w d2,d1
	dbra d7,loc_004d8a
	sf (-$486e,a5)
	rts

loc_004ec2:
	move.w d1,(-$2,a1)
	swap d2
	jmp loc_004ecc(pc,d5.w)

loc_004ecc:
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
;4edc
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
;4eec
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)	
;4efc
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)
	clr.w (a1)	

loc_004F08:
	jmp loc_004f0c(pc,d6.w)

loc_004f0c:
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4f1a
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
;4f28
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)	
;4f36
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)	
;4f44
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)	
;4f52
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)	
;4f60
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)	
;4f6e
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)	
;4f7c
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)	
;4f8a
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)	
;4f98
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)	
;4fa6
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)	
;4fb4
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)	
;4fc2
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)	
;4fd0
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)	
;4fde
	move.l (a0)+,d0
	eor.w d4,d0
	and.w d2,d0
	add.w d3,d0	
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)	
;4fec
	swap d2
	add.w d2,d1
	dbra d7,loc_004ec2
	sf (-$486e,a5)
	rts

loc_004ffa:
	move.w ($0,a4),d0
	move.w ($4,a4),d1
	move.w ($8,a4),d4
	move.w ($a,a4),d5
	move.w ($c,a4),d2
	move.w ($e,a4),d3
	sub.w (-$45d6,a5),d0
	sub.w (-$45da,a5),d1

loc_00501a:
	movem.w d2/d3/d4/d5,-(a7)

	cmpi.w #$140,d4
	bcs.b loc_00502a

	move.w #$140,d4
	bra.b loc_00502e

loc_00502a:
	andi.w #$fffe,d4

loc_00502e:
	cmpi.w #$100,d5
	bcs.b loc_00503a

	move.w #$100,d5
	bra.b loc_00503e

loc_00503a:
	andi.w #$fe,d5

loc_00503e:
	tst.w d4
	beq loc_0051fa
	tst.w d5
	beq loc_0051fa

	move.w d5,d6
	subq.w #1,d6
	lsr.w #4,d6
	addq.w #1,d6
	move.w d4,d7
	subq.w #1,d7
	lsr.w #4,d7
	addq.w #1,d7
	
	move.w (-$4ac0,a5),d4
	move.w d4,d5
	tst.b (-$4ab6,a5)
	bne.b loc_00506c
	sub.w (-$4ac4,a5),d5
	bra.b loc_005070
	
loc_00506c:
	sub.w (-$4ac6,a5),d5

loc_005070:
	ble loc_0051fa
	sub.w d7,d5
	blt loc_0051fa
	sub.w d7,d4
	move.w d4,(-$4ac0,a5)
	movea.l (-$4aba,a5),a1
	suba.w d7,a1
	suba.w d7,a1
	move.l a1,(-$4aba,a5)
	ext.l d0
	ext.l d1
	lsl.l #7,d0
	addi.l #$10,d1
	neg.l d1
	lsl.l #7,d1
	move.w d6,d5
	ext.l d5
	lsl.l #4,d5
	lsl.l #7,d5
	move.l d1,d4
	cmpi.l #-$7c00,d4
	blt loc_0050c0
	sub.l d5,d4
	cmpi.l #-$400,d4
	bgt loc_0050c0
	bra loc_0050c6

loc_0050c0:
	move.l #$80000000,d0

loc_0050c6:
	andi.w #$ff80,d1
	add.w d6,d1
	move.w #$fff,d4
	moveq #$0,d3
	move.w #$800,d3
	lea ($300,a1),a1
	move.w d7,d5
	subq.w #1,d5

loc_0050de:
	cmpi.l #$a000,d0
	blt.b loc_0050ec
	move.l #$80000000,d0

loc_0050ec:
	move.w d0,($300,a1)
	move.w d4,(-$300,a1)
	add.l d3,d0
	bgt.b loc_0050fc
	clr.w (a1)+
	bra.b loc_0050fe 

loc_0050fc:
	move.w d1,(a1)+

loc_0050fe:
	dbra d5,loc_0050de
	move.w (-$4ac0,a5),d1
	lsl.w #6,d1
	movem.w (a7),d2/d3/d4/d5
	addi.w #$0,d2
	addi.w #$0,d3
	subq.w #1,d4
	subq.w #1,d5
	lsr.w #1,d4
	lsl.w #3,d5
	andi.w #$7,d4
	andi.w #$70,d5
	move.w d3,d0
	swap d0
	move.w d3,d0
	swap d3
	move.w d0,d3
	add.w d4,d3
	addi.w #$70,d3
	swap d3
	addi.w #$77,d3
	add.w d4,d0
	add.w d5,d0
	swap d0
	add.w d5,d0
	addq.w #7,d0
	move.l d0,d4
	lea VRAMRW,a1
	subq.w #1,d6
	subq.w #1,d7
	add.w d6,d6
	eori.w #$1e,d6
	add.w d6,d6
	add.w d6,d6
	move.w #$1,($2,a1)
	move.w #$40,d5

loc_005164:
	tst.w d7
	bne.b loc_00516c
	swap d3
	swap d4

loc_00516c:
	move.w d1,(-$2,a1)
	jmp loc_005174(pc,d6.w)

loc_005174:
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	nop
;517c
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	nop
;5184
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	nop
;518c
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	nop
;5194
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	nop
;519c
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	nop
;51a4
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	nop
;51ac
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	nop
;51b4
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	nop
;51bc
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	nop
;51c4
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	nop
;51cc
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	nop
;51d4
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	nop
;51dc
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	nop
;51e4
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	nop
;51ec
	move.w d4,(a1)
	nop
	move.w d2,(a1)
	nop
;51f4
	add.w d5,d1
	dbra d7,loc_005164
	
loc_0051fa:
	movem.w (a7)+,d2/d3/d4/d5
	rts

loc_005200:
	move.w ($0,a4),d0
	move.w ($4,a4),d1
	move.w ($e,a4),d3
	move.w #$10,d6
	move.w #$10,d7
	move.w (-$4ac0,a5),d4
	move.w d4,d5
	tst.b (-$4ab6,a5)
	bne.b loc_005226
	sub.w (-$4ac4,a5),d5
	bra.b loc_00522a

loc_005226:
	sub.w (-$4ac6,a5),d5

loc_00522a:
	ble loc_005376
	sub.w d7,d5
	blt loc_005376
	sub.w d7,d4
	move.w d4,(-$4ac0,a5)
	movea.l (-$4aba,a5),a1
	suba.w d7,a1
	suba.w d7,a1
	move.l a1,(-$4aba,a5)
	ext.l d0
	ext.l d1
	lsl.l #7,d0
	addi.l #$10,d1
	neg.l d1
	lsl.l #7,d1
	not.w d3
	move.w d3,d5
	lsr.w #8,d5
	addq.w #1,d5
	clr.w d4
	move.b d3,d4
	addq.w #1,d4
	ext.l d4
	ext.l d5
	lsl.l #6,d4
	lsl.l #6,d5
	sub.l d4,d0
	add.l d5,d1
	clr.w d5
	move.b d3,d5
	addq.w #1,d5
	lsl.w #4,d5
	move.w d5,d7
	lsl.l #3,d5
	move.l d1,d4
	cmpi.l #-$7c00,d4
	blt loc_005298
	sub.l d5,d4
	cmpi.l #-$400,d4
	bgt loc_005298
	bra loc_00529e

loc_005298:
	move.l #$80000000,d0

loc_00529e:
	move.w #$21,d7
	andi.w #$ff80,d1
	add.w d7,d1
	move.w d3,d5
	lsr.w #4,d3
	andi.w #$f00,d3
	move.b d5,d3
	clr.b d5
	lsr.w #4,d5
	addi.w #$10,d5
	move.b d0,d7
	ext.w d7
	add.w d7,d7
	andi.w #$f0,d7
	andi.w #$ff80,d0
	moveq #$0,d4
	move.w d3,d4
	lea ($300,a1),a1
	move.w #$f,d2

loc_0052d4:
	cmpi.l #$a000,d0
	blt.b loc_0052e2
	move.l #$80000000,d0

loc_0052e2:
	move.w d0,($300,a1)
	move.w d4,(-$300,a1)
	clr.b d4
	addi.w #$100,d4
	lsr.w #1,d4
	add.l d4,d0
	bgt.b loc_0052fa
	clr.w (a1)+
	bra.b loc_0052fc

loc_0052fa:
	move.w d1,(a1)+

loc_0052fc:
	add.w d5,d7
	move.w d7,d4
	andi.w #$f0,d7
	subi.w #$100,d4
	move.b d3,d4
	dbra d2,loc_0052d4
	move.w (-$4ac0,a5),d1
	lsl.w #6,d1
	move.w ($c,a4),d2
	move.b	#$0,d2
	move.w #$f,d3
	movea.l ($10,a4),a0
	lea VRAMRW,a1
	move.w #$1,($2,a1)
	move.w #$f,d7

loc_005334:
	move.w d1,(-$2,a1)
	move.w #$0,d0
	move.w #$f,d6

loc_005340:
	move.w (a0,d0.w),d4
	btst d7,d4
	beq.b loc_005350
	move.w d3,(a1)
	nop
	move.w d2,(a1)
	bra.b loc_005358

loc_005350:
	move.w #$0,(a1)
	move.w #$0,(a1)

loc_005358:
	addq.w #2,d0
	dbra d6,loc_005340
	move.w #$f,d6

loc_005362:
	move.w #$0,(a1)
	move.w #$0,(a1)
	dbra d6,loc_005362
	addi.w #$40,d1
	dbra d7,loc_005334

loc_005376:
	rts

loc_005378:
	move.w (-$4ac0,a5),d4
	move.w d4,d5
	tst.b (-$4ab6,a5)
	bne.b loc_00538a
	sub.w (-$4ac4,a5),d5
	bra.b loc_00538e

loc_00538a:
	sub.w (-$4ac6,a5),d5

loc_00538e:
	ble loc_005424
	subq.w #1,d5
	blt loc_005424
	subq.w #1,d4
	move.w d4,(-$4ac0,a5)
	movea.l (-$4aba,a5),a1
	subq.w #2,a1
	move.l a1,(-$4aba,a5)
	sub.w (-$45d6,a5),d0
	sub.w (-$45da,a5),d1
	subq.w #8,d0
	subq.w #8,d1
	ext.l d0
	ext.l d1
	lsl.l #7,d0
	addi.l #$10,d1
	neg.l d1
	lsl.l #7,d1
	move.l #$800,d5
	move.l d1,d4
	cmpi.l #-$7c00,d4
	blt loc_0053e6
	sub.l d5,d4
	cmpi.l #-$400,d4
	bgt loc_0053e6
	bra loc_0053ea

loc_0053e6:
	bra loc_005424

loc_0053ea:
	andi.w #$ff80,d1
	ori.w #$1,d1
	lea ($300,a1),a1
	move.w d0,($300,a1)
	move.w #$fff,(-$300,a1)
	move.w d1,(a1)+
	move.w (-$4ac0,a5),d1
	lsl.w #6,d1
	addi.w #$200,d3
	addi.w #$0,d2
	lea VRAMRW,a1
	move.w #$1,($2,a1)
	move.w d1,(-$2,a1)
	move.w d3,(a1)
	move.w d2,(a1)

loc_005424:
	rts

;loc_005426
	include "rendering/spritetext.asm"

;loc_005ce8
	include "rendering/clearfixram.asm"


;loc_005db8
	include "rendering/fixgridfill.asm"


;=======================================
;
;=======================================
loc_005e50:
	clr.l d0
	move.w ($4,a7),d0
	lsl.w #5,d0
	add.w ($6,a7),d0
	addi.w #$7002,d0
	move.w d0,($4,a7)
	move.w d0,($6,a7)
	rts

FixTextWrite:
	movea.l ($8,a7),a0
	move.w ($c,a7),d0
	lea VRAMRW,a1
	move.w #$20,($2,a1)
	move.w ($4,a7),(-$2,a1)

loc_005e84
	move.b (a0)+,d0
	beq.b loc_005e8c
	move.w d0,(a1)

loc_005e8a:
	bra.b loc_005e84

loc_005e8c:
	rts

;==================;
; bios hex numbers ;
;==================;
loc_005e8e:
	move.l ($8,a7),d0
	move.w ($c,a7),d1
	move.w ($e,a7),d2
	asl.w #2,d1
	ror.l d1,d0
	lea VRAMRW,a0
	move.w #$20,($2,a0)
	move.w ($4,a7),(-$2,a0)

loc_005eb0:
	rol.l #4,d0
	move.w d0,d3
	andi.w #$f,d3
	move.b loc_005ec4(pc,d3.w),d2
	move.w d2,(a0)
	subq.w #4,d1
	bgt.b loc_005eb0
	rts

loc_005ec4:
	dc.b "0123456789ABCDEF"

;======================;
; Decimal Font0 Render ;
;======================;
loc_005ed4:
	lea loc_005ec4(pc),a1
	move.l ($8,a7),d0
	move.w ($c,a7),d1
	move.w ($e,a7),d2
	jsr loc_0021ae
	move.w d2,d4
	move.b #$20,d4
	asl.w #2,d1
	ror.l d1,d0
	asr.w #2,d1
	subq.w #1,d1
	lea VRAMRW,a0
	move.w #$20,($2,a0)
	move.w ($4,a7),(-$2,a0)

loc_005f0a:
	rol.l #4,d0
	move.w d0,d3
	andi.w #$f,d3
	bne.b loc_005f1c
	tst.b d1
	beq.b loc_005f1c
	move.b d4,d2
	bra.b loc_005f24

loc_005f1c:
	move.b #$30,d4
	move.b (a1,d3.w),d2

loc_005f24:
	move.w d2,(a0)
	dbra d1,loc_005f0a
	rts

;===================
;
;===================
loc_005f2c:
	movea.l ($8,a7),a0	
	move.w ($c,a7),d0
	move.w d0,d1
	swap d1
	move.w (a0)+,d3
	move.w (a0)+,d2
	swap d3
	move.w d2,d3
	swap d3
	lea VRAMRW,a1
	move.w #$20,($2,a1)
	move.w ($4,a7),d1

loc_005f52:
	move.w d1,(-$2,a1)
	swap d1

loc_005f58:
	move.w (a0)+,d0
	add.w d1,d0
	move.w d0,(a1)
	dbra d2,loc_005f58
	swap d3
	move.w d3,d2
	swap d3
	swap d1
	addq.w #$1,d1
	dbra d3,loc_005f52
	rts


;===================;
;
;===================;
loc_005f72:
	lea VRAMRW,a0
	move.w #$1,($2,a0)
	move.w ($4,a7),d1
	move.w ($8,a7),d0
	subq.w #1,d0

loc_005f88:
	move.w d1,(-$2,a0)
	swap d1
	move.w ($a,a7),d1
	subq.w #1,d1

loc_005f94:
	move.w #$ff,(a0)
	dbra d1,loc_005f94
	swap d1
	addi.w #$20,d1
	dbra d0, loc_005f88
	rts

loc_005fa8:
	movea.l ($8,a7),a0
	move.w ($14,a7),d0
	move.w d0,d1
	swap d1
	move.w (a0)+,d3
	move.w (a0)+,d2
	move.w d2,d4
	move.w ($e,a7),d0
	move.w d2,d1
	addq.w #1,d1
	mulu.w d1,d0
	add.w ($c,a7),d0
	add.w d0,d0
	adda.w d0,a0
	sub.w ($e,a7),d3
	blt loc_006032
	sub.w ($c,a7),d2
	blt loc_006032

;5fdc
	move.w ($12,a7),d0
	subq.w #1,d0
	cmp.w d0,d3
	blt loc_005fea
	move.w d0,d3
	
loc_005fea:
	move.w ($10,a7),d0
	subq.w #1,d0
	cmp.w d0,d2
	blt  loc_005ff8
	move.w d0,d2

loc_005ff8:
	sub.w d2,d4
	add.w d4,d4
	swap d3
	move.w d2,d3
	swap d3

;6002
	lea vramrw,a1
	move.w #$20,($2,a1)
	move.w ($4,a7),d1
	
loc_006012:
	move.w d1,(-$2,a1)
	swap d1
	
loc_006018:
	move.w (a0)+,d0
	add.w d1,d0
	move.w d0,(a1)
	dbra d2,loc_006018
	swap d3
	move.w d3,d2
	swap d3
	swap d1
	addq.w #1,d1
	adda.w d4,a0
	dbra d3,loc_006012
	
loc_006032:
	rts
;===================;
;  Mid-match score	;
;===================;
loc_006034:
	movea.l ($e,a7),a1
	move.l ($8,a7),d0
	move.w ($c,a7),d1
	move.w ($12,a7),d2
	jsr loc_0021ae
	sf d4
	asl.w #2,d1
	ror.l d1,d0
	asr.w #2,d1
	subq.w #1,d1
	lea vramrw,a0
	move.w ($4,a7),(-$2,a0)

loc_006060:
	move.w #$1,($2,a0)
	rol.l #4,d0
	move.w d0,d3
	andi.w #$f,d3
	bne.b loc_006088
	tst.b d1
	beq.b loc_006088
	tst.b d4
	bne.b loc_006088
	move.w #$ff,(a0)
	move.w #$1f,($2,a0)
	move.w #$ff,(a0)
	bra.b loc_00609c

loc_006088:
	st d4
	move.b (a1,d3.w),d2
	move.w d2,(a0)
	move.w #$1f,($2,a0)
 	addi.w #$10,d2
	move.w d2,(a0)

loc_00609c:
	dbra d1,loc_006060
	rts

;===================;
;   Combo Counter   ;
;===================;
loc_0060a2:
	movea.l ($e,a7),a1
	move.l ($8,a7),d0
	move.w ($c,a7),d1
	move.w ($12,a7),d2
	jsr loc_0021ae
	sf d4
	asl.w #2,d1
	ror.l d1,d0
	asr.w #2,d1
	subq.w #1,d1
	lea vramrw,a0
	move.w ($4,a7),(-$2,a0)

loc_0060ce:
	move.w #$1,($2,a0)
	rol.l #4,d0
	move.w d0,d3
	andi.w #$f,d3
	bne.b loc_00610a
	tst.b d1
	beq.b loc_00610a
	tst.b d4
	bne.b loc_00610a
	move.w #$ff,(a0)
	move.w #$1f,($2,a0)
	move.w #$ff,(a0)
	move.w #$1,($2,a0)
	move.w #$ff,(a0)
	move.w #$1f,($2,a0)
	move.w #$ff,(a0)
	bra.b loc_006136

loc_00610a:
	st d4
	move.b (a1,d3.w),d2
;6110	
	move.w d2,(a0)
	move.w #$1f,($2,a0)
	addi.w #$10,d2
;611c	
	move.w d2,(a0)
	move.w #$1,($2,a0)
	addi.w #-$f,d2
;6128
	move.w d2,(a0)
	move.w #$1f,($2,a0)
	addi.w #$10,d2
	move d2,(a0)

loc_006136:
	dbra d1,loc_0060ce
	rts

;===================;
;
;===================;
loc_00613c:
	move.w ($10,a7),d1
	andi.w #$f000,d1
	move.w ($8,a7),d0
	andi.w #$0fff,d0
	or.w d0,d1
	move.w d1,d0
	swap d1
	move.w ($e,a7),d3
	move.w ($a,a7),d2
	subq.w #1,d2
	bmi loc_0061be
	subq.w #1,d3
	bmi loc_0061be
	swap d3
	move.w d2,d3
	swap d3
	lea vramrw,a1
	move.w #$20,($2,a1)
	move.w ($4,a7),d1

loc_00617c:
	move.w d1,(-$2,a1)
	swap d1
	move.w ($c,a7),d4
	subq.w #1,d4
	bmi.b loc_006192

loc_00618a:
	move.w #$ff,(a1)
	dbra d4,loc_00618a

loc_006192:
	move.w d0,(a1)
	addq.w #1,d0
	dbra d2,loc_006192
	move.w ($c,a7),d4
	subq.w #1,d4
	bmi.b loc_0061aa
	
loc_0061a2:	
	move.w #$ff,(a1)
	dbra d4,loc_0061a2

loc_0061aa:
	addi.w #$10,d1
	move.w d1,d0
	swap d3
	move d3,d2
	swap d3
	swap d1
	addq.w #1,d1
	dbra d3,loc_00617c	

loc_0061be:
	rts

;===================;
;	 Stage Load 	;
;===================;
loc_0061c0:
	lea (-$44f6,a5),a0
	tst.b ($12,a0)
	bgt.b loc_0061d6
	beq.b loc_0061dc
	neg.b ($12,a0)
	jsr loc_00626c

loc_0061d6: ;bglayer 0
	jsr loc_006324

loc_0061dc:
	lea (-$44d6,a5),a0
	tst.b ($12,a0)
	bgt.b loc_0061f2
	beq.b loc_0061f8
	neg.b ($12,a0)
	jsr loc_00626c
	
loc_0061f2:
	jsr loc_006324
	
loc_0061f8:
	lea (-$44b6,a5),a0
	tst.b ($12,a0)
	bgt.b loc_00620e
	beq.b loc_006214
	neg.b ($12,a0)
	jsr loc_00626c

loc_00620e:
	jsr loc_006324
	
loc_006214:
	rts

;===================
;
;===================
loc_006216:
	lea (-$44f6,a5),a0
	tst.b ($12,a0)
	bgt.b loc_00622c
	beq.b loc_006232
	neg.b ($12,a0)
	jsr loc_006426

loc_00622c:
	jsr loc_0064ea

loc_006232:
	lea (-$44d6,a5),a0
	tst.b ($12,a0)
	bgt.b loc_006248
	beq.b loc_00624e
	neg.b ($12,a0)
	jsr loc_006426

loc_006248:
	jsr loc_0064ea

loc_00624e:
	lea (-$44b6,a5),a0
	tst.b ($12,a0)
	bgt.b loc_006264
	beq.b loc_00626a
	neg.b ($12,a0)
	jsr loc_006426

loc_006264:
	jsr loc_0064ea

loc_00626a:
	rts

;===================
;
;===================
loc_00626c:
	nop
	nop
	movea.l ($e,a0),a1
	move.w ($0,a1),d6
	move.w ($2,a1),d7
	move.w ($4,a1),d4
	move.w ($6,a1),d5
	lsl.w d4,d6
	lsl.w d5,d7
	move.w ($c,a0),d0
	cmp.w d0,d6
	ble.b loc_006292
	move.w d0,d6

loc_006292:
	move.w d6,($14,a0)
	cmpi.w #$10,d7
	ble.b loc_0062a0
	move.w #$21,d7
	
loc_0062a0:
	move.w d7,($16,a0)
	lea vramrw,a2
	move.w #$1,($2,a2)
	move.w ($a,a0),d1
	lsl.w #6,d1
	move.w d1,(-$2,a2)
	subq.w #1,d6
	clr.w d2

loc_0062be:
	swap d6
	movea.l a1,a4
	move.w (a4)+,d5
	move.w (a4)+,d6
	move.w (a4)+,d0
	move.w (a4)+,d1
	lsl.w #2,d5
	move.w #$1,d4
	lsl.w d1,d4
	subq.w #1,d4
;62d4
	move.w d2,d1
	lsr.w d0,d1
	lsl.w #2,d1
	adda.w d1,a4
	move.w d2,d3
	move.w #$1,d1
	lsl.w d0,d1
	subq.w #1,d1
	and.w d1,d3
	lsl.w #2,d3
	move.w #$4,d1
	lsl.w d0,d1
	subq.w #4,d1
	moveq #$1f,d7
	bra loc_0062fa

loc_0062f8:
	adda.w d5,a4

loc_0062fa:
	movea.l (a4),a3
	adda.w d3,a3
	move.w d4,d0

loc_006300:
	move.w (a3)+,(a2)
	move.w (a3)+,(a2)
	adda.w d1,a3
	subq.w #1,d7
	dbcs d0, loc_006300
	bcs.b loc_00631a
	subq.w #1,d6
	bgt.b loc_0062f8

loc_006312:
	clr.w (a2)
	clr.w (a2)
	dbra d7,loc_006312

loc_00631a:
	addq.w #1,d2
	swap d6
	dbra d6,loc_0062be
	rts

;===================;
;Stage Layer Render ; 
;===================;
loc_006324:
	lea (-$50c6,a5),a1
	move.w ($a,a0),d0
	add.w d0,d0
	adda.w d0,a1
	move.w ($14,a0),d4
	subq.w #1,d4
	tst.b ($13,a0)
	bpl loc_00641e
	move.w ($0,a0),d2
	move.w ($4,a0),d3
	move.w #$100,d6

;634a
	moveq #$0,d0
	move.b ($8,a0),d0
	sub.w d0,d6
	move.w #$100,d7
	moveq #$0,d0
	move.b ($9,a0),d0
	sub.w d0,d7
	muls.w d7,d3
	addi.l #$80,d3
	asr.l #1,d3
	andi.w #$ff80,d3
	subi.w #$800,d3
	move.w ($16,a0),d0
	cmpi.w #$21,d0
	beq.b loc_006382
	mulu.w d7,d0
	addi.w #$ff,d0
	lsr.w #8,d0	

loc_006382:
	or.w d0,d3
	subq.w #1,d7
	tst.w d2
	bmi.b loc_0063c6
	move.w d2,d1
	lsr.w #4,d1
	subq.w #1,d1
	bcs loc_0063a0

loc_006394:
	clr.w (a1)+
	subq.w #1,d4
	dbcs d1,loc_006394
	bcs loc_006424

loc_0063a0:
	move.w d2,d5
	lsr.w #4,d5
	mulu.w d6,d5
	addq.w #8,d5
	andi.w #$f,d5
	lsl.w #3,d5

;63b2
	andi.w #$f,d2
	mulu.w d6,d2
	neg.w d2
	addi.w #$80,d2
	asr.w #1,d2
	andi.w #$ff80,d2
	add.w d5,d2
	bra loc_0063e6

loc_0063c6:
	move.w #$40,d5
	neg.w d2
	mulu.w d6,d2
	addi.l #$80,d2
	asr.l #1,d2
	andi.l #$ffffff80,d2
	add.w d5,d2
	cmpi.l #$a000,d2
	bcc.b loc_00641e

loc_0063e6:
	lsl.w #3,d6
	move.w #$40,d1

loc_0063ec:
	add.w d6,d5
	move.w d5,d0
	andi.w #$78,d5
	lsl.w #1,d0
	subi.w #$100,d0
	clr.b d0
	or.w d7,d0
	move.w d0,(-$300,a1)
	move.w d2,($300,a1)
	move.w d3,(a1)+
	or.w d1,d3
	add.w d6,d2
	cmpi.w #-$6000,d2
	bcc.b loc_00641a
	dbra d4,loc_0063ec
	bra loc_006424

loc_00641a:
	subq.w #1,d4
	bcs.b loc_006424

loc_00641e:
	clr.w (a1)+
	dbra d4,loc_00641e

loc_006424:
	rts

;===================
;
;===================
loc_006426:
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1,-(a7)

	move.l ($0,a0),d2
	move.l ($4,a0),d3
	move.l d2,($18,a0)
	move.l d3,($1c,a0)
	movea.l ($e,a0),a1
	move.w ($0,a1),d6
	move.w ($2,a1),d7
	move.w ($4,a1),d4
	move.w ($6,a1),d5

;644e	
	lsl.w d4,d6
	lsl.w d5,d7
	cmpi #$20,d6
	blt.b loc_00645c
	move.w #$20,d6

loc_00645c:
	move.w d6,($14,a0)
	cmpi.w #$21,d7
	blt.b loc_00646a
	move.w #$21,d7
	
loc_00646a:
	move.w d7,($16,a0)
	swap d2
	swap d3
	lea vramrw,a1
	move.w #$1,($2,a1)
	move.w ($a,a0),d1
	lsl.w #6,d1
	move.w d1, (-$2,a1)
	move.w #$7ff,d0

loc_00648c:
	clr.w (a1)
	dbra d0,loc_00648c
	move.w ($a,a0),d1
	add.w d1,d1
	lea (-$53c6,a5),a1
	adda.w d1,a1
	move.w #$1f,d0

loc_0064a2:
	move.w #$fff,(a1)+
	dbra d0,loc_0064a2
	lea (-$50c6,a5),a1
	adda.w d1,a1
	move.w #$1f,d0

loc_0064b4:
	clr.w (a1)+
	dbra d0,loc_0064b4
	lea (-$4dc6,a5),a1
	adda.w d1,a1
	move.w #$1f,d0

loc_0064c4:
	clr.w (a1)+
	dbra d0,loc_0064c4
	moveq #$13,d0
	moveq #$f,d1
	and.w d2,d1
	beq loc_0064d6
	moveq #$14,d0

loc_0064d6:
	bsr loc_0065d6
	addi.w #$10,d2
	dbra d0,loc_0064d6
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1	
	dc.w $6000,$0002 ;cause the complier will complain if i did bra loc_0064ea

loc_0064ea:
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1,-(a7)
	move.l ($0,a0),d2
	move.l ($4,a0),d3
	move.l ($18,a0),d4
	move.l d2,($18,a0)
	move.l ($1c,a0),d5
	move.l d3,($1c,a0)
;6506
	swap d2
	swap d3
	swap d4
	swap d5
	cmp.w d4,d2
	beq.b loc_00654a
	bpl.b loc_00652a
	move.w d2,d0
	andi.w #$fff0,d0
	move.w d4,d1
	andi.w #$fff0,d1
	cmp.w d1,d0
	beq.b loc_00654a
	bsr loc_0065d6
	bra.b loc_00654a
	
loc_00652a:
	move.w d2,d0
	subq.w #1,d0
	andi.w #$fff0,d0

	move d4,d1
	subq.w #1,d1
	andi.w #$fff0,d1
	cmp.w d1,d0
	beq.b loc_00654a
	move.w d2,-(a7)
	addi.w #$13f,d2
	bsr loc_0065d6
	move.w (a7)+,d2

loc_00654a:
	cmp.w d5,d3 
	beq.b loc_006586
	bpl.b loc_006566
	move.w d3,d0
	andi.w #$fff0,d0
	move.w d5,d1
	andi.w #$fff0,d1
	cmp.w d1,d0
	beq.b loc_006586
	bsr loc_0066f2
	bra.b loc_006586

loc_006566:
	move.w d3,d0
	subq.w #1,d0
	andi.w #$fff0,d0
	move.w d5,d1
	subq.w #1,d1
	andi.w #$fff0,d1
	cmp.w d1,d0
	beq.b loc_006586
	move.w d3,-(a7)
	addi.w #$df,d3
	bsr loc_0066f2
	move.w (a7)+,d3

loc_006586:
	neg.w d2
	lsl.w #7,d2
	subi.w #$10,d3
	lsl.w #7,d3
	or.w ($16,a0),d3
	lea (-$50c6,a5),a1
	move.w ($a,a0),d1
	add.w d1,d1
	adda.w d1,a1

;65a0
	move.w ($14,a0),d7
	subq.w #1,d7
	move.w #$780,d4
	move.w #$a780,d5
	move.w #$800,d6

loc_0065b2:
	move.w d2,d0
	add.w d4,d0
	cmp.w d5,d0
	bcs.b loc_0065c4
	clr.w ($300,a1)
	clr.w (a1)+
	bra loc_0065ca

loc_0065c4:
	move.w d2,($300,a1)
	move.w d3,(a1)+

loc_0065ca:
	add.w d6,d2
	dbra d7,loc_0065b2
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1
	rts

;===================
;WLTK 001
;===================
loc_0065d6:
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2,-(a7)
	movea.l ($e,a0),a2
	moveq #$d,d7
	moveq #$f,d0
	and.w d3,d0
	beq.b loc_0065e8
	moveq #$e,d7
	
loc_0065e8:
	lsr.w #4,d2
	lsr.w #4,d3
	move.w d2,d6
	andi.w #$1f,d6
	add.w ($a,a0),d6
	lsl.w #6,d6
	move.w d3,d5
	andi.w #$1f,d5
	add.w d5,d5

;6600
	add.w d6,d5
	lea vramrw,a0
	move.w #$1,($2,a0)
	move.w d5,(-$2,a0)
	lsl.w #2,d5
	swap d6
	move.w d5,d6
	move.w ($0,a2),d4
	beq loc_0066d6
	move.w ($4,a2),d5
	move.w d2,d0
	lsr.w d5,d0
	cmp.w d4,d0
	bge loc_0066d6
	move.w ($2,a2),d5
	beq loc_0066d6
	move.w ($6,a2),d4
	move.w d3,d1
	lsr.w d4,d1
	cmp.w d5,d1
	blt.b loc_006662

loc_006642:
	clr.w (a0)
	clr.w (a0)
	addq.b #8,d6
	bcc.b loc_006652
	swap d6
	move.w d6,(-$2,a0)
	swap d6
	
loc_006652:
	subq.w #1,d7
	bmi loc_0066ec
	addq.w #1,d3
	andi.w #$fff,d3
	bne.b loc_006642
	clr.w d1

loc_006662:
	swap d3
	move.w d5,d3
	sub.w d1,d3
	swap d3
	move.w ($0,a2),d5
	mulu.w d5,d1
;6670
	add.w d0,d1
	lsl.w #2,d1
	move.w ($6,a2),d0
	moveq #$1,d4
	lsl.w d0,d4
	subq.w #1,d4
	and.w d4,d3
	swap d5
	move.w d3,d5
	move.w ($4,a2),d0
	lsl.w d0,d3
	lsl.w #2,d3
;668c
	addq.w #8,a2
	adda.w d1,a2
	moveq #$1,d1
	lsl.w d0,d1
	subq.w #1,d1
	and.w d1,d2
	lsl.w #2,d2
	add.w d2,d3
	movea.l (a2),a1
	adda.w d3,a1
	lsl.w #2,d1
	swap d3
	move.w d4,d0
	sub.w d5,d0
	swap d5
	lsl.w #2,d5

loc_0066ac:
	move.w (a1)+,(a0)
	move.w (a1)+,(a0)
	adda.w d1,a1
	addq.b #8,d6
	bcc loc_0066c0
	swap d6
	move.w d6,(-$2,a0)	
	swap d6

loc_0066c0:
	subq.w #1,d7
	dbmi d0,loc_0066ac
	bmi.b loc_0066ec
	subq.w #1,d3
	ble.b loc_0066d6
	adda.w d5,a2
	movea.l (a2),a1
	adda.l d2,a1
	move.w d4,d0
	bra.b loc_0066ac
	
loc_0066d6:
	clr.w (a0)
	clr.w (a0)
	addq.b #8,d6
	bcc loc_0066e8
	swap d6
	move.w d6,(-$2,a0)
	swap d6
	
loc_0066e8:
	dbra d7,loc_0066d6

loc_0066ec:
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2
	rts

loc_0066f2:
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2,-(a7)
	movea.l ($e,a0),a2
	moveq #$13,d7
	moveq #$f,d0
	and.w d2,d0
	beq.b loc_006704
	moveq #$14,d7

loc_006704:
	lsr.w #4,d2
	lsr.w #4,d3
	move.w ($a,a0),d6
	lsl.w #6,d6
	move.w d3,d5
	andi.w #$1f,d5
	add.w d5,d5
	add.w d5,d6
	move.w d2,d5
	andi.w #$1f,d5
	move.w d5,d0
	lsl.w #6,d5
	add.w d6,d5
;6724
	lea vramrw,a0
	move.w d5,(-$2,a0)	
	lsl.w #3,d0
	swap d6
	move.w d0,d6
	move.w ($2,a2),d5
	beq loc_0067fa
	move.w ($6,a2),d0
;6740
	move.w d3,d1
	lsr.w d0,d1
	cmp.w d5,d1
	bge loc_0067fa
	move.w ($0,a2),d4
	beq loc_0067fa
	move.w ($4,a2),d5
	move.w d2,d0
	lsr.w d5,d0
	cmp.w d4,d0
	blt.b loc_00678a

loc_00675e:
	move.w #$1,($2,a0)
	clr.w (a0)
	move.w #$3f,($2,a0)
	clr.w (a0)
;676e
	addq.b #8,d6
	bcc.b loc_00677a
	swap d6
	move.w d6,(-$2,a0)
	swap d6

loc_00677a:
	subq.w #1,d7
	bmi loc_00681c
	addq.w #1,d2
	andi.w #$fff,d2
	bne.b loc_00675e
	clr.w d0

loc_00678a:
	swap d2
	move.w d4,d2
	sub.w d0,d2
	swap d2
	mulu.w d1,d4
	add.w d0,d4
	lsl.w #2,d4
	move.w ($6,a2),d0
	moveq #$1,d5
	lsl.w d0,d5
	subq.w #1,d5
	and.w d5,d3
	move.w ($4,a2),d0
	lsl.w d0,d3
	lsl.w #2,d3
;67ac
	moveq #$1,d5
	lsl.w d0,d5
	subq.w #1,d5
	and.w d5,d2
	move.w d2,d1
	lsl.w #2,d2
	add.w d3,d2
	addq.w #8,a2
	adda.w d4,a2
	movea.l (a2)+,a1
	adda.w d2,a1
	swap d2
	move.w d5,d0
	sub.w d1,d0

loc_0067c8:
	move.w #$1,($2,a0)
	move.w (a1)+,(a0)
	move.w #$3f,($2,a0)
	move.w (a1)+,(a0)
	addq.b #8,d6
	bcc loc_0067e6
	swap d6
	move.w d6,(-$2,a0)
	swap d6

loc_0067e6:
	subq.w #1,d7
	dbmi d0,loc_0067c8
	bmi.b loc_00681c
	subq.w #1,d2
	ble.b loc_0067fa
	movea.l (a2)+,a1
	adda.l d3,a1
	move.w d5,d0
	bra.b loc_0067c8

loc_0067fa:
	move.w #$1,($2,a0)
	clr.w (a0)
	move.w #$3f,($2,a0)
	clr.w (a0)
	addq.b #8,d6
	bcc loc_006818
	swap d6
	move d6,(-$2,a0)
	swap d6

loc_006818:
	dbra d7,loc_0067fa

loc_00681c:
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2
	rts


;===================
;0x6822
;===================
loc_006822:
	cmpi.w #$10,(-$45e8,a5)
	bge loc_006858
	move sr,-(a7)
	ori #$700,sr
	movea.l (-$45ec,a5),a1
	sf ($0,a1)
	move.l a0,($2,a1)
	move.w d0,($6,a1)
	move.w d1,($8,a1)
	lea	($a,a1),a1
	move.l a1,(-$45ec,a5)
	addq.w #1,(-$45e8,a5)
	move (a7)+,sr
	sf d0
	bra.b loc_00685a

loc_006858:
	st d0

loc_00685a:
	tst.b d0
	rts

;===================
;0x685e
;===================
loc_00685e:
	movem.l a1/a2,-(a7)	
	cmpi.w #$10,(-$45e8,a5)
	bge loc_006a56
	tst.b ($1,a0)
	beq loc_006a3a
	tst.b (a0)
	beq loc_006a3a
	cmpi.b #$11,(a0)
	bcc loc_006a3a
	swap d4
	swap d5
;6886
	clr.w d4
	move.b (a0)+,d4
	clr.w d5
	move.b (a0)+,d5
	sub.w d5,d7
	blt loc_006a56
	lea (-$53c6,a5),a1
	adda.w d6,a1
	adda.w d6,a1
	move.w d6,-(a7)
	move.w d7,-(a7)
;68a0
	move.w d4,-(a7)
	move.w d5,-(a7)
	move.w d4,d6
	move.w d5,d7
	swap d5
	swap d4
	ext.l d0
	ext.l d1
	lsl.l #7,d0
	addi.l #$10,d1
	neg.l d1
;68ba
	lsl.l #7,d1
	swap d2
	move.b (a0)+,d2
	ext.w d2
	add.w d2,d2
	add.w d2,d4	
	move.b (a0)+,d2
	ext.w d2
	add.w d2,d2
	add.w d2,d5
	swap d2
;68d0
	btst #$0,d2
	beq.b loc_0068dc
	lsl.w #4,d7
	sub.w d4,d7
	move.w d7,d4

loc_0068dc:
	btst #$1,d2
	beq.b loc_0068e8
	lsl.w #4,d6
	sub.w d5,d6
	move.w d6,d5

loc_0068e8:
	not.w d3
	move.w d3,d7
	lsr.w #8,d7
	addq.w #1,d7
	clr.w d6
	move.b d3,d6
	addq.w #1,d6
	muls.w d7,d4
	muls.w d6,d5
	asr.l #1,d4
	asr.l #1,d5
	sub.l d4,d0
;6900	
	add.l d5,d1
	move.w (a7)+,d7
	move.w (a7)+,d6
	swap d2
	move.w d7,d2
	subq.w #1,d2
	swap d7
	clr.w d5
	move.b d3,d5
	addq.w #1,d5 
	mulu.w d6,d5
	move.w d5,d7
;6918
	lsl.l #3,d5
	move.l d1,d4
	cmpi.l #-$7c00,d4
	blt loc_006936
	sub.l d5,d4
	cmpi.l #-$400,d4
	bgt loc_006936
	bra loc_00693c

loc_006936:
	move.l #$80000000,d0

loc_00693c:
	addi.w #$ff,d7
	lsr.w #8,d7
	andi.w	#$ff80,d1
	add.w d7,d1
	move.w d3,d5
	lsr.w #4,d3
	andi.w #$f00,d3
	move.b d5,d3
	clr.b d5
	lsr.w #4,d5
	addi.w #$10,d5
	move.b d0,d7
;695c	
	ext.w d7
	add.w d7,d7
	andi.w #$f0,d7
	andi.w #$ff80,d0
	moveq #$0,d4
	move.w d3,d4
	lea ($300,a1),a1

loc_006970:
	cmpi.l  #$a000,d0
	blt.b loc_00697e
	move.l #$80000000,d0

loc_00697e:
	move.w d0,($300,a1)
	move.w d4,(-$300,a1)
	clr.b d4
	addi.w #$100,d4
	lsr.w #1,d4
	add.l d4,d0
	bgt.b loc_006996
	clr.w (a1)+
	bra.b loc_006998
		
loc_006996:
	move.w d1,(a1)+
	
loc_006998:
	add.w d5,d7
	move.w d7,d4
	andi.w #$f0,d7
	subi.w #$100,d4
	move.b d3,d4
	dbra d2,loc_006970
	move.w (a7)+,d7
	subq.w #1,d7
	bmi loc_0069b8

loc_0069b2:
	clr.w (a1)+
	dbra d7,loc_0069b2

loc_0069b8:
	swap d7
	swap d2
	move.w (a7)+,d1
	lsl.w #6,d1
	cmpi.b #$1f,d3
	bcc loc_0069d4
	moveq #$10,d5
	sub.w d6,d5
	andi.w #$f,d5
	bra loc_006a0a

loc_0069d4:
	moveq #$0,d5
	not.b d3
	beq.b loc_006a0a
;69da	
	subi.b #-$80,d3
	bls.b loc_006a08
;69e0	
	subi.b #$2a,d3
	bls.b loc_006a06
;69e6	
	subi.b #$16,d3
	bls.b loc_006a04
;69ec	
	subi.b #$c,d3
	bls.b loc_006a02
;69f2	
	subi.b #$9,d3
	bls.b loc_006a00
;69f8
	subq.b #$6,d3
	bls.b loc_0069fe
	addq.w #1,d5

loc_0069fe:
	addq.w #1,d5
loc_006a00:
	addq.w #1,d5
loc_006a02:
	addq.w #1,d5
loc_006a04:
	addq.w #1,d5
loc_006a06:
	addq.w #1,d5
loc_006a08:
	addq.w #2,d5
loc_006a0a:
	move sr,-(a7)
	ori #$700,sr
	movea.l (-$45ec,a5),a2
	st ($0,a2)
	move.b d5,($1,a2)
	move.l a0,($2,a2)
	move.w d1,($6,a2)
	move.w d2,($8,a2)
	lea ($a,a2),a2
	addq.w #1,(-$45e8,a5)
	move.l a2,(-$45ec,a5)
	move (a7)+,sr
	sf d0
	bra.b loc_006a58

loc_006a3a:
	lea (-$53c6,a5),a1
	lea ($300,a1),a1
	adda.w d6,a1
	adda.w d6,a1
	subq.w #1,d7
	bmi loc_006a56

loc_006a4c:
	clr.w (a1)+
	dbra d7,loc_006a4c
	bra loc_006a58

loc_006a56:
	st d0

loc_006a58:
	movem.l (a7)+,a1/a2
	tst.b d0
	rts

;===================
;
;===================
loc_006a60:
	movem.l a1/a2,-(a7)
	cmpi.w #$10,(-$45e8,a5)
	bge loc_006bde
	tst.b (1,a0)
	beq loc_006bc4
	tst.b (a0)
	beq loc_006bc4
	cmpi.b #$11,(a0)
	bcc loc_006bc4
	swap d4
	swap d5
	clr.w d4
	move.b (a0)+,d4
	clr.w d5
	move.b (a0)+,d5
	sub.w d5,d7
;6a92
	blt loc_006bde
	lea (-$53c6,a5),a1
	adda.w d6,a1
	adda.w d6,a1
	move.w d6,-(a7)
	move.w d7,-(a7)
	move.w d4,-(a7)
	move.w d5,-(a7)
	move.w d4,d6
	move.w d5,d7
	swap d5
	swap d4
	ext.l d0
	ext.l d1
	lsl.l #7,d0
	addi.l #$10,d1
;6aba
	neg.l d1
	lsl.l #7,d1
	swap d2
	move.b (a0)+,d2
	ext.w d2
	add.w d2,d2
	add.w d2,d4
	move.b (a0)+,d2
	ext.w d2
	add.w d2,d2
	add.w d2,d5
	swap d2
	btst #$0,d2
	beq.b loc_006ade
	lsl.w #4,d7
	sub.w d4,d7
	move.w d7,d4

loc_006ade:
	btst #$1,d2
	beq.b loc_006aea
	lsl.w #4,d6
	sub.w d5,d6
	move.w d6,d5

loc_006aea:
	not.w d3
	move.w d3,d7
	lsr.w #8,d7
	addq.w #1,d7
	clr.w d6
	move.b d3,d6
	addq.w #1,d6
	muls.w d7,d4
	muls.w d6,d5
	asr.l #1,d4
	asr.l #1,d5
;6b00
	sub.l d4,d0
	add.l d5,d1
	move.w (a7)+,d7
	move.w (a7)+,d6
	swap d2
	move.w d7,d2
	subq #1,d2
	swap d7
	clr.w d5
	move.b d3,d5
	addq.w #1,d5
	mulu.w d6,d5
	move.w d5,d7
	lsl.l #3,d5
	move.l d1,d4
	cmpi.l #-$7c00,d4
;6b24
	blt loc_006b38
	sub.l d5,d4
	cmpi.l #-$400,d4
	bgt loc_006b38
	bra loc_006b3e

loc_006b38:
	move.l #$80000000,d0

loc_006b3e:
	addi.w #$ff,d7
	lsr.w #8,d7
	andi.w #$ff80,d1
	add.w d7,d1
	move.w d3,d5
	lsr.w #4,d3
	andi.w #$f00,d3
	move.b d5,d3
	clr.b d5
	lsr.w #4,d5
	addi.w #$10,d5
	move.b d0,d7
	ext.w d7
	add.w d7,d7
	andi.w #$f0,d7
	andi.w #$ff80,d0
;6b6a
	moveq #$0,d4
	move.w d3,d4
	lea ($300,a1),a1

loc_006b72:
	cmpi.l #$a000,d0
	blt.b loc_006b80
	move.l #$80000000,d0

loc_006b80:
	move.w d0,($300,a1)
	move.w d4,(-$300,a1)
	clr.b d4
	addi.w #$100,d4
	lsr.w #1,d4
	add.l d4,d0
	bgt.b loc_006b98
	clr.w (a1)+
	bra.b loc_006b9a

loc_006b98:
	move.w d1,(a1)+	

loc_006b9a:
	add.w d5,d7
	move.w d7,d4
	andi.w #$f0,d7
	subi.w #$100,d4
	move.b d3,d4
	dbra d2,loc_006b72
	move.w (a7)+,d7
	subq.w #1,d7
	bmi loc_006bba

loc_006bb4:
	clr.w (a1)+
	dbra d7,loc_006bb4

loc_006bba:
	swap d7
	swap d2
	move.w (a7)+,d1
	sf d0
	bra.b loc_006be0

loc_006bc4:
	lea (-$53c6,a5),a1
	lea ($300,a1),a1
	adda.w d6,a1
	adda.w d6,a1
	subq.w #1,d7
	bmi loc_006bde

loc_006bd6:
	clr.w (a1)+
	dbra d7,loc_006bd6
	bra.b loc_006be0

loc_006bde:
	st d0

loc_006be0:
	movem.l (a7)+,a1/a2
	tst.b d0
	rts

;==================
;
;==================
loc_006be8:
	movem.l a1/a2,-(a7)
	cmpi.w #$10,(-$45e8,a5)
	bge loc_006de2
	tst.b ($1,a0)
	beq loc_006dc6
	tst.b (a0)
	beq loc_006dc6
	cmpi.b #$11,(a0)
	bcc.w loc_006dc6

;6c0c
	swap d4
	swap d5
	clr.w d4
	move.b (a0)+,d4
	clr.w d5
	move.b (a0)+,d5
	sub.w d5,d7
	blt loc_006de2
	
	lea (-$53c6,a5),a1
	adda.w d6,a1
	adda.w d6,a1

;6c26
	move.w d6,-(a7)
	move.w d7,-(a7)
	move.w d4,-(a7)
	move.w d5,-(a7)
	move.w d4,d6
	move.w d5,d7
	swap d5
	swap d4
	ext.l d0
	ext.l d1
	lsl.l #7,d0
	addi.l #$10,d1
	neg.l d1
	lsl.l #7,d1
	swap d2
	move.b (a0)+,d2
	ext.w d2

;6c4c
	add.w d2,d2
	add.w d2,d4
	move.b (a0)+,d2
	ext.w d2
	add.w d2,d2
	add.w d2,d5
	swap d2
	btst #$0,d2
	beq.b loc_006c66
	lsl.w #4,d7
	sub.w d4,d7
	move.w d7,d4

loc_006c66:
	btst #$1,d2
	beq.b loc_006c72
	lsl.w #4,d6
	sub.w d5,d6
	move.w d6,d5

loc_006c72:
	not.w d3
	move.w d3,d7
	lsr.w #8,d7
	addq.w #1,d7
	clr.w d6
	move.b d3,d6
	addq.w #1,d6
	muls.w d7,d4
	muls.w d6,d5
	asr.l #1,d4
	asr.l #1,d5
	sub.l d4,d0
	add.l d5,d1
	move.w (a7)+,d7
	move.w (a7)+,d6
	swap d2
	move.w d7,d2
;6c94
	subq.w #1,d2
	swap d7
	clr.w d5
	move.b d3,d5
	addq.w #1,d5
	mulu.w d6,d5
	move.w d5,d7
	lsl.l #3,d5
	move.l d1,d4
	cmpi.l #-$7c00,d4
	blt loc_006cc0
	sub.l d5,d4
	cmpi.l #-$400,d4
	bgt loc_006cc0
	bra loc_006cc6

loc_006cc0:
	move.l #$80000000,d0

loc_006cc6:
	addi.w #$ff,d7
	lsr.w #8,d7
	andi.w #$ff80,d1
	add.w d7,d1
	move.w d3,d5
	lsr.w #4,d3
	andi.w #$f00,d3
	move.b d5,d3
	clr.b d5
	lsr.w #4,d5
	addi.w #$10,d5
	move.b d0,d7
	ext.w d7
	add.w d7,d7
	andi.w #$f0,d7
	andi.w #$ff80,d0
;6cf2
	moveq #$0,d4
	move.w d3,d4
	lea ($300,a1),a1
loc_006cfa:
	cmpi.l #$a000,d0
	blt.b loc_006d08
	move.l #$80000000,d0

loc_006d08:
	move.w d0,($300,a1)
	move.w d4,(-$300,a1)
	clr.b d4
	add.w #$100,d4
	lsr.w #1,d4
	add.l d4,d0
	bgt.b loc_006d20
	clr.w (a1)+
	bra.b loc_006d22

loc_006d20:
	move.w d1,(a1)+
	
loc_006d22:
	add.w d5,d7
	move.w d7,d4
	andi.w #$f0,d7
	subi.w #$100,d4
	move.b d3,d4
	dbra d2,loc_006cfa

	move.w (a7)+,d7
	subq.w #1,d7
	bmi loc_006d42

loc_006d3c:
	clr.w (a1)+
	dbra d7,loc_006d3c

loc_006d42:
	swap d7
	swap d2
	move.w (a7)+,d1
	lsl.w #6,d1
	cmpi.b #$1f,d3
	bcc loc_006d5e
	moveq #$10,d5
	sub.w d6,d5
	andi.w #$f,d5
	bra loc_006d94

loc_006d5e:
	moveq #$0,d5
	not.b d3
	beq.b loc_006d94

	subi.b #-$80,d3
	bls.b loc_006d92

	subi.b #$2a,d3
	bls.b loc_006d90

	subi.b #$16,d3
	bls.b loc_006d8e

	subi.b #$c,d3
	bls.b loc_006d8c

	subi.b #$9,d3
	bls.b loc_006d8a

	subq.b #6,d3
	bls.b loc_006d88
;6d86	
	addq.w #1,d5

loc_006d88:
	addq.w #1,d5
loc_006d8a:
	addq.w #1,d5
loc_006d8c:
	addq.w #1,d5
loc_006d8e:
	addq.w #1,d5
loc_006d90:
	addq.w #1,d5
loc_006d92:
	addq.w #2,d5

loc_006d94:
	move sr,-(a7)
	ori #$700,sr
	movea.l (-$45ec,a5),a2
	move.b #$1, ($0,a2)
	move.b d5,($1,a2)
	move.l a0,($2,a2)
	move.w d1,($6,a2)
	move.w d2,($8,a2)
	lea ($a,a2),a2
	addq.w #1,(-$45e8,a5)
	move.l a2,(-$45ec,a5)
	move (a7)+,sr
	sf d0
	bra.b loc_006de4

loc_006dc6:
	lea (-$53c6,a5),a1
	lea ($300,a1),a1
	adda.w d6,a1
	adda.w d6,a1
	subq.w #1,d7
	bmi loc_006de2

loc_006dd8:
	clr.w (a1)+
	dbra d7,loc_006dd8
	bra	loc_006de4

loc_006de2:
	st d0

loc_006de4:
	movem.l (a7)+,a1/a2
	tst.b d0
	rts

;===================
;
;===================
loc_006dec:
	move.w (-$45e8,a5),d7
	subq.w #1,d7
	bmi loc_006e56
	lea (-$486c,a5),a3
	lea vramrw,a1

loc_006e00:
	clr.w d5
	move.b ($1,a3),d5
	movea.l ($2,a3),a0
	move.w ($6,a3),d1
	move.w ($8,a3),d2
	tst.b ($0,a3)
	bgt loc_006e2e
	bmi loc_006e40
	movem.l d7/a1/a3,-(a7)
	bsr loc_006e64
	movem.l (a7)+,d7/a1/a3
	bra loc_006e4e

loc_006e2e:
	movem.l d7/a1/a3,-(a7)
	jsr loc_0047c8
	movem.l (a7)+,d7/a1/a3
	bra loc_006e4e

loc_006e40:
	movem.l d7/a1/a3,-(a7)
	jsr loc_004808
	movem.l (a7)+,d7/a1/a3

loc_006e4e:
	lea ($a,a3),a3
	dbra d7,loc_006e00
	
loc_006e56:
	move.l #$103794,(-$45ec,a5)
	clr.w (-$45e8,a5)
	rts

;===================
;
;===================
loc_006e64:
	clr.w d6
	move.b (a0)+,d6
	subq.w #1,d6
	clr.w d7

;6e6c
	move.b (a0)+,d7
	subq.w #1,d7
	move.w d1,d5
	lsr.w #1,d5	
	andi.w #$1f,d5
	add.w d6,d5
	subi.w #$20,d5
	blt loc_006e86
	sub.w d5,d6
	subq.w #1,d6

loc_006e86:
	move.w d2,d3
	clr.b d3
	move.w d2,d4
	andi.w #$3,d4
	move.w d4,d0
	add.w d0,d0
	move.w loc_006e9c(pc,d0.w),d0
	jmp loc_006e9c(pc,d0.w)

loc_006e9c
;	dc.w $0008,$004a,$0092,$00ee
	dc.w loc_006ea4-loc_006e9c
	dc.w loc_006ee6-loc_006e9c
	dc.w loc_006f2e-loc_006e9c
	dc.w loc_006f8a-loc_006e9c

loc_006ea4:
	move.w #$1,(2,a1)

loc_006eaa:
	move.w d6,d2
	move.w d1,(-2,a1)

loc_006eb0:
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	dbra d2,loc_006eb0
	move.w d5,d2
	bmi loc_006edc
	move.w d1,d0
	andi.w #$ffc0,d0
	move.w d0,(-$2,a1)

loc_006ece:
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	dbra d2,loc_006ece

loc_006edc:
	addi.w #$40,d1
	dbra d7,loc_006eaa
	rts

loc_006ee6:
	move.w d7,d0
	lsl.w #6,d0
	add.w d0,d1
	move.w #$1,($2,a1)

loc_006ef2:
	move.w d6,d2
	move.w d1,(-$2,a1)

loc_006ef8:
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	dbra d2,loc_006ef8
	move.w d5,d2
	bmi loc_006f24
	move.w d1,d0
	andi.w #$ffc0,d0
	move.w d0,(-$2,a1)
	
loc_006f16:
	move.w (a0)+,(a1)
	move.w (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	dbra d2,loc_006f16

loc_006f24:
	subi.w #$40,d1
	dbra d7,loc_006ef2
	rts

loc_006f2e:
	move.w d5,d0
	bpl.b loc_006f3a
	add.w d6,d1
	add.w d6,d1
	addq.w #1,d1
	bra.b loc_006f44

loc_006f3a:
	add.w d0,d0
	addq.w #1,d0
	andi.w #$ffc0,d1
	add.w d0,d1

loc_006f44:
	move.w #$ffff,($2,a1)

loc_006f4a:
	move.w d1,(-$2,a1)
	move.w d5,d2
	bmi loc_006f70

loc_006f54:
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
	dbra d2,loc_006f54
	move.w d6,d2
	move.w d1,d0
	ori.w #$3f,d0
	move.w d0,(-$2,a1)

loc_006f70:
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
	dbra d2,loc_006f70
	add.w #$40,d1
	dbra d7,loc_006f4a
	rts

loc_006f8a:
	move.w d5,d0
	bpl.b loc_006f96
	add.w d6,d1
	add.w d6,d1
	addq.w #1,d1
	bra.b loc_006fa0

loc_006f96:
	add.w d0,d0
	addq.w #1,d0
	andi.w #$ffc0,d1
	add.w d0,d1

loc_006fa0:
	move.w d7,d0
	lsl.w #6,d0
	add.w d0,d1
	move.w #$ffff,($2,a1)

loc_006fac:
	move.w d1,(-$2,a1)
	move.w d5,d2
	bmi loc_006fd2	

loc_006fb6:
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
	dbra d2,loc_006fb6
	move.w d6,d2
	move.w d1,d0
	ori.w #$3f,d0
	move.w d0,(-$2,a1)
	
loc_006fd2:
	move.l (a0)+,d0
	eor.w d4,d0
	add.w d3,d0
	move.w d0,(a1)
	swap d0
	move.w d0,(a1)
	dbra d2,loc_006fd2
	subi.w #$40,d1
	dbra d7,loc_006fac
	rts

;===================
;
;===================
loc_006fec:
	tst.b (-$7f8a,a5)
	bne.b loc_00702e
	link a6,#$0
	move sr,-(a7)
	ori #$700,sr
	movem.l d0/a0,-(a7)
	cmpi.w #$40,(-$42be,a5)
	bge.b loc_007026
	movea.l (-$42bc,a5),a0
	move.w ($8,a6),d0
	move.w d0,(a0)+
	cmpa.l #$103dcc,a0
	blt.b loc_00701e
	lea (-$42b4,a5),a0 
	
loc_00701e:
	move.l a0,(-$42bc,a5)
	addq.w #1,(-$42be,a5)

loc_007026:
	movem.l (a7)+,d0/a0
	move (a7)+,sr
	unlk a6

loc_00702e:
	rts

;===================
;Play sound
;===================
loc_007030:
	tst.b (-$7fa8,a5)
	bne loc_007092
	movea.l (-$42b8,a5),a1
	move.l a1,d0
	btst #$0,d0
	beq loc_007060
	subq.w #1,(-$42be,a5)

loc_00704a:
	move.b (a1)+,d7
	bne.b loc_00707a
	cmpa.l #$103dcc,a1
	blt.b loc_00705a
	lea (-$42b4,a5),a1

loc_00705a:
	move.b (a1)+,d7
	beq.b loc_007080
	bra.b loc_00707a

loc_007060:
	tst.b (-$7fa9,a5)
	bne loc_0070e6
	tst.w (-$42be,a5)
	beq.b loc_007090

loc_00706e:
	move.b (a1)+,d7
	bne.b loc_00707a
	subq.w #1,(-$42be,a5)
	move.b (a1)+,d7
	beq.b loc_007080

loc_00707a:
	move.b d7,soundreg

loc_007080:
	cmpa.l #$103dcc,a1
	blt.b loc_00708c
	lea (-$42b4,a5),a1

loc_00708c:
	move.l a1,(-$42b8,a5)

loc_007090:
	rts

loc_007092:
	tst.b (-$7fa8,a5)
	bgt loc_0070a0
	move.b #$8,(-$7fa8,a5)

loc_0070a0:
	subq.b #1,(-$7fa8,a5)
	andi.b #$7,(-$7fa8,a5)
	move.b (-$7fa8,a5),d0
	ext.w d0
	add.w d0,d0
	move.w loc_0070ba(pc,d0.w),d0
	jmp loc_0070ba(pc,d0.w)

loc_0070ba:
	dc.w loc_0070e0-loc_0070ba;26
	dc.w loc_0070e0-loc_0070ba;26
	dc.w loc_0070de-loc_0070ba;24
	dc.w loc_0070d4-loc_0070ba;1a
	dc.w loc_0070d4-loc_0070ba;1a
	dc.w loc_0070d4-loc_0070ba;1a
	dc.w loc_0070d4-loc_0070ba;1a
	dc.w loc_0070ca-loc_0070ba;10
	
loc_0070ca:
	move.b #$3,soundreg
	rts

loc_0070d4:
	move.b #$7,soundreg
	rts

loc_0070de:
	rts

loc_0070e0:
	sf (-$7fa8,a5)
	rts

loc_0070e6:
	sf (-$7fa9,a5)
	move.b #$7f,soundreg
	rts

;===================
;Init_Z80Driver
;===================
loc_0070f4:
	move sr,-(a7)
	ori #$700,sr
	lea (-$42b4,a5),a0
	move.l a0,(-$42b8,a5)
	move.l a0,(-$42bc,a5)
	clr.w (-$42be,a5)
	st $100058.l
	move (a7)+,sr
	rts

;===================;
; actual coin sound ;
;===================;
loc_007114:
	st $100057.l
	rts

;===================;
;Palette
;===================;
loc_00711c:
	move.w #$40,d6
	move.w (-$40b2,a5),d7
	ble loc_007152
	clr.w (-$40b2,a5)
	lea (-$4232,a5),a2
	sub.w d7,d6
	subq.w #1,d7

loc_007134:
	lea palramaddr,a0
	adda.w (a2)+,a0
	movea.l (a2)+,a1
	
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	dbra d7,loc_007134

loc_007152:
	tst.w d6
	ble loc_0071a8
	move.w (-$3ab0,a5),d7
	beq loc_0071a8
	cmp.w d6,d7
	ble loc_007168
	move.w d6,d7

loc_007168:
	sub.w d7,(-$3ab0,a5)
	lea (-$40b0,a5),a2
	move.w (-$3aae,a5),d2
	subq.w #1,d7

loc_007176:
	lea palramaddr,a0
	adda.w (a2,d2.w),a0
	movea.l ($2,a2,d2.w),a1
	addq.w #6,d2
	cmpi.w #$600,d2
	blt loc_007190
	clr.w d2

loc_007190:
	move.l (a1)+,(a0)+
	move.l (a1)+,(a0)+
	move.l (a1)+,(a0)+
	move.l (a1)+,(a0)+
	move.l (a1)+,(a0)+
	move.l (a1)+,(a0)+
	move.l (a1)+,(a0)+
	move.l (a1)+,(a0)+
	dbra d7,loc_007176
	move.w d2,(-$3aae,a5)

loc_0071a8:
	move.w (-$4234,a5),palramend
	rts

;===================;
;
;===================;
loc_0071b2:
	move sr,-(a7)
	ori #$700,sr
	clr.w (-$40b2,a5)
	clr.w (-$3ab0,a5)
	clr.w (-$3aae,a5)
	clr.w (-$3aac,a5)
	move (a7)+,sr
	lea (-$3aaa,a5),a0
	move.w #$3f,d7
	
loc_0071d2:
	sf ($0,a0)
	lea ($56,a0),a0
	dbra d7,loc_0071d2
	rts

;===================;
;
;===================;
loc_0071e0:
	movem.l d7/a0,-(a7)
	lea (-$3aaa,a5),a0
	move.w #$3f,d7

loc_0071ec:
	sf ($0,a0)
	lea ($56,a0),a0
	dbra d7,loc_0071ec
	movem.l (a7)+,d7/a0
	rts

;===================
;
;===================
loc_0071fe:
	movem.l d0/a0,-(a7)
	lea (-$3aaa,a5),a0
	move.w ($c,a7),d0
	mulu.w #$56,d0
	adda.l d0,a0
	sf ($0,a0)
	movem.l (a7)+,d0/a0
	rts

;===================
;
;===================
loc_00721a:
	movem.l d7/a0,-(a7)
	lea (-$3aaa,a5),a0
	move.w #$3f,d7

loc_007226:
	tst.b ($0,a0)
	bne loc_00723a
	lea ($56,a0),a0
	dbra d7,loc_007226
	clr.w d7
	bra.b loc_00723e

loc_00723a:
	move.w #$ffff,d7

loc_00723e:
	movem.l (a7)+,d7/a0
	rts

;===================
;
;===================
loc_007244:
	movem.l d0/a0,-(a7)
	lea (-$3aaa,a5),a0
	move.w ($c,a7),d0
	mulu.w #$56,d0
	adda.l d0,a0
	tst.b ($0,a0)
	bne loc_007262
	clr.w d0
	bra.b loc_007266

loc_007262:
	move.w #$ffff,d0
	
loc_007266:
	movem.l (a7)+,d0/a0
	rts

;===================
;
;===================
loc_00726c:
	trap #$5
	bsr loc_007274
	bra.b loc_00726c

;===================
;
;===================
loc_007274:
	lea (-$3aaa,a5),a4
	move.w #$3f,d7

loc_00727c:
	tst.b ($0,a4)
	beq loc_007466
	bgt loc_0073a0
	
	cmpi.b #-$5,($0,a4)
	beq loc_007462
	
	cmpi.b #-$4,(0,a4)
	beq loc_0072f4

	cmpi.b #-$2,(0,a4)
	beq loc_00739c

	cmpi.w #$40,(-$40b2,a5)
	bge loc_007466

;72b0
	move sr,-(a7)
	ori #$700,sr
	lea (-$4232,a5),a0
	move.w (-$40b2,a5),d0
	add.w d0,d0
	adda.w d0,a0
	add.w d0,d0
	adda.w d0,a0
	move.w ($30,a4),(a0)+
	lea ($32,a4),a1
	move.l a1,(a0)+
	addq.w #1,(-$40b2,a5)
	move (a7)+,sr

;72d6
	cmpi.b #-$3,($0,a4)
	beq loc_0072ea
	move.b #$fe,(0,a4)
	bra loc_007466
	
loc_0072ea:
	move.b #$fc,(0,a4)
	bra loc_007466

loc_0072f4:
	subq.b #1,($2,a4)
	bge loc_007466
	clr.b ($2,a4)
	cmpi.w #$100,(-$3ab0,a5)
	bge loc_007466
	
	move.b ($1,a4),($2,a4)
	lea ($32,a4),a1
	lea ($c,a4),a0
	move #$f,d6

loc_00731c:
	move (a1)+,(a0)+
	dbra d6,loc_00731c
	lea ($32,a4),a1
	lea ($c,a4),a0
	move.w (4,a4),d2
	move.w (6,a4),d3
	move.w (8,a4),d4
	move.w d3,d6
	sub.w d2,d6
	move d6,d5
	lsr #1,d6
	addq.w #2,d5
	add.w d2,d4

loc_007342:
	move.w (a0,d4.w),(a1,d2.w)
	addq.w #2,d2
	addq.w #2,d4
	cmp.w d3,d4
	ble loc_007354
	sub.w d5,d4

loc_007354:
	dbra d6,loc_007342
	move.w (-$3aac,a5),d0
	lea (-$40b0,a5),a0
	move.w ($30,a4),(a0,d0.w)
	lea ($32,a4),a1
	move.l a1,($2,a0,d0.w)
	addq.w #6,d0
	cmpi.w #$600,d0
	blt.b loc_007378
	clr.w d0

loc_007378:
	move.w d0,(-$3aac,a5)
	addq.w #1,(-$3ab0,a5)
	tst.w ($a,a4)
	bmi loc_007466
	subq.w #1,($a,a4)
	bpl loc_007466
	clr.w ($a,a4)
	sf ($0,a4)
 	bra loc_007466

loc_00739c:
	bsr loc_007470

loc_0073a0:
	subq.b #1,(2,a4)
	bge loc_007466
	clr.b ($2,a4)
	cmpi.w #$100,(-$3ab0,a5)
	bge loc_007466
	clr.w d5
	move.b ($1,a4),($2,a4)
	bge loc_0073d6
	move.b ($2,a4),d5
	neg.b d5
	cmp.b (0,a4),d5
	blt loc_0073d6
	move.b (0,a4),d5
	subq.b #1,d5

loc_0073d6:
	lea loc_007a0c(pc),a3
	clr.w d0
	move.b ($0,a4),d0
	lsl.w #6,d0
	adda.w d0,a3
	lea ($34,a4),a0
	lea ($3,a4),a1
	move.w #$e,d6

loc_0073f0:
	swap d6
	move.w (a0),d1
	bsr loc_0074c4
	move.b d5,d6
	movea.l a3,a2

loc_0073fc:
	move.b (a1)+,d0
	ext.w d0
	add.b (a2,d0.w),d2
	move.b (a1)+,d0
	ext.w d0
	add.b (a2,d0.w),d3
	move.b (a1)+,d0
	ext.w d0
	add.b (a2,d0),d4
	subq.b #1,d6	
	bmi loc_007422
	suba.w #$40,a2
	subq.w #3,a1	
	bra.b loc_0073fc

loc_007422:
	bsr loc_0074e6
	move.w d1,(a0)+
	swap d6
	dbra d6,loc_0073f0
	move.w (-$3aac,a5),d0
	lea (-$40b0,a5),a0
	move.w ($30,a4),(a0,d0.w)
	lea ($32,a4),a1
	move.l a1,($2,a0,d0.w)
	addq.w #6,d0
	cmpi #$600,d0
	blt.b loc_00744e
	clr.w d0

loc_00744e:
	move.w d0,(-$3aac,a5)
	addq.w #1,(-$3ab0,a5)
	sub.b d5,(0,a4)
	subq.b #1,(0,a4)
	bgt loc_007466

loc_007462:
	sf ($0,a4)

loc_007466:
	lea ($56,a4),a4
	dbra d7,loc_00727c
	rts

;===================
;
;===================
loc_007470:
	movem.l d1/d2/d3/d4/d7/a0/a1/a2,-(a7)
	move.b #$1f,(0,a4)
	move.b ($1,a4),($2,a4)
	movea.l ($52,a4),a1
	addq.w #2,a1
	lea ($32,a4),a2
	clr.w (a2)+
	lea ($3,a4),a0
	move.w #$e,d7

loc_007494:
	move.w (a1)+,d1
	bsr loc_0074c4
	move.b d2,(0,a0)
	move.b d3,(1,a0)
	move.b d4,(2,a0)
	move.w (a2)+,d1	
	bsr loc_0074c4
 	sub.b d2,(0,a0)
	sub.b d3,(1,a0)
	sub.b d4,(2,a0)
	addq.w #3,a0
	dbra d7,loc_007494
	movem.l (a7)+,d1/d2/d3/d4/d7/a0/a1/a2
	rts

;===================
;
;===================
loc_0074c4:
	move.w d1,d2
	lsr.w #8,d2
	move.w d1,d3
	lsr.w #4,d3
	move.w d1,d4
	roxl.w #2,d1
	roxl.w #1,d2
	roxl.w #1,d1
	roxl.w #1,d3
	roxl.w #1,d1
	roxl.w #1,d4
	move.w #$1f,d1
	and.w d1,d2
	and.w d1,d3
	and.w d1,d4
	rts

;===================;
;
;===================;
loc_0074e6:
	move.w #$1f,d1
	and.w d1,d2
	and.w d1,d3
	and.w d1,d4
	clr.w d1
	roxr.w #1,d4
	roxr.w #1,d1
	roxr.w #1,d3
	roxr.w #1,d1
	roxr.w #1,d2
	roxr.w #2,d1
	lsl.w #8,d2
	lsl.w #4,d3
	or.w d2,d1
	or.w d3,d1
	or.w d4,d1
	rts

;===================
;Palette Load use (PalRamline,location)
;===================
FuncPaletteLoad:
	movem.l d0/d1/a0,-(a7)
	cmpi.w #$100,(-$3ab0,a5)
	bge loc_00754a
	move.w (-$3aac,a5),d0
	lea (-$40b0,a5),a0
	move.w ($14,a7),d1
	lsl.w #5,d1
	move.w d1,(a0,d0.w)
	move.l ($10,a7),(2,a0,d0.w)
	addq.w #6,d0
	cmpi.w #$600,d0
	blt loc_00753c
	clr.w d0

loc_00753c:
	move.w d0,(-$3aac,a5)
	addq.w #1,(-$3ab0,a5)
	clr.w d0
	bra loc_00754e

loc_00754a:
	move.w #$ffff,d0

loc_00754e:
	movem.l (a7)+,d0/d1/a0
	rts

;===================
;
;===================
loc_007554:
	movem.l d0/d1/a0/a1,-(a7)
	lea (-$40b0,a5),a0
	movea.l ($14,a7),a1
	move.w ($18,a7),d1
	lsl.w #5,d1

loc_007566:
	tst.l (a1)
	beq loc_00759c
	cmpi.w #$100,(-$3ab0,a5)
	bge loc_0075a2
	move.w (-$3aac,a5),d0
	move.w d1,(a0,d0.w)
	move.l (a1)+, ($2,a0,d0.w)
	addi.w #$20,d1
	addq.w #6,d0
	cmpi.w #$600,d0
	blt loc_007592
	clr.w d0

loc_007592:
	move.w d0,(-$3aac,a5)
	addq.w #1,(-$3ab0,a5)
	bra.b loc_007566

loc_00759c:
	clr.w d0
	bra loc_0075a6

loc_0075a2:
	move.w #$ffff,d0
 
loc_0075a6:
	movem.l (a7)+,d0/d1/a0/a1
	rts

;===================
;
;===================
loc_0075ac:
	movem.l d5/a0/a4,-(a7)
	cmpi.w #$100,(-$3ab0,a5)
	bge loc_007620
	bsr loc_0077ba
	bmi loc_007620
	move.l ($10,a7),($52,a4)
	move.w ($14,a7),d0
	lsl.w #5,d0
	move.w d0,($30,a4)
;75d2
	sf ($1,a4)
	sf ($2,a4)
	move.b #$fb,($0,a4)
	move.w (-$3aac,a5),d0
	lea (-$40b0,a5),a0
	move.w ($30,a4),(a0,d0.w)
	lea ($32,a4),a4
	move.l a4,($2,a0,d0.w)
	movea.l ($10,a7),a0
;75fa
	move.l (a0)+,(a4)+
	move.l (a0)+,(a4)+
	move.l (a0)+,(a4)+
	move.l (a0)+,(a4)+
	move.l (a0)+,(a4)+
	move.l (a0)+,(a4)+
	move.l (a0)+,(a4)+
	move.l (a0)+,(a4)+
	addq.w #6,d0
	cmpi.w #$600,d0
	blt.b loc_007614	
	clr.w d0

loc_007614:
	move.w d0,(-$3aac,a5)
	addq.w #1,(-$3ab0,a5)
	move.w d5,d0
	bra.b loc_007624

loc_007620:
	move.w #$ffff,d0

loc_007624:
	movem.l (a7)+,d5/a0/a4
	rts

;===================
;
;===================
loc_00762a:
	cmpi.w #$40,d0
	bcc loc_00764a
	movem.l d0,-(a7)
	lea (-$3aaa,a5),a0
	mulu.w #$56,d0
	adda.l d0,a0
	lea ($32,a0),a0
	movem.l (a7)+,d0
	rts

loc_00764a:
	move.w #$ffff,d0
	rts

;===================
;
;===================
loc_007650:
	movem.l d5/a4,-(a7)
	bsr loc_0077ba
	bmi loc_00769c
	move.l ($c,a7),($52,a4)
	move.w ($10,a7),d0
	lsl.w #5,d0
	move.w d0,($30,a4)
	move.w ($12,a7),d0
	move.b d0,(1,a4)

;7674
	clr.l ($32,a4)
	clr.l ($36,a4)
	clr.l ($3a,a4)
	clr.l ($3e,a4)
	clr.l ($42,a4)
	clr.l ($46,a4)
	clr.l ($4a,a4)
	clr.l ($4e,a4)
	bsr loc_007470
	move.w d5,d0
	bra.b loc_0076a0

loc_00769c:
	move.w #$ffff,d0

loc_0076a0:
	movem.l (a7)+,d5/a4
	rts

;===================
;
;===================
loc_0076a6:
	movem.l d5/a4,-(a7)
	bsr loc_0077ba
	bmi loc_0076d6
	move.l #$81ec,($52,a4)
	move.w ($c,a7),d0
	lsl.w #5,d0
	move.w d0,($30,a4)
	move.w ($e,a7),d0
	move.b d0,(1,a4)
	move.b #$ff,(0,a4)
	move.w d5,d0
	bra.b loc_0076da

loc_0076d6:
	move.w #$ffff,d0

loc_0076da:
	movem.l (a7)+,d5/a4
	rts

;===================
;
;===================
loc_0076e0:
	movem.l d5/a4,-(a7)
	bsr loc_0077ba
	bmi loc_00770e
	move.l ($c,a7),($52,a4)
	move.w ($10,a7),d0
	lsl.w #5,d0
	move.w d0,($30,a4)
	move.w ($12,a7),d0
	move.b d0,($1,a4)
	move.b #$ff,($0,a4)
	move.w d5,d0
	bra.b loc_007712

loc_00770e:
	move.w #$ffff,d0

loc_007712:
	movem.l (a7)+,d5/a4
	rts

;===================
;
;===================
loc_007718:
	movem.l d5/a4,-(a7)
	bsr loc_0077ba
	bmi loc_0077b0
	move.w ($12,a7),d0
	subq.w #1,d0
	move.w d0,($a,a4)
	move.w ($c,a7),d0
	lsl.w #5,d0
	move.w d0,($30,a4)
	move.w ($e,a7),d0
	andi.w #$f00,d0
	lsr.w #7,d0
	move.w d0,($4,a4)
	move.w ($e,a7),d0
	andi.w #$f0,d0
	lsr.w #3,d0
	move.w d0,(6,a4)
	move.w ($e,a7),d0
	andi.w #$f,d0
;775c
	add.w d0,d0
	neg.w d0
	move.w d0,($8,a4)
	move.w ($6,a4),d0
	cmp.w ($4,a4),d0
	bge.b loc_00777c
	move.w ($4,a4),($6,a4)
	move.w d0,(4,a4)
	neg.w (8,a4)

loc_00777c:
	move.w ($6,a4),d0
	sub.w (4,a4),d0
	addq.w #2,d0

loc_007786:
	tst.w (8,a4)
	bpl.b loc_007792
	add.w d0,(8,a4)
	bra.b loc_007786

loc_007792:
	cmp.w ($8,a4),d0
	bgt.b loc_00779e
	sub.w d0,(8,a4)
	bra.b loc_007792

loc_00779e:
	move.w ($10,a7),d0
	move.b d0,($1,a4)
	move.b #-$3,($0,a4)
	move.w d5,d0
	bra.b loc_0077b4

loc_0077b0:
	move.w #$ffff,d0

loc_0077b4:
	movem.l (a7)+,d5/a4
	rts

;===================
;
;===================
loc_0077ba:
	movem.l d7,-(a7)
	lea (-$3aaa,a5),a4
	move.w #$3f,d7

loc_0077c6:
	tst.b ($0,a4)
	beq loc_0077e0
	lea ($56,a4),a4
	dbra d7,loc_0077c6
	lea (-$3aaa,a5),a4
	move.w #$ffff,d5
	bra.b loc_0077e6

loc_0077e0:
	move.w #$3f,d5
	sub.w d7,d5

loc_0077e6:
	movem.l (a7)+,d7
	rts

;===================
;
;===================
loc_0077ec:
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4/a6,-(a7)
	move.w ($44,a7),d1
	bsr loc_0074c4
	move.w d2,d5
	move.w d3,d6
	swap d6
	move.b d4,d6
	move ($46,a7),d1
	bsr loc_0074c4
	sub.w d5,d2
	swap d6
	sub.w d6,d3
	swap d6
	sub.w d6,d4
	lsl.w #5,d2
	lsl.w #5,d3
	lsl.w #5,d4
;7818
	lea loc_0086ec(pc),a2
	movea.l a2,a3
	movea.l a2,a4
	adda.w d2,a2
	adda.w d3,a3
	adda.w d4,a4
	movea.l ($3c,a7),a0
	movea.l ($40,a7),a1
	lea loc_00820c(pc),a6
	addq.w #2,a1
	clr.w (a0)+
	move.w #$e,d7

loc_00783a:
	move.w (a1)+,d1
	bsr loc_0074c4
	lsl.w #3,d2
	lsl.w #3,d3
	lsl.w #3,d4
;7846
	move.w (a6,d2.w),d0
	add.w ($2,a6,d3.w),d0
	add.w ($4,a6,d4.w),d0
	addi.w #$80,d0
	lsr.w #8,d0
	move.b (a2,d0.w),d2
	ext.w d2
	add.w d5,d2
	move.b (a3,d0.w),d3
	ext.w d3
	swap d6
	add.w d6,d3
	swap d6
;786c	
	move.b (a4,d0.w),d4
	ext.w d4 
	add.w d6,d4
	bsr loc_0074e6
	move.w d1,(a0)+
	dbra d7,loc_00783a
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4/a6
	rts

;===================
;
;===================
loc_007884:
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3,-(a7)
	movea.l ($34,a7),a0
	movea.l ($38,a7),a1
	movea.l ($3c,a7),a2
	move.w ($40,a7),d0
	ble loc_007904
	cmpi.w #$20,d0
	bge loc_007902
	lea loc_0086ec(pc),a3
	adda.w d0,a3
	addq.w #2,a1
	addq.w #2,a2
	clr.w (a0)+
	move.w #$e,d7

loc_0078b4:
	move.w (a1)+,d1
	bsr loc_0074c4
	move.w d2,d5
	move.w d3,d6
	swap d6

;78c0
	move.b d4,d6
	move.w (a2)+,d1
	bsr loc_0074c4
	sub.w d5,d2
	swap d6
	sub.w d6,d3
	swap d6
	sub.w d6,d4
	lsl.w #5,d2
	lsl.w #5,d3
	lsl.w #5,d4
	move.b (a3,d2.w),d2
	ext.w d2
	add.w d5,d2

;78e0
	move.b (a3,d3.w),d3
	ext.w d3
	swap d6
	add.w d6,d3
	swap d6
	move.b (a3,d4.w),d4
	ext.w d4
	add.w d6,d4
	bsr loc_0074e6
	move.w d1,(a0)+
	dbra d7,loc_0078b4
	bra loc_007914

loc_007902:
	movea.l a2,a1

loc_007904:
	move.l (a1)+,(a0)+
	move.l (a1)+,(a0)+
	move.l (a1)+,(a0)+
	move.l (a1)+,(a0)+
	move.l (a1)+,(a0)+
	move.l (a1)+,(a0)+
	move.l (a1)+,(a0)+
	move.l (a1)+,(a0)+

loc_007914:
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3
	rts

;===================
;
;===================
loc_00791a:
	move.w #$0,d1
	cmpi.w #$2,gameregion
	beq.b loc_00793a
	cmpi.w #$3,gameregion 
	beq.b loc_007942
	lea fixramtable,a1
	bra.b loc_007948

loc_00793a:
	lea fixramtable,a1
	bra.b loc_007948	

loc_007942:
	lea fixramtable,a1

loc_007948:
	tst.l (a1)
	beq.b loc_00795e
	move.w d1,-(a7)
	move.l (a1)+,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	addq.w #1,d1
	bra.b loc_007948

loc_00795e:
	rts

;===================
;
;===================
loc_007960:
	move.w #$80,d1
	cmpi.w #$2,gameregion
	beq.b loc_007980
	cmpi.w #$3,gameregion 
	beq.b loc_007988
	lea loc_008b30,a1
	bra.b loc_00798e

loc_007980:
	lea loc_008b30,a1
	bra.b loc_00798e

loc_007988:
	lea loc_008b30,a1

loc_00798e:
	tst.l (a1)
	beq.b loc_0079a4
	move.w d1,-(a7)
	move.l (a1)+,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	addq.w #1,d1
	bra.b loc_00798e

loc_0079a4:
	rts

;===================
;
;===================
loc_0079a6:
	move.w #$10,d1
	cmpi.w #$2,gameregion
	beq.b loc_0079c6
	cmpi.w #$3,gameregion 
	beq.b loc_0079ce
	lea loc_008b34,a1
	bra.b loc_0079d4

loc_0079c6:
	lea loc_008b34,a1
	bra.b loc_0079d4

loc_0079ce:
	lea loc_008b34,a1

loc_0079d4:
	tst.l (a1)
	beq.b loc_0079ea
	move.w d1,-(a7)
	move.l (a1)+,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	addq.w #1,d1
	bra.b loc_0079d4

loc_0079ea:
	rts

;===================;
;DATA DATA DATA DATA;
;===================;
loc_0079ec:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

loc_007a0c:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $00ff,$ffff,$ffff,$ffff,$ffff,$ffff,$ffff,$ffff
	dc.w $ff00,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0101,$0101,$0101,$0101,$0101,$0101,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$ffff,$ff00,$0000,$0000,$0000
	dc.w $00ff,$ffff,$ffff,$ffff,$ff00,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0101,$0101,$0101,$0101
	dc.w $0000,$0000,$0000,$0000,$0101,$0101,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$ff00,$00ff,$ffff,$ffff,$ffff
	dc.w $ff00,$0000,$0000,$0000,$00ff,$ff00,$0000,$0000
	dc.w $0000,$0000,$0000,$0101,$0000,$0000,$0000,$0000
	dc.w $0101,$0101,$0101,$0101,$0000,$0101,$0101,$0101
	dc.w $00ff,$ffff,$ff00,$00ff,$ffff,$ffff,$ff00,$0000
	dc.w $00ff,$ffff,$ff00,$0000,$0000,$00ff,$ff00,$0000

;7b0c
	dc.w $0000,$0000,$0101,$0000,$0000,$0000,$0101,$0101
	dc.w $0000,$0000,$0101,$0101,$0101,$0000,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$ffff,$ffff,$ff00,$00ff,$ffff
	dc.w $ff00,$0000,$00ff,$ff00,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0101,$0000,$0000
	dc.w $0101,$0101,$0000,$0101,$0101,$0101,$0101,$0101
	dc.w $00ff,$ffff,$00ff,$ffff,$ff00,$00ff,$ffff,$0000
	dc.w $00ff,$ffff,$0000,$00ff,$ff00,$0000,$00ff,$0000
	dc.w $0000,$0001,$0000,$0000,$0101,$0000,$0001,$0101
	dc.w $0000,$0001,$0101,$0000,$0101,$0101,$0001,$0101
	dc.w $00ff,$ffff,$ffff,$ffff,$00ff,$ffff,$ff00,$ffff
	dc.w $ff00,$0000,$ff00,$0000,$00ff,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0001,$0000,$0000,$0100,$0000
	dc.w $0101,$0100,$0101,$0101,$0001,$0101,$0101,$0101
	dc.w $00ff,$ff00,$ffff,$ff00,$ffff,$ff00,$00ff,$ff00
	dc.w $00ff,$ff00,$00ff,$ff00,$0000,$ff00,$0000,$ff00

;7c0c
	dc.w $0000,$0100,$0000,$0100,$0000,$0101,$0000,$0101
	dc.w $0000,$0101,$0000,$0101,$0100,$0101,$0100,$0101
	dc.w $00ff,$ffff,$ffff,$ffff,$ffff,$00ff,$ffff,$00ff
	dc.w $ff00,$00ff,$0000,$00ff,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0001,$0000,$0001,$0000
	dc.w $0101,$0001,$0101,$0001,$0101,$0101,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$00ff,$ff00,$ffff,$0000,$ff00
	dc.w $00ff,$ff00,$ffff,$0000,$ff00,$00ff,$0000,$0000
	dc.w $0000,$0000,$0001,$0000,$0100,$0001,$0100,$0101
	dc.w $0000,$0100,$0001,$0100,$0101,$0001,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$ffff,$ffff,$ff00,$ffff,$00ff
	dc.w $ff00,$00ff,$0000,$ff00,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0100,$0001,$0000
	dc.w $0101,$0001,$0100,$0101,$0101,$0101,$0101,$0101
	dc.w $00ff,$ffff,$ff00,$ffff,$00ff,$ffff,$ff00,$ffff
	dc.w $00ff,$0000,$ff00,$0000,$00ff,$0000,$ff00,$0000

;7d0c
	dc.w $0000,$0000,$0100,$0001,$0000,$0000,$0100,$0001
	dc.w $0001,$0100,$0101,$0101,$0001,$0100,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$ff00,$ffff,$00ff,$00ff,$ff00
	dc.w $ff00,$ff00,$00ff,$00ff,$0000,$ff00,$0000,$0000
	dc.w $0000,$0000,$0000,$0100,$0001,$0001,$0000,$0100
	dc.w $0100,$0101,$0001,$0001,$0100,$0101,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$ffff,$ff00,$ff00,$ffff,$00ff
	dc.w $00ff,$00ff,$0000,$ff00,$ff00,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0100,$0100,$0001,$0001
	dc.w $0001,$0001,$0100,$0100,$0101,$0101,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$ffff,$ffff,$ffff,$ff00,$ff00
	dc.w $ff00,$ff00,$ff00,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0100,$0100
	dc.w $0100,$0100,$0101,$0101,$0101,$0101,$0101,$0101
	dc.w $00ff,$00ff,$00ff,$00ff,$00ff,$00ff,$00ff,$00ff
	dc.w $00ff,$00ff,$00ff,$00ff,$00ff,$00ff,$00ff,$00ff

;7e0c
	dc.w $0001,$0001,$0001,$0001,$0001,$0001,$0001,$0001
	dc.w $0001,$0001,$0001,$0001,$0001,$0001,$0001,$0001
	dc.w $00ff,$ffff,$ffff,$ffff,$ffff,$ffff,$ff00,$ff00
	dc.w $ff00,$ff00,$ff00,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0100,$0100
	dc.w $0100,$0100,$0101,$0101,$0101,$0101,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$ffff,$ff00,$ff00,$ffff,$00ff
	dc.w $00ff,$00ff,$0000,$ff00,$ff00,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0100,$0100,$0001,$0001
	dc.w $0001,$0001,$0100,$0100,$0101,$0101,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$ff00,$ffff,$00ff,$00ff,$ff00
	dc.w $ff00,$ff00,$00ff,$00ff,$0000,$ff00,$0000,$0000
	dc.w $0000,$0000,$0000,$0100,$0001,$0001,$0000,$0100
	dc.w $0100,$0101,$0001,$0001,$0100,$0101,$0101,$0101
	dc.w $00ff,$ffff,$ff00,$ffff,$00ff,$ffff,$ff00,$ffff
	dc.w $00ff,$0000,$ff00,$0000,$00ff,$0000,$ff00,$0000

;7f0c
	dc.w $0000,$0000,$0100,$0001,$0000,$0000,$0100,$0001
	dc.w $0001,$0100,$0101,$0101,$0001,$0100,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$ffff,$ffff,$ff00,$ffff,$00ff
	dc.w $ff00,$00ff,$0000,$ff00,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0100,$0001,$0000
	dc.w $0101,$0001,$0100,$0101,$0101,$0101,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$00ff,$ff00,$ffff,$0000,$ff00
	dc.w $00ff,$ff00,$ffff,$0000,$ff00,$00ff,$0000,$0000
	dc.w $0000,$0000,$0001,$0000,$0100,$0001,$0100,$0101
	dc.w $0000,$0100,$0001,$0100,$0101,$0001,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$ffff,$ffff,$00ff,$ffff,$00ff
	dc.w $ff00,$00ff,$0000,$00ff,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0001,$0000,$0001,$0000
	dc.w $0101,$0001,$0101,$0001,$0101,$0101,$0101,$0101
	dc.w $00ff,$ff00,$ffff,$ff00,$ffff,$ff00,$00ff,$ff00
	dc.w $00ff,$ff00,$00ff,$ff00,$0000,$ff00,$0000,$ff00

;800c
	dc.w $0000,$0100,$0000,$0100,$0000,$0101,$0000,$0101
	dc.w $0000,$0101,$0000,$0101,$0100,$0101,$0100,$0101
	dc.w $00ff,$ffff,$ffff,$ffff,$00ff,$ffff,$ff00,$ffff
	dc.w $ff00,$0000,$ff00,$0000,$00ff,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0001,$0000,$0000,$0100,$0000
	dc.w $0101,$0100,$0101,$0101,$0001,$0101,$0101,$0101
	dc.w $00ff,$ffff,$00ff,$ffff,$ff00,$00ff,$ffff,$0000
	dc.w $00ff,$ffff,$0000,$00ff,$ff00,$0000,$00ff,$0000
	dc.w $0000,$0001,$0000,$0000,$0101,$0000,$0001,$0101
	dc.w $0000,$0001,$0101,$0000,$0101,$0101,$0001,$0101
	dc.w $00ff,$ffff,$ffff,$ffff,$ffff,$ff00,$00ff,$ffff
	dc.w $ff00,$0000,$00ff,$ff00,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0101,$0000,$0000
	dc.w $0101,$0101,$0000,$0101,$0101,$0101,$0101,$0101
	dc.w $00ff,$ffff,$ff00,$00ff,$ffff,$ffff,$ff00,$0000
	dc.w $00ff,$ffff,$ff00,$0000,$0000,$00ff,$ff00,$0000

;810c
	dc.w $0000,$0000,$0101,$0000,$0000,$0000,$0101,$0101
	dc.w $0000,$0000,$0101,$0101,$0101,$0000,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$ff00,$00ff,$ffff,$ffff,$ffff
	dc.w $ff00,$0000,$0000,$0000,$00ff,$ff00,$0000,$0000
	dc.w $0000,$0000,$0000,$0101,$0000,$0000,$0000,$0000
	dc.w $0101,$0101,$0101,$0101,$0000,$0101,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$ffff,$ff00,$0000,$0000,$0000
	dc.w $00ff,$ffff,$ffff,$ffff,$ff00,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0101,$0101,$0101,$0101
	dc.w $0000,$0000,$0000,$0000,$0101,$0101,$0101,$0101
	dc.w $00ff,$ffff,$ffff,$ffff,$ffff,$ffff,$ffff,$ffff
	dc.w $ff00,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0101,$0101,$0101,$0101,$0101,$0101,$0101,$0101
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

loc_00820c:
	dc.w $0000,$0000,$0000,$0000,$004c,$0096,$001d,$0000
	dc.w $0099,$012c,$003a,$0000,$00e5,$01c2,$0057,$0000
	dc.w $0132,$0259,$0074,$0000,$017e,$02ef,$0091,$0000
	dc.w $01cb,$0385,$00af,$0000,$0217,$041b,$00cc,$0000
	dc.w $0264,$04b2,$00e9,$0000,$02b0,$0548,$0106,$0000
	dc.w $02fd,$05de,$0123,$0000,$0349,$0674,$0141,$0000
	dc.w $0396,$070b,$015e,$0000,$03e3,$07a1,$017b,$0000
	dc.w $042f,$0837,$0198,$0000,$047c,$08ce,$01b5,$0000
	dc.w $04c8,$0964,$01d2,$0000,$0515,$09fa,$01f0,$0000
	dc.w $0561,$0a90,$020d,$0000,$05ae,$0b27,$022a,$0000
	dc.w $05fa,$0bbd,$0247,$0000,$0647,$0c53,$0264,$0000
	dc.w $0693,$0ce9,$0282,$0000,$06e0,$0d80,$029f,$0000
	dc.w $072d,$0e16,$02bc,$0000,$0779,$0eac,$02d9,$0000
	dc.w $07c6,$0f43,$02f6,$0000,$0812,$0fd9,$0313,$0000
	dc.w $085f,$106f,$0331,$0000,$08ab,$1105,$034e,$0000
	dc.w $08f8,$119c,$036b,$0000,$0944,$1232,$0388,$0000

;830c
	dc.w $00ff,$fefd,$fcfb,$faf9,$f8f7,$f6f5,$f4f3,$f2f1
	dc.w $f0ef,$eeed,$eceb,$eae9,$e8e7,$e6e5,$e4e3,$e2e1
	dc.w $00ff,$fefd,$fcfb,$faf9,$f8f7,$f6f5,$f4f3,$f2f1
	dc.w $f1f0,$efee,$edec,$ebea,$e9e8,$e7e6,$e5e4,$e3e2
	dc.w $00ff,$fefd,$fcfb,$faf9,$f9f8,$f7f6,$f5f4,$f3f2
	dc.w $f1f0,$efee,$edec,$ebea,$eae9,$e8e7,$e6e5,$e4e3
	dc.w $00ff,$fefd,$fcfb,$fbfa,$f9f8,$f7f6,$f5f4,$f3f2
	dc.w $f2f1,$f0ef,$eeed,$eceb,$eae9,$e9e8,$e7e6,$e5e4	
	dc.w $00ff,$fefd,$fdfc,$fbfa,$f9f8,$f7f6,$f6f5,$f4f3
	dc.w $f2f1,$f0ef,$efee,$edec,$ebea,$e9e8,$e8e7,$e6e5
	dc.w $00ff,$fefd,$fdfc,$fbfa,$f9f8,$f8f7,$f6f5,$f4f3
	dc.w $f3f2,$f1f0,$efee,$eeed,$eceb,$eae9,$e9e8,$e7e6
	dc.w $00ff,$fefe,$fdfc,$fbfa,$faf9,$f8f7,$f6f6,$f5f4
	dc.w $f3f2,$f1f1,$f0ef,$eeed,$edec,$ebea,$e9e9,$e8e7
	dc.w $00ff,$fefe,$fdfc,$fbfb,$faf9,$f8f7,$f7f6,$f5f4
	dc.w $f4f3,$f2f1,$f1f0,$efee,$eded,$eceb,$eaea,$e9e8

;840c
	dc.w $00ff,$fffe,$fdfc,$fcfb,$faf9,$f9f8,$f7f6,$f6f5
	dc.w $f4f3,$f3f2,$f1f0,$f0ef,$eeed,$edec,$ebea,$eae9
	dc.w $00ff,$fffe,$fdfc,$fcfb,$fafa,$f9f8,$f7f7,$f6f5
	dc.w $f5f4,$f3f3,$f2f1,$f0f0,$efee,$eeed,$eceb,$ebea
	dc.w $00ff,$fffe,$fdfd,$fcfb,$fbfa,$f9f9,$f8f7,$f7f6
	dc.w $f5f4,$f4f3,$f2f2,$f1f0,$f0ef,$eeee,$edec,$eceb
	dc.w $00ff,$fffe,$fdfd,$fcfb,$fbfa,$faf9,$f8f8,$f7f6
	dc.w $f6f5,$f4f4,$f3f2,$f2f1,$f1f0,$efef,$eeed,$edec
	dc.w $00ff,$fffe,$fefd,$fcfc,$fbfa,$faf9,$f9f8,$f7f7
	dc.w $f6f6,$f5f4,$f4f3,$f3f2,$f1f1,$f0ef,$efee,$eeed
	dc.w $00ff,$fffe,$fefd,$fdfc,$fbfb,$fafa,$f9f8,$f8f7
	dc.w $f7f6,$f6f5,$f4f4,$f3f3,$f2f1,$f1f0,$f0ef,$efee
	dc.w $00ff,$fffe,$fefd,$fdfc,$fcfb,$fbfa,$f9f9,$f8f8
	dc.w $f7f7,$f6f6,$f5f4,$f4f3,$f3f2,$f2f1,$f1f0,$f0ef
	dc.w $00ff,$fffe,$fefd,$fdfc,$fcfb,$fbfa,$faf9,$f9f8
	dc.w $f8f7,$f7f6,$f6f5,$f5f4,$f4f3,$f3f2,$f2f1,$f1f0

;850c
	dc.w $0000,$ffff,$fefe,$fdfd,$fcfc,$fbfb,$fafa,$f9f9
	dc.w $f8f8,$f7f7,$f6f6,$f5f5,$f4f4,$f3f3,$f2f2,$f1f1
	dc.w $0000,$ffff,$fefe,$fdfd,$fcfc,$fbfb,$fbfa,$faf9
	dc.w $f9f8,$f8f7,$f7f7,$f6f6,$f5f5,$f4f4,$f3f3,$f2f2
	dc.w $0000,$ffff,$fefe,$fdfd,$fdfc,$fcfb,$fbfb,$fafa
	dc.w $f9f9,$f8f8,$f8f7,$f7f6,$f6f6,$f5f5,$f4f4,$f3f3
	dc.w $0000,$ffff,$fefe,$fefd,$fdfd,$fcfc,$fbfb,$fbfa
	dc.w $faf9,$f9f9,$f8f8,$f7f7,$f7f6,$f6f6,$f5f5,$f4f4
	dc.w $0000,$ffff,$fffe,$fefe,$fdfd,$fcfc,$fcfb,$fbfb
	dc.w $fafa,$faf9,$f9f9,$f8f8,$f7f7,$f7f6,$f6f6,$f5f5
	dc.w $0000,$ffff,$fffe,$fefe,$fdfd,$fdfc,$fcfc,$fbfb
	dc.w $fbfb,$fafa,$faf9,$f9f9,$f8f8,$f8f7,$f7f7,$f6f6
	dc.w $0000,$ffff,$ffff,$fefe,$fefd,$fdfd,$fdfc,$fcfc
	dc.w $fbfb,$fbfa,$fafa,$faf9,$f9f9,$f8f8,$f8f8,$f7f7
	dc.w $0000,$ffff,$ffff,$fefe,$fefe,$fdfd,$fdfd,$fcfc
	dc.w $fcfc,$fbfb,$fbfb,$fafa,$fafa,$f9f9,$f9f9,$f8f8

;860c
	dc.w $0000,$00ff,$ffff,$fffe,$fefe,$fefe,$fdfd,$fdfd
	dc.w $fcfc,$fcfc,$fbfb,$fbfb,$fbfa,$fafa,$faf9,$f9f9
	dc.w $0000,$00ff,$ffff,$ffff,$fefe,$fefe,$fefd,$fdfd
	dc.w $fdfd,$fdfc,$fcfc,$fcfc,$fbfb,$fbfb,$fbfa,$fafa
	dc.w $0000,$0000,$ffff,$ffff,$ffff,$fefe,$fefe,$fefe
	dc.w $fdfd,$fdfd,$fdfd,$fcfc,$fcfc,$fcfc,$fbfb,$fbfb
	dc.w $0000,$0000,$ffff,$ffff,$ffff,$ffff,$fefe,$fefe
	dc.w $fefe,$fefe,$fdfd,$fdfd,$fdfd,$fdfd,$fcfc,$fcfc
	dc.w $0000,$0000,$0000,$ffff,$ffff,$ffff,$ffff,$ffff
	dc.w $fefe,$fefe,$fefe,$fefe,$fefe,$fdfd,$fdfd,$fdfd
	dc.w $0000,$0000,$0000,$0000,$ffff,$ffff,$ffff,$ffff
	dc.w $ffff,$ffff,$ffff,$ffff,$fefe,$fefe,$fefe,$fefe
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $ffff,$ffff,$ffff,$ffff,$ffff,$ffff,$ffff,$ffff

loc_0086ec:
	dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	dc.b $00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01
	dc.b $01,$01,$01,$01,$01,$01,$01,$01,$02,$02,$02,$02,$02,$02,$02,$02
	dc.b $00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$03,$03,$03,$03,$03,$03
	dc.b $00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$02,$02,$02,$02
	dc.b $02,$02,$02,$02,$03,$03,$03,$03,$03,$03,$03,$03,$04,$04,$04,$04
	dc.b $00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$02,$02,$02,$02,$02,$02
	dc.b $03,$03,$03,$03,$03,$03,$04,$04,$04,$04,$04,$04,$05,$05,$05,$05
	dc.b $00,$00,$00,$01,$01,$01,$01,$01,$02,$02,$02,$02,$02,$03,$03,$03
	dc.b $03,$03,$03,$04,$04,$04,$04,$04,$05,$05,$05,$05,$05,$06,$06,$06
	dc.b $00,$00,$00,$01,$01,$01,$01,$02,$02,$02,$02,$02,$03,$03,$03,$03
	dc.b $04,$04,$04,$04,$05,$05,$05,$05,$05,$06,$06,$06,$06,$07,$07,$07

;87ec
	dc.b $00,$00,$01,$01,$01,$01,$02,$02,$02,$02,$03,$03,$03,$03,$04,$04
	dc.b $04,$04,$05,$05,$05,$05,$06,$06,$06,$06,$07,$07,$07,$07,$08,$08
	dc.b $00,$00,$01,$01,$01,$01,$02,$02,$02,$03,$03,$03,$03,$04,$04,$04
	dc.b $05,$05,$05,$06,$06,$06,$06,$07,$07,$07,$08,$08,$08,$08,$09,$09	
	dc.b $00,$00,$01,$01,$01,$02,$02,$02,$03,$03,$03,$04,$04,$04,$05,$05
	dc.b $05,$05,$06,$06,$06,$07,$07,$07,$08,$08,$08,$09,$09,$09,$0a,$0a
	dc.b $00,$00,$01,$01,$01,$02,$02,$02,$03,$03,$04,$04,$04,$05,$05,$05
	dc.b $06,$06,$06,$07,$07,$07,$08,$08,$09,$09,$09,$0a,$0a,$0a,$0b,$0b
	dc.b $00,$00,$01,$01,$02,$02,$02,$03,$03,$03,$04,$04,$05,$05,$05,$06
	dc.b $06,$07,$07,$07,$08,$08,$09,$09,$09,$0a,$0a,$0a,$0b,$0b,$0c,$0c
	dc.b $00,$00,$01,$01,$02,$02,$03,$03,$03,$04,$04,$05,$05,$05,$06,$06
	dc.b $07,$07,$08,$08,$08,$09,$09,$0a,$0a,$0a,$0b,$0b,$0c,$0c,$0d,$0d
	dc.b $00,$00,$01,$01,$02,$02,$03,$03,$04,$04,$05,$05,$05,$06,$06,$07
	dc.b $07,$08,$08,$09,$09,$09,$0a,$0a,$0b,$0b,$0c,$0c,$0d,$0d,$0e,$0e
	dc.b $00,$00,$01,$01,$02,$02,$03,$03,$04,$04,$05,$05,$06,$06,$07,$07
	dc.b $08,$08,$09,$09,$0a,$0a,$0b,$0b,$0c,$0c,$0d,$0d,$0e,$0e,$0f,$0f

;88ec
	dc.b $00,$01,$01,$02,$02,$03,$03,$04,$04,$05,$05,$06,$06,$07,$07,$08
	dc.b $08,$09,$09,$0a,$0a,$0b,$0b,$0c,$0c,$0d,$0d,$0e,$0e,$0f,$0f,$10
	dc.b $00,$01,$01,$02,$02,$03,$03,$04,$04,$05,$05,$06,$07,$07,$08,$08
	dc.b $09,$09,$0a,$0a,$0b,$0c,$0c,$0d,$0d,$0e,$0e,$0f,$0f,$10,$10,$11
	dc.b $00,$01,$01,$02,$02,$03,$03,$04,$05,$05,$06,$06,$07,$08,$08,$09
	dc.b $09,$0a,$0a,$0b,$0c,$0c,$0d,$0d,$0e,$0f,$0f,$10,$10,$11,$11,$12
	dc.b $00,$01,$01,$02,$02,$03,$04,$04,$05,$06,$06,$07,$07,$08,$09,$09
	dc.b $0a,$0a,$0b,$0c,$0c,$0d,$0d,$0e,$0f,$0f,$10,$11,$11,$12,$12,$13
	dc.b $00,$01,$01,$02,$03,$03,$04,$05,$05,$06,$06,$07,$08,$08,$09,$0a
	dc.b $0a,$0b,$0c,$0c,$0d,$0e,$0e,$0f,$0f,$10,$11,$11,$12,$13,$13,$14
	dc.b $00,$01,$01,$02,$03,$03,$04,$05,$05,$06,$07,$07,$08,$09,$09,$0a
	dc.b $0b,$0c,$0c,$0d,$0e,$0e,$0f,$10,$10,$11,$12,$12,$13,$14,$14,$15
	dc.b $00,$01,$01,$02,$03,$04,$04,$05,$06,$06,$07,$08,$09,$09,$0a,$0b
	dc.b $0b,$0c,$0d,$0d,$0e,$0f,$10,$10,$11,$12,$12,$13,$14,$15,$15,$16
	dc.b $00,$01,$01,$02,$03,$04,$04,$05,$06,$07,$07,$08,$09,$0a,$0a,$0b
	dc.b $0c,$0d,$0d,$0e,$0f,$10,$10,$11,$12,$13,$13,$14,$15,$16,$16,$17

;89ec
	dc.b $00,$01,$02,$02,$03,$04,$05,$05,$06,$07,$08,$09,$09,$0a,$0b,$0c
	dc.b $0c,$0d,$0e,$0f,$0f,$10,$11,$12,$13,$13,$14,$15,$16,$16,$17,$18
	dc.b $00,$01,$02,$02,$03,$04,$05,$06,$06,$07,$08,$09,$0a,$0a,$0b,$0c
	dc.b $0d,$0e,$0f,$0f,$10,$11,$12,$13,$13,$14,$15,$16,$17,$17,$18,$19
	dc.b $00,$01,$02,$03,$03,$04,$05,$06,$07,$08,$08,$09,$0a,$0b,$0c,$0d
	dc.b $0d,$0e,$0f,$10,$11,$12,$12,$13,$14,$15,$16,$17,$17,$18,$19,$1a
	dc.b $00,$01,$02,$03,$03,$04,$05,$06,$07,$08,$09,$0a,$0a,$0b,$0c,$0d
	dc.b $0e,$0f,$10,$11,$11,$12,$13,$14,$15,$16,$17,$18,$18,$19,$1a,$1b
	dc.b $00,$01,$02,$03,$04,$05,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e
	dc.b $0e,$0f,$10,$11,$12,$13,$14,$15,$16,$17,$17,$18,$19,$1a,$1b,$1c
	dc.b $00,$01,$02,$03,$04,$05,$06,$07,$07,$08,$09,$0a,$0b,$0c,$0d,$0e
	dc.b $0f,$10,$11,$12,$13,$14,$15,$16,$16,$17,$18,$19,$1a,$1b,$1c,$1d
	dc.b $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f
	dc.b $0f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e
	dc.b $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f
	dc.b $10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f

fixramtable:
	dc.l loc_0eb66a,loc_0eb64a,loc_0eb6aa,loc_0eb68a
	dc.l loc_0eb6ca,loc_0eb6ea,loc_0eb70a,loc_0eb60a
	dc.l loc_0eb74a,loc_0eb76a,loc_0eb78a,loc_0eb7aa
	dc.l loc_0eb7ca,loc_0eb7ea,loc_0eb80a,loc_0eb62a
	dc.l $00000000

loc_008b30:
	dc.l $00000000

loc_008b34
	dc.l $00000000

;end of file
