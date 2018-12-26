loc_01516e:
    move.w #$a0,-(a7)
    move.l #loc_0e159c,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7
    
    move.w #$1d,-(a7)
    move.l #loc_0e157c,-(a7)
    jsr FuncPaletteLoad 
    lea (6,a7),a7
    
    move.w #$30,-(a7)
    move.l #loc_0db292,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7
    
    move.w #$60,-(a7)
    move.l #loc_093be8,-(a7)
    jsr loc_007554
    lea (6,a7),a7
    
    cmpi.w #1,(-$7f94,a5)
    beq.w loc_0151d4
    jsr loc_0162be(pc)
    move.l #$c08000,(-$f78,a5)          

loc_0151d4:
    sf $1070c2.l
    move.l #$fa8000,(-$f78,a5)

loc_0151e2:
    tst.b (-$f3e,a5)
    bne.w loc_015202
    jsr loc_0150d4(pc)                      
    jsr loc_0152e2(pc)                      
    jsr loc_015328(pc)                      
    jsr loc_015144(pc)                      
    jsr loc_01522c(pc)                      
    trap #5                             
    bra.b loc_0151e2
 
 loc_015202:
    rts 

;--------------------------
loc_015204:
    move.w #$a0,d0
    move.w #$70,d1
    move.w #$a000,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_090d64,a4
    adda.l #$1dc,a4
    movea.l (a4),a0
    jsr loc_0041d8
    rts

loc_01522c:
    cmpi.w #1,(-$7f94,a5)
    beq.w loc_01523a
    bra.w loc_015296

loc_01523a:
    subi.l #$5555,(-$f78,a5)
    move.w #$a0,d0
    move.w (-$f78,a5),d1
    move.w #$3000,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    moveq #-2, d6
    lea loc_09427c,a4
    adda.l #8,a4
    move.w #7,d7

loc_015266:
    movea.l (a4)+,a0
    cmpi.w #$90,d1
    blt.w loc_01527e 
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_005638
    movem.l (a7)+,d0-d7/a0-a2/a4

loc_01527e:
    addi.w #$1a, d1                      
    dbra d7,loc_015266                      
    cmpi.w #-$30,(-$f78,a5)             
    bgt.w loc_015294               ;[1]     
    st (-$f3e,a5)                        

loc_015294:
    rts

loc_015296:
    lea loc_016aea(pc), a1         ;[2]     
    subi.l #$5555,(-$f78,a5)            

loc_0152a2: 
    move.l (a1)+, d0                     
    beq.b loc_0152d2 
    movea.l d0, a0                       
    move.w (a1)+, d0                     
    move.w (a1)+, d1                     
    add.w (-$f78,a5), d1                 
    cmpi.w #$f0,d1                      
    bge.w loc_0152ce  
    cmpi.w #$90, d1                      
    ble.w loc_0152ce
    move.w (a1)+,d2
    move.w (a1)+,d3
    move.w (a1)+,d4
    jsr loc_005426
    bra.b loc_0152d0

loc_0152ce:
    addq.w #6,a1                       

loc_0152d0:
    bra.b loc_0152a2   

loc_0152d2:
    cmpi.w #-$90,(-$f78,a5)
    bgt.w loc_0152e0
    st (-$f3e,a5)                        

loc_0152e0:
    rts

;--------------------------
loc_0152e2:
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
    lea loc_09427c,a4
    adda.l #4,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850
    movem.l (a7)+, d0-d7/a0-a2/a4
    rts

;--------------------------
loc_015328:
    move.w #$a0,d0
    move.w #$70,d1
    move.w #$1000,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_09427c,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)        
    jsr loc_004850
    movem.l (a7)+, d0-d7/a0-a2/a4
    rts
