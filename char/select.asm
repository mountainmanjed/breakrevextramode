loc_011c7e:
    jsr loc_011cf6(pc)
    clr.w (-$f98,a5)
    tst.w (0,a6)
    beq.b loc_011c9e
    cmpi.b #3,(-$f38,a5)
    bne.b loc_011c9a
    jsr loc_011e34(pc)
    bra.b loc_011c9e

loc_011c9a:
    jsr loc_012036(pc)

loc_011c9e:
    cmpi.b #3,(-$f38,a5)
    bne.b loc_011cc0
    jsr loc_0126aa(pc)
    tst.b mem10fd82
    bne loc_011cbe
    move.w #1,(-$f98,a5)
    jsr loc_0122da(pc)

loc_011cbe:
    bra.b loc_011cf0

loc_011cc0:
    jsr loc_012744(pc)
    cmpi.w #$a,(-$f30,a5)
    bne.b loc_011cec
    move.w (p1ida5,a5),d0
    btst #1,(-$f38,a5)
    beq loc_011cde
    move.w (p2ida5,a5),d0

loc_011cde:
    cmpi.w #8,d0
    beq loc_011cea
    jsr loc_01351a(pc)

loc_011cea:
    bra.b loc_011cf0

loc_011cec:
    jsr loc_012c72(pc)

loc_011cf0:
    jsr loc_011e20(pc)
    trap #$3

loc_011cf6:
    move.w #$23,-(a7);start music
    jsr loc_006fec
    addq.l #2,a7
    lea StateControl(a5),a6
    move.w #0,(-$4234,a5)
    move.w #16,-(a7)
    move.l #loc_092840,-(a7);Character Font Palette
    jsr loc_007554
    lea (6,a7),a7
    jsr loc_012eac(pc)
    jsr loc_012e2c(pc)
    move.b #0,(-$f90,a5)
    clr.b (-$f8f,a5)
    move.w (-$f9a,a5),($0,a6)
    rts

;----------------------
loc_011d3a:
    movem.l d0/d1,-(a7)
    tst.w d0
    bne.b loc_011d56
    move.w d1,-(a7)
    move.l #loc_09293c,-(a7)
    jsr loc_007554
    lea (6,a7),a7
    bra.b loc_011d8a

loc_011d56:
    move.w ArcadeProgress(a5),d2
    subq #1,d2
    moveq #9,d7

loc_011d5e:
    move.w #9,d6
    sub.w d7,d6
    cmp.w d2,d6
    bls.b loc_011d70
    lea loc_0c228e,a0
    bra.b loc_011d76
    
loc_011d70:
    lea loc_0c22ae,a0
    
loc_011d76:
    move.w d1,-(a7)
    move.l a0,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7
    addq.w #1,d1
    dbra d7,loc_011d5e

loc_011d8a:
    movem.l (a7)+,d0/d1
    addi.w #$a,d1
    tst.w d0
    bne.b loc_011dbe

    lea loc_0c22d8,a0
    lea loc_0c22ce,a2
    moveq #9,d7
    
loc_011da4:
    movea.l (a0)+,a1
    movea.l (a1),a1
    move.w d1,-(a7)
    move.l a1,-(a7)
    jsr loc_007554
    lea (6,a7),a7
    
    add.b (a2)+,d1
    dbra d7,loc_011da4
    bra.b loc_011df6

loc_011dbe:
    lea loc_0c22d8,a0
    lea loc_0c22ce,a2
    lea (-$f24,a5),a3
    move.w ArcadeProgress(a5),d2
    subq #2,d2
    moveq #9,d7

loc_011dd6:
    movea.l (a0)+,a1
    tst.w d2
    bmi.b loc_011de0 
    jsr loc_011df8(pc)

loc_011de0:
    movea.l (a1),a1
    move.w d1,-(a7)
    move.l a1,-(a7)
    jsr loc_007554
    lea (6,a7),a7
    add.b (a2)+,d1
    dbra d7,loc_011dd6

loc_011df6:
    rts

;------------------
loc_011df8:
    movem.l d2/d7,-(a7)
    subi.w #$9,d7
    neg.w d7

loc_011e02
    move.w d2,d3
    add.w d3,d3 
    move.w (a3,d3.w),d0
    jsr loc_013270(pc)
    cmp.w d0,d7
    bne.b loc_011e16
    addq.l #4,a1
    bra.b loc_011e1a

loc_011e16:
    dbra d2,loc_011e02

loc_011e1a:
    movem.l (a7)+,d2/d7
    rts

;-----------------------------
loc_011e20:
    move.w #0,(-$4234,a5)
    jsr loc_0071e0
    move.b #1,(-$f90,a5)
    rts
    
;-----------------------------
loc_011e34:
    jsr loc_011fb0(pc)
    move.w ($10,a6),d7

loc_011e3c:
    movem.l d7,-(a7)
    addq.w #1,($1c,a6)
    jsr loc_012ff6(pc)
    jsr loc_013084(pc)
    jsr loc_013406(pc)
    jsr loc_012a0e(pc)
    jsr loc_012ac0(pc)

    move.b #-1,d0
    movea.l #loc_012d52,a0
    jsr loc_0040c2

    move.b #0,d0
    movea.l #loc_012e46,a0
    jsr loc_0040c2

    move.b #1,d0
    movea.l #CharSelectorRowGFX,a0
    jsr loc_0040c2

    move.b #1,d0
    movea.l #loc_013312,a0
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #loc_013280,a0
    jsr loc_0040c2

    move.b #1,d0
    movea.l #loc_013368,a0
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #loc_0132ca,a0
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #CharSelBG,a0
    jsr loc_0040c2

    trap #5
    movem.l (a7)+,d7
    jsr loc_012be8(pc)
    tst.w (-$f9a,a5)
    bne.b loc_011eee
    moveq #$0,d7
    jsr loc_012a0e(pc)

loc_011eee:
    jsr loc_0122ac(pc)
    dbra d7,loc_011e3c
    tst.w (-$f9a,a5)
    beq.b loc_011f0c
    move.w #$18eb,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    clr.w (-$f9a,a5)

loc_011f0c:
    jsr loc_012976(pc)

loc_011f10:
    addq.w #1,($1c,a6)
    jsr loc_012ff6(pc)
    jsr loc_013084(pc)
    jsr loc_013406(pc)

    move.b #-1,d0
    movea.l #loc_012d52,a0
    jsr loc_0040c2

    move.b #0,d0
    movea.l #loc_012e46,a0
    jsr loc_0040c2

    move.b #1,d0
    movea.l #CharSelectorRowGFX,a0
    jsr loc_0040c2

    move.b #1,d0
    movea.l #loc_013312,a0
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #loc_013280,a0
    jsr loc_0040c2

    move.b #1,d0
    movea.l #loc_013368,a0
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #loc_0132ca,a0
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #CharSelBG,a0
    jsr loc_0040c2

    trap #5
    jsr loc_0122ac(pc)
    tst.w ($e,a6)
    bne loc_011f10
    rts

;----------------------------
loc_011fb0:
    move.w #0,d0
    move.w #$21,d1
    jsr loc_011d3a(pc)
    cmpi.w #3,(-$7f94,a5)
    beq.b loc_011fd8

    move.w #$4af,($10,a6)
    move.w #$f,($14,a6)
    move.w #$5a,($16,a6)
    bra.b loc_011fea

loc_011fd8:
    move.w #$3e7,($10,a6)
    move.w #$d,($14,a6)
    move.w #$4b,($16,a6)

loc_011fea:
    tst.b (-$f9a,a5)
    beq.b loc_012004
    tst.b (-$f99,a5)
    beq.b loc_011ffc
    clr.b ($43,a6)
    bra.b loc_012002

loc_011ffc:
    move.b #2,($43,a6)

loc_012002:
    bra.b loc_01200a

loc_012004:
    move.b #1,($43,a6)

loc_01200a:
    jsr loc_013124(pc)
    clr.w ($1c,a6)
    clr.w ($e,a6)
    tst.b (-$f9a,a5)
    beq.b loc_012022
    move.b #$1e,($e,a6)

loc_012022:
    tst.b (-$f99,a5)
    beq.b loc_01202e
    move.b #$1e,($f,a6)
    
loc_01202e:
    move.b #0,($42,a6)
    rts

;----------------------------
loc_012036:
    jsr loc_01221e(pc)
    move.w ($10,a6),d7

loc_01203e:
    movem.l d7,-(a7)
    addq.w #1,($1c,a6)
    jsr loc_012ff6(pc)
    jsr loc_013084(pc)
    jsr loc_013406(pc)
    jsr loc_012a0e(pc)
    jsr loc_012ac0(pc)    

    move.b #-1,d0
    movea.l #loc_012d52,a0;CharSel Logo
    jsr loc_0040c2

    move.b #0,d0
    movea.l #loc_012e46,a0;1p selector
    jsr loc_0040c2

    move.b #1,d0
    movea.l #CharSelectorRowGFX,a0;SelectPortraits
    jsr loc_0040c2
    btst #0,(-$f38,a5);Active Player test
    beq.b loc_0120b4

    move.b #1,d0
    movea.l #loc_013312,a0;???
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #loc_013280,a0;Big Portraits
    jsr loc_0040c2
    bra.b loc_0120c4

loc_0120b4:
    move.b #-1,d0
    movea.l #loc_0132c8,a0;Big Portraits
    jsr loc_0040c2


loc_0120c4:
    btst #1,(-$f38,a5)
    beq.b loc_0120ee

    move.b #1,d0
    movea.l #loc_013368,a0
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #loc_0132ca,a0
    jsr loc_0040c2
    bra.b loc_0120fe

