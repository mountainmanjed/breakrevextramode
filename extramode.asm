Extramodestart:;204d4
	clr.w ($2fe,a4)
	move.b ($24a,a4),(plextflagcpy00,a4)
	move.b ($246,a4),(plextflagcpy01,a4)

	tst.b (1,a4)
	bmi.w extra20666

	jsr loc_02d2d0
	movea.l ($1c6,a4),a0
	jsr (a0)

	btst #3,($2e1,a4)
	bne.w extra20798
	jsr loc_02913c
	bne.w extra207aa

;extra06 2050c
;	tst extraflag
;	beq extra2065e
	bsr.w extra20822
	btst #3,($24a,a4)
	bne.w extra20570
	cmpi.w #$a0,($226,a4)
	bgt.w extra20570
	tst.b (-$3dd,a5)
	bne.w extra20570
	move.b ($249,a3),d0
	andi.b #$0c,d0
	bne.w extra205d4
	cmpi.w #$aa,($358,a4)
	ble.w extra20570
	btst #0,($249,a4)
	bne.w extra20570
	btst #1,($249,a4)
	bne.w extra20570
	btst #2,($249,a4)
	bne.w extra20570
	tst.b ($249,a4)
	bne.w extra205a8

extra20570:
	move.b ($2f6,a4),-(a7)
	move.b ($2fa,a4),-(a7)
	move.b ($2fb,a4),-(a7)
	tst.b (0,a4)
	bmi.b extra20588
	sf (-$fd2,a5)
	bra.b extra2058c

extra20588:
	sf (-$fd1,a5)

extra2058c:
	jsr loc_02d964
	movea.l ($1c2,a4),a0
	jsr (a0)
	move.b (a7)+,($2fb,a4)
	move.b (a7)+,($2fa,a4)
	move.b (a7)+,($2f6,a4)
	bra.w extra2065e

extra205a8:
	move.w ($340,a4),d0
	subi.w #$20,d0
	add.w ($28c,a4),d0
	bpl.b extra205b8
	clr.w d0

extra205b8:
	move.w d0,d1
	mulu.w d0,d1
	cmpi.l #$10000,d1
	bcc.b extra205d0
	jsr RandomNumberGod
	cmp.w d1,d0
	bcc.w extra2064c

extra205d0:
	bra.w extra205f4

extra205d4:
	move.w ($340,a4),d1
	addi.w #$58,d1
	mulu.w ($340,a4),d1
	cmpi.l #$10000,d1
	bcc.b extra205f4
	jsr RandomNumberGod
	cmp.w d1,d0
	bcc.w extra2064c

extra205f4:
	move.w #1,d1
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #4,d0
	lsl.w d0,d1
	jsr RandomNumberGod
	cmpi.w #$bbbb,d0
	bcs.b extra20626
	move.w #1,d2
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #4,d0
	lsl.w d0,d2
	or.b d2,d1

extra20626:
	jsr RandomNumberGod
	andi.w #$f,d0
	or.b d0,d1
	tst.b ($247,a3)
	beq.b extra2063c
	bclr #0,d0

extra2063c:
	tst.b (0,a4)
	bmi.b extra20648
	move.b d1,(-$fd2,a5)
	bra.b extra2064c

extra20648:
	move.b d1,(-$fd1,a5)

extra2064c:
	jsr loc_02d964
	movea.l ($1c2,a4),a0
	jsr (a0)
	movea.l ($1ca,a4),a0
	jsr (a0)

extra2065e:
	bsr.w loc_0226a8
	bra.w extra206a4

;--------------------------
extra20666:
	jsr loc_02d7a2
	movea.l ($1c2,a4),a0
	jsr (a0)
	btst #3,($2e1,a4)
	bne.w extra20798
	jsr loc_02913c
	bne.w extra207aa

;extra07
;	tst extraflag
;	beq loc_02069e
	movea.l ($1ca,a4),a0
	jsr (a0)
	tst.w ($2fe,a4)
	bne.w extra206be
	bsr.w extra20822

extra2069e:
	movea.l ($1ca,a4),a0
	jsr (a0)

extra206a4:
;extra08
;	tst extraflag
;	beq loc_0206be
	tst.b (plextcounter00,a4)
	beq.b extra206be
	move.w ($2fe,a4),d0
	cmp.w ($252,a4),d0
	bgt.b extra206be
	clr.w ($2fe,a4)

extra206be:
;extra09
;	tst extraflag
;	beq extra206e0
	move.b (plextflagcpy00,a4),d1
	move.b ($24a,a4),(plextflagcpy00,a4)
	move.b d1,($24a,a4)
	move.b (plextflagcpy01,a4),d1
	move.b ($246,a4),(plextflagcpy01,a4)
	move.b d1,($246,a4)

extra206e0:
	move.w ($2fe,a4),d0
	tst.w d0
	ble.w extra20798
	move.w d0,($252,a4)
	movem.l d0,-(a7)

