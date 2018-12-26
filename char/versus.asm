;Versus Screen
loc_011498:
	jsr loc_011546(pc)
	jsr loc_011b68(pc)
	trap #5

	move.w #-1,-(a7)
	move.w #$60,-(a7)
	move.l #loc_0b6cfe,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7

	move.w #-1,-(a7)
	move.w #$61,-(a7)
	move.l #loc_0b6cfe,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7

	clr.w ($1e,a6)
	move.w ($e,a6),d7


loc_0114da:
	lea loc_011702(pc),a0
	jsr loc_0116aa(pc)
	bne.b loc_011532
	jsr loc_011856(pc)
	cmpi.b #2,($15,a6)
	bne.b loc_0114f2
	nop

loc_0114f2:
	jsr loc_011a4c(pc);P1 Nametag
	jsr loc_011aa4(pc);P2 Nametag
	jsr loc_0119b4(pc);P1 Portrait
	jsr loc_011a02(pc);P2 Portrait
	cmpi.b #3,($15,a6)
	bne.b loc_01150c
	nop

loc_01150c:
	jsr loc_011b68(pc)
	trap #5
	jsr loc_011c06(pc)
	cmpi.w #$1,d0
	bne.b loc_01152e
	clr.w (2,a6)
	move.w #8,(0,a6)
	jsr loc_0117e0(pc)
	st ($17,a6)

loc_01152e:
	dbra d7,loc_0114da
	
loc_011532:
	move.w #$1f,d7

loc_011536:
	jsr loc_011b92(pc)
	trap #5
	dbra d7,loc_011536
	jsr loc_011690(pc)
	trap #3

;||||||||||||||||||||
loc_011546:
;Play Song
	move.w #$24,-(a7)
	jsr loc_006fec

	addq.l #2,a7
	lea ($27fa,a5),a6
	jsr loc_0115b8(pc)
	move.w #$7fff,(-$4234,a5)
	move.w #$60,-(a7)
	move.l #loc_0920c4,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	jsr loc_011622(pc)
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_01158e
	move.w #$93,($e,a6)	
	move.w #$f,($10,a6)
	bra.b loc_01159a

loc_01158e:
	move.w #$75,($e,a6)
	move.w #$d,($10,a6)

loc_01159a:
	jsr loc_01169e(pc)
	clr.w ($12,a6)
	sf ($14,a6)
	sf ($15,a6)
	sf ($16,a6)
	sf ($17,a6)
	sf (-$f9c,a5)
	rts
	
;---------------------------
loc_0115b8:
	lea p1ma5(a5),a4
	lea p2ma5(a5),a3
	move.w plcharid(a4),d0
	move.w plpalid(a4),d1
	move.w plcharid(a3),d2
	move.w plpalid(a3),d3
	andi.w #$f,d0
	cmpi.w #9,d0
	ble.b loc_0115dc
	clr.w d0	

loc_0115dc:
	andi.w #$f,d2
	cmpi.w #9,d2
	ble.b loc_0115e8
	clr.w d2

loc_0115e8:
	andi.w #$7,d1
	cmpi.w #0,d1
	bge.b loc_0115f4
	moveq #$0,d1

loc_0115f4:
	cmpi.w #4,d1
	ble.b loc_0115fc
	moveq #$4,d1

loc_0115fc:
	andi.w #$7,d3
	cmpi.w #0,d3
	bge.b loc_011608
	moveq #$0,d3

loc_011608:
	cmpi.w #4,d3
	ble.b loc_011610
	moveq #$4,d3

loc_011610:
	move.w d0,($6,a6)
	move.w d1,($8,a6)
	move.w d2,($a,a6)
	move.w d3,($c,a6)
	rts

