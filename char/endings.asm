loc_014bb6:
    jsr loc_014bdc(pc)
    move.w #$31,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    jsr loc_014f8c(pc)
    move.w #$20,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    jsr loc_01614e(pc)
    rts

;--------------------------
loc_014bdc:
    move.w #$22,-(a7)
    move.l #loc_0e157c,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

    move.w #$21,-(a7)
    move.l #loc_0e157c,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

    move.w #$20,-(a7)
    move.l #loc_0e157c,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

    move.w #$23,-(a7)
    move.l #loc_09443c,-(a7)
    jsr loc_007554
    lea (6,a7),a7

    clr.w (-$f8c,a5)
    move.w #$a0,(-$f52,a5)
    move.w #-$180,(-$f4e,a5)
    move.w #$a0,(-$f4a,a5)
    move.w #-$180,(-$f46,a5)
    move.w #$1cc8,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_014c54:
    addi.l #$100000,(-$f46,a5)
    addi.l #$100000,(-$f4e,a5)
    jsr loc_014efc(pc)
    cmpi.w #-$10,(-$f4e,a5)
    bge.w loc_014c76
    trap #5
    bra.b loc_014c54

loc_014c76:
    move.w #1,-(a7)
    move.w #$21,-(a7)
    move.l #loc_0e151c,-(a7)
    jsr loc_0076e0
    lea (8,a7),a7
    move.w #$3f,d0

loc_014c92:
    move.w d0,(-$f8c,a5)
    addi.l #$8000,(-$f4e,a5)
    addi.l #$8000,(-$f46,a5)
    jsr loc_014efc(pc)
    jsr loc_014f32(pc)
    trap #5
    move.w (-$f8c,a5),d0
    dbra d0,loc_014c92
    jsr loc_0071e0
    move.w #$1c49,-(a7)
    jsr loc_006fec
    addq.l #2,a7

    move.w #1,-(a7)
    move.w #$20,-(a7)
    move.l #loc_0e155c,-(a7)
    jsr loc_0076e0
    lea (8,a7),a7
    move.w #$3f,d0

loc_014ce6:
    move.w d0,(-$f8c,a5)
    subi.l #$100000,(-$f42,a5)
    addi.l #$8000,(-$f4e,a5)
    addi.l #$4000,(-$f46,a5)
    jsr loc_014efc(pc)
    jsr loc_014f32(pc)
    jsr loc_014f68(pc)
    trap #5
    move.w (-$f8c,a5), d0
    dbra d0,loc_014ce6
    jsr loc_0071e0
    jsr loc_014d60(pc)
    move.w #$78,d0

loc_014d26:
    move.w d0,(-$f8c,a5)
    subi.l #$100000,(-$f42,a5)
    addi.l #$8000,(-$f4e,a5)
    addi.l #$4000,(-$f46,a5)
    jsr loc_014efc(pc)
    jsr loc_014f32(pc)
    jsr loc_014f68(pc)
    trap #5
    move.w (-$f8c,a5), d0
    dbra d0,loc_014d26                      
    jsr loc_0071e0  
    rts