loc_0120ee:
    move.b #-1,d0
    movea.l #loc_013310,a0
    jsr loc_0040c2


loc_0120fe:
    move.b #-1,d0
    movea.l #CharSelBG,a0
    jsr loc_0040c2
    trap #5
    movem.l (a7)+,d7
    jsr loc_012be8(pc)
    tst.w (-$f9a,a5)
    bne.b loc_012124
    moveq #0,d7
    jsr loc_012a0e(pc)
    
loc_012124:
    jsr loc_0122ac(pc)
    dbra d7,loc_01203e
    tst.w (-$f9a,a5)
    beq.b loc_012142
    move.w #$18eb,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    clr.w (-$f9a,a5)

loc_012142:
    jsr loc_012976(pc)

loc_012146:
    addq.w #1,($1c,a6)
    jsr loc_012ff6(pc)
    jsr loc_013084(pc)
    jsr loc_013406(pc)
    jsr loc_012ac0(pc)

    move.b #-1,d0
    movea.l #loc_012d52,a0
    jsr loc_0040c2

    move.b #0,d0
    movea.l #loc_012e46,a0;p1 selector
    jsr loc_0040c2

    move.b #1,d0
    movea.l #CharSelectorRowGFX,a0
    jsr loc_0040c2
    btst #0,(-$f38,a5)
    beq.b loc_0121b4

    move.b #1,d0
    movea.l #loc_013312,a0
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #loc_013280,a0
    jsr loc_0040c2
    bra.b loc_0121c4

loc_0121b4: ;this could be deleted i guess
    move.b #-1,d0
    movea.l #loc_0132c8,a0
    jsr loc_0040c2  

loc_0121c4:
    btst #1,(-$f38,a5)
    beq.b loc_0121ee

    move.b #1,d0
    movea.l #loc_013368,a0
    jsr loc_0040c2  

    move.b #-1,d0
    movea.l #loc_0132ca,a0
    jsr loc_0040c2
    bra.b loc_0121fe

loc_0121ee:
    move.b #-1,d0
    movea.l #loc_013310,a0
    jsr loc_0040c2  

loc_0121fe:
    move.b #-1,d0
    movea.l #CharSelBG,a0
    jsr loc_0040c2  
    trap #5
    jsr loc_0122ac(pc)
    tst.w ($e,a6)
    bne loc_012146
    rts

;----------------------
loc_01221e:
    tst.b (-$f9a,a5)
    beq.b loc_01222c
    move.w #0,(-$4234,a5)
    bra.b loc_012232

loc_01222c:
    move.w #0,(-$4234,a5)

loc_012232:
    move.w #0,d0
    move.w #$21,d1
    jsr loc_011d3a(pc)
    cmpi.w #3,(-$7f94,a5)
    beq.b loc_01225a
    move.w #$4af,($10,a6)
    move.w #$f,($14,a6)
    move.w #$5a,($16,a6)
    bra.b loc_01226c

loc_01225a:
    move.w #$3e7,($10,a6)
    move.w #$d,($14,a6)
    move.w #$4b,($16,a6)

loc_01226c:
    tst.b (-$f9a,a5)
    beq.b loc_01227a
    move.b #1,($43,a6)
    bra.b loc_012280
    
loc_01227a:
    move.b #2,($43,a6)

loc_012280:
    jsr loc_013124(pc)
    clr.w ($1c,a6)
    clr.w ($e,a6)
    tst.b (-$f9a,a5)
    beq.b loc_012298
    move.b #$1e,($e,a6)

loc_012298:
    tst.b (-$f99,a5)
    beq.b loc_0122a4
    move.b #$1e,($f,a6)

loc_0122a4:
    move.b #0,($42,a6)
    rts

;----------------------    
loc_0122ac:
    tst.b (0,a6)
    beq.b loc_0122c2
    tst.b (-$f9a,a5)
    bne.b loc_0122c2
    subq.b #1,($e,a6)
    bpl.b loc_0122c2
    clr.b ($e,a6)

loc_0122c2:
    tst.b (1,a6)
    beq.b loc_0122d8
    tst.b (-$f99,a5)
    bne.b loc_0122d8
    subq.b #1,($f,a6)
    bpl.b loc_0122d8
    clr.b ($f,a6)

loc_0122d8:
    rts

;------------------------------------
loc_0122da:
    movem.l d7,-(a7)
    movem.l d0/d1/a0,-(a7)
    move.w #$2,-(a7)
    move.w #$4,-(a7)
    move.w #$f,-(a7)
    move.w #$12,-(a7)
    jsr loc_005e50
    jsr loc_005f72
    lea (8,a7),a7

    movem.l (a7)+,d0/d1/a0
    move.w #$10,-(a7)
    move.l #loc_0927f0,-(a7)
    jsr loc_007554
    lea (6,a7),a7

    lea ($27fa,a5),a6
    clr.w ($30,a6)
    clr.w ($32,a6)
    move.w #2,($34,a6)
    move.w #2,($36,a6)
    move.w #3,($38,a6)
    move.w #$3c,d7

loc_01233c:
    tst.w ($30,a6)
    bne loc_012374
    btst #3,(-$53cd,a5)
    beq loc_01235c
    cmpi.w #5,($34,a6)
    beq loc_01235c
    addq.w #1,($34,a6)

loc_01235c:
    btst #$2,(-$53cd,a5)
    beq loc_012374
    cmpi.w #0,($34,a6)
    beq loc_012374
    subq.w #1,($34,a6)

loc_012374:
    tst.w ($32,a6)
    bne loc_0123ac
    btst #3,(-$53cc,a5)
    beq loc_012394
    cmpi.w #5,($36,a6)
    beq loc_012394
    addq.w #1,($36,a6)

loc_012394:
    btst #2,(-$53cc,a5)
    beq loc_0123ac
    cmpi.w #0,($36,a6)
    beq loc_0123ac
    subq.w #1,($36,a6)

loc_0123ac:
    movem.l d7,-(a7)
    move.w ($34,a6),d7
    move.w #$28,($2c,a6)
    move.w #$ac,($2e,a6)

loc_0123c0:
    move.w #3,d0
    move.w #$17,d2
    bsr loc_012642
    addi.w #$10,($2c,a6)
    dbra d7, loc_0123c0
    movem.l (a7)+, d7
    movem.l d7, -(a7)
    move.w ($36,a6), d7
    move.w #$c8,($2c,a6)
    move.w #$ac,($2e,a6)

loc_0123ee:
    move.w #$3,d0
    move.w #$17,d2
    bsr loc_012642 
    addi.w #$10,($2c,a6)
    dbra d7,loc_0123ee
    movem.l (a7)+,d7
    tst.w ($38,a6)
    bne loc_012450
    btst #4,(-$53cd,a5)
    beq loc_012420
    move.w #1,($30,a6)
    
loc_012420:
    btst #5,(-$53cd,a5)
    beq loc_012430
    move.w #0,($30,a6)

loc_012430:
    btst #4,(-$53cc,a5)
    beq loc_012440
    move.w #1,($32,a6)

loc_012440:
    btst #5,(-$53cc,a5)
    beq loc_012450
    move.w #0,($32,a6)

loc_012450:
    tst.b $10fd83.l
    beq loc_0124be

    move.w #$a,d0
    move.w #$22,d2
    move.w #$18,($2c,a6)
    move.w #$ac,($2e,a6)
    bsr loc_012642

    move.w #$9,d0
    move.w #$22,d2
    move.w #$88,($2c,a6)
    move.w #$ac,($2e,a6)
    bsr loc_012642

    move.w #$a,d0
    move.w #$22,d2
    move.w #$b8,($2c,a6)
    move.w #$ac,($2e,a6)
    bsr loc_012642

    move.w #$9,d0
    move.w #$22,d2
    move.w #$128,($2c,a6)
    move.w #$ac,($2e,a6)
    bsr loc_012642
    bra loc_01251e

loc_0124be:
    move.w #$1,d0
    move.w #$11,d2
    move.w #$18,($2c,a6)
    move.w #$ac,($2e,a6)
    bsr loc_012642

    move.w #$2,d0
    move.w #$12,d2
    move.w #$88,($2c,a6)
    move.w #$ac,($2e,a6)
    bsr loc_012642

    move.w #$1,d0
    move.w #$11,d2
    move.w #$b8,($2c,a6)
    move.w #$ac,($2e,a6)
    bsr loc_012642

    move.w #$2,d0
    move.w #$12,d2
    move.w #$128,($2c,a6)
    move.w #$ac,($2e,a6)
    bsr loc_012642

loc_01251e:
    move.w #$0,d0
    move.w #$10,d2
    tst.w ($30,a6)
    beq loc_012536
    move.w #$5,d0
    move.w #$14,d2
    
loc_012536:
    move.w #$50,($2c,a6)
    move.w #$c0,($2e,a6)
    bsr loc_012642

    move.w #$0,d0
    move.w #$10,d2
    tst.w ($32,a6)
    beq loc_01255e
    move.w #$5,d0
    move.w #$14,d2
    
loc_01255e:
    move.w #$f0,($2c,a6)
    move.w #$c0,($2e,a6)
    bsr loc_012642

    move.w #$6,d0
    move.w #$15,d2
    move.w #$50,($2c,a6)
    move.w #$31,($2e,a6)
    bsr loc_012642

    move.w #$7,d0
    move.w #$15,d2
    move.w #$f0,($2c,a6)
    move.w #$31,($2e,a6)
    bsr loc_012642

    move.w #$4,d0
    move.w #$13,d2
    move.w #$a0,($2c,a6)
    move.w #$18,($2e,a6)
    bsr loc_012642
