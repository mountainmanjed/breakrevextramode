;===========================
; How To Play
;===========================
loc_010cae:
	jsr loc_010d66(pc)
	move.b #-2,d0
	movea.l #loc_011420,a0
	jsr loc_0040c2

	move.b #-1,d0
	movea.l #loc_011450,a0
	jsr loc_0040c2

	trap #5
	jsr loc_01147e(pc)

loc_010cd8:
	jsr loc_010e0a(pc)
	bne loc_010d60	

	move.b #-2,d0
	movea.l #loc_01128a,a0
	jsr loc_0040c2

	move.b #0,d0
	movea.l #loc_0112a8,a0
	jsr loc_0040c2

	move.b #0,d0
	movea.l #loc_0112f8,a0
	jsr loc_0040c2

	move.b #0,d0
	movea.l #loc_011356,a0
	jsr loc_0040c2

	move.b #1,d0
	movea.l #loc_011400,a0
	jsr loc_0040c2

	move.b #-2,d0
	movea.l #loc_011420,a0
	jsr loc_0040c2

	move.b #-1,d0
	movea.l #loc_011450,a0
	jsr loc_0040c2

	trap #5
	jsr loc_010dca(pc)
	cmpi.w #1,d0
	beq.b loc_010d60
	bra loc_010cd8

loc_010d60:
	jsr loc_010db8(pc)
	rts

;============================
loc_010d66:
	move.w #$22,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	lea ($27fa,a5),a6
	move.w #0,(-$4234,a5)
	move.w #$10,-(a7)
	move.l #loc_091fb8,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_010da0
	move.w #$f,(0,a6)
	bra.b loc_010da6
	
loc_010da0:
	move.w #$d,(0,a6)

loc_010da6:
	jsr loc_010dfe(pc)
	clr.w ($8,a6)
	clr.w ($a,a6)
	st (-$fa0,a5)
	rts

;============================
loc_010db8:
	move.w #0,(-$4234,a5)
	jsr loc_0071e0
	sf (-$fa0,a5)
	rts

;============================
loc_010dca:
	moveq #0,d0
	clr.w d1
	tst.w (0,a6)
	bmi.b loc_010dda
	subq.w #1,(0,a6)
	bra.b loc_010dfc

loc_010dda:
	btst #0,(-$f38,a5)
	beq.b loc_010de6
	or.b (-$53cd,a5),d1

loc_010de6:
	btst #1,(-$f38,a5)
	beq.b loc_010df2
	or.b (-$53cc,a5),d1

loc_010df2:
	andi.b #$f0,d1
	beq.b loc_010dfc
	move.w #1,d0

loc_010dfc:
	rts

;----------------------------
loc_010dfe:
	move.w #-1,(2,a6)
	clr.w (4,a6)
	rts

;============================
loc_010e0a:
	movem.l d7/a6,-(a7)
	tst.w (4,a6)
	bne.b loc_010e3c
	addq.w #1,(2,a6)
	move.w (2,a6),d0
	lsl.w #3,d0
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_010e2c
	move.w loc_010e62(pc,d0.w),d0
	bra.b loc_010e30

loc_010e2c:
	move.w loc_010e62+2(pc,d0.w),d0
	
loc_010e30:
	beq.b loc_010e58
	move.w d0,(4,a6)
	subq.w #1,d0
	move.w d0,(6,a6)

loc_010e3c:
	subq.w #1,(4,a6)
	bpl.b loc_010e48
	move.w #-1,($4,a6)

loc_010e48:
	move.w (2,a6),d0
	lsl.w #3,d0
	movea.l loc_010e62+4(pc,d0.w),a0
	jsr (a0)
	clr.w d0
	bra.b loc_010e5c

loc_010e58:
	move.w #-1,d0

loc_010e5c:
	movem.l (a7)+,d7/a6
	rts

;/\/\/\/\/\/\/\/\/\
;scripting
loc_010e62:
	dc.w $0001,$0001
	dc.l loc_011106
	dc.w $001d,$0018
	dc.l loc_01111a

	dc.w $0010,$0010
	dc.l loc_011144
	dc.w $001c,$0014
	dc.l loc_01112e

	dc.w $0012,$0012
	dc.l loc_011158
	dc.w $001c,$0014
	dc.l loc_01112e

	dc.w $0010,$0010
	dc.l loc_011144
	dc.w $001c,$0014
	dc.l loc_01112e

	dc.w $0012,$0012
	dc.l loc_011158
	dc.w $001c,$0014
	dc.l loc_01112e