;---------------------------;
;Load Palettes for Portraits;
;---------------------------;
loc_011622:
	move.w #$6a,-(a7)
	move.l #loc_0b6d3e,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	lea loc_0b6d5e,a0
	move.w (6,a6),d0
	move.w (8,a6),d1
	add.w d0,d0
	add.w d0,d0
	add.w d1,d1
	add.w d1,d1
	movea.l (a0,d0.w),a0
	move.w #$6b,-(a7)
	move.l (a0,d1.w),-(a7)
	jsr loc_007554
	lea (6,a7),a7
	
	lea loc_0b6d5e,a0
	move.w ($a,a6),d0
	move.w ($c,a6),d1
	add.w d0,d0
	add.w d0,d0
	add.w d1,d1
	add.w d1,d1
	movea.l (a0,d0.w),a0
	move.w #$8e,-(a7)
	move.l (a0,d1.w),-(a7)
	jsr loc_007554
	lea (6,a7),a7
	rts

;===========================
loc_011690:
	move.w #0,(-$4234,a5)
	jsr loc_0071e0
	rts

;----------------------------
loc_01169e:
	move.w #-1,(0,a6)
	clr.w 2(a6)
	rts

;----------------------------
loc_0116aa:
	movem.l d7/a6,-(a7)
	tst.w (2,a6)
	bne.b loc_0116dc
	addq.w #1,(0,a6)
	move.w (0,a6),d0
	lsl.w #3,d0
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_0116cc
	move.w (a0,d0.w),d0
	bra.b loc_0116d0

loc_0116cc:
	move.w 2(a0,d0.w),d0

loc_0116d0:
	beq.b loc_0116f8
	move.w d0,(2,a6)
	subq.w #1,d0
	move.w d0,(4,a6)

loc_0116dc:
	subq.w #1,(2,a6)
	bpl.b loc_0116e8
	move.w #-1,(2,a6)

loc_0116e8:
	move.w (0,a6),d0
	lsl.w #3,d0
	movea.l 4(a0,d0.w),a0
	jsr (a0)
	clr.w d0
	bra.b loc_0116fc

loc_0116f8:
	move.w #-1,d0

loc_0116fc:
	movem.l (a7)+,d7/a6
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_011702:
	dc.w $0008,$0006
	dc.l loc_011756
	dc.w $0003,$0002
	dc.l loc_011758

	dc.w $000a,$0007
	dc.l loc_011764
	dc.w $0003,$0002
	dc.l loc_01175e

	dc.w $000a,$0007
	dc.l loc_01176c
	dc.w $0010,$000d
	dc.l loc_011774

	dc.w $0002,$0002
	dc.l loc_0117b8
	dc.w $0001,$0001
	dc.l loc_0117c4

	dc.w $0057,$0046
	dc.l loc_011756
	dc.w $0008,$0008
	dc.l loc_0117cc

	dc.l $00000000

;---------------------
loc_011756:
	rts

loc_011758:
	st ($12,a6)
	rts

loc_01175e:
	st ($13,a6)
	rts

loc_011764:
	move.b #1,($12,a6)
	rts

loc_01176c:
	move.b #1,($13,a6)
	rts

loc_011774:;Palette Effect
	move.b #1,($15,a6)
	move.w #1,-(a7)
	move.w #$61,-(a7)
	move.l #loc_0b6d1e,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7
	move.w (4,a6),d0
	move.w d0,d1
	sub.w (2,a6),d0
	lsl.w #2,d0
	mulu.w d0,d0
	mulu.w d1,d1	
	mulu.w #$d0,d0
	divu.w d1,d0
	addq.w #8,d0
	lsr #4,d0
	subi.w #$d0,d0
	neg.w d0
	move.w d0,($18,a6)
	rts

loc_0117b8:
	move.b #2,($15,a6)
	st ($14,a6)
	rts

loc_0117c4:
	move.b #3,($15,a6)
	rts

loc_0117cc:
	st ($17,a6)
	addq.b #2,($16,a6)
	cmpi.b #$f,($16,a6)
	scc (-$f9c,a5)
	rts

;============================
loc_0117e0:
	movem.l d7/a6,-(a7)
	move.b #1,($12,a6)
	move.b #1,($13,a6)
	st ($14,a6)
	move.b #3,($15,a6)
	movem.l (a7)+,d7/a6
	rts

