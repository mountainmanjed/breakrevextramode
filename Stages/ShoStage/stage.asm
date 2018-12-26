;===================;
;  $a9c0 Sho Stage  ;
;===================;
ShoStage:
	bset #$6,(2,a4)
	move.l #$c88000,($8,a4)
	move.w #$ff98,($c,a4)
	move.w #$e8,($e,a4)
	move.w #$0,($10,a4)
	move.w #$280,($12,a4)
	move.w #$140,($14,a4)
	move.w #$6c,($16,a4)
	clr.w ($18,a4)
	clr.w ($1a,a4)
	move.w #$0,($1c,a4)
	move.w #$0,($1e,a4)
	move.w #$ff98,($20,a4)
	move.w #$e8,($22,a4)
	move.w #$0,($24,a4)
	move.w #$280,($26,a4)
	move.w #$140,($28,a4)
	move.w #$6c,($2a,a4)
	move.w ($0,a4),($2c,a4)
;aa30
	lea (-$44f6,a5),a0
	move.w ($10,a4),($0,a0)
	move.w #$8000,($2,a0)
	move.w ($c,a4),($4,a0)
	move.w #$8000,($6,a0)
	move.w ($1c,a4),($8,a0)
	move.w #$2d,($a,a0)
	move.w #$30,($c,a0)
	move.l #loc_28816a,($e,a0)
	st ($13,a0)
	st ($12,a0)
;aa6e
	lea (-$44d6,a5),a0
	move.w #$1,($a,a0)
	move.w #$20,($c,a0)
	move.l #loc_28818a,($e,a0)
	st ($13,a0)
	st ($12,a0)
;aa8e
	lea (-$44b6,a5),a0
	move.w #$5d,($a,a0)
	move.w #$0,($c,a0)
	move.l #loc_28815e,($e,a0)
	sf ($13,a0)
	sf ($12,a0)
	move.w #$5d,d0
	jsr loc_00926c
	move.w #$17d,d0
	jsr loc_009284
	jsr loc_0071e0
;aac8
	move.w #$10,-(a7)
	move.l #loc_09631c,-(a7)
	jsr loc_007554	
	lea ($6,a7),a7
	move.w #$5f,-(a7)
	move.l #loc_00adfc,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	bsr loc_009eb6
	bsr loc_0092dc

;Camera Start
	lea p1ma5(a5),a1
	lea p2ma5(a5),a2

loc_00ab00:
	bsr loc_0096aa
	move.w #$100,d4
	move.w #$7c,d5
	move.w #$0,d1
	move.w #$1,d6	
	move.w #$1,d7
	lea (-$44d6,a5),a0
	bsr loc_009afc
	bsr loc_00ab3c
	movem.l a1/a2/a3/a4,-(a7)
	jsr loc_0061c0
	movem.l (a7)+,a1/a2/a3/a4
	bsr loc_00935c
	bsr loc_0092dc
	bra.b loc_00ab00

loc_00ab3c:
	move.w ($1c,a4),d5
	move.w #$ff20,d2
	move.w #$20,d3
	bsr loc_00abe2
	move.w #$1,d0
	mulu.w #$1c,d0
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$ff80,d2
	move.w #$20,d3
	bsr loc_00abe2
	move.w #$2,d0
	mulu.w #$1c,d0
;ab7c
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$80,d2
	move.w #$20,d3
	bsr loc_00abe2
	move.w #$3,d0
	mulu.w #$1c,d0
;aba4	
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.w #$e0,d2
	move.w #$20,d3
	bsr loc_00abe2
	move.w #$4,d0
	mulu.w #$1c,d0
;abcc
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	rts

loc_00abe2:
	move.w ($14,a4),d0
	sub.w ($28,a4),d0
	swap d0
	move.w #$8000,d0
	move.l d0,d1
	asr.l #2,d1
	sub.l d1,d0
	swap d0
	sub.w d0,d2
	move.w ($16,a4),d0
	sub.w ($2a,a4),d0
	swap d0
	move.w #$8000,d0
	move.l d0,d1
	asr.l #2,d1
	sub.l d1,d0
	swap d0
	sub.w d0,d3
	bsr loc_009b60
	addi.l #$a00000,D2
	addi.l #$700000,D3
	rts

loc_00ac24:
	dc.l $00081342,$00001000,$00081343,$00001000
	dc.l $00081344,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00ac24

loc_00ac46:;flag1
	dc.l $00041345,$00001000,$00041346,$00001000
	dc.l $00051347,$00001000,$00061345,$00001000
	dc.l $00051346,$00001000,$00071347,$00001000
	dc.l $00081345,$00001000,$000a1346,$00001000
	dc.l $000e1347,$00001000,$00091345,$00001000
	dc.l $00091346,$00001000,$00091347,$00001000
	dc.l $00091345,$00001000,$00091346,$00001000
	dc.l $00091347,$00001000,$00091345,$00001000
	dc.l $00091346,$00001000,$00091347,$00001000
	dc.l $00081345,$00001000,$00081346,$00001000
	dc.l $00081347,$00001000,$00081345,$00001000
	dc.l $000a1346,$00001000,$000c1347,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00ac46

loc_00ad10:;flag2
	dc.w $0009,$1342,$0000,$1000,$0009,$1343,$0000,$1000
	dc.w $0009,$1344,$0000,$1000,$0009,$1342,$0000,$1000
	dc.w $0009,$1343,$0000,$1000,$0009,$1344,$0000,$1000
	dc.w $0008,$1342,$0000,$1000,$0008,$1343,$0000,$1000
	dc.w $0008,$1344,$0000,$1000,$0008,$1342,$0000,$1000
	dc.w $000a,$1343,$0000,$1000,$000c,$1344,$0000,$1000
	dc.w $0004,$1342,$0000,$1000,$0004,$1343,$0000,$1000
	dc.w $0005,$1344,$0000,$1000,$0006,$1342,$0000,$1000
	dc.w $0005,$1343,$0000,$1000,$0007,$1344,$0000,$1000
	dc.w $0008,$1342,$0000,$1000,$000a,$1343,$0000,$1000
	dc.w $000e,$1344,$0000,$1000,$0009,$1342,$0000,$1000
	dc.w $0009,$1343,$0000,$1000,$0009,$1344,$0000,$1000
	dc.w $8000
	dc.l loc_0094fa,loc_00ad10

loc_00adda:;flag3 correct palette
	dc.l $00081345,$00001000,$00081346,$00001000
	dc.l $00081347,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00adda

loc_00adfc:;last palette line
	dc.w $0000,$6322,$6322,$6322,$6322,$6322,$6322,$6322
	dc.w $6322,$6322,$6322,$6322,$6322,$6322,$6322,$6322

