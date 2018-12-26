loc_015e26: ;Maherl End
    move.w #$30,-(a7)
    move.l #loc_0db292,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7
    
    move.w #$60,-(a7)
    move.l #loc_093ea0,-(a7)
    jsr loc_007554
    lea (6,a7),a7

    cmpi.w #1,(-$7f94,a5)
    beq.w loc_015e64
    jsr loc_0162be(pc)
    move.l #$c08000,(-$f78,a5)

loc_015e64:
    sf $1070c2.l
    move.l #$fa8000,(-$f78,a5)

loc_015e72:
    tst.b (-$f3e,a5)
    bne.w loc_015e94 
    jsr loc_0150d4(pc)
    jsr loc_015f4c(pc)
    jsr loc_015f90(pc)
    jsr loc_015144  
    jsr loc_015e96(pc)
    trap #5
    bra.b loc_015e72

loc_015e94:
    rts

;--------------------------
loc_015e96:
    cmpi.w #1,(-$7f94,a5)
    beq.w loc_015ea4
    bra.w loc_015f00

loc_015ea4:
    subi.l #$5555,(-$f78,a5)
    move.w #$a0,d0
    move.w (-$f78,a5),d1
    move.w #$3000,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    moveq #-$2,d6
    lea loc_0943b0,a4
    adda.l #8,a4
    move.w #7,d7

loc_015ed0:
    movea.l (a4)+,a0
    cmpi.w #$90,d1
    blt.w loc_015ee8
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_005638
    movem.l (a7)+,d0-d7/a0-a2/a4

loc_015ee8:
    addi.w #$1a,d1
    dbra d7,loc_015ed0
    cmpi.w #-$30,(-$f78,a5)
    bgt.w loc_015efe
    st (-$f3e,a5)

loc_015efe:
    rts

loc_015f00:
    lea loc_017818(pc),a1
    subi.l #$5555,(-$f78,a5)

loc_015f0c:
    move.l (a1)+,d0
    beq.b loc_015f3c
    movea.l d0,a0
    move.w (a1)+,d0
    move.w (a1)+,d1
    add.w (-$f78,a5),d1
    cmpi.w #$f0,d1
    bge.w loc_015f38
    cmpi.w #$90,d1
    ble.w loc_015f38
    move.w (a1)+,d2
    move.w (a1)+,d3
    move.w (a1)+,d4
    jsr loc_005426
    bra.b loc_015f3a

loc_015f38:
    addq.w #6,a1

loc_015f3a:
    bra.b loc_015f0c

loc_015f3c:
    cmpi.w #-$60,(-$f78,a5)
    bgt.w loc_015f4a
    st (-$f3e,a5)

loc_015f4a:
    rts

;--------------------------
loc_015f4c:
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
    lea loc_0943b0,a4
    adda.l #4,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0-d7/a0-a2/a4
    rts

;--------------------------
loc_015f90:
    move.w #$a0,d0
    move.w #$70,d1
    move.w #-$3400,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_0943b0,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0-d7/a0-a2/a4
    rts

;015fba
