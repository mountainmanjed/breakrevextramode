
loc_01d092:
	clr.b (-$eaa,a5)
	jsr loc_01d85e(pc)
	tst.b BIOS_CARD_ANSWER
	bne.w loc_01d0dc
	btst #0,$10fdd1.l
	beq.w loc_01d0dc
	jsr loc_01d87e(pc)
	tst.b BIOS_CARD_ANSWER
	bne.w loc_01d0dc
	jsr loc_01d164(pc)
	move.b #0,(-$ea7,a5)
	jsr loc_01d252(pc)
	tst.w d0
	bne.b loc_01d0dc
	move.b #1,(-$eaa,a5)
	moveq #0,d0
	jsr loc_01d312(pc)

loc_01d0dc:
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	rts

;--------------------------
loc_01d0f0:
	clr.b (-$eaa,a5)
	clr.b (-$ea9,a5)
	jsr loc_01d85e(pc)
	cmpi.b #$80,BIOS_CARD_ANSWER
	beq.b loc_01d150
	btst #0,$10fdd1.l
	beq.b loc_01d116
	move.b #1,(-$ea9,a5)

loc_01d116:
	jsr loc_01d164(pc)
	move.b #1,(-$ea7,a5)
	jsr loc_01d252(pc)
	tst.w d0
	bne.b loc_01d150
	jsr loc_01d7a6(pc)
	jsr loc_01d8b8(pc)
	jsr loc_01d80e(pc)
	tst.b BIOS_CARD_ANSWER
	bne.b loc_01d14a
	move.b #1,(-$eaa,a5)
	moveq #0,d0
	jsr loc_01d312(pc)
	bra.b loc_01d150

loc_01d14a:
	moveq #1,d0
	jsr loc_01d312(pc)

loc_01d150:
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	rts

;--------------------------
loc_01d164:
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0

	move.w #$10,-(a7)
	move.l #loc_094758,-(a7)
	jsr loc_007554
	lea (6,a7),a7

	move.w #$12,-(a7)
	move.l #loc_096e4c,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	move.w #$13,-(a7)
	move.l #titlebgpalette,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	
	move.w #$14,d0
	jsr loc_00d748
	moveq #1,d0
	move.w #$1c,d1
	jsr loc_01d204(pc)
	jsr loc_011d3a;Arcadeprogress
	jsr loc_01d230(pc)

	cmpi.w #3,(-$7f94,a5)
	beq.b loc_01d1ec
	move.w #$257,(-$eb0,a5)
	move.w #$247,(-$eae,a5)
	move.w #$3b,(-$eac,a5)
	bra.b loc_01d1fe

loc_01d1ec:
	move.w #$1f3,(-$eb0,a5)
	move.w #$1e5,(-$eae,a5)
	move.w #$31,(-$eac,a5)

loc_01d1fe:
	clr.b (-$ea6,a5)
	rts

;--------------------------
loc_01d204:
	movem.l (a7)+,a2
	move.w (-$f30,a5),-(a7)
	move.w (-$ec6,a5),(-$f30,a5)
	lea (-$f24,a5),a0
	lea (-$ec4,a5),a1
	moveq #0,d2
	move.w #9,d7

loc_01d220:
	move.w (a0),-(a7)
	move.b (a1)+,d2
	move.w d2,(a0)+
	dbra d7,loc_01d220
	movem.l a2,-(a7)
	rts

;--------------------------
loc_01d230:
	movem.l (a7)+,a2
	lea (-$f24,a5),a0
	adda.l #$14,a0
	move.w #9,d7

loc_01d242:
	move.w (a7)+,-(a0)
	dbra d7,loc_01d242
	move.w (a7)+,(-$f30,a5)
	movem.l a2,-(a7)
	rts

;--------------------------
loc_01d252:
	tst.b (-$ea7,a5)
	bne.b loc_01d260
	move.b #0,(-$ea8,a5)
	bra.b loc_01d266

loc_01d260:
	move.b #1,(-$ea8,a5)

loc_01d266:
	move.w (-$eb0,a5),d7

