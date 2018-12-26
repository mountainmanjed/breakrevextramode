loc_0145aa:
    jsr loc_0145d2(pc)
    move.w (0,a6),d7

loc_0145b2:
    jsr loc_014646(pc)
    bne.w loc_0145cc
    jsr loc_0147e0(pc)
    jsr loc_014840(pc)
    jsr loc_014810(pc)
    trap #5
    dbra d7,loc_0145b2

loc_0145cc: 
    jsr loc_01462c(pc)
    rts

;--------------------------
loc_0145d2:
    move.w #$20,-(a7)                   
    jsr loc_006fec
    addq.l #2,a7                       
    lea ($27fa,a5),a6          ;[2]     
    move.w #0,(-$4234,a5)                
    move.w #$10,-(a7)                   
    move.l #loc_093304,-(a7)                
    jsr loc_007554
    lea (6,a7),a7                      
    cmpi.w #3, (-$7f94,a5)
    beq.b loc_01460c
    move.w #$12b,(0,a6)                  
    bra.b loc_014612

loc_01460c:
    move.w #$f9,(0,a6)                   

loc_014612:
    jsr loc_01463a(pc)                      
    move.w #$15, d0                      
    jsr loc_003f7a
    move.w #$169, d0                     
    jsr loc_003fe8
    rts

;--------------------------
loc_01462c:
    move.w #0,(-$4234,a5)                
    jsr loc_0071e0
    rts                                  
;--------------------------

loc_01463a:
    move.w #-1,($2c,a6)                
    clr.w ($2e,a6)                       
    rts

;--------------------------
loc_014646:
    movem.l d7/a6, -(a7)                 
    tst.w ($2e,a6)                       
    bne.b loc_014678
    addq.w #1, ($2c,a6)                 
    move.w ($2c,a6), d0                  
    lsl.w #3,d0
    cmpi.w #3,(-$7f94,a5)              
    beq.b loc_014668
    move.w loc_01469e(pc, d0.w), d0          
    bra.b loc_01466c

loc_014668:
    move.w loc_01469e+2(pc, d0.w),d0          

loc_01466c:
    beq.b loc_014694
    move.w d0,($2e,a6)                  
    subq.w #1,d0
    move.w d0,($30,a6)                  

loc_014678:
    subq.w #1,($2e,a6)                 
    bpl.b loc_014684
    move.w #-1,($2e,a6)                

loc_014684:
    move.w ($2c,a6),d0                  
    lsl.w #3,d0
    movea.l loc_0146a2(pc,d0.w),a0         
    jsr (a0)
    clr.w d0                             
    bra.b loc_014698

loc_014694:
    move.w #-1,d0                      

loc_014698:
    movem.l (a7)+, d7/a6                 
    rts 

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01469e:
    dc.w $0001,$0001

loc_0146a2:
    dc.l loc_0146ca
    dc.w $001e,$0019

    dc.l loc_0146ea
    dc.w $005a,$004b

    dc.l loc_0146e8
    dc.w $001e,$0019

    dc.l loc_014764
    dc.w $ffff,$ffff

    dc.l loc_0146e8
    dc.w $0000,$0000

;-------------
loc_0146ca:
    lea (4,a6),a0
    move.w #-$30,(a0)+                  
    move.w #0,(a0)+                      
    move.w #$30,(a0)+                   
    move.w #$30,(a0)+                   
    move.w #$30,(a0)+                   
    move.w #$30,(a0)                    
    rts
;--------------------------
loc_0146e8:
    rts

;--------------------------
loc_0146ea:
    move.w ($30,a6), d0
    move.w d0, d1      
    sub.w ($2e,a6), d1 
    move.w d0, d7      
    mulu.w #3, d7     
    divu.w #5, d7     
    cmp.w d7, d1       
    bhi.b loc_014718      
    move.w d7, d2      
    move.w d1, d3      
    mulu.w d2, d2      
    mulu.w d3, d3      
    muls.w #$90, d3    
    divs.w d2, d3      
    addi.w #$30, d3    
    move.w d3, ($e,a6) 

