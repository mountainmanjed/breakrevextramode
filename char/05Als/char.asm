loc_060b08:
	move.w #$168,($344,a4)
	move.w #$20,($346,a4)
	move.w #$a,($348,a4)
	move.w #$10,($34a,a4)
	move.w #$d4,($34c,a4)
	move.w #$7c,($34e,a4)
	move.w #$b4,($350,a4)
	rts

;--------------------------
loc_060b34:
	tst.b ($4d5,a4)
	beq.w loc_060b5e
	move.b ($35c,a4),d0
	andi.w #$fffc,d0
	bne.w loc_060b5e
	cmpi.b #6,($360,a4)
	bne.w loc_060b5e
	sf ($4d5,a4)
	move.l #loc_060e54,($56,a4)

loc_060b5e:
	rts

;--------------------------
loc_060b60:
	movea.l #loc_062322,a0
	bsr.w loc_060bb4
	bra.w loc_060c70

;--------------------------
loc_060b6e:
	bclr #7,($35c,a4)
	bne.w loc_060b7e
	jmp loc_02e5c6

;--------------------------
loc_060b7e:
	movea.l #loc_062206,a0
	bsr.w loc_060bb4
	bra.w loc_060c70

;--------------------------
loc_060b8c:
	move.l (a7)+,($4d8,a4)
	jmp (a0)

;--------------------------
loc_060b92:
	move.l ($4d8,a4),d0
	beq.b loc_060b6e
	clr.l ($4d8,a4)
	movea.l d0,a0
	clr.b d0
	jmp (a0)

;--------------------------
loc_060ba2:
	move.l ($4d8,a4),d0
	beq.b loc_060b6e
	clr.l ($4d8,a4)
	movea.l d0,a0
	move.b #-1,d0
	jmp (a0)

;--------------------------
loc_060bb4:
	move.l (a7)+,($4dc,a4)
	jmp (a0)

;--------------------------
loc_060bba:
	move.l ($4dc,a4),d0
	beq.w loc_060c70
	clr.l ($4dc,a4)
	movea.l d0,a0
	jmp (a0)

;--------------------------
loc_060bca:
	st ($4d5,a4)
	cmpi.w #$a0,($378,a4)
	bgt.w loc_060c32
	cmpi.w #$3c,($378,a4)
	bgt.w loc_060c0e
	cmpi.w #$1e,($378,a4)
	bgt.w loc_060bf0
	bra.w loc_060c64

