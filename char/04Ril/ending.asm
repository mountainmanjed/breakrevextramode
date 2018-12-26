loc_0158da: ;Rila   End
    move.w #$30,-(a7)
    move.l #loc_0db292,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7
    
    move.w #$60,-(a7)
    move.l #loc_093dac,-(a7)
    jsr loc_007554
    lea (6,a7),a7
    
    cmpi.w #1,(-$7f94,a5)
    beq.w loc_015918
    jsr loc_0162be(pc)
    move.l #$c08000,(-$f78,a5)

loc_015918:
    sf $1070c2.l
    move.l #$fa8000,(-$f78,a5)

loc_015926:
    tst.b (-$f3e,a5)
    bne.w loc_01594c
    jsr loc_0150d4(pc)
    jsr loc_015a04(pc)
    jsr loc_015a72(pc)
    jsr loc_015a48(pc)
    jsr loc_015144
    jsr loc_01594e(pc)
    trap #5                             
    bra.b loc_015926

loc_01594c:
    rts 

;--------------------------
loc_01594e:
    cmpi.w #1,(-$7f94,a5)
    beq.w loc_01595c
    bra.w loc_0159b8

loc_01595c:
    subi.l #$5555,(-$f78,a5)
    move.w #$a0,d0
    move.w (-$f78,a5),d1
    move.w #$3000,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    moveq #-2,d6
    lea loc_09432c,a4
    adda.l #8,a4
    move.w #7,d7

loc_015988:
    movea.l (a4)+,a0
    cmpi.w #$90,d1
    blt.w loc_0159a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_005638
    movem.l (a7)+,d0-d7/a0-a2/a4

loc_0159a0:
    addi.w #$1a,d1
    dbra d7,loc_015988
    cmpi.w #-$30,(-$f78,a5)
    bgt.w loc_0159b6
    st (-$f3e,a5)

loc_0159b6:
    rts

loc_0159b8:
    lea loc_017264(pc),a1
    subi.l #$5555,(-$f78,a5)

loc_0159c4:
    move.l (a1)+, d0
    beq.b loc_0159f4
    movea.l d0,a0
    move.w (a1)+,d0
    move.w (a1)+,d1
    add.w (-$f78,a5),d1
    cmpi.w #$f0,d1
    bge.w loc_0159f0
    cmpi.w #$90,d1
    ble.w loc_0159f0
    move.w (a1)+,d2
    move.w (a1)+,d3
    move.w (a1)+,d4
    jsr loc_005426
    bra.b loc_0159f2  

loc_0159f0:
    addq.w #6,a1

loc_0159f2:
    bra.b loc_0159c4

loc_0159f4:
    cmpi.w #-$90,(-$f78,a5)
    bgt.w loc_015a02
    st (-$f3e,a5)

loc_015a02:
    rts

;--------------------------
loc_015a04:
    lea loc_017bdc,a1
    move.w (-$f68,a5),d6
    move.b (a1,d6.w),d2
    ext.w d2
    subi.w #$50,d2
    neg.w d2
    lsl.w #8,d2
    move.w #$a0,d0
    move.w #$70,d1
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_09432c,a4
    adda.l #4,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4, -(a7)
    jsr loc_004850
    movem.l (a7)+, d0-d7/a0-a2/a4
    rts 

;--------------------------
loc_015a48:
    move.w #$a0,d0
    move.w #$70,d1
    move.w #0,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_09432c,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0-d7/a0-a2/a4
    rts

;--------------------------
loc_015a72:
    lea loc_017c5e,a1
    move.w (-$f68,a5),d6
    move.b (a1,d6.w),d2
    ext.w d2
    subi.w #$33,d2
    neg.w d2
    lsl.w #8,d2
    move.w #$a0,d0
    move.w #$70,d1
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_094408,a4
    adda.l #$c,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)        
    jsr loc_004850
    movem.l (a7)+,d0-d7/a0-a2/a4
    rts