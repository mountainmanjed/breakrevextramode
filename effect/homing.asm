;Homing math
loc_002c7e:
	movem.l d1/d2/d3,-(a7)
	tst.w d3
	bmi.b loc_002ca2
	tst.w d2
	bmi.b loc_002c92
	jsr loc_002cc6(pc)
	bra loc_002cc0
	
loc_002c92:
	neg.w d2
	jsr loc_002cc6(pc)
	neg.w d0
	addi.w #$80,d0
	bra loc_002cc0

loc_002ca2:
	neg.w d3
	tst.w d2
	bpl.b loc_002cb6
	neg.w d2
	jsr loc_002cc6(pc)
	addi.w #$80,d0
	bra loc_002cc0
	
loc_002cb6:
	jsr loc_002cc6(pc)
	neg.w d0
	addi.w #$100,d0

loc_002cc0:
	movem.l (a7)+,d1/d2/d3
	rts

loc_002cc6:
	tst.w d2
	beq loc_002d18
	ext.l d3
	lsl.l #8,d3
	divu.w d2,d3
	bvs loc_002d18
	move d3,d0
	bmi loc_002d18
	swap d3
	lsr.w #1,d2
	cmp.w d2,d3
	bcs.b loc_002ce6
	addq.w #1,d0

loc_002ce6:
	cmpi.w #$517c,d0
	bcc.b loc_002d18
	cmpi.w #$1b27,d0
	bcc.b loc_002d12
	cmpi.w #$1047,d0
	bcc.b loc_002d0c
	cmpi.w #$b9d,d0
	bcc.b loc_002d06
	move.b loc_002d1e(pc,d0.w),d0
	ext.w d0
	rts

loc_002d06:
	move.w #$3d,d0
	rts

loc_002d0c:
	move.w #$3e,d0
	rts

loc_002d12:
	move.w #$3f,d0
	rts

loc_002d18:
	move.w #$40,d0
	rts

loc_002d1e:
	incbin "tables/loc2d1e.bin";ba0