;10eb2
	dc.w $001e,$0019
	dc.l loc_01111a
	dc.w $0010,$0010
	dc.l loc_011166

	dc.w $0025,$001d
	dc.l loc_01112e
	dc.w $0010,$0010
	dc.l loc_011166

	dc.w $0025,$001d
	dc.l loc_01112e
	dc.w $001e,$0019
	dc.l loc_01111a

	dc.w $002d,$0025
	dc.l loc_01117a
	dc.w $002d,$0025
	dc.l loc_01112e
;10ef2
	dc.w $002d,$0025
	dc.l loc_01117a
	dc.w $002d,$0025
	dc.l loc_01112e

	dc.w $0001,$0001
	dc.l loc_011106
	dc.w $0018,$0018
	dc.l loc_01113c

	dc.w $0005,$0001
	dc.l loc_01111a
	dc.w $0010,$0010
	dc.l loc_01118e

	dc.w $0025,$001d
	dc.l loc_01112e
	dc.w $0010,$0010
	dc.l loc_01118e
;10f32
	dc.w $0025,$001d
	dc.l loc_01112e
	dc.w $0001,$0001
	dc.l loc_011106

	dc.w $0008,$0008
	dc.l loc_01113c
	dc.w $0015,$0010
	dc.l loc_01111a

	dc.w $0010,$0010
	dc.l loc_0111a2
	dc.w $0025,$001d
	dc.l loc_01112e

	dc.w $0010,$0010
	dc.l loc_0111a2
	dc.w $0025,$001d
	dc.l loc_01112e
;10f72
	dc.w $0001,$0001
	dc.l loc_011106
	dc.w $0008,$0008
	dc.l loc_01113c

	dc.w $0015,$0010
	dc.l loc_01111a
	dc.w $0010,$0010
	dc.l loc_0111b6

	dc.w $0025,$001d
	dc.l loc_01112e
	dc.w $0010,$0010
	dc.l loc_0111b6

	dc.w $0025,$001d
	dc.l loc_01112e
	dc.w $0001,$0001
	dc.l loc_011106

;10fb2
	dc.w $0008,$0008
	dc.l loc_01113c
	dc.w $0015,$0010
	dc.l loc_01111a

	dc.w $0010,$0010
	dc.l loc_0111ca
	dc.w $0025,$001d
	dc.l loc_01112e

	dc.w $0010,$0010
	dc.l loc_0111ca
	dc.w $0025,$001d
	dc.l loc_01112e

	dc.w $0001,$0001
	dc.l loc_011106
	dc.w $0008,$0008
	dc.l loc_01113c
;10ff2
	dc.w $0015,$0010
	dc.l loc_01111a
	dc.w $0007,$0007
	dc.l loc_0111de
	dc.w $0007,$0007
	dc.l loc_0111f2
	dc.w $0010,$0010
	dc.l loc_011200
	dc.w $003c,$002d
	dc.l loc_01112e
	dc.w $0007,$0007
	dc.l loc_0111de
	dc.w $0007,$0007
	dc.l loc_0111f2
	dc.w $0010,$0010
	dc.l loc_011200

;11032
	dc.w $003c,$002d
	dc.l loc_01112e
	dc.w $0001,$0001
	dc.l loc_011106

	dc.w $0018,$0018
	dc.l loc_01113c
	dc.w $0005,$0001
	dc.l loc_01111a

	dc.w $0002,$0002
	dc.l loc_01120e
	dc.w $000e,$000e
	dc.l loc_01121c

	dc.w $004a,$003b
	dc.l loc_01112e
	dc.w $0002,$0002
	dc.l loc_01120e

;11072
	dc.w $000e,$000e
	dc.l loc_01121c
	dc.w $004a,$003b
	dc.l loc_01112e
	dc.w $0001,$0001
	dc.l loc_011106
	dc.w $0008,$0008
	dc.l loc_01113c
	dc.w $0015,$0010
	dc.l loc_01111a
	dc.w $0002,$0002
	dc.l loc_01122a
	dc.w $0002,$0002
	dc.l loc_011244
	dc.w $0056,$0047
	dc.l loc_01122a

