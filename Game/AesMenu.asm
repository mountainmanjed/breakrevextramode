loc_01b988:
    jsr loc_01b99a(pc)
    jsr loc_01b9cc(pc)
    jsr loc_01ba02(pc)
    jsr loc_01b9b8(pc)
    rts

;--------------------------
loc_01b99a:
    move.w #$22,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    lea ($27fa,a5),a6
    move.w #0,(-$4234,a5)
    move.w (-$7f80,a5),(0,a6)
    rts

loc_01b9b8:
    jsr loc_003a16
    jsr loc_005ce8
    jsr loc_0071e0
    rts

;--------------------------
loc_01b9cc:
    move.w #$10,d0
    jsr loc_00d748
    move.w #$18,d0
    jsr loc_00d778

    move.w #$1f,-(a7)
    move.l #loc_096e4c,-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

    clr.w ($4,a6)
    clr.b ($7,a6)
    clr.w ($1a,a6)
    rts

;--------------------------
loc_01ba02:
    moveq #0,d7

loc_01ba04:
    addq.w #1,($1a,a6)
    jsr loc_01ba4a(pc)
    jsr loc_01ba80(pc)
    jsr loc_01ce5e(pc)
    jsr loc_01bb0a(pc)
    move.w #0,d0
    jsr loc_00d7c0
    trap #5
    jsr loc_01cee0(pc)
    jsr loc_01bb3e(pc)
    tst.w d0
    bmi.b loc_01ba48
    beq.b loc_01ba40
    jsr loc_01bb82(pc)
    jsr loc_01bba6(pc)
    clr.b ($7,a6)
    moveq #0,d7

loc_01ba40:
    addq.w #1,d7
    andi.w #$fff,d7
    bra.b loc_01ba04

loc_01ba48:
    rts

;--------------------------
loc_01ba4a:
    move.b (5,a6),d6
    btst #0,d6
    beq.b loc_01ba66
    move.b #0,(7,a6)
    move.w #$1869,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01ba66:
    btst #1,d6
    beq.b loc_01ba7e
    move.b #1,(7,a6)
    move.w #$1869,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01ba7e:
    rts

;--------------------------
loc_01ba80:
    movem.l d7/a6,-(a7)
    lea loc_01baf6(pc),a0
    move.w #$a0,d0
    move.w #$ac,d1
    tst.b (7,a6)
    bne.b loc_01ba9c
    move.w #1,d2
    bra.b loc_01baa0

loc_01ba9c:
    move.w #0,d2

loc_01baa0:
    move.w #0,d3
    move.w #1,d4
    movem.l d0/d3-d4,-(a7)
    jsr loc_005426
    tst.b (7,a6)
    bne.b loc_01bac0
    move.w d0,($12,a6)
    move.w d1,($14,a6)

loc_01bac0:
    movem.l (a7)+, d0/d3-d4
    lea loc_01bb02(pc),a0
    move.w #$bc,d1
    tst.b (7,a6)
    beq.b loc_01bad8
    move.w #1,d2
    bra.b loc_01badc

loc_01bad8:
    move.w #0,d2

loc_01badc:
    jsr loc_005426
    tst.b (7,a6)
    beq.b loc_01baf0
    move.w d0,($12,a6)
    move.w d1,($14,a6)

loc_01baf0:
    movem.l (a7)+,d7/a6
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01baf6:
    dc.b 'GAME START',$00
    even

loc_01bb02:
    dc.b 'OPTION',$00
    even

;--------------------------
loc_01bb0a:
    movem.l d7/a6,-(a7)
    move.w #$50,d0
    move.w #$98,d1
    move.w #$1f00,d2
    btst #0,d7
    beq.b loc_01bb26
    move.w #$80,d3
    bra.b loc_01bb2a

loc_01bb26:
    move.w #$88,d3

loc_01bb2a:
    move.w #$a0,d4
    move.w #$28,d5
    jsr loc_00501a
    movem.l (a7)+,d7/a6
    rts

;------------------------------
loc_01bb3e:
    moveq #0,d0
    cmpi.w #$c,d7
    bcs.b loc_01bb80
    move.b (4,a6),d6
    andi.b #5,d6
    bne.b loc_01bb5c
    move.b (5,a6),d6
    andi.b #$f0,d6
    bne.b loc_01bb5c
    bra.b loc_01bb80

loc_01bb5c:
    tst.b (7,a6)
    bne.b loc_01bb72
    moveq #-1,d0
    move.w #$186b,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    bra.b loc_01bb80

loc_01bb72:
    moveq #1,d0
    move.w #$186b,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01bb80:
    rts

;--------------------------
loc_01bb82:
    move.w #$18,d0
    jsr loc_00d778
    clr.w ($4,a6)
    clr.b ($8,a6)
    clr.w ($1a,a6)
    clr.w ($c,a6)
    clr.w ($e,a6)
    clr.w ($10,a6)
    rts

;--------------------------
loc_01bba6:
    moveq #0,d7

loc_01bba8:
    addq.w #1,($1a,a6)
    jsr loc_01bc2e(pc)
    jsr loc_01bc76(pc)
    jsr loc_01bcca(pc)
    jsr loc_01bd1e(pc)
    jsr loc_01bd72(pc)
    jsr loc_01bdc6(pc)
    jsr loc_01bdec(pc)
    jsr loc_01be18(pc)
    jsr loc_01befa(pc)
    jsr loc_01bfc6(pc)
    jsr loc_01c06a(pc)
    jsr loc_01c0e0(pc)
    jsr loc_01c12a(pc)
    jsr loc_01c17a(pc)
    jsr loc_01ce5e(pc)
    jsr loc_01c1be(pc)
    jsr loc_01d014(pc)
    trap #5
    jsr loc_01cee0(pc)
    jsr loc_01c1f2(pc)
    tst.w d0
    bmi.b loc_01bc28
    cmpi.w #1,d0
    bne.b loc_01bc10
    jsr loc_01c26a(pc)
    jsr loc_01c278(pc)
    moveq #0,d7
    bra.b loc_01bc20

loc_01bc10:
    cmpi.w #2,d0
    bne.b loc_01bc20
    jsr loc_01c728(pc)
    jsr loc_01c73e(pc)
    moveq #0,d7

loc_01bc20:
    addq.w #1,d7
    andi.w #$fff,d7
    bra.b loc_01bba8

loc_01bc28:
    clr.w (4,a6)
    rts

;--------------------------
loc_01bc2e:
    move.b (8,a6),d0
    move.b (5,a6),d6
    btst #0,d6
    beq.b loc_01bc4a
    subq.b #1,d0
    move.w #$1869,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01bc4a:
    btst #1,d6
    beq.b loc_01bc5e
    addq.b #1,d0
    move.w #$1869,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01bc5e:
    tst.b d0
    bpl.b loc_01bc68
    move.b #6,d0
    bra.b loc_01bc70

