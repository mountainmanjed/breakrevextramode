;Attract Mode Intro
loc_00ddc2:
	jsr loc_00de3c(pc)
	jsr loc_00de5c(pc)
	jsr loc_00deb0(pc);Visco Games Logo and song start
	jsr loc_00f064(pc);
	jsr loc_00f096(pc);
	jsr loc_00e3ba(pc);
	jsr loc_00e3f8(pc);???
	jsr loc_00f1fe(pc);????
	jsr loc_00f248(pc);
	jsr loc_00e536(pc);
	jsr loc_00e574(pc);Condor Attract
	jsr loc_00f606(pc);
	jsr loc_00f650(pc);
	jsr loc_00e674(pc);
	jsr loc_00e6b2(pc);
	jsr loc_00e7b0(pc);
	jsr loc_00e828(pc);
	jsr loc_00f9fa(pc);
	jsr loc_00fa44(pc);
	jsr loc_00e0e2(pc);
	jsr SwordRivalsAttract(pc)
	jsr loc_0100ae(pc);Character Show off with bai hu eyes
	jsr loc_010110(pc)
	jsr loc_00e982(pc)
	jsr loc_00e9c6(pc)
	jsr loc_0104d6(pc)
	jsr loc_01053c(pc)
	jsr loc_010a4c(pc)
	jsr loc_010a9c(pc)
	jsr loc_00de48(pc)
	rts

;===================================
loc_00de3c:
	lea ($27fa,a5),a6
	move.w #$0,(-$4234,a5)
	rts

;===================================

loc_00de48:
	move.w #$0,(-$4234,a5)
	move.w #$20,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	rts

;===================================

loc_00de5c:
	move.w #$7f,-(a7) 
	move.l #loc_09fe08,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	move.w #$10,-(a7)
	move.l #loc_091c6c,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	move.w #$1a,-(a7)
	move.l #loc_091d10,-(a7)
	jsr loc_007554
	lea ($6,a7),a7
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_00dea8
	move.w #$a2,($e,a6)
	bra.b loc_00deae
	
loc_00dea8:
	move.w #$86,($e,a6)

loc_00deae:
	rts

;===================================

loc_00deb0:
	move.w ($e,a6),d7
loc_00deb4:
	jsr loc_00dff6(pc)
	jsr loc_00ded0(pc)
	trap #5
	dbra d7,loc_00deb4
	move.w #$0,(-$4234,a5)
	jsr loc_0071e0
	rts

;===================================
loc_00ded0:
	movem.l d7/a6,-(a7)
	move.w ($e,a6),d0
	move.w d0,d1
	addi.w #-$24,d1
	cmp.w d1,d7
	bne.b loc_00df26
	jsr loc_0071e0
	move.w #$fffe,-(a7)
	move.w #$19,-(a7)
	move.l #loc_0b126a,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7
	move.w #$fffe,-(a7)
	move.w #$7f,-(a7)
	move.l #loc_09fde8,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7
	move.w #$21,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	bra.b loc_00df62

loc_00df26:
	cmpi.w #$2e,d7
	bne.b loc_00df62
	jsr loc_0071e0
	move.w #0,-(a7)
	move.w #$19, -(a7)
	move.l #loc_09fe08,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7

	move.w #0,-(a7)
	move.w #$7f,-(a7)
	move.l #loc_09fe08,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7

loc_00df62:
	move.w ($e,a6),d6
	cmpi.w #$e,d7
	bcs.b loc_00dfc8
	sub.w d7,d6
	lsr.w #2,d6
	cmpi.w #$9,d6
	bls.b loc_00df7a
	move.w #$9,d6

loc_00df7a:
	add.w d6,d6
	add.w d6,d6
	move.b loc_00dfce(pc,d6.w),d0
	move.b loc_00dfce+1(pc,d6.w),d1
	move.b loc_00dfce+2(pc,d6.w),d2
	ext.w d0
	ext.w d1
	sub.w d0,d1
	move.w d1,d6
	subq.w #1,d0
	add.w d0,d0
	add.w d0,d0
	ext.l d0
	lea loc_091c98,a4
	adda.l d0,a4
	move.w #$a0,d0
	move.w #$70,d1
	lsl.w #8,d2
	moveq #$0,d4
	moveq #$0,d5

loc_00dfb0:
	movea.l (a4)+,a0
	movem.l d0-d2/d4-d6/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0-d2/d4-d6/a4
	dbra d6,loc_00dfb0
	jsr loc_00ffb6(pc)

loc_00dfc8:
	movem.l (a7)+,d7/a6
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_00dfce:
	dc.b $01,$02,$10,$00,$03,$03,$11,$00,$04,$08,$12,$00,$09,$0c,$13,$00
	dc.b $0d,$0f,$14,$00,$10,$12,$15,$00,$13,$16,$16,$00,$17,$1a,$17,$00
	dc.b $1b,$1d,$18,$00,$1e,$1e,$19,$00

;===================================
loc_00dff6:
	movem.l d7/a6,-(a7)
	cmpi.w #$15,d7
	bhi.b loc_00e004
	jsr loc_00e00a(pc)

loc_00e004:
	movem.l (a7)+,d7/a6
	rts

loc_00e00a:
	move.w d7,d6
	subi.w #$15,d6
	neg.w d6
	lsr.w #1,d6
	cmpi.w #$c,d6
	bls.b loc_00e01e
	move.w #$c,d6

loc_00e01e:
	add.w d6,d6
	add.w d6,d6
	movem.l d7,-(a7)
	clr.w d0
	clr.w d7
	move.w loc_00e08a(pc,d6.w),(-$4234,a5)
	move.b loc_00e088(pc,d6.w),d0
	move.b loc_00e088+1(pc,d6.w),d7
	bmi.b loc_00e050
	sub.w d0,d7
	subq.w #1,d0
	add.w d0,d0
	add.w d0,d0
	ext.l d0
	lea loc_091d1c,a4
	adda.l d0,a4
	jsr loc_00e0bc(pc)

loc_00e050:
	movem.l (a7)+,d7
	cmpi.w #$d,d7
	bne.b loc_00e06e
	move.w #$1b,-(a7)
	move.l #loc_0b2966,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

loc_00e06e:
	cmpi.w #$b,d7
	bne.b loc_00e086
	move.w #$ffff,-(a7)
	move.w #$1b,-(a7)
	jsr loc_0076a6
	lea (4,a7),a7

loc_00e086:
	rts

;/\/\/\/\/\/\/\/\/\/\
loc_00e088:
	dc.b $01,$01

loc_00e08a:
	dc.w $0000,$0203,$0000,$0406,$0000,$0709,$0000,$0709
	dc.w $7fff,$ffff,$7ddd,$0709,$7bbb,$ffff,$7999,$0709
	dc.w $7777,$ffff,$7555,$0709,$7333,$ffff,$7111,$0709
	dc.w $0000

;+ + + + + +sub routine + + + + +
loc_00e0bc:
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$1b00,d2
	moveq #0,d4
	moveq #0,d5

loc_00e0cc:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d4/d5/d7/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d2/d4/d5/d7/a4
	dbra d7,loc_00e0cc
	rts

;===================================
loc_00e0e2:
	move.w #$10,-(a7)
	move.l #loc_091424,-(a7)
	jsr loc_007554
	lea (6,a7),a7

	move.w #$48,-(a7)
	move.l #loc_090fe4,-(a7)
	jsr loc_007554
	lea (6,a7),a7

	move.w #$95,-(a7)
	move.l #loc_0916b0,-(a7)
	jsr loc_007554
	lea (6,a7),a7

	cmpi.w #$3,(-$7f94,a5)
	beq.b loc_00e12e
	move.w #$27,($e,a6)
	bra.b loc_00e134

loc_00e12e:
	move.w #$20,($e,a6)

loc_00e134:
	rts

;===================================
SwordRivalsAttract:;e136
	move.w ($e,a6),d7

loc_00e13a:
	jsr loc_00e168(pc)
	jsr loc_00e1ae(pc)
	jsr loc_00e26a(pc)
	jsr loc_00e2a8(pc)
	jsr loc_00e2e6(pc)
	jsr loc_00e324(pc)
	jsr loc_00fc2a(pc)
	jsr loc_00e362(pc)
	trap #5
	dbra d7,loc_00e13a
	jsr loc_0071e0
	rts
;|||||||||||||||||||
loc_00e168:
	move.w ($e,a6),d0
	subq.w #7,d0
	cmp.w d0,d7
	bls.b loc_00e178
	move.w d7,d1
	sub.w d0,d1
	bra.b loc_00e190

loc_00e178:
	cmpi.w #$7,d7
	bhi.b loc_00e186
	move.w d7,d1
	subq.w #7,d1
	neg.w d1
	bra.b loc_00e190

loc_00e186:
	move.w #$70,d1
	move.w #$70,d2
	bra.b loc_00e1a4

loc_00e190:
	mulu.w #$b0,d1
	divu.w #8,d1
	move.w d1,d2
	neg.w d1
	addi.w #$70,d1
	addi.w #$70,d2

loc_00e1a4:
	move.w d1,($8,a6)
	move.w d2,($a,a6)
	rts

;|||||||||||||||||||
loc_00e1ae:
	move.w ($e,a6),d0
	subi.w #11,d0
	cmp.w d0,d7
	bls.b loc_00e200
	move.w d7,d1
	sub.w d0,d1
	mulu.w d1,d1
	move.w #12,d2
	mulu.w d2,d2
	mulu.w #$75,d1
	divu.w d2,d1
	move.w d1,d2
	mulu.w #3,d1
;e1d2
	movem.l d1/d2,-(a7)
	neg.w d2
	addi.w #$a0,d1
	add.w (8,a6),d2
	move.w d1,(0,a6)
	move.w d2,(2,a6)
	movem.l (a7)+,d1/d2
	neg.w d1
	addi.w #$a0,d1
	add.w (10,a6),d2
	move.w d1,(4,a6)
	move.w d2,(6,a6)
	bra.b loc_00e268

loc_00e200:
	cmpi.w #11,d7
	bhi.b loc_00e250
	move.w d7,d1
	subi.w #11,d1
	neg.w d1
	mulu.w d1,d1
	move.w #12,d2
	mulu.w d2,d2
	mulu.w #$75,d1
	divu.w d2,d1
	move.w d1,d2
	mulu.w #3,d1
;e222
	movem.l d1/d2,-(a7)
	neg.w d1
	addi.w #$a0,d1
	add.w (8,a6),d2
	move.w d1,(0,a6)
	move.w d2,(2,a6)
	movem.l (a7)+,d1/d2
	neg.w d2
	addi.w #$a0,d1
	add.w ($a,a6),d2
	move.w d1,(4,a6)
	move.w d2,(6,a6)
	bra.b loc_00e268

loc_00e250:
	move.w #$a0,(0,a6)
	move.w (8,a6),(2,a6)
	move.w #$a0,(4,a6)
	move.w (10,a6),(6,a6)

loc_00e268:
	rts

;|||Sword guys Pielle Graphic|||
loc_00e26a:
	movem.l d7,-(a7)
	move.w (0,a6),d0
	move.w (2,a6),d1
	move.w #$3600,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #12,a4
	moveq #2,d7

loc_00e28e:
	movea.l (a4)+,a0 
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850	
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00e28e
	movem.l (a7)+,d7
	rts

;||||Sword guys Maherl Graphic||||
loc_00e2a8:
	movem.l d7,-(a7)
	move.w (4,a6),d0
	move.w (6,a6),d1
	move.w #$3600,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #0,a4
	moveq #2,d7

loc_00e2cc:
	movea.l (a4)+,a0 
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850	
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00e2cc
	movem.l (a7)+,d7
	rts

;|||Flower Background|||
loc_00e2e6:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w (8,a6),d1
	move.w #$4900,d2
	moveq #0,d4
	moveq #0,d5
	lea loc_091940,a4
	adda.l #8,a4
	move.w #1,d7

loc_00e30a:
	movea.l (a4)+,a0 
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_0041d8	
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00e30a
	movem.l (a7)+,d7
	rts

;||||Fire Background||||
loc_00e324:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w ($a,a6),d1
	move.w #$4800,d2
	moveq #0,d4
	moveq #0,d5
	lea loc_091940,a4
	adda.l #0,a4
	move.w #1,d7

loc_00e348:
	movea.l (a4)+,a0 
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_0041d8	
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00e348
	movem.l (a7)+,d7
	rts