;110b2
	dc.w $0002,$0002
	dc.l loc_01122a
	dc.w $0002,$0002
	dc.l loc_011244

	dc.w $0056,$0047
	dc.l loc_01122a
	dc.w $001e,$0019
	dc.l loc_01111a

	dc.w $0014,$0014
	dc.l loc_011258
	dc.w $0010,$0010
	dc.l loc_01126c

	dc.w $0090,$0072
	dc.l loc_01112e
	dc.w $0001,$0001
	dc.l loc_01127a
;110f2
	dc.w $0078,$0064
	dc.l loc_01112e
	dc.w $001e,$0019
	dc.l loc_01111a
	dc.l $00000000

;----------------------
loc_011106:
	move #-1,($c,a6)
	clr.b ($e,a6)
	clr.b (-$f9f,a5)
	clr.b (-$f9e,a5)
	rts

;----------------------
loc_01111a:
	move #-1,($c,a6)
	clr.b ($e,a6)
	clr.b (-$f9f,a5)
	clr.b (-$f9e,a5)
	rts

;-----------------------
loc_01112e:
	clr.b ($e,a6)
	clr.b (-$f9f,a5)
	clr.b (-$f9e,a5)
	rts

;-------------------------
loc_01113c:
	move.b #$4,(-$f9e,a5)
	rts

;-------------------------
loc_011144:
	move.w #0,($c,a6)
	move.b #8,($e,a6)
	move.b #8,(-$f9f,a5)
	rts

;-------------------------
loc_011158:
	move.b #4,($e,a6)
	move.b #4,(-$f9f,a5)
	rts

;--------------------------
loc_011166:
	move.w #1,($c,a6)
	move.b #1,($e,a6)
	move.b #1,(-$f9f,a5)
	rts

;---------------------------
loc_01117a:
	move.w #2,($c,a6)
	move.b #2,($e,a6)
	move.b #2,(-$f9f,a5)
	rts

;----------------------------
loc_01118e:
	move.w #3,($c,a6)
	move.b #$10,($e,a6)
	move.b #$10,(-$f9f,a5)
	rts

;----------------------------
loc_0111a2:
	move.w #4,($c,a6)
	move.b #$20,($e,a6)
	move.b #$20,(-$f9f,a5)
	rts

;------------------------------
loc_0111b6:
	move.w #5,($c,a6)
	move.b #$40,($e,a6)
	move.b #$40,(-$f9f,a5)
	rts

;------------------------------
loc_0111ca:
	move.w #6,($c,a6)
	move.b #$80,($e,a6)
	move.b #$80,(-$f9f,a5)
	rts

;------------------------------
loc_0111de:
	move.w #7,($c,a6)
	move.b #2,($e,a6)
	move.b #2,(-$f9f,a5)
	rts

;------------------------------
loc_0111f2:
	move.b #$a,($e,a6)
	move.b #$a,(-$f9f,a5)
	rts

;------------------------------
loc_011200:
	move.b #$48,($e,a6)
	move.b #$48,(-$f9f,a5)
	rts

;------------------------------
loc_01120e:
	move.w #$8,($c,a6)
	move.b #$10,(-$f9e,a5)
	rts

;------------------------------
loc_01121c:
	move.b #$4,($e,a6)
	move.b #$4,(-$f9f,a5)
	rts

;------------------------------
loc_01122a:
	move.w #9,($c,a6)
	move.b #6,($e,a6)
	move.b #6,(-$f9f,a5)
	move.b #2,(-$f9e,a5)
	rts

;-----------------------------
loc_011244:
	move.b #6,($e,a6)
	move.b #6,(-$f9f,a5)
	move.b #$22,(-$f9e,a5)
	rts

;----------------------------
loc_011258:
	move.w #$a,($c,a6)
	move.b #8,($e,a6)
	move.b #8,(-$f9f,a5)
	rts

;--------------------
loc_01126c:
	move.b #$48,($e,a6)
	move.b #$48,(-$f9f,a5)
	rts

;------------------------
loc_01127a:
	move.w #$b,($c,a6)
	clr.b ($e,a6)
	clr.b (-$f9f,a5)
	rts

;--------------------
loc_01128a:
	movea.l loc_091fdc,a0
	move.w #$a0,d0
	move.w #$18,d1
	move.w #$1300,d2
	moveq #0,d4
	moveq #0,d5
	jsr loc_0041d8
	rts

;==========================
loc_0112a8:
	lea ($27fa,a5),a6
	move.w ($c,a6),d0
	cmpi.w #$b,d0
	bhi.b loc_0112f6
	cmpi.w #1,(-$7f94,a5)
	bne.b loc_0112ca
	addi.w #$22,d0
	move.w #$1600,d2
	moveq #-1,d6
	bra.b loc_0112d4

