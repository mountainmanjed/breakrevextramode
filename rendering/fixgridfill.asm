;===================;
; fixram grid fill  ;
;===================;
loc_005db8:
	lea VRAMRW,a0
	move.w #$1,($2,a0)
	move.w #$7000,(-$2,a0)
	tst.b (DDip0,a5)
	bmi loc_005e06

	move #$27,d0

loc_005dd6:
	move #$f020,(a0)
	move.w ($4,a7),(a0)
	move.w #$6,d1

loc_005de2:
	move.w ($4,a7),(a0)
	move.w ($4,a7),(a0)
	move.w ($4,a7),(a0)
	move.w ($4,a7),(a0)
	dbra d1,loc_005de2
	
	move.w ($4,a7),(a0)
	move.w #$f020,(a0)
	dbra d0,loc_005dd6
	bra loc_005e4e

loc_005e06:
	move.w #$26,d0

loc_005e0a:
	move.w #$f020,(a0)
 	move.w ($4,a7),(a0)
	move.w #$6,d1

loc_005e16:
	move.w ($4,a7),(a0)
	move.w ($4,a7),(a0)
	move.w ($4,a7),(a0)
	move.w ($4,a7),(a0)
	dbra d1,loc_005e16
	
	move.w ($4,a7),(a0)
	move.w #$f020,(a0)
	dbra d0,loc_005e0a

	move.w #$7,d1
	
loc_005e3a:
	move.w #$f020,(a0)
	move.w #$f020,(a0)
	move.w #$f020,(a0)
	move.w #$f020,(a0)
	dbra d1,loc_005e3a

loc_005e4e:
	rts