loc_014718:
    move.w d0, d4   
    ext.l d4        
    divu.w #5, d4  
    move.w d1, d3   
    sub.w d4, d3    
    cmp.w d7, d3    
    bhi.b loc_01473c   
    move.w d7, d2   
    mulu.w d2, d2   
    mulu.w d3, d3   
    muls.w #$60, d3 
    divs.w d2, d3   
    addi.w #$30, d3 
    move.w d3, ($c,a6)

loc_01473c:
    move.w d0, d4                        
    lsl.w #1, d4                          
    ext.l d4                             
    divu.w #5, d4                       
    move.w d1, d3                        
    sub.w d4, d3                         
    cmp.w d7, d3
    bhi.b loc_014762   
    move.w d7, d2                        
    mulu.w d2, d2                        
    mulu.w d3, d3                        
    muls.w #$30, d3                      
    divs.w d2, d3                        
    addi.w #$30, d3                      
    move.w d3,($a,a6)

loc_014762:
    rts

;--------------------------
loc_014764:
    move.w ($30,a6), d0                  
    move.w d0, d1                        
    sub.w ($2e,a6), d1                   
    mulu.w d0, d0                        
    mulu.w d1, d1                        
    move.w d0, d2                        
    move.w d1, d3                        
    muls.w #$90, d3                      
    divs.w d2, d3                        
    addi.w #-$30, d3                     
    move.w d3,(4,a6)                   
    
    move.w d0, d2                        
    move.w d1, d3                        
    muls.w #$90, d3                      
    divs.w d2, d3                        
    addi.w #0, d3                         
    move.w d3, (6,a6)                   
    
    move.w d0, d2                        
    move.w d1, d3                        
    muls.w #$90, d3                      
    divs.w d2, d3                        
    addi.w #$30, d3                      
    move.w d3,(8,a6)                   
    
    move.w d0, d2                        
    move.w d1, d3                        
    muls.w #$a0, d3                      
    divs.w d2, d3                        
    addi.w #$60, d3                      
    move.w d3,($a,a6)                   
    
    move.w d0, d2                        
    move.w d1, d3                        
    muls.w #$a0, d3                      
    divs.w d2, d3                        
    addi.w #$90, d3                      
    move.w d3,($c,a6)                   
    
    move.w d0, d2                        
    move.w d1, d3                        
    muls.w #$a0, d3                      
    divs.w d2, d3                        
    addi.w #$c0, d3                      
    move.w d3,($e,a6)                   
    rts

;--------------------------
loc_0147e0:
    movem.l d7/a6,-(a7)                 
    movea.l loc_0934fc,a0                
    move.w #$a0, d0                      
    move.w #$70, d1                      
    move.w #-$4b00, d2                   
    moveq #0,d3                          
    moveq #0,d4                          
    moveq #0,d5                          
    move.w #$169,d6                     
    move.w #$14,d7                      
    jsr loc_00685e
    movem.l (a7)+,d7/a6                 
    rts

;--------------------------
loc_014810:
    movem.l d7/a6,-(a7)                 
    movea.l loc_093418, a0                
    move.w #$a0,d0                      
    move.w #$70,d1                      
    move.w #$3600,d2                    
    moveq #0,d3                          
    moveq #0,d4                          
    moveq #0,d5                          
    move.w #1, d6                       
    move.w #$14, d7                      
    jsr loc_006be8
    movem.l (a7)+,d7/a6                 
    rts 

;--------------------------
loc_014840:
    movem.l d7/a6,-(a7)
    move.w #5,d7

loc_014848:
    movem.l d7,-(a7)
    subi.w #5,d7
    neg.w d7
    move.w d7,d0
    mulu.w #$e,d0
    lea (-$7ffe,a5),a4
    lea (a4,d0.w),a4
    jsr loc_01489c(pc)
    move.w d7,d0
    add.w d0,d0
    move.w (4,a6,d0.w),d0
    subi.w #$31,d0
    cmpi.w #$ce,d0
    bhi.b loc_01488e
    jsr loc_0148a6(pc)
    jsr loc_0148dc(pc)
    jsr loc_014922(pc)
    jsr loc_0149e0(pc)
    jsr loc_014aa4(pc)
    jsr loc_014b8c(pc)

loc_01488e:
    movem.l (a7)+, d7                    
    dbra d7,loc_014848                      
    movem.l (a7)+, d7/a6                 
    rts

;--------------------------
loc_01489c:
    movea.l a4,a0
    jsr loc_019c58
    rts