;|||||||||||||||||||
loc_00e362:
	movem.l d7/a6,-(a7)
	cmpi.w #7,d7
	bhi.b loc_00e3b4
	lea loc_092a08,a4
	adda.l #$9c,a4
	movea.l (a4),a0
	movea.l a0,a1
	movea.l a0,a2
	movea.l a0,a3
	move.w ($10,a6),d0
	move.w ($12,a6),d1
	move.w d7,d2
	lsr.w #2,d2
	ext.l d2
	divu.w #$1c,d2
	swap d2
	cmpi.w #$e,d2
	bls.b loc_00e3a0
	subi.w #$1c,d2
	neg.w d2

loc_00e3a0:
	addi.w #$9f,d2
	lsl.w #8,d2
	jsr loc_005844
	addq.w #1,($10,a6)
	subq.w #1,($12,a6)

loc_00e3b4:
	movem.l (a7)+,d7/a6
	rts

;===================================
loc_00e3ba:
	move.w #$10,-(a7)
	move.l #loc_09111c,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	move.w #$7000,(-$4234,a5)
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_00e3e4
	move.w #$27,($e,a6)
	bra.b loc_00e3ea

loc_00e3e4:
	move.w #$20,($e,a6)

loc_00e3ea:
	move.w #$0,($10,a6)
	move.w #$fff0,($12,a6)
	rts

;===================================
loc_00e3f8:
	move.w ($e,a6),d7

loc_00e3fc:
	jsr loc_00e4c6(pc)
	jsr loc_00e41e(pc)
	jsr loc_00e43c(pc)
	move.w #$c,d0
	jsr loc_00e502(pc)
	trap #5
	dbra d7,loc_00e3fc
	jsr loc_0071e0
	rts

;|||||||||||||||||||
loc_00e41e:
	move.w d7,d0
	move.w ($e,a6),d1
	addq.w #1,d1
	muls.w #$80,d0
	divu.w d1,d0
	addi.w #$80,d0
	move.w d0,(0,a6)
	move.w #$70,(2,a6)
	rts

;|||||||||||||||||||
loc_00e43c:
	movem.l d7,-(a7)
	lsr.w #2,d7
	ext.l d7
	divu.w	#4,d7
	swap d7
	move.b loc_00e4c2(pc,d7.w),d7
	ext.w d7
	mulu.w #2,d7
	addq.w #7,d7
	add.w d7,d7
	add.w d7,d7
	lea loc_091940,a4
	adda.l d7,a4
	move.w (0,a6),d0
	move.w (2,a6),d1
	move.w #$1200,d2
	moveq #0,d4
	moveq #0,d5
	moveq #1,d7

loc_00e474:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00e474
	move.w (0,a6),d0
	move.w (2,a6),d1
	move.w #0,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$18,a4
	moveq #3,d7

loc_00e4a8:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00e4a8
	movem.l (a7)+,d7
	rts

;/\/\/\/\/\/\/\/\/\/\
loc_00e4c2:
	dc.b $00,$01,$02,$01

;|||||||||||||||||||
loc_00e4c6:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$1000,d2
	moveq #$0,d4
	moveq #$0,d5
	lea loc_091940,a4
	adda.l #$10,a4
	moveq #1,d7

loc_00e4e8:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00e4e8
	movem.l (a7)+,d7
	rts

;|||||||||||||||||||
loc_00e502:
	movem.l d7/a6,-(a7)
	add.w d0,($10,a6)
	lea loc_091940,a0
	adda.l #$18,a0
	movea.l (a0),a0
	movea.l a0,a1
	movea.l a0,a2
	movea.l a0,a3
	move.w ($10,a6),d0
	move.w ($12,a6),d1
	move.w #$1000,d2
	jsr loc_005844
	movem.l (a7)+,d7/a6
	rts

;===================================
loc_00e536:
	move.w #$10,-(a7)
	move.l #loc_09117c,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	move.w #$7000,(-$4234,a5)
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_00e560
	move.w #$27,($e,a6)
	bra.b loc_00e566

loc_00e560:
	move.w #$20,($e,a6)

loc_00e566:
	move.w #$0,($10,a6)
	move.w #$70,($12,a6)
	rts

;==Condor Attract Scene==
loc_00e574: 
	move.w ($e,a6),d7

loc_00e578:
	jsr loc_00e600(pc)
	jsr loc_00e59a(pc)
	jsr loc_00e5c2(pc)
	move.w #-2,d0
	jsr loc_00e63c(pc)
	trap #5
	dbra d7,loc_00e578
	jsr loc_0071e0
	rts

;~~~~~~~~~~~~~~~~~~~
loc_00e59a:
	move.w d7,d0
	move.w ($e,a6),d1
	addq.w #1,d1
	muls.w #$c0,d0
	divs.w d1,d0
	addi.w #-$80,d0
	move.w d0,d1
	neg.w d1
	addi.w #$a0,d0
	addi.w #$70,d1
	move.w d0,(0,a6)
	move.w d1,(2,a6)
	rts

;~~~~~~~~~~~~~~~~~~~
loc_00e5c2:
	movem.l d7,-(a7)
	move.w (0,a6),d0
	move.w (2,a6),d1
	move.w #$e900,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$28,a4
	moveq #4,d7

loc_00e5e6:
	movea.l (a4)+,a0 
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850	
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00e5e6
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~
loc_00e600:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$1100,d2
	moveq #0,d4
	moveq #0,d5
	lea loc_091940,a4
	adda.l #$34,a4
	moveq #3,d7

loc_00e622:
	movea.l (a4)+,a0 
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00e622
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~
loc_00e63c:
	movem.l d7/a6,-(a7)
	add.w d0,($10,a6)
	sub.w d0,($12,a6)
	lea loc_091940,a0
	adda.l #$44,a0
	movea.l (a0),a0
	movea.l a0,a1
	movea.l a0,a2
	movea.l a0,a3
	move.w ($10,a6),d0
	move.w ($12,a6),d1
	move.w #$1000,d2
	jsr loc_005844
	movem.l (a7)+,d7/a6
	rts

;===================================
loc_00e674:
	move.w #$10,-(a7)
	move.l #loc_0911e8,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	move.w #$7000,(-$4234,a5)
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_00e69e
	move.w #$27,($e,a6)
	bra.b loc_00e6a4
	
loc_00e69e:
	move.w #$20,($e,a6)

loc_00e6a4:
	move.w #$0,($10,a6)
	move.w #$0,($12,a6)
	rts

;===Alsion Attract Scene===
loc_00e6b2:
	move.w ($e,a6),d7

loc_00e6b6:
	jsr loc_00e73c(pc)
	jsr loc_00e6d8(pc)
	jsr loc_00e6fe(pc)
	move.w #3,d0
	jsr loc_00e778(pc)
	trap #5
	dbra d7,loc_00e6b6
	jsr loc_0071e0
	rts

;~~~~~~~~~~~~~~~~~~~
loc_00e6d8:
	move.w d7,d0
	move.w ($e,a6),d1
	addq.w #1,d1
	muls.w #$c0,d0
	divu.w d1,d0
	addi.w #-$60,d0
	move.w d0,d1
	addi.w #$a0,d0
	addi.w #$70,d1
	move.w d0,(0,a6)
	move.w d1,(2,a6)
	rts

;~~~~~~~~~~~~~~~~~~~
loc_00e6fe:
	movem.l d7,-(a7)
	move.w (0,a6),d0
	move.w (2,a6),d1
	move.w #$cd00,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$3c,a4
	moveq #3,d7

loc_00e722:
	movea.l (a4)+,a0 
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850	
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00e722
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~
loc_00e73c:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$1100,d2
	moveq #0,d4
	moveq #0,d5
	lea loc_091940,a4
	adda.l #$48,a4
	moveq #3,d7

loc_00e75e:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00e75e
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~
loc_00e778:
	movem.l d7/a6,-(a7)
	add.w d0,($10,a6)
	sub.w d0,($12,a6)
	lea loc_091940,a0
	adda.l #$58,a0
	movea.l (a0),a0
	movea.l a0,a1
	movea.l a0,a2
	movea.l a0,a3
	move.w ($10,a6),d0
	move.w ($12,a6),d1
	move.w #$1000,d2
	jsr loc_005844
	movem.l (a7)+,d7/a6
	rts

;=====Attract Saizo Attract=====
loc_00e7b0:
	move.w #$10,-(a7)	
	move.l #loc_00e922,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	move.w #$11,-(a7)	
	move.l #loc_00e942,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	move.w #$12,-(a7)	
	move.l #loc_00e962,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	move.w #$7000,(-$4234,a5)
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_00e802
	move.w #$27,($e,a6)
	bra.b loc_00e808

loc_00e802:
	move.w #$20,($e,a6)

loc_00e808:
	move.w #$6,(-$fa2,a5)
	move.w #$ffa8,($0,a6)
	move.w #$70,($2,a6)
	move.w #$a0,($10,a6)
	move.w #$70,($12,a6)
	rts

;===================================
loc_00e828:
	move.w ($e,a6),d7

loc_00e82c
	jsr loc_00e846(pc)
	jsr loc_00e884(pc)
	jsr loc_00e8ea(pc)
	trap #5
	dbra d7,loc_00e82c
	jsr loc_0071e0
	rts

;~~~~~~~~~~~~~~~~~~~
loc_00e846:
	movem.l d0,-(a7)
	move.w (-$fa2,a5),d0
	add.w d0,(0,a6)
	cmpi.w #$e8,(0,a6)
	bge loc_00e878
	addq.w #1,(-$fa2,a5)
	cmpi.w #$f,(-$fa2,a5)
	bge loc_00e86e
	bra loc_00e87e

loc_00e86e:
	move.w #$f,(-$fa2,a5)
	bra loc_00e87e

loc_00e878:
	move.w #$e8,(0,a6)

loc_00e87e:
	movem.l (a7)+,d0
	rts

;~~~~~~~~~~~~~~~~~~~
loc_00e884:
	movem.l d6/d7,-(a7)
	move.w #$1,d6

loc_00e88c:
	move.w (0,a6),d0
	move.w (2,a6),d1
	tst.w d6
	bne loc_00e89e
	bra loc_00e8a6

loc_00e89e
	move.w #$1100,d2
	bra loc_00e8aa

loc_00e8a6:
	move.w #$1200,d2

loc_00e8aa:
	moveq #$0,d3
	moveq #$0,d4
	moveq #$0,d5
	lea loc_091b34,a4
	tst.w d6
	bne loc_00e8c0
	bra loc_00e8ca
loc_00e8c0:
	adda.l #$130,a4
	bra loc_00e8d0

loc_00e8ca:
	adda.l #$134,a4

loc_00e8d0:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a4
	dbra d6,loc_00e88c
	movem.l (a7)+,d6/d7
	rts

;~~~~~~~~~~~~~~~~~~~
loc_00e8ea:
	movem.l d7,-(a7)
	move.w ($10,a6),d0
	move.w ($12,a6),d1
	move.w #$1000,d2
	moveq #$0,d3
	moveq #$0,d4
	moveq #$0,d5
	lea loc_091b34,a4
	adda.l #$12c,a4
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	movem.l (a7)+,d7
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_00e922:
	dc.w $20f0,$7aad,$678d,$266c,$255c,$145b,$034a,$2339
	dc.w $6238,$0237,$5125,$2114,$4012,$0001,$0000,$7fff

loc_00e942:
	dc.w $20f0,$177d,$666b,$675a,$1747,$0558,$1835,$589f
	dc.w $5d00,$5535,$1c00,$7812,$5623,$5a00,$1523,$4612

loc_00e962:
	dc.w $20f0,$2512,$5700,$0323,$7501,$5600,$6401,$6301
	dc.w $0500,$0400,$4200,$0200,$4100,$0100,$5800,$0000

;=====Attract mode Tia Screen=====
loc_00e982:
	move.w #$80,-(a7)
	move.l #loc_091280,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	move.w #$0,(-$4234,a5)
	cmpi.w #$3,(-$7f94,a5)
	beq.b loc_00e9b2
	move.w #$d0,($18,a6)
	move.w #$1d,($16,a6)
	bra.b loc_00e9be

loc_00e9b2:
	move.w #$a5,($18,a6)
	move.w #$18,($16,a6)

loc_00e9be:
	move.w #$ffff,($1a,a6)
	rts

;===================================
loc_00e9c6:
	move.w ($18,a6),d7

loc_00e9ca:	
	jsr loc_00eb88(pc)
	jsr loc_00ee2e(pc)
	jsr loc_00ea6a(pc)	
	jsr loc_00ea96(pc)
	jsr loc_00eba0(pc)
	jsr loc_00ee46(pc)
	jsr loc_00efe4(pc)
	trap #5
	dbra d7,loc_00e9ca
	move.w ($16,a6),d7

