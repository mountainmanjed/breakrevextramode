;=====================;
; 0xcd00 Bai-Hu Stage ;
;=====================;
BaiStage:
	bset #$6,(2,a4)
	move.l #$c08000,($8,a4)
	move.w #$ff78,($c,a4)
	move.w #$e8,($e,a4)
	move.w #$0,($10,a4)
	move.w #$280,($12,a4)
	move.w #$140,($14,a4)
	move.w #$64,($16,a4)
	clr.w ($18,a4)
	clr.w ($1a,a4)
	move.w #$0,($1c,a4)
	move.w #$0,($1e,a4)
	move.w #$ff78,($20,a4)
	move.w #$e8,($22,a4)
	move.w #$0,($24,a4)
	move.w #$280,($26,a4)
	move.w #$140,($28,a4)
	move.w #$64,($2a,a4)
	move.w ($0,a4),($2c,a4)
;cd70
	lea (-$44f6,a5),a0
	move.w ($10,a4),($0,a0)
	move.w #$8000,($2,a0)
	move.w ($c,a4),($4,a0)
	move.w #$8000,($6,a0)
	move.w ($1c,a4),($8,a0)
	move.w #$29,($a,a0)
	move.w #$28,($c,a0)
	move.l #loc_2883a6,($e,a0)
	st ($13,a0)
	st ($12,a0)
;cdae
	lea (-$44d6,a5),a0
	move.w #$1,($a,a0)
	move.w #$20,($c,a0)
	move.l #loc_2883c6,($e,a0)
	st ($13,a0)
	st ($12,a0)
;cdce
	lea (-$44b6,a5),a0
	move.w #$51,($a,a0)
	move.w #$0,($c,a0)
	move.l #loc_28815e,($e,a0)
	sf ($13,a0)
	sf ($12,a0)
;cdee
	move.w #$51,d0
	jsr loc_00926c
	move.w #$17d,d0
	jsr loc_009284
	jsr loc_0071e0
	move.w #$10,-(a7)
	move.l #loc_0969dc,-(a7)
	jsr loc_007554
	lea ($6,a7),a7
	move.w #$5f,-(a7)
	move.l #loc_00d13e,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	bsr loc_009eb6
	bsr loc_0092dc
;ce38
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$1,-(a7)
	move.w #$21,-(a7)
	move.l #loc_00d0aa,-(a7)
	move.w #$0,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;ce58
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$1,-(a7)
	move.w #$22,-(a7)
	move.l #loc_00d0aa,-(a7)
	move.w #$1,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;ce78
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$1,-(a7)
	move.w #$23,-(a7)
	move.l #loc_00d0aa,-(a7)
	move.w #$2,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;ce98
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$1,-(a7)
	move.w #$24,-(a7)
	move.l #loc_00d0aa,-(a7)
	move.w #$3,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;ceb8
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$1,-(a7)
	move.w #$25,-(a7)
	move.l #loc_00d0f4,-(a7)
	move.w #$4,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;ced8
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$1,-(a7)
	move.w #$26,-(a7)
	move.l #loc_00d0f4,-(a7)
	move.w #$5,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;cef8
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$1,-(a7)
	move.w #$27,-(a7)
	move.l #loc_00d0f4,-(a7)
	move.w #$6,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;cf18
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$1,-(a7)
	move.w #$28,-(a7)
	move.l #loc_00d0f4,-(a7)
	move.w #$7,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
	bsr loc_00d042
	move.w #$600,$3c0006.l
	lea p1ma5(a5),a1
	lea p2ma5(a5),a2

loc_00cf4c:
	bsr loc_0096aa
	move.w #$120,d4
	move.w #$a4,d5
	move.w #$0,d1
	move.w #$2,d6
	move.w #$1,d7
	lea (-$44d6,a5),a0
	bsr loc_009afc
	bsr loc_00cf88
	movem.l a1/a2/a3/a4,-(a7)
	jsr loc_0061c0
	movem.l (a7)+,a1/a2/a3/a4
	bsr loc_00935c
	bsr loc_0092dc
	bra.b loc_00cf4c

loc_00cf88:
	move.w ($1c,a4),d5
	clr.w d1
	move.w #7,d7

loc_00cf92:
	move.l 8(a3,d1.w),d2
	move.l 12(a3,d1.w),d3
	add.l d2,(a3,d1.w)
	add.l d3,(4,a3,d1.w)
	move.w (4,a3,d1.w),d3
	addi.w #$20,d3
	cmp.w ($c,a4),d3
	bge.b loc_00d000
	moveq #$0,d0
	jsr RandomNumberGod
	andi.w #$1ff,d0
	addi.w #$40,d0
	swap d0
;cfc2
	move.l d0,(a3,d1.w)
	move.w ($e,a4),d0
	addi.w #$20,d0
	swap d0
	clr.w d0
	move.l d0,4(a3,d1.w)
	moveq #$0,d0
	jsr RandomNumberGod
	lsl.l #1,d0
	subi.l #$10000,d0
	move.l d0,8(a3,d1.w)
	moveq #$0,d0
	jsr RandomNumberGod
	lsl.l #2,d0
	addi.l #$c000,d0
	neg.l d0
	move.l d0,12(a3,d1.w)
	
loc_00d000:
	move.l (a3,d1.w),d2
	move.l 4(a3,d1.w),d3
	swap d2
	swap d3
	bsr loc_00d034
	move.w d7,d0
	mulu.w #$1c,d0
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	addi.w #$10,d1
	dbra d7,loc_00cf92
	rts
	
loc_00d034:
	sub.w ($10,a4),d2
	sub.w ($c,a4),d3
	bsr loc_009b60
	rts

loc_00d042:
	clr.w d1
	move.w #$7,d7

loc_00d048:
	moveq #$0,d0
	jsr RandomNumberGod
	andi.w #$1ff,d0
	addi.w #$40,d0
	swap d0
	move.l d0,(a3,d1.w)
;d05e
	moveq #$0,d0
	jsr RandomNumberGod
	andi.w #$ff,d0
	neg.w d0
	addi.w #$e8,d0
	swap d0
	move.l d0,4(a3,d1.w)
;d076
	moveq #$0,d0
	jsr RandomNumberGod
	lsl.l #2,d0
	subi.l #$20000,d0
	move.l d0,8(a3,d1.w)
;d08a
	moveq #$0,d0
	jsr RandomNumberGod
	lsl.l #$2,d0
	addi.l #$c000,d0
	neg.l d0
	move.l d0,12(a3,d1.w)
;d0a0
	addi.w #$10,d1
	dbra d7,loc_00d048
	rts

;Sprite data
loc_00d0aa:
	dc.l $00021352,$00001000,$00021353,$00001000
	dc.l $00021354,$00001000,$00021355,$00001000
	dc.l $00021356,$00001000,$00021357,$00001000
	dc.l $00021358,$00001000,$00021359,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00d0aa

loc_00d0f4:
	dc.l $0002138b,$00001000,$0002138c,$00001000
	dc.l $0002138d,$00001000,$0002138e,$00001000
	dc.l $0002138f,$00001000,$00021390,$00001000
	dc.l $00021391,$00001000,$00021392,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00d0f4

loc_00d13e:
	dc.w $0000,$2323,$2323,$2323,$2323,$2323,$2323,$2323
	dc.w $2323,$2323,$2323,$2323,$2323,$2323,$2323,$2323


;d15e end of stage