loc_01bc68:
    cmpi.b #6,d0
    bls.b loc_01bc70
    clr.b d0

loc_01bc70:
    move.b d0,(8,a6)
    rts

;--------------------------
loc_01bc76:
    cmpi.b #0,(8,a6)
    beq.b loc_01bc80
    rts

loc_01bc80:
    move.b (-$7fa0,a5),d0
    move.b (5,a6),d6
    btst #2,d6
    beq.b loc_01bc9e
    subq.b #1,d0
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    bra.b loc_01bcb2

loc_01bc9e:
    btst #3,d6
    beq.b loc_01bcb2
    addq.b #1,d0
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01bcb2:
    tst.b d0
    bpl.b loc_01bcbc
    move.b #7,d0
    bra.b loc_01bcc4

loc_01bcbc:
    cmpi.b #7,d0
    ble.b loc_01bcc4
    moveq #0,d0

loc_01bcc4:
    move.b d0,(-$7fa0,a5)
    rts

;--------------------------
loc_01bcca:
    cmpi.b #1,(8,a6)
    beq.b loc_01bcd4
    rts

loc_01bcd4:
    move.b (-$7f9f,a5),d0
    move.b (5,a6),d6
    btst #2, d6
    beq.b loc_01bcf2
    subq.b #1,d0
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    bra.b loc_01bd06

loc_01bcf2:
    btst #3,d6
    beq.b loc_01bd06
    addq.b #1,d0
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01bd06:
    tst.b d0
    bpl.b loc_01bd10
    move.b #5,d0
    bra.b loc_01bd18

loc_01bd10:
    cmpi.b #5,d0
    ble.b loc_01bd18
    moveq #0,d0

loc_01bd18:
    move.b d0,(-$7f9f,a5)
    rts

;--------------------------
loc_01bd1e:
    cmpi.b #2,(8,a6)
    beq.b loc_01bd28
    rts

loc_01bd28:
    move.b (-$7f9e,a5),d0
    move.b ($5,a6),d6
    btst #2,d6
    beq.b loc_01bd46
    subq.b #1,d0
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    bra.b loc_01bd5a

loc_01bd46:
    btst #3,d6
    beq.b loc_01bd5a
    addq.b #1,d0
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01bd5a:
    tst.b d0
    bpl.b loc_01bd64
    move.b #2,d0
    bra.b loc_01bd6c

loc_01bd64:
    cmpi.b #2,d0
    ble.b loc_01bd6c
    moveq #0,d0

loc_01bd6c:
    move.b d0,(-$7f9e,a5)
    rts

;--------------------------
loc_01bd72:
    cmpi.b #3,(8,a6)
    beq.b loc_01bd7c
    rts

loc_01bd7c:
    move.b (-$7f9d,a5),d0
    move.b (5,a6),d6
    btst #2,d6
    beq.b loc_01bd9a
    subq.b #1,d0
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    bra.b loc_01bdae

loc_01bd9a:
    btst #3,d6
    beq.b loc_01bdae
    addq.b #1,d0
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01bdae:
    tst.b d0
    bpl.b loc_01bdb8
    move.b #2,d0
    bra.b loc_01bdc0

loc_01bdb8:
    cmpi.b #2,d0
    ble.b loc_01bdc0
    moveq #0,d0

loc_01bdc0:
    move.b d0,(-$7f9d,a5)
    rts

;--------------------------
loc_01bdc6:
    moveq #0,d0
    move.b (-$7fa0,a5),d0
    move.w d0,(DifficultyLvl,a5)
    move.b (-$7f9f,a5),d0
    jsr loc_001c08
    move.w d0,(-$7f90,a5)
    move.b (-$7f9e,a5),(-$7f8c,a5)
    move.b (-$7f9d,a5),(-$7f8b,a5)
    rts

;--------------------------
loc_01bdec:
    lea loc_01be0c(pc),a0
    move.w #$a0,d0
    move.w #$28,d1
    move.w #5,d2
    move.w #1,d3
    move.w #1,d4
    jsr loc_005426
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01be0c:
    dc.b 'OPTION MENU',00
    even

;--------------------------
loc_01be18:
    lea loc_01be80(pc),a0
    move.w #$a4,d0
    move.w #$48,d1
    cmpi.b #0,(8,a6)
    bne.b loc_01be32
    move.w #1,d2
    bra.b loc_01be36

loc_01be32:
    move.w #4,d2

loc_01be36:
    move.w #0,d3
    move.w #2,d4
    jsr loc_005426
    cmpi.b #0,(8,a6)
    bne.b loc_01be54
    move.w d0,($12,a6)
    move.w d1,($14,a6)

loc_01be54:
    move.b (-$7fa0,a5),d0
    ext.w d0
    add.w d0,d0
    move.w loc_01be8a(pc,d0.w),d0
    lea loc_01be8a(pc,d0.w),a0
    move.w #$b0,d0
    move.w #$48,d1
    move.w #0,d2
    move.w #0,d3
    move.w #0,d4
    jsr loc_005426
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01be80:
    dc.b 'DIFFICULTY',$00
    even

loc_01be8a:
    dc.w loc_01be9c-loc_01be8a
    dc.w loc_01beaa-loc_01be8a
    dc.w loc_01beb8-loc_01be8a
    dc.w loc_01bec2-loc_01be8a
    dc.w loc_01bece-loc_01be8a
    dc.w loc_01bed6-loc_01be8a
    dc.w loc_01bee0-loc_01be8a
    dc.w loc_01beee-loc_01be8a

loc_01be9c:
    dc.b '1 : beginner',$00
    even

loc_01beaa:
    dc.b '2 : very easy',$00
    even

loc_01beb8
    dc.b '3 : easy',$00
    even

loc_01bec2:
    dc.b '4 : normal',$00
    even

loc_01bece:
    dc.b '5 : MVS',$00
    even

loc_01bed6:
    dc.b '6 : hard',$00
    even

loc_01bee0:
    dc.b '7 : very hard',$00
    even

loc_01beee:
    dc.b '8 : expert',$00
    even

;--------------------------
loc_01befa:
    lea loc_01bf62(pc),a0
    move.w #$a4,d0
    move.w #$58,d1
    cmpi.b #1,($8,a6)
    bne.b loc_01bf14
    move.w #1,d2
    bra.b loc_01bf18

loc_01bf14:
    move.w #4,d2

loc_01bf18:
    move.w #0,d3
    move.w #2,d4
    jsr loc_005426
    cmpi.b #1,(8,a6)
    bne.b loc_01bf36
    move.w d0,($12,a6)
    move.w d1,($14,a6)

