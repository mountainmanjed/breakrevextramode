;===========================;
;Sprite Text Rendering Start;
;===========================;
loc_005426:
	movem.l d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3,-(a7)
	suba.l #$80,a7
	movea.l a7,a3
	lea loc_0055d8(pc),a1
	movea.l a3,a2
	clr.w d5
	clr.w d6
	move.w #$ffff,d7

loc_005440:
	move.b (a0)+,d5
	beq.b loc_00546e
	andi.b #$7f,d5
	cmpi.b #$7f,d5
	bne.b loc_005452
	move.b #$20,d5

loc_005452:
	addq.w #1,d7
	subi.w #$20,d5
	bpl.b loc_00545c
	clr.w d5

loc_00545c:
	move.b d5,(a2)+
	move.b (a1,d5.w),d5
	add.w d5,d6
	move.b d5,(a2)+
	cmpi.w #$3f,d7
	bge.b loc_00546e
	bra.b loc_005440

loc_00546e:
	subq.w #1,d6
	tst.w d7
	bpl.b loc_00547a
	moveq #$0,d0
	bra loc_0055cc

loc_00547a:
	swap d4
	move.w (-$4ac0,a5),d4
	move.w d4,d5
	tst.b (-$4ab6,a5)
	bne.b loc_00548e
	sub.w (-$4ac4,a5),d5
	bra.b loc_005492

loc_00548e:
	sub.w (-$4ac6,a5),d5

loc_005492:
	ble loc_0055cc
	sub.w d7,d5
 	subq.w #1,d5
	blt loc_0055cc	
	sub.w d7,d4
	subq.w #1,d4
	move.w d4,(-$4ac0,a5)
	movea.l (-$4aba,a5),a1
	suba.w d7,a1
	suba.w d7,a1
	subq.w #2,a1
	move.l a1,(-$4aba,a5)
	swap d4
	move.w d3,d5
	muls.w d7,d5
	add.w d5,d6
	movem.w d6,-(a7)
	btst #0,d4
	beq.b loc_0054cc
	asr.w #1,d6
	sub.w d6,d0
	bra.b loc_0054d4

loc_0054cc:
	btst #$1,d4
	beq.b loc_0054d4
	sub.w d6,d0

loc_0054d4:
	movem.w (a7)+,d6	
	movem.w d0,-(a7)	
	add.w d0,d6			
	movem.w d6,-(a7)	
	move.w #$805d,d6	;starting block of ascii font
	btst #$2,d4
	beq.b loc_0054f2
	move.w #$8176,d6
	bra.b loc_0054fc

loc_0054f2:
	btst #$3,d4
	beq.b loc_0054fc
	move.w #$81d4,d6

loc_0054fc:
	ext.l d0
	ext.l d1
	lsl.l #7,d0
	neg.l d1
	lsl.l #7,d1
	moveq #$10,d5
	lsl.l #7,d5
	move.l d1,d4
	cmpi.l #-$7c00,d4
	blt.b loc_005520
	sub.l d5,d4
	cmpi.l #-$400,d4
	bgt.b loc_005520
	bra.b loc_005526

loc_005520:
	move.l #$80000000,d0

loc_005526:
	andi.w #$ff80,d1
	addq.w #1,d1
	move.w #$fff,d4
	movem.w d7,-(a7)
	lea ($300,a1),a1
	movea.l a3,a2
	ext.l d3

loc_00553c:
	cmpi.l #$a000,d0
	blt.b loc_00554a
	move.l #$80000000,d0


loc_00554a:
	tst.b (a2)+
	beq.b loc_00556a
	move.w d0,($300,a1)
	move.w d4,(-$300,a1)
	moveq #$0,d5
	move.b (a2)+,d5
	add.l d3,d5
	lsl.l #7,d5
	add.l d5,d0
	bgt.b loc_005566
	clr.w (a1)+
	bra.b loc_005568

loc_005566:
	move.w d1,(a1)+

loc_005568:
	bra.b loc_005574

loc_00556a:
	moveq #$0,d5
	move.b (a2)+,d5
	add.l d3,d5
	lsl.l #7,d5
	add.l d5,d0

loc_005574:
	dbra d7,loc_00553c
	movem.w (a7)+,d7
	andi.w #$7,d2
	add.w (-$faa,a5),d2
	lsl.w #8,d2
	ori.w #$10,d2
	move.w (-$4ac0,a5),d1
	lsl.w #6,d1
	lea VRAMRW,a1
	move.w #$1,($2,a1)
	movea.l a3,a2
	move.w #$40,d0
	clr.w d4