;--------------------------
loc_060bf0:
	jsr RandomNumberGod
	lea loc_060c00(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_060c00
	dc.w $0002
	dc.w $001e
	dc.l loc_060c50
	dc.w $001e
	dc.l loc_060c64

;--------------------------
loc_060c0e:
	jsr RandomNumberGod
	lea loc_060c1e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_060c1e:
	dc.w $0003
	dc.w $003c
	dc.l loc_060c5a
	dc.w $001e
	dc.l loc_060c64
	dc.w $001e
	dc.l loc_060c50

;--------------------------
loc_060c32:
	jsr RandomNumberGod
	lea loc_060c42(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_060c42:
	dc.w $0002
	dc.w $003c
	dc.l loc_060c5a
	dc.w $001e
	dc.l loc_060c50

;--------------------------
loc_060c50:
	movea.l #loc_062206,a0
	bra.w loc_060c6a

loc_060c5a:
	movea.l #loc_0622b4,a0
	bra.w loc_060c6a

loc_060c64:
	movea.l #loc_062322,a0

loc_060c6a:
	movea.l a0,a0
	bsr.w loc_060bb4

loc_060c70:
	clr.l ($4d8,a4)
	clr.l ($4dc,a4)
	clr.l ($4e0,a4)
	tst.b ($35d,a4)
	beq.w loc_060c8c
	jsr loc_0226b4
	bra.b loc_060c70

;--------------------------
loc_060c8c:
	st ($35d,a4)
	cmpi.b #6,($360,a4)
	beq.w loc_060e54
	tst.b ($247,a4)
	beq.w loc_060e46
	cmpi.w #$a0,($378,a4)
	bgt.w loc_060e0a
	cmpi.w #$3c,($378,a4)
	bgt.w loc_060d9e
	cmpi.w #$1e,($378,a4)
	bgt.w loc_060d20
	jsr RandomNumberGod
	lea loc_060cd0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_060cd0:
	dc.w $000d

	dc.w $000a
	dc.l loc_06247a

	dc.w $0005
	dc.l loc_062322

	dc.w $0005
	dc.l loc_06245e

	dc.w $001e
	dc.l loc_062bb6

	dc.w $0014
	dc.l loc_062d54

	dc.w $0014
	dc.l loc_062efc

	dc.w $000f
	dc.l loc_063a5c

	dc.w $0014
	dc.l loc_0632f2

	dc.w $0014
	dc.l loc_063102

	dc.w $0014
	dc.l loc_06244c

	dc.w $000f
	dc.l loc_063204

	dc.w $0032
	dc.l loc_063c22

	dc.w $001e
	dc.l loc_063838

;--------------------------
loc_060d20:
	jsr RandomNumberGod
	lea loc_060d30(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_060d30:
	dc.w $0012

	dc.w $000a
	dc.l loc_06247a

	dc.w $0005
	dc.l loc_062322

	dc.w $0005
	dc.l loc_062388

	dc.w $000a
	dc.l loc_06244c

	dc.w $001e
	dc.l loc_062bb6

	dc.w $0050
	dc.l loc_063c22

	dc.w $0014
	dc.l loc_062d54

	dc.w $0014
	dc.l loc_062efc

	dc.w $0028
	dc.l loc_0633de

	dc.w $001e
	dc.l loc_0636fe

	dc.w $0028
	dc.l loc_063a5c

	dc.w $0014
	dc.l loc_063ca8

	dc.w $0014
	dc.l loc_063992

	dc.w $0014
	dc.l loc_063102

	dc.w $0014
	dc.l loc_063204

	dc.w $0014
	dc.l loc_0632f2

	dc.w $000f
	dc.l loc_063634

	dc.w $0014
	dc.l loc_063838

;--------------------------
loc_060d9e:
	jsr RandomNumberGod
	lea loc_060dae(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_060dae:
	dc.w $000f

	dc.w $001e
	dc.l loc_0622b4

	dc.w $000a
	dc.l loc_062322

	dc.w $0005
	dc.l loc_062388

	dc.w $0005
	dc.l loc_06247a

	dc.w $0005
	dc.l loc_062442

	dc.w $0032
	dc.l loc_063c22

	dc.w $0032
	dc.l loc_0633de

	dc.w $0014
	dc.l loc_0636fe

	dc.w $0014
	dc.l loc_063a5c

	dc.w $0014
	dc.l loc_063102

	dc.w $0014
	dc.l loc_063ca8

	dc.w $0014
	dc.l loc_062efc

	dc.w $0014
	dc.l loc_063634

	dc.w $0014
	dc.l loc_063838

	dc.w $000a
	dc.l loc_062bb6

;--------------------------
loc_060e0a:
	jsr RandomNumberGod
	lea loc_060e1a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_060e1a:
	dc.w $0007

	dc.w $001e
	dc.l loc_0622b4

	dc.w $000a
	dc.l loc_062442

	dc.w $003c
	dc.l loc_0633de

	dc.w $001e
	dc.l loc_0636fe

	dc.w $000a
	dc.l loc_063634

	dc.w $0032
	dc.l loc_063c22

	dc.w $001e
	dc.l loc_063ca8

;--------------------------
loc_060e46:
	movea.l #loc_0625a8,a0
	bsr.w loc_060b8c
	bra.w loc_060c70

;--------------------------
loc_060e54:
	clr.b ($2f6,a4)
	move.l #$100020,d0
	jsr loc_02e420
	jsr RandomNumberGod
	lea loc_060e74(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_060e74:
	dc.w $0003

	dc.w $0028
	dc.l loc_060e88
	dc.w $001e
	dc.l loc_060ea4
	dc.w $0014
	dc.l loc_060e96

;--------------------------
loc_060e88:
	movea.l #loc_063634,a0
	bsr.w loc_060b8c
	bra.w loc_060b6e

;--------------------------
loc_060e96:
	movea.l #loc_06247a,a0
	bsr.w loc_060bb4
	bra.w loc_060b6e

;--------------------------
loc_060ea4:
	movea.l #loc_06245e,a0
	bsr.w loc_060bb4
	bra.w loc_060b6e

;--------------------------
loc_060eb2:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_060ec6(pc,d0.w),d0
	jmp loc_060ec6(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_060ec6:
	dc.w loc_060ee6-loc_060ec6
	dc.w loc_060ee6-loc_060ec6
	dc.w loc_060ee6-loc_060ec6
	dc.w loc_060ee6-loc_060ec6

	dc.w loc_060eea-loc_060ec6
	dc.w loc_060efc-loc_060ec6
	dc.w loc_060f0e-loc_060ec6
	dc.w loc_060f20-loc_060ec6

	dc.w loc_060f32-loc_060ec6
	dc.w loc_060f44-loc_060ec6
	dc.w loc_060f56-loc_060ec6
	dc.w loc_060f68-loc_060ec6

	dc.w loc_060f7a-loc_060ec6
	dc.w loc_060f7a-loc_060ec6
	dc.w loc_060f7a-loc_060ec6
	dc.w loc_060f7a-loc_060ec6

;--------------------------
loc_060ee6:
	bra.w loc_060f8c

loc_060eea:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_060f7e
	bra.w loc_060f8c

loc_060efc:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_060f7e
	bra.w loc_060f8c

loc_060f0e:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_060f7e
	bra.w loc_060f8c

loc_060f20:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_060f7e
	bra.w loc_060f8c

loc_060f32:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_060f7e
	bra.w loc_060f8c

loc_060f44:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_060f7e
	bra.w loc_060f8c

loc_060f56:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_060f7e
	bra.w loc_060f8c

loc_060f68:
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_060f7e
	bra.w loc_060f8c

loc_060f7a:
	bra.w loc_060f8c

;--------------------------
loc_060f7e:
	movea.l #loc_06247a,a0
	bsr.w loc_060bb4
	bra.w loc_060c70

;--------------------------
loc_060f8c:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	scs ($4d3,a4)

loc_060f9a:
	tst.b ($365,a4)
	bne.w loc_06137a
	clr.b ($2f6,a4)
	tst.b ($4d3,a4)
	bpl.w loc_060fd4
	cmpi.b #3,($360,a4)
	beq.w loc_060fd4
	cmpi.b #4,($360,a4)
	beq.w loc_060fd4
	tst.b ($367,a4)
	beq.w loc_060fd8
	cmpi.b #1,($360,a4)
	beq.w loc_060fd8

loc_060fd4:
	bra.w loc_061016

loc_060fd8:
	cmpi.w #$40,($340,a4)
	blt.w loc_061016
	cmpi.w #$8c,($378,a4)
	bgt.w loc_061016
	cmpi.w #$14,($378,a4)
	blt.w loc_061016
	cmpi.w #-$82,($37a,a4)
	bgt.w loc_061016
	tst.b ($24a,a4)
	bne.w loc_061016
	movea.l #loc_062388,a0
	bsr.w loc_060bb4
	bra.w loc_061374

loc_061016:
	cmpi.b #3,($376,a4)
	beq.w loc_061062
	cmpi.b #3,($360,a4)
	beq.w loc_061054
	cmpi.b #4,($360,a4)
	beq.w loc_061054
	tst.b ($367,a4)
	beq.w loc_061054
	cmpi.b #1,($360,a4)
	beq.w loc_061062
	cmpi.b #2,($360,a4)
	beq.w loc_061062
	bra.w loc_06135e

loc_061054:
	jsr RandomNumberGod
	cmpi.w #-$800,d0
	bcs.w loc_06135e

loc_061062:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0610ae
	cmpi.w #$40,($340,a4)
	blt.w loc_0610ae
	btst #7,($35c,a4)
	bne.w loc_0610ae
	cmpi.w #$32,($378,a4)
	bgt.w loc_0610ae
	cmpi.w #-$50,($37a,a4)
	blt.w loc_0610ae
	clr.b ($2f6,a4)
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	bne.w loc_061374

loc_0610ae:
	cmpi.w #$40,($340,a4)
	blt.w loc_061142
	btst #7,($35c,a4)
	bne.w loc_061142
	cmpi.w #$46,($378,a4)
	bgt.w loc_061142
	cmpi.w #-$78,($37a,a4)
	blt.w loc_061142
	bsr.w loc_064bcc
	bne.w loc_061374
	jsr loc_02e26e
	beq.w loc_061374
	jsr loc_02e308
	jsr RandomNumberGod
	lea loc_0610fe(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0610fe:
	dc.w $0002

	dc.w $001e
	dc.l loc_06110c

	dc.w $001e
	dc.l loc_06112e

;--------------------------
loc_06110c:
	cmpi.w #$40,($340,a4)
	blt.w loc_061374
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b1c
	jsr loc_02e308
	bra.w loc_061374

;--------------------------
loc_06112e:
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_061374

;--------------------------
loc_061142:
	btst #7,($35c,a4)
	bne.w loc_06116e
	cmpi.w #$5a,($378,a4)
	bgt.w loc_06116e
	cmpi.w #-$14,($37a,a4)
	blt.w loc_06116e
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	bne.w loc_061374

loc_06116e:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0611ac
	btst #7,($35c,a4)
	bne.w loc_0611ac
	cmpi.w #$5a,($378,a4)
	bgt.w loc_0611ac
	cmpi.w #-$78,($37a,a4)
	blt.w loc_0611ac
	movea.l #loc_062560,a0
	bsr.w loc_060bb4
	bsr.w loc_064c80
	bne.w loc_061374

loc_0611ac:
	btst #7,($35c,a4)
	bne.w loc_0611d8
	cmpi.w #$78,($378,a4)
	bgt.w loc_0611d8
	cmpi.w #-$14,($37a,a4)
	blt.w loc_0611d8
	move.b #2,($2f6,a4)
	bsr.w loc_064d70
	bne.w loc_061374

loc_0611d8:
	btst #7,($35c,a4)
	bne.w loc_061202
	cmpi.w #$78,($378,a4)
	bgt.w loc_061202
	cmpi.w #-$3c,($37a,a4)
	blt.w loc_061202
	clr.b ($2f6,a4)
	bsr.w loc_064d70
	bne.w loc_061374

loc_061202:
	btst #7,($35c,a4)
	bne.w loc_061290
	cmpi.w #$78,($378,a4)
	bgt.w loc_061290
	cmpi.w #-$82,($37a,a4)
	blt.w loc_061290
	clr.b ($2f6,a4)
	bsr.w loc_064c08
	bne.w loc_061374
	jsr loc_02e26e
	beq.w loc_061374
	jsr loc_02e308
	jsr RandomNumberGod
	lea loc_06124c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06124c:
	dc.w $0002
	dc.w $001e
	dc.l loc_06127c
	dc.w $001e
	dc.l loc_06125a

;--------------------------
loc_06125a:
	cmpi.w #$40,($340,a4)
	blt.w loc_061374
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b1c
	jsr loc_02e308
	bra.w loc_061374

;--------------------------
loc_06127c:
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_061374

;--------------------------
loc_061290:
	btst #7,($35c,a4)
	bne.w loc_0612bc
	cmpi.w #$82,($378,a4)
	bgt.w loc_0612bc
	cmpi.w #-$a,($37a,a4)
	blt.w loc_0612bc
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	bne.w loc_061374

loc_0612bc:
	btst #7,($35c,a4)
	bne.w loc_0612e6
	cmpi.w #$82,($378,a4)
	bgt.w loc_0612e6
	cmpi.w #-$46,($37a,a4)
	blt.w loc_0612e6
	clr.b ($2f6,a4)
	bsr.w loc_064c80
	bne.w loc_061374

loc_0612e6:
	btst #7,($35c,a4)
	bne.w loc_061316
	cmpi.w #$82,($378,a4)
	bgt.w loc_061316
	cmpi.w #-$78,($37a,a4)
	blt.w loc_061316
	movea.l #loc_062584,a0
	bsr.w loc_060bb4
	bsr.w loc_064c80
	bne.w loc_061374

loc_061316:
	cmpi.w #$40,($340,a4)
	blt.w loc_061374
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_061374
	btst #7,($35c,a4)
	beq.w loc_06135e
	cmpi.w #$44,($36c,a4)
	bgt.w loc_06135e
	cmpi.w #-$28,($37a,a4)
	blt.w loc_06135e
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	bne.w loc_061374

loc_06135e:
	jsr loc_02e456
	jsr loc_0226b4
	jsr loc_02e370
	bra.w loc_060f9a

;--------------------------
loc_061374:
	jsr loc_02e308

loc_06137a:
	clr.b ($2f6,a4)
	bclr #2,($35c,a4)
	bra.w loc_060c70

;--------------------------
loc_061388:
	cmpi.w #$a0,($340,a4)
	bge.w loc_0613a6
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($358,a4),d0
	bcs.w loc_0613a6
	bra.w loc_061472

loc_0613a6:
	move.w #$17,($4d6,a4)

loc_0613ac:
	cmpi.b #1,($36a,a4)
	bne.w loc_0613c0
	btst #0,($362,a4)
	bne.w loc_060f8c

loc_0613c0
	tst.b ($367,a4)
	beq.w loc_061462
	cmpi.b #3,($36a,a4)
	beq.w loc_061456
	cmpi.b #6,($36a,a4)
	beq.w loc_06141a
	cmpi.b #5,($360,a4)
	beq.w loc_061404
	cmpi.b #1,($36a,a4)
	bne.w loc_0613fa
	cmpi.w #$1c,($374,a4)
	bgt.w loc_061456

loc_0613fa
	cmpi.b #1,($360,a4)
	beq.w loc_061434

loc_061404
	jsr loc_02e456
	jsr loc_0226b4
	subq.w #1,($4d6,a4)
	bge.b loc_0613ac
	bra.w loc_061462

loc_06141a
	cmpi.b #4,($376,a4)
	beq.b loc_061404
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_061472
	bra.w loc_06247a

loc_061434
	cmpi.b #4,($36a,a4)
	beq.w loc_061456
	cmpi.w #$e0,($358,a4)
	blt.w loc_061462
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_061462

loc_061456
	btst #3,($24a,a4)
	bne.b loc_061404
	bra.w loc_061484

loc_061462:
	btst #7,($35c,a4)
	bne.w loc_061480
	jsr loc_02e456

loc_061472:
	jsr loc_0226b4
	moveq #6,d0
	jsr loc_02e39c

loc_061480:
	bra.w loc_060c70

loc_061484:
	tst.b ($247,a4)
	beq.w loc_0625a8

loc_06148c:
	btst #1,($246,a4)
	bne.w loc_06149e
	jsr loc_0226b4
	bra.b loc_06148c

loc_06149e:
	btst #3,($24a,a4)
	bne.w loc_061b7e
	cmpi.b #5,($36a,a4)
	beq.w loc_061b7e
	cmpi.b #5,($360,a4)
	beq.w loc_061b7e
	tst.b ($365,a4)
	beq.w loc_060f8c
	cmpi.b #1,($360,a4)
	beq.w loc_0614fa
	cmpi.b #2,($360,a4)
	bne.w loc_0614f0
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_061b70
	sf d3
	move.w ($378,a4),d2
	bra.w loc_061506

loc_0614f0:
	st d3
	move.w ($374,a4),d2
	bra.w loc_061506

loc_0614fa:
	sf d3
	move.w ($374,a4),d2
	add.w ($378,a4),d2
	asr.w #1,d2

loc_061506:
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_06151a
	bra.w loc_0616c8

loc_06151a:
	btst #7,($35c,a4)
	beq.w loc_0616c8
	cmpi.w #$1e,($36c,a4)
	bge.w loc_06155e
	jsr RandomNumberGod
	lea loc_06153e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06153e:
	dc.w $0005

	dc.w $001e
	dc.l loc_061602

	dc.w $000a
	dc.l loc_061630

	dc.w $000a
	dc.l loc_0616b2

	dc.w $000a
	dc.l loc_0616a4

	dc.w $000a
	dc.l loc_061674

;--------------------------
loc_06155e:
	cmpi.w #$3c,($36c,a4)
	bge.w loc_061598
	jsr RandomNumberGod
	lea loc_061578(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_061578:
	dc.w $0005

	dc.w $001e
	dc.l loc_061602

	dc.w $0014
	dc.l loc_0616b2

	dc.w $000a
	dc.l loc_061674

	dc.w $000a
	dc.l loc_061652

	dc.w $000a
	dc.l loc_0616a4

;--------------------------
loc_061598:
	cmpi.w #$78,($36c,a4)
	bge.w loc_0615d2
	jsr RandomNumberGod
	lea loc_0615b2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0615b2:
	dc.w $0005

	dc.w $0028
	dc.l loc_061614

	dc.w $0014
	dc.l loc_061622

	dc.w $000a
	dc.l loc_061674

	dc.w $000a
	dc.l loc_0616a4

	dc.w $000a
	dc.l loc_061652

;--------------------------
loc_0615d2:
	jsr RandomNumberGod
	lea loc_0615e2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0615e2:
	dc.w $0005
	dc.w $001e
	dc.l loc_061622
	dc.w $001e
	dc.l loc_061614
	dc.w $000a
	dc.l loc_061696
	dc.w $000a
	dc.l loc_061652
	dc.w $000a
	dc.l loc_061674

;--------------------------
loc_061602:
	movea.l #loc_062bb6,a0
	bsr.w loc_060b8c
	beq.w loc_061b7e
	bra.w loc_061b54

loc_061614:
	movea.l #loc_062322,a0
	bsr.w loc_060bb4
	bra.w loc_061b54

loc_061622:
	movea.l #loc_0622b4,a0
	bsr.w loc_060bb4
	bra.w loc_061b54

loc_061630:
	cmpi.w #$40,($340,a4)
	blt.w loc_061b54
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	jsr loc_02e308
	bra.w loc_061b54

loc_061652:
	cmpi.w #$40,($340,a4)
	blt.w loc_061b54
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064ab6
	jsr loc_02e308
	bra.w loc_061b54

loc_061674:
	cmpi.w #$40,($340,a4)
	blt.w loc_061b54
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b1c
	jsr loc_02e308
	bra.w loc_061b54

loc_061696:
	movea.l #loc_062442,a0
	bsr.w loc_060bb4
	bra.w loc_061b54

loc_0616a4:
	movea.l #loc_06245e,a0
	bsr.w loc_060bb4
	bra.w loc_061b54

loc_0616b2:
	cmpi.w #$60,($340,a4)
	blt.w loc_0616c8
	bsr.w loc_064a7a
	bne.w loc_0616c8
	bra.w loc_061b54

;--------------------------
loc_0616c8:
	jsr RandomNumberGod
	andi.w #$1f,d0
	subi.w #$10,d0
	add.w d0,d2
	cmpi.b #1,($376,a4)
	beq.w loc_06171c
	jsr RandomNumberGod
	cmpi.w #$3300,d0
	bcs.w loc_061b7e
	btst #0,($369,a4)
	bne.w loc_061748
	btst #2,($369,a4)
	bne.w loc_06177c
	btst #1,($369,a4)
	bne.w loc_06177c
	btst #3,($369,a4)
	bne.w loc_06177c
	bra.w loc_061b7e

loc_06171c:
	btst #0,($369,a4)
	bne.w loc_0617c8
	btst #2,($369,a4)
	bne.w loc_06181c
	btst #1,($369,a4)
	bne.w loc_06181c
	btst #3,($369,a4)
	bne.w loc_06181c
	bra.w loc_061b7e

loc_061748:
	cmpi.w #$22,d2
	ble.w loc_0618b2
	cmpi.w #$2c,d2
	ble.w loc_06194a
	cmpi.w #$36,d2
	ble.w loc_061882
	cmpi.w #$44,d2
	ble.w loc_0618ea
	cmpi.w #$50,d2
	ble.w loc_06192e
	cmpi.w #$5e,d2
	ble.w loc_061a86
	bra.w loc_061b7e

loc_06177c:
	cmpi.w #$26,d2
	ble.w loc_061860
	cmpi.w #$2e,d2
	ble.w loc_0619b8
	cmpi.w #$32,d2
	ble.w loc_061a5a
	cmpi.w #$3a,d2
	ble.w loc_06192e
	cmpi.w #$40,d2
	ble.w loc_0619cc
	cmpi.w #$46,d2
	ble.w loc_06190c
	cmpi.w #$50,d2
	ble.w loc_061a86
	cmpi.w #$5a,d2
	ble.w loc_061a18
	cmpi.w #$64,d2
	ble.w loc_061af0
	bra.w loc_061b7e

loc_0617c8:
	cmpi.w #$26,d2
	ble.w loc_061860
	cmpi.w #$2c,d2
	ble.w loc_0619b8
	cmpi.w #$32,d2
	ble.w loc_06194a
	cmpi.w #$3a,d2
	ble.w loc_0618ea
	cmpi.w #$44,d2
	ble.w loc_06192e
	cmpi.w #$4a,d2
	ble.w loc_06190c
	cmpi.w #$50,d2
	ble.w loc_061a86
	cmpi.w #$5a,d2
	ble.w loc_061ac4
	cmpi.w #$64,d2
	ble.w loc_061984
	cmpi.w #$6e,d2
	ble.w loc_061b16
	bra.w loc_061b7e

loc_06181c:
	cmpi.w #$2a,d2
	ble.w loc_0619cc
	cmpi.w #$32,d2
	ble.w loc_06192e
	cmpi.w #$3c,d2
	ble.w loc_06190c
	cmpi.w #$44,d2
	ble.w loc_061a98
	cmpi.w #$4e,d2
	ble.w loc_061b2a
	cmpi.w #$58,d2
	ble.w loc_061af0
	cmpi.w #$62,d2
	ble.w loc_061ac4
	cmpi.w #$6e,d2
	ble.w loc_061b16
	bra.w loc_061b7e

loc_061860:
	cmpi.w #$60,($340,a4)
	blt.w loc_061b54
	jsr loc_02c78a
	beq.w loc_061b54
	bsr.w loc_064a7a
	jsr loc_02e308
	bra.w loc_061b54

loc_061882:
	move.b #$4,($2f6,a4)
	bsr.w loc_064cf8
	jsr loc_02e308
	bra.w loc_061b54

loc_061896:
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_061b54
	movea.l #loc_062388,a0
	bsr.w loc_060bb4
	bra.w loc_061b54

loc_0618b2:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_061b54
	movea.l #loc_06245e,a0
	bsr.w loc_060bb4
	bra.w loc_061b54

loc_0618ce:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_061b54
	movea.l #loc_062442,a0
	bsr.w loc_060bb4
	bra.w loc_061b54

loc_0618ea:
	cmpi.w #$40,($340,a4)
	blt.w loc_061b54
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	jsr loc_02e308
	bra.w loc_061b54

loc_06190c:
	cmpi.w #$40,($340,a4)
	blt.w loc_061b54
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064ab6
	jsr loc_02e308
	bra.w loc_061b54

loc_06192e:
	cmpi.w #$40,($340,a4)
	blt.w loc_061b54
	st ($3ca,a4)
	bsr.w loc_064b1c
	jsr loc_02e308
	bra.w loc_061b54

loc_06194a:
	cmpi.w #$40,($340,a4)
	blt.w loc_061b54
	clr.b ($2f6,a4)
	bsr.w loc_064bcc
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_061b54
	jsr loc_02e308
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_061b54

loc_061984:
	cmpi.w #$40,($340,a4)
	blt.w loc_061b54
	clr.b ($2f6,a4)
	bsr.w loc_064bea
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_061b54
	jsr loc_02e308
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	bra.w loc_061b54

loc_0619b8:
	move.b #4,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_061b54

loc_0619cc:
	cmpi.b #1,($376,a4)
	beq.w loc_061b02
	bra.w loc_061a2a

loc_0619da:
	move.b #4,($2f6,a4)
	bsr.w loc_064d70
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_061b54
	clr.b ($2f6,a4)
	bsr.w loc_064c80
	bra.w loc_061b54

loc_061a04:
	move.b #2,($2f6,a4)
	bsr.w loc_064d70
	jsr loc_02e308
	bra.w loc_061b54

loc_061a18:
	clr.b ($2f6,a4)
	bsr.w loc_064d70
	jsr loc_02e308
	bra.w loc_061b54

loc_061a2a
	move.b #$4,($2f6,a4)
	bsr.w loc_064cf8
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_061b54
	jsr loc_02e308
	clr.b ($2f6,a4)
	bsr.w loc_064cf8
	jsr loc_02e308
	bra.w loc_061b54

loc_061a5a:
	move.b #2,($2f6,a4)
	bsr.w loc_064cf8
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_061b54
	bsr.w loc_064bcc
	jsr loc_02e308
	bra.w loc_061b54

loc_061a86:
	clr.b ($2f6,a4)
	bsr.w loc_064cf8
	jsr loc_02e308
	bra.w loc_061b54

loc_061a98:
	move.b #4,($2f6,a4)
	bsr.w loc_064c80
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_061b54
	jsr loc_02e308
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	bra.w loc_061b54

loc_061ac4:
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_061b54
	jsr loc_02e308
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	bra.w loc_061b54

loc_061af0:
	clr.b ($2f6,a4)
	bsr.w loc_064c80
	jsr loc_02e308
	bra.w loc_061b54

loc_061b02:
	move.b #4,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_061b54

loc_061b16:
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_061b54

loc_061b2a:
	clr.b ($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_061b54
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	bra.w loc_061b54

;--------------------------
loc_061b54:
	jsr loc_0226b4
	btst #7,($35c,a4)
	bne.w loc_061b6c
	moveq #4,d0
	jsr loc_02e39c

loc_061b6c:
	bra.w loc_060b6e

;--------------------------
loc_061b70:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_06247a

loc_061b7e:
	jsr loc_02e456
	jsr loc_0226b4
	bclr #3,($35c,a4)
	bra.w loc_060b6e

;--------------------------
loc_061b94:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_061ba8(pc,d0.w),d0
	jmp loc_061ba8(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_061ba8:
	dc.w loc_061bc8-loc_061ba8
	dc.w loc_061bc8-loc_061ba8
	dc.w loc_061bce-loc_061ba8
	dc.w loc_061be2-loc_061ba8

	dc.w loc_061bf6-loc_061ba8
	dc.w loc_061c0a-loc_061ba8
	dc.w loc_061c1e-loc_061ba8
	dc.w loc_061c32-loc_061ba8

	dc.w loc_061c46-loc_061ba8
	dc.w loc_061c46-loc_061ba8
	dc.w loc_061c46-loc_061ba8
	dc.w loc_061c46-loc_061ba8

	dc.w loc_061c46-loc_061ba8
	dc.w loc_061c46-loc_061ba8
	dc.w loc_061c46-loc_061ba8
	dc.w loc_061c46-loc_061ba8

;--------------------------
loc_061bc8:
	jmp loc_02e5b2

loc_061bce:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_061c4a
	jmp loc_02e5b2

loc_061be2:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_061c4a
	jmp loc_02e5b2

loc_061bf6:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_061c4a
	jmp loc_02e5b2

loc_061c0a:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_061c4a
	jmp loc_02e5b2

loc_061c1e:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_061c4a
	jmp loc_02e5b2

loc_061c32:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_061c4a
	jmp loc_02e5b2

loc_061c46:
	bra.w loc_061c4a

;--------------------------
loc_061c4a:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcc.b loc_061c5e
	move.b #1,($4d0,a4)
	bra.b loc_061c6e

loc_061c5e:
	cmpi.w #-$4000,d0
	bcc.b loc_061c6a
	sf ($4d0,a4)
	bra.b loc_061c6e

loc_061c6a:
	st ($4d0,a4)

loc_061c6e:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	scs ($4d1,a4)

loc_061c7c:
	tst.b ($367,a4)
	beq.w loc_061c92
	cmpi.w #$3c,($374,a4)
	bge.w loc_061c92
	bra.w loc_061e3e

loc_061c92:
	tst.b ($363,a4)
	beq.w loc_061e4e
	cmpi.w #-$38,($370,a4)
	ble.w loc_061e4e
	cmpi.w #$34,($370,a4)
	ble.w loc_061e3e
	tst.b ($4d1,a4)
	beq.w loc_061d14
	cmpi.w #$f0,($37c,a4)
	bgt.w loc_061d14
	cmpi.w #$b4,($37c,a4)
	ble.w loc_061d14
	cmpi.b #$12,($364,a4)
	beq.w loc_061d14
	cmpi.w #$c0,($340,a4)
	blt.w loc_061cfe
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_061cfe
	bsr.w loc_064a42
	beq.w loc_061cfe
	jsr loc_02e308
	bra.w loc_061e4e

loc_061cfe:
	cmpi.w #$40,($340,a4)
	blt.w loc_061d14
	sf ($3ca,a4)
	bsr.w loc_064b1c
	bne.w loc_061e4e

loc_061d14
	tst.b ($4d0,a4)
	beq.w loc_061d7e
	bgt.w loc_061d24
	bra.w loc_061e3e

loc_061d24:
	cmpi.w #$6e,($37c,a4)
	bgt.w loc_061e3e
	tst.b ($24a,a4)
	bne.w loc_061e3e
	movea.l #loc_06253c,a0
	bsr.w loc_060bb4
	bra.w loc_061e4e

loc_061d44:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_061d60
	movea.l #loc_06253c,a0
	bsr.w loc_060bb4
	bra.w loc_061e4e

loc_061d60:
	cmpi.w #$80,($340,a4)
	blt.w loc_061e4e
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	jsr loc_02e308
	bra.w loc_061e4e

loc_061d7e:
	cmpi.w #$3c,($37c,a4)
	bgt.w loc_061e3e
	cmpi.b #$12,($364,a4)
	beq.w loc_061e3e
	tst.b ($24a,a4)
	bne.w loc_061e3e
	cmpi.w #$80,($340,a4)
	blt.w loc_061e12
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_061dc4
	jsr RandomNumberGod
	st ($3ca,a4)
	bsr.w loc_064b60
	bra.w loc_061e4e

loc_061dc4:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_061df4

loc_061dd2:
	jsr loc_02e456
	jsr loc_0226b4
	cmpi.w #$34,($370,a4)
	bgt.b loc_061dd2
	movea.l #loc_062442,a0
	bsr.w loc_060bb4
	bra.w loc_061e4e

loc_061df4:
	jsr RandomNumberGod
	lea loc_061e04(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_061e04:
	dc.w $0002

	dc.w $003c
	dc.l loc_061e12

	dc.w $0028
	dc.l loc_061e20

;--------------------------
loc_061e12:
	movea.l #loc_062584,a0
	bsr.w loc_060bb4
	bra.w loc_061e4e

loc_061e20:
	cmpi.w #$40,($340,a4)
	blt.w loc_061e3e
	move.b #4,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_060c70

loc_061e3e:
	jsr loc_02e456
	jsr loc_0226b4
	bra.w loc_061c7c

loc_061e4e:
	clr.b ($2f6,a4)
	bra.w loc_060c70

;--------------------------
loc_061e56:
	clr.b ($2f6,a4)
	cmpi.w #$40,($340,a4)
	bge.w loc_061e68
	bra.w loc_060c70

loc_061e68:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_061ea8
	jsr RandomNumberGod
	lea loc_061e82(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_061e82:
	dc.w $0006

	dc.w $0032
	dc.l loc_061f76

	dc.w $0032
	dc.l loc_061ff0

	dc.w $000a
	dc.l loc_061faa

	dc.w $000a
	dc.l loc_061fc6

	dc.w $000a
	dc.l loc_06203c

	dc.w $000a
	dc.l loc_06201a

;--------------------------
loc_061ea8:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_061ef4
	jsr RandomNumberGod
	lea loc_061ec2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_061ec2:
	dc.w $0008

	dc.w $0032
	dc.l loc_061ff0

	dc.w $0032
	dc.l loc_061f76

	dc.w $000a
	dc.l loc_061faa

	dc.w $000a
	dc.l loc_062054

	dc.w $000a
	dc.l loc_061f9c

	dc.w $000a
	dc.l loc_061fc6

	dc.w $000a
	dc.l loc_06203c

	dc.w $000a
	dc.l loc_06201a

;--------------------------
loc_061ef4:
	cmpi.w #$78,($378,a4)
	bgt.w loc_061f3a
	jsr RandomNumberGod
	lea loc_061f0e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_061f0e:
	dc.w $0007

	dc.w $003c
	dc.l loc_061f76

	dc.w $000a
	dc.l loc_061faa

	dc.w $000a
	dc.l loc_061fb8

	dc.w $000a
	dc.l loc_06203c

	dc.w $000a
	dc.l loc_062054

	dc.w $000a
	dc.l loc_061ffe

	dc.w $000a
	dc.l loc_061ff0

;--------------------------
loc_061f3a:
	jsr RandomNumberGod
	lea loc_061f4a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_061f4a:
	dc.w $0007

	dc.w $003c
	dc.l loc_061f76

	dc.w $000a
	dc.l loc_061faa

	dc.w $000a
	dc.l loc_061fb8

	dc.w $000a
	dc.l loc_061fe2

	dc.w $000a
	dc.l loc_061fd4

	dc.w $000a
	dc.l loc_061ffe

	dc.w $000a
	dc.l loc_061f8e

;--------------------------
loc_061f76:
	jsr loc_02c78a
	beq.w loc_061ff0
	movea.l #loc_063c22,a0
	bsr.w loc_060b8c
	bra.w loc_060c70

loc_061f8e:
	bsr.w loc_064ba6
	jsr loc_02e308
	bra.w loc_060b6e

loc_061f9c:
	movea.l #loc_063102,a0
	bsr.w loc_060b8c
	bra.w loc_060b6e

loc_061faa:
	movea.l #loc_062322,a0
	bsr.w loc_060bb4
	bra.w loc_060b6e

loc_061fb8:
	movea.l #loc_0622b4,a0
	bsr.w loc_060bb4
	bra.w loc_060b6e

loc_061fc6:
	movea.l #loc_063a5c,a0
	bsr.w loc_060b8c
	bra.w loc_060b6e

loc_061fd4:
	movea.l #loc_063ca8,a0
	bsr.w loc_060b8c
	bra.w loc_060b6e

loc_061fe2:
	movea.l #loc_062442,a0
	bsr.w loc_060bb4
	bra.w loc_060b6e

loc_061ff0:
	movea.l #loc_062bb6,a0
	bsr.w loc_060b8c
	bra.w loc_060b6e

loc_061ffe:
	cmpi.w #$40,($340,a4)
	blt.w loc_060c70
	sf ($3ca,a4)
	bsr.w loc_064ab6
	jsr loc_02e308
	bra.w loc_060c70

loc_06201a:
	cmpi.w #$40,($340,a4)
	blt.w loc_060c70
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	jsr loc_02e308
	bra.w loc_060c70

loc_06203c:
	cmpi.w #$40,($340,a4)
	blt.w loc_060c70
	movea.l #loc_063634,a0
	bsr.w loc_060b8c
	bra.w loc_060c70

loc_062054:
	cmpi.w #$60,($340,a4)
	blt.w loc_062068
	bsr.w loc_064a42
	jsr loc_02e308
 
loc_062068:
	bra.w loc_060c70

;--------------------------
loc_06206c:
	clr.b ($2f6,a4)
	cmpi.w #$24,($36c,a4)
	bge.w loc_062080
	move.b #4,($2f6,a4)

loc_062080:
	cmpi.w #$64,($36c,a4)
	ble.w loc_062090
	move.b #8,($2f6,a4)

loc_062090:
	clr.b ($2f6,a4)
	btst #5,($361,a4)
	beq.w loc_0620a6
	jsr loc_0226b4
	bra.b loc_06206c

loc_0620a6:
	clr.b ($2f6,a4)
	moveq #8,d0
	jsr loc_02e420
	cmpi.w #$40,($340,a4)
	bge.w loc_0620ca
	movea.l #loc_062206,a0
	bsr.w loc_060bb4
	bra.w loc_060c70

loc_0620ca:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_0620e6(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0620e6:
	dc.w $0003

	dc.w $0028
	dc.l loc_0620fa

	dc.w $001e
	dc.l loc_062130

	dc.w $0014
	dc.l loc_062122

;--------------------------
loc_0620fa:
	cmpi.w #$64,($36c,a4)
	ble.w loc_062114
	movea.l #loc_062442,a0
	bsr.w loc_060bb4
	jsr loc_02e308

loc_062114:
	movea.l #loc_062bb6,a0
	bsr.w loc_060b8c
	bra.w loc_060c70

loc_062122:
	movea.l #loc_063634,a0
	bsr.w loc_060b8c
	bra.w loc_060c70

loc_062130:
	cmpi.w #$60,($340,a4)
	blt.w loc_062144
	bsr.w loc_064ab2
	jsr loc_02e308

loc_062144:
	bra.w loc_060c70

loc_062148:
	andi.b #2,($2f6,a4)

loc_06214e:
	btst #5,($249,a4)
	beq.w loc_06218e
	cmpi.w #$50,($378,a4)
	blt.w loc_06217e
	cmpi.w #$80,($340,a4)
	blt.w loc_06217e
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_06217e
	st ($2fb,a4)

loc_06217e:
	moveq #8,d0
	jsr loc_02e39c
	jsr loc_0226b4
	bra.b loc_06214e

loc_06218e
	jsr loc_02e370
	move.l #$80004,d0
	jsr loc_02e39c
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_0621b4
	bra.w loc_060b6e

loc_0621b4:
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$32,($378,a4)
	bgt.w loc_062202

loc_0621ca:
	tst.b ($249,a4)
	beq.w loc_062202
	jsr RandomNumberGod
	lea loc_0621e6(pc),a0
	jsr loc_02decc
	bra.w loc_0621fa

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0621e6
	dc.w $0003

	dc.w $005a
	dc.l loc_062bb6

	dc.w $000a
	dc.l loc_063c22

	dc.w $000a
	dc.l loc_063838

;--------------------------
loc_0621fa:
	jsr loc_0226b4
	bra.b loc_0621ca

loc_062202:
	bra.w loc_061388

;--------------------------
loc_062206:
	cmpi.w #$80,($340,a4)
	bge.w loc_062236
	andi.b #2,($2f6,a4)
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$44,d2
	jsr loc_02e0f4
	bra.w loc_060bba

loc_062236:
	jsr loc_02e496
	jsr loc_02e550
	bra.w loc_060bba

loc_062246
	jsr loc_02e370
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.b loc_062206
	cmpi.w #$a0,($358,a4)
	blt.w loc_06227e
	jsr RandomNumberGod
	cmpi.w #$3000,d0
	bcs.w loc_062322
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_0622b4

loc_06227e:
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
	bra.w loc_060bba

loc_0622aa:
	move.l #$80008,d0
	bra.w loc_0622d2

;--------------------------
loc_0622b4:
	cmpi.w #$20,($340,a4)
	bge.w loc_0622cc
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_062206

loc_0622cc:
	move.l #$200020,d0

loc_0622d2:
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$64,d2
	jsr loc_02e0f4
	cmpi.w #$20,($340,a4)
	bge.w loc_062310
	clr.b ($2f6,a4)
	move.w #$18,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$8c,d2
	swap d2
	jsr loc_02e0f4

loc_062310:
	clr.b ($2f6,a4)
	bra.w loc_060bba

loc_062318:
	move.l #$80008,d0
	bra.w loc_062340

;--------------------------
loc_062322:
	cmpi.w #$20,($340,a4)
	bge.w loc_06233a
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_062206

loc_06233a:
	move.l #$100020,d0

loc_062340:
	move.b #4,($2f6,a4)
	moveq #0,d2
	move.w #$c8,d2
	swap d2
	jsr loc_02e0f4
	cmpi.w #$20,($340,a4)
	bge.w loc_062380
	clr.b ($2f6,a4)
	move.w #$18,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$8c,d2
	swap d2
	jsr loc_02e0f4

loc_062380:
	clr.b ($2f6,a4)
	bra.w loc_060bba

;--------------------------
loc_062388:
	cmpi.w #$20,($340,a4)
	blt.w loc_060bba
	cmpi.w #$50,($36c,a4)
	bgt.w loc_0623ae
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_06241e
	bra.w loc_062414

loc_0623ae:
	cmpi.w #$64,($36c,a4)
	bgt.w loc_0623d4
	move.l #$40004,d0
	move.l #$a00000,d2
	move.b #4,($2f6,a4)
	jsr loc_02e0f4
	bra.w loc_0623f2

loc_0623d4:
	cmpi.w #$a0,($36c,a4)
	blt.w loc_0623f2
	move.l #$40004,d0
	moveq #$64,d2
	move.b #8,($2f6,a4)
	jsr loc_02e0f4

loc_0623f2:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_06241e
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_062414
	move.b #5,($2f6,a4)
	bra.w loc_062424

loc_062414
	move.b #1,($2f6,a4)
	bra.w loc_062424

loc_06241e:
	move.b #9,($2f6,a4)

loc_062424:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_062424
	clr.b ($2f6,a4)
	moveq #4,d0
	jsr loc_02e39c
	bra.w loc_060bba

;--------------------------
loc_062442:
	cmpi.w #$40,($340,a4)
	blt.w loc_0622b4

loc_06244c:
	clr.b ($2f6,a4)
	bsr.w loc_064e12
	jsr loc_02e308
	bra.w loc_060bba

;--------------------------
loc_06245e:
	cmpi.w #$40,($340,a4)
	blt.w loc_062322
	clr.b ($2f6,a4)
	bsr.w loc_064df6
	jsr loc_02e308
	bra.w loc_060bba

;--------------------------
loc_06247a:
	cmpi.w #$20,($340,a4)
	blt.w loc_062534
	cmpi.w #$3c,($36c,a4)
	blt.w loc_0624a6
	cmpi.w #$8c,($36c,a4)
	blt.w loc_0624ce
	cmpi.w #$dc,($36c,a4)
	bgt.w loc_0624f6
	bra.w loc_062206

loc_0624a6
	bra.w loc_0624ce

loc_0624aa:
	move.b ($246,a4),d0
	andi.b #$c,d0
	bne.w loc_0624c4
	movea.l #loc_06245e,a0
	bsr.w loc_060bb4
	bra.w loc_062534

loc_0624c4:
	move.b #9,($2f6,a4)
	bra.w loc_062424

loc_0624ce:
	cmpi.w #$ff,($340,a4)
	bge.w loc_06251c
	move.l #$200020,d0
	move.b #4,($2f6,a4)
	move.w #$dc,d2
	swap d2
	clr.w d2
	jsr loc_02e0f4
	bra.w loc_062534

loc_0624f6:
	cmpi.w #$ff,($340,a4)
	bge.w loc_06252a
	move.l #$200020,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$8c,d2
	jsr loc_02e0f4
	bra.w loc_062534

loc_06251c:
	movea.l #loc_06245e,a0
	bsr.w loc_060bb4
	bra.w loc_062534

loc_06252a:
	movea.l #loc_062442,a0
	bsr.w loc_060bb4

loc_062534:
	clr.b ($2f6,a4)
	bra.w loc_060bba

;--------------------------
loc_06253c:
	move.b #9,($2f6,a4)

loc_062542:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_062542
	clr.b ($2f6,a4)
	moveq #2,d0
	jsr loc_02e420
	bra.w loc_060bba

;--------------------------
loc_062560:
	move.b #5,($2f6,a4)

loc_062566:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_062566
	clr.b ($2f6,a4)
	moveq #2,d0
	jsr loc_02e420
	bra.w loc_060bba

;--------------------------
loc_062584:
	move.b #1,($2f6,a4)

loc_06258a:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_06258a
	clr.b ($2f6,a4)
	moveq #2,d0
	jsr loc_02e420
	bra.w loc_060bba

;--------------------------
loc_0625a8:
	btst #0,($24a,a4)
	bne.w loc_060b92
	tst.b ($247,a4)
	bne.w loc_060b92
	cmpi.w #$30,($340,a4)
	blt.w loc_060b92

loc_0625c4:
	clr.b ($2f6,a4)
	btst #1,($246,a4)
	bne.w loc_062ba8
	move.b ($361,a4),d0
	andi.b #$f8,d0
	beq.w loc_0625e8
	cmpi.b #5,($360,a4)
	beq.w loc_062b9e

loc_0625e8:
	tst.b ($365,a4)
	bne.w loc_062988
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_062958
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_0627b0
	cmpi.w #$40,($340,a4)
	blt.w loc_062654
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_062654
	cmpi.w #$34,($378,a4)
	bgt.w loc_062654
	cmpi.w #$30,($37a,a4)
	bgt.w loc_062654
	cmpi.w #-$20,($37a,a4)
	blt.w loc_062654
	clr.b ($2f6,a4)
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064ab6
	bra.w loc_062ba8

loc_062654:
	cmpi.w #$40,($340,a4)
	blt.w loc_0626a0
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0626a0
	cmpi.w #$34,($378,a4)
	bgt.w loc_0626a0
	cmpi.w #$30,($37a,a4)
	bgt.w loc_0626a0
	cmpi.w #-$20,($37a,a4)
	blt.w loc_0626a0
	clr.b ($2f6,a4)
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	bra.w loc_062ba8

loc_0626a0:
	cmpi.w #$34,($378,a4)
	bgt.w loc_0626cc
	cmpi.w #$30,($37a,a4)
	bgt.w loc_0626cc
	cmpi.w #-$10,($37a,a4)
	blt.w loc_0626cc
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	bra.w loc_062ba8

loc_0626cc:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_062700
	cmpi.w #$44,($378,a4)
	bgt.w loc_062700
	cmpi.w #$30,($37a,a4)
	bgt.w loc_062700
	cmpi.w #-$20,($37a,a4)
	blt.w loc_062700
	bsr.w loc_064d70
	bra.w loc_062ba8

loc_062700:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_062734
	cmpi.w #$44,($378,a4)
	bgt.w loc_062734
	cmpi.w #$40,($37a,a4)
	bgt.w loc_062734
	cmpi.w #-$40,($37a,a4)
	blt.w loc_062734
	bsr.w loc_064cf8
	bra.w loc_062ba8

loc_062734:
	cmpi.w #$54,($378,a4)
	bgt.w loc_062760
	cmpi.w #$40,($37a,a4)
	bgt.w loc_062760
	cmpi.w #-$40,($37a,a4)
	blt.w loc_062760
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	bra.w loc_062ba8

loc_062760:
	cmpi.w #$74,($378,a4)
	bgt.w loc_062786
	cmpi.w #$20,($37a,a4)
	bgt.w loc_062786
	cmpi.w #-$40,($37a,a4)
	blt.w loc_062786
	bsr.w loc_064c80
	bra.w loc_062ba8

loc_062786
	cmpi.w #$74,($378,a4)
	bgt.w loc_0627ac
	cmpi.w #$40,($37a,a4)
	bgt.w loc_0627ac
	cmpi.w #$20,($37a,a4)
	blt.w loc_0627ac
	bsr.w loc_064c08
	bra.w loc_062ba8

loc_0627ac:
	bra.w loc_062b9e

loc_0627b0:
	cmpi.w #$40,($340,a4)
	blt.w loc_0627fc
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0627fc
	cmpi.w #$24,($378,a4)
	bgt.w loc_0627fc
	cmpi.w #$20,($37a,a4)
	bgt.w loc_0627fc
	cmpi.w #-$20,($37a,a4)
	blt.w loc_0627fc
	clr.b ($2f6,a4)
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064ab6
	bra.w loc_062ba8

loc_0627fc:
	cmpi.w #$40,($340,a4)
	blt.w loc_062848
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_062848
	cmpi.w #$24,($378,a4)
	bgt.w loc_062848
	cmpi.w #$20,($37a,a4)
	bgt.w loc_062848
	cmpi.w #-$20,($37a,a4)
	blt.w loc_062848
	clr.b ($2f6,a4)
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	bra.w loc_062ba8

loc_062848:
	cmpi.w #$24,($378,a4)
	bgt.w loc_062874
	cmpi.w #$30,($37a,a4)
	bgt.w loc_062874
	cmpi.w #-$10,($37a,a4)
	blt.w loc_062874
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	bra.w loc_062ba8

loc_062874:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0628a8
	cmpi.w #$44,($378,a4)
	bgt.w loc_0628a8
	cmpi.w #$20,($37a,a4)
	bgt.w loc_0628a8
	cmpi.w #-$10,($37a,a4)
	blt.w loc_0628a8
	bsr.w loc_064d70
	bra.w loc_062ba8

loc_0628a8:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0628dc
	cmpi.w #$44,($378,a4)
	bgt.w loc_0628dc
	cmpi.w #$30,($37a,a4)
	bgt.w loc_0628dc
	cmpi.w #-$30,($37a,a4)
	blt.w loc_0628dc
	bsr.w loc_064d70
	bra.w loc_062ba8

loc_0628dc:
	cmpi.w #$54,($378,a4)
	bgt.w loc_062908
	cmpi.w #$40,($37a,a4)
	bgt.w loc_062908
	cmpi.w #-$30,($37a,a4)
	blt.w loc_062908
	move.b #$2,($2f6,a4)
	bsr.w loc_064c80
	bra.w loc_062ba8

loc_062908:
	cmpi.w #$74,($378,a4)
	bgt.w loc_06292e
	cmpi.w #$10,($37a,a4)
	bgt.w loc_06292e
	cmpi.w #-$30,($37a,a4)
	blt.w loc_06292e
	bsr.w loc_064c80
	bra.w loc_062ba8

loc_06292e:
	cmpi.w #$74,($378,a4)
	bgt.w loc_062954
	cmpi.w #$40,($37a,a4)
	bgt.w loc_062954
	cmpi.w #$10,($37a,a4)
	blt.w loc_062954
	bsr.w loc_064c08
	bra.w loc_062ba8

loc_062954:
	bra.w loc_062b9e

loc_062958:
	cmpi.w #$30,($378,a4)
	bge.w loc_062b9e
	cmpi.w #$30,($37a,a4)
	bgt.w loc_062b9e
	cmpi.w #-$30,($37a,a4)
	blt.w loc_062b9e
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	bra.w loc_062ba8

loc_062988:
	tst.w ($21a,a4)
	blt.w loc_062b9e
	cmpi.l #$5be000,($22a,a4)
	bgt.w loc_062b9e
	cmpi.l #$834000,($22a,a4)
	ble.w loc_0629ac
	bra.w loc_062b9e

loc_0629ac:
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_062b4c
	cmpi.w #$14,($378,a4)
	bgt.w loc_0629d0
	move.b #$2,($2f6,a4)
	bsr.w loc_064c08
	bra.w loc_062ba8

loc_0629d0:
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_062ab4
	cmpi.w #$40,($340,a4)
	blt.w loc_062a14
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_062a14
	cmpi.w #$34,($378,a4)
	bgt.w loc_062a14
	clr.b ($2f6,a4)
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	bra.w loc_062ba8

loc_062a14:
	cmpi.w #$34,($378,a4)
	bgt.w loc_062a2c
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	bra.w loc_062ba8

loc_062a2c:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_062a4c
	cmpi.w #$44,($378,a4)
	bgt.w loc_062a4c
	bsr.w loc_064d70
	bra.w loc_062ba8

loc_062a4c:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_062a6c
	cmpi.w #$44,($378,a4)
	bgt.w loc_062a6c
	bsr.w loc_064d70
	bra.w loc_062ba8

loc_062a6c:
	cmpi.w #$54,($378,a4)
	bgt.w loc_062a84
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	bra.w loc_062ba8

loc_062a84:
	cmpi.w #$64,($378,a4)
	bgt.w loc_062a9a
	clr.b ($2f6,a4)
	bsr.w loc_064c80
	bra.w loc_062ba8

loc_062a9a:
	cmpi.w #$74,($378,a4)
	bgt.w loc_062ab0
	clr.b ($2f6,a4)
	bsr.w loc_064c08
	bra.w loc_062ba8

loc_062ab0:
	bra.w loc_062b9e

loc_062ab4:
	cmpi.w #$40,($340,a4)
	blt.w loc_062aec
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_062aec
	cmpi.w #$34,($378,a4)
	bgt.w loc_062aec
	clr.b ($2f6,a4)
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	bra.w loc_062ba8

loc_062aec:
	cmpi.w #$34,($378,a4)
	bgt.w loc_062b04
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	bra.w loc_062ba8

loc_062b04:
	cmpi.w #$54,($378,a4)
	bgt.w loc_062b1c
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	bra.w loc_062ba8

loc_062b1c:
	cmpi.w #$64,($378,a4)
	bgt.w loc_062b32
	clr.b ($2f6,a4)
	bsr.w loc_064c08
	bra.w loc_062ba8

loc_062b32:
	cmpi.w #$74,($378,a4)
	bgt.w loc_062b48
	clr.b ($2f6,a4)
	bsr.w loc_064c80
	bra.w loc_062ba8

loc_062b48
	bra.w loc_062b9e

;--------------------------
loc_062b4c:
	jsr RandomNumberGod
	lea loc_062b5c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_062b5c:
	dc.w $0002

	dc.w $001e
	dc.l loc_062b6a

	dc.w $001e
	dc.l loc_062b86

;--------------------------
loc_062b6a:
	cmpi.w #$40,($340,a4)
	blt.w loc_062ba8
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	bra.w loc_062ba8

loc_062b86:
	btst #3,($248,a4)
	beq.w loc_062b9e
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	bra.w loc_062ba8

;--------------------------
loc_062b9e:
	jsr loc_0226b4
	bra.w loc_0625c4

loc_062ba8:
	jsr loc_02e308
	clr.b ($2f6,a4)
	bra.w loc_060b92

;--------------------------
loc_062bb6:
	cmpi.w #$40,($340,a4)
	blt.w loc_060b92
	move.w #7,d0

loc_062bc4:
	move.w d0,($4d6,a4)
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_060b92
	btst #6,($24a,a4)
	bne.w loc_060b92
	tst.b ($247,a4)
	beq.w loc_062c82
	cmpi.w #-$50,($37a,a4)
	bge.w loc_062c38
	cmpi.w #$80,($340,a4)
	blt.w loc_062c38
	cmpi.w #$40,($226,a4)
	blt.w loc_060b92
	cmpi.w #$24,($378,a4)
	ble.w loc_062c2a
	cmpi.w #$64,($378,a4)
	ble.w loc_062c1c
	bra.w loc_062c38

loc_062c1c:
	movea.l #loc_06253c,a0
	bsr.w loc_060bb4
	bra.w loc_062c8a

loc_062c2a:
	movea.l #loc_062584,a0
	bsr.w loc_060bb4
	bra.w loc_062c8a

loc_062c38:
	cmpi.w #$c8,($36c,a4)
	ble.w loc_062c50
	bsr.w loc_064e12
	jsr loc_02e308
	bra.w loc_062c76

loc_062c50:
	cmpi.w #$24,($36c,a4)
	ble.w loc_062c76
	move.l #$100010,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$24,d2
	jsr loc_02e0f4
	bra.w loc_062c8a

loc_062c76:
	bsr.w loc_0649fa
	bne.w loc_062cac
	bra.w loc_062c8a

loc_062c82:
	bsr.w loc_064a14
	bne.w loc_062cac

loc_062c8a:
	move.l #$20004,d0
	jsr loc_02e420
	move.w ($4d6,a4),d0
	dbra d0,loc_062bc4
	jsr loc_02e308
	clr.b ($2f6,a4)
	bra.w loc_060b92

loc_062cac:
	clr.b ($2f6,a4)
	jsr loc_02e308
	cmpi.w #$46,($36c,a4)
	bgt.w loc_062cc4
	bra.w loc_062d30

loc_062cc4:
	cmpi.w #$78,($36c,a4)
	bgt.w loc_062cd2
	bra.w loc_062d14

loc_062cd2:
	cmpi.w #$96,($36c,a4)
	bgt.w loc_062ce0
	bra.w loc_062d30

loc_062ce0:
	cmpi.w #$be,($36c,a4)
	bgt.w loc_062cee
	bra.w loc_062cf2

loc_062cee:
	bra.w loc_062d3e

loc_062cf2:
	cmpi.w #$40,($340,a4)
	blt.w loc_062d4c
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064ab6
	jsr loc_02e308
	bra.w loc_062d4c

loc_062d14:
	cmpi.w #$40,($340,a4)
	blt.w loc_062d4c
	st ($3ca,a4)
	bsr.w loc_064b1c
	jsr loc_02e308
	bra.w loc_062d4c

loc_062d30:
	movea.l #loc_06245e,a0
	bsr.w loc_060bb4
	bra.w loc_062d4c

loc_062d3e:
	movea.l #loc_062442,a0
	bsr.w loc_060bb4
	bra.w loc_062d4c

loc_062d4c:
	clr.b ($2f6,a4)
	bra.w loc_060ba2

;--------------------------
loc_062d54:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_060b92
	btst #1,($246,a4)
	beq.w loc_060b92
	btst #3,($24a,a4)
	bne.w loc_060b92
	cmpi.w #$30,($340,a4)
	blt.w loc_060b92
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_062d9a:
	move.w d0,($4d6,a4)
	cmpi.w #$46,($36c,a4)
	bgt.w loc_062dce
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_062dce
	move.b #4,($2f6,a4)
	bsr.w loc_064d70
	jsr loc_02e2d0
	move.w ($4d6,a4),d0
	dbra d0,loc_062d9a

loc_062dce:
	jsr loc_02e308
	cmpi.w #$60,($340,a4)
	bge.w loc_062dec
	move.b #2,($2f6,a4)
	bsr.w loc_064d70
	bra.w loc_062e2e

loc_062dec:
	cmpi.w #$80,($340,a4)
	bge.w loc_062e04
	move.b #2,($2f6,a4)
	bsr.w loc_064cf8
	bra.w loc_062e2e

loc_062e04:
	jsr RandomNumberGod
	cmpi.w #$b000,d0
	bcs.w loc_062e20
	bsr.w loc_064c80
	jsr loc_02e308
	bra.w loc_062ef4

loc_062e20:
	move.b #4,($2f6,a4)
	bsr.w loc_064c80
	bra.w loc_062e2e

loc_062e2e:
	jsr loc_02e26e
	beq.w loc_062ef4
	cmpi.w #$60,($340,a4)
	blt.w loc_062ef4
	btst #1,($362,a4)
	beq.w loc_062e76
	jsr RandomNumberGod
	lea loc_062e5c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_062e5c:
	dc.w $0004

	dc.w $0028
	dc.l loc_062eb2

	dc.w $0028
	dc.l loc_062ee2

	dc.w $0014
	dc.l loc_062eca

	dc.w $000a
	dc.l loc_062e9a

;--------------------------
loc_062e76
	jsr RandomNumberGod
	lea loc_062e86(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_062e86:
	dc.w $0003

	dc.w $0028
	dc.l loc_062eca

	dc.w $001e
	dc.l loc_062e9a

	dc.w $000a
	dc.l loc_062ee2

;--------------------------
loc_062e9a:
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064ab6
	jsr loc_02e308
	bra.w loc_062ef4

loc_062eb2:
	cmpi.w #$60,($340,a4)
	blt.w loc_062ef4
	bsr.w loc_064bea
	jsr loc_02e308
	bra.w loc_062ef4

loc_062eca:
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b1c
	jsr loc_02e308
	bra.w loc_062ef4

loc_062ee2:
	sf ($3ca,a4)
	bsr.w loc_064b60
	jsr loc_02e308
	bra.w loc_062ef4

loc_062ef4:
	clr.b ($2f6,a4)
	bra.w loc_060ba2

;--------------------------
loc_062efc:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_060b92
	btst #1,($246,a4)
	beq.w loc_060b92
	btst #3,($24a,a4)
	bne.w loc_060b92
	cmpi.w #$64,($378,a4)
	bgt.w loc_060b92
	cmpi.w #$30,($340,a4)
	blt.w loc_060b92
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	move.b #4,($2f6,a4)
	bsr.w loc_064c80
	jsr loc_02e26e
	bgt.w loc_062fc4
	blt.w loc_062f5c
	bra.w loc_0630cc

loc_062f5c:
	cmpi.w #$60,($340,a4)
	blt.w loc_0630f4
	btst #1,($362,a4)
	beq.w loc_062f9a
	jsr RandomNumberGod
	lea loc_062f80(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_062f80:
	dc.w $0004

	dc.w $0014
	dc.l loc_0630aa

	dc.w $0014
	dc.l loc_063066

	dc.w $0014
	dc.l loc_06304a

	dc.w $000a
	dc.l loc_063088

;--------------------------
loc_062f9a:
	jsr RandomNumberGod
	lea loc_062faa(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_062faa
	dc.w $0004

	dc.w $0014
	dc.l loc_063066

	dc.w $0014
	dc.l loc_06304a

	dc.w $000a
	dc.l loc_063088

	dc.w $000a
	dc.l loc_0630aa

;--------------------------
loc_062fc4:
	cmpi.w #$60,($340,a4)
	blt.w loc_0630f4
	btst #1,($362,a4)
	beq.w loc_063008
	jsr RandomNumberGod
	lea loc_062fe8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_062fe8:
	dc.w $0005

	dc.w $0014
	dc.l loc_0630aa

	dc.w $0014
	dc.l loc_063032

	dc.w $0014
	dc.l loc_063066

	dc.w $0014
	dc.l loc_06304a

	dc.w $000a
	dc.l loc_063088

;--------------------------
loc_063008:
	jsr RandomNumberGod
	lea loc_063018(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_063018:
	dc.w $0004

	dc.w $0028
	dc.l loc_063066

	dc.w $000a
	dc.l loc_063088

	dc.w $000a
	dc.l loc_06304a

	dc.w $000a
	dc.l loc_0630aa

;--------------------------
loc_063032:
	cmpi.w #$40,($340,a4)
	blt.w loc_0630fa
	bsr.w loc_064bea
	jsr loc_02e308
	bra.w loc_0630fa

loc_06304a:
	cmpi.w #$60,($340,a4)
	blt.w loc_063066
	bsr.w loc_064a7a
	beq.w loc_063066
	jsr loc_02e308
	bra.w loc_0630fa

loc_063066:
	cmpi.w #$40,($340,a4)
	blt.w loc_0630fa
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b1c
	jsr loc_02e308
	bra.w loc_0630fa

loc_063088:
	cmpi.w #$40,($340,a4)
	blt.w loc_0630fa
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064ab6
	jsr loc_02e308
	bra.w loc_0630fa

loc_0630aa:
	cmpi.w #$40,($340,a4)
	blt.w loc_0630fa
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	jsr loc_02e308
	bra.w loc_0630fa

loc_0630cc:
	btst #1,($362,a4)
	beq.w loc_0630dc
	move.b #2,($2f6,a4)

loc_0630dc:
	cmpi.w #$82,($378,a4)
	bgt.w loc_0630fa
	bsr.w loc_064c80
	jsr loc_02e308
	bra.w loc_0630fa

loc_0630f4:
	jsr loc_02e308

loc_0630fa:
	clr.b ($2f6,a4)
	bra.w loc_060ba2

;--------------------------
loc_063102:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_060b92
	btst #1,($246,a4)
	beq.w loc_060b92
	btst #3,($24a,a4)
	bne.w loc_060b92
	cmpi.w #$30,($340,a4)
	blt.w loc_060b92
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_062442,a0
	bsr.w loc_060bb4
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_063162(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_063162:
	dc.w $0005
	dc.w $0032
	dc.l loc_0631b2
	dc.w $000a
	dc.l loc_063190
	dc.w $000a
	dc.l loc_0631c0
	dc.w $000a
	dc.l loc_0631de
	dc.w $000a
	dc.l loc_063182

;--------------------------
loc_063182:
	movea.l #loc_06245e,a0
	bsr.w loc_060bb4
	bra.w loc_0631fc

loc_063190:
	cmpi.w #$40,($340,a4)
	blt.w loc_0631fc
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	jsr loc_02e308
	bra.w loc_0631fc

loc_0631b2:
	movea.l #loc_062bb6,a0
	bsr.w loc_060b8c
	bra.w loc_0631fc

loc_0631c0:
	cmpi.w #$40,($340,a4)
	blt.w loc_0631f6
	move.b #4,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_0631fc

loc_0631de:
	cmpi.w #$60,($340,a4)
	blt.w loc_0631f6
	bsr.w loc_064a7a
	jsr loc_02e308
	bra.w loc_0631fc

loc_0631f6:
	jsr loc_02e308

loc_0631fc:
	clr.b ($2f6,a4)
	bra.w loc_060ba2

;--------------------------
loc_063204:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_060b92
	btst #1,($246,a4)
	beq.w loc_060b92
	btst #3,($24a,a4)
	bne.w loc_060b92
	cmpi.w #$30,($340,a4)
	blt.w loc_060b92
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_06245e,a0
	bsr.w loc_060bb4
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$46,($378,a4)
	bgt.w loc_06327a
	cmpi.w #$40,($340,a4)
	blt.w loc_0632e4
	sf ($3ca,a4)
	bsr.w loc_064b60
	jsr loc_02e308
	bra.w loc_0632ea

loc_06327a:
	cmpi.w #$6e,($378,a4)
	bgt.w loc_0632a6
	cmpi.w #$40,($340,a4)
	blt.w loc_0632e4
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064ab6
	jsr loc_02e308
	bra.w loc_0632ea

loc_0632a6:
	cmpi.w #$a0,($378,a4)
	bgt.w loc_0632cc
	cmpi.w #$40,($340,a4)
	blt.w loc_0632e4
	st ($3ca,a4)
	bsr.w loc_064b60
	jsr loc_02e308
	bra.w loc_0632ea

loc_0632cc:
	cmpi.w #$60,($340,a4)
	blt.w loc_0632e4
	bsr.w loc_064a42
	jsr loc_02e308
	bra.w loc_0632ea

loc_0632e4:
	jsr loc_02e308

loc_0632ea:
	clr.b ($2f6,a4)
	bra.w loc_060ba2

;--------------------------
loc_0632f2:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_060b92
	btst #1,($246,a4)
	beq.w loc_060b92
	btst #3,($24a,a4)
	bne.w loc_060b92
	cmpi.w #$6e,($36c,a4)
	bgt.w loc_060b92
	cmpi.w #$30,($340,a4)
	blt.w loc_060b92
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	move.b #2,($2f6,a4)
	bsr.w loc_064cf8
	beq.w loc_060b92
	jsr loc_02e308
	cmpi.w #$40,($340,a4)
	blt.w loc_063382
	bsr.w loc_064bcc
	jsr loc_02e308
	jsr RandomNumberGod
	lea loc_06336e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06336e:
	dc.w $0003

	dc.w $003c
	dc.l loc_063382

	dc.w $000a
	dc.l loc_0633a0

	dc.w $000a
	dc.l loc_0633be

;--------------------------
loc_063382:
	cmpi.w #$b4,($378,a4)
	blt.w loc_0633d6
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_0633d6

loc_0633a0:
	cmpi.w #$8c,($378,a4)
	blt.w loc_0633d6
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	jsr loc_02e308
	bra.w loc_0633d6

loc_0633be:
	cmpi.w #$b4,($378,a4)
	blt.w loc_0633d6
	bsr.w loc_064bea
	jsr loc_02e308
	bra.w loc_0633d6

loc_0633d6:
	clr.b ($2f6,a4)
	bra.w loc_060ba2

;--------------------------
loc_0633de:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_060b92
	btst #1,($246,a4)
	beq.w loc_060b92
	btst #3,($24a,a4)
	bne.w loc_060b92
	cmpi.w #$20,($340,a4)
	blt.w loc_060b92
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$78,($378,a4)
	bgt.w loc_063464
	jsr RandomNumberGod
	lea loc_063432(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_063432:
	dc.w $0008

	dc.w $0028
	dc.l loc_0635ac

	dc.w $0028
	dc.l loc_0635ca

	dc.w $0014
	dc.l loc_06358e

	dc.w $0014
	dc.l loc_063532

	dc.w $000a
	dc.l loc_0634da

	dc.w $000a
	dc.l loc_0634f8

	dc.w $000a
	dc.l loc_06354a

	dc.w $000a
	dc.l loc_0635e6

;--------------------------
loc_063464:
	jsr RandomNumberGod
	lea loc_063474(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_063474:
	dc.w $000c

	dc.w $0028
	dc.l loc_063604

	dc.w $0028
	dc.l loc_063516

	dc.w $0028
	dc.l loc_0635ac

	dc.w $0028
	dc.l loc_063572

	dc.w $000a
	dc.l loc_0634f8

	dc.w $000a
	dc.l loc_0634be

	dc.w $0002
	dc.l loc_0634da

	dc.w $0002
	dc.l loc_063532

	dc.w $0002
	dc.l loc_06354a

	dc.w $0002
	dc.l loc_06358e

	dc.w $0002
	dc.l loc_0635ca

	dc.w $0002
	dc.l loc_0635e6

;--------------------------
loc_0634be:
	cmpi.w #$6e,($378,a4)
	bgt.w loc_06362c
	clr.b ($2f6,a4)
	bsr.w loc_064d70
	jsr loc_02e308
	bra.w loc_06362c

loc_0634da:
	cmpi.w #$5a,($378,a4)
	bgt.w loc_06362c
	move.b #4,($2f6,a4)
	bsr.w loc_064d70
	jsr loc_02e308
	bra.w loc_06362c

loc_0634f8:
	cmpi.w #$6e,($378,a4)
	bgt.w loc_06362c
	move.b #2,($2f6,a4)
	bsr.w loc_064d70
	jsr loc_02e308
	bra.w loc_06362c

loc_063516
	cmpi.w #$6e,($378,a4)
	bgt.w loc_06362c
	clr.b ($2f6,a4)
	bsr.w loc_064cf8
	jsr loc_02e308
	bra.w loc_06362c

loc_063532
	cmpi.w #$82,($378,a4)
	bgt.w loc_06362c
	bsr.w loc_064bcc
	jsr loc_02e308
	bra.w loc_06362c

loc_06354a
	cmpi.w #$50,($378,a4)
	ble.w loc_06362c
	cmpi.w #$64,($378,a4)
	bgt.w loc_06362c
	move.b #2,($2f6,a4)
	bsr.w loc_064cf8
	jsr loc_02e308
	bra.w loc_06362c

loc_063572
	cmpi.w #$6e,($378,a4)
	bgt.w loc_06362c
	clr.b ($2f6,a4)
	bsr.w loc_064c80
	jsr loc_02e308
	bra.w loc_06362c

loc_06358e
	cmpi.w #$64,($378,a4)
	bgt.w loc_06362c
	move.b #4,($2f6,a4)
	bsr.w loc_064c80
	jsr loc_02e308
	bra.w loc_06362c

loc_0635ac
	cmpi.w #$78,($378,a4)
	bgt.w loc_06362c
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	jsr loc_02e308
	bra.w loc_06362c

loc_0635ca
	cmpi.w #$6e,($378,a4)
	bgt.w loc_06362c
	clr.b ($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_06362c

loc_0635e6
	cmpi.w #$32,($378,a4)
	bgt.w loc_06362c
	move.b #$4,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_06362c

loc_063604
	cmpi.w #$64,($378,a4)
	ble.w loc_06362c
	cmpi.w #$b4,($378,a4)
	bgt.w loc_06362c
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_06362c

loc_06362c:
	clr.b ($2f6,a4)
	bra.w loc_060ba2

;--------------------------
loc_063634:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_060b92
	btst #1,($246,a4)
	beq.w loc_060b92
	btst #3,($24a,a4)
	bne.w loc_060b92
	cmpi.w #$20,($340,a4)
	blt.w loc_060b92
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$40,($340,a4)
	blt.w loc_0636f6
	cmpi.w #$78,($378,a4)
	bgt.w loc_0636a8
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06369e
	movea.l #loc_062322,a0
	bsr.w loc_060bb4
	bra.w loc_0636a8

loc_06369e:
	movea.l #loc_06245e,a0
	bsr.w loc_060bb4

loc_0636a8:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b1c
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0636f6
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b1c
	jsr loc_02e308

loc_0636f6:
	clr.b ($2f6,a4)
	bra.w loc_060ba2

;--------------------------
loc_0636fe:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_060b92
	btst #1,($246,a4)
	beq.w loc_060b92
	btst #3,($24a,a4)
	bne.w loc_060b92
	cmpi.w #$20,($340,a4)
	blt.w loc_060b92
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$8c,($378,a4)
	bgt.w loc_06375a
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	jsr loc_02e308
	bsr.w loc_064c08
	bra.w loc_063790

loc_06375a:
	clr.b ($2f6,a4)
	btst #1,($362,a4)
	beq.w loc_06376e
	move.b #2,($2f6,a4)

loc_06376e:
	bsr.w loc_064d70
	jsr loc_02e308
	clr.b ($2f6,a4)
	cmpi.w #$78,($378,a4)
	blt.w loc_06378c
	move.b #2,($2f6,a4)

loc_06378c:
	bsr.w loc_064cf8

loc_063790:
	jsr loc_02e308
	cmpi.b #5,($360,a4)
	beq.w loc_0637ae
	clr.b ($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308

loc_0637ae:
	clr.b ($2f6,a4)
	bra.w loc_060ba2


loc_0637b6
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_060b92
	btst #1,($246,a4)
	beq.w loc_060b92
	btst #3,($24a,a4)
	beq.w loc_060b92
	cmpi.w #$aa,($36c,a4)
	bgt.w loc_060b92
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	clr.b ($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_064c08
	jsr loc_02e308
	clr.b ($2f6,a4)
	bra.w loc_060ba2

;--------------------------
loc_063838:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_060b92
	btst #1,($246,a4)
	beq.w loc_060b92
	btst #3,($24a,a4)
	beq.w loc_060b92
	cmpi.w #$aa,($36c,a4)
	bgt.w loc_060b92
	cmpi.w #$40,($340,a4)
	blt.w loc_060b92
	clr.b ($2f6,a4)
	sf ($3ca,a4)
	cmpi.w #$46,($36c,a4)
	bgt.w loc_063882
	bra.w loc_063886

loc_063882:
	st ($3ca,a4)

loc_063886:
	bsr.w loc_064b60
	jsr loc_02e26e
	bgt.w loc_0638ba
	blt.w loc_06389c
	bra.w loc_063984


loc_06389c:
	jsr RandomNumberGod
	lea loc_0638ac(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0638ac:
	dc.w $0002

	dc.w $0050
	dc.l loc_0638de

	dc.w $0014
	dc.l loc_06394e

;--------------------------
loc_0638ba:
	jsr RandomNumberGod
	lea loc_0638ca(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0638ca:
	dc.w $0003

	dc.w $001e
	dc.l loc_06395c

	dc.w $001e
	dc.l loc_063970

	dc.w $001e
	dc.l loc_06392c

;--------------------------
loc_0638de:
	cmpi.w #$c0,($340,a4)
	blt.w loc_063984
	jsr loc_02c78a
	beq.w loc_06398a
	jsr RandomNumberGod
	lea loc_063902(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_063902
	dc.w $0002
	dc.w $001e
	dc.l loc_063910
	dc.w $001e
	dc.l loc_06391e

;--------------------------
loc_063910:
	bsr.w loc_064a7a
	jsr loc_02e308
	bra.w loc_06398a

loc_06391e:
	bsr.w loc_064a42
	jsr loc_02e308
	bra.w loc_06398a

;--------------------------
loc_06392c:
	cmpi.w #$c0,($340,a4)
	blt.w loc_063984
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	jsr loc_02e308
	bra.w loc_06398a

loc_06394e:
	bsr.w loc_064df6
	jsr loc_02e308
	bra.w loc_06398a

loc_06395c:
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	jsr loc_02e308
	bra.w loc_06398a

loc_063970:
	move.b #4,($2f6,a4)
	bsr.w loc_064cf8
	jsr loc_02e308
	bra.w loc_06398a

;--------------------------
loc_063984:
	jsr loc_02e308

loc_06398a:
	clr.b ($2f6,a4)
	bra.w loc_060ba2

;--------------------------
loc_063992:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_060b92
	btst #1,($246,a4)
	beq.w loc_060b92
	btst #3,($24a,a4)
	beq.w loc_060b92
	cmpi.w #$30,($340,a4)
	blt.w loc_060b92
	clr.b ($2f6,a4)
	cmpi.w #$8c,($378,a4)
	blt.w loc_060b92
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_062560,a0
	bsr.w loc_060bb4
	move.l #$80008,d0
	jsr loc_02e420
	jsr RandomNumberGod
	lea loc_0639fc(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0639fc:
	dc.w $0002

	dc.w $001e
	dc.l loc_063a0a

	dc.w $001e
	dc.l loc_063a2c

;--------------------------
loc_063a0a:
	cmpi.w #$40,($340,a4)
	blt.w loc_063a4e
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	jsr loc_02e308
	bra.w loc_063a54

loc_063a2c:
	cmpi.w #$40,($340,a4)
	blt.w loc_063a4e
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064ab6
	jsr loc_02e308
	bra.w loc_063a54

loc_063a4e:
	jsr loc_02e308

loc_063a54:
	clr.b ($2f6,a4)
	bra.w loc_060ba2

;--------------------------
loc_063a5c:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_060b92
	btst #1,($246,a4)
	beq.w loc_060b92
	btst #3,($24a,a4)
	beq.w loc_060b92
	cmpi.w #$30,($340,a4)
	blt.w loc_060b92
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	bne.w loc_063abe
	jsr RandomNumberGod
	lea loc_063ab0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_063ab0:
	dc.w $0002

	dc.w $001e
	dc.l loc_063adc

	dc.w $001e
	dc.l loc_063b20

;--------------------------
loc_063abe:
	jsr RandomNumberGod
	lea loc_063ace(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_063ace:
	dc.w $0002

	dc.w $001e
	dc.l loc_063b48

	dc.w $001e
	dc.l loc_063be2

;--------------------------
loc_063adc:
	cmpi.w #$50,($378,a4)
	bgt.w loc_060b92
	move.b #4,($2f6,a4)
	bsr.w loc_064cf8
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_063b08
	blt.w loc_063b08
	bra.w loc_063c1a

loc_063b08:
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	jsr loc_02e308
	bra.w loc_063c1a

loc_063b20:
	cmpi.w #$40,($340,a4)
	blt.w loc_063c14
	cmpi.w #$46,($378,a4)
	bgt.w loc_060b92
	move.b #4,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_063c1a

loc_063b48:
	cmpi.w #$40,($340,a4)
	blt.w loc_063c14
	cmpi.w #$a0,($378,a4)
	bgt.w loc_060b92
	bsr.w loc_064bea
	jsr loc_02e308
	btst #1,($362,a4)
	bne.w loc_063b84
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	jsr loc_02e308
	bra.w loc_063c1a

loc_063b84:
	jsr RandomNumberGod
	lea loc_063b94(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_063b94:
	dc.w $0002

	dc.w $001e
	dc.l loc_063ba2

	dc.w $001e
	dc.l loc_063bc0

;--------------------------
loc_063ba2:
	cmpi.w #$40,($340,a4)
	blt.w loc_063c14
	move.b #4,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_063c1a

loc_063bc0:
	cmpi.w #$40,($340,a4)
	blt.w loc_063c14
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	jsr loc_02e308
	bra.w loc_063c1a

;--------------------------
loc_063be2:
	cmpi.w #$40,($340,a4)
	blt.w loc_063c14
	cmpi.w #$6e,($378,a4)
	bgt.w loc_063c1a
	bsr.w loc_064bcc
	jsr loc_02e308
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_063c1a

loc_063c14:
	jsr loc_02e308

loc_063c1a:
	clr.b ($2f6,a4)
	bra.w loc_060ba2

;--------------------------
loc_063c22:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_060b92
	btst #1,($246,a4)
	beq.w loc_060b92
	btst #3,($24a,a4)
	beq.w loc_060b92
	jsr loc_02c78a
	beq.w loc_060b92
	cmpi.w #$60,($340,a4)
	blt.w loc_060b92
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_063c76(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_063c76:
	dc.w $0002
	dc.w $001e
	dc.l loc_063c84
	dc.w $001e
	dc.l loc_063c92

;--------------------------
loc_063c84:
	bsr.w loc_064a42
	jsr loc_02e308
	bra.w loc_063ca0

loc_063c92:
	bsr.w loc_064a7a
	jsr loc_02e308
	bra.w loc_063ca0

loc_063ca0:
	clr.b ($2f6,a4)
	bra.w loc_060ba2

;--------------------------
loc_063ca8:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_060ba2
	btst #1,($246,a4)
	beq.w loc_060b92
	btst #3,($24a,a4)
	beq.w loc_060b92
	cmpi.w #$70,($340,a4)
	blt.w loc_060b92
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_063cf2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_063cf2:
	dc.w $000e

	dc.w $000a
	dc.l loc_063f0c

	dc.w $000a
	dc.l loc_063e16

	dc.w $000a
	dc.l loc_063f44

	dc.w $000a
	dc.l loc_063dcc

	dc.w $000a
	dc.l loc_063daa

	dc.w $000a
	dc.l loc_063f6c

	dc.w $000a
	dc.l loc_063ee2

	dc.w $000a
	dc.l loc_063ec2

	dc.w $000a
	dc.l loc_063e98

	dc.w $000a
	dc.l loc_063e4a

	dc.w $000a
	dc.l loc_063e6e

	dc.w $000a
	dc.l loc_063dea

	dc.w $000a
	dc.l loc_063d92

	dc.w $000a
	dc.l loc_063d48

;--------------------------
loc_063d48:
	cmpi.w #$60,($340,a4)
	blt.w loc_063fee
	movea.l #loc_062322,a0
	bsr.w loc_060bb4
	jsr loc_02e496
	jsr loc_02e550
	move.l #$200030,d0
	move.b #2,($2f6,a4)
	moveq #0,d2
	move.w #$54,d2
	jsr loc_02e0f4
	bsr.w loc_064a7a
	beq.w loc_063d92
	jsr loc_02e308
	bra.w loc_063fee

loc_063d92:
	cmpi.w #$b4,($36c,a4)
	blt.w loc_063fee
	bsr.w loc_064ba6
	jsr loc_02e308
	bra.w loc_063fee

loc_063daa:
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	clr.b ($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_063fee

loc_063dcc:
	bsr.w loc_064bea
	jsr loc_02e308
	move.b #4,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_063fee

loc_063dea:
	cmpi.w #$96,($378,a4)
	bgt.w loc_060b92
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	jsr loc_02e308
	clr.b ($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_063fee

loc_063e16:
	movea.l #loc_062442,a0
	bsr.w loc_060bb4
	jsr RandomNumberGod
	lea loc_063e30(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_063e30:
	dc.w $0004

	dc.w $0014
	dc.l loc_063fe0
	dc.w $0014
	dc.l loc_063fa8
	dc.w $0014
	dc.l loc_063f94
	dc.w $0014
	dc.l loc_063fd2

loc_063e4a:
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	jsr loc_02e308
	move.b #2,($2f6,a4)
	bsr.w loc_064c80
	jsr loc_02e308
	bra.w loc_063fee

loc_063e6e:
	cmpi.w #$64,($378,a4)
	blt.w loc_060b92
	sf ($3ca,a4)
	bsr.w loc_064ab6
	jsr loc_02e308
	st ($3ca,a4)
	bsr.w loc_064ab6
	jsr loc_02e308
	bra.w loc_063fee

loc_063e98:
	cmpi.w #$64,($378,a4)
	blt.w loc_060b92
	sf ($3ca,a4)
	bsr.w loc_064b1c
	jsr loc_02e308
	st ($3ca,a4)
	bsr.w loc_064b1c
	jsr loc_02e308
	bra.w loc_063fee

loc_063ec2:
	sf ($3ca,a4)
	bsr.w loc_064b60
	jsr loc_02e308
	st ($3ca,a4)
	bsr.w loc_064b60
	jsr loc_02e308
	bra.w loc_063fee

loc_063ee2:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_063efe
	movea.l #loc_062560,a0
	bsr.w loc_060bb4
	bra.w loc_063fee

loc_063efe:
	movea.l #loc_0622b4,a0
	bsr.w loc_060bb4
	bra.w loc_063fee

loc_063f0c:
	cmpi.w #$32,($36c,a4)
	bgt.w loc_063f30
	move.b #4,($2f6,a4)
	bsr.w loc_064d70
	jsr loc_02e26e
	beq.w loc_063fee
	jsr loc_02e308

loc_063f30:
	move.b #4,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_063fee

loc_063f44:
	cmpi.w #$78,($378,a4)
	blt.w loc_060b92
	bsr.w loc_064bcc
	jsr loc_02e308
	move.b #4,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_063fee

loc_063f6c:
	cmpi.w #$64,($378,a4)
	blt.w loc_060b92
	bsr.w loc_064c08
	jsr loc_02e308
	move.b #2,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_063fee

loc_063f94:
	move.b #1,($2f6,a4)
	bsr.w loc_064c08
	jsr loc_02e308
	bra.w loc_063fee

loc_063fa8:
	jsr RandomNumberGod
	smi ($3ca,a4)
	bsr.w loc_064b60
	jsr loc_02e308
	bra.w loc_063fee

loc_063fc0:
	st ($3ca,a4)
	bsr.w loc_064ab6
	jsr loc_02e308
	bra.w loc_063fee

loc_063fd2:
	movea.l #loc_06245e,a0
	bsr.w loc_060bb4
	bra.w loc_063fee

loc_063fe0:
	movea.l #loc_062bb6,a0
	bsr.w loc_060b8c
	bra.w loc_063fee

loc_063fee:
	clr.b ($2f6,a4)
	bra.w loc_060ba2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_063ff6:
	dc.l loc_064206,loc_0642a6,loc_0641a6,loc_064186
	dc.l loc_064346,loc_064366,loc_064386,loc_0643a6
	dc.l loc_0643c6,loc_0643e6,loc_0641c6,loc_0641e6
	dc.l loc_064406,loc_0645c6,loc_064506,loc_064486
	dc.l loc_064546,loc_0645e6,loc_064646
	dc.l $00000000

loc_064046:
	dc.l loc_064226,loc_0642c6,loc_0641a6,loc_064186
	dc.l loc_064346,loc_064366,loc_064386,loc_0643a6
	dc.l loc_0643c6,loc_0643e6,loc_0641c6,loc_0641e6
	dc.l loc_064426,loc_064606,loc_064506,loc_0644a6
	dc.l loc_064566,loc_064626,loc_064646
	dc.l $00000000

loc_064096:
	dc.l loc_064246,loc_0642e6,loc_0641a6,loc_064186
	dc.l loc_064346,loc_064366,loc_064386,loc_0643a6
	dc.l loc_0643c6,loc_0643e6,loc_0641c6,loc_0641e6
	dc.l loc_064446,loc_0645c6,loc_064526,loc_0644c6
	dc.l loc_064586,loc_0645e6,loc_064646
	dc.l $00000000

loc_0640e6:
	dc.l loc_064266,loc_064306,loc_0641a6,loc_064186
	dc.l loc_064346,loc_064366,loc_064386,loc_0643a6
	dc.l loc_0643c6,loc_0643e6,loc_0641c6,loc_0641e6
	dc.l loc_064466,loc_064606,loc_064526,loc_0644e6
	dc.l loc_0645a6,loc_064626,loc_064646
	dc.l $00000000

loc_064136:
	dc.l loc_064286,loc_064326,loc_0641a6,loc_064186
	dc.l loc_064346,loc_064366,loc_064386,loc_0643a6
	dc.l loc_0643c6,loc_0643e6,loc_0641c6,loc_0641e6
	dc.l loc_064426,loc_064606,loc_064506,loc_0644a6
	dc.l loc_064566,loc_064626,loc_064646
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_064186:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

loc_0641a6:
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

loc_0641c6:
	dc.w $7111,$700a,$601c,$700f,$112f,$713f,$324f,$526f
	dc.w $337f,$539f,$73af,$34bf,$74df,$75ff,$7aff,$7fff

loc_0641e6:
	dc.w $7888,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_064206:
	dc.w $6bb8,$0631,$6963,$4c96,$3eb8,$2fdb,$5ffc,$415b
	dc.w $128f,$17cf,$79df,$2f70,$7fa2,$7fe3,$7fff,$0e00

loc_064226:
	dc.w $0888,$1254,$7585,$38b9,$6add,$5cfe,$3eff,$3a21
	dc.w $0e42,$5f63,$6fa6,$4b90,$7fb2,$7fe4,$7fff,$0e00

loc_064246:
	dc.w $0888,$6243,$4284,$34b4,$15e8,$28fb,$7afd,$1222
	dc.w $3545,$3878,$4aab,$3b91,$6fb1,$7fe3,$7fff,$0e00

loc_064266:
	dc.w $0888,$2632,$4a62,$4e82,$4fb3,$4fe5,$6fec,$7150
	dc.w $6485,$58d9,$2cfe,$3b5c,$0d9f,$7dbf,$7fff,$0e00

loc_064286:
	dc.w $0888,$0333,$7444,$7666,$0888,$1cba,$4fed,$2040
	dc.w $1071,$10a7,$10eb,$7974,$5fb3,$7fe3,$7fff,$0e00

loc_0642a6:
	dc.w $0888,$4200,$0630,$1952,$6a75,$0ca8,$2cca,$2006
	dc.w $213a,$139c,$76bc,$0a30,$6a60,$7ca0,$7ccc,$0900

loc_0642c6:
	dc.w $0888,$0130,$6253,$6587,$09bb,$0acc,$7ccc,$3500
	dc.w $4801,$4c20,$7c72,$6630,$6b60,$2ca0,$3ccc,$4800

loc_0642e6:
	dc.w $0888,$7010,$5050,$7050,$34a4,$08c8,$0aca,$0111
	dc.w $1443,$0777,$3aaa,$1550,$0c70,$7ca0,$7bcc,$0900

loc_064306:
	dc.w $0888,$3510,$7651,$7b40,$7c81,$5cc2,$2cb9,$1120
	dc.w $7142,$1586,$78aa,$484a,$0a7c,$5a9c,$7ccc,$4800

loc_064326:
	dc.w $4f88,$7000,$0111,$0333,$7444,$7876,$6ca9,$0010
	dc.w $3020,$3053,$10a7,$0532,$2b60,$7ca0,$7ccc,$0900

loc_064346:
	dc.w $76b3,$7b00,$7f00,$5f50,$7f93,$7fd7,$6ff7,$3d00
	dc.w $5f20,$7f60,$7fa0,$7f30,$5f80,$4fd1,$7fea,$7fff

loc_064366:
	dc.w $56cb,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_064386:
	dc.w $76bb,$7fff,$7ccf,$799f,$766f,$733f,$700f,$7ccf
	dc.w $49af,$667e,$734d,$7fff,$7fff,$1ddf,$1aaf,$777f

loc_0643a6:
	dc.w $0bbb,$700f,$733f,$766f,$799f,$7ccf,$7fff,$734d
	dc.w $667e,$49af,$7ccf,$777f,$1aaf,$1ddf,$7fff,$7fff

loc_0643c6:
	dc.w $736b,$750a,$672d,$394f,$796f,$3b8f,$5ccf,$491c
	dc.w $6a3d,$2c6e,$0d9f,$0ebd,$3b39,$5c5b,$1e6d,$7f7f

loc_0643e6:
	dc.w $7888,$3053,$2274,$1494,$45b5,$77c5,$69e6,$06b3
	dc.w $08c4,$49d5,$7be6,$7df7,$71a6,$23b8,$04da,$55eb

loc_064406:
	dc.w $537b,$0d20,$7d30,$2e41,$1e61,$6e72,$3f82,$3f93
	dc.w $1fa4,$1fb5,$1fc6,$5fd7,$7fd8,$7fe9,$7ffa,$7fff

loc_064426:
	dc.w $7373,$2a04,$4a15,$7b16,$3c17,$0d29,$6d2a,$7d3a
	dc.w $0e5b,$0e6c,$7e7c,$6e8d,$1fad,$1fbe,$6fcf,$7fff

loc_064446:
	dc.w $737b,$1306,$7307,$5418,$3519,$361a,$562b,$772c
	dc.w $183d,$393e,$3a5e,$2b7f,$2c9f,$6dbf,$7edf,$7fff

loc_064466:
	dc.w $5383,$2071,$7081,$1192,$41a3,$02b4,$63b5,$05c6
	dc.w $66c7,$08d8,$69d9,$0bea,$6ceb,$0efc,$6ffd,$7fff

loc_064486:
	dc.w $1653,$5ccf,$3b8f,$796f,$394f,$672d,$750a,$0d9f
	dc.w $2c6e,$6a3d,$491c,$0ebd,$1eae,$0c7d,$594b,$471a

loc_0644a6:
	dc.w $2ac9,$4ff0,$6ed0,$4dc0,$0da0,$2c80,$0b70,$0e80
	dc.w $1c60,$7941,$6722,$7f90,$0e80,$2c60,$6a40,$4830

loc_0644c6:
	dc.w $739b,$7bbb,$0aaa,$7888,$7777,$0666,$7444,$6ccf
	dc.w $0aad,$088b,$6559,$6aad,$298c,$276b,$7549,$7328

loc_0644e6:
	dc.w $6778,$5aed,$48db,$37b8,$35a5,$4393,$5180,$16ab
	dc.w $5499,$6288,$2176,$05cd,$34aa,$4298,$5175,$2053

loc_064506:
	dc.w $53ab,$475d,$395f,$3a7f,$7b9f,$5ccf,$2fef,$6a3d
	dc.w $2c6e,$0d9f,$2fbf,$6a3d,$2c6e,$0d9f,$2fbf,$2fbf

loc_064526:
	dc.w $5bbb,$1084,$2095,$25b9,$07da,$57fd,$7dff,$317a
	dc.w $42ab,$45cc,$35de,$317a,$42ab,$45cc,$35de,$35de

loc_064546:
	dc.w $7bbb,$43c4,$53c4,$43c5,$53c5,$43c6,$3053,$7064
	dc.w $7175,$3286,$7297,$53b8,$36c9,$0aeb,$7dfb,$7fff

loc_064566:
	dc.w $53b3,$43c4,$53c4,$43c5,$53c5,$43c6,$6a3d,$3b4d
	dc.w $5b6d,$0c7e,$6c8e,$3d9e,$4dbf,$0ecf,$7edf,$7fff

loc_064586:
	dc.w $53bb,$43cc,$53cc,$43cd,$53cd,$43ce,$7a11,$3b32
	dc.w $2c54,$4c85,$5da6,$3eb7,$2fd8,$4ff9,$4ffc,$7fff

loc_0645a6:
	dc.w $7bbb,$43c4,$53c4,$43c5,$53c5,$43c6,$524e,$335e
	dc.w $737e,$049f,$44bf,$06cf,$47df,$39ef,$7aff,$7fff

loc_0645c6:
	dc.w $7777,$1a37,$3b37,$6b48,$3c48,$4c59,$3d69,$6d7a
	dc.w $2e8b,$0e9b,$0eac,$5ebc,$7ecd,$2fde,$2fef,$7fff

loc_0645e6:
	dc.w $7777,$3268,$2279,$0289,$6289,$4299,$53a9,$14b9
	dc.w $16ca,$67cb,$48dc,$3adc,$5bed,$2dee,$0eff,$7fff

loc_064606:
	dc.w $7777,$4b50,$2c50,$0d60,$6d60,$5d71,$6d83,$3e94
	dc.w $2ea6,$1eb7,$5ec8,$6eca,$3fdb,$0fed,$4ffe,$7fff

loc_064626:
	dc.w $7777,$3381,$6392,$43a3,$34a3,$44b4,$45c5,$56d6
	dc.w $46e7,$08e8,$39e9,$7aea,$4bfc,$0dfd,$3efe,$7fff

loc_064646:
	dc.w $7ccc,$2c84,$7c94,$5db5,$5ec7,$5ec6,$0fd9,$7fd9
	dc.w $7feb,$4ffd,$6fff,$43c9,$53c9,$43ca,$53ca,$43cb

;--------------------------
AlsPRGStart:;64666
	move.l #loc_064e30,($86,a4)
	move.l #loc_060b60,($56,a4)
	move.l #loc_064702,($1b6,a4)
	move.l #loc_06470c,($1ba,a4)
	move.l #loc_064712,($1be,a4)
	move.l #loc_06471a,($1c2,a4)
	move.l #loc_060b34,($1c6,a4)
	move.l #loc_064e2e,($1ce,a4)
	move.l #loc_064840,($1ca,a4)
	move.l #loc_065efa,($1d2,a4)
	move.l #loc_09530c,($1d6,a4)
	move.l #loc_065d16,($1da,a4)
	move.l #loc_065dca,($1de,a4)
	move.l #loc_065d36,($1e2,a4)
	move.l #loc_065ce6,($1e6,a4)
	move.l #loc_065cca,($1ea,a4)
	move.l #loc_065dfe,($1ee,a4)
	bsr.w loc_060b08
	andi.w #$f0ff,($2ee,a4)
	move.l #loc_066030,($2d0,a4)
	rts

;--------------------------
loc_064702:
	clr.w ($550,a4)
	jmp loc_02a9c4

;--------------------------
loc_06470c:
	clr.w ($550,a4)
	rts

;--------------------------
loc_064712:
	move.w ($2ba,a3),($2ba,a4)
	rts

;--------------------------
loc_06471a:
	lea ($3d0,a4),a0
	jsr loc_02cbba
	move.b ($3d0,a4),d0
	move.b d0,($3c0,a4)
	move.b ($3d4,a4),d0
	move.b d0,($3c1,a4)

	lea ($3d8,a4),a0
	lea loc_064800(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c2,a4)
	or.b d0,($3c2,a4)
	andi.b #$aa,($3c2,a4)

	lea ($3e0,a4),a0
	lea loc_06480a(pc),a1
	move.w #4,d7
	jsr loc_02c946
	and.b d1,($3c3,a4)
	or.b d0,($3c3,a4)
	andi.b #$55,($3c3,a4)

	lea ($3ea,a4),a0
	lea loc_064816(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c4,a4)
	or.b d0,($3c4,a4)
	andi.b #$aa,($3c4,a4)

	lea ($3f2,a4),a0
	lea loc_064820(pc),a1
	move.w #5,d7
	jsr loc_02c946
	and.b d1,($3c5,a4)
	or.b d0,($3c5,a4)
	andi.b #$55,($3c5,a4)

	lea ($3fe,a4),a0
	lea loc_064830(pc),a1
	move.w #5,d7
	jsr loc_02c946
	and.b d1,($3c6,a4)
	or.b d0,($3c6,a4)
	andi.b #$55,($3c6,a4)

	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$50,d0
	seq d0
	or.b d0,($3c7,a4)
	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$a0,d0
	seq d0
	or.b d0,($3c8,a4)
	tst.b ($2fc,a4)
	smi d0
	or.b d0,($3c9,a4)
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;inputs
loc_064800:
	dc.w $0202,$080a,$0608,$0804,$0a00

loc_06480a:
	dc.w $060a,$0802,$0208,$0a06,$0808,$040a

loc_064816:
	dc.w $0202,$0806,$0a08,$0408,$0a00

loc_064820:
	dc.w $0202,$080a,$0608,$0804,$0c02,$020c,$0a06,$0c00

loc_064830:
	dc.w $0202,$0806,$0a08,$0408,$0c02,$020c,$060a,$0c00

;--------------------------
loc_064840:
	bsr.w loc_0648a6
	bne.w loc_064854
	bsr.w loc_06493c
	bne.w loc_064854
	bsr.w loc_0649ac

loc_064854:
	rts

;--------------------------
loc_064856:
	btst #6,($2f7,a4)
	beq.w loc_06487c
	move.b ($2f6,a4),d0
	cmpi.b #4,d0
	beq.w loc_064874
	cmpi.b #8,d0
	bne.w loc_06487c

loc_064874:
	bsr.w loc_0649fa
	bne.w loc_0648a4

loc_06487c:
	btst #7,($2f7,a4)
	bne.w loc_064890
	btst #6,($2f7,a4)
	beq.w loc_0648a0

loc_064890:
	move.b ($2f6,a4),d0
	beq.w loc_0648a0
	bsr.w loc_064a14
	bne.w loc_0648a4

loc_0648a0:
	clr.w d0
	rts

loc_0648a4:
	rts

;--------------------------
loc_0648a6:
	tst.b ($3c5,a4)
	beq.b loc_0648b4
	bsr.w loc_064a42
	bne.w loc_06493a

loc_0648b4:
	tst.b ($3c6,a4)
	beq.b loc_0648c2
	bsr.w loc_064a7a
	bne.w loc_06493a

loc_0648c2:
	move.b ($3c4,a4),d0
	andi.b #$f0,d0
	beq.b loc_0648d4
	bsr.w loc_064b60
	bne.w loc_06493a

loc_0648d4:
	move.b ($3c3,a4),d0
	andi.b #$f0,d0
	beq.b loc_0648e6
	bsr.w loc_064b1c
	bne.w loc_06493a

loc_0648e6:
	move.b ($3c2,a4),d0
	andi.b #$f0,d0
	beq.b loc_0648f8
	bsr.w loc_064ab6
	bne.w loc_06493a

loc_0648f8:
	bsr.w loc_064856
	bne.w loc_06493a
	move.b ($3c4,a4),d0
	andi.b #$f,d0
	beq.b loc_064912
	bsr.w loc_064b60
	bne.w loc_06493a

loc_064912:
	move.b ($3c3,a4),d0
	andi.b #$f,d0
	beq.b loc_064924
	bsr.w loc_064b1c
	bne.w loc_06493a

loc_064924:
	move.b ($3c2,a4),d0
	andi.b #$f,d0
	beq.b loc_064936
	bsr.w loc_064ab6
	bne.w loc_06493a

loc_064936:
	clr.w d0
	rts

loc_06493a:
	rts

;--------------------------
loc_06493c:
	tst.b ($3c8,a4)
	beq.b loc_06494a
	bsr.w loc_064bcc
	bne.w loc_0649aa

loc_06494a
	tst.b ($3c7,a4)
	beq.b loc_064958
	bsr.w loc_064bea
	bne.w loc_0649aa

loc_064958:
	btst #7,($2f7,a4)
	beq.b loc_064968
	bsr.w loc_064c08
	bne.w loc_0649aa

loc_064968:
	btst #6,($2f7,a4)
	beq.b loc_064978
	bsr.w loc_064c80
	bne.w loc_0649aa

loc_064978:
	btst #5,($2f7,a4)
	beq.b loc_064988
	bsr.w loc_064cf8
	bne.w loc_0649aa

loc_064988:
	btst #4,($2f7,a4)
	beq.b loc_064998
	bsr.w loc_064d70
	bne.w loc_0649aa

loc_064998:
	tst.b ($3c9,a4)
	beq.b loc_0649a6
	bsr.w loc_064ba6
	bne.w loc_0649aa

loc_0649a6:
	clr.w d0
	rts

loc_0649aa:
	rts

;--------------------------
loc_0649ac:
	tst.b ($209,a4)
	bmi.w loc_0649d4
	tst.b ($3c1,a4)
	beq.b loc_0649c2
	bsr.w loc_064df6
	bne.w loc_0649f4

loc_0649c2:
	tst.b ($3c0,a4)
	beq.b loc_0649d0
	bsr.w loc_064e12
	bne.w loc_0649f4

loc_0649d0:
	clr.w d0
	rts

loc_0649d4:
	tst.b ($3c0,a4)
	beq.b loc_0649e2
	bsr.w loc_064df6
	bne.w loc_0649f4

loc_0649e2:
	tst.b ($3c1,a4)
	beq.b loc_0649f0
	bsr.w loc_064e12
	bne.w loc_0649f4

loc_0649f0:
	clr.w d0
	rts

loc_0649f4:
	rts

;--------------------------
loc_0649f6:
	clr.w d0
	rts

loc_0649fa:
	cmpi.w #$24,($226,a4)
	bgt.b loc_0649f6
	jsr loc_02a4dc
	beq.b loc_0649f6
	move.w #$20,d0
	move.w d0,($2fe,a4)
	rts

loc_064a14:
	btst #0,($24a,a4)
	bne.b loc_0649f6
	move.w #$30,d2
	move.w #-$74,d3
	move.w #-$10,d4
	jsr loc_02de6a
	beq.b loc_0649f6
	jsr loc_02a518
	beq.b loc_0649f6
	move.w #$21,d0
	move.w d0,($2fe,a4)
	rts

;---------------------
;23623+P
loc_064a42:
	jsr loc_02c78a
	beq.b loc_0649f6
	btst #1,($246,a4)
	beq.b loc_0649f6
	tst.b ($2b2,a4)
	bne.b loc_0649f6
	btst #5,($24a,a4)
	beq.b loc_064a68
	tst.w ($550,a4)
	bne.b loc_064a68
	bra.b loc_0649f6

loc_064a68:
	sf ($3f3,a4)
	st ($ba,a4)
	move.w #$1e,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
;21421+P
loc_064a7a:
	jsr loc_02c78a
	beq.w loc_0649f6
	btst #1,($246,a4)
	beq.w loc_0649f6
	btst #5,($24a,a4)
	beq.b loc_064aa0
	tst.w ($550,a4)
	bne.b loc_064aa0
	bra.w loc_0649f6

loc_064aa0:
	sf ($3ff,a4)
	st ($ba,a4)
	move.w #$1f,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_064ab2:
	clr.w d0
	rts

loc_064ab6:
	btst #5,($24a,a4)
	bne.w loc_0649f6
	tst.b (1,a4)
	bpl.b loc_064ad4
	move.b ($3c2,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_064ada

loc_064ad4:
	move.b ($3ca,a4),($ba,a4)

loc_064ada:
	sf ($3d9,a4)
	btst #1,($246,a4)
	beq.b loc_064b02
	tst.b ($ba,a4)
	bne.b loc_064af6
	move.w #$17,d0
	move.w d0,($2fe,a4)
	rts

loc_064af6:
	move.w #$18,d0
	move.w d0,($2fe,a4)
	rts

loc_064b00:
	bra.b loc_064b1c

loc_064b02:
	tst.b ($ba,a4)
	bne.b loc_064b12
	move.w #$19,d0
	move.w d0,($2fe,a4)
	rts

loc_064b12:
	move.w #$1a,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_064b1c:
	btst #5,($24a,a4)
	bne.w loc_0649f6
	btst #1,($246,a4)
	beq.w loc_0649f6
	tst.b ($2b2,a4)
	bne.w loc_0649f6
	tst.b (1,a4)
	bpl.b loc_064b4c
	move.b ($3c3,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_064b52

loc_064b4c:
	move.b ($3ca,a4),($ba,a4)

loc_064b52:
	sf ($3e1,a4)
	move.w #$1b,d0
	move.w d0,($2fe,a4)
	rts

loc_064b60:
	btst #5,($24a,a4)
	bne.w loc_0649f6
	tst.b ($1,a4)
	bpl.b loc_064b7e
	move.b ($3c4,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_064b84

loc_064b7e
	move.b ($3ca,a4),($ba,a4)

loc_064b84
	sf ($3eb,a4)
	btst #1,($246,a4)
	beq.b loc_064b9c
	move.w #$1c,d0
	move.w d0,($2fe,a4)
	rts

loc_064b9a:
	bra.b loc_064ba6

loc_064b9c:
	move.w #$1d,d0
	move.w d0,($2fe,a4)
	rts

loc_064ba6:
	btst #4,($24a,a4)
	bne.w loc_0649f6
	btst #1,($246,a4)
	beq.w loc_0649f6
	tst.w ($552,a4)
	bne.w loc_0649f6
	move.w #$24,d0
	move.w d0,($2fe,a4)
	rts

loc_064bcc:
	btst #4,($24a,a4)
	bne.w loc_0649f6
	btst #1,($246,a4)
	beq.w loc_0649f6
	move.w #$16,d0
	move.w d0,($2fe,a4)
	rts

loc_064bea:
	btst #4,($24a,a4)
	bne.w loc_0649f6
	btst #1,($246,a4)
	beq.w loc_0649f6
	move.w #$15,d0
	move.w d0,($2fe,a4)
	rts

loc_064c08:
	btst #1,($246,a4)
	bne.w loc_064c3a
	btst #0,($24a,a4)
	bne.w loc_0649f6
	btst #1,($2f6,a4)
	bne.w loc_064c30
	move.w #$13,d0
	move.w d0,($2fe,a4)
	rts

loc_064c30:
	move.w #$14,d0
	move.w d0,($2fe,a4)
	rts

loc_064c3a:
	btst #1,($246,a4)
	beq.w loc_0649f6
	btst #3,($24a,a4)
	bne.w loc_0649f6
	btst #1,($2f6,a4)
	bne.w loc_064c76
	btst #2,($2f6,a4)
	beq.w loc_064c6c
	move.w #$a,d0
	move.w d0,($2fe,a4)
	rts

loc_064c6c:
	move.w #$b,d0
	move.w d0,($2fe,a4)
	rts

loc_064c76:
	move.w #$c,d0
	move.w d0,($2fe,a4)
	rts

loc_064c80:
	btst #1,($246,a4)
	bne.w loc_064cb2
	btst #0,($24a,a4)
	bne.w loc_0649f6
	btst #1,($2f6,a4)
	bne.w loc_064ca8
	move.w #$11,d0
	move.w d0,($2fe,a4)
	rts

loc_064ca8:
	move.w #$12,d0
	move.w d0,($2fe,a4)
	rts

loc_064cb2:
	btst #1,($246,a4)
	beq.w loc_0649f6
	btst #3,($24a,a4)
	bne.w loc_0649f6
	btst #1,($2f6,a4)
	bne.w loc_064cee
	btst #2,($2f6,a4)
	beq.w loc_064ce4
	move.w #7,d0
	move.w d0,($2fe,a4)
	rts

loc_064ce4:
	move.w #8,d0
	move.w d0,($2fe,a4)
	rts

loc_064cee:
	move.w #9,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_064cf8:
	btst #1,($246,a4)
	bne.w loc_064d2a
	btst #0,($24a,a4)
	bne.w loc_0649f6
	btst #1,($2f6,a4)
	bne.w loc_064d20
	move.w #$f,d0
	move.w d0,($2fe,a4)
	rts

loc_064d20
	move.w #$10,d0
	move.w d0,($2fe,a4)
	rts

loc_064d2a:
	btst #1,($246,a4)
	beq.w loc_0649f6
	btst #3,($24a,a4)
	bne.w loc_0649f6
	btst #1,($2f6,a4)
	bne.w loc_064d66
	btst #2,($2f6,a4)
	beq.w loc_064d5c
	move.w #4,d0
	move.w d0,($2fe,a4)
	rts

loc_064d5c:
	move.w #5,d0
	move.w d0,($2fe,a4)
	rts

loc_064d66:
	move.w #6,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
;LP
loc_064d70:
	btst #1,($246,a4)
	bne.w loc_064da2
	btst #0,($24a,a4)
	bne.w loc_0649f6
	btst #1,($2f6,a4)
	bne.w loc_064d98
	move.w #$d,d0
	move.w d0,($2fe,a4)
	rts

loc_064d98:
	move.w #$e,d0
	move.w d0,($2fe,a4)
	rts

loc_064da2:
	btst #1,($246,a4)
	beq.w loc_0649f6
	btst #3,($24a,a4)
	beq.w loc_064dc4
	btst #1,($24a,a4)
	bne.w loc_0649f6
	bra.w loc_064dd8

loc_064dc4:
	btst #1,($2f6,a4)
	bne.w loc_064dec
	btst #2,($2f6,a4)
	beq.w loc_064de2

loc_064dd8:
	move.w #1,d0
	move.w d0,($2fe,a4)
	rts

loc_064de2:
	move.w #2,d0
	move.w d0,($2fe,a4)
	rts

loc_064dec:
	move.w #3,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_064df6:
	tst.b ($24a,a4)
	bne.w loc_0649f6
	btst #1,($246,a4)
	beq.w loc_0649f6
	move.w #$23,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_064e12:
	tst.b ($24a,a4)
	bne.w loc_0649f6
	btst #1,($246,a4)
	beq.w loc_0649f6
	move.w #$22,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_064e2e:
	rts

;--------------------------
loc_064e30:
	tst.b (-$3e4,a5)
	bne.w loc_064e5e
	cmpi.w #1,(-$f2e,a5)
	bgt.w loc_064e5e
	movea.l #loc_065f8e,a0
	clr.w d0
	jsr loc_0226f0

loc_064e50:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_064e50

loc_064e5e:
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_064e68:
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_064e74:
	jsr loc_02269c
	btst #4,($248,a4)
	bne.w loc_064ea0
	btst #0,($2f6,a4)
	beq.w loc_064ea0
	tst.w ($20c,a4)
	bne.w loc_064ea0
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

;--------------------------
loc_064ea0:
	btst #2,($2e1,a4)
	beq.b loc_064e74
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_064eb2
	jsr loc_028f40
	jsr loc_028f50

loc_064ebe:
	jsr loc_0290b8
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_064ebe
	movea.l #loc_066382,a0
	clr.w d0
	jsr loc_0226f0
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

;--------------------------
loc_064eea:
	jsr loc_0290f8
	jsr loc_02269c
	tst.w ($2c8,a4)
	bne.b loc_064f06
	addi.l #$a000,($21a,a4)
	bra.b loc_064f0e

loc_064f06:
	addi.l #$7000,($21a,a4)

loc_064f0e:
	btst #1,($246,a4)
	beq.b loc_064eea
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

;--------------------------
loc_064f20:
	st ($24a,a4)
	btst #1,($246,a4)
	bne.b loc_064f32
	ori.b #1,($248,a4)

loc_064f32:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	clr.b ($273,a4)
	move.b ($209,a4),($208,a4)

loc_064f44:
	jsr loc_02269c
	tst.b ($273,a4)
	beq.b loc_064f5a
	btst #0,($248,a4)
	bne.w loc_064f86

loc_064f5a:
	tst.b ($b6,a4)
	beq.b loc_064f44
	sf ($b6,a4)
	btst #0,($248,a4)
	bne.w loc_064f86

loc_064f6e:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_064f6e
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_064f86:
	tst.b ($273,a4)
	beq.b loc_064fb6
	tst.b ($ba,a4)
	bne.b loc_064fa4
	move.l #-$10000,($216,a4)
	move.l #-$5c000,($21a,a4)
	bra.b loc_064fb4

loc_064fa4:
	move.l #-$10000,($216,a4)
	move.l #-$84000,($21a,a4)

loc_064fb4:
	bra.b loc_064fde

loc_064fb6
	tst.b ($ba,a4)
	bne.b loc_064fce
	move.l #$20000,($216,a4)
	move.l #-$54000,($21a,a4)
	bra.b loc_064fde

loc_064fce:
	move.l #$20000,($216,a4)
	move.l #-$7c000,($21a,a4)

loc_064fde:
	movea.l #loc_068084,a0
	clr.w d0
	jsr loc_0226f0

loc_064fec:
	jsr loc_02269c
	addi.l #$8000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_064fec
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

;--------------------------
PRGPoison:;21421+P
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	sf ($bb,a4)

loc_065028:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.w loc_065056
	sf ($b6,a4)
	movem.l d2,-(a7)
	move.w #$2c,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_06505c
	move.b ($ba,a4),($66,a0)

loc_065056:
	tst.b ($bb,a4)
	beq.b loc_065028

loc_06505c:
	clr.w ($2ca,a4)
	movea.l #loc_06817e,a0
	clr.w d0
	jsr loc_0226f0

loc_06506e:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_06506e
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_065086:;214+K
	move.b ($209,a4),($208,a4)

loc_06508c:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l ($20e,a4),d2
	tst.b ($ba,a4)
	beq.b loc_0650b6
	tst.b ($208,a4)
	bpl.b loc_0650b0
	subi.l #$600000,d2
	bra.b loc_0650b6

loc_0650b0:
	addi.l #$600000,d2

loc_0650b6:
	move.l #-$870000,d0
	add.l (-$45de,a5),d0
	move.l d0,d3

loc_0650c2:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_0650c2
	move.l d2,($20e,a4)
	move.l d3,($212,a4)

loc_0650d6:
	move.b ($209,a4),($208,a4)
	jsr loc_02269c
	tst.b ($b7,a4)
	beq.b loc_0650d6

loc_0650e8:
	jsr loc_02269c
	addi.l #$12000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_0650e8

loc_0650fe:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_0650fe
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
PRGPhRmpge:;21421+P
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.b ($209,a4),($208,a4)
	move.l (-$45de,a5),($212,a4)

loc_065134:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_065134
	sf ($b9,a4)
	move.w #6,d2
	move.w #-$82,d3
	jsr loc_02c7be

loc_065152:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_065152
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_06516a:
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.b ($209,a4),($208,a4)
	move.l (-$45de,a5),($212,a4)

loc_065188:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_065188
	sf ($b9,a4)
	move.w #-8,d2
	move.w #-$76,d3
	jsr loc_02c7be
	clr.b ($273,a4)

loc_0651aa:
	jsr loc_02269c
	tst.b ($273,a4)
	beq.b loc_0651c8
	sf ($273,a4)
	tst.b ($249,a3)
	beq.b loc_0651c8
	move.l #$10000,($216,a4)

loc_0651c8:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_0651aa

loc_0651d4:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_0651d4
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
;23623+P
loc_0651ec:
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	sf ($c2,a4)
	move.b ($209,a4),($208,a4)

loc_06520e:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_06520e
	sf ($b9,a4)
	move.w #$10,d2
	move.w #-$6e,d3
	jsr loc_02c7be
	jsr loc_02269c
	movem.l d2,-(a7)
	move.w #$2d,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	move.w d0,($bc,a4)
	move.w #$3b,d7

loc_06524c:
	jsr loc_02269c
	tst.b ($c2,a4)
	bne.w loc_065262
	dbra d7,loc_06524c
	bra.w loc_065426

loc_065262:
	move.b ($249,a3),d0
	beq.w loc_065426
	andi.b #$84,d0
	bne.w loc_065426
	tst.b (-$3dd,a5)
	bne.w loc_065426
	movem.l d0,-(a7)
	move.w ($bc,a4),d0
	jsr loc_027d48
	movem.l (a7)+,d0
	movem.l d1-d2,-(a7)
	move.w #$2e,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.w loc_065426
	move.w d0,($bc,a4)
	move.l a0,($be,a4)
	move.l #loc_0696ec,($66,a0)
	move.w #$2a,d0
	jsr loc_023178
	move.w #$3c,($6a,a0)
	sf ($6c,a0)
	movea.l #loc_0695f6,a0
	jsr loc_023384
	move.w #$b,($c4,a4)
	move.w #$5,($c6,a4)
	move.w #$1c,($c8,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	move.l #-$40000,d2
	move.l #-$a0000,d3
	jsr loc_02a59c
	jsr loc_02c8b8
	swap d0
	mulu.w ($c8,a4),d0
	move.w d0,($c8,a4)
	mulu.w ($c4,a4),d0
	move.w d0,($cc,a4)
	move.w #$b,d7

loc_065324:
	jsr loc_02269c
	movem.l d7,-(a7)
	bsr.w loc_06547e;6100 14e
	bsr.w loc_065452;6100 11e
	movem.l (a7)+, d7
	dbra d7,loc_065324

loc_06533e:
	move.w ($c8,a4),($ca,a4)
	move.w ($c6,a4),d6
	subq.w #1,d6
	subq.w #1,($c4,a4)
	movea.l ($be,a4),a0
	move.l #loc_069754,($66,a0)
	move.w #$3c,($6a,a0)
	sf ($6c,a0)
	lea loc_0654a6(pc),a0
	jsr loc_02a554
	jsr RandomNumberGod
	move.w d0,d1
	andi.w #$3f,d1
	subi.w #$20,d1
	jsr RandomNumberGod
	andi.w #$3f,d0
	subi.w #$80,d0
	move.w d0,($27e,a3)
	move.w d0,($280,a3)
	move.w d1,($282,a3)
	move.w d1,($284,a3)
	jsr loc_02a642
	jsr loc_02a702
	exg a3,a4
	jsr loc_02ee5a
	exg a3,a4

loc_0653b2:
	jsr loc_02269c
	bsr.w loc_06547e
	bsr.w loc_065452
	subq.w #1,d6
	bpl.b loc_0653b2
	clr.w d6
	tst.b (-$3dd,a5)
	bne.w loc_065400
	btst #7,($249,a3)
	bne.w loc_065400
	btst #1,($249,a3)
	bne.w loc_065400
	tst.w ($c4,a4)
	ble.w loc_065400
	tst.w ($ca,a4)
	bgt.b loc_0653b2
	movea.l #loc_069606,a0
	jsr loc_023384
	bra.w loc_06533e

loc_065400:
	movea.l ($be,a4),a0
	move.l #loc_069712,($66,a0)
	move.w #$18,($6a,a0)
	st ($6c,a0)
	movea.l #loc_0695a4,a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_065434

loc_065426:
	movea.l #loc_0695a6,a0
	clr.w d0
	jsr loc_0226f0

loc_065434:
	jsr loc_023294

loc_06543a:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_06543a
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_065452:;move opponent?
	subq.w #1,($29c,a3)
	cmpi.w #$c8,($29c,a3)
	ble.b loc_065464
	move.w #$c8,($29c,a3)

loc_065464:
	cmpi.w #$64,($29c,a3)
	bge.b loc_065472
	move.w #$78,($29c,a3)

loc_065472:
	clr.w ($29e,a3)
	move.w #$20,($2a0,a3)
	rts

;--------------------------
loc_06547e:
	jsr loc_02c8b8
	sub.w d0,($ca,a4)
	exg a3,a4
	jsr loc_02c8b8
	exg a3,a4
	move.w d0,d1
	add.w d1,d1
	swap d0
	sub.w d0,d1
	sub.w d1,($cc,a4)
	bpl.b loc_0654a4
	clr.w ($c4,a4)

loc_0654a4:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0654a6:;anubis grab pointers
	dc.l loc_069792,loc_0697cc,loc_069806,loc_069840
	dc.l loc_06987a,loc_0698b4,loc_0698ee,loc_069928
	dc.l loc_069962,loc_06999c
	dc.l loc_069792,loc_069792,loc_069792,loc_069792
	dc.l loc_069792,loc_069792

;--------------------------
;Grab Programming
loc_0654e6:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	sf ($c3,a4)
	tst.b (1,a4)
	bpl.w loc_06551e
	btst #3,($2f6,a4)
	sne ($c3,a4)

loc_06551e:
	move.l #$60000,d2
	move.l #-$30000,d3
	jsr loc_02a59c
	lea loc_065578(pc),a0
	jsr loc_02a554

loc_06553a:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.w loc_06555c
	sf ($b6,a4)
	tst.b ($c3,a4)
	beq.w loc_06555c
	not.b ($208,a4)
	not.b ($208,a3)

loc_06555c:
	btst #2,($2e1,a4)
	beq.b loc_06553a
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_065578:
	dc.l loc_068a14,loc_068a88,loc_068afc,loc_068b70
	dc.l loc_068bde,loc_068c4c,loc_068cc0,loc_068d2e
	dc.l loc_068da2,loc_068e16
	dc.l loc_068a14,loc_068a14,loc_068a14,loc_068a14
	dc.l loc_068a14,loc_068a14

;--------------------------
;Air Grab
loc_0655b8:
	st ($24a,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	move.l #-$20000,d2
	move.l #-$60000,d3
	jsr loc_02a59c
	lea loc_065688(pc),a0
	jsr loc_02a554
	clr.l ($216,a4)
	clr.l ($21a,a4)

loc_0655ea:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_0655ea
	sf ($b6,a4)
	move.l #$10000,($216,a4)
	move.l #-$69000,($21a,a4)

loc_06560a:
	jsr loc_02269c
	addi.l #$7000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_06560a
	movea.l #loc_068f3a,a0
	clr.w d0
	jsr loc_0226f0
	clr.l ($216,a4)
	clr.l ($21a,a4)
	lea loc_0656c8(pc),a0
	jsr loc_02a554
	jsr loc_02a702

loc_065646:
	jsr loc_02269c
	btst #0,($2e1,a4)
	beq.b loc_065646
	clr.w ($2bc,a4)
	move.l #-$20000,($216,a4)
	move.l #-$a1000,($21a,a4)

loc_065668:
	jsr loc_02269c
	addi.l #$7000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_065668
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_065688:
	dc.l loc_068fb8,loc_06903c,loc_0690c0,loc_069144
	dc.l loc_0691c2,loc_069240,loc_0692c4,loc_069342
	dc.l loc_0693c6,loc_06944a,loc_068fb8,loc_068fb8
	dc.l loc_068fb8,loc_068fb8,loc_068fb8,loc_068fb8

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0656c8:
	dc.l loc_069008,loc_06908c,loc_069110,loc_069194
	dc.l loc_069212,loc_069290,loc_069314,loc_069392
	dc.l loc_069416,loc_06949a,loc_069008,loc_069008
	dc.l loc_069008,loc_069008,loc_069008,loc_069008

;--------------------------
loc_065708:
	st ($24a,a4)

loc_06570c:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_06570c
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_065724:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	move.w ($60,a4),($68,a4)
	jsr loc_02816c
	bmi.w loc_0659b0
	sf ($67,a4)
	move.w #3,($6a,a4)
	tst.b ($66,a4)
	bne.b loc_06576e
	movea.l #loc_0681ae,a0
	clr.w d0
	jsr loc_027e70
	move.l #$4000,($36,a4)
	move.l #-$6000,($3a,a4)
	bra.b loc_06578c

;--------------------------
loc_06576e
	movea.l #loc_068268,a0
	clr.w d0
	jsr loc_027e70
	move.l #$c000,($36,a4)
	move.l #0,($3a,a4)

loc_06578c:
	move.l #$600000,d2
	move.l #-$380000,d3
	jsr loc_0282ea

loc_06579e:
	tst.b ($9b,a4)
	bne.w loc_06591e
	subq.w #1,($6a,a4)
	bmi.w loc_06582a
	move.w ($6a,a4),d0
	subq.w #1,d0
	bmi.w loc_0657fa
	subq.w #1,d0
	bmi.w loc_0657ca
	move.l #loc_0659be,($9c,a4)
	bra.w loc_06585c

;--------------------------
loc_0657ca:
	move.l #loc_0659be,($9c,a4)
	jsr loc_02805e
	bne.w loc_06591e
	move.l #loc_0659c6,($9c,a4)
	jsr loc_028112
	bne.w loc_0658b4
	move.l #loc_0659be,($9c,a4)
	bra.w loc_06585c

;--------------------------
loc_0657fa:
	move.l #loc_0659ce,($9c,a4)
	jsr loc_02805e
	bne.w loc_06591e
	move.l #loc_0659d6,($9c,a4)
	jsr loc_028112
	bne.w loc_0658b4
	move.l #loc_0659ce,($9c,a4)
	bra.w loc_06585c

;--------------------------
loc_06582a:
	move.l #loc_0659de,($9c,a4)
	jsr loc_02805e
	bne.w loc_06591e
	move.l #loc_0659e6,($9c,a4)
	jsr loc_028112
	bne.w loc_0658b4
	move.l #loc_0659de,($9c,a4)
	jsr loc_027e48

loc_06585c:
	move.w ($68,a4),($60,a4)
	not.b ($67,a4)
	beq.b loc_06586c
	addq.b #4,($60,a4)

loc_06586c:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	tst.b ($249,a3)
	bne.w loc_065960
	btst #3,($2e1,a3)
	bne.w loc_0658b0
	jsr loc_027ea4
	btst #2,($53,a4)
	bne.w loc_065960

loc_0658b0:
	bra.w loc_06579e

;--------------------------
loc_0658b4:
	jsr loc_0281fa
	jsr loc_028344
	bclr #6,($25e,a3)
	movea.l ($28,a4),a3
	move.b #1,($275,a3)
	clr.l ($9c,a4)
	move.w #$1885,d0
	jsr loc_02301a
	move.w ($68,a4),($60,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_028344
	move.b ($249,a3),d0
	movea.l ($28,a4),a3
	tst.b d0
	beq.w loc_065960
	bra.w loc_06594e

;--------------------------
loc_06591e:
	clr.l ($9c,a4)
	move.w #$1885,d0
	jsr loc_02301a
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3

loc_06594e:
	movea.l #loc_06837a,a0
	clr.w d0
	jsr loc_027e70
	bra.w loc_065972

;--------------------------
loc_065960:
	clr.l ($9c,a4)
	movea.l #loc_0683dc,a0
	clr.w d0
	jsr loc_027e70

loc_065972:
	st ($bb,a3)

loc_065976:
	move.w ($68,a4),($60,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_065976
	bra.w loc_0659b8

;--------------------------
loc_0659b0:
	clr.l ($9c,a4)
	st ($bb,a3)

loc_0659b8:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0659be:
	dc.w $0000,$0018,$ffd0,$0000

loc_0659c6:
	dc.w $0000,$0018,$ffe0,$0000

loc_0659ce:
	dc.w $fff0,$0018,$ffd0,$0010

loc_0659d6:
	dc.w $fff8,$0010,$fff0,$0010

loc_0659de:
	dc.w $ffe0,$0018,$ffd0,$0018

loc_0659e6:
	dc.w $fff0,$0008,$fff8,$0018

;-------------------------
loc_0659ee:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_065b76
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.l #$180000,d2
	clr.l d3
	jsr loc_0282ea
	move.l #$40000,($36,a4)
	clr.w ($66,a4)
	movea.l #loc_069610,a0
	clr.w d0
	jsr loc_027e70

loc_065a36:
	tst.b ($9b,a4)
	bne.w loc_065a4e
	move.l #loc_065b7c,($9c,a4)
	jsr loc_02805e
	beq.b loc_065a5a

loc_065a4e:
	subi.l #$18000,($36,a4)
	ble.w loc_065b10

loc_065a5a:
	sf ($9b,a4)
	move.l #loc_065b84,($9c,a4)
	jsr loc_028112
	bne.w loc_065ac0
	move.l #loc_065b7c,($9c,a4)
	jsr loc_027e48
	addq.w #1,($66,a4)
	andi.w #3,($66,a4)
	beq.b loc_065a9a
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2

loc_065a9a:
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	btst #2,($53,a4)
	bne.w loc_065b24
	bra.w loc_065a36

loc_065ac0:
	jsr loc_0281fa
	jsr loc_028344
	bclr #6,($25e,a3)
	bclr #4,($25e,a3)
	movea.l ($28,a4),a3
	st ($c2,a3)
	clr.l ($9c,a4)
	move.w #$1885,d0
	jsr loc_02301a
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3

loc_065b10:
	clr.l ($9c,a4)
	movea.l #loc_0696ba,a0
	clr.w d0
	jsr loc_027e70
	bra.b loc_065b36

loc_065b24:
	clr.l ($9c,a4)
	movea.l #loc_0696ba,a0
	clr.w d0
	jsr loc_027e70

loc_065b36:
	addq.w #1,($66,a4)
	andi.w #3,($66,a4)
	beq.b loc_065b52
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2

loc_065b52:
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_065b36
	bra.w loc_065b76

loc_065b76:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_065b7c:
	dc.w $ff80,$0000,$fff0,$0020

loc_065b84:
	dc.w $ffb0,$ffd8,$fff4,$0014

;-------------------------
loc_065b8c:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.b ($208,a3),($2c,a4)
	movea.l ($66,a4),a0
	clr.w d0
	jsr loc_027e70
	clr.l ($66,a4)

loc_065bb8:
	tst.b ($249,a3)
	bne.w loc_065c32
	subq.w #1,($6a,a4)
	bmi.w loc_065c32
	tst.b ($6c,a4)
	bne.b loc_065be4
	jsr loc_028344
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	movea.l ($28,a4),a3

loc_065be4:
	addq.w #1,($6e,a4)
	andi.w #3,($6e,a4)
	beq.b loc_065c00
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2

loc_065c00:
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	tst.l ($66,a4)
	beq.b loc_065c2a
	movea.l ($66,a4),a0
	clr.w d0
	jsr loc_027e70
	clr.l ($66,a4)
	bra.b loc_065c30

loc_065c2a:
	jsr loc_027ea4

loc_065c30:
	bra.b loc_065bb8

loc_065c32:
	jmp loc_027de6

loc_065c38:
	movea.l ($28,a4),a3
	clr.w ($6a,a4)
	movea.l ($66,a4),a0
	clr.w d0
	jsr loc_027e70

loc_065c4c:
	move.w ($2ee,a3),($60,a4)
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.b ($208,a3),($2c,a4)
	move.w ($6a,a4),d0
	lsl.w #2,d0
	move.w d0,d1
	jsr loc_002a72
	exg d0,d1
	add.w d0,d0
	jsr loc_002a72
	muls.w #$300,d0
	muls.w #$600,d1
	add.l d0,($2e,a4)
	add.l d1,($32,a4)
	addq.w #1,($6a,a4)
	move.w ($6a,a4),d0
	andi.w #3,d0
	beq.b loc_065caa
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2

loc_065caa:
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_065c4c

loc_065cc4:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_065cca:
	dc.l $00024000,$fffe0000,$00000000,$00020000
	dc.l $fffe0000,$fff5f000,$00007000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_065ce6:
	dc.l loc_065cf2,loc_065cfe,loc_065d0a

loc_065cf2:
	dc.w $8039,$fc00
	dc.w $803b,$d000,$f40a,$0000

loc_065cfe:
	dc.w $8039,$fe02
	dc.w $803b,$e000,$f40a,$0000

loc_065d0a:
	dc.w $8039,$fd01
	dc.w $803b,$d0f0,$f60a,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Ai?
loc_065d16:
	dc.l loc_060bca,loc_060bca,loc_060eb2,loc_061388
	dc.l loc_061b94,loc_061e56,loc_06206c,loc_062148

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_065d36:
	dc.l loc_066030,loc_06611e,loc_0661c0,loc_066284
	dc.l loc_066158,loc_06617c,loc_0661b0,loc_06618c
	dc.l loc_066348,loc_066362,loc_06639a,loc_0663ba
	dc.l loc_0663da,loc_066382,loc_0663fc,loc_0663fc
	dc.l loc_0663fc,loc_066412,loc_066412,loc_066412
	dc.l loc_066422,loc_066422,loc_066422,loc_066432
	dc.l loc_066432,loc_066432,loc_066442,loc_066442
	dc.l loc_066442,loc_06644c,loc_06644c,loc_06644c
	dc.l loc_066456,loc_06654a,loc_066466,loc_06654e
	dc.l loc_06676c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_065dca:
	dc.l loc_028468,loc_028562,loc_02848c,loc_028572
	dc.l loc_02861e,loc_0286fc,loc_0287a6,loc_0287e0
	dc.l loc_02881a,loc_028a02,loc_028958,loc_028a30
	dc.l loc_028ae2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_065dfe:
	dc.l loc_066776,loc_066776,loc_066776,loc_066786
	dc.l loc_066786,loc_066786,loc_066790,loc_066790
	dc.l loc_0667ae,loc_0667ae,loc_0667cc,loc_0667cc
	dc.l loc_0667fa,loc_0667fa,loc_066820,loc_066820
	dc.l loc_06683e,loc_06683e,loc_06685c,loc_06685c
	dc.l loc_06688a,loc_06688a,loc_0668b0,loc_0668b0
	dc.l loc_0668ce,loc_0668ce,loc_0668ec,loc_0668ec
	dc.l loc_06691a,loc_06691a,loc_066940,loc_066974
	dc.l loc_066940,loc_066974,loc_0669a2,loc_0669e2
	dc.l loc_066a00,loc_066a40,loc_066a00,loc_066a40
	dc.l loc_066a00,loc_066a80,loc_066a80,loc_066a9e
	dc.l loc_066aae,loc_066aee,loc_066b20,loc_066bda
	dc.l loc_066b28,loc_066bf6,loc_066bf6,loc_066bf6
	dc.l loc_066c3c,loc_066c3c,loc_066c6a,loc_066cba
	dc.l loc_066d04,loc_066d04,loc_066d2e,loc_066d2e
	dc.l loc_066d74,loc_066d74,loc_066dd6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_065efa:
	dc.l $00000000
	dc.l loc_066de0,loc_066e56,loc_066ee4,loc_066f7c	;01,02,03,04
	dc.l loc_067000,loc_0670a8,loc_067158,loc_06724c	;05,06,07,08
	dc.l loc_067304,loc_0673a4,loc_0674c6,loc_0675e6	;09,0a,0b,0c
	dc.l loc_0676fe,loc_067756,loc_0677b4,loc_067832	;0d,0e,0f,10
	dc.l loc_0678b6,loc_067976,loc_067a0a,loc_067a98	;11,12,13,14
	dc.l loc_067aee,loc_067c3a,loc_067d92,loc_067f14	;15,16,17,18
	dc.l loc_067d80,loc_067f02,AlsPoison,loc_06845c		;19,1a,1b,1c
	dc.l loc_06844a,AlsSAnubis,AlsPhRmpge,loc_068916	;1d,1e,1f,20
	dc.l loc_068e8a,loc_068722,loc_06881c,loc_069db8	;21,22,23,24

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_065f8e:
	dc.w $0008,$08c1,$0000,$8000
	dc.w $0004,$0931,$0000,$8000
	dc.w $8007,$ffe8,$0000
	dc.w $0004,$0a19,$0000,$80ff,$ffe0,$0000,$0000
	dc.w $0004,$0a18,$0000,$80ff,$ffe0,$0000,$0000
	dc.w $0004,$0a17,$0000,$80ff,$ffe0,$0000,$0000

	dc.w $800a
	dc.l loc_065ff2

	dc.w $0020,$0a16,$0000,$80ff,$ffe0,$0000,$0000
	dc.w $8007,$0018,$0000
	dc.w $0004,$08e8,$0000,$8000
	dc.w $8001

loc_065ff2:
	dc.w $0004,$0a23,$7cff,$ffec,$0080,$0000
	dc.w $0004,$0a24,$7cff,$ffec,$0080,$0000
	dc.w $0008,$0a25,$7cff,$ffea,$0080,$0000
	dc.w $0008,$0a24,$7cff,$ffec,$0080,$0000
	dc.w $0008,$0a23,$7cff,$ffec,$0080,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066030:
	dc.w $8027,$ffe8,$0024
	dc.w $0004,$09c8,$0001,$80ff,$0000,$0004,$0000
	dc.w $0004,$09c9,$0001,$80ff,$0000,$0004,$0000
	dc.w $0005,$09ca,$0001,$80ff,$0000,$0004,$0000
	dc.w $0006,$09cb,$0001,$80ff,$0000,$0004,$0000
	dc.w $0008,$09cc,$0001,$80ff,$0000,$0004,$0000
	dc.w $0006,$09cd,$0001,$80ff,$0000,$0004,$0000
	dc.w $0005,$09ce,$0001,$80ff,$0000,$0004,$0000
	dc.w $0004,$09cf,$0001,$80ff,$0000,$0004,$0000
	dc.w $0004,$09d0,$0001,$80ff,$0000,$0004,$0000
	dc.w $0004,$09d1,$0001,$80ff,$0000,$0004,$0000
	dc.w $0005,$09d2,$0001,$80ff,$0000,$0004,$0000
	dc.w $0006,$09d3,$0001,$80ff,$0000,$0004,$0000
	dc.w $0008,$09c4,$0001,$80ff,$0000,$0004,$0000
	dc.w $0006,$09c5,$0001,$80ff,$0000,$0004,$0000
	dc.w $0005,$09c6,$0001,$80ff,$0000,$0004,$0000
	dc.w $0004,$09c7,$0001,$80ff,$0000,$0004,$0000
	dc.w $8000,$0000
	dc.l loc_066030

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06611e:
	dc.w $0002,$08db,$0002,$80ff,$0000,$0000,$0001
	dc.w $0002,$0929,$0002,$80ff,$0002,$0000,$0001
	dc.w $0002,$0929,$0002,$80ff,$fffe,$0000,$0000
	dc.w $0002,$08db,$0002,$8000
	dc.w $8000,$0000
	dc.l loc_066030

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066158:
	dc.w $8027,$ffe8,$0024
	dc.w $0002,$08fb,$0003,$80ff,$fffc,$0000,$0000
	dc.w $0002,$0a5b,$0004,$80ff,$fffe,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06617c:
	dc.w $8027,$ffe8,$0024
	dc.w $0004,$08d0,$0005,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06618c:
	dc.w $8027,$ffe8,$0024
	dc.w $0002,$0a5b,$0004,$80ff,$fffe,$0000,$0000
	dc.w $0002,$08fb,$0003,$80ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0661b0:
	dc.w $0006,$092a,$0006,$8000
	dc.w $8000,$0000
	dc.l loc_06617c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0661c0:
	dc.w $8027,$ffe0,$001c
	dc.w $0004,$09e3,$0007,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e4,$0007,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e5,$0007,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e6,$0007,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e7,$0007,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e8,$0007,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e9,$0007,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09dd,$0007,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09de,$0007,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09df,$0007,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e0,$0007,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e1,$0007,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e2,$0007,$80ff,$0000,$fffe,$0000
	dc.w $8000,$0000
	dc.l loc_0661c0

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066284:
	dc.w $8027,$ffe0,$001c
	dc.w $0004,$09e1,$0008,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e0,$0008,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09df,$0008,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09de,$0008,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09dd,$0008,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e9,$0008,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e8,$0008,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e7,$0008,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e6,$0008,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e5,$0008,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e4,$0008,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e3,$0008,$80ff,$0000,$fffe,$0000
	dc.w $0004,$09e2,$0008,$80ff,$0000,$fffe,$0000
	dc.w $8000,$0000
	dc.l loc_066284

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066348:
	dc.w $8003,$186f
	dc.w $8027,$ffe0,$001c
	dc.w $0001,$08fb,$0003,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066362:
	dc.w $8027,$ffe0,$001c
	dc.w $0008,$08fc,$0009,$7c00
	dc.w $0018,$08fd,$000a,$7c00
	dc.w $0010,$08fe,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066382:
	dc.w $8027,$ffe0,$001c
	dc.w $000a,$08fd,$000a,$7c00
	dc.w $0010,$08fe,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06639a:
	dc.w $8027,$ffe0,$001c
	dc.w $0008,$08fc,$0009,$7c00
	dc.w $0018,$08fd,$000a,$7c00
	dc.w $0010,$08fe,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0663ba:
	dc.w $8027,$ffe0,$001c
	dc.w $0008,$08fc,$0009,$7c00
	dc.w $0018,$08fd,$000a,$7c00
	dc.w $0010,$08fe,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0663da:
	dc.w $8003,$1870
	dc.w $8027,$ffe0,$001c
	dc.w $0002,$095a,$000c,$7c00
	dc.w $0002,$08fb,$0003,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0663fc:
	dc.w $8027,$fff0,$0014
	dc.w $0004,$09b5,$000d,$8400
	dc.w $8000,$0000
	dc.l loc_066412

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066412:
	dc.w $8027,$fff0,$0014
	dc.w $0004,$09b5,$000d,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066422:
	dc.w $8027,$fff0,$0014
	dc.w $0004,$09b5,$000d,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066432:
	dc.w $0004,$0930,$000e,$8400
	dc.w $8000,$0000
	dc.l loc_066442

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066442:
	dc.w $0004,$0930,$000e,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06644c:
	dc.w $0004,$0930,$000e,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066456:
	dc.w $8027,$ffe8,$0024
	dc.w $003c,$08c1,$0001,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066466:
	dc.w $0006,$0931,$0000,$8000
	dc.w $8007,$ffe8,$0000
	dc.w $0006,$0a19,$0000,$80ff,$ffe0,$0000,$0000
	dc.w $0006,$0a18,$0000,$80ff,$ffe0,$0000,$0000
	dc.w $0006,$0a17,$0000,$80ff,$ffe0,$0000,$0000
	dc.w $0006,$0a1c,$0000,$80ff,$ffe0,$0000,$0000
	dc.w $0006,$0a1d,$0000,$80ff,$ffe0,$0000,$0000
	dc.w $0006,$0a1e,$0000,$80ff,$ffe0,$0000,$0000
	dc.w $0006,$0a1f,$0000,$80ff,$ffe0,$0000,$0000
	dc.w $0006,$0a20,$0000,$80ff,$ffe0,$0000,$0000
	dc.w $802b,$1c86
	dc.w $0006,$0a21,$0000,$80ff,$ffe0,$0000,$0000

	dc.w $800a
	dc.l loc_06650c

	dc.w $003c,$0a22,$0000,$80ff,$ffe0,$0000,$0000
	dc.w $8001

loc_06650c:
	dc.w $0004,$0a23,$7cff,$ffec,$0078,$0000
	dc.w $0004,$0a24,$7cff,$ffec,$0078,$0000
	dc.w $0008,$0a25,$7cff,$ffea,$0078,$0000
	dc.w $0008,$0a24,$7cff,$ffec,$0078,$0000
	dc.w $0008,$0a23,$7cff,$ffec,$0078,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06654a:
	dc.w $802a,$002c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06654e:
	dc.w $0004,$0929,$0000,$80ff,$fffe,$0000,$0000
	dc.w $0007,$0a2c,$0000,$80ff,$0000,$0000,$0001

	dc.w $8010,$002f,$0004
	dc.l loc_06661e

	dc.w $0008,$0a2d,$0000,$80ff,$0000,$0000,$0001
	dc.w $000a,$0a2e,$0000,$80ff,$0000,$0000,$0001
	dc.w $0008,$0a2d,$0000,$80ff,$0000,$0000,$0001
	dc.w $0007,$0a2c,$0000,$8000

	dc.w $8010,$002f,$0004
	dc.l loc_066668

	dc.w $0008,$0a2d,$0000,$8000
	dc.w $000a,$0a2e,$0000,$8000
	dc.w $0008,$0a2d,$0000,$8000
	dc.w $0007,$0a2c,$0000,$8000
	dc.w $8007,$ffe8,$0000
	dc.w $802b,$1c87
	dc.w $0008,$08ea,$0000,$80ff,$fff0,$0000,$0000
	dc.w $8007,$fff0,$0000
	dc.w $0014,$0a22,$0000,$80ff,$ffe0,$0000,$0000

	dc.w $800a
	dc.l loc_0666b2
	dc.w $800a
	dc.l loc_0666f0
	dc.w $800a
	dc.l loc_06672e

	dc.w $003c,$0a22,$0000,$80ff,$ffe0,$0000,$0000
	dc.w $8001

loc_06661e:
	dc.w $0004,$0a29,$7cff,$ffd8,$0048,$0e00
	dc.w $0004,$0a28,$7cff,$ffd8,$0048,$0e00
	dc.w $0012,$0a26,$7cff,$ffd0,$0048,$0e00
	dc.w $0028,$0a27,$7cff,$ffd0,$0048,$0e00
	dc.w $0008,$0a2b,$7cff,$ffd0,$0048,$0e00
	dc.w $003c,$0a2a,$7cff,$ffe8,$0058,$0e00
	dc.w $8001

loc_066668:
	dc.w $0004,$0a29,$7cff,$0028,$0048,$0e01
	dc.w $0004,$0a28,$7cff,$0028,$0048,$0e01
	dc.w $0012,$0a26,$7cff,$0030,$0048,$0e01
	dc.w $0007,$0a27,$7cff,$0030,$0048,$0e01
	dc.w $0008,$0a28,$7cff,$0010,$0048,$0e00
	dc.w $003c,$0a2a,$7cff,$0028,$0058,$0e00
	dc.w $8001

loc_0666b2:
	dc.w $0004,$0a23,$7cff,$fff0,$0082,$0000
	dc.w $0004,$0a24,$7cff,$fff0,$0082,$0000
	dc.w $0008,$0a25,$7cff,$ffee,$0082,$0000
	dc.w $0008,$0a24,$7cff,$fff0,$0082,$0000
	dc.w $0008,$0a23,$7cff,$fff0,$0082,$0000
	dc.w $8001

loc_0666f0:
	dc.w $0004,$0a23,$7cff,$0018,$0064,$0000
	dc.w $0004,$0a24,$7cff,$0018,$0064,$0000
	dc.w $0008,$0a25,$7cff,$0016,$0064,$0000
	dc.w $0008,$0a24,$7cff,$0018,$0064,$0000
	dc.w $0008,$0a23,$7cff,$0018,$0064,$0000
	dc.w $8001

loc_06672e:
	dc.w $0004,$0a23,$7cff,$ffd8,$0064,$0000
	dc.w $0004,$0a24,$7cff,$ffd8,$0064,$0000
	dc.w $0008,$0a25,$7cff,$ffd6,$0064,$0000
	dc.w $0008,$0a24,$7cff,$ffd8,$0064,$0000
	dc.w $0008,$0a23,$7cff,$ffd8,$0064,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06676c:
	dc.w $000a,$0967,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066776:
	dc.w $8027,$fff0,$0014
	dc.w $0004,$09b6,$000d,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066786:
	dc.w $0004,$09b7,$000e,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066790:
	dc.w $802d,$ffe0,$ff90
	dc.w $8027,$ffd8,$0014
	dc.w $0006,$09ad,$000f,$8400
	dc.w $0006,$09ac,$0010,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0667ae:
	dc.w $802d,$ffe0,$ff90
	dc.w $8027,$ffd8,$0014
	dc.w $000c,$09ad,$000f,$8400
	dc.w $0006,$09ac,$0010,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0667cc:
	dc.w $802d,$ffdc,$ff94
	dc.w $8027,$ffd8,$0014
	dc.w $0002,$09ad,$000f,$8400
	dc.w $000a,$09ae,$000f,$8400
	dc.w $0006,$09ad,$000f,$8400
	dc.w $0006,$09ac,$0010,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0667fa:
	dc.w $802d,$ffdc,$ff98
	dc.w $8027,$ffd8,$0014
	dc.w $0012,$09ae,$000f,$8400
	dc.w $0006,$09ad,$000f,$8400
	dc.w $0006,$09ac,$0010,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066820:
	dc.w $802e,$fff4,$ffa6
	dc.w $8027,$ffd8,$0014
	dc.w $0005,$09b0,$0011,$8400
	dc.w $0005,$09af,$0012,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06683e:
	dc.w $802e,$fff4,$ffa6
	dc.w $8027,$ffd8,$0014
	dc.w $000c,$09b0,$0011,$8400
	dc.w $0006,$09af,$0012,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06685c:
	dc.w $802e,$fff2,$ffa8
	dc.w $8027,$ffd8,$0014
	dc.w $0002,$09b0,$0011,$8400
	dc.w $000a,$09b1,$0011,$8400
	dc.w $0006,$09b0,$0011,$8400
	dc.w $0006,$09af,$0012,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06688a:
	dc.w $802e,$ffe6,$ffa6
	dc.w $8027,$ffd8,$0014
	dc.w $0010,$09b1,$0011,$8400
	dc.w $0006,$09b0,$0011,$8400
	dc.w $0006,$09af,$0012,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0668b0:
	dc.w $802f,$ffe8,$ffba
	dc.w $8027,$ffd8,$0014
	dc.w $0006,$09b3,$0013,$8400
	dc.w $0006,$09b2,$0014,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0668ce:
	dc.w $802f,$ffe8,$ffba
	dc.w $8027,$ffd8,$0014
	dc.w $000c,$09b3,$0013,$8400
	dc.w $0006,$09b2,$0014,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0668ec:
	dc.w $802f,$ffe4,$ffb8
	dc.w $8027,$ffd8,$0014
	dc.w $0002,$09b3,$0013,$8400
	dc.w $000a,$09b4,$0013,$8400
	dc.w $0006,$09b3,$0013,$8400
	dc.w $0006,$09b2,$0014,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06691a:
	dc.w $802f,$ffd8,$ffb6
	dc.w $8027,$ffd8,$0014
	dc.w $0012,$09b4,$0013,$8400
	dc.w $0006,$09b3,$0013,$8400
	dc.w $0006,$09b2,$0014,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066940:
	dc.w $802e,$0004,$ffa8
	dc.w $0006,$09ec,$0015,$84ff,$fff8,$fff8,$0000
	dc.w $0006,$09af,$0015,$84ff,$fff8,$0000,$0000
	dc.w $0006,$08fd,$0016,$8400
	dc.w $0006,$08fe,$0016,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066974:
	dc.w $802d,$ffe0,$ff90
	dc.w $0006,$09ea,$0015,$84ff,$0008,$0000,$0000
	dc.w $0006,$09ac,$0015,$8400
	dc.w $0006,$08fd,$0016,$8400
	dc.w $0006,$08fe,$0016,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0669a2:
	dc.w $802e,$0002,$ff9e
	dc.w $0005,$09da,$0015,$84ff,$fff0,$0008,$0000
	dc.w $0005,$0939,$0015,$84ff,$0008,$0008,$0000
	dc.w $0005,$09d7,$0017,$84ff,$0008,$0008,$0000
	dc.w $0005,$09d8,$0017,$84ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0669e2:
	dc.w $0004,$09d9,$0018,$7cff,$0000,$0008,$0000
	dc.w $0009,$093f,$0018,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066a00:
	dc.w $8030,$fff0,$ffb0
	dc.w $0008,$09ed,$0015,$7cff,$fff0,$fff8,$0000
	dc.w $0004,$0941,$0015,$7cff,$fff0,$0000,$0000
	dc.w $0004,$0939,$0017,$7cff,$0008,$fff8,$0000
	dc.w $0004,$09d7,$0017,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066a40:
	dc.w $8030,$fff0,$ffb0
	dc.w $0008,$09eb,$0015,$7cff,$0008,$fff8,$0000
	dc.w $0004,$0941,$0015,$7cff,$fff0,$0000,$0000
	dc.w $0004,$0939,$0017,$7cff,$0008,$fff8,$0000
	dc.w $0004,$09d7,$0017,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066a80:
	dc.w $0004,$09d8,$0018,$7cff,$0000,$0008,$0000
	dc.w $0010,$09d9,$0018,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066a9e:
	dc.w $0010,$093f,$0018,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066aae:
	dc.w $8030,$fff8,$ff90
	dc.w $0013,$0a06,$0015,$7cff,$0008,$0000,$0001
	dc.w $0004,$0941,$0015,$7cff,$fff0,$0000,$0000
	dc.w $0004,$0939,$0017,$7cff,$0008,$fff8,$0000
	dc.w $0004,$09d7,$0017,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066aee:
	dc.w $8030,$ffe8,$ffc8
	dc.w $0002,$0939,$0015,$7cff,$0008,$0008,$0000
	dc.w $0002,$09d7,$0017,$7cff,$0008,$0008,$0000
	dc.w $0002,$09d8,$0017,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066b20:
	dc.w $8000,$0000
	dc.l loc_066940

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Quick get up
loc_066b28:
	dc.w $8037
	dc.l loc_065708

	dc.w $8002,$188d
	dc.w $8043,$0028
	dc.w $8044,$0030
	dc.w $8029
	dc.w $804f,$0008,$0020,$0018
	dc.w $0008,$093f,$0000,$7cff,$0000,$0008,$0f00
	dc.w $8006,$0000
	dc.w $8024
	dc.w $804e,$fff4,$a000,$0000,$b600
	dc.w $803b,$0000,$f40a
	dc.w $000e,$0000,$0000,$7c00
	dc.w $803b,$d000,$f40a
	dc.w $8028
	dc.w $0001,$0946,$0000,$7c00
	dc.w $0002,$0000,$0000,$7c00
	dc.w $0001,$0946,$0000,$7c00
	dc.w $0001,$0000,$0000,$7c00
	dc.w $0001,$0946,$0000,$7c00
	dc.w $0001,$0945,$0000,$7c00
	dc.w $0001,$0000,$0000,$7c00
	dc.w $0002,$0945,$0000,$7c00
	dc.w $0002,$0944,$0000,$7c00
	dc.w $803a,$df00
	dc.w $0003,$0985,$0000,$7c00
	dc.w $803a,$0000
	dc.w $0003,$0985,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066bda:
	dc.w $8003,$1870
	dc.w $0002,$095a,$0000,$7c00
	dc.w $0002,$08fb,$0000,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066bf6:
	dc.w $0006,$0940,$0000,$7cff,$fff0,$fffc,$0000
	dc.w $0006,$0941,$0000,$7cff,$fff8,$0000,$0000
	dc.w $0006,$09ac,$0000,$7c00
	dc.w $0002,$0942,$0000,$7c00
	dc.w $803a,$df00
	dc.w $0002,$0942,$0000,$7c00
	dc.w $803a,$0000
	dc.w $0002,$0942,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066c3c:
	dc.w $0006,$0940,$0000,$7cff,$fff0,$fffc,$0000
	dc.w $0006,$0941,$0000,$7cff,$fff8,$0000,$0000
	dc.w $0006,$09ac,$0000,$7c00
	dc.w $0006,$0942,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066c6a:
	dc.w $0008,$0a0a,$0019,$7c00
	dc.w $0008,$0a0b,$0019,$7c00
	dc.w $0008,$0a0c,$0019,$7c00
	dc.w $0008,$0a0d,$0019,$7c00
	dc.w $0008,$0a0e,$0019,$7c00
	dc.w $0008,$0a0f,$0019,$7c00
	dc.w $0008,$0a10,$0019,$7c00
	dc.w $0008,$0a11,$0019,$7c00
	dc.w $0008,$0a12,$0019,$7c00
	dc.w $8000,$0000
	dc.l loc_066c6a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066cba:
	dc.w $0004,$0931,$0000,$7800
	dc.w $0004,$0986,$0000,$7800
	dc.w $0004,$0964,$0000,$7800
	dc.w $0004,$0965,$0000,$7800
	dc.w $0004,$0966,$0000,$7800
	dc.w $0004,$0965,$0000,$7800
	dc.w $803a,$df00
	dc.w $0003,$0964,$0000,$7800
	dc.w $803a,$0000
	dc.w $0003,$0931,$0000,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066d04:
	dc.w $8030,$fff0,$ffa8

loc_066d0a:
	dc.w $0003,$09b8,$0015,$7cff,$0000,$0000,$0500
	dc.w $0001,$09b9,$0015,$7cff,$0000,$0000,$0500
	dc.w $8000,$0000
	dc.l loc_066d0a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066d2e:
	dc.w $8030,$fff0,$ffa8

loc_066d34:
	dc.w $0002,$0936,$0015,$7cff,$0000,$0000,$0600
	dc.w $0002,$0936,$0015,$7cff,$fffd,$0000,$0200
	dc.w $0002,$0936,$0015,$7cff,$0000,$0000,$0400
	dc.w $0002,$0936,$0015,$7cff,$0003,$0000,$0700
	dc.w $8000,$0000
	dc.l loc_066d34

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066d74:
	dc.w $8030,$fff0,$ffa8

loc_066d7a
	dc.w $0002,$0936,$0015,$7cff,$0000,$0002,$0800
	dc.w $0002,$0936,$0015,$7cff,$0002,$ffff,$0900
	dc.w $0002,$0936,$0015,$7cff,$fffe,$0001,$0800
	dc.w $0002,$0936,$0015,$7cff,$0000,$fffe,$0900
	dc.w $0002,$0936,$0015,$7cff,$0002,$0001,$0800
	dc.w $0002,$0936,$0015,$7cff,$fffe,$ffff,$0900
	dc.w $8000,$0000
	dc.l loc_066d7a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066dd6:
	dc.w $0004,$09ac,$0019,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066de0:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_066e0e

	dc.w $803e,$0843,$0600
	dc.w $803f,$1004,$0604,$1003
	dc.w $8040,$0a02,$0507,$06ff
	dc.w $8041,$0401,$082c

	dc.w $8036
	dc.l loc_065cf2

loc_066e0e:
	dc.w $8005,$187a
	dc.w $0002,$09c1,$001a,$7c00
	dc.w $8027,$ffe8,$001c
	dc.w $0003,$09c2,$001b,$7800
	dc.w $8045,$0001
	dc.w $8027,$ffe8,$004c
	dc.w $0007,$09c3,$001c,$78ff,$fffa,$0000,$0000
	dc.w $8027,$ffe8,$0024
	dc.w $0006,$08e5,$001d,$7cff,$fffe,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066e56:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_066e84

	dc.w $803e,$0823,$0500
	dc.w $803f,$0e04,$0a03,$0e03
	dc.w $8040,$0802,$0506,$09ff
	dc.w $8041,$0401,$1230

	dc.w $8036
	dc.l loc_065cf2

loc_066e84:
	dc.w $8004,$187a
	dc.w $0003,$08db,$001e,$7c00
	dc.w $8027,$ffe8,$0044
	dc.w $0002,$08dc,$001f,$7c00
	dc.w $8045,$0001
	dc.w $8027,$ffe8,$0064
	dc.w $0001,$08dd,$0020,$78ff,$fffc,$0000,$0000
	dc.w $803e,$0823,$01ff
	dc.w $0005,$08dd,$0020,$78ff,$fffc,$0000,$0000
	dc.w $8027,$ffe8,$0044
	dc.w $0004,$08dc,$001f,$7c00
	dc.w $8028
	dc.w $0005,$08db,$001e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066ee4:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_066f12

	dc.w $803e,$0823,$0600
	dc.w $803f,$0e04,$0403,$0e03
	dc.w $8040,$0802,$0506,$0aff
	dc.w $8041,$0201,$1437

	dc.w $8036
	dc.l loc_065cfe

loc_066f12:
	dc.w $8004,$187a
	dc.w $8027,$ffe8,$001c
	dc.w $0003,$08d1,$0021,$7c00
	dc.w $8027,$ffe8,$0044
	dc.w $0002,$08d2,$0022,$7c00
	dc.w $8045,$0001
	dc.w $8027,$ffe8,$0064
	dc.w $0001,$08d3,$0023,$78ff,$fffe,$0000,$0000
	dc.w $803e,$0823,$02ff
	dc.w $0005,$08d3,$0023,$78ff,$fffe,$0000,$0000
	dc.w $8027,$ffe8,$0044
	dc.w $0006,$08d2,$0022,$7c00
	dc.w $8027,$ffe8,$001c
	dc.w $0004,$08d1,$0021,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_066f7c:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_066faa

	dc.w $803e,$0a2b,$0200
	dc.w $803f,$1004,$0604,$1003
	dc.w $8040,$0a02,$0406,$0cff
	dc.w $8041,$0201,$0826

	dc.w $8036
	dc.l loc_065cf2

loc_066faa:
	dc.w $8004,$187a
	dc.w $8027,$ffe0,$000c
	dc.w $0002,$08e8,$0024,$7c00
	dc.w $8027,$ffd4,$ffe4
	dc.w $0002,$08ea,$0025,$7800
	dc.w $8027,$ffe0,$0044
	dc.w $8045,$0002
	dc.w $0006,$08eb,$0026,$78ff,$fffc,$0000,$0000
	dc.w $8027,$ffe8,$0014
	dc.w $0006,$08ea,$0025,$7800
	dc.w $8027,$ffe0,$000c
	dc.w $0006,$08e8,$0024,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_067000:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_06702e

	dc.w $803e,$082b,$0600
	dc.w $803f,$0e04,$0803,$0e03
	dc.w $8040,$0602,$0604,$0eff
	dc.w $8041,$0201,$143a

	dc.w $8036
	dc.l loc_065cf2

loc_06702e:
	dc.w $8004,$187a
	dc.w $8027,$ffd4,$ffe4
	dc.w $0002,$08e9,$0027,$7c00
	dc.w $8027,$ffe8,$0014
	dc.w $0002,$08ea,$0028,$7800
	dc.w $8027,$ffe8,$003c
	dc.w $0002,$09bf,$0029,$7800
	dc.w $8045,$0002
	dc.w $8027,$fff0,$0074
	dc.w $0001,$08fa,$002a,$7800
	dc.w $803e,$082b,$02ff
	dc.w $0003,$08fa,$002a,$7800
	dc.w $8027,$ffe8,$003c
	dc.w $0004,$09bf,$0029,$7800
	dc.w $8027,$ffe8,$0014
	dc.w $0005,$08ea,$0028,$7800
	dc.w $8027,$ffe0,$000c
	dc.w $0005,$08e8,$002b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0670a8:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0670d6

	dc.w $803e,$0a2b,$0600
	dc.w $803f,$0e04,$0403,$0e03
	dc.w $8040,$0800,$0508,$08ff
	dc.w $8041,$0101,$e031

	dc.w $8036
	dc.l loc_065cfe

loc_0670d6:
	dc.w $8004,$187a
	dc.w $8027,$ffe8,$002c
	dc.w $0003,$091d,$002c,$7cff,$fffa,$0004,$0000
	dc.w $0002,$08e6,$002d,$7c00
	dc.w $8045,$0001
	dc.w $801a,$0002,$0008
	dc.w $8007,$0010,$0000
	dc.w $8027,$ffd0,$0054
	dc.w $0001,$08e7,$002e,$78ff,$0000,$0000,$0000
	dc.w $803e,$0a2b,$02ff
	dc.w $0007,$08e7,$002e,$78ff,$0000,$0000,$0000
	dc.w $8007,$fff0,$0000
	dc.w $8027,$ffe8,$002c
	dc.w $0004,$08e6,$002d,$7c00
	dc.w $8027,$ffe8,$0014
	dc.w $0004,$0953,$002f,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_067158:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_06718c

	dc.w $803e,$0865,$0600
	dc.w $803f,$180a,$0a06,$180c
	dc.w $8040,$0802,$0508,$0fff
	dc.w $8041,$0201,$1037
	dc.w $803c,$0000
	dc.w $803b,$d000,$f812,$0000

loc_06718c:
	dc.w $8004,$189e
	dc.w $8011,$001c,$0004,$f000,$f800
	dc.w $8027,$0008,$0034
	dc.w $0002,$08de,$0030,$8800
	dc.w $803b,$d000,$f816
	dc.w $8027,$fff8,$0034
	dc.w $801a,$0002,$0011
	dc.w $8007,$0010,$0000
	dc.w $8011,$001d,$0005,$3800,$10f4,$ff00
	dc.w $0003,$08df,$0031,$88ff,$0014,$0000,$0000
	dc.w $8045,$0004
	dc.w $8027,$0008,$0044
	dc.w $8007,$0008,$0000
	dc.w $803b,$d000,$0016
	dc.w $0008,$08e0,$0032,$78ff,$0010,$0000,$0000
	dc.w $8007,$fff8,$0000
	dc.w $803b,$d000,$f816
	dc.w $8027,$fff8,$0034
	dc.w $0006,$08df,$0031,$88ff,$0014,$0000,$0000
	dc.w $8007,$fff0,$0000
	dc.w $8027,$0008,$0034
	dc.w $803b,$d000,$f812
	dc.w $0005,$08de,$0030,$8800
	dc.w $803c,$0000
	dc.w $8027,$fff0,$002c
	dc.w $0004,$08ec,$0033,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06724c:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_06727a

	dc.w $803e,$0865,$0500
	dc.w $803f,$1a0a,$1206,$1a0c
	dc.w $8040,$0702,$070a,$10ff
	dc.w $8041,$0401,$1135

	dc.w $8036
	dc.l loc_065cf2

loc_06727a:
	dc.w $8027,$ffe0,$000c
	dc.w $0002,$08cb,$0034,$7c00
	dc.w $8004,$189e
	dc.w $8027,$ffc8,$fff4
	dc.w $0003,$08cc,$0035,$7c00
	dc.w $802b,$1c80
	dc.w $803b,$d000,$f412
	dc.w $8027,$ffe8,$001c
	dc.w $0002,$08cd,$0036,$7800
	dc.w $8045,$0004
	dc.w $8011,$001d,$0005,$3000,$20f4,$ff00
	dc.w $803b,$d800,$fc16
	dc.w $8027,$ffe8,$006c
	dc.w $000a,$08ce,$0037,$78ff,$fffc,$0000,$0000
	dc.w $803b,$d000,$f812
	dc.w $8027,$ffe8,$003c
	dc.w $0007,$08e3,$0038,$7800
	dc.w $803c,$0000
	dc.w $8027,$ffe8,$002c
	dc.w $0009,$08cf,$0039,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_067304:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_067332

	dc.w $803e,$0a25,$0c00
	dc.w $803f,$140a,$0605,$140c
	dc.w $8040,$0803,$0a08,$15ff
	dc.w $8041,$0101,$103a

	dc.w $8036
	dc.l loc_065cfe

loc_067332:
	dc.w $0002,$0953,$002f,$7cff,$fffc,$0000,$0000
	dc.w $8004,$18a1
	dc.w $803b,$e400,$f412
	dc.w $8027,$ffe8,$003c
	dc.w $0003,$08da,$003a,$7c00
	dc.w $0005,$08d8,$003b,$7c00
	dc.w $8045,$0004
	dc.w $803b,$ec00,$f81a
	dc.w $8027,$ffe8,$007c
	dc.w $0008,$08d9,$003c,$7800
	dc.w $8027,$ffe8,$0044
	dc.w $0009,$08d4,$003d,$7c00
	dc.w $803b,$e000,$f40a
	dc.w $0006,$08d2,$0022,$7c00
	dc.w $8027,$ffe8,$001c
	dc.w $0006,$08d1,$0021,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0673a4:
	dc.w $8037
	dc.l loc_064eb2
	dc.w $8038
	dc.l loc_0673d2

	dc.w $803e,$0a4d,$0b00
	dc.w $803f,$1c0a,$0c07,$1c08
	dc.w $8040,$0418,$040c,$33ff
	dc.w $8041,$0106,$002e

	dc.w $8036
	dc.l loc_065cf2

loc_0673d2:
	dc.w $8004,$18a3
	dc.w $8027,$ffe0,$001c
	dc.w $0002,$08fb,$0003,$7cff,$fffc,$0000,$0000
	dc.w $8027,$ffe8,$0014
	dc.w $0002,$098c,$003e,$7800
	dc.w $8045,$0004
	dc.w $8027,$ffe8,$0034
	dc.w $8011,$001d,$0005,$3000,$20f4,$ff00
	dc.w $0006,$0991,$003f,$7800
	dc.w $8007,$ffe8,$ffe8
	dc.w $8039,$0005
	dc.w $803c,$0008
	dc.w $8027,$ffec,$004c
	dc.w $0006,$0990,$0040,$78ff,$0000,$ffe8,$0000
	dc.w $8007,$ffe0,$ffe0
	dc.w $8027,$ffe4,$0074
	dc.w $0006,$098f,$0041,$78ff,$fff8,$ffc8,$0000

	dc.w $804a
	dc.l $ffff0000,$fff93800

	dc.w $8027,$ffe4,$005c
	dc.w $0005,$098e,$0042,$78ff,$fff8,$ffd8,$0000
	dc.w $8027,$ffe4,$0044
	dc.w $0004,$098d,$0043,$7cff,$0000,$fff0,$0000
	dc.w $8027,$ffdc,$0024
	dc.w $0004,$094c,$0044,$7c00
	dc.w $0004,$094d,$0045,$7c00
	dc.w $0004,$094e,$0046,$7c00
	dc.w $8019
	dc.w $8049,$0216,$0000,$0000
	dc.w $8028
	dc.w $0004,$091d,$0047,$7cff,$0000,$0008,$0000
	dc.w $0014,$091b,$0048,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0674c6:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0674fe

	dc.w $803e,$084d,$0f00
	dc.w $803f,$1c0a,$1207,$1c08
	dc.w $8040,$0602,$0a0d,$11ff
	dc.w $8041,$0806,$0036
	dc.w $803c,$0000
	dc.w $803b,$d000,$f812

	dc.w $8036
	dc.l loc_065cf2

loc_0674fe:
	dc.w $8027,$0008,$0034
	dc.w $0002,$09c0,$0049,$7800
	dc.w $8004,$18a3
	dc.w $803b,$d000,$fc12
	dc.w $8027,$0008,$004c
	dc.w $0004,$08ed,$004a,$7800
	dc.w $802b,$1c7e
	dc.w $8027,$0010,$0044
	dc.w $0002,$08f0,$004b,$7800
	dc.w $8027,$ffd8,$0034
	dc.w $0002,$08f1,$004c,$7800
	dc.w $8045,$0004
	dc.w $8027,$fff8,$0024

	dc.w $800d
	dc.l loc_0675c0
	dc.w $ffff

	dc.w $0003,$08f2,$004d,$7800
	dc.w $8027,$fff8,$0054
	dc.w $803e,$084d,$1fff
	dc.w $0004,$08f3,$004e,$7800
	dc.w $8027,$fff8,$006c
	dc.w $0006,$08f4,$004f,$7800
	dc.w $8027,$fff8,$0054
	dc.w $0005,$08f3,$0050,$7800
	dc.w $8027,$fff8,$0024
	dc.w $0003,$08f2,$0051,$7800
	dc.w $8027,$fff0,$003c
	dc.w $0005,$08f5,$0052,$7800
	dc.w $803b,$d000,$f40a
	dc.w $8027,$fff0,$002c
	dc.w $0004,$08ec,$0033,$7c00
	dc.w $8001

loc_0675c0:
	dc.w $0003,$09a9,$74ff,$ffe8,$00b0,$0c00
	dc.w $0004,$09aa,$74ff,$ffa8,$0090,$0c00
	dc.w $0006,$09ab,$74ff,$ff88,$0060,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0675e6:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_067614

	dc.w $803e,$082d,$0600
	dc.w $803f,$180a,$0a06,$1808
	dc.w $8040,$0802,$0b08,$17ff
	dc.w $8041,$0201,$1a4b

	dc.w $8036
	dc.l loc_065cfe

loc_067614:
	dc.w $0002,$0953,$002f,$7cff,$fffc,$0000,$0000
	dc.w $8004,$18a1
	dc.w $803b,$e000,$f41a
	dc.w $8027,$ffe8,$0044
	dc.w $0003,$09d4,$0053,$7cff,$0018,$0000,$0000
	dc.w $8007,$0010,$0000
	dc.w $8027,$0000,$002c

	dc.w $804e
	dc.l $00040000,$ffff0000

	dc.w $8011,$001c,$0004,$0000,$f800
	dc.w $0004,$08d5,$0054,$7cff,$fff0,$0000,$0000
	dc.w $803b,$e000,$fc1a
	dc.w $8027,$fff8,$006c
	dc.w $0002,$09d5,$0055,$7cff,$ffe8,$0000,$0000
	dc.w $8045,$0004
	dc.w $8027,$fff8,$0084
	dc.w $803e,$082d,$02ff
	dc.w $0008,$08d6,$0056,$7800
	dc.w $8027,$fff8,$006c
	dc.w $0006,$09d5,$0055,$7cff,$ffe8,$0000,$0000
	dc.w $803b,$e000,$f41a
	dc.w $8027,$0000,$002c
	dc.w $0006,$08d5,$0054,$7cff,$fff0,$0000,$0000
	dc.w $8007,$fff0,$0000
	dc.w $8027,$ffe8,$0044
	dc.w $0006,$09d4,$0053,$7cff,$0018,$0000,$0000
	dc.w $803c,$0004
	dc.w $8028
	dc.w $0005,$0953,$002f,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0676fe:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_06772c

	dc.w $803e,$0922,$0500
	dc.w $803f,$0e04,$0603,$0e02
	dc.w $8040,$0800,$0410,$ffff
	dc.w $8041,$0201,$1531

	dc.w $8036
	dc.l loc_065d0a

loc_06772c:
	dc.w $8004,$187a
	dc.w $0004,$091b,$0048,$8800
	dc.w $8045,$0002
	dc.w $8027,$fff4,$0064
	dc.w $0010,$091c,$0057,$7800
	dc.w $8028
	dc.w $0004,$091b,$0048,$8800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_067756:
	dc.w $8037
	dc.l loc_064eea
	dc.w $8038
	dc.l loc_067784

	dc.w $803e,$0922,$0200
	dc.w $803f,$0e04,$0603,$0e02
	dc.w $8040,$0800,$0410,$ffff
	dc.w $8041,$0101,$0828

	dc.w $8036
	dc.l loc_065d0a

loc_067784:
	dc.w $8004,$187a
	dc.w $0002,$091b,$0048,$8800
	dc.w $0002,$0919,$0058,$8800
	dc.w $8045,$0002
	dc.w $8027,$ffe4,$004c
	dc.w $0010,$091a,$0059,$8800
	dc.w $0004,$0919,$0058,$8800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0677b4:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_0677e2

	dc.w $803e,$094a,$0900
	dc.w $803f,$0e04,$0603,$0e02
	dc.w $8040,$0600,$0609,$ffff
	dc.w $8041,$0601,$0822

	dc.w $8036
	dc.l loc_065d0a

loc_0677e2:
	dc.w $8004,$1898
	dc.w $8027,$ffd4,$0024
	dc.w $0004,$091f,$005a,$7800
	dc.w $8027,$fff4,$002c
	dc.w $0002,$09db,$005b,$7800
	dc.w $8045,$0002
	dc.w $8027,$fff4,$004c
	dc.w $0003,$09dc,$005c,$7800
	dc.w $803e,$094a,$05ff
	dc.w $8027,$ffec,$0034
	dc.w $0006,$09dc,$005d,$7800
	dc.w $000a,$09dc,$005e,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_067832:
	dc.w $8037
	dc.l loc_064eea
	dc.w $8038
	dc.l loc_067860

	dc.w $803e,$094a,$0c00
	dc.w $803f,$1204,$0604,$1202
	dc.w $8040,$0800,$040e,$ffff
	dc.w $8041,$0601,$fe25

	dc.w $8036
	dc.l loc_065d0a

loc_067860:
	dc.w $8004,$1898
	dc.w $0002,$0919,$0058,$7c00
	dc.w $0002,$0916,$005f,$7c00
	dc.w $8045,$0002
	dc.w $8027,$ffec,$0034
	dc.w $0008,$0917,$0060,$7800
	dc.w $8027,$ffd4,$001c
	dc.w $0006,$0918,$0061,$7800
	dc.w $8027,$ffec,$0034
	dc.w $0006,$0917,$0062,$7800
	dc.w $8028
	dc.w $0004,$0916,$005f,$7c00
	dc.w $0004,$091b,$0048,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0678b6:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_0678e4

	dc.w $803e,$0964,$0500
	dc.w $803f,$1608,$1005,$1604
	dc.w $8040,$0600,$0804,$ffff
	dc.w $8041,$0201,$1637

	dc.w $8036
	dc.l loc_065d0a

loc_0678e4:
	dc.w $8027,$ffb4,$0014
	dc.w $0003,$0906,$0063,$7c00
	dc.w $8004,$189e
	dc.w $8027,$ffbc,$0014
	dc.w $0002,$0907,$0064,$7c00
	dc.w $8027,$ffe4,$0014
	dc.w $0002,$0908,$0065,$7800
	dc.w $8027,$ffe4,$001c
	dc.w $0001,$0909,$0066,$7800
	dc.w $8045,$0004
	dc.w $8027,$ffdc,$006c
	dc.w $0004,$090a,$0067,$7800
	dc.w $8027,$ffdc,$0044
	dc.w $0004,$090d,$0068,$8800
	dc.w $8027,$ffdc,$0024
	dc.w $0006,$090e,$0069,$88ff,$fffc,$0000,$0000
	dc.w $8028
	dc.w $0004,$0916,$005f,$7c00
	dc.w $0004,$091b,$0048,$7c00
	dc.w $8027,$ffe4,$001c
	dc.w $0010,$08fd,$000a,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_067976:
	dc.w $8037
	dc.l loc_064eea
	dc.w $8038
	dc.l loc_0679a4

	dc.w $803e,$0944,$0200
	dc.w $803f,$1608,$0a05,$1604
	dc.w $8040,$0600,$0905,$ffff
	dc.w $8041,$0301,$f832

	dc.w $8036
	dc.l loc_065d0a

loc_0679a4:
	dc.w $8027,$ffbc,$001c
	dc.w $0004,$08ff,$006a,$8800
	dc.w $8004,$18a3
	dc.w $8027,$ffdc,$001c
	dc.w $0003,$0900,$006b,$8800
	dc.w $8027,$ffe4,$004c
	dc.w $0002,$0901,$006c,$8800
	dc.w $8045,$0004
	dc.w $8027,$ffdc,$004c
	dc.w $0002,$0902,$006d,$7800
	dc.w $8027,$ffd4,$0014
	dc.w $0003,$0903,$006e,$7800
	dc.w $8027,$ffcc,$0014
	dc.w $0004,$0904,$006f,$7800
	dc.w $0005,$0905,$006f,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_067a0a:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_067a38

	dc.w $803e,$092c,$0600
	dc.w $803f,$1408,$0a05,$1404
	dc.w $8040,$0600,$0708,$ffff
	dc.w $8041,$0201,$f031

	dc.w $8036
	dc.l loc_065d0a

loc_067a38:
	dc. $8004,$18a1
	dc. $0004,$0919,$0058,$7c00
	dc. $8027,$ffdc,$0044
	dc. $0003,$09d6,$0070,$7800
	dc. $8045,$0004
	dc. $8027,$ffdc,$0064
	dc. $0001,$090c,$0071,$7800
	dc. $803e,$092c,$02ff
	dc. $0007,$090c,$0071,$7800
	dc. $8027,$ffdc,$001c
	dc. $0008,$090b,$0072,$7800
	dc. $8027,$ffe4,$001c
	dc. $0006,$08fd,$000a,$7c00
	dc. $0006,$08fe,$000b,$7c00
	dc. $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_067a98:
	dc.w $8037
	dc.l loc_064eea
	dc.w $8038
	dc.l loc_067ac6

	dc.w $803e,$092c,$0200
	dc.w $803f,$1208,$0c04,$1204
	dc.w $8040,$0600,$05ff,$ffff
	dc.w $8041,$0101,$eb1c

	dc.w $8036
	dc.l loc_065d0a

loc_067ac6:
	dc.w $8004,$18a1
	dc.w $0003,$0919,$0058,$7c00
	dc.w $0002,$0916,$005f,$7c00
	dc.w $8045,$0004
	dc.w $8027,$ffdc,$0024
	dc.w $0005,$08ef,$0073,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_067aee:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_067b1c

	dc.w $803e,$0944,$0d00
	dc.w $803f,$1a06,$0c06,$1a08
	dc.w $8040,$0306,$1606,$0e00
	dc.w $8041,$0301,$0029

	dc.w $8036
	dc.l loc_065d0a

loc_067b1c:
	dc.w $802c
	dc.w $8027,$ffe4,$001c
	dc.w $0003,$08fb,$0003,$7cff,$fffc,$0000,$0000
	dc.w $8045,$0006
	dc.w $8002,$188d

	dc.w $804a
	dc.l $00038000,$fff9a800

	dc.w $8011,$001c,$0004,$e000,$f000
	dc.w $0004,$091d,$0047,$7cff,$0000,$0008,$0000
	dc.w $802b,$1c7f
	dc.w $0004,$094e,$0046,$7c00
	dc.w $0003,$094d,$0045,$7c00
	dc.w $8027,$ffcc,$0024
	dc.w $0003,$094c,$0044,$7c00
	dc.w $0003,$091f,$005a,$8800
	dc.w $8027,$ffcc,$001c
	dc.w $8004,$18a3
	dc.w $0002,$090f,$0074,$8800
	dc.w $8027,$ffd4,$0014
	dc.w $0002,$0910,$0075,$8800
	dc.w $8027,$ffdc,$004c
	dc.w $0002,$0911,$0076,$7800
	dc.w $0002,$0912,$0077,$7800
	dc.w $8027,$ffec,$0014
	dc.w $0002,$0915,$0078,$7800
	dc.w $8027,$ffbc,$0014
	dc.w $0002,$0913,$0079,$7c00
	dc.w $8027,$ffdc,$0014
	dc.w $0002,$0914,$0079,$7c00
	dc.w $803c,$0000
	dc.w $8011,$001d,$0005,$e800,$e0f0,$ff00
	dc.w $8011,$001d,$0005,$1800,$20f0,$ff00
	dc.w $8027,$ffe8,$0024
	dc.w $8048,$02c0,$000a
	dc.w $0002,$08fb,$0003,$80ff,$fffc,$0000,$0000
	dc.w $0004,$0a5b,$0004,$80ff,$fffe,$0000,$0000
	dc.w $0004,$08fb,$0003,$80ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_067c3a:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_067c68

	dc.w $803e,$084c,$0700
	dc.w $803f,$0a02,$0002,$0808
	dc.w $8040,$0800,$0618,$0c00
	dc.w $8041,$0406,$0c22

	dc.w $8036
	dc.l loc_065cf2

loc_067c68:
	dc.w $802c
	dc.w $8004,$1898
	dc.w $8011,$001d,$0005,$e800,$18e8,$ff00
	dc.w $8027,$fff0,$0024
	dc.w $0001,$08ec,$0033,$7cff,$fffe,$0000,$0000
	dc.w $803b,$d000,$f812
	dc.w $8027,$fff0,$002c
	dc.w $0002,$08f6,$007a,$7800
	dc.w $8027,$ffe0,$0034
	dc.w $0003,$08f7,$007b,$7800
	dc.w $8045,$0004
	dc.w $802a,$0027
	dc.w $8027,$fff0,$002c
	dc.w $0004,$08f8,$007c,$7800
	dc.w $8041,$0609,$0832
	dc.w $803b,$c000,$f812
	dc.w $801a,$0002,$001a
	dc.w $8007,$0010,$0000
	dc.w $8027,$ffe8,$0014
	dc.w $000a,$08ee,$007d,$78ff,$0010,$0000,$0000
	dc.w $8045,$0002
	dc.w $8004,$18a3
	dc.w $803e,$094d,$0600
	dc.w $803f,$1a06,$1006,$1a08
	dc.w $803b,$d000,$001a
	dc.w $8027,$0018,$006c
	dc.w $0004,$0922,$007e,$78ff,$ffe8,$0000,$0000
	dc.w $803b,$d000,$041a
	dc.w $8027,$0018,$006c
	dc.w $8011,$001c,$0004,$1000,$1000
	dc.w $0006,$0921,$007f,$78ff,$ffe8,$0000,$0000
	dc.w $803b,$d000,$fc12
	dc.w $8027,$0000,$0054
	dc.w $0006,$0923,$0080,$78ff,$ffe0,$0000,$0000
	dc.w $8007,$fff0,$0000
	dc.w $803c,$0000
	dc.w $8027,$fff0,$002c
	dc.w $0006,$08ec,$0033,$7cff,$fffe,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_067d80:
	dc.w $8037
	dc.l loc_064f20
	dc.w $8038
	dc.l loc_067e3e
	dc.w $8036
	dc.l loc_067d9e

loc_067d92:
	dc.w $8037
	dc.l loc_064f20
	dc.w $8038
	dc.l loc_067dcc

loc_067d9e:
	dc.w $803e,$382d,$1000
	dc.w $803f,$1a08,$0c09,$1a08
	dc.w $8040,$0000,$0a0a,$1400
	dc.w $8041,$0201,$072c
	dc.w $8048,$0550,$000a
	dc.w $803b,$0000,$ec12
	dc.w $8039,$0018,$0000

loc_067dcc:
	dc.w $802c
	dc.w $8047,$00b6,$0000
	dc.w $8027,$ffc8,$fffc
	dc.w $0006,$0986,$0081,$7c00
	dc.w $802b,$1c83
	dc.w $8027,$ffe0,$000c
	dc.w $0002,$08e8,$0082,$7800
	dc.w $803b,$d0f4,$ee12
	dc.w $8027,$ffe8,$0024
	dc.w $0002,$0987,$0083,$7800
	dc.w $8045,$000a
	dc.w $8004,$1884

	dc.w $804e
	dc.l $000c0000,$ffff4000

	dc.w $800b
	dc.l loc_067ee8

	dc.w $8032,$000a,$0000,$1200
	dc.w $8027,$ffc0,$0044
	dc.w $000a,$0993,$0084,$7800
	dc.w $8000,$0000
	dc.l loc_067ea0

loc_067e3e:
	dc.w $802c
	dc.w $8047,$00b6,$0000
	dc.w $8027,$ffc8,$fffc
	dc.w $0006,$0986,$0081,$7c00
	dc.w $802b,$1c83
	dc.w $8027,$ffe0,$000c
	dc.w $0002,$08e8,$0082,$7800
	dc.w $803b,$d0f4,$ee12
	dc.w $8027,$ffe8,$0024
	dc.w $0002,$0987,$0083,$7800
	dc.w $8045,$000a
	dc.w $8004,$1884

	dc.w $804e
	dc.l $000c0000,$ffff4000

	dc.w $800b
	dc.l loc_067ee8

	dc.w $8027,$ffc0,$0044
	dc.w $000a,$0993,$0084,$7800

loc_067ea0:
	dc.w $8047,$00b6,$ffff
	dc.w $8027,$ffd8,$0024
	dc.w $0006,$08ef,$0085,$7800
	dc.w $8027,$ffe8,$0014
	dc.w $8011,$001d,$0005,$1800,$20e0,$ff00
	dc.w $803c,$0000
	dc.w $0008,$0988,$0086,$7c00
	dc.w $8048,$0550,$0006
	dc.w $8027,$fff0,$002c
	dc.w $0006,$08ec,$0033,$7c00
	dc.w $8001

loc_067ee8:
	dc.w $0005,$09a1,$70ff,$ffd2,$0018,$0c00
	dc.w $0005,$09a2,$70ff,$ffd2,$0018,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_067f02:
	dc.w $8037
	dc.l loc_064f20
	dc.w $8038
	dc.l loc_067fc0
	dc.w $8036
	dc.l loc_067f20

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_067f14:
	dc.w $8037
	dc.l loc_064f20
	dc.w $8038
	dc.l loc_067f4e

loc_067f20:
	dc.w $803e,$382d,$2800
	dc.w $803f,$200c,$0c0c,$2008
	dc.w $8040,$0000,$0c10,$1600
	dc.w $8041,$0201,$072c
	dc.w $8048,$0550,$000a
	dc.w $803b,$0000,$ec12
	dc.w $8039,$0018,$0000

loc_067f4e:
	dc.w $802c
	dc.w $8047,$00b6,$0000
	dc.w $8027,$ffc8,$fffc
	dc.w $0008,$0986,$0081,$7c00
	dc.w $802b,$1c83
	dc.w $8027,$ffe0,$000c
	dc.w $0002,$08e8,$0082,$7800
	dc.w $803b,$d0f4,$ee12
	dc.w $8027,$ffe8,$0024
	dc.w $0002,$0987,$0083,$7800
	dc.w $8045,$000e
	dc.w $8004,$1884

	dc.w $804e
	dc.l $000c0000,$ffff8000

	dc.w $800b
	dc.l loc_06806a

	dc.w $8032,$0010,$0000,$1200
	dc.w $8027,$ffc0,$0044
	dc.w $0010,$0993,$0084,$7800
	dc.w $8000,$0000
	dc.l loc_068022

loc_067fc0:
	dc.w $802c
	dc.w $8047,$00b6,$0000
	dc.w $8027,$ffc8,$fffc
	dc.w $0008,$0986,$0081,$7c00
	dc.w $802b,$1c83
	dc.w $8027,$ffe0,$000c
	dc.w $0002,$08e8,$0082,$7800
	dc.w $803b,$d0f4,$ee12
	dc.w $8027,$ffe8,$0024
	dc.w $0002,$0987,$0083,$7800
	dc.w $8045,$000e
	dc.w $8004,$1884

	dc.w $804e
	dc.l $000c0000,$ffff8000

	dc.w $800b
	dc.l loc_06806a

	dc.w $8027,$ffc0,$0044
	dc.w $0010,$0993,$0084,$7800

loc_068022:
	dc.w $8047,$00b6,$ffff
	dc.w $8027,$ffd8,$0024
	dc.w $0006,$08ef,$0085,$7800
	dc.w $8011,$001d,$0005,$1800,$20e0,$ff00
	dc.w $8027,$ffe8,$0014
	dc.w $803c,$0000
	dc.w $000a,$0988,$0086,$7c00
	dc.w $8048,$0550,$0006
	dc.w $8027,$fff0,$002c
	dc.w $0006,$08ec,$0033,$7c00
	dc.w $8001

loc_06806a:
	dc.w $0008,$09a1,$70ff,$ffd2,$0018,$0c00
	dc.w $0004,$09a2,$70ff,$ffd2,$0018,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_068084:
	dc.w $803d
	dc.w $803c,$0008
	dc.w $8027,$ffdc,$0024
	dc.w $0006,$094c,$0044,$7c00
	dc.w $0004,$094d,$0045,$7c00
	dc.w $0004,$094e,$0046,$7c00
	dc.w $0004,$091d,$0047,$7cff,$0000,$0008,$0000
	dc.w $8028
	dc.w $0006,$091b,$0048,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
AlsPoison:
	dc.w $8037
	dc.l PRGPoison
	dc.w $8038
	dc.l AniPoison

	dc.w $803e,$2c04,$2d00
	dc.w $803f,$1408,$0c08,$1408
	dc.w $8040,$0000,$133c,$ff00
	dc.w $8041,$0211,$203c
	dc.w $8039,$0000
	dc.w $8048,$0550,$000c

	dc.w $8036
	dc.l loc_065cf2

AniPoison:
	dc.w $802c
	dc.w $8047,$00b6,$0000
	dc.w $8027,$ffe0,$0014
	dc.w $0002,$094f,$0087,$7c00
	dc.w $8027,$ffd0,$0014
	dc.w $8002,$18ba
	dc.w $0003,$0950,$0088,$7c00
	dc.w $0004,$0951,$0088,$7c00
	dc.w $802a,$0028
	dc.w $0005,$0952,$0088,$7c00
	dc.w $8027,$ffe0,$0014
	dc.w $0002,$094f,$0087,$7c00
	dc.w $803c,$0004
	dc.w $8027,$ffe8,$0014
	dc.w $0002,$0953,$0089,$7c00
	dc.w $803b,$f000,$f416
	dc.w $8028,$8045,$000c
	dc.w $8002,$18bb
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$0954,$008a,$7c00
	dc.w $0004,$0a4b,$008b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06817e:
	dc.w $8040,$0000,$0000,$1800
	dc.w $000c,$0a4b,$008b,$7c00
	dc.w $803c,$0004
	dc.w $0006,$0a4c,$008c,$7c00
	dc.w $8048,$0550,$0006
	dc.w $803c,$0000
	dc.w $0006,$0942,$008d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0681ae:
	dc.w $0001,$0973,$70ff,$0028,$ffd8,$0d00
	dc.w $0001,$0974,$70ff,$0028,$ffd8,$0d00
	dc.w $0001,$0975,$70ff,$fff8,$0008,$0d00
	dc.w $0003,$0976,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0977,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0978,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0979,$70ff,$0000,$0000,$0d00
	dc.w $8002,$18ca
	dc.w $0003,$0976,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0977,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0978,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0979,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0976,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0977,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0978,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0979,$70ff,$0000,$0000,$0d00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_068268:
	dc.w $0001,$0973,$70ff,$0028,$ffd8,$0d00
	dc.w $0001,$0974,$70ff,$0028,$ffd8,$0d00
	dc.w $0001,$0975,$70ff,$fff8,$0008,$0d00
	dc.w $0003,$0976,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0977,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0978,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0979,$70ff,$0000,$0000,$0d00
	dc.w $8002,$18ca
	dc.w $0003,$0976,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0977,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0978,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0979,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0976,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0977,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0978,$70ff,$0000,$0000,$0d00
	dc.w $8002,$18ca
	dc.w $0003,$0979,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0976,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0977,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0978,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0979,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0976,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0977,$70ff,$0000,$0000,$0d00
	dc.w $0003,$0978,$70ff,$0000,$0000,$0d00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06837a:
	dc.w $0002,$0981,$70ff,$0000,$0000,$0d00
	dc.w $0004,$0a43,$74ff,$0000,$0000,$0d00
	dc.w $0002,$0a44,$74ff,$0000,$0000,$0d00
	dc.w $0002,$0a46,$74ff,$0000,$0000,$0d00
	dc.w $0002,$0a47,$74ff,$0000,$0000,$0d00
	dc.w $0002,$0a48,$74ff,$0000,$0000,$0d00
	dc.w $0002,$0a49,$74ff,$0000,$0000,$0d00
	dc.w $0002,$0a4a,$74ff,$0000,$0000,$0d00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0683dc:
	dc.w $0002,$097a,$74ff,$0000,$0000,$0d00
	dc.w $0002,$097b,$78ff,$0000,$0000,$0d00
	dc.w $0002,$097c,$7cff,$0000,$0000,$0d00
	dc.w $0001,$0000,$6000
	dc.w $0001,$097d,$80ff,$0000,$0000,$0d00
	dc.w $0001,$0000,$6000
	dc.w $0001,$097e,$84ff,$0000,$0000,$0d00
	dc.w $0001,$0000,$6000,$0001,$097f,$88ff
	dc.w $0000,$0000,$0d00,$0001,$0000,$6000
	dc.w $0001,$0980,$88ff,$0000,$0000,$0d00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06844a:
	dc.w $8037
	dc.l loc_06508c
	dc.w $8038
	dc.l loc_068498
	dc.w $8036
	dc.l loc_068468

loc_06845c:
	dc.w $8037
	dc.l loc_065086
	dc.w $8038
	dc.l loc_0684a6

loc_068468:
	dc.w $8039,$0001
	dc.w $803e,$3944,$2c00
	dc.w $803f,$200c,$0c0c,$2008
	dc.w $8040,$0000,$1c0c,$1900
	dc.w $8043,$000c
	dc.w $8041,$0706,$d828
	dc.w $8048,$0550,$0006

	dc.w $8036
	dc.l loc_065d0a

loc_068498:
	dc.w $8009
	dc.l loc_068656
	dc.w $8000,$0000
	dc.l loc_0684c0

loc_0684a6:
	dc.w $8009
	dc.l loc_0685ee

	dc.w $8011,$001c,$0004,$e800,$c0f0
	dc.w $8011,$001c,$0004,$1800,$40f0

loc_0684c0:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $802c
	dc.w $8002,$188f
	dc.w $802b,$1c84
	dc.w $0002,$0985,$0000,$8c00
	dc.w $0001,$0944,$0000,$8cff,$0000,$0004,$0000
	dc.w $0001,$0945,$0000,$8cff,$0000,$0008,$0000
	dc.w $0001,$0000,$0000,$8400
	dc.w $0001,$0946,$0000,$8cff,$0000,$0010,$0000
	dc.w $8045,$000e
	dc.w $8047,$00b6,$ffff
	dc.w $0006,$0000,$0000,$8400
	dc.w $0001,$0a15,$008e,$7c00
	dc.w $0001,$0000,$008e,$7c00
	dc.w $0001,$0a14,$008e,$7c00
	dc.w $0001,$0000,$008e,$8000
	dc.w $0002,$0a14,$008e,$7c00
	dc.w $0002,$0a13,$008e,$7c00
	dc.w $8027,$ffcc,$0034
	dc.w $0004,$08fc,$008e,$7c00
	dc.w $8047,$00b7,$ffff
	dc.w $0004,$08fc,$008e,$7c00
	dc.w $8004,$18a3

	dc.w $800a
	dc.l loc_0686be
	dc.w $800a
	dc.l loc_0686fc

	dc.w $802a,$0029
	dc.w $0008,$0956,$008f,$7c00
	dc.w $0002,$0957,$0090,$7800
	dc.w $8027,$ffd4,$002c
	dc.w $0002,$0958,$0091,$7800
	dc.w $8027,$ffd4,$002c
	dc.w $803c,$0004
	dc.w $8011,$001d,$0005,$e800,$c0e0,$0000
	dc.w $8011,$001d,$0005,$1800,$40e0,$0000
	dc.w $8027,$ffd8,$0024
	dc.w $0009,$0959,$0092,$7c00
	dc.w $8027,$ffe8,$0024
	dc.w $0009,$095a,$000c,$7c00
	dc.w $0007,$08fb,$0003,$7cff,$fffc,$0000,$0000
	dc.w $8001

loc_0685ee:
	dc.w $0008,$08cf,$7cff,$0000,$0000,$0f00
	dc.w $8008,$0002,$0000,$0000,$0000
	dc.w $8006,$0800
	dc.w $0001,$08cf,$7cff,$0000,$0000,$0f00
	dc.w $8006,$1800
	dc.w $0001,$08cf,$7cff,$0000,$0000,$0f00
	dc.w $8006,$3000
	dc.w $0001,$08cf,$7cff,$0000,$0000,$0f00
	dc.w $8006,$5000
	dc.w $0001,$08cf,$7cff,$0000,$0000,$0f00
	dc.w $8006,$7800
	dc.w $0001,$08cf,$7cff,$0000,$0000,$0f00
	dc.w $8001

loc_068656:
	dc.w $0008,$08fc,$7cff,$0000,$0000,$0f00
	dc.w $8008,$fffe,$0000,$0000,$0000
	dc.w $8006,$0800
	dc.w $0001,$0a13,$7cff,$0000,$0000,$0f00
	dc.w $8006,$1800
	dc.w $0001,$0a13,$7cff,$0000,$0000,$0f00
	dc.w $8006,$3000
	dc.w $0001,$0a14,$7cff,$0000,$0000,$0f00
	dc.w $8006,$5000
	dc.w $0001,$0a14,$7cff,$0000,$0000,$0f00
	dc.w $8006,$7800
	dc.w $0001,$0a15,$7cff,$0000,$0000,$0f00
	dc.w $8001

loc_0686be:
	dc.w $0005,$099b,$74ff,$0038,$0070,$1000
	dc.w $0003,$099d,$74ff,$0038,$0070,$1000
	dc.w $0002,$099f,$74ff,$0028,$0008,$1000
	dc.w $0001,$09a0,$74ff,$0000,$0000,$1000
	dc.w $0001,$0a4d,$74ff,$0000,$0000,$1000
	dc.w $8001

loc_0686fc:
	dc.w $0005,$099a,$74ff,$ffc8,$0070,$1000
	dc.w $0003,$099c,$74ff,$ffc8,$0070,$1000
	dc.w $0002,$099e,$74ff,$ffd8,$0008,$1000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_068722:
	dc.w $8037
	dc.l loc_064e68
	dc.w $8038
	dc.l loc_06874c

	dc.w $8039,$0018
	dc.w $803a,$00ff
	dc.w $803d
	dc.w $8045,$0002
	dc.w $8043,$0013
	dc.w $8048,$0550,$0004

	dc.w $8036
	dc.l loc_065cf2

loc_06874c:
	dc.w $8023
	dc.w $8002,$188f
	dc.w $802b,$1c84
	dc.w $0002,$0985,$0000,$8400
	dc.w $0001,$0944,$0000,$8400
	dc.w $0001,$0945,$0000,$8400
	dc.w $8029
	dc.w $0001,$0000,$0000,$8400
	dc.w $8028
	dc.w $0001,$0946,$0000,$8400
	dc.w $801a,$0002,$000e

	dc.w $804e
	dc.l $000b6000,$ffff4a00

	dc.w $803b,$0000,$f40a
	dc.w $8029
	dc.w $000e,$0000,$0000,$8000
	dc.w $803b,$d000,$f40a
	dc.w $8028
	dc.w $0001,$0946,$0093,$8000
	dc.w $8029
	dc.w $0002,$0000,$0093,$8000
	dc.w $8028
	dc.w $0001,$0946,$0093,$8000
	dc.w $8029
	dc.w $0001,$0000,$0093,$8000
	dc.w $8028
	dc.w $0001,$0946,$0093,$8000
	dc.w $0001,$0945,$0093,$8000
	dc.w $8029
	dc.w $0001,$0000,$0093,$8000
	dc.w $8028
	dc.w $0002,$0945,$0093,$8000
	dc.w $0004,$0944,$0093,$8000
	dc.w $803a,$0004
	dc.w $8039,$0000
	dc.w $0005,$0985,$0093,$8000
	dc.w $803a,$0000
	dc.w $0001,$0985,$0093,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06881c:
	dc.w $8037
	dc.l loc_064e68
	dc.w $8038
	dc.l loc_068846

	dc.w $8039,$0014
	dc.w $803a,$00ff
	dc.w $803d
	dc.w $8045,$0002
	dc.w $8043,$0013
	dc.w $8048,$0550,$0004

	dc.w $8036
	dc.l loc_065cf2

loc_068846:
	dc.w $8023
	dc.w $8002,$188f
	dc.w $802b,$1c84
	dc.w $0002,$0985,$0000,$8400
	dc.w $0001,$0944,$0000,$8400
	dc.w $0001,$0945,$0000,$8400
	dc.w $8028
	dc.w $0001,$0000,$0000,$8400
	dc.w $8029
	dc.w $0001,$0946,$0000,$8400
	dc.w $801a,$0002,$000e

	dc.w $804e
	dc.l $fff4a000,$0000b600

	dc.w $803b,$0000,$f40a
	dc.w $8029
	dc.w $000e,$0000,$0000,$8000
	dc.w $803b,$d000,$f40a
	dc.w $8028
	dc.w $0001,$0946,$0093,$8000
	dc.w $8029
	dc.w $0002,$0000,$0093,$8000
	dc.w $8028
	dc.w $0001,$0946,$0093,$8000
	dc.w $8029
	dc.w $0001,$0000,$0093,$8000
	dc.w $8028
	dc.w $0001,$0946,$0093,$8000
	dc.w $0001,$0945,$0093,$8000
	dc.w $8029
	dc.w $0001,$0000,$0093,$8000
	dc.w $8028
	dc.w $0002,$0945,$0093,$8000
	dc.w $0004,$0944,$0093,$8000
	dc.w $803a,$0004
	dc.w $8039,$0000
	dc.w $0005,$0985,$0093,$8000
	dc.w $803a,$0000
	dc.w $0001,$0985,$0093,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_068916:
	dc.w $8037
	dc.l loc_0654e6
	dc.w $8038
	dc.l loc_068950

	dc.w $8039,$0000
	dc.w $803e,$0807,$2f00
	dc.w $803f,$2008,$000a,$2808
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8047,$024b,$ffff,$0000

loc_068950:
	dc.w $8002,$18e7
	dc.w $802c,$8047,$00b6,$0000
	dc.w $803b,$d000,$f028
	dc.w $0003,$0923,$0000,$78ff,$fff0,$0000,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $803b,$d000,$f030
	dc.w $8027,$ffe8,$0054
	dc.w $0008,$0924,$0000,$7800
	dc.w $8027,$ffe8,$0034
	dc.w $0005,$0925,$0000,$7800
	dc.w $8004,$1886
	dc.w $803b,$d000,$e018
	dc.w $802b,$1c7d
	dc.w $8027,$ffd8,$0014
	dc.w $0004,$0926,$0000,$7800
	dc.w $8027,$ffa8,$0014
	dc.w $801d
	dc.w $803b,$d000,$e810
	dc.w $8027,$ff98,$0014
	dc.w $0001,$0927,$0000,$7800
	dc.w $803b,$d000,$e010
	dc.w $0001,$0927,$0000,$7800
	dc.w $803b,$d000,$d810
	dc.w $0001,$0927,$0000,$7800
	dc.w $803b,$d000,$d010
	dc.w $0007,$0927,$0000,$7800
	dc.w $803c,$0000
	dc.w $8027,$ffe0,$001c
	dc.w $0008,$0928,$0000,$78ff,$0010,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Ground Grab
;Sho
loc_068a14:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$00c9,$0000,$84ff,$0038,$0000,$0000
	dc.w $0008,$00cb,$0000,$84ff,$0038,$0000,$0000
	dc.w $0005,$013e,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$017c,$0000,$84ff,$0008,$0030,$0000
	dc.w $801b,$ffa0,$ffd0,$0000
	dc.w $000a,$0143,$0000,$84ff,$0018,$0070,$0002
	dc.w $000a,$0144,$0000,$84ff,$0010,$0000,$0001
	dc.w $000a,$012a,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;Dao
loc_068a88:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$02a0,$0000,$84ff,$0030,$0000,$0000
	dc.w $0008,$02a1,$0000,$84ff,$0030,$0000,$0000
	dc.w $0005,$030e,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$0309,$0000,$84ff,$0008,$0020,$0001
	dc.w $801b,$ffa0,$ffd0,$0000
	dc.w $000a,$02fa,$0000,$84ff,$0018,$0068,$0002
	dc.w $000a,$02fa,$0000,$84ff,$0018,$0068,$0002
	dc.w $000a,$022b,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;Con
loc_068afc:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$0442,$0000,$84ff,$0030,$0000,$0000
	dc.w $0008,$0443,$0000,$84ff,$0030,$0000,$0000
	dc.w $0005,$0408,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$040d,$0000,$84ff,$0000,$0090,$0003
	dc.w $801b,$ffa0,$ffd0,$0000
	dc.w $000a,$0414,$0000,$84ff,$0020,$0070,$0003
	dc.w $000a,$0414,$0000,$84ff,$0020,$0070,$0003
	dc.w $000a,$0458,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;Tia
loc_068b70:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$05c2,$0000,$84ff,$0040,$0000,$0000
	dc.w $0008,$05c4,$0000,$84ff,$0044,$0000,$0000
	dc.w $0005,$0671,$0000,$84ff,$0030,$0010,$0000
	dc.w $0004,$0697,$0000,$84ff,$fff8,$0038,$0001
	dc.w $801b,$ffa0,$ffd0,$0000
	dc.w $000a,$0676,$0000,$84ff,$0018,$0058,$0002
	dc.w $000a,$0677,$0000,$84ff,$0010,$0000,$0001
	dc.w $000a,$0639,$0000,$8400
	dc.w $8001

;Ril
loc_068bde:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$07b5,$0000,$84ff,$0030,$0000,$0000
	dc.w $0008,$07b7,$0000,$84ff,$0030,$0000,$0000
	dc.w $0005,$0858,$0000,$84ff,$0038,$0018,$0001
	dc.w $0004,$085a,$0000,$84ff,$0000,$0088,$0003
	dc.w $801b,$ffa0,$ffd0,$0000
	dc.w $000a,$0870,$0000,$84ff,$0018,$fff8,$0000
	dc.w $000a,$0870,$0000,$84ff,$0018,$fff8,$0000
	dc.w $000a,$0812,$0000,$8400
	dc.w $8001

;Als
loc_068c4c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$09ac,$0000,$84ff,$0038,$0000,$0000
	dc.w $0008,$09ae,$0000,$84ff,$0040,$0000,$0000
	dc.w $0005,$09fe,$0000,$84ff,$0038,$0020,$0000
	dc.w $0004,$09f9,$0000,$84ff,$0000,$0030,$0001
	dc.w $801b,$ffa0,$ffd0,$0000
	dc.w $000a,$0a06,$0000,$84ff,$0010,$0078,$0002
	dc.w $000a,$0a08,$0000,$84ff,$0008,$0000,$0001
	dc.w $000a,$09d7,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;Pie
loc_068cc0:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$0b52,$0000,$84ff,$0030,$0000,$0000
	dc.w $0008,$0b53,$0000,$84ff,$0038,$0000,$0000
	dc.w $0005,$0b93,$0000,$84ff,$0038,$0000,$0000
	dc.w $0004,$0bcc,$0000,$84ff,$0000,$0040,$0001
	dc.w $801b,$ffa0,$ffd0,$0000
	dc.w $000a,$0b99,$0000,$84ff,$0018,$0078,$0002
	dc.w $000a,$0b99,$0000,$84ff,$0018,$0078,$0002
	dc.w $000a,$0b89,$0000,$8400
	dc.w $8001

;Mah
loc_068d2e:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$0d69,$0000,$84ff,$0030,$0000,$0000
	dc.w $0008,$0d6a,$0000,$84ff,$0040,$0000,$0000
	dc.w $0005,$0daa,$0000,$84ff,$0030,$0010,$0000
	dc.w $0004,$0dbd,$0000,$84ff,$0000,$0040,$0001
	dc.w $801b,$ffa0,$ffd0,$0000
	dc.w $000a,$0dd6,$0000,$84ff,$0028,$0058,$0002
	dc.w $000a,$0dd8,$0000,$84ff,$0010,$fff8,$0001
	dc.w $000a,$0dde,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;Bai
loc_068da2:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$0f37,$0000,$84ff,$0038,$0000,$0000
	dc.w $0008,$0f39,$0000,$84ff,$0038,$0000,$0000
	dc.w $0005,$0e5b,$0000,$84ff,$0040,$0020,$0000
	dc.w $0004,$0f2b,$0000,$84ff,$0000,$0088,$0003
	dc.w $801b,$ffa0,$ffd0,$0000
	dc.w $000a,$0e5d,$0000,$84ff,$0018,$0000,$0000
	dc.w $000a,$0e5d,$0000,$84ff,$0018,$0000,$0000
	dc.w $000a,$0e5f,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;Sai
loc_068e16:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$104d,$0000,$84ff,$003f,$0007,$0000
	dc.w $0008,$104f,$0000,$84ff,$0031,$0009,$0000
	dc.w $0005,$10ba,$0000,$84ff,$003b,$0017,$0000
	dc.w $0004,$10b8,$0000,$84ff,$fffc,$002f,$0000
	dc.w $801b,$ffa0,$ffd0,$0000
	dc.w $000a,$1185,$0000,$84ff,$0013,$0050,$0003
	dc.w $000a,$1186,$0000,$84ff,$0001,$0005,$0000
	dc.w $000a,$1067,$0000,$84ff,$0003,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
loc_068e8a:
	dc.w $8037
	dc.l loc_0655b8
	dc.w $8038
	dc.l loc_068ec4

	dc.w $803e,$0807,$2f00
	dc.w $803f,$1810,$080c,$2808
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8039,$0001
	dc.w $8047,$024b,$ffff,$0000

loc_068ec4:
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $8047,$00b6,$0000
	dc.w $801a,$0001,$00ff
	dc.w $8027,$ffe0,$001c
	dc.w $803b,$0000,$f018
	dc.w $0004,$0923,$0000,$7800
	dc.w $803b,$0000,$f020
	dc.w $0008,$0924,$0000,$78ff,$0018,$0000,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $8004,$1886
	dc.w $803b,$0000,$f01c
	dc.w $0008,$0916,$0000,$7800
	dc.w $803b,$0000,$f018
	dc.w $0008,$091e,$0000,$7800
	dc.w $803b,$0000,$f010
	dc.w $0010,$0960,$0000,$78ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
loc_068f3a:
	dc.w $802b,$1c7e
	dc.w $8026,$0010
	dc.w $8027,$ffd8,$0024
	dc.w $0006,$0962,$0000,$78ff,$0000,$fff8,$0000
	dc.w $801a,$0000,$0000
	dc.w $801d
	dc.w $0001,$0961,$0000,$74ff,$fffe,$fffc,$0000
	dc.w $8007,$ffe0,$ffe0
	dc.w $0004,$0963,$0000,$74ff,$0000,$0000,$0000
	dc.w $803b,$d0f0,$f60a
	dc.w $0006,$094c,$0044,$7c00
	dc.w $0004,$094d,$0045,$7c00
	dc.w $0004,$094e,$0046,$7c00
	dc.w $8028
	dc.w $0004,$091d,$0047,$7cff,$0000,$0008,$0000
	dc.w $0006,$091b,$0048,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
;Character air grab
;Sho
loc_068fb8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$00ce,$0000,$84ff,$0008,$0020,$0000
	dc.w $0008,$0171,$0000,$84ff,$0028,$0020,$0001
	dc.w $0008,$0071,$0000,$84ff,$0020,$0008,$0000
	dc.w $0008,$017a,$0000,$84ff,$0010,$0000,$0000
	dc.w $0010,$0143,$0000,$84ff,$0008,$0070,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
loc_069008:
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0006,$00ce,$0000,$84ff,$0018,$0060,$0003
	dc.w $000c,$0144,$0000,$84ff,$0010,$0000,$0001
	dc.w $000c,$012a,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
;Dao
loc_06903c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$02a4,$0000,$84ff,$0010,$0020,$0000
	dc.w $0008,$0314,$0000,$84ff,$0018,$0028,$0000
	dc.w $0008,$030d,$0000,$84ff,$0010,$0010,$0001
	dc.w $0008,$030c,$0000,$84ff,$0010,$0000,$0001
	dc.w $0010,$02a3,$0000,$84ff,$0010,$0060,$0003
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
loc_06908c:
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0006,$02a4,$0000,$84ff,$0018,$0058,$0003
	dc.w $000c,$02fa,$0000,$84ff,$0018,$0068,$0002
	dc.w $000c,$022b,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
;Con
loc_0690c0:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$0442,$0000,$84ff,$0010,$0000,$0000
	dc.w $0008,$040c,$0000,$84ff,$0020,$0008,$0000
	dc.w $0008,$0409,$0000,$84ff,$0008,$0080,$0003
	dc.w $0008,$0408,$0000,$84ff,$0028,$0088,$0003
	dc.w $0010,$040f,$0000,$84ff,$0008,$ffe8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
loc_069110:
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0006,$0443,$0000,$84ff,$0028,$0070,$0003
	dc.w $000c,$0414,$0000,$84ff,$0020,$0070,$0003
	dc.w $000c,$0458,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
;Tia
loc_069144:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$05c6,$0000,$84ff,$0010,$0020,$0000
	dc.w $0008,$069d,$0000,$84ff,$0028,$0038,$0000
	dc.w $0008,$069a,$0000,$84ff,$0010,$0010,$0001
	dc.w $0008,$0699,$0000,$84ff,$0000,$0000,$0001
	dc.w $0010,$0676,$0000,$84ff,$0008,$0058,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
loc_069194:
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0006,$05c7,$0000,$84ff,$0010,$0048,$0003
	dc.w $000c,$0677,$0000,$84ff,$0010,$0000,$0001
	dc.w $000c,$0639,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
;Rila
loc_0691c2:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$0730,$0000,$84ff,$0020,$0020,$0000
	dc.w $0008,$0810,$0000,$84ff,$0028,$0018,$0000
	dc.w $0008,$085d,$0000,$84ff,$0018,$0008,$0000
	dc.w $0008,$0861,$0000,$84ff,$0008,$ffe8,$0000
	dc.w $0010,$0731,$0000,$84ff,$0010,$0060,$0003
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
loc_069212:
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0006,$07ba,$0000,$84ff,$0010,$0058,$0003
	dc.w $000c,$0870,$0000,$84ff,$0018,$fff8,$0000
	dc.w $000c,$0812,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
;Als
loc_069240:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$09b1,$0000,$84ff,$0008,$0010,$0000
	dc.w $0008,$0a00,$0000,$84ff,$0030,$0010,$0000
	dc.w $0008,$0a02,$0000,$84ff,$0020,$0010,$0000
	dc.w $0008,$09fb,$0000,$84ff,$0010,$fff0,$0001
	dc.w $0010,$0a06,$0000,$84ff,$0000,$0070,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
loc_069290:
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0006,$09b1,$0000,$84ff,$0018,$0068,$0003
	dc.w $000c,$0a08,$0000,$84ff,$0008,$0000,$0001
	dc.w $000c,$09d7,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
;Pie
loc_0692c4:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$0b57,$0000,$84ff,$0008,$0018,$0000
	dc.w $0008,$0bd2,$0000,$84ff,$0018,$0020,$0000
	dc.w $0008,$0bd3,$0000,$84ff,$0010,$0018,$0000
	dc.w $0008,$0bcf,$0000,$84ff,$0008,$0000,$0001
	dc.w $0010,$0b99,$0000,$84ff,$0000,$0070,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
loc_069314:
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0006,$0b55,$0000,$84ff,$0010,$0068,$0003
	dc.w $000c,$0b99,$0000,$84ff,$0018,$0078,$0002
	dc.w $000c,$0b89,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
;Mah
loc_069342:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$0d6c,$0000,$84ff,$0018,$0018,$0000
	dc.w $0008,$0dac,$0000,$84ff,$0028,$0028,$0000
	dc.w $0008,$0dc0,$0000,$84ff,$0018,$0010,$0001
	dc.w $0008,$0dbf,$0000,$84ff,$0008,$fff8,$0001
	dc.w $0010,$0dd6,$0000,$84ff,$0010,$0060,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
loc_069392:
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0006,$0d6c,$0000,$84ff,$0010,$0060,$0003
	dc.w $000c,$0dd8,$0000,$84ff,$0010,$fff8,$0001
	dc.w $000c,$0dde,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
;Bai
loc_0693c6:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$0f35,$0000,$84ff,$0018,$0018,$0000
	dc.w $0008,$0e5e,$0000,$84ff,$0020,$0018,$0000
	dc.w $0008,$0f2a,$0000,$84ff,$0018,$0008,$0000
	dc.w $0008,$0f29,$0000,$84ff,$0010,$0078,$0003
	dc.w $0010,$0f35,$0000,$84ff,$0010,$0068,$0003
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
loc_069416:
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0006,$0f36,$0000,$84ff,$0010,$0068,$0003
	dc.w $000c,$0e5d,$0000,$84ff,$0018,$0000,$0000
	dc.w $000c,$0e5f,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
;Sai
loc_06944a:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$1052,$0000,$84ff,$000b,$002d,$0000
	dc.w $0008,$10b4,$0000,$84ff,$0029,$0027,$0000
	dc.w $0008,$10b3,$0000,$84ff,$002b,$0020,$0000
	dc.w $0008,$10b6,$0000,$84ff,$0013,$fffa,$0000
	dc.w $0010,$1052,$0000,$84ff,$0013,$0058,$0003
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\
loc_06949a:
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0006,$1051,$0000,$84ff,$000b,$0055,$0003
	dc.w $000c,$1186,$0000,$84ff,$fffe,$0005,$0000
	dc.w $000c,$1067,$0000,$84ff,$0000,$0005,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
AlsSAnubis:
	dc.w $8037
	dc.l loc_0651ec
	dc.w $8038
	dc.l loc_06950a

	dc.w $803e,$3881,$0500
	dc.w $803f,$0e02,$0008,$0e00
	dc.w $8040,$0000,$04ff,$ff00
	dc.w $8043,$0005
	dc.w $8041,$0212,$0028
	dc.w $8039,$0000
	dc.w $8048,$0550,$0000

	dc.w $8036
	dc.l loc_065cf2

loc_06950a:
	dc.w $8047,$00b9,$0000
	dc.w $802c
	dc.w $8027,$ffe0,$000c
	dc.w $0003,$08e8,$0000,$7800
	dc.w $8027,$ffe4,$fff4
	dc.w $8007,$ffe8,$0000
	dc.w $802a,$002b
	dc.w $8047,$00b9,$ffff
	dc.w $0001,$0a16,$0094,$78ff,$ffe0,$0000,$0000
	dc.w $8004,$1884

loc_069548:
	dc.w $000a,$0a16,$0094,$78ff,$ffe0,$0000,$0000
	dc.w $000a,$0a17,$0094,$78ff,$ffe0,$0000,$0000
	dc.w $000a,$0a18,$0094,$78ff,$ffe0,$0000,$0000
	dc.w $000a,$0a19,$0094,$78ff,$ffe0,$0000,$0000
	dc.w $000a,$0a1a,$0094,$78ff,$ffe0,$0000,$0000
	dc.w $000a,$0a1b,$0094,$78ff,$ffe0,$0000,$0000
	dc.w $8000,$0000
	dc.l loc_069548

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0695a4:
	dc.w $801d

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0695a6:
	dc.w $8007,$0018,$0000
	dc.w $8040,$0000,$0000,$ff00
	dc.w $8027,$ffe0,$000c
	dc.w $0006,$08e8,$0082,$7800
	dc.w $8028
	dc.w $0004,$0a0e,$0019,$7c00
	dc.w $0004,$0a0f,$0019,$7c00
	dc.w $0004,$0a10,$0019,$7c00
	dc.w $0004,$0a11,$0019,$7c00
	dc.w $0004,$0a12,$0019,$7c00
	dc.w $0004,$0a0a,$0019,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0695f6:
	dc.w $803e,$2884,$2400
	dc.w $803f,$1402,$000c,$0e00,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_069606:
	dc.w $803f,$0401,$0002,$0200,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_069610:
	dc.w $0004,$0a2f,$88ff,$0010,$0000,$0e00
	dc.w $0004,$0a30,$84ff,$0000,$0000,$0e00
	dc.w $0004,$0a31,$80ff,$0000,$0000,$0e00
	dc.w $0004,$0a32,$7cff,$0000,$0000,$0e00
	dc.w $0004,$0a31,$80ff,$0008,$0080,$0e03
	dc.w $0004,$0a33,$78ff,$0008,$0008,$0e00
	dc.w $0004,$0a34,$74ff,$0000,$0000,$0e00
	dc.w $0004,$0a35,$74ff,$0000,$0000,$0e00
	dc.w $0004,$0a36,$74ff,$0000,$0000,$0e00
	dc.w $0004,$0a37,$74ff,$0000,$0000,$0e00
	dc.w $0004,$0a34,$74ff,$0000,$0000,$0e00
	dc.w $0004,$0a35,$74ff,$0000,$0000,$0e00
	dc.w $0004,$0a36,$74ff,$0000,$0000,$0e00
	dc.w $0008,$0a30,$74ff,$0000,$fff4,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0696ba:
	dc.w $000c,$0a3d,$74ff,$0000,$fff4,$0e00
	dc.w $0004,$0a3e,$74ff,$0000,$fff4,$0e00
	dc.w $0004,$0a3f,$74ff,$0000,$fff4,$0e00
	dc.w $0004,$0a40,$74ff,$0000,$fff4,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0696ec:
	dc.w $0004,$0a38,$74ff,$0000,$0010,$0e00
	dc.w $0004,$0a39,$74ff,$0000,$0014,$0e00
	dc.w $0004,$0a3a,$74ff,$0000,$0018,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_069712:
	dc.w $8002,$00e9
	dc.w $0006,$0a39,$74ff,$0000,$0014,$0e00
	dc.w $0008,$0a38,$74ff,$0000,$0010,$0e00
	dc.w $0004,$0a41,$74ff,$0008,$0000,$0e00
	dc.w $0004,$0a42,$74ff,$0000,$0008,$0e00
	dc.w $0004,$0a40,$74ff,$0000,$0010,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_069754:
	dc.w $0001,$0a3b,$74ff,$0000,$0018,$0e00
	dc.w $0003,$0a3c,$74ff,$0000,$0028,$0e00
	dc.w $0004,$0a3b,$74ff,$0000,$0018,$0e00
	dc.w $0004,$0a3a,$74ff,$0000,$0018,$0e00
	dc.w $0010,$0a3a,$74ff,$0000,$0018,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Grabbed by Anubis
;Sho
loc_069792:
	dc.w $0004,$00ce,$0000,$80ff,$fff0,$0010,$0000
	dc.w $0004,$00cd,$0000,$80ff,$fff8,$000c,$0000
	dc.w $0004,$00cc,$0000,$80ff,$0000,$0008,$0000
	dc.w $0010,$00c9,$0000,$80ff,$0000,$0008,$0000
	dc.w $8001

;Dao
loc_0697cc:
	dc.w $0004,$02a4,$0000,$80ff,$fff0,$000e,$0000
	dc.w $0004,$02a3,$0000,$80ff,$fff6,$000a,$0000
	dc.w $0004,$02a2,$0000,$80ff,$fffa,$0008,$0000
	dc.w $0010,$029f,$0000,$80ff,$fff8,$0008,$0000
	dc.w $8001

;Con
loc_069806:
	dc.w $0004,$0443,$0000,$80ff,$ffe0,$0000,$0000
	dc.w $0004,$0442,$0000,$80ff,$ffe8,$0000,$0000
	dc.w $0004,$0441,$0000,$80ff,$fff2,$0000,$0000
	dc.w $0010,$043e,$0000,$80ff,$fff6,$0000,$0000
	dc.w $8001

;Tia
loc_069840:
	dc.w $0004,$05c7,$0000,$80ff,$ffeb,$0016,$0000
	dc.w $0004,$05c6,$0000,$80ff,$fff0,$0015,$0000
	dc.w $0004,$05c5,$0000,$80ff,$fff9,$0011,$0000
	dc.w $0010,$05c2,$0000,$80ff,$fffa,$000c,$0000
	dc.w $8001

;Ril
loc_06987a:
	dc.w $0004,$07ba,$0000,$80ff,$fff1,$000e,$0000
	dc.w $0004,$0731,$0000,$80ff,$fff3,$000b,$0000
	dc.w $0004,$0730,$0000,$80ff,$0000,$000b,$0000
	dc.w $0010,$07b5,$0000,$80ff,$0005,$000e,$0000
	dc.w $8001

;Als
loc_0698b4:
	dc.w $0004,$09b1,$0000,$80ff,$ffe6,$0000,$0000
	dc.w $0004,$09b0,$0000,$80ff,$ffec,$0000,$0000
	dc.w $0004,$09af,$0000,$80ff,$fff5,$0004,$0000
	dc.w $0010,$09ac,$0000,$80ff,$fffa,$0000,$0000
	dc.w $8001

;Pie
loc_0698ee:
	dc.w $0004,$0b57,$0000,$80ff,$ffe6,$0000,$0000
	dc.w $0004,$0b56,$0000,$80ff,$fff0,$0000,$0000
	dc.w $0004,$0b55,$0000,$80ff,$fff6,$0006,$0000
	dc.w $0010,$0b52,$0000,$80ff,$fff7,$000a,$0000
	dc.w $8001

;Mah
loc_069928:
	dc.w $0004,$0d6d,$0000,$80ff,$fff1,$0008,$0000
	dc.w $0004,$0d6c,$0000,$80ff,$fff2,$0008,$0000
	dc.w $0004,$0d6b,$0000,$80ff,$fffb,$0009,$0000
	dc.w $0010,$0d69,$0000,$80ff,$fff9,$000a,$0000
	dc.w $8001

;Bai
loc_069962:
	dc.w $0004,$0edc,$0000,$80ff,$ffeb,$0009,$0000
	dc.w $0004,$0edb,$0000,$80ff,$fff4,$0003,$0000
	dc.w $0004,$0eda,$0000,$80ff,$fffa,$0004,$0000
	dc.w $0010,$0ed7,$0000,$80ff,$fff8,$0002,$0000
	dc.w $8001

;Sai
loc_06999c:
	dc.w $0004,$1052,$0000,$80ff,$fff7,$0021,$0000
	dc.w $0004,$1050,$0000,$80ff,$0006,$000c,$0000
	dc.w $0004,$1051,$0000,$80ff,$ffff,$0015,$0000
	dc.w $0010,$104d,$0000,$80ff,$0007,$000f,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
AlsPhRmpge:
	dc.w $8037
	dc.l PRGPhRmpge
	dc.w $8038
	dc.l ANIPhRmpge

	dc.w $803e,$38e4,$1800
	dc.w $8046,$2800
	dc.w $803f,$0a04,$0005,$0804
	dc.w $8040,$0000,$0647,$2c00
	dc.w $8043,$0007
	dc.w $8041,$0207,$0038
	dc.w $8039,$0000
	dc.w $8048,$0550,$0000
	dc.w $803b,$d000,$f816,$0000

ANIPhRmpge:
	dc.w $8047,$02b8,$0004
	dc.w $8047,$00b9,$0000
	dc.w $802c
	dc.w $8027,$ffe8,$002c
	dc.w $0002,$08cf,$0039,$7800
	dc.w $8011,$001c,$0004,$f000,$f800
	dc.w $8027,$0008,$0034
	dc.w $0002,$08de,$0030,$8800
	dc.w $8047,$00b9,$ffff
	dc.w $803b,$d000,$0016
	dc.w $8011,$001d,$0005,$3800,$10f4,$ff00
	dc.w $8027,$fff8,$0034
	dc.w $0002,$08df,$0031,$88ff,$0014,$0000,$0000
	dc.w $8004,$189e
	dc.w $802b,$1c7d
	dc.w $8007,$0008,$0000
	dc.w $8027,$0008,$0044
	dc.w $0004,$08e0,$0032,$78ff,$0010,$0000,$0000
	dc.w $8027,$0010,$002c
	dc.w $0004,$0931,$0095,$78ff,$ffe0,$0000,$0000
	dc.w $803e,$38e4,$1c00
	dc.w $8046,$4000
	dc.w $803f,$0a04,$0005,$0804
	dc.w $8011,$001c,$0004,$f000,$f800
	dc.w $8027,$0008,$0034
	dc.w $0002,$08de,$0030,$8800
	dc.w $8007,$0010,$0000
	dc.w $8011,$001d,$0005,$3800,$10f4,$ff00
	dc.w $8027,$fff8,$0034
	dc.w $8004,$189e
	dc.w $802b,$1c84
	dc.w $0002,$08df,$0031,$88ff,$0014,$0000,$0000
	dc.w $8007,$0008,$0000
	dc.w $8027,$0008,$0044
	dc.w $0004,$08e0,$0032,$78ff,$0010,$0000,$0000
	dc.w $8027,$0010,$002c
	dc.w $0004,$0931,$0095,$78ff,$ffe0,$0000,$0000
	dc.w $803e,$38e4,$1c00
	dc.w $8046,$40ec
	dc.w $803f,$0e04,$0008,$0804
	dc.w $803b,$d000,$f416
	dc.w $8007,$0020,$0000
	dc.w $8004,$189e
	dc.w $8027,$ffe0,$000c
	dc.w $0002,$08cb,$0034,$7c00
	dc.w $8027,$ffc8,$fff4
	dc.w $0003,$08cc,$0035,$7c00
	dc.w $802b,$1c80
	dc.w $8027,$ffe8,$001c
	dc.w $0002,$08cd,$0036,$7800
	dc.w $8011,$001d,$0005,$3000,$20f4,$ff00
	dc.w $8027,$ffe8,$006c
	dc.w $0006,$08ce,$0037,$78ff,$fffc,$0000,$0000
	dc.w $803e,$38cd,$1f00
	dc.w $8046,$3828
	dc.w $803f,$0e04,$0008,$0804
	dc.w $803b,$d000,$f416
	dc.w $8007,$0010,$0000
	dc.w $8027,$0008,$0034
	dc.w $0002,$09c0,$0049,$7800
	dc.w $8004,$18a3
	dc.w $8027,$0008,$004c
	dc.w $0004,$08ed,$004a,$7800
	dc.w $8027,$0010,$0044
	dc.w $0002,$08f0,$004b,$7800
	dc.w $8027,$ffd8,$0034
	dc.w $802b,$1c7e
	dc.w $0002,$08f1,$004c,$7800
	dc.w $8027,$fff8,$0024

	dc.w $800d
	dc.l loc_069d92
	dc.w $fffe

	dc.w $0003,$08f2,$0051,$7800
	dc.w $8027,$fff8,$0054
	dc.w $0003,$08f3,$0050,$7800
	dc.w $8027,$fff8,$006c
	dc.w $0004,$08f4,$004f,$7800
	dc.w $8047,$02b8,$0000
	dc.w $803e,$28cd,$2400
	dc.w $8046,$0000
	dc.w $803f,$0e04,$0808,$0804
	dc.w $8040,$0004,$0a08,$2cff
	dc.w $8041,$0106,$072e
	dc.w $803c,$0000
	dc.w $8007,$0040,$fff0
	dc.w $8011,$001d,$0005,$e010,$f0f4,$0000
	dc.w $8027,$ffdc,$0024
	dc.w $0003,$094c,$0044,$7c00
	dc.w $8007,$0010,$0010
	dc.w $0003,$091f,$005a,$7c00
	dc.w $802b,$1c7f
	dc.w $8027,$ffe8,$0014
	dc.w $0004,$098c,$003e,$7800
	dc.w $8027,$ffe8,$0034
	dc.w $8004,$18a3
	dc.w $8011,$001d,$0005,$3000,$20f4,$0000
	dc.w $0004,$0991,$003f,$7800
	dc.w $8007,$ffe8,$ffe8
	dc.w $8039,$0005
	dc.w $803c,$0008
	dc.w $8027,$ffec,$004c
	dc.w $0004,$0990,$0040,$78ff,$0000,$ffe8,$0000
	dc.w $8007,$ffe0,$ffe0
	dc.w $8027,$ffe4,$0074
	dc.w $8002,$00e9
	dc.w $0004,$098f,$0041,$78ff,$fff8,$ffc8,$0000

	dc.w $804b
	dc.l $ffff0000,$fff8ce38,$00008000

	dc.w $8027,$ffe4,$005c
	dc.w $0004,$098e,$0042,$78ff,$fff8,$ffd8,$0000
	dc.w $8027,$ffe4,$0044
	dc.w $0004,$098d,$0043,$7cff,$0000,$fff0,$0000
	dc.w $8027,$ffdc,$0024
	dc.w $0004,$094c,$0044,$7c00
	dc.w $0004,$094d,$0045,$7c00
	dc.w $0004,$094e,$0046,$7c00
	dc.w $8049,$0216,$0000,$0000
	dc.w $8028
	dc.w $0004,$091d,$0047,$7cff,$0000,$0008,$0000
	dc.w $000c,$091b,$0048,$7c00
	dc.w $803c,$0004
	dc.w $8027,$ffe0,$001c
	dc.w $0002,$095a,$000c,$7c00
	dc.w $0002,$08fb,$0003,$7cff,$fffc,$0000,$0000
	dc.w $8001

loc_069d92:
	dc.w $0003,$09a9,$74ff,$ffe8,$00b0,$0c00
	dc.w $0003,$09aa,$74ff,$ffa8,$0090,$0c00
	dc.w $0004,$09ab,$74ff,$ff88,$0060,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_069db8:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_069dde

	dc.w $803d
	dc.w $8040,$0406,$0906,$3400
	dc.w $8045,$0002
	dc.w $8048,$0552,$00b4

	dc.w $8036
	dc.l loc_065cf2

loc_069dde:
	dc.w $802c
	dc.w $0004,$092d,$0096,$8000
	dc.w $0005,$092e,$0097,$8000
	dc.w $0006,$092f,$0098,$8000
	dc.w $0005,$092e,$0097,$8000
	dc.w $802a,$002c
	dc.w $0004,$092d,$0096,$8000
	dc.w $0005,$092c,$0099,$8000
	dc.w $0006,$092b,$009a,$8000
	dc.w $0005,$092c,$0099,$8000
	dc.w $0004,$092d,$0096,$8000
	dc.w $8045,$0002
	dc.w $0005,$08ea,$0025,$8000
	dc.w $8007,$ffe8,$0000
	dc.w $000c,$0a22,$0094,$80ff,$ffe0,$0000,$0000
	dc.w $8007,$0018,$0000
	dc.w $0006,$0931,$009b,$8000
	dc.w $8001

;end at 069e5c