loc_01d26a:
	trap #5
	jsr loc_01d354(pc)
	movem.l d3,-(a7)
	jsr loc_01d3a6(pc)
	jsr loc_01d490(pc)
	moveq #0,d0
	jsr loc_01d400(pc)
	moveq #0,d0
	jsr loc_01d448(pc)
	jsr loc_01d4e0(pc)
	jsr loc_01d55a(pc)
	jsr loc_01d594(pc)
	jsr loc_01d626(pc)
	jsr loc_01d6d6(pc)
	movem.l (a7)+,d3
	btst #4,d3
	beq.b loc_01d2ac
	cmp.w (-$eae,a5),d7
	ble.b loc_01d2b4

loc_01d2ac:
	subq.w #1,(-$eb0,a5)
	dbra d7,loc_01d26a

loc_01d2b4:
	clr.w (-$eb0,a5)
	move.w #$186b,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	move.w (-$eac,a5),d7

loc_01d2c8:
	trap #5
	jsr loc_01d3a6(pc)
	jsr loc_01d490(pc)
	tst.b (-$ea8,a5)
	bne.b loc_01d2dc
	moveq #1,d0
	bra.b loc_01d2de

loc_01d2dc:
	moveq #0,d0

loc_01d2de:
	jsr loc_01d400(pc)
	tst.b (-$ea8,a5)
	beq.b loc_01d2ec
	moveq #1,d0
	bra.b loc_01d2ee

loc_01d2ec:
	moveq #0,d0

loc_01d2ee:
	jsr loc_01d448(pc)
	jsr loc_01d4e0(pc)
	jsr loc_01d55a(pc)
	jsr loc_01d594(pc)
	jsr loc_01d626(pc)
	jsr loc_01d6d6(pc)
	dbra d7,loc_01d2c8
	move.b (-$ea8,a5),d0
	ext.w d0
	rts

;--------------------------
loc_01d312:
	movem.l d0,-(a7)
	move.w (-$eac,a5),d7

loc_01d31a:
	trap #5
	jsr loc_01d3a6(pc)
	movem.l (a7)+,d0
	tst.w d0
	bne.b loc_01d32e
	jsr loc_01d706(pc)
	bra.b loc_01d332

loc_01d32e:
	jsr loc_01d74e(pc)

loc_01d332
	movem.l d0,-(a7)
	jsr loc_01d4e0(pc)
	jsr loc_01d55a(pc)
	jsr loc_01d594(pc)
	jsr loc_01d626(pc)
	jsr loc_01d6d6(pc)
	dbra d7,loc_01d31a
	movem.l (a7)+,d0
	rts

;--------------------------
loc_01d354:
	move.b (-$f38,a5),d3
	subq.b #1,d3
	beq.b loc_01d36a
	subq.b #1,d3
	beq.b loc_01d370
	move.b (-$53cd,a5),d3
	or.b (-$53cc,a5),d3
	bra.b loc_01d374

loc_01d36a:
	move.b (-$53cd,a5),d3
	bra.b loc_01d374

loc_01d370:
	move.b (-$53cc,a5),d3

loc_01d374:
	btst #0,d3
	beq.b loc_01d38c
	move.b #0,(-$ea8,a5)
	move.w #$1869, -(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_01d38c:
	btst #1,d3
	beq.b loc_01d3a4
	move.b #1,(-$ea8,a5)
	move.w #$1869,-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_01d3a4:
	rts

;--------------------------
loc_01d3a6:
	movem.l d7,-(a7)
	lea loc_090d64,a4
	adda.l #$bc,a4
	move.w #$a0,d0
	move.w #$28,d1
	move.w #$1100,d2
	moveq #0,d3
	moveq #0,d4
	moveq #0,d5
	movea.l (a4),a0
	movem.l d0-d5,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0-d5
	lea loc_090d64,a4
	tst.b (-$ea7,a5)
	bne.b loc_01d3ec
	adda.l #$c0,a4
	bra.b loc_01d3f2

loc_01d3ec:
	adda.l #$c4,a4