loc_0055a4:
	move.b (a2),d4
	bne.b loc_0055ac
	addq.w #2,a2
	bra.b loc_0055bc

loc_0055ac:
	move.w d1,(-$2,a1)
	move.w d6,d5
	add.w d4,d5
	move.w d5,(a1)
	addq.w #2,a2
	add.w d0,d1
	move.w d2,(a1)

loc_0055bc:
	dbra d7,loc_0055a4
	movem.w (a7)+,d0
	movem.w (a7)+,d2
	swap d0
	move.w d2,d0	

loc_0055cc:
	adda.l #$80,a7
	movem.l (a7)+,d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3
	rts

loc_0055d8:
;Text widths
	dc.b $08,$09,$08,$0d,$0b,$0d,$0b,$04,$07,$07,$0b,$0b,$04,$09,$05,$0a
	dc.b $0a,$08,$0a,$0b,$0a,$0b,$09,$0b,$0a,$0a,$04,$05,$09,$0a,$09,$09
	dc.b $10,$0a,$0a,$0a,$0a,$09,$09,$0b,$0b,$07,$0a,$0b,$09,$0d,$0d,$0a
	dc.b $0a,$0a,$0a,$0b,$0a,$0b,$09,$0c,$0b,$0b,$0b,$08,$0c,$08,$0a,$09
	dc.b $10,$08,$08,$07,$09,$07,$07,$08,$09,$06,$09,$09,$06,$0c,$09,$07
	dc.b $09,$08,$07,$07,$07,$09,$08,$0a,$09,$07,$07,$0c,$0c,$0d,$0d,$08

;=======================;
;     Sprite Text 2     ;
;=======================;
loc_005638:
	tst.w d6
	beq loc_00431c
	tst.b ($1,a0)
	beq loc_00583a
	tst.b (a0)
	beq loc_00583a
	cmpi.b #$11,(a0)
	bcc loc_00583a
	lsl.w #7,d6
	swap d6
	swap d4
	swap d5
	move.w (-$4ac0,a5),d4
	move.w d4,d5
	tst.b (-$4ab6,a5)
	bne.b loc_00566e
	sub.w (-$4ac4,a5),d5
	bra.b loc_005672

loc_00566e:
	sub.w (-$4ac6,a5),d5

loc_005672:
	ble loc_00583a
	clr.w d6
	move.b (a0)+,d6
	clr.w d7
	move.b (a0)+,d7
	sub.w d7,d5
	blt loc_00583a
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
	beq.b loc_0056ce
	lsl.w #4,d7
	sub.w d4,d7
	move.w d7,d4

loc_0056ce:
	btst #$1,d2
	beq.b loc_0056da
	lsl.w #4,d6
	sub.w d5,d6
	move.w d6,d5

loc_0056da:
	not.w d3
	move.w d3,d7
	lsr.w #8,d7
	addq.w #1,d7
	clr.w d6
	move.b d3,d6
	addq.w #1,d6
	move.w d4,-(a7)
	muls.w d7,d4
	muls.w d6,d5
	asr.l #1,d4
	asr.l #1,d5
	sub.l d4,d0
	add.l d5,d1
	move.w (a7)+,d4
	swap d6
	move.w d4,d5
	asr.w #4,d4
	andi.w #$f,d5
	beq.b loc_005708
	muls.w d6,d4
	bra.b loc_005712
	
loc_005708:
	move.w d6,d5
	asr.w #1,d5
	subq.w #1,d4
	muls.w d6,d4
	add.l d5,d4

loc_005712:
	sub.w d4,d0
	swap d6
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
	blt.b loc_005744
	sub.l d5,d4
	cmpi.l #-$400,d4
	bgt.b loc_005744
	bra.b loc_00574a

loc_005744:
	move.l #$80000000,d0

loc_00574a:
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
	swap d6
	lea ($300,a1),a1

loc_005780:
	cmpi.l #$a000,d0
	blt.b loc_00578e
	move.l #$80000000,d0	

loc_00578e:
	move.w d0,($300,a1)
	move.w d4,(-$300,a1)
	clr.b d4
	addi.w #$100,d4
	lsr.w #1,d4
	add.l d4,d0
	bgt.b loc_0057a6
	clr.w (a1)+
	bra.b loc_0057a8

loc_0057a6:
	move.w d1,(a1)+

