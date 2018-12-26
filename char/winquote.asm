loc_013e00:
    move.w d4,d5
    andi.w #3,d5
    beq.w loc_013e56
    cmpi.w #3,d5
    beq.w loc_013e56
    jsr loc_013e5c(pc)
    moveq #$2e,d7

loc_013e18:
    jsr loc_0141fe(pc)
    jsr loc_014296(pc)
    jsr loc_0143f4(pc)
    trap #5
    jsr loc_013fa2(pc)
    dbra d7,loc_013e18
    move.w ($c,a6),d7

loc_013e32:
    jsr loc_01408a(pc)
    jsr loc_014296(pc)
    jsr loc_0143f4(pc)
    trap #5
    jsr loc_013fa2(pc)
    jsr loc_01453a(pc)
    cmpi.w #1,d0
    beq.b loc_013e52
    dbra d7,loc_013e32

loc_013e52:
    jsr loc_013f80(pc)

loc_013e56:
    st (-$f8e,a5)
    trap #3

loc_013e5c:
    sf (-$f8e,a5)
    lea ($27fa,a5),a6
    jsr loc_013efc(pc)
    move.w #$26,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    move.w (-$7fa6,a5),($a,a6)
    move.w #0,(-$4234,a5)
    move.w #$60,-(a7)
    move.l #loc_092c3c,-(a7)
    jsr loc_007554
    lea (6,a7),a7
    jsr loc_013f3e(pc)
    cmpi.w #3,(-$7f94,a5)
    beq.b loc_013eae
    move.w #$ef,($c,a6)
    move.w #$f,($e,a6)
    bra.b loc_013eba

loc_013eae:
    move.w #$c7,($c,a6)
    move.w #$d,($e,a6)

loc_013eba:
    clr.b (8,a6)
    cmpi.b #3,(-$f38,a5)
    beq.b loc_013eee
    move.b (-$f38,a5),d0
    or.b (7,a6),d0
    cmpi.b #3,d0
    beq.b loc_013eee
    move.b #-1,(8,a6)
    move.w #$64,-(a7)
    move.l #loc_0cb206,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

loc_013eee:
    jsr loc_013f8e(pc)
    jsr loc_013fe6(pc)
    jsr loc_014244(pc)
    rts

;--------------------------
loc_013efc:
    andi.w #$f,d0
    cmpi.w #9,d0
    ble.b loc_013f08
    clr.w d0

loc_013f08:
    andi.w #7,d1
    cmpi.w #0,d1
    bge.b loc_013f14
    moveq #0,d1

loc_013f14:
    cmpi.w #4,d1
    ble.b loc_013f1c
    moveq #4,d1

loc_013f1c:
    andi.w #$f,d3
    cmpi.w #9,d3
    ble.b loc_013f28
    clr.w d3

loc_013f28:
    andi.w #$103,d4
    move.w d0,(0,a6)
    move.w d1,(2,a6)
    move.w d3,(4,a6)
    move.w d4,(6,a6)
    rts

;--------------------------
loc_013f3e:
    move.w #$66,-(a7)
    move.l #loc_0cb2c6,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7
    lea loc_0cb2e6,a0
    move.w (0,a6),d0
    move.w (2,a6),d1
    add.w d0,d0
    add.w d0,d0
    add.w d1,d1
    add.w d1,d1
    movea.l (a0,d0.w),a0
    move.w #$67,-(a7)
    move.l (a0,d1.w),-(a7)
    jsr loc_007554
    lea (6,a7),a7
    rts  

;--------------------------
loc_013f80:
    move.w #0,(-$4234,a5)
    jsr loc_0071e0
    rts

;--------------------------
loc_013f8e:
    move.w #0,($10,a6)
    move.w #-$10,($12,a6)
    move.w #-$1c,($14,a6)
    rts

;--------------------------
loc_013fa2:
    addq.w #1,($10,a6)
    addq.w #1,($12,a6)
    addq.w #1,($14,a6)
    rts

;--------------------------
loc_013fb0:
    movem.l d7/a6,-(a7)
    moveq #0,d0
    move.w #$d0,d1
    addi.w #-$36,d1
    move.w #$6400,d2
    btst #0,d7
    beq.b loc_013fce
    move.w #$80,d3
    bra.b loc_013fd2

