;==================;
; 0xB416 Tia Stage ;
;==================;
TiaStage:
	bset #$6,(2,a4)
	move.l #$b08000,($8,a4)
	move.w #$ffa8,($c,a4)
	move.w #$e8,($e,a4)
	move.w #$0,($10,a4)
	move.w #$280,($12,a4)
	move.w #$140,($14,a4)
	move.w #$54,($16,a4)
	clr.w ($18,a4)
	clr.w ($1a,a4)
	move.w #$0,($1c,a4)
	move.w #$0,($1e,a4)
	move.w #$ffa8,($20,a4)
	move.w #$e8,($22,a4)
	move.w #$0,($24,a4)
	move.w #$280,($26,a4)
	move.w #$140,($28,a4)
	move.w #$54,($2a,a4)
	move.w ($0,a4),($2c,a4)
;b486
	lea (-$44f6,a5),a0
	move.w ($10,a4),($0,a0)
	move.w #$8000,($2,a0)
	move.w ($c,a4),($4,a0)
	move.w #$8000,($6,a0)
	move.w ($1c,a4),($8,a0)
	move.w #$27,($a,a0)
	move.w #$28,($c,a0)
	move.l #loc_2881fa,($e,a0)
	st ($13,a0)
	st ($12,a0)
;b4c4
	lea (-$44d6,a5),a0
	move.w #$1,($a,a0)
	move.w #$20,($c,a0)
	move.l #loc_28821a,($e,a0);
	st ($13,a0)
	st ($12,a0)
;b4e4
	lea (-$44b6,a5),a0
	move.w #$4f,($a,a0)
	move.w #$0,($c,a0)
	move.l #loc_28815e,($e,a0)
	sf ($13,a0)
	sf ($12,a0)
;b504
	move.w #$4f,d0
	jsr loc_00926c
	move.w #$17d,d0
	jsr loc_009284
	jsr loc_0071e0
	move.w #$10,-(a7)
	move.l #loc_096594,-(a7)
	jsr loc_007554
	lea ($6,a7),a7
	move.w #$5f,-(a7)
	move.l #loc_00b7f2,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	bsr loc_009eb6
	bsr loc_0092dc
;b54e
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$6,-(a7)
	move.w #$21,-(a7)
	move.l #loc_00b6ee,-(a7)
	move.w #$1,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;b56e
	clr.b (2,a3)
	clr.w (0,a3)
	move.w #$600,$3c0006.l
	lea p1ma5(a5),a1
	lea p2ma5(a5),a2

loc_00b586:
	bsr loc_0096aa
	move.w #$100,d4
	move.w #$8c,d5
	move.w #$0,d1
	move.w #$1,d6
	move.w #$1,d7
	lea (-$44d6,a5),a0
	bsr loc_009afc
	bsr loc_00b5c2
	movem.l a1/a2/a3/a4,-(a7)
	jsr loc_0061c0
	movem.l (a7)+,a1/a2/a3/a4
	bsr loc_00935c
	bsr loc_0092dc
	bra.b loc_00b586

loc_00b5c2:
	move.w ($1c,a4),d5
	bsr loc_00b602
	move.w #$130,d2
	move.w #$c0,d3
	bsr loc_00b5f4
	move.w #$1,d0
	mulu.w #$1c,d0
;b5de
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	rts

loc_00b5f4:
	sub.w (-$44d6,a5),d2
	sub.w (-$44d2,a5),d3
	bsr loc_009b60
	rts

;Monk
loc_00b602:
	clr.w d0	
	move.b (2,a3),d0
	add.w d0,d0
	move.w loc_00b612(pc,d0.w),d0
	jmp loc_00b612(pc,d0.w)

loc_00b612:
	dc.w loc_00b644-loc_00b612
	dc.w loc_00b686-loc_00b612
	dc.w loc_00b69e-loc_00b612
	dc.w loc_00b6de-loc_00b612

loc_00b61a:
	clr.b (2,a3)
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$6,-(a7)
	move.w #$21,-(a7)
	move.l #loc_00b6ee,-(a7)
	move.w #$1,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
	move.w loc_00b6ec(pc),(0,a3)

loc_00b644:
	subq.w #1,(0,a3)
	bpl.b loc_00b656
	clr.w (0,a3)
	tst.w (4,a4)
	bne loc_00b65a

loc_00b656:
	bra loc_00b6ea

loc_00b65a:
	move.b #$1,2(a3)
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$6,-(a7)
	move.w #$21,-(a7)
	move.l #loc_00b73c,-(a7)
	move.w #$1,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
	move.w loc_00b738(pc),(0,a3)

loc_00b686:
	subq.w #1,(0,a3)
	bmi.w loc_00b692
	bra.w loc_00b6ea

loc_00b692:
	move.b #$2,(2,a3)
	move.w loc_00b73a(pc),(0,a3)
	
loc_00b69e:
	subq.w #1,(0,a3)
	bmi loc_00b61a
	tst.b (-$3e0,a5)
	bne loc_00b6b2
	bra loc_00b6ea

loc_00b6b2:
	move.b #$3,(2,a3)
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$6,-(a7)
	move.w #$21,-(a7)
	move.l #loc_00b7a0,-(a7)
	move.w #$1,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
	move.w loc_00b79e(pc),(0,a3)

loc_00b6de:
	subq.w #1,(0,a3)
	bmi loc_00b61a
	dc.w $6000,$0002

loc_00b6ea:
	rts

;Data
loc_00b6ec:
	dc.w $00f0

loc_00b6ee:
	dc.l $00121399,$00001000,$0009139a,$00001000
	dc.l $0006139b,$00001000,$0005139c,$00001000
	dc.l $0006139d,$00001000,$0003139c,$00001000
	dc.l $0004139b,$00001000,$0005139a,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00b6ee

loc_00b738:
	dc.w $0030
loc_00b73a:
	dc.w $01e0

loc_00b73c:
	dc.l $0002139c,$00001000,$0002139d,$00001000
	dc.l $0004139e,$00001000,$0004139f,$00001000
	dc.l $000513a0,$00001000,$000713a1,$00001000
	dc.l $001813a2,$00001000

loc_00b774:
	dc.l $000713a3,$00001000,$000413a4,$00001000
	dc.l $000213a5,$00001000,$000213a6,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00b774

loc_00b79e:
	dc.w $0258

loc_00b7a0:
	dc.l $000213a7,$00001000,$000213a8,$00001000
	dc.l $000313a9,$00001000,$000413aa,$00001000
	dc.l $000613ab,$00001000,$000213ac,$00001000
	dc.l $000313ad,$00001000,$000413ae,$00001000
	dc.l $000413af,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00b7a0

loc_00b7f2:
	dc.w $0000,$6322,$6322,$6322,$6322,$6322,$6322,$6322
	dc.w $6322,$6322,$6322,$6322,$6322,$6322,$6322,$6322

;end 0xb812