loc_0057a8:
	add.w d5,d7
	move.w d7,d4
	andi.w #$f0,d7
	subi.w #$100,d4
	move.b d3,d4
	add.w d6,d0
	dbra d2,loc_005780
	swap d6
	swap d7
	swap d2
	move.w (-$4ac0,a5),d1
	lsl.w #6,d1
	cmpi.b #$1f,d3
	bcc loc_0057dc
	moveq #$10,d5
	sub.w d6,d5
	andi.w #$f,d5
	bra loc_005812

loc_0057dc:
	moveq #$0,d5
	not.b d3
	beq.b loc_005812

	subi.b #-$80,d3
	bls.b loc_005810

	subi.b #$2a,d3
	bls.b loc_00580e

	subi.b #$16,d3
	bls.b loc_00580c

	subi.b #$c,d3
	bls.b loc_00580a

	subi.b #$9,d3
	bls.b loc_005808

	subq.b #$6,d3
	bls.b loc_005806

	addq.w #1,d5

loc_005806:
	addq.w #1,d5

loc_005808:
	addq.w #1,d5

loc_00580a:
	addq.w #1,d5

loc_00580c:
	addq.w #1,d5

loc_00580e:
	addq.w #1,d5

loc_005810:
	addq.w #2,d5

loc_005812:
	move.w d2,d3
	move.w d2,d4
	andi.w #$3,d4
	lea VRAMRW,A1
	move.w d7,d0
	mulu.w d6,d0
	add.w d0,d0
	lea (a0,d0.w),a2
	subq.w #1,d6
	subq.w #1,d7
	move.w d4,d0
	add.w d0,d0
	move.w loc_00583c(pc,d0.w),d0
	jmp loc_00583c(pc,d0.w)

loc_00583a:
	rts

loc_00583c:
	dc.w $ecc0,$ece4,$ed0e,$ed38
	
loc_005844:
	move.w (-$4ac0,a5),d4
	move.w d4,d5
	tst.b (-$4ab6,a5) 
	bne.b loc_005856
	sub.w (-$4ac4,a5),d5
	bra.b loc_00585a

loc_005856:
	sub.w (-$4ac6,a5),d5
	
loc_00585a:
	ble loc_00598a
	subi.w #$20,d5
	blt loc_00598a
	subi.w #$20,d4
	move.w d4,(-$4ac0,a5)
	addi.w #$f,d1
	btst #$8,d1	
	bne.b loc_005880
	subi.w #$100,d1
	exg a0,a2
	exg a1,a3

loc_005880:
	subi.w #$f,d1
	movem.l a1/a3,-(a7)
	movem.l a0/a2,-(a7)
	movem.l d0/d1,-(a7)
	movea.l (-$4aba,a5),a2
	suba.w #$40,a2
	move.l a2,(-$4aba,a5)
	lsl.w #7,d0
	move.w #$800,d4
	addi.w #$10,d1
	neg.w d1
	lsl.w #7,d1
	move.w #$fff,d3
	move.w #$1f,d7

loc_0058b2:
	move.w d0,d5
	addi.w #$780,d5
	cmpi.w #-$5900,d5
	bls.b loc_0058c4
	andi.w  #$ff80,d1
	bra.b loc_0058c8

loc_0058c4:
	ori.w #$21,d1
		
loc_0058c8:
	move.w d0,($600,a2)
	move.w d1,($300,a2)
	move.w d3,(a2)+
	add.w d4,d0
	dbra d7,loc_0058b2
	movem.l (a7)+,d4/d5
	addi.w #$f,d4
	asr.w #4,d4
	andi.w #$1f,d4
	swap d4
	addi.w #$1f,d5
	asr.w #$4,d5
	neg.w d5 ;58ee
	andi.w #$f,d5
	move.w d5,d4
	swap d5
	move.w d4,d5
	swap d5
	add.w d5,d5
	move.w d5,d0
	lsl.w #2,d5
	add.w d0,d5
	neg.w d4
	addi.w #$f,d4
	add.w d4,d4
	move.w d4,d0
	lsl.w #2,d4
	add.w d0,d4
	swap d4
	lea VRAMRW,a2
	move.w #$1,($2,a2)

;5920
	move.w (-$4ac0,a5),d1
	lsl.w #6,d1
	swap d5
	add.w d5,d1
	add.w d5,d1
	swap d5
	move.w #$1,d7