;--------------------------
loc_0148a6:
    movem.l d7/a4/a6,-(a7)              
    move.w d7,d6                        
    add.w d6,d6                         
    move.w #$a0,d0                      
    move.w (4,a6,d6.w),d1           
    move.w #$5200, d2                    
    moveq #0,d4                          
    moveq #0,d5                          
    move.w d7,d6                        
    addq.w #2,d6                       
    add.w d6,d6                         
    add.w d6,d6                         
    lea loc_093418,a0
    movea.l (a0,d6.w),a0
    jsr loc_0041d8
    movem.l (a7)+,d7/a4/a6              
    rts

;--------------------------
loc_0148dc:
    movem.l d7/a4/a6, -(a7)              
    move.w d7, d6                        
    add.w d6, d6                         
    move.w #$a0, d0                      
    move.w (4,a6,d6.w), d1           
    move.w #-$4b00, d2                   
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    move.w ($a,a4), d6                   
    cmpi.w #$a,d6                       
    bmi.w loc_014906
    andi.w #7, d6

loc_014906:
    addq.w #1,d6
    add.w d6,d6  
    add.w d6,d6  
    lea loc_0934fc, a0
    movea.l (a0,d6.w), a0            
    jsr loc_004850
    movem.l (a7)+, d7/a4/a6              
    rts

;--------------------------
loc_014922:
    movem.l d7/a4/a6, -(a7)              
    movem.l d7, -(a7)                    
    lea ($10,a6),a1
    move.b #1,(a1)+
    move.b #8,(a1)+
    move.b #$30,(a1)+
    move.b #4,(a1)+
    movea.l a1,a2                       
    adda.w #$10,a2                      
    lea loc_093418,a3
    clr.w d5
    move.l (0,a4),d0
    jsr loc_0021ae
    move.l d0,d6                        
    move.w #7,d7                       

loc_01495c:
    rol.l #4, d6                          
    move.l d6, d0                        
    andi.w #$f, d0                       
    cmpi.w #9, d0                       
    bls.b loc_01496c  
    clr.w d0                             

loc_01496c:
    tst.w d0                             
    bne.b loc_01497a
    tst.w d7                             
    beq.b loc_014978
    tst.w d5                             
    beq.b loc_01497e 

loc_014978:
    bra.b loc_01497c               ;[7]     

loc_01497a
    moveq #1,d5

loc_01497c:                        
    bra.b loc_014988  

loc_01497e:
    move.w #$8000,(a1)+                
    move.b #$10,(a2)+                   
    bra.b loc_0149b0   

loc_014988:
    addq.w #8,d0                       
    add.w d0,d0
    add.w d0,d0
    movea.l (a3,d0.w),a0
    move.w (4,a0),(a1)+    
    movem.l d0/d1,-(a7)          
    moveq #0,d0
    moveq #0,d1              
    move.b (a0),d0          
    move.b (1,a0), d1       
    mulu.w d0,d1            
    add.w d1,d1             
    move.b (4,a0,d1.w),(a2)+        
    movem.l (a7)+, d0/d1                 

loc_0149b0:
    dbra d7,loc_01495c                      
    movem.l (a7)+, d7                    
    move.w d7, d6                        
    add.w d6, d6                         
    move.w #$a0,d0                      
    move.w (4,a6,d6.w), d1           
    move.w #$5000,d2                    
    moveq #0,d3                          
    moveq #0,d4                          
    moveq #0,d5                          
    moveq #-8,d6                       
    lea ($10,a6),a0
    jsr loc_005638  
    movem.l (a7)+,d7/a4/a6              
    rts    

;--------------------------
loc_0149e0:
    movem.l d7/a4/a6,-(a7)              
    movem.l d7,-(a7)                    
    lea ($10,a6), a1
    move.b #1,(a1)+                    
    move.b #3,(a1)+                    
    move.b #-$c,(a1)+                   
    move.b #$4,(a1)+                    
    movea.l a1, a2                       
    adda.w #$6, a2                       
    lea loc_093418, a3
    move.l (6,a4), d6                   
    move.w #2,d7                       

loc_014a10:
    rol.l #8,d6                          
    move.l d6, d0                        
    jsr loc_019c26
    move.b loc_014a84(pc,d0.w), d0          
    bmi.b loc_014a22
    bra.b loc_014a2c