loc_01bf36:
    move.b (-$7f9f,a5),d0
    ext.w d0
    add.w d0,d0
    move.w loc_01bf6e(pc,d0.w),d0
    lea loc_01bf6e(pc,d0.w),a0
    move.w #$b0,d0
    move.w #$58,d1
    move.w #0,d2
    move.w #0,d3
    move.w #0,d4
    jsr loc_005426
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01bf62:
    dc.b 'TIMER SPEED',00
    even

loc_01bf6e:
    dc.w loc_01bf7a-loc_01bf6e
    dc.w loc_01bf88-loc_01bf6e
    dc.w loc_01bf92-loc_01bf6e
    dc.w loc_01bf9e-loc_01bf6e
    dc.w loc_01bfa8-loc_01bf6e
    dc.w loc_01bfb6-loc_01bf6e

loc_01bf7a:
    dc.b '1 : very slow',00
    even

loc_01bf88
    dc.b '2 : slow',00
    even

loc_01bf92
    dc.b '3 : normal',00
    even

loc_01bf9e:
    dc.b '4 : fast',00
    even

loc_01bfa8:
    dc.b '5 : very fast',00
    even

loc_01bfb6:
    dc.b '6 : super fast',00
    even

;--------------------------
loc_01bfc6:
    lea loc_01c02e(pc),a0
    move.w #$a4,d0
    move.w #$68,d1
    cmpi.b #2,(8,a6)
    bne.b loc_01bfe0
    move.w #1,d2
    bra.b loc_01bfe4

loc_01bfe0:
    move.w #4,d2

loc_01bfe4:
    move.w #0,d3
    move.w #2,d4
    jsr loc_005426
    cmpi.b #2,(8,a6)
    bne.b loc_01c002
    move.w d0,($12,a6)
    move.w d1,($14,a6)

loc_01c002:
    clr.w d0
    move.b (-$7f9e,a5),d0
    add.w d0,d0
    move.w loc_01c048(pc,d0.w),d0
    lea loc_01c048(pc,d0.w),a0
    move.w #$b0,d0
    move.w #$68,d1
    move.w #0,d2
    move.w #0,d3
    move.w #0,d4
    jsr loc_005426
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01c02e:
    dc.b 'VS CPU ROUND',00
    even

loc_01c03c:
    dc.b $01,$03,$05,00
    even

loc_01c040:
    dc.b 'rounds',00
    even

loc_01c048:
    dc.w loc_01c04e-loc_01c048
    dc.w loc_01c056-loc_01c048
    dc.w loc_01c060-loc_01c048

loc_01c04e:
    dc.b '1 round',00
    even

loc_01c056:
    dc.b '3 rounds',00
    even

loc_01c060:
    dc.b '5 rounds',00
    even

;--------------------------
loc_01c06a:
    lea loc_01c0d2(pc),a0
    move.w #$a4,d0
    move.w #$78,d1
    cmpi.b #3,(8,a6)
    bne.b loc_01c084
    move.w #1,d2
    bra.b loc_01c088

loc_01c084:
    move.w #4,d2

loc_01c088:
    move.w #0,d3
    move.w #2,d4
    jsr loc_005426
    cmpi.b #3,(8,a6)
    bne.b loc_01c0a6
    move.w d0,($12,a6)
    move.w d1,($14,a6)

loc_01c0a6:
    clr.w d0
    move.b (-$7f9d,a5),d0
    add.w d0,d0
    move.w loc_01c048(pc,d0.w),d0
    lea loc_01c048(pc,d0.w),a0
    move.w #$b0,d0
    move.w #$78,d1
    move.w #0,d2
    move.w #0,d3
    move.w #0,d4
    jsr loc_005426
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01c0d2:
    dc.b 'VS MAN ROUND',00
    even

;--------------------------
loc_01c0e0:
    lea loc_01c11e(pc),a0
    move.w #$a0,d0
    move.w #$90,d1
    cmpi.b #4,(8,a6)
    bne.b loc_01c0fa
    move.w #1,d2
    bra.b loc_01c0fe

loc_01c0fa:
    move.w #6,d2

loc_01c0fe:
    move.w #0,d3
    move.w #1,d4
    jsr loc_005426
    cmpi.b #4,(8,a6)
    bne.b loc_01c11c
    move.w d0,($12,a6)
    move.w d1,($14,a6)

loc_01c11c:
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01c11e:
    dc.b 'SOUND TEST',$00
    even

;--------------------------
loc_01c12a:
    lea loc_01c168(pc),a0
    move.w #$a0,d0
    move.w #$a4,d1
    cmpi.b #5,(8,a6)
    bne.b loc_01c144
    move.w #1,d2
    bra.b loc_01c148

loc_01c144:
    move.w #6,d2

loc_01c148:
    move.w #0,d3
    move.w #1,d4
    jsr loc_005426
    cmpi.b #5,(8,a6)
    bne.b loc_01c166
    move.w d0,($12,a6)
    move.w d1,($14,a6)

loc_01c166:
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01c168:
    dc.b 'KEY CONFIGURATION',00
    even

;--------------------------
loc_01c17a:
    lea loc_01c1b8(pc),a0
    move.w #$a0,d0
    move.w #$bc,d1
    cmpi.b #6,(8,a6)
    bne.b loc_01c194
    move.w #1,d2
    bra.b loc_01c198

loc_01c194:
    move.w #6,d2

loc_01c198:
    move.w #0,d3
    move.w #1,d4
    jsr loc_005426
    cmpi.b #6,(8,a6)
    bne.b loc_01c1b6
    move.w d0,($12,a6)
    move.w d1,($14,a6)

loc_01c1b6:
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01c1b8:
    dc.b 'EXIT',00
    even

;--------------------------
loc_01c1be:
    movem.l d7/a6,-(a7)
    move.w #$14,d0
    move.w #$30,d1
    move.w #$1f00,d2
    btst #0,d7
    beq.b loc_01c1da
    move.w #$80,d3
    bra.b loc_01c1de

loc_01c1da:
    move.w #$88,d3

loc_01c1de:
    move.w #$118,d4
    move.w #$94,d5
    jsr loc_00501a
    movem.l (a7)+,d7/a6
    rts

;--------------------------
loc_01c1f2:
    moveq #0,d0
    cmpi.w #$c,d7
    bcc.b loc_01c1fc
    rts

loc_01c1fc:
    move.b (4,a6),d6
    andi.b #5,d6
    beq.b loc_01c216
    moveq #-1,d0
    move.w #$186b,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    rts

loc_01c216:
    move.b (5,a6),d6
    andi.b #$f0,d6
    beq.b loc_01c268
    cmpi.b #6,(8,a6)
    bne.b loc_01c238
    moveq #-1,d0
    move.w #$186b,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    rts

loc_01c238:
    cmpi.b #4,($8,a6)
    bne.b loc_01c250
    moveq #1,d0
    move.w #$186b,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    rts

