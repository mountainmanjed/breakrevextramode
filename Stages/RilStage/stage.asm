;===================;
; 0xB812 Rila Stage ;
;===================;
RilStage:
	bset #$6,(2,a4)
	move.l #$308000,($8,a4)
	move.w #$fe98,($c,a4)
	move.w #$48,($e,a4)
	move.w #$0,($10,a4)
	move.w #$280,($12,a4)
	move.w #$140,($14,a4)
	move.w #$ffd4,($16,a4)
	clr.w ($18,a4)
	clr.w ($1a,a4)
	move.w #$0,($1c,a4)
	move.w #$0,($1e,a4)
	move.w #$fe98,($20,a4)
	move.w #$48,($22,a4)
	move.w #$0,($24,a4)
	move.w #$280,($26,a4)
	move.w #$140,($28,a4)
	move.w #$ffd4,($2a,a4)
	move.w ($0,a4),($2c,a4)
;b882
	lea (-$44f6,a5),a0
	move.w ($10,a4),($0,a0)
	move.w #$8000,($2,a0)
	move.w ($c,a4),($4,a0)
	move.w #$8000,($6,a0)
	move.w ($1c,a4),($8,a0)
	move.w #$41,($a,a0)
	move.w #$28,($c,a0)
	move.l #loc_28822a,($e,a0)
	st ($13,a0)
	st ($12,a0)
;b8c0
	lea (-$44d6,a5),a0
	move.w #$21,($a,a0)
	move.w #$20,($c,a0)
	move.l #loc_288256,($e,a0);
	st ($13,a0)
	st ($12,a0)
;b8e0
	lea (-$44b6,a5),a0
	move.w #$1,($a,a0)
	move.w #$20,($c,a0)
	move.l #loc_2882de,($e,a0);
	st ($13,a0)
	st ($12,a0)
;b900
	move.w #$6f,d0
	jsr loc_00926c
	move.w #$16a,d0
	jsr loc_009284
	jsr loc_0071e0
	move.w #$10,-(a7)
	move.l #loc_096628,-(a7)
	jsr loc_007554
	lea ($6,a7),a7
	move.w #$5f,-(a7)
	move.l #loc_00c022,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	bsr loc_009eb6
	bsr loc_0092dc
;b94a
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$5,-(a7)
	move.w #$171,-(a7)
	move.l #loc_00bc82,-(a7)
	move.w #$0,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;b96a
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$3,-(a7)
	move.w #$16e,-(a7)
	move.l #loc_00bc94,-(a7)
	move.w #$4,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;b98a
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$4,-(a7)
	move.w #$16a,-(a7)
	move.l #loc_00bca6,-(a7)
	move.w #$5,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;b9aa
	move.w #$600,$3c0006.l
	lea p1ma5(a5),a1
	lea p2ma5(a5),a2

loc_00b9ba:
	bsr loc_0096aa
	move.w #$100,d4
	move.w #$8c,d5
	move.w #$2,d1
	move.w #$2,d6
	move.w #$2,d7
	lea (-$44d6,a5),a0
	bsr loc_009afc
;b9da
	move.w #$f0,d4
	move.w #$dc,d5
	move.w #$3,d1
	move.w #$3,d6
	move.w #$3,d7
	lea (-$44b6,a5),a0
	bsr loc_009afc
	bsr loc_00ba12
	movem.l a1/a2/a3/a4,-(a7)
	jsr loc_0061c0
	movem.l (a7)+,a1/a2/a3/a4
	bsr loc_00935c
	bsr loc_0092dc
	bra.b loc_00b9ba

loc_00ba12:
	move.w ($1c,a4),d5
	move.w #$60,d2
	move.w #$ff80,d3
	bsr loc_00bafe
	move.w #$0,d0
	mulu.w #$1c,d0
;ba2a
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$4,d0
	mulu.w #$1c,d0
;ba46
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$5,d0
	mulu.w #$1c,d0
;ba62
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	bsr loc_00bb24
	swap d2
	swap d3
	bsr loc_00bafe
	move.w #$1,d0
	mulu.w #$1c,d0
