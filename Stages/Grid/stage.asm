;======================
;0xa6e8 Test Grid Stage
;======================
GrdStage:
	bclr #$6,(2,a4)
	move.b #$0,($3,a4)
	move.w #$0,($4,a4)
	move.l #$1008000,($8,a4)
	move.w #$0,($c,a4)
	move.w #$200,($e,a4)
	move.w #$0,($10,a4)
	move.w #$140,($12,a4)
	move.w #$70,($14,a4)
	move.w #$a8,($16,a4)
	clr.w ($18,a4)
	clr.w ($1a,a4)
	move.w #$0,($1c,a4)
	move.w #$0,($1e,a4)
	move.w #$0,($20,a4)
;a740
	move.w #$200,($22,a4)
	move.w #$0,($24,a4)
	move.w #$140,($26,a4)
	move.w #$70,($28,a4)
	move.w #$a8,($2a,a4)
	move.w (0,a4),($2c,a4)
	lea (-$44f6,a5),a0
	move.w ($10,a4),($0,a0)
	move.w #$8000,($2,a0)
	move.w ($c,a4),($4,a0)
	move.w #$8000,($6,a0)
	move.w #0,($8,a0)
	move.w #$1,($a,a0)
	move.w #$20,($c,a0)
	move.l #loc_00a878,($e,a0)
	st ($13,a0)
	st ($12,a0)
;a7a2
	sf (-$44c3,a5)
	sf (-$44c4,a5)
	sf (-$44a3,a5)
	sf (-$44a4,a5)
	move.w #$21,d0
	jsr loc_00926c
	move.w #$17d,d0
	jsr loc_009284
	move.w #$10,-(a7)
	move.l #loc_00a858,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	bsr loc_009eb6
	bsr loc_0092dc

GridCamera:
	move.w (-$c96,a5),d0;Camera X
	addi.w #$3c,d0
	move.w d0,($14,a4)
	subi.w #$a0,d0
;a7f2
	move.w d0,($10,a4)
	move.w d0,($12,a4)
	move.w d0,($24,a4)
	move.w d0,($26,a4)
	addi.w #$140,($26,a4)
	addi.w #$140,($12,a4)
	andi.w #$7f,d0
	move.w d0,(-$44f6,a5)
	move.w (-$c92,a5),d0;Camera y
	sub.w ($8,a4),d0
	add.w ($2a,a4),d0
	move.w d0,($16,a4)
	subi.w #$70,d0
	move.w d0,($c,a4)
	move.w d0,($e,a4)
	addi.w #$e0,($e,a4)
	andi.w #$7f,d0
;a83c
	move.w d0,(-$44f2,a5)
	movem.l a1/a2/a3/a4,-(a7)
	jsr loc_0061c0
	movem.l (a7)+,a1/a2/a3/a4
	bsr loc_00935c
	bsr loc_0092dc
	bra.b GridCamera

loc_00a858:
	incbin "Stages/Grid/gridstagepal.bin"

loc_00a878: ;Tile map
	incbin "Stages/Grid/gridtilemap.bin"	




;End a9c0