;================================;
;Breakers VS Splash Unused in Rev;
;================================;
loc_011800:
	movem.l d7/a6,-(a7)
	move.b ($16,a6),d6
	beq.b loc_011850
	lea loc_092784,a4
	move.b d6,d0
	ext.w d0
	addi.w #-1,d0
	add.w d0,d0
	add.w d0,d0
	ext.l d0
	adda.l d0,a4
	move.w #$a0,d0
	move.w #$70,d1	
	move.w #$6a00,d2
	moveq #$0,d4
	moveq #$0,d5
	movea.l (a4),a0
	movem.l d0/d1/d4/d5/d6/a0,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d4/d5/d6/a0
	cmpi.b #8,d6
	bls.b loc_011850
	move.w #$6a01,d2
	jsr loc_0041d8


loc_011850:
	movem.l (a7)+,d7/a6
	rts

;----------------------------
loc_011856:
	movem.l d7/a6,-(a7)
	tst.b (-$f9c,a5)
	bne.b loc_0118da
	move.b ($15,a6),d6
	beq.b loc_0118da
	cmpi.b #1,d6
	bne.b loc_01187c
	lea loc_092568,a4
	move.w ($18,a6),d0
	addi.w #$a0,d0
	bra.b loc_01188a

loc_01187c:
	lea loc_092570,a4
	move.w #$a0,d0
	clr.w ($1e,a6)

loc_01188a:
	cmpi.b #$2,d6
	bne.b loc_011896
	move.w #$6500,d2
	bra.b loc_01189a

loc_011896:
	move.w #$6200,d2

loc_01189a:
	move.w #$70,d1
	moveq #0,d4
	moveq #0,d5
	movea.l (a4)+,a0
	tst.w ($1e,a6)
	bne loc_0118ba	
	movem.l d1/d2/d3/d4/d5/d6/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d1/d2/d3/d4/d5/d6/a4

loc_0118ba:
	cmpi.b #1,d6
	bne.b loc_0118da
	move.w ($18,a6),d0
	neg.w d0
	addi.w #$a0,d0
	movea.l (a4),a0
	tst.w ($1e,a6)
	beq loc_0118da
	jsr loc_0041d8

loc_0118da:
	movem.l (a7)+,d7/a6
	eori.w #1,($1e,a6)
	rts

;----------------------------
;Unused Splash
;----------------------------
loc_0118e6:
	movem.l d7/a6,-(a7)
	tst.b (-$f9c,a5)
	bne.b loc_011922
	move.b ($15,a6),d6
	beq.b loc_011922
	cmpi.b #2,d6
	bne.b loc_011904
	lea loc_09257c,a4
	bra.b loc_01190a

loc_011904:
	lea loc_092578,a4

loc_01190a:
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$6300,d2
	moveq #0,d4
	moveq #0,d5
	movea.l (a4),a0
	jsr loc_0041d8
	
loc_011922:
	movem.l (a7)+,d7/a6
	rts

;--------------------;
;p1 portrait gfx load;
;--------------------;
loc_011928:
	movem.l d7,-(a7)
	clr.w ($1c,a6)
	move.w #4,d7
	
loc_011934:
	movem.l d0,-(a7)
	movea.l #loc_092690,a1
	move.w ($1a,a6),d0
	lsl.w #2,d0
	movea.l (a1,d0.w),a1
	adda.w ($1c,a6),a1
	movea.l (a1),a0
	addq.w #4,($1c,a6)
	movem.l (a7)+,d0
	movem.l d0-d7/a0-a2,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0-d7/a0-a2
	dbra d7,loc_011934
	movem.l (a7)+,d7
	rts

;--------------------;
;p2 portrait gfx load;
;--------------------;
loc_01196e:
	movem.l d7,-(a7)
	clr.w ($1c,a6)
	move.w #4,d7
	