;--------------------------
loc_014d60:
    move.w #2,-(a7)
    move.w #$20,-(a7)
    move.l #loc_0e157c,-(a7)
    jsr loc_0076e0
    lea (8,a7),a7

    move.w #2,-(a7)                    
    move.w #$21,-(a7)                   
    move.l #loc_0e157c,-(a7)                
    jsr loc_0076e0
    lea (8,a7),a7                      

    move.w #2,-(a7)                    
    move.w #$23, -(a7)                   
    move.l #loc_0e157c, -(a7)                
    jsr loc_0076e0 
    lea (8,a7),a7                      

    move.w #2, -(a7)                    
    move.w #$24, -(a7)                   
    move.l #loc_0e157c, -(a7)                
    jsr loc_0076e0 
    lea (8,a7),a7                      

    move.w #2, -(a7)                    
    move.w #$25, -(a7)                   
    move.l #loc_0e157c, -(a7)                
    jsr loc_0076e0 
    lea (8,a7),a7                      

    move.w #2, -(a7)                    
    move.w #$26, -(a7)                   
    move.l #loc_0e157c, -(a7)                
    jsr loc_0076e0 
    lea (8,a7),a7                      

    move.w #2, -(a7)                    
    move.w #$27, -(a7)                   
    move.l #loc_0e157c, -(a7)                
    jsr loc_0076e0 
    lea (8,a7),a7                      

    move.w #2, -(a7)                    
    move.w #$28, -(a7)                   
    move.l #loc_0e157c, -(a7)                
    jsr loc_0076e0 
    lea (8,a7),a7                      

    move.w #2, -(a7)                    
    move.w #$29, -(a7)                   
    move.l #loc_0e157c, -(a7)                
    jsr loc_0076e0 
    lea (8,a7),a7                      

    move.w #2, -(a7)                    
    move.w #$2a, -(a7)                   
    move.l #loc_0e157c, -(a7)                
    jsr loc_0076e0 
    lea (8,a7),a7

    move.w #2, -(a7)                    
    move.w #$2b, -(a7)                   
    move.l #loc_0e157c, -(a7)                
    jsr loc_0076e0 
    lea (8,a7),a7                      

    move.w #2, -(a7)                    
    move.w #$2c, -(a7)                   
    move.l #loc_0e157c, -(a7)                
    jsr loc_0076e0 
    lea (8,a7),a7                      

    move.w #2, -(a7)                    
    move.w #$2d, -(a7)                   
    move.l #loc_0e157c, -(a7)                
    jsr loc_0076e0 
    lea (8,a7),a7                      

    move.w #2, -(a7)                    
    move.w #$2e, -(a7)                   
    move.l #loc_0e157c, -(a7)                
    jsr loc_0076e0 
    lea (8,a7),a7                      

    move.w #2, -(a7)                    
    move.w #$2f, -(a7)                   
    move.l #loc_0e157c, -(a7)                
    jsr loc_0076e0 
    lea (8,a7),a7                      

    move.w #2, -(a7)                    
    move.w #$30, -(a7)                   
    move.l #loc_0e157c, -(a7)                
    jsr loc_0076e0 
    lea (8,a7),a7                      
    rts

;--------------------------
loc_014ee2:
    addi.l #$4000,(-$f4e,a5)
    addi.l #$8000,(-$f46,a5)
    subi.l #$8000,(-$f42,a5)
    rts   

;--------------------------
loc_014efc:
    move.w (-$f52,a5),d0
    move.w (-$f4e,a5),d1
    move.w #-$d00,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_094420,a4
    move.w #1,d6

loc_014f18:
    movea.l (a4)+,a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0-d7/a0-a2/a4
    addi.w #$100, d1
    dbra d6,loc_014f18
    rts 

;--------------------------
loc_014f32:
    move.w (-$f4a,a5),d0
    move.w (-$f46,a5),d1
    move.w #$2100,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_094428,a4
    move.w #2,d6

loc_014f4e:
    movea.l (a4)+,a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_00431c
    movem.l (a7)+,d0-d7/a0-a2/a4
    addi.w #$100, d1
    dbra d6,loc_014f4e
    rts

;--------------------------
loc_014f68:
    lea loc_094428,a0
    adda.l #$c,a0
    movea.l (a0),a0
    movea.l a0,a1
    movea.l a0,a2
    movea.l a0,a3
    move.w (-$f42,a5),d1
    move.w #$2000,d2
    jsr loc_005844
    rts