;125b6
    move.w (p1ida5,a5),d0
    move.w #$4e,($2c,a6)
    move.w #$80,($2e,a6)
    move.w #$18,d2
    add.w d0,d2
    move.w #$0,($3a,a6)
    bsr loc_012672
;125d6
    move.w (p2ida5,a5),d0
    move.w #$f2,($2c,a6)
    move.w #$80,($2e,a6)
    move.w #$18,d2
    add.w d0,d2
    move.w #$1,($3a,a6)
    bsr loc_012672

;125f6
    move.w #$8,d0
    move.w #$16,d2
    move.w #$a0,($2c,a6)
    move.w #$70,($2e,a6)
    bsr loc_012642
    trap #5
    tst.w ($38,a6)
    beq loc_01261c
    subq.w #1,($38,a6)

loc_01261c:
    move.w ($30,a6),d0
    add.w ($32,a6),d0
    cmpi.w #2,d0
    bne loc_01233c
    dbra d7,loc_01233c
    move.w ($34,a6),(-$f96,a5)
    move.w ($36,a6),(-$f94,a5)
    movem.l (a7)+,d7
    rts

loc_012642:
    movem.l d7,-(a7)
    lea loc_0927c4,a1
    add.w d0,d0
    add.w d0,d0
    ext.l d0
    adda.l d0,a1
    move.w ($2c,a6),d0
    move.w ($2e,a6),d1
    lsl.w #8,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a1),a0
    jsr loc_0041d8
    movem.l (a7)+,d7
    rts

;---------------------
loc_012672:
    movem.l d7,-(a7)
    lea loc_092a08,a1
    addi.w #$29,d0
    add.w d0,d0
    add.w d0,d0
    ext.l d0
    adda.l d0,a1
    move.w ($2c,a6),d0
    move.w ($2e,a6),d1
    lsl.w #8,d2
    add.w ($3a,a6),d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a1),a0
    jsr loc_0041d8
    movem.l (a7)+,d7
    rts

;-------------------------
;Both characters selected 
;-------------------------
loc_0126aa:
    movem.l d7,-(a7)
    move.w ($16,a6),d7

loc_0126b2:
    addq.w #1,($1c,a6)
    jsr loc_012ff6(pc)
    jsr loc_013406(pc)
    
    move.b #0,d0
    movea.l #loc_012e46,a0
    jsr loc_0040c2

    move.b #1,d0
    movea.l #CharSelectorRowGFX,a0
    jsr loc_0040c2 

    move.b #1,d0
    movea.l #loc_013312,a0
    jsr loc_0040c2 

    move.b #-1,d0
    movea.l #loc_013280,a0
    jsr loc_0040c2 

    move.b #1,d0
    movea.l #loc_013368,a0
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #loc_0132ca,a0
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #CharSelBG,a0
    jsr loc_0040c2 
    trap #5
    jsr loc_0134aa(pc)
    cmpi.w #1,d0
    beq.b loc_01273e
    dbra d7,loc_0126b2

loc_01273e:
    movem.l (a7)+,d7
    rts

;----------------------
loc_012744:
    movem.l d7,-(a7)
    jsr loc_012828(pc)
    move.w ($10,a6),d7

loc_012750:
    movem.l d7,-(a7)
    addq.w #1,($1c,a6)
    jsr loc_01289a(pc)
    jsr loc_012ff6(pc)
    jsr loc_013436(pc)
    
    move.b #-1,d0
    movea.l #loc_012d9a,a0
    jsr loc_0040c2 

    move.b #0,d0
    movea.l #loc_012e46,a0
    jsr loc_0040c2 

    move.b #1,d0
    movea.l #CharSelectorRowGFX,a0
    jsr loc_0040c2
    btst #0,(-$f38,a5)
    beq.b loc_0127be

    move.b #1,d0
    movea.l #loc_013312,a0
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #loc_013280,a0
    jsr loc_0040c2
    bra.b loc_0127ce

loc_0127be:
    move.b #-1,d0
    movea.l #loc_0132c8,a0
    jsr loc_0040c2

loc_0127ce:
    btst #1,(-$f38,a5)
    beq.b loc_0127f8

    move.b #1,d0
    movea.l #loc_013368,a0
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #loc_0132ca,a0
    jsr loc_0040c2
    bra.b loc_012808

loc_0127f8:
    move.b #-1,d0
    movea.l #loc_013310,a0
    jsr loc_0040c2

loc_012808:
    move.b #-1,d0
    movea.l #CharSelBG,a0
    jsr loc_0040c2
    trap #5
    movem.l (a7)+,d7
    dbra d7,loc_012750
    movem.l (a7)+,d7
    rts

;----------------------
loc_012828:
    cmpi.w #$a,(-$f30,a5)
    beq.b loc_012838
    move.w #$1f,($10,a6)
    bra.b loc_01283e
    
loc_012838:
    move.w #$3f,($10,a6)
    
loc_01283e:
    move.w #0,d0
    move.w #$21,d1
    jsr loc_011d3a(pc)
    move.w #0,(-$4234,a5)
    move.w (p1ida5,a5),d0
    cmp.w (p2ida5,a5),d0
    bne.b loc_012872
;    btst #0,(-$f38,a5)
;    beq.b loc_01286a
;    move.w #4,(-$92e,a5)
;    bra.b loc_012870

loc_01286a:
;    move.w #4,(-$e8e,a5);charpal

loc_012870:
    bra.b loc_012888

loc_012872:
    btst #0,(-$f38,a5)
    beq.b loc_012882
    andi.w #3,(-$92e,a5)
    bra.b loc_012888

loc_012882:
    andi.w #3,(-$e8e,a5);charpal

loc_012888:
    jsr loc_013124(pc)
    move.b #0,($42,a6)
    move.b #-1,(-$f8f,a5)
    rts

;-------------------
loc_01289a:
    move.w ($10,a6),d0
    sub.w d7,d0
    tst.w (0,a6)
    beq.b loc_0128ac
    lea loc_0128d8(pc),a1
    bra.b loc_0128b0

loc_0128ac:
    lea loc_0128f2(pc),a1

loc_0128b0:
    moveq #0,d1

loc_0128b2:
    move.w d1,d2
    add.w d2,d2
    add.w d2,d2
    move.w (a1,d2.w),d3
    beq.b loc_0128d6
    cmp.w d3,d0
    bcc.b loc_0128d0
    move.w d3,d1
    move.w 2(a1,d2.w),d2
    lea (a1,d2.w),a0
    jsr (a0)
    bra.b loc_0128d6

loc_0128d0:
    sub.w d3,d0
    addq.w #1,d1
    bra.b loc_0128b2

loc_0128d6:
    rts

;/\/\/\/\/\/\/\/\/\/\/\
loc_0128d8:
    dc.w $0008,$003a,$0006,$0034,$0005,$0048,$0005,$006a
    dc.w $0008,$0044,$0038,$0034
    dc.w $0000

loc_0128f2:
    dc.w $0001,$001c,$000d,$001a,$0005,$002e,$0005,$0050
    dc.w $0008,$002a,$0038,$001a
    dc.w $0000

loc_01290c:
    rts

;======================
loc_01290e:
    moveq #0,d0
    bra.b loc_012946

loc_012912:
    move.w d1,d2
    subq.w #1,d2
    sub.w d2,d0
    neg.w d0
    bra.b loc_012946

loc_01291c:
    addq.w #1,d0
    bra.b loc_012946

loc_012920:
    move.w d1,d2
    subq.w #1,d2
    sub.w d2,d0
    neg.w d0
    bne.b loc_012940
    move.w #1,d0
    move.w #$21,d1
    jsr loc_011d3a(pc)
    move.b #1,($42,a6)
    jsr loc_012e2c(pc)

loc_012940:
    bra.b loc_012954

loc_012942:
    addq.w #1,d0
    bra.b loc_012954
    
loc_012946:
    move.w d0,d2
    mulu.w #$100,d2
    divu.w d1,d2
    move.w d2,($3e,a6)
    rts

loc_012954:
    mulu.w #$40,d0
    divu.w d1,d0
    addi.w #$c0,d0
    jsr loc_002a6e
    muls.w #$ff,d0
    eori.w #$ff00,d0
    andi.w #$ff00,d0
    move.w d0,($40,a6)
    rts

;======================
loc_012976:
    btst #0,(-$f38,a5)
    beq.b loc_01298a
    move.w ($a,a6),d0
    jsr loc_013260(pc)
    move.w d0,(p1ida5,a5)

loc_01298a:
    btst #1,(-$f38,a5)
    beq.b loc_01299e
    move.w ($c,a6),d0
    jsr loc_013260(pc)
    move.w d0,(p2ida5,a5)

loc_01299e:
    jsr loc_0129d0(pc)
    btst #0,(-$f38,a5)
    beq.b loc_0129b8
    move.w (-$e8e,a5),d1
    lsl.w #8,d1
    move.b (-$e8f,a5),d1
    move.w d1,(p1pala5,a5)

loc_0129b8:
    btst #1,(-$f38,a5)
    beq.b loc_0129ce
    move.w (-$92e,a5),d1
    lsl.w #8,d1
    move.b (-$92f,a5),d1
    move.w d1,(-$932,a5)
    
loc_0129ce:
    rts

;----------------------
;Color Check
;----------------------
loc_0129d0:
    move.w (p1ida5,a5),d0
    cmp.w (p2ida5,a5),d0
    bne.b loc_012a0c
    move.w (-$e8e,a5),d1
    move.w (-$92e,a5),d2
    cmp.w d2,d1
    bne.b loc_0129f4
    cmpi.b #2,($43,a6)
    beq.b  loc_0129f2
    addq.w #1,d2
    bra.b loc_0129f4
 