loc_01c250:
    cmpi.b #5,(8,a6)
    bne.b loc_01c268
    moveq #2,d0
    move.w #$186b,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    rts

loc_01c268:
    rts

;--------------------------
loc_01c26a:
    clr.w (4,a6)
    clr.b (9,a6)
    clr.w ($1a,a6)
    rts

;--------------------------
loc_01c278:
    moveq #0,d7

loc_01c27a:
    addq.w #1,($1a,a6)
    jsr loc_01c2ca(pc)
    jsr loc_01c312(pc)
    jsr loc_01c36c(pc)
    jsr loc_01c3c6(pc)
    jsr loc_01c420(pc)
    jsr loc_01c440(pc)
    jsr loc_01c4c6(pc)
    jsr loc_01c548(pc)
    jsr loc_01c5dc(pc)
    jsr loc_01ce5e(pc)
    jsr loc_01c61a(pc)
    jsr loc_01d014(pc)
    trap #5
    jsr loc_01cee0(pc)
    jsr loc_01c64e(pc)
    tst.w d0
    bmi.b loc_01c2c4
    addq.w #$1,d7
    andi.w #$fff,d7
    bra.b loc_01c27a

loc_01c2c4:
    clr.w ($4,a6)
    rts

;--------------------------
loc_01c2ca:
    move.b (9,a6),d0
    move.b (5,a6),d6
    btst #0,d6
    beq.b loc_01c2e6
    subq.b #1,d0
    move.w #$1869,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c2e6
    btst #1,d6
    beq.b loc_01c2fa
    addq.b #1,d0
    move.w #$1869,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c2fa:
    tst.b d0
    bpl.b loc_01c304
    move.b #3,d0
    bra.b loc_01c30c

loc_01c304:
    cmpi.b #3,d0
    bls.b loc_01c30c
    clr.b d0

loc_01c30c:
    move.b d0,(9,a6)
    rts

;--------------------------
loc_01c312:
    cmpi.b #0,(9,a6)
    beq.b loc_01c31c
    rts

loc_01c31c:
    move.w ($c,a6),d0
    move.b (5,a6),d6
    btst #2,d6
    beq.b loc_01c32e
    subq.w #1,d0
    bra.b loc_01c336

loc_01c32e:
    btst #3,d6
    beq.b loc_01c336
    addq.w #1,d0

loc_01c336:
    tst.w d0
    bpl.b loc_01c340
    move.w #$16,d0
    bra.b loc_01c348

loc_01c340:
    cmpi.w #$16,d0
    ble.b loc_01c348
    moveq #0,d0

loc_01c348:
    move.w d0,($c,a6)
    andi.b #$f0,d6
    beq.b loc_01c36a
    lea loc_090692,a0
    move.w ($c,a6),d0
    add.w d0,d0
    move.w (a0,d0.w),-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c36a:
    rts

;--------------------------
loc_01c36c:
    cmpi.b #1,(9,a6)
    beq.b loc_01c376
    rts

loc_01c376:
    move.w ($e,a6),d0
    move.b (5,a6),d6
    btst #2,d6
    beq.b loc_01c388
    subq.w #1,d0
    bra.b loc_01c390

loc_01c388:
    btst #3,d6
    beq.b loc_01c390
    addq.w #1,d0

loc_01c390:
    tst.w d0
    bpl.b loc_01c39a
    move.w #$72,d0
    bra.b loc_01c3a2

loc_01c39a:
    cmpi.w #$72,d0
    ble.b loc_01c3a2
    moveq #0,d0

loc_01c3a2:
    move.w d0,($e,a6)
    andi.b #$f0,d6
    beq.b loc_01c3c4
    lea loc_0906c0,a0
    move.w ($e,a6),d0
    add.w d0,d0
    move.w (a0,d0.w),-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c3c4:
    rts

;--------------------------
loc_01c3c6:
    cmpi.b #2,(9,a6)
    beq.b loc_01c3d0
    rts

loc_01c3d0:
    move.w ($10,a6),d0
    move.b (5,a6),d6
    btst #2,d6
    beq.b loc_01c3e2
    subq.w #1,d0
    bra.b loc_01c3ea

loc_01c3e2:
    btst #3,d6
    beq.b loc_01c3ea
    addq.w #1,d0

loc_01c3ea:
    tst.w d0
    bpl.b loc_01c3f4
    move.w #$14a,d0
    bra.b loc_01c3fc

loc_01c3f4:
    cmpi.w #$14a,d0
    ble.b loc_01c3fc
    moveq #0,d0

loc_01c3fc:
    move.w d0,($10,a6)
    andi.b #$f0,d6
    beq.b loc_01c41e
    lea loc_0907a6,a0
    move.w ($10,a6),d0
    add.w d0,d0
    move.w (a0,d0.w),-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c41e:
    rts

;--------------------------
loc_01c420:
    lea loc_01c11e(pc),a0
    move.w #$a0,d0
    move.w #$28,d1
    move.w #5,d2
    move.w #1,d3
    move.w #1,d4
    jsr loc_005426
    rts

;--------------------------
loc_01c440:
    lea loc_01c4ba(pc),a0
    move.w #$a4,d0
    move.w #$50,d1
    cmpi.b #0,($9,a6)
    bne.b loc_01c45a
    move.w #1,d2
    bra.b loc_01c45e

loc_01c45a:
    move.w #4,d2

loc_01c45e:
    move.w #0,d3
    move.w #2,d4
    jsr loc_005426
    cmpi.b #0,(9,a6)
    bne.b loc_01c47c
    move.w d0,($12,a6)
    move.w d1,($14,a6)

loc_01c47c:
    move.w ($c,a6),d5
    lsr.w #4,d5
    move.w #$b5,d0
    move.w #$50,d1
    move.w #0,d2
    move.w #0,d3
    move.w #1,d4
    jsr OptionHexDisplay(pc)
    move.w ($c,a6),d5
    move.w #$bf,d0
    jsr OptionHexDisplay(pc)
    move.w ($c,a6),d0
    move.w #$50,d1
    lea loc_090692,a0
    jsr loc_01c696(pc)
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01c4ba:
    dc.b 'MUSIC TEST',00
    even

;--------------------------
loc_01c4c6:
    lea loc_01c540(pc),a0
    move.w #$a4,d0
    move.w #$60,d1
    cmpi.b #1,(9,a6)
    bne.b loc_01c4e0
    move.w #1,d2
    bra.b loc_01c4e4

loc_01c4e0:
    move.w #4,d2

loc_01c4e4
    move.w #0,d3
    move.w #2,d4
    jsr loc_005426
    cmpi.b #1,(9,a6)
    bne.b loc_01c502
    move.w d0,($12,a6)
    move.w d1,($14,a6)