;ba8a
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$1a0,d2
	move.w #$20,d3
	bsr loc_00baf0
	move.w #$2,d0
	mulu.w #$1c,d0
;bab2
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$1e0,d2
	move.w #$20,d3
	bsr loc_00baf0
	move.w #$3,d0
	mulu.w #$1c,d0
;bada
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	rts		

loc_00baf0:
	sub.w ($10,a4),d2
	sub.w ($c,a4),d3
	bsr loc_009b60
	rts

loc_00bafe:
	move.w ($10,a4),d0
	sub.w ($24,a4),d0
	asr.w #1,d0
	sub.w d0,d2
	move.w ($16,a4),d0
	sub.w ($2a,a4),d0
	asr.w #1,d0
	sub.w d0,d3
	sub.w ($10,a4),d2
	sub.w ($c,a4),d3
	bsr loc_009b60
	rts

loc_00bb24:
	tst.b (1,a3)
	beq loc_00bb54
	cmpi.b #$0,(0,a3)
	beq loc_00bb64
	cmpi.b #$1,(0,a3)
	beq loc_00bba4
	cmpi.b #$2,(0,a3)
	beq loc_00bbca
	cmpi.b #$3,(0,a3)
	beq loc_00bc60

loc_00bb54:
	st (1,a3)
	move.b #$0,(0,a3)
	move.w #$3c,(4,a3)

loc_00bb64:
	tst.w (4,a3)
	bmi loc_00bb98
	move.w (4,a3),d0
	move.w d0,d2
	addq.w #1,d2
	mulu.w d0,d2
	move.l d2,d3
	asl.l #8,d2
	asl.l #4,d2
	neg.l d2
	addi.l #$600000,d2
	asl.l #8,d3
	asl.l #3,d3
	neg.l d3
	addi.l #-$900000,d3
	subq.w #1,(4,a3)
	bra loc_00bc80

loc_00bb98:
	move.b #$1,(0,a3)
	move.w #$144,(4,a3)

loc_00bba4:
	move.l #$600000,d2
	move.l #$ff700000,d3
	tst.w (4,a3)
	bmi.w loc_00bbc0
	subq.w #1,(4,a3)
	bra.w loc_00bc80

loc_00bbc0:
	move.b #$2,(0,a3)
	clr.w (4,a3)

loc_00bbca:
	move.w (4,a3),d0
	move.w d0,d2
	addq.w #1,d2
	mulu.w d0,d2
	asl.l #8,d2
	asl.l #4,d2
	addi.l #$600000,d2
;bbde
	swap d0
	clr.w d0
	add.l d0,d0
	add.l d0,d3
	move.w (4,a3),d0
	add.w d0,d0
	move.w d0,d3
	addq.w #1,d3
	mulu.w d0,d3
	asl.l #8,d3
	asl.l #2,d3
	neg.l d3
	addi.l #-$900000,d3
;bbfe
	swap d0
	clr.w d0
	add.l d0,d3
	move.l d2,d0
	swap d0
	move.w d0,d1
	subi.w #$38,d0
	cmp.w ($12,a4),d0
	bge loc_00bc48
	addi.w #$38,d1
	cmp.w ($10,a4),d1
	blt loc_00bc48
	move.l d3,d0
;bc24
	swap d0
	move.w d0,d1
	subi.w #$30,d0
	cmp.w ($e,a4),d0
	bge loc_00bc48
	addi.w #$30,d1
 	cmp.w ($c,a4),d1
	blt loc_00bc48
	addq.w #1,(4,a3)
	bra loc_00bc80

loc_00bc48:
	move.b #3,(0,a3)
	jsr RandomNumberGod
	andi.w #$7f,d0
	addi.w #$3c,d0
	move.w d0,(4,a3)

loc_00bc60:
	move.l #$ffc00000,d2
	move.l #$ff700000,d3
	tst.w (4,a3)
	bmi loc_00bc7c
	subq.w #1,(4,a3)
	bra loc_00bc80

loc_00bc7c:
	sf (1,a3)

loc_00bc80:
	rts

;Sprite Data
loc_00bc82:
	dc.l $03e71364,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00bc82