loc_0129f2:
    addq.w #1,d1

loc_0129f4:
    cmpi.w #4,d1;Max Colors player 1
    ble.b loc_0129fc
    moveq #0,d1

loc_0129fc:
    cmpi.w #4,d2;Max Colors Player 2
    ble.b loc_012a04
    moveq #0,d2

loc_012a04:
    move.w d1,(-$e8e,a5)
    move.w d2,(-$92e,a5)

loc_012a0c:
    rts

;------------------------
;Timer Render
;------------------------
loc_012a0e:
    movem.l d0/a0/a1,-(a7)
    move.w #$300,-(a7)
    move.l #SelTimeText,-(a7)
    clr.w -(a7)
    move.w #$7251,-(a7)
    jsr FixTextWrite
    lea ($a,a7),a7

    movem.l (a7)+,d0/a0/a1
    move.w d7,d0
    ext.l d0
    cmpi.w #3,(-$7f94,a5)
    beq.b loc_012a42
    divu.w #$3c,d0
    bra.b loc_012a46

loc_012a42:
    divu.w #$32,d0

loc_012a46:
    ext.l d0
    movem.l d0/d1/d2/d3/d4/a0/a1,-(a7)
    move.w #$300,-(a7)
    move.w #2,-(a7)
    move.l d0,-(a7)
    clr.w -(a7)
    move.w #$7272,-(a7)
    jsr loc_005ed4
    lea ($c,a7),a7
    movem.l (a7)+,d0/d1/d2/d3/d4/a0/a1

    cmpi.w #$a,d0
    bcc.b loc_012a96

    movem.l d0/d1/d2/d3/d4/a0/a1,-(a7)
    move.w #$300,-(a7)
    move.w #1,-(a7)
    move.l #0,-(a7)
    clr.w -(a7)
    move.w #$7272,-(a7)
    jsr loc_005ed4
    lea ($c,a7),a7
    movem.l (a7)+,d0/d1/d2/d3/d4/a0/a1

loc_012a96:
    rts

;==========================
SelTimeText:
    dc.b "TIME",00
    even

;--------------------------
loc_012a9e:
    movem.l d0/d1/a0,-(a7)
    move.w #2,-(a7)
    move.w #4,-(a7)
    clr.w -(a7)
    move.w #$7251,-(a7)
    jsr loc_005f72
    lea (8,a7),a7
    movem.l (a7)+,d0/d1/a0
    rts

;-------------------------
loc_012ac0:
    movem.l d7,-(a7)
    tst.b (-$f9a,a5)
    beq.b loc_012afc
    move.b (-$53cd,a5),d0
    btst #2,d0
    beq.b loc_012ae6
    subq.w #1,($a,a6)
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    bra.b loc_012afc

loc_012ae6:
    btst #3,d0
    beq.b loc_012afc
    addq.w #1,($a,a6)
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_012afc:
    tst.b (-$f99,a5)
    beq.b loc_012b34
    move.b (-$53cc,a5),d0
    btst #2,d0
    beq.b loc_012b1e
    subq.w #1,($c,a6)
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    bra.b loc_012b34

loc_012b1e:
    btst #3,d0
    beq.b loc_012b34
    addq.w #1,($c,a6)
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    
loc_012b34:
    btst #0,(-$53cd,a5)
    beq loc_012b4e
    btst #0,(-$53cc,a5)
    beq loc_012b4e
    move.w #1,(-$f92,a5)

loc_012b4e:
    move.w #9,($3c,a6)
    tst (-$f92,a5)
    bne loc_012b62
    move.w #8,($3c,a6)

loc_012b62:
    move.w ($a,a6),d0
    bpl.b loc_012b6e
    move.w ($3c,a6),d0
    bra.b loc_012b76

loc_012b6e:
    cmp.w ($3c,a6),d0
    bls.b loc_012b76
    moveq #$0,d0

loc_012b76:
    move.w d0,($a,a6)
    move.w ($c,a6),d0
    bpl.b loc_012b86
    move.w ($3c,a6),d0
    bra.b loc_012b8e

loc_012b86:
    cmp.w ($3c,a6),d0
    bls.b loc_012b8e
    moveq #0,d0

loc_012b8e:
    move.w d0,($c,a6)
    tst.b (-$f9a,a5)
    beq.b loc_012ba4
    move.w ($a,a6),d0
    jsr loc_013260(pc)
    move.w d0,(p1ida5,a5)

loc_012ba4:
    tst.b (-$f99,a5)
    beq.b loc_012bb6
    move.w ($c,a6),d0
    jsr loc_013260(pc)
    move.w d0,(p2ida5,a5)

loc_012bb6:
    btst #0,(-$f38,a5)
    beq.b loc_012bcc
    move.w (-$e8e,a5),d1
    lsl.w #8,d1
    move.b (-$e8f,a5),d1
    move.w d1,(p1pala5,a5)

loc_012bcc:
    btst #1,(-$f38,a5)
    beq.b loc_012be2
    move.w (-$92e,a5),d1
    lsl.w #8,d1
    move.b (-$92f,a5),d1
    move.w d1,(-$932,a5)
    
loc_012be2:
    movem.l (a7)+,d7
    rts

;-------------------------
loc_012be8:
    movem.l d7,-(a7)
    move.w ($10,a6),d0
    sub.w ($14,a6),d0
    cmp.w d0,d7
    bge.w loc_012c6c
    tst.b (-$f9a,a5)
    beq.b loc_012c32
    move.b (-$53cd,a5),d0
    andi.w #$f0,d0
    beq.b loc_012c32
    jsr writeCharPalid

    btst #0,(-$53cb,a5)
    bne.b p1pal5

    subq.w #4,d0
    bra.b p1palwrite

p1pal5:
    move #4,d0

p1palwrite:
    move.w d0,(-$e8e,a5);p1palid
    clr.b (-$f9a,a5)
    move.w #$18eb,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    cmpi.b #2, ($43,a6)
    beq.b loc_012c32
    move.b #1,($43,a6)

loc_012c32:
    tst.b (-$f99,a5)
    beq.b loc_012c6c
    move.b (-$53cc,a5),d0
    andi.w #$f0,d0
    beq.b loc_012c6c

    jsr writeCharPalid

;Hold Start to get 4 more colors
    btst #2,(-$53cb,a5)
    bne.b p2pal5

    subq.w #4,d0
    bra.b p2palwrite

p2pal5:
    move #4,d0

p2palwrite:
    move.w d0,(-$92e,a5)
    clr.b (-$f99,a5)
    move.w #$18eb,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    cmpi.b #1,($43,a6)
    beq.b loc_012c6c
    move.b #2,($43,a6)

loc_012c6c:
    movem.l (a7)+,d7
    rts

;--------------------;
;Arcade Mode
;--------------------;
loc_012c72:
    jsr loc_012d18(pc)
    move.w ($16,a6),d7

loc_012c7a:
    addq.w #1,($1c,a6)
    jsr loc_012ff6(pc)
    jsr loc_013436(pc)

    move.b #-1,d0
    movea.l #loc_012d9a,a0
    jsr loc_0040c2    

    move.b #0,d0
    movea.l #loc_012e46,a0
    jsr loc_0040c2

    move.b #1,d0
    movea.l #CharSelectorRowGFX,a0
    jsr loc_0040c2

    move.b #1,d0
    movea.l #loc_013312,a0
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #loc_013280,a0
    jsr loc_0040c2

    move.b #1,d0
    movea.l #loc_013368,a0
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #loc_0132ca,a0
    jsr loc_0040c2

    move.b #-1,d0
    movea.l #CharSelBG,a0
    jsr loc_0040c2    

    trap #5
    jsr loc_0134aa(pc)
    cmpi.w #1,d0
    beq.b loc_012d16
    dbra d7,loc_012c7a

loc_012d16:
    rts

;----------------------------
loc_012d18:
    cmpi.w #3,(-$7f94,a5)
    beq.b loc_012d2e
    move.w #$59,($16,a6)
    move.w #$f,($14,a6)
    bra.b loc_012d3a

loc_012d2e:
    move.w #$4a,($16,a6)
    move.w #$d,($14,a6)

loc_012d3a:
    move.w #$18eb,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    jsr loc_012a9e(pc)
    move.b #1,($42,a6)
    rts

;-----------------------------
;Start of objects
loc_012d52:
    move.w #0,d0
    jsr loc_012d66(pc)
    rts


;----------------------------
loc_012d5c:
    move.w #1,d0
    jsr loc_012d66(pc)
    rts
   
;------------------------------
loc_012d66:
    lea loc_090d64,a4
    tst.w d0
    bne.b loc_012d78
    adda.l #$88,a4 
    bra.b loc_012d7e

loc_012d78:
    adda.l #$8c,a4

loc_012d7e:
    move.w #$a0,d0;Xpos
    move.w #$28,d1;Ypos
    move.w #$1600,d2;Palette
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a4),a0
    jsr loc_0041d8
    rts

;-------------------------
loc_012d9a:
    movem.l d7,-(a7)
    cmpi.w #$a,(-$f30,a5)
    bne.b loc_012dd0
    lea loc_090d64,a4
    adda.l #$b8,a4
    move.w #$a0,d0
    move.w #$20,d1
    move.w #$1600,d2
    moveq #0,d3
    move.w #-5,d4
    moveq #0,d5
    movea.l (a4),a0
    jsr loc_0041d8
    bra.b loc_012e26

