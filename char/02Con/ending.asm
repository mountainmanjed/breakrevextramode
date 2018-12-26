loc_015526: ;Condor End
    move.w #$30,-(a7)
    move.l #loc_0db292,-(a7)
    jsr FuncPaletteLoad
    lea ($6,a7), a7                      

    move.w #$60,-(a7)
    move.l #loc_093d40,-(a7)
    jsr loc_007554
    lea ($6,a7), a7                       

    cmpi.w #1,(-$7f94,a5)
    beq.w loc_015564
    jsr loc_0162be(pc)
    move.l #$c08000,(-$f78,a5)

loc_015564:
    sf $1070c2.l
    move.l #$fa8000,(-$f78,a5)

loc_015572:
    tst.b (-$f3e,a5)
    bne.w loc_015596
    jsr loc_0150d4(pc)
    jsr loc_01564e(pc)
    jsr loc_0156bc(pc)
    jsr loc_015692(pc)
    jsr loc_015144(pc)
    jsr loc_015598(pc)
    trap #5
    bra.b loc_015572

loc_015596:
    rts

loc_015598:
    cmpi.w #1, (-$7f94,a5)
    beq.w loc_0155a6
    bra.w loc_015602

loc_0155a6:
    subi.l #$5555,(-$f78,a5)
    move.w #$a0,d0
    move.w (-$f78,a5),d1
    move.w #$3000,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    moveq #-2,d6
    lea loc_0942d4,a4
    adda.l #8,a4
    move.w #7,d7

loc_0155d2:
    movea.l (a4)+,a0
    cmpi.w #$90,d1
    blt.w loc_0155ea
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_005638
    movem.l (a7)+,d0-d7/a0-a2/a4

loc_0155ea:
    addi.w #$1a,d1
    dbra d7,loc_0155d2                      
    cmpi.w #-$30,(-$f78,a5)             
    bgt.w loc_015600
    st (-$f3e,a5)                        

loc_015600:
    rts

;--------------------------
loc_015602:
    lea loc_016e9c(pc),a1
    subi.l #$5555,(-$f78,a5)
    
loc_01560e:    
    move.l (a1)+, d0
    beq.b loc_01563e
    movea.l d0,a0
    move.w (a1)+,d0
    move.w (a1)+,d1
    add.w (-$f78,a5),d1
    cmpi.w #$f0,d1
    bge.w loc_01563a
    cmpi.w #$90,d1
    ble.w loc_01563a
    move.w (a1)+,d2
    move.w (a1)+,d3
    move.w (a1)+,d4
    jsr loc_005426
    bra.b loc_01563c

loc_01563a:
    addq.w #6,a1

loc_01563c:
    bra.b loc_01560e

loc_01563e:
    cmpi.w #-$90,(-$f78,a5)
    bgt.w loc_01564c
    st (-$f3e,a5)

loc_01564c:
    rts

;--------------------------
loc_01564e:
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
    lea loc_0942d4,a4
    adda.l #4,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0-d7/a0-a2/a4        
    rts
   
;--------------------------
loc_015692:
    move.w #$a0,d0
    move.w #$70,d1
    move.w #$f300,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_0942d4,a4
    movea.l (a4), a0
    movem.l d0-d7/a0-a2/a4, -(a7)
    jsr loc_004850
    movem.l (a7)+, d0-d7/a0-a2/a4
    rts

;--------------------------
loc_0156bc:
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
    adda.l #4,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0-d7/a0-a2/a4
    rts
