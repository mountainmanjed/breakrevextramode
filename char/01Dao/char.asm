;======================;
; Dao-Long Programming ;
;======================;
loc_03bd86:
    move.w #$f0,($344,a4)
    move.w #$28,($346,a4)
    move.w #6,($348,a4)
    move.w #$e,($34a,a4)
    move.w #$b4,($34c,a4)
    move.w #$5c,($34e,a4)
    move.w #$94,($350,a4)
    rts

;--------------------------
loc_03bdb2:
    tst.b ($4d5,a4)
    beq.w loc_03bddc
    move.b ($35c,a4),d0
    andi.w #$fffc,d0
    bne.w loc_03bddc
    cmpi.b #$6,($360,a4)
    bne.w loc_03bddc
    sf ($4d5,a4)
    move.l #loc_03c0d8,($56,a4)

loc_03bddc:
    rts

;--------------------------
loc_03bdde:
    movea.l #loc_03d24e,a0
    bsr.w loc_03be32
    bra.w loc_03beee

;--------------------------
loc_03bdec:
    bclr #7,($35c,a4)
    bne.w loc_03bdfc
    jmp loc_02e5c6

;--------------------------
loc_03bdfc:
    movea.l #loc_03d128,a0
    bsr.w loc_03be32
    bra.w loc_03beee

;--------------------------
loc_03be0a:
    move.l (a7)+,($4d8,a4)
    jmp (a0)

;--------------------------
loc_03be10:
    move.l ($4d8,a4),d0
    beq.b loc_03bdec
    clr.l ($4d8,a4)
    movea.l d0,a0
    clr.b d0
    jmp (a0)

;--------------------------
loc_03be20:
    move.l ($4d8,a4),d0
    beq.b loc_03bdec
    clr.l ($4d8,a4)
    movea.l d0,a0
    move.b #-1,d0
    jmp (a0)

;--------------------------
loc_03be32:
    move.l (a7)+,($4dc,a4)
    jmp (a0)

;--------------------------
loc_03be38:
    move.l ($4dc,a4),d0
    beq.w loc_03beee
    clr.l ($4dc,a4)
    movea.l d0,a0
    jmp (a0)

;--------------------------
loc_03be48:
    st ($4d5,a4)
    cmpi.w #$a0,($378,a4)
    bgt.w loc_03beb0
    cmpi.w #$3c,($378,a4)
    bgt.w loc_03be8c
    cmpi.w #$1e,($378,a4)
    bgt.w loc_03be6e
    bra.w loc_03bee2