loc_00e9f0:
	jsr loc_00ea96(pc)
	jsr loc_00eba0(pc)
	jsr loc_00ee46(pc)
	trap #5
	dbra d7,loc_00e9f0
	jsr loc_0071e0
	rts

;~~unused routine~~
loc_00ea0a:
	clr.w ($20,a6)
	lea ($22,a6),a4
	move.w ($18,a6),d0
	move.w d0,d1
	addi.w #$10,d1
	ext.l d1
	divu.w #6,d1
	move.w d1,d2
	sub.w d0,d1
	neg.w d1
	move.w d1,(a4)+
	add.w d2,d2
	subq.w #8,d2
	sub.w d0,d2
	neg.w d2
	move.w d2,(a4)
	rts

;~~~~unused 2~~~~
loc_00ea36:
	lea ($22,a6),a4
	move.w ($20,a6),d0
	cmpi.w #1,d0
	bhi.b loc_00ea60
	add.w d0,d0
	cmp.w (a4,d0.w),d7
	bne.b loc_00ea60

	movem.l d7,-(a7)
	addq.w #1,($20,a6)
	add.w d0,d0
	movea.l loc_00ea62(pc,d0.w),a1
	jsr (a1)
	movem.l (a7)+,d7 

loc_00ea60:
	rts

;/\/\/\/\/\/\/\/\/\/\/\
loc_00ea62:
	dc.l loc_00fd5c,loc_00fea6

;~~~~~~~~~~~~~~~~~~
loc_00ea6a:	
	cmpi.w #$b4,d7
	bcc.b loc_00ea94
	move.w #$121,d0
	move.w #$fdb5,d1
	muls.w d7,d0
	muls.w d7,d1
	divs.w #$ff4d,d0
	divs.w #$ff4d,d1
	addi.w #$71,d0
	addi.w #$71,d1
	move.w d0,($1c,a6)
	move.w d1,($1e,a6)

loc_00ea94:
	rts

;~~~~~~~~~~~~~~~~~~
loc_00ea96:
	movem.l d7,-(a7)
	cmpi.w #$b4,d7
	bcc loc_00eb5a
	btst #$0,d7
	bne.b loc_00ead0
	move.w ($1c,a6),d0
	move.w ($1e,a6),d1
	muls.w #$100,d0
	muls.w #$100,d1
	asr.l #8,d0
	asr.l #8,d1
	addi.w #$a0,d0
	addi.w #$40,d1
	sub.w (6,a6),d1
	move.w #$7a,d4
	jsr loc_00eb60(pc)


;|||||||||||||||||||||||||||
loc_00ead0:
	btst #0,d7
	bne.b loc_00eafe
	move.w ($1c,a6),d0
	move.w ($1e,a6),d1
	muls.w #$cc,d0
	muls.w #$cc,d1
	asr.l #8,d0
	asr.l #8,d1
	addi.w #$a0,d0
	addi.w #$40,d1
	sub.w (6,a6),d1
	move.w #$7b,d4
	jsr loc_00eb60(pc)

loc_00eafe:
	btst #0,d7
	bne.b loc_00eb2c
	move.w ($1c,a6),d0	
	move.w ($1e,a6),d1
	muls.w #$94,d0
	muls.w #$94,d1
	asr.l #8,d0
	asr.l #8,d1
	addi.w #$a0,d0
	addi.w #$40,d1
	sub.w (6,a6),d1
	move.w #$7c,d4
	jsr loc_00eb60(pc)
	
;|||||||||||||||||||
loc_00eb2c:
	btst #0,d7
	bne.b loc_00eb5a
	move.w ($1c,a6),d0
	move.w ($1e,a6),d1
	muls.w #$73,d0
	muls.w #$73,d1
	asr.l #8,d0
	asr.l #8,d1
	addi.w #$a0,d0
	addi.w #$40,d1
	sub.w (6,a6),d1
	move.w #$7d,d4
	jsr loc_00eb60(pc)

loc_00eb5a:
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~
loc_00eb60:
	movem.l d0/d1/d7,-(a7)
	lea loc_091940,a4
	subq.w #1,d4
	lsl.w #2,d4
	ext.l d4
	adda.l d4,a4
	move.w #$c800,d2
	moveq #$0,d4
	moveq #$0,d5
	movea.l (a4)+,a0 
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d7
	rts

;~~~~~~~~~~~~~~~~~~
loc_00eb88:
	move.w d7,d1
	muls.w #$280,d1
	divu.w ($18,a6),d1
	move.w #$a0,d0
	move.w d0,(0,a6)
	move.w d1,(2,a6)
	rts

;~~~~~~~~~~~~~~~~~~~
loc_00eba0:
	movem.l d7,-(a7)
	jsr loc_00ebba(pc)
	jsr loc_00ecee(pc)
	jsr loc_00ed7e(pc)
	jsr loc_00edd6(pc)
	movem.l (a7)+,d7
	rts

;|||||||||||||||||
loc_00ebba:
	movem.l d7,-(a7)
	cmpi.w #$200,($2,a6)
	bgt.w loc_00ec4a
	cmpi.w #0,(2,a6)
	ble.b loc_00ec4a
	lsr.w #3,d7
	ext.l d7
	divu.w #5,d7
	swap d7
	mulu.w #$1,d7
	addi.w #$6a,d7
	add.w d7,d7
	add.w d7,d7
	lea loc_091940,a4
	adda.l d7,a4
	move.w (0,a6),d0
	move.w (2,a6),d1
	subi.w #$100,d1
	neg.w d1
	addi.w #$70,d1
	move.w #$8000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	moveq #0,d7

loc_00ec0c:
	movea.l (a4)+,a0
	movem.l d0/d1/d3/d4/d5/d7/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d3/d4/d5/d7/a4
	dbra d7,loc_00ec0c
	jsr loc_00ec50(pc)
	move.w #$7000,d2
	lea loc_091b34,a4
	adda.l #$58,a4
	moveq #2,d7

loc_00ec36:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00ec36
	
loc_00ec4a:
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~
loc_00ec50:
	cmpi.w #$10,d1
	ble.b loc_00ec5a
	addq #1,($1a,a6)

loc_00ec5a:
	move.w ($1a,a6),d6
	bmi.b loc_00ecdc
	lea loc_091b34,a1
	movea.l a1,a2
	lsr.w #2,d6
	cmpi.w #8,d6
	bcc.b loc_00eca2
	add.w d6,d6
	move.b loc_00ecde(pc,d6),d7
	bmi.b loc_00ec88
	ext.w d7
	subq.w #1,d7
	add.w d7,d7
	add.w d7,d7
	ext.l d7
	adda.l d7,a1
	moveq #1,d7
	bra.b loc_00ec8a	

loc_00ec88:
	moveq #0,d7

loc_00ec8a:
	move.b loc_00ecde+1(pc,d6.w),d6
	bmi.b loc_00eca0
	ext.w d6
	subq.w #1,d6
	add.w d6,d6
	add.w d6,d6
	ext.l d6
	adda.l d6,a2
	ori.w #2,d7

loc_00eca0:
	bra.b loc_00ecb0

loc_00eca2:
	adda.l #$50,a1
	adda.l #$54,a2
	moveq #3,d7

loc_00ecb0:
	move.w #$7000,d2
	lsr.w #1,d7
	bcc.b loc_00ecc8
	movea.l (a1),a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a2,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a2

loc_00ecc8:
	lsr.w #1,d7
	bcc.b loc_00ecdc
	movea.l (a2),a0
	movem.l d0/d1/d2/d3/d4/d5,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5

loc_00ecdc:
	rts

;/\/\/\/\/\/\/\/\/\/\
loc_00ecde:
	dc.b $14,$ff,$15,$ff,$15,$ff,$14,$ff,$ff,$16,$14,$16,$15,$16,$15,$16

;|||||||||||||||||
loc_00ecee:
	movem.l d7,-(a7)
	cmpi.w #$300,(2,a6)
	bgt.b loc_00ed78
	cmpi.w #$100,(2,a6)
	ble.b loc_00ed78
	lsr.w #3,d7
	ext.l d7
	divu.w #5,d7
	swap d7
	mulu.w #2,d7
	addi.w #$6f,d7
	add.w d7,d7
	add.w d7,d7
	lea loc_091940,a4
	adda.l d7,a4
	move.w (0,a6),d0
	move.w (2,a6),d1
	subi.w #$200,d1
	neg.w d1
	addi.w #$70,d1
	move.w #$8000,d2
	moveq #$0,d3
	moveq #$0,d4
	moveq #$0,d5
	moveq #$1,d7

loc_00ed3e:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00ed3e
	move.w #$7000,d2
	lea loc_091b34,a4
	adda.l #$64,a4
	moveq #$2,d7

loc_00ed64:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00ed64

loc_00ed78:
	movem.l (a7)+,d7
	rts

;|||||||||||||||||
loc_00ed7e:
	movem.l d7,-(a7)
	cmpi.w #$400,(2,a6)
	bgt.b loc_00edd0
	cmpi.w #$200,(2,a6)
	ble.b loc_00edd0
	move.w (0,a6),d0
	move.w (2,a6),d1
	subi.w #$300,d1
	neg.w d1
	addi.w #$70,d1 
	move.w #$7000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$70,a4
	moveq #2,d7

loc_00edbc:
	movea.l (a4)+,a0
	movem.l d0-d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0-d5/d7/a4
	dbra d7,loc_00edbc

loc_00edd0:
	movem.l (a7)+,d7
	rts

;|||||||||||||||||
loc_00edd6:
	movem.l d7,-(a7)
	cmpi.w #$500,(2,a6)
	bgt.b loc_00ee28
	cmpi.w #$300,(2,a6)
	ble.b loc_00ee28
	move.w (0,a6),d0
	move.w (2,a6),d1
	subi.w #$400,d1
	neg.w d1
	addi.w #$70,d1
	move.w #$7000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$7c,a4
	moveq #2,d7

loc_00ee14:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00ee14

loc_00ee28:
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~
loc_00ee2e:
	move.w d7,d1
	muls.w #$100,d1
	divu.w ($18,a6),d1
	move.w #$9f,d0
	move.w d0,(4,a6)
	move.w d1,(6,a6)
	rts

;~~~~~~~~~~~~~~~~~~~~~
loc_00ee46:
	movem.l d7,-(a7)	
	jsr loc_00ee64(pc)	
	jsr loc_00eeae(pc)	
	jsr loc_00eef8(pc)	
	jsr loc_00ef42(pc)	
	jsr loc_00ef8c(pc)
	movem.l (a7)+,d7
	rts

;||||||||||||||||||||||
loc_00ee64:
	movem.l d7,-(a7)
	cmpi.w #$100,(6,a6)
	bgt.b loc_00eea8
	cmpi.w #-$100,(6,a6)
	ble.b loc_00eea8
	move.w (4,a6),d0
	move.w (6,a6),d1
	subi.w #$0,d1
	neg.w d1
	addi.w #$70,d1
	move.w #$7000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$88,a4
	movea.l (a4),a0
	jsr loc_004850

loc_00eea8:
	movem.l (a7)+,d7
	rts

;||||||||||||||||||||||
loc_00eeae:
	movem.l d7,-(a7)
	cmpi.w #$200,(6,a6)
	bgt.b loc_00eef2
	cmpi.w #$0,(6,a6)
	ble.b loc_00eef2
	move.w (4,a6),d0
	move.w (6,a6),d1
	subi.w #$100,d1
	neg.w d1
	addi.w #$70,d1
	move.w #$7000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$8c,a4
	movea.l (a4),a0
	jsr loc_004850

loc_00eef2:
	movem.l (a7)+,d7
	rts	

;||||||||||||||||||||||
loc_00eef8:
	movem.l d7,-(a7)
	cmpi.w #$300,(6,a6)
	bgt.b loc_00ef3c
	cmpi.w #$100,(6,a6)
	ble.b loc_00ef3c
	move.w (4,a6),d0
	move.w (6,a6),d1
	subi.w #$200,d1
	neg.w d1
	addi.w #$70,d1
	move.w #$7000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$90,a4
	movea.l (a4),a0
	jsr loc_004850

loc_00ef3c:
	movem.l (a7)+,d7
	rts

;||||||||||||||||||||||
loc_00ef42:
	movem.l d7,-(a7)
	cmpi.w #$400,(6,a6)
	bgt.b loc_00ef86
	cmpi.w #$200,(6,a6)
	ble.b loc_00ef86
	move.w (4,a6),d0
	move.w (6,a6),d1
	subi.w #$300,d1
	neg.w d1
	addi.w #$70,d1
	move.w #$7000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$94,a4
	movea.l (a4),a0
	jsr loc_004850