loc_014a22:
    move.w #$8000,(a1)+                
    move.b #$10,(a2)+                   
    bra.b loc_014a56

loc_014a2c:
    addi.w #$12, d0                      
    add.w d0, d0                         
    add.w d0, d0                         
    movea.l (a3,d0.w),a0            
    move.w (4,a0),(a1)+                
    movem.l d0-d1, -(a7)                 
    moveq #0, d0                          
    moveq #0, d1                          
    move.b (a0), d0                      
    move.b (1,a0), d1                   
    mulu.w d0, d1                        
    add.w d1, d1                         
    move.b (4,a0,d1.w), (a2)+        
    movem.l (a7)+, d0-d1 

loc_014a56:
    dbra d7,loc_014a10                      
    movem.l (a7)+, d7                    
    move.w d7, d6                        
    add.w d6, d6                         
    move.w #$a0, d0                      
    move.w (4,a6,d6.w), d1           
    move.w #$5100, d2                    
    moveq #0, d4                          
    moveq #0, d5                          
    moveq #0, d6                          
    lea ($10,a6),a0
    jsr loc_0041d8
    movem.l (a7)+, d7/a4/a6              
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_014a84:
    dc.b $ff,$00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e
    dc.b $0f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$ff,$ff,$ff,$00

;--------------------------
loc_014aa4:
    movem.l d7/a4/a6, -(a7)
    movem.l d7,-(a7)
    lea ($10,a6), a1
    move.b #1,(a1)+
    move.b #2,(a1)+
    move.b #-$50,(a1)+
    move.b #4,(a1)+
    movea.l a1,a2
    adda.w #4,a2
    lea loc_093418,a3
    clr.w d5
    move.w ($c,a4),d0
    ext.l d0
    jsr loc_0021ae
    move.w d0,d6
    lsl.w #8,d6
    move.w #1,d7

loc_014ae2:
    rol.w #4,d6
    move.l d6,d0
    andi.w #$f,d0
    cmpi.w #9,d0
    bls.b loc_014af2
    clr.w d0

loc_014af2:
    tst.w d0
    bne.b loc_014b00
    tst.w d7
    beq.b loc_014afe
    tst.w d5
    beq.b loc_014b04

loc_014afe:
    bra.b loc_014b02

loc_014b00:
    moveq #1,d5

loc_014b02:
    bra.b loc_014b0e

loc_014b04:
    move.w #$8000,(a1)+
    move.b #$10,(a2)+
    bra.b loc_014b38

loc_014b0e: 
    addi.w #$2d,d0
    add.w d0,d0
    add.w d0,d0
    movea.l (a3,d0.w),a0
    move.w (4,a0),(a1)+
    movem.l d0/d1,-(a7)
    moveq #0,d0
    moveq #0,d1
    move.b (a0),d0 
    move.b (1,a0),d1
    mulu.w d0, d1
    add.w d1, d1
    move.b (4,a0,d1.w),(a2)+
    movem.l (a7)+, d0-d1

loc_014b38:
    dbra d7,loc_014ae2
    movem.l (a7)+, d7
    move.w d7,d6
    add.w d6,d6
    move.w #$a0,d0
    move.w (4,a6,d6.w),d1
    move.w #$5100,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    moveq #-8,d6
    lea ($10,a6),a0
    movem.l d0-d5,-(a7)
    jsr loc_005638
    movem.l (a7)+,d0-d5
    cmpi.w #1,($c,a4)
    bgt.b loc_014b7a
    movea.l loc_0934f4,a0
    bra.b loc_014b80

loc_014b7a:
    movea.l loc_0934f8,a0                

loc_014b80:
    jsr loc_0041d8
    movem.l (a7)+, d7/a4/a6              
    rts 

;--------------------------
loc_014b8c:
    movem.l d7/a4/a6,-(a7)
    move.w d7,d6
    add.w d6,d6
    move.w #$a0, d0
    move.w (4,a6,d6.w),d1
    move.w #$5300,d2
    moveq #0,d4
    moveq #0,d5
    movea.l loc_09341c,a0
    jsr loc_0041d8
    movem.l (a7)+, d7/a4/a6
    rts

;end