loc_01d3f2:
	movea.l (a4),a0
	jsr loc_0041d8
	movem.l (a7)+,d7
	rts

;--------------------------
loc_01d400:
	movem.l d7,-(a7)
	move.w d0,d6
	lea loc_01d444(pc),a0
	move.w #$98,d0
	move.w #$50,d1
	tst.w d6
	bne.b loc_01d428
	tst.b (-$ea8,a5)
	bne.b loc_01d422
	move.w #1,d2
	bra.b loc_01d426

loc_01d422:
	move.w #0,d2

loc_01d426:
	bra.b loc_01d430

loc_01d428:
	move.w d7,d2
	lsr.w #1,d2
	andi.w #7,d2

loc_01d430:
	move.w #0,d3
	move.w #0,d4
	jsr loc_005426
	movem.l (a7)+,d7
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01d444:
	dc.b 'YES',00
	even

;--------------------------
loc_01d448:
	movem.l d7,-(a7)
	move.w d0,d6
	lea loc_01d48c(pc),a0
	move.w #$98,d0
	move.w #$60,d1
	tst.w d6
	bne.b loc_01d470
	tst.b (-$ea8,a5)
	beq.b loc_01d46a
	move.w #1,d2
	bra.b loc_01d46e

loc_01d46a:
	move.w #0,d2

loc_01d46e:
	bra.b loc_01d478

loc_01d470:
	move.w d7,d2
	lsr.w #1,d2
	andi.w #7,d2

loc_01d478:
	move.w #1,d3
	move.w #0,d4
	jsr loc_005426
	movem.l (a7)+,d7
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01d48c:
	dc.b 'NO',00
	even

;--------------------------
loc_01d490:
	movem.l d7,-(a7)
	move.w d7,d0
	lsr.w #2,d0
	andi.w #7,d0
	move.b loc_01d4d8(pc,d0.w),d0
	ext.w d0
	lea loc_01d4d6(pc), a0
	tst.b (-$ea8,a5)
	bne.b loc_01d4b6
	addi.w #$92,d0
	move.w #$50,d1
	bra.b loc_01d4be

loc_01d4b6:
	addi.w #$92,d0
	move.w #$60,d1

loc_01d4be:
	move.w #5,d2
	move.w #0,d3
	move.w #2,d4
	jsr loc_005426
	movem.l (a7)+,d7
	rts

loc_01d4d6:
	dc.b $7e,$00

loc_01d4d8:
	dc.b 00,00,01,02,04,02,01,00

;--------------------------
loc_01d4e0:
	movem.l d7,-(a7)
	lea loc_01d540(pc),a0
	move.w #$ac,d0
	move.w #$78,d1
	move.w #7,d2
	move.w #0,d3
	move.w #2,d4
	jsr loc_005426
	move.w (-$eb0,a5),d0
	ext.l d0
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_01d516
	divu.w #$3c,d0
	bra.b loc_01d51a

loc_01d516:
	divu.w #$32,d0

loc_01d51a
	add.w d0,d0
	lea loc_01d546(pc,d0.w),a0
	move.w #$b6,d0
	move.w #$78,d1
	move.w #7,d2
	move.w #0,d3
	move.w #1,d4
	jsr loc_005426
	movem.l (a7)+,d7
	rts

loc_01d540:
	dc.b 'TIME',00
	even

loc_01d546:
	dc.w $3000,$3100,$3200,$3300,$3400,$3500,$3600,$3700,$3800,$3900

;--------------------------
loc_01d55a:
	movem.l d7,-(a7)
	move.w #$30,d0
	move.w #$18,d1
	move.w #$1200,d2
	addq.b #1,(-$ea6,a5)
	btst #0,(-$ea6,a5)
	beq.b loc_01d57c
	move.w #$80,d3
	bra.b loc_01d580

loc_01d57c:
	move.w #$88,d3

loc_01d580:
	move.w #$e0,d4
	move.w #$68,d5
	jsr loc_00501a
	movem.l (a7)+,d7
	rts 