;--------------------------
loc_014f8c:
    jsr loc_014ff0(pc)
    jsr loc_015032(pc)
    move.w (-$f68,a5),d0
    andi.w #$f,d0
    lea loc_014fae,a0
    add.w d0,d0
    add.w d0,d0
    movea.l (a0,d0.w),a0
    jsr (a0)
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Ending jumps
loc_014fae:
    dc.l loc_01516e,loc_015352,loc_015526,loc_015700
    dc.l loc_0158da,loc_015ab6,loc_015c92,loc_015e26
    dc.l loc_014fee,loc_015fba
    
    dc.l loc_01516e,loc_01516e,loc_01516e,loc_01516e
    dc.l loc_01516e,loc_01516e

;--------------------------
loc_014fee:
    rts

;--------------------------
loc_014ff0:
    btst #0,(-$f38,a5)                   
    beq.w loc_015006
    move.w (p1ida5,a5),d0
    move.w (-$e8e,a5),d1
    bra.w loc_015018

loc_015006:
    btst #1,(-$f38,a5)
    beq.w loc_015030
    move.w (p2ida5,a5),d0
    move.w (-$92e,a5),d1

loc_015018:
    cmpi.w #9,d0
    bls.w loc_015024
    andi.w #7, d0

loc_015024:
    andi.w #3, d1                       
    move.w d0,(-$f68,a5)                
    move.w d1,(-$f66,a5)                

loc_015030:
    rts

;--------------------------
loc_015032:
    move.w #$31,-(a7)
    move.l #loc_0dfd92,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

    move.w #$32,-(a7)
    move.l #loc_0e3504,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

    lea loc_017b24,a0
    move.w (-$f68,a5),d0
    move.w (-$f66,a5),d1
    cmpi.w #9,d0
    bls.w loc_015074
    andi.w #7,d0

loc_015074:
    andi.w #3,d1
    add.w d0,d0
    add.w d0,d0
    add.w d1,d1
    add.w d1,d1
    movea.l (a0,d0.w),a0
    move.w #$50,-(a7)
    move.l (a0,d1.w),-(a7)
    jsr loc_007554
    lea (6,a7),a7

    lea loc_017be6,a0
    move.w (-$f68,a5),d0
    move.w (-$f66,a5),d1
    cmpi.w #9,d0
    bls.w loc_0150b0
    andi.w #7,d0

loc_0150b0:
    andi.w #3,d1
    add.w d0,d0
    add.w d0,d0
    add.w d1,d1
    add.w d1,d1
    movea.l (a0,d0.w),a0
    move.w #$33,-(a7)
    move.l (a0,d1.w),-(a7)
    jsr loc_007554
    lea (6,a7),a7
    rts

;--------------------------
loc_0150d4:
    move.w #$a0,d0
    move.w #$70,d1
    addi.w #$78,d1
    move.w #$3200,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_094750,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_00431c
    movem.l (a7)+,d0-d7/a0-a2/a4
    move.w #$a0,d0
    addi.w #-$80,d0
    move.w #$70,d1
    addi.w #$18,d1
    move.w #$3200,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5

    lea loc_094750,a4
    adda.l #4,a4
    movea.l (a4),a0
    move.w #1,d7

loc_01512c:
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_005638
    movem.l (a7)+,d0-d7/a0-a2/a4
    addi.w #$100,d0
    dbra d7,loc_01512c
    rts

;--------------------------
loc_015144:
    move.w #$a0,d0
    move.w #$70,d1
    move.w #$3100,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_09441c,a4
    movea.l (a4),a0
    movem.l d0-d7/a0-a2/a4,-(a7)
    jsr loc_00431c
    movem.l (a7)+, d0-d7/a0-a2/a4        
    rts

;--------------------------
;Endings
	include "char/00Sho/ending.asm"
	include "char/01Dao/ending.asm"
	include "char/02Con/ending.asm"
	include "char/03Tia/ending.asm"
	include "char/04Ril/ending.asm"
	include "char/05Als/ending.asm"
	include "char/06Pie/ending.asm"
	include "char/07Mah/ending.asm"
	include "char/09Sai/ending.asm"