loc_01197a:
	movem.l d0,-(a7)
	movea.l #loc_092690,a1
	move.w ($1a,a6),d0
	lsl.w #2,d0
	movea.l (a1,d0.w),a1
	adda.w ($1c,a6),a1
	movea.l (a1),a0
	addq.w #4,($1c,a6)
	movem.l (a7)+,d0
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2,-(a7)
	jsr loc_004848
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2
	dbra d7,loc_01197a
	movem.l (a7)+,d7
	rts

;-----------------------------
loc_0119b4:
	movem.l d7/a6,-(a7)
	tst.b (-$f9c,a5)
	bne.b loc_0119fc
	move.b ($12,a6),d6
	beq.b loc_0119fc
	bmi.b loc_0119cc
	move.w #$6b,d2
	bra.b loc_0119d0

loc_0119cc:
	move.w #$6a,d2

loc_0119d0:
	lsl.w #8,d2
	ori.w #1,d2
	move.w #$50,d0
	move.w #$70,d1
	moveq #0,d3	
	moveq #0,d4
	moveq #0,d5
	move.w (6,a6),($1a,a6)
	tst.b d6
	bmi.b loc_0119f6
	jsr loc_011928
	bra.b loc_0119fc

loc_0119f6:
	jsr loc_01196e

loc_0119fc:
	movem.l (a7)+,d7/a6
	rts

;----------------------
loc_011a02:
	movem.l d7/a6,-(a7)
	tst.b (-$f9c,a5)
	bne.b loc_011a46
	move.b ($13,a6),d6
	beq.b loc_011a46
	bmi.b loc_011a1a
	move.w #$8e,d2
	bra.b loc_011a1e

loc_011a1a:
	move.w #$6a,d2

loc_011a1e:
	lsl.w #8,d2
	move.w #$f0,d0
	move.w #$70,d1
	moveq #0,d3	
	moveq #0,d4
	moveq #0,d5
	move.w ($a,a6),($1a,a6)
	tst.b d6
	bmi.b loc_011a40
	jsr loc_011928
	bra.b loc_011a46

loc_011a40:
	jsr loc_01196e

loc_011a46:
	movem.l (a7)+,d7/a6
	rts

;-----------------;
;   P1 Name Tag   ;
;-----------------;
loc_011a4c:
	movem.l d7/a6,-(a7)
	tst.b (-$f9c,a5)
	bne.b loc_011a9e
	tst.b ($14,a6)
	beq.b loc_011a9e
	move.w #0,d1
	move.w ($6,a6),d0
	cmp.w ($a,a6),d0 ;character compare
	bne.b loc_011a76
	cmpi.b #$2,(-$f38,a5);AI Compare
	bne.b loc_011a76
	move.w #$a,d1

loc_011a76:
	lea loc_09263c,a1
	add.w d1,d0
	add.w d0,d0
	add.w d0,d0 
	ext.l d0
	adda.l d0,a1
	move.w #$50,d0
	move.w #$d0,d1
	move.w #$6400,d2
	moveq #0,d4
	moveq #0,d5
	movea.l (a1),a0
	jsr loc_0041d8

loc_011a9e:
	movem.l (a7)+,d7/a6
	rts

;-----------------;
;   P2 Name Tag   ;
;-----------------;	
loc_011aa4:
	movem.l d7/a6,-(a7)
	tst.b (-$f9c,a5)
	bne.b loc_011af6
	tst.b ($14,a6)
	beq.b loc_011af6
	move.w #0,d1
	move.w ($a,a6),d0
	cmp.w ($6,a6),d0 ;character compare
	bne.b loc_011ace
	cmpi.b #$1,(-$f38,a5);AI Compare
	bne.b loc_011ace
	move.w #$a,d1

loc_011ace:
	lea loc_09263c,a1
	add.w d1,d0
	add.w d0,d0
	add.w d0,d0 
	ext.l d0
	adda.l d0,a1
	move.w #$f0,d0
	move.w #$d0,d1
	move.w #$6400,d2
	moveq #0,d4
	moveq #0,d5
	movea.l (a1),a0
	jsr loc_0041d8

