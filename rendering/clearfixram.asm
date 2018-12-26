loc_005ce8:
	lea VRAMRW,a0
	move.w #$1,($2,a0)
	move.w #$7000,(-$2,a0)
	tst.b (DDip0,a5);test debugdip
	bmi loc_005d36 ;brach if usage bar is active
	move.w #$27,d0

loc_005d06:
	move.w #$f020,(a0)
	move.w #$ff,(a0)
	move.w #$6,d1

loc_005d12:
	move.w #$ff,(a0)
	move.w #$ff,(a0)
	move.w #$ff,(a0)
	move.w #$ff,(a0)
	dbra d1,loc_005d12
	move.w #$ff,(a0)
	move.w #$f020,(a0)
	dbra d0,loc_005d06
	bra loc_005db6

;render usage bar start
loc_005d36:
	move.w #$12,d0

loc_005d3a:
	move.w #$f020,(a0)
	move.w #$ff,(a0)
	move.w #$d,d1

loc_005d46:	
	move.w #$ff,(a0)
	move.w #$ff,(a0)
	dbra d1,loc_005d46
	
	move.w #$ff,(a0)
	move.w #$f020,(a0)
	move.w #$f020,(a0)
	move.w #$ff,(a0)
	move.w #$d,d1

loc_005d66:	
	move.w #$ff,(a0)
	move.w #$ff,(a0)
	dbra d1,loc_005d66
	
	move.w #$ff,(a0)
	move.w #$f020,(a0)
	dbra d0,loc_005d3a
	
;5d7e
	move.w #$f020,(a0)
	move.w #$ff,(a0)
	move.w #$d,d1

loc_005d8a
	move.w #$ff,(a0)
	move.w #$ff,(a0)
	dbra d1,loc_005d8a

	move.w #$ff,(a0)
	move.w #$f020,(a0)
	move.w #$7,d1
	
loc_005da2:
	move.w #$f020,(a0)
	move.w #$f020,(a0)
	move.w #$f020,(a0)
	move.w #$f020,(a0)
	dbra d1,loc_005da2

loc_005db6:
	rts