;--------------------------
;Credits
;--------------------------
loc_01614e:
    jsr loc_0162be(pc)
    sf $1070c3.l
    sf $1070c4.l
    move.w #$b4,$107086.l
    move.l #$e08000,$10707a.l
    move.w #$40,-(a7)
    move.l #loc_0d8a12,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7
    btst #0,(-$f38,a5)
    beq.w loc_016196
    move.w (p1ida5,a5),d0
    bra.w loc_0161a4

loc_016196:
    btst #1,(-$f38,a5)
    beq.w loc_01628a
    move.w (p2ida5,a5),d0

loc_0161a4:
    andi.w #7,d0
    lea loc_01628c,a0
    add.w d0,d0
    move.w (a0,d0.w),-(a7)
    jsr loc_006fec
    addq.l #2, a7

loc_0161bc:
    lea loc_0162d2(pc),a1
    cmpi.w #-$9ce,$10707a.l
    blt.w loc_0161e4
    tst.b $1070c3.l
    bne.w loc_0161e4
    subi.l #$8000,$10707a.l
    bra.w loc_0161f4

loc_0161e4:
    st $1070c3.l
    subq.w #1,$107086.l
    blt.w loc_01627e

loc_0161f4:
    addi.l #$8000,(-$f7e,a5)

loc_0161fc:
    tst.b (-$f3c,a5)
    bgt.w loc_016272

loc_016204:
    move.l (a1)+,d0
    beq.b loc_016236
    movea.l d0,a0
    move.w (a1)+,d0
    move.w (a1)+,d1
    add.w $10707a.l,d1
    cmpi.w #$f0,d1
    bge.w loc_016232
    cmpi.w #-$10,d1
    ble.w loc_016232
    move.w (a1)+,d2
    move.w (a1)+,d3
    move.w (a1)+,d4
    jsr loc_005426
    bra.b loc_016234

loc_016232:
    addq.w #6,a1

loc_016234:
    bra.b loc_016204

loc_016236:
    jsr loc_0162a0(pc)
    trap #5
    btst #0,(-$f38,a5)
    bne.w loc_016252
    btst #1,(-$f38,a5)
    bne.w loc_016258
    bra.b loc_01627a

loc_016252:
    move.b (-$53d1,a5),d0
    bra.b loc_01625c

loc_016258:
    move.b (-$53d0,a5),d0

loc_01625c:
    andi.b #$f0,d0
    beq.w loc_01627a
    tst.b (-$f3b,a5)
    bne.w loc_01627a
    move.b #$20,(-$f3c,a5)

loc_016272:
    subq.b #1,(-$f3c,a5)
    bra.w loc_0161bc

loc_01627a:
    bra.w loc_0161bc

loc_01627e:
    move.w #$20,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01628a:
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01628c:
    dc.w $0028,$0029,$002a,$002b,$002c,$002d,$002e,$002f
    dc.w $0028,$0028

;--------------------------
loc_0162a0:
    lea loc_094278,a0
    movea.l (a0),a0
    movea.l a0,a1
    movea.l a0,a2
    movea.l a0,a3
    move.w (-$f7e,a5),d1
    move.w #$4000,d2
    jsr loc_005844
    rts