;--------------------------
loc_01d594:
    movem.l d7,-(a7)
    cmpi.w #$a,(-$ec6,a5)
    bne.b loc_01d5ca
    lea loc_090d64,a4
    adda.l #$b8,a4
    move.w #$a0,d0
    move.w #$94,d1
    move.w #$1000,d2
    moveq #0,d3
    move.w #-5,d4
    moveq #0,d5
    movea.l (a4),a0
    jsr loc_0041d8
    bra.b loc_01d620

loc_01d5ca:
    lea loc_090d64,a4
    adda.l #$90,a4
    move.w #$a0,d0
    move.w #$94,d1
    move.w #$1000,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a4),a0
    jsr loc_0041d8
    lea loc_090d64,a4
    move.w (-$ec6,a5),d0
    addi.w #$8a,d0
    add.w d0,d0
    add.w d0,d0
    ext.l d0
    adda.l d0,a4
    move.w #$a0,d0
    move.w #$94,d1
    move.w #$1000,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a4),a0
    jsr loc_0041d8

loc_01d620:
    movem.l (a7)+,d7
    rts

;--------------------------
loc_01d626:
    movem.l d7,-(a7)
    move.w #8,d7

loc_01d62e:
    movem.l d7,-(a7)
    move.w (-$ec6,a5),d0
    cmpi.w #$a,d0
    bne.b loc_01d63e
    subq.w #1,d0

loc_01d63e:
    subq.w #1,d0
    cmp.w d0,d7
    bls.b loc_01d648
    moveq #1,d6
    bra.b loc_01d64a

loc_01d648:
    moveq #0,d6

loc_01d64a:
    lea (-$ec4,a5),a0
    move.b (a0,d7.w),d0
    ext.w d0
    jsr loc_01d6c6(pc)
    addi.w #0,d0
    add.w d0,d0
    add.w d0,d0
    ext.l d0
    lea loc_092ae0.l,a4
    adda.l d0,a4
    move.w d7,d0
    mulu.w #$20,d0
    addi.w #$20,d0
    move.w #$bc,d1
    move.w #$26,d2
    subi.w #$5b,d2
    lsl.w #8,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a4),a0
    movem.l d0-d1/d3-d5/d7,-(a7)
    tst.w d6
    bne.b loc_01d698
    jsr loc_004850

loc_01d698:
    movem.l (a7)+,d0-d1/d3-d5/d7
    lea loc_092a08,a4
    adda.l #$74,a4
    move.w #$1c,d2
    add.w d7,d2
    lsl.w #8,d2
    movea.l (a4),a0
    jsr loc_0041d8
    movem.l (a7)+,d7
    dbra d7,loc_01d62e
    movem.l (a7)+,d7
    rts

;--------------------------
loc_01d6c6:
    move.b loc_01d6cc(pc,d0.w),d0
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01d6cc:
    dc.b $00,$07,$02,$04,$03,$05,$01,$06,$09,$08

;--------------------------
loc_01d6d6:
    movem.l d7,-(a7)
    lea loc_090ce4,a4
    adda.l #4,a4
    move.w #$a0,d0
    move.w #$70,d1
    move.w #$1300,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a4),a0
    jsr loc_0041d8
    movem.l (a7)+,d7
    rts

;--------------------------
loc_01d706:
    movem.l d0/d7,-(a7)
    tst.b (-$ea7,a5)
    bne.b loc_01d716
    lea loc_01d73a(pc),a0
    bra.b loc_01d71a

loc_01d716:
    lea loc_01d744(pc),a0

loc_01d71a:
    move.w #$a0,d0
    move.w #$58,d1
    move.w #3,d2
    move.w #0,d3
    move.w #1,d4
    jsr loc_005426
    movem.l (a7)+,d0/d7
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01d73a:
    dc.b 'LOAD OK !',00
    even

loc_01d744:
    dc.b 'SAVE OK !',00
    even

;--------------------------
loc_01d74e:
    movem.l d0/d7,-(a7)
    tst.b (-$ea7,a5)
    bne.b loc_01d75e
    lea loc_01d78e(pc),a0
    bra.b loc_01d762

