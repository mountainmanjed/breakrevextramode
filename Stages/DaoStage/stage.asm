;=======================
; 0xAE1C Dao-Long Stage
;=======================
DaoStage:
	bset #$6,(2,a4)
	move.l #$b88000,($8,a4)
	move.w #$ff98,($c,a4)
	move.w #$e8,($e,a4)
	move.w #$0,($10,a4)
	move.w #$280,($12,a4)
	move.w #$140,($14,a4)
	move.w #$5c,($16,a4)
	clr.w ($18,a4)
	clr.w ($1a,a4)
	move.w #$0,($1c,a4)
	move.w #$0,($1e,a4)
	move.w #$ff98,($20,a4)
	move.w #$e8,($22,a4)
	move.w #$0,($24,a4)
	move.w #$280,($26,a4)
	move.w #$140,($28,a4)
	move.w #$5c,($2a,a4)
	move.w ($0,a4),($2c,a4)
;0ae8c
	lea (-$44f6,a5),a0
	move.w ($10,a4),($0,a0)
	move.w #$8000,($2,a0)
	move.w ($c,a4),($4,a0)
	move.w #$8000,($6,a0)
	move.w ($1c,a4),($8,a0)
	move.w #$21,($a,a0)
	move.w #$28,($c,a0)
	move.l #loc_28819a,($e,a0)
	st ($13,a0)
	st ($12,a0)
;aeca
	lea (-$44d6,a5),a0
	move.w #$1,($a,a0)
	move.w #$20,($c,a0)
	move.l #loc_2881ba,($e,a0);
	st ($13,a0)
	st ($12,a0)
;aeea
	lea (-$44b6,a5),a0
	move.w #$59,($a,a0)
	move.w #$0,($c,a0)
	move.l #loc_28815e,($e,a0)
	sf ($13,a0)
	sf ($12,a0)
;af0a
	move.w #$59,d0
	jsr loc_00926c
	move.w #$17d,d0
	jsr loc_009284
	jsr loc_0071e0
	move.w #$10,-(a7)
	move.l #loc_0963ec,-(a7)
	jsr loc_007554
	lea ($6,a7),a7
	move.w #$5f,-(a7)
	move.l #loc_00b068,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	bsr loc_009eb6
	bsr loc_0092dc
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$8,-(a7)
	move.w #$49,-(a7)
	move.l #loc_00b044,-(a7)
	move.w #$1,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$8,-(a7)
	move.w #$51,-(a7)
	move.l #loc_00b056,-(a7)
	move.w #$2,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
	move.w #$600,$3c0006.l
	lea p1ma5(a5),a1
	lea p2ma5(a5),a2

loc_00afa4:
	bsr loc_0096aa
	move.w #$100,d4
	move.w #$b4,d5
	move.w #$0,d1
	move.w #$1,d6
	move.w #$1,d7
	lea (-$44d6,a5),a0
	bsr loc_009afc
	bsr loc_00afe0
	movem.l a1/a2/a3/a4,-(a7)
	jsr loc_0061c0
	movem.l (a7)+,a1/a2/a3/a4
	bsr loc_00935c
	bsr loc_0092dc
	bra.b loc_00afa4

loc_00afe0:
	move.w ($1c,a4),d5
	move.w #$70,d2
	move.w #$a8,d3
	bsr loc_00b036
	move.w #$1,d0
	mulu.w #$1c,d0
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$230,d2
	move.w #$a8,d3
	bsr loc_00b036
	move.w #$2,d0
	mulu.w #$1c,d0
;b020
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	rts

loc_00b036:
	sub.w ($10,a4),d2
	sub.w ($c,a4),d3
	bsr loc_009b60
	rts

;data
loc_00b044:
	dc.l $03e71397,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00b044

loc_00b056:
	dc.l $03e71398,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00b056

loc_00b068:
	dc.w $0000,$3522,$3522,$3522,$3522,$3522,$3522,$3522
	dc.w $3522,$3522,$3522,$3522,$3522,$3522,$3522,$3522

; End B088