loc_011af6:
	movem.l (a7)+,d7/a6
	rts

;-------------------------------------------
;Unused Transparent Blocks for Old portriats
;-------------------------------------------
loc_011afc:
	movem.l d7/a6,-(a7)
	tst.b (-$f9c,a5)
	bne.b loc_011b62
	move.w #$ffd0,d1
	btst #0,d7
	beq.b loc_011b16
	move.w #$80,d3
	bra.b loc_011b1a

loc_011b16:
	move.w #$88,d3

loc_011b1a:
	move.w #$70,d4
	move.w #$a0,d5
	tst.b ($12,a6)
	beq.b loc_011b46
	bmi.b loc_011b30
	move.w #$6800,d2
	bra.b loc_011b34

loc_011b30:
	move.w #$6a00,d2

loc_011b34:
	move.w #$18,d0
	movem.l d1/d3/d4/d5,-(a7)
	jsr loc_00501a
	movem.l (a7)+,d1/d3/d4/d5

loc_011b46:
	tst.b ($13,a6)
	beq.b loc_011b62
	bmi.b loc_011b54
	move.w #$6900,d2
	bra.b loc_011b58

loc_011b54:
	move.w #$6a00,d2

loc_011b58:
	move.w #$b8,d0
	jsr loc_00501a
	
loc_011b62:
	movem.l (a7)+,d7/a6
	rts

;===========================
;Background
;===========================
loc_011b68:
	movem.l d7/a6,-(a7)
	lea loc_092780,a1
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$6000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	movea.l (a1),a0
	jsr loc_004850
	movem.l (a7)+,d7/a6
	rts

;----------------------------
loc_011b92:
	movem.l d7/a6,-(a7)
	move.w #$1f,d6
	sub.w d7,d6
	lsr.w #1,d6
	add.w d6,d6
	clr.w d0
	move.b loc_011be6(pc,d6.w),d0
	subq.w #1,d0
	add.w d0,d0
	add.w d0,d0
	lea loc_092540,a4
	adda.w d0,a4

	move.b loc_011be6+1(pc,d6.w),d7
	ext.w d7
	subq.w #1,d7
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$6600,d2
	moveq #0,d4
	moveq #0,d5

loc_011bcc:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_011bcc
	movem.l (a7)+,d7/a6
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_011be6:
	dc.b $13,$01,$14,$01,$15,$01,$16,$01
	dc.b $17,$01,$18,$01,$19,$01,$1a,$01
	dc.b $1b,$01,$1c,$02,$1e,$02,$20,$02
	dc.b $22,$02,$24,$02,$26,$02,$28,$02

;----------------------------
loc_011c06:
	tst.b ($17,a6)
	beq.b loc_011c0e
	rts

loc_011c0e:
	movem.l d7,-(a7)
	move.w #$0,d0
	move.w ($e,a6),d1
	sub.w ($10,a6),d1
	cmp.w d1,d7
	bge.b loc_011c50
	btst #0,(-$f38,a5)
	beq.b loc_011c3c 
	move.b (-$53d1,a5),d1
	move.b (-$53cd,a5),d2
	jsr loc_011c56(pc)
	cmpi.w #1,d0
	beq.b loc_011c50

loc_011c3c:
	btst #1,(-$f38,a5)
	beq.b loc_011c50
	move.b (-$53d0,a5),d1
	move.b (-$53cc,a5),d2
	jsr loc_011c56(pc)

loc_011c50:
	movem.l (a7)+,d7
	rts

;----------------------
loc_011c56:
	clr.w d3
	move.w #3,d7

loc_011c5c:
	lsl.b #1,d1
	bcc.b loc_011c62
	addq.w #1,d3

loc_011c62:	
	dbra d7,loc_011c5c
	cmpi.w #2,d3
	bcs.b loc_011c72
	move.w #1,d0
	bra.b loc_011c7c

loc_011c72:
	andi.b #$f0,d2
	beq.b loc_011c7c
	move.w #1,d0 

loc_011c7c:
	rts

;11c7e