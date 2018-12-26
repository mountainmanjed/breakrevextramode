loc_015352: ;Dao End
    move.w #$30,-(a7)
    move.l #loc_0db292,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

    move.w #$60,-(a7)
    move.l #loc_093c00,-(a7)
    jsr loc_007554
    lea (6,a7),a7

    cmpi.w #1,(-$7f94,a5)
    beq.w loc_015390
    jsr loc_0162be(pc)
    move.l #$c08000,(-$f78,a5)

loc_015390:
    sf $1070c2.l
    move.l #$fa8000,(-$f78,a5)

loc_01539e:
    tst.b (-$f3e,a5)
    bne.w loc_0153c2
    jsr loc_0150d4(pc)
    jsr loc_01547a(pc)
    jsr loc_0154e8(pc)
    jsr loc_0154be(pc)
    jsr loc_015144(pc)
    jsr loc_0153c4(pc)
    trap #5
    bra.b loc_01539e

loc_0153c2:
    rts

;--------------------------
loc_0153c4:
    cmpi.w #1,(-$7f94,a5)              
    beq.w loc_0153d2
    bra.w loc_01542e

loc_0153d2:
    subi.l #$5555,(-$f78,a5)
    move.w #$a0,d0
    move.w (-$f78,a5),d1
    move.w #$3000,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    moveq #-2,d6
    lea loc_0942a8,a4
    adda.l #8,a4
    move.w #7,d7

loc_0153fe:
    movea.l (a4)+,a0
    cmpi.w #$90,d1
    blt.w loc_015416 
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_005638
    movem.l (a7)+,d0-d7/a0-a2/a4

loc_015416:
    addi.w #$1a, d1                      
    dbra d7,loc_0153fe                      
    cmpi.w #-$30,(-$f78,a5)             
    bgt.w loc_01542c
    st (-$f3e,a5)                        

loc_01542c:
    rts

loc_01542e:
    lea loc_016d00(pc),a1
    subi.l #$5555,(-$f78,a5)

loc_01543a:
    move.l (a1)+,d0
    beq.b loc_01546a
    movea.l d0,a0
    move.w (a1)+,d0
    move.w (a1)+,d1
    add.w (-$f78,a5),d1
    cmpi.w #$f0,d1
    bge.w loc_015466  
    cmpi.w #$90,d1
    ble.w loc_015466
    move.w (a1)+,d2
    move.w (a1)+,d3
    move.w (a1)+,d4
    jsr loc_005426
    bra.b loc_015468
  
loc_015466:
    addq.w #6,a1

loc_015468:
    bra.b loc_01543a
  
loc_01546a:
    cmpi.w #-$50,(-$f78,a5)             
    bgt.w loc_015478
    st (-$f3e,a5)
  
loc_015478:
    rts

;--------------------------
loc_01547a:
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
    lea loc_0942a8,a4
    adda.l #4,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850    
    movem.l (a7)+, d0-d7/a0-a2/a4        
    rts
;--------------------------
loc_0154be:
    move.w #$a0,d0
    move.w #$70,d1
    move.w #$b00,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_0942a8,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0-d7/a0-a2/a4
    rts

loc_0154e8:
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
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4, -(a7)
    jsr loc_004850
    movem.l (a7)+,d0-d7/a0-a2/a4
    rts 
