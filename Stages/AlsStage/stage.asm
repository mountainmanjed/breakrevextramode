;=========================;
; 0xC042 Alsion III Stage ;
;=========================;
AlsStage:
	bset #$6,(2,a4)
	move.l #$d08000,($8,a4)
	move.w #$ff98,($c,a4)
	move.w #$e8,($e,a4)
	move.w #$0,($10,a4)
	move.w #$280,($12,a4)
	move.w #$140,($14,a4)
	move.w #$74,($16,a4)
	clr.w ($18,a4)
	clr.w ($1a,a4)
	move.w #$0,($1c,a4)
	move.w #$0,($1e,a4)
	move.w #$ff98,($20,a4)
	move.w #$e8,($22,a4)
	move.w #$0,($24,a4)
	move.w #$280,($26,a4)
	move.w #$140,($28,a4)
	move.w #$74,($2a,a4)
	move.w ($0,a4),($2c,a4)
;c0b2
	lea (-$44f6,a5),a0
	move.w ($10,a4),($0,a0)
	move.w #$8000,($2,a0)
	move.w ($c,a4),($4,a0)
	move.w #$8000,($6,a0)
	move.w ($1c,a4),($8,a0)
	move.w #$1,($a,a0)
	move.w #$28,($c,a0)
	move.l #loc_288326,($e,a0)
	st ($13,a0)
	st ($12,a0)
;c0f0
	lea (-$44d6,a5),a0
	move.w #$29,($a,a0)
	move.w #$0,($c,a0)
	move.l #loc_28815e,($e,a0)
	sf ($13,a0)
	sf ($12,a0)
;c110
	lea (-$44b6,a5),a0
	move.w #$40,($a,a0)
	move.w #$0,($c,a0)
	move.l #loc_28815e,($e,a0)
	sf ($13,a0)
	sf ($12,a0)
;c130
	move.w #$40,d0
	jsr loc_00926c
	move.w #$177,d0
	jsr loc_009284
	jsr loc_0071e0
	move.w #$10,-(a7)
	move.l #loc_0966f0,-(a7)
	jsr loc_007554
	lea ($6,a7),a7
	move.w #$5f,-(a7)
	move.l #loc_00c534,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	bsr loc_009eb6
	bsr loc_0092dc
;c17a
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$7,-(a7)
	move.w #$29,-(a7)
	move.l #loc_00c4d2,-(a7)
	move.w #$1,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;c19a
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$5,-(a7)
	move.w #$30,-(a7)
	move.l #loc_00c45e,-(a7)
	move.w #$2,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;c1ba
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$5,-(a7)
	move.w #$35,-(a7)
	move.l #loc_00c498,-(a7)
	move.w #$3,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;c1da
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$3,-(a7)
	move.w #$17a,-(a7)
	move.l #loc_00c3b6,-(a7)
	move.w #$4,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;c1fa
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$3,-(a7)
	move.w #$177,-(a7)
	move.l #loc_00c3e0,-(a7)
	move.w #$5,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;c21a
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$3,-(a7)
	move.w #$3a,-(a7)
	move.l #loc_00c40a,-(a7)
	move.w #$6,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;c23a
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$3,-(a7)
	move.w #$3d,-(a7)
	move.l #loc_00c434,-(a7)
	move.w #$7,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
	move.w #$600,$3c0006.l
	lea p1ma5(a5),a1
	lea p2ma5(a5),a2

loc_00c26a:
	bsr loc_0096aa
	bsr loc_00c28a
	movem.l a1/a2/a3/a4,-(a7)
	jsr loc_0061c0
	movem.l (a7)+,a1/a2/a3/a4
	bsr loc_00935c
	bsr loc_0092dc
	bra.b loc_00c26a

loc_00c28a:
	move.w ($1c,a4),d5
	move.w #$140,d2
	move.w #$7f,d3
	bsr loc_00c3a8
	move.w #$1,d0
	mulu.w #$1c,d0
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$110,d2
	move.w #$b0,d3
	bsr loc_00c3a8
	move.w #$2,d0
	mulu.w #$1c,d0
;c2ca
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$170,d2
	move.w #$b0,d3
	bsr loc_00c3a8
	move.w #$3,d0
	mulu.w #$1c,d0
;c2f2
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$40,d2
	move.w #$e0,d3
	bsr loc_00c3a8
	move.w #$4,d0
	mulu.w #$1c,d0
;c31a
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$240,d2
	move.w #$e0,d3
	bsr loc_00c3a8
	move.w #$5,d0
	mulu.w #$1c,d0
;c342
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$d0,d2
	move.w #$b8,d3
	bsr loc_00c3a8
	move.w #$6,d0
	mulu.w #$1c,d0
;c36a
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$1b0,d2
	move.w #$b8,d3
	bsr loc_00c3a8
	move.w #$7,d0
	mulu.w #$1c,d0
;c392
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	rts

loc_00c3a8:
	sub.w ($10,a4),d2
	sub.w ($c,a4),d3
	bsr loc_009b60
	rts

;Sprite Data
loc_00c3b6:
	dc.l $00051365,$00001001,$00051366,$00001001
	dc.l $00051367,$00001001,$00051368,$00001001
	dc.w $8000
	dc.l loc_0094fa,loc_00c3b6

loc_00c3e0:
	dc.l $00051365,$00001000,$00051366,$00001000
	dc.l $00051367,$00001000,$00051368,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00c3e0

loc_00c40a:
	dc.l $00051387,$00001001,$00051388,$00001001
	dc.l $00051389,$00001001,$0005138a,$00001001
	dc.w $8000
	dc.l loc_0094fa,loc_00c40a

loc_00c434:
	dc.l $00051387,$00001000,$00051388,$00001000
	dc.l $00051389,$00001000,$0005138a,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00c434

loc_00c45e:
	dc.l $00f0136f,$00001000,$000f136d,$00001000
	dc.l $000f136b,$00001000,$003c1369,$00001000
	dc.l $000f136b,$00001000,$000f136d,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00c45e

loc_00c498:
	dc.l $00f01370,$00001000,$000f136e,$00001000
	dc.l $000f136c,$00001000,$003c136a,$00001000
	dc.l $000f136c,$00001000,$000f136e,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00c498
	
loc_00c4d2:
	dc.l $00081371,$00001000,$00071372,$00001000
	dc.l $00081373,$00001000,$00071374,$00001000
	dc.l $00081375,$00001000,$00071376,$00001000
	dc.l $00081377,$00001000,$00071378,$00001000
	dc.l $00081379,$00001000,$0007137a,$00001000
	dc.l $0008137b,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00c4d2

loc_00c534:
	dc.w $0000,$7210,$7210,$7210,$7210,$7210,$7210,$7210
	dc.w $7210,$7210,$7210,$7210,$7210,$7210,$7210,$7210


;0xc554