loc_01d75e:
    lea loc_01d79a(pc),a0

loc_01d762:
    move.w #$a0,d0
    move.w #$58,d1
    btst #2,d7
    bne.b loc_01d776
    move.w #1,d2
    bra.b loc_01d77a

loc_01d776:
    move.w #2,d2

loc_01d77a:
    move.w #0,d3
    move.w #1,d4
    jsr loc_005426
    movem.l (a7)+,d0/d7
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01d78e:
    dc.b 'LOAD NG...',00
    even

loc_01d79a:
    dc.b 'SAVE NG...',00
    even

;--------------------------
;
loc_01d7a6:
    move.w (-$ec6,a5),d1
    andi.w #$f,d1
    cmpi.w #$a,d1
    blt.w loc_01d7c2
    subi.w #$a,d1
    addi.w #$3130,d1
    bra.w loc_01d7c6

loc_01d7c2:
    addi.w #$3030,d1

loc_01d7c6:
    swap d1
    move.w #$2053,d1
    swap d1
    move.b $10fd83.l,d0
    cmpi.b #0,d0
    beq.b loc_01d7e6
    cmpi.b #1,d0
    beq.b loc_01d7ee
    cmpi.b #2,d0
    beq.b loc_01d7f6

loc_01d7e6:
    lea JPConfig,a1
    bra.b loc_01d7fc

loc_01d7ee:
    lea WRConfig,a1
    bra.b loc_01d7fc

loc_01d7f6:
    lea WRConfig,a1

loc_01d7fc:
    lea $107126.l,a0
    move.l (a1)+,(a0)+
    move.l (a1)+,(a0)+
    move.l (a1)+,(a0)+
    move.l (a1)+,(a0)+
    move.l d1,(a0)
    rts

;--------------------------
loc_01d80e:
    move.b #0,$10fdc2.l
    move.b $10fdc6.l,d0
    cmpi.b #-$7f,d0
    beq.b loc_01d84c
    cmpi.b #-$7d,d0
    beq.b loc_01d84c
    cmpi.b #-$7b,d0
    beq.b loc_01d84c
    cmpi.b #-$7c,d0
    beq.b loc_01d836
    bra.b loc_01d85a

loc_01d836:
    cmpi.b #1,(-$ea9,a5)
    bne.b loc_01d84c
    jsr loc_01d8f2
    jsr loc_01d8b8
    bra.b loc_01d85a

loc_01d84c:
    movem.l a5,-(a7)
    jsr CARD_ERROR
    movem.l (a7)+,a5

loc_01d85a:
    rts
    rts

;--------------------------
loc_01d85e:
	move.b #1,BIOS_CARD_COMMAND
	move.w GAMEnumber.w,BIOS_CARD_FCB
	movem.l a5,-(a7)
	jsr CARD
	movem.l (a7)+,a5
	rts

;--------------------------
loc_01d87e:
	move.b #2,BIOS_CARD_COMMAND
	move.w GAMEnumber.w,BIOS_CARD_FCB
	move.b #0,BIOS_CARD_SUB
	move.l #$107126,BIOS_CARD_START
	move.w #$2a,BIOS_CARD_SIZE
	movem.l a5,-(a7)
	jsr CARD
	movem.l (a7)+,a5
	rts

;--------------------------
loc_01d8b8:
	move.b #3,BIOS_CARD_COMMAND
	move.w GAMEnumber.w,BIOS_CARD_FCB
	move.b #0,BIOS_CARD_SUB
	move.l #$107126,BIOS_CARD_START
	move.w #$2a,BIOS_CARD_SIZE
	movem.l a5,-(a7)
	jsr CARD
	movem.l (a7)+,a5
	rts

;--------------------------
loc_01d8f2:
	move.b #4,BIOS_CARD_COMMAND
	move.w GAMEnumber.w,BIOS_CARD_FCB
	move.b #0,BIOS_CARD_SUB
	movem.l a5,-(a7)
	jsr CARD
	movem.l (a7)+,a5
	rts