loc_00ef86:
	movem.l (a7)+,d7
	rts

;||||||||||||||||||||||
loc_00ef8c:
	movem.l d7,-(a7)
	cmpi.w #$500,(6,a6)
	bgt.b loc_00efde
	cmpi.w #$300,(6,a6)
	ble.b loc_00efde
	move.w (4,a6),d0
	move.w (6,a6),d1
	subi.w #$400,d1
	neg.w d1
	addi.w #$70,d1
	move.w #$7000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$98,a4
	moveq #$0,d7

loc_00efca:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00efca

loc_00efde:
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00efe4:
	cmpi.w #$1d,d7
	bne.b loc_00f062

	move.w #$1,-(a7)
	move.w #$c0,-(a7)
	move.l #loc_09fde8,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7

	move.w #$1,-(a7)
	move.w #$c1,-(a7)
	move.l #loc_09fde8,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7

	move.w #$1,-(a7)
	move.w #$c3,-(a7)
	move.l #loc_09fde8,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7

	move.w #$1,-(a7)
	move.w #$c4,-(a7)
	move.l #loc_09fde8,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7

	move.w #$1,-(a7)
	move.w #$c5,-(a7)
	move.l #loc_09fde8,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7

loc_00f062
	rts

;===================================
loc_00f064:
	move.w #$10,-(a7)
	move.l #loc_0913a8,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	move.w #$7000,(-$4234,a5)
	cmpi.w #$3,(-$7f94,a5)
	beq.b loc_00f08e
	move.w #$7a,($e,a6)
	bra.b loc_00f094

loc_00f08e:
	move.w #$65,($e,a6)

loc_00f094:
	rts

;======Sho Dao Stare Down 1=======
loc_00f096:
	move.w ($e,a6),d7

loc_00f09a:
	jsr loc_00f0bc(pc)
	jsr loc_00f154(pc)
	jsr loc_00f0d8(pc)
	jsr loc_00f192(pc)
	jsr loc_00f1d0(pc)
	trap #5
	dbra d7,loc_00f09a
	jsr loc_0071e0
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00f0bc:
	moveq #0,d0
	move.w ($e,a6),d0
	move.l d0,d6
	divu.w #$d,d0
	addq.w #1,d0
	sub.w d7,d6
	divu.w d0,d6
	addi.w #$4e,d6
	jsr loc_00f0f4(pc)
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00f0d8:
	moveq #0,d0
	move.w ($e,a6),d0
	move.l d0,d6
	divu.w #$d,d0
	addq.w #1,d0
	sub.w d7,d6
	divu.w d0,d6
	addi.w #$5b,d6
	jsr loc_00f124(pc)
	rts

;||||||||||||||||||||||||||
loc_00f0f4:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$2c00,d2
	moveq #0,d4
	moveq #0,d5
	lea loc_091940,a4
	subq.w #1,d6
	add.w d6,d6
	add.w d6,d6
	movea.l (a4,d6.w),a0
	jsr loc_0041d8
	movem.l (a7)+,d7
	rts

;||||||||||||||||||||||||||
loc_00f124:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$2c00,d2
	moveq #0,d4
	moveq #0,d5
	lea loc_091940,a4
	subq.w #1,d6
	add.w d6,d6
	add.w d6,d6
	movea.l (a4,d6.w),a0
	jsr loc_0041d8
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00f154:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$d000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$ac,a4
	moveq #$0,d7
	
loc_00f178:
	movea.l (a4)+,a0
	movem.l	d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00f178
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00f192:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$d000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$b0,a4
	moveq #$0,d7
	
loc_00f1b6:
	movea.l (a4)+,a0
	movem.l	d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00f1b6
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00f1d0:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$2d00,d2
	moveq #0,d4
	moveq #0,d5
	lea loc_091940,a4
	adda.l #$1a4,a4
	movea.l (a4)+,a0
	jsr loc_0041d8
	movem.l (a7)+,d7
	rts

;======Sho Dao Stare Down 2======
loc_00f1fe:
	move.w #$10,-(a7)
	move.l #loc_0913a8,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	move.w #$2e,-(a7)
	move.l #loc_091d10,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	
	move.w #$7000,(-$4234,a5)
	cmpi.w #$3,(-$7f94,a5)
	beq.b loc_00f23c
	move.w #$7a,($e,a6)
	bra.b loc_00f242

loc_00f23c:
	move.w #$65,($e,a6)

loc_00f242:
	jsr loc_00f28e(pc)
	rts

;===================================
loc_00f248:
	move.w ($e,a6),d7

loc_00f24c:
	jsr loc_00f2a4(pc)
	jsr loc_00f378(pc)
	btst #0,d7
	bne.b loc_00f26c
	jsr loc_00f4c4(pc)	
	jsr loc_00f55c(pc)
	jsr loc_00f4e0(pc)
	jsr loc_00f59a(pc)
	bra.b loc_00f27c

loc_00f26c:
	jsr loc_00f4e0(pc)
	jsr loc_00f59a(pc)
	jsr loc_00f4c4(pc)
	jsr loc_00f55c(pc)

loc_00f27c:
	jsr loc_00f5d8(pc)
	trap #5
	dbra d7,loc_00f24c
	jsr loc_0071e0
	rts

;||||||||||||||||||||||||||||||||||||
;some reason this is here, it's used

loc_00f28e:
	move.w #$ffff,($4c,a6)
	move.w #$ffff,($4e,a6)
	clr.b ($50,a6)
	clr.b ($51,a6)
	rts

;||||||||||||||||||||||||||||||||||||

loc_00f2a4:
	movem.l d7/a6,-(a7)
	move.w d7,d5
	tst.b ($50,a6)
	bne.b loc_00f2d4
	addq.w #1,($4c,a6)
	move.w ($4c,a6),d0
	add.w d0,d0
	add.w d0,d0
	cmpi.w #$3,(-$7f94,a5)
	beq.b loc_00f2ca
	move.b loc_00f30e(pc,d0.w),d0
	bra.b loc_00f2ce

loc_00f2ca:
	move.b loc_00f30e+1(pc,d0.w),d0

loc_00f2ce:
	beq.b loc_00f308
	move.b d0,($50,a6)

loc_00f2d4:
	subq.b #1,($50,a6)
	bpl.b loc_00f2e0
	move.b #$ff,($50,a6)

loc_00f2e0:
	move.w ($4c,a6),d1
	add.w d1,d1
	add.w d1,d1
	clr.w d6
	clr.w d7
	move.b loc_00f30e+2(pc,d1.w),d6
	bmi.b loc_00f308
	move.b loc_00f30e+3(pc,d1.w),d7
	bmi.b loc_00f308
	sub.w d6,d7
	addi.w #$28,d6
	btst #0,d5
	bne.b loc_00f308
	jsr loc_00f44c(pc)

loc_00f308:
	movem.l (a7)+,d7/a6
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\
loc_00f30e:
	dc.b $14,$12,$ff,$ff,$02,$02,$00,$00,$02,$02,$01,$01,$02,$02,$02,$02 
	dc.b $02,$02,$03,$03,$02,$02,$04,$04,$0b,$07,$ff,$ff,$14,$11,$ff,$ff
	dc.b $02,$02,$05,$05,$02,$02,$06,$06,$02,$02,$07,$07,$02,$02,$08,$08
	dc.b $02,$02,$09,$09,$0b,$07,$ff,$ff,$02,$02,$0a,$0a,$02,$02,$0b,$0b
	dc.b $02,$02,$0c,$0c,$02,$02,$0d,$0d,$02,$02,$0e,$0e,$0b,$07,$ff,$ff
	dc.b $02,$02,$0f,$0f,$02,$02,$10,$10,$02,$02,$11,$11,$02,$02,$12,$12
	dc.b $02,$02,$13,$13,$0b,$07,$ff,$ff,$00,$00

;~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00f378:
	movem.l d7/a6,-(a7)
	move.w d7,d5
	tst.b ($51,a6)
	bne.b loc_00f3a8
	addq.w #1,($4e,a6)
	move.w ($4e,a6),d0
	add.w d0,d0
	add.w d0,d0
	cmpi.w #$3,(-$7f94,a5)
	beq.b loc_00f39e
	move.b loc_00f3e2(pc,d0.w),d0
	bra.b loc_00f3a2

loc_00f39e:
	move.b loc_00f3e2+1(pc,d0.w),d0

loc_00f3a2:
	beq.b loc_00f3dc
	move.b d0,($51,a6)

loc_00f3a8:
	subq.b #1,($51,a6)
	bpl.b loc_00f3b4
	move.b #$ff,($51,a6)

loc_00f3b4:
	move.w ($4e,a6),d1
	add.w d1,d1
	add.w d1,d1
	clr.w d6
	clr.w d7
	move.b loc_00f3e2+2(pc,d1.w),d6
	bmi.b loc_00f3dc
	move.b loc_00f3e2+3(pc,d1.w),d7
	bmi.b loc_00f3dc
	sub.w d6,d7
	addi.w #$3c,d6
	btst #0,d5
	bne.b loc_00f3dc
	jsr loc_00f488(pc)

loc_00f3dc:
	movem.l (a7)+,d7/a6
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_00f3e2:
	dc.b $02,$02,$00,$00,$02,$02,$01,$01,$11,$0d,$ff,$ff,$02,$02,$02,$02
	dc.b $02,$02,$03,$03,$02,$02,$04,$04,$02,$02,$05,$05,$02,$02,$06,$06
	dc.b $02,$02,$07,$07,$02,$02,$08,$08,$02,$02,$09,$09,$05,$01,$ff,$ff
	dc.b $14,$12,$ff,$ff,$14,$11,$ff,$ff,$02,$02,$0a,$0a,$02,$02,$0b,$0b
	dc.b $02,$02,$0c,$0c,$02,$02,$0d,$0d,$02,$02,$0e,$0e,$02,$02,$0f,$0f
	dc.b $02,$02,$10,$10,$07,$03,$ff,$ff,$02,$02,$11,$11,$02,$02,$12,$12
	dc.b $02,$02,$13,$13,$0f,$0b,$ff,$ff,$00,$00

;|||||||||||||||||
loc_00f44c:
	movem.l d7/a6,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$2e00,d2
	moveq #$0,d4
	moveq #$0,d5
	lea loc_091d1c,a4
	subq.w #1,d6
	add.w d6,d6
	add.w d6,d6
	adda.w d6,a4

loc_00f46e:
	movea.l (a4)+,a0
	movem.l	d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00f46e
	movem.l (a7)+,d7/a6
	rts

;===========================
loc_00f488:
	movem.l d7/a6,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$2e00,d2
	moveq #$0,d4
	moveq #$0,d5
	lea loc_091d1c,a4
	subq.w #1,d6
	add.w d6,d6
	add.w d6,d6
	adda.w d6,a4

loc_00f4aa:
	movea.l (a4)+,a0
	movem.l	d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00f4aa
	movem.l (a7)+,d7/a6
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00f4c4:
	moveq #$0,d0	
	move.w ($e,a6),d0
	move.l d0,d6
	divu.w #$d,d0
	addq.w #1,d0
	sub.w d7,d6
	divu.w d0,d6
	addi.w #$34,d6
	jsr loc_00f4fc(pc)
	rts

;||||||||||||||||||||||
loc_00f4e0:
	moveq #$0,d0	
	move.w ($e,a6),d0
	move.l d0,d6
	divu.w #$d,d0
	addq.w #1,d0
	sub.w d7,d6
	divu.w d0,d6
	addi.w #$41,d6
	jsr loc_00f52c(pc)
	rts

;||||||||||||||||||||||
loc_00f4fc:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$2c00,d2
	moveq #0,d4
	moveq #0,d5
	lea loc_091940,a4
	subq.w #1,d6
	add.w d6,d6
	add.w d6,d6
	movea.l (a4,d6.w),a0
	jsr loc_0041d8
	movem.l (a7)+,d7
	rts

;||||||||||||||||||||||
loc_00f52c:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$2c00,d2
	moveq #0,d4
	moveq #0,d5
	lea loc_091940,a4
	subq.w #1,d6
	add.w d6,d6
	add.w d6,d6
	movea.l (a4,d6.w),a0
	jsr loc_0041d8
	movem.l (a7)+,d7
	rts

;||||||||||||||||||||||
loc_00f55c:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$d000,d2
	moveq #$0,d3
	moveq #$0,d4
	moveq #$0,d5
	lea loc_091b34,a4
	adda.l #$a4,a4
	moveq #$0,d7

