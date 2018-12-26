loc_015ab6:
    move.w #$30,-(a7)
    move.l #loc_0db292,-(a7)
    jsr FuncPaletteLoad
    lea ($6,a7),a7

    move.w #$60,-(a7)
    move.l #loc_093e68,-(a7)
    jsr loc_007554
    lea ($6,a7), a7

    cmpi.w #1,(-$7f94,a5)
    beq.w loc_015af4
    jsr loc_0162be(pc)
    move.l #$c08000,(-$f78,a5)

loc_015af4:
    sf $1070c2.l
    move.l #$fa8000,(-$f78,a5)

loc_015b02:
    tst.b (-$f3e,a5)
    bne.w loc_015b28
    jsr loc_0150d4(pc)
    jsr loc_015be0(pc)
    jsr loc_015c4e(pc)
    jsr loc_015c24(pc)
    jsr loc_015144
    jsr loc_015b2a(pc)
    trap #5
    bra.b loc_015b02

loc_015b28:
    rts

;--------------------------
loc_015b2a:
    cmpi.w #1,(-$7f94,a5)
    beq.w loc_015b38
    bra.w loc_015b94

loc_015b38:
    subi.l #$5555,(-$f78,a5)
    move.w #$a0,d0
    move.w (-$f78,a5),d1
    move.w #$3000,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    moveq #-$2,d6
    lea loc_094358,a4
    adda.l #8,a4
    move.w #7,d7

loc_015b64:
    movea.l (a4)+,a0
    cmpi.w #$90,d1
    blt.w loc_015b7c
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_005638
    movem.l (a7)+,d0-d7/a0-a2/a4

loc_015b7c:
    addi.w #$1a,d1
    dbra d7,loc_015b64
    cmpi.w #-$30,(-$f78,a5)
    bgt.w loc_015b92
    st (-$f3e,a5)

loc_015b92:
    rts

loc_015b94:
    lea loc_017478(pc),a1
    subi.l #$5555,(-$f78,a5)

loc_015ba0:
    move.l (a1)+,d0
    beq.b loc_015bd0
    movea.l d0,a0
    move.w (a1)+,d0
    move.w (a1)+,d1
    add.w (-$f78,a5),d1
    cmpi.w #$f0,d1
    bge.w loc_015bcc
    cmpi.w #$90,d1
    ble.w loc_015bcc
    move.w (a1)+,d2
    move.w (a1)+,d3
    move.w (a1)+,d4
    jsr loc_005426
    bra.b loc_015bce
 
loc_015bcc:
    addq.w #6,a1

loc_015bce:
    bra.b loc_015ba0

loc_015bd0:
    cmpi.w #-$80,(-$f78,a5)
    bgt.w loc_015bde
    st (-$f3e,a5)

loc_015bde:
    rts

;--------------------------
loc_015be0:
    lea loc_017bdc,a1
    move.w -0xf68(a5),d6
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
    lea loc_094358,a4
    adda.l #4,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0-d7/a0-a2/a4
    rts

;---------------------------
loc_015c24:
    move.w #$a0,d0
    move.w #$70,d1
    move.w #$d900,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_094358,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0-d7/a0-a2/a4
    rts

;---------------------------
loc_015c4e:
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
    adda.l #$10,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0-d7/a0-a2/a4
    rts