loc_01c502:
    move.w ($e,a6),d5
    lsr.w #4,d5
    move.w #$b5,d0
    move.w #$60,d1
    move.w #0,d2
    move.w #0,d3
    move.w #1,d4
    jsr OptionHexDisplay(pc)
    move.w ($e,a6),d5
    move.w #$bf,d0
    jsr OptionHexDisplay(pc)
    move.w ($e,a6),d0
    move.w #$60,d1
    lea loc_0906c0,a0
    jsr loc_01c696(pc)
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01c540:
    dc.b 'SE TEST',00
    even

;--------------------------
loc_01c548:
    lea loc_01c5d0(pc),a0
    move.w #$a4,d0
    move.w #$70,d1
    cmpi.b #2,(9,a6)
    bne.b loc_01c562
    move.w #1, d2
    bra.b loc_01c566

loc_01c562:
    move.w #4,d2

loc_01c566:
    move.w #0,d3
    move.w #2,d4
    jsr loc_005426
    cmpi.b #2,(9,a6)
    bne.b loc_01c584
    move.w d0,($12,a6)
    move.w d1,($14,a6)

loc_01c584:
    move.w ($10,a6),d5
    lsr.w #8,d5
    move.w #$b5,d0
    move.w #$70,d1
    move.w #0,d2
    move.w #0,d3
    move.w #1,d4
    jsr OptionHexDisplay(pc)
    move.w ($10,a6),d5
    lsr.w #4,d5
    move.w #$bf,d0
    jsr OptionHexDisplay(pc)
    move.w ($10,a6),d5
    move.w #$c9,d0
    jsr OptionHexDisplay(pc)
    move.w ($10,a6),d0
    move.w #$70,d1
    lea loc_0907a6,a0
    jsr loc_01c696(pc)
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01c5d0:
    dc.b 'VOICE TEST',00
    even

;--------------------------
loc_01c5dc:
    lea loc_01c1b8(pc),a0
    move.w #$a0,d0
    move.w #$88,d1
    move.w #6,d2
    cmpi.b #3,(9,a6)
    bne.b loc_01c5f8
    move.w #1,d2

loc_01c5f8:
    move.w #0,d3
    move.w #1,d4
    jsr loc_005426
    cmpi.b #3,(9,a6)
    bne.b loc_01c618
    move.w d0,($12,a6)
    move.w #$88,($14,a6)

loc_01c618:
    rts

;--------------------------
loc_01c61a:
    movem.l d7/a6,-(a7)
    move.w #$28,d0
    move.w #$38,d1
    move.w #$1f00,d2
    btst #0,d7
    beq.b loc_01c636
    move.w #$80,d3
    bra.b loc_01c63a

loc_01c636:
    move.w #$88,d3

loc_01c63a:
    move.w #$f0,d4
    move.w #$58,d5
    jsr loc_00501a
    movem.l (a7)+,d7/a6
    rts

;--------------------------
loc_01c64e:
    moveq #0,d0
    cmpi.w #$c,d7
    bcc.b loc_01c658
    rts

loc_01c658:
    move.b (4,a6),d6
    andi.b #5,d6
    beq.b loc_01c672
    moveq #-1,d0
    move.w #$186b,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    rts

loc_01c672:
    move.b (5,a6),d5
    andi.b #$f0,d5
    beq.b loc_01c694
    cmpi.b #3,(9,a6)
    bne.b loc_01c694
    moveq #-1,d0
    move.w #$186b,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    rts

loc_01c694:
    rts

;--------------------------
loc_01c696
    movem.l d7,-(a7)
    move.w d0,d6
    movea.l a0,a1
    lea loc_01c720(pc),a0
    move.w #$d3,d0
    move.w #0, d2
    move.w #1, d3
    move.w #0, d4
    jsr loc_005426
    add.w d6,d6
    move.w (a1,d6.w),d7
    move.l d0,d3
    swap d3
    sub.w d0,d3
    lsr.w #1,d3
    add.w d3,d0
    move.w d0,d6
    move.w d6,d0
    subi.w #$11,d0
    move.w #0,d2
    move.w #0,d3
    move.w #1,d4
    rol.w #4,d7
    move.w d7,d5
    andi.w #$f,d5
    jsr OptionHexDisplay(pc)
    move.w d6,d0
    subq.w #7,d0
    rol.w #4,d7
    move.w d7,d5
    andi.w #$f,d5
    jsr OptionHexDisplay(pc)
    move.w d6,d0
    addq.w #8,d0
    rol.w #4,d7
    move.w d7,d5
    andi.w #$f,d5
    jsr OptionHexDisplay(pc)
    move.w d6,d0
    addi.w #$12,d0
    rol.w #$4,d7
    move.w d7,d5
    andi.w #$f,d5
    jsr OptionHexDisplay(pc)
    movem.l (a7)+,d7
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01c720:
    dc.b "(  .  )",00
    even

;--------------------------
loc_01c728:
    clr.w (4,a6)
    clr.b (6,a6)
    clr.b ($a,a6)
    clr.b ($b,a6)
    clr.w ($1a,a6)
    rts 

;--------------------------
;Key config
loc_01c73e:
    moveq #0,d7

loc_01c740:
    addq.w #1,($1a,a6)
    jsr loc_01c7a8(pc)
    jsr loc_01c846(pc)
    jsr loc_01c8a0(pc)
    jsr loc_01c8fa(pc)
    jsr loc_01c954(pc)
    jsr loc_01c9ae(pc)
    jsr loc_01c9fc(pc)
    jsr loc_01ca1c(pc)
    jsr loc_01ca5a(pc)
    jsr loc_01cb00(pc)
    jsr loc_01cba6(pc)
    jsr loc_01cc52(pc)
    jsr loc_01ccfc(pc)
    jsr loc_01cd62(pc)
    jsr loc_01ce5e(pc)
    jsr loc_01cea2(pc)
    jsr loc_01cdc0(pc)
    jsr loc_01d014(pc)
    trap #5
    jsr loc_01cfb0(pc)
    jsr loc_01cdf4(pc)
    tst.w d0
    bmi.b loc_01c7a2
    addq.w #1,d7
    andi.w #$fff,d7
    bra.b loc_01c740

loc_01c7a2:
    clr.w (4,a6)
    rts

;--------------------------
loc_01c7a8:
    move.b ($a,a6),d1
    move.b ($b,a6),d2
    move.b (5,a6),d5
    move.b (6,a6),d6
    btst #0,d5
    beq.b loc_01c7cc
    subq.b #1,d1
    move.w #$1869,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c7cc:
    btst #1,d5
    beq.b loc_01c7e0
    addq.b #1,d1
    move.w #$1869,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c7e0:
    btst #0,d6
    beq.b loc_01c7f4
    subq.b #1,d2
    move.w #$1869,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c7f4:
    btst #1,d6
    beq.b loc_01c808
    addq.b #1,d2
    move.w #$1869,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c808:
    move.b #5,d5
    move.b #5,d6
    tst.b (0,a6)
    bne.b loc_01c818
    subq.b #1,d5