;extra10
;	tst extraflag
;	beq loc_02073c

	btst #1,($246,a4)
	bne.b extra2071c
	move.b ($209,a4),d0
	cmp.b ($208,a4),d0
	beq.b extra20712
	move.b d0,($208,a4)
	neg.l ($216,a4)

extra20712:
	tst.b ($249,a4)
	beq.b extra2071c
	bsr.w extra207ac

extra2071c:
	btst #1,(plextflagcpy01,a4)
	beq.b extra2073c
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.w (-$45de,a5),($212,a4)
	bset #1,($246,a4);safe
	st ($247,a4)

extra2073c:
	clr.w ($2bc,a4)
	bsr.w loc_023444
	tst.b (0,a4)
	bmi.b extra20754
	clr.w (-$368,a5)
	clr.w (-$366,a5)
	bra.b extra2075c

extra20754:
	clr.w (-$364,a5)
	clr.w (-$362,a5)

extra2075c:
	movem.l (a7)+,d0
	movea.l ($1d2,a4),a0
	lsl.w #2,d0
	movea.l (a0,d0.w),a0
	jsr loc_023384
	tst.b ($28e,a4)
	beq.w extra20790
	st ($28f,a4)

;extra11 2077c
;	btst extraflag
;	bne extra2078a
;	jsr loc_02ed40
;	bra extra20790

extra2078a:
	move.b #7,(plextcounter02,a4)

extra20790:
	clr.b ($249,a4)
	bra.w extra207aa

extra20798:
;extra12
;	tst.b extraflag
;	beq.b extra207aa
	tst.b (plextcounter01,a4)
	beq.b extra207aa
	jsr extraroutine02

extra207aa:
	rts

extra207ac:
	movea.l ($1ea,a4),a0
	move.l ($c,a0),d0
	cmp.l ($216,a4),d0
	bge.b extra207be
	move.l d0,($216,a4)

extra207be:
	move.l ($10,a0),d0
	cmp.l ($216,a4),d0
	ble.b extra207cc
	move.l d0,($216,a4)

extra207cc:
	move.l ($22a,a4),d0
	addi.l #$80,d0
	asr.l #8,d0
	move.l ($21a,a4),d1
	asr.l #8,d1
	muls.w #$a,d1
	sub.l d1,d0
	moveq #$70,d1
	muls.w #$37,d1
	sub.l d1,d0
	bpl.b extra20822
	neg.l d0
	divu.w #$a,d0
	swap d0
	clr.w d0
	asr.l #$8,d0
	sub.l d0,($21a,a4)
	tst.l d0
	bpl.b extra20804
	neg.l d0

extra20804:
	asr.l #2,d0
	tst.l ($216,a4)
	bmi.b extra20818
	sub.l d0,($216,a4)
	bpl.b extra20816
	clr.l ($216,a4)

extra20816:
	bra.b extra20822

extra20818:
	add.l d0,($216,a4)
	bmi.b extra20822
	clr.l ($216,a4)

extra20822:
	tst.b ($249,a4)
	beq.w extra208e2
	tst.b ($24b,a3)
	beq.b extra2083a
	move.b #$20,(plextcounter00,a4)
	bra.w extra208fc

extra2083a:
	move.b ($249,a4),d0
	andi.b #$06,d0
	bne.w extra208fc
	clr.w d0
	move.b (plextcounter00,a4),d0
	btst #5,($25e,a4)
	beq.b extra20858
	lsl.w #2,d0
	bra.b extra2085a

extra20858:
	lsl.w #1,d0

extra2085a:
	cmp.w ($28c,a4),d0
	bgt.w extra208fc
	andi.b #$40,($24a,a4)
	tst.b ($247,a4)
	bne.w extra208d8
	move.w (-$45de,a5),d0
	subi.w #9,d0
	cmp.w ($212,a4),d0
	ble.w extra208d8
	movea.l ($1ea,a4),a0
	move.l ($c,a0),d0
	move.l d0,d1
	asr.l #2,d1
	sub.l d1,d0
	cmp.l ($216,a4),d0
	bge.b extra208a0
	bset #3,($248,a4)
	bclr #2,($248,a4)

extra208a0:
	asr.l #1,d0
	move.l d0,d2
	move.l ($10,a0),d0
	move.l d0,d1
	asr.l #2,d1
	sub.l d1,d0
	cmp.l ($216,a4),d0
	ble.b extra208c0
	bclr #3,($248,a4)
	bset #2,($248,a4)

extra208c0:
	asr.l #1,d0
	cmp.l ($216,a4),d2
	ble.b extra208d4
	cmp.l ($216,a4),d0
	bge.b extra208d4
	andi.b #$f3,($248,a4)

extra208d4:
	bra.w extra208fc

extra208d8:
	bset #1,($246,a4)
	bra.w extra208fc

extra208e2:
	tst.b ($24b,a4)
	beq.b extra208f0
	move.b #$a,(plextcounter00,a4)
	bra.b extra208fc

extra208f0:
	tst.b (plextcounter00,a4)
	beq.b extra208fc
	andi.b #$04,($24a,a4)

extra208fc
	rts