;--------------------------
loc_03be6e:
    jsr RandomNumberGod
    lea loc_03be7e(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03be7e:
    dc.w $0002,$001e
    dc.l loc_03bece
    dc.w $001e
    dc.l loc_03bee2

;--------------------------
loc_03be8c:
    jsr RandomNumberGod
    lea loc_03be9c(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03be9c:
    dc.w $0003,$001e
    dc.l loc_03bed8
    dc.w $001e
    dc.l loc_03bee2
    dc.w $003c
    dc.l loc_03bece

;--------------------------
loc_03beb0:
    jsr RandomNumberGod
    lea loc_03bec0(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03bec0:
    dc.w $0002,$003c
    dc.l loc_03bed8
    dc.w $001e
    dc.l loc_03bece

;--------------------------
loc_03bece:
    movea.l #loc_03d128,a0
    bra.w loc_03bee8

loc_03bed8:
    movea.l #loc_03d1dc,a0
    bra.w loc_03bee8

loc_03bee2:
    movea.l #loc_03d24e,a0

loc_03bee8:
    movea.l a0,a0
    bsr loc_03be32

loc_03beee:
    clr.l ($4d8,a4)
    clr.l ($4dc,a4)
    clr.l ($4e0,a4)
    tst.b ($35d,a4)
    beq.w loc_03bf0a
    jsr loc_0226b4
    bra.b loc_03beee

;--------------------------
loc_03bf0a
    st ($35d,a4)
    cmpi.b #6,($360,a4)
    beq.w loc_03c0d8
    tst.b ($247,a4)
    beq.w loc_03c0ca
    cmpi.w #$a0,($378,a4)
    bgt.w loc_03c094
    cmpi.w #$3c,($378,a4)
    bgt.w loc_03c01c
    cmpi.w #$1e,($378,a4)
    bgt.w loc_03bf9e
    jsr RandomNumberGod
    lea loc_03bf4e(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03bf4e:
    dc.w $000d,$000a
    dc.l loc_03d3ce
    dc.w $0005
    dc.l loc_03d24e
    dc.w $0005
    dc.l loc_03d3aa
    dc.w $0032
    dc.l loc_03e156
    dc.w $0014
    dc.l loc_03e3aa
    dc.w $0014
    dc.l loc_03e4d0
    dc.w $0014
    dc.l loc_03e802
    dc.w $0014
    dc.l loc_03ddee
    dc.w $0014
    dc.l loc_03db00
    dc.w $0014
    dc.l loc_03dc4e
    dc.w $000a
    dc.l loc_03e226
    dc.w $000a
    dc.l loc_03e280
    dc.w $001e
    dc.l loc_03d7fe

;--------------------------
loc_03bf9e:
    jsr RandomNumberGod
    lea loc_03bfae(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03bfae:
    dc.w $0012,$000a
    dc.l loc_03d3ce
    dc.w $0005
    dc.l loc_03d24e
    dc.w $0005
    dc.l loc_03d3aa
    dc.w $000a
    dc.l loc_03d2cc
    dc.w $0032
    dc.l loc_03e156
    dc.w $0014
    dc.l loc_03ddee
    dc.w $0014
    dc.l loc_03e802
    dc.w $0014
    dc.l loc_03e70a
    dc.w $0014
    dc.l loc_03e5e0
    dc.w $0014
    dc.l loc_03e3aa
    dc.w $0014
    dc.l loc_03e4d0
    dc.w $0014
    dc.l loc_03db00
    dc.w $0014
    dc.l loc_03dc4e
    dc.w $000a
    dc.l loc_03e280
    dc.w $001e
    dc.l loc_03df02
    dc.w $000f
    dc.l loc_03e07a
    dc.w $000a
    dc.l loc_03d8ce
    dc.w $000a
    dc.l loc_03d7fe

;--------------------------
loc_03c01c:
    jsr RandomNumberGod
    lea loc_03c02c(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03c02c:
    dc.w $0011,$001e
    dc.l loc_03d1dc
    dc.w $000a
    dc.l loc_03d24e
    dc.w $0014
    dc.l loc_03d386
    dc.w $0005
    dc.l loc_03d3aa
    dc.w $000a
    dc.l loc_03d3ce
    dc.w $000a
    dc.l loc_03d128
    dc.w $0014
    dc.l loc_03d2cc
    dc.w $0032
    dc.l loc_03e156
    dc.w $0019
    dc.l loc_03e802
    dc.w $0019
    dc.l loc_03e5e0
    dc.w $001e
    dc.l loc_03e70a
    dc.w $001a
    dc.l loc_03ddee
    dc.w $0014
    dc.l loc_03e3aa
    dc.w $000a
    dc.l loc_03d8ce
    dc.w $0023
    dc.l loc_03df02
    dc.w $0019
    dc.l loc_03e93e
    dc.w $000a
    dc.l loc_03e07a

;--------------------------
loc_03c094:
    jsr RandomNumberGod
    lea loc_03c0a4(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03c0a4:
    dc.w $0006,$0014
    dc.l loc_03d1dc
    dc.w $0014
    dc.l loc_03d386
    dc.w $0014
    dc.l loc_03d2cc
    dc.w $0014
    dc.l loc_03df02
    dc.w $0014
    dc.l loc_03e93e
    dc.w $0032
    dc.l loc_03e156

;--------------------------
loc_03c0ca:
    movea.l #loc_03d4ba,a0
    bsr.w loc_03be0a
    bra.w loc_03beee

;--------------------------
loc_03c0d8:
    clr.b ($2f6,a4)
    move.l #$100020,d0
    jsr loc_02e420
    movea.l #loc_03d24e,a0
    bsr.w loc_03be32
    jsr RandomNumberGod
    lea loc_03c102(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03c102:
    dc.w $0003,$0032
    dc.l loc_03c130
    dc.w $000a
    dc.l loc_03c116
    dc.w $000a
    dc.l loc_03c156

;--------------------------
loc_03c116:
    move.l #$80008,d0
    jsr loc_02e420
    movea.l #loc_03d2cc,a0
    bsr.w loc_03be32
    bra.w loc_03beee

;--------------------------
loc_03c130:
    movea.l #loc_03d3aa,a0
    bsr.w loc_03be32
    cmpi.w #$40,($340,a4)
    blt.w loc_03beee
    sf ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308
    bra.w loc_03beee

;--------------------------
loc_03c156:
    movea.l #loc_03d386,a0
    bsr.w loc_03be32
    bra.w loc_03beee
;--------------------------
loc_03c164:
    move.w ($340,a4),d0
    andi.w #$f0,d0
    lsr.w #4,d0
    add.w d0,d0
    move.w loc_03c178(pc,d0.w),d0
    jmp loc_03c178(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03c178:
    dc.w loc_03c198-loc_03c178
    dc.w loc_03c198-loc_03c178
    dc.w loc_03c198-loc_03c178
    dc.w loc_03c198-loc_03c178

    dc.w loc_03c19c-loc_03c178
    dc.w loc_03c1ae-loc_03c178
    dc.w loc_03c1c0-loc_03c178
    dc.w loc_03c1d2-loc_03c178

    dc.w loc_03c1e4-loc_03c178
    dc.w loc_03c1f6-loc_03c178
    dc.w loc_03c208-loc_03c178
    dc.w loc_03c21a-loc_03c178

    dc.w loc_03c22c-loc_03c178
    dc.w loc_03c22c-loc_03c178
    dc.w loc_03c22c-loc_03c178
    dc.w loc_03c22c-loc_03c178

;--------------------------
loc_03c198:
    bra.w loc_03c230

;--------------------------
loc_03c19c:
    jsr RandomNumberGod
    cmpi.w #$e000,d0
    bcs.w loc_03c230
    bra.w loc_03c23e

;--------------------------
loc_03c1ae:
    jsr RandomNumberGod
    cmpi.w #$c000,d0
    bcs.w loc_03c230
    bra.w loc_03c23e

;--------------------------
loc_03c1c0:
    jsr RandomNumberGod
    cmpi.w #$a000,d0
    bcs.w loc_03c230
    bra.w loc_03c23e

;--------------------------
loc_03c1d2:
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03c230
    bra.w loc_03c23e

;--------------------------
loc_03c1e4:
    jsr RandomNumberGod
    cmpi.w #$6000,d0
    bcs.w loc_03c230
    bra.w loc_03c23e

;--------------------------
loc_03c1f6:
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.w loc_03c230
    bra.w loc_03c23e

;--------------------------
loc_03c208:
    jsr RandomNumberGod
    cmpi.w #$2000,d0
    bcs.w loc_03c230
    bra.w loc_03c23e

;--------------------------
loc_03c21a:
    jsr RandomNumberGod
    cmpi.w #$1000,d0
    bcs.w loc_03c230
    bra.w loc_03c23e

;--------------------------
loc_03c22c:
    bra.w loc_03c23e

;--------------------------
loc_03c230:
    movea.l #loc_03d3ce,a0
    bsr.w loc_03be32
    bra.w loc_03beee

;--------------------------
loc_03c23e:
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    scs ($4d3,a4)

loc_03c24c:
    tst.b ($365,a4)
    bne.w loc_03c530
    clr.b ($2f6,a4)
    tst.b ($4d3,a4)
    bpl.w loc_03c286
    cmpi.b #3,($360,a4)
    beq.w loc_03c286
    cmpi.b #4,($360,a4)
    beq.w loc_03c286
    tst.b ($367,a4)
    beq.w loc_03c28a
    cmpi.b #1,($360,a4)
    beq.w loc_03c28a

loc_03c286:
    bra.w loc_03c2c8

loc_03c28a:
    cmpi.w #$40,($340,a4)
    blt.w loc_03c2c8
    cmpi.w #$82,($378,a4)
    bgt.w loc_03c2c8
    cmpi.w #$14,($378,a4)
    blt.w loc_03c2c8
    cmpi.w #$ff7e,($37a,a4)
    bgt.w loc_03c2c8
    tst.b ($24a,a4)
    bne.w loc_03c2c8
    movea.l #loc_03d2cc,a0
    bsr.w loc_03be32
    bra.w loc_03c52a

;--------------------------
loc_03c2c8:
    cmpi.b #3,($376,a4)
    beq.w loc_03c314
    cmpi.b #3,($360,a4)
    beq.w loc_03c306
    cmpi.b #4,($360,a4)
    beq.w loc_03c306
    tst.b ($367,a4)
    beq.w loc_03c306
    cmpi.b #1,($360,a4)
    beq.w loc_03c314
    cmpi.b #2,($360,a4)
    beq.w loc_03c314
    bra.w loc_03c514

;--------------------------
loc_03c306:
    jsr RandomNumberGod
    cmpi.w #$f800,d0
    bcs.w loc_03c514

loc_03c314:
    btst #7,($35c,a4)
    bne.w loc_03c33e
    cmpi.w #$1e,($36c,a4)
    bgt.w loc_03c33e
    cmpi.w #$ff88,($37a,a4)
    blt.w loc_03c33e
    clr.b ($2f6,a4)
    bsr.w loc_03f756
    bne.w loc_03c52a

;--------------------------
loc_03c33e:
    btst #7,($35c,a4)
    bne.w loc_03c392
    cmpi.w #$30,($36c,a4)
    bgt.w loc_03c392
    cmpi.w #$ffc4,($37a,a4)
    blt.w loc_03c392
    clr.b ($2f6,a4)
    jsr loc_02c78a
    beq.w loc_03c37c
    cmpi.w #$60,($340,a4)
    blt.w loc_03c37c
    bsr.w loc_03f586
    bne.w loc_03c52a

loc_03c37c:
    cmpi.w #$40,($340,a4)
    blt.w loc_03c392
    sf ($3cd,a4)
    bsr.w loc_03f5ba
    bne.w loc_03c52a

loc_03c392:
    btst #7,($35c,a4)
    bne.w loc_03c3bc
    cmpi.w #$30,($378,a4)
    bgt.w loc_03c3bc
    cmpi.w #$ff88,($37a,a4)
    blt.w loc_03c3bc
    clr.b ($2f6,a4)
    bsr.w loc_03f6dc
    bne.w loc_03c52a

loc_03c3bc:
    btst #7,($35c,a4)
    bne.w loc_03c3e8
    cmpi.w #$3c,($378,a4)
    bgt.w loc_03c3e8
    cmpi.w #$ffd8,($37a,a4)
    blt.w loc_03c3e8
    move.b #2,($2f6,a4)
    bsr.w loc_03f756
    bne.w loc_03c52a

loc_03c3e8
    cmpi.w #$60,($340,a4)
    blt.w loc_03c422
    btst #7,($35c,a4)
    bne.w loc_03c422
    cmpi.w #$3c,($378,a4)
    bgt.w loc_03c422
    cmpi.w #$ff88,($37a,a4)
    blt.w loc_03c422
    movea.l #loc_03d472,a0
    bsr.w loc_03be32
    bsr.w loc_03f6dc
    bne.w loc_03c52a

loc_03c422:
    btst #7,($35c,a4)
    bne.w loc_03c44c
    cmpi.w #$5a,($378,a4)
    bgt.w loc_03c44c
    cmpi.w #$ffc4,($37a,a4)
    blt.w loc_03c44c
    clr.b ($2f6,a4)
    bsr.w loc_03f756
    bne.w loc_03c52a

loc_03c44c:
    btst #7,($35c,a4)
    bne.w loc_03c476
    cmpi.w #$5a,($378,a4)
    bgt.w loc_03c476
    cmpi.w #$ffb0,($37a,a4)
    blt.w loc_03c476
    clr.b ($2f6,a4)
    bsr.w loc_03f6dc
    bne.w loc_03c52a

loc_03c476:
    cmpi.w #$60,($340,a4)
    blt.w loc_03c4b0
    btst #7,($35c,a4)
    bne.w loc_03c4b0
    cmpi.w #$64,($378,a4)
    bgt.w loc_03c4b0
    cmpi.w #$ff7e,($37a,a4)
    blt.w loc_03c4b0
    movea.l #loc_03d496,a0
    bsr.w loc_03be32
    bsr.w loc_03f6dc
    bne.w loc_03c52a

loc_03c4b0:
    btst #7,($35c,a4)
    bne.w loc_03c4dc
    cmpi.w #$64,($378,a4)
    bgt.w loc_03c4dc
    cmpi.w #$fff6,($37a,a4)
    blt.w loc_03c4dc
    move.b #2,($2f6,a4)
    bsr.w loc_03f6dc
    bne.w loc_03c52a

loc_03c4dc:
    cmpi.w #$80,($340,a4)
    blt.w loc_03c514
    btst #7,($35c,a4)
    beq.w loc_03c514
    cmpi.w #$32,($378,a4)
    bgt.w loc_03c514
    cmpi.w #$ffd8,($37a,a4)
    blt.w loc_03c514
    clr.b ($2f6,a4)
    sf ($3cd,a4)
    bsr.w loc_03f5ba
    bne.w loc_03c52a

loc_03c514:
    jsr loc_02e456
    jsr loc_0226b4
    jsr loc_02e370
    bra.w loc_03c24c

;--------------------------
loc_03c52a:
    jsr loc_02e308

loc_03c530:
    clr.b ($2f6,a4)
    bclr #2,($35c,a4)
    bra.w loc_03beee

;--------------------------
loc_03c53e:
    cmpi.w #$a0,($340,a4)
    bge.w loc_03c55c
    jsr RandomNumberGod
    lsr.w #8,d0
    cmp.w ($358,a4),d0
    bcs.w loc_03c55c
    bra.w loc_03c628

;--------------------------
loc_03c55c:
    move.w #$11,($4d6,a4)

loc_03c562:
    cmpi.b #1,($36a,a4)
    bne.w loc_03c576
    btst #0,($362,a4)
    bne.w loc_03c23e

loc_03c576:
    tst.b ($367,a4)
    beq.w loc_03c618
    cmpi.b #3,($36a,a4)
    beq.w loc_03c60c
    cmpi.b #6,($36a,a4)
    beq.w loc_03c5d0
    cmpi.b #5,($360,a4)
    beq.w loc_03c5ba
    cmpi.b #1,($36a,a4)
    bne.w loc_03c5b0
    cmpi.w #$1c,($374,a4)
    bgt.w loc_03c60c

loc_03c5b0:
    cmpi.b #1,($360,a4)
    beq.w loc_03c5ea

loc_03c5ba:
    jsr loc_02e456
    jsr loc_0226b4
    subq.w #1,($4d6,a4)
    bge.b loc_03c562
    bra.w loc_03c618

;--------------------------
loc_03c5d0:
    cmpi.b #4,($376,a4)
    beq.b loc_03c5ba
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.w loc_03c628
    bra.w loc_03d3ce

;--------------------------
loc_03c5ea:
    cmpi.b #4,($36a,a4)
    beq.w loc_03c60c
    cmpi.w #$80,($358,a4)
    blt.w loc_03c618
    jsr RandomNumberGod
    cmpi.w #$2000,d0
    bcs.w loc_03c618

loc_03c60c:
    btst #3,($24a,a4)
    bne.b loc_03c5ba
    bra.w loc_03c63a

;--------------------------
loc_03c618:
    btst #7,($35c,a4)
    bne.w loc_03c636
    jsr loc_02e456

loc_03c628:
    jsr loc_0226b4
    moveq #6,d0
    jsr loc_02e39c

loc_03c636:
    bra.w loc_03beee

;--------------------------
loc_03c63a:
    tst.b ($247,a4)
    beq.w loc_03d4ba

loc_03c642:
    btst #1,($246,a4)
    bne.w loc_03c654
    jsr loc_0226b4
    bra.b loc_03c642

;--------------------------
loc_03c654:
    btst #3,($24a,a4)
    bne.w loc_03cb68
    cmpi.b #5,($36a,a4)
    beq.w loc_03cb68
    cmpi.b #5,($360,a4)
    beq.w loc_03cb68
    tst.b ($365,a4)
    beq.w loc_03c23e
    cmpi.b #1,($360,a4)
    beq.w loc_03c6b0
    cmpi.b #2,($360,a4)
    bne.w loc_03c6a6
    jsr RandomNumberGod
    cmpi.w #$2000,d0
    bcs.w loc_03cb5a
    sf d3
    move.w ($378,a4),d2
    bra.w loc_03c6bc

;--------------------------
loc_03c6a6:
    st d3
    move.w ($374,a4),d2
    bra.w loc_03c6bc

;--------------------------
loc_03c6b0:
    sf d3
    move.w ($374,a4),d2
    add.w ($378,a4),d2
    asr.w #1,d2

loc_03c6bc:
    jsr RandomNumberGod
    lsr.w #8,d0
    cmp.w ($340,a4),d0
    bcs.w loc_03c6d0
    bra.w loc_03c88a

loc_03c6d0:
    btst #7,($35c,a4)
    beq.w loc_03c88a
    jsr RandomNumberGod
    cmpi.w #$2000,d0
    bcs.w loc_03c88a
    cmpi.w #$1e,($36c,a4)
    bge.w loc_03c716
    jsr RandomNumberGod
    lea loc_03c702(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03c702:
    dc.w $0003,$0014
    dc.l loc_03c838
    dc.w $0014
    dc.l loc_03c80e
    dc.w $0014
    dc.l loc_03c7d6

;--------------------------
loc_03c716:
    cmpi.w #$3c,($36c,a4)
    bge.w loc_03c750
    jsr RandomNumberGod
    lea loc_03c730(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03c730:
    dc.w $0005,$001e
    dc.l loc_03c838
    dc.w $000a
    dc.l loc_03c7d6
    dc.w $000a
    dc.l loc_03c7ba
    dc.w $000a
    dc.l loc_03c81c
    dc.w $000a
    dc.l loc_03c800

;--------------------------
loc_03c750:
    cmpi.w #$78,($36c,a4)
    bge.w loc_03c78a
    jsr RandomNumberGod
    lea loc_03c76a(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03c76a:
    dc.w $0005,$001e
    dc.l loc_03c7f2
    dc.w $001e
    dc.l loc_03c7ba
    dc.w $000a
    dc.l loc_03c81c
    dc.w $000a
    dc.l loc_03c800
    dc.w $000a
    dc.l loc_03c838

;--------------------------
loc_03c78a:
    jsr RandomNumberGod
    lea loc_03c79a(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03c79a:
    dc.w $0005,$001e
    dc.l loc_03c81c
    dc.w $0014
    dc.l loc_03c7f2
    dc.w $0014
    dc.l loc_03c7c8
    dc.w $000a
    dc.l loc_03c7ba
    dc.w $000a
    dc.l loc_03c800

;--------------------------
loc_03c7ba:
    movea.l #loc_03d24e,a0
    bsr.w loc_03be32
    bra.w loc_03cb3e

;--------------------------
loc_03c7c8:
    movea.l #loc_03d386,a0
    bsr.w loc_03be32
    bra.w loc_03cb3e

;--------------------------
loc_03c7d6:
    movea.l #loc_03d7fe,a0
    bsr.w loc_03be0a
    bra.w loc_03cb3e

;--------------------------
loc_03c7e4:
    movea.l #loc_03d3aa,a0
    bsr.w loc_03be32
    bra.w loc_03cb3e

;--------------------------
loc_03c7f2:
    movea.l #loc_03d1dc,a0
    bsr.w loc_03be32
    bra.w loc_03cb3e

;--------------------------
loc_03c800:
    movea.l #loc_03d44e,a0
    bsr.w loc_03be32
    bra.w loc_03beee

;--------------------------
loc_03c80e:
    movea.l #loc_03e226,a0
    bsr.w loc_03be0a
    bra.w loc_03cb3e

;--------------------------
loc_03c81c:
    cmpi.w #$40,($340,a4)
    blt.w loc_03cb3e
    st ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308
    bra.w loc_03cb3e

;--------------------------
loc_03c838:
    cmpi.w #$60,($340,a4)
    blt.w loc_03c88a
    cmpi.w #$32,($378,a4)
    bgt.w loc_03c872
    jsr loc_02c78a
    beq.w loc_03c864
    bsr.w loc_03f586
    jsr loc_02e308
    bra.w loc_03cb3e


loc_03c864:
    movea.l #loc_03e226,a0
    bsr.w loc_03be0a
    bra.w loc_03cb3e


loc_03c872:
    cmpi.w #$50,($378,a4)
    bgt.w loc_03cb3e
    bsr.w loc_03f522
    jsr loc_02e308
    bra.w loc_03cb3e

;--------------------------
loc_03c88a:
    jsr RandomNumberGod
    andi.w #$1f,d0
    subi.w #$10,d0
    add.w d0,d2
    btst #0,($369,a4)
    bne.w loc_03c8c6
    btst #2,($369,a4)
    bne.w loc_03c936
    btst #1,($369,a4)
    bne.w loc_03c902
    btst #3,($369,a4)
    bne.w loc_03c936
    bra.w loc_03cb68

;--------------------------
loc_03c8c6:
    cmpi.w #$1c,d2
    ble.w loc_03ca1c
    cmpi.w #$22,d2
    ble.w loc_03cae0
    cmpi.w #$28,d2
    ble.w loc_03c992
    cmpi.w #$32,d2
    ble.w loc_03ca2a
    cmpi.w #$3c,d2
    ble.w loc_03c962
    cmpi.w #$46,d2
    ble.w loc_03caee
    cmpi.w #$50,d2
    ble.w loc_03c9de
    bra.w loc_03cb68

;--------------------------
loc_03c902:
    cmpi.w #$20,d2
    ble.w loc_03ca54
    cmpi.w #$2c,d2
    ble.w loc_03cb02
    cmpi.w #$34,d2
    ble.w loc_03cb2c
    cmpi.w #$3c,d2
    ble.w loc_03c962
    cmpi.w #$46,d2
    ble.w loc_03caee
    cmpi.w #$50,d2
    ble.w loc_03c9de
    bra.w loc_03cb68

;--------------------------
loc_03c936:
    cmpi.w #$20,d2
    ble.w loc_03ca8c
    cmpi.w #$32,d2
    ble.w loc_03caee
    cmpi.w #$3c,d2
    ble.w loc_03cb2c
    cmpi.w #$46,d2
    ble.w loc_03cace
    cmpi.w #$50,d2
    ble.w loc_03c9ae
    bra.w loc_03cb68

;--------------------------
loc_03c962:
    cmpi.w #$60,($340,a4)
    blt.w loc_03cb3e
    jsr RandomNumberGod
    cmpi.w #$c000,d0
    bcs.w loc_03cb3e
    jsr loc_02c78a
    beq.w loc_03cb3e
    bsr.w loc_03f522
    jsr loc_02e308
    bra.w loc_03cb3e

;--------------------------
loc_03c992:
    jsr RandomNumberGod
    cmpi.w #$c000,d0
    bcs.w loc_03cb3e
    movea.l #loc_03d3aa,a0
    bsr.w loc_03be32
    bra.w loc_03cb3e

;--------------------------
loc_03c9ae:
    cmpi.w #$40,($340,a4)
    blt.w loc_03cb3e
    bsr.w loc_03f6be
    jsr loc_02e308
    jsr RandomNumberGod
    cmpi.w #$c000,d0
    bcs.w loc_03cb3e
    movea.l #loc_03ddee,a0
    bsr.w loc_03be0a
    bra.w loc_03cb3e

;--------------------------
loc_03c9de:
    cmpi.w #$40,($340,a4)
    blt.w loc_03cb3e
    jsr RandomNumberGod
    cmpi.w #$c000,d0
    bcs.w loc_03cb3e
    bsr.w loc_03f682
    jsr loc_02e308
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03cb3e
    movea.l #loc_03ddee,a0
    bsr.w loc_03be0a
    bra.w loc_03cb3e
;--------------------------

loc_03ca1c:
    movea.l #loc_03d2cc,a0
    bsr.w loc_03be32
    bra.w loc_03beee

;--------------------------
loc_03ca2a:
    jsr RandomNumberGod
    andi.w #3,d0
    addq.w #1,d0

loc_03ca36:
    move.w d0,($4d6,a4)
    clr.b ($2f6,a4)
    bsr.w loc_03f7d0
    jsr loc_02e2d0
    move.w ($4d6,a4),d0
    dbra d0,loc_03ca36
    bra.w loc_03cb3e

;--------------------------
loc_03ca54:
    jsr RandomNumberGod
    andi.w #3,d0
    addq.w #1,d0

loc_03ca60:
    move.w d0,($4d6,a4)
    move.b #2,($2f6,a4)
    bsr.w loc_03f85e
    jsr loc_02e2d0
    move.w ($4d6,a4),d0
    dbra d0,loc_03ca60
    jsr RandomNumberGod
    cmpi.w #$c000,d0
    bcs.b loc_03ca1c
    bra.w loc_03cb3e

;--------------------------
loc_03ca8c:
    jsr RandomNumberGod
    andi.w #3,d0
    addq.w #1,d0

loc_03ca98:
    move.w d0,($4d6,a4)
    clr.b ($2f6,a4)
    bsr.w loc_03f85e
    jsr loc_02e2d0
    move.w ($4d6,a4),d0
    dbra d0,loc_03ca98
    jsr RandomNumberGod
    cmpi.w #$c000,d0
    bcs.w loc_03cb3e
    movea.l #loc_03e3aa,a0
    bsr.w loc_03be0a
    bra.w loc_03cb3e

;--------------------------
loc_03cace:
    clr.b ($2f6,a4)
    bsr.w loc_03f6dc
    jsr loc_02e308
    bra.w loc_03cb3e

;--------------------------
loc_03cae0:
    movea.l #loc_03ddee,a0
    bsr.w loc_03be0a
    bra.w loc_03cb3e

;--------------------------
loc_03caee:
    move.b #2,($2f6,a4)
    bsr.w loc_03f6dc
    jsr loc_02e308
    bra.w loc_03cb3e

loc_03cb02:
    tst.b ($365,a4)
    beq.w loc_03cb3e
    move.b #2,($2f6,a4)
    bsr.w loc_03f756
    jsr loc_02e308
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03ca1c
    bra.w loc_03cb3e

loc_03cb2c:
    clr.b ($2f6,a4)
    movea.l #loc_03e3aa,a0
    bsr.w loc_03be0a
    bra.w loc_03cb3e

loc_03cb3e:
    jsr loc_0226b4
    btst #7,($35c,a4)
    bne.w loc_03cb56
    moveq #6,d0
    jsr loc_02e39c

loc_03cb56:
    bra.w loc_03bdec

;--------------------------
loc_03cb5a:
    jsr RandomNumberGod
    cmpi.w #$2000,d0
    bcs.w loc_03d3ce

loc_03cb68:
    jsr loc_02e456
    jsr loc_0226b4
    bclr #3,($35c,a4)
    bra.w loc_03bdec

loc_03cb7e:
    move.w ($340,a4),d0
    andi.w #$f0,d0
    lsr.w #4,d0
    add.w d0,d0
    move.w loc_03cb92(pc,d0.w),d0
    jmp loc_03cb92(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03cb92:
    dc.w loc_03cbb2-loc_03cb92
    dc.w loc_03cbb2-loc_03cb92
    dc.w loc_03cbb8-loc_03cb92
    dc.w loc_03cbcc-loc_03cb92

    dc.w loc_03cbe0-loc_03cb92
    dc.w loc_03cbf4-loc_03cb92
    dc.w loc_03cc08-loc_03cb92
    dc.w loc_03cc1c-loc_03cb92

    dc.w loc_03cc30-loc_03cb92
    dc.w loc_03cc30-loc_03cb92
    dc.w loc_03cc30-loc_03cb92
    dc.w loc_03cc30-loc_03cb92

    dc.w loc_03cc30-loc_03cb92
    dc.w loc_03cc30-loc_03cb92
    dc.w loc_03cc30-loc_03cb92
    dc.w loc_03cc30-loc_03cb92

;--------------------------
loc_03cbb2:
    jmp loc_02e5b2

;--------------------------
loc_03cbb8:
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.w loc_03cc34
    jmp loc_02e5b2

;--------------------------
loc_03cbcc:
    jsr RandomNumberGod
    cmpi.w #$6000,d0
    bcs.w loc_03cc34
    jmp loc_02e5b2

;--------------------------
loc_03cbe0:
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03cc34
    jmp loc_02e5b2

;--------------------------
loc_03cbf4:
    jsr RandomNumberGod
    cmpi.w #$a000,d0
    bcs.w loc_03cc34
    jmp loc_02e5b2

;--------------------------
loc_03cc08:
    jsr RandomNumberGod
    cmpi.w #$c000,d0
    bcs.w loc_03cc34
    jmp loc_02e5b2

;--------------------------
loc_03cc1c:
    jsr RandomNumberGod
    cmpi.w #$e000,d0
    bcs.w loc_03cc34
    jmp loc_02e5b2

;--------------------------
loc_03cc30:
    bra.w loc_03cc34

;--------------------------
loc_03cc34:
    jsr RandomNumberGod
    cmpi.w #$c000,d0
    bcc.b loc_03cc48
    move.b #1,($4d0,a4)
    bra.b loc_03cc58

;--------------------------
loc_03cc48:
    cmpi.w #$c000,d0
    bcc.b loc_03cc54
    sf ($4d0,a4)
    bra.b loc_03cc58

loc_03cc54:
    st ($4d0,a4)

loc_03cc58:
    jsr RandomNumberGod
    cmpi.w #$c000,d0
    scs ($4d1,a4)

loc_03cc66:
    tst.b ($367,a4)
    beq.w loc_03cc7c
    cmpi.w #$24,($374,a4)
    bge.w loc_03cc7c
    bra.w loc_03cdd0

loc_03cc7c:
    tst.b ($363,a4)
    beq.w loc_03cde0
    cmpi.w #$ffc8,($370,a4)
    ble.w loc_03cde0
    cmpi.w #$34,($370,a4)
    ble.w loc_03cdd0
    tst.b ($4d1,a4)
    beq.w loc_03cd50
    cmpi.w #$f0,($37c,a4)
    bgt.w loc_03cd50
    cmpi.w #$9c,($37c,a4)
    ble.w loc_03cd50
    cmpi.b #$12,($364,a4)
    beq.w loc_03cd50
    cmpi.w #$60,($340,a4)
    blt.w loc_03cce2
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03cce2
    bsr.w loc_03f550
    beq.w loc_03cce2
    bra.w loc_03cde0

loc_03cce2:
    cmpi.w #$40,($340,a4)
    blt.w loc_03cd50
    st ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308
    jsr loc_02e496
    jsr loc_02e550
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.w loc_03cde0
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.w loc_03cd34
    st ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308
    bra.w loc_03cde0

loc_03cd34:
    cmpi.w #$60,($340,a4)
    blt.w loc_03cde0
    bsr.w loc_03f550
    beq.w loc_03cde0
    jsr loc_02e308
    bra.w loc_03cde0

;--------------------------
loc_03cd50:
    tst.b ($4d0,a4)
    beq.w loc_03cda6
    bgt.w loc_03cd60
    bra.w loc_03cdd0

loc_03cd60:
    cmpi.w #$50,($37c,a4)
    bgt.w loc_03cdd0
    tst.b ($24a,a4)
    bne.w loc_03cdd0
    cmpi.w #$a0,($340,a4)
    blt.w loc_03cd98
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03cd98
    bsr.w loc_03f682
    jsr loc_02e308
    bra.w loc_03cde0

loc_03cd98:
    movea.l #loc_03d44e,a0
    bsr.w loc_03be32
    bra.w loc_03cde0

loc_03cda6:
    cmpi.w #$32,($37c,a4)
    bgt.w loc_03cdd0
    cmpi.b #$12,($364,a4)
    beq.w loc_03cdd0
    tst.b ($24a,a4)
    bne.w loc_03cdd0
    movea.l #loc_03d496,a0
    bsr.w loc_03be32
    bra.w loc_03cde0

;--------------------------
loc_03cdd0:
    jsr loc_02e456
    jsr loc_0226b4
    bra.w loc_03cc66

;--------------------------
loc_03cde0:
    clr.b ($2f6,a4)
    bra.w loc_03beee

;--------------------------
loc_03cde8:
    clr.b ($2f6,a4)
    cmpi.w #$40,($340,a4)
    bge.w loc_03cdfa
    bra.w loc_03beee

;--------------------------
loc_03cdfa:
    cmpi.w #$1e,($378,a4)
    bgt.w loc_03ce2e
    jsr RandomNumberGod
    lea loc_03ce14(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03ce14:
    dc.w $0004,$0028
    dc.l loc_03cf4e
    dc.w $0014
    dc.l loc_03cefa
    dc.w $000a
    dc.l loc_03cf40
    dc.w $000a
    dc.l loc_03ceec

;--------------------------
loc_03ce2e:
    cmpi.w #$3c,($378,a4)
    bgt.w loc_03ce6e
    jsr RandomNumberGod
    lea loc_03ce48(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03ce48:
    dc.w $0006,$0028
    dc.l loc_03cf4e
    dc.w $000a
    dc.l loc_03cefa
    dc.w $000a
    dc.l loc_03cf40
    dc.w $000a
    dc.l loc_03cf32
    dc.w $000a
    dc.l loc_03cf5c
    dc.w $000a
    dc.l loc_03ceec

;--------------------------
loc_03ce6e:
    cmpi.w #$78,($378,a4)
    bgt.w loc_03ceae
    jsr RandomNumberGod
    lea loc_03ce88(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03ce88:
    dc.w $0006,$0032
    dc.l loc_03cf6a
    dc.w $000a
    dc.l loc_03cf4e
    dc.w $000a
    dc.l loc_03cf40
    dc.w $000a
    dc.l loc_03cf5c
    dc.w $000a
    dc.l loc_03cf32
    dc.w $000a
    dc.l loc_03ceec

;--------------------------
loc_03ceae:
    jsr RandomNumberGod
    lea loc_03cebe(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03cebe:
    dc.w $0005,$0032
    dc.l loc_03cf6a
    dc.w $000a
    dc.l loc_03cf40
    dc.w $000a
    dc.l loc_03cede
    dc.w $000a
    dc.l loc_03cf5c
    dc.w $000a
    dc.l loc_03cf32

;--------------------------
loc_03cede:
    movea.l #loc_03d1dc,a0
    bsr.w loc_03be32
    bra.w loc_03beee

loc_03ceec:
    movea.l #loc_03d24e,a0
    bsr.w loc_03be32
    bra.w loc_03beee

loc_03cefa:
    movea.l #loc_03e70a,a0
    bsr.w loc_03be0a
    bra.w loc_03beee

loc_03cf08:
    movea.l #loc_03e802,a0
    bsr.w loc_03be0a
    bra.w loc_03beee

loc_03cf16:
    movea.l #loc_03e3aa,a0
    bsr.w loc_03be0a
    bra.w loc_03beee

loc_03cf24:
    movea.l #loc_03ddee,a0
    bsr.w loc_03be0a
    bra.w loc_03beee

loc_03cf32:
    movea.l #loc_03e93e,a0
    bsr.w loc_03be0a
    bra.w loc_03beee

loc_03cf40:
    movea.l #loc_03df02,a0
    bsr.w loc_03be0a
    bra.w loc_03beee

loc_03cf4e
    movea.l #loc_03d7fe,a0
    bsr.w loc_03be0a
    bra.w loc_03beee

loc_03cf5c:
    movea.l #loc_03d8ce,a0
    bsr.w loc_03be0a
    bra.w loc_03beee

;--------------------------
loc_03cf6a:
    cmpi.w #$60,($340,a4)
    blt.w loc_03cf9a
    movea.l #loc_03d3aa,a0
    bsr.w loc_03be32
    bsr.w loc_03f550
    beq.w loc_03cf90
    jsr loc_02e308
    bra.w loc_03beee

;--------------------------
loc_03cf90:
    bsr.w loc_03f606
    jsr loc_02e308

loc_03cf9a:
    bra.w loc_03beee

;--------------------------
loc_03cf9e:
    clr.b ($2f6,a4)
    cmpi.w #$24,($36c,a4)
    bge.w loc_03cfb2
    move.b #4,($2f6,a4)

loc_03cfb2:
    cmpi.w #$64,($36c,a4)
    ble.w loc_03cfc2
    move.b #8,($2f6,a4)

loc_03cfc2:
    clr.b ($2f6,a4)
    btst #5,($361,a4)
    beq.w loc_03cfd8
    jsr loc_0226b4
    bra.b loc_03cf9e

loc_03cfd8:
    clr.b ($2f6,a4)
    moveq #$12,d0
    jsr loc_02e420
    cmpi.w #$40,($340,a4)
    bge.w loc_03cffc
    movea.l #loc_03d128,a0
    bsr.w loc_03be32
    bra.w loc_03beee

;--------------------------
loc_03cffc:
    jsr loc_02e496
    jsr loc_02e550
    jsr RandomNumberGod
    lea loc_03d018(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03d018:
    dc.w $0003,$003c
    dc.l loc_03d02c
    dc.w $0014
    dc.l loc_03d048
    dc.w $0014
    dc.l loc_03d03a


;--------------------------
loc_03d02c:
    movea.l #loc_03d7fe,a0
    bsr.w loc_03be0a
    bra.w loc_03beee

;--------------------------
loc_03d03a:
    movea.l #loc_03d8ce,a0
    bsr.w loc_03be0a
    bra.w loc_03beee

;--------------------------
loc_03d048:
    cmpi.w #$60,($340,a4)
    blt.w loc_03beee
    movea.l #loc_03d3aa,a0
    bsr.w loc_03be32
    bsr.w loc_03f550
    jsr loc_02e308
    bra.w loc_03beee

;--------------------------
loc_03d06a
    andi.b #2,($2f6,a4)

loc_03d070:
    btst #5,($249,a4)
    beq.w loc_03d0b0
    cmpi.w #$64,($378,a4)
    blt.w loc_03d0a0
    cmpi.w #$80,($340,a4)
    blt.w loc_03d0a0
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03d0a0
    st ($2fb,a4)

loc_03d0a0:
    moveq #8,d0
    jsr loc_02e39c
    jsr loc_0226b4
    bra.b loc_03d070

loc_03d0b0:
    jsr loc_02e370
    move.l #$80004,d0
    jsr loc_02e39c
    jsr RandomNumberGod
    lsr.w #8,d0
    cmp.w ($340,a4),d0
    bcs.w loc_03d0d6
    bra.w loc_03bdec

loc_03d0d6:
    jsr loc_02e496
    jsr loc_02e550
    cmpi.w #$32,($378,a4)
    bgt.w loc_03d124

loc_03d0ec:
    tst.b ($249,a4)
    beq.w loc_03d124
    jsr RandomNumberGod
    lea loc_03d108(pc),a0
    jsr loc_02decc
    bra.w loc_03d11c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03d108:
    dc.w $0003,$005a
    dc.l loc_03d7fe
    dc.w $000a
    dc.l loc_03e226
    dc.w $000a
    dc.l loc_03e156

;--------------------------
loc_03d11c:
    jsr loc_0226b4
    bra.b loc_03d0ec

;--------------------------
loc_03d124:
    bra.w loc_03c53e

;--------------------------
loc_03d128:
    jsr loc_02e370
    cmpi.w #$80,($340,a4)
    bge.w loc_03d15e
    andi.b #2,($2f6,a4)
    move.w #$f,d0
    swap d0
    move.w #$ff,d0
    sub.w ($33e,a4),d0
    lsr.w #2,d0
    moveq #0,d2
    move.w #$44,d2
    jsr loc_02e0f4
    bra.w loc_03be38

loc_03d15e:
    jsr loc_02e496
    jsr loc_02e550
    bra.w loc_03be38

loc_03d16e:
    jsr loc_02e370
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.b loc_03d128
    cmpi.w #$a0,($358,a4)
    blt.w loc_03d1a6
    jsr RandomNumberGod
    cmpi.w #$3000,d0
    bcs.w loc_03d24e
    jsr RandomNumberGod
    cmpi.w #$2000,d0
    bcs.w loc_03d1dc

loc_03d1a6:
    move.w #$f,d0
    swap d0
    move.w #$ff,d0
    sub.w ($33e,a4),d0
    lsr.w #2,d0
    moveq #0,d2
    move.w #$44,d2
    jsr loc_02e0aa
    jsr loc_02e496
    jsr loc_02e550
    bra.w loc_03be38

loc_03d1d2:
    move.l #$40006,d0
    bra.w loc_03d1fa

;--------------------------
loc_03d1dc:
    cmpi.w #$20,($340,a4)
    bge.w loc_03d1f4
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03d128

loc_03d1f4:
    move.l #$100020,d0

loc_03d1fa:
    moveq #0,d2
    move.w #$64,d2
    move.b #8,($2f6,a4)
    jsr loc_02e0f4
    cmpi.w #$30,($340,a4)
    bge.w loc_03d23c
    clr.b ($2f6,a4)
    move.w #$f,d0
    swap d0
    move.w #$ff,d0
    sub.w ($33e,a4),d0
    lsr.w #2,d0
    addi.w #$1e,d0
    moveq #0,d2
    move.w #$44,d2
    swap d2
    jsr loc_02e0f4

loc_03d23c:
    clr.b ($2f6,a4)
    bra.w loc_03be38

;--------------------------
loc_03d244:
    move.l #$80008,d0
    bra.w loc_03d26c

loc_03d24e:
    cmpi.w #$30,($340,a4)
    bge.w loc_03d266
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03d128

loc_03d266:
    move.l #$100020,d0

loc_03d26c:
    move.w #$c8,d2
    swap d2
    move.w #$5a,d2
    move.b #4,($2f6,a4)
    jsr loc_02e0f4
    bmi.w loc_03d128
    cmpi.w #$5a,($378,a4)
    ble.w loc_03d2c0
    cmpi.w #$30,($340,a4)
    bge.w loc_03d2c0
    clr.b ($2f6,a4)
    move.w #$f,d0
    swap d0
    move.w #$ff,d0
    sub.w ($33e,a4),d0
    lsr.w #2,d0
    addi.w #$1e,d0
    moveq #0,d2
    move.w #$44,d2
    swap d2
    jsr loc_02e0f4

loc_03d2c0:
    clr.b ($2f6,a4)
    bra.w loc_03be38
    move.l (a7)+,($4dc,a4)

loc_03d2cc:
    cmpi.w #$20,($340,a4)
    blt.w loc_03be38
    cmpi.w #$3c,($36c,a4)
    bgt.w loc_03d2f2
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03d362
    bra.w loc_03d358

loc_03d2f2:
    cmpi.w #$50,($36c,a4)
    bgt.w loc_03d318
    move.l #$40008,d0
    move.l #$780000,d2
    move.b #4,($2f6,a4)
    jsr loc_02e0f4
    bra.w loc_03d336

loc_03d318:
    cmpi.w #$78,($36c,a4)
    blt.w loc_03d336
    move.l #$40008,d0
    moveq #$50,d2
    move.b #8,($2f6,a4)
    jsr loc_02e0f4

loc_03d336:
    cmpi.w #$14,($378,a4)
    bgt.w loc_03d362
    jsr RandomNumberGod
    cmpi.w #$e000,d0
    bcs.w loc_03d358
    move.b #5,($2f6,a4)
    bra.w loc_03d368

loc_03d358:
    move.b #1,($2f6,a4)
    bra.w loc_03d368

loc_03d362:
    move.b #9,($2f6,a4)

loc_03d368:
    jsr loc_0226b4
    btst #1,($246,a4)
    bne.b loc_03d368
    clr.b ($2f6,a4)
    moveq #4,d0
    jsr loc_02e39c
    bra.w loc_03be38

loc_03d386:
    cmpi.w #$60,($340,a4)
    blt.w loc_03d1dc
    clr.b ($2f6,a4)
    bsr.w loc_03f90a
    jsr loc_0226b4
    moveq #8,d0
    jsr loc_02e39c
    bra.w loc_03be38

loc_03d3aa:
    cmpi.w #$60,($340,a4)
    blt.w loc_03d24e
    clr.b ($2f6,a4)
    bsr.w loc_03f8ec
    jsr loc_0226b4
    moveq #8,d0
    jsr loc_02e39c
    bra.w loc_03be38

;--------------------------
loc_03d3ce:
    cmpi.w #$20,($340,a4)
    blt.w loc_03d446
    cmpi.w #$28,($36c,a4)
    blt.w loc_03d3fa
    cmpi.w #$5a,($36c,a4)
    blt.w loc_03d410
    cmpi.w #$c8,($36c,a4)
    bgt.w loc_03d42e
    bra.w loc_03d128

loc_03d3fa:
    move.b ($246,a4),d0
    andi.b #$c,d0
    bne.w loc_03d408
    bra.b loc_03d3aa

loc_03d408:
    bra.w loc_03d2cc

loc_03d40c:
    bra.w loc_03d446

loc_03d410:
    move.l #$200020,d0
    move.b #4,($2f6,a4)
    move.w #$c8,d2
    swap d2
    clr.w d2
    jsr loc_02e0f4
    bra.w loc_03d446

loc_03d42e:
    move.l #$200020,d0
    move.b #8,($2f6,a4)
    moveq #0,d2
    move.w #$5a,d2
    jsr loc_02e0f4

loc_03d446:
    clr.b ($2f6,a4)
    bra.w loc_03be38

;--------------------------
loc_03d44e:
    move.b #9,($2f6,a4)

loc_03d454:
    jsr loc_0226b4
    btst #1,($246,a4)
    bne.b loc_03d454
    moveq #2,d0
    jsr loc_02e420
    clr.b ($2f6,a4)
    bra.w loc_03be38

;--------------------------
loc_03d472:
    move.b #5,($2f6,a4)

loc_03d478:
    jsr loc_0226b4
    btst #1,($246,a4)
    bne.b loc_03d478
    moveq #2,d0
    jsr loc_02e420
    clr.b ($2f6,a4)
    bra.w loc_03be38

;--------------------------
loc_03d496:
    move.b #1,($2f6,a4)

loc_03d49c:
    jsr loc_0226b4
    btst #1,($246,a4)
    bne.b loc_03d49c
    moveq #2,d0
    jsr loc_02e420
    clr.b ($2f6,a4)
    bra.w loc_03be38

;--------------------------
loc_03d4ba:
    btst #0,($24a,a4)
    bne.w loc_03be10
    tst.b ($247,a4)
    bne.w loc_03be10
    cmpi.w #$30,($340,a4)
    blt.w loc_03be10

loc_03d4d6:
    clr.b ($2f6,a4)
    btst #1,($246,a4)
    bne.w loc_03d7f0
    move.b ($361,a4),d0
    andi.b #$f9,d0
    beq.w loc_03d4fa
    cmpi.b #5,($360,a4)
    beq.w loc_03d7e6

loc_03d4fa:
    tst.b ($365,a4)
    bne.w loc_03d6a8
    cmpi.w #$60,($358,a4)
    blt.w loc_03d6a8
    move.b ($208,a4),d0
    cmp.b ($209,a4),d0
    bne.w loc_03d686
    move.b ($248,a4),d0
    andi.b #$c,d0
    beq.w loc_03d5ea
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.w loc_03d558
    cmpi.w #$1e,($378,a4)
    bgt.w loc_03d558
    cmpi.w #$20,($37a,a4)
    bgt.w loc_03d558
    cmpi.w #$ffe0,($37a,a4)
    blt.w loc_03d558
    bsr.w loc_03f85e
    bra.w loc_03d7f0

;--------------------------
loc_03d558:
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.w loc_03d58c
    cmpi.w #$1e,($378,a4)
    bgt.w loc_03d58c
    cmpi.w #$20,($37a,a4)
    bgt.w loc_03d58c
    cmpi.w #$ffe0,($37a,a4)
    blt.w loc_03d58c
    bsr.w loc_03f7d0
    bra.w loc_03d7f0

loc_03d58c:
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.w loc_03d5c0
    cmpi.w #$32,($378,a4)
    bgt.w loc_03d5c0
    cmpi.w #$10,($37a,a4)
    bgt.w loc_03d5c0
    cmpi.w #$ffc0,($37a,a4)
    blt.w loc_03d5c0
    bsr.w loc_03f756
    bra.w loc_03d7f0

loc_03d5c0:
    cmpi.w #$32,($378,a4)
    bgt.w loc_03d5e6
    cmpi.w #$40,($37a,a4)
    bgt.w loc_03d5e6
    cmpi.w #$10,($37a,a4)
    blt.w loc_03d5e6
    bsr.w loc_03f6dc
    bra.w loc_03d7f0

loc_03d5e6:
    bra.w loc_03d7e6

loc_03d5ea:
    cmpi.w #$24,($378,a4)
    bgt.w loc_03d610
    cmpi.w #$20,($37a,a4)
    bgt.w loc_03d610
    cmpi.w #$ffe0,($37a,a4)
    blt.w loc_03d610
    bsr.w loc_03f85e
    bra.w loc_03d7f0

loc_03d610:
    cmpi.w #$34,($378,a4)
    bgt.w loc_03d636
    cmpi.w #$20,($37a,a4)
    bgt.w loc_03d636
    cmpi.w #$ffc0,($37a,a4)
    blt.w loc_03d636
    bsr.w loc_03f756
    bra.w loc_03d7f0

loc_03d636:
    cmpi.w #$44,($378,a4)
    bgt.w loc_03d65c
    cmpi.w #$40,($37a,a4)
    bgt.w loc_03d65c
    cmpi.w #$fff0,($37a,a4)
    blt.w loc_03d65c
    bsr.w loc_03f7d0
    bra.w loc_03d7f0

loc_03d65c:
    cmpi.w #$54,($378,a4)
    bgt.w loc_03d682
    cmpi.w #$30,($37a,a4)
    bgt.w loc_03d682
    cmpi.w #$ffe0,($37a,a4)
    blt.w loc_03d682
    bsr.w loc_03f6dc
    bra.w loc_03d7f0

;--------------------------
loc_03d682:
    bra.w loc_03d7e6

;--------------------------
loc_03d686:
    cmpi.w #$20,($378,a4)
    bge.w loc_03d7e6
    cmpi.w #$20,($37a,a4)
    bgt.w loc_03d7e6
    cmpi.w #$ffe0,($37a,a4)
    blt.w loc_03d7e6
    bra.w loc_03d7f0

;--------------------------
loc_03d6a8:
    tst.w ($21a,a4)
    blt.w loc_03d7e6
    cmpi.l #$5d8000,($22a,a4)
    bgt.w loc_03d7e6
    cmpi.l #$5d8000,($22a,a4)
    ble.w loc_03d6d6
    jsr RandomNumberGod
    cmpi.w #$a000,d0
    bcs.w loc_03d7e6

loc_03d6d6:
    move.b ($208,a4),d0
    cmp.b ($209,a4),d0
    bne.w loc_03d7de
    cmpi.w #$14,($378,a4)
    bgt.w loc_03d6f4
    bsr.w loc_03f6dc
    bra.w loc_03d7f0

loc_03d6f4:
    move.b ($248,a4),d0
    andi.b #$c,d0
    beq.w loc_03d776
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.w loc_03d720
    cmpi.w #$34,($378,a4)
    bgt.w loc_03d720
    bsr.w loc_03f85e
    bra.w loc_03d7f0

loc_03d720:
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.w loc_03d740
    cmpi.w #$34,($378,a4)
    bgt.w loc_03d740
    bsr.w loc_03f756
    bra.w loc_03d7f0

loc_03d740:
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.w loc_03d760
    cmpi.w #$44,($378,a4)
    bgt.w loc_03d760
    bsr.w loc_03f7d0
    bra.w loc_03d7f0

loc_03d760:
    cmpi.w #$54,($378,a4)
    bgt.w loc_03d772
    bsr.w loc_03f6dc
    bra.w loc_03d7f0

loc_03d772:
    bra.w loc_03d7e6

loc_03d776:
    cmpi.w #$24,($378,a4)
    bgt.w loc_03d788
    bsr.w loc_03f756
    bra.w loc_03d7f0

loc_03d788:
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.w loc_03d7a8
    cmpi.w #$34,($378,a4)
    bgt.w loc_03d7a8
    bsr.w loc_03f85e
    bra.w loc_03d7f0

loc_03d7a8:
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.w loc_03d7c8
    cmpi.w #$44,($378,a4)
    bgt.w loc_03d7c8
    bsr.w loc_03f7d0
    bra.w loc_03d7f0

loc_03d7c8:
    cmpi.w #$54,($378,a4)
    bgt.w loc_03d7da
    bsr.w loc_03f6dc
    bra.w loc_03d7f0

loc_03d7da:
    bra.w loc_03d7e6

loc_03d7de:
    bsr.w loc_03f756
    bra.w loc_03d7f0

loc_03d7e6:
    jsr loc_0226b4
    bra.w loc_03d4d6

loc_03d7f0:
    clr.b ($2f6,a4)
    jsr loc_02e308
    bra.w loc_03be10

;--------------------------
loc_03d7fe:
    cmpi.w #$40,($340,a4)
    blt.w loc_03be10
    move.w #7,d0

loc_03d80c:
    move.w d0,($4d6,a4)
    move.b ($361,a4),d0
    andi.b #$30,d0
    bne.w loc_03be20
    btst #6,($24a,a4)
    bne.w loc_03be10
    cmpi.w #$20,($36c,a4)
    ble.w loc_03d84c
    move.l #$200020,d0
    move.b #$8,($2f6,a4)
    moveq #0,d2
    move.w #$20,d2
    jsr loc_02e0f4
    bra.w loc_03d858

loc_03d84c:
    bsr.w loc_03f508
    bne.w loc_03d86e
    bra.w loc_03d858

loc_03d858:
    move.w ($4d6,a4),d0
    dbra d0,loc_03d80c
    jsr loc_02e308
    clr.b ($2f6,a4)
    bra.w loc_03be10

loc_03d86e:
    clr.b ($2f6,a4)
    jsr loc_02e308
    cmpi.w #$8c,($36c,a4)
    blt.w loc_03d886
    bra.w loc_03d88a

loc_03d886:
    bra.w loc_03d898

loc_03d88a
    movea.l #loc_03d24e,a0
    bsr.w loc_03be32
    bra.w loc_03d8c6

loc_03d898:
    move.l #$100010,d0
    jsr loc_02e420
    movea.l #loc_03d3aa,a0
    bsr.w loc_03be32
    cmpi.w #$40,($340,a4)
    blt.w loc_03d8c6
    sf ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308

loc_03d8c6:
    clr.b ($2f6,a4)
    bra.w loc_03be10

;--------------------------
loc_03d8ce:
    move.l ($4d8,a4),($4e4,a4)
    btst #1,($246,a4)
    beq.w loc_03be10
    btst #3,($24a,a4)
    bne.w loc_03be10
    cmpi.w #$60,($340,a4)
    blt.w loc_03be10
    clr.b ($2f6,a4)

loc_03d8f6:
    cmpi.w #$5a,($36c,a4)
    ble.w loc_03d920
    jsr loc_0226b4
    move.l #$100010,d0
    moveq #0,d2
    move.w #$54,d2
    move.b #8,($2f6,a4)
    jsr loc_02e0f4
    bra.b loc_03d8f6

loc_03d920:
    movea.l #loc_03d2cc,a0
    bsr.w loc_03be32

loc_03d92a:
    jsr loc_0226b4
    movea.l #loc_03d4ba,a0
    bsr.w loc_03be0a
    move.l ($4e4,a4),($4d8,a4)
    btst #1,($246,a4)
    beq.b loc_03d92a
    sf ($4d4,a4)
    jsr RandomNumberGod
    lea loc_03d95c(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03d95c:
    dc.w $0004,$0014
    dc.l loc_03d9c2
    dc.w $0014
    dc.l loc_03da20
    dc.w $0014
    dc.l loc_03d9fa
    dc.w $0014
    dc.l loc_03d976

;--------------------------
loc_03d976:
    move.b #2,($2f6,a4)
    bsr.w loc_03f85e
    jsr loc_02e308
    jsr loc_02e496
    jsr loc_02e550
    bsr.w loc_03f85e
    jsr loc_02e308
    jsr loc_02e496
    jsr loc_02e550
    clr.b ($2f6,a4)
    bsr.w loc_03f85e
    jsr loc_02e26e
    bgt.w loc_03daba
    blt.w loc_03daba
    bra.w loc_03daf2

;--------------------------
loc_03d9c2:
    move.b #2,($2f6,a4)
    bsr.w loc_03f85e
    jsr loc_02e308
    jsr loc_02e496
    jsr loc_02e550
    bsr.w loc_03f85e
    jsr loc_02e26e
    jsr loc_02e26e
    bgt.w loc_03da78
    blt.w loc_03da3c
    bra.w loc_03daf2

;--------------------------
loc_03d9fa:
    st ($4d4,a4)
    move.b #2,($2f6,a4)
    bsr.w loc_03f756
    jsr loc_02e26e
    jsr loc_02e26e
    bgt.w loc_03da78
    blt.w loc_03daba
    bra.w loc_03daf2

;--------------------------
loc_03da20:
    bsr.w loc_03f756
    jsr loc_02e26e
    jsr loc_02e26e
    bgt.w loc_03da78
    blt.w loc_03daba
    bra.w loc_03daf2

;--------------------------
loc_03da3c:
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03da5c
    cmpi.w #$c0,($340,a4)
    blt.w loc_03da5c
    bsr.w loc_03f586
    bne.w loc_03daf8

loc_03da5c:
    cmpi.w #$60,($340,a4)
    blt.w loc_03daf2
    st ($3cd,a4)
    bsr.w loc_03f5ba
    jsr loc_02e308
    bra.w loc_03daf8

;--------------------------
loc_03da78:
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03da98
    cmpi.w #$c0,($340,a4)
    blt.w loc_03da98
    bsr.w loc_03f550
    bne.w loc_03daf8

loc_03da98:
    cmpi.w #$60,($340,a4)
    blt.w loc_03daf2
    jsr RandomNumberGod
    smi ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308
    bra.w loc_03daf8

;--------------------------
loc_03daba:
    cmpi.w #$40,($340,a4)
    blt.w loc_03daf2
    bsr.w loc_03f6a0
    jsr loc_02e26e
    bgt.w loc_03dada
    blt.w loc_03dada
    bra.w loc_03daf2

loc_03dada:
    cmpi.w #$c0,($340,a4)
    blt.w loc_03daf2
    bsr.w loc_03f522
    jsr loc_02e308
    bra.w loc_03daf8

;--------------------------
loc_03daf2:
    jsr loc_02e308

loc_03daf8:
    clr.b ($2f6,a4)
    bra.w loc_03be20

;--------------------------
loc_03db00:
    move.b ($361,a4),d0
    andi.b #$60,d0
    bne.w loc_03be10
    btst #1,($246,a4)
    beq.w loc_03be10
    btst #3,($24a,a4)
    bne.w loc_03be10
    cmpi.w #$28,($36c,a4)
    bgt.w loc_03be10
    cmpi.w #$30,($340,a4)
    blt.w loc_03be10
    clr.b ($2f6,a4)
    jsr loc_02e496
    jsr loc_02e550
    move.b #2,($2f6,a4)
    bsr.w loc_03f85e
    beq.w loc_03be10
    jsr loc_02e308
    jsr loc_02e496
    jsr loc_02e550
    bsr.w loc_03f85e
    beq.w loc_03be10
    jsr loc_02e308
    jsr loc_02e496
    jsr loc_02e550
    bsr.w loc_03f7d0
    beq.w loc_03be10
    jsr loc_02e26e
    bgt.w loc_03db98
    blt.w loc_03db98
    bra.w loc_03dc40

loc_03db98:
    cmpi.w #$60,($340,a4)
    blt.w loc_03dc40
    jsr RandomNumberGod
    lea loc_03dbb2(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03dbb2:
    dc.w $0003,$003c
    dc.l loc_03dbf6
    dc.w $0014
    dc.l loc_03dbde
    dc.w $0014
    dc.l loc_03dbc6

;--------------------------
loc_03dbc6:
    cmpi.w #$40,($340,a4)
    blt.w loc_03dc40
    bsr.w loc_03f6a0
    jsr loc_02e308
    bra.w loc_03dc46

loc_03dbde:
    cmpi.w #$40,($340,a4)
    blt.w loc_03dc40
    bsr.w loc_03f682
    jsr loc_02e308
    bra.w loc_03dc46

loc_03dbf6:
    jsr RandomNumberGod

loc_03dbfc:
    cmpi.w #$4000,d0
    bcs.w loc_03dc20

loc_03dc04:
    cmpi.w #$60,($340,a4)
    blt.w loc_03dc40
    st ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308
    bra.w loc_03dc46

loc_03dc20:
    cmpi.w #$c0,($340,a4)
    blt.w loc_03dc40
    jsr loc_02c78a
    beq.b loc_03dc04
    bsr.w loc_03f550
    jsr loc_02e308
    bra.w loc_03dc46

loc_03dc40:
    jsr loc_02e308

loc_03dc46:
    clr.b ($2f6,a4)
    bra.w loc_03be10

;--------------------------
loc_03dc4e:
    move.b ($361,a4),d0
    andi.b #$60,d0
    bne.w loc_03be10
    btst #1,($246,a4)
    beq.w loc_03be10
    btst #3,($24a,a4)
    bne.w loc_03be10
    cmpi.w #$2d,($36c,a4)
    bgt.w loc_03be10
    cmpi.w #$30,($340,a4)
    blt.w loc_03be10
    clr.b ($2f6,a4)
    jsr loc_02e496
    jsr loc_02e550
    move.b #2,($2f6,a4)
    bsr.w loc_03f7d0
    beq.w loc_03be10
    jsr loc_02e308
    jsr loc_02e496
    jsr loc_02e550
    bsr.w loc_03f7d0
    beq.w loc_03be10
    jsr loc_02e26e
    bgt.w loc_03dd06
    blt.w loc_03dccc
    bra.w loc_03dde0

loc_03dccc:
    cmpi.w #$60,($340,a4)
    blt.w loc_03dde0
    jsr RandomNumberGod
    lea loc_03dce6(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03dce6:
    dc.w $0005,$000a
    dc.l loc_03ddb2
    dc.w $000a
    dc.l loc_03dd96
    dc.w $000a
    dc.l loc_03dd62
    dc.w $000a
    dc.l loc_03ddce
    dc.w $000a
    dc.l loc_03dd7e

;--------------------------
loc_03dd06:
    cmpi.w #$60,($340,a4)
    blt.w loc_03dde0
    btst #1,($362,a4)
    beq.w loc_03dd3e
    jsr RandomNumberGod
    lea loc_03dd2a(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03dd2a:
    dc.w $0003,$0028
    dc.l loc_03ddc0
    dc.w $0014
    dc.l loc_03dd62
    dc.w $000a
    dc.l loc_03ddb2

;--------------------------
loc_03dd3e:
    jsr RandomNumberGod
    lea loc_03dd4e(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03dd4e:
    dc.w $0003,$0028
    dc.l loc_03dd62
    dc.w $0014
    dc.l loc_03ddb2
    dc.w $000a
    dc.l loc_03dd96

;--------------------------
loc_03dd62:
    move.b #2,($2f6,a4)
    bsr.w loc_03f6dc
    jsr loc_02e26e
    bgt.w loc_03ddce
    blt.w loc_03dd7e
    bra.w loc_03dde0

loc_03dd7e:
    cmpi.w #$c0,($340,a4)
    blt.w loc_03dde0
    movea.l #loc_03e156,a0
    bsr.w loc_03be0a
    bra.w loc_03dde6

loc_03dd96:
    bsr.w loc_03f6a0
    jsr loc_02e26e
    bgt.b loc_03dd7e
    blt.b loc_03dd7e
    bra.w loc_03dde0

loc_03dda8:
    jsr loc_02e308
    bra.w loc_03dde6

loc_03ddb2:
    bsr.w loc_03f6be
    jsr loc_02e308
    bra.w loc_03dde6

loc_03ddc0
    bsr.w loc_03f682
    jsr loc_02e308
    bra.w loc_03dde6

loc_03ddce:
    st ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308
    bra.w loc_03dde6

loc_03dde0:
    jsr loc_02e308

loc_03dde6:
    clr.b ($2f6,a4)
    bra.w loc_03be10

;--------------------------
loc_03ddee:
    move.b ($361,a4),d0
    andi.b #$60,d0
    bne.w loc_03be10
    btst #1,($246,a4)
    beq.w loc_03be10
    btst #3,($24a,a4)
    bne.w loc_03be10
    cmpi.w #$20,($340,a4)
    blt.w loc_03be10
    clr.b ($2f6,a4)
    jsr loc_02e496
    jsr loc_02e550

loc_03de28:
    cmpi.w #$32,($36c,a4)
    bgt.w loc_03de5e
    move.b #2,($2f6,a4)
    bsr.w loc_03f7d0
    jsr loc_02e308
    move.b ($361,a4),d0
    andi.b #$92,d0
    bne.w loc_03defa
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03de5e
    bra.b loc_03de28

;--------------------------
loc_03de5e:
    jsr loc_02e496
    jsr loc_02e550
    cmpi.w #$78,($378,a4)
    bgt.w loc_03defa
    move.b #2,($2f6,a4)
    bsr.w loc_03f6dc
    jsr loc_02e26e
    bgt.w loc_03de90
    blt.w loc_03ded4
    bra.w loc_03defa

loc_03de90:
    cmpi.w #$60,($340,a4)
    blt.w loc_03defa
    jsr RandomNumberGod
    smi ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.w loc_03defa
    jsr RandomNumberGod
    smi ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308
    bra.w loc_03defa

loc_03ded4:
    cmpi.w #$c0,($340,a4)

loc_03deda:
    blt.w loc_03defa
    jsr RandomNumberGod
    cmpi.w #$c000,d0
    bcs.w loc_03defa
    bsr.w loc_03f522
    bne.w loc_03defa
    jsr loc_02e308

loc_03defa:
    clr.b ($2f6,a4)
    bra.w loc_03be10

;--------------------------
loc_03df02:
    cmpi.w #$40,($340,a4)
    blt.w loc_03be10
    move.w #1,d0

loc_03df10:
    btst #6,($24a,a4)
    bne.w loc_03be10
    move.w d0,($4d6,a4)
    jsr loc_02e308
    cmpi.w #$b4,($36c,a4)
    bgt.w loc_03df92
    jsr loc_02e496
    jsr loc_02e550
    jsr RandomNumberGod
    lea loc_03df4a(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03df4a:
    dc.w $0003,$0014
    dc.l loc_03df5e
    dc.w $0014
    dc.l loc_03df7a
    dc.w $0014
    dc.l loc_03df6c

;--------------------------
loc_03df5e:
    movea.l #loc_03d24e,a0
    bsr.w loc_03be32
    bra.w loc_03df92

;--------------------------
loc_03df6c:
    movea.l #loc_03d3aa,a0
    bsr.w loc_03be32
    bra.w loc_03df92

;--------------------------
loc_03df7a:
    movea.l #loc_03d472,a0
    bsr.w loc_03be32

loc_03df84:
    jsr loc_0226b4
    btst #1,($246,a4)
    beq.b loc_03df84

loc_03df92:
    jsr loc_02e496
    jsr loc_02e550
    cmpi.w #$60,($340,a4)
    blt.w loc_03dfc8
    jsr RandomNumberGod
    cmpi.w #$c000,d0
    bcs.w loc_03dfc8
    bsr.w loc_03f550
    beq.w loc_03dfc8
    jsr loc_02e308
    bra.w loc_03e072

loc_03dfc8:
    cmpi.w #$40,($340,a4)
    blt.w loc_03e072
    st ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308
    cmpi.w #$a0,($378,a4)
    blt.w loc_03e018
    jsr RandomNumberGod
    cmpi.w #$6000,d0
    bcs.w loc_03e072
    jsr RandomNumberGod
    smi ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308
    move.w ($4d6,a4),d0
    dbra d0,loc_03df10
    bra.w loc_03beee

loc_03e018:
    jsr loc_02e496
    jsr loc_02e550
    jsr RandomNumberGod
    lea loc_03e034(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03e034:
    dc.w $0003,$0050
    dc.l loc_03e048
    dc.w $000a
    dc.l loc_03e056
    dc.w $000a
    dc.l loc_03e064

;--------------------------
loc_03e048:
    movea.l #loc_03d1dc,a0
    bsr.w loc_03be32
    bra.w loc_03e072

;--------------------------
loc_03e056:
    movea.l #loc_03d8ce,a0
    bsr.w loc_03be0a
    bra.w loc_03e072

;--------------------------
loc_03e064:
    movea.l #loc_03d2cc,a0
    bsr.w loc_03be32
    bra.w loc_03beee

;--------------------------
loc_03e072:
    clr.b ($2f6,a4)
    bra.w loc_03be10

;--------------------------
loc_03e07a:
    move.b ($361,a4),d0
    andi.b #$60,d0
    bne.w loc_03be10
    btst #1,($246,a4)
    beq.w loc_03be10
    btst #3,($24a,a4)
    bne.w loc_03be10
    cmpi.w #$70,($340,a4)
    blt.w loc_03be10
    clr.b ($2f6,a4)
    jsr loc_02e496
    jsr loc_02e550
    move.b #2,($2f6,a4)
    bsr.w loc_03f85e
    beq.w loc_03be10
    jsr loc_02e26e
    beq.w loc_03e0f4

loc_03e0cc:
    cmpi.w #$3c,($36c,a4)
    bgt.w loc_03e14e
    move.b #2,($2f6,a4)
    bsr.w loc_03f85e
    jsr loc_02e308
    move.b ($361,a4),d0
    andi.b #$92,d0
    bne.w loc_03e14e
    bra.b loc_03e0cc

loc_03e0f4:
    jsr RandomNumberGod
    andi.w #3,d0
    addq.w #1,d0

loc_03e100:
    move.w d0,($4d6,a4)
    move.b #2,($2f6,a4)
    bsr.w loc_03f85e
    jsr loc_02e2d0
    tst.b ($271,a4)
    bne.b loc_03e0cc
    move.w ($4d6,a4),d0
    dbra d0,loc_03e100
    jsr RandomNumberGod
    cmpi.w #$6000,d0
    bcs.w loc_03e14e
    cmpi.w #$40,($340,a4)
    blt.w loc_03e14e
    jsr RandomNumberGod
    spl ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308

loc_03e14e:
    clr.b ($2f6,a4)
    bra.w loc_03be10

;--------------------------
loc_03e156:
    move.b ($361,a4),d0
    andi.b #$60,d0
    bne.w loc_03be10
    btst #1,($246,a4)
    beq.w loc_03be10
    btst #3,($24a,a4)
    bne.w loc_03be10
    jsr loc_02c78a
    beq.w loc_03be10
    cmpi.w #$60,($340,a4)
    blt.w loc_03be10
    clr.b ($2f6,a4)
    jsr loc_02e496
    jsr loc_02e550
    jsr RandomNumberGod
    lea loc_03e1aa(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03e1aa:
    dc.w $0003,$001e
    dc.l loc_03e1be
    dc.w $001e
    dc.l loc_03e1e4
    dc.w $001e
    dc.l loc_03e20a

;--------------------------
loc_03e1be:
    move.l #$200030,d0
    move.b #2,($2f6,a4)
    moveq #0,d2
    move.w #$54,d2
    jsr loc_02e0f4
    bsr.w loc_03f586
    jsr loc_02e308
    bra.w loc_03e21e

;--------------------------
loc_03e1e4:
    move.l #$200030,d0
    move.b #2,($2f6,a4)
    moveq #0,d2
    move.w #$54,d2
    jsr loc_02e0f4
    bsr.w loc_03f522
    jsr loc_02e308
    bra.w loc_03e21e

;--------------------------
loc_03e20a:
    movea.l #loc_03d3aa,a0
    bsr.w loc_03be32
    bsr.w loc_03f550
    jsr loc_02e308

loc_03e21e:
    clr.b ($2f6,a4)
    bra.w loc_03be10

;--------------------------
loc_03e226:
    move.b ($361,a4),d0
    andi.b #$60,d0
    bne.w loc_03be10
    btst #1,($246,a4)
    beq.w loc_03be10
    btst #3,($24a,a4)
    bne.w loc_03be10
    cmpi.w #$50,($36c,a4)
    bge.w loc_03be10
    cmpi.w #$40,($340,a4)
    blt.w loc_03be10
    clr.b ($2f6,a4)
    st ($3cd,a4)
    tst.b ($365,a4)
    beq.w loc_03e26e
    sf ($3cd,a4)

loc_03e26e:
    bsr.w loc_03f5ba
    jsr loc_02e308
    clr.b ($2f6,a4)
    bra.w loc_03be10

;--------------------------
loc_03e280:
    move.b ($361,a4),d0
    andi.b #$60,d0
    bne.w loc_03be20
    btst #1,($246,a4)
    beq.w loc_03be10
    btst #3,($24a,a4)
    bne.w loc_03be10
    cmpi.w #$70,($340,a4)
    blt.w loc_03be10
    clr.b ($2f6,a4)
    jsr loc_02e496
    jsr loc_02e550
    bsr.w loc_03f7d0
    beq.w loc_03be10
    jsr loc_02e26e
    beq.w loc_03e2ee

loc_03e2cc:
    cmpi.w #$32,($36c,a4)
    bgt.w loc_03e30e
    bsr.w loc_03f7d0
    jsr loc_02e2d0
    move.b ($361,a4),d0
    andi.b #$92,d0
    bne.w loc_03e30e
    bra.b loc_03e2cc

;--------------------------
loc_03e2ee:
    move.w #1,d0

loc_03e2f2:
    move.w d0,($4d6,a4)
    bsr.w loc_03f7d0
    jsr loc_02e2d0
    tst.b ($271,a4)
    bne.b loc_03e2cc
    move.w ($4d6,a4),d0
    dbra d0,loc_03e2f2

loc_03e30e:
    btst #1,($362,a4)
    beq.w loc_03e336
    jsr RandomNumberGod
    lea loc_03e328(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03e328:
    dc.w $0002,$001e
    dc.l loc_03e398
    dc.w $001e
    dc.l loc_03e354

;--------------------------
loc_03e336:
    jsr RandomNumberGod
    lea loc_03e346(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03e346:
    dc.w $0002,$001e
    dc.l loc_03e398
    dc.w $001e
    dc.l loc_03e376

;--------------------------
loc_03e354:
    cmpi.w #$40,($340,a4)
    blt.w loc_03e3a2
    cmpi.w #$78,($378,a4)
    bgt.w loc_03e3a2
    bsr.w loc_03f682
    jsr loc_02e308
    bra.w loc_03e3a2

loc_03e376:
    cmpi.w #$40,($340,a4)
    blt.w loc_03e3a2
    cmpi.w #$78,($378,a4)
    bgt.w loc_03e3a2
    bsr.w loc_03f6be
    jsr loc_02e308
    bra.w loc_03e3a2

;--------------------------
loc_03e398:
    movea.l #loc_03ddee,a0
    bsr.w loc_03be0a

loc_03e3a2:
    clr.b ($2f6,a4)
    bra.w loc_03be10

;--------------------------
loc_03e3aa:
    move.b ($361,a4),d0
    andi.b #$60,d0
    bne.w loc_03be10
    btst #1,($246,a4)
    beq.w loc_03be10
    cmpi.w #$5a,($378,a4)
    bgt.w loc_03be10
    cmpi.w #$30,($340,a4)
    blt.w loc_03be10
    clr.b ($2f6,a4)
    jsr loc_02e496
    jsr loc_02e550
    bsr.w loc_03f756
    beq.w loc_03be10
    cmpi.w #7,($2fe,a4)
    beq.w loc_03e400
    jsr loc_02e308
    bra.w loc_03e4c8

loc_03e400:
    jsr loc_02e26e
    beq.w loc_03e4c8
    cmpi.w #$60,($340,a4)
    blt.w loc_03e4c2
    btst #1,($362,a4)
    bne.w loc_03e442
    jsr RandomNumberGod
    lea loc_03e42e(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03e42e:
    dc.w $0003,$0032
    dc.l loc_03e488
    dc.w $0014
    dc.l loc_03e4aa
    dc.w $0014
    dc.l loc_03e466

;--------------------------
loc_03e442:
    jsr RandomNumberGod
    lea loc_03e452(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\:
loc_03e452:
    dc.w $0003,$0032
    dc.l loc_03e466
    dc.w $0014
    dc.l loc_03e488
    dc.w $0014
    dc.l loc_03e4aa

;--------------------------
loc_03e466:
    cmpi.w #$40,($340,a4)
    blt.w loc_03e4c8
    cmpi.w #$78,($378,a4)
    bgt.w loc_03e4c8
    bsr.w loc_03f682
    jsr loc_02e308
    bra.w loc_03e4c8
  
loc_03e488:
    cmpi.w #$40,($340,a4)
    blt.w loc_03e4c8
    cmpi.w #$64,($378,a4)
    bgt.w loc_03e4c8
    bsr.w loc_03f6a0
    jsr loc_02e308
    bra.w loc_03e4c8

loc_03e4aa:
    cmpi.w #$40,($340,a4)
    blt.w loc_03e4c8
    bsr.w loc_03f6be
    jsr loc_02e308
    bra.w loc_03e4c8

loc_03e4c2:
    jsr loc_02e308

loc_03e4c8:
    clr.b ($2f6,a4)
    bra.w loc_03be10

;--------------------------
loc_03e4d0:
    move.b ($361,a4),d0
    andi.b #$60,d0
    bne.w loc_03be10
    btst #1,($246,a4)
    beq.w loc_03be10
    btst #3,($24a,a4)
    bne.w loc_03be10
    cmpi.w #$3c,($378,a4)
    bgt.w loc_03be10
    cmpi.w #$30,($340,a4)
    blt.w loc_03be10
    clr.b ($2f6,a4)
    jsr loc_02e496
    jsr loc_02e550
    move.b #$2,($2f6,a4)
    bsr.w loc_03f756
    jsr loc_02e26e
    bgt.w loc_03e530
    blt.w loc_03e530
    bra.w loc_03e5d2

loc_03e530:
    cmpi.w #$60,($340,a4)
    blt.w loc_03e5d2
    btst #1,($362,a4)
    bne.w loc_03e562
    jsr RandomNumberGod
    lea loc_03e554(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03e554:
    dc.w $0002,$001e
    dc.l loc_03e59e
    dc.w $001e
    dc.l loc_03e5b6

;--------------------------
loc_03e562:
    jsr RandomNumberGod
    lea loc_03e572(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03e572:
    dc.w $0003,$001e
    dc.l loc_03e586
    dc.w $001e
    dc.l loc_03e5b6
    dc.w $000a
    dc.l loc_03e59e

;--------------------------
loc_03e586:
    cmpi.w #$40,($340,a4)
    blt.w loc_03e5d8
    bsr.w loc_03f6be
    jsr loc_02e308
    bra.w loc_03e5d8

;--------------------------
loc_03e59e:
    cmpi.w #$40,($340,a4)
    blt.w loc_03e5d8
    bsr.w loc_03f6a0
    jsr loc_02e308
    bra.w loc_03e5d8

;--------------------------
loc_03e5b6:
    cmpi.w #$40,($340,a4)
    blt.w loc_03e5d8
    sf ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308
    bra.w loc_03e5d8

;--------------------------
loc_03e5d2:
    jsr loc_02e308

loc_03e5d8:
    clr.b ($2f6,a4)
    bra.w loc_03be10

;--------------------------
loc_03e5e0:
    move.b ($361,a4),d0
    andi.b #$60,d0
    bne.w loc_03be10
    btst #1,($246,a4)
    beq.w loc_03be10
    btst #3,($24a,a4)
    bne.w loc_03be10
    cmpi.w #$30,($340,a4)
    blt.w loc_03be10
    clr.b ($2f6,a4)
    jsr loc_02e496
    jsr loc_02e550
    btst #1,($362,a4)
    bne.w loc_03e658
    cmpi.w #$96,($378,a4)
    bgt.w loc_03be10
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03e64a
    bsr.w loc_03f6a0
    jsr loc_02e308
    bra.w loc_03e66c

;--------------------------
loc_03e64a:
    bsr.w loc_03f6be
    jsr loc_02e308
    bra.w loc_03e66c

loc_03e658:
    cmpi.w #$82,($378,a4)
    bgt.w loc_03be10
    bsr.w loc_03f682
    jsr loc_02e308

loc_03e66c:
    jsr loc_02e496
    jsr loc_02e550
    btst #1,($362,a4)
    bne.w loc_03e6a6
    jsr RandomNumberGod
    lea loc_03e692(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03e692:
    dc.w $0003,$0032
    dc.l loc_03e6ca
    dc.w $0014
    dc.l loc_03e6e6
    dc.w $000a
    dc.l loc_03e6d8

;--------------------------
loc_03e6a6:
    jsr RandomNumberGod
    lea loc_03e6b6(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03e6b6:
    dc.w $0003,$0032
    dc.l loc_03e6f4
    dc.w $0014
    dc.l loc_03e6ca
    dc.w $000a
    dc.l loc_03e6d8

;--------------------------
loc_03e6ca:
    movea.l #loc_03ddee,a0
    bsr.w loc_03be0a
    bra.w loc_03e702

;--------------------------
loc_03e6d8:
    bsr.w loc_03f6a0
    jsr loc_02e308
    bra.w loc_03e702

;--------------------------
loc_03e6e6:
    bsr.w loc_03f6be
    jsr loc_02e308
    bra.w loc_03e702

;--------------------------
loc_03e6f4:
    bsr.w loc_03f682
    jsr loc_02e308
    bra.w loc_03e702

loc_03e702:
    clr.b ($2f6,a4)
    bra.w loc_03be10

;--------------------------
loc_03e70a:
    move.b ($361,a4),d0
    andi.b #$60,d0
    bne.w loc_03be10
    btst #1,($246,a4)
    beq.w loc_03be10
    btst #3,($24a,a4)
    bne.w loc_03be10
    cmpi.w #$30,($340,a4)
    blt.w loc_03be10
    clr.b ($2f6,a4)
    jsr loc_02e496
    jsr loc_02e550
    btst #1,($362,a4)
    bne.w loc_03e75c
    movea.l #loc_03ddee,a0
    bsr.w loc_03be0a
    bra.w loc_03e770

loc_03e75c:
    cmpi.w #$40,($340,a4)
    blt.w loc_03e7fa
    bsr.w loc_03f682
    jsr loc_02e308

loc_03e770:
    btst #1,($362,a4)
    bne.w loc_03e79e
    jsr RandomNumberGod
    lea loc_03e78a(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03e78a:
    dc.w $0003,$0028
    dc.l loc_03e7ec
    dc.w $0028
    dc.l loc_03e7de
    dc.w $000a
    dc.l loc_03e7c2

;--------------------------
loc_03e79e:
    jsr RandomNumberGod
    lea loc_03e7ae(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03e7ae:
    dc.w $0003,$001e
    dc.l loc_03e7d0
    dc.w $001e
    dc.l loc_03e7de
    dc.w $000a
    dc.l loc_03e7ec

;--------------------------
loc_03e7c2:
    movea.l #loc_03e226,a0
    bsr.w loc_03be0a
    bra.w loc_03e7fa

loc_03e7d0:
    bsr.w loc_03f682
    jsr loc_02e308
    bra.w loc_03e7fa

loc_03e7de:
    movea.l #loc_03d2cc,a0
    bsr.w loc_03be32
    bra.w loc_03beee

loc_03e7ec:
    movea.l #loc_03ddee,a0
    bsr.w loc_03be0a
    bra.w loc_03e7fa

loc_03e7fa:
    clr.b ($2f6,a4)
    bra.w loc_03be10

;--------------------------
loc_03e802:
    move.b ($361,a4),d0
    andi.b #$60,d0
    bne.w loc_03be10
    btst #1,($246,a4)
    beq.w loc_03be10
    btst #3,($24a,a4)
    bne.w loc_03be10
    cmpi.w #$c0,($340,a4)
    blt.w loc_03be10
    clr.b ($2f6,a4)
    jsr loc_02e496
    jsr loc_02e550
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03e850
    move.b #2,($2f6,a4)

loc_03e850:
    bsr.w loc_03f756
    jsr loc_02e26e
    beq.w loc_03e936
    bsr.w loc_03f6a0
    jsr loc_02e26e
    bgt.w loc_03e874
    blt.w loc_03e8cc
    bra.w loc_03e930

;--------------------------
loc_03e874:
    cmpi.w #$60,($340,a4)
    blt.w loc_03e930
    jsr RandomNumberGod
    cmpi.w #$4000,d0
    bcs.w loc_03e8cc
    btst #1,($362,a4)
    beq.w loc_03e8ae
    cmpi.w #$40,($340,a4)
    blt.w loc_03e930
    bsr.w loc_03f682
    jsr loc_02e308
    bra.w loc_03e936

;--------------------------
loc_03e8ae:
    cmpi.w #$6e,($378,a4)
    blt.w loc_03e936
    move.b #2,($2f6,a4)
    bsr.w loc_03f6dc
    jsr loc_02e308
    bra.w loc_03e936

;--------------------------
loc_03e8cc:
    cmpi.w #$60,($340,a4)
    blt.w loc_03e930
    jsr RandomNumberGod
    lea loc_03e8e6(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03e8e6:
    dc.w $0002,$001e
    dc.l loc_03e8f4
    dc.w $001e
    dc.l loc_03e906

;--------------------------
loc_03e8f4:
    bsr.w loc_03f522
    beq.w loc_03e918
    jsr loc_02e308
    bra.w loc_03e936

;--------------------------
loc_03e906:
    bsr.w loc_03f550
    beq.w loc_03e918
    jsr loc_02e308
    bra.w loc_03e936

;--------------------------
loc_03e918:
    jsr RandomNumberGod
    smi ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308
    bra.w loc_03e936

;--------------------------
loc_03e930:
    jsr loc_02e308

loc_03e936:
    clr.b ($2f6,a4)
    bra.w loc_03be10

;--------------------------
loc_03e93e:
    move.b ($361,a4),d0
    andi.b #$60,d0
    bne.w loc_03be10
    btst #1,($246,a4)
    beq.w loc_03be10
    btst #3,($24a,a4)
    bne.w loc_03be10
    cmpi.w #$60,($340,a4)
    blt.w loc_03be10
    clr.b ($2f6,a4)
    jsr loc_02e496
    jsr loc_02e550
    jsr RandomNumberGod
    lea loc_03e988(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03e988:
    dc.w $000a,$000a
    dc.l loc_03ea5e
    dc.w $000a
    dc.l loc_03eba0
    dc.w $000a
    dc.l loc_03eab4
    dc.w $000a
    dc.l loc_03ea10
    dc.w $000a
    dc.l loc_03eb72
    dc.w $000a
    dc.l loc_03e9de
    dc.w $000a
    dc.l loc_03eb0c
    dc.w $000a
    dc.l loc_03eb44
    dc.w $000a
    dc.l loc_03ead6
    dc.w $000a
    dc.l loc_03e9c6

;--------------------------
loc_03e9c6:
    cmpi.w #$b4,($36c,a4)
    bgt.w loc_03ec92
    bsr.w loc_03f65c
    jsr loc_02e308
    bra.w loc_03ec92

;--------------------------
loc_03e9de:
    cmpi.w #$64,($378,a4)
    blt.w loc_03ec92
    bsr.w loc_03f6a0
    jsr loc_02e308
    jsr RandomNumberGod
    lea loc_03ea02(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03ea02:
    dc.w $0002,$001e
    dc.l loc_03ebd8
    dc.w $001e
    dc.l loc_03ec2c

;--------------------------
loc_03ea10:
    cmpi.w #$64,($378,a4)
    blt.w loc_03ec92
    movea.l #loc_03d496,a0
    bsr.w loc_03be32

loc_03ea24:
    jsr loc_0226b4
    btst #1,($246,a4)
    beq.b loc_03ea24
    sf ($3cd,a4)
    bsr.w loc_03f5ba
    jsr loc_02e308
    jsr loc_02e496
    jsr loc_02e550
    sf ($3cd,a4)
    bsr.w loc_03f5ba
    jsr loc_02e308
    bra.w loc_03ec92

;--------------------------
loc_03ea5e:
    cmpi.w #$b4,($378,a4)
    bgt.w loc_03ec92
    jsr RandomNumberGod
    cmpi.w #$8000,d0
    bcs.w loc_03ea7c
    move.b #2,($2f6,a4)

loc_03ea7c:
    bsr.w loc_03f85e
    jsr loc_02e308
    bsr.w loc_03f85e
    jsr loc_02e308
    jsr loc_02e496
    jsr loc_02e550
    jsr RandomNumberGod
    smi ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308
    bra.w loc_03ec92

;--------------------------
loc_03eab4:
    cmpi.w #$3c,($378,a4)
    bgt.w loc_03ec92
    movea.l #loc_03d472,a0
    bsr.w loc_03be32
    bsr.w loc_03f6dc
    jsr loc_02e308
    bra.w loc_03ec92

;--------------------------
loc_03ead6:
    cmpi.w #$8c,($378,a4)
    blt.w loc_03ec92
    movea.l #loc_03d496,a0
    bsr.w loc_03be32
    bsr.w loc_03f756
    jsr loc_02e308
    movea.l #loc_03d496,a0
    bsr.w loc_03be32
    bsr.w loc_03f756
    jsr loc_02e308
    bra.w loc_03ec92

;--------------------------
loc_03eb0c:
    bsr.w loc_03f85e
    jsr loc_02e308
    bsr.w loc_03f85e
    jsr loc_02e308
    jsr RandomNumberGod
    lea loc_03eb30(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03eb30:
    dc.w $0003,$0014
    dc.l loc_03ec02
    dc.w $0014
    dc.l loc_03ec2c
    dc.w $0014
    dc.l loc_03ec4e

;--------------------------
loc_03eb44:
    bsr.w loc_03f6dc
    jsr loc_02e308
    jsr RandomNumberGod
    lea loc_03eb5e(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03eb5e:
    dc.w $0003,$001e
    dc.l loc_03ec4e
    dc.w $001e
    dc.l loc_03ec10
    dc.w $001e
    dc.l loc_03ec1e

;--------------------------
loc_03eb72:
    move.b #2,($2f6,a4)
    bsr.w loc_03f6dc
    jsr loc_02e308
    jsr RandomNumberGod
    lea loc_03eb92(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03eb92:
    dc.w $0002,$001e
    dc.l loc_03ec10
    dc.w $001e
    dc.l loc_03ec4e

;--------------------------
loc_03eba0:
    cmpi.w #$60,($340,a4)
    blt.w loc_03ec92
    bsr.w loc_03f682
    jsr loc_02e308
    jsr RandomNumberGod
    lea loc_03ebc4(pc),a0
    jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03ebc4:
    dc.w $0003,$001e
    dc.l loc_03ec70
    dc.w $001e
    dc.l loc_03ebf0
    dc.w $001e
    dc.l loc_03ec10

;--------------------------
loc_03ebd8:
    jsr RandomNumberGod
    smi ($3cd,a4)
    bsr.w loc_03f606
    jsr loc_02e308
    bra.w loc_03ec92

;--------------------------
loc_03ebf0:
    st ($3cd,a4)
    bsr.w loc_03f5ba
    jsr loc_02e308
    bra.w loc_03ec92

;--------------------------
loc_03ec02:
    bsr.w loc_03f756
    jsr loc_02e308
    bra.w loc_03ec92

;--------------------------
loc_03ec10:
    movea.l #loc_03ddee,a0
    bsr.w loc_03be0a
    bra.w loc_03ec92

;--------------------------
loc_03ec1e:
    bsr.w loc_03f6dc
    jsr loc_02e308
    bra.w loc_03ec92

;--------------------------
loc_03ec2c:
    cmpi.w #$60,($340,a4)
    blt.w loc_03ec92
    cmpi.w #$6e,($378,a4)
    bgt.w loc_03ec92
    bsr.w loc_03f6a0
    jsr loc_02e308
    bra.w loc_03ec92

;--------------------------
loc_03ec4e:
    cmpi.w #$60,($340,a4)
    blt.w loc_03ec92
    cmpi.w #$78,($378,a4)
    bgt.w loc_03ec92
    bsr.w loc_03f6be
    jsr loc_02e308
    bra.w loc_03ec92

;--------------------------
loc_03ec70:
    cmpi.w #$60,($340,a4)
    blt.w loc_03ec92
    cmpi.w #$6e,($378,a4)
    bgt.w loc_03ec92
    bsr.w loc_03f682
    jsr loc_02e308
    bra.w loc_03ec92

;--------------------------
loc_03ec92:
    clr.b ($2f6,a4)
    bra.w loc_03be20

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;paletteponiters
DaoTblPal0:
    dc.l loc_03ee5a,loc_03eefa,loc_03edfa,loc_03edda
    dc.l loc_03ef9a,loc_03efba,loc_03efda,loc_03effa
    dc.l loc_03f01a,loc_03f03a,loc_03ee1a,loc_03ee3a
    dc.l loc_03f05a,loc_03f0da,loc_03f17a,0

loc_03ecda:
    dc.l loc_03ee7a,loc_03ef1a,loc_03edfa,loc_03edda
    dc.l loc_03ef9a,loc_03efba,loc_03efda,loc_03effa
    dc.l loc_03f01a,loc_03f03a,loc_03ee1a,loc_03ee3a
    dc.l loc_03f07a,loc_03f0fa,loc_03f17a,0

loc_03ed1a:
    dc.l loc_03ee9a,loc_03ef3a,loc_03edfa,loc_03edda
    dc.l loc_03ef9a,loc_03efba,loc_03efda,loc_03effa
    dc.l loc_03f01a,loc_03f03a,loc_03ee1a,loc_03ee3a
    dc.l loc_03f09a,loc_03f11a,loc_03f17a,0

loc_03ed5a:
    dc.l loc_03eeba,loc_03ef5a,loc_03edfa,loc_03edda
    dc.l loc_03ef9a,loc_03efba,loc_03efda,loc_03effa
    dc.l loc_03f01a,loc_03f03a,loc_03ee1a,loc_03ee3a
    dc.l loc_03f0ba,loc_03f13a,loc_03f17a,0

loc_03ed9a:
    dc.l loc_03eeda,loc_03ef7a,loc_03edfa,loc_03edda
    dc.l loc_03ef9a,loc_03efba,loc_03efda,loc_03effa
    dc.l loc_03f01a,loc_03f03a,loc_03ee1a,loc_03ee3a
    dc.l loc_03f07a,loc_03f15a,loc_03f17a,0


;Palette start
loc_03edda:
    dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
    dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

loc_03edfa:
    dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
    dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

loc_03ee1a:
    dc.w $7111,$700a,$601c,$700f,$112f,$713f,$324f,$526f
    dc.w $337f,$539f,$73af,$34bf,$74df,$75ff,$7aff,$7fff

loc_03ee3a:
    dc.w $7888,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
    dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_03ee5a:
    dc.w $07a7,$0c00,$7830,$0c63,$5f95,$5fc8,$6feb,$5014
    dc.w $7138,$625c,$347d,$0ace,$7fff,$0e30,$4f90,$4fe0

loc_03ee7a:
    dc.w $07a7,$0c00,$7831,$0c64,$6f96,$4fc9,$6feb,$2230
    dc.w $3150,$2171,$5393,$79d9,$7fff,$0d20,$6f80,$6fe0

loc_03ee9a:
    dc.w $07a7,$0c00,$2932,$6c64,$6f96,$4fc9,$4feb,$4122
    dc.w $4344,$3555,$3777,$6ccc,$5fff,$0d20,$6f80,$6fe0

loc_03eeba:
    dc.w $07a7,$0c00,$7831,$0c64,$5f95,$5fc8,$6feb,$6623
    dc.w $4b35,$6e47,$6f6a,$4fce,$7fff,$4b20,$6e80,$6fe0

loc_03eeda:
    dc.w $07a7,$0c00,$7730,$6b63,$5e95,$5fc8,$6feb,$0700
    dc.w $0c10,$0f32,$5f72,$6fcb,$7fff,$5c70,$5dc3,$3ef3

loc_03eefa:
    dc.w $75cb,$0c00,$6200,$0500,$2820,$4963,$2b97,$7003
    dc.w $6004,$7037,$336b,$179b,$7bbb,$0800,$7b30,$5b91

loc_03ef1a:
    dc.w $07a7,$0c00,$6200,$0500,$2820,$4963,$2b97,$2000
    dc.w $0010,$0030,$7050,$06a6,$7ccc,$0800,$7b30,$5b91

loc_03ef3a:
    dc.w $07a7,$0c00,$6200,$0500,$2820,$4963,$2b97,$7000
    dc.w $7000,$0222,$0444,$1998,$7ccc,$0800,$7b30,$5b91

loc_03ef5a:
    dc.w $07a7,$0c00,$6200,$0500,$2820,$4963,$2b97,$0200
    dc.w $4600,$7a02,$7c25,$5c68,$7ccc,$0800,$7b30,$5b91

loc_03ef7a:
    dc.w $07a7,$0900,$1500,$7820,$0c52,$6c85,$2cb8,$0400
    dc.w $3800,$3b00,$6c31,$2c98,$5ccc,$0900,$6c40,$1ca2

loc_03ef9a:
    dc.w $7bbb,$7a00,$7f00,$7f50,$5fa2,$5fd8,$6ff6,$7a00
    dc.w $7f00,$7f50,$5f80,$5fe1,$7ffa,$5f40,$7f60,$7fb0

loc_03efba:
    dc.w $7888,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
    dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_03efda:
    dc.w $7000,$7fff,$7ccf,$799f,$766f,$733f,$700f,$3eff
    dc.w $3bdf,$58bf,$559f,$336f,$304f,$17bf,$146f,$700f

loc_03effa:
    dc.w $7000,$700f,$733f,$766f,$799f,$7ccf,$7fff,$304f
    dc.w $336f,$559f,$58bf,$3bdf,$3eff,$700f,$146f,$17bf

loc_03f01a:
    dc.w $07a7,$0409,$0409,$462c,$394f,$5a8f,$5ccf,$291b
    dc.w $583a,$2c6e,$0d9f,$4dae,$0ebd,$3b39,$3d5c,$7f7f

loc_03f03a:
    dc.w $7888,$3053,$3053,$2274,$54a4,$07c5,$69e6,$7380
    dc.w $06b3,$08c4,$49d5,$7be6,$7df7,$71a6,$43c9,$55eb

loc_03f05a:
    dc.w $6111,$2008,$2009,$5019,$501a,$002c,$302c,$325e
    dc.w $237f,$439f,$63af,$24bf,$64df,$65ff,$6aff,$6fff

loc_03f07a:
    dc.w $7888,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
    dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_03f09a:
    dc.w $7888,$3053,$3053,$2274,$54a4,$07c5,$09b4,$2b93
    dc.w $7d81,$5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc

loc_03f0ba:
    dc.w $1aa6,$7fff,$7eff,$7dff,$2cff,$2bff,$2aff,$29ef
    dc.w $28df,$27cf,$26bf,$25af,$63af,$629f,$118f,$107f

loc_03f0da:
    dc.w $7111,$7f55,$1b75,$6e98,$5fc9,$7ffc,$7fff,$6679
    dc.w $659e,$58df,$7bff,$7fff,$7fff,$7f55,$4fe8,$7ffa

loc_03f0fa:
    dc.w $7111,$7f55,$1b75,$6e98,$5fc9,$7ffc,$7fff,$7575
    dc.w $16b5,$66e6,$2bfb,$7fff,$7fff,$7f55,$4fe8,$7ffa

loc_03f11a:
    dc.w $7111,$7f55,$1b75,$6e98,$5fc9,$7ffc,$7fff,$0555
    dc.w $7777,$0999,$0bbb,$7fff,$7fff,$0eee,$7fff,$7fff

loc_03f13a:
    dc.w $66cc,$7f55,$1b75,$6e98,$5fc9,$7ffc,$7fff,$1965
    dc.w $6d57,$7f79,$7f9c,$7fef,$7fff,$0eee,$7fff,$7fff

loc_03f15a:
    dc.w $07a7,$7f77,$7fa8,$4fdb,$7ffc,$7fff,$7fff,$7e87
    dc.w $6f89,$7f99,$7feb,$7fff,$7fff,$4f88,$4ffa,$6ffd

loc_03f17a:
    dc.w $0000,$526f,$726f,$337f,$338f,$739f,$73af,$34bf
    dc.w $74df,$75ff,$7aff,$7fff,$3b39,$6c5d,$3e8f,$1fbf

;--------------------------
DaoPRGStart:;3f19a
    move.l #loc_03f932,($86,a4)
    move.l #loc_03bdde,($56,a4)
    move.l #loc_03f236,($1b6,a4)
    move.l #loc_03f242,($1ba,a4)
    move.l #loc_03f248,($1be,a4)
    move.l #loc_03f250,($1c2,a4)
    move.l #loc_03bdb2,($1c6,a4)
    move.l #loc_03f930,($1ce,a4)
    move.l #loc_03f39e,($1ca,a4)
    move.l #loc_040582,($1d2,a4)
    move.l #loc_0949b8,($1d6,a4)
    move.l #loc_04039e,($1da,a4)
    move.l #loc_040452,($1de,a4)
    move.l #loc_0403be,($1e2,a4)
    move.l #loc_04036e,($1e6,a4)
    move.l #loc_040352,($1ea,a4)
    move.l #loc_040486,($1ee,a4)
    bsr.w loc_03bd86
    andi.w #$f0ff,($2ee,a4)
    move.l #loc_040710,($2d0,a4)
    rts

loc_03f236:
    clr.w ($550,a4)
    jsr loc_02a9c4
    rts

loc_03f242:
    clr.w ($550,a4)
    rts

loc_03f248:
    move.w ($2ba,a3),($2ba,a4)
    rts

loc_03f250:
;special moves
    lea ($3d0,a4),a0
    jsr loc_02cbba
    move.b ($3d0,a4),d0
    move.b d0,($3c0,a4)
    move.b ($3d4,a4),d0
    move.b d0,($3c1,a4)
    tst.w ($20a,a4)
    bne.w loc_03f27e
    tst.b ($3d9,a4)
    bmi.w loc_03f27e
    sf ($3d9,a4)

loc_03f27e:
    lea ($3ec,a4),a0
    lea loc_03f37e(pc),a1
    jsr loc_02cf62
    and.b d1,($3c4,a4)
    or.b d0,($3c4,a4)
    andi.b #$aa,($3c4,a4)


    lea ($3f8,a4),a0
    lea loc_03f386(pc),a1
    jsr loc_02cf62
    and.b d1,($3c5,a4)
    or.b d0,($3c5,a4)
    andi.b #$55,($3c5,a4)


    lea ($410,a4),a0
    lea loc_03f396(pc),a1
    jsr loc_02d176
    and.b d1,($3c7,a4)
    or.b d0,($3c7,a4)
    andi.b #$aa,($3c7,a4)


    lea ($404,a4),a0
    lea loc_03f38e(pc),a1
    jsr loc_02cf62
    and.b d1,($3c6,a4)
    or.b d0,($3c6,a4)
    andi.b #$aa,($3c6,a4)


    lea ($3e2,a4),a0
    lea loc_03f378(pc),a1
    jsr loc_02cd84
    and.b d1,($3c3,a4)
    or.b d0,($3c3,a4)
    andi.b #$aa,($3c3,a4)


    lea ($3d8,a4),a0
    lea loc_03f372(pc),a1
    jsr loc_02cd84
    and.b d1,($3c2,a4)
    or.b d0,($3c2,a4)
    andi.b #$55,($3c2,a4)

    move.b ($2f9,a4),d0
    not.b d0
    andi.b #$50,d0
    seq d0
    or.b d0,($3c8,a4)

    move.b ($2f9,a4),d0
    not.b d0
    andi.b #$a0,d0
    seq d0
    or.b d0,($3c9,a4)

    move.b ($2f9,a4),d0
    not.b d0
    andi.b #$30,d0
    seq d0
    or.b d0,($3ca,a4)

    move.b ($2f9,a4),d0
    not.b d0
    andi.b #$c0,d0
    seq d0
    or.b d0,($3cb,a4)
    tst.b ($2fc,a4)
    smi d0
    or.b d0,($3cc,a4)
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03f372:
    dc.b $04,$78,$20,$08,$0a,$05

loc_03f378:
    dc.b $02,$01,$20,$0a,$0a,$05

loc_03f37e:
    dc.b $04,$08,$04,$78,$1e,$18,$0a,$07

loc_03f386:
    dc.b $04,$08,$04,$78,$1e,$18,$0a,$07

loc_03f38e:
    dc.b $06,$18,$14,$01,$1e,$18,$0a,$07

loc_03f396:
    dc.b $0a,$03,$0a,$03,$0a,$03,$0a,$03

;--------------------------
loc_03f39e:
    bsr.w loc_03f3b4
    bne.w loc_03f3b2
    bsr.w loc_03f434
    bne.w loc_03f3b2
    bsr.w loc_03f4b2

loc_03f3b2:
    rts

;--------------------------
loc_03f3b4:
    tst.b ($3c6,a4)
    beq.b loc_03f3c2
    bsr.w loc_03f586
    bne.w loc_03f406

loc_03f3c2:
    tst.b ($3c4,a4)
    beq.b loc_03f3d0
    bsr.w loc_03f522
    bne.w loc_03f406

loc_03f3d0:
    tst.b ($3c5,a4)
    beq.b loc_03f3de
    bsr.w loc_03f550
    bne.w loc_03f406

loc_03f3de:
    tst.b ($3c3,a4)
    beq.b loc_03f3ec
    bsr.w loc_03f5ba
    bne.w loc_03f406

loc_03f3ec:
    tst.b ($3c2,a4)
    beq.b loc_03f3fa
    bsr.w loc_03f606
    bne.w loc_03f406

loc_03f3fa:
    bsr.w loc_03f408
    bne.w loc_03f406
    clr.w d0
    rts

loc_03f406:
    rts

;--------------------------
loc_03f408:
    btst #6,($2f7,a4)
    beq.w loc_03f42e
    move.b ($2f6,a4),d0
    cmpi.b #4,d0
    beq.w loc_03f426
    cmpi.b #8,d0
    bne.w loc_03f42e

loc_03f426:
    bsr.w loc_03f508
    bne.w loc_03f432

loc_03f42e:
    clr.w d0
    rts

loc_03f432:
    rts

;--------------------------
loc_03f434:
    tst.b ($3cb,a4)
    beq.b loc_03f442
    bsr.w loc_03f682
    bne.w loc_03f4b0

loc_03f442:
    tst.b ($3c9,a4)
    beq.b loc_03f450
    bsr.w loc_03f6be
    bne.w loc_03f4b0

loc_03f450:
    tst.b ($3c8,a4)
    beq.b loc_03f45e
    bsr.w loc_03f6a0
    bne.w loc_03f4b0

loc_03f45e:
    btst #7,($2f7,a4)
    beq.b loc_03f46e
    bsr.w loc_03f6dc
    bne.w loc_03f4b0

loc_03f46e:
    btst #6,($2f7,a4)
    beq.b loc_03f47e
    bsr.w loc_03f756
    bne.w loc_03f4b0

loc_03f47e:
    btst #5,($2f7,a4)
    beq.b loc_03f48e
    bsr.w loc_03f7d0
    bne.w loc_03f4b0

loc_03f48e:
    btst #4,($2f7,a4)
    beq.b loc_03f49e
    bsr.w loc_03f85e
    bne.w loc_03f4b0

loc_03f49e:
    tst.b ($3cc,a4)
    beq.b loc_03f4ac
    bsr.w loc_03f65c
    bne.w loc_03f4b0

loc_03f4ac:
    clr.w d0
    rts

loc_03f4b0:
    rts

;--------------------------
loc_03f4b2:
    tst.b ($209,a4)
    bmi.w loc_03f4de
    tst.b ($3c1,a4)
    beq.w loc_03f4ca
    bsr.w loc_03f8ec
    bne.w loc_03f502

loc_03f4ca:
    tst.b ($3c0,a4)
    beq.w loc_03f4da
    bsr.w loc_03f90a
    bne.w loc_03f502

loc_03f4da:
    clr.w d0
    rts

loc_03f4de:
    tst.b ($3c0,a4)
    beq.w loc_03f4ee
    bsr.w loc_03f8ec
    bne.w loc_03f502

loc_03f4ee:
    tst.b ($3c1,a4)
    beq.w loc_03f4fe
    bsr.w loc_03f90a
    bne.w loc_03f502

loc_03f4fe:
    clr.w d0
    rts

loc_03f502:
    rts

;--------------------------
loc_03f504:
    clr.w d0
    rts

;--------------------------
loc_03f508:;Throw
    cmpi.w #$20,($226,a4)
    bgt.b loc_03f504
    jsr loc_02a4dc;throw check
    beq.b loc_03f504
    move.w #$15,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f522:
    btst #1,($246,a4)
    beq.b loc_03f504
    jsr loc_02c78a
    beq.b loc_03f504
    btst #5,($24a,a4)
    beq.b loc_03f542
    tst.w ($550,a4)
    bne.b loc_03f542
    bra.b loc_03f504

loc_03f542:
    sf ($3ed,a4)
    move.w #$20,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f550:
    btst #1,($246,a4)
    beq.b loc_03f504
    jsr loc_02c78a
    beq.b loc_03f504
    cmpi.b #2,($2b2,a4)
    bcc.b loc_03f504
    btst #5,($24a,a4)
    beq.b loc_03f578
    tst.w ($550,a4)
    bne.b loc_03f578
    bra.b loc_03f504

loc_03f578:
    sf ($3f9,a4)
    move.w #$21,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f586:
    btst #1,($246,a4)
    beq.w loc_03f504
    jsr loc_02c78a
    beq.w loc_03f504
    btst #5,($24a,a4)
    beq.b loc_03f5ac
    tst.w ($550,a4)
    bne.b loc_03f5ac
    bra.w loc_03f504

loc_03f5ac:
    sf ($405,a4)
    move.w #$1f,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f5ba:
    btst #5,($24a,a4)
    bne.w loc_03f504
    btst #1,($246,a4)
    beq.w loc_03f504
    tst.b (1,a4)
    bpl.b loc_03f5e2
    move.b ($3c3,a4),d0
    andi.b #$cc,d0
    sne ($ba,a4)
    bra.b loc_03f5e8

loc_03f5e2:
    move.b ($3cd,a4),($ba,a4)

loc_03f5e8:
    sf ($3e3,a4)
    tst.b ($ba,a4)
    bne.b loc_03f5fc
    move.w #$1b,d0
    move.w d0,($2fe,a4)
    rts

loc_03f5fc:
    move.w #$1c,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f606:
    btst #5,($24a,a4)
    bne.w loc_03f504
    btst #1,($246,a4)
    beq.w loc_03f504
    tst.b ($2b2,a4)
    bne.w loc_03f504
    tst.b (1,a4)
    bpl.b loc_03f636
    move.b ($3c2,a4),d0
    andi.b #$cc,d0
    sne ($ba,a4)
    bra.b loc_03f63c

loc_03f636:
    move.b ($3cd,a4),($ba,a4)

loc_03f63c:
    sf ($3d9,a4)
    tst.b ($ba,a4)
    bne.b loc_03f652
    move.w #$1d,d0
    move.w d0,($2fe,a4)
    rts

loc_03f650:
    bra.b loc_03f65c

loc_03f652:
    move.w #$1e,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f65c:
    btst #4,($24a,a4)
    bne.w loc_03f504
    btst #1,($246,a4)
    beq.w loc_03f504
    tst.w ($552,a4)
    bne.w loc_03f504
    move.w #$22,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f682:
    btst #4,($24a,a4)
    bne.w loc_03f504
    btst #1,($246,a4)
    beq.w loc_03f504
    move.w #$18,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f6a0:
    btst #4,($24a,a4)
    bne.w loc_03f504
    btst #1,($246,a4)
    beq.w loc_03f504
    move.w #$19,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f6be:
    btst #4,($24a,a4)
    bne.w loc_03f504
    btst #1,($246,a4)
    beq.w loc_03f504
    move.w #$1a,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f6dc:
    btst #1,($246,a4)
    bne.w loc_03f710
    btst #0,($24a,a4)
    bne.w loc_03f504
    move.b ($248,a4),d0
    andi.b #$c,d0
    bne.w loc_03f706
    move.w #$13,d0
    move.w d0,($2fe,a4)
    rts

loc_03f706:
    move.w #$14,d0
    move.w d0,($2fe,a4)
    rts

loc_03f710:
    btst #1,($246,a4)
    beq.w loc_03f504
    btst #3,($24a,a4)
    bne.w loc_03f504
    btst #1,($2f6,a4)
    bne.w loc_03f74c
    cmpi.w #$30,($226,a4)
    bgt.w loc_03f742
    move.w #$a,d0
    move.w d0,($2fe,a4)
    rts

loc_03f742:
    move.w #$b,d0
    move.w d0,($2fe,a4)
    rts

loc_03f74c:
    move.w #$c,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f756:
    btst #1,($246,a4)
    bne.w loc_03f78a
    btst #0,($24a,a4)
    bne.w loc_03f504
    move.b ($248,a4),d0
    andi.b #$c,d0
    bne.w loc_03f780
    move.w #$11,d0
    move.w d0,($2fe,a4)
    rts

loc_03f780:
    move.w #$12,d0
    move.w d0,($2fe,a4)
    rts

loc_03f78a:
    btst #1,($246,a4)
    beq.w loc_03f504
    btst #3,($24a,a4)
    bne.w loc_03f504
    btst #1,($2f6,a4)
    bne.w loc_03f7c6
    cmpi.w #$28,($226,a4)
    bgt.w loc_03f7bc
    move.w #7,d0
    move.w d0,($2fe,a4)
    rts

loc_03f7bc:
    move.w #8,d0
    move.w d0,($2fe,a4)
    rts

loc_03f7c6:
    move.w #9,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f7d0:
    btst #1,($246,a4)
    bne.w loc_03f804
    btst #0,($24a,a4)
    bne.w loc_03f504
    move.b ($248,a4),d0
    andi.b #$c,d0
    bne.w loc_03f7fa
    move.w #$f,d0
    move.w d0,($2fe,a4)
    rts

loc_03f7fa:
    move.w #$10,d0
    move.w d0,($2fe,a4)
    rts

loc_03f804:
    btst #1,($246,a4)
    beq.w loc_03f504
    btst #3,($24a,a4)
    beq.w loc_03f82c
    btst #1,($24a,a4)
    bne.w loc_03f504
    cmpi.b #1,($2c6,a4)
    bne.w loc_03f504

loc_03f82c:
    btst #1,($2f6,a4)
    bne.w loc_03f854
    cmpi.w #$28,($226,a4)
    bgt.w loc_03f84a
    move.w #4,d0
    move.w d0,($2fe,a4)
    rts

loc_03f84a:
    move.w #5,d0
    move.w d0,($2fe,a4)
    rts

loc_03f854:
    move.w #6,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f85e:
    btst #1,($246,a4)
    bne.w loc_03f892
    btst #0,($24a,a4)
    bne.w loc_03f504
    move.b ($248,a4),d0
    andi.b #$c,d0
    bne.w loc_03f888
    move.w #$d,d0
    move.w d0,($2fe,a4)
    rts

loc_03f888:
    move.w #$e,d0
    move.w d0,($2fe,a4)
    rts

loc_03f892:
    btst #1,($246,a4)
    beq.w loc_03f504
    btst #3,($24a,a4)
    beq.w loc_03f8ba
    btst #1,($24a,a4)
    bne.w loc_03f504
    cmpi.b #1,($2c6,a4)
    bne.w loc_03f504

loc_03f8ba:
    btst #1,($2f6,a4)
    bne.w loc_03f8e2
    cmpi.w #$20,($226,a4)
    bgt.w loc_03f8d8
    move.w #1,d0
    move.w d0,($2fe,a4)
    rts

loc_03f8d8:
    move.w #2,d0
    move.w d0,($2fe,a4)
    rts

loc_03f8e2:
    move.w #3,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f8ec:
    btst #3,($24a,a4)
    bne.w loc_03f504
    btst #1,($246,a4)
    beq.w loc_03f504
    move.w #$17,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f90a:
    tst.b ($24a,a4)
    bne.w loc_03f504
    btst #1,($246,a4)
    beq.w loc_03f504
    btst #4,($248,a4)
    bne.w loc_03f504
    move.w #$16,d0
    move.w d0,($2fe,a4)
    rts

;--------------------------
loc_03f930:
    rts

;--------------------------
loc_03f932:
    tst.b (-$3e4,a5)
    bne.w loc_03f960
    cmpi.w #1,(-$f2e,a5)
    bgt.w loc_03f960
    movea.l #loc_04060e,a0
    clr.w d0
    jsr loc_0226f0

loc_03f952:
    jsr loc_02269c
    btst #2,($2e1,a4)
    beq.b loc_03f952

loc_03f960:
    movea.l ($1de,a4),a0
    movea.l (0,a0),a0
    jmp (a0)


loc_03f96a:
    move.l (-$45de,a5),($212,a4)
    move.b ($209,a4),($208,a4)

loc_03f976:
    jsr loc_02269c
    btst #4,($248,a4)
    bne.w loc_03f9a2
    btst #0,($2f6,a4)
    beq.w loc_03f9a2
    tst.w ($20c,a4)
    bne.w loc_03f9a2
    movea.l ($1de,a4),a0
    movea.l ($20,a0),a0
    jmp (a0)

loc_03f9a2:
    btst #2,($2e1,a4)
    beq.b loc_03f976
    movea.l ($1de,a4),a0
    movea.l (0,a0),a0
    jmp (a0)

loc_03f9b4:
    clr.l ($216,a4)
    clr.l ($21a,a4)
    st ($24a,a4)
    move.l (-$45de,a5),($212,a4)
    move.b ($209,a4),($208,a4)
    move.b ($208,a4),d0
    not.b d0
    move.b d0,($208,a3)
    sf ($bb,a4)
    tst.b (1,a4)
    bpl.w loc_03f9ec
    btst #3,($2f6,a4)
    sne ($bb,a4)

loc_03f9ec:
    move.l #$40000,d2
    move.l #-$60000,d3
    jsr loc_02a59c
    lea loc_03fa46(pc),a0
    jsr loc_02a554

loc_03fa08:
    jsr loc_02269c
    tst.b ($b6,a4)
    beq.w loc_03fa2a
    sf ($b6,a4)
    tst.b ($bb,a4)
    beq.w loc_03fa2a
    not.b ($208,a4)
    not.b ($208,a3)

loc_03fa2a:
    btst #2,($2e1,a4)
    beq.b loc_03fa08
    move.b ($209,a4),($208,a4)
    clr.w ($2bc,a4)
    movea.l ($1de,a4),a0
    movea.l (0,a0),a0
    jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03fa46:;Getting thrown
    dc.l loc_04235c,loc_0423ca,loc_042438,loc_0424ac
    dc.l loc_042520,loc_04258e,loc_042602,loc_042670
    dc.l loc_0426de,loc_042752,loc_04235c,loc_04235c
    dc.l loc_04235c,loc_04235c,loc_04235c,loc_04235c

;--------------------------
loc_03fa86:
    st ($24a,a4)
    clr.l ($216,a4)
    clr.l ($21a,a4)
    move.l (-$45de,a5),($212,a4)
    move.b ($209,a4),($208,a4)

loc_03fa9e:
    jsr loc_02269c
    tst.b ($b6,a4)
    beq.w loc_03facc
    sf ($b6,a4)
    movem.l d2,-(a7)
    move.w #$29,d2
    jsr loc_027a84
    movem.l (a7)+,d2
    bmi.w loc_03facc
    move.b ($ba,a4),($66,a0)

loc_03facc:
    btst #2,($2e1,a4)
    beq.b loc_03fa9e
    movea.l ($1de,a4),a0
    movea.l (0,a0),a0
    jmp (a0)

;--------------------------
loc_03fade:
    st ($24a,a4)
    clr.l ($216,a4)
    clr.l ($21a,a4)
    move.l (-$45de,a5),($212,a4)
    move.b ($209,a4),($208,a4)

loc_03faf6:
    jsr loc_02269c
    tst.b ($b6,a4)
    beq.b loc_03faf6
    tst.b ($ba,a4)
    bne.b loc_03fb1a
    move.l #$20000,($216,a4)
    move.l #-$a0000,($21a,a4)
    bra.b loc_03fb2a

loc_03fb1a:
    move.l #$80000,($216,a4)
    move.l #-$c0000,($21a,a4)

loc_03fb2a:
    jsr loc_02269c
    move.l ($216,a4),d0
    lsr.l #3,d0
    sub.l d0,($216,a4)
    addi.l #$a000,($21a,a4)
    tst.l ($21a,a4)
    bmi.b loc_03fb2a
    clr.l ($216,a4)
    movea.l #loc_042c06,a0
    clr.w d0
    jsr loc_0226f0

loc_03fb5a:
    jsr loc_02269c
    addi.l #$a000,($21a,a4)
    btst #1,($246,a4)
    beq.b loc_03fb5a
    clr.l ($216,a4)
    clr.l ($21a,a4)
    movea.l #loc_042c52,a0
    clr.w d0
    jsr loc_0226f0

loc_03fb86:
    jsr loc_02269c
    btst #2,($2e1,a4)
    beq.b loc_03fb86
    movea.l ($1de,a4),a0
    movea.l (0,a0),a0
    jmp (a0)

;--------------------------
loc_03fb9e:
    jsr loc_02c7ae
    st ($24a,a4)
    clr.l ($216,a4)
    clr.l ($21a,a4)
    btst #1,($246,a4)
    beq.b loc_03fbbe
    move.l (-$45de,a5),($212,a4)

loc_03fbbe:
    move.b ($209,a4),($208,a4)

loc_03fbc4:
    btst #1,($246,a4)
    beq.b loc_03fbd4
    addi.l #$b000,($21a,a4)

loc_03fbd4:
    jsr loc_02269c
    tst.b ($b9,a4)
    beq.b loc_03fbf2
    sf ($b9,a4)
    move.w #$c,d2
    move.w #-$14,d3
    jsr loc_02c7be

loc_03fbf2:
    tst.b ($b6,a4)
    beq.b loc_03fbc4
    move.l #0,($216,a4)
    move.l #-$a0000,($21a,a4)
    move.w #$1c,d5
    sf ($273,a4)

loc_03fc10:
    btst #0,($2e1,a4)
    beq.b loc_03fc30
    addq.w #1,($27a,a4)
    bclr #7,($24c,a4)
    tst.w d5
    bmi.b loc_03fc9a
    cmpi.l #-$10000,($21a,a4)
    bge.b loc_03fc9a

loc_03fc30:
    jsr loc_02269c
    cmpi.l #-$40000,($21a,a4)
    ble.w loc_03fc52
    tst.b ($3c7,a4)
    beq.b loc_03fc52
    addi.l #$1000,($21a,a4)
    bra.b loc_03fc5a

loc_03fc52:
    addi.l #$8000,($21a,a4)

loc_03fc5a:
    tst.b ($273,a4)
    beq.b loc_03fc92
    sf ($273,a4)
    subq.w #1,d5
    move.w ($254,a4),d0
    addq.w #2,d0
    asr.w #3,d0
    sub.w d0,($254,a4)
    cmpi.w #$40,($254,a4)
    bgt.b loc_03fc80
    move.w #$40,($254,a4)

loc_03fc80:
    move.w ($256,a4),d0
    addq.w #2,d0
    asr.w #3,d0
    sub.w d0,($256,a4)
    move.w #$64,($25a,a4)

loc_03fc92:
    tst.l ($21a,a4)
    ble.w loc_03fc10

loc_03fc9a:
    move.b #$24,($24e,a4)
    move.w #$40,($290,a4)

loc_03fca6:
    jsr loc_02269c
    addi.l #$6000,($21a,a4)
    tst.l ($21a,a4)
    ble.b loc_03fca6
    cmpi.w #$1c,d5
    bge.b loc_03fcca
    move.w #$e9,d0
    jsr loc_02301a

loc_03fcca:
    movea.l #loc_042d72,a0
    clr.w d0
    jsr loc_0226f0

loc_03fcd8:
    jsr loc_02269c
    addi.l #$6000,($21a,a4)
    btst #1,($246,a4)
    beq.b loc_03fcd8
    clr.l ($216,a4)
    clr.l ($21a,a4)
    movea.l #loc_040ad8,a0
    clr.w d0
    jsr loc_0226f0

loc_03fd04:
    jsr loc_02269c
    btst #2,($2e1,a4)
    beq.b loc_03fd04
    movea.l ($1de,a4),a0
    movea.l (0,a0),a0
    jmp (a0)

loc_03fd1c:
    jsr loc_02c7ae
    st ($24a,a4)
    clr.l ($216,a4)
    move.l #-$45000,($21a,a4)
    btst #1,($246,a4)
    beq.b loc_03fd42
    move.l (-$45de,a5),($212,a4)
    bra.b loc_03fd54

loc_03fd42:
    move.l ($22a,a4),d0
    asr.l #8,d0
    divu.w #$18,d0
    ext.l d0
    asl.l #8,d0
    add.l d0,($21a,a4)

loc_03fd54:
    move.b ($209,a4),($208,a4)
    sf d5
    sf ($273,a4)

loc_03fd60:
    jsr loc_02269c
    btst #1,($246,a4)
    beq.b loc_03fd78
    clr.l ($216,a4)
    clr.l ($21a,a4)
    bra.b loc_03fda2

loc_03fd78:
    addi.l #$6000,($21a,a4)
    tst.b d5
    bne.b loc_03fd9a
    addi.l #$c000,($216,a4)
    cmpi.l #$60000,($216,a4)
    blt.b loc_03fd98
    st d5

loc_03fd98:
    bra.b loc_03fda2

loc_03fd9a:
    addi.l #-$4800,($216,a4)

loc_03fda2:
    tst.b ($b9,a4)
    beq.b loc_03fdba
    sf ($b9,a4)
    move.w #$10,d2
    move.w #$ff9a,d3
    jsr loc_02c7be

loc_03fdba:
    tst.b ($273,a4)
    beq.b loc_03fdd8
    sf ($273,a4)
    btst #2,($249,a3)
    bne.w loc_03fe6e
    btst #3,($249,a3)
    bne.w loc_03fdea

loc_03fdd8:
    btst #2,($2e1,a4)
    beq.b loc_03fd60
    movea.l ($1de,a4),a0
    movea.l (0,a0),a0
    jmp (a0)

;--------------------------
loc_03fdea:
    jsr loc_02269c
    tst.b ($b6,a4)
    beq.b loc_03fdea
    move.l (-$45de,a5),($212,a4)
    move.b ($209,a4),($208,a4)
    movea.l #loc_042eda,a0
    clr.w d0
    jsr loc_0226f0

loc_03fe10:
    tst.b ($b7,a4)
    beq.b loc_03fe1e
    sf ($b7,a4)
    sf ($273,a4)

loc_03fe1e:
    jsr loc_02269c
    tst.b ($b8,a4)
    beq.b loc_03fe36
    sf ($b8,a4)
    tst.b ($273,a4)
    beq.w loc_03fe48

loc_03fe36:
    btst #2,($2e1,a4)
    beq.b loc_03fe10
    movea.l ($1de,a4),a0
    movea.l (0,a0),a0
    jmp (a0)

;--------------------------
loc_03fe48:
    movea.l #loc_042eb6,a0
    clr.w d0
    jsr loc_0226f0

loc_03fe56:
    jsr loc_02269c
    btst #2,($2e1,a4)
    beq.b loc_03fe56
    movea.l ($1de,a4),a0
    movea.l (0,a0),a0
    jmp (a0)

;--------------------------
loc_03fe6e:
    jsr loc_023444
    movea.l #loc_040a74,a0
    move.w #2,d0
    jsr loc_0226f0
    move.l #-$20000,($216,a4)
    move.l #-$c0000,($21a,a4)

loc_03fe94:
    jsr loc_02269c
    addi.l #$b000,($21a,a4)
    btst #1,($246,a4)
    beq.b loc_03fe94
    movea.l ($1de,a4),a0
    movea.l ($28,a0),a0
    jmp (a0)

;--------------------------
loc_03feb4:
    jsr loc_02c7ae
    st ($24a,a4)
    clr.l ($216,a4)
    clr.l ($21a,a4)
    move.l (-$45de,a5),($212,a4)
    move.b ($209,a4),($208,a4)

loc_03fed2:
    jsr loc_02269c
    tst.b ($b9,a4)
    beq.b loc_03fed2
    sf ($b9,a4)
    move.w #-$c,d2
    move.w #-$4c,d3
    jsr loc_02c7be

loc_03fef0:
    jsr loc_02269c
    tst.b ($b6,a4)
    beq.w loc_03ff1a
    sf ($b6,a4)
    movem.l d2,-(a7)
    move.w #$2a,d2
    jsr loc_027a84
    movem.l (a7)+,d2
    bmi.b loc_03ff1a
    sf ($66,a0)

loc_03ff1a:
    btst #2,($2e1,a4)
    beq.b loc_03fef0
    movea.l ($1de,a4),a0
    movea.l (0,a0),a0
    jmp (a0)

;--------------------------
loc_03ff2c:
    st ($24a,a4)

loc_03ff30:
    jsr loc_02269c
    btst #2,($2e1,a4)
    beq.b loc_03ff30
    movea.l ($1de,a4),a0
    movea.l (0,a0),a0
    jmp (a0)

;--------------------------
loc_03ff48:
    movea.l ($28,a4),a3
    move.w ($2ee,a3),($60,a4)
    jsr loc_02816c
    bmi.w loc_04007e
    movea.l #loc_04299e,a0
    clr.w d0
    jsr loc_027e70
    move.l #loc_040084,($9c,a4)
    tst.b ($66,a4)
    bne.b loc_03ff86
    move.l #$30000,($36,a4)
    clr.l ($3a,a4)
    bra.b loc_03ff92

loc_03ff86:
    move.l #$54000,($36,a4)
    clr.l ($3a,a4)

loc_03ff92:
    move.l #$400000,d2
    move.l #-$480000,d3
    jsr loc_0282ea

loc_03ffa4:
    tst.b ($9b,a4)
    bne.w loc_040016
    jsr loc_02805e
    bne.w loc_040016
    jsr loc_028112
    bne.w loc_040010
    jsr loc_027e48
    move.w ($2e,a4),d0
    addi.w #$20,d0
    cmp.w (-$45d6,a5),d0
    blt.w loc_04007e
    move.w ($2e,a4),d0
    subi.w #$20,d0
    cmp.w (-$45d4,a5),d0
    bge.w loc_04007e
    move.b ($52,a4),d0
    movea.l #loc_027fa8,a0
    jsr loc_0040c2
    movem.l a3,(8,a4)
    jsr loc_027a44
    movem.l (8,a4),a3
    jsr loc_027ea4
    bra.b loc_03ffa4

loc_040010:
    jsr loc_0281fa

loc_040016:
    clr.l ($9c,a4)
    move.b ($52,a4),d0
    movea.l #loc_027fa8,a0
    jsr loc_0040c2
    movem.l a3,(8,a4)
    jsr loc_027a44
    movem.l (8,a4),a3
    movea.l #loc_0429be,a0
    clr.w d0
    jsr loc_027e70

loc_04004a:
    btst #2,($53,a4)
    bne.w loc_04007e
    move.b ($52,a4),d0
    movea.l #loc_027fa8,a0
    jsr loc_0040c2
    movem.l a3,(8,a4)
    jsr loc_027a44
    movem.l (8,a4),a3
    jsr loc_027ea4
    bra.b loc_04004a

loc_04007e:
    jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040084:
    dc.w $fff8,$000c,$fff8,$0010

;--------------------------
loc_04008c:
    movea.l ($28,a4),a3
    move.w ($2ee,a3),($60,a4)
    jsr loc_02816c
    bmi.w loc_040312
    move.l #$30000,($36,a4)
    clr.l ($3a,a4)
    move.l #$3c0000,d2
    move.l #-$480000,d3
    jsr loc_0282ea
    movea.l #loc_043374,a0
    clr.w d0
    jsr loc_027e70
    clr.w ($6a,a4)
    clr.w ($6c,a4)

loc_0400d4:
    lea loc_0432f4(pc),a0
    bsr.w loc_040318
    jsr loc_02805e
    movea.l ($9c,a4),a0
    move.l a2,($9c,a4)
    movea.l a0,a2
    tst.w ($6c,a4)
    bgt.b loc_040126
    jsr loc_028112
    beq.b loc_04011e
    jsr loc_0281fa
    jsr loc_028344
    bclr #6,($25e,a3)
    movea.l ($28,a4),a3
    move.w #3,($6c,a4)
    tst.b ($67,a4)
    bne.w loc_0402a0

loc_04011e:
    jsr loc_027e48
    bra.b loc_040130

loc_040126:
    subq.w #1,($6c,a4)
    jsr loc_028112

loc_040130:
    movea.l ($9c,a4),a0
    move.l a2,($9c,a4)
    movea.l a0,a2
    sf ($9b,a4)
    move.b ($52,a4),d0
    movea.l #loc_027fa8,a0
    jsr loc_0040c2
    movem.l a3,(8,a4)
    jsr loc_027a44
    movem.l (8,a4),a3
    jsr loc_027ea4
    btst #2,($53,a4)
    bne.w loc_04017e
    tst.b ($249,a3)
    beq.b loc_04017a
    st ($67,a4)

loc_04017a:
    bra.w loc_0400d4

;--------------------------
loc_04017e:
    clr.w ($6a,a4)
    move.l #$80000,($36,a4)

loc_04018a:
    move.w ($6a,a4),d0
    cmpi.w #2,($6a,a4)
    blt.b loc_0401a2
    andi.b #$f8,($88,a4)
    ori.b #4,($88,a4)

loc_0401a2:
    lsl.w #2,d0
    lea loc_0432e8(pc),a0
    movea.l (a0,d0.w),a0
    movea.l a0,a0
    clr.w d0
    jsr loc_027e70

loc_0401b6:
    lea loc_0432f4(pc),a0
    move.w ($6a,a4),d0
    addq.w #1,d0
    lsl.w #4,d0
    adda.w d0,a0
    bsr.w loc_040318
    jsr loc_02805e
    bne.w loc_04025a
    tst.w ($6c,a4)
    bgt.b loc_0401fe
    movea.l ($9c,a4),a0
    move.l a2,($9c,a4)
    movea.l a0,a2
    jsr loc_028112
    bne.w loc_040254
    movea.l ($9c,a4),a0
    move.l a2,($9c,a4)
    movea.l a0,a2
    jsr loc_027e48
    bra.b loc_040208

;--------------------------
loc_0401fe:
    subq.w #1,($6c,a4)
    jsr loc_028112

loc_040208:
    move.w ($2e,a4),d0
    addi.w #$50,d0
    cmp.w (-$45d6,a5),d0
    blt.w loc_040312
    move.w ($2e,a4),d0
    subi.w #$50,d0
    cmp.w (-$45d4,a5),d0
    bge.w loc_040312
    move.b ($52,a4),d0
    movea.l #loc_027fa8,a0
    jsr loc_0040c2
    movem.l a3,(8,a4)
    jsr loc_027a44
    movem.l (8,a4),a3
    jsr loc_027ea4
    bra.w loc_0401b6

;--------------------------
loc_040254:
    jsr loc_0281fa

loc_04025a:
    move.b ($52,a4),d0
    movea.l #loc_027fa8,a0
    jsr loc_0040c2
    movem.l d7/a3,(8,a4)
    jsr loc_027a44
    movem.l (8,a4),d7/a3
    sf ($9b,a4)
    addq.w #1,($6a,a4)
    cmpi.w #3,($6a,a4)
    bge.w loc_0402a0
    move.w #6,($6c,a4)
    tst.b ($67,a4)
    bne.w loc_0402a0
    bra.w loc_04018a

;--------------------------
loc_0402a0:
    move.w #$e9,d0
    jsr loc_02301a
    clr.l ($9c,a4)
    move.b ($52,a4),d0
    movea.l #loc_027fa8,a0
    jsr loc_0040c2
    movem.l a3,(8,a4)
    jsr loc_027a44
    movem.l (8,a4),a3
    movea.l #loc_04344e,a0
    clr.w d0
    jsr loc_027e70

loc_0402de:
    btst #2,($53,a4)
    bne.w loc_040312
    move.b ($52,a4),d0
    movea.l #loc_027fa8,a0
    jsr loc_0040c2
    movem.l a3,(8,a4)
    jsr loc_027a44
    movem.l (8,a4),a3
    jsr loc_027ea4
    bra.b loc_0402de

;--------------------------
loc_040312:
    jmp loc_027de6

;--------------------------
loc_040318:
    move.l (0,a0),($9c,a4)
    movea.l (4,a0),a2
    move.b (8,a0),($89,a4)
    clr.w d0
    move.b (9,a0),d0
    lsl.w #6,d0
    move.w d0,($8e,a4)
    clr.w d0
    move.b ($a,a0),d0
    lsl.w #6,d0
    move.w d0,($90,a4)
    clr.w d0
    move.b ($b,a0),($8b,a4)
    move.w ($c,a0),d0
    move.w d0,($94,a4)
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040352:
    dc.l $0002e000,$fffd8000,$00000000,$00032000
    dc.l $fffce000,$fff45000,$0000b000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04036e:
    dc.l loc_04037a,loc_040386,loc_040392

loc_04037a:
    dc.w $8039,$fc00
    dc.w $803b,$d000,$f40a,$0000

loc_040386:
    dc.w $8039,$fe02
    dc.w $803b,$e000,$f40a,$0000

loc_040392:
    dc.w $8039,$fd01
    dc.w $803b,$d0f0,$f60a,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04039e:
    dc.l loc_03be48,loc_03be48,loc_03c164,loc_03c53e
    dc.l loc_03cb7e,loc_03cde8,loc_03cf9e,loc_03d06a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0403be:
    dc.l loc_040710,loc_040868,loc_0408b6,loc_040926
    dc.l loc_040878,loc_04088a,loc_0408a6,loc_040894
    dc.l loc_04098e,loc_04099c,loc_040a10,loc_040a74
    dc.l loc_040ad8,loc_0409e4,loc_040ae6,loc_040ae6
    dc.l loc_040ae6,loc_040af6,loc_040af6,loc_040af6
    dc.l loc_040b00,loc_040b00,loc_040b00,loc_040b0a
    dc.l loc_040b0a,loc_040b0a,loc_040b1a,loc_040b1a
    dc.l loc_040b1a,loc_040b24,loc_040b24,loc_040b24
    dc.l loc_040b2e,loc_040b3e,loc_040c28,loc_040bc0
    dc.l loc_040c5e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040452:
    dc.l loc_028468,loc_028562,loc_02848c,loc_028572
    dc.l loc_02861e,loc_0286fc,loc_0287a6,loc_0287e0
    dc.l loc_02881a,loc_028a02,loc_028958,loc_028a30
    dc.l loc_028ae2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040486:
    dc.l loc_040c98,loc_040c98,loc_040c98,loc_040ca2
    dc.l loc_040ca2,loc_040ca2,loc_040cac,loc_040cac
    dc.l loc_040cc4,loc_040cc4,loc_040cdc,loc_040cdc
    dc.l loc_040d04,loc_040d04,loc_040d24,loc_040d24
    dc.l loc_040d3c,loc_040d3c,loc_040d54,loc_040d54
    dc.l loc_040d7c,loc_040d7c,loc_040d9c,loc_040d9c
    dc.l loc_040db4,loc_040db4,loc_040dcc,loc_040dcc
    dc.l loc_040df4,loc_040df4,loc_040e14,loc_040e86
    dc.l loc_040e14,loc_040e86,loc_040ef8,loc_040f26
    dc.l loc_040f38,loc_040f86,loc_040f38,loc_040f86
    dc.l loc_040f38,loc_040fd4,loc_040fd4,loc_040ffa
    dc.l loc_041004,loc_041044,loc_041076,loc_041100
    dc.l loc_04107e,loc_04110e,loc_04110e,loc_04110e
    dc.l loc_0411a8,loc_0411a8,loc_04123a,loc_0412ce
    dc.l loc_04131a,loc_04131a,loc_041344,loc_041344
    dc.l loc_04138a,loc_04138a,loc_0413ec

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040582:;attacktable
    dc.l  $00000000,loc_041426,loc_041482,loc_0414d2
    dc.l loc_04152e,loc_04152e,loc_0415b4,loc_041620
    dc.l loc_0416be,loc_041740,loc_0417ac,loc_04186a
    dc.l loc_041916,loc_0419c2,loc_041a64,loc_041af0
    dc.l loc_041b84,loc_041c10,loc_041cce,loc_041de0
    dc.l loc_041e62,loc_042296,loc_043570,loc_043474
    dc.l loc_041f72,loc_042072,loc_04219c,loc_042a0c
    dc.l loc_042ad8,loc_0427c6,loc_0428b2,loc_042c7a
    dc.l loc_042dbe,loc_043214,loc_04360e


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04060e:
    dc.w $0018,$035d,$0000,$8000
    dc.w $0006,$035e,$0000,$8000
    dc.w $0006,$035f,$0000,$8000
    dc.w $0008,$0360,$0000,$8000
    dc.w $000c,$0361,$0000,$8000
    dc.w $0005,$0362,$0000,$8000

    dc.w $8009
    dc.l loc_040664

    dc.w $000c,$0363,$0000,$8000
    dc.w $0008,$02d2,$0000,$80ff,$0000,$0004,$0000
    dc.w $0006,$0341,$0000,$8000
    dc.w $8001

loc_040664:
    dc.w $8007,$ffd8,$ffa0
    dc.w $8008,$fff8,$0000,$fffa,$0000
    dc.w $0004,$0364,$7c00
    dc.w $8008,$fffc,$0000,$fffd,$0000
    dc.w $0004,$0364,$7c00
    dc.w $8008,$fffd,$0000,$ffff,$0000
    dc.w $0004,$0364,$7c00
    dc.w $8008,$fffd,$8000,$0000,$8000
    dc.w $0004,$0365,$7c00
    dc.w $8008,$fffd,$e000,$0001,$0000
    dc.w $0004,$0365,$7c00
    dc.w $8008,$fffe,$2000,$0001,$8000
    dc.w $0004,$0365,$7c00
    dc.w $8008,$fffe,$4000,$0002,$0000
    dc.w $0001,$0000,$6000
    dc.w $0002,$0365,$7c00
    dc.w $0001,$0000,$6000
    dc.w $8008,$fffe,$6000,$0002,$8000
    dc.w $0001,$0365,$7c00
    dc.w $0001,$0000,$6000
    dc.w $0001,$0365,$7c00
    dc.w $0002,$0000,$6000
    dc.w $0001,$0365,$7c00
    dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040710:
    dc.w $0004,$02de,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02df,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02e0,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02e1,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02e2,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02e3,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02e4,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02e5,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02e6,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02e7,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02e8,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02e9,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02ea,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02eb,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02ec,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02ed,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02ee,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02ef,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02f0,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02f1,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02f2,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02f3,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02f4,$0001,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02f5,$0001,$80ff,$fffc,$0000,$0000
    dc.w $8000,$0000
    dc.l loc_040710


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040868:
    dc.w $0004,$0239,$0002,$8000
    dc.w $8000,$0000
    dc.l loc_040710

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040878:
    dc.w $0002,$02c7,$0003,$8000
    dc.w $0002,$02c7,$0003,$8000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04088a:
    dc.w $0002,$01eb,$0004,$8000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040894:
    dc.w $0002,$02c7,$0003,$8000
    dc.w $0002,$02c7,$0003,$8000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0408a6:
    dc.w $0004,$023a,$0005,$8000
    dc.w $8000,$0000
    dc.l loc_04088a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0408b6:
    dc.w $0003,$0340,$0006,$8000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0408be:
    dc.w $0003,$0317,$0006,$8000
    dc.w $0003,$0318,$0006,$8000
    dc.w $0003,$0319,$0006,$8000
    dc.w $0003,$031a,$0006,$8000
    dc.w $0003,$031b,$0006,$8000
    dc.w $0003,$031c,$0006,$8000
    dc.w $0003,$031d,$0006,$8000
    dc.w $0003,$031e,$0006,$8000
    dc.w $0003,$031f,$0006,$8000
    dc.w $0003,$0320,$0006,$8000
    dc.w $0003,$0321,$0006,$8000
    dc.w $0003,$0316,$0006,$8000
    dc.w $8000,$0000
    dc.l loc_0408be

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040926:
    dc.w $0003,$0324,$0007,$8000
    dc.w $0003,$0325,$0007,$8000
    dc.w $0003,$0326,$0007,$8000
    dc.w $0003,$0327,$0007,$8000
    dc.w $0003,$0328,$0007,$8000
    dc.w $0003,$0329,$0007,$8000
    dc.w $0003,$032a,$0007,$8000
    dc.w $0003,$032b,$0007,$8000
    dc.w $0003,$032c,$0007,$8000
    dc.w $0003,$032d,$0007,$8000
    dc.w $0003,$0322,$0007,$8000
    dc.w $0003,$0323,$0007,$8000
    dc.w $8000,$0000
    dc.l loc_040926

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04098e:
    dc.w $8003,$186f
    dc.w $0002,$01f6,$0008,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04099c:
    dc.w $0005,$01f7,$0009,$7cff,$fffc,$0000,$0000
    dc.w $0005,$02ca,$000a,$7cff,$fffc,$fffc,$0000
    dc.w $000d,$01f8,$000b,$7cff,$fffc,$fff4,$0000
    dc.w $0006,$02cb,$000c,$7cff,$fffc,$fffc,$0000
    dc.w $0006,$01f9,$000d,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0409e4:
    dc.w $0005,$01f8,$000b,$7cff,$fffc,$fff4,$0000
    dc.w $0006,$02cb,$000c,$7cff,$fffc,$fffc,$0000
    dc.w $0006,$01f9,$000d,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040a10:
    dc.w $0004,$01f7,$0009,$7cff,$fffc,$0000,$0000
    dc.w $0004,$0216,$000e,$7cff,$0004,$0004,$0000
    dc.w $0004,$0217,$000f,$7cff,$0000,$0008,$0000
    dc.w $0004,$0218,$0010,$7cff,$0000,$0004,$0000
    dc.w $0004,$0219,$0011,$7cff,$0000,$0008,$0000
    dc.w $0007,$021b,$0012,$7cff,$fffc,$0004,$0000
    dc.w $0008,$01f9,$000d,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040a74:
    dc.w $0004,$01f7,$0009,$7cff,$fffc,$0000,$0000
    dc.w $0004,$021b,$0013,$7cff,$fffc,$0004,$0000
    dc.w $0004,$0219,$0011,$7cff,$0000,$0008,$0000
    dc.w $0004,$0218,$0010,$7cff,$0000,$0004,$0000
    dc.w $0004,$0217,$000f,$7cff,$0000,$0008,$0000
    dc.w $0007,$0216,$0014,$7cff,$0004,$0004,$0000
    dc.w $0008,$01f9,$000d,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040ad8:
    dc.w $8003,$1870
    dc.w $0003,$01ea,$0008,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040ae6:
    dc.w $0004,$02a8,$0015,$8400
    dc.w $8000,$0000
    dc.l loc_040af6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040af6:
    dc.w $0004,$02a8,$0015,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040b00:
    dc.w $0001,$02a8,$0015,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040b0a:
    dc.w $0004,$02aa,$0016,$8400
    dc.w $8000,$0000
    dc.l loc_040b1a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040b1a:
    dc.w $0004,$02aa,$0016,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040b24:
    dc.w $0001,$02aa,$0016,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040b2e:
    dc.w $0008,$01d2,$0001,$80ff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040b3e:
    dc.w $0008,$01d2,$0000,$80ff,$fffc,$0000,$0000
    dc.w $0006,$01d3,$0000,$8000

    dc.w $8017,$0033
    dc.l loc_040ba4
    dc.w $8017,$0040
    dc.l loc_040b98
    dc.w $8017,$0055
    dc.l loc_040b8c
    dc.w $8017,$0080
    dc.l loc_040b80

    dc.w $802a,$0064
    dc.w $8000,$0000
    dc.l loc_040ba8

loc_040b80:
    dc.w $802a,$0066
    dc.w $8000,$0000
    dc.l loc_040ba8

loc_040b8c:
    dc.w $802a,$0061
    dc.w $8000,$0000
    dc.l loc_040ba8

loc_040b98:
    dc.w $802a,$0067
    dc.w $8000,$0000
    dc.l loc_040ba8

loc_040ba4:
    dc.w $802a,$0062

loc_040ba8:
    dc.w $0003,$035b,$0000,$8000
    dc.w $0002,$035c,$0000,$8000
    dc.w $8000,$0000
    dc.l loc_040ba8

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040bc0:
    dc.w $0004,$01d2,$0000,$80ff,$fffc,$0000,$0000
    dc.w $0006,$033e,$0000,$8000
    dc.w $0006,$02c6,$0000,$80ff,$0010,$0000,$0000
    dc.w $0006,$01e6,$0000,$8000
    dc.w $0006,$01e0,$0000,$80ff,$0014,$0000,$0000
    dc.w $802b,$1cc5
    dc.w $0005,$0356,$0000,$8000
    dc.w $0005,$0357,$0000,$8000
    dc.w $0005,$0358,$0000,$8000
    dc.w $000c,$0359,$0000,$8000
    dc.w $0024,$035a,$0000,$8000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040c28:
    dc.w $0008,$01d2,$0000,$80ff,$fffc,$0000,$0000
    dc.w $0004,$02dc,$0000,$80ff,$fffc,$0000,$0000
    dc.w $0010,$023b,$0000,$8000
    dc.w $0004,$0238,$0000,$8000
    dc.w $0014,$023c,$0000,$8000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040c5e:
    dc.w $0006,$02a0,$0000,$84ff,$fffe,$0000,$0000
    dc.w $0004,$029f,$0000,$84ff,$fffe,$0000,$0000
    dc.w $0004,$02f8,$0000,$84ff,$fff8,$0000,$0000
    dc.w $0004,$02f9,$0000,$84ff,$fff8,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040c98:
    dc.w $0004,$02a9,$0015,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040ca2:
    dc.w $0004,$02ab,$0016,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040cac:
    dc.w $802d,$ffe6,$ff94
    dc.w $0006,$02a0,$0017,$8400
    dc.w $0006,$029f,$0018,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040cc4:
    dc.w $802d,$ffe6,$ff94
    dc.w $000c,$02a0,$0017,$8400
    dc.w $0006,$029f,$0018,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040cdc:
    dc.w $802d,$ffde,$ff94
    dc.w $0002,$02a0,$0017,$8400
    dc.w $000a,$02a1,$0017,$8400
    dc.w $0006,$02a0,$0017,$8400
    dc.w $0006,$029f,$0018,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040d04:
    dc.w $802d,$ffd6,$ff94
    dc.w $0012,$02a1,$0017,$8400
    dc.w $0006,$02a0,$0017,$8400
    dc.w $0006,$029f,$0018,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040d24:
    dc.w $802e,$0000,$ffb0
    dc.w $0006,$02a3,$0019,$8400
    dc.w $0006,$02a2,$001a,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040d3c:
    dc.w $802e,$0000,$ffb0
    dc.w $000c,$02a3,$0019,$8400
    dc.w $0006,$02a2,$001a,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040d54:
    dc.w $802e,$fffc,$ffb4
    dc.w $0002,$02a3,$0019,$8400
    dc.w $000a,$02a4,$0019,$8400
    dc.w $0006,$02a3,$0019,$8400
    dc.w $0006,$02a2,$001a,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040d7c:
    dc.w $802e,$fff6,$ffb6
    dc.w $0012,$02a4,$0019,$8400
    dc.w $0006,$02a3,$0019,$8400
    dc.w $0006,$02a2,$001a,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040d9c:
    dc.w $802f,$fff6,$ffb4
    dc.w $0006,$02a6,$001b,$8400
    dc.w $0006,$02a5,$001c,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040db4:
    dc.w $802f,$fff6,$ffb4
    dc.w $000c,$02a6,$001b,$8400
    dc.w $0006,$02a5,$001c,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040dcc:
    dc.w $802f,$fff2,$ffb0
    dc.w $0002,$02a6,$001b,$8400
    dc.w $000a,$02a7,$001b,$8400
    dc.w $0006,$02a6,$001b,$8400
    dc.w $0006,$02a5,$001c,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040df4:
    dc.w $802f,$ffe0,$ffb0
    dc.w $0012,$02a7,$001b,$8400
    dc.w $0006,$02a6,$001b,$8400
    dc.w $0006,$02a5,$001c,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040e14:
    dc.w $802e,$0008,$ffa8
    dc.w $0006,$02a3,$001d,$84ff,$fff8,$0008,$0000
    dc.w $0003,$0228,$001d,$84ff,$0008,$0008,$0000
    dc.w $0003,$0229,$001d,$84ff,$0008,$0010,$0000
    dc.w $0002,$0219,$001e,$84ff,$0000,$fff8,$0000
    dc.w $0002,$0218,$001e,$8400
    dc.w $0002,$0217,$001e,$84ff,$0000,$0008,$0000
    dc.w $0003,$0216,$001e,$84ff,$0004,$0004,$0000
    dc.w $0003,$01f9,$001e,$84ff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040e86:
    dc.w $802d,$ffe8,$ff8c
    dc.w $0006,$02a0,$001d,$84ff,$fff8,$0008,$0000
    dc.w $0003,$0228,$001d,$84ff,$0008,$0008,$0000
    dc.w $0003,$0229,$001d,$84ff,$0008,$0010,$0000
    dc.w $0002,$0219,$001e,$84ff,$0000,$fff8,$0000
    dc.w $0002,$0218,$001e,$8400
    dc.w $0002,$0217,$001e,$84ff,$0000,$0008,$0000
    dc.w $0003,$0216,$001e,$84ff,$0004,$0004,$0000
    dc.w $0003,$01f9,$001e,$84ff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040ef8:
    dc.w $802e,$0006,$ffb4
    dc.w $0005,$0224,$001d,$8400
    dc.w $0005,$0229,$001d,$8400
    dc.w $0005,$0225,$001f,$8400
    dc.w $0005,$0227,$001f,$84ff,$0000,$0008,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040f26:
    dc.w $0004,$022b,$0020,$7c00
    dc.w $0008,$022c,$0020,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040f38:
    dc.w $8030,$ffe8,$ffa8
    dc.w $0004,$02a4,$001d,$7cff,$fff0,$0008,$0000
    dc.w $0004,$02a3,$001d,$7cff,$fff8,$0008,$0000
    dc.w $0006,$0228,$001d,$7cff,$0008,$0008,$0000
    dc.w $0006,$0229,$001f,$7cff,$0008,$0000,$0000
    dc.w $0006,$022b,$001f,$7cff,$0000,$0008,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040f86:
    dc.w $8030,$ffe8,$ffa8
    dc.w $0004,$02a1,$001d,$7cff,$fff0,$0000,$0000
    dc.w $0004,$02a0,$001d,$7cff,$fff8,$0000,$0000
    dc.w $0006,$0228,$001d,$7cff,$0008,$0008,$0000
    dc.w $0006,$0229,$001f,$7cff,$0008,$0000,$0000
    dc.w $0006,$022b,$001f,$7cff,$0000,$0008,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040fd4:
    dc.w $0004,$0227,$0020,$7cff,$0000,$0008,$0000
    dc.w $0008,$02d4,$0020,$7cff,$0000,$0008,$0000
    dc.w $0008,$022b,$0020,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_040ffa:
    dc.w $0010,$022c,$0020,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_041004:
    dc.w $8030,$0008,$ff90
    dc.w $0013,$02fa,$001d,$7cff,$fff8,$0008,$0001
    dc.w $0006,$0228,$001d,$7cff,$0008,$0008,$0000
    dc.w $0006,$0229,$001f,$7cff,$0008,$0000,$0000
    dc.w $0006,$022b,$001f,$7cff,$0000,$0008,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_041044:
    dc.w $8030,$ffe8,$ffd0
    dc.w $0002,$0229,$001d,$7cff,$0008,$0000,$0000
    dc.w $0002,$0225,$001f,$7cff,$0000,$0008,$0000
    dc.w $0002,$02fc,$001f,$7cff,$0008,$fff8,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_041076:
    dc.w $8000,$0000
    dc.l loc_040e14

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04107e:
    dc.w $8037
    dc.l loc_03ff2c

    dc.w $8002,$188d
    dc.w $8024
    dc.w $8043,$0028
    dc.w $8044,$0030
    dc.w $8008,$fffd,$0000,$0000,$0000
    dc.w $0004,$02d5,$0000,$7c00
    dc.w $0004,$02d6,$0000,$7c00

    dc.w $804b
    dc.l $fffee000,$fff94000,$00008000

    dc.w $0004,$02d7,$0000,$7c00
    dc.w $0008,$02d8,$0000,$7c00
    dc.w $0008,$02d9,$0000,$7cff,$fff8,$0000,$0000
    dc.w $0008,$01f9,$0000,$7cff,$fffc,$0000,$0000
    dc.w $803a,$df00
    dc.w $0002,$01ea,$0000,$7c00
    dc.w $803a,$0000
    dc.w $0002,$01f6,$0000,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_041100:
    dc.w $8003,$1870
    dc.w $0003,$01ea,$0000,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04110e:
    dc.w $0002,$02d5,$0000,$7c00
    dc.w $0002,$02d6,$0000,$7cff,$0008,$0000,$0000
    dc.w $0002,$02d6,$0000,$7cff,$0000,$0018,$0000
    dc.w $0002,$02d7,$0000,$7c00
    dc.w $0002,$02d8,$0000,$7cff,$0000,$0008,$0000
    dc.w $0002,$02d8,$0000,$7cff,$0000,$000a,$0000
    dc.w $0002,$02d9,$0000,$7cff,$fff8,$0010,$0000
    dc.w $0002,$02d9,$0000,$7cff,$fff8,$000e,$0000
    dc.w $0002,$01f9,$0000,$7cff,$fffc,$0008,$0000
    dc.w $0002,$01f9,$0000,$7cff,$fffc,$0000,$0000
    dc.w $803a,$df00
    dc.w $0002,$01ea,$0000,$7c00
    dc.w $803a,$0000
    dc.w $0002,$01f6,$0000,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0411a8:
    dc.w $0002,$02d5,$0000,$7c00
    dc.w $0002,$02d6,$0000,$7cff,$0008,$0000,$0000
    dc.w $0002,$02d6,$0000,$7cff,$0000,$0018,$0000
    dc.w $0002,$02d7,$0000,$7c00
    dc.w $0002,$02d8,$0000,$7cff,$0000,$0008,$0000
    dc.w $0002,$02d8,$0000,$7cff,$0000,$000a,$0000
    dc.w $0002,$02d9,$0000,$7cff,$fff8,$0010,$0000
    dc.w $0002,$02d9,$0000,$7cff,$fff8,$000e,$0000
    dc.w $0002,$01f9,$0000,$7cff,$fffc,$0008,$0000
    dc.w $0002,$01f9,$0000,$7cff,$fffc,$0000,$0000
    dc.w $0002,$01ea,$0000,$7c00
    dc.w $0002,$01f6,$0000,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04123a:
    dc.w $0006,$032e,$0021,$7cff,$fffc,$fffe,$0000
    dc.w $0006,$032f,$0021,$7cff,$fffc,$fffe,$0000
    dc.w $0006,$0330,$0021,$7cff,$fffc,$fffe,$0000
    dc.w $0006,$0331,$0021,$7cff,$fffc,$fffe,$0000
    dc.w $0006,$0332,$0021,$7cff,$fffc,$fffe,$0000
    dc.w $0006,$0333,$0021,$7cff,$fffc,$fffe,$0000
    dc.w $0006,$0334,$0021,$7cff,$fffc,$fffe,$0000
    dc.w $0006,$0335,$0021,$7cff,$fffc,$fffe,$0000
    dc.w $0006,$0336,$0021,$7cff,$fffc,$fffe,$0000
    dc.w $0006,$0337,$0021,$7cff,$fffc,$fffe,$0000
    dc.w $8000,$0000
    dc.l loc_04123a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0412ce:
    dc.w $0006,$01d8,$0000,$7800
    dc.w $0006,$01e4,$0000,$78ff,$fff0,$0000,$0000
    dc.w $0006,$01e6,$0000,$78ff,$0008,$0000,$0000
    dc.w $0006,$01e0,$0000,$78ff,$0018,$0000,$0000
    dc.w $803a,$df00
    dc.w $0003,$01dd,$0000,$7800
    dc.w $803a,$0000
    dc.w $0003,$01dd,$0000,$7800
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04131a:
    dc.w $8030,$fff0,$ffb8

loc_041320:
    dc.w $0003,$02b0,$001d,$7cff,$0000,$0000,$0500
    dc.w $0001,$02b1,$001d,$7cff,$0000,$0000,$0500
    dc.w $8000,$0000
    dc.l loc_041320

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_041344:
    dc.w $8030,$fff0,$ffb8

loc_04134a:
    dc.w $0002,$0228,$001d,$7cff,$0000,$0000,$0600
    dc.w $0002,$0228,$001d,$7cff,$fffd,$0000,$0200
    dc.w $0002,$0228,$001d,$7cff,$0000,$0000,$0400
    dc.w $0002,$0228,$001d,$7cff,$0003,$0000,$0700

    dc.w $8000,$0000
    dc.l loc_04134a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04138a:
    dc.w $8030,$fff0,$ffc8

loc_041390:
    dc.w $0002,$0229,$001d,$7cff,$0000,$0002,$0800
    dc.w $0002,$0229,$001d,$7cff,$0002,$ffff,$0900
    dc.w $0002,$0229,$001d,$7cff,$fffe,$0001,$0800
    dc.w $0002,$0229,$001d,$7cff,$0000,$fffe,$0900
    dc.w $0002,$0229,$001d,$7cff,$0002,$0001,$0800
    dc.w $0002,$0229,$001d,$7cff,$fffe,$ffff,$0900
    dc.w $8000,$0000
    dc.l loc_041390

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0413ec:
    dc.w $0008,$02f7,$0021,$84ff,$fff8,$0000,$0000
    dc.w $0006,$02f8,$0021,$84ff,$fff8,$0000,$0000
    dc.w $0010,$02f9,$0021,$84ff,$fff8,$0000,$0000
    dc.w $0006,$02f8,$0021,$84ff,$fff8,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Close 5A
loc_041426:
    dc.w $8037
    dc.l loc_028fca
    dc.w $8038
    dc.l loc_041458

    dc.w $803e,$0821,$0100
    dc.w $803f,$0502,$0301,$0501
    dc.w $8040,$0903,$0207,$03ff
    dc.w $8042,$0301
    dc.w $8041,$0401,$041e

    dc.w $8036
    dc.l loc_04037a

loc_041458:
    dc.w $8005,$189d
    dc.w $0002,$01db,$0022,$7c00
    dc.w $0007,$01dc,$0023,$78ff,$fff8,$0000,$0000
    dc.w $0003,$01db,$0024,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Far 5A
loc_041482:
    dc.w $8037
    dc.l loc_028fca
    dc.w $8038
    dc.l loc_0414b4

    dc.w $803e,$0861,$0100
    dc.w $803f,$0502,$0301,$0501
    dc.w $8040,$0903,$0207,$03ff
    dc.w $8042,$0301
    dc.w $8041,$0401,$0824

    dc.w $8036
    dc.l loc_04037a

loc_0414b4:
    dc.w $8005,$1897
    dc.w $0002,$01d3,$0025,$7800
    dc.w $0007,$01d4,$0026,$7800
    dc.w $0003,$02c9,$0025,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;2A
loc_0414d2:
    dc.w $8037
    dc.l loc_028fca
    dc.w $8038
    dc.l loc_041504

    dc.w $803e,$0861,$0200
    dc.w $803f,$0502,$0301,$0501
    dc.w $8040,$0903,$0207,$03ff
    dc.w $8042,$0301
    dc.w $8041,$0201,$081e

    dc.w $8036
    dc.l loc_040386

loc_041504:
    dc.w $8005,$1897
    dc.w $0002,$0231,$0027,$78ff,$ffff,$0000,$0000
    dc.w $0007,$01ed,$0028,$7800
    dc.w $0003,$0231,$0027,$7cff,$0001,$0000,$0000
    dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
;5B
loc_04152e:
    dc.w $8037
    dc.l loc_028fca
    dc.w $8038
    dc.l loc_041560

    dc.w $803e,$086b,$0200
    dc.w $803f,$0602,$0201,$0601
    dc.w $8040,$0805,$0404,$0cff
    dc.w $8042,$0601
    dc.w $8041,$0101,$0826

    dc.w $8036
    dc.l loc_04037a

loc_041560:
    dc.w $8005,$1897
    dc.w $0002,$02c6,$0029,$7cff,$0008,$0000,$0000
    dc.w $0002,$01e1,$002a,$78ff,$0008,$0000,$0000
    dc.w $0004,$01e2,$002b,$78ff,$0010,$0000,$0000
    dc.w $0005,$01e1,$002a,$78ff,$0008,$0000,$0000
    dc.w $0004,$02c6,$0029,$7cff,$0008,$0000,$0000
    dc.w $0003,$0253,$002c,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;2B
loc_0415b4:
    dc.w $8037
    dc.l loc_028fca
    dc.w $8038
    dc.l loc_0415e6

    dc.w $803e,$0a2b,$0200
    dc.w $803f,$0602,$0201,$0601
    dc.w $8040,$0804,$0406,$0aff
    dc.w $8042,$0601
    dc.w $8041,$0101,$0823

    dc.w $8036
    dc.l loc_040386

loc_0415e6:
    dc.w $8005,$189d
    dc.w $0002,$02c2,$002d,$7c00
    dc.w $0002,$02c3,$002e,$7cff,$0002,$0000,$0000
    dc.w $0006,$01f1,$002f,$7800
    dc.w $0005,$02c3,$002e,$7cff,$fffe,$0000,$0000
    dc.w $0005,$02c4,$002d,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Close 5C
loc_041620:
    dc.w $8037
    dc.l loc_028fca
    dc.w $8038
    dc.l loc_04164e

    dc.w $803e,$0847,$0100
    dc.w $803f,$200a,$1208,$2008
    dc.w $8040,$0702,$040a,$10ff
    dc.w $8041,$0801,$001d

    dc.w $8036
    dc.l loc_04037a

loc_04164e:
    dc.w $8004,$18a3
    dc.w $0002,$01d7,$0030,$78ff,$fffc,$0000,$0000
    dc.w $802b,$1cbd
    dc.w $0002,$01d8,$0031,$78ff,$fff8,$0000,$0000
    dc.w $8045,$0006
    dc.w $0003,$01d9,$0032,$78ff,$fff8,$0000,$0000
    dc.w $0007,$01da,$0033,$78ff,$fff8,$0000,$0000
    dc.w $0006,$02b7,$0034,$78ff,$fff8,$0000,$0000
    dc.w $0006,$01d8,$0035,$7cff,$fff8,$0000,$0000
    dc.w $0004,$01db,$0024,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Far 5C
loc_0416be:
    dc.w $8037
    dc.l loc_028fca
    dc.w $8038
    dc.l loc_0416ec

    dc.w $803e,$0827,$0100
    dc.w $803f,$1e0a,$1007,$1e08
    dc.w $8040,$0402,$040a,$11ff
    dc.w $8041,$0401,$142c

    dc.w $8036
    dc.l loc_04037a

loc_0416ec:
    dc.w $8004,$18a1
    dc.w $0002,$01db,$0024,$7cff,$fffc,$0000,$0000
    dc.w $802b,$1cbd
    dc.w $0002,$01d5,$0036,$78ff,$fff4,$0000,$0000
    dc.w $8045,$0006
    dc.w $000a,$01d6,$0037,$78ff,$fff4,$0000,$0000
    dc.w $0009,$01d5,$0036,$78ff,$fff4,$0000,$0000
    dc.w $0008,$01db,$0024,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;2C
loc_041740:
    dc.w $8037
    dc.l loc_028fca
    dc.w $8038
    dc.l loc_04176e

    dc.w $803e,$0825,$0600
    dc.w $803f,$180a,$0a06,$1806
    dc.w $8040,$0802,$060a,$0cff
    dc.w $8041,$0201,$0a24

    dc.w $8036
    dc.l loc_040386

loc_04176e:
    dc.w $8004,$18a1
    dc.w $0002,$01ec,$0004,$7c00
    dc.w $0002,$02c1,$0038,$7c00
    dc.w $0002,$02b8,$0039,$7c00
    dc.w $8045,$0004
    dc.w $802b,$1cbc
    dc.w $000a,$02b9,$003a,$7800
    dc.w $0006,$02b8,$0039,$7c00
    dc.w $0006,$02c1,$0038,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Close 5D
loc_0417ac:
    dc.w $8037
    dc.l loc_028fca
    dc.w $8038
    dc.l loc_0417da

    dc.w $803e,$082f,$0500
    dc.w $803f,$200a,$1208,$2008
    dc.w $8040,$0a03,$0507,$17ff
    dc.w $8041,$0801,$0422

    dc.w $8036
    dc.l loc_04037a

loc_0417da:
    dc.w $8004,$18a1
    dc.w $0003,$01e9,$003b,$7cff,$fff0,$0000,$0000
    dc.w $802b,$1cbb
    dc.w $0002,$02ac,$003c,$7cff,$ffe8,$0000,$0000
    dc.w $8045,$0006
    dc.w $0007,$02ad,$003d,$78ff,$ffe8,$0000,$0000
    dc.w $0005,$02ae,$003e,$88ff,$ffe8,$0000,$0000
    dc.w $0004,$01e4,$003f,$84ff,$ffe8,$0000,$0000
    dc.w $8007,$fff8,$0000
    dc.w $8011,$001d,$0005,$0000,$10f0,$ff00
    dc.w $0005,$01e6,$0040,$8400,$8007,$fff8,$0000
    dc.w $0004,$01e0,$0041,$80ff,$0010,$0000,$0000
    dc.w $0005,$01dd,$0042,$7cff,$fff8,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Far 5D
loc_04186a:
    dc.w $8037
    dc.l loc_028fca
    dc.w $8038
    dc.l loc_041898

    dc.w $803e,$086f,$0100
    dc.w $803f,$1e0a,$1007,$1e08
    dc.w $8040,$0802,$0806,$16ff
    dc.w $8041,$0401,$0a28

    dc.w $8036
    dc.l loc_04037a

loc_041898:
    dc.w $8004,$189e
    dc.w $0002,$01e0,$0043,$84ff,$0018,$0000,$0000
    dc.w $0002,$01e6,$0040,$84ff,$0004,$0000,$0001
    dc.w $802b,$1cbf
    dc.w $0002,$01e4,$003f,$88ff,$ffe8,$0000,$0000
    dc.w $0002,$02cc,$0044,$88ff,$fff0,$0000,$0000
    dc.w $8045,$0006
    dc.w $0006,$01e8,$0045,$78ff,$ffe8,$0000,$0000
    dc.w $0008,$02cd,$0046,$78ff,$ffec,$0000,$0000
    dc.w $0007,$02ce,$0047,$7cff,$fff0,$0000,$0000
    dc.w $0007,$02cf,$0042,$7cff,$fff8,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;2D
loc_041916:
    dc.w $8037
    dc.l loc_028fca
    dc.w $8038
    dc.l loc_041944

    dc.w $803e,$0a6d,$0b00
    dc.w $803f,$140a,$0805,$1408
    dc.w $8040,$0c03,$0906,$12ff
    dc.w $8041,$0101,$0a36

    dc.w $8036
    dc.l loc_040386

loc_041944:
    dc.w $0003,$02c4,$0048,$7cff,$fff8,$0000,$0001
    dc.w $8004,$189e
    dc.w $801a,$0002,$0018
    dc.w $8007,$0008,$0000
    dc.w $0002,$02c5,$0049,$88ff,$0010,$0000,$0000
    dc.w $8007,$0008,$0000
    dc.w $8045,$0004
    dc.w $0004,$01f2,$004a,$88ff,$0010,$0000,$0000
    dc.w $0006,$01f3,$004b,$88ff,$0010,$0000,$0000
    dc.w $0006,$01f4,$004c,$78ff,$0010,$0000,$0000
    dc.w $8007,$fff8,$0000
    dc.w $0006,$02ba,$004d,$7800
    dc.w $8007,$fff8,$0000
    dc.w $0006,$0231,$0027,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;8A
loc_0419c2:
    dc.w $8037
    dc.l loc_029026
    dc.w $8038
    dc.l loc_0419f0

    dc.w $803e,$0942,$0100
    dc.w $803f,$1204,$0a04,$1202
    dc.w $8040,$0000,$030e,$ffff
    dc.w $8041,$0401,$e922

    dc.w $8036
    dc.l loc_040392

loc_0419f0:
    dc.w $8004,$1898
    dc.w $0001,$0201,$004e,$7cff,$0000,$fffc,$0000
    dc.w $0002,$0241,$004f,$7800
    dc.w $8045,$0002
    dc.w $0007,$0246,$0050,$78ff,$fff8,$0000,$0000
    dc.w $0007,$0245,$0051,$78ff,$fff8,$0004,$0000
    dc.w $0005,$0247,$0052,$78ff,$0004,$fff8,$0000
    dc.w $0004,$0248,$0053,$78ff,$0004,$fff8,$0000
    dc.w $0004,$0201,$004e,$7cff,$0000,$fffc,$0000
    dc.w $0004,$01f9,$000d,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;9A
loc_041a64:
    dc.w $8037
    dc.l loc_029026
    dc.w $8038
    dc.l loc_041a92

    dc.w $803e,$0942,$0200
    dc.w $803f,$0e04,$0803,$0e02
    dc.w $8040,$0000,$0414,$ffff
    dc.w $8041,$0201,$0624

    dc.w $8036
    dc.l loc_040392

loc_041a92:
    dc.w $8004,$189c
    dc.w $0002,$01fc,$0054,$7cff,$0004,$0004,$0000
    dc.w $0002,$0208,$0055,$78ff,$0000,$000c,$0000
    dc.w $8045,$0002
    dc.w $0014,$0209,$0056,$78ff,$fffc,$000c,$0000
    dc.w $0006,$0201,$004e,$7cff,$0000,$fffc,$0000
    dc.w $0004,$02cb,$000c,$7cff,$fffc,$fffc,$0000
    dc.w $0004,$01f9,$000d,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;8B
loc_041af0:
    dc.w $8037
    dc.l loc_029026
    dc.w $8038
    dc.l loc_041b1e

    dc.w $803e,$192a,$0600
    dc.w $803f,$1004,$0a04,$1002
    dc.w $8040,$0000,$060e,$ffff
    dc.w $8041,$0101,$fa14

    dc.w $8036
    dc.l loc_040392

loc_041b1e:
    dc.w $8004,$187a
    dc.w $8049,$0216,$0001,$0000
    dc.w $0003,$02bd,$0059,$7cff,$0004,$0008,$0000
    dc.w $0003,$025b,$0057,$78ff,$fffc,$0004,$0000
    dc.w $8045,$0002
    dc.w $000e,$020a,$0058,$78ff,$0008,$0000,$0000
    dc.w $0006,$01fc,$0054,$78ff,$0004,$0004,$0000
    dc.w $0004,$02cb,$000c,$7cff,$fffc,$fffc,$0000
    dc.w $0004,$01f9,$000d,$7cff,$fffc,$0000,$0000
    dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
;9B
loc_041b84:
    dc.w $8037
    dc.l loc_029026
    dc.w $8038
    dc.l loc_041bb2

    dc.w $803e,$092a,$0100
    dc.w $803f,$0c04,$0603,$0c02
    dc.w $8040,$0000,$040e,$ffff
    dc.w $8041,$0201,$f126

    dc.w $8036
    dc.l loc_040392

loc_041bb2:
    dc.w $8004,$187a
    dc.w $0002,$02bd,$0059,$7cff,$0004,$0008,$0000
    dc.w $0002,$025b,$0057,$78ff,$fffc,$0004,$0000
    dc.w $8045,$0002
    dc.w $000e,$01fb,$005a,$78ff,$0004,$fffc,$0000
    dc.w $0006,$01fc,$0054,$78ff,$0004,$0004,$0000
    dc.w $0004,$02cb,$000c,$7cff,$fffc,$fffc,$0000
    dc.w $0004,$01f9,$000d,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;8C
loc_041c10:
    dc.w $8037
    dc.l loc_029026
    dc.w $8038
    dc.l loc_041c3e

    dc.w $803e,$0946,$0100
    dc.w $803f,$1c08,$1207,$1c06
    dc.w $8040,$0000,$040a,$ffff
    dc.w $8041,$0801,$001a

    dc.w $8036
    dc.l loc_040392

loc_041c3e:
    dc.w $8004,$18a3
    dc.w $802b,$1cbc
    dc.w $0004,$0201,$004e,$7cff,$0000,$fffc,$0000
    dc.w $8049,$0216,$0003,$0000
    dc.w $8045,$0004
    dc.w $0004,$0204,$005b,$7800
    dc.w $8049,$0216,$0001,$0000
    dc.w $0006,$0205,$005c,$78ff,$fffc,$0008,$0000
    dc.w $8049,$0216,$0000,$0000
    dc.w $0006,$0207,$005d,$78ff,$0004,$0008,$0000
    dc.w $0005,$02d1,$005e,$78ff,$0008,$0008,$0000
    dc.w $0004,$02d2,$005f,$78ff,$0004,$0004,$0000
    dc.w $0004,$02cb,$000c,$7cff,$fffc,$fffc,$0000
    dc.w $0004,$01f9,$000d,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;9C
loc_041cce:
    dc.w $8037
    dc.l loc_029026
    dc.w $8038
    dc.l loc_041cfc

    dc.w $803e,$0944,$0200
    dc.w $803f,$1608,$0a05,$1605
    dc.w $8040,$0000,$0609,$ffff
    dc.w $8041,$0401,$e724

    dc.w $8036
    dc.l loc_040392

loc_041cfc:
    dc.w $8004,$18a3
    dc.w $0003,$0201,$004e,$7cff,$0000,$fffc,$0000
    dc.w $802b,$1cc0

    dc.w $800a
    dc.l loc_041d96

    dc.w $0003,$0242,$0060,$78ff,$0008,$000c,$0000
    dc.w $8045,$0004
    dc.w $0002,$0243,$0061,$78ff,$0008,$0000,$0000
    dc.w $0002,$0244,$0062,$78ff,$fffc,$0004,$0000
    dc.w $0002,$0245,$0063,$78ff,$fff8,$0004,$0000
    dc.w $0003,$0246,$0064,$78ff,$fff8,$0000,$0000
    dc.w $0004,$0241,$004f,$7800
    dc.w $0004,$0201,$004e,$7cff,$0000,$fffc,$0000
    dc.w $0004,$02cb,$000c,$7cff,$fffc,$fffc,$0000
    dc.w $0004,$01f9,$000d,$7cff,$fffc,$0000,$0000
    dc.w $8001

loc_041d96:
    dc.w $0003,$0288,$74ff,$0008,$000c,$0d00
    dc.w $0002,$0289,$74ff,$0008,$0000,$0d00
    dc.w $0002,$028a,$74ff,$fffc,$0004,$0d00
    dc.w $0002,$028b,$74ff,$fff8,$0004,$0d00
    dc.w $0003,$028c,$74ff,$fff8,$0000,$0d00
    dc.w $0004,$028e,$74ff,$0000,$0000,$0d00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;8D
loc_041de0:
    dc.w $8037
    dc.l loc_029026
    dc.w $8038
    dc.l loc_041e0e

    dc.w $803e,$096e,$0100
    dc.w $803f,$1a08,$0e06,$1a08
    dc.w $8040,$0000,$0306,$ffff
    dc.w $8041,$0401,$062c

    dc.w $8036
    dc.l loc_040392

loc_041e0e:
    dc.w $8004,$189e
    dc.w $802b,$1cbb
    dc.w $0003,$02d0,$0065,$78ff,$fffc,$0004,$0000
    dc.w $8045,$0004
    dc.w $0006,$02bc,$0066,$78ff,$fffc,$0008,$0000
    dc.w $0006,$02bd,$0059,$88ff,$0004,$0008,$0000
    dc.w $0006,$0208,$0055,$7cff,$0000,$000c,$0000
    dc.w $0006,$01f9,$000d,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;9D
loc_041e62:
    dc.w $8037
    dc.l loc_02907e
    dc.w $8038
    dc.l loc_041e90

    dc.w $803e,$092a,$0700
    dc.w $803f,$0601,$0201,$0502
    dc.w $8040,$0000,$0608,$ffff
    dc.w $8041,$0102,$082c

    dc.w $8036
    dc.l loc_040392

loc_041e90:
    dc.w $0003,$02cb,$000c,$7cff,$fffc,$fffc,$0000
    dc.w $802b,$1cbe
    dc.w $0003,$02bb,$0067,$7800
    dc.w $8045,$0004
    dc.w $8047,$02b8,$0005
    dc.w $8005,$189d
    dc.w $0002,$020f,$0068,$78ff,$fffc,$0008,$0000
    dc.w $803e,$092a,$0800
    dc.w $803f,$0601,$0201,$0501
    dc.w $0001,$0211,$0069,$78ff,$fffc,$0008,$0000
    dc.w $8005,$189d
    dc.w $803e,$092a,$0700
    dc.w $803f,$0601,$0201,$0502
    dc.w $0002,$0210,$006a,$78ff,$fffc,$0008,$0000
    dc.w $803e,$092a,$0800
    dc.w $803f,$0601,$0201,$0501
    dc.w $0001,$0212,$006b,$78ff,$fffc,$0008,$0000
    dc.w $8004,$18a1
    dc.w $803e,$092a,$0100
    dc.w $803f,$0601,$0201,$0502
    dc.w $0002,$0215,$006c,$78ff,$fffc,$0008,$0000
    dc.w $0002,$0214,$006d,$78ff,$fffc,$0008,$0000
    dc.w $0006,$02bb,$0067,$7800
    dc.w $0004,$02cb,$000c,$7cff,$fffc,$fffc,$0000
    dc.w $0004,$01f9,$000d,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;C+D
loc_041f72:
    dc.w $8037
    dc.l loc_028fca
    dc.w $8038
    dc.l loc_041fa0

    dc.w $803e,$1944,$0f00
    dc.w $803f,$1e06,$0a08,$1e08
    dc.w $8040,$0206,$1a08,$0800
    dc.w $8041,$0201,$0619

    dc.w $8036
    dc.l loc_04037a

loc_041fa0:
    dc.w $802c
    dc.w $0002,$01f6,$0008,$7c00
    dc.w $8045,$0008
    dc.w $8002,$188d

    dc.w $804b
    dc.l $00034000,$fff74800,$00009000

    dc.w $8011,$001c,$0004,$e000,$0000
    dc.w $802b,$1cc3
    dc.w $0004,$0216,$000e,$7cff,$0004,$0004,$0000
    dc.w $0003,$0217,$000f,$7cff,$0000,$0008,$0000
    dc.w $0003,$0218,$0010,$7cff,$0000,$0004,$0000
    dc.w $0003,$0219,$0011,$7cff,$0000,$0008,$0000
    dc.w $8004,$18a3
    dc.w $0003,$0208,$0055,$78ff,$0000,$000c,$0000
    dc.w $8049,$0216,$0001,$8000
    dc.w $0008,$02d3,$006e,$78ff,$0000,$0008,$0000
    dc.w $0008,$0200,$006f,$78ff,$fff8,$0008,$0000
    dc.w $8011,$001d,$0005,$e800,$f0f4,$ff00
    dc.w $8011,$001d,$0005,$2000,$28f4,$ff00
    dc.w $0004,$01d8,$0035,$7cff,$fff8,$0000,$0000
    dc.w $0004,$01db,$0024,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;A+C
loc_042072:
    dc.w $8037
    dc.l loc_028fca
    dc.w $8038
    dc.l loc_0420a0

    dc.w $803e,$0825,$0e00
    dc.w $803f,$1606,$0806,$1608
    dc.w $8040,$0e01,$0a06,$1000
    dc.w $8041,$0401,$1232

    dc.w $8036
    dc.l loc_04037a

loc_0420a0:
    dc.w $802c
    dc.w $0002,$01d3,$0025,$7c00
    dc.w $8008,$0002,$0000,$0000,$0000

    dc.w $800b
    dc.l loc_04212a

    dc.w $8011,$001d,$0005,$2800,$10f4,$ff00
    dc.w $8004,$18a1
    dc.w $802b,$1cc2
    dc.w $0006,$021e,$0070,$7800
    dc.w $8008,$0004,$0000,$0000,$0000
    dc.w $8011,$001c,$0004,$e800,$e000
    dc.w $0002,$021f,$0071,$7800
    dc.w $8045,$0004
    dc.w $8023
    dc.w $0006,$0220,$0072,$78ff,$fffe,$0000,$0000
    dc.w $8007,$0008,$0000
    dc.w $0008,$01d8,$0035,$7cff,$fff8,$0000,$0000
    dc.w $8007,$0008,$0000
    dc.w $0008,$02c9,$0025,$7c00
    dc.w $8001

loc_04212a:
    dc.w $0002,$0268,$74ff,$0008,$0050,$0b00
    dc.w $0002,$0269,$74ff,$0008,$0050,$0b00
    dc.w $0002,$026a,$74ff,$000a,$004c,$0b00
    dc.w $0002,$027c,$74ff,$ffe0,$0048,$0b00
    dc.w $8006,$8080
    dc.w $0002,$0352,$74ff,$ff78,$0090,$0b00
    dc.w $0002,$0351,$74ff,$ff78,$0090,$0b00
    dc.w $0002,$0353,$74ff,$ff60,$0090,$0b00
    dc.w $0002,$0354,$74ff,$ff60,$0090,$0b00
    dc.w $0002,$0355,$74ff,$ff60,$0090,$0b00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;B+D
loc_04219c:
    dc.w $8037
    dc.l loc_028fca
    dc.w $8038
    dc.l loc_0421ca

    dc.w $803e,$086d,$0d00
    dc.w $803f,$1e06,$1208,$1e08
    dc.w $8040,$0602,$1006,$1000
    dc.w $8041,$0401,$0226

   dc.w $8036
   dc.l loc_04037a

loc_0421ca:
    dc.w $802c
    dc.w $0002,$01d3,$0025,$7c00
    dc.w $8007,$0010,$0000
    dc.w $8011,$001c,$0004,$e000,$f000
    dc.w $0002,$02c6,$0029,$7cff,$0008,$0000,$0000
    dc.w $0002,$01e1,$002a,$7cff,$0008,$0000,$0000
    dc.w $8007,$0010,$0000
    dc.w $8045,$0006
    dc.w $0003,$01e6,$0040,$7c00
    dc.w $8004,$189e
    dc.w $802a,$0061
    dc.w $8007,$0008,$0000
    dc.w $8011,$001d,$0005,$08f8,$20e0,$ff00
    dc.w $0003,$01e0,$0041,$7cff,$0010,$0000,$0000
    dc.w $8007,$0008,$0000
    dc.w $0002,$02c8,$0073,$78ff,$fff0,$0000,$0000
    dc.w $0002,$01e7,$0074,$78ff,$fff0,$0000,$0000
    dc.w $0002,$01df,$0075,$78ff,$ffec,$0004,$0000
    dc.w $0004,$01df,$0075,$78ff,$fff0,$0000,$0000
    dc.w $0008,$01de,$0076,$78ff,$fff0,$0000,$0000
    dc.w $8007,$0010,$0000
    dc.w $0008,$01dd,$0077,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Throw C
loc_042296:
    dc.w $8037
    dc.l loc_03f9b4
    dc.w $8038
    dc.l loc_0422d0

    dc.w $8039,$0000
    dc.w $803e,$0807,$2f00
    dc.w $803f,$2008,$000a,$2808
    dc.w $8040,$0000,$0000,$0000
    dc.w $8041,$0000,$0000
    dc.w $8047,$024b,$ffff
    dc.w $8048,$0550,$0000,$0000

loc_0422d0:
    dc.w $8002,$18e7
    dc.w $802c
    dc.w $8047,$00b6,$0000
    dc.w $801a,$0005,$0019
    dc.w $803b,$d000,$f41a
    dc.w $0003,$02b8,$0000,$78ff,$fff8,$0000,$0000
    dc.w $0004,$02c0,$0000,$78ff,$fff8,$0000,$0001
    dc.w $8047,$00b6,$ffff
    dc.w $803b,$d000,$e816
    dc.w $0007,$020b,$0000,$7800
    dc.w $803b,$d000,$e00a
    dc.w $0005,$02be,$0000,$7800
    dc.w $0003,$02bf,$0000,$7800
    dc.w $803b,$d000,$d80a
    dc.w $802b,$1cc1
    dc.w $0003,$02c0,$0000,$7800
    dc.w $801d
    dc.w $8004,$1886
    dc.w $803c,$0000
    dc.w $0004,$02da,$0000,$7800
    dc.w $0006,$02db,$0000,$7800
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;sho thrown
loc_04235c:
    dc.w $801b,$0000,$0000,$0000
    dc.w $0003,$00cd,$0000,$84ff,$0018,$0000,$0000
    dc.w $0004,$0143,$0000,$84ff,$001f,$0000,$0001
    dc.w $0007,$013f,$0000,$84ff,$0018,$0020,$0000
    dc.w $0005,$0179,$0000,$84ff,$000a,$0033,$0000
    dc.w $0003,$017a,$0000,$84ff,$fff0,$0032,$0000
    dc.w $0003,$00cd,$0000,$84ff,$fff0,$0098,$0003
    dc.w $801b,$ffb0,$ffd0,$0000
    dc.w $0004,$011f,$0000,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;dao thrown
loc_0423ca:
    dc.w $801b,$0000,$0000,$0000
    dc.w $0003,$0224,$0000,$84ff,$0028,$0000,$0000
    dc.w $0004,$02fa,$0000,$84ff,$0020,$0008,$0001
    dc.w $0007,$030f,$0000,$84ff,$0010,$002c,$0000
    dc.w $0005,$0306,$0000,$84ff,$fff8,$009c,$0002
    dc.w $0003,$0307,$0000,$84ff,$fff0,$00b0,$0002
    dc.w $0003,$02a3,$0000,$84ff,$fff0,$0098,$0003
    dc.w $801b,$ffb0,$ffd0,$0000
    dc.w $0004,$0225,$0000,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;condor thrown
loc_042438:
    dc.w $801b,$0000,$0000,$0000
    dc.w $0003,$0442,$0000,$84ff,$0010,$0000,$0000
    dc.w $0004,$0414,$0000,$84ff,$001d,$0004,$0000
    dc.w $0007,$0409,$0000,$84ff,$0020,$001c,$0000
    dc.w $0005,$040c,$0000,$84ff,$fffc,$00a0,$0003
    dc.w $0003,$040f,$0000,$84ff,$ffea,$000f,$0000
    dc.w $0003,$0442,$0000,$84ff,$ffec,$00a0,$0003
    dc.w $801b,$ffb0,$ffd0,$0000
    dc.w $0004,$0458,$0000,$84ff,$0008,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;tia thrown
loc_0424ac:
    dc.w $801b,$0000,$0000,$0000
    dc.w $0003,$0521,$0000,$84ff,$0020,$fff8,$0000
    dc.w $0004,$0676,$0000,$84ff,$001d,$001c,$0001
    dc.w $0007,$0670,$0000,$84ff,$0010,$001e,$0000
    dc.w $0005,$0698,$0000,$84ff,$0001,$003b,$0001
    dc.w $0003,$0699,$0000,$84ff,$ffee,$0032,$0001
    dc.w $0003,$0521,$0000,$84ff,$ffe4,$00a0,$0003
    dc.w $801b,$ffb0,$ffd0,$0000
    dc.w $0004,$0527,$0000,$84ff,$0000,$0008,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;rila thrown
loc_042520:
    dc.w $801b,$0000,$0000,$0000
    dc.w $0003,$0731,$0000,$84ff,$0020,$0000,$0000
    dc.w $0004,$0871,$0000,$84ff,$0024,$0084,$0003
    dc.w $0007,$0858,$0000,$84ff,$0010,$0010,$0001
    dc.w $0005,$0857,$0000,$84ff,$0004,$009e,$0003
    dc.w $0003,$0861,$0000,$84ff,$ffe9,$0019,$0000
    dc.w $0003,$07ba,$0000,$84ff,$ffe4,$0090,$0003
    dc.w $801b,$ffb0,$ffd0,$0000
    dc.w $0004,$0812,$0000,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;alsion thrown
loc_04258e:
    dc.w $801b,$0000,$0000,$0000
    dc.w $0003,$09b0,$0000,$84ff,$0010,$0000,$0000
    dc.w $0004,$0a06,$0000,$84ff,$0025,$0004,$0001
    dc.w $0007,$09fe,$0000,$84ff,$0015,$0018,$0000
    dc.w $0005,$09fa,$0000,$84ff,$0000,$002d,$0001
    dc.w $0003,$09fb,$0000,$84ff,$fff3,$0017,$0001
    dc.w $0003,$09b0,$0000,$84ff,$fff4,$0098,$0003
    dc.w $801b,$ffb0,$ffd0,$0000
    dc.w $0004,$09d7,$0000,$84ff,$0008,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;pielle thrown
loc_042602:
    dc.w $801b,$0000,$0000,$0000
    dc.w $0003,$0b55,$0000,$84ff,$0018,$0000,$0000
    dc.w $0004,$0b99,$0000,$84ff,$0025,$0004,$0001
    dc.w $0007,$0b94,$0000,$84ff,$001f,$000f,$0000
    dc.w $0005,$0bcd,$0000,$84ff,$0008,$0039,$0001
    dc.w $0003,$0bce,$0000,$84ff,$ffe4,$0028,$0001
    dc.w $0003,$0b88,$0000,$84ff,$ffec,$00a0,$0003
    dc.w $801b,$ffb0,$ffd0,$0000
    dc.w $0004,$0b89,$0000,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;maherl thrown
loc_042670:
    dc.w $801b,$0000,$0000,$0000
    dc.w $0003,$0d6c,$0000,$84ff,$0018,$0000,$0000
    dc.w $0004,$0dd6,$0000,$84ff,$0015,$001c,$0001
    dc.w $0007,$0da9,$0000,$84ff,$0017,$0027,$0000
    dc.w $0005,$0dbe,$0000,$84ff,$fffc,$0028,$0001
    dc.w $0003,$0dbf,$0000,$84ff,$ffee,$0028,$0001
    dc.w $0003,$0d6d,$0000,$84ff,$ffec,$0098,$0003
    dc.w $801b,$ffb0,$ffd0
    dc.w $0000,$0004,$0dc4,$0000,$8400
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;baihu thrown
loc_0426de:
    dc.w $801b,$0000,$0000,$0000
    dc.w $0003,$0edb,$0000,$84ff,$0018,$0000,$0000
    dc.w $0004,$0e5a,$0000,$84ff,$0024,$0014,$0000
    dc.w $0007,$0e5b,$0000,$84ff,$0018,$001f,$0000
    dc.w $0005,$0f2a,$0000,$84ff,$000b,$009e,$0003
    dc.w $0003,$0f29,$0000,$84ff,$ffef,$00a8,$0003
    dc.w $0003,$0edc,$0000,$84ff,$ffe4,$0098,$0003
    dc.w $801b,$ffb0,$ffd0,$0000
    dc.w $0004,$0e5d,$0000,$84ff,$0010,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;saizo thrown
loc_042752:
    dc.w $801b,$0000,$0000,$0000
    dc.w $0003,$1051,$0000,$84ff,$001d,$0007,$0000
    dc.w $0004,$1185,$0000,$84ff,$0026,$001e,$0000
    dc.w $0007,$10b9,$0000,$84ff,$000e,$0028,$0000
    dc.w $0005,$10b5,$0000,$84ff,$0002,$002a,$0000
    dc.w $0003,$10b6,$0000,$84ff,$ffea,$002c,$0000
    dc.w $0003,$1051,$0000,$84ff,$ffee,$008b,$0003
    dc.w $801b,$ffb0,$ffd0,$0000
    dc.w $0004,$1067,$0000,$84ff,$0001,$0008,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;LP Fireball
loc_0427c6:
    dc.w $8037
    dc.l loc_03fa86
    dc.w $8038
    dc.l loc_0427fe

    dc.w $803e,$2802,$0f00
    dc.w $803f,$1104,$0406,$1208
    dc.w $8040,$0000,$0b00,$1d00
    dc.w $8041,$0211,$0020
    dc.w $8039,$0000
    dc.w $8048,$0550,$0008

    dc.w $8036
    dc.l loc_04037a

loc_0427fe:
    dc.w $8047,$00b6,$0000
    dc.w $802c

    dc.w $800a
    dc.l loc_042868

    dc.w $0004,$021c,$0078,$7c00
    dc.w $0002,$021d,$0079,$7c00
    dc.w $0002,$021e,$007a,$7c00

    dc.w $8004,$1884
    dc.w $802a,$0063
    dc.w $0002,$021f,$007b,$7c00
    dc.w $8045,$0006
    dc.w $0001,$0220,$007c,$7c00
    dc.w $8047,$00b6,$ffff
    dc.w $000d,$0220,$007c,$7c00
    dc.w $0006,$021f,$007b,$7c00
    dc.w $0006,$01d3,$0025,$7c00
    dc.w $0005,$0258,$007d,$7c00
    dc.w $8001

loc_042868:
    dc.w $0004,$0342,$78ff,$fff8,$0060,$0c00
    dc.w $0002,$0343,$78ff,$0008,$0060,$0c00
    dc.w $0002,$0344,$78ff,$0008,$0050,$0c00
    dc.w $0001,$027c,$78ff,$ffe8,$0048,$0c00
    dc.w $0001,$027b,$78ff,$ffd8,$0048,$0c00
    dc.w $0001,$027b,$78ff,$ffc8,$0048,$0c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;HP Fireball
loc_0428b2:
    dc.w $8037
    dc.l loc_03fa86
    dc.w $8038
    dc.l loc_0428ea

    dc.w $803e,$2802,$0f00
    dc.w $803f,$1404,$0406,$1208
    dc.w $8040,$0000,$0b00,$1f00
    dc.w $8041,$0211,$0020
    dc.w $8039,$0000
    dc.w $8048,$0550,$0008

    dc.w $8036
    dc.l loc_04037a


loc_0428ea:
    dc.w $8047,$00b6,$0000
    dc.w $802c

    dc.w $800a
    dc.l loc_042954

    dc.w $0004,$021c,$0078,$7c00
    dc.w $0002,$021d,$0079,$7c00
    dc.w $0002,$021e,$007a,$7c00
    dc.w $8004,$1884
    dc.w $802a,$0063
    dc.w $0002,$021f,$007b,$7c00
    dc.w $8045,$0006
    dc.w $0001,$0220,$007c,$7c00
    dc.w $8047,$00b6,$ffff
    dc.w $000d,$0220,$007c,$7c00
    dc.w $0006,$021f,$007b,$7c00
    dc.w $0006,$01d3,$0025,$7c00
    dc.w $0005,$0258,$007d,$7c00
    dc.w $8001

loc_042954:
    dc.w $0004,$0342,$78ff,$fff8,$0060,$0c00
    dc.w $0002,$0343,$78ff,$0008,$0060,$0c00
    dc.w $0002,$0344,$78ff,$0008,$0050,$0c00
    dc.w $0001,$027c,$78ff,$ffe8,$0048,$0c00
    dc.w $0001,$027b,$78ff,$ffd8,$0048,$0c00
    dc.w $0001,$027b,$78ff,$ffc8,$0048,$0c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Fireball
loc_04299e:
    dc.w $0003,$0345,$40ff,$0000,$0000,$0c00
    dc.w $0001,$0346,$40ff,$0000,$0000,$0c00
    dc.w $8000,$0000
    dc.l loc_04299e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Short Fireball
loc_0429be:
    dc.w $8002,$1885
    dc.w $0002,$027b,$40ff,$0000,$0000,$0c00
    dc.w $0002,$027b,$40ff,$0000,$0000,$0b00
    dc.w $0002,$027c,$40ff,$0000,$0000,$0c00
    dc.w $0002,$027c,$40ff,$0000,$0000,$0b00
    dc.w $0002,$027d,$40ff,$0000,$0000,$0c00
    dc.w $0002,$027e,$40ff,$0000,$0000,$0b00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Flash Kick B
loc_042a0c:
    dc.w $8037
    dc.l loc_03fade
    dc.w $8038
    dc.l loc_042a48

    dc.w $803e,$384c,$2400
    dc.w $803f,$1c0c,$080a,$1c08
    dc.w $8040,$0000,$06ff,$ff00
    dc.w $8043,$000c
    dc.w $8041,$0e07,$f81c
    dc.w $8039,$0001
    dc.w $8048,$0550,$0006

    dc.w $8036
    dc.l loc_040386

loc_042a48:
    dc.w $8047,$00b6,$0000
    dc.w $802c
    dc.w $0002,$02c4,$0000,$7800
    dc.w $8011,$001c,$0004,$e000,$f000
    dc.w $0002,$0249,$0000,$7800
    dc.w $8011,$001c,$0004,$2800,$20f0
    dc.w $802a,$0065
    dc.w $0002,$024a,$0000,$7800
    dc.w $8004,$1884
    dc.w $8045,$000a
    dc.w $8007,$0008,$0000
    dc.w $0002,$024b,$007e,$78ff,$fff8,$0000,$0000
    dc.w $803e,$384c,$2400
    dc.w $803f,$100c,$0205,$1008
    dc.w $8007,$0008,$0000
    dc.w $803c,$0000
    dc.w $8047,$00b6,$0001
    dc.w $0002,$024c,$007f,$78ff,$fff8,$0000,$0000
    dc.w $0080,$024d,$0080,$78ff,$fff8,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Flash Kick D
loc_042ad8:
    dc.w $8037
    dc.l loc_03fade
    dc.w $8038
    dc.l loc_042b14

    dc.w $803e,$384e,$1400
    dc.w $803f,$1c0c,$0008,$1c04
    dc.w $8040,$0000,$08ff,$ff00
    dc.w $8043,$0009
    dc.w $8041,$0e07,$f820
    dc.w $8039,$0001
    dc.w $8048,$0550,$0006
    dc.w $8036
    dc.l loc_040386

loc_042b14:
    dc.w $8047,$00b6,$0000
    dc.w $802c,$0002,$02c4,$0000,$7800
    dc.w $8011,$001c,$0004,$e000,$f000
    dc.w $0003,$0249,$0000,$78ff,$0000,$0000,$0400
    dc.w $8011,$001c,$0004,$2800,$20f0
    dc.w $802a,$0064
    dc.w $0003,$024a,$0000,$78ff,$0000,$0000,$0400
    dc.w $8045,$000e
    dc.w $8007,$0008,$0000
    dc.w $8008,$0004,$0000,$0000,$0000
    dc.w $8004,$1884
    dc.w $0002,$024b,$008b,$78ff,$fff8,$0000,$0400
    dc.w $803c,$0000
    dc.w $8047,$00b6,$0001
    dc.w $8011,$001d,$0005,$f800,$e0f4,$ff00
    dc.w $803e,$384c,$2b00
    dc.w $803f,$100c,$0207,$1008
    dc.w $0002,$024c,$008c,$78ff,$fff8,$0000,$0400
    dc.w $803e,$384c,$2b00
    dc.w $803f,$080c,$0203,$0808
    dc.w $0002,$024d,$0080,$78ff,$fff8,$0000,$0000
    dc.w $0002,$024d,$0080,$78ff,$fff8,$0000,$0400
    dc.w $0002,$024d,$0080,$78ff,$fff8,$0000,$0000
    dc.w $0002,$024d,$0080,$78ff,$fff8,$0000,$0400
    dc.w $0002,$024d,$0080,$78ff,$fff8,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Flash Kick Recovery
loc_042c06:
    dc.w $803c,$0008
    dc.w $0004,$024e,$0081,$7cff,$fff8,$0098,$0003
    dc.w $0004,$024e,$0082,$7cff,$fff8,$fff8,$0001
    dc.w $0004,$02dd,$0083,$7cff,$0000,$0000,$0001
    dc.w $0004,$02cb,$000c,$7cff,$fffc,$fffc,$0000
    dc.w $0004,$01f9,$000d,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Flash Kick Fall Down
loc_042c52:
    dc.w $803c,$0000
    dc.w $8040,$0000,$0000,$0600
    dc.w $8003,$1870
    dc.w $8048,$0550,$0006
    dc.w $0003,$01ea,$0008,$7c00
    dc.w $0003,$01f6,$0008,$7c00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;
loc_042c7a:
    dc.w $8037
    dc.l loc_03fb9e
    dc.w $8038
    dc.l loc_042cc6

    dc.w $803e,$38cc,$1d00
    dc.w $8046,$08d0
    dc.w $803f,$0601,$000c,$0200
    dc.w $8040,$0000,$0aff,$ff00
    dc.w $8043,$0012
    dc.w $8041,$0e07,$f21e
    dc.w $8039,$0001
    dc.w $8048,$0550,$0000
    dc.w $803c,$0000
    dc.w $803b,$0000,$f40a
    dc.w $8047,$02b8,$0002,$0000

loc_042cc6:
    dc.w $8047,$00b6,$0000
    dc.w $8047,$00b9,$0000
    dc.w $802c
    dc.w $0002,$02c1,$0000,$7800
    dc.w $0003,$02c4,$0000,$78ff,$0000,$0000,$0001
    dc.w $802a,$0062
    dc.w $0003,$0201,$0000,$78ff,$0000,$ffe8,$0001
    dc.w $8047,$00b9,$ffff
    dc.w $0002,$0338,$0000,$78ff,$0008,$0000,$0000
    dc.w $8004,$1884
    dc.w $0004,$02d5,$0084,$78ff,$0000,$0044,$0002
    dc.w $803e,$38ca,$1d00
    dc.w $0004,$02d7,$0085,$78ff,$0000,$0000,$0001
    dc.w $8041,$0807,$f20e
    dc.w $8047,$00b6,$ffff
    dc.w $803c,$0008
    dc.w $802a,$0069

loc_042d4a:
    dc.w $0002,$0339,$0086,$7800
    dc.w $0002,$033a,$0086,$7800
    dc.w $0002,$033b,$0086,$7800
    dc.w $0002,$033c,$0086,$7800
    dc.w $8000,$0000
    dc.l loc_042d4a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;
loc_042d72:
    dc.w $803c,$0008
    dc.w $0004,$024e,$0081,$7cff,$fff8,$0098,$0003
    dc.w $0004,$024e,$0082,$7cff,$fff8,$fff8,$0001
    dc.w $0004,$02dd,$0083,$7cff,$0000,$0000,$0001
    dc.w $0004,$02cb,$000c,$7cff,$fffc,$fffc,$0000
    dc.w $0004,$01f9,$000d,$7cff,$fffc,$0000,$0000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;
loc_042dbe:
    dc.w $8037
    dc.l loc_03fd1c
    dc.w $8038
    dc.l loc_042dfe

    dc.w $803e,$38c4,$1e00
    dc.w $803f,$0801,$0004,$0800
    dc.w $8046,$1c10
    dc.w $8040,$0000,$0810,$1800
    dc.w $8043,$0008
    dc.w $8041,$0204,$e724
    dc.w $8039,$0001
    dc.w $8048,$0550,$0000

    dc.w $8036
    dc.l loc_04037a

loc_042dfe:
    dc.w $8047,$00b6,$0000
    dc.w $8047,$00b7,$0000
    dc.w $8047,$00b8,$0000
    dc.w $8047,$00b9,$0000
    dc.w $8047,$02b8,$0002
    dc.w $8011,$001c,$0004,$e000,$f000
    dc.w $802b,$1cbf
    dc.w $0005,$0201,$004e,$78ff,$0000,$fffc,$0000
    dc.w $8047,$00b9,$ffff

    dc.w $800a
    dc.l loc_0431be

    dc.w $0003,$0241,$004f,$7800
    dc.w $802b,$1cbb
    dc.w $8004,$1886
    dc.w $0002,$0242,$0060,$78ff,$0008,$000c,$0000
    dc.w $0003,$0243,$0061,$78ff,$0008,$0000,$0000
    dc.w $0003,$0244,$0062,$78ff,$fffc,$0004,$0000
    dc.w $0002,$0245,$0063,$78ff,$fff8,$0004,$0000
    dc.w $0002,$0246,$0064,$78ff,$fff8,$0000,$0000
    dc.w $0002,$0241,$004f,$7800
    dc.w $0002,$0201,$004e,$7cff,$0000,$fffc,$0000
    dc.w $8047,$00b6,$ffff

loc_042eb6:
    dc.w $8023
    dc.w $8003,$1870
    dc.w $8011,$001d
    dc.w $0005,$1800,$18f0,$ff00
    dc.w $0004,$01ea,$0008,$7c00
    dc.w $0014,$01f6,$0008,$7c00
    dc.w $8001

loc_042eda:
;4646k Connected
    dc.w $8040,$0000,$00ff,$ff00
    dc.w $8041,$0207,$d850
    dc.w $8047,$02b8,$0002
    dc.w $803c,$0000
    dc.w $803e,$38a0,$2000
    dc.w $803f,$0301,$0001,$0300
    dc.w $8046,$1c00
    dc.w $802a,$0068
    dc.w $8047,$00b7,$ffff
    dc.w $0002,$01d3,$0025,$7800
    dc.w $0002,$01d4,$0026,$7800
    dc.w $0002,$02c9,$0025,$7800
    dc.w $0002,$02c6,$0029,$78ff,$0008,$0000,$0000
    dc.w $803e,$38ea,$2100
    dc.w $0002,$01e1,$002a,$78ff,$0008,$0000,$0000
    dc.w $0002,$01e2,$002b,$78ff,$0010,$0000,$0000
    dc.w $0002,$01e6,$0040,$7800
    dc.w $0002,$02c8,$0073,$78ff,$fff0,$0000,$0000
    dc.w $803e,$38ec,$2000
    dc.w $803f,$0401,$0003,$0300
    dc.w $0002,$01e7,$0074,$78ff,$fff0,$0000,$0000
    dc.w $0002,$01df,$0075,$78ff,$fff0,$0000,$0000
    dc.w $0002,$01de,$0076,$78ff,$fff0,$0000,$0000
    dc.w $0002,$02cf,$0042,$78ff,$fff8,$0000,$0000
    dc.w $8047,$00b8,$ffff
    dc.w $8047,$00b7,$ffff
    dc.w $803e,$38a6,$2100
    dc.w $0002,$01f6,$0008,$7800
    dc.w $0002,$02b9,$003a,$7800
    dc.w $0002,$02c4,$0048,$7cff,$fff8,$0000,$0001
    dc.w $0002,$02c5,$0049,$88ff,$0010,$0000,$0000
    dc.w $803e,$38ec,$2300
    dc.w $8046,$10f0
    dc.w $0002,$01f2,$004a,$88ff,$0010,$0000,$0000
    dc.w $0002,$01f3,$004b,$88ff,$0010,$0000,$0000
    dc.w $0002,$01f4,$004c,$78ff,$0010,$0000,$0000
    dc.w $0002,$02ba,$004d,$7800
    dc.w $803e,$38c4,$1d00
    dc.w $8046,$28e8
    dc.w $0002,$01d9,$0034,$78ff,$0000,$0000,$0000
    dc.w $0002,$01da,$0033,$78ff,$0000,$0000,$0000
    dc.w $8008,$0002,$0000,$0000,$0000
    dc.w $0002,$021d,$0079,$7800
    dc.w $0002,$021e,$0070,$7800
    dc.w $803e,$38a4,$1d00
    dc.w $8046,$28f0
    dc.w $0002,$021f,$0071,$7800
    dc.w $0002,$0220,$0072,$7800
    dc.w $8007,$0010,$0000
    dc.w $0002,$02d3,$0087,$88ff,$0000,$fff0,$0000
    dc.w $8047,$00b8,$ffff
    dc.w $8047,$00b7,$ffff
    dc.w $0002,$02d8,$0088,$88ff,$0000,$ffe8,$0001
    dc.w $8047,$02b8,$0004
    dc.w $8046,$14e8
    dc.w $803e,$38cc,$1d00
    dc.w $803f,$0501,$0004,$0400
    dc.w $8008,$0002,$c000,$fff8,$0000
    dc.w $8004,$1884
    dc.w $0002,$02bb,$0089,$78ff,$0000,$0080,$0002
    dc.w $0002,$020f,$008a,$78ff,$fffc,$0080,$0002
    dc.w $803e,$38cc,$1d00
    dc.w $0002,$0211,$008a,$78ff,$fffc,$0080,$0002
    dc.w $802a,$0066
    dc.w $803e,$38cc,$1d00
    dc.w $0002,$0210,$008a,$78ff,$fffc,$0080,$0002
    dc.w $803e,$38cc,$1d00
    dc.w $0002,$0212,$008a,$78ff,$fffc,$0080,$0002

    dc.w $804d,$0000,$0000,$0000,$8000
    dc.l loc_040ad8

    dc.w $803e,$38ce,$2800
    dc.w $8046,$0000
    dc.w $0002,$0215,$008a,$78ff,$fffc,$0080,$0002
    dc.w $0002,$0214,$0089,$78ff,$fffc,$0080,$0002
    dc.w $8049,$0216,$0000,$0000
    dc.w $8002,$00e9
    dc.w $0004,$024e,$0081,$7cff,$fff8,$0098,$0003
    dc.w $0004,$024e,$0082,$7cff,$fff8,$fff8,$0001
    dc.w $0004,$02dd,$0083,$7cff,$0000,$0000,$0001
    dc.w $0004,$02cb,$000c,$7cff,$fffc,$fffc,$0000
    dc.w $03e7,$01f9,$000d,$7cff,$fffc,$0000,$0000
    dc.w $8001

loc_0431be:
    dc.w $0003,$028e,$74ff,$0000,$0000,$0d00
    dc.w $0002,$0288,$74ff,$0008,$000c,$0d00
    dc.w $0003,$0289,$74ff,$0008,$0000,$0d00
    dc.w $0003,$028a,$74ff,$fffc,$0004,$0d00
    dc.w $0002,$028b,$74ff,$fff8,$0004,$0d00
    dc.w $0002,$028c,$74ff,$fff8,$0000,$0d00
    dc.w $0002,$028e,$74ff,$0000,$0000,$0d00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;
loc_043214:
    dc.w $8037
    dc.l loc_03feb4
    dc.w $8038
    dc.l loc_043250

    dc.w $803e,$3882,$1700
    dc.w $803f,$1a06,$000c,$0808
    dc.w $8040,$0000,$0a00,$3400
    dc.w $8043,$000a
    dc.w $8041,$0212,$0020
    dc.w $8039,$0000
    dc.w $8048,$0550,$0000

    dc.w $8036
    dc.l loc_04037a

loc_043250:
    dc.w $8047,$00b6,$0000
    dc.w $8047,$00b9,$0000
    dc.w $802c

    dc.w $800a
    dc.l loc_0432c2

    dc.w $0004,$021d,$0079,$7c00
    dc.w $802a,$0067
    dc.w $0002,$021e,$007a,$7c00
    dc.w $8047,$00b9,$ffff
    dc.w $0002,$021e,$007a,$7c00
    dc.w $8004,$1885
    dc.w $0002,$021f,$007b,$7c00
    dc.w $8047,$00b6,$ffff
    dc.w $0010,$0220,$007c,$7c00
    dc.w $001c,$0220,$007c,$7c00
    dc.w $0006,$021f,$007b,$7c00
    dc.w $0006,$01d3,$0025,$7c00
    dc.w $0006,$0258,$007d,$7c00
    dc.w $8001

loc_0432c2:
    dc.w $0004,$0343,$78ff,$0008,$0060,$0a00
    dc.w $0004,$0344,$78ff,$0008,$0050,$0a00
    dc.w $0002,$0347,$78ff,$ffe8,$0040,$0a00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;
loc_0432e8:
    dc.l loc_0433be,loc_0433c6,loc_0433d4

loc_0432f4:
    dc.l loc_043334,loc_04333c
    dc.w $1805,$0101,$012c,$0000
    dc.l loc_043344,loc_04334c
    dc.w $1710,$0408,$03e8,$0000
    dc.l loc_043354,loc_04335c
    dc.w $1710,$0408,$03e8,$0000
    dc.l loc_043364,loc_04336c
    dc.w $2810,$0408,$03e8,$0000


loc_043334:
    dc.l $ffe00020,$ffd80010

loc_04333c:
    dc.l $fff00010,$fff00014

loc_043344:
    dc.l $ffe00020,$ffe80018

loc_04334c:
    dc.l $fff8000c,$fff0001c

loc_043354:
    dc.l $ffe00020,$ffe80018

loc_04335c:
    dc.l $fff40010,$fff00014

loc_043364:
    dc.l $ffe00020,$ffe80018

loc_04336c:
    dc.l $ffec0014,$fff0000c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;
loc_043374:
    dc.w $0003,$0348,$40ff,$0000,$0000,$0a00
    dc.w $0003,$0349,$40ff,$0000,$0000,$0a00
    dc.w $0003,$034a,$40ff,$fff8,$0000,$0a00
    dc.w $0003,$034b,$40ff,$fff8,$0000,$0a00
    dc.w $0003,$034c,$40ff,$fff8,$0000,$0a00
    dc.w $0003,$034d,$40ff,$fff8,$0000,$0a00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;
loc_0433be:
    dc.w $8000,$0000
    dc.l loc_0433da

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;
loc_0433c6:
    dc.w $8009
    dc.l loc_043442

    dc.w $8000,$0000
    dc.l loc_0433da

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;
loc_0433d4:
    dc.w $8009
    dc.l loc_043448

loc_0433da:
    dc.w $0003,$034e,$40ff,$0000,$0000,$0e00
    dc.w $0003,$034f,$40ff,$0000,$0000,$0e00
    dc.w $0003,$0350,$40ff,$0000,$0000,$0e00
    dc.w $0003,$0351,$40ff,$0000,$0000,$0e00
    dc.w $0003,$0352,$40ff,$0000,$0000,$0e00
    dc.w $0003,$0351,$40ff,$0000,$0000,$0e00
    dc.w $0003,$0352,$40ff,$0000,$0000,$0e00
    dc.w $0003,$0351,$40ff,$0000,$0000,$0e00
    dc.w $8000,$0000
    dc.l loc_0433da

loc_043442:
    dc.w $8007,$0020,$0000

loc_043448:
    dc.w $8007,$0010,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;
loc_04344e:
    dc.w $0003,$0353,$40ff,$0000,$0000,$0e00
    dc.w $0003,$0354,$40ff,$0000,$0000,$0e00
    dc.w $0003,$0355,$40ff,$0000,$0000,$0e00
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;
loc_043474:
    dc.w $8037
    dc.l loc_03f96a
    dc.w $8038
    dc.l loc_04349e

    dc.w $803a,$00ff
    dc.w $8039,$0014
    dc.w $803d
    dc.w $8048,$0550,$0004
    dc.w $8043,$000d
    dc.w $8045,$0002
    dc.w $8036
    dc.l loc_040392

loc_04349e:
    dc.w $8023
    dc.w $0002,$02cf,$0000,$8000
    dc.w $8002,$188d
    dc.w $8007,$fff0,$0000

    dc.w $804c
    dc.l $fffa0000,$ffff8000,$00004000,$ffff8000

    dc.w $8011,$001c,$0004,$f800,$3000
    dc.w $0008,$02cc,$0000,$80ff,$fff8,$0000,$0000

    dc.w $804c
    dc.l $fffc0000,$fffb0000,$00002000,$00008000

    dc.w $0003,$021b,$0013,$80ff,$fffc,$0004,$0000
    dc.w $0003,$0219,$0011,$80ff,$0000,$0008,$0000
    dc.w $0003,$0218,$0010,$80ff,$0000,$0004,$0000
    dc.w $0003,$0217,$000f,$80ff,$0000,$0008,$0000
    dc.w $0004,$0216,$0014,$80ff,$0004,$0004,$0000
    dc.w $0008,$01f9,$000d,$80ff,$fffc,$0000,$0000
    dc.w $803c,$0000
    dc.w $8003,$1870
    dc.w $803a,$0004
    dc.w $8039,$0000
    dc.w $8011,$001d,$0005,$e800,$e8e8,$ff00

    dc.w $0002,$01ea,$0008,$8000
    dc.w $0002,$01f6,$0008,$8000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;
loc_043570:
    dc.w $8037
    dc.l loc_03f96a
    dc.w $8038
    dc.l loc_043596

    dc.w $803a,$00ff
    dc.w $8039,$0018
    dc.w $803d
    dc.w $8048,$0550,$0004
    dc.w $8045,$0002

    dc.w $8036
    dc.l loc_04037a

loc_043596:
    dc.w $8008,$0006,$4000,$0000,$0000
    dc.w $8011,$001c,$0004,$e000,$0000
    dc.w $8002,$188a
    dc.w $0003,$033d,$008d,$8000
    dc.w $0003,$033e,$008d,$8000
    dc.w $804e,$0006,$0000,$ffff,$a000
    dc.w $803a,$00fb
    dc.w $0002,$033e,$008d,$8000
    dc.w $0006,$033f,$008e,$80ff,$fff8,$0000,$0000
    dc.w $8011,$001d,$0005,$1800,$28f0,$ff00
    dc.w $803a,$0000
    dc.w $8039,$0000
    dc.w $0004,$0340,$008f,$80ff,$fff8,$0000,$0000
    dc.w $0004,$0341,$0090,$8000
    dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;
loc_04360e:
    dc.w $8037
    dc.l loc_028fca
    dc.w $8038
    dc.l loc_043630

    dc.w $803d
    dc.w $8040,$0406,$0908,$2000
    dc.w $8048,$0552,$00b4

    dc.w $8036
    dc.l loc_04037a

loc_043630:
    dc.w $802c
    dc.w $0004,$033f,$0091,$8000

    dc.w $8017,$0080
    dc.l loc_04364e

    dc.w $802a,$006a

    dc.w $8000,$0000
    dc.l loc_04365a

loc_04364e:
    dc.w $802a,$006b
    dc.w $8000,$0000
    dc.l loc_04365a

loc_04365a:
    dc.w $0005,$0323,$0091,$8000
    dc.w $0008,$023d,$0091,$8000
    dc.w $8045,$0002
    dc.w $0003,$023e,$0091,$8000
    dc.w $0004,$0240,$0091,$8000
    dc.w $0004,$023f,$0091,$8000
    dc.w $0004,$023d,$0091,$8000
    dc.w $0003,$023e,$0091,$8000
    dc.w $0008,$0240,$0091,$8000
    dc.w $0006,$0323,$0091,$8000
    dc.w $8001

;ends at 0436a8