loc_01c818:
    tst.b (1,a6)
    bne.b loc_01c820
    subq.b #1,d6

loc_01c820:
    tst.b d1
    bpl.b loc_01c828
    move.b d5,d1
    bra.b loc_01c82e

loc_01c828
    cmp.b d5,d1
    bls.b loc_01c82e
    clr.b d1

loc_01c82e:
    tst.b d2
    bpl.b loc_01c836
    move.b d6,d2
    bra.b loc_01c83c

loc_01c836:
    cmp.b d6,d2
    bls.b loc_01c83c
    clr.b d2

loc_01c83c:
    move.b d1,($a,a6)
    move.b d2,($b,a6)
    rts  

;--------------------------
loc_01c846:
    cmpi.b #0,($a,a6)
    bne.b loc_01c872
    move.b (5,a6),d0
    move.b d0,d1
    andi.b #$f0,d1
    beq.b loc_01c872
    lea (-$7f9c,a5),a0
    move.w #0,d1
    jsr loc_01d044(pc)
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c872:
    cmpi.b #0,($b,a6)
    bne.b loc_01c89e
    move.b (6,a6),d0
    move.b d0,d1
    andi.b #$f0,d1
    beq.b loc_01c89e
    lea (-$7f98,a5),a0
    move.w #0,d1
    jsr loc_01d044(pc)
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c89e:
    rts

;--------------------------
loc_01c8a0:
    cmpi.b #1,($a,a6)
    bne.b loc_01c8cc
    move.b (5,a6),d0
    move.b d0,d1
    andi.b #$f0,d1
    beq.b loc_01c8cc
    lea (-$7f9c,a5),a0
    move.w #1,d1
    jsr loc_01d044(pc)
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c8cc:
    cmpi.b #1,($b,a6)
    bne.b loc_01c8f8
    move.b (6,a6),d0
    move.b d0,d1
    andi.b #$f0,d1
    beq.b loc_01c8f8
    lea (-$7f98,a5),a0
    move.w #1,d1
    jsr loc_01d044(pc)
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c8f8:
    rts

;--------------------------
loc_01c8fa:
    cmpi.b #2,($a,a6)
    bne.b loc_01c926
    move.b (5,a6),d0
    move.b d0,d1
    andi.b #$f0,d1
    beq.b loc_01c926
    lea (-$7f9c,a5),a0
    move.w #2,d1
    jsr loc_01d044(pc)
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c926:
    cmpi.b #2,($b,a6)
    bne.b loc_01c952
    move.b (6,a6),d0
    move.b d0,d1
    andi.b #$f0,d1
    beq.b loc_01c952
    lea (-$7f98,a5),a0
    move.w #2,d1
    jsr loc_01d044(pc)
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c952:
    rts

;--------------------------
loc_01c954:
    cmpi.b #3,($a,a6)
    bne.b loc_01c980
    move.b (5,a6),d0
    move.b d0,d1
    andi.b #$f0,d1
    beq.b loc_01c980
    lea (-$7f9c,a5),a0
    move.w #3,d1
    jsr loc_01d044(pc)
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c980:
    cmpi.b #3,($b,a6)
    bne.b loc_01c9ac
    move.b (6,a6),d0
    move.b d0,d1
    andi.b #$f0,d1
    beq.b loc_01c9ac
    lea (-$7f98,a5),a0
    move.w #3,d1
    jsr loc_01d044(pc)
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c9ac:
    rts

;--------------------------
loc_01c9ae:
    cmpi.b #4,($a,a6)
    bne.b loc_01c9d4
    move.b (5,a6),d0
    andi.b #$f0,d0
    beq.b loc_01c9d4
    move.l #$4050607,(-$7f9c,a5)
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c9d4:
    cmpi.b #4,($b,a6)
    bne.b loc_01c9fa
    move.b (6,a6),d0
    andi.b #$f0,d0
    beq.b loc_01c9fa
    move.l #$4050607,(-$7f98,a5)
    move.w #$186a,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_01c9fa:
    rts

;--------------------------
loc_01c9fc:
    lea loc_01c168(pc),a0
    move.w #$a0,d0
    move.w #$28,d1
    move.w #5,d2
    move.w #0,d3
    move.w #1,d4
    jsr loc_005426
    rts

;--------------------------
loc_01ca1c:
    lea loc_01ca52(pc),a0
    move.w #$d0,d0
    move.w #$50,d1
    move.w #2,d2
    move.w #2,d3
    move.w #1,d4
    jsr loc_005426
    lea loc_01ca56(pc),a0
    move.w #$f0,d0
    move.w #$50,d1
    move.w #0,d3
    jsr loc_005426
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01ca52:
    dc.b 'P1',00
    even

loc_01ca56:
    dc.b 'P2',00
    even

;--------------------------
loc_01ca5a:
    lea loc_01cafa(pc),a0
    move.w #$b0,d0
    move.w #$60,d1
    move.w #4,d2
    move.w #0,d3
    move.w #2,d4
    jsr loc_005426
    move.b (-$7f9c,a5),d5
    addq.b #6,d5
    move.w #$d0,d0
    move.w #$60,d1
    cmpi.b #0,($a,a6)
    bne.b loc_01ca94
    move.w #1,d2
    bra.b loc_01ca98

loc_01ca94:
    move.w #0,d2

loc_01ca98:
    move.w #0,d3
    move.w #1,d4
    jsr OptionHexDisplay(pc)
    cmpi.b #0,($a,a6)
    bne.b loc_01cab8
    move.w #$cb,($12,a6)
    move.w #$60,($14,a6)

loc_01cab8:
    move.b (-$7f98,a5),d5
    addq.b #6,d5
    move.w #$f0,d0
    move.w #$60,d1
    cmpi.b #0,($b,a6)
    bne.b loc_01cad4
    move.w #1,d2
    bra.b loc_01cad8

loc_01cad4:
    move.w #0,d2

loc_01cad8:
    move.w #0,d3
    move.w #1,d4
    jsr OptionHexDisplay(pc)
    cmpi.b #0,($b,a6)
    bne.b loc_01caf8
    move.w #$f5,($16,a6)
    move.w #$60,($18,a6)

loc_01caf8:
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01cafa:
    dc.b 'PUNCH',00
    even