loc_012dd0:
    lea loc_090d64,a4
    adda.l #$90,a4
    move.w #$a0,d0
    move.w #$20,d1
    move.w #$1600,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a4),a0
    jsr loc_0041d8

    lea loc_090d64,a4
    move.w (-$f30,a5),d0
    addi.w #$8a,d0
    add.w d0,d0
    add.w d0,d0
    ext.l d0
    adda.l d0,a4
    move.w #$a0,d0
    move.w #$20,d1
    move.w #$1600,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a4),a0
    jsr loc_0041d8

loc_012e26:
    movem.l (a7)+,d7
    rts

;---------------------------
loc_012e2c:
    move.w (p1ida5,a5),d0
    jsr loc_013270(pc)
    move.w d0,($a,a6)
    move.w (p2ida5,a5),d0
    jsr loc_013270(pc)
    move.w d0,($c,a6)
    rts

;---------------------------
loc_012e46:
    lea ($27fa,a5),a6
    cmpi.b #0,($42,a6)
    bne.b loc_012e6e
    btst #0,($1d,a6)
    bne.b loc_012e64
    jsr loc_012e74(pc)
    jsr loc_012e86(pc)
    bra.b loc_012e6c

loc_012e64:
    jsr loc_012e86(pc)
    jsr loc_012e74(pc)

loc_012e6c:
    bra.b loc_012e72

loc_012e6e:
    jsr loc_012e98(pc)

loc_012e72:
    rts

;-------------
loc_012e74:
    btst #0,(-$f38,a5)
    beq.b loc_012e84
    move.w #0,d0
    jsr loc_012eb6(pc)

loc_012e84:
    rts

;---------------------
loc_012e86:
    btst #1,(-$f38,a5)
    beq.b loc_012e96
    move.w #1,d0
    jsr loc_012eb6(pc)

loc_012e96:
    rts

;---------------------
loc_012e98:
    cmpi.w #$a,$1070d0.l
    beq.b loc_012eaa
    move.w #-1,d0
    jsr loc_012eb6(pc)

loc_012eaa:
    rts

;---------------------
loc_012eac:
    clr.w ($18,a6)
    clr.w ($1a,a6)
    rts

;---------------------
;Selector Code Start
;---------------------
loc_012eb6:
    movem.l d7/a6,-(a7)
    move.w ($a,a6),d6
    move.w #$1100,d7;Palette
    clr.w d5
    cmpi.w #-1,d0
    bne.b loc_012eda
    move.w (-$f30,a5),d6
    subq.w #1,d6
    addi.w #$200,d7
    move.w #$12,d5
    bra.b loc_012eec

loc_012eda:
    cmpi.w #1,d0
    bne.b loc_012eec
    move.w ($c,a6),d6
    addi.w #$100,d7
    move.w #$9,d5

loc_012eec:
    mulu.w ($3e,a6),d6
    lsr.l #3,d6
    addi.w #$20,d6;selector xpos
    swap d7
    move.w d6,d7
    movem.l d0/d7,-(a7)
    lea loc_012fc8(pc),a2
    move.w (a2)+,d6
    tst.w ($1a,a6)
    bne.b loc_012f1a
    addq.w #1,($18,a6)
    cmp.w ($18,a6),d6
    bcc.b loc_012f1a
    move.w #1,($18,a6)

loc_012f1a:
    move.w ($18,a6),d1
    subq.w #1,d1
    add.w d1,d1
    add.w d1,d1
    move.w (a2,d1.w),d6
    add.w d5,d6
    tst.w ($1a,a6)
    bne.b loc_012f36
    move.w 2(a2,d1.w),($1a,a6)

loc_012f36: 
    tst.w ($1a,a6)
    bmi.b loc_012f40
    subq.w #1,($1a,a6)

loc_012f40:
    move.w ($1c,a6),d4
    lsr.w #2,d4
    andi.w #7,d4
    lea loc_012fee(pc),a1
    move.b (a1,d4.w),d5
    ext.w d5
    lea loc_092a08,a1;Arrow and pl indicator
    subq.w #1,d6
    add.w d6,d6
    add.w d6,d6    
    ext.l d6 
    adda.l d6,a1 
    move.w d7,d0 
    move.w #$bc,d1
    swap d7
    move.w d7,d2
    move.w ($40,a6),d3
    moveq #0,d4
    movea.l (a1)+,a0
    jsr loc_00431c
    movem.l (a7)+,d0/d7

    cmpi.b #3,(-$f38,a5)
    bne.b loc_012fa2
    cmpi.w #0,d0
    bne.b loc_012f96
    tst.b ($e,a6)
    beq.b loc_012fc2
    bra.b loc_012fa2

loc_012f96:
    cmpi.w #1,d0
    bne.b loc_012fa2
    tst.b ($f,a6)
    beq.b loc_012fc2

loc_012fa2:
    move.w d7,d0
    move #$bc,d1
    swap d7
    move.w d7,d2
    move.w ($40,a6),d3
    moveq #0,d4
    moveq #0,d5
    lea loc_092a08,a1
    movea.l (a1)+,a0
    jsr loc_00431c
    
loc_012fc2:
    movem.l (a7)+,d7/a6
    rts

;/\/\/\/\/\/\/\/\/\/\/\
loc_012fc8: ;pointer animation
    dc.w $0009,$000a,$0012,$0003,$0005,$0004,$0003,$0005
    dc.w $0002,$0006,$0001,$0007,$0002,$0008,$0003,$0009
    dc.w $0005,$0002,$0006

loc_012fee: ;bounce
    dc.b 00,00,-1,-2,-4,-2,-1,00

;---------------------------------
;Character Indicator Palette Load 
;---------------------------------
loc_012ff6:
    move.w ($1c,a6),d0
    andi.w #$f,d0
    bne.b loc_01303e

    move.w #$11,-(a7)
    move.l #CharSelPalP1Indactor,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

    move.w #$12,-(a7)
    move.l #CharSelPalP2Indactor,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

    move.w #$13,-(a7)
    move.l #CharSelPalCPUIndactor,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7
    rts

loc_01303e:
    cmpi.w #8,d0
    bne.b loc_013082

    move.w #$11,-(a7)
    move.l #loc_0c140e,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

    move.w #$12,-(a7)
    move.l #loc_0c142e,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

    move.w #$13,-(a7)
    move.l #loc_0c144e,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7
    rts

loc_013082:
    rts

;-------------------
loc_013084:
    lea loc_09293c,a0
    move.b ($e,a6),d0
    beq.b loc_0130d6
    cmpi.b #$1e,d0
    bcc.b loc_0130d6
    move.w ($a,a6),d1
    move.w d1,d2

    add.w d1,d1
    add.w d1,d1
    movea.l (a0,d1.w),a1

    addi.w #$21,d2
    andi.w #7,d0
    bne.b loc_0130c2
    move.w d2,-(a7)
    move.l #loc_09fde8,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7
    bra.b loc_0130d6

loc_0130c2:
    cmpi.w #4,d0
    bne.b loc_0130d6
    move.w d2,-(a7)
    move.l a1,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

loc_0130d6:
    move.b ($f,a6),d0
    beq.b loc_013122
    cmpi.b #$1e,d0
    bcc.b loc_013122

    move.w ($c,a6),d1
    move.w d1,d2
    add.w d1,d1
    add.w d1,d1
    movea.l (a0,d1.w),a1
    addi.w #$21,d2
    andi.w #7,d0
    bne.b loc_01310e

    move.w d2,-(a7)
    move.l #loc_09fde8,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7
    bra.b loc_013122

loc_01310e:
    cmpi.w #4,d0
    bne.b loc_013122
    move.w d2,-(a7)
    move.l a1,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

loc_013122:
    rts

;-----------------------------;
; Character Selector Row Size ;
;-----------------------------;
loc_013124:
    move.w #$100,($3e,a6);Space between
    move.w #0,($40,a6);Scale
    move.b #0,($42,a6)
    rts

;---------------------
CharSelectorRowGFX:;13138
    movem.l d7,-(a7)
    lea ($27fa,a5),a6
    move.w #9,d7

loc_013144:
    movem.l d7,-(a7)
    subi.w #9,d7
    neg.w d7
    cmpi.b #1,($42,a6)
    beq.b loc_01316a
    btst #1,(-$f38,a5)
    bne.b loc_013164
    move.w ($a,a6),d0
    bra.b loc_013168

loc_013164:
    move.w ($c,a6),d0

loc_013168:
    bra.b loc_013178

loc_01316a:
    move.w (-$f30,a5),d0
    cmpi.w #$a,d0
    bne.b loc_013176
    subq.w #1,d0

loc_013176:
    subq.w #1,d0

loc_013178:
    move.w #9,d1
    sub.w d0,d1 
    moveq #0,d6
    cmp.w d1,d7
    bhi.b loc_01319c
    cmpi.w #0,d7 
    bls.b loc_013194
    cmpi.b #1,($42,a6)
    bne.b loc_013194
    moveq #1,d6

loc_013194:
    add.w d7,d0
    move.b loc_0131a4(pc,d0.w),d7
    bra.b loc_0131a2

loc_01319c:
    subq.w #1,d7
    move.b loc_0131ae(pc,d7.w),d7

loc_0131a2:
    bra.b loc_0131b8

;/\/\/\/\/\/\/\/\/\/\/\/\
loc_0131a4:
    dc.b 00,01,02,03,04,05,06,07,08,09

loc_0131ae:
    dc.b 08,07,06,05,04,03,02,01,00,00