;--------------------------
loc_0162be:
    move.w #0,(-$4234,a5)
    move.w #$20,d0
    jsr loc_00d748
    trap #5
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0162d2:;Credit text data
    dc.l loc_0166fe
    dc.w $00a0,$0010,$0000,$ffff,$0001

    dc.l loc_016716
    dc.w $00a0,$0050,$0001,$ffff,$0001

    dc.l loc_01672a
    dc.w $00a0,$0068,$0002,$ffff,$0001

    dc.l loc_01673a
    dc.w $00a0,$00b8,$0001,$ffff,$0001

    dc.l loc_016744
    dc.w $00a0,$00d0,$0002,$ffff,$0001

    dc.l loc_016750
    dc.w $00a0,$0120,$0001,$ffff,$0001

    dc.l loc_01675c
    dc.w $00a0,$0138,$0002,$ffff,$0001

    dc.l loc_016768
    dc.w $00a0,$0150,$0002,$ffff,$0001

    dc.l loc_016774
    dc.w $00a0,$0168,$0002,$ffff,$0001

    dc.l loc_016780
    dc.w $00a0,$0180,$0001,$ffff,$0001

    dc.l loc_01679c
    dc.w $00a0,$0198,$0002,$ffff,$0001

    dc.l loc_0167ae
    dc.w $00a0,$01b0,$0002,$ffff,$0001

    dc.l loc_0167be
    dc.w $00a0,$01c8,$0002,$ffff,$0001

    dc.l loc_0167ce
    dc.w $00a0,$01e0,$0002,$ffff,$0001

    dc.l loc_0167dc
    dc.w $00a0,$01f8,$0002,$ffff,$0001

    dc.l loc_0167ec
    dc.w $00a0,$0248,$0001,$ffff,$0001

    dc.l loc_0167fe
    dc.w $00a0,$0260,$0002,$ffff,$0001

    dc.l loc_01680a
    dc.w $00a0,$0278,$0002,$ffff,$0001

    dc.l loc_016816
    dc.w $00a0,$0290,$0002,$ffff,$0001

    dc.l loc_016820
    dc.w $00a0,$02a8,$0002,$ffff,$0001

    dc.l loc_016826
    dc.w $00a0,$02c0,$0002,$ffff,$0001

    dc.l loc_016832
    dc.w $00a0,$02d8,$0002,$ffff,$0001

    dc.l loc_01683c
    dc.w $00a0,$02f0,$0002,$ffff,$0001

    dc.l loc_016848
    dc.w $00a0,$0308,$0002,$ffff,$0001

    dc.l loc_016852
    dc.w $00a0,$0358,$0001,$ffff,$0001

    dc.l loc_016860
    dc.w $00a0,$0370,$0002,$ffff,$0001

    dc.l loc_01686e
    dc.w $00a0,$03c0,$0001,$ffff,$0001

    dc.l loc_01687a
    dc.w $00a0,$03d8,$0002,$ffff,$0001

    dc.l loc_016888
    dc.w $00a0,$03f0,$0002,$ffff,$0001

    dc.l loc_016898
    dc.w $00a0,$0408,$0001,$ffff,$0001

    dc.l loc_0168b2
    dc.w $00a0,$0420,$0002,$ffff,$0001

    dc.l loc_0168c2
    dc.w $00a0,$0438,$0002,$ffff,$0001

    dc.l loc_0168d4
    dc.w $00a0,$0450,$0002,$ffff,$0001

    dc.l loc_0168e2
    dc.w $00a0,$0468,$0002,$ffff,$0001

    dc.l loc_0168f2
    dc.w $00a0,$0480,$0002,$ffff,$0001

    dc.l loc_0167dc
    dc.w $00a0,$0498,$0002,$ffff,$0001

    dc.l loc_016904
    dc.w $00a0,$04e8,$0001,$ffff,$0001

    dc.l loc_016914
    dc.w $00a0,$0500,$0002,$ffff,$0001

    dc.l loc_016924
    dc.w $00a0,$0550,$0001,$ffff,$0001

    dc.l loc_016934
    dc.w $00a0,$0568,$0002,$ffff,$0001

    dc.l loc_016944
    dc.w $00a0,$0580,$0002,$ffff,$0001

    dc.l loc_016956
    dc.w $00a0,$0590,$0002,$ffff,$0001

    dc.l loc_01696a
    dc.w $00a0,$05e0,$0001,$ffff,$0001

    dc.l loc_016976
    dc.w $00a0,$05f8,$0002,$ffff,$0001

    dc.l loc_016980
    dc.w $00a0,$0610,$0002,$ffff,$0001

    dc.l loc_016990
    dc.w $00a0,$0628,$0002,$ffff,$0001

    dc.l loc_0169a0
    dc.w $00a0,$0640,$0002,$ffff,$0001

    dc.l loc_0169b2
    dc.w $00a0,$0658,$0002,$ffff,$0001

    dc.l loc_0169c4
    dc.w $00a0,$0678,$0002,$ffff,$0001

    dc.l loc_0169d4
    dc.w $00a0,$0688,$0002,$ffff,$0001

    dc.l loc_0169e4
    dc.w $00a0,$06d8,$0001,$ffff,$0001

    dc.l loc_0169f4
    dc.w $00a0,$06f8,$0002,$ffff,$0001

    dc.l loc_0169fa
    dc.w $00a0,$0710,$0002,$ffff,$0001

    dc.l loc_016a08
    dc.w $00a0,$0728,$0002,$ffff,$0001

    dc.l loc_016a10
    dc.w $00a0,$0740,$0002,$ffff,$0001

    dc.l loc_016a1a
    dc.w $00a0,$0758,$0002,$ffff,$0001

    dc.l loc_016a24
    dc.w $00a0,$0770,$0002,$ffff,$0001

    dc.l loc_016a2a
    dc.w $00a0,$0788,$0002,$ffff,$0001

    dc.l loc_016a34
    dc.w $00a0,$07a0,$0002,$ffff,$0001

    dc.l loc_016a3c
    dc.w $00a0,$07b8,$0002,$ffff,$0001

    dc.l loc_016a46
    dc.w $00a0,$07d0,$0002,$ffff,$0001

    dc.l loc_016a50
    dc.w $00a0,$07e8,$0002,$ffff,$0001

    dc.l loc_016a5c
    dc.w $00a0,$0800,$0002,$ffff,$0001

    dc.l loc_016a64
    dc.w $00a0,$0818,$0002,$ffff,$0001

    dc.l loc_016a6c
    dc.w $00a0,$0830,$0002,$ffff,$0001

    dc.l loc_016a74
    dc.w $00a0,$0848,$0002,$ffff,$0001

    dc.l loc_016a7c
    dc.w $00a0,$0860,$0002,$ffff,$0001

    dc.l loc_016a88
    dc.w $00a0,$0878,$0002,$ffff,$0001

    dc.l loc_016a92
    dc.w $00a0,$0890,$0002,$ffff,$0001

    dc.l loc_016a9a
    dc.w $00a0,$08a8,$0002,$ffff,$0001

    dc.l loc_016aa2
    dc.w $00a0,$08c0,$0002,$ffff,$0001

    dc.l loc_016aaa
    dc.w $00a0,$08d8,$0002,$ffff,$0001

    dc.l loc_016ab4
    dc.w $00a0,$08f0,$0002,$ffff,$0001

    dc.l loc_016aba
    dc.w $00a0,$0930,$0002,$ffff,$0001

    dc.l loc_016abe
    dc.w $00a0,$0940,$0002,$ffff,$0001

    dc.l loc_016ad0
    dc.w $00a0,$0a40,$0002,$ffff,$0001

    dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Start of Credit Text
