;=====================
; 0xC554 Pielle Stage
;=====================
PieStage:
	bset #$6,(2,a4)
	move.l #$c08000,($8,a4)
	move.w #$ff98,($c,a4)
	move.w #$e8,($e,a4)
	move.w #$0,($10,a4)
	move.w #$280,($12,a4)
	move.w #$140,($14,a4)
	move.w #$64,($16,a4)
	clr.w ($18,a4)
	clr.w ($1a,a4)
	move.w #$0,($1c,a4)
	move.w #$0,($1e,a4)
	move.w #$ff98,($20,a4)
	move.w #$e8,($22,a4)
	move.w #$0,($24,a4)
	move.w #$280,($26,a4)
	move.w #$140,($28,a4)
	move.w #$64,($2a,a4)
	move.w ($0,a4),($2c,a4)
;c5c4
	lea (-$44f6,a5),a0
	move.w ($10,a4),($0,a0)
	move.w #$8000,($2,a0)
	move.w ($c,a4),($4,a0)
	move.w #$8000,($6,a0)
	move.w ($1c,a4),($8,a0)
	move.w #$21,($a,a0)
	move.w #$28,($c,a0)
	move.l #loc_288346,($e,a0)
	st ($13,a0)
	st ($12,a0)
;c602
	lea (-$44d6,a5),a0
	move.w #$1,($a,a0)
	move.w #$20,($c,a0)
	move.l #loc_288366,($e,a0)
	st ($13,a0)
	st ($12,a0)
;c622
	lea (-$44b6,a5),a0
	move.w #$5d,($a,a0)
	move.w #$0,($c,a0)
	move.l #loc_28815e,($e,a0)
	sf ($13,a0)
	sf ($12,a0)
;c642
	move.w #$5d,d0
	jsr loc_00926c
	move.w #$17d,d0
	jsr loc_009284
	jsr loc_0071e0
	move.w #$10,-(a7)
	move.l #loc_0967f4,-(a7)
	jsr loc_007554
	lea ($6,a7),a7
	move.w #$5f,-(a7)
	move.l #loc_00c934,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	bsr loc_009eb6
	bsr loc_0092dc
;c68c
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$5,-(a7)
	move.w #$49,-(a7)
	move.l #loc_00c80c,-(a7)
	move.w #$1,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;c6ac
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$5,-(a7)
	move.w #$4e,-(a7)
	move.l #loc_00c856,-(a7)
	move.w #$2,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;c6cc
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$5,-(a7)
	move.w #$53,-(a7)
	move.l #loc_00c8a0,-(a7)
	move.w #$3,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;c6ec
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$5,-(a7)
	move.w #$58,-(a7)
	move.l #loc_00c8ea,-(a7)
	move.w #$4,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
	move.w #$600,$3c0006.l
	lea p1ma5(a5),a1
	lea p2ma5(a5),a2

loc_00c71c:
	bsr loc_0096aa
	move.w #$100,d4
	move.w #$b4,d5
	move.w #$0,d1
	move.w #$1,d6
	move.w #$1,d7
	lea (-$44d6,a5),a0
	bsr loc_009afc
	bsr loc_00c758
	movem.l a1/a2/a3/a4,-(a7)
	jsr loc_0061c0
	movem.l (a7)+,a1/a2/a3/a4
	bsr loc_00935c
	bsr loc_0092dc
	bra.b loc_00c71c

loc_00c758:
	move.w ($1c,a4),d5
	move.w #$60,d2
	move.w #$a8,d3
	bsr loc_00c7fe
	move.w #$1,d0
	mulu.w #$1c,d0
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$e0,d2
	move.w #$a4,d3
	bsr loc_00c7fe
	move.w #$2,d0
	mulu.w #$1c,d0
;c798
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$1a0,d2
	move.w #$a4,d3
	bsr loc_00c7fe
	move.w #$3,d0
	mulu.w #$1c,d0
;c7c0
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$230,d2
	move.w #$a8,d3
	bsr loc_00c7fe
	move.w #$4,d0
	mulu.w #$1c,d0
;c7e8
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	rts

loc_00c7fe:
	sub.w ($10,a4),d2
	sub.w ($c,a4),d3
	bsr loc_009b60
	rts

loc_00c80c:
	dc.l $002613b0,$0001000,$000613b1,$0001000
	dc.l $000813b2,$0001000,$000613b3,$0001000
	dc.l $000413b4,$0001000,$000613b5,$0001000
	dc.l $000813b6,$0001000,$000613b7,$0001000
	dc.w $8000
	dc.l loc_0094fa,loc_00c80c

loc_00c856:
	dc.l $000413b8,$0001000,$000413b9,$0001000
	dc.l $000413ba,$0001000,$000413bb,$0001000
	dc.l $000413bc,$0001000,$000413bd,$0001000
	dc.l $000413be,$0001000,$000413bf,$0001000
	dc.w $8000
	dc.l loc_0094fa,loc_00c856

loc_00c8a0:
	dc.l $000613c0,$0001000,$000513c1,$0001000
	dc.l $000613c2,$0001000,$000813c3,$0001000
	dc.l $000613c4,$0001000,$000513c5,$0001000
	dc.l $000613c6,$0001000,$000813c7,$0001000
	dc.w $8000
	dc.l loc_0094fa,loc_00c8a0

loc_00c8ea:
	dc.l $001413c8,$0001000,$000813c9,$0001000
	dc.l $000713ca,$0001000,$000813cb,$0001000
	dc.l $000913cc,$0001000,$000513cd,$0001000
	dc.l $000513ce,$0001000,$000613cf,$0001000
	dc.w $8000
	dc.l loc_0094fa,loc_00c8ea

loc_00c934:
	dc.w $0000,$0432,$0432,$0432,$0432,$0432,$0432,$0432
	dc.w $0432,$0432,$0432,$0432,$0432,$0432,$0432,$0432

;c954