;------------------
loc_0131b8:
    cmpi.b #1,($42,a6)
    beq.b loc_0131c4
    move.w d7,d0
    bra.b loc_0131d4

loc_0131c4:
    lea (-$f24,a5),a0
    move.w d7,d1
    add.w d1,d1
    move.w (a0,d1.w),d0
    jsr loc_013270(pc)

loc_0131d4:
    tst.w (-$f92,a5)
    bne loc_0131e4
    cmpi.w #9,d0 
    beq loc_013252

loc_0131e4:
    addi.w #0,d0
    add.w d0,d0
    add.w d0,d0
    ext.l d0
    lea loc_092ae0,a1
    adda.l d0,a1
    move.w d7,d0
    mulu.w ($3e,a6),d0
    lsr.l #3,d0
    addi.w #$20,d0; portrait row xpos
    move.w #$bc,d1
    move.w #$2b,d2
    subi.w #$5b,d2
    lsl.w #8,d2
    move.w ($40,a6),d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a1),a0
    movem.l d0/d1/d3/d4/d5/d7,-(a7)
    tst.w d6
    bne.b loc_013228
    jsr loc_004850

loc_013228:
    movem.l (a7)+,d0/d1/d3/d4/d5/d7
    cmpi.b #1,($42,a6)

loc_013232:
    beq.b loc_01323c
    lea loc_092a78,a1
    bra.b loc_013242

loc_01323c:
    lea loc_092a7c,a1

loc_013242:
    move.w #$21,d2
    add.w d7,d2
    lsl.w #8,d2
    movea.l (a1),a0
    jsr loc_00431c

loc_013252:
    movem.l (a7)+,d7
    dbra d7,loc_013144
    movem.l (a7)+,d7
    rts

;------------------------
;Write Character id
;------------------------
loc_013260:
    move.b loc_013266(pc,d0.w),d0
    rts

;/\/\/\/\/\/\/\/\/\/\
;Character IDs selecting only
;\/\/\/\/\/\/\/\/\/\/
loc_013266:
    dc.b 00,06,02,04,03,05,07,01,09,08

;--------------------------
loc_013270:
    move.b loc_013276(pc,d0.w),d0
    rts

;/\/\/\//\/\/\/\
loc_013276:
    dc.b 00,07,02,04,03,05,01,06,09,08

;-----------------------
loc_013280:
    movem.l d7,-(a7)
    lea ($27fa,a5),a6 
    lea loc_092a08,a1
    move.w ($a,a6),d0
    jsr loc_013260(pc)
    move.w d0,d2
    add.w #$17,d2
    lsl.w #8,d2
    addi.w #0,d2
    addi.w #$29,d0
    add.w d0,d0
    add.w d0,d0
    ext.l d0
    adda.l d0,a1
    move.w #$4e,d0
    move.w #$70,d1
    moveq #0,d4
    moveq #0,d5
    movea.l (a1),a0
    jsr loc_0041d8
    movem.l (a7)+,d7
    rts

loc_0132c8:
    rts

;----------------------------
loc_0132ca:
    movem.l d7,-(a7)
    lea ($27fa,a5),a6 
    lea loc_092a08,a1
    move.w ($c,a6),d0
    jsr loc_013260(pc)
    move.w d0,d2
    add.w #$17,d2
    lsl.w #8,d2
    addq.w #1,d2
    addi.w #$29,d0
    add.w d0,d0
    add.w d0,d0
    ext.l d0
    adda.l d0,a1
    move.w #$f2,d0
    move.w #$70,d1
    moveq #0,d4
    moveq #0,d5
    movea.l (a1),a0
    jsr loc_0041d8
    movem.l (a7)+,d7
    rts

loc_013310:
    rts

;--------------------------
loc_013312:
    movem.l d7,-(a7)
    lea ($27fa,a5),a6 
    move.w #0,d1
    move.w ($a,a6),d0
    cmp.w ($c,a6),d0
    bne.b loc_013334
    btst #0,(-$f38,a5)
    bne.b loc_013334
    move.w #$a,d1

loc_013334:
    lea loc_09263c,a1
    jsr loc_013260(pc)
    add.w d1,d0
    add.w d0,d0
    add.w d0,d0
    ext.l d0
    adda.l d0,a1
    move.w #$5c,d0
    move.w #$98,d1
    move.w #$1000,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a1)+,a0
    jsr loc_0041d8
    movem.l (a7)+,d7
    rts

;-----------------------
loc_013368:
    movem.l d7,-(a7)
    lea ($27fa,a5),a6 
    move.w #0,d1
    move.w ($c,a6),d0
    cmp.w ($a,a6),d0
    bne.b loc_01338a
    btst #1,(-$f38,a5)
    bne.b loc_01338a
    move.w #$a,d1

loc_01338a:
    lea loc_09263c,a1
    jsr loc_013260(pc)
    add.w d1,d0
    add.w d0,d0
    add.w d0,d0
    ext.l d0
    adda.l d0,a1
    move.w #$e4,d0
    move.w #$98,d1
    move.w #$1000,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a1)+,a0
    jsr loc_0041d8
    movem.l (a7)+,d7
    rts

;-----------------------
CharSelBG: ; 133be character sel bg
    movem.l d7,-(a7)
    lea loc_092ad4,a1
    move.w #$a0,d0
    move.w #$70,d1
    btst #1,(-$f38,a5)
    beq.b loc_0133de
    move.w #$1400,d2
    bra.b loc_0133e2

loc_0133de:
    move.w #$1401,d2

loc_0133e2:
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    move.w #2,d7 

loc_0133ec:
    movea.l (a1)+,a0
    movem.l d0/d1/d2/d3/d4/d5/d7/a1,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a1
    dbra d7,loc_0133ec
    movem.l (a7)+,d7
    rts

;====================
loc_013406:;Select Palette Load
    lea loc_0c146e,a0
    move.w ($1c,a6),d0
    lsr.w #1,d0
    ext.l d0
    divu.w #$1c,d0 
    swap d0
    lsl.w #5,d0
    lea (a0,d0.w),a0
    move.w #$14,-(a7)
    move.l a0,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7
    jsr loc_013466(pc)
    rts

;------------------------------
loc_013436:;Cpu Arcade Palette Load
    lea loc_0c17ee,a0
    move.w ($1c,a6),d0
    lsr.w #1,d0
    ext.l d0
    divu.w #$1c,d0 
    swap d0
    lsl.w #5,d0
    lea (a0,d0.w),a0
    move.w #$14,-(a7)
    move.l a0,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7
    jsr loc_013466(pc)
    rts

;-------------------------
loc_013466:
    movem.l d7/a6,-(a7)
    suba.w #$20,a7
    movea.l a7,a3
    movea.l a3,a1
    move #$7,d7

loc_013476:;clear stack
    clr.l (a1)+
    dbra d7,loc_013476

    move.w #8,-(a7)
    move.l a3,-(a7)
    move.l a0,-(a7)
    move.l a3,-(a7)
    jsr loc_007884
    lea ($e,a7),a7

    move.w #$15,-(a7)
    move.l a3,-(a7)
    jsr loc_0075ac
    lea (6,a7),a7
    adda.w #$20,a7
    movem.l (a7)+,d7/a6
    rts

loc_0134aa:
    movem.l d7,-(a7)
    move.w #0,d0
    move.w ($16,a6),d1
    sub.w ($14,a6),d1
    cmp.w d1,d7
    bge.b loc_0134ec
    btst #0,(-$f38,a5)
    beq.b loc_0134d8
    move.b (-$53d1,a5),d1
    move.b (-$53cd,a5),d2
    jsr loc_0134f2(pc)
    cmpi.w #$1,d0
    beq.b loc_0134ec

loc_0134d8:
    btst #1,(-$f38,a5)
    beq.b loc_0134ec
    move.b (-$53d0,a5),d1
    move.b (-$53cc,a5),d2
    jsr loc_0134f2(pc)

loc_0134ec:
    movem.l (a7)+,d7
    rts

;-----------------
loc_0134f2:
    clr.w d3
    move.w #3,d7

loc_0134f8:
    lsl.b #1,d1
    bcc.b loc_0134fe
    addq.w #1,d3
    
loc_0134fe:
    dbra d7,loc_0134f8
    cmpi.w #2,d3
    bcs.b loc_01350e
    move.w #1,d0
    bra.b loc_013518

loc_01350e:
    andi.b #$f0,d2 
    beq.b loc_013518
    move.w #1,d0

loc_013518:
    rts

;----------------------
;Bai-Hu Cutscene
;----------------------
loc_01351a:
    jsr loc_0135bc(pc)
    move.w ($12,a6), d7

loc_013522:
    jsr loc_013832(pc)
    jsr loc_0139ac(pc)
    jsr loc_0136ac(pc)
    tst.w ($1e,a6)
    bne.b loc_01355c
    jsr loc_0137e2(pc)                      
    jsr loc_0137f6(pc)                      
    jsr loc_01384a(pc)                      
    jsr loc_0139c4(pc)                      
    trap #5                             
    jsr loc_013dce(pc)                      
    cmpi.w #1, d0                       
    bne.b loc_013556    
    move.w #4, ($1e,a6)                 

loc_013556:
    addq.w #1, ($1c,a6)                 
    bra.b loc_013564  

loc_01355c:
    subq.w #1, ($1e,a6)                 
    jsr loc_0137ec(pc)

loc_013564:                  
    dbra d7, loc_013522    
    move.w ($10,a6), d7

