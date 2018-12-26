loc_017c68:
	move.w #$40, d0
    jsr loc_00d778
    move.w #-1,(-$53d6,a5)
    trap #5
    jsr loc_003a16
    jsr loc_005ce8
    jsr loc_0071e0
    move.w #$13,(-$53d6,a5)
    clr.b (-$7f7e,a5)
    move.w #$22,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_017ca2:
    trap #5
    bsr.w loc_017cb4
    move.w #0,d0
    jsr loc_01b9cc
    jsr loc_00d7c0
    bra.b loc_017ca2

loc_017cb4:
	movem.l d0/a0-a1,-(a7)
    move.w #$f300,-(a7)
    move.l #loc_017d26,-(a7)
    clr.w -(a7)
    move.w #$7258,-(a7)
    jsr FixTextWrite
    lea ($a,a7),a7
    movem.l (a7)+,d0/a0-a1

    moveq #0,d0
    move.b $10fdda.l, d0
    movem.l d0-d3/a0, -(a7)
    move.w #-$d00, -(a7)
    move.w #2,-(a7)
    move.l d0,-(a7)
    clr.w -(a7)
    move.w #$7279,-(a7)
    jsr loc_005e8e
    lea ($c,a7),a7
    movem.l (a7)+,d0-d3/a0
    rts

loc_017d02:
    tst.b $10fd82.l
    bne.w loc_017d24
    jsr loc_003a16
    jsr loc_005ce8
    jsr loc_0071e0
    jsr loc_01b988

loc_017d24:
    rts

loc_017d26:
    dc.b 'TIME',$00
    even