loc_005932:
	movem.l (a7)+,a0/a3
	adda.w #$4,a0
	adda.w #$4,a3
	movea.l a0,a1
	movea.l a3,a4
	adda.w #$200,a1
	adda.w #$200,a4
	move.w d2,d3
	andi.w #$3,d3
	btst #$0,d2
	beq.b loc_005966

;5956
	adda.w #$1e0,a0
	adda.w #$1e0,a3
	adda.w #$f0,a1
	adda.w #$f0,a4

loc_005966:
	btst #$1,d2
	beq.b loc_005982
	adda.w #$20,a0
	adda.w #$20,a3
	adda.w #$10,a1
	adda.w #$10,a4
	jsr loc_005b3a(pc)
	bra.b loc_005986

loc_005982:
	jsr loc_00598c(pc)

loc_005986:
	dbra d7,loc_005932

loc_00598a:
	rts

loc_00598c:
	movem.w d7,-(a7)
	move.w #$f,d7

loc_005994:
	cmpi.w #$15,d4
	bcc loc_005afe
	swap d4
	movem.l a0/a1/a3/a4,-(a7)
	swap d5
	adda.w d5,a0
	adda.w d5,a0
	adda.w d5,a1
	swap d5
	move.w d1,(-$2,a2)
	jmp loc_0059b4(pc,d5.w)

loc_0059b4:
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;59be
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;59c8
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;59d2
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;59dc
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;59e6
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;59f0
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;59fa
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5a04
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5a0e
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5a18
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5a22
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5a2c
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5a36
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5a40
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)

;5a4a
	move.w d2,d0
	move.w (a0)+,(a2)
	move.b (a1)+,d0
	eor.w d3,d0
	move.w d0,(a2)

	jmp loc_005a58(pc,d4.w)

loc_005a58:
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5a62
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5a6c
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5a72
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5a80
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5a8a
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5a94
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5a9e
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5aa8
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5ab2
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5abc
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5ac6
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5ad0
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5ada
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5ae4
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5aee
	move.w d2,d0
	move.w (a3)+,(a2)
	move.b (a4)+,d0
	eor.w d3,d0
	move.w d0,(a2)
;5af8
	movem.l (a7)+,a0/a1/a3/a4
	swap d4

loc_005afe:
	addi.w #$40,d1
	addq.w #1,d4
	andi.w #$1f,d4
	btst #$0,d2
	beq.b loc_005b20
	suba.w #$20,a0
	suba.w #$20,a3
	suba.w #$10,a1
	suba.w #$10,a4
	bra.b loc_005b30

loc_005b20:
	adda.w #$20,a0
	adda.w #$20,a3
	adda.w #$10,a1
	adda.w #$10,a4

loc_005b30:
	dbra d7,loc_005994
	movem.w (a7)+,d7
	rts

loc_005b3a:
	movem.w d7,-(a7)
	move.w #$f,d7

loc_005b42:
	cmpi.w #$15,d4
	bcc loc_005cac
	swap d4
	movem.l a0/a1/a3/a4,-(a7)
	swap d5
	suba.w d5,a0
	suba.w d5,a0
	suba.w d5,a1
	swap d5
	move.w d1,(-$2,a2)
	jmp loc_005b62(pc,d5.w)

loc_005b62:
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5b6c
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5b76
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5b80
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5b8a
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5b94
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5b9e
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5ba8
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5bb2
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5bbc
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5bc6
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5bd0
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5bda
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5be4
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5bee
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5bf8
	move.w d2,d0
	move.w -(a0),(a2)
	move.b -(a1),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c02
	jmp loc_005c06(pc,d4.w)

loc_005c06:
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c10
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c1a
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c24
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c2e
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c38
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c42
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c4c
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c56
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c60
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c6a
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c74
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c7e
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c88
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c92
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5c9c
	move.w d2,d0
	move.w -(a3),(a2)
	move.b -(a4),d0
	eor.w d3,d0
	move.w d0,(a2)
;5ca6
	movem.l (a7)+,a0/a1/a3/a4
	swap d4

loc_005cac:
	addi.w #$40,d1
	addq.w #1,d4
	andi.w #$1f,d4
	btst #$0,d2
	beq.b loc_005cce
	suba.w #$20,a0
	suba.w #$20,a3
	suba.w #$10,a1
	suba.w #$10,a4
	bra.b loc_005cde

loc_005cce:
	adda.w #$20,a0
	adda.w #$20,a3
	adda.w #$10,a1
	adda.w #$10,a4

loc_005cde:
	dbra d7,loc_005b42
	movem.w (a7)+,d7
	rts

;5ce8