loc_00f580:
	movea.l (a4)+,a0
	movem.l d0-d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0-d5/d7/a4
	dbra d7,loc_00f580
	movem.l (a7)+,d7
	rts

;=========================
loc_00f59a:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$d000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$a8,a4
	moveq #0,d7

loc_00f5be:
	movea.l (a4)+,a0
	movem.l	d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00f5be
	movem.l (a7)+,d7
	rts

;=========================
loc_00f5d8:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$2d00,d2
	moveq #0,d4
	moveq #0,d5
	lea loc_091940,a4
	adda.l #$1a0,a4
	movea.l (a4)+,a0
	jsr loc_0041d8
	movem.l (a7)+,d7
	rts

;======Sho Dao Stare Down 3======
loc_00f606:
	move.w #$10,-(a7)
	move.l #loc_0913a8,-(a7)
	jsr loc_007554
	lea (6,a7),a7

	move.w #$2e,-(a7)
	move.l #loc_091d10,-(a7)
	jsr loc_007554
	lea (6,a7),a7

	move.w #$7000,(-$4234,a5)
	cmpi.w #$3,(-$7f94,a5)
	beq.b loc_00f644
	move.w #$7a,($e,a6)
	bra.b loc_00f64a

loc_00f644:
	move.w #$65,($e,a6)

loc_00f64a
	jsr loc_00f67e(pc)
	rts

;===================================
loc_00f650:
	move.w ($e,a6),d7

loc_00f654:
	jsr loc_00f694(pc)
	jsr loc_00f768(pc)
	jsr loc_00f8b8(pc)
	jsr loc_00f950(pc)
	jsr loc_00f8d4(pc)
	jsr loc_00f98e(pc)
	jsr loc_00f9cc(pc)

	trap #5
	dbra d7,loc_00f654
	jsr loc_0071e0
	rts

;|||||||||||||||||||||||||||||||||||
loc_00f67e:
	move.w #$ffff,($4c,a6)
	move.w #$ffff,($4e,a6)
	clr.b ($50,a6)
	clr.b ($51,a6)
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00f694:
	movem.l d7/a6,-(a7)
	move.w d7,d5
	tst.b ($50,a6)
	bne.b loc_00f6c4
	addq.w #1,($4c,a6)
	move.w ($4c,a6),d0
	add.w d0,d0
	add.w d0,d0
	cmpi.w #$3,(-$7f94,a5)
	beq.b loc_00f6ba
	move.b loc_00f6fe(pc,d0.w),d0
	bra.b loc_00f6be

loc_00f6ba:
	move.b loc_00f6fe+1(pc,d0.w),d0

loc_00f6be:
	beq.b loc_00f6f8
	move.b d0,($50,a6)

loc_00f6c4:
	subq.b #1,($50,a6)
	bpl.b loc_00f6d0
	move.b #$ff,($50,a6)

loc_00f6d0:
	move.w ($4c,a6),d1
	add.w d1,d1
	add.w d1,d1
	clr.w d6
	clr.w d7
	move.b loc_00f6fe+2(pc,d1.w),d6
	bmi.b loc_00f6f8
	move.b loc_00f6fe+3(pc,d1.w),d7
	bmi.b loc_00f6f8
	sub.w d6,d7
	addi.w #$50,d6
	btst #0,d5
	bne.b loc_00f6f8
	jsr loc_00f840(pc)

loc_00f6f8:
	movem.l (a7)+,d7/a6
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\
loc_00f6fe:
	dc.b $02,$02,$00,$00,$02,$02,$01,$01,$02,$02,$02,$02,$02,$02,$03,$03
	dc.b $02,$02,$04,$04,$0b,$07,$ff,$ff,$02,$02,$05,$06,$02,$02,$07,$08
	dc.b $02,$02,$09,$0a,$02,$02,$0b,$0c,$02,$02,$0d,$0e,$0b,$07,$ff,$ff
	dc.b $14,$12,$ff,$ff,$14,$11,$ff,$ff,$02,$02,$0f,$10,$02,$02,$11,$12
	dc.b $02,$02,$13,$15,$02,$02,$16,$18,$02,$02,$19,$1b,$0b,$07,$ff,$ff
	dc.b $02,$02,$1c,$1e,$02,$02,$1f,$21,$02,$02,$22,$24,$02,$02,$25,$27
	dc.b $02,$02,$28,$2a,$0b,$07,$ff,$ff,$00,$00

;~~~~~~~~~~~~~~~~~~~~~~~~
loc_00f768:
	movem.l d7/a6,-(a7)
	move.w d7,d5
	tst.b ($51,a6)
	bne.b loc_00f798
	addq.w #1,($4e,a6)
	move.w ($4e,a6),d0
	add.w d0,d0
	add.w d0,d0
	cmpi.w #$3,(-$7f94,a5)
	beq.b loc_00f78e
	move.b loc_00f7d2(pc,d0.w),d0
	bra.b loc_00f792

loc_00f78e:
	move.b loc_00f7d2+1(pc,d0.w),d0

loc_00f792:
	beq.b loc_00f7cc
	move.b d0,($51,a6)

loc_00f798:
	subq.b #1,($51,a6)
	bpl.b loc_00f7a4
	move.b #$ff,($51,a6)

loc_00f7a4:
	move.w ($4e,a6),d1
	add.w d1,d1
	add.w d1,d1
	clr.w d6
	clr.w d7
	move.b loc_00f7d2+2(pc,d1.w),d6
	bmi.b loc_00f7cc
	move.b loc_00f7d2+3(pc,d1.w),d7
	bmi.b loc_00f7cc
	sub.w d6,d7
	addi.w #$7b,d6
	btst #0,d5
	bne.b loc_00f7cc
	jsr loc_00f87c(pc)

loc_00f7cc:
	movem.l (a7)+,d7/a6
	rts	

;/\/\/\/\/\/\/\/\/\/\/\/\
loc_00f7d2:
	dc.b $14,$12,$ff,$ff,$02,$02,$00,$01,$02,$02,$02,$03,$02,$02,$04,$05
	dc.b $02,$02,$06,$07,$02,$02,$08,$09,$0b,$07,$ff,$ff,$14,$11,$ff,$ff
	dc.b $02,$02,$0a,$0b,$02,$02,$0c,$0d,$02,$02,$0e,$0f,$02,$02,$10,$11
	dc.b $02,$02,$12,$13,$0b,$07,$ff,$ff,$02,$02,$14,$15,$02,$02,$16,$17
	dc.b $05,$03,$ff,$ff,$02,$02,$18,$1a,$02,$02,$1b,$1d,$02,$02,$1e,$20
	dc.b $06,$04,$ff,$ff,$02,$02,$21,$23,$02,$02,$24,$26,$02,$02,$27,$28
	dc.b $02,$02,$29,$2a,$02,$02,$2b,$2c,$0b,$07,$ff,$ff,$00,$00

;|||||||||||||||||||||||||
loc_00f840:
	movem.l d7/a6,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$2e00,d2
	moveq #8,d4
	moveq #0,d5
	lea loc_091d1c,a4
	subq.w #1,d6
	add.w d6,d6
	add.w d6,d6
	adda.w d6,a4
	
loc_00f862:
	movea.l (a4)+,a0
	movem.l d0-d5/d7/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0-d5/d7/a4
	dbra d7,loc_00f862
	movem.l (a7)+,d7/a6
	rts

;||||||||||||||||||||||||
loc_00f87c:
	movem.l d7/a6,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$2e00,d2
	moveq #-$10,d4
	moveq #8,d5
	lea loc_091d1c,a4
	subq.w #1,d6
	add.w d6,d6
	add.w d6,d6
	adda.w d6,a4
	
loc_00f89e:
	movea.l (a4)+,a0
	movem.l	d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00f89e
	movem.l (a7)+,d7/a6
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00f8b8:
	moveq #$0,d0	
	move.w ($e,a6),d0
	move.l d0,d6
	divu.w #$e,d0
	addq.w #1,d0
	sub.w d7,d6
	divu.w d0,d6
	addi.w #$18,d6
	jsr loc_00f8f0(pc)
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00f8d4:
	moveq #$0,d0	
	move.w ($e,a6),d0
	move.l d0,d6
	divu.w #$e,d0
	addq.w #1,d0
	sub.w d7,d6
	divu.w d0,d6
	addi.w #$26,d6
	jsr loc_00f920(pc)
	rts

;|||||||||||||||||||||||||
loc_00f8f0:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$2c00,d2
	moveq #8,d4
	moveq #0,d5
	lea loc_091940,a4
	subq.w #1,d6
	add.w d6,d6
	add.w d6,d6
	movea.l (a4,d6.w),a0
	jsr loc_0041d8
	movem.l (a7)+,d7
	rts

;|||||||||||||||||||||||||
loc_00f920:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$2c00,d2
	moveq #-$10,d4
	moveq #8,d5
	lea loc_091940,a4
	subq.w #1,d6
	add.w d6,d6
	add.w d6,d6
	movea.l (a4,d6.w),a0
	jsr loc_0041d8
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00f950:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$d000,d2
	moveq #0,d3
	moveq #8,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$9c,a4
	moveq #0,d7

loc_00f974:
	movea.l (a4)+,a0
	movem.l d0-d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0-d5/d7/a4
	dbra d7,loc_00f974
	movem.l (a7)+,d7
	rts

;========================
loc_00f98e:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$d000,d2
	moveq #0,d3
	moveq #-$10,d4
	moveq #8,d5
	lea loc_091b34,a4
	adda.l #$a0,a4
	moveq #0,d7

loc_00f9b2:
	movea.l (a4)+,a0
	movem.l	d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00f9b2
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00f9cc:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$2d00,d2
	moveq #0,d4
	moveq #0,d5
	lea loc_091940,a4
	adda.l #$19c,a4
	movea.l (a4)+,a0
	jsr loc_0041d8
	movem.l (a7)+,d7
	rts

;===================================
loc_00f9fa:
	move.w #$7e,-(a7) 
	move.l #loc_09fe08,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	move.w #$10,-(a7)
	move.l #loc_091424,-(a7)
	jsr loc_007554
	lea (6,a7),a7

	move.w #0,(-$4234,a5)
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_00fa38
	move.w #$74,($e,a6)
	bra.b loc_00fa3e
	
loc_00fa38:
	move.w #$60,($e,a6)

loc_00fa3e:
	jsr loc_010c46(pc)
	rts

;==================================
loc_00fa44:
	move.w ($e,a6),d7

loc_00fa48:
	lea loc_00fa62(pc),a0
	jsr loc_010c52(pc)
	jsr loc_00ffb6(pc)
	trap #5
	dbra d7,loc_00fa48
	jsr loc_0071e0
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_00fa62:
	dc.w $0028,$0021
	dc.l loc_00fa86

	dc.w $0028,$0021
	dc.l loc_00faf4

	dc.w $0014,$0010
	dc.l loc_00fb62

	dc.w $001e,$001a
	dc.l loc_00fbea
	
	dc.l $00000000

;----------------------
loc_00fa86:
	move.w ($38,a6),d5
	move.w d5,d6
	sub.w ($36,a6),d6
	tst.w d6
	bne.b loc_00faa4
	jsr loc_0071e0
	move.w #$0,d0
	jsr loc_00ffe4(pc)
	bra.b loc_00fabc

loc_00faa4:
	cmpi.w #1,d6
	bne.b loc_00fabc
	move.w #$1,-(a7)
	move.w #$7f,-(a7)
	jsr loc_0076a6
	lea (4,a7),a7

loc_00fabc:
	mulu.w d5,d5
	btst #0,d6
	bne.b loc_00fac8
	addq.w #2,d6
	bra.b loc_00faca
	
loc_00fac8:
	subq.w #2,d6

loc_00faca:
	mulu.w d6,d6
	move.w d6,d0
	muls.w #$fe90,d0
	divs.w d5,d0
	addi.w #$140,d0
	move.w d0,(0,a6)
	move.w d6,d0

	muls.w #$ff80,d0
	divs.w d5,d0
	addi.w #$f0,d0
	move.w d0,(2,a6)
	moveq #-1,d0
	jsr loc_00fc62(pc)
	rts

;-----------------------
loc_00faf4:
	move.w ($38,a6),d5
	move.w d5,d6
	sub.w ($36,a6),d6
	tst.w d6
	bne.b loc_00fb12
	jsr loc_0071e0
	move.w #$0,d0
	jsr loc_00ffe4(pc)
	bra.b loc_00fb2a

loc_00fb12:
	cmpi.w #1,d6
	bne.b loc_00fb2a
	move.w #$1,-(a7)
	move.w #$7f,-(a7)
	jsr loc_0076a6
	lea (4,a7),a7