;\/\/\/\/\/\/\/\/\/\/\/\/\/
loc_0166fe:
    dc.b "BREAKERS REVENGE STAFF",$00
    even

loc_016716:
    dc.b "EXECUTIVE PRODUCER",$00
    even

loc_01672a:
    dc.b "Tetsuo Akiyama",$00
    even

loc_01673a:
    dc.b "PRODUCER",$00
    even

loc_016744:
    dc.b "DON GABACHO",$00
    even

loc_016750:
    dc.b "PROGRAMMER",$00
    even

loc_01675c:
    dc.b "T. Miyazawa",$00
    even

loc_016768:
    dc.b "Hagi. Saito",$00
    even

loc_016774:
    dc.b "Sin Suzuki",$00
    even

loc_016780:
    dc.b '" REVENGE " PROGRAM STAFFS',$00
    even

loc_01679c:
    dc.b "Katsunari Ishida",$00
    even

loc_0167ae:
    dc.b "Satoshi Shiina",$00
    even

loc_0167be:
    dc.b "Kenichi Tanuma",$00
    even

loc_0167ce:
    dc.b "Katsuya Ikuta",$00
    even

loc_0167dc:
    dc.b "( DIGTAL WARE )",$00
    even

loc_0167ec:
    dc.b "CHARACTER DESIGN",$00
    even

