loc_015fba: ;Saizo  End
    move.w #$30,-(a7)
    move.l #loc_0db292,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

    move.w #$60,-(a7)
    move.l #loc_093f14,-(a7)
    jsr loc_007554
    lea (6,a7),a7
    
    cmpi.w #1,(-$7f94,a5)
    beq.w loc_015ff8
    jsr loc_0162be(pc)
    move.l #$c08000,(-$f78,a5)
 
loc_015ff8:
    sf $1070c2.l
    move.l #$fa8000,(-$f78,a5)

loc_016006:
    tst.b (-$f3e,a5)
    bne.w loc_016026
    jsr loc_0150d4(pc)
    jsr loc_0160de(pc)
    jsr loc_016124(pc)
    jsr loc_015144(pc)
    jsr loc_016028(pc)
    trap #5
    bra.b loc_016006

loc_016026:
    rts

;--------------------------
loc_016028:
    cmpi.w #1,(-$7f94,a5)
    beq.w loc_016036
    bra.w loc_016092

loc_016036:
    subi.l #$5555,(-$f78,a5)
    move.w #$a0,d0
    move.w (-$f78,a5),d1
    move.w #$3000,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    moveq #-$2,d6
    lea loc_0943dc,a4
    adda.l #8,a4
    move.w #7,d7

loc_016062:
    movea.l (a4)+,a0
    cmpi.w #$90,d1
    blt.w loc_01607a
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_005638
    movem.l (a7)+,d0-d7/a0-a2/a4

loc_01607a:
    addi.w #$1a,d1
    dbra d7,loc_016062
    cmpi.w #-$30,(-$f78,a5)
    bgt.w loc_016090
    st (-$f3e,a5)

loc_016090:
    rts

loc_016092:
    lea loc_0179e4(pc),a1
    subi.l #$5555,(-$f78,a5)

loc_01609e:
    move.l (a1)+, d0
    beq.b loc_0160ce
    movea.l d0,a0
    move.w (a1)+,d0
    move.w (a1)+,d1
    add.w (-$f78,a5),d1
    cmpi.w #$f0, d1
    bge.w loc_0160ca
    cmpi.w #$90,d1
    ble.w loc_0160ca
    move.w (a1)+,d2
    move.w (a1)+,d3
    move.w (a1)+,d4
    jsr loc_005426
    bra.b loc_0160cc

loc_0160ca:
    addq.w #6,a1

loc_0160cc
    bra.b loc_01609e

loc_0160ce:
    cmpi.w #-$50,(-$f78,a5)
    bgt.w loc_0160dc
    st (-$f3e,a5)

loc_0160dc:
    rts

;--------------------------
loc_0160de:
    lea loc_017bdc,a1
    move.w (-$f68,a5),d6
    move.b (a1,d6.w),d2
    ext.w d2
    subi.w #$50,d2
    neg.w d2
    lsl.w #8,d2
    move.w #$a0,d0
    move.w #$70,d1
    subq.w #8,d1
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_0943dc,a4
    adda.l #4,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0-d7/a0-a2/a4
    rts

loc_016124:
    move.w #$a0,d0
    move.w #$70,d1
    move.w #0,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_0943dc,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850
    movem.l (a7)+, d0-d7/a0-a2/a4
    rts