loc_00fb2a:
	mulu.w d5,d5
	btst #0,d6
	bne.b loc_00fb36
	addq.w #2,d6
	bra.b loc_00fb38
	
loc_00fb36:
	subq.w #2,d6

loc_00fb38:
	mulu.w d6,d6
	move.w d6,d0
	muls.w #$170,d0
	divs.w d5,d0
	addi.w #-$30,d0
	move.w d0,(4,a6)
	move.w d6,d0

	muls.w #$ff80,d0
	divs.w d5,d0
	addi.w #$f0,d0
	move.w d0,(6,a6)
	moveq #-1,d0
	jsr loc_00fcc2(pc)
	rts

;-----------------------
loc_00fb62:
	move.w ($38,a6),d5
	move.w d5,d6
	sub.w ($36,a6),d6
	tst.w d6
	bne.b loc_00fb80
	jsr loc_0071e0
	move.w #$0,d0
	jsr loc_00ffe4(pc)
	bra.b loc_00fb98

loc_00fb80:
	cmpi.w #1,d6
	bne.b loc_00fb98
	move.w #$0,-(a7)
	move.w #$7f,-(a7)
	jsr loc_0076a6
	lea (4,a7),a7

loc_00fb98:
	addi.w #$a,d5	
	addi.w #$a,d6
	mulu.w d5,d5
	btst #0,d6
	bne.b loc_00fbac
	addq.w #2,d6
	bra.b loc_00fbae
	
loc_00fbac:
	subq.w #2,d6

loc_00fbae:
	mulu.w d6,d6
	move.w d6,d0
	muls.w #-$100,d0
	divs.w d5,d0
	addi.w #$1a0,d0
	move.w d0,(0,a6)
	move.w d6,d0
	muls.w #$100,d0
	divs.w d5,d0
	addi.w #-$60,d0
	move.w d0,(4,a6)
	move.w #$70,(2,a6)
	move.w #$70,(6,a6)
	moveq #0,d0
	jsr loc_00fc62(pc)
	moveq #0,d0
	jsr loc_00fcc2(pc)
	rts

;-----------------------
loc_00fbea:
	move.w #$a0,(0,a6)
	move.w #$a0,(4,a6)
	move.w #$70,(2,a6)
	move.w #$70,(6,a6)
	btst #0,($37,a6)
	bne.b loc_00fc14
	addq.w #2,(0,a6)
	addq.w #3,(4,a6)
	bra.b loc_00fc1c

loc_00fc14:
	subq.w #2,(0,a6)
	subq.w #3,(4,a6)

loc_00fc1c:
	moveq #0,d0
	jsr loc_00fc62(pc)
	moveq #0,d0
	jsr loc_00fcc2(pc)
	rts

;|||||||||||||||||||
loc_00fc2a:
	movem.l a6,-(a7)
	move.w ($e,a6),d0
	subq.w #7,d0
	cmp.w d0,d7
	bcs.b loc_00fc5c
	move.w #$a0,(0,a6)
	move.w #$70,(2,a6)
	move.w #$a0,(4,a6)
	move.w #$70,(6,a6)
	moveq #0,d0
	jsr loc_00fc62(pc)
	moveq #0,d0
	jsr loc_00fcc2(pc)

loc_00fc5c:
	movem.l (a7)+,a6
	rts

;|||||||||||||||||||
loc_00fc62:
	movem.l d7,-(a7)
	move.w d0,d6
	move.w (0,a6),d0
	move.w (2,a6),d1
	move.w #$e000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$b4,a4
	tst.w d6
	bne.b loc_00fca2
	moveq #3,d7

loc_00fc8c:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00fc8c
	bra.b loc_00fcbc

loc_00fca2:
	move.w #$7e00,d2
	moveq #3,d7

loc_00fca8:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004848
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00fca8

loc_00fcbc:
	movem.l (a7)+,d7
	rts

;|||||||||||||||||||||||||||||||
loc_00fcc2:
	movem.l d7,-(a7)
	move.w d0,d6
	move.w (4,a6),d0
	move.w (6,a6),d1
	move.w #$e000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$c4,a4
	tst.w d6
	bne.b loc_00fd02
	moveq #3,d7

loc_00fcec:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00fcec
	bra.b loc_00fd1c

loc_00fd02:
	move.w #$7e00,d2
	moveq #3,d7

loc_00fd08:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004848
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00fd08

loc_00fd1c:
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~ can be reduced
loc_00fd22:
	move.w #$10,-(a7)
	move.l #loc_091508,-(a7)
	jsr loc_007554
	lea ($6,a7),a7
	move.w #1,d0
	jsr loc_00ffe4(pc)
	move.w #0,(-$4234,a5)
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_00fd54
	move.w #$f,($e,a6)
	bra.b loc_00fd5a

loc_00fd54:
	move.w #$f,($e,a6)

loc_00fd5a:
	rts

;|||||||||||||||||||||||||||||||
loc_00fd5c:
	jsr loc_00fd22(pc)
	move.w ($e,a6),d7
	
loc_00fd64:
	jsr loc_00fd88(pc)
	jsr loc_00fdf0(pc)
	jsr loc_00fe2e(pc)
	jsr loc_00ffb6(pc)
	moveq #-1,d0
	jsr loc_010092(pc)
	trap #5
	dbra d7,loc_00fd64
	jsr loc_0071e0
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00fd88:
	move.w ($e,a6),d0
	sub.w d7,d0	

	cmpi.w #0,d0
	bne.b loc_00fdae
	move.w #$50,(0,a6)
	move.w #$70,(2,a6)
	move.w #$f0,(4,a6)
	move.w #$70,(6,a6)
	rts

loc_00fdae:
	cmpi.w #4,d0
	bne.b loc_00fdce
	move.w #$70,(0,a6)
	move.w #$70,(2,a6)
	move.w #$d0,(4,a6)
	move.w #$70,(6,a6)
	rts

loc_00fdce:
	cmpi.w #8,d0
	bne.b loc_00fdee
	move.w #$90,(0,a6)
	move.w #$70,(2,a6)
	move.w #$b0,(4,a6)
	move.w #$70,(6,a6)
	rts

loc_00fdee:
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00fdf0:
	movem.l d7,-(a7)
	move.w (0,a6),d0
	move.w (2,a6),d1
	move.w #$e000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$d4,a4
	moveq #3,d7

loc_00fe14:
	movea.l (a4)+,a0
	movem.l	d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00fe14
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00fe2e:
	movem.l d7,-(a7)
	move.w (4,a6),d0
	move.w (6,a6),d1
	move.w #$e000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$e4,a4
	moveq #3,d7

loc_00fe52:
	movea.l (a4)+,a0
	movem.l	d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00fe52
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~~~
loc_00fe6c:
	move.w #$10,-(a7)
	move.l #loc_0915e8,-(a7)
	jsr loc_007554
	lea ($6,a7),a7
	move.w #2,d0
	jsr loc_00ffe4(pc)
	move.w #0,(-$4234,a5)
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_00fe9e
	move.w #$f,($e,a6)
	bra.b loc_00fea4

loc_00fe9e:
	move.w #$f,($e,a6)

loc_00fea4:
	rts

;|||||||||||||||||||||||||||||||
loc_00fea6:
	jsr loc_00fe6c(pc)
	move.w ($e,a6),d7
	
loc_00feae:
	jsr loc_00fed2(pc)
	jsr loc_00ff3a(pc)
	jsr loc_00ff78(pc)
	jsr loc_00ffb6(pc)
	moveq #-1,d0
	jsr loc_010092(pc)
	trap #5
	dbra d7,loc_00feae
	jsr loc_0071e0
	rts	

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00fed2
	move.w ($e,a6),d0
	sub.w d7,d0	

	cmpi.w #0,d0
	bne.b loc_00fef8
	move.w #$ffc0,(0,a6)
	move.w #$70,(2,a6)
	move.w #$180,(4,a6)
	move.w #$70,(6,a6)
	rts

loc_00fef8:
	cmpi.w #4,d0
	bne.b loc_00ff18
	move.w #$ffe0,(0,a6)
	move.w #$70,(2,a6)
	move.w #$160,(4,a6)
	move.w #$70,(6,a6)
	rts

loc_00ff18:
	cmpi.w #8,d0
	bne.b loc_00ff38
	move.w #$0,(0,a6)
	move.w #$70,(2,a6)
	move.w #$140,(4,a6)
	move.w #$70,(6,a6)
	rts

loc_00ff38:
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00ff3a:
	movem.l d7,-(a7)
	move.w (4,a6),d0
	move.w (6,a6),d1
	move.w #$e000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$104,a4
	moveq #1,d7

loc_00ff5e:
	movea.l (a4)+,a0
	movem.l	d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00ff5e
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00ff78:
	movem.l d7,-(a7)
	move.w (0,a6),d0
	move.w (2,a6),d1
	move.w #$e000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$f4,a4
	moveq #3,d7

loc_00ff9c:
	movea.l (a4)+,a0
	movem.l	d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_00ff9c
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_00ffb6:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$7f00,d2
	moveq #0,d4
	moveq #0,d5
	lea loc_091940,a4
	adda.l #$19c,a4
	movea.l (a4)+,a0
	jsr loc_0041d8
	movem.l (a7)+,d7
	rts

;||||||||||||||||||||||||||||||||||||
loc_00ffe4:
	cmpi.w #2,d0
	bne.b loc_010000
	move.w #$7f,-(a7)
	move.l #loc_010072,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	bra.b loc_010030

loc_010000:
	cmpi.w #1,d0
	bne.b loc_01001c
	move.w #$7f,-(a7)
	move.l #loc_010052,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	bra.b loc_010030

loc_01001c:
	move.w #$7f,-(a7)
	move.l #loc_010032,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

loc_010030:
	rts
	
;/\/\/\/\/\/\/\/\/\/\/\
loc_010032:
	dc.w $0000,$100f,$100f,$100f,$100f,$100f,$100f,$100f
	dc.w $100f,$100f,$100f,$100f,$100f,$100f,$100f,$100f

loc_010052:
	dc.w $7ddd,$7ddd,$7ddd,$7ddd,$7ddd,$7ddd,$7ddd,$7ddd
	dc.w $7ddd,$7ddd,$7ddd,$7ddd,$7ddd,$7ddd,$7ddd,$7ddd

loc_010072:
	dc.w $7ddd,$7ddd,$7ddd,$7ddd,$7ddd,$7ddd,$7ddd,$7ddd
	dc.w $7ddd,$7ddd,$7ddd,$7ddd,$7ddd,$7ddd,$7ddd,$7ddd

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_010092:
	move.w ($e,a6),d1
	subq.w #1,d1
	cmp.w d1,d7
	bne.b loc_0100ac
	move.w d0,-(a7)
	move.w #$7f,-(a7)
	jsr loc_0076a6
	lea (4,a7),a7

loc_0100ac:
	rts

;==============================
loc_0100ae:
	move.w #$10,-(a7)
	move.l #loc_0916b0,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	move.w #0,(-$4234,a5)
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_0100d8
	move.w #$145,($e,a6)
	bra.b loc_0100de

loc_0100d8:
	move.w #$10e,($e,a6)

loc_0100de:
	clr.w ($14,a6)
	jsr loc_010182(pc)
	move.w #3,-(a7)
	pea loc_01dabc
	trap #1
	addq.l #6,a7
	jsr loc_028358
	jsr loc_027a4a
	move.w #4,-(a7)
	pea loc_02778e
	trap #1
	addq.l #6,a7
	rts

;----------------------------------
loc_010110:
	move.w ($e,a6),d7

loc_010114:
	jsr loc_0103bc(pc)
	jsr loc_010418(pc)
	jsr loc_0101a2(pc)

;render bai-hu eyes
	move.b #$0,d0
	move.l #loc_010438,a0
	jsr loc_0040c2

;Portraits
	move.b #$fe,d0
	move.l #loc_010344,a0
	jsr loc_0040c2

;Glow Background
	move.b #$ff,d0
	move.l #loc_010486,a0
	jsr loc_0040c2

	trap #5
	addq.w #1,($14,a6)
	dbra d7,loc_010114
	jsr loc_0071e0
	move.w #1,d0
	move.w #3,d1
	lsl d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	move.w #1,d0
	move.w #4,d1
	lsl d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_010182:
	move.w #$ffff,($34,a6)
	clr.w ($36,a6)
	clr.b ($3a,a6)
	clr.b ($3b,a6)
	move.w #$ff00,($3c,a6)
	move.w #$ff00,($3e,a6)
	rts