loc_01356c:               
    jsr loc_0136ac(pc)                      
    tst.w ($1e,a6)                       
    bne.b loc_0135a2
    jsr loc_013cd8(pc)                      
    jsr loc_013d90(pc)                      
    jsr loc_0137e2(pc)                      
    jsr loc_0137f6(pc)                      
    jsr loc_013af8(pc)                      
    trap #5                             
    jsr loc_013dce(pc)                      
    cmpi.w #1, d0                       
    bne.b loc_01359c  
    move.w #4, ($1e,a6)     

loc_01359c:            
    addq.w #1, ($1c,a6)                 
    bra.b loc_0135aa

loc_0135a2:
    subq.w #1, ($1e,a6)                 
    jsr loc_0137ec(pc)

loc_0135aa:                      
    dbra d7, loc_01356c                      
    move.w #$607, -(a7)                  
    jsr loc_006fec    
    addq.l #2, a7                       
    rts   

;--------------------------------
loc_0135bc:
    move.w #$20, -(a7)
    jsr loc_006fec
    addq.l #2,a7
    move.w #$18ad,-(a7)
    jsr loc_006fec
    addq.l #2, a7
    move.w #$10, -(a7)
    move.l #loc_092888,-(a7)
    jsr loc_007554
    lea (6,a7), a7
    move.w #0, (-$4234,a5)
    cmpi.w #$3,(-$7f94,a5)
    beq.b loc_013604
    move.w #$b3,($12,a6)
    move.w #$167,($10,a6)
    bra.b loc_013610

loc_013604:
    move.w #$95,($12,a6)
    move.w #$12b,($10,a6)

loc_013610:
    jsr loc_012a9e(pc)
    jsr loc_013aee(pc)
    jsr loc_013c48(pc)
    clr.w ($1e,a6)
    clr.w ($20,a6)
    clr.w ($22,a6)
    clr.w ($1c,a6)
    move.b #1, (-$f90,a5)
    trap #5
    movem.l d0/d1/d2/d3/a0/a1, -(a7)
    move.w #0, -(a7)
    move.l #loc_013658,-(a7)
    clr.w -(a7)
    move.w #$701e, -(a7)
    jsr loc_005f2c
    lea ($a,a7),a7                      
    movem.l (a7)+, d0/d1/d2/d3/a0/a1           
    rts          

;/\/\/\/\/\/\/\/\/\/\/\
loc_013658:
    dc.w $0000,$0027
    dcb.w $28,$f020

;--------------------------
loc_0136ac:
    move.w ($1c,a6), d0
    andi.w #$ff, d0
    bne.b loc_0136d6
    jsr loc_0071e0
    move.w #0, -(a7)
    move.w #$37, -(a7)
    move.l #loc_0c20ee, -(a7)
    jsr loc_0076e0
    lea (8,a7), a7
    rts

loc_0136d6:
    cmpi.w #$20,d0
    bne.b loc_0136fc
    jsr loc_0071e0
    move.w #0,-(a7)
    move.w #$37, -(a7)
    move.l #loc_0c210e, -(a7)
    jsr loc_0076e0.l     
    lea (8,a7), a7
    rts

loc_0136fc:
    cmpi.w #$40, d0
    bne.b loc_013722
    jsr loc_0071e0
    move.w #0,-(a7)
    move.w #$37,-(a7)
    move.l #loc_0c212e, -(a7)
    jsr loc_0076e0
    lea (8,a7),a7
    rts

loc_013722:
    cmpi.w #$60, d0
    bne.b loc_013748
    jsr loc_0071e0
    move.w #0, -(a7)
    move.w #$37, -(a7)
    move.l #loc_0c204e, -(a7)
    jsr loc_0076e0
    lea (8,a7), a7                      
    rts

loc_013748:
    cmpi.w #$80, d0
    bne.b loc_01376e
    jsr loc_0071e0
    move.w #0, -(a7)
    move.w #$37, -(a7)
    move.l #loc_0c20ee, -(a7)
    jsr loc_0076e0
    lea (8,a7),a7
    rts

loc_01376e:
    cmpi.w #$a0, d0
    bne.b loc_013794
    jsr loc_0071e0
    move.w #0,-(a7)
    move.w #$37, -(a7)
    move.l #loc_0c210e, -(a7)
    jsr loc_0076e0
    lea (8,a7),a7
    rts

loc_013794:
    cmpi.w #$c0,d0
    bne.b loc_0137ba
    jsr loc_0071e0 
    move.w #0,-(a7)
    move.w #$37,-(a7)
    move.l #loc_0c212e,-(a7)
    jsr loc_0076e0     
    lea (8,a7),a7
    rts

loc_0137ba:
    cmpi.w #$e0,d0
    bne.b loc_0137e0
    jsr loc_0071e0
    move.w #0,-(a7)
    move.w #$37,-(a7)
    move.l #loc_0c204e,-(a7)
    jsr loc_0076e0
    lea (8,a7),a7
    rts

loc_0137e0:
    rts

;--------------------------
loc_0137e2:
    addq.w #2,($20,a6)
    addq.w #3,($22,a6)
    rts

;--------------------------
loc_0137ec:
    subq.w #1,($20,a6)
    addq.w #1,($22,a6)
    rts

;--------------------------
loc_0137f6:
    movem.l d7/a6,-(a7)
    lea loc_092b0c,a0
    lea loc_092b10,a1
    lea loc_092b14,a2
    lea loc_092b18,a3
    movea.l (a0),a0
    movea.l (a1),a1
    movea.l (a2),a2
    movea.l (a3),a3
    move.w ($20,a6),d0
    move.w ($22,a6),d1
    move.w #$3800,d2
    jsr loc_005844
    movem.l (a7)+,d7/a6
    rts

;--------------------------
loc_013832:
    move.w d7,d1                        
    muls.w #$2e0,d1                     
    divu.w ($12,a6),d1                  
    move.w #$a0,d0                      
    move.w d0,(2,a6)                   
    move.w d1,(4,a6)                   
    rts

;--------------------------
loc_01384a:
    movem.l d7,-(a7)                    
    jsr loc_013864(pc)                      
    jsr loc_0138b6(pc)                      
    jsr loc_013908(pc)                      
    jsr loc_01395a(pc)                      
    movem.l (a7)+,d7                    
    rts

;--------------------------
loc_013864:
    movem.l d7/a6, -(a7)                 
    move.w (4,a6), d0                   
    cmpi.w #$100, d0                     
    bgt.b loc_0138b0
    cmpi.w #-$100, d0                    
    ble.b loc_0138b0   
    move.w (2,a6),d0
    move.w (4,a6),d1
    subi.w #0,d1
    neg.w d1
    addi.w #$60,d1
    move.w #$800,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_092b3c, a4
    moveq #0,d7

loc_01389c:
    movea.l (a4)+, a0
    movem.l d0/d1/d2/d3/d4/d5/d7,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7
    dbra d7,loc_01389c
                  
loc_0138b0:
    movem.l (a7)+, d7/a6
    rts

;--------------------------                      
loc_0138b6:
    movem.l d7/a6,-(a7)
    move.w (4,a6),d0
    cmpi.w #$200,d0
    bgt.b loc_013902
    cmpi.w #0,d0
    ble.b loc_013902
    move.w (2,a6),d0
    move.w (4,a6),d1
    subi.w #$100,d1
    neg.w d1
    addi.w #$60,d1
    move.w #$800,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_092b40,a4
    moveq #0,d7

loc_0138ee:
    movea.l (a4)+, a0
    movem.l d0/d1/d2/d3/d4/d5/d7,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7
    dbra d7,loc_0138ee

loc_013902:
    movem.l (a7)+,d7/a6
    rts

;--------------------------                      
loc_013908:
    movem.l d7/a6,-(a7)
    move.w (4,a6),d0
    cmpi.w #$300,d0
    bgt.b loc_013954
    cmpi.w #$100,d0
    ble.b loc_013954
    move.w (2,a6),d0
    move.w (4,a6),d1
    subi.w #$200,d1
    neg.w d1
    addi.w #$60,d1
    move.w #$800,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_092b44,a4
    moveq #0,d7                          

loc_013940:
    movea.l (a4)+, a0
    movem.l d0/d1/d2/d3/d4/d5/d7,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7        
    dbra d7, loc_013940                      

loc_013954:
    movem.l (a7)+,d7/a6                 
    rts   

;--------------------------                      
loc_01395a:
    movem.l d7/a6,-(a7)
    move.w (4,a6),d0
    cmpi.w #$400,d0
    bgt.b loc_0139a6
    cmpi.w #$200,d0
    ble.b loc_0139a6
    move.w (2,a6),d0
    move.w (4,a6),d1
    subi.w #$300,d1
    neg.w d1
    addi.w #$60,d1
    move.w #$800,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_092b48,a4
    moveq #0,d7

loc_013992:
    movea.l (a4)+, a0
    movem.l d0/d1/d2/d3/d4/d5/d7,-(a7)
    jsr loc_004850
    movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7
    dbra d7,loc_013992

loc_0139a6:
    movem.l (a7)+,d7/a6                 
    rts 

;--------------------------
loc_0139ac:
    move.w d7,d1
    muls.w #$2e0,d1
    divu.w ($12,a6),d1
    move.w #$9f,d0
    move.w d0,(6,a6)
    move.w d1,(8,a6)
    rts

;-------------------------
loc_0139c4:
    movem.l d7/a6, -(a7)
    jsr loc_0139de(pc)
    jsr loc_013a22(pc)
    jsr loc_013a66(pc)
    jsr loc_013aaa(pc)
    movem.l (a7)+, d7/a6
    rts 

