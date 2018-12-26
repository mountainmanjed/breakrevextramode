;=====================;
; 0xc954 Maherl Stage ;
;=====================;
MahStage:
	bset #$6,(2,a4)
	move.l #$b00000,($8,a4)
	move.w #$ff88,($c,a4)
	move.w #$e8,($e,a4)
	move.w #$0,($10,a4)
	move.w #$280,($12,a4)
	move.w #$140,($14,a4)
	move.w #$54,($16,a4)
	clr.w ($18,a4)
	clr.w ($1a,a4)
	move.w #$0,($1c,a4)
	move.w #$0,($1e,a4)
	move.w #$ff88,($20,a4)
	move.w #$e8,($22,a4)
	move.w #$0,($24,a4)
	move.w #$280,($26,a4)
	move.w #$140,($28,a4)
	move.w #$54,($2a,a4)
	move.w ($0,a4),($2c,a4)
;c9c4
	lea (-$44f6,a5),a0
	move.w ($10,a4),($0,a0)
	move.w #$8000,($2,a0)
	move.w ($c,a4),($4,a0)
	move.w #$8000,($6,a0)
	move.w ($1c,a4),($8,a0)
	move.w #$21,($a,a0)
	move.w #$28,($c,a0)
	move.l #loc_288376,($e,a0)
	st ($13,a0)
	st ($12,a0)
;ca02
	lea (-$44d6,a5),a0
	move.w #$1,($a,a0)
	move.w #$20,($c,a0)
	move.l #loc_288396,($e,a0)
	st ($13,a0)
	st ($12,a0)
;ca22
	lea (-$44b6,a5),a0
	move.w #$64,($a,a0)
	move.w #$0,($c,a0)
	move.l #loc_28815e,($e,a0)
	sf ($13,a0)
	sf ($12,a0)
;ca42
	move.w #$64,d0
	jsr loc_00926c
	move.w #$17d,d0
	jsr loc_009284
	jsr loc_0071e0
	move.w #$10,-(a7)
	move.l #loc_0968d0,-(a7)
	jsr loc_007554
	lea ($6,a7),a7
	move.w #$5f,-(a7)
	move.l #loc_00cce0,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	bsr loc_009eb6
	bsr loc_0092dc
;ca8c
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$9,-(a7)
	move.w #$49,-(a7)
	move.l #loc_00cc18,-(a7)
	move.w #$1,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;caac
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$9,-(a7)
	move.w #$52,-(a7)
	move.l #loc_00cc42,-(a7)
	move.w #$2,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;cacc
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$4,-(a7)
	move.w #$5b,-(a7)
	move.l #loc_00cc6c,-(a7)
	move.w #$3,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
;caec
	clr.w -(a7)
	clr.l -(a7)
	clr.l -(a7)
	move.w #$5,-(a7)
	move.w #$5f,-(a7)
	move.l #loc_00cca6,-(a7)
	move.w #$4,-(a7)
	bsr loc_00956a
	adda.w #$14,a7
	move.w #$600,$3c0006.l
	lea p1ma5(a5),a1
	lea p2ma5(a5),a2

loc_00cb1c:
	bsr loc_0096aa
	move.w #$100,d4
	move.w #$dc,d5
	move.w #$0,d1
	move.w #$2,d6
	move.w #$2,d7
	lea (-$44d6,a5),a0
	bsr loc_009afc
	bsr loc_00cb58
	movem.l a1/a2/a3/a4,-(a7)
	jsr loc_0061c0
	movem.l (a7)+,a1/a2/a3/a4
	bsr loc_00935c
	bsr loc_0092dc
	bra.b loc_00cb1c

loc_00cb58:
	move.w ($1c,a4),d5
	move.l #$250,d2
	move.l #$9b,d3
	bsr loc_00cc0a
	move.w #$1,d0
	mulu.w #$1c,d0
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	moveq #$30,d2
	move.l #$9b,d3
	bsr loc_00cc0a
	move.w #$2,d0
	mulu.w #$1c,d0
;cb9c
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.l #$1d0,d2
	move.l #$90,d3
	bsr loc_00cc0a
	move.w #$3,d0
	mulu.w #$1c,d0
;cbc8
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	move.l #$a0,d2
	move.l #$98,d3
	bsr loc_00cc0a
	move.w #$4,d0
	mulu.w #$1c,d0
;cbf4
	lea BGOBJramstart,a0
	adda.l d0,a0
	move.l d2,($6,a0)
	move.l d3,($a,a0)
	move.w d5,($e,a0)
	rts

loc_00cc0a:
	sub.w ($10,a4),d2
	sub.w ($c,a4),d3
	bsr loc_009b60
	rts

;data
loc_00cc18:
	dc.l $006a1384,$00001000,$00101385,$00001000
	dc.l $00341386,$00001000,$00081385,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00cc18

loc_00cc42:
	dc.l $006a1384,$00001001,$00101385,$00001001
	dc.l $00341386,$00001001,$00081385,$00001001
	dc.w $8000
	dc.l loc_0094fa,loc_00cc42

loc_00cc6c:
	dc.l $000a1380,$00001000,$00051381,$00001000
	dc.l $00031382,$00001000,$00111383,$00001000
	dc.l $000d1382,$00001000,$00081381,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00cc6c

loc_00cca6:
	dc.l $001c137c,$00001000,$0008137d,$00001000
	dc.l $0006137e,$00001000,$000c137f,$00001000
	dc.l $000a137e,$00001000,$0006137d,$00001000
	dc.w $8000
	dc.l loc_0094fa,loc_00cca6

loc_00cce0:
	dc.w $0000,$1920,$1920,$1920,$1920,$1920,$1920,$1920
	dc.w $1920,$1920,$1920,$1920,$1920,$1920,$1920,$1920

;cd00 end of stage
