;=====================;
; 0xb088 Condor Stage ;
;=====================;
ConStage:
	bset #$6,(2,a4)
	move.l #$b88000,($8,a4)
	move.w #$ff88,($c,a4)
	move.w #$e8,($e,a4)
	move.w #$0,($10,a4)
	move.w #$280,($12,a4)
	move.w #$140,($14,a4)
	move.w #$5c,($16,a4)
	clr.w ($18,a4)
	clr.w ($1a,a4)
	move.w #$0,($1c,a4)
	move.w #$0,($1e,a4)
	move.w #$ff88,($20,a4)
	move.w #$e8,($22,a4)
	move.w #$0,($24,a4)
	move.w #$280,($26,a4)
	move.w #$140,($28,a4)
	move.w #$5c,($2a,a4)
	move.w ($0,a4),($2c,a4)
;b0f8
	lea (-$44f6,a5),a0
	move.w ($10,a4),($0,a0)
	move.w #$8000,($2,a0)
	move.w ($c,a4),($4,a0)
	move.w #$8000,($6,a0)
	move.w ($1c,a4),($8,a0)
	move.w #$21,($a,a0)
	move.w #$28,($c,a0)
	move.l #loc_2881ca,($e,a0)
	st ($13,a0)
	st ($12,a0)
;b136
	lea (-$44d6,a5),a0
	move.w #$1,($a,a0)
	move.w #$20,($c,a0)
	move.l #loc_2881ea,($e,a0);
	st ($13,a0)
	st ($12,a0)
;b156
	lea (-$44b6,a5),a0
	move.w #$62,($a,a0)
	move.w #$0,($c,a0)
	move.l #loc_28815e,($e,a0)
	sf ($13,a0)
	sf ($12,a0)
;b176
	move.w #$62,d0
	jsr loc_00926c
	move.w #$17d,d0
	jsr loc_009284
	jsr loc_0071e0
	move.w #$10,-(a7)
	move.l #loc_0964e4,-(a7)
	jsr loc_007554
	lea ($6,a7),a7
	move.w #$5f,-(a7)
	move.l #loc_00b3f6,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	bsr loc_009eb6
	bsr loc_0092dc
;b1c0
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$8,-(a7)
	move.w #$49,-(a7)
	move.l #loc_00b2f8,-(a7)
	move.w #$1,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;b1e0
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$5,-(a7)
	move.w #$51,-(a7)
	move.l #loc_00b362,-(a7)
	move.w #$2,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;b200
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$c,-(a7)
	move.w #$56,-(a7)
	move.l #loc_00b38c,-(a7)
	move.w #$3,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
	move.w #$600,$3c0006.l
	lea p1ma5(a5),a1
	lea p2ma5(a5),a2

loc_00b230:
	bsr loc_0096aa
	move.w #$110,d4
	move.w #$dc,d5
	move.w #$0,d1
	move.w #$1,d6
	move.w #$1,d7
	lea (-$44d6,a5),a0
	bsr loc_009afc
	bsr loc_00b26c
	movem.l a1/a2/a3/a4,-(a7)
	jsr loc_0061c0
	movem.l (a7)+,a1/a2/a3/a4
	bsr loc_00935c
	bsr loc_0092dc
	bra.b loc_00b230

loc_00b26c:
	move.w ($1c,a4),d5
	move.w #$1e0,d2
	move.w #$a8,d3
	bsr loc_00b2ea
	move.w #$1,d0
	mulu.w #$1c,d0
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$218,d2
	move.w #$0,d3
	bsr loc_00b2ea
	move.w #$2,d0
	mulu.w #$1c,d0
;b2ac
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$c0,d2
	move.w #$a6,d3
	bsr loc_00b2ea
	move.w #$3,d0
	mulu.w #$1c,d0
;b2d4
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	rts

loc_00b2ea:
	sub.w ($10,a4),d2
	sub.w ($c,a4),d3
	bsr loc_009b60
	rts

;Data
loc_00b2f8:
	dc.l $0006140a,$00001000,$0004140b,$00001000
	dc.l $0004140c,$00001000,$0006140d,$00001000
	dc.l $0004140e,$00001000,$0004140f,$00001000
	dc.l $00061410,$00001000,$00041411,$00001000
	dc.l $00041412,$00001000,$00061413,$00001000
	dc.l $00041414,$00001000,$00041415,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00b2f8

loc_00b362:
	dc.l $00081416,$00001000,$00081417,$00001000
	dc.l $00081418,$00001000,$00081419,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00b362

loc_00b38c:
	dc.l $0010141a,$00001000,$0006141b,$00001000	
	dc.l $000a141c,$00001000,$0006141d,$00001000
	dc.l $0008141e,$00001000,$0006141f,$00001000	
	dc.l $000e1420,$00001000,$00061421,$00001000	
	dc.l $00081422,$00001000,$00061423,$00001000	
	dc.l $00061424,$00001000,$000a1425,$00001000	
	dc.w $8000
	dc.l loc_0094fa,loc_00b38c

loc_00b3f6:
	dc.w $0000,$5653,$5653,$5653,$5653,$5653,$5653,$5653
	dc.w $5653,$5653,$5653,$5653,$5653,$5653,$5653,$5653

