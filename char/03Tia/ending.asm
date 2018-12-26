loc_015700: ;Tia    End
    move.w #$30,-(a7)
    move.l #loc_0db292,-(a7)
    jsr FuncPaletteLoad   
    lea (6,a7),a7
    
    move.w #$60, -(a7)
    move.l #loc_093ecc,-(a7)
    jsr loc_007554
    lea (6,a7),a7

    cmpi.w #1,(-$7f94,a5)
    beq.w loc_01573e
    jsr loc_0162be(pc)
    move.l #$c08000,(-$f78,a5)

loc_01573e:
    sf $1070c2.l
    move.l #$fa8000,(-$f78,a5)

loc_01574c:
    tst.b (-$f3e,a5)
    bne.w loc_015770
    jsr loc_0150d4(pc)
    jsr loc_015828(pc)
    jsr loc_015896(pc)
    jsr loc_01586c(pc)
    jsr loc_015144(pc)
    jsr loc_015772(pc)
    trap #5
    bra.b loc_01574c

loc_015770:
    rts

;--------------------------
loc_015772:
    cmpi.w #1,(-$7f94,a5)              
    beq.w loc_015780
    bra.w loc_0157dc

loc_015780:
    subi.l #$5555,(-$f78,a5)
    move.w #$a0,d0
    move.w (-$f78,a5),d1
    move.w #$3000,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    moveq #-2,d6
    lea loc_094300,a4
    adda.l #8,a4
    move.w #7,d7

loc_0157ac:
    movea.l (a4)+,a0
    cmpi.w #$90, d1                      
    blt.w loc_0157c4
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_005638
    movem.l (a7)+,d0-d7/a0-a2/a4

loc_0157c4:
    addi.w #$1a,d1
    dbra d7,loc_0157ac
    cmpi.w #-$30,(-$f78,a5)
    bgt.w loc_0157da
    st (-$f3e,a5)

loc_0157da:
    rts

loc_0157dc:
    lea loc_01709c(pc),a1
    subi.l #$5555,(-$f78,a5)

loc_0157e8:
    move.l (a1)+, d0
    beq.b loc_015818
    movea.l d0,a0
    move.w (a1)+,d0
    move.w (a1)+,d1
    add.w (-$f78,a5),d1
    cmpi.w #$f0,d1
    bge.w loc_015814
    cmpi.w #$90,d1
    ble.w loc_015814
    move.w (a1)+,d2
    move.w (a1)+,d3
    move.w (a1)+,d4
    jsr loc_005426
    bra.b loc_015816

loc_015814:
    addq.w #6,a1

loc_015816
    bra.b loc_0157e8

loc_015818:
    cmpi.w #-$60,(-$f78,a5)             
    bgt.w loc_015826
    st (-$f3e,a5)                        

loc_015826:
    rts

;--------------------------
loc_015828:
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
    lea loc_094300,a4
    adda.l #4,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0-d7/a0-a2/a4
    rts

;--------------------------
loc_01586c:
    move.w #$a0,d0
    move.w #$70,d1
    move.w #-$3e00,d2                   
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_094300,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0-d7/a0-a2/a4
    rts

;--------------------------
loc_015896:
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
    adda.l #8,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4, -(a7)
    jsr loc_004850
    movem.l (a7)+, d0-d7/a0-a2/a4
    rts
