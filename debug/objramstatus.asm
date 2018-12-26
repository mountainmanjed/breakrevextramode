loc_003b2c:
	sf (-$4ab5,a5)
	trap #$5
	btst #$5,(DDip0,a5)
	bne loc_003b4a
	bsr loc_003e2c
	bsr loc_003e5a
	bsr loc_003eee
	bra.b loc_003b2c

loc_003b4a:
	bsr loc_003e2c
	bsr loc_003c2e
	bsr loc_003e5a
	bsr loc_003eee
	bsr loc_003d30
	movem.l d0/a0/a1,-(a7)
	move.w #$1300,-(a7)
	move.l #loc_003dc4,-(a7)
	clr.w -(a7)
	move.w #$7047,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1
	movem.l d0/a0/a1,-(a7)
	move.w #$4300,-(a7)
	move.l #loc_003dd0,-(a7)
	clr.w -(a7)
	move.w #$7048,-(a7)

;3b94
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1	
	movem.l d0/a0/a1,-(a7)
	move.w #$3300,-(a7)
	move.l #loc_003ddc,-(a7)
	clr.w -(a7)
	move.w #$7049,-(a7)
	
;3bb6
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1	
	movem.l d0/a0/a1,-(a7)
	move.w #$300,-(a7)
	move.l #loc_003de8,-(a7)
	clr.w -(a7)
	move.w #$704b,-(a7)

;3bd8
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1	
	movem.l d0/a0/a1,-(a7)
	move.w #$2300,-(a7)
	move.l #loc_003df4,-(a7)
	clr.w -(a7)
	move.w #$704c,-(a7)

;3bfa
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1	
	movem.l d0/a0/a1,-(a7)
	move.w #$1300,-(a7)
	move.l #loc_003e00,-(a7)
	clr.w -(a7)
	move.w #$704d,-(a7)

;3c1c
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1	
	bra loc_003b2c

loc_003c2e:
	tst.b (-$4ab6,a5)
	bne.b loc_003c44
	move.w (-$4ac2,a5),d1
	move.w d1,d2
	sub.w (-$4ac0,a5),d1
	sub.w (-$4ac4,a5),d2
	bra.b loc_003c52
	
loc_003c44:
	move.w (-$4ac4,a5),d1
	move.w d1,d2
	sub.w (-$4ac0,a5),d1
	sub.w (-$4ac6,a5),d2
	
loc_003c52:
	move.w (-$4ac6,a5),d0
	movem.l d0/d1/d2/d3/a0,-(a7)
	move.w #$1300,-(a7)
	move.w #$4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$71c7,-(a7)

;3c6a
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0/d1/d2/d3/a0
	move.w (-$4ac4,a5),d0
	movem.l d0/d1/d2/d3/a0,-(a7)
	move.w #$4300,-(a7)
	move.w #$4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$71c8,-(a7)

;3c90
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0/d1/d2/d3/a0
	move.w (-$4ac2,a5),d0
	movem.l d0/d1/d2/d3/a0,-(a7)
	move.w #$3300,-(a7)
	move.w #$4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$71c9,-(a7)

;3cb6
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0/d1/d2/d3/a0
	movem.l d0/d1/d2/d3/a0,-(a7)
	move.w #$300,-(a7)
	move.w #$4,-(a7)
	move.l d1,-(a7)
	clr.w -(a7)
	move.w #$71cb,-(a7)

;3cd8
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0/d1/d2/d3/a0
	move.w (-$4abc,a5),d0
	movem.l d0/d1/d2/d3/a0,-(a7)
	move.w #$2300,-(a7)
	move.w #$4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$71cc,-(a7)

;3cfe
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0/d1/d2/d3/a0
	movem.l d0/d1/d2/d3/a0,-(a7)
	move.w #$1300,-(a7)
	move.w #$4,-(a7)
	move.l d2,-(a7)
	clr.w -(a7)
	move.w #$71cd,-(a7)

;3d20
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0/d1/d2/d3/a0
	rts
	
loc_003d30:
	tst.b (-$4ab6,a5)
	bne.b loc_003d7e

;3d36
	movem.l d0/a0/a1,-(a7)
	move.w #$2300,-(a7)
	move.l #$3e0c,-(a7)
	clr.w -(a7)
	move.w #$7051,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1

;3d58
	movem.l d0/a0/a1,-(a7)
	move.w #$300,-(a7)
	move.l #loc_003e24,-(a7)
	clr.w -(a7)
	move.w #$7052,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1
	bra loc_003dc2

loc_003d7e:
	movem.l d0/a0/a1,-(a7)
	move.w #$300,-(a7)
	move.l #loc_003e14,-(a7)
	clr.w -(a7)
	move.w #$7051,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1
	
	movem.l d0/a0/a1,-(a7)
	move.w #$2300,-(a7)
	move.l #loc_003e1c,-(a7)
	clr.w -(a7)
	move.w #$7052,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1
	
loc_003dc2:
	rts

loc_003dc4:
	dc.b "OBJ TOP   ",$00
	even

loc_003dd0:
	dc.b "OBJ HALF  ",$00
	even

loc_003ddc:
	dc.b "PLAYER RSV",$00
	even

loc_003de8:
	dc.b "OBJ WRITE ",$00
	even

loc_003df4:
	dc.b "OBJ ERASE ",$00
	even

loc_003e00:
	dc.b "OBJ MAX   ",$00
	even

loc_003e0c:
	dc.b "DSP[1]",$00
	even

loc_003e14:
	dc.b "WRT 1 ",$00
	even

loc_003e1c:
	dc.b "DSP[2]",$00
	even

loc_003e24:
	dc.b "WRT 2 ",$00
	even