loc_013fce:
    move.w #$88,d3

loc_013fd2:
    move.w #$140,d4
    move.w #$36,d5
    jsr loc_00501a
    movem.l (a7)+,d7/a6
    rts

;--------------------------
loc_013fe6:
    movem.l d7/a6,-(a7)
    cmpi.w #1,(-$7f94,a5)
    bne.b loc_013ffa
    lea loc_0c993e,a1
    bra.b loc_014000

loc_013ffa:
    lea loc_0c9bc2,a1

loc_014000:
    move.w (0,a6),d0
    move.w d0,d6
    add.w d0,d0
    move.w (a1,d0.w),d0
    lea (a1,d0.w),a1
    cmpi.w #8,d6
    bne.b loc_014026
    move.w (4,a6),d0
    add.w d0,d0
    move.b (a1,d0.w),d1
    move.b (1,a1,d0.w),d7
    bra.b loc_014054

loc_014026:
    tst.b (6,a6)                        
    beq.b loc_014036               ;[6]     
    move.b ($a,a1),d1                   
    move.b ($b,a1),d7                   
    bra.b loc_014054               ;[5]     

loc_014036:
    move.w (4,a6),d0                   
    move.b (a1,d0.w),d0             
    lea (a1,d0.w),a1       ;[2]     
    move.w ($a,a6),d0                   
    andi.w #7,d0                       
    add.w d0,d0                   
    move.b (a1,d0.w),d1             
    move.b (1,a1,d0.w),d7

loc_014054:
    andi.w #$ff,d1                      
    andi.w #$ff,d7                      
    sub.w d1,d7                         
    move.w d1,($24,a6)                  
    move.w d7,($26,a6)                  
    move.w d7,d1                        
    add.w d1,d1                         
    move.b loc_014084(pc,d1.w),d2          
    move.b loc_014084+1(pc,d1.w),d6          
    ext.w d2                             
    ext.w d6                             
    move.w d2,($28,a6)                  
    move.w d6,($2a,a6)                  
    movem.l (a7)+,d7/a6                 
    rts 

;/\/\/\/\/\/\/\/\/\
loc_014084:
    dc.b $ea,$00,$ea,$12,$d8,$10

;--------------------------
loc_01408a:
    cmpi.w #1,(-$7f94,a5)
    bne.w loc_01414a
    movem.l d7/a6,-(a7)                 
    lea loc_093084,a1
    move.w ($24,a6),d1                  
    subq.w #1,d1                       
    add.w d1,d1                         
    add.w d1,d1                         
    adda.w d1,a1                        
    move.w #$a0,d0                      
    move.w ($28,a6),d1                  
    addi.w #$d0,d1
    move.w #$6300,d2                    
    moveq #0,d3                          
    moveq #0,d4                          
    moveq #0,d5                          
    move.w ($2a,a6),d6                  
    move.w ($26,a6),d7      

loc_0140c8               
    jsr loc_0140ea(pc)                      
    movea.l (a1)+,a0                    
    movem.l d0/d1/d2/d3/d4/d5/d6/d7/a1,-(a7)              
    moveq #-1,d6                       
    jsr loc_005638
    movem.l (a7)+,d0-d7/a1
    add.w d6,d1
    dbra d7,loc_0140c8
    movem.l (a7)+,d7/a6
    rts     

loc_0140ea:
    cmpi.w #4,(0,a6)
    bne.b loc_014102
    cmpi.w #4,(4,a6)
    bne.b loc_014102
    tst.b (8,a6)
    beq.b loc_014102
    bra.b loc_014104

loc_014102:
    rts   

loc_014104:
    movem.l d0/d6/d7,-(a7)
    move.l a1,d0
    subi.l #loc_093084,d0
    move.w #3,d7

loc_014114:
    move.w #3,d6
    sub.w d7,d6
    add.w d6,d6
    add.w d6,d6
    cmp.w loc_01413a(pc,d6.w),d0
    bne.b loc_014130
    movea.l #loc_093084,a1
    adda.w loc_01413a+2(pc,d6.w),a1
    bra.b loc_014134
 
