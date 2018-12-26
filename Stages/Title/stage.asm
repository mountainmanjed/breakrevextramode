;========================;
; Ouside of fights stuff ;
;========================;
TitleSTG:	;0xa63c
	bsr loc_0092dc
	bra.b TitleSTG

loc_00a642:
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4,-(a7)
	lea (-$45e6,a5),a4
	bclr #$6,($2,a4)
	move.l d0,($8,a4)
	move.w #$18,($c,a4)
	move.w #$e8,($e,a4)
	move.w #$0,($10,a4)
	move.w #$140,($12,a4)
	move.w #$a0,($14,a4)
	move.w #$80,($16,a4)
	clr.w ($18,a4)
	clr.w ($1a,a4)
;a680
	move.w #$0,($1c,a4)
	move.w #$0,($1e,a4)
	move.w #$18,($20,a4)
	move.w #$e8,($22,a4)
	move.w #$0,($24,a4)
	move.w #$140,($26,a4)
	move.w #$a0,($28,a4)
	move.w #$80,($2a,a4)
	move.w ($0,a4),($2c,a4)
	move.w #$5f,-(a7)
	move.l a0,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	bsr loc_009eb6	
;a6ca
	sf (-$44e3,a5)
	sf (-$44e4,a5)	
	sf (-$44c3,a5)
	sf (-$44c4,a5)
	sf (-$44a3,a5)
	sf (-$44a4,a5)
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4
	rts

;file end