;--------------------------
loc_01cb00:
    lea loc_01cba0(pc),a0
    move.w #$b0,d0
    move.w #$70,d1
    move.w #4,d2
    move.w #0,d3
    move.w #2,d4
    jsr loc_005426
    move.b (-$7f9b,a5),d5
    addq.b #6,d5
    move.w #$d0,d0
    move.w #$70,d1
    cmpi.b #1,($a,a6)
    bne.b loc_01cb3a
    move.w #1,d2
    bra.b loc_01cb3e

loc_01cb3a:
    move.w #0,d2

loc_01cb3e:
    move.w #0,d3
    move.w #1,d4
    jsr OptionHexDisplay(pc)
    cmpi.b #1,($a,a6)
    bne.b loc_01cb5e
    move.w #$cb,($12,a6)
    move.w #$70,($14,a6)

loc_01cb5e:
    move.b (-$7f97,a5),d5
    addq.b #6,d5
    move.w #$f0,d0
    move.w #$70,d1
    cmpi.b #1,($b,a6)
    bne.b loc_01cb7a
    move.w #1,d2
    bra.b loc_01cb7e

loc_01cb7a:
    move.w #0,d2

loc_01cb7e:
    move.w #0,d3
    move.w #1,d4
    jsr OptionHexDisplay(pc)
    cmpi.b #1,($b,a6)
    bne.b loc_01cb9e
    move.w #$f5,($16,a6)
    move.w #$70,($18,a6)

loc_01cb9e:
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01cba0:
    dc.b 'KICK',00
    even

;--------------------------
loc_01cba6:
    lea loc_01cc46(pc),a0
    move.w #$b0,d0
    move.w #$80,d1
    move.w #4,d2
    move.w #0,d3
    move.w #2,d4
    jsr loc_005426
    move.b (-$7f9a,a5),d5
    addq.b #6,d5
    move.w #$d0,d0
    move.w #$80,d1
    cmpi.b #2,($a,a6)
    bne.b loc_01cbe0
    move.w #1,d2
    bra.b loc_01cbe4

loc_01cbe0:
    move.w #0,d2

loc_01cbe4:
    move.w #0,d3
    move.w #1,d4
    jsr OptionHexDisplay(pc)
    cmpi.b #2,($a,a6)
    bne.b loc_01cc04
    move.w #$cb,($12,a6)
    move.w #$80,($14,a6)

loc_01cc04:
    move.b (-$7f96,a5),d5
    addq.b #6,d5
    move.w #$f0,d0
    move.w #$80,d1
    cmpi.b #2,($b,a6)
    bne.b loc_01cc20
    move.w #1,d2
    bra.b loc_01cc24

loc_01cc20:
    move.w #0,d2

loc_01cc24:
    move.w #0,d3
    move.w #1,d4
    jsr OptionHexDisplay(pc)
    cmpi.b #2,($b,a6)
    bne.b loc_01cc44
    move.w #$f5,($16,a6)
    move.w #$80,($18,a6)

loc_01cc44:
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01cc46:
    dc.b 'HARD PUNCH',00
    even

;--------------------------
loc_01cc52:
    lea loc_01ccf2(pc),a0
    move.w #$b0,d0
    move.w #$90,d1
    move.w #4,d2
    move.w #0,d3
    move.w #2,d4
    jsr loc_005426
    move.b (-$7f99,a5),d5
    addq.b #6,d5
    move.w #$d0,d0
    move.w #$90,d1
    cmpi.b #3,($a,a6)
    bne.b loc_01cc8c
    move.w #1,d2
    bra.b loc_01cc90

loc_01cc8c:
    move.w #0,d2

loc_01cc90:
    move.w #0,d3
    move.w #1,d4
    jsr OptionHexDisplay(pc)
    cmpi.b #3,($a,a6)
    bne.b loc_01ccb0
    move.w #$cb,($12,a6)
    move.w #$90,($14,a6)

loc_01ccb0:
    move.b (-$7f95,a5),d5
    addq.b #6,d5
    move.w #$f0,d0
    move.w #$90,d1
    cmpi.b #3,($b,a6)
    bne.b loc_01cccc
    move.w #1,d2
    bra.b loc_01ccd0

loc_01cccc:
    move.w #0,d2

loc_01ccd0:
    move.w #0,d3
    move.w #1,d4
    jsr OptionHexDisplay(pc)
    cmpi.b #3,($b,a6)
    bne.b loc_01ccf0
    move.w #$f5,($16,a6)
    move.w #$90,($18,a6)

loc_01ccf0:
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01ccf2:
    dc.b 'HARD KICK',00
    even

;--------------------------
loc_01ccfc:
    lea loc_01cd5a(pc),a0
    move.w #$e0,d0
    move.w #$a8,d1
    move.w #6,d2
    cmpi.b #4,($a,a6)
    bne.b loc_01cd18
    move.w #1,d2

loc_01cd18:
    cmpi.b #4,($b,a6)
    bne.b loc_01cd24
    move.w #1,d2

loc_01cd24:
    move.w #0,d3
    move.w #1,d4
    jsr loc_005426
    cmpi.b #4,($a,a6)
    bne.b loc_01cd44
    move.w d0,($12,a6)
    move.w #$a8,($14,a6)

loc_01cd44:
    cmpi.b #4,($b,a6)
    bne.b loc_01cd58
    swap d0
    move.w d0,($16,a6)
    move.w #$a8,($18,a6)

loc_01cd58:
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01cd5a:
    dc.b 'DEFAULT',00
    even

;--------------------------
loc_01cd62:
    lea loc_01c1b8(pc),a0
    move.w #$e0,d0
    move.w #$c0,d1
    move.w #6,d2
    cmpi.b #5,($a,a6)
    bne.b loc_01cd7e
    move.w #1,d2

loc_01cd7e:
    cmpi.b #5,($b,a6)
    bne.b loc_01cd8a
    move.w #1,d2

loc_01cd8a:
    move.w #0,d3
    move.w #1,d4
    jsr loc_005426
    cmpi.b #5,($a,a6)
    bne.b loc_01cdaa
    move.w d0,($12,a6)
    move.w #$c0,($14,a6)

loc_01cdaa:
    cmpi.b #5,($b,a6)
    bne.b loc_01cdbe
    swap d0
    move.w d0,($16,a6)
    move.w #$c0,($18,a6)

loc_01cdbe:
    rts

;--------------------------
loc_01cdc0:
    movem.l d7/a6,-(a7)
    move.w #$30,d0
    move.w #$38,d1
    move.w #$1f00,d2
    btst #0,d7
    beq.b loc_01cddc
    move.w #$80,d3
    bra.b loc_01cde0

loc_01cddc:
    move.w #$88,d3

loc_01cde0:
    move.w #$e0,d4
    move.w #$90,d5
    jsr loc_00501a
    movem.l (a7)+,d7/a6
    rts

;--------------------------
loc_01cdf4:
    moveq #0,d0
    cmpi.w #$c,d7
    bcc.b loc_01cdfe
    rts

