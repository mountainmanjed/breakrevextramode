;====================;
; 0xd15e Saizo Stage ;
;====================;
SaiStage:
	bset #$6,(2,a4)
	move.l #$208000,($8,a4)
	move.w #$ff18,($c,a4)
	move.w #$168,($e,a4)
	move.w #$0,($10,a4)
	move.w #$280,($12,a4)
	move.w #$140,($14,a4)
	move.w #$ffc4,($16,a4)
	clr.w ($18,a4)
	clr.w ($1a,a4)
	move.w #$0,($1c,a4)
	move.w #$0,($1e,a4)
	move.w #$ff18,($20,a4)
	move.w #$168,($22,a4)
	move.w #$0,($24,a4)
	move.w #$280,($26,a4)
	move.w #$140,($28,a4)
	move.w #$ffc4,($2a,a4)
	move.w ($0,a4),($2c,a4)
;d1ce
	lea (-$44f6,a5),a0
	move.w ($10,a4),($0,a0)
	move.w #$8000,($2,a0)
	move.w ($c,a4),($4,a0)
	move.w #$8000,($6,a0)
	move.w ($1c,a4),($8,a0)
	move.w #$51,($a,a0)
	move.w #$28,($c,a0)
	move.l #loc_2883de,($e,a0)
	st ($13,a0)
	st ($12,a0)
;d20c
	lea (-$44d6,a5),a0
	move.w #$29,($a,a0)
	move.w #$28,($c,a0)
	move.l #loc_2883f2,($e,a0)
	st ($13,a0)
	st ($12,a0)
;d22c
	lea (-$44b6,a5),a0
	move.w #$1,($a,a0)
	move.w #$28,($c,a0)
	move.l #loc_288412,($e,a0)
	st ($13,a0)
	st ($12,a0)
;d24c
	move.w #$79,d0
	jsr loc_00926c
	move.w #$17d,d0
	jsr loc_009284
	jsr loc_0071e0
	move.w #$10,-(a7)
	move.l #loc_096ab4,-(a7)
	jsr loc_007554	
	lea ($6,a7),a7
	move.w #$5f,-(a7)
	move.l #loc_00d2f2,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	bsr loc_009eb6
	bsr loc_0092dc
	lea p1ma5(a5),a1
	lea p2ma5(a5),a2

loc_00d29e:
	bsr loc_0096aa
	move.w #$160,d4
	move.w #$ec,d5
	move.w #$0,d1
	move.w #$1,d6
	move.w #$1,d7
	lea (-$44d6,a5),a0
	bsr loc_009afc
	move.w #$1ae,d4
	move.w #$fc,d5
	move.w #$0,d1
	move.w #$2,d6
	move.w #$2,d7
	lea (-$44b6,a5),a0
	bsr loc_009afc
	movem.l a1/a2/a3/a4,-(a7)
	jsr loc_0061c0
	movem.l (a7)+,a1/a2/a3/a4
	bsr loc_00935c
	bsr loc_0092dc
	bra.b loc_00d29e

loc_00d2f2:
	dc.w $0000,$6322,$6322,$6322,$6322,$6322,$6322,$6322
	dc.w $6322,$6322,$6322,$6322,$6322,$6322,$6322,$6322




;d312 end of stage