loc_014130:
    dbra d7,loc_014114

loc_014134:
    movem.l (a7)+,d0/d6/d7
    rts

loc_01413a:
    dc.w $00f0,$01f8,$0104,$01fc,$010c,$0200,$0114,$0204

loc_01414a:
    movem.l d7/a6,-(a7)
    lea loc_0c9e46,a2
    move.w ($24,a6),d1
    subq.w #1,d1
    add.w d1,d1
    lea (a2,d1.w),a1
    move.w #$65,(-$faa,a5)
    move.w #$a0,d0
    move.w ($28,a6),d1
    addi.w #$d8,d1
    move.w #0,d2
    move.w #1,d4
    move.w ($2a,a6),d6
    move.w ($26,a6),d7

loc_014182:
    jsr loc_0141aa(pc)
    move.w (a1)+,d5
    lea (a2,d5.w),a0
    move.b (a0)+,d3                     
    ext.w d3                             
    movem.l d0,-(a7)                    
    jsr loc_005426
    movem.l (a7)+,d0                    
    add.w d6,d1                         
    dbra d7,loc_014182                      
    movem.l (a7)+,d7/a6
    rts

;--------------------------
loc_0141aa:
    cmpi.w #4,(0,a6)
    bne.b loc_0141c2  
    cmpi.w #4,(4,a6)
    bne.b loc_0141c2  
    tst.b ($8,a6)
    beq.b loc_0141c2  
    bra.b loc_0141c4

loc_0141c2: 
    rts  

loc_0141c4:
    movem.l d0/d6/d7,-(a7)
    move.l a1,d0
    sub.l a2,d0
    move.w #2,d7                       

loc_0141d0:
    move.w #2,d6                       
    sub.w d7,d6                         
    add.w d6,d6                         
    add.w d6,d6                         
    cmp.w loc_0141f2(pc,d6.w),d0           
    bne.b loc_0141e8
    movea.l a2,a1
    adda.w loc_0141f2+2(pc,d6.w),a1
    bra.b loc_0141ec

loc_0141e8:
    dbra d7,loc_0141d0                      

loc_0141ec:
    movem.l (a7)+,d0/d6/d7              
    rts

;/\/\/\/\/\/\/\/\/\/\
loc_0141f2:
    dc.w $0096,$0134,$00a4,$0136,$00a8,$0138

;--------------------------
loc_0141fe:
    move.w ($14,a6),d0
    bmi.b loc_014242
    cmpi.w #$d,d0
    ble.b loc_01420e
    move.w #$d,d0

loc_01420e:
    subi.w #$d,d0
    neg.w d0
    mulu.w d0,d0                        
    move.w #$e,d1
    mulu.w d1,d1
    mulu.w #$130,d0
    divu.w d1,d0
    move.w d0,d1
    neg.w d0                             
    addi.w #$a0,d0                      
    addi.w #$a0,d1                      
    move.w d0,($16,a6)                  
    move.w d1,($18,a6)                  
    move.w #$60,($1a,a6)                
    move.w #$70,($1a,a6)                

loc_014242:
    rts

;--------------------------
loc_014244:
    movem.l d7/a6,-(a7)                 
    move.w (0,a6),d6                     
    clr.b d2                             
    ext.w d2                             
    subi.w #$67,d2                      
    neg.w d2                             
    lsl.w #8,d2                          
    move.w #$6600,d3                    
    move.w d2,($2e,a6)                  
    move.w d3,($30,a6)                  
    add.w d6,d6                         
    move.b loc_014282(pc,d6.w),d5          
    move.b loc_014282+1(pc,d6.w),d7          
    ext.w d5
    ext.w d7
    sub.w d5,d7                         
    move.w d5,($2c,a6)
    move.w d7,($32,a6)
    movem.l (a7)+,d7/a6
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_014282:
   dc.b $01,$05,$06,$0a,$0b,$0f,$10,$14,$15,$19
   dc.b $1a,$1e,$1f,$23,$24,$28,$29,$2d,$2e,$32