loc_01cdfe:
    move.b (4,a6),d6
    andi.b #5,d6
    beq.b loc_01ce18
    moveq #-1,d0
    move.w #$186b,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    rts

loc_01ce18:
    move.b (5,a6),d5
    move.b (6,a6),d6
    andi.b #$f0,d5
    beq.b loc_01ce3e
    cmpi.b #5,($a,a6)
    bne.b loc_01ce3e
    moveq #-1,d0
    move.w #$186b,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    rts

loc_01ce3e:
    andi.b #$f0,d6
    beq.b loc_01ce5c
    cmpi.b #5,($b,a6)
    bne.b loc_01ce5c
    moveq #-1,d0
    move.w #$186b,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    rts

loc_01ce5c:
    rts

;--------------------------
loc_01ce5e:
    movem.l d7,-(a7)
    move.w ($1a,a6),d0
    lsr.w #2,d0
    andi.w #7,d0
    move.b loc_01ce9a(pc,d0.w),d0
    ext.w d0
    lea loc_01ce98(pc),a0
    add.w ($12,a6),d0
    subq.w #6,d0
    move.w ($14,a6),d1
    move.w #5,d2
    move.w #0,d3
    move.w #2,d4
    jsr loc_005426
    movem.l (a7)+,d7
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01ce98:
    dc.b $7e,$00

loc_01ce9a:
    dc.b $00,$00,$01,$02,$04,$02,$01,$00

;--------------------------
loc_01cea2:
    movem.l d7,-(a7)
    move.w ($1a,a6),d0
    lsr.w #2,d0
    andi.w #7,d0
    move.b loc_01ce9a(pc,d0.w),d0
    ext.w d0
    neg.w d0
    lea loc_01cede(pc),a0
    add.w ($16,a6),d0
    addq.w #6,d0
    move.w ($18,a6),d1
    move.w #5,d2
    move.w #0,d3
    move.w #0,d4
    jsr loc_005426
    movem.l (a7)+,d7
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01cede
    dc.b $7d,$00

;--------------------------
loc_01cee0:
    move.b (-$53c9,a5),d6
    tst.b (0,a6)
    bne.b loc_01ceee
    andi.b #$c,d6

loc_01ceee:
    tst.b (1,a6)
    bne.b loc_01cef8
    andi.b #3,d6

loc_01cef8:
    move.b d6,(4,a6)
    moveq #0,d6
    tst.b (0,a6)
    beq.b loc_01cf54
    move.b (-$53cd,a5),d1
    move.b (-$53d1,a5),d2
    move.b d1,d3
    andi.b #$f3,d3
    or.b d3,d6
    andi.b #$c,d2
    beq.b loc_01cf24
    subq.b #1,(2,a6)
    bpl.b loc_01cf24
    clr.b (2,a6)

loc_01cf24:
    move.b d1,d0
    andi.b #3,d0
    beq.b loc_01cf32
    move.b #$10,(2,a6)

loc_01cf32:
    andi.b #$c,d1
    beq.b loc_01cf42
    or.b d1,d6
    move.b #$10,(2,a6)
    bra.b loc_01cf54

loc_01cf42:
    tst.b (2,a6)
    bne.b loc_01cf54
    move.w ($1a,a6),d0
    andi.w #3,d0
    bne.b loc_01cf54
    or.b d2,d6

loc_01cf54:
    tst.b (1,a6)
    beq.b loc_01cfaa
    move.b (-$53cc,a5),d1
    move.b (-$53d0,a5),d2
    move.b d1,d3
    andi.b #$f3,d3
    or.b d3,d6
    andi.b #$c,d2
    beq.b loc_01cf7a
    subq.b #1,(3,a6)
    bpl.b loc_01cf7a
    clr.b (3,a6)

loc_01cf7a:
    move.b d1,d0
    andi.b #3,d0
    beq.b loc_01cf88
    move.b #$10,(2,a6)

loc_01cf88:
    andi.b #$c,d1
    beq.b loc_01cf98
    or.b d1,d6
    move.b #$10,(3,a6)
    bra.b loc_01cfaa

loc_01cf98:
    tst.b (3,a6)
    bne.b loc_01cfaa
    move.w ($1a,a6),d0
    andi.w #3,d0
    bne.b loc_01cfaa
    or.b d2,d6

loc_01cfaa:
    move.b d6, (5,a6)
    rts

;--------------------------
loc_01cfb0:
    move.b (-$53c9,a5),d6
    tst.b (0,a6)
    bne.b loc_01cfbe
    andi.b #$c,d6

loc_01cfbe:
    tst.b (1,a6)
    bne.b loc_01cfc8
    andi.b #3,d6

loc_01cfc8:
    move.b d6,(4,a6)
    move.b (-$53cd,a5),(5,a6)
    move.b (-$53cc,a5),(6,a6)
    rts

;--------------------------
;01cfda
OptionHexDisplay:
    movem.l d5/a0,-(a7)
    andi.w #$f,d5
    add.w d5,d5
    lea loc_01cff4(pc,d5.w),a0
    jsr loc_005426
    movem.l (a7)+,d5/a0
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01cff4:
    dc.b $30,$00,$31,$00,$32,$00,$33,$00,$34,$00,$35,$00,$36,$00,$37,$00
    dc.b $38,$00,$39,$00,$41,$00,$42,$00,$43,$00,$44,$00,$45,$00,$46,$00
;--------------------------

loc_01d014:
    movem.l d7/a6,-(a7)
    move.w #$a0,d0
    move.w #$70,d1
    move.w #$1a00,d2
    moveq #0,d3
    moveq #0,d4
    moveq #0,d5
    lea loc_090ce4,a1
    adda.l #4,a1
    movea.l (a1),a0
    jsr loc_0041d8
    movem.l (a7)+,d7/a6
    rts

;--------------------------
loc_01d044:
    movem.l d7,-(a7)
    move.w #$7,d6
    move.w #$3,d7

loc_01d050:
    btst d6,d0
    beq.b loc_01d06c
    jsr loc_01d078(pc)
    cmp.w d1,d2
    beq.b loc_01d06a
    move.b (a0,d1.w),d3
    move.b (a0,d2.w),(a0,d1.w)
    move.b d3,(a0,d2.w)

loc_01d06a:
    bra.b loc_01d072

loc_01d06c:
    subq.w #1,d6
    dbra d7,loc_01d050

loc_01d072:
    movem.l (a7)+,d7
    rts

;--------------------------
loc_01d078:
    movem.l d7,-(a7)
    moveq #-1,d2
    move.w #3,d7

loc_01d082:
    addq.w #1,d2
    cmp.b (a0,d2.w),d6
    dbeq d7,loc_01d082
    movem.l (a7)+,d7
    rts