;======================
loc_0139de:
    movem.l d7/a6,-(a7)
    move.w (8,a6),d0
    cmpi.w #$100,d0
    bgt.b loc_013a1c
    cmpi.w #-$100,d0
    ble.b loc_013a1c
    move.w (6,a6),d0
    move.w (8,a6),d1
    subi.w #0,d1
    neg.w d1
    addi.w #$60, d1
    move.w #$3700, d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_092b1c, a4
    movea.l (a4)+, a0
    jsr loc_0041d8

loc_013a1c:
    movem.l (a7)+, d7/a6
    rts

;======================
loc_013a22:
    movem.l d7/a6,-(a7)
    move.w (8,a6),d0
    cmpi.w #$200,d0
    bgt.b loc_013a60
    cmpi.w #0,d0
    ble.b loc_013a60
    move.w (6,a6),d0
    move.w (8,a6),d1
    subi.w #$100,d1
    neg.w d1
    addi.w #$60, d1
    move.w #$3700, d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_092b20, a4
    movea.l (a4)+, a0
    jsr loc_0041d8

loc_013a60:
    movem.l (a7)+, d7/a6
    rts

;======================
loc_013a66:
    movem.l d7/a6,-(a7)
    move.w (8,a6),d0
    cmpi.w #$300,d0
    bgt.b loc_013aa4
    cmpi.w #$100,d0
    ble.b loc_013aa4
    move.w (6,a6),d0
    move.w (8,a6),d1
    subi.w #$200,d1
    neg.w d1
    addi.w #$60, d1
    move.w #$3700, d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_092b24, a4
    movea.l (a4)+, a0
    jsr loc_0041d8

loc_013aa4:
    movem.l (a7)+, d7/a6
    rts

;======================
loc_013aaa:
    movem.l d7/a6,-(a7)
    move.w (8,a6),d0
    cmpi.w #$400,d0
    bgt.b loc_013ae8
    cmpi.w #$200,d0
    ble.b loc_013ae8
    move.w (6,a6),d0
    move.w (8,a6),d1
    subi.w #$300,d1
    neg.w d1
    addi.w #$60, d1
    move.w #$3700, d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_092b28,a4
    movea.l (a4)+,a0
    jsr loc_0041d8

loc_013ae8:
    movem.l (a7)+, d7/a6
    rts

;---------------------------
loc_013aee:
    clr.w ($18,a6)
    clr.w ($1a,a6)
    rts

;--------------------------
loc_013af8:
    movem.l d7/a6, -(a7)
    lea loc_013c06(pc),a2
    move.w (a2)+,d6
    tst.w ($1a,a6)
    bne.b loc_013b18
    addq.w #1,($18,a6)
    cmp.w ($18,a6), d6
    bcc.b loc_013b18
    move.w #$1, ($18,a6)

loc_013b18:
    move.w ($18,a6),d1
    subq.w #1,d1
    lsl.w #3,d1
    lea (a2,d1.w),a2
    move.w ($18,a6), d1
    cmpi.w #1,d1
    bne.b loc_013b3c
    move.w #$18ae, -(a7)
    jsr loc_006fec
    addq.l #2,a7
    bra.b loc_013b4e

loc_013b3c:
    cmpi.w #7, d1
    bne.b loc_013b4e
    move.w #$1865, -(a7)
    jsr loc_006fec
    addq.l #2, a7

loc_013b4e:
    tst.w ($1a,a6)
    bne.b loc_013b5a
    move.w (0,a2),($1a,a6)

loc_013b5a:
    tst.w ($1a,a6)
    bmi.b loc_013b64
    subq.w #1,($1a,a6)

loc_013b64:
    move.w (6,a2),d6
    bmi.b loc_013b9c
    lea loc_092b3c,a1
    subq.w #1,d6
    add.w d6,d6
    add.w d6,d6
    ext.l d6
    adda.l d6,a1
    move.w #$a0,d0
    move.w #$60,d1
    move.w #$800,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a1),a0
    movem.l a2,-(a7)
    jsr loc_004850
    movem.l (a7)+,a2

loc_013b9c:
    move.w (2,a2),d6
    lea loc_092b3c,a1
    subq.w #1,d6
    add.w d6,d6
    add.w d6,d6
    ext.l d6
    adda.l d6,a1
    move.w #$a0,d0
    move.w #$60,d1
    move.w #$800,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a1),a0
    movem.l a2,-(a7)
    jsr loc_004850 
    movem.l (a7)+,a2
    move.w (4,a2),d6
    lea loc_092b0c,a1
    subq.w #1,d6
    add.w d6,d6
    add.w d6,d6
    ext.l d6
    adda.l d6,a1
    move.w #$a0,d0
    move.w #$60,d1
    move.w #$3700,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    movea.l (a1),a0
    jsr loc_0041d8
    movem.l (a7)+,d7/a6
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;scripting
loc_013c06:
    dc.w $0008,$0001,$0005,$0009,$ffff,$0003,$0005,$0009
    dc.w $ffff,$0004,$0006,$000a,$ffff,$0004,$0007,$000b
    dc.w $ffff,$0018,$0008,$000c,$ffff,$0003,$0008,$000c
    dc.w $0009,$0001,$0008,$000c,$000a,$ffff,$0008,$000c
    dc.w $000a

;--------------------------
loc_013c48:
    movem.l d7/a6, -(a7)
    btst #1,(-$f38,a5)
    beq.b loc_013c5a
    move.w (p2ida5,a5),d0
    bra.b loc_013c5e

loc_013c5a:
    move.w (p1ida5,a5),d0

loc_013c5e:
    add.w d0,d0
    cmpi.w #1,(-$7f94,a5)
    bne.b loc_013c6e
    lea loc_013cb0(pc),a1
    bra.b loc_013c72
 
loc_013c6e:
    lea loc_013cc4(pc),a1

loc_013c72:
    move.b (a1,d0.w),d1
    move.b (1,a1,d0.w),d7
    andi.w #$ff,d1
    andi.w #$ff,d7
    sub.w d1,d7
    move.w d1,($24,a6)
    move.w d7,($26,a6)
    move.w d7,d1
    add.w d1,d1
    move.b loc_013caa(pc,d1.w),d2
    move.b loc_013caa+1(pc,d1.w),d6
    ext.w d2
    ext.w d6
    move.w d2,($28,a6)
    move.w d6,($2a,a6)
    movem.l (a7)+,d7/a6
    rts

;----------------------
loc_013caa:
    dc.b $e5,$00,$da,$16,$d5,$10

loc_013cb0:
    dc.b $01,$03,$04,$06,$10,$12,$16,$18
    dc.b $0d,$0f,$13,$15,$07,$09,$0a,$0c
    dc.b $00,$00,$31,$33

loc_013cc4:
    dc.b $19,$1b,$1c,$1e,$1f,$21,$22,$24
    dc.b $25,$27,$28,$2a,$2b,$2d,$2e,$30
    dc.b $00,$00,$34,$36

;----------------------
loc_013cd8:
    cmpi.w #8,($18,a6)
    bcc.b loc_013ce2
    rts

loc_013ce2:
    cmpi.w #1,(-$7f94,a5)
    bne.b loc_013d3e
    movem.l d7/a6,-(a7)
    lea loc_092b64,a1
    move.w ($24,a6),d1
    subq.w #1,d1
    add.w d1,d1
    add.w d1,d1
    ext.l d1
    adda.l d1,a1
    move.w #$a0,d0
    move.w ($28,a6),d1
    addi.w #$d4,d1
    move.w #$3900,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    move.w ($2a,a6),d6
    move.w ($26,a6),d7

loc_013d20:
    movea.l (a1)+,a0
    movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1,-(a7)
    moveq #-$1,d6
    jsr loc_005638
    movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1
    add.w d6,d1
    dbra d7,loc_013d20
    movem.l (a7)+,d7/a6
    rts

loc_013d3e:
    movem.l d7/a6,-(a7)
    lea loc_092b64,a1
    move.w ($24,a6),d1
    subq.w #1,d1
    add.w d1,d1
    add.w d1,d1
    ext.l d1
    adda.l d1,a1
    move.w #$a0,d0
    move.w ($28,a6),d1
    addi.w #$d4,d1
    move.w #$3b00,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    move.w ($2a,a6),d6
    move.w ($26,a6),d7

loc_013d74:
    movea.l (a1)+,a0                    
    movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1,-(a7)           
    jsr loc_0041d8
    movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1         
    add.w d6,d1                         
    dbra d7,loc_013d74                      
    movem.l (a7)+,d7/a6                 
    rts

;----------------------
loc_013d90:
    cmpi.w #8,($18,a6)
    bcc.b loc_013d9a
    rts

loc_013d9a:
    movem.l d7/a6,-(a7)
    move.w #0,d0
    move.w #$9e,d1
    move.w #$3a00,d2
    btst #0,d7
    beq.b loc_013db6
    move.w #$80,d3
    bra.b loc_013dba

loc_013db6:
    move.w #$88,d3

loc_013dba:
    move.w #$140,d4
    move.w #$36,d5
    jsr loc_00501a 
    movem.l (a7)+,d7/a6
    rts

;----------------------------
loc_013dce:
    movem.l d7,-(a7)
    move.w #0,d0
    clr.w d1
    btst #0,(-$f38,a5)
    beq.b loc_013de4
    move.b (-$53d1,a5),d1

loc_013de4:
    btst #1,(-$f38,a5)
    beq.b loc_013df0
    or.b (-$53d0,a5),d1
 
loc_013df0: 
    andi.w #$f0,d1
    beq.b loc_013dfa
    move.w #1,d0

loc_013dfa:
    movem.l (a7)+,d7                    
    rts

;13e00