loc_0112ca:
	addi.w #$2e,d0
	move.w #$1700,d2
	moveq #0,d6

loc_0112d4:
	add.w d0,d0
	add.w d0,d0
	lea loc_091fdc,a4
	movea.l (a4,d0.w),a0
	move.w #$a0,d0	
	move.w #$a0,d1
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	jsr loc_005638

loc_0112f6:
	rts

;==========================
loc_0112f8:
	lea ($27fa,a5),a6
	move.b ($e,a6),d0
	andi.b #$f,d0
	bne.b loc_01130a
	moveq #0,d7
	bra.b loc_01130c

loc_01130a:
	moveq #1,d7

loc_01130c:
	lea loc_091fdc,a4
	ext.w d0
	move.b loc_011346(pc,d0.w),d0
	add.w d0,d0
	add.w d0,d0
	ext.l d0
	adda.l d0,a4
	move.w #$a0,d0
	move.w #$c8,d1
	move.w #$1100,d2
	moveq #0,d4
	moveq #0,d5

loc_011330:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_011330
	rts

;/\/\/\/\/\/\/\
loc_011346:
	dc.b $05,$12,$0a,$00,$0e,$10,$0c,$00
	dc.b $06,$14,$08,$00,$00,$00,$00,$00

;=========================
loc_011356:
	lea ($27fa,a5),a6
	move.b ($e,a6),d0
	lsr.b #4,d0
	movem.w d0,-(a7)
	moveq #$3,d7

loc_011366:
	movem.w d7,-(a7)
	subq.w #3,d7
	neg.w d7
	lsr.w #1,d0
	bcc.b loc_01137e
	movem.w d0,-(a7)
	jsr loc_0113c8(pc)
	movem.w (a7)+,d0

loc_01137e:	
	movem.w (a7)+,d7
	dbra d7,loc_011366
	movem.w (a7)+,d0
	moveq #3,d7

loc_01138c:
	movem.w d7,-(a7)
	subq.w #3,d7
	neg.w d7
	lsr.w #1,d0
	bcs.b loc_0113a4
	movem.w d0,-(a7)
	jsr loc_0113ae(pc)
	movem.w (a7)+,d0

loc_0113a4:
	movem.w (a7)+,d7	
	dbra d7,loc_01138c
	rts

;---------------------
loc_0113ae:
	lea loc_091fdc,a4
	addi.w #$16,d7
	add.w d7,d7
	add.w d7,d7
	ext.l d7
	adda.l d7,a4
	movea.l (a4),a0
	move.w #$1100,d2
	bra.b loc_0113ec

;|||||||||||||||||||||
loc_0113c8:
	lea loc_091fdc,a4
	add.w d7,d7
	addi.w #$1a,d7
	add.w d7,d7
	add.w d7,d7
	ext.l d7
	adda.l d7,a4
	movea.l (a4)+,a0
	move.w #$1000,d2
	jsr loc_0113ec(pc)
	movea.l (a4),a0
	move.w #$1200,d2

loc_0113ec:
	move.w #$a0,d0
	move.w #$c8,d1
	moveq #0,d4
	moveq #0,d5
	jsr loc_0041d8
	rts

;==========================
loc_011400:
	lea loc_091fec,a4
	movea.l (a4),a0
	move.w #$a0,d0
	move.w #$c8,d1
	move.w #$1000,d2
	moveq #0,d4
	moveq #0,d5
	jsr loc_0041d8
	rts

loc_011420:
	lea loc_091fe0,a4
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$1500,d2
	moveq #0,d4
	moveq #0,d5
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/a4
	movea.l (a4),a0
	jsr loc_0041d8
	rts

loc_011450:
	lea ($27fa,a5),a6
	lea loc_091fe8,a4
	movea.l (a4),a0
	movea.l a0,a1
	movea.l a0,a2
	movea.l a0,a3
	move.w ($8,a6),d0
	move.w ($a,a6),d1
	move.w #$1400,d2
	jsr loc_005844
	addq.w #1,($8,a6)
	subq.w #1,($a,a6)	
	rts

loc_01147e:
	clr.w -(a7)
	move.w #$1,-(a7)
	move.w #$fa1,-(a7)
	move.w #$10,-(a7)
	jsr loc_007718
	lea (8,a7),a7
	rts

;011498