loc_0167fe:
    dc.b "Y. Sawamura",$00
    even

loc_01680a:
    dc.b "J. Nakazawa",$00
    even

loc_016816:
    dc.b "S. Soeda",$00
    even

loc_016820:
    dc.b "H. M",$00
    even

loc_016826:
    dc.b "A. Miyazaki",$00
    even

loc_016832:
    dc.b "E. Tamura",$00
    even

loc_01683c:
    dc.b "A. Shibata",$00
    even

loc_016848:
    dc.b "Yumi Togo",$00
    even

loc_016852:
    dc.b "OBJECT DESIGN",$00
    even

loc_016860:
    dc.b "Tomohiro Ohno",$00
    even

loc_01686e:
    dc.b "ART DESIGN",$00
    even

loc_01687a:
    dc.b "WATER VALLEY",$00
    even

loc_016888:
    dc.b "E-AYASU BEAM!!",$00
    even

loc_016898:
    dc.b '" REVENGE " DESIGN STAFFS',$00
    even

loc_0168b2:
    dc.b "Hiroshi Mizuno",$00
    even

loc_0168c2:
    dc.b "Masaaki Ichikawa",$00
    even

loc_0168d4:
    dc.b "Takaaki Kato",$00
    even

loc_0168e2:
    dc.b "Tomohiro Saito",$00,$00

loc_0168f2:
    dc.b "Tatsuya Miyawaki",$00,$00

loc_016904:
    dc.b "MUSIC COMPOSER",$00,$00

loc_016914:
    dc.b "Ken'ichi Kamio",$00,$00

loc_016924:
    dc.b "SOUND EFFECTER",$00,$00

loc_016934:
    dc.b "Yoshikazu Egawa",$00

loc_016944:
    dc.b "Hiroshi Nishikawa",$00

loc_016956:
    dc.b "(Light Link Music)",$00,$00

loc_01696a:
    dc.b "VOICE ACTOR",$00

loc_016976:
    dc.b "GUY YOUKI",$00

loc_016980:
    dc.b "Kimito Daimon ",$00,$00

loc_016990:
    dc.b "Naoki Kurihara",$00,$00

loc_0169a0:
    dc.b "Yoshikazu Hirota",$00,$00

loc_0169b2:
    dc.b "Yasuhiro Sawamura",$00

loc_0169c4:
    dc.b "Minako Arakawa",$00,$00

loc_0169d4:
    dc.b "(Office Ohsawa)",$00

loc_0169e4:
    dc.b "SPECIAL THANKS",$00,$00

loc_0169f4:
    dc.b "QUWA",$00,$00

loc_0169fa:
    dc.b "I. Teramachi",$00,$00

loc_016a08:
    dc.b "YASU. 2",$00

loc_016a10:
    dc.b "MJ. HAMA",$00,$00

loc_016a1a:
    dc.b "T. Matsu",$00,$00

loc_016a24:
    dc.b "DEBU",$00,$00

loc_016a2a:
    dc.b "GENGOROU",$00,$00

loc_016a34:
    dc.b "YAYOPIN",$00

loc_016a3c:
    dc.b "KATSUWONG",$00

loc_016a46:
    dc.b "TANIGUCCI",$00