loc_00bc94:
	dc.l $03e7135b,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00bc94

loc_00bca6:
	dc.l $03e7135c,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00bca6

loc_00bcb8:
	dc.l $00021360,$00001000,$00031361,$00001000
	dc.l $00041362,$00001000,$0003135f,$00001000
	dc.l $00051360,$00001000,$0004135f,$00001000
	dc.l $000c135e,$00001000,$0006135f,$00001000
	dc.l $0008135e,$00001000,$005a135d,$00001000
	dc.l $000a135e,$00001000,$00061361,$00001000
	dc.l $0010135f,$00001000,$00081360,$00001000
	dc.l $0006135f,$00001000,$0004135e,$00001000
	dc.l $003c135d,$00001000,$0004135e,$00001000
	dc.l $00081361,$00001000,$0004135f,$00001000
	dc.l $000c1363,$00001000,$00031360,$00001000
	dc.l $000a135f,$00001000,$00061363,$00001000
	dc.l $00031360,$00001000,$0005135f,$00001000
	dc.l $00041363,$00001000,$00031360,$00001000
	dc.l $0004135f,$00001000,$00041363,$00001000
	dc.l $00021360,$00001000,$0003135f,$00001000
	dc.l $0067135e,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00bcb8

loc_00bdca:
	dc.l $00051363,$00001000,$0021360,$00001000
	dc.l $00031362,$00001000,$004135f,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00bdca

loc_00bdf4:
	dc.l $00040000,$00000000
	dc.w $8000
	dc.l loc_0094fa,loc_00bdf4

loc_00be06:
	dc.l $003c134d,$00001000,$0001134e,$00001000
	dc.l $0002134f,$00001000,$00031350,$00001000
	dc.l $00061351,$00001000,$00031350,$00001000
	dc.l $0002134f,$00001000,$0001134e,$00001000
	dc.l $003c134d,$00001000,$0003134e,$00001000
	dc.l $000a134f,$00001000,$0003134e,$00001000
	dc.l $000e134d,$00001000,$0003134e,$00001000
	dc.l $000a134f,$00001000,$0003134e,$00001000
	dc.l $001a134d,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00be06

loc_00be98:
	dc.l $00281348,$00001001,$00011349,$00001001
	dc.l $0002134a,$00001001,$0003134b,$00001001
	dc.l $0006134c,$00001001,$0003134b,$00001001
	dc.l $0002134a,$00001001,$00011349,$00001001
	dc.l $00041348,$00001001,$00011349,$00001001
	dc.l $0002134a,$00001001,$0003134b,$00001001
	dc.l $0006134c,$00001001,$0003134b,$00001001
	dc.l $0002134a,$00001001,$00011349,$00001001
	dc.l $00021348,$00001001,$00011349,$00001001
	dc.l $0002134a,$00001001,$0003134b,$00001001
	dc.l $0006134c,$00001001,$0003134b,$00001001
	dc.l $0002134a,$00001001,$00011349,$00001001
	dc.l $00041348,$00001001,$00011349,$00001001
	dc.l $0002134a,$00001001,$0003134b,$00001001
	dc.l $0006134c,$00001001,$0003134b,$00001001
	dc.l $0002134a,$00001001,$00011349,$00001001
	dc.l $001e1348,$00001001,$000c1349,$00001001
	dc.l $00081348,$00001001,$000c1349,$00001001
	dc.l $00281348,$00001001,$00031349,$00001001
	dc.l $000a134a,$00001001,$00031349,$00001001
	dc.l $00041348,$00001001,$00011349,$00001001
	dc.l $0002134a,$00001001,$0003134b,$00001001		
	dc.l $0006134c,$00001001,$0003134b,$00001001
	dc.l $0002134a,$00001001,$00011349,$00001001
	dc.w $8000
	dc.l loc_0094fa,loc_00be98
	
loc_00c022:
	dc.w $0000,$1222,$1222,$1222,$1222,$1222,$1222,$1222
	dc.w $1222,$1222,$1222,$1222,$1222,$1222,$1222,$1222

;End 0xC042