;Graphics Portraits
loc_0101a2:
	movem.l d7/a6,-(a7)
	tst.w ($36,a6)
	bne.b loc_0101d6
	addq.w #1,($34,a6)
	move.w ($34,a6),d0
	lsl.w #3,d0
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_0101c4
	move.b loc_010222(pc,d0.w),d1
	bra.b loc_0101c8
	
loc_0101c4:
	move.b loc_010222+1(pc,d0.w),d1

loc_0101c8:
	beq.b loc_010214
	ext.w d1
	move.w d1,($36,a6)
	subq.w #1,d1
	move.w d1,($38,a6)

loc_0101d6:
	subq.w #1,($36,a6)
	bpl.b loc_0101e2
	move.w #$ffff,($36,a6)

loc_0101e2:
	move.w ($34,a6),d0
	lsl.w #3,d0
	move.b loc_010222+2(pc,d0.w),($3a,a6)
	move.b loc_010222+3(pc,d0.w),($3b,a6)
	move.w loc_010222+4(pc,d0.w),d1
	move.w loc_010222+6(pc,d0.w),d2
	lea loc_010222(pc,d1.w),a1
	lea loc_010222(pc,d2.w),a2
	movem.l a2,-(a7)
	jsr (a1)
	movem.l (a7)+,a2
	jsr (a2)
	clr.w d0
	bra.b loc_01021c

loc_010214:
	subq.w #1,($34,a6)
	move.w #-1,d0

loc_01021c:
	movem.l (a7)+,d7/a6
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_010222:
	dc.b $08,$08,$00,$01,$00,$d2,$00,$e6,$19,$12,$00,$01,$00,$c2,$00,$ca
	dc.b $08,$08,$00,$01,$00,$fa,$00,$ca,$08,$08,$04,$01,$00,$d2,$00,$ca
	dc.b $19,$13,$04,$01,$00,$c2,$00,$ca,$08,$08,$04,$01,$00,$c2,$01,$0a
	dc.b $08,$08,$04,$07,$00,$c2,$00,$e6,$1a,$12,$04,$07,$00,$c2,$00,$ca
	dc.b $08,$08,$04,$07,$00,$fa,$00,$ca,$08,$08,$06,$07,$00,$d2,$00,$ca
	dc.b $19,$12,$06,$07,$00,$c2,$00,$ca,$08,$08,$06,$07,$00,$c2,$01,$0a
	dc.b $08,$08,$06,$05,$00,$c2,$00,$e6,$19,$13,$06,$05,$00,$c2,$00,$ca
	dc.b $08,$08,$06,$05,$00,$fa,$00,$ca,$08,$08,$02,$05,$00,$d2,$00,$ca
	dc.b $19,$12,$02,$05,$00,$c2,$00,$ca,$08,$08,$02,$05,$00,$c2,$01,$0a
	dc.b $08,$08,$02,$03,$00,$c2,$00,$e6,$1a,$12,$02,$03,$00,$c2,$00,$ca
	dc.b $08,$08,$02,$03,$00,$fa,$00,$ca,$08,$08,$09,$03,$00,$d2,$00,$ca
	dc.b $19,$13,$09,$03,$00,$c2,$00,$ca,$08,$08,$09,$03,$00,$c2,$00,$ca
	dc.b $00,$00

loc_0102e4:
	move.w #0,($3c,a6)
	rts

loc_0102ec:
	move.w #0,($3e,a6)
	rts

;?????????????????????????????????
loc_0102f4:
	move.w ($38,a6),d0
	sub.w ($36,a6),d0
	move.b loc_01033c(pc,d0.w),d0
	lsl.w #8,d0
	move.w d0,($3c,a6)
	rts

loc_010308:
	move.w ($38,a6),d0
	sub.w ($36,a6),d0
	move.b loc_01033c(pc,d0.w),d0
	lsl.w #8,d0
	move.w d0,($3e,a6)
	rts

loc_01031c:
	move.w ($36,a6),d0
	move.b loc_01033c(pc,d0.w),d0
	lsl.w #8,d0
	move.w d0,($3c,a6)
	rts

loc_01032c:
	move.w ($36,a6),d0
	move.b loc_01033c(pc,d0.w),d0
	lsl.w #8,d0
	move.w d0,($3e,a6)
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01033c:
	dc.b $f0,$c1,$94,$6b,$46,$28,$12,$05

;---------------------------;
;---Get Portrait location---;
;---------------------------;
loc_010344:
	lea ($27fa,a5),a6
	lea loc_092a08,a1
	movea.l a1,a2
	move.b ($3a,a6),d1
	move.b ($3b,a6),d2
	ext.w d1
	ext.w d2
	addi.w #$29,d1
	addi.w #$29,d2
	add.w d1,d1
	add.w d1,d1
	add.w d2,d2
	add.w d2,d2
	adda.w d1,a1
	adda.w d2,a2
	move.w #$4e,d0
	move.w #$70,d1
	move.b ($3a,a6),d2
	ext.w d2
	addi.w #$10,d2
	lsl.w #8,d2
	move.w ($3c,a6),d3
	moveq #0,d4
	moveq #0,d5
	movea.l (a1),a0
	movem.l d1/d4/d5/a2,-(a7)
	jsr loc_00431c
	movem.l (a7)+,d1/d4/d5/a2
	move.w #$f2,d0
	move.b ($3b,a6),d2
	ext.w d2
	addi.w #$10,d2
	lsl.w #8,d2
	addq.w #1,d2
	move.w ($3e,a6),d3
	movea.l (a2),a0
	jsr loc_00431c
	rts

;--------------------------------
loc_0103bc:
	cmp.w ($e,a6),d7
	bne.b loc_0103da
	lea loc_0a36c8,a0
	move.w #$29,-(a7)
	move.l (a0),-(a7)
	jsr loc_007554
	lea (6,a7),a7
	bra.b loc_010416

loc_0103da:
	move.w ($e,a6),d1
	lsr.w #1,d1
	subq.w #7,d1
	move.w d7,d0
	sub.w d1,d0
	cmpi.w #$e,d0
	bcc.b loc_010416
	btst #0,d0
	bne.b loc_010416
	lsr #1,d0
	subq.w #6,d0
	neg.w d0
	addq.w #1,d0
	lea loc_0a36c8,a0
	add.w d0,d0
	add.w d0,d0
	move.w #$29,-(a7)
	move.l (a0,d0.w),-(a7)
	jsr loc_007554
	lea (6,a7),a7

loc_010416:
	rts

;---------------------------
loc_010418:
	move.w ($e,a6),d0
	addq.w #1,d0
	move.w d7,d1
	addq.w #1,d1
	mulu.w #$2e0,d1
	divu.w d0,d1
	addi.w #-$d0,d1
	move.w d1,(0,a6)
	move.w #$70,(2,a6)
	rts

;---------------------------
loc_010438:
	lea ($27fa,a5),a6
	lea loc_091b34,a4
	btst #$0,($15,a6)
	beq.b loc_010452
	adda.l #$124,a4
	bra.b loc_010458

loc_010452:
	adda.l #$128,a4	

loc_010458:
	move.w (0,a6),d0
	move.w (2,a6),d1
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	movea.l (a4),a0
	move.w #$f100,d2
	movem.l d0/d1/d3/d4/d5/a0,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d3/d4/d5/a0
	move.w #$f101,d2
	jsr loc_004850
	rts

;--------------------------
;---Character Showoff BG---
;--------------------------
loc_010486:
	lea ($27fa,a5),a6
	lea loc_092a08,a4
	adda.l #$9c,a4
	movea.l (a4),a0
	movea.l a0,a1
	movea.l a0,a2
	movea.l a0,a3
	move.w ($10,a6),d0
	move.w ($12,a6),d1
	move.w ($14,a6),d2
	lsr.w #2,d2
	ext.l d2
	divu.w #$1c,d2
	swap d2
	cmpi.w #$e,d2
	bls.b loc_0104c0
	subi.w #$1c,d2
	neg.w d2

loc_0104c0:
	addi.w #$1a,d2
	lsl.w #8,d2	
	jsr loc_005844
	addq.w #1,($10,a6)
	subq.w #1,($12,a6)
	rts

;---------------------------
loc_0104d6:
	move.w #$7f,-(a7)
	move.l #loc_09fde8,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	move.w #$10,-(a7)
	move.l #loc_0917f8,-(a7)
	jsr loc_007554
	lea (6,a7),a7

	move.w #$7e,-(a7)
	move.l #loc_09fe08,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	move.w #$0,(-$4234,a5)
	cmpi.w #$3,(-$7f94,a5)
	beq.b loc_010528
	move.w #$78,($e,a6)
	bra.b loc_01052e

loc_010528:
	move.w #$64,($e,a6)

loc_01052e:
	jsr loc_010c46(pc)
	jsr loc_010902(pc)
	jsr loc_010870(pc)
	rts

;----------------------------
loc_01053c:
	move.w ($e,a6),d7

loc_010540:
	lea loc_010562(pc),a0
	jsr loc_010c52(pc)
	bne loc_01055a
	jsr loc_0109e0(pc)
	jsr loc_010a10(pc)
	trap #5
	dbra d7,loc_010540

loc_01055a:
	jsr loc_0071e0
	rts

;/\/\/\/\/\/\/\/\/\/\/\
loc_010562:
	dc.w $0029,$0022
	dc.l loc_010586

	dc.w $0029,$0022
	dc.l loc_0105a0

	dc.w $001e,$0019
	dc.l loc_01069a

	dc.w $0014,$0012
	dc.l loc_01076e

	dc.l $0

;--------------------------
loc_010586:
	jsr loc_0107ac(pc)
	jsr loc_0107ca(pc)
	jsr loc_0107f8(pc)
	moveq #0,d0
	jsr loc_010910(pc)
	moveq #0,d0
	jsr loc_010976(pc)
	rts

;---------------------------
loc_0105a0:
	move.w ($36,a6),d0
	cmp.w ($38,a6),d0
	bne.b loc_0105f2
	jsr loc_0071e0
	
	move.w #$0,-(a7)
	move.w #$c0,-(a7)
	move.l #loc_09fe08,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7
	
	move.w #$0,-(a7)
	move.w #$c3,-(a7)
	move.l #loc_09fe08,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7

	move.w #$a0,($42,a6)
	move.w #$10,($46,a6)
	move.w #$78,($48,a6)

loc_0105f2:
	move.w ($36,a6),d1
	mulu.w #$30,d1
	divu.w ($38,a6),d1
	addi.w #$a0,d1

	move.w d1,($42,a6)
	move.w ($38,a6),d1
	sub.w ($36,a6),d1
	mulu.w #$50,d1
	divu.w ($38,a6),d1
	addi.w #$10,d1
	btst #$1,($37,a6)
	beq.b loc_010626
	addq.w #2,d1
	bra.b loc_010628

loc_010626:
	subq.w #2,d1

loc_010628:
	move.w d1,($46,a6)
	moveq #0,d0
	jsr loc_010882(pc)
	moveq #0,d0
	jsr loc_010910(pc)
	move.w ($36,a6),d0
	cmp.w ($38,a6),d0
	bne.b loc_01064e
	move.w #$ff60,($44,a6)
	move.w #$130,($4a,a6)

loc_01064e:
	move.w ($36,a6),d1
	mulu.w #$30,d1
	divu.w ($38,a6),d1
	neg.w d1

;1065c
	addi.w #-$a0,d1
	move.w d1,($44,a6)
	move.w ($38,a6),d1
	sub.w ($36,a6),d1
	mulu.w #$50,d1
	divu.w ($38,a6),d1
	neg.w d1

;10676
	addi.w #$130,d1
	btst #1,($37,a6)
	beq.b loc_010686
	addq.w #2,d1
	bra.b loc_010688

loc_010686:
	subq.w #2,d1

loc_010688:
	move.w d1,($4a,a6)
	moveq #0,d0
	jsr loc_010976(pc)
	moveq #0,d0
	jsr loc_0108c2(pc)
	rts
	
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_01069a:
	move.w ($36,a6),d0	
	cmp.w ($38,a6),d0
	bne.b loc_0106ac
	jsr loc_010870(pc)	
	jsr loc_010902(pc)
	
loc_0106ac:
	move.w ($38,a6),d1
	sub.w ($36,a6),d1
	cmpi.w #$b,d1
	bhi.b loc_01070e
	bne.b loc_0106e4

	move.w #$c0,-(a7)
	move.l #loc_09fde8,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	move.w #$c3,-(a7)
	move.l #loc_09fde8,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