;--------------------------
loc_014296:
    movem.l d7/a6,-(a7)
    move.w ($14,a6),d6
    bmi.w loc_01430c
    lea loc_092fbc,a4
    move.w ($2c,a6),d0                  
    subq.w #1,d0                       
    add.w d0,d0                         
    add.w d0,d0                         
    ext.l d0                             
    adda.l d0,a4                        
    move.w ($16,a6),d0                  
    move.w ($1a,a6),d1                  
    moveq #0,d3                          
    moveq #0,d4                          
    moveq #0,d5                          
    movem.l d6/a4,-(a7)                 
    cmpi.w #$12,d6                      
    bcc.b loc_0142ec
    move.w ($30,a6),d2                  
    move.w ($32,a6),d7                  

loc_0142d6:
    movea.l (a4)+,a0                    
    movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)           
    jsr loc_004848
    movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4           
    dbra d7,loc_0142d6                      
    bra.b loc_014308

loc_0142ec:
    move.w ($2e,a6),d2
    move.w ($32,a6),d7

loc_0142f4:
    movea.l (a4)+,a0                    
    movem.l d0-d5/d7/a4,-(a7)           
    jsr loc_004850            ;[5]     
    movem.l (a7)+,d0-d5/d7/a4           
    dbra d7,loc_0142f4                      

loc_014308:
    movem.l (a7)+,d6/a4                 

loc_01430c:
    movem.l (a7)+,d7/a6                 
    rts  

;--------------------------
loc_014312:
    cmpi.w #8,(0,a6)                    
    beq.b loc_01431c
    rts

loc_01431c:
    move.w ($14,a6),d6
    cmpi.w #$12,d6
    bcc.b loc_014328
    rts                                  

loc_014328:
    movem.l d7/a6,-(a7)                 
    move.w ($14,a6),d6                  
    bmi.w loc_014364               ;[3]     
    lea loc_092f38,a4                    
    move.w ($16,a6),d0                  
    move.w ($1a,a6),d1                  
    move.w #-$7b00,d2                   
    moveq #0,d3                          
    moveq #0,d4                          
    moveq #0,d5                          
    move.w #2,d7                       

loc_014350:
    movea.l (a4)+,a0
    movem.l d0/d1/d2/d3/d4/d5/d7/a4,-(a7)
    jsr loc_0041d8
    movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a4
    dbra d7,loc_014350

loc_014364:
    movem.l (a7)+,d7/a6
    rts

;--------------------------
loc_01436a:
    movem.l d7/a6,-(a7)
    tst.b (8,a6)
    bne.b loc_0143ee
    move.w ($12,a6),d6
    bmi.b loc_0143ee
    cmpi.w #$1c,d6
    bne.b loc_014396
    move.w #$60,-(a7)
    move.l #loc_0cb226,-(a7)
    jsr FuncPaletteLoad 
    lea (6,a7),a7
    bra.b loc_0143b4

loc_014396:
    cmpi.w #$1e,d6
    bne.b loc_0143b4
    move.w #-1,-(a7)
    move.w #$60,-(a7)
    move.l #loc_0cb146,-(a7)
    jsr loc_0076e0
    lea (8,a7),a7

loc_0143b4:
    move.w d6,d0
    lsr.w #1,d0
    cmpi.w #8,d0
    bls.b loc_0143c2
    move.w #8,d0

loc_0143c2:
    lea loc_092f38,a4
    addi.w #$16,d0
    add.w d0,d0
    add.w d0,d0
    ext.l d0
    adda.l d0,a4
    move.w #$a0,d0
    move.w #$70,d1
    move.w #$6000,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a4),a0
    jsr loc_0041d8

loc_0143ee:
    movem.l (a7)+,d7/a6
    rts

;--------------------------
loc_0143f4:
    movem.l d7/a6,-(a7)                 
    move.w ($10,a6),d6                  
    bmi.w loc_014480   
    cmpi.w #$2c,d6                      
    bne.b loc_014430
    move.w #$61,-(a7)                   
    move.l #loc_0cb246,-(a7)                
    jsr FuncPaletteLoad
    lea (6,a7),a7                      
    move.w #$62,-(a7)                   
    move.l #loc_0cb246,-(a7)                
    jsr FuncPaletteLoad
    lea (6,a7),a7                      
    bra.b loc_014466