loc_016a50:
    dc.b "T. Nakahata",$00

loc_016a5c:
    dc.b "MANABY",$00,$00

loc_016a64:
    dc.b "K. IBE",$00,$00

loc_016a6c:
    dc.b "Marine",$00,$00

loc_016a74:
    dc.b "MINORU",$00,$00

loc_016a7c:
    dc.b "H. Kawamoto",$00

loc_016a88:
    dc.b "SADAIJIN",$00,$00

loc_016a92:
    dc.b "UDAIJIN",$00

loc_016a9a:
    dc.b "RIKOPON",$00

loc_016aa2:
    dc.b "P-Chan",$00,$00

loc_016aaa:
    dc.b "PIYOKICHI",$00

loc_016ab4:
    dc.b "M. O",$00,$00

loc_016aba:
    dc.b "AND",$00

loc_016abe:
    dc.b "VISCO ALL STAFFS",$00,$00

loc_016ad0:
    dc.b "Presented by VISCO corp.",$00,$00

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Ending Text
    include "char/00Sho/endingtext.asm"
    include "char/01Dao/endingtext.asm"
    include "char/02Con/endingtext.asm"
    include "char/03Tia/endingtext.asm"
    include "char/04Ril/endingtext.asm"
    include "char/05Als/endingtext.asm"
    include "char/06Pie/endingtext.asm"
    include "char/07Mah/endingtext.asm"
    include "char/09Sai/endingtext.asm"

;-----------------------------
;Palette pointers for endings?
loc_017b24:
    dc.l loc_017b4c,loc_017b5c,loc_017b6c,loc_017b7c
    dc.l loc_017b8c,loc_017b9c,loc_017bac,loc_017bbc
    dc.l loc_017b4c,loc_017bcc
    
loc_017b4c:;00sho
    dc.l loc_093528, loc_093528, loc_093528, loc_093528

loc_017b5c:;01dao
    dc.l loc_09353c, loc_093568, loc_093594, loc_0935c0

loc_017b6c:;02c
    dc.l loc_0935ec, loc_093604, loc_09361c, loc_093634

loc_017b7c:;03t
    dc.l loc_09364c, loc_093660, loc_093674, loc_093688

loc_017b8c:;04r
    dc.l loc_09369c, loc_0936d8, loc_093714, loc_093750

loc_017b9c:;alsion bust
    dc.l loc_09378c, loc_0937c0, loc_0937f4, loc_093828

loc_017bac:
    dc.l loc_09385c, loc_09385c, loc_09385c, loc_09385c
 
loc_017bbc:
    dc.l loc_093890, loc_093890, loc_093890, loc_093890

loc_017bcc:
    dc.l loc_0938a0, loc_0938a0, loc_0938a0, loc_0938a0

loc_017bdc:
    dc.b $f0,$f4,$0a,$2c,$0f,$1d,$fe,$29,$f0,$50

loc_017be6:
    dc.l loc_017c0e, loc_017c0e, loc_017c1e, loc_017c2e
    dc.l loc_017c3e, loc_017c4e, loc_017c0e, loc_017c0e
    dc.l loc_017c0e, loc_017c0e 

loc_017c0e:
    dc.l  loc_0938a8, loc_0938c0, loc_0938d8, loc_0938f0

loc_017c1e:
    dc.l  loc_093908, loc_093950, loc_093998, loc_0939e0
    
loc_017c2e:
    dc.l  loc_093a28, loc_093a54, loc_093a80, loc_093aac
    
loc_017c3e:;alsion figure
    dc.l  loc_093ad8, loc_093b00, loc_093b28, loc_093b50
    
loc_017c4e:
    dc.l  loc_093b78, loc_093b94, loc_093bb0, loc_093bcc
    
loc_017c5e:
    dc.b $00,$5d,$4c,$61,$71,$6b
    dc.l $00000000