loc_0106e4:
	move.w #11,d0
	mulu.w d0,d0
	mulu.w d1,d1
	mulu.w #$a0,d1
	divu.w d0,d1
	move.w d1,($46,a6)
	subi.w #$140,d1
	neg.w d1
	move.w d1,($4a,a6)
	moveq #0,d0
	jsr loc_010882(pc)
	moveq #0,d0
	jsr loc_0108c2(pc)
	bra.b loc_01076c

loc_01070e:
	cmpi.w #$c,d1
	bne.b loc_01073e
	jsr loc_0071e0

	move.w #$0,-(a7)
	move.w #$c0,-(a7)
	jsr loc_0076a6
	lea (4,a7),a7

	move.w #$0,-(a7)
	move.w #$c3,-(a7)
	jsr loc_0076a6
	lea (4,a7),a7
	
loc_01073e:
	btst #0,($37,a6)
	bne.b loc_010754
	move.w #$a2,($46,a6)
	move.w #$a2,($4a,a6)
	bra.b loc_010760

loc_010754:
	move.w #$9e,($46,a6)
	move.w #$9e,($4a,a6)

loc_010760:
	moveq #0,d0
	jsr loc_010882(pc)
	moveq #0,d0
	jsr loc_0108c2(pc)

loc_01076c:
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
loc_01076e:
	move.w ($38,a6),d0
	sub.w ($36,a6),d0
	add.w d0,d0
	move.w #$178,($0,a6)
	add.w d0,(0,a6)
	move.w #$30,(2,a6)
	move.w #$ffd0,(4,a6)
	sub.w d0,(4,a6)
	move.w #$30,(6,a6)
	move.w #$8080,($40,a6)
	moveq #-1,d0
	jsr loc_010910(pc)
	moveq #-1,d0
	jsr loc_010976(pc)
	rts

;|||||||||||||||||||||||
loc_0107ac:
	move.w ($38,a6),d1
	sub.w ($36,a6),d1
	mulu.w #$39,d1
	divu.w ($38,a6),d1
	addi.w #$38,d1
	move.w d1,(2,a6)
	move.w d1,(6,a6)
	rts

;|||||||||||||||||||||||
loc_0107ca:
	move.w ($38,a6),d0
	subi.w #15,d0
	move.w ($36,a6),d1
	sub.w d0,d1
	bmi.b loc_0107f6
	mulu.w #$30,d1
	divu.w #$f,d1
	move.w d1,d0
	neg.w d0
	addi.w #$a0,d0
	addi.w #$a0,d1	
	move.w d0,(0,a6)
	move.w d1,(4,a6)

loc_0107f6:
	rts

;|||||||||||||||||||||||
loc_0107f8:
	move.w ($38,a6),d0
	move.w d0,d1
	sub.w ($36,a6),d1
	cmpi.w #$3,(-$7f94,a5)
	beq.b loc_010810
	move.b loc_010824(pc,d1.w),d1
	bra.b loc_010814

loc_010810:
	move.b loc_01084e(pc,d1.w),d1

loc_010814:
	andi.w #$ff,d1
	move.w d1,d2
	lsl.w #8,d1
	or.w d2,d1
	move.w d1,($40,a6)
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\
loc_010824:
	dc.w $f0f0,$f0f0,$f0f0,$f0f0,$f0ef,$efee,$eeed,$eceb
	dc.w $eae9,$e7e4,$e0dd,$d9d5,$d0ca,$c4bd,$b5ac,$a398
	dc.w $8c80,$7262,$5240,$2c17,$0000

loc_01084e:
	dc.w $f0f0,$f0f0,$f0f0,$f0ef,$efee,$eeed,$ebea,$e8e5
	dc.w $e2de,$dad4,$cec7,$bfb6,$ab9f,$9283,$7260,$4b34
	dc.w $1b00

;---------------------------
loc_010870:
	clr.w ($46,a6)
	move.w #$140,($4a,a6)
	move.w #$70,($48,a6)
	rts

;|||||||||||||||||||
loc_010882:
	movem.l d7/a6,-(a7)
	move.w d0,d6
	lea loc_091b34,a4
	adda.w #$10c,a4
	move.w ($46,a6),d0
	move.w ($48,a6),d1
	move.w #0,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	movea.l (a4),a0
	tst.w d6
	bne.b loc_0108b2
	jsr loc_004850
	bra.b loc_0108bc

loc_0108b2:
	move.w #$7e00,d2
	jsr loc_004848

loc_0108bc:
	movem.l (a7)+,d7/a6
	rts
;===========================
loc_0108c2:
	movem.l d7/a6,-(a7)
	move.w d0,d6
	lea loc_091b34,a4
	adda.w #$118,a4
	move.w ($4a,a6),d0
	move.w #$70,d1
	move.w #0,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	movea.l (a4),a0
	tst.w d6
	bne.b loc_0108f2
	jsr loc_004850
	bra.b loc_0108fc

loc_0108f2:
	move.w #$7e00,d2
	jsr loc_004848

loc_0108fc:
	movem.l (a7)+,d7/a6
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_010902:
	move.w #$110,($42,a6)
	move.w #$fef0,($44,a6)
	rts

;------------------------------
loc_010910:
	movem.l d7/a6,-(a7)
	move.w d0,d6
	lea loc_091b34,a4
	adda.w #$110,a4
	move.w (0,a6),d0
	move.w (2,a6),d1
	move.w #0,d2
	move.w ($40,a6),d3
	move.w ($42,a6),d4
	moveq #0,d5
	tst.w d6
	bne.b loc_010954
	move.w #$1,d7

loc_01093e:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_01093e
	bra.b loc_010970

loc_010954:
	move.w #$7e00,d2
	move.w #$1,d7

loc_01095c:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004848
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	dbra d7,loc_01095c

loc_010970:
	movem.l (a7)+,d7/a6
	rts

;--------------------------------
loc_010976:
	movem.l d7/a6,-(a7)
	move.w d0,d6
	lea loc_091b34,a4
	adda.w #$11c,a4
	move.w (4,a6),d0
	move.w (6,a6),d1
	move.w #0,d2
	move.w ($40,a6),d3
	move.w ($44,a6),d4
	moveq #0,d5
	tst.w d6
	bne.b loc_0109bc
	move.w #$1,d7

loc_0109a4:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004850
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	moveq #$1,d5
	dbra d7,loc_0109a4
	bra.b loc_0109da

loc_0109bc:
	move.w #$7e00,d2
	move.w #$1,d7

loc_0109c4:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
	jsr loc_004848
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
	moveq #1,d5
	dbra d7,loc_0109c4

loc_0109da:
	movem.l (a7)+,d7/a6
	rts

;--------------------------------
loc_0109e0:
	movem.l d7,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$7000,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	lea loc_091b34,a4
	adda.l #$88,a4
	movea.l (a4),a0
	jsr loc_004850
	movem.l (a7)+,d7
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
loc_010a10:
	move.w ($e,a6),d0
	subq.w #1,d0
	cmp.w d0,d7
	bne.b loc_010a4a
	move.w #$1,-(a7)
	move.w #$c0,-(a7)
	move.l #loc_0a1ba8,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7
	move.w #$1,-(a7)
	move.w #$c3,-(a7)
	move.l #loc_0a1bc8,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7

loc_010a4a:
	rts

;------------------------------
loc_010a4c:
	move.w #$10,-(a7)
	move.l #loc_090ca4,-(a7)
	jsr loc_007554
	lea (6,a7),a7

	move.w #$16,d0
	jsr loc_00d778

	move.w #$18,-(a7)
	move.l #loc_09fe08,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	move.w #$0,(-$4234,a5)
	cmpi.w #$3,(-$7f94,a5)
	beq.b loc_010a94
	move.w #$104,($c,a6)
	bra.b loc_010a9a

loc_010a94:
	move.w #$d4,($c,a6)

loc_010a9a:	
	rts

;-----------------------------
loc_010a9c:
	move.w #$17,d7

loc_010aa0:
	jsr loc_010b22(pc)
	jsr loc_010b92(pc)
	trap #5
	dbra d7,loc_010aa0

	move.w #$18,-(a7)
	move.l #loc_09fde8,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	move.w #$1a,-(a7)
	move.l #loc_09fde8,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	move.w #$1b,-(a7)
	move.l #loc_09fde8,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	move.w #$7fff,(-$4234,a5)
	move.w #1,d0
	jsr loc_00d7c0
	trap #5
	move.w #$f,d6
	move.w ($c,a6),d7

loc_010b04:
	move.w #1,d0
	jsr loc_00d7c0	

	trap #5
	jsr loc_010bc0(pc)	
	subq.w #1,d6
	dbra d7,loc_010b04
	jsr loc_0071e0
	rts

;==================
loc_010b22:
	movem.l d7/a6,-(a7)
	move.w d7,d6
	subi.w #$17,d6
	neg.w d6
	lsr.w #2,d6
	add.w d6,d6
	add.w d6,d6
	clr.w d0
	move.b loc_010b7a(pc,d6.w),d0
	subq.w #1,d0
	add.w d0,d0
	add.w d0,d0
	lea loc_090ce4,a4
	adda.w d0,a4
	move.b loc_010b7a+1(pc,d6.w),d7
	ext.w d7
	subq.w #1,d7
	move.w #$a0,d0
	move.w #$70,d1
	move.w loc_010b7a+2(pc,d6.w),d2
	moveq #0,d4
	moveq #0,d5
	
loc_010b60:
	movea.l (a4)+,a0
	movem.l d0/d1/d2/d4/d5/d7/a4,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d2/d4/d5/d7/a4
	dbra d7,loc_010b60
	movem.l (a7)+,d7/a6
	rts

;/\/\/\/\/\/\/\/\/\/\
loc_010b7a:
	dc.b $04,$01
	dc.w $1000

	dc.b $05,$01
	dc.w $1100

	dc.b $06,$03
	dc.w $1200

	dc.b $09,$04
	dc.w $1300

	dc.b $0d,$04
	dc.w $1400

	dc.b $11,$04
	dc.w $1500

;-------------------------------------------
loc_010b92:
	movem.l d7/a6,-(a7)
	lea loc_090ce4,a0
	adda.l #8,a0
	movea.l (a0),a0
	move.w #$a0,d0
	move.w #$70,d1
	move.w #$1800,d2
	moveq #0,d4
	moveq #0,d5
	jsr loc_0041d8
	movem.l (a7)+,d7/a6
	rts

loc_010bc0:
	tst.w d6
	bmi.b loc_010c24
	cmpi.w #$f,d6
	bne.b loc_010c16

	move.w #-1,-(a7)
	move.w #$18,-(a7)
	move.l #titlebgpalette,-(a7)
	jsr loc_0076e0
	lea (8,a7),a7

	lea loc_090cd4,a0
	move.w #-1,-(a7)
	move.w #$1a,-(a7)
	move.l (0,a0),-(a7)
	jsr loc_0076e0
	lea (8,a7),a7

	move.w #-1,-(a7)
	move.w #$1b,-(a7)
	move.l (4,a0),-(a7)
	jsr loc_0076e0
	lea (8,a7),a7
	bra.b loc_010c18

loc_010c16:
	bhi.b loc_010c24

loc_010c18:
	move.w d6,d0
	add.w d0,d0
	move.w loc_010c26(pc,d0.w),d0
	move.w d0,(-$4234,a5)

loc_010c24:
	rts

;/\/\/\/\/\/\/\/\/\/\
loc_010c26:
	dc.w $0000,$7111,$7222,$7333,$7444,$7555,$7666,$7777
	dc.w $7888,$7999,$7aaa,$7bbb,$7ccc,$7ddd,$7eee,$7fff

;-------------------------
loc_010c46:
	move.w #-1,($34,a6)
	clr.w ($36,a6)
	rts

;-------------------------
loc_010c52:
	movem.l d7/a6,-(a7)
	tst.w ($36,a6)
	bne.b loc_010c84
	addq.w #1,($34,a6)
	move.w ($34,a6),d0
	lsl.w #3,d0
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_010c74
	move.w (a0,d0.w),d0
	bra.b loc_010c78

loc_010c74:
	move.w 2(a0,d0.w),d0

loc_010c78:
	beq.b loc_010ca0
	move.w d0,($36,a6)
	subq.w #1,d0
	move.w d0,($38,a6)

loc_010c84:
	subq.w #1,($36,a6)	
	bpl.b loc_010c90
	move.w #-1,($36,a6)

loc_010c90:
	move.w ($34,a6),d0
	lsl.w #3,d0
	movea.l 4(a0,d0.w),a0
	jsr (a0)
	clr.w d0
	bra.b loc_010ca8

loc_010ca0:
	subq.w #1,($34,a6)
	move.w #-1,d0

loc_010ca8:
	movem.l (a7)+,d7/a6
	rts