loc_014430:
    cmpi.w #$2e,d6
    bne.b loc_014466  
    move.w #-1,-(a7)                   
    move.w #$61,-(a7)                   
    move.l #loc_0cb286,-(a7) 
    jsr loc_0076e0     
    lea (8,a7),a7       
    move.w #-1,-(a7)    
    move.w #$62,-(a7)    
    move.l #loc_0cb2a6,-(a7) 
    jsr loc_0076e0   
    lea (8,a7),a7                      

loc_014466:
    cmpi.w #$2c,d6                      
    bcs.b loc_014472
    jsr loc_014486(pc)
    bra.b loc_014476

loc_014472:
    jsr loc_0144b2(pc)                      

loc_014476:
    cmpi.w #$1b,($10,a6)                
    sge (-$f8e,a5)                       

loc_014480:
    movem.l (a7)+,d7/a6                 
    rts 

;--------------------------
loc_014486:
    movea.l loc_092fb8,a0
    move.w #$a0,d0
    move.w #$78,d1
    tst.b (8,a6)
    beq.b loc_0144a0
    move.w #$6200,d2
    bra.b loc_0144a4

loc_0144a0:
    move.w #$6100,d2

loc_0144a4:
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    jsr loc_0041d8
    rts

;--------------------------
loc_0144b2:
    lea loc_092f38,a4                    
    move.w d6,d0                        
    lsr.w #1,d0                          
    cmpi.w #$f,d0                       
    ble.b loc_0144c6    
    move.w #$f,d0                       

loc_0144c6:
    addq.w #6,d0
    add.w d0,d0
    add.w d0,d0
    ext.l d0
    adda.l d0,a4    
    move.w #$a0,d0  
    move.w #$70,d1  
    tst.b (8,a6)    
    beq.b loc_0144e4  
    move.w #$6200,d2                    
    bra.b loc_0144e8   

loc_0144e4:
    move.w #$6100,d2                    

loc_0144e8:
    moveq #0,d3                          
    moveq #0,d4                          
    moveq #0,d5                          
    movea.l (a4),a0                     
    movem.l d0-d5/a0,-(a7)              
    jsr loc_0041d8

    movem.l (a7)+,d0-d5/a0              
    andi.w #$ff00,d2                    
    ori.w #1,d2                        
    movem.l d0-d5/a0,-(a7)              
    jsr loc_0041d8     

    movem.l (a7)+,d0-d5/a0              
    andi.w #$ff00,d2                     
    ori.w #2,d2                        
    movem.l d0-d5/a0,-(a7)              
    jsr loc_0041d8

    movem.l (a7)+,d0-d5/a0              
    andi.w #$ff00,d2                    
    ori.w #3,d2                        
    jsr loc_0041d8
    rts

;--------------------------
loc_01453a:
    movem.l d7,-(a7)
    move.w #0,d0
    move.w ($c,a6),d1
    sub.w ($e,a6),d1
    cmp.w d1,d7
    bge.b loc_01457c 
    btst #0,(-$f38,a5)                   
    beq.b loc_014568
    move.b (-$53d1,a5),d1               
    move.b (-$53cd,a5),d2               
    jsr loc_014582(pc)                      
    cmpi.w #1,d0                       
    beq.b loc_01457c  

loc_014568:
    btst #1,(-$f38,a5)                 
    beq.b loc_01457c
    move.b (-$53d0,a5),d1               
    move.b (-$53cc,a5),d2               
    jsr loc_014582(pc)                      

loc_01457c:
    movem.l (a7)+,d7                    
    rts

;--------------------------
loc_014582:
    clr.w d3
    move.w #3,d7                       

loc_014588:
    lsl.b #1,d1                          
    bcc.b loc_01458e
    addq.w #1,d3                       

loc_01458e:
    dbra d7,loc_014588                      
    cmpi.w #2,d3                       
    bcs.b loc_01459e
    move.w #1,d0                       
    bra.b loc_0145a8

loc_01459e:
    andi.b #$f0,d2                     
    beq.b loc_0145a8
    move.w #1,d0                       

loc_0145a8:
    rts

;145aa