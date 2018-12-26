;Bai hu Start
loc_07da22
	move.w #$f0,($344,a4)
	move.w #$40,($346,a4)
	move.w #4,($348,a4)
	move.w #8,($34a,a4)
	move.w #$b8,($34c,a4)
	move.w #$60,($34e,a4)
	move.w #$80,($350,a4)
	rts

;--------------------------
;Ai Start
loc_07da4e:
	tst.b ($4d4,a4)
	beq.w loc_07da78
	move.b ($35c,a4),d0
	andi.w #$fffc,d0
	bne.w loc_07da78
	cmpi.b #$6,($360,a4)
	bne.w loc_07da78
	sf ($4d4,a4)
	move.l #loc_07dd8e,($56,a4)

loc_07da78:
	rts

;--------------------------
loc_07da7a:
	movea.l #loc_07eec4,a0
	bsr.w loc_07dace
	bra.w loc_07db98

;--------------------------
loc_07da88:
	bclr #7,($35c,a4)
	bne.w loc_07da98
	jmp loc_02e5c6

loc_07da98:
	movea.l #loc_07ede4,a0
	bsr.w loc_07dace
	bra.w loc_07db98
 
;--------------------------
loc_07daa6:
	move.l (a7)+,($4d8,a4)
	jmp (a0)

;--------------------------
loc_07daac:
	move.l ($4d8,a4),d0
	beq.b loc_07da88
	clr.l ($4d8,a4)
	movea.l d0,a0
	clr.b d0
	jmp (a0)

;--------------------------
loc_07dabc:
	move.l ($4d8,a4),d0
	beq.b loc_07da88
	clr.l ($4d8,a4)
	movea.l d0,a0
	move.b #-1,d0
	jmp (a0)

;--------------------------
loc_07dace:
	move.l (a7)+,($4dc,a4)
	jmp (a0)

;--------------------------
loc_07dad4:
	move.l ($4dc,a4),d0
	beq.w loc_07db98
	clr.l ($4dc,a4)
	movea.l d0,a0
	jmp (a0)

;-+-+-+-+-+-+-+-+-+-+-+-+-+
loc_07dae4:
	st ($4d4,a4)
	cmpi.w #$a0,($378,a4)
	bgt.w loc_07db4c
	cmpi.w #$3c,($378,a4)
	bgt.w loc_07db28
	cmpi.w #$1e,($378,a4)
	bgt.w loc_07db0a
	bra.w loc_07db8c

loc_07db0a:
	jsr RandomNumberGod
	lea loc_07db1a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07db1a:
	dc.w $0002

	dc.w $001e
	dc.l loc_07db78

	dc.w $001e
	dc.l loc_07db8c

;--------------------------
loc_07db28:
	jsr RandomNumberGod
	lea loc_07db38(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07db38:
	dc.w $0003

	dc.w $003c
	dc.l loc_07db82

	dc.w $001e
	dc.l loc_07db78

	dc.w $001e
	dc.l loc_07db8c

;--------------------------
loc_07db4c:
	jsr RandomNumberGod
	lea loc_07db5c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07db5c:
	dc.w $0002

	dc.w $003c
	dc.l loc_07db82

	dc.w $0014
	dc.l loc_07db78

;--------------------------
loc_07db6a:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07db82

loc_07db78:
	movea.l #loc_07ede4,a0
	bra.w loc_07db92

loc_07db82:
	movea.l #loc_07ee96,a0
	bra.w loc_07db92

loc_07db8c:
	movea.l #loc_07eec4,a0

loc_07db92:
	movea.l a0,a0
	bsr.w loc_07dace

loc_07db98:
	clr.l ($4d8,a4)
	clr.l ($4dc,a4)
	clr.l ($4e0,a4)
	tst.b ($35d,a4)
	beq.w loc_07dbb4
	jsr loc_0226b4
	bra.b loc_07db98

loc_07dbb4:
	st ($35d,a4)
	cmpi.b #6,($360,a4)
	beq.w loc_07dd8e
	tst.b ($247,a4)
	beq.w loc_07dd80
	cmpi.w #$a0,($378,a4)
	bgt.w loc_07dd44
	cmpi.w #$3c,($378,a4)
	bgt.w loc_07dcc0
	cmpi.w #$1e,($378,a4)
	bgt.w loc_07dc3c
	jsr RandomNumberGod
	lea loc_07dbf8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07dbf8:
	dc.w $000b

	dc.w $000a
	dc.l loc_07eff2

	dc.w $000a
	dc.l loc_07efcc

	dc.w $000a
	dc.l loc_07eec4

	dc.w $0032
	dc.l loc_080666

	dc.w $0028
	dc.l loc_07f7a0

	dc.w $0014
	dc.l loc_07fd2a

	dc.w $000a
	dc.l loc_07fbbe

	dc.w $0014
	dc.l loc_08042e

	dc.w $000a
	dc.l loc_080334

	dc.w $000a
	dc.l loc_0804ee

	dc.w $001e
	dc.l loc_07f0e8

;--------------------------
loc_07dc3c:
	jsr RandomNumberGod
	lea loc_07dc4c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07dc4c:
	dc.w $0013

	dc.w $000a
	dc.l loc_07eff2

	dc.w $0005
	dc.l loc_07eec4

	dc.w $0005
	dc.l loc_07efaa

	dc.w $0005
	dc.l loc_07efcc

	dc.w $000f
	dc.l loc_07eefa

	dc.w $0032
	dc.l loc_080666

	dc.w $0028
	dc.l loc_07f7a0

	dc.w $0014
	dc.l loc_07ff12

	dc.w $0014
	dc.l loc_07f9dc

	dc.w $0014
	dc.l loc_07f54a

	dc.w $000a
	dc.l loc_080334

	dc.w $000a
	dc.l loc_0804ee

	dc.w $000a
	dc.l loc_07fd2a

	dc.w $0002
	dc.l loc_0805f8

	dc.w $000a
	dc.l loc_07fb30

	dc.w $000a
	dc.l loc_07fbbe

	dc.w $000a
	dc.l loc_07f6e6

	dc.w $000a
	dc.l loc_080782

	dc.w $001e
	dc.l loc_07f0e8

;--------------------------
loc_07dcc0:
	jsr RandomNumberGod
	lea loc_07dcd0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07dcd0:
	dc.w $0013

	dc.w $001e
	dc.l loc_07ee96

	dc.w $000f
	dc.l loc_07eefa

	dc.w $000a
	dc.l loc_07eec4

	dc.w $000a
	dc.l loc_07eff2

	dc.w $000a
	dc.l loc_07efaa

	dc.w $000a
	dc.l loc_07efcc

	dc.w $0032
	dc.l loc_080666

	dc.w $0014
	dc.l loc_07f54a

	dc.w $0028
	dc.l loc_07f7a0

	dc.w $0014
	dc.l loc_07ff12

	dc.w $0014
	dc.l loc_07f9dc

	dc.w $000a
	dc.l loc_07fb30

	dc.w $000a
	dc.l loc_07f6e6

	dc.w $000a
	dc.l loc_0804ee

	dc.w $000a
	dc.l loc_080334

	dc.w $0002
	dc.l loc_08019c

	dc.w $0002
	dc.l loc_0805f8

	dc.w $000a
	dc.l loc_080782

	dc.w $000a
	dc.l loc_08025a

;--------------------------
loc_07dd44:
	jsr RandomNumberGod
	lea loc_07dd54(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07dd54:
	dc.w $0007

	dc.w $0028
	dc.l loc_07ee96

	dc.w $001e
	dc.l loc_07efaa

	dc.w $000a
	dc.l loc_08025a

	dc.w $000a
	dc.l loc_07f54a

	dc.w $000a
	dc.l loc_07f6e6

	dc.w $0002
	dc.l loc_08019c

	dc.w $0032
	dc.l loc_080666

;--------------------------
loc_07dd80:
	movea.l #loc_07f1e2,a0

loc_07dd86:
	bsr.w loc_07daa6
	bra.w loc_07db98

loc_07dd8e:
	clr.b ($2f6,a4)
	movea.l #loc_07eec4,a0
	bsr.w loc_07dace
	jsr RandomNumberGod
	lea loc_07ddac(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07ddac:
	dc.w $0003

	dc.w $001e
	dc.l loc_07dddc

	dc.w $001e
	dc.l loc_07ddce

	dc.w $001e
	dc.l loc_07ddc0

;-------------------------
loc_07ddc0:
	movea.l #loc_07eefa,a0
	bsr.w loc_07dace
	bra.w loc_07db98

loc_07ddce:
	movea.l #loc_07f09c,a0
	bsr.w loc_07dace
	bra.w loc_07da88

loc_07dddc:
	movea.l #loc_07efcc,a0
	bsr.w loc_07dace
	bra.w loc_07da88

;-+-+-+-+-+-+-+-+-+-+-+-+-+
loc_07ddea:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_07ddfe(pc,d0.w),d0
	jmp loc_07ddfe(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07ddfe:
	dc.w loc_07de1e-loc_07ddfe
	dc.w loc_07de22-loc_07ddfe
	dc.w loc_07de22-loc_07ddfe
	dc.w loc_07de22-loc_07ddfe

	dc.w loc_07de34-loc_07ddfe
	dc.w loc_07de46-loc_07ddfe
	dc.w loc_07de58-loc_07ddfe
	dc.w loc_07de6a-loc_07ddfe

	dc.w loc_07de7c-loc_07ddfe
	dc.w loc_07de7c-loc_07ddfe
	dc.w loc_07de7c-loc_07ddfe
	dc.w loc_07de7c-loc_07ddfe

	dc.w loc_07de7c-loc_07ddfe
	dc.w loc_07de7c-loc_07ddfe
	dc.w loc_07de7c-loc_07ddfe
	dc.w loc_07de7c-loc_07ddfe

;--------------------------
loc_07de1e:
	bra.w loc_07de80

loc_07de22:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_07de80
	bra.w loc_07de88

loc_07de34:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07de80
	bra.w loc_07de88

loc_07de46:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_07de80
	bra.w loc_07de88

loc_07de58:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_07de80
	bra.w loc_07de88

loc_07de6a:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_07de80
	bra.w loc_07de88

loc_07de7c:
	bra.w loc_07de88

loc_07de80:
	bsr.w loc_07efee
	bra.w loc_07db98

loc_07de88:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	scs ($4d1,a4)

loc_07de96:
	tst.b ($365,a4)
	bne.w loc_07e12c
	clr.b ($2f6,a4)
	tst.b ($4d1,a4)
	bpl.w loc_07ded0
	cmpi.b #3,($360,a4)
	beq.w loc_07ded0
	cmpi.b #4,($360,a4)
	beq.w loc_07ded0
	tst.b ($367,a4)
	beq.w loc_07ded4
	cmpi.b #1,($360,a4)
	beq.w loc_07ded4

loc_07ded0:
	bra.w loc_07df02

loc_07ded4
	cmpi.w #$82,($378,a4)
	bgt.w loc_07df02
	cmpi.w #$28,($378,a4)
	blt.w loc_07df02
	cmpi.w #-$82,($37a,a4)
	bgt.w loc_07df02
	tst.b ($24a,a4)
	bne.w loc_07df02
	bsr.w loc_07eef6
	bra.w loc_07e126

loc_07df02:
	cmpi.b #3,($376,a4)
	beq.w loc_07df4e
	cmpi.b #3,($360,a4)
	beq.w loc_07df40
	cmpi.b #4,($360,a4)
	beq.w loc_07df40
	tst.b ($367,a4)
	beq.w loc_07df40
	cmpi.b #1,($360,a4)
	beq.w loc_07df4e
	cmpi.b #2,($360,a4)
	beq.w loc_07df4e
	bra.w loc_07e110

loc_07df40
	jsr RandomNumberGod
	cmpi.w #$f800,d0
	bcs.w loc_07e110

loc_07df4e:
	cmpi.w #$20,($340,a4)
	blt.w loc_07df82
	btst #7,($35c,a4)
	bne.w loc_07df82
	cmpi.w #$40,($378,a4)
	bgt.w loc_07df82
	cmpi.w #-$1e,($37a,a4)
	blt.w loc_07df82
	clr.b ($2f6,a4)
	bsr.w loc_0812f8
	bne.w loc_07e126

loc_07df82:
	cmpi.w #$20,($340,a4)
	blt.w loc_07dfb6
	btst #7,($35c,a4)
	bne.w loc_07dfb6
	cmpi.w #$40,($378,a4)
	bgt.w loc_07dfb6
	cmpi.w #-$50,($37a,a4)
	blt.w loc_07dfb6
	clr.b ($2f6,a4)
	bsr.w loc_0812da
	bne.w loc_07e126

loc_07dfb6:
	btst #7,($35c,a4)
	bne.w loc_07dfe0
	cmpi.w #$40,($378,a4)
	bgt.w loc_07dfe0
	cmpi.w #-$78,($37a,a4)
	blt.w loc_07dfe0
	clr.b ($2f6,a4)
	bsr.w loc_0813d8
	bne.w loc_07e126

loc_07dfe0:
	cmpi.w #$20,($340,a4)
	blt.w loc_07e014
	btst #7,($35c,a4)
	bne.w loc_07e014
	cmpi.w #$4a,($378,a4)
	bgt.w loc_07e014
	cmpi.w #-$28,($37a,a4)
	blt.w loc_07e014
	clr.b ($2f6,a4)
	bsr.w loc_0812f8
	bne.w loc_07e126

loc_07e014:
	cmpi.w #$40,($340,a4)
	blt.w loc_07e04e
	btst #7,($35c,a4)
	bne.w loc_07e04e
	cmpi.w #$4a,($378,a4)
	bgt.w loc_07e04e
	cmpi.w #-$78,($37a,a4)
	blt.w loc_07e04e
	jsr loc_02c78a
	beq.w loc_07e04e
	bsr.w loc_081316
	bne.w loc_07e126

loc_07e04e:
	btst #7,($35c,a4)
	bne.w loc_07e078
	cmpi.w #$54,($378,a4)
	bgt.w loc_07e078
	cmpi.w #-$50,($37a,a4)
	blt.w loc_07e078
	clr.b ($2f6,a4)
	bsr.w loc_081562
	bne.w loc_07e126

loc_07e078:
	btst #7,($35c,a4)
	bne.w loc_07e0a8
	cmpi.w #$5e,($378,a4)
	bgt.w loc_07e0a8
	cmpi.w #-$78,($37a,a4)
	blt.w loc_07e0a8
	movea.l #loc_07f0c0,a0
	bsr.w loc_07dace
	bsr.w loc_0813d8
	bne.w loc_07e126

loc_07e0a8:
	btst #7,($35c,a4)
	bne.w loc_07e0ce
	cmpi.w #$5e,($378,a4)
	bgt.w loc_07e0ce
	cmpi.w #-$46,($37a,a4)
	blt.w loc_07e0ce
	bsr.w loc_08139c
	bne.w loc_07e126

loc_07e0ce:
	cmpi.w #$20,($340,a4)
	blt.w loc_07e110
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07e110
	btst #7,($35c,a4)
	beq.w loc_07e110
	cmpi.w #$48,($378,a4)
	bgt.w loc_07e110
	cmpi.w #-$28,($37a,a4)
	blt.w loc_07e110
	clr.b ($2f6,a4)
	bsr.w loc_0812da
	bne.w loc_07e126

loc_07e110:
	jsr loc_02e456
	jsr loc_0226b4
	jsr loc_02e370
	bra.w loc_07de96

loc_07e126:
	jsr loc_02e308

loc_07e12c:
	clr.b ($2f6,a4)
	bclr #2,($35c,a4)
	bra.w loc_07db98

;-+-+-+-+-+-+-+-+-+-+-+-+-+
loc_07e13a:
	cmpi.w #$80,($340,a4)
	bge.w loc_07e158
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($358,a4),d0
	bcs.w loc_07e158
	bra.w loc_07e224

loc_07e158:
	move.w #7,($4d6,a4)

loc_07e15e:
	cmpi.b #1,($36a,a4)
	bne.w loc_07e172
	btst #0,($362,a4)
	bne.w loc_07de88

loc_07e172:
	tst.b ($367,a4)
	beq.w loc_07e214
	cmpi.b #3,($36a,a4)
	beq.w loc_07e208
	cmpi.b #6,($36a,a4)
	beq.w loc_07e1cc
	cmpi.b #5,($360,a4)
	beq.w loc_07e1b6
	cmpi.b #1,($36a,a4)
	bne.w loc_07e1ac
	cmpi.w #$20,($374,a4)
	bgt.w loc_07e208

loc_07e1ac:
	cmpi.b #1,($360,a4)
	beq.w loc_07e1e6

loc_07e1b6:
	jsr loc_02e456
	jsr loc_0226b4
	subq.w #1,($4d6,a4)
	bge.b loc_07e15e
	bra.w loc_07e214

loc_07e1cc:
	cmpi.b #4,($376,a4)
	beq.b loc_07e1b6
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_07e224
	bra.w loc_07eff2

loc_07e1e6:
	cmpi.b #4,($36a,a4)
	beq.w loc_07e208
	cmpi.w #$80,($358,a4)
	blt.w loc_07e214
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07e214

loc_07e208:
	btst #3,($24a,a4)
	bne.b loc_07e1b6
	bra.w loc_07e236

loc_07e214:
	btst #7,($35c,a4)
	bne.w loc_07e232
	jsr loc_02e456

loc_07e224:
	jsr loc_0226b4
	moveq #6,d0
	jsr loc_02e39c

loc_07e232:
	bra.w loc_07db98

loc_07e236:
	tst.b ($247,a4)
	beq.w loc_07f1e2

loc_07e23e:
	btst #1,($246,a4)
	bne.w loc_07e250
	jsr loc_0226b4
	bra.b loc_07e23e

loc_07e250:
	btst #3,($24a,a4)
	bne.w loc_07e7e4
	cmpi.b #5,($36a,a4)
	beq.w loc_07e7e4
	cmpi.b #5,($360,a4)
	beq.w loc_07e7e4
	tst.b ($365,a4)
	beq.w loc_07de88
	cmpi.b #1,($360,a4)
	beq.w loc_07e2ac
	cmpi.b #2,($360,a4)
	bne.w loc_07e2a2
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_07e7d6
	sf d3
	move.w ($378,a4),d2
	bra.w loc_07e2b8

loc_07e2a2:
	st d3
	move.w ($374,a4),d2
	bra.w loc_07e2b8

loc_07e2ac:
	sf d3
	move.w ($374,a4),d2
	add.w ($378,a4),d2
	asr.w #1,d2

loc_07e2b8:
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_07e2cc
	bra.w loc_07e4b2

loc_07e2cc:
	btst #7,($35c,a4)
	beq.w loc_07e4b2
	cmpi.w #$1e,($36c,a4)
	bge.w loc_07e30a
	jsr RandomNumberGod
	lea loc_07e2f0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07e2f0:
	dc.w $0004

	dc.w $0014
	dc.l loc_07e3be

	dc.w $0014
	dc.l loc_07e442

	dc.w $0014
	dc.l loc_07e3e8

	dc.w $0014
	dc.l loc_07e404

;--------------------------
loc_07e30a:
	cmpi.w #$3c,($36c,a4)
	bge.w loc_07e33e
	jsr RandomNumberGod
	lea loc_07e324(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07e324:
	dc.w $0004

	dc.w $0014
	dc.l loc_07e3be

	dc.w $0014
	dc.l loc_07e442

	dc.w $0014
	dc.l loc_07e3e8

	dc.w $0014
	dc.l loc_07e396

;--------------------------
loc_07e33e:
	cmpi.w #$78,($36c,a4)
	bge.w loc_07e372
	jsr RandomNumberGod
	lea loc_07e358(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07e358:
	dc.w $0004

	dc.w $0014
	dc.l loc_07e396

	dc.w $0014
	dc.l loc_07e3da

	dc.w $0014
	dc.l loc_07e3aa

	dc.w $0014
	dc.l loc_07e420

;--------------------------
loc_07e372:
	jsr RandomNumberGod
	lea loc_07e382(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07e382:
	dc.w $0003

	dc.w $0014
	dc.l loc_07e396

	dc.w $0014
	dc.l loc_07e3aa

	dc.w $0014
	dc.l loc_07e420

;--------------------------
loc_07e396:
	tst.b d3
	bne.w loc_07e7e4
	movea.l #loc_07eec4,a0
	bsr.w loc_07dace
	bra.w loc_07e7ba

loc_07e3aa:
	tst.b d3
	bne.w loc_07e7e4
	movea.l #loc_07ee96,a0
	bsr.w loc_07dace
	bra.w loc_07e7ba

loc_07e3be:
	movea.l #loc_07f0e8,a0
	bsr.w loc_07daa6
	bra.w loc_07e7ba

loc_07e3cc:
	movea.l #loc_07efaa,a0
	bsr.w loc_07dace
	bra.w loc_07e7ba

loc_07e3da:
	movea.l #loc_07efcc,a0
	bsr.w loc_07dace
	bra.w loc_07e7ba

loc_07e3e8:
	cmpi.w #$20,($340,a4)
	blt.w loc_07e7ba
	bsr.w loc_0812f8
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e404:
	cmpi.w #$20,($340,a4)
	blt.w loc_07e7ba
	bsr.w loc_0812da
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e420:
	tst.b d3                             
	bne.w loc_07e7e4               ;[1]     
	cmpi.w #$20,($340,a4)               
	blt.w loc_07e7ba               ;[2]     
	bsr.w loc_0813ba               ;[3]     
	beq.w loc_07e7e4               ;[1]     
	jsr loc_02e308               ;[4]     
	bra.w loc_07e7ba               ;[2]     

loc_07e442:
	cmpi.w #$46,($36c,a4)
	bgt.w loc_07e484
	cmpi.w #$40,($340,a4)
	blt.w loc_07e7ba
	jsr loc_02c78a
	beq.w loc_07e472
	bsr.w loc_081316
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e472:
	bsr.w loc_0812f8
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e484:
	jsr loc_02c78a
	beq.w loc_07e4a0
	bsr.w loc_081346
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e4a0:
	bsr.w loc_0812da
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e4b2:
	jsr RandomNumberGod
	andi.w #$1f,d0
	subi.w #$10,d0
	add.w d0,d2
	btst #0,($369,a4)
	bne.w loc_07e4ee
	btst #2,($369,a4)
	bne.w loc_07e56e
	btst #1,($369,a4)
	bne.w loc_07e532
	btst #3,($369,a4)
	bne.w loc_07e56e
	bra.w loc_07e7e4

loc_07e4ee:
	cmpi.w #$24,d2
	ble.w loc_07e6ac
	cmpi.w #$28,d2
	ble.w loc_07e76c
	cmpi.w #$32,d2
	ble.w loc_07e6cc
	cmpi.w #$36,d2
	ble.w loc_07e5dc
	cmpi.w #$40,d2
	ble.w loc_07e648
	cmpi.w #$4a,d2
	ble.w loc_07e636
	cmpi.w #$54,d2
	ble.w loc_07e610
	cmpi.w #$5e,d2
	ble.w loc_07e5b2
	bra.w loc_07e7e4

loc_07e532:
	cmpi.w #$24,d2
	ble.w loc_07e6ac
	cmpi.w #$28,d2
	ble.w loc_07e6cc
	cmpi.w #$2e,d2
	ble.w loc_07e710
	cmpi.w #$36,d2
	ble.w loc_07e648
	cmpi.w #$3a,d2
	ble.w loc_07e5dc
	cmpi.w #$40,d2
	ble.w loc_07e76c
	cmpi.w #$4a,d2
	ble.w loc_07e636
	bra.w loc_07e7e4

loc_07e56e:
	cmpi.w #$20,d2
	ble.w loc_07e78c
	cmpi.w #$26,d2
	ble.w loc_07e68c
	cmpi.w #$2a,d2
	ble.w loc_07e6e2
	cmpi.w #$34,d2
	ble.w loc_07e76c
	cmpi.w #$36,d2
	ble.w loc_07e5dc
	cmpi.w #$3a,d2
	ble.w loc_07e610
	cmpi.w #$40,d2
	ble.w loc_07e65e
	cmpi.w #$4a,d2
	ble.w loc_07e6f8
	bra.w loc_07e7e4

loc_07e5b2:
	cmpi.w #$20,($340,a4)
	blt.w loc_07e7ba
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_07e7ba
	bsr.w loc_0812b8
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e5dc:
	cmpi.w #$40,($340,a4)
	blt.w loc_07e7ba
	jsr loc_02c78a
	beq.w loc_07e76c
	bsr.w loc_081346
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e602:
	movea.l #loc_07eefa,a0
	bsr.w loc_07dace
	bra.w loc_07db98

loc_07e610:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_07e7ba
	move.b #2,($2f6,a4)
	bsr.w loc_0813d8
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e636:
	bsr.w loc_0813ba
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e648:
	clr.b ($2f6,a4)
	bsr.w loc_0814d4
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e65e:
	move.b #8,($2f6,a4)
	bsr.w loc_081562
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e676:
	clr.b ($2f6,a4)
	bsr.w loc_0813d8
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e68c:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07e7ba
	clr.b ($2f6,a4)
	movea.l #loc_07efaa,a0
	bsr.w loc_07dace
	bra.w loc_07e7ba

loc_07e6ac:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07e7ba
	clr.b ($2f6,a4)
	movea.l #loc_07efcc,a0
	bsr.w loc_07dace
	bra.w loc_07e7ba

loc_07e6cc:
	clr.b ($2f6,a4)
	bsr.w loc_0814d4
	beq.w loc_07e7e4
	jsr loc_02e2d0
	bra.w loc_07e7ba

loc_07e6e2:
	clr.b ($2f6,a4)
	bsr.w loc_081562
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e6f8:
	move.b #8,($2f6,a4)
	bsr.w loc_081452
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e710:
	clr.b ($2f6,a4)
	bsr.w loc_081452
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e726:
	clr.b ($2f6,a4)
	bsr.w loc_0813d8
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e73c:
	move.b #8,($2f6,a4)
	bsr.w loc_0813d8
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e754:
	move.b #2,($2f6,a4)
	bsr.w loc_0813d8
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e76c:
	cmpi.w #$20,($340,a4)
	blt.w loc_07e7ba
	clr.b ($2f6,a4)
	bsr.w loc_0812f8
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e78c:
	cmpi.w #$20,($340,a4)
	blt.w loc_07e7ba
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_07e7ba
	clr.b ($2f6,a4)
	bsr.w loc_0812da
	beq.w loc_07e7e4
	jsr loc_02e308
	bra.w loc_07e7ba

loc_07e7ba:
	jsr loc_0226b4
	btst #7,($35c,a4)
	bne.w loc_07e7d2
	moveq #4,d0
	jsr loc_02e39c

loc_07e7d2:
	bra.w loc_07da88

;--------------------------
loc_07e7d6:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_07eff2

loc_07e7e4:
	jsr loc_02e456
	jsr loc_0226b4
	bclr #3,($35c,a4)
	bra.w loc_07da88

;-+-+-+-+-+-+-+-+-+-+-+-+-+
loc_07e7fa:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_07e80e(pc,d0.w),d0
	jmp loc_07e80e(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07e80e:
	dc.w loc_07e82e-loc_07e80e
	dc.w loc_07e82e-loc_07e80e
	dc.w loc_07e834-loc_07e80e
	dc.w loc_07e848-loc_07e80e

	dc.w loc_07e85c-loc_07e80e
	dc.w loc_07e870-loc_07e80e
	dc.w loc_07e884-loc_07e80e
	dc.w loc_07e884-loc_07e80e

	dc.w loc_07e884-loc_07e80e
	dc.w loc_07e884-loc_07e80e
	dc.w loc_07e884-loc_07e80e
	dc.w loc_07e884-loc_07e80e

	dc.w loc_07e884-loc_07e80e
	dc.w loc_07e884-loc_07e80e
	dc.w loc_07e884-loc_07e80e
	dc.w loc_07e884-loc_07e80e

;--------------------------
loc_07e82e:
	jmp loc_02e5b2

loc_07e834:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_07e888
	jmp loc_02e5b2

loc_07e848:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07e888
	jmp loc_02e5b2

loc_07e85c:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_07e888
	jmp loc_02e5b2

loc_07e870:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_07e888
	jmp loc_02e5b2

loc_07e884:
	bra.w loc_07e888

loc_07e888:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcc.b loc_07e89c
	move.b #1,($4d2,a4)
	bra.b loc_07e8ac

loc_07e89c:
	cmpi.w #$c000,d0
	bcc.b loc_07e8a8
	sf ($4d2,a4)
	bra.b loc_07e8ac

loc_07e8a8:
	st ($4d2,a4)

loc_07e8ac:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	scs ($4d3,a4)

loc_07e8ba:
	tst.b ($367,a4)
	beq.w loc_07e8d0
	cmpi.w #$2c,($374,a4)
	bge.w loc_07e8d0
	bra.w loc_07e9fe

loc_07e8d0:
	tst.b ($363,a4)
	beq.w loc_07ea80
	cmpi.w #-$3c,($370,a4)
	ble.w loc_07ea80
	cmpi.w #$38,($370,a4)
	ble.w loc_07e9fe
	tst.b ($4d3,a4)
	beq.w loc_07e988
	cmpi.w #$f4,($37c,a4)
	bgt.w loc_07e988
	cmpi.w #$ac,($37c,a4)
	ble.w loc_07e988
	cmpi.b #$12,($364,a4)
	beq.w loc_07e988
	cmpi.w #$20,($340,a4)
	blt.w loc_07e988
	jsr RandomNumberGod
	lea loc_07e92c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07e92c:
	dc.w $0003

	dc.w $0032
	dc.l loc_07e970

	dc.w $0014
	dc.l loc_07e940

	dc.w $0014
	dc.l loc_07e958

;--------------------------
loc_07e940:
	cmpi.w #$8c,($378,a4)
	blt.w loc_07e9fe
	bsr.w loc_0812b8
	jsr loc_02e308
	bra.w loc_07ea80

loc_07e958:
	cmpi.w #$64,($378,a4)
	blt.w loc_07e9fe
	bsr.w loc_0812da
	jsr loc_02e308
	bra.w loc_07ea80

loc_07e970:
	cmpi.w #$b4,($378,a4)
	bgt.w loc_07e9fe
	bsr.w loc_0813ba
	jsr loc_02e308
	bra.w loc_07ea80

loc_07e988:
	tst.b ($4d2,a4)
	beq.w loc_07e9b8
	bgt.w loc_07e998
	bra.w loc_07e9fe

loc_07e998:
	cmpi.w #$44,($37c,a4)
	bgt.w loc_07e9fe
	tst.b ($24a,a4)
	bne.w loc_07e9fe
	movea.l #loc_07f078,a0
	bsr.w loc_07dace
	bra.w loc_07ea80

loc_07e9b8:
	cmpi.w #$2a,($37c,a4)
	bgt.w loc_07e9fe
	cmpi.b #$12,($364,a4)
	beq.w loc_07e9fe
	tst.b ($24a,a4)
	bne.w loc_07e9fe
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_07e9f0
	movea.l #loc_07efaa,a0
	bsr.w loc_07dace
	bra.w loc_07ea80

loc_07e9f0:
	movea.l #loc_07f0c0,a0
	bsr.w loc_07dace
	bra.w loc_07ea80

loc_07e9fe:
	cmpi.w #$24,($370,a4)
	bgt.w loc_07ea70
	cmpi.w #$c,($370,a4)
	bgt.w loc_07ea70
	cmpi.w #$b4,($36c,a4)
	bgt.w loc_07ea70
	cmpi.w #$60,($340,a4)
	blt.w loc_07ea34
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_07ea50

loc_07ea34:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07ea70
	bsr.w loc_0812f8
	jsr loc_02e308
	bra.w loc_07ea80

loc_07ea50:
	cmpi.w #$40,($340,a4)
	blt.w loc_07ea70
	bsr.w loc_081346
	bne.w loc_07ea80
	bsr.w loc_0812f8
	jsr loc_02e308
	bra.w loc_07ea80

loc_07ea70:
	jsr loc_02e456
	jsr loc_0226b4
	bra.w loc_07e8ba

loc_07ea80:
	clr.b ($2f6,a4)
	bra.w loc_07db98

;-+-+-+-+-+-+-+-+-+-+-+-+-+
loc_07ea88:
	clr.b ($2f6,a4)
	cmpi.w #$20,($340,a4)
	bge.w loc_07ea9a
	bra.w loc_07db98

loc_07ea9a:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_07ead4
	jsr RandomNumberGod
	lea loc_07eab4(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07eab4:
	dc.w $0005

	dc.w $0032
	dc.l loc_07ebac

	dc.w $000a
	dc.l loc_07ebe0

	dc.w $000a
	dc.l loc_07ebc4

	dc.w $000a
	dc.l loc_07ec22

	dc.w $000a
	dc.l loc_07ec0a

;--------------------------
loc_07ead4:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_07eb0e
	jsr RandomNumberGod
	lea loc_07eaee(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07eaee:
	dc.w $0005

	dc.w $0032
	dc.l loc_07ebac

	dc.w $000a
	dc.l loc_07ebe0

	dc.w $000a
	dc.l loc_07ebc4

	dc.w $000a
	dc.l loc_07ec0a

	dc.w $000a
	dc.l loc_07ec22

;--------------------------
loc_07eb0e:
	cmpi.w #$78,($378,a4)
	bgt.w loc_07eb54
	jsr RandomNumberGod
	lea loc_07eb28(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07eb28:
	dc.w $0007

	dc.w $0032
	dc.l loc_07ebac

	dc.w $000a
	dc.l loc_07ebe0

	dc.w $000a
	dc.l loc_07ec22

	dc.w $000a
	dc.l loc_07ebd2

	dc.w $000a
	dc.l loc_07ec0a

	dc.w $000a
	dc.l loc_07ebee

	dc.w $000a
	dc.l loc_07eb90

;--------------------------
loc_07eb54:
	jsr RandomNumberGod
	lea loc_07eb64(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07eb64
	dc.w $0007

	dc.w $0032
	dc.l loc_07ebac

	dc.w $000a
	dc.l loc_07eb90

	dc.w $000a
	dc.l loc_07ebe0

	dc.w $000a
	dc.l loc_07ebd2

	dc.w $000a
	dc.l loc_07ec22

	dc.w $000a
	dc.l loc_07ebee

	dc.w $000a
	dc.l loc_07eb9e

;--------------------------
loc_07eb90:
	movea.l #loc_07f6e6,a0
	bsr.w loc_07daa6
	bra.w loc_07db98

loc_07eb9e:
	bsr.w loc_081376
	jsr loc_02e308
	bra.w loc_07db98

loc_07ebac:
	jsr loc_02c78a
	beq.w loc_07ebe0
	movea.l #loc_080666,a0
	bsr.w loc_07daa6
	bra.w loc_07db98

loc_07ebc4:
	movea.l #loc_07f7a0,a0
	bsr.w loc_07daa6
	bra.w loc_07db98

loc_07ebd2:
	movea.l #loc_0806fe,a0
	bsr.w loc_07daa6
	bra.w loc_07db98

loc_07ebe0:
	movea.l #loc_07f0e8,a0
	bsr.w loc_07daa6
	bra.w loc_07db98

loc_07ebee:
	movea.l #loc_07eefa,a0
	bsr.w loc_07dace
	bra.w loc_07db98

loc_07ebfc:
	movea.l #loc_07efcc,a0
	bsr.w loc_07dace
	bra.w loc_07db98

loc_07ec0a:
	cmpi.w #$20,($340,a4)
	blt.w loc_07ec1e
	bsr.w loc_0812f8
	jsr loc_02e308

loc_07ec1e:
	bra.w loc_07db98

loc_07ec22:
	cmpi.w #$20,($340,a4)
	blt.w loc_07ec40
	cmpi.w #$b4,($36c,a4)
	bgt.w loc_07db98
	bsr.w loc_0813ba
	jsr loc_02e308

loc_07ec40:
	bra.w loc_07db98

;-+-+-+-+-+-+-+-+-+-+-+-+-+
loc_07ec44:
	clr.b ($2f6,a4)
	cmpi.w #$28,($36c,a4)
	bge.w loc_07ec58
	move.b #4,($2f6,a4)

loc_07ec58:
	cmpi.w #$68,($36c,a4)
	ble.w loc_07ec68
	move.b #8,($2f6,a4)

loc_07ec68:
	clr.b ($2f6,a4)
	btst #5,($361,a4)
	beq.w loc_07ec7e
	jsr loc_0226b4
	bra.b loc_07ec44

loc_07ec7e:
	clr.b ($2f6,a4)
	moveq #$10,d0
	jsr loc_02e39c
	cmpi.w #$20,($340,a4)
	bge.w loc_07eca2
	movea.l #loc_07ede4,a0
	bsr.w loc_07dace
	bra.w loc_07db98

loc_07eca2
	jsr RandomNumberGod
	lea loc_07ecb2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07ecb2:
	dc.w $0003

	dc.w $003c
	dc.l loc_07ecfa

	dc.w $001e
	dc.l loc_07ecec

	dc.w $000a
	dc.l loc_07ecc6

;--------------------------
loc_07ecc6:
	movea.l #loc_07f54a,a0
	bsr.w loc_07daa6
	bra.w loc_07db98

loc_07ecd4:
	cmpi.w #$20,($340,a4)
	blt.w loc_07ece8
	bsr.w loc_0812f8
	jsr loc_02e308

loc_07ece8:
	bra.w loc_07db98

loc_07ecec:
	movea.l #loc_07f0e8,a0
	bsr.w loc_07daa6
	bra.w loc_07db98

loc_07ecfa:
	jsr loc_02c78a
	beq.b loc_07ecd4
	cmpi.w #$40,($340,a4)
	blt.b loc_07ecd4
	bsr.w loc_081376
	jsr loc_02e308
	bsr.w loc_081346
	jsr loc_02e308
	bra.w loc_07db98

;-+-+-+-+-+-+-+-+-+-+-+-+-+
loc_07ed22:
	andi.b #2,($2f6,a4)

loc_07ed28:
	btst #5,($249,a4)
	beq.w loc_07ed68
	cmpi.w #$50,($378,a4)
	blt.w loc_07ed58
	cmpi.w #$80,($358,a4)
	blt.w loc_07ed58
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07ed58
	st ($2fb,a4)

loc_07ed58:
	moveq #8,d0
	jsr loc_02e39c
	jsr loc_0226b4
	bra.b loc_07ed28

loc_07ed68:
	jsr loc_02e370
	move.l #$80004,d0
	jsr loc_02e39c
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_07ed8e
	bra.w loc_07da88

loc_07ed8e:
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$32,($378,a4)
	bgt.w loc_07eddc

loc_07eda4:
	tst.b ($249,a4)
	beq.w loc_07eddc
	jsr RandomNumberGod
	lea loc_07edc0(pc),a0
	jsr loc_02decc
	bra.w loc_07edd4

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07edc0:
	dc.w $0003
	dc.w $005a
	dc.l loc_07f0e8
	dc.w $000a
	dc.l loc_080666
	dc.w $000a
	dc.l loc_0804ee

;--------------------------
loc_07edd4:
	jsr loc_0226b4
	bra.b loc_07eda4

loc_07eddc:
	bra.w loc_07e13a

loc_07ede0:
	move.l (a7)+,($4dc,a4)

loc_07ede4:
	cmpi.w #$60,($340,a4)
	bge.w loc_07ee14
	andi.b #2,($2f6,a4)
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$48,d2
	jsr loc_02e0f4
	bra.w loc_07dad4

loc_07ee14:
	jsr loc_02e496
	jsr loc_02e550
	bra.w loc_07dad4

loc_07ee24:
	jsr loc_02e370
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.b loc_07ede4
	cmpi.w #$a0,($358,a4)
	blt.w loc_07ee5c
	jsr RandomNumberGod
	cmpi.w #$3000,d0
	bcs.w loc_07eec4
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_07ee96

loc_07ee5c:
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$48,d2
	jsr loc_02e0aa
	jsr loc_02e496
	jsr loc_02e550
	bra.w loc_07dad4

loc_07ee88:
	move.l #$40008,d0
	bra.w loc_07ee9c

;--------------------------
loc_07ee92:
	move.l (a7)+,($4dc,a4)

loc_07ee96:
	move.l #$100020,d0

loc_07ee9c:
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$48,d2
	jsr loc_02e0f4
	clr.b ($2f6,a4)
	bra.w loc_07dad4

loc_07eeb6:
	move.l #$40008,d0
	bra.w loc_07eeca

loc_07eec0:
	move.l (a7)+,($4dc,a4)

loc_07eec4:
	move.l #$100020,d0

loc_07eeca:
	move.b #4,($2f6,a4)
	move.w #$b4,d2
	swap d2
	move.w #$48,d2
	jsr loc_02e0f4
	cmpi.w #$48,($378,a4)
	ble.w loc_07eeee
	bmi.w loc_07ede4

loc_07eeee:
	clr.b ($2f6,a4)
	bra.w loc_07dad4

loc_07eef6:
	move.l (a7)+,($4dc,a4)

loc_07eefa:
	cmpi.w #$46,($36c,a4)
	bgt.w loc_07ef16
	jsr RandomNumberGod
	cmpi.w #-$1000,d0
	bcs.w loc_07ef86
	bra.w loc_07ef7c

loc_07ef16:
	cmpi.w #$5a,($36c,a4)
	bgt.w loc_07ef3c
	move.l #$80008,d0
	move.l #$780000,d2
	move.b #4,($2f6,a4)
	jsr loc_02e0f4
	bra.w loc_07ef5a

loc_07ef3c:
	cmpi.w #$78,($36c,a4)
	blt.w loc_07ef5a
	move.l #$80008,d0
	moveq #$5a,d2
	move.b #8,($2f6,a4)
	jsr loc_02e0f4

loc_07ef5a:
	cmpi.w #$28,($378,a4)
	bgt.w loc_07ef86
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07ef7c
	move.b #5,($2f6,a4)
	bra.w loc_07ef8c

loc_07ef7c:
	move.b #1,($2f6,a4)
	bra.w loc_07ef8c

loc_07ef86:
	move.b #9,($2f6,a4)

loc_07ef8c:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_07ef8c
	clr.b ($2f6,a4)
	moveq #4,d0
	jsr loc_02e39c
	bra.w loc_07dad4

;--------------------------
loc_07efaa:;This is a global some reason
	cmpi.w #$20,($340,a4)
	blt.w loc_07ee96
	clr.b ($2f6,a4)
	bsr.w loc_0815fa
	jsr loc_0226b4
	jsr loc_02e308
	bra.w loc_07dad4

;--------------------------
loc_07efcc:
	cmpi.w #$20,($340,a4)
	blt.w loc_07eec4
	clr.b ($2f6,a4)
	bsr.w loc_0815dc
	jsr loc_0226b4
	jsr loc_02e308
	bra.w loc_07dad4

loc_07efee:
	move.l (a7)+,($4dc,a4)

loc_07eff2:
	cmpi.w #$1e,($36c,a4)
	blt.w loc_07f014
	cmpi.w #$3c,($36c,a4)
	blt.w loc_07f03a
	cmpi.w #$b4,($36c,a4)
	bgt.w loc_07f058
	bra.w loc_07ede4

loc_07f014:
	cmpi.w #$80,($340,a4)
	blt.w loc_07f03a
	move.b ($246,a4),d0
	andi.b #$c,d0
	bne.w loc_07f030
	bra.b loc_07efcc

loc_07f02c:
	beq.w loc_07f03a

loc_07f030:
	move.b #9,($2f6,a4)
	bra.w loc_07ef8c

loc_07f03a:
	move.l #$100020,d0
	move.b #4,($2f6,a4)
	move.w #$b4,d2
	swap d2
	clr.w d2
	jsr loc_02e0f4
	bra.w loc_07f070

loc_07f058:
	move.l #$100020,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$3c,d2
	jsr loc_02e0f4

loc_07f070:
	clr.b ($2f6,a4)
	bra.w loc_07dad4

;--------------------------
loc_07f078:
	move.b #9,($2f6,a4)

loc_07f07e:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_07f07e
	moveq #2,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_07dad4

;--------------------------
loc_07f09c:
	move.b #5,($2f6,a4)

loc_07f0a2:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_07f0a2
	moveq #2,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_07dad4

;--------------------------
loc_07f0c0:
	move.b #1,($2f6,a4)

loc_07f0c6:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_07f0c6
	moveq #2,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_07dad4

;--------------------------
loc_07f0e4:
	move.l (a7)+,($4d8,a4)

loc_07f0e8:
	cmpi.w #$20,($340,a4)
	blt.w loc_07daac
	move.w #7,d0

loc_07f0f6:
	move.w d0,($4d6,a4)
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_07daac
	btst #6,($24a,a4)
	bne.w loc_07daac
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$21,d0
	bne.w loc_07dabc
	tst.b ($247,a4)
	beq.w loc_07f1a0
	cmpi.w #-$50,($37a,a4)
	bgt.w loc_07f16e
	cmpi.w #$40,($340,a4)
	blt.w loc_07f16e
	cmpi.w #$28,($378,a4)
	ble.w loc_07f160
	cmpi.w #$78,($378,a4)
	ble.w loc_07f152

loc_07f152:
	movea.l #loc_07f078,a0
	bsr.w loc_07dace
	bra.w loc_07f1a8

loc_07f160:
	movea.l #loc_07f0c0,a0
	bsr.w loc_07dace
	bra.w loc_07f1a8

loc_07f16e:
	cmpi.w #$24,($36c,a4)
	ble.w loc_07f194
	move.l #$100010,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$24,d2
	jsr loc_02e0f4
	bra.w loc_07f1a8

loc_07f194:
	bsr.w loc_081250
	bne.w loc_07f1ca
	bra.w loc_07f1a8

loc_07f1a0:
	bsr.w loc_08126a
	bne.w loc_07f1ca

loc_07f1a8:
	move.l #$20004,d0
	jsr loc_02e420
	move.w ($4d6,a4),d0
	dbra d0,loc_07f0f6
	jsr loc_02e308
	clr.b ($2f6,a4)
	bra.w loc_07daac

loc_07f1ca:
	move.l #$100010,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_07daac

;--------------------------
loc_07f1de:
	move.l (a7)+,($4d8,a4)

loc_07f1e2:
	btst #0,($24a,a4)
	bne.w loc_07daac
	tst.b ($247,a4)
	bne.w loc_07daac
	cmpi.w #$20,($340,a4)
	blt.w loc_07daac

loc_07f1fe:
	clr.b ($2f6,a4)
	btst #1,($246,a4)
	bne.w loc_07f53c
	move.b ($361,a4),d0
	andi.b #$f8,d0
	beq.w loc_07f222
	cmpi.b #5,($360,a4)
	beq.w loc_07f532

loc_07f222:
	tst.b ($365,a4)
	bne.w loc_07f3ea
	cmpi.w #$60,($358,a4)
	blt.w loc_07f3ea
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_07f3c8
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_07f310
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07f280
	cmpi.w #$20,($378,a4)
	bgt.w loc_07f280
	cmpi.w #$20,($37a,a4)
	bgt.w loc_07f280
	cmpi.w #-$20,($37a,a4)
	blt.w loc_07f280
	bsr.w loc_081562
	bra.w loc_07f53c

loc_07f280:
	cmpi.w #$30,($378,a4)
	bgt.w loc_07f2a6
	cmpi.w #-$20,($37a,a4)
	bgt.w loc_07f2a6
	cmpi.w #-$50,($37a,a4)
	blt.w loc_07f2a6
	bsr.w loc_081452
	bra.w loc_07f53c

loc_07f2a6:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07f2da
	cmpi.w #$40,($378,a4)
	bgt.w loc_07f2da
	cmpi.w #-$30,($37a,a4)
	bgt.w loc_07f2da
	cmpi.w #-$30,($37a,a4)
	blt.w loc_07f2da
	bsr.w loc_0814d4
	bra.w loc_07f53c

loc_07f2da:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.b loc_07f2da
	cmpi.w #$46,($378,a4)
	bgt.w loc_07f30c
	cmpi.w #$30,($37a,a4)
	bgt.w loc_07f30c
	cmpi.w #-$20,($37a,a4)
	blt.w loc_07f30c
	bsr.w loc_0813d8
	bra.w loc_07f53c

loc_07f30c:
	bra.w loc_07f532

loc_07f310:
	jsr RandomNumberGod
	cmpi.w #-$8000,d0
	bcs.w loc_07f344
	cmpi.w #$28,($378,a4)
	bgt.w loc_07f344
	cmpi.w #$20,($37a,a4)
	bgt.w loc_07f344
	cmpi.w #-$20,($37a,a4)
	blt.w loc_07f344
	bsr.w loc_081562
	bra.w loc_07f53c

loc_07f344:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07f378
	cmpi.w #$38,($378,a4)
	bgt.w loc_07f378
	cmpi.w #$20,($37a,a4)
	bgt.w loc_07f378
	cmpi.w #-$20,($37a,a4)
	blt.w loc_07f378
	bsr.w loc_0814d4
	bra.w loc_07f53c

loc_07f378:
	cmpi.w #$48,($378,a4)
	bgt.w loc_07f39e
	cmpi.w #-$20,($37a,a4)
	bgt.w loc_07f39e
	cmpi.w #-$40,($37a,a4)
	blt.w loc_07f39e
	bsr.w loc_081452
	bra.w loc_07f53c

loc_07f39e:
	cmpi.w #$58,($378,a4)
	bgt.w loc_07f3c4
	cmpi.w #$30,($37a,a4)
	bgt.w loc_07f3c4
	cmpi.w #-$20,($37a,a4)
	blt.w loc_07f3c4
	bsr.w loc_0813d8
	bra.w loc_07f53c

loc_07f3c4:
	bra.w loc_07f532

;--------------------------
loc_07f3c8:
	cmpi.w #$20,($378,a4)
	bge.w loc_07f532
	cmpi.w #$20,($37a,a4)
	bgt.w loc_07f532
	cmpi.w #-$20,($37a,a4)
	blt.w loc_07f532
	bra.w loc_07f53c

loc_07f3ea:
	tst.w ($21a,a4)
	blt.w loc_07f532
	cmpi.l #$5e9000,($22a,a4)
	bgt.w loc_07f532
	cmpi.l #$5e9000,($22a,a4)
	ble.w loc_07f418
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_07f532

loc_07f418:
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_07f520
	cmpi.w #$18,($378,a4)
	bgt.w loc_07f436
	bsr.w loc_0813d8
	bra.w loc_07f53c

loc_07f436:
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_07f4b8
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07f462
	cmpi.w #$28,($378,a4)
	bgt.w loc_07f462
	bsr.w loc_081452
	bra.w loc_07f53c

loc_07f462:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07f482
	cmpi.w #$28,($378,a4)
	bgt.w loc_07f482
	bsr.w loc_0814d4
	bra.w loc_07f53c

loc_07f482:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07f4a2
	cmpi.w #$28,($378,a4)
	bgt.w loc_07f4a2
	bsr.w loc_081562
	bra.w loc_07f53c

loc_07f4a2:
	cmpi.w #$38,($378,a4)
	bgt.w loc_07f4b4
	bsr.w loc_0813d8
	bra.w loc_07f53c

loc_07f4b4:
	bra.w loc_07f532

loc_07f4b8:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07f4d8
	cmpi.w #$20,($378,a4)
	bgt.w loc_07f4d8
	bsr.w loc_081562
	bra.w loc_07f53c

loc_07f4d8:
	cmpi.w #$30,($378,a4)
	bgt.w loc_07f4ea
	bsr.w loc_081452
	bra.w loc_07f53c

loc_07f4ea:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07f50a
	cmpi.w #$40,($378,a4)
	bgt.w loc_07f50a
	bsr.w loc_0814d4
	bra.w loc_07f53c

loc_07f50a:
	cmpi.w #$50,($378,a4)
	bgt.w loc_07f51c
	bsr.w loc_0813d8
	bra.w loc_07f53c

loc_07f51c:
	bra.w loc_07f532

loc_07f520:
	btst #3,($248,a4)
	beq.w loc_07f52e
	bsr.w loc_0813d8

loc_07f52e:
	bra.w loc_07f53c

loc_07f532:
	jsr loc_0226b4
	bra.w loc_07f1fe

loc_07f53c:
	jsr loc_02e308
	clr.b ($2f6,a4)
	bra.w loc_07daac

;--------------------------
loc_07f54a:
	move.l ($4d8,a4),($4e4,a4)
	btst #1,($246,a4)
	beq.w loc_07daac
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #3,($24a,a4)
	bne.w loc_07daac
	cmpi.w #$40,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)

loc_07f57e:
	cmpi.w #$64,($36c,a4)
	ble.w loc_07f5a8
	jsr loc_0226b4
	move.l #$100010,d0
	moveq #0,d2
	move.w #$58,d2
	move.b #8,($2f6,a4)
	jsr loc_02e0f4
	bra.b loc_07f57e

loc_07f5a8:
	movea.l #loc_07eefa,a0
	bsr.w loc_07dace

loc_07f5b2:
	jsr loc_0226b4
	movea.l #loc_07f1e2,a0
	bsr.w loc_07daa6
	move.l ($4e4,a4),($4d8,a4)
	btst #1,($246,a4)
	beq.b loc_07f5b2
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_07f5ec(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\\//\/\/\/\
loc_07f5ec
	dc.w $0004

	dc.w $0014
	dc.l loc_07f698

	dc.w $0014
	dc.l loc_07f614

	dc.w $0014
	dc.l loc_07f6aa

	dc.w $0014
	dc.l loc_07f606

;--------------------------
loc_07f606:
	bsr.w loc_0813ba
	jsr loc_02e308
	bra.w loc_07f6de

loc_07f614:
	move.b #2,($2f6,a4)
	bsr.w loc_0814d4
	jsr loc_02e2d0
	clr.b ($2f6,a4)
	bsr.w loc_0814d4
	jsr loc_02e2d0
	bsr.w loc_08139c
	jsr loc_02e26e
	bgt.w loc_07f68a
	blt.w loc_07f648
	bra.w loc_07f6d8

loc_07f648:
	jsr RandomNumberGod
	cmpi.w #$3000,d0
	bcs.w loc_07f67c
	jsr RandomNumberGod
	cmpi.w #$3000,d0
	bcs.w loc_07f68a
	jsr loc_02c78a
	beq.w loc_07f67c
	bsr.w loc_081346
	jsr loc_02e308
	bra.w loc_07f6de

loc_07f67c:
	bsr.w loc_0812f8
	jsr loc_02e308
	bra.w loc_07f6de

loc_07f68a:
	bsr.w loc_0812b8
	jsr loc_02e308
	bra.w loc_07f6de

loc_07f698:
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_07f6de
	bsr.w loc_0813d8
	bra.w loc_07f6d8

loc_07f6aa:
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_07f6de
	clr.b ($2f6,a4)
	bsr.w loc_0814d4
	jsr loc_02e26e
	beq.w loc_07f6de
	clr.b ($2f6,a4)
	bsr.w loc_0813d8
	jsr loc_02e308
	bra.w loc_07f6de

loc_07f6d8:
	jsr loc_02e308

loc_07f6de:
	clr.b ($2f6,a4)
	bra.w loc_07dabc

;--------------------------
loc_07f6e6:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	cmpi.w #$64,($378,a4)
	bgt.w loc_07daac
	cmpi.w #$20,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_07efaa,a0
	bsr.w loc_07dace
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_07f746(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07f746:
	dc.w $0004

	dc.w $003c
	dc.l loc_07f760

	dc.w $000a
	dc.l loc_07f78a

	dc.w $000a
	dc.l loc_07f76e

	dc.w $000a
	dc.l loc_07f77c

;--------------------------
loc_07f760:
	movea.l #loc_07f0e8,a0
	bsr.w loc_07daa6
	bra.w loc_07f798

loc_07f76e:
	movea.l #loc_080666,a0
	bsr.w loc_07daa6
	bra.w loc_07f798

loc_07f77c:
	bsr.w loc_0812f8
	jsr loc_02e308
	bra.w loc_07f798

loc_07f78a:
	movea.l #loc_080334,a0
	bsr.w loc_07daa6
	bra.w loc_07f798

loc_07f798:
	clr.b ($2f6,a4)
	bra.w loc_07dabc

;--------------------------
loc_07f7a0:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	cmpi.w #$50,($378,a4)
	bge.w loc_07daac
	cmpi.w #$20,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_081452
	jsr loc_02e26e
	bgt.w loc_07f808
	blt.w loc_07f7f0
	bra.w loc_07f9ce

loc_07f7f0:
	cmpi.w #$60,($340,a4)
	blt.w loc_07f9d4
	movea.l #loc_080666,a0
	bsr.w loc_07daa6
	bra.w loc_07f9d4

loc_07f808:
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	beq.w loc_07f854
	jsr RandomNumberGod
	lea loc_07f82e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07f82e:
	dc.w $0006

	dc.w $001e
	dc.l loc_07f88a

	dc.w $001e
	dc.l loc_07f9ae

	dc.w $001e
	dc.l loc_07f93e

	dc.w $000a
	dc.l loc_07f95e

	dc.w $000a
	dc.l loc_07f97e

	dc.w $000a
	dc.l loc_07f8a2

;--------------------------
loc_07f854:
	jsr RandomNumberGod
	lea loc_07f864(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07f864:
	dc.w $0006

	dc.w $001e
	dc.l loc_07f88a

	dc.w $001e
	dc.l loc_07f9ae

	dc.w $001e
	dc.l loc_07f95e

	dc.w $000a
	dc.l loc_07f8a2

	dc.w $000a
	dc.l loc_07f93e

	dc.w $000a
	dc.l loc_07f90e

;--------------------------
loc_07f88a:
	jsr loc_02c78a
	beq.w loc_07f95e
	bsr.w loc_081346
	jsr loc_02e308
	bra.w loc_07f9d4

loc_07f8a2:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_07f8ba
	movea.l #loc_07eec4,a0
	bsr.w loc_07dace

loc_07f8ba:
	bsr.w loc_0812b8
	jsr loc_02e308
	bra.w loc_07f9d4

loc_07f8c8:
	jsr loc_02e308
	move.l #$40004,d0
	jsr loc_02e420
	bsr.w loc_08139c
	jsr loc_02e308
	bra.w loc_07f9d4

loc_07f8e8:
	jsr loc_02e308
	move.l #$40004,d0
	jsr loc_02e420
	move.b #8,($2f6,a4)
	bsr.w loc_081452
	jsr loc_02e308
	bra.w loc_07f9d4

loc_07f90e:
	jsr loc_02e308
	move.l #$40004,d0
	jsr loc_02e420
	btst #1,($362,a4)
	beq.w loc_07f9d4
	move.b #2,($2f6,a4)
	bsr.w loc_0813d8
	jsr loc_02e308
	bra.w loc_07f9d4

loc_07f93e:
	jsr loc_02e308
	move.l #$40004,d0
	jsr loc_02e420
	bsr.w loc_0813ba
	jsr loc_02e308
	bra.w loc_07f9d4

loc_07f95e:
	jsr loc_02e308
	move.l #$40004,d0
	jsr loc_02e420
	bsr.w loc_0812f8
	jsr loc_02e308
	bra.w loc_07f9d4

loc_07f97e:
	cmpi.w #$5a,($36c,a4)
	bgt.w loc_07f9d4
	jsr loc_02e308
	move.l #$40004,d0
	jsr loc_02e420
	move.b #8,($2f6,a4)
	bsr.w loc_0814d4
	jsr loc_02e308
	bra.w loc_07f9d4

loc_07f9ae:
	jsr loc_02e308
	move.l #$40004,d0
	jsr loc_02e420
	movea.l #loc_07eefa,a0
	bsr.w loc_07dace
	bra.w loc_07db98

loc_07f9ce:
	jsr loc_02e308

loc_07f9d4:
	clr.b ($2f6,a4)
	bra.w loc_07dabc

;--------------------------
loc_07f9dc:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	btst #3,($24a,a4)
	bne.w loc_07daac
	cmpi.w #$64,($36c,a4)
	bgt.w loc_07daac
	cmpi.w #$20,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	move.b #8,($2f6,a4)
	bsr.w loc_0814d4
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	beq.w loc_07fa70
	jsr RandomNumberGod
	lea loc_07fa56(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07fa56:
	dc.w $0004

	dc.w $001e
	dc.l loc_07faf4

	dc.w $001e
	dc.l loc_07fb0e

	dc.w $000a
	dc.l loc_07fa9a

	dc.w $000a
	dc.l loc_07fada

;--------------------------
loc_07fa70:
	jsr RandomNumberGod
	lea loc_07fa80(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07fa80:
	dc.w $0004

	dc.w $001e
	dc.l loc_07fada

	dc.w $001e
	dc.l loc_07faba

	dc.w $000a
	dc.l loc_07faf4

	dc.w $000a
	dc.l loc_07fb0e

;--------------------------
loc_07fa9a:
	move.l #$40004,d0
	jsr loc_02e420
	move.b #8,($2f6,a4)
	bsr.w loc_0814d4
	jsr loc_02e308
	bra.w loc_07fb28

loc_07faba:
	move.l #$40004,d0
	jsr loc_02e420
	move.b #2,($2f6,a4)
	bsr.w loc_0813d8
	jsr loc_02e308
	bra.w loc_07fb28

loc_07fada:
	move.l #$40004,d0
	jsr loc_02e420
	bsr.w loc_0812f8
	jsr loc_02e308
	bra.w loc_07fb28

loc_07faf4:
	move.l #$40004,d0
	jsr loc_02e420
	bsr.w loc_0813ba
	jsr loc_02e308
	bra.w loc_07fb28

loc_07fb0e:
	move.l #$40004,d0
	jsr loc_02e420
	movea.l #loc_07eefa,a0
	bsr.w loc_07dace
	bra.w loc_07db98

loc_07fb28:
	clr.b ($2f6,a4)
	bra.w loc_07daac

;--------------------------
loc_07fb30:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	btst #3,($24a,a4)
	bne.w loc_07daac
	cmpi.w #$78,($378,a4)
	bgt.w loc_07daac
	cmpi.w #$20,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	beq.w loc_07fb9c
	cmpi.w #$46,($378,a4)
	bgt.w loc_07fbb6
	move.b #2,($2f6,a4)
	bsr.w loc_081452
	jsr loc_02e308
	bra.w loc_07fbb6

loc_07fb9c:
	cmpi.w #$78,($378,a4)
	bgt.w loc_07fbb6
	move.b #8,($2f6,a4)
	bsr.w loc_081452
	jsr loc_02e308

loc_07fbb6:
	clr.b ($2f6,a4)
	bra.w loc_07daac

;--------------------------
loc_07fbbe:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	btst #3,($24a,a4)
	bne.w loc_07daac
	cmpi.w #$20,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550

loc_07fbf8:
	cmpi.w #$32,($36c,a4)
	bgt.w loc_07fc38
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_0814d4
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_07fd22
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07fc38
	bra.b loc_07fbf8

loc_07fc38:
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	beq.w loc_07fc78
	jsr RandomNumberGod
	lea loc_07fc5e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07fc5e:
	dc.w $0004

	dc.w $001e
	dc.l loc_07fcc8

	dc.w $001e
	dc.l loc_07fd0e

	dc.w $001e
	dc.l loc_07fcb6

	dc.w $000a
	dc.l loc_07fce4

;--------------------------
loc_07fc78:
	jsr RandomNumberGod
	lea loc_07fc88(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\
loc_07fc88:
	dc.w $0004

	dc.w $001e
	dc.l loc_07fca2

	dc.w $001e
	dc.l loc_07fce4

	dc.w $000a
	dc.l loc_07fd0e

	dc.w $000a
	dc.l loc_07fcd6

;--------------------------
loc_07fca2:
	move.b #2,($2f6,a4)
	bsr.w loc_0813d8
	jsr loc_02e308
	bra.w loc_07fd22

loc_07fcb6:
	clr.b ($2f6,a4)
	bsr.w loc_0813ba
	jsr loc_02e308
	bra.w loc_07fd22

loc_07fcc8:
	movea.l #loc_07eefa,a0
	bsr.w loc_07dace
	bra.w loc_07db98

loc_07fcd6:
	movea.l #loc_07ff12,a0
	bsr.w loc_07dace
	bra.w loc_07fd22

loc_07fce4:
	bsr.w loc_08139c
	jsr loc_02e308
	bra.w loc_07fd22

loc_07fcf2:
	cmpi.w #$30,($36c,a4)
	blt.w loc_07fd22
	clr.b ($2f6,a4)
	bsr.w loc_0813d8
	jsr loc_02e308
	bra.w loc_07fd22

loc_07fd0e:
	move.b #8,($2f6,a4)
	bsr.w loc_0814d4
	jsr loc_02e308
	bra.w loc_07fd22

loc_07fd22:
	clr.b ($2f6,a4)
	bra.w loc_07daac

;--------------------------
loc_07fd2a:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_07daac
	cmpi.w #$20,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)

loc_07fd58:
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$32,($36c,a4)
	bgt.w loc_07fd9a
	move.b #2,($2f6,a4)
	bsr.w loc_0814d4
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_07ff0a
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07fd9a
	bra.b loc_07fd58

loc_07fd9a:
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	beq.w loc_07fde0
	jsr RandomNumberGod
	lea loc_07fdc0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07fdc0:
	dc.w $0005

	dc.w $001e
	dc.l loc_07fe6a

	dc.w $001e
	dc.l loc_07fe04

	dc.w $000a
	dc.l loc_07fe50

	dc.w $000a
	dc.l loc_07fe8c

	dc.w $000a
	dc.l loc_07fe78

;--------------------------
loc_07fde0:
	jsr RandomNumberGod
	lea loc_07fdf0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07fdf0:
	dc.w $0003

	dc.w $001e
	dc.l loc_07fe8c

	dc.w $001e
	dc.l loc_07fe50

	dc.w $000a
	dc.l loc_07fe20

;--------------------------
loc_07fe04:
	movea.l #loc_07eefa,a0
	bsr.w loc_07dace
	bra.w loc_07db98

loc_07fe12:
	movea.l #loc_07ff12,a0
	bsr.w loc_07dace
	bra.w loc_07ff0a

loc_07fe20:
	move.b #2,($2f6,a4)
	bsr.w loc_0813d8
	jsr loc_02e308
	bra.w loc_07ff0a

loc_07fe34:
	movea.l #loc_07efcc,a0
	bsr.w loc_07dace
	bra.w loc_07ff0a

loc_07fe42:
	movea.l #loc_07f09c,a0
	bsr.w loc_07dace
	bra.w loc_07ff0a

loc_07fe50:
	cmpi.w #$41,($36c,a4)
	move.b #2,($2f6,a4)
	bsr.w loc_081452
	jsr loc_02e308
	bra.w loc_07ff0a

loc_07fe6a:
	bsr.w loc_0813ba
	jsr loc_02e308
	bra.w loc_07ff0a

loc_07fe78:
	move.b #8,($2f6,a4)
	bsr.w loc_0814d4
	jsr loc_02e308
	bra.w loc_07ff0a

loc_07fe8c:
	cmpi.w #$20,($340,a4)
	blt.w loc_07ff04
	bsr.w loc_08139c
	jsr loc_02e26e
	bgt.w loc_07feac
	blt.w loc_07feac
	bra.w loc_07ff04

loc_07feac:
	jsr RandomNumberGod
	lea loc_07febc(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07febc:
	dc.w $0003

	dc.w $003c
	dc.l loc_07fed0

	dc.w $0014
	dc.l loc_07fef6

	dc.w $0014
	dc.l loc_07fee8

;--------------------------
loc_07fed0:
	jsr loc_02c78a
	beq.w loc_07fef6
	movea.l #loc_080666,a0
	bsr.w loc_07daa6
	bra.w loc_07ff0a

loc_07fee8:
	bsr.w loc_0812f8
	jsr loc_02e308
	bra.w loc_07ff0a

loc_07fef6:
	bsr.w loc_0812b8
	jsr loc_02e308
	bra.w loc_07ff0a

loc_07ff04:
	jsr loc_02e308

loc_07ff0a:
	clr.b ($2f6,a4)
	bra.w loc_07daac

;--------------------------
loc_07ff12:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	btst #3,($24a,a4)
	bne.w loc_07daac
	cmpi.w #$20,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$6e,($378,a4)
	bgt.w loc_080194
	move.b #8,($2f6,a4)
	bsr.w loc_0813d8
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_07ff90
	blt.w loc_08000a
	bra.w loc_07ff78

loc_07ff78:
	clr.b ($2f6,a4)
	jsr loc_02e308
	movea.l #loc_07efcc,a0
	bsr.w loc_07dace
	bra.w loc_080194

loc_07ff90:
	clr.b ($2f6,a4)
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_080194
	jsr RandomNumberGod
	lea loc_07ffb8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07ffb8:
	dc.w $0003

	dc.w $001e
	dc.l loc_07ffcc

	dc.w $001e
	dc.l loc_07ffda

	dc.w $000a
	dc.l loc_07ffe8

;--------------------------
loc_07ffcc:
	movea.l #loc_07eec4,a0
	bsr.w loc_07dace
	bra.w loc_080194

loc_07ffda:
	movea.l #loc_07efcc,a0
	bsr.w loc_07dace
	bra.w loc_080194

loc_07ffe8:
	movea.l #loc_07f09c,a0
	bsr.w loc_07dace
	bra.w loc_07fff6

loc_07fff6:
	jsr loc_02e308
	bsr.w loc_0812f8
	jsr loc_02e308
	bra.w loc_080194

loc_08000a:
	clr.b ($2f6,a4)
	jsr loc_02e308
	jsr RandomNumberGod
	lea loc_080024(pc),a0
	jmp loc_02decc


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_080024:
	dc.w $0009

	dc.w $003c
	dc.l loc_080158

	dc.w $001e
	dc.l loc_0800ce

	dc.w $001e
	dc.l loc_080086

	dc.w $001e
	dc.l loc_080124

	dc.w $000a
	dc.l loc_08013e

	dc.w $000a
	dc.l loc_0800ae

	dc.w $000a
	dc.l loc_080106

	dc.w $000a
	dc.l loc_0800e6

	dc.w $000a
	dc.l loc_08005c

;--------------------------
loc_08005c:
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_080194
	move.l #$40004,d0
	jsr loc_02e420
	move.b #2,($2f6,a4)
	bsr.w loc_081452
	jsr loc_02e308
	bra.w loc_080194

loc_080086:
	cmpi.w #$46,($36c,a4)
	bgt.w loc_080194
	move.l #$40004,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bsr.w loc_0813d8
	jsr loc_02e308
	bra.w loc_080194

loc_0800ae:
	move.l #$40004,d0
	jsr loc_02e420
	move.b #2,($2f6,a4)
	bsr.w loc_0813d8
	jsr loc_02e308
	bra.w loc_080194

loc_0800ce:
	cmpi.w #$5a,($36c,a4)
	bgt.w loc_080194
	bsr.w loc_0812da
	jsr loc_02e308
	bra.w loc_080194

loc_0800e6:
	move.l #$40004,d0
	jsr loc_02e420
	move.b #8,($2f6,a4)
	bsr.w loc_081452
	jsr loc_02e308
	bra.w loc_080194

loc_080106:
	move.l #$40004,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bsr.w loc_081452
	jsr loc_02e308
	bra.w loc_080194

loc_080124:
	move.l #$40004,d0
	jsr loc_02e420
	bsr.w loc_081346
	jsr loc_02e308
	bra.w loc_080194

loc_08013e:
	move.l #$40004,d0
	jsr loc_02e420
	bsr.w loc_0812f8
	jsr loc_02e308
	bra.w loc_080194

loc_080158:
	move.l #$40004,d0
	jsr loc_02e420
	movea.l #loc_07f078,a0
	bsr.w loc_07dace
	bsr.w loc_081452
	jsr loc_02e308
	cmpi.w #$60,($340,a4)
	blt.w loc_080194
	bsr.w loc_081316
	beq.w loc_080194
	jsr loc_02e308
	bra.w loc_080194

loc_080194:
	clr.b ($2f6,a4)
	bra.w loc_07daac

;--------------------------
loc_08019c:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	btst #3,($24a,a4)
	bne.w loc_07daac
	cmpi.w #$20,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$64,($378,a4)
	blt.w loc_080252
	cmpi.w #$a0,($378,a4)
	bge.w loc_080252
	move.b #2,($2f6,a4)
	move.l #$40004,d0
	jsr loc_02e420
	btst #1,($362,a4)
	bne.w loc_080252
	move.b #2,($2f6,a4)
	bsr.w loc_0813d8
	jsr loc_02e26e
	bgt.w loc_080222
	blt.w loc_080252
	bra.w loc_080252

loc_080222:
	jsr RandomNumberGod
	cmpi.w #$f800,d0
	bcs.w loc_080252
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	move.b #2,($2f6,a4)
	bsr.w loc_0813d8
	jsr loc_02e308

loc_080252:
	clr.b ($2f6,a4)
	bra.w loc_07daac

;--------------------------
loc_08025a:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	btst #3,($24a,a4)
	bne.w loc_07daac
	cmpi.w #$20,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$b4,($36c,a4)
	bgt.w loc_0802e8
	jsr RandomNumberGod
	lea loc_0802ae(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0802ae:
	dc.w $0003

	dc.w $003c
	dc.l loc_0802d0

	dc.w $000a
	dc.l loc_0802c2

	dc.w $000a
	dc.l loc_0802de

;--------------------------
loc_0802c2:
	movea.l #loc_07efcc,a0
	bsr.w loc_07dace
	bra.w loc_0802e8

loc_0802d0:
	movea.l #loc_07eec4,a0
	bsr.w loc_07dace
	bra.w loc_0802e8

loc_0802de:
	movea.l #loc_07f09c,a0
	bsr.w loc_07dace

loc_0802e8
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$82,($36c,a4)
	blt.w loc_080316
	bsr.w loc_0812b8
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_08032c

loc_080316:
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_0812b8
	jsr loc_02e308

loc_08032c:
	clr.b ($2f6,a4)
	bra.w loc_07daac

;--------------------------
loc_080334:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	btst #3,($24a,a4)
	bne.w loc_07daac
	cmpi.w #$b4,($36c,a4)
	bgt.w loc_07daac
	cmpi.w #$20,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_0813ba
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_080394
	blt.w loc_080426
	bra.w loc_080420

loc_080394:
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$50,($378,a4)
	bgt.w loc_0803b4
	bra.w loc_0803de

loc_0803b4:
	cmpi.w #$8c,($378,a4)
	bgt.w loc_0803c2
	bra.w loc_0803d0

loc_0803c2:
	cmpi.w #$c8,($378,a4)
	bgt.w loc_080426
	bra.w loc_080404

loc_0803d0:
	bsr.w loc_0813ba
	jsr loc_02e308
	bra.w loc_080426

loc_0803de:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_080426
	bsr.w loc_0812da
	jsr loc_02e308
	bra.w loc_080426
	bsr.w loc_0812f8
	jsr loc_02e308
	bra.w loc_080426

loc_080404:
	bsr.w loc_0812b8
	jsr loc_02e308
	bra.w loc_080426
	movea.l #loc_07eefa,a0
	bsr.w loc_07dace
	bra.w loc_07db98

loc_080420:
	jsr loc_02e308

loc_080426:
	clr.b ($2f6,a4)
	bra.w loc_07dabc

;--------------------------
loc_08042e:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	btst #3,($24a,a4)
	bne.w loc_07daac
	cmpi.w #$20,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	move.b #2,($2f6,a4)
	bsr.w loc_081562
	jsr loc_02e26e
	bgt.w loc_080484
	blt.w loc_080484
	bra.w loc_0804e6

loc_080484:
	btst #1,($362,a4)
	bne.w loc_08048e

loc_08048e:
	jsr RandomNumberGod
	lea loc_08049e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08049e:
	dc.w $0002

	dc.w $0050
	dc.l loc_0804ca

	dc.w $0014
	dc.l loc_0804d8

;--------------------------
loc_0804ac:
	jsr RandomNumberGod
	lea loc_0804bc(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0804bc:
	dc.w $0002

	dc.w $0014
	dc.l loc_0804ca

	dc.w $0050
	dc.l loc_0804d8

;--------------------------
loc_0804ca:
	bsr.w loc_0813ba
	jsr loc_02e308
	bra.w loc_0804e6

loc_0804d8:
	bsr.w loc_0812f8
	jsr loc_02e308
	bra.w loc_0804e6

loc_0804e6:
	clr.b ($2f6,a4)
	bra.w loc_07daac

;--------------------------
loc_0804ee:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	btst #3,($24a,a4)
	bne.w loc_07daac
	cmpi.w #$20,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_0812f8
	jsr loc_02e26e
	bgt.w loc_08053e
	blt.w loc_0805ea
	bra.w loc_0805ea

loc_08053e:
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_080596
	cmpi.w #$50,($378,a4)
	bgt.w loc_08056c
	bra.w loc_0805c0

loc_08056c:
	cmpi.w #$6e,($378,a4)
	bgt.w loc_08057a
	bra.w loc_0805dc

loc_08057a:
	cmpi.w #$96,($378,a4)
	bgt.w loc_080588
	bra.w loc_0805a4

loc_080588:
	cmpi.w #$c8,($378,a4)
	bgt.w loc_0805f0
	bra.w loc_0805b2

loc_080596:
	movea.l #loc_080666,a0
	bsr.w loc_07daa6
	bra.w loc_0805f0

loc_0805a4:
	bsr.w loc_081298
	jsr loc_02e308
	bra.w loc_0805f0

loc_0805b2:
	bsr.w loc_0812b8
	jsr loc_02e308
	bra.w loc_0805f0

loc_0805c0:
	bsr.w loc_0812f8
	jsr loc_02e308
	bra.w loc_0805f0

loc_0805ce:
	bsr.w loc_0812da
	jsr loc_02e308
	bra.w loc_0805f0

loc_0805dc:
	bsr.w loc_0813ba
	jsr loc_02e308
	bra.w loc_0805f0

loc_0805ea:
	jsr loc_02e308

loc_0805f0:
	clr.b ($2f6,a4)
	bra.w loc_07daac

;--------------------------
loc_0805f8:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	btst #3,($24a,a4)
	bne.w loc_07daac
	cmpi.w #$20,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_08063e:
	move.w d0,($4d6,a4)
	bsr.w loc_0813ba
	jsr loc_02e308
	move.w ($4d6,a4),d0
	dbra d0,loc_08063e
	bra.w loc_08065e

loc_080658:
	jsr loc_02e308

loc_08065e:
	clr.b ($2f6,a4)
	bra.w loc_07daac

;--------------------------
loc_080666:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	btst #3,($24a,a4)
	bne.w loc_07daac
	cmpi.w #$40,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_0806b0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0806b0:
	dc.w $0002

	dc.w $001e
	dc.l loc_0806be

	dc.w $001e
	dc.l loc_0806da

;--------------------------
loc_0806be:
	cmpi.w #$50,($378,a4)
	bgt.w loc_0806f6
	bsr.w loc_081316
	beq.w loc_0806f6
	jsr loc_02e308
	bra.w loc_0806f6

loc_0806da:
	cmpi.w #$c8,($378,a4)
	bgt.w loc_0806f6
	bsr.w loc_081346
	beq.w loc_0806f6
	jsr loc_02e308
	bra.w loc_0806f6

loc_0806f6:
	clr.b ($2f6,a4)
	bra.w loc_07daac

;--------------------------
loc_0806fe:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	btst #3,($24a,a4)
	bne.w loc_07daac
	cmpi.w #$a0,($378,a4)
	blt.w loc_07daac
	cmpi.w #$60,($340,a4)
	blt.w loc_07daac
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_08074e:
	move.w d0,($4d6,a4)
	bsr.w loc_0812b8
	jsr loc_02e308
	bsr.w loc_0812b8
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	move.w ($4d6,a4),d0
	dbra d0,loc_08074e
	clr.b ($2f6,a4)
	bra.w loc_07daac

;--------------------------
loc_080782:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_07daac
	btst #1,($246,a4)
	beq.w loc_07daac
	btst #3,($24a,a4)
	bne.w loc_07daac
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_0807be(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0807be:
	dc.w $0007

	dc.w $000a
	dc.l loc_0807ea

	dc.w $000a
	dc.l loc_0808be

	dc.w $000a
	dc.l loc_0809aa

	dc.w $000a
	dc.l loc_080874

	dc.w $000a
	dc.l loc_08097a

	dc.w $0002
	dc.l loc_080952

	dc.w $0002
	dc.l loc_08088c

;--------------------------
loc_0807ea:
	jsr RandomNumberGod
	lea loc_0807fa(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0807fa:
	dc.w $0004

	dc.w $000a
	dc.l loc_080814

	dc.w $000a
	dc.l loc_08082c

	dc.w $000a
	dc.l loc_080844

	dc.w $000a
	dc.l loc_08085c

;--------------------------
loc_080814:
	movea.l #loc_07efaa,a0
	bsr.w loc_07dace
	movea.l #loc_07efaa,a0
	bsr.w loc_07dace
	bra.w loc_080a22

loc_08082c:
	movea.l #loc_07efcc,a0
	bsr.w loc_07dace
	movea.l #loc_07efcc,a0
	bsr.w loc_07dace
	bra.w loc_080a22

loc_080844:
	movea.l #loc_07efcc,a0
	bsr.w loc_07dace
	movea.l #loc_07efaa,a0
	bsr.w loc_07dace
	bra.w loc_080a22

loc_08085c:
	movea.l #loc_07efaa,a0
	bsr.w loc_07dace
	movea.l #loc_07efcc,a0
	bsr.w loc_07dace
	bra.w loc_080a22

loc_080874:
	cmpi.w #$b4,($36c,a4)
	blt.w loc_080a22
	bsr.w loc_081376
	jsr loc_02e308
	bra.w loc_080a22

loc_08088c:
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_080898:
	jsr loc_02e496
	jsr loc_02e550
	move.w d0,($4d6,a4)
	bsr.w loc_0813ba
	jsr loc_02e308
	move.w ($4d6,a4),d0
	dbra d0,loc_080898
	bra.w loc_080a22

loc_0808be:
	cmpi.w #$60,($340,a4)
	blt.w loc_080a22
	move.b #8,($2f6,a4)
	bsr.w loc_0813d8
	jsr loc_02e26e
	bgt.w loc_080a22
	blt.w loc_0808e4
	bra.w loc_080a22

loc_0808e4:
	jsr loc_02e308
	bsr.w loc_0813d8
	jsr loc_02e26e
	bgt.w loc_080a22
	blt.w loc_080900
	bra.w loc_080a22

loc_080900:
	jsr loc_02e308
	bsr.w loc_0813d8
	jsr loc_02e26e
	bgt.w loc_080a22
	blt.w loc_08091c
	bra.w loc_080a22

loc_08091c:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_08093e
	jsr loc_02e308
	bsr.w loc_081316
	jsr loc_02e308
	bra.w loc_080a22

loc_08093e:
	jsr loc_02e308
	bsr.w loc_081346
	jsr loc_02e308
	bra.w loc_080a22

loc_080952:
	move.b #2,($2f6,a4)
	bsr.w loc_0813d8
	jsr loc_02e308
	bsr.w loc_0813d8
	jsr loc_02e308
	bsr.w loc_0813d8
	jsr loc_02e308
	bra.w loc_080a22

loc_08097a:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_07daac
	movea.l #loc_07f09c,a0
	bsr.w loc_07dace

loc_08098e:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_08098e
	movea.l #loc_07f09c,a0
	bsr.w loc_07dace
	bra.w loc_080a22

loc_0809aa:
	movea.l #loc_07efaa,a0
	bsr.w loc_07dace
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_0809d0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0809d0:
	dc.w $0004

	dc.w $0014
	dc.l loc_0809f8

	dc.w $0014
	dc.l loc_080a06

	dc.w $0014
	dc.l loc_080a14

	dc.w $0014
	dc.l loc_0809ea

;--------------------------
loc_0809ea:
	movea.l #loc_07f0e8,a0
	bsr.w loc_07daa6
	bra.w loc_080a22

loc_0809f8:
	bsr.w loc_0812f8
	jsr loc_02e308
	bra.w loc_080a22

loc_080a06:
	bsr.w loc_0813ba
	jsr loc_02e308
	bra.w loc_080a22

loc_080a14:
	bsr.w loc_0812da
	jsr loc_02e308
	bra.w loc_080a22

loc_080a22:
	clr.b ($2f6,a4)
	bra.w loc_07dabc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_080a2a:
	dc.l loc_080b2e,loc_080b4e,loc_080aae,loc_080a8e
	dc.l loc_080b6e,loc_080b8e,loc_080bae,loc_080bce
	dc.l loc_080bee,loc_080c0e,loc_080ace,loc_080aee
	dc.l loc_080c2e,loc_080c4e,loc_080c6e,loc_080c8e
	dc.l loc_080cae,loc_080cce,loc_080cee,loc_080d0e
	dc.l loc_080d2e,loc_080d4e,loc_080d6e,loc_080d8e
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Palette Data
loc_080a8e
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

loc_080aae:
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

loc_080ace:
	dc.w $7111,$700a,$601c,$700f,$112f,$713f,$324f,$526f
	dc.w $337f,$539f,$73af,$34bf,$74df,$75ff,$7aff,$7fff

loc_080aee:
	dc.w $7888,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_080b0e:
	dc.w $6338,$7335,$6335,$7335,$6336,$7336,$6337,$7337
	dc.w $6338,$7338,$6339,$7337,$6338,$7338,$6339,$7339

loc_080b2e:;Main palette
	dc.w $4777,$7333,$1b51,$7d85,$6fb8,$4fd9,$5fea,$1251
	dc.w $6475,$17a8,$59cb,$1dfe,$7fff,$5f41,$7b5a,$4c9d

loc_080b4e:
	dc.w $4777,$4011,$0710,$0942,$3c74,$5c95,$4ca7,$2010
	dc.w $4031,$1364,$0799,$3abb,$7ccc,$4c00,$5615,$496a

loc_080b6e:
	dc.w $6338,$7a00,$3d00,$7f00,$5f60,$7f90,$6ff1,$6ffa
	dc.w $7a00,$7f00,$7f90,$6ff1,$7f60,$5f80,$7fa0,$7fff

loc_080b8e:
	dc.w $6338,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_080bae:
	dc.w $6338,$100b,$307f,$309f,$72bf,$59ef,$5eff,$100f
	dc.w $106f,$729f,$76bf,$5adf,$5eff,$54bf,$5adf,$5eff

loc_080bce:
	dc.w $7bbb,$5eff,$59ef,$72bf,$309f,$307f,$100b,$5eff
	dc.w $5adf,$76bf,$729f,$106f,$100f,$5eff,$5adf,$54bf

loc_080bee:
	dc.w $0777,$750a,$672d,$394f,$796f,$3b8f,$5ccf,$491c
	dc.w $6a3d,$2c6e,$0d9f,$0ebd,$7fcf,$5c5b,$1e6d,$7f7f

loc_080c0e:
	dc.w $0000,$3053,$2274,$1494,$45b5,$77c5,$69e6,$06b3
	dc.w $47c4,$09d5,$7ad5,$3ce6,$7df7,$71a6,$43c9,$55eb

loc_080c2e:
	dc.w $0aaa,$1290,$70a0,$50c0,$54d0,$26d1,$67d2,$19e2
	dc.w $3be3,$4cf4,$0ef5,$7ff5,$6ff8,$7ffa,$3ffe,$7fff

loc_080c4e:
	dc.w $0000,$0305,$6629,$1a5a,$4c8b,$2e9c,$4ecd,$3520
	dc.w $4755,$1b99,$7ebd,$5ece,$7eee,$6b27,$764d,$467f

loc_080c6e:
	dc.w $7123,$4326,$0548,$4658,$2869,$5879,$298a,$0444
	dc.w $4556,$1778,$398a,$298b,$09ab,$4747,$155a,$056b

loc_080c8e:
	dc.w $53d3,$0090,$70a0,$50c0,$54d0,$26d1,$19e2,$3be4
	dc.w $4cf4,$6df2,$6ffb,$7fff,$4a3f,$1c7f,$3ebf,$3fef

loc_080cae:
	dc.w $53db,$3b39,$6b4a,$1c6a,$5c7b,$2d8c,$3d9c,$6dad
	dc.w $1ecd,$5ede,$2fef,$7fff,$108f,$30af,$10df,$54ff

loc_080cce:
	dc.w $7ff3,$325f,$337f,$539f,$73af,$30cf,$30df,$30ef
	dc.w $15ff,$7aff,$3eff,$7fff,$3b39,$6c5d,$3e8f,$1fbf

loc_080cee:
	dc.w $73db,$0090,$70a0,$50c0,$54d0,$26d1,$19e2,$3be4
	dc.w $4cf4,$6cf0,$6ffb,$7fff,$1caf,$1dcf,$7edf,$7fff

loc_080d0e:
	dc.w $53e3,$4d00,$4e00,$7f40,$5f70,$5f80,$6f91,$5fb1
	dc.w $4fd2,$5fe6,$4ff9,$7fff,$70a0,$54d0,$3be4,$6ffb

loc_080d2e:
	dc.w $53eb,$713f,$526f,$337f,$739f,$14bf,$34cf,$54ef
	dc.w $35ef,$75ff,$7aff,$7fff,$4e00,$5f70,$5fb1,$5fe6

loc_080d4e:
	dc.w $73e3,$5530,$5530,$5530,$5530,$1841,$1b52,$6e72
	dc.w $4db4,$6fc2,$6ffb,$7fff,$61a7,$06ca,$5adc,$3fef

loc_080d6e:
	dc.w $0aaa,$0115,$483b,$4a5e,$1c7e,$7d9f,$5edf,$2702
	dc.w $2c36,$5d57,$7e69,$4f9c,$5fd1,$7fff,$54e2,$2060

loc_080d8e:
	dc.w $7ccc,$2c84,$7c94,$5db5,$5ec7,$5ec6,$0fd9,$7fd9
	dc.w $7feb,$4ffd,$6fff,$43c9,$53c9,$43ca,$53ca,$43cb

loc_080dae:;Effect
	dc.w $4777,$7333,$1b51,$7d85,$6fb8,$4fd9,$5fea,$1251
	dc.w $6475,$17a8,$59cb,$1dfe,$7fff,$5f41,$7b5a,$4fe5

loc_080dce:;Effect
	dc.w $4777,$7333,$1b51,$7d85,$6fb8,$4fd9,$5fea,$1251
	dc.w $6475,$17a8,$59cb,$1dfe,$7fff,$5f41,$7b5a,$47cf

loc_080dee:;Effect
	dc.w $4777,$7333,$1b51,$7d85,$6fb8,$4fd9,$5fea,$1251
	dc.w $6475,$17a8,$59cb,$1dfe,$7fff,$5f41,$7b5a,$49ee

loc_080e0e:;Effect
	dc.w $4777,$7333,$1b51,$7d85,$6fb8,$4fd9,$5fea,$1251
	dc.w $6475,$17a8,$59cb,$1dfe,$7fff,$5f41,$7b5a,$4bf4

loc_080e2e:;Effect
	dc.w $4777,$7333,$1b51,$7d85,$6fb8,$4fd9,$5fea,$1251
	dc.w $6475,$17a8,$59cb,$1dfe,$7fff,$5f41,$7b5a,$4ee9

loc_080e4e:;Effect
	dc.w $4777,$7333,$1b51,$7d85,$6fb8,$4fd9,$5fea,$1251
	dc.w $6475,$17a8,$59cb,$1dfe,$7fff,$5f41,$7b5a,$4faa

loc_080e6e:;Effect
	dc.w $4777,$7333,$1b51,$7d85,$6fb8,$4fd9,$5fea,$1251
	dc.w $6475,$17a8,$59cb,$1dfe,$7fff,$5f41,$7b5a,$43ee

;--------------------------
BaiPRGStart:;080e8e
	move.l #loc_081618,($86,a4)
	move.l #loc_07da7a,($56,a4)
	move.l #loc_080f2a,($1b6,a4)
	move.l #loc_080f4a,($1ba,a4)
	move.l #loc_080f54,($1be,a4)
	move.l #loc_08101c,($1c2,a4)
	move.l #loc_07da4e,($1c6,a4)
	move.l #loc_081616,($1ce,a4)
	move.l #loc_0810c2,($1ca,a4)
	move.l #loc_082812,($1d2,a4)
	move.l #loc_095c60,($1d6,a4)
	move.l #loc_08262e,($1da,a4)
	move.l #loc_0826e2,($1de,a4)
	move.l #loc_08264e,($1e2,a4)
	move.l #loc_0825fe,($1e6,a4)
	move.l #loc_0825e2,($1ea,a4)
	move.l #loc_082716,($1ee,a4)
	bsr.w loc_07da22
	andi.w #$f0ff,($2ee,a4)
	move.l #loc_082a42,($2d0,a4)
	rts

;--------------------------
loc_080f2a:
	clr.w ($550,a4)
	tst.w ($552,a4)
	beq.b loc_080f3e
	bclr #1,($246,a4)
	sf ($247,a4)

loc_080f3e:
	clr.w ($552,a4)
	jsr loc_02a9c4
	rts

;--------------------------
loc_080f4a:
	clr.w ($550,a4)
	clr.w ($552,a4)
	rts

;--------------------------
loc_080f54:
	cmpi.w #$1e,($252,a4)
	beq.w loc_080f80
	cmpi.w #$1f,($252,a4)
	bne.b loc_080f6e
	bsr.w loc_080f82
	bra.w loc_080f80

loc_080f6e:
	cmpi.w #7,($252,a4)
	bne.b loc_080f7a
	bsr.w loc_080fc8

loc_080f7a:
	move.w ($2ba,a3),($2ba,a4)

loc_080f80:
	rts

loc_080f82:
	move.w #5,d7
	lea loc_080fb0(pc),a1

loc_080f8a:
	movem.l d2,-(a7)
	move.w #$3a,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.b loc_080fae
	move.b (a1)+,($66,a0)
	move.b (a1)+,($67,a0)
	move.w (a1)+,($68,a0)
	dbra d7,loc_080f8a

loc_080fae:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_080fb0:
	dc.w $20d4,$0010
	dc.w $21a8,$001e
	dc.w $207c,$002b
	dc.w $2150,$0038
	dc.w $2024,$0044
	dc.w $2cf8,$0050

;--------------------------
loc_080fc8:
	movem.l d2,-(a7)
	move.w #$3a,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.b loc_08101a
	move.b #$18,($66,a0)
	move.b #-$60,($67,a0)
	move.w #$12,($68,a0)
	move.w #$38,($554,a4)
	movem.l d2,-(a7)
	move.w #$3a,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.b loc_08101a
	move.b #$2c,($66,a0)
	move.b #$10,($67,a0)
	move.w #$22,($68,a0)

loc_08101a:
	rts

;--------------------------
loc_08101c:
	lea ($3d0,a4),a0
	jsr loc_02cbba
	move.b ($3d0,a4),d0
	move.b d0,($3c0,a4)
	move.b ($3d4,a4),d0
	move.b d0,($3c1,a4)

	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$30,d0
	seq d0
	or.b d0,($3c2,a4)

	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$c0,d0
	seq d0
	or.b d0,($3c3,a4)

	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$50,d0
	seq d0
	or.b d0,($3c4,a4)

	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$a0,d0
	seq d0
	or.b d0,($3c5,a4)

	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$60,d0
	seq d0
	or.b d0,($3c8,a4)

	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$90,d0
	seq d0
	or.b d0,($3c9,a4)

	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$e0,d0
	seq d0
	or.b d0,($3c6,a4)

	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$70,d0
	seq d0
	or.b d0,($3c7,a4)

	tst.b ($2fc,a4)
	smi d0
	or.b d0,($3ca,a4)
	rts

;--------------------------
loc_0810c2:
	bsr.w loc_081128
	bne.w loc_0810d6
	bsr.w loc_08118a
	bne.w loc_0810d6
	bsr.w loc_0811fa

loc_0810d6:
	rts

loc_0810d8:
	btst #6,($2f7,a4)
	beq.w loc_0810fe
	move.b ($2f6,a4),d0
	cmpi.b #4,d0
	beq.w loc_0810f6
	cmpi.b #8,d0
	bne.w loc_0810fe

loc_0810f6:
	bsr.w loc_081250
	bne.w loc_081126

loc_0810fe:
	btst #7,($2f7,a4)
	bne.w loc_081112
	btst #6,($2f7,a4)
	beq.w loc_081122

loc_081112:
	move.b ($2f6,a4),d0
	beq.w loc_081122
	bsr.w loc_08126a
	bne.w loc_081126

loc_081122:
	clr.w d0
	rts

loc_081126:
	rts

loc_081128:
	tst.b ($3c6,a4)
	beq.b loc_081136
	bsr.w loc_081316
	bne.w loc_081188

loc_081136:
	tst.b ($3c7,a4)
	beq.b loc_081144
	bsr.w loc_081346
	bne.w loc_081188

loc_081144:
	tst.b ($3c5,a4)
	beq.b loc_081152
	bsr.w loc_0812da
	bne.w loc_081188

loc_081152:
	tst.b ($3c4,a4)
	beq.b loc_081160
	bsr.w loc_0812f8
	bne.w loc_081188

loc_081160:
	tst.b ($3c3,a4)
	beq.b loc_08116e
	bsr.w loc_0812b8
	bne.w loc_081188

loc_08116e:
	tst.b ($3c2,a4)
	beq.b loc_08117c
	bsr.w loc_081298
	bne.w loc_081188

loc_08117c:
	bsr.w loc_0810d8
	bne.w loc_081188
	clr.w d0
	rts

loc_081188:
	rts

loc_08118a:
	tst.b ($3c8,a4)
	beq.b loc_081198
	bsr.w loc_08139c
	bne.w loc_0811f8

loc_081198:
	tst.b ($3c9,a4)
	beq.b loc_0811a6
	bsr.w loc_0813ba
	bne.w loc_0811f8

loc_0811a6:
	btst #7,($2f7,a4)
	beq.b loc_0811b6
	bsr.w loc_0813d8
	bne.w loc_0811f8

loc_0811b6:
	btst #6,($2f7,a4)
	beq.b loc_0811c6
	bsr.w loc_081452
	bne.w loc_0811f8

loc_0811c6:
	btst #5,($2f7,a4)
	beq.b loc_0811d6
	bsr.w loc_0814d4
	bne.w loc_0811f8

loc_0811d6:
	btst #4,($2f7,a4)
	beq.b loc_0811e6
	bsr.w loc_081562
	bne.w loc_0811f8

loc_0811e6:
	tst.b ($3ca,a4)
	beq.b loc_0811f4
	bsr.w loc_081376
	bne.w loc_0811f8

loc_0811f4:
	clr.w d0
	rts

loc_0811f8:
	rts

loc_0811fa:
	tst.b ($209,a4)
	bmi.w loc_081226
	tst.b ($3c1,a4)
	beq.w loc_081212
	bsr.w loc_0815dc
	bne.w loc_08124a

loc_081212:
	tst.b ($3c0,a4)
	beq.w loc_081222
	bsr.w loc_0815fa
	bne.w loc_08124a

loc_081222:
	clr.w d0
	rts

loc_081226:
	tst.b ($3c0,a4)
	beq.w loc_081236
	bsr.w loc_0815dc
	bne.w loc_08124a

loc_081236:
	tst.b ($3c1,a4)
	beq.w loc_081246
	bsr.w loc_0815fa
	bne.w loc_08124a

loc_081246:
	clr.w d0
	rts

loc_08124a:
	rts

;--------------------------
loc_08124c:
	clr.w d0
	rts

loc_081250:
	cmpi.w #$24,($226,a4)
	bgt.b loc_08124c
	jsr loc_02a4dc
	beq.b loc_08124c
	move.w #$19,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_08126a:
	btst #0,($24a,a4)
	bne.b loc_08124c
	move.w #$34,d2
	move.w #-$90,d3
	move.w #-$18,d4
	jsr loc_02de6a
	beq.b loc_08124c
	jsr loc_02a518
	beq.b loc_08124c
	move.w #$1a,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_081298:
	btst #5,($24a,a4)
	bne.b loc_08124c
	btst #1,($246,a4)
	beq.b loc_08124c
	tst.b ($2b2,a4)
	bne.b loc_08124c
	move.w #$1b,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0812b8:
	btst #5,($24a,a4)
	bne.b loc_08124c
	btst #1,($246,a4)
	beq.b loc_08124c
	tst.b ($2b2,a4)
	bne.w loc_08124c
	move.w #$1c,d0
	move.w d0,($2fe,a4)
	rts 

;--------------------------
loc_0812da:
	btst #5,($24a,a4)
	bne.w loc_08124c
	btst #1,($246,a4)
	beq.w loc_08124c
	move.w #$1d,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0812f8:
	btst #5,($24a,a4)
	bne.w loc_08124c
	btst #1,($246,a4)
	beq.w loc_08124c
	move.w #$1e,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_081316:
	jsr loc_02c78a
	beq.w loc_08124c
	btst #1,($246,a4)
	beq.w loc_08124c
	btst #5,($24a,a4)
	beq.b loc_08133c
	tst.w ($550,a4)
	bne.b loc_08133c
	bra.w loc_08124c

loc_08133c:
	move.w #$20,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_081346:
	jsr loc_02c78a
	beq.w loc_08124c
	btst #1,($246,a4)
	beq.w loc_08124c
	btst #5,($24a,a4)
	beq.b loc_08136c
	tst.w ($550,a4)
	bne.b loc_08136c
	bra.w loc_08124c

loc_08136c:
	move.w #$1f,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_081376:
	btst #4,($24a,a4)
	bne.w loc_08124c
	btst #1,($246,a4)
	beq.w loc_08124c
	tst.w ($556,a4)
	bne.w loc_08124c
	move.w #$21,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_08139c:
	btst #4,($24a,a4)
	bne.w loc_08124c
	btst #1,($246,a4)
	beq.w loc_08124c
	move.w #$15,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0813ba:
	btst #4,($24a,a4)
	bne.w loc_08124c
	btst #1,($246,a4)
	beq.w loc_08124c
	move.w #$16,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0813d8:;HK
	btst #1,($246,a4)
	bne.w loc_08140c
	btst #0,($24a,a4)
	bne.w loc_08124c
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_081402
	move.w #$13,d0
	move.w d0,($2fe,a4)
	rts

loc_081402:
	move.w #$14,d0
	move.w d0,($2fe,a4)
	rts

loc_08140c:
	btst #1,($246,a4)
	beq.w loc_08124c
	btst #3,($24a,a4)
	bne.w loc_08124c
	btst #1,($2f6,a4)
	bne.w loc_081448
	btst #3,($2f6,a4)
	bne.w loc_08143e
	move.w #$a,d0
	move.w d0,($2fe,a4)
	rts

loc_08143e:
	move.w #$b,d0
	move.w d0,($2fe,a4)
	rts

loc_081448:
	move.w #$c,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_081452:;HP
	btst #1,($246,a4)
	bne.w loc_081486
	btst #0,($24a,a4)
	bne.w loc_08124c
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_08147c
	move.w #$11,d0
	move.w d0,($2fe,a4)
	rts

loc_08147c:
	move.w #$12,d0
	move.w d0,($2fe,a4)
	rts

loc_081486:
	btst #1,($246,a4)
	beq.w loc_08124c
	btst #3,($24a,a4)
	bne.w loc_08124c
	btst #1,($2f6,a4)
	bne.w loc_0814ca
	tst.w ($554,a4)
	bne.w loc_0814c0
	btst #3,($2f6,a4)
	bne.w loc_0814c0
	move.w #$7,d0
	move.w d0,($2fe,a4)
	rts

loc_0814c0:
	move.w #$8,d0
	move.w d0,($2fe,a4)
	rts

loc_0814ca:
	move.w #$9,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0814d4:;LK
	btst #1,($246,a4)
	bne.w loc_081508
	btst #0,($24a,a4)
	bne.w loc_08124c
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_0814fe
	move.w #$f,d0
	move.w d0,($2fe,a4)
	rts

loc_0814fe:
	move.w #$10,d0
	move.w d0,($2fe,a4)
	rts

loc_081508:
	btst #1,($246,a4)
	beq.w loc_08124c
	btst #3,($24a,a4)
	beq.w loc_081530
	btst #1,($24a,a4)
	bne.w loc_08124c
	cmpi.b #1,($2c6,a4)
	bne.w loc_08124c

loc_081530:
	btst #1,($2f6,a4)
	bne.w loc_081558
	btst #3,($2f6,a4)
	bne.w loc_08154e
	move.w #4,d0
	move.w d0,($2fe,a4)
	rts

loc_08154e:
	move.w #5,d0
	move.w d0,($2fe,a4)
	rts

loc_081558:
	move.w #6,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_081562:;LP
	btst #1,($246,a4)
	bne.w loc_081596
	btst #0,($24a,a4)
	bne.w loc_08124c
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_08158c
	move.w #$d,d0
	move.w d0,($2fe,a4)
	rts

loc_08158c:
	move.w #$e,d0
	move.w d0,($2fe,a4)
	rts

loc_081596:
	btst #1,($246,a4)
	beq.w loc_08124c
	btst #3,($24a,a4)
	bne.w loc_08124c
	btst #1,($2f6,a4)
	bne.w loc_0815d2
	btst #3,($2f6,a4)
	bne.w loc_0815c8
	move.w #1,d0
	move.w d0,($2fe,a4)
	rts

loc_0815c8:
	move.w #2,d0
	move.w d0,($2fe,a4)
	rts

loc_0815d2:
	move.w #3,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0815dc:
	btst #3,($24a,a4)
	bne.w loc_08124c
	btst #1,($246,a4)
	beq.w loc_08124c
	move.w #$18,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0815fa:
	tst.b ($24a,a4)
	bne.w loc_08124c
	btst #1,($246,a4)
	beq.w loc_08124c
	move.w #$17,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_081616:
	rts

;--------------------------
loc_081618:
	tst.b (-$3e4,a5)
	bne.w loc_081646
	cmpi.w #1,(-$f2e,a5)
	bgt.w loc_081646
	movea.l #loc_08289a,a0
	clr.w d0
	jsr loc_0226f0

loc_081638:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_081638

loc_081646:
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_081650
	move.b ($209,a4),($208,a4)
	jmp loc_028fd0

;--------------------------
loc_08165c:
	move.b ($209,a4),($208,a4)
	move.l (-$45de,a5),($212,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.b #-$6,($24a,a4)

loc_081676:
	jsr loc_02269c
	btst #0,($2e1,a4)
	beq.b loc_081676
	st ($24a,a4)
	move.l ($20e,a3),d0
	sub.l ($20e,a4),d0
	tst.b ($208,a4)
	bpl.b loc_081698
	neg.l d0

loc_081698:
	subi.l #$300000,d0
	asr.l #8,d0
	divs.w #$10,d0
	ext.l d0
	asl.l #8,d0
	cmpi.l #$80000,d0
	ble.b loc_0816b6
	move.l #$80000,d0

loc_0816b6:
	move.l d0,($216,a4)
	move.l #-$d0000,($21a,a4)
	move.w #$f,d7

loc_0816c6:
	jsr loc_02269c
	addi.l #$d000,($21a,a4)
	dbra d7,loc_0816c6
	move.l #$20000,($216,a4)
	sf ($273,a4)

loc_0816e4:
	jsr loc_02269c
	addi.l #$d000,($21a,a4)
	tst.b ($273,a4)
	beq.b loc_081700
	tst.b ($249,a3)
	bne.w loc_081712

loc_081700:
	btst #1,($246,a4)
	beq.b loc_0816e4
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

loc_081712:
	movea.l #loc_0843ce,a0
	clr.w d0
	jsr loc_0226f0
	move.l #-$32000,($216,a4)
	move.l #-$b0000,($21a,a4)

loc_081730:
	jsr loc_02269c
	addi.l #$b200,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_081730
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

;--------------------------
loc_081750:
	jmp loc_028fca

;--------------------------
loc_081756:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	sf ($273,a4)

loc_081772:
	jsr loc_02269c
	tst.b ($273,a4)
	bne.w loc_081792
	btst #2,($2e1,a4)
	beq.b loc_081772
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_081792:
	movea.l #loc_085758,a0
	clr.w d0
	jsr loc_0226f0
	move.l ($30c,a4),($20e,a4)
	jmp loc_028fd0

;--------------------------
loc_0817ac:
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_0817ca:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_0817ca
	sf ($b9,a4)
	move.w #$16,d2
	move.w #-$64,d3
	jsr loc_02c7be
	sf ($273,a4)
	sf d5

loc_0817ee:
	jsr loc_02269c
	tst.b ($b6,a4)
	bne.b loc_081812
	btst #0,($2e1,a4)
	beq.b loc_081812
	addq.w #1,($27a,a4)
	bclr #7,($24c,a4)
	beq.b loc_081812
	bsr.w loc_081824

loc_081812:
	btst #2,($2e1,a4)
	beq.b loc_0817ee
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_081824:
	cmpi.b #$20,($24e,a4)
	bne.b loc_081834
	move.b #$21,($24e,a4)
	bra.b loc_081842

loc_081834:
	cmpi.b #$21,($24e,a4)
	bne.b loc_081842
	move.b #$20,($24e,a4)

loc_081842:
	move.w ($254,a4),d0
	addq.w #2,d0
	asr.w #3,d0
	sub.w d0,($254,a4)
	cmpi.w #$40,($254,a4)
	bgt.b loc_08185c
	move.w #$40,($254,a4)

loc_08185c:
	move.w ($256,a4),d0
	addq.w #2,d0
	asr.w #3,d0
	sub.w d0,($256,a4)
	move.w #$64,($25a,a4)
	rts

;--------------------------
loc_081870:
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_08188e:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_08188e
	sf ($b9,a4)
	move.w #-$c,d2
	move.w #-$52,d3
	jsr loc_02c7be
	sf ($273,a4)

loc_0818b0:
	jsr loc_02269c
	move.w ($216,a4),d0
	sub.w d0,($290,a4)
	tst.b ($b6,a4)
	beq.b loc_0818b0
	tst.b ($273,a4)
	beq.b loc_0818de
	tst.b ($249,a3)
	beq.b loc_0818de
	movea.l #loc_085df0,a0
	clr.w d0
	jsr loc_0226f0

loc_0818de:
	jsr loc_02269c
	subq.w #2,($292,a4)
	btst #2,($2e1,a4)
	beq.b loc_0818de
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_0818fa:
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
	bpl.w loc_081932
	btst #3,($2f6,a4)
	sne ($bb,a4)

loc_081932:
	move.l #$80000,d2
	move.l #-$5e000,d3
	jsr loc_02a59c
	lea loc_08198c(pc),a0
	jsr loc_02a554

loc_08194e:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.w loc_081970
	clr.b ($b6,a4)
	tst.b ($bb,a4)
	beq.w loc_081970
	not.b ($208,a4)
	not.b ($208,a3)

loc_081970:
	btst #2,($2e1,a4)
	beq.b loc_08194e
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08198c:
	dc.l loc_084924,loc_084984,loc_0849e4,loc_084a4a
	dc.l loc_084ab0,loc_084b10,loc_084b76,loc_084bd6
	dc.l loc_084c36,loc_084c9c,loc_084924,loc_084924
	dc.l loc_084924,loc_084924,loc_084924,loc_084924

;--------------------------
loc_0819cc:
	st ($24a,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	move.l #$60000,d2
	move.l #$40000,d3
	jsr loc_02a59c
	lea loc_081a48(pc),a0
	jsr loc_02a554
	tst.l ($21a,a4)
	bmi.w loc_081a12
	clr.l ($216,a4)
	clr.l ($21a,a4)

loc_081a06:
	jsr loc_02269c
	tst.b ($24b,a4)
	bne.b loc_081a06

loc_081a12:
	jsr loc_02269c
	addi.l #$b200,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_081a12
	clr.l ($216,a4)
	clr.l ($21a,a4)
	btst #2,($2e1,a4)
	beq.b loc_081a12
	move.b ($209,a4),($208,a4)
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_081a48:
	dc.l loc_084dc2,loc_084e0c,loc_084e56,loc_084ea0
	dc.l loc_084eea,loc_084f34,loc_084f7e,loc_084fc8
	dc.l loc_085012,loc_08505c,loc_084dc2,loc_084dc2
	dc.l loc_084dc2,loc_084dc2,loc_084dc2,loc_084dc2

;--------------------------
loc_081a88:
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_081a94:
	jsr loc_02269c
	btst #4,($248,a4)
	bne.w loc_081ac0
	btst #0,($2f6,a4)
	beq.w loc_081ac0
	tst.w ($20c,a4)
	bne.w loc_081ac0
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_081ac0:
	btst #2,($2e1,a4)
	beq.b loc_081a94
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_081ad2:
	st ($24a,a4)

loc_081ad6:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_081ad6
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_081aee:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_081d2e
	tst.b ($66,a4)
	bne.b loc_081b28
	movea.l #loc_085212,a0
	clr.w d0
	jsr loc_027e70
	move.l #$70000,($36,a4)
	move.l #$50000,($3a,a4)
	bra.b loc_081b46

loc_081b28:
	movea.l #loc_085212,a0
	clr.w d0
	jsr loc_027e70
	move.l #$80000,($36,a4)
	move.l #$30000,($3a,a4)

loc_081b46:
	move.l #$200000,d2
	move.l #-$480000,d3
	jsr loc_0282ea

loc_081b58:
	tst.b ($9b,a4)
	bne.w loc_081cbc
	move.l #loc_08547a,($9c,a4)
	jsr loc_02805e
	bne.w loc_081cbc
	move.l #loc_085482,($9c,a4)
	jsr loc_028112
	bne.w loc_081cb6
	move.l #loc_08547a,($9c,a4)
	jsr loc_027e48
	move.w ($2e,a4),d0
	addi.w #$10,d0
	cmp.w (-$45d6,a5),d0
	blt.w loc_081d2e
	move.w ($2e,a4),d0
	subi.w #$10,d0
	cmp.w (-$45d4,a5),d0
	bge.w loc_081d2e
	move.w ($32,a4),d0
	addi.w #$10,d0
	cmp.w (-$45da,a5),d0
	blt.w loc_081d2e
	tst.l ($3a,a4)
	bmi.w loc_081c8a
	move.w ($32,a4),d0
	addi.w #$10,d0
	cmp.w (-$45de,a5),d0
	blt.w loc_081c8a
	move.l (-$45de,a5),($32,a4)
	subi.w #$10,($32,a4)
	move.b #$2d,($89,a4)
	movea.l #loc_08530a,a0
	clr.w d0
	jsr loc_027e70
	clr.l ($36,a4)
	clr.l ($3a,a4)

loc_081c02:
	move.l #loc_08548a,($9c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l ($8,a4),a3
	jsr loc_027ea4
	tst.b ($9b,a4)
	bne.w loc_081cbc
	jsr loc_02805e
	bne.w loc_081cbc
	move.l #loc_085492,($9c,a4)
	jsr loc_028112
	bne.w loc_081cb6
	btst #2,($53,a4)
	beq.b loc_081c02
	movea.l #loc_08535c,a0
	clr.w d0
	jsr loc_027e70
	move.l #loc_08547a,($9c,a4)
	move.l #$30000,($36,a4)
	move.l #-$c0000,($3a,a4)
	jsr loc_027e48

loc_081c8a:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.w loc_081b58

loc_081cb6:
	jsr loc_0281fa

loc_081cbc:
	move.w #$1885,d0
	jsr loc_02301a
	clr.l ($9c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	movea.l #loc_08540c,a0
	clr.w d0
	jsr loc_027e70

loc_081cfa:
	btst #2,($53,a4)
	bne.w loc_081d2e
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l ($8,a4),a3
	jsr loc_027ea4
	bra.b loc_081cfa

loc_081d2e:
	jmp loc_027de6

;--------------------------
loc_081d34:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_081e8e
	movea.l #loc_081e98,a0
	clr.w d0
	jsr loc_027e70
	clr.l ($9c,a4)

loc_081d5a:
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l ($8,a4),a3
	jsr loc_027ea4
	tst.b ($66,a4)
	beq.b loc_081d5a
	clr.w ($68,a4)

loc_081d98:
	sf ($9b,a4)
	clr.l ($9c,a4)
	tst.b ($66,a4)
	beq.b loc_081e08
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.l #loc_082068,($9c,a4)
	jsr loc_02805e
	tst.b ($66,a4)
	bpl.b loc_081e02
	bclr #7,($87,a4)
	jsr loc_028112
	beq.b loc_081e00
	move.w #$1885,d0
	jsr loc_02301a
	jsr loc_0281fa
	jsr loc_028344
	bclr #6,($25e,a3)
	movea.l ($28,a4),a3
	move.b #1,($66,a4)
	move.w #0,($68,a4)

loc_081e00:
	bra.b loc_081e08

loc_081e02:
	jsr loc_028112

loc_081e08:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	subq.w #1,($68,a4)
	bpl.b loc_081e44
	clr.w ($68,a4)
	jsr loc_027ea4
	btst #2,($53,a4)
	bne.w loc_081e8e

loc_081e44:
	tst.b ($249,a3)
	bne.w loc_081e50
	bra.w loc_081d98

loc_081e50:
	clr.l ($9c,a4)

loc_081e54:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	subq.w #1,($68,a4)
	bpl.b loc_081e86
	clr.w ($68,a4)
	jsr loc_027ea4

loc_081e86:
	btst #2,($53,a4)
	beq.b loc_081e54

loc_081e8e:
	clr.l ($9c,a4)
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_081e98:
	dc.w $8013,$0066,$0000
	dc.w $0001,$0fad,$70ff,$ffe0,$0010,$0f00
	dc.w $0001,$0fad,$70ff,$ffe0,$0010,$1100
	dc.w $0001,$0fad,$70ff,$ffe0,$0010,$1300
	dc.w $0001,$0f9c,$70ff,$ffd8,$0000,$0f00
	dc.w $0001,$0f9c,$70ff,$ffd8,$0000,$1100
	dc.w $0001,$0f9c,$70ff,$ffd8,$0000,$1300
	dc.w $0001,$0f9d,$70ff,$ffd8,$0000,$0f00
	dc.w $0001,$0f9d,$70ff,$ffd8,$0000,$1100
	dc.w $0001,$0f9d,$70ff,$ffd8,$0000,$1300
	dc.w $0001,$0f9e,$70ff,$ffd8,$0000,$0f00
	dc.w $0001,$0f9e,$70ff,$ffd8,$0000,$1100
	dc.w $0001,$0f9e,$70ff,$ffd8,$0000,$1300
	dc.w $8013,$0066,$ffff
	dc.w $0001,$0f9f,$70ff,$ffd8,$0000,$0f00
	dc.w $0001,$0f9f,$70ff,$ffd8,$0000,$1500
	dc.w $0001,$0fa0,$70ff,$ffd8,$0000,$1000
	dc.w $0001,$0f9f,$70ff,$ffd8,$0000,$1100
	dc.w $0001,$0fa0,$70ff,$ffd8,$0000,$0f00
	dc.w $0001,$0fa0,$70ff,$ffd8,$0000,$1500
	dc.w $0001,$0fa0,$70ff,$ffd8,$0000,$1000
	dc.w $0001,$0fa1,$70ff,$ffd8,$0000,$1100
	dc.w $0001,$0fa1,$70ff,$ffd8,$0000,$0f00
	dc.w $0001,$0fa0,$70ff,$ffd8,$0000,$1500
	dc.w $0001,$0fa0,$70ff,$ffd8,$0000,$1000
	dc.w $0001,$0fa1,$70ff,$ffd8,$0000,$1100
	dc.w $0001,$0fa1,$70ff,$ffd8,$0000,$0f00
	dc.w $0001,$0fa1,$70ff,$ffd8,$0000,$1500
	dc.w $0001,$0fa2,$70ff,$ffd8,$0000,$1000
	dc.w $0001,$0fa1,$70ff,$ffd8,$0000,$1100
	dc.w $0001,$0fa2,$70ff,$ffd8,$0000,$0f00
	dc.w $0001,$0fa2,$70ff,$ffd8,$0000,$1500
	dc.w $8013,$0066,$0000
	dc.w $0001,$0fa3,$70ff,$ffd8,$0000,$1000
	dc.w $0001,$0fa3,$70ff,$ffd8,$0000,$1100
	dc.w $0001,$0fa4,$70ff,$ffd8,$0000,$1300
	dc.w $0001,$0fa3,$70ff,$ffd8,$0000,$0f00
	dc.w $0001,$0fa4,$70ff,$ffd8,$0008,$1100
	dc.w $0001,$0fa4,$70ff,$ffd8,$0020,$1300
	dc.w $0001,$0fa4,$70ff,$ffd8,$0040,$0f00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082068:
	dc.w $ff60,$0000,$0008,$0048

;--------------------------
loc_082070:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_0822d8
	move.w #-$1,($6a,a4)
	move.w #$a00,d4
	move.w d4,d5
	move.b ($66,a4),d0
	move.b d0,($89,a4)
	cmpi.b #$2c,d0
	bne.b loc_0820a6
	addi.b #$10,($60,a4)
	bra.b loc_0820ec

loc_0820a6:
	cmpi.b #$17,d0
	bne.b loc_0820b4
	addi.b #$11,($60,a4)
	bra.b loc_082104

loc_0820b4:
	cmpi.b #$18,d0
	bne.b loc_0820c2
	addi.b #$12,($60,a4)
	bra.b loc_082104

loc_0820c2:
	cmpi.b #$20,d0
	bne.b loc_0820d8
	addi.b #$11,($60,a4)
	move.w #$700,d4
	move.w #$900,d5
	bra.b loc_082104

loc_0820d8:
	cmpi.b #$21,d0
	bne.b loc_0820ec
	addi.b #$12,($60,a4)
	move.w #$700,d4
	move.w #$900,d5

loc_0820ec:
	movem.l d4-d5,-(a7)
	movea.l #loc_0823c8,a0
	clr.w d0
	jsr loc_027e70
	movem.l (a7)+,d4-d5
	bra.b loc_08211a

loc_082104:
	movem.l d4-d5,-(a7)
	movea.l #loc_082366,a0
	clr.w d0
	jsr loc_027e70
	movem.l (a7)+,d4-d5

loc_08211a:
	move.b ($67,a4),d0
	move.w d0,d1
	jsr loc_002a72
	exg d0,d1
	jsr loc_002a6e
	muls.w d4,d0
	muls.w d5,d1
	move.l d0,($36,a4)
	move.l d1,($3a,a4)
	jsr loc_028344
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.l ($20e,a3),($6e,a4)
	move.l ($212,a3),($72,a4)
	jsr RandomNumberGod
	andi.w #$1f,d0
	subi.w #$10,d0
	add.w d0,($2e,a4)
	jsr RandomNumberGod
	andi.w #$1f,d0
	addi.w #$20,d0
	sub.w d0,($32,a4)
	clr.l ($9c,a4)

loc_082180:
	subq.w #1,($68,a4)
	bmi.w loc_0821c6
	btst #4,($249,a3)
	bne.w loc_0821c6
	jsr loc_027e48
	bsr.w loc_0822de
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l ($8,a4),a3
	jsr loc_027ea4
	bra.b loc_082180

loc_0821c6:
	move.w #$f,($6c,a4)

loc_0821cc:
	move.l #loc_08235e,($9c,a4)
	jsr loc_028112
	bne.w loc_082282
	clr.l ($9c,a4)
	jsr loc_027e48
	bsr.w loc_0822de
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	subq.w #1,($6c,a4)
	bpl.b loc_0821cc
	clr.l ($9c,a4)
	move.w #$f,($6c,a4)

loc_082224:
	move.l #loc_08235e,($9c,a4)
	jsr loc_028112
	bne.w loc_082282
	clr.l ($9c,a4)
	jsr loc_027e48
	move.w ($32,a4),d0
	addi.w #$20,d0
	cmp.w (-$45de,a5),d0
	bge.w loc_082288
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	subq.w #1,($6c,a4)
	bpl.b loc_082224
	bra.w loc_082288

loc_082282:
	jsr loc_0281fa

loc_082288:
	move.w #$1885,d0
	jsr loc_02301a
	clr.l ($9c,a4)
	movea.l #loc_082472,a0
	clr.w d0
	jsr loc_027e70

loc_0822a4:
	btst #2,($53,a4)
	bne.w loc_0822d8
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_0822a4

loc_0822d8:
	jmp loc_027de6

;--------------------------
loc_0822de:
	move.l ($20e,a3),d0
	sub.l ($6e,a4),d0
	add.l d0,($2e,a4)
	move.l ($212,a3),d0
	sub.l ($72,a4),d0
	add.l d0,($32,a4)
	move.l ($20e,a3),($6e,a4)
	move.l ($212,a3),($72,a4)
	move.w ($20e,a3),d2
	sub.w ($2e,a4),d2
	tst.b ($2c,a4)
	bpl.b loc_082312
	neg.w d2

loc_082312:
	move.w ($212,a3),d3
	subi.w #$30,d3
	sub.w ($32,a4),d3
	move.w d2,d0
	or.w d3,d0
	beq.b loc_082330
	jsr loc_002c7e			;Homing
	move.w d0,($6a,a4)
	bra.b loc_082336

loc_082330:
	move.w #-$1,($6a,a4)

loc_082336:
	move.w ($6a,a4),d0
	bmi.b loc_08235c
	move.w d0,d1
	jsr loc_002a72
	exg d0,d1
	jsr loc_002a6e
	muls.w #$100,d0
	muls.w #$100,d1
	add.l d0,($36,a4)
	add.l d1,($3a,a4)

loc_08235c:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08235e:
	dc.w $fff0,$0010,$fff0,$0010

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082366:
	dc.w $0001,$0f57,$7000
	dc.w $0001,$0f57,$70ff,$0000,$0000,$0100

loc_082378:
	dc.w $0001,$0f58,$7000
	dc.w $0001,$0f58,$70ff,$0000,$0000,$0100
	dc.w $0001,$0f5a,$7000
	dc.w $0001,$0f5a,$70ff,$0000,$0000,$0100
	dc.w $0001,$0f5b,$7000
	dc.w $0001,$0f5b,$70ff,$0000,$0000,$0100
	dc.w $0001,$0f5d,$7000
	dc.w $0001,$0f5d,$70ff,$0000,$0000,$0100
	dc.w $8000,$0000
	dc.l loc_082378

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0823c8:
	dc.w $0002,$0f4b,$7000
	dc.w $0002,$0f4c,$70ff,$0000,$0000,$0100
	dc.w $0002,$0f4d,$7000
	dc.w $0002,$0f4e,$7000
	dc.w $0002,$0f4f,$70ff,$0000,$0000,$0100
	dc.w $0002,$0f58,$7000
	dc.w $0002,$0f4f,$7000
	dc.w $0002,$0f5a,$70ff,$0000,$0000,$0100
	dc.w $0002,$0f4b,$70ff,$0000,$0000,$0001
	dc.w $0002,$0f4c,$70ff,$0000,$0000,$0001
	dc.w $0002,$0f4d,$70ff,$0000,$0000,$0101
	dc.w $0002,$0f4e,$70ff,$0000,$0000,$0001
	dc.w $0002,$0f4f,$70ff,$0000,$0000,$0001
	dc.w $0002,$0f58,$70ff,$0000,$0000,$0101
	dc.w $0002,$0f4f,$70ff,$0000,$0000,$0001
	dc.w $0002,$0f5a,$70ff,$0000,$0000,$0001
	dc.w $8000,$0000
	dc.l loc_0823c8

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082472:
	dc.w $0002,$11c4,$70ff,$0000,$0000,$fa00
	dc.w $0002,$1194,$70ff,$0000,$0000,$fa00
	dc.w $0002,$1195,$70ff,$0000,$0000,$fa00
	dc.w $0002,$1196,$70ff,$0000,$0000,$fa00
	dc.w $0002,$1197,$70ff,$0000,$0000,$fa00
	dc.w $0002,$1198,$70ff,$0000,$0000,$fa00
	dc.w $0002,$1199,$70ff,$0000,$0000,$fa00
	dc.w $0002,$119a,$70ff,$0000,$0000,$fa00
	dc.w $8001

;--------------------------
loc_0824d4:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.b ($208,a3),($2c,a4)
	move.w #4,($68,a4)

loc_0824f6:
	tst.b ($249,a3)
	bne.w loc_0825b2
	move.l ($2e2,a3),($54,a4)
	move.w ($2e6,a3),($58,a4)
	move.w ($2e8,a3),($5a,a4)
	move.w #$e00,($5c,a4)
	move.w ($2ec,a3),($5e,a4)
	move.b ($2e0,a3),($52,a4)
	addq.b #4,($52,a4)
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	lea loc_0825b8(pc),a0
	move.w ($68,a4),d0
	add.w d0,d0
	move.w (a0,d0.w),d0
	move.l ($216,a3),d2
	neg.l d2
	asr.l #8,d2
	muls.w d0,d2
	move.l ($21a,a3),d3
	neg.l d3
	asr.l #8,d3
	muls.w d0,d3
	jsr loc_0282ea
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l d6/a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),d6/a3
	subq.w #1,($66,a4)
	move.w ($66,a4),d0
	cmp.w ($68,a4),d0
	bgt.b loc_082590
	subq.w #1,($68,a4)
	bra.b loc_0825a0

loc_082590:
	addq.w #1,($68,a4)
	cmpi.w #$14,($68,a4)
	ble.b loc_0825a0
	subq.w #2,($68,a4)

loc_0825a0:
	tst.w ($68,a4)
	bpl.b loc_0825aa
	clr.w ($68,a4)

loc_0825aa:
	tst.w ($66,a4)
	bgt.w loc_0824f6

loc_0825b2:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0825b8:
	dc.w $0040,$0030,$0080,$0060,$0108,$0100,$02c8
	dc.w $01c0,$0418,$0254,$0530,$02c8,$0600,$0328
	dc.w $06b0,$0380,$0750,$03c8,$07d0,$0400,$0800

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0825e2:
	dc.l $0003c000,$fffcc000,$00000000
	dc.l $0003a000,$fffc6000,$fff3d500,$0000b200

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0825fe:
	dc.l loc_08260a,loc_082616,loc_082622

loc_08260a:
	dc.w $8039,$fc00
	dc.w $803b,$cc00,$f20c,$0000

loc_082616:
	dc.w $8039,$fe02
	dc.w $803b,$e000,$f20c,$0000

loc_082622:
	dc.w $8039,$fd01
	dc.w $803b,$ccf0,$f20c,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Ai pnts
loc_08262e:
	dc.l loc_07dae4,loc_07dae4,loc_07ddea,loc_07e13a
	dc.l loc_07e7fa,loc_07ea88,loc_07ec44,loc_07ed22

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08264e:
	dc.l loc_082a42,loc_082ae0,loc_082bbc,loc_082c18
	dc.l loc_082af0,loc_082b02,loc_082bac,loc_082b9a
	dc.l loc_082c74,loc_082c82,loc_082cac,loc_082cce
	dc.l loc_082d28,loc_082c9a,loc_082d36,loc_082d36
	dc.l loc_082d36,loc_082d46,loc_082d46,loc_082d46
	dc.l loc_082d50,loc_082d50,loc_082d50,loc_082d5a
	dc.l loc_082d5a,loc_082d5a,loc_082d6a,loc_082d6a
	dc.l loc_082d6a,loc_082d74,loc_082d74,loc_082d74
	dc.l loc_082d7e,loc_082d88,loc_082e28,loc_082d88
	dc.l loc_082f64

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0826e2:
	dc.l loc_028468,loc_028562,loc_02848c,loc_028572
	dc.l loc_02861e,loc_0286fc,loc_0287a6,loc_0287e0
	dc.l loc_02881a,loc_028a02,loc_028958,loc_028a30
	dc.l loc_028ae2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082716:
	dc.l loc_082f7e,loc_082f7e,loc_082f7e,loc_082fea
	dc.l loc_082fea,loc_082fea,loc_083056,loc_083056
	dc.l loc_08307a,loc_08307a,loc_08309e,loc_08309e
	dc.l loc_0830de,loc_0830de,loc_083110,loc_083110
	dc.l loc_083128,loc_083128,loc_083140,loc_083140
	dc.l loc_083168,loc_083168,loc_083188,loc_083188
	dc.l loc_0831a0,loc_0831a0,loc_0831b8,loc_0831b8
	dc.l loc_0831e6,loc_0831e6,loc_08320c,loc_08327e
	dc.l loc_08320c,loc_08327e,loc_0832f0,loc_083330
	dc.l loc_083348,loc_08337a,loc_083348,loc_08337a
	dc.l loc_083348,loc_0833ac,loc_0833ac,loc_0833c4
	dc.l loc_0833ce,loc_083400,loc_083424,loc_083490
	dc.l loc_08342c,loc_08349e,loc_08349e,loc_08349e
	dc.l loc_0834f0,loc_0834f0,loc_083532,loc_08355a
	dc.l loc_083594,loc_083594,loc_0835be,loc_0835be
	dc.l loc_083604,loc_083604,loc_083666

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082812:
	dc.l $00000000,loc_083670,loc_08376a,loc_083894
	dc.l loc_08395a,loc_083a10,loc_083b6c,loc_083bc4
	dc.l loc_083c98,loc_083e3e,loc_083f36,loc_08400a
	dc.l loc_08410a,loc_084418,loc_084418,loc_08449e
	dc.l loc_084500,loc_0845f0,loc_0845f0,loc_0846de
	dc.l loc_0847b6,loc_084202,loc_0842e4,loc_085f8c
	dc.l loc_085ebc,loc_08483c,loc_084d02,loc_0850a6
	dc.l loc_08515c,loc_08549a,loc_085600,loc_085c84
	dc.l loc_085996,loc_086086

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08289a:
	dc.w $0008,$0000,$0000,$8000

	dc.w $800a
	dc.l loc_082902

	dc.w $0002,$0000,$0000,$8000
	dc.w $802b,$1c4c
	dc.w $0020,$0000,$0000,$8000
	dc.w $8002,$18ac
	dc.w $001a,$0000,$0000,$8000
	dc.w $0004,$0ef0,$0001,$80ff,$0000,$0000,$0200
	dc.w $0003,$0ef1,$0001,$80ff,$0000,$0000,$0200
	dc.w $0003,$0ef2,$0001,$80ff,$0000,$0000,$0200
	dc.w $0003,$0ef3,$0001,$80ff,$0000,$0000,$0600
	dc.w $8001

loc_082902:
	dc.w $0001,$087e,$7cff,$0020,$0050,$0a00
	dc.w $0001,$087f,$7cff,$0010,$0038,$0a00
	dc.w $0008,$0000,$6000
	dc.w $0001,$0882,$7cff,$0000,$0038,$0a00
	dc.w $0001,$0883,$7cff,$0010,$0038,$0a00
	dc.w $0008,$0000,$6000
	dc.w $0001,$0884,$7cff,$0008,$0018,$0a00
	dc.w $0001,$0885,$7cff,$0008,$0010,$0a00
	dc.w $0001,$0872,$7cff,$0010,$0018,$0a00
	dc.w $0001,$0873,$7cff,$0008,$0030,$0a03
	dc.w $0008,$0000,$6000
	dc.w $0002,$0874,$7cff,$0008,$0058,$0a03
	dc.w $0002,$0875,$7cff,$0008,$0078,$0a00
	dc.w $0002,$0877,$7cff,$0010,$0070,$0a01
	dc.w $0002,$0878,$7cff,$0010,$0060,$0a01
	dc.w $0002,$087b,$7cff,$0008,$0038,$0a00
	dc.w $0002,$0879,$7cff,$0000,$0050,$0a01
	dc.w $0002,$087c,$7cff,$0008,$0018,$0a01
	dc.w $0002,$087d,$7cff,$0008,$0008,$0a00
	dc.w $0002,$0fa4,$7cff,$0004,$0000,$1200
	dc.w $0002,$0fa3,$7cff,$0004,$0000,$1300
	dc.w $0002,$0fa2,$7cff,$0004,$0000,$1100
	dc.w $0002,$0fa1,$7cff,$0004,$0000,$1200
	dc.w $0002,$0fa0,$7cff,$0004,$0000,$1300
	dc.w $0002,$0f9f,$7cff,$0004,$0000,$1100
	dc.w $0002,$0f9e,$7cff,$0004,$0000,$1200
	dc.w $0002,$0f9d,$7cff,$0004,$0000,$1300
	dc.w $0002,$0f9c,$7cff,$0004,$0000,$1100
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082a42:
	dc.w $8027,$ffec,$0010
	dc.w $0006,$0eeb,$0001,$8000
	dc.w $0006,$0eec,$0001,$8000
	dc.w $0006,$0eed,$0001,$8000
	dc.w $0004,$0eee,$0001,$8000
	dc.w $0004,$0eef,$0001,$8000
	dc.w $0004,$0ef0,$0001,$8000
	dc.w $0003,$0ef1,$0001,$8000
	dc.w $0003,$0ef2,$0001,$8000
	dc.w $0003,$0ef3,$0001,$8000
	dc.w $0003,$0eeb,$0001,$8000
	dc.w $0003,$0eec,$0001,$8000
	dc.w $0003,$0eed,$0001,$8000
	dc.w $0003,$0eee,$0001,$8000
	dc.w $0004,$0eef,$0001,$8000
	dc.w $0004,$0ef0,$0001,$8000
	dc.w $0004,$0ef1,$0001,$8000
	dc.w $0006,$0ef2,$0001,$8000
	dc.w $0006,$0ef3,$0001,$8000
	dc.w $8000,$0000
	dc.l loc_082a42

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082ae0:
	dc.w $0004,$0e69,$0002,$8000
	dc.w $8000,$0000
	dc.l loc_082a42

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082af0:
	dc.w $0002,$0e35,$0003,$8000
	dc.w $0002,$0e2f,$0004,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082b02:
	dc.w $0006,$0f07,$0005,$8000
	dc.w $0006,$0f08,$0005,$8000
	dc.w $0006,$0f09,$0005,$8000
	dc.w $0004,$0f0a,$0005,$8000
	dc.w $0004,$0f0b,$0005,$8000
	dc.w $0004,$0f0c,$0005,$8000
	dc.w $0003,$0f07,$0005,$8000
	dc.w $0003,$0f08,$0005,$8000
	dc.w $0003,$0f09,$0005,$8000
	dc.w $0003,$0f0a,$0005,$8000
	dc.w $0003,$0f0b,$0005,$8000
	dc.w $0003,$0f0c,$0005,$8000
	dc.w $0003,$0f07,$0005,$8000
	dc.w $0004,$0f08,$0005,$8000
	dc.w $0004,$0f09,$0005,$8000
	dc.w $0004,$0f0a,$0005,$8000
	dc.w $0006,$0f0b,$0005,$8000
	dc.w $0006,$0f0c,$0005,$8000
	dc.w $8000,$0000
	dc.l loc_082b02

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082b9a:
	dc.w $0002,$0e2f,$0004,$8000
	dc.w $0002,$0e35,$0003,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082bac:
	dc.w $0004,$0e6a,$0006,$8000
	dc.w $8000,$0000
	dc.l loc_082b02

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082bbc:
	dc.w $0003,$0ef8,$0007,$80ff,$0000,$fffc,$0000
	dc.w $0003,$0ef9,$0007,$80ff,$0000,$fffc,$0000
	dc.w $0003,$0efa,$0007,$80ff,$0000,$fffc,$0000
	dc.w $0003,$0efb,$0007,$80ff,$0000,$fffc,$0000
	dc.w $0003,$0efc,$0007,$80ff,$0000,$fffc,$0000
	dc.w $0003,$0efd,$0007,$80ff,$0000,$fffc,$0000
	dc.w $8000,$0000
	dc.l loc_082bbc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082c18:
	dc.w $0004,$0f01,$0008,$80ff,$0000,$fffa,$0000
	dc.w $0004,$0f02,$0008,$80ff,$0000,$fffa,$0000
	dc.w $0004,$0f03,$0008,$80ff,$0000,$fffa,$0000
	dc.w $0004,$0f04,$0008,$80ff,$0000,$fffa,$0000
	dc.w $0004,$0f05,$0008,$80ff,$0000,$fffa,$0000
	dc.w $0004,$0f06,$0008,$80ff,$0000,$fffa,$0000
	dc.w $8000,$0000
	dc.l loc_082c18

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082c74:
	dc.w $8003,$186f
	dc.w $0001,$0e35,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082c82:
	dc.w $0002,$0e36,$0000,$7c00
	dc.w $0004,$0e36,$0009,$7c00
	dc.w $000a,$0e37,$000a,$7c00

loc_082c9a:
	dc.w $000a,$0e37,$000a,$7c00
	dc.w $0006,$0e38,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082cac:
	dc.w $0002,$0e36,$0000,$7c00
	dc.w $0004,$0e36,$0009,$7c00
	dc.w $0014,$0e37,$000a,$7c00
	dc.w $0006,$0e38,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082cce:
	dc.w $0002,$0e36,$0000,$7c00
	dc.w $0004,$0e36,$0009,$7c00
	dc.w $0008,$0e56,$000c,$7cff,$0000,$0008,$0000
	dc.w $0003,$0e55,$000d,$7c00
	dc.w $0002,$0e54,$000e,$7cff,$0008,$0010,$0000
	dc.w $0002,$0e53,$000f,$7cff,$0000,$0008,$0000
	dc.w $0003,$0e52,$0010,$7cff,$0000,$0008,$0000
	dc.w $0006,$0e38,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082d28:
	dc.w $8003,$1870
	dc.w $0004,$0e35,$0003,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082d36:
	dc.w $0002,$0f0d,$0011,$8400
	dc.w $8000,$0000
	dc.l loc_082d46

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082d46:
	dc.w $0006,$0f0e,$0011,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082d50:
	dc.w $0002,$0f0d,$0011,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082d5a:
	dc.w $0002,$0f10,$0012,$8400
	dc.w $8000,$0000
	dc.l loc_082d6a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082d6a:
	dc.w $0010,$0f10,$0012,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082d74:
	dc.w $0002,$0f10,$0012,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082d7e:
	dc.w $8000,$0000
	dc.l loc_082a42
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082d88:
	dc.w $0008,$0f0d,$0000,$8000
	dc.w $0008,$0f0e,$0000,$8000

	dc.w $800a
	dc.l loc_082ea2

	dc.w $001c,$0f0f,$0000,$8000

	dc.w $8017,$0060
	dc.l loc_082dba

	dc.w $802b,$1c4b

	dc.w $8000,$0000
	dc.l loc_082dbe

loc_082dba:
	dc.w $802b,$1c4a

loc_082dbe:
	dc.w $800a
	dc.l loc_082de4

	dc.w $0004,$0f30,$0000,$8000
	dc.w $0004,$0f31,$0000,$8000

loc_082dd4:
	dc.w $0028,$0f32,$0000,$8000
	dc.w $8000,$0000
	dc.l loc_082dd4

loc_082de4:
	dc.w $0004,$0f3f,$84ff,$0008,$0068,$1601
	dc.w $0004,$0f40,$84ff,$0008,$006a,$1601
	dc.w $0004,$0f41,$84ff,$0008,$0066,$1601
	dc.w $0004,$0f42,$84ff,$0008,$0062,$1601

loc_082e14:
	dc.w $0028,$0f43,$84ff,$0008,$0066,$1601
	dc.w $8000,$0000
	dc.l loc_082e14

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082e28:
	dc.w $0008,$0f0d,$0000,$8000
	dc.w $8007,$000c,$0000
	dc.w $802b,$1c4c
	dc.w $0008,$0e1e,$0000,$80ff,$0002,$0000,$0000
	dc.w $0014,$0f3a,$0000,$8000
	dc.w $0008,$0f3b,$0000,$8000
	dc.w $0008,$0f3a,$0000,$8000
	dc.w $0008,$0f3b,$0000,$8000
	dc.w $0008,$0f3a,$0000,$8000
	dc.w $0008,$0f3b,$0000,$8000
	dc.w $0008,$0f3c,$0000,$8000
	dc.w $802b,$1c4d

	dc.w $800a
	dc.l loc_082ea2

loc_082e8a:
	dc.w $0008,$0f3d,$0000,$8000
	dc.w $0008,$0f3e,$0000,$8000
	dc.w $8000,$0000
	dc.l loc_082e8a


;==========================
loc_082ea2:
	dc.w $0002,$0f7b,$7cff,$0000,$0068,$0f00
	dc.w $0002,$0f7b,$7cff,$0000,$0068,$1000
	dc.w $0002,$0f7b,$7cff,$0000,$0068,$1300
	dc.w $0002,$0f7b,$7cff,$0000,$0068,$1400
	dc.w $0002,$0f7c,$7cff,$0000,$0068,$0f00
	dc.w $0002,$0f7c,$7cff,$0000,$0068,$1000
	dc.w $0002,$0f7c,$7cff,$0000,$0068,$1300
	dc.w $0002,$0f7c,$7cff,$0000,$0068,$1400
	dc.w $0002,$0f7d,$7cff,$fff8,$0068,$0f00
	dc.w $0002,$0f7d,$7cff,$fff8,$0068,$1000
	dc.w $0002,$0f7d,$7cff,$fff8,$0068,$1300
	dc.w $0002,$0f7d,$7cff,$fff8,$0068,$1400
	dc.w $0002,$0f7e,$7cff,$fff8,$0060,$0f00
	dc.w $0002,$0f7e,$7cff,$fff8,$0060,$1000
	dc.w $0002,$0f7e,$7cff,$fff8,$0060,$1300
	dc.w $0002,$0f7e,$7cff,$fff8,$0060,$1400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082f64:
	dc.w $0004,$0e8b,$0000,$8400
	dc.w $0004,$0e8c,$0000,$8400
	dc.w $0014,$0e8d,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082f7e:
	dc.w $800b
	dc.l loc_082f94

loc_082f84:
	dc.w $0008,$0f0f,$0011,$8400

	dc.w $8000,$0000
	dc.l loc_082f84

loc_082f94:
	dc.w $0002,$0f13,$80ff,$0000,$0050,$0c00
	dc.w $0002,$0f14,$80ff,$0000,$0050,$0c00
	dc.w $0002,$0f15,$80ff,$0000,$0050,$0c00
	dc.w $0002,$0f16,$80ff,$0000,$0050,$0c00
	dc.w $0002,$0f17,$80ff,$0000,$0050,$0c00
	dc.w $0002,$0f18,$80ff,$0008,$0050,$0c00
	dc.w $0002,$0f19,$80ff,$0008,$0050,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_082fea:
	dc.w $800b
	dc.l loc_083000

loc_082ff0:
	dc.w $0010,$0f11,$0012,$8400

	dc.w $8000,$0000
	dc.l loc_082ff0

loc_083000:
	dc.w $0002,$0f1a,$70ff,$0000,$0030,$0c00
	dc.w $0002,$0f1b,$70ff,$0000,$0030,$0c00
	dc.w $0002,$0f1c,$70ff,$0000,$0030,$0c00
	dc.w $0002,$0f1d,$70ff,$0000,$0030,$0c00
	dc.w $0002,$0f1e,$70ff,$0000,$0030,$0c00
	dc.w $0002,$0f1f,$70ff,$0008,$0030,$0c00
	dc.w $0002,$0f20,$70ff,$0008,$0030,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083056:
	dc.w $802d,$ffe8,$ff8c
	dc.w $0006,$0f38,$0013,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0f37,$0014,$84ff,$fffc,$0000,$0000
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08307a:
	dc.w $802d,$ffe8,$ff8c
	dc.w $000c,$0f38,$0013,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0f37,$0014,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08309e:
	dc.w $802d,$ffe4,$ff8c
	dc.w $0002,$0f38,$0013,$84ff,$fff8,$0000,$0000
	dc.w $000a,$0f39,$0013,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0f38,$0013,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0f37,$0014,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0830de:
	dc.w $802d,$ffdc,$ff8c
	dc.w $0012,$0f39,$0013,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0f38,$0013,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0f37,$0014,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083110:
	dc.w $802e,$0004,$ffaa
	dc.w $0006,$0f35,$0015,$8400
	dc.w $0006,$0f34,$0016,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083128:
	dc.w $802e,$0004,$ffaa
	dc.w $000c,$0f35,$0015,$8400
	dc.w $0006,$0f34,$0016,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083140:
	dc.w $802e,$0004,$ffaa
	dc.w $0002,$0f35,$0015,$8400
	dc.w $000a,$0f36,$0015,$8400
	dc.w $0006,$0f35,$0015,$8400
	dc.w $0006,$0f34,$0016,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083168:
	dc.w $802e,$0004,$ffaa
	dc.w $0012,$0f36,$0015,$8400
	dc.w $0006,$0f35,$0015,$8400
	dc.w $0006,$0f34,$0016,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083188:
	dc.w $802f,$fff2,$ffb4
	dc.w $0006,$0ede,$0017,$8400
	dc.w $0006,$0edd,$0018,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0831a0:
	dc.w $802f,$fff2,$ffb4
	dc.w $000c,$0ede,$0017,$8400
	dc.w $0006,$0edd,$0018,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0831b8:
	dc.w $802f,$ffee,$ffb2
	dc.w $0002,$0ede,$0017,$8400
	dc.w $000a,$0edf,$0017,$84ff,$fffc,$0000,$0000
	dc.w $0006,$0ede,$0017,$8400
	dc.w $0006,$0edd,$0018,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0831e6:
	dc.w $802f,$ffe4,$ffb2
	dc.w $0012,$0edf,$0017,$84ff,$fffc,$0000,$0000
	dc.w $0006,$0ede,$0017,$8400
	dc.w $0006,$0edd,$0018,$8400
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08320c:
	dc.w $802e,$0008,$ffa6
	dc.w $0006,$0f35,$0019,$84ff,$fff8,$0000,$0000
	dc.w $0004,$0e5e,$0019,$84ff,$0000,$0010,$0000
	dc.w $0004,$0e5f,$0019,$84ff,$0000,$0010,$0000
	dc.w $0003,$0e55,$001a,$84ff,$0000,$fff0,$0000
	dc.w $0002,$0e54,$001a,$84ff,$0008,$0008,$0000
	dc.w $0002,$0e53,$001a,$84ff,$0000,$0008,$0000
	dc.w $0003,$0e52,$001a,$84ff,$0000,$0008,$0000
	dc.w $0006,$0e38,$001a,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08327e:
	dc.w $802d,$ffe2,$ff8c
	dc.w $0006,$0f38,$0019,$84ff,$fff8,$0000,$0000
	dc.w $0004,$0e5e,$0019,$84ff,$0000,$0010,$0000
	dc.w $0004,$0e5f,$0019,$84ff,$0000,$0010,$0000
	dc.w $0003,$0e55,$001a,$84ff,$0000,$fff0,$0000
	dc.w $0002,$0e54,$001a,$84ff,$0008,$0008,$0000
	dc.w $0002,$0e53,$001a,$84ff,$0000,$0008,$0000
	dc.w $0003,$0e52,$001a,$84ff,$0000,$0008,$0000
	dc.w $0006,$0e38,$001a,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0832f0:
	dc.w $802e,$0004,$ffa0
	dc.w $0006,$0e5a,$0019,$84ff,$0000,$0010,$0000
	dc.w $0003,$0e5c,$0019,$84ff,$0000,$0080,$0003
	dc.w $0003,$0e5b,$001b,$84ff,$0000,$0070,$0003
	dc.w $0008,$0e5d,$001b,$84ff,$0010,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083330:
	dc.w $0002,$0e5b,$001c,$7cff,$0008,$0058,$0003
	dc.w $000a,$0e62,$001c,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083348:
	dc.w $8030,$fff0,$ffb0
	dc.w $0008,$0f39,$0019,$7cff,$fff0,$0000,$0000
	dc.w $0008,$0e5e,$0019,$7cff,$0000,$0010,$0000
	dc.w $0008,$0e5f,$001b,$7cff,$0000,$0010,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08337a:
	dc.w $8030,$fff0,$ffb0
	dc.w $0008,$0f36,$0019,$7cff,$fff8,$0000,$0000
	dc.w $0008,$0e5e,$0019,$7cff,$0000,$0010,$0000
	dc.w $0008,$0e5f,$001b,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0833ac:
	dc.w $0004,$0e63,$001c,$7cff,$0010,$0000,$0000
	dc.w $0010,$0e61,$001c,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0833c4:
	dc.w $0010,$0e62,$001c,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0833ce:
	dc.w $8030,$fff8,$ff98
	dc.w $0013,$0e5a,$0019,$7cff,$0000,$0010,$0000
	dc.w $0008,$0e5e,$0019,$7cff,$0000,$0010,$0000
	dc.w $0008,$0e5f,$001b,$7cff,$0000,$0010,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083400:
	dc.w $8030,$ffe0,$ffc8
	dc.w $0002,$0e5f,$0019,$7cff,$0000,$0010,$0000
	dc.w $0004,$0e5d,$001b,$7cff,$0010,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083424:
	dc.w $8000,$0000
	dc.l loc_08320c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08342c:
	dc.w $8037
	dc.l loc_081ad2

	dc.w $8002,$188d
	dc.w $8043,$0018
	dc.w $8044,$0020
	dc.w $0004,$0e61,$0000,$7cff,$0000,$fff8,$0000
	dc.w $0004,$0e63,$0000,$7cff,$0000,$0008,$0000
	dc.w $0008,$0e64,$0000,$7cff,$0000,$0008,$0000
	dc.w $0004,$0e2f,$0000,$7cff,$fff8,$0000,$0000
	dc.w $803a,$df00
	dc.w $0002,$0e10,$0000,$7c00
	dc.w $803a,$0000
	dc.w $0002,$0e10,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083490:
	dc.w $8003,$1870
	dc.w $0004,$0e35,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08349e:
	dc.w $0004,$0e61,$0000,$7cff,$0000,$fff8,$0000
	dc.w $0004,$0e63,$0000,$7cff,$0000,$0008,$0000
	dc.w $0008,$0e64,$0000,$7cff,$0000,$0008,$0000
	dc.w $0004,$0e2f,$0000,$7cff,$fff8,$0000,$0000
	dc.w $803a,$df00
	dc.w $0002,$0e10,$0000,$7c00
	dc.w $803a,$0000
	dc.w $0002,$0e10,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0834f0:
	dc.w $0004,$0e61,$0000,$7cff,$0000,$fff8,$0000
	dc.w $0004,$0e63,$0000,$7cff,$0000,$0008,$0000
	dc.w $0008,$0e64,$0000,$7cff,$0000,$0008,$0000
	dc.w $0004,$0e2f,$0000,$7cff,$fff8,$0000,$0000
	dc.w $0004,$0e10,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083532:
	dc.w $000a,$0e8d,$001d,$7c00
	dc.w $000a,$0e8c,$001d,$7c00
	dc.w $000a,$0e8b,$001d,$7c00
	dc.w $000a,$0e8c,$001d,$7c00
	dc.w $8000,$0000
	dc.l loc_083532

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08355a:
	dc.w $0006,$0e9c,$0000,$7800
	dc.w $0002,$0e9d,$0000,$7800
	dc.w $0002,$0e9e,$0000,$7800
	dc.w $0006,$0e9f,$0000,$7800
	dc.w $803a,$df00
	dc.w $0004,$0e9e,$0000,$7800
	dc.w $803a,$0000
	dc.w $0004,$0e9d,$0000,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083594:
	dc.w $8030,$fff0,$ffc0

loc_08359a:
	dc.w $0003,$0ee4,$0019,$7cff,$0000,$0000,$0500
	dc.w $0001,$0ee5,$0019,$7cff,$0000,$0000,$0500
	dc.w $8000,$0000
	dc.l loc_08359a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0835be:
	dc.w $8030,$fff0,$ffb0

loc_0835c4:
	dc.w $0002,$0e58,$0019,$7cff,$0000,$0000,$0600
	dc.w $0002,$0e58,$0019,$7cff,$fffd,$0000,$0200
	dc.w $0002,$0e58,$0019,$7cff,$0000,$0000,$0400
	dc.w $0002,$0e58,$0019,$7cff,$0003,$0000,$0700
	dc.w $8000,$0000
	dc.l loc_0835c4

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083604:
	dc.w $8030,$ffe0,$ffc8

loc_08360a:
	dc.w $0002,$0e5f,$0019,$7cff,$0000,$0012,$0800
	dc.w $0002,$0e5f,$0019,$7cff,$0002,$000f,$0900
	dc.w $0002,$0e5f,$0019,$7cff,$fffe,$0011,$0800
	dc.w $0002,$0e5f,$0019,$7cff,$0000,$000e,$0900
	dc.w $0002,$0e5f,$0019,$7cff,$0002,$000f,$0800
	dc.w $0002,$0e5f,$0019,$7cff,$fffe,$000f,$0900
	dc.w $8000,$0000
	dc.l loc_08360a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083666:
	dc.w $0004,$0edb,$001d,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Attack start
loc_083670:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08369e

	dc.w $803e,$0823,$0500
	dc.w $803f,$1608,$1005,$1604
	dc.w $8040,$0802,$0208,$08ff
	dc.w $8041,$0401,$0824

	dc.w $8036
	dc.l loc_08260a

loc_08369e:
	dc.w $8004,$18ab

	dc.w $800b
	dc.l loc_083714

	dc.w $8011,$001d,$0005,$2800,$10f4,$ff00
	dc.w $8027,$fff4,$0028
	dc.w $0002,$0e17,$001e,$7cff,$fff4,$0000,$0000
	dc.w $8045,$0003
	dc.w $803b,$cc00,$fa14
	dc.w $8027,$fff4,$0038
	dc.w $0008,$0e18,$001f,$78ff,$fff4,$0000,$0000
	dc.w $8027,$fff4,$0028
	dc.w $0004,$0e17,$001e,$7cff,$fff4,$0000,$0000
	dc.w $803c,$0000
	dc.w $8027,$ffec,$0020
	dc.w $0004,$0e10,$0020,$7cff,$fff6,$0000,$0000
	dc.w $8001

loc_083714:
	dc.w $0002,$0ecf,$74ff,$0000,$0050,$0a01
	dc.w $0002,$0f45,$74ff,$ffd0,$0050,$1100
	dc.w $0002,$0f49,$74ff,$ffd0,$0050,$1100
	dc.w $0002,$0f49,$74ff,$ffd0,$0050,$0f00
	dc.w $0002,$0f49,$74ff,$ffd0,$0050,$1300
	dc.w $0002,$0f4a,$74ff,$ffd0,$0050,$1100
	dc.w $0002,$0f4a,$74ff,$ffd0,$0050,$0f00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08376a:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_083794

	dc.w $803e,$0863,$0500
	dc.w $803f,$1208,$0c04,$1204
	dc.w $8040,$0802,$0207,$09ff
	dc.w $8041,$0401,$1030,$0000

loc_083794:
	dc.w $8004,$18ab
	dc.w $802b,$1c45

	dc.w $800b
	dc.l loc_08380e

	dc.w $8027,$ffec,$0028
	dc.w $0002,$0e24,$0021,$7cff,$fff4,$0000,$0000
	dc.w $8011,$001d,$0005,$3000,$10f4,$ff00
	dc.w $8045,$0003
	dc.w $803b,$cc00,$fa18
	dc.w $8027,$fffc,$0050
	dc.w $0007,$0e13,$0022,$78ff,$fff4,$0000,$0000
	dc.w $8027,$fff4,$0030
	dc.w $0005,$0e12,$0023,$78ff,$fff4,$0000,$0000
	dc.w $803c,$0000
	dc.w $8027,$ffec,$0028
	dc.w $0004,$0e24,$0021,$7cff,$fff4,$0000,$0000
	dc.w $8001

loc_08380e:
	dc.w $0002,$0ed0,$74ff,$ffe8,$0048,$0a01
	dc.w $0001,$0f71,$74ff,$ffac,$0060,$1400
	dc.w $0001,$0f72,$74ff,$ffac,$0060,$1300
	dc.w $0001,$0f74,$74ff,$ffac,$0060,$1200
	dc.w $0001,$0f72,$74ff,$ffac,$0060,$1400
	dc.w $0001,$0f74,$74ff,$ffac,$0060,$1300
	dc.w $0001,$0f72,$74ff,$ffac,$0060,$1200
	dc.w $0001,$0f74,$74ff,$ffac,$0060,$1400
	dc.w $0001,$0f75,$74ff,$ffb4,$0058,$1300
	dc.w $0001,$0f75,$74ff,$ffb4,$0054,$1201
	dc.w $0001,$0f75,$74ff,$ffaa,$0050,$1400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083894:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0838c2

	dc.w $803e,$0823,$0600
	dc.w $803f,$1208,$0c04,$1204
	dc.w $8040,$0800,$020a,$06ff
	dc.w $8041,$0201,$0422

	dc.w $8036
	dc.l loc_082616

loc_0838c2:
	dc.w $8004,$18ab

	dc.w $800b
	dc.l loc_083904

	dc.w $0002,$0e2d,$0024,$78ff,$fffe,$0000,$0000
	dc.w $8045,$0003
	dc.w $8027,$ffec,$0030
	dc.w $000a,$0e2e,$0025,$78ff,$fffe,$0000,$0000
	dc.w $8028
	dc.w $0006,$0e2d,$0024,$78ff,$fffe,$0000,$0000
	dc.w $8001

loc_083904:
	dc.w $0002,$0ece,$74ff,$0008,$0040,$0a03
	dc.w $0002,$0f45,$74ff,$ffd4,$0040,$1100
	dc.w $0002,$0f49,$74ff,$ffd4,$0040,$1100
	dc.w $0002,$0f49,$74ff,$ffd4,$0040,$0f00
	dc.w $0002,$0f49,$74ff,$ffd4,$0040,$1300
	dc.w $0002,$0f4a,$74ff,$ffd4,$0040,$1100
	dc.w $0002,$0f4a,$74ff,$ffd4,$0040,$0f00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08395a:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08398c

	dc.w $803e,$0a69,$0200
	dc.w $803f,$0602,$0201,$0600
	dc.w $8040,$0708,$0306,$06ff
	dc.w $8042,$0401
	dc.w $8041,$0101,$0428

	dc.w $8036
	dc.l loc_08260a

loc_08398c:
	dc.w $8005,$1897
	dc.w $8027,$ffec,$0018
	dc.w $0001,$0e28,$0026,$78ff,$fffc,$0000,$0000
	dc.w $8027,$fff4,$0028
	dc.w $0002,$0e29,$0027,$78ff,$fffc,$0000,$0000

	dc.w $800a
	dc.l loc_0839f6

	dc.w $8027,$fff4,$0040
	dc.w $0006,$0e2a,$0028,$7800
	dc.w $8027,$fff4,$0028
	dc.w $0003,$0e29,$0027,$78ff,$fffc,$0000,$0000
	dc.w $8027,$ffec,$0018
	dc.w $0003,$0e28,$0026,$78ff,$fffc,$0000,$0000
	dc.w $8001

loc_0839f6:
	dc.w $0002,$0f8b,$74ff,$ffb8,$0020,$0000
	dc.w $0002,$0f8c,$74ff,$ffb8,$0020,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083a10:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_083a3e

	dc.w $803e,$084a,$0700
	dc.w $803f,$0e04,$0003,$0e02
	dc.w $8040,$0600,$0f09,$06ff
	dc.w $8041,$0602,$0026

	dc.w $8036
	dc.l loc_08260a

loc_083a3e:
	dc.w $8027,$ffec,$0028
	dc.w $0003,$0e23,$0029,$7cff,$fff4,$0000,$0000

	dc.w $8008
	dc.l $0000c000,$00000000

	dc.w $8027,$ffec,$0018
	dc.w $0003,$0e1e,$002a,$7cff,$fff4,$0000,$0000

	dc.w $800a
	dc.l loc_083b16

	dc.w $0004,$0e1f,$002b,$7cff,$fff4,$0000,$0000
	dc.w $804e,$0000,$c000,$0000,$5000
	dc.w $8004,$1898
	dc.w $8011,$001c,$0004,$f800,$f800
	dc.w $0005,$0e20,$002c,$7cff,$fff4,$0000,$0000
	dc.w $8027,$ffec,$0038
	dc.w $8045,$0004
	dc.w $802b,$1c48
	dc.w $0007,$0e21,$002d,$78ff,$fff4,$0000,$0000
	dc.w $8035
	dc.w $803e,$096b,$0600
	dc.w $803f,$0e04,$0c03,$0e02

	dc.w $804e
	dc.l $00048000,$fffdc000

	dc.w $8027,$ffec,$0030
	dc.w $8011,$001d,$0005,$0000,$10f4,$ff00
	dc.w $0002,$0e22,$002e,$78ff,$fff4,$0000,$0000
	dc.w $8027,$ffec,$0028
	dc.w $0006,$0e23,$0029,$7cff,$fff4,$0000,$0000
	dc.w $8001

loc_083b16:
	dc.w $0002,$0ecc,$74ff,$0008,$0028,$0a00
	dc.w $0002,$0ed2,$74ff,$0000,$0030,$0a01
	dc.w $0002,$0ed1,$74ff,$0000,$0050,$0a00
	dc.w $0003,$0ed2,$74ff,$0000,$0050,$0a00
	dc.w $0007,$0f8f,$74ff,$ffd0,$0070,$1100
	dc.w $0002,$0f90,$74ff,$ffd0,$0034,$1100
	dc.w $0004,$0f91,$74ff,$ffd0,$0034,$1100
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083b6c:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_083b9e

	dc.w $803e,$0a29,$0600
	dc.w $803f,$0502,$0201,$0500
	dc.w $8040,$0207,$0104,$04ff
	dc.w $8042,$0201
	dc.w $8041,$0101,$0426

	dc.w $8036
	dc.l loc_082616

loc_083b9e:
	dc.w $8005,$189d
	dc.w $0001,$0e33,$002f,$7c00
	dc.w $8027,$ffe4,$0040
	dc.w $0004,$0e34,$0030,$7800
	dc.w $8028
	dc.w $0004,$0e33,$002f,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083bc4:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_083bf2

	dc.w $803e,$087b,$1700
	dc.w $803f,$0a04,$0002,$0a04
	dc.w $8040,$0602,$0a08,$10ff
	dc.w $8041,$0401,$002c

	dc.w $8036
	dc.l loc_08260a

loc_083bf2:
	dc.w $8048,$025c,$00e4
	dc.w $8004,$18ac
	dc.w $0002,$0e6b,$0031,$7c00
	dc.w $802a,$006e
	dc.w $0002,$0e6c,$0031,$7c00
	dc.w $0002,$0e6d,$0031,$7c00
	dc.w $0002,$0e6e,$0031,$7c00
	dc.w $8045,$0004

	dc.w $800d
	dc.l loc_083c66
	dc.w $0001

	dc.w $0002,$0e6f,$0032,$7c00
	dc.w $0004,$0e70,$0033,$7c00
	dc.w $0004,$0e6f,$0033,$7c00
	dc.w $0004,$0e6e,$0031,$7c00
	dc.w $0004,$0e6d,$0031,$7c00
	dc.w $0004,$0e6c,$0031,$7c00
	dc.w $0004,$0e6b,$0031,$7c00
	dc.w $8001

loc_083c66:
	dc.w $0002,$0f92,$78ff,$ffc8,$0070,$0f00
	dc.w $0004,$0f93,$78ff,$ffb8,$0060,$0f00
	dc.w $0004,$0f94,$78ff,$ffc8,$0070,$0f00
	dc.w $0004,$0f95,$78ff,$ffe8,$0070,$0f00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083c98:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_083cc6

	dc.w $803e,$0827,$0f00
	dc.w $803f,$2a0a,$0c0a,$2a08
	dc.w $8040,$0402,$0b06,$18ff
	dc.w $8041,$0401,$103b

	dc.w $8036
	dc.l loc_08260a


loc_083cc6:
	dc.w $8004,$18ac
	dc.w $8027,$ffec,$0018
	dc.w $0004,$0e1f,$002b,$7cff,$fff4,$0000,$0000
	dc.w $802a,$006f
	dc.w $0003,$0e1e,$002a,$7cff,$fff4,$0000,$0000

	dc.w $800b
	dc.l loc_083d94

	dc.w $8027,$fff4,$0028
	dc.w $803b,$cc00,$fa14
	dc.w $0002,$0e14,$0034,$78ff,$fff4,$0000,$0000
	dc.w $8027,$fff4,$0038
	dc.w $803b,$cc00,$021c
	dc.w $8011,$001c,$0004,$3000,$1800
	dc.w $0002,$0e16,$0035,$78ff,$fff2,$0000,$0000
	dc.w $8045,$0008
	dc.w $8027,$fff4,$0050
	dc.w $0006,$0e15,$0036,$78ff,$fff4,$0000,$0000
	dc.w $000a,$0e15,$0037,$78ff,$fff4,$0000,$0000
	dc.w $8007,$0010,$0000
	dc.w $803b,$cc00,$fa14
	dc.w $8027,$fff4,$0028
	dc.w $0008,$0e14,$0034,$7cff,$fff4,$0000,$0000
	dc.w $803c,$0000
	dc.w $8027,$ffec,$0020
	dc.w $0006,$0e10,$0020,$7cff,$fff6,$0000,$0000
	dc.w $8001

loc_083d94:
	dc.w $0001,$0f5f,$74ff,$ffe8,$0058,$1200
	dc.w $0001,$0f53,$74ff,$ffd0,$0058,$1200
	dc.w $0002,$0f44,$74ff,$ffc0,$0058,$1100
	dc.w $0001,$0f45,$74ff,$ffa0,$0058,$1100
	dc.w $0001,$0f46,$74ff,$ffa0,$0058,$1300
	dc.w $0001,$0f47,$74ff,$ffa0,$0058,$0f00
	dc.w $0001,$0f45,$74ff,$ffa0,$0058,$1000
	dc.w $0001,$0f46,$74ff,$ffa0,$0058,$1100
	dc.w $0001,$0f47,$74ff,$ffa0,$0058,$1300
	dc.w $0002,$0f48,$74ff,$ffa0,$0058,$1100
	dc.w $0002,$0f49,$74ff,$ff98,$0058,$1100
	dc.w $0002,$0f4a,$74ff,$ff90,$0058,$1100
	dc.w $0002,$0f7b,$74ff,$ff80,$0050,$1100
	dc.w $0002,$0f8a,$74ff,$ff80,$0038,$1100
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083e3e:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_083e70

	dc.w $803e,$0a44,$2000
	dc.w $8046,$1c00
	dc.w $803f,$0e06,$0803,$0e06
	dc.w $8040,$0a00,$0412,$16ff
	dc.w $8041,$0102,$0a20

	dc.w $8036
	dc.l loc_082616

loc_083e70:
	dc.w $8004,$18a3
	dc.w $0004,$0e2d,$0024,$7cff,$fffe,$0000,$0000
	dc.w $8045,$0004
	dc.w $8027,$fff4,$0038
	dc.w $8011,$001c,$0004,$3400,$1000
	dc.w $8011,$001c,$0004,$2c00,$f000
	dc.w $0006,$0e77,$0038,$78ff,$fff4,$0000,$0000
	dc.w $803e,$0827,$2800
	dc.w $803f,$1606,$0805,$1208
	dc.w $8041,$0401,$0427
	dc.w $8007,$000c,$0000
	dc.w $8027,$fff4,$0020
	dc.w $8004,$18a1
	dc.w $0002,$0e2f,$0004,$8800
	dc.w $803c,$0000
	dc.w $8011,$001d,$0005,$3800,$10f4,$ff00
	dc.w $8027,$fff4,$0038
	dc.w $000a,$0e16,$0039,$7800
	dc.w $8027,$fff4,$0038
	dc.w $0006,$0e72,$003a,$7cff,$fff4,$0000,$0000
	dc.w $8027,$fff4,$0028
	dc.w $0006,$0e17,$001e,$7cff,$fff4,$0000,$0000
	dc.w $8027,$ffec,$0020
	dc.w $8007,$000c,$0000
	dc.w $000a,$0e6b,$0031,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_083f36:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_083f64

	dc.w $803e,$084d,$2a00
	dc.w $803f,$1c0a,$1407,$1c08
	dc.w $8040,$0402,$0408,$10ff
	dc.w $8041,$0c01,$fc1c

	dc.w $8036
	dc.l loc_08260a

loc_083f64:
	dc.w $8004,$18a3
	dc.w $8027,$ffdc,$0020
	dc.w $0002,$0f21,$003b,$78ff,$0004,$0000,$0000

	dc.w $800a
	dc.l loc_083fe4

	dc.w $802b,$1c46
	dc.w $8011,$001c,$0004,$0000,$60d0
	dc.w $0002,$0f25,$003c,$78ff,$fffc,$0000,$0000
	dc.w $8045,$0004
	dc.w $8006,$0000
	dc.w $8027,$ffd4,$0018
	dc.w $0008,$0e27,$003d,$78ff,$fff8,$0000,$0000
	dc.w $8027,$ffd4,$0038
	dc.w $0008,$0e26,$003e,$78ff,$fff8,$0000,$0000
	dc.w $8027,$ffdc,$0018
	dc.w $0008,$0e25,$003f,$78ff,$fff8,$0000,$0000
	dc.w $8001

loc_083fe4:
	dc.w $0002,$0f99,$74ff,$ffd0,$0060,$1100
	dc.w $0002,$0f9a,$74ff,$ffe0,$0080,$1100
	dc.w $0002,$0f9b,$74ff,$ffe0,$0080,$1100
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08400a:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08403c

	dc.w $803e,$084c,$1900
	dc.w $8046,$24d2
	dc.w $803f,$160a,$0005,$1608
	dc.w $8040,$0803,$0c0a,$0aff
	dc.w $8041,$0401,$042f

	dc.w $8036
	dc.l loc_08260a

loc_08403c:
	dc.w $0004,$0e1f,$002b,$7cff,$fff4,$0000,$0000
	dc.w $8004,$18a3
	dc.w $0004,$0e1d,$0040,$7cff,$fffa,$0000,$0000
	dc.w $8045,$0004
	dc.w $8027,$ffd4,$0018

	dc.w $804e
	dc.l $00060000,$ffff8000

	dc.w $802b,$1c44
	dc.w $8011,$001c,$0004,$f800,$0000
	dc.w $0004,$0f26,$0041,$7cff,$fffc,$0000,$0000

	dc.w $800a
	dc.l loc_0840e4

	dc.w $8027,$ffec,$0050
	dc.w $0002,$0e31,$0042,$78ff,$fff0,$0000,$0000
	dc.w $8027,$ffd4,$0028
	dc.w $0008,$0e32,$0043,$78ff,$fff0,$0000,$0000
	dc.w $8027,$ffec,$0050
	dc.w $0004,$0e31,$0044,$78ff,$fff0,$0000,$0000
	dc.w $8027,$ffec,$0028
	dc.w $0006,$0e23,$0029,$7cff,$fff4,$0000,$0000
	dc.w $8001

loc_0840e4:
	dc.w $0002,$0f50,$74ff,$ffb8,$0040,$0f00
	dc.w $0003,$0f51,$74ff,$ffb8,$0060,$0f00
	dc.w $0003,$0fb1,$74ff,$ffb8,$0060,$0f00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08410a:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_084138

	dc.w $803e,$0a2d,$0b00
	dc.w $803f,$140a,$0805,$1408
	dc.w $8040,$0204,$040c,$14ff
	dc.w $8041,$0101,$0026

	dc.w $8036
	dc.l loc_082616

loc_084138:
	dc.w $8004,$18a4
	dc.w $8027,$ffdc,$0020
	dc.w $0002,$0f21,$0045,$7cff,$0004,$0000,$0000
	dc.w $8027,$ffcc,$0038
	dc.w $802b,$1c46

	dc.w $800b
	dc.l loc_0841c4

	dc.w $0002,$0f22,$0046,$78ff,$0008,$0000,$0000
	dc.w $8045,$0004

	dc.w $804e
	dc.l $000c0000,$ffff4000

	dc.w $8027,$ffd4,$0040
	dc.w $000c,$0f23,$0047,$78ff,$0000,$fff8,$0000
	dc.w $8027,$ffdc,$0020
	dc.w $0006,$0f22,$0046,$78ff,$0008,$0000,$0000
	dc.w $8028
	dc.w $0008,$0f21,$0045,$7cff,$0004,$0000,$0000
	dc.w $0006,$0f24,$0048,$7cff,$fffc,$0000,$0000
	dc.w $8001

loc_0841c4:
	dc.w $0002,$0fa5,$74ff,$ffec,$0008,$1300
	dc.w $0004,$0fa6,$74ff,$ffec,$0008,$1300
	dc.w $0004,$0fa7,$74ff,$ffec,$0008,$1300
	dc.w $0004,$0fa8,$74ff,$ffec,$0008,$1300
	dc.w $0004,$0fa9,$74ff,$ffec,$0008,$1300
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_084202:
	dc.w $8037
	dc.l loc_081650
	dc.w $8038
	dc.l loc_084230

	dc.w $803e,$086d,$0500
	dc.w $803f,$160a,$0a05,$1606
	dc.w $8040,$0a02,$0808,$0e00
	dc.w $8041,$0401,$062c

	dc.w $8036
	dc.l loc_08260a

loc_084230:
	dc.w $802c
	dc.w $804e
	dc.l $00072000,$ffff4000

	dc.w $8004,$189e
	dc.w $8011,$001c,$0004,$f800,$0000
	dc.w $8027,$ffec,$0010
	dc.w $0003,$0e19,$0049,$8800
	dc.w $802b,$1c48
	dc.w $0003,$0e1a,$004a,$8800
	dc.w $8011,$001d,$0005,$0000,$f0f4,$ff00
	dc.w $0002,$0e1b,$004b,$88ff,$fff8,$0000,$0000
	dc.w $8045,$0004
	dc.w $8019
	dc.w $8008,$0001,$4000,$0000,$0000
	dc.w $8027,$ffe4,$0048

	dc.w $800a
	dc.l loc_0842ca

	dc.w $0008,$0e1c,$004c,$78ff,$fff8,$0000,$0000
	dc.w $8023
	dc.w $8028
	dc.w $0008,$0e1d,$0040,$78ff,$fffa,$0000,$0000
	dc.w $0006,$0e1f,$002b,$7cff,$fff4,$0000,$0000
	dc.w $8001

loc_0842ca
	dc.w $0004,$0f8d,$74ff,$ffb8,$0060,$1400
	dc.w $0004,$0f8e,$74ff,$ffb8,$0060,$1400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0842e4:
	dc.w $8037
	dc.l loc_08165c
	dc.w $8038
	dc.l loc_084312

	dc.w $803e,$194d,$2800
	dc.w $803f,$1c0a,$1207,$1c08
	dc.w $8040,$0200,$18ff,$ff00
	dc.w $8041,$0101,$f20e

	dc.w $8036
	dc.l loc_082622

loc_084312:
	dc.w $802c
	dc.w $8004,$1884
	dc.w $0002,$0e35,$0000,$7c00
	dc.w $8011,$001c,$0004,$f000,$f000
	dc.w $8011,$001c,$0004,$1000,$1000
	dc.w $8045,$0006
	dc.w $0003,$0e55,$000d,$7c00
	dc.w $0003,$0e54,$000e,$7cff,$0008,$0010,$0000
	dc.w $0004,$0e53,$000f,$7cff,$0000,$0008,$0000
	dc.w $0004,$0e37,$004d,$78ff,$0000,$0010,$0000
	dc.w $802b,$1c47
	dc.w $0008,$0e37,$004d,$78ff,$0000,$0010,$0000
	dc.w $8004,$18a3

	dc.w $800b
	dc.l loc_084390

	dc.w $000a,$0e4b,$004e,$7800
	dc.w $8001

loc_084390:
	dc.w $0002,$0f86,$74ff,$0000,$0000,$1400
	dc.w $0002,$0f87,$74ff,$0000,$0010,$1400
	dc.w $0002,$0f88,$74ff,$0000,$0018,$1400
	dc.w $0002,$0f89,$74ff,$0000,$0020,$1400
	dc.w $0002,$0f8a,$74ff,$0000,$0028,$1400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0843ce:
	dc.w $0008,$0e56,$000c,$7cff,$0000,$0008,$0000
	dc.w $0003,$0e55,$000d,$7c00
	dc.w $0002,$0e54,$000e,$7cff,$0008,$0010,$0000
	dc.w $0002,$0e53,$000f,$7cff,$0000,$0008,$0000
	dc.w $0003,$0e52,$0010,$7cff,$0000,$0008,$0000
	dc.w $0006,$0e38,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_084418:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_084446

	dc.w $803e,$0922,$0100
	dc.w $803f,$1004,$0804,$1002
	dc.w $8040,$0400,$04ff,$ffff
	dc.w $8041,$0201,$0824

	dc.w $8036
	dc.l loc_082622

loc_084446:
	dc.w $8004,$18ab

	dc.w $800a
	dc.l loc_084472

	dc.w $0004,$0e3a,$004f,$7800
	dc.w $8045,$0002
	dc.w $8027,$ffe4,$0030
	dc.w $0004,$0e3f,$0050,$78ff,$0008,$fff8,$0000
	dc.w $8001

loc_084472:
	dc.w $0004,$0f96,$74ff,$fff8,$0048,$0000

loc_08447e:
	dc.w $0002,$0f97,$74ff,$ffd0,$0040,$0000
	dc.w $0002,$0f98,$74ff,$ffd0,$0040,$0000
	dc.w $8000,$0000
	dc.l loc_08447e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08449e:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_0844cc

	dc.w $803e,$096a,$0200
	dc.w $803f,$1004,$0a04,$1002
	dc.w $8040,$0800,$04ff,$ffff
	dc.w $8041,$0401,$f022

	dc.w $8036
	dc.l loc_082622

loc_0844cc:
	dc.w $8004,$1897
	dc.w $0002,$0e3a,$004f,$7c00
	dc.w $0002,$0e42,$0051,$88ff,$0000,$0008,$0000
	dc.w $8045,$0002
	dc.w $8027,$ffcc,$0038
	dc.w $0008,$0e43,$0052,$78ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_084500:
	dc.w $8037
	dc.l loc_02907e
	dc.w $8038
	dc.l loc_08452e

	dc.w $803e,$094a,$0800
	dc.w $803f,$0a04,$0002,$0a02
	dc.w $8040,$0200,$060e,$ffff
	dc.w $8041,$0502,$0226

	dc.w $8036
	dc.l loc_082622

loc_08452e:
	dc.w $8004,$189c
	dc.w $8027,$ffec,$0018
	dc.w $0003,$0e20,$0053,$7cff,$fff8,$0000,$0000
	dc.w $8027,$ffec,$0028

	dc.w $800a
	dc.l loc_0845ac

	dc.w $0003,$0e21,$0054,$7800
	dc.w $8045,$0002
	dc.w $8027,$ffec,$0038
	dc.w $0004,$0e48,$0055,$78ff,$fff8,$0000,$0000
	dc.w $8004,$1898
	dc.w $8027,$ffec,$0018
	dc.w $0002,$0e49,$0056,$7800
	dc.w $803e,$094a,$0100
	dc.w $803f,$0a04,$0a02,$0802
	dc.w $8027,$ffec,$0030
	dc.w $0008,$0e4a,$0057,$7800
	dc.w $8028
	dc.w $0014,$0e37,$000a,$7c00
	dc.w $8001

loc_0845ac:
	dc.w $0003,$0f7f,$74ff,$ffe8,$0070,$1400
	dc.w $0002,$0f80,$74ff,$ffc8,$0048,$1400
	dc.w $0002,$0fb2,$74ff,$ffc8,$0040,$1400
	dc.w $0002,$0000,$6000
	dc.w $0003,$0f81,$74ff,$ffc8,$0038,$1400
	dc.w $0003,$0f82,$74ff,$ffd8,$0038,$1400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0845f0:
	dc.w $8037
	dc.l loc_02907e
	dc.w $8038
	dc.l loc_08461e

	dc.w $803e,$0944,$1900
	dc.w $803f,$0a03,$0202,$0803
	dc.w $8040,$0800,$020c,$ffff
	dc.w $8041,$0402,$0222

	dc.w $8036
	dc.l loc_082622

loc_08461e:
	dc.w $8004,$18a3

	dc.w $800a
	dc.l loc_084694

	dc.w $0002,$0e3a,$004f,$7c00
	dc.w $8045,$0004
	dc.w $8027,$ffec,$0020
	dc.w $0003,$0e3b,$0058,$7800
	dc.w $803e,$0944,$1a00
	dc.w $803f,$0a03,$0202,$0803
	dc.w $8027,$fff4,$0028
	dc.w $0003,$0e3c,$0059,$7800
	dc.w $803e,$0944,$2b00
	dc.w $803f,$0a03,$0c02,$0808
	dc.w $0006,$0e3d,$005a,$7800
	dc.w $8028
	dc.w $0006,$0e46,$005b,$88ff,$0000,$0008,$0000
	dc.w $0006,$0e47,$005c,$7cff,$0000,$0008,$0001
	dc.w $8001

loc_084694:
	dc.w $0002,$0f96,$74ff,$fff8,$0048,$0000
	dc.w $0003,$0f76,$74ff,$ffd8,$0050,$1300
	dc.w $0003,$0f77,$74ff,$ffd8,$0068,$1300
	dc.w $0003,$0f78,$74ff,$ffe8,$0088,$1300
	dc.w $0003,$0f79,$74ff,$ffe0,$0088,$1300
	dc.w $0003,$0f7a,$74ff,$ffe8,$0080,$1300
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0846de:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_08470c

	dc.w $803e,$096c,$0c00
	dc.w $803f,$1c08,$1208,$1c08
	dc.w $8040,$0800,$0804,$ffff
	dc.w $8041,$0401,$082d

	dc.w $8036
	dc.l loc_082622

loc_08470c:
	dc.w $0002,$0e46,$005d,$88ff,$0000,$0008,$0000
	dc.w $8004,$189e
	dc.w $802b,$1c48
	dc.w $8027,$ffd4,$0028
	dc.w $0003,$0e45,$005e,$7cff,$0000,$0008,$0000
	dc.w $8027,$ffdc,$0028

	dc.w $800a
	dc.l loc_084790

	dc.w $0003,$0e44,$005f,$7cff,$fff8,$0008,$0000
	dc.w $8045,$0004
	dc.w $8027,$ffdc,$0048
	dc.w $0004,$0ef4,$0060,$78ff,$fff8,$0008,$0000
	dc.w $8027,$ffdc,$0018
	dc.w $0006,$0e42,$0051,$88ff,$0000,$0008,$0000
	dc.w $8028
	dc.w $0006,$0e3a,$0061,$7c00
	dc.w $0014,$0e37,$000a,$7c00
	dc.w $8001

loc_084790:
	dc.w $0003,$0f6e,$74ff,$fff8,$0058,$1400
	dc.w $0002,$0f6f,$74ff,$ffc8,$0050,$1400
	dc.w $0002,$0f70,$74ff,$ffc8,$0050,$1400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0847b6:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_0847e4

	dc.w $803e,$092c,$0100
	dc.w $803f,$1408,$0a05,$1404
	dc.w $8040,$0200,$0308,$ffff
	dc.w $8041,$0201,$ec26

	dc.w $8036
	dc.l loc_082622

loc_0847e4:
	dc.w $8004,$18a1
	dc.w $8027,$ffdc,$0020
	dc.w $0003,$0e40,$0062,$7cff,$0000,$0018,$0000
	dc.w $8045,$0004
	dc.w $8027,$ffd4,$0040
	dc.w $0008,$0e41,$0063,$78ff,$0000,$0010,$0000
	dc.w $8027,$ffdc,$0020
	dc.w $0008,$0e40,$0062,$7cff,$0000,$0018,$0000
	dc.w $8028
	dc.w $0006,$0e3a,$0061,$7c00
	dc.w $0014,$0e37,$000a,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08483c:
	dc.w $8037
	dc.l loc_0818fa
	dc.w $8038
	dc.l loc_084876

	dc.w $8039,$0000
	dc.w $803e,$0807,$2f00
	dc.w $803f,$2008,$000a,$2808
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8047,$024b,$ffff,$0000

loc_084876:
	dc.w $8002,$18e7
	dc.w $802c,$8047,$00b6,$0000
	dc.w $803b,$cc00,$f21c
	dc.w $802b,$1c48
	dc.w $000a,$0e13,$0000,$78ff,$0008,$0000,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $803b,$cc00,$ea14
	dc.w $0004,$0e4c,$0000,$78ff,$fff0,$0000,$0000
	dc.w $803b,$cc00,$e20c
	dc.w $0004,$0e4d,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8004,$1886
	dc.w $803b,$cc00,$da0c
	dc.w $0004,$0e4e,$0000,$78ff,$0008,$0000,$0000
	dc.w $801d
	dc.w $803c,$0000
	dc.w $000a,$0e4f,$0000,$78ff,$0010,$0002,$0000
	dc.w $0006,$0e16,$0000,$78ff,$fffc,$0000,$0001
	dc.w $802b,$1c47
	dc.w $0010,$0e18,$0000,$78ff,$fffc,$0000,$0001
	dc.w $0014,$0e13,$0000,$78ff,$fffc,$0000,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Thrown animations
;Sho
loc_084924:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0143,$0000,$80ff,$003c,$000c,$0001
	dc.w $0004,$013f,$0000,$80ff,$0031,$0027,$0000
	dc.w $0004,$0179,$0000,$80ff,$0014,$0038,$0000
	dc.w $0004,$017a,$0000,$80ff,$ffdc,$0028,$0000
	dc.w $801b,$ffb0,$ffd0,$0000
	dc.w $000a,$0143,$0000,$80ff,$0018,$0070,$0002
	dc.w $0006,$011f,$0000,$8000
	dc.w $8001

;Dao
loc_084984:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$02fa,$0000,$80ff,$003c,$000e,$0001
	dc.w $0004,$030f,$0000,$80ff,$0021,$0037,$0000
	dc.w $0004,$030a,$0000,$80ff,$000c,$0034,$0001
	dc.w $0004,$030b,$0000,$80ff,$ffdc,$0028,$0001
	dc.w $801b,$ffb0,$ffd0,$0000
	dc.w $000a,$02fc,$0000,$80ff,$0010,$fff8,$0000
	dc.w $0006,$0225,$0000,$8000
	dc.w $8001

;Con
loc_0849e4:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0414,$0000,$80ff,$0039,$0004,$0000
	dc.w $0004,$0409,$0000,$80ff,$0030,$0024,$0000
	dc.w $0004,$040c,$0000,$80ff,$0006,$00ae,$0003
	dc.w $0004,$040f,$0000,$80ff,$ffda,$0012,$0000
	dc.w $801b,$ffb0,$ffd0,$0000
	dc.w $000a,$0414,$0000,$80ff,$0018,$0070,$0003
	dc.w $0006,$0458,$0000,$80ff,$0008,$0000,$0000
	dc.w $8001

;Tia
loc_084a4a:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0676,$0000,$80ff,$0039,$001c,$0001
	dc.w $0004,$0670,$0000,$80ff,$001f,$0023,$0000
	dc.w $0004,$0698,$0000,$80ff,$0000,$003f,$0001
	dc.w $0004,$0699,$0000,$80ff,$ffdb,$002c,$0001
	dc.w $801b,$ffb0,$ffd0,$0000
	dc.w $000a,$0677,$0000,$80ff,$0010,$0000,$0001
	dc.w $0006,$0527,$0000,$80ff,$0000,$0008,$0000
	dc.w $8001

;Ril
loc_084ab0:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0870,$0000,$80ff,$0041,$007c,$0003
	dc.w $0004,$0858,$0000,$80ff,$0020,$001c,$0001
	dc.w $0004,$0857,$0000,$80ff,$000b,$00a8,$0003
	dc.w $0004,$0861,$0000,$80ff,$ffda,$0017,$0000
	dc.w $801b,$ffb0,$ffd0,$0000
	dc.w $000a,$0871,$0000,$80ff,$0008,$fff0,$0000
	dc.w $0006,$0812,$0000,$8000
	dc.w $8001

;Als
loc_084b10:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0a06,$0000,$80ff,$0038,$0000,$0001
	dc.w $0004,$09fe,$0000,$80ff,$0023,$0020,$0000
	dc.w $0004,$09fa,$0000,$80ff,$000b,$0035,$0001
	dc.w $0004,$09fb,$0000,$80ff,$ffeb,$0020,$0001
	dc.w $801b,$ffb0,$ffd0,$0000
	dc.w $000a,$0a08,$0000,$80ff,$0000,$0000,$0001
	dc.w $0006,$09d7,$0000,$80ff,$0008,$0000,$0000
	dc.w $8001

;Pie
loc_084b76:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0b99,$0000,$80ff,$0038,$0000,$0001
	dc.w $0004,$0b94,$0000,$80ff,$002b,$0018,$0000
	dc.w $0004,$0bcd,$0000,$80ff,$0006,$003b,$0001
	dc.w $0004,$0bce,$0000,$80ff,$ffd5,$0028,$0001
	dc.w $801b,$ffb0,$ffd0,$0000
	dc.w $000a,$0b99,$0000,$80ff,$0018,$0070,$0002
	dc.w $0006,$0b89,$0000,$8000
	dc.w $8001

;Mah
loc_084bd6:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0dd6,$0000,$80ff,$002e,$0020,$0001
	dc.w $0004,$0da9,$0000,$80ff,$0024,$0030,$0000
	dc.w $0004,$0dbe,$0000,$80ff,$0001,$0031,$0001
	dc.w $0004,$0dbf,$0000,$80ff,$ffe0,$0028,$0001
	dc.w $801b,$ffb0,$ffd0,$0000
	dc.w $000a,$0dd6,$0000,$80ff,$0020,$0060,$0002
	dc.w $0006,$0dc4,$0000,$8000
	dc.w $8001

;Bai
loc_084c36:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0e5a,$0000,$80ff,$0040,$0016,$0000
	dc.w $0004,$0e5b,$0000,$80ff,$002c,$0020,$0000
	dc.w $0004,$0e5e,$0000,$80ff,$0008,$009c,$0003
	dc.w $0004,$0f29,$0000,$80ff,$ffda,$00a8,$0003
	dc.w $801b,$ffb0,$ffd0,$0000
	dc.w $000a,$0e5d,$0000,$80ff,$0010,$0000,$0000
	dc.w $0006,$0e5d,$0000,$80ff,$0010,$0000,$0000
	dc.w $8001

;Sai
loc_084c9c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$1185,$0000,$80ff,$0042,$002b,$0000
	dc.w $0004,$10b9,$0000,$80ff,$002a,$0031,$0000
	dc.w $0004,$10b5,$0000,$80ff,$000c,$0033,$0000
	dc.w $0004,$10b6,$0000,$80ff,$ffdc,$0020,$0000
	dc.w $801b,$ffb0,$ffd0,$0000
	dc.w $000a,$1185,$0000,$80ff,$0013,$0052,$0003
	dc.w $0006,$1066,$0000,$80ff,$000d,$fffa,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_084d02:
	dc.w $8037
	dc.l loc_0819cc
	dc.w $8038
	dc.l loc_084d42

	dc.w $803e,$0805,$2f00
	dc.w $803f,$1810,$080c,$2808
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8039,$0001
	dc.w $803b,$0000,$0000
	dc.w $8047,$024b,$ffff,$0000

loc_084d42:
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $803b,$ccf0,$f21c
	dc.w $000a,$0e3e,$0000,$7800
	dc.w $802b,$1c47
	dc.w $803b,$ccf0,$ea14
	dc.w $0004,$0e46,$0000,$78ff,$0000,$0008,$0001
	dc.w $803b,$ccf0,$e20c
	dc.w $0004,$0e47,$0000,$78ff,$fff8,$0008,$0001
	dc.w $803c,$0008
	dc.w $8004,$1886
	dc.w $801d

	dc.w $8008
	dc.l $00060000,$fff53900

	dc.w $0010,$0e45,$0000,$88ff,$0000,$0008,$0000
	dc.w $000a,$0e37,$0000,$88ff,$0000,$0000,$0001
	dc.w $0006,$0e38,$0000,$7cff,$0000,$0000,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Sho
loc_084dc2:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0143,$0000,$80ff,$0028,$000e,$0000
	dc.w $0004,$0171,$0000,$80ff,$0020,$0030,$0000
	dc.w $0004,$0182,$0000,$80ff,$0004,$0020,$0000
	dc.w $801b,$ffd8,$fff0,$0000
	dc.w $0010,$0144,$0000,$80ff,$0008,$fff8,$0001
	dc.w $8001

;Dao
loc_084e0c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$02fa,$0000,$80ff,$0018,$000e,$0001
	dc.w $0004,$02fb,$0000,$80ff,$0020,$0030,$0000
	dc.w $0004,$0310,$0000,$80ff,$000c,$0018,$0000
	dc.w $801b,$ffd8,$fff0,$0000
	dc.w $0010,$02fc,$0000,$80ff,$0008,$fff8,$0001
	dc.w $8001

;Con
loc_084e56:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0414,$0000,$80ff,$001c,$000c,$0000
	dc.w $0004,$0415,$0000,$80ff,$0018,$0076,$0003
	dc.w $0004,$040a,$0000,$80ff,$0004,$000c,$0000
	dc.w $801b,$ffd8,$fff0,$0000
	dc.w $0010,$0414,$0000,$80ff,$0018,$0070,$0003
	dc.w $8001

;Tia
loc_084ea0:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0676,$0000,$80ff,$001d,$001c,$0001
	dc.w $0004,$068e,$0000,$80ff,$0020,$0046,$0000
	dc.w $0004,$06a1,$0000,$80ff,$fffc,$001c,$0000
	dc.w $801b,$ffd8,$fff0,$0000
	dc.w $0010,$0677,$0000,$80ff,$0008,$0000,$0001
	dc.w $8001

;Ril
loc_084eea:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0870,$0000,$80ff,$001d,$0084,$0003
	dc.w $0004,$0813,$0000,$80ff,$0020,$0066,$0003
	dc.w $0004,$085c,$0000,$80ff,$fffc,$0014,$0001
	dc.w $801b,$ffd8,$fff0,$0000
	dc.w $0010,$0871,$0000,$80ff,$0010,$fff0,$0000
	dc.w $8001

;Als
loc_084f34:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0a06,$0000,$80ff,$0028,$0008,$0001
	dc.w $0004,$09fe,$0000,$80ff,$0018,$0010,$0000
	dc.w $0004,$0a05,$0000,$80ff,$fff4,$0030,$0000
	dc.w $801b,$ffd8,$fff0,$0000
	dc.w $0010,$0a08,$0000,$80ff,$0000,$0000,$0001
	dc.w $8001

;Pie
loc_084f7e:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0b99,$0000,$80ff,$0020,$0008,$0001
	dc.w $0004,$0bc3,$0000,$80ff,$0020,$0030,$0000
	dc.w $0004,$0bd6,$0000,$80ff,$000c,$0010,$0000
	dc.w $801b,$ffd8,$fff0,$0000
	dc.w $0010,$0b9a,$0000,$80ff,$0010,$fff8,$0001
	dc.w $8001

;Mah
loc_084fc8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0dd6,$0000,$80ff,$0010,$0026,$0001
	dc.w $0004,$0dd7,$0000,$80ff,$0020,$0038,$0000
	dc.w $0004,$0dbe,$0000,$80ff,$fffc,$0018,$0001
	dc.w $801b,$ffd8,$fff0,$0000
	dc.w $0010,$0dd8,$0000,$80ff,$0010,$fff8,$0001
	dc.w $8001

;Bai
loc_085012:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0e5a,$0000,$80ff,$0026,$0018,$0000
	dc.w $0004,$0e5b,$0000,$80ff,$0018,$001e,$0000
	dc.w $0004,$0e5c,$0000,$80ff,$fffc,$0024,$0000
	dc.w $801b,$ffd8,$fff0,$0000
	dc.w $0010,$0e5d,$0000,$80ff,$0010,$0000,$0000
	dc.w $8001

;Sai
loc_08505c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$1185,$0000,$80ff,$0023,$002c,$0001
	dc.w $0004,$10b4,$0000,$80ff,$001f,$0036,$0001
	dc.w $0004,$10c0,$0000,$80ff,$fff6,$002a,$0000
	dc.w $801b,$ffd8,$fff0,$0000
	dc.w $0010,$1186,$0000,$80ff,$fffe,$fffd,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0850a6:
	dc.w $8037
	dc.l loc_081750
	dc.w $8038
	dc.l loc_0850de

	dc.w $8039,$0000
	dc.w $803e,$3c02,$1300
	dc.w $803f,$1406,$0807,$1408
	dc.w $8040,$0004,$0900,$2800
	dc.w $8041,$0211,$1818
	dc.w $8048,$0550,$0006

	dc.w $8036
	dc.l loc_08260a

loc_0850de:
	dc.w $802c

	dc.w $800a
	dc.l loc_08512a

	dc.w $8027,$ffec,$0038
	dc.w $0005,$0f30,$0064,$7c00
	dc.w $802a,$0073
	dc.w $0002,$0f31,$0065,$7c00
	dc.w $8004,$18ac
	dc.w $0002,$0f32,$0066,$7c00
	dc.w $8045,$0006
	dc.w $8010,$0038,$0001,$0000
	dc.w $001a,$0f32,$0066,$7c00
	dc.w $000e,$0f33,$0067,$7c00
	dc.w $8001

loc_08512a:
	dc.w $0002,$0f7b,$78ff,$0008,$0068,$0f00
	dc.w $0003,$0f7c,$78ff,$0000,$0068,$0f00
	dc.w $0002,$0f7d,$78ff,$fff8,$0068,$0f00
	dc.w $0002,$0f7e,$78ff,$fff0,$0058,$0f00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08515c:
	dc.w $8037
	dc.l loc_081750
	dc.w $8038
	dc.l loc_085194

	dc.w $8039,$0000
	dc.w $803e,$3c02,$1300
	dc.w $803f,$1406,$0807,$1408
	dc.w $8040,$0004,$0b00,$2800
	dc.w $8041,$0211,$1818
	dc.w $8048,$0550,$0006

	dc.w $8036
	dc.l loc_08260a

loc_085194:
	dc.w $802c

	dc.w $800a
	dc.l loc_0851e0

	dc.w $8027,$ffec,$0038
	dc.w $0006,$0f30,$0064,$7c00
	dc.w $802a,$0072
	dc.w $0003,$0f31,$0065,$7c00
	dc.w $8004,$18ac
	dc.w $0002,$0f32,$0066,$7c00
	dc.w $8045,$0006
	dc.w $8010,$0038,$0001,$ff00
	dc.w $001a,$0f32,$0066,$7c00
	dc.w $000e,$0f33,$0067,$7c00
	dc.w $8001

loc_0851e0:
	dc.w $0003,$0f7b,$78ff,$0008,$0068,$0f00
	dc.w $0003,$0f7c,$78ff,$0000,$0068,$0f00
	dc.w $0003,$0f7d,$78ff,$fff8,$0068,$0f00
	dc.w $0002,$0f7e,$78ff,$fff0,$0058,$0f00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_085212:
	dc.w $0001,$0f52,$74ff,$0000,$0000,$0f00
	dc.w $0001,$0f52,$74ff,$0000,$0000,$1100
	dc.w $0001,$0f52,$74ff,$0000,$0000,$1300
	dc.w $0001,$0f52,$74ff,$0000,$0000,$1400
	dc.w $0001,$0f53,$74ff,$0000,$0000,$0f00
	dc.w $0001,$0f53,$74ff,$0000,$0000,$1100
	dc.w $0001,$0f53,$74ff,$0000,$0000,$1300
	dc.w $0001,$0f53,$74ff,$0000,$0000,$1400
	dc.w $0001,$0f54,$74ff,$0000,$0000,$0f00
	dc.w $0001,$0f54,$74ff,$0000,$0000,$1100
	dc.w $0001,$0f54,$74ff,$0000,$0000,$1300
	dc.w $0001,$0f54,$74ff,$0000,$0000,$1400
	dc.w $0001,$0f55,$74ff,$0000,$0000,$0f00
	dc.w $0001,$0f55,$74ff,$0000,$0000,$1100
	dc.w $0001,$0f55,$74ff,$0000,$0000,$1300
	dc.w $0001,$0f55,$74ff,$0000,$0000,$1400
	dc.w $0001,$0f56,$74ff,$0000,$0000,$0f00
	dc.w $0001,$0f56,$74ff,$0000,$0000,$1100
	dc.w $0001,$0f56,$74ff,$0000,$0000,$1300
	dc.w $0001,$0f56,$74ff,$0000,$0000,$1400
	dc.w $8000,$0000
	dc.l loc_085212

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08530a:
	dc.w $0001,$0f5e,$74ff,$0000,$0000,$0f00
	dc.w $0001,$0f5f,$74ff,$0000,$0000,$0f00

	dc.w $8009
	dc.l loc_08532a

	dc.w $8001

loc_08532a:
	dc.w $0002,$0f60,$70ff,$0000,$0000,$0f00
	dc.w $0002,$0f61,$70ff,$0000,$0000,$0f00
	dc.w $0002,$0f62,$70ff,$0000,$0000,$0f00
	dc.w $0002,$0f63,$70ff,$0000,$0010,$0f00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08535c:
	dc.w $0001,$0f64,$74ff,$0000,$0000,$1100
	dc.w $0001,$0f64,$74ff,$0000,$0000,$1200
	dc.w $0001,$0f65,$74ff,$0000,$0000,$1100
	dc.w $0001,$0f65,$74ff,$0000,$0000,$1200
	dc.w $0001,$0f66,$74ff,$0000,$0000,$1100
	dc.w $0001,$0f66,$74ff,$0000,$0000,$1200
	dc.w $0001,$0f67,$74ff,$0000,$0000,$1100
	dc.w $0001,$0f67,$74ff,$0000,$0000,$1200
	dc.w $0001,$0f68,$74ff,$0000,$0000,$1100
	dc.w $0001,$0f68,$74ff,$0000,$0000,$1200
	dc.w $0001,$0f69,$74ff,$0000,$0000,$1100
	dc.w $0001,$0f69,$74ff,$0000,$0000,$1200
	dc.w $0001,$0f6a,$74ff,$0000,$0000,$1100
	dc.w $0001,$0f6a,$74ff,$0000,$0000,$1200
	dc.w $8000,$0000
	dc.l loc_08535c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08540c:
	dc.w $0001,$0f6b,$74ff,$0000,$0000,$0f00
	dc.w $0001,$0f6b,$74ff,$0000,$0000,$1000
	dc.w $0001,$0f6b,$74ff,$0000,$0000,$0f00
	dc.w $0001,$0f6c,$74ff,$0000,$0000,$1000
	dc.w $0001,$0f6c,$74ff,$0000,$0000,$0f00
	dc.w $0001,$0f6c,$74ff,$0000,$0000,$1000
	dc.w $0001,$0f6d,$74ff,$0000,$0000,$0f00
	dc.w $0001,$0f6d,$74ff,$0000,$0000,$1000
	dc.w $0001,$0f6d,$74ff,$0000,$0000,$0f00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08547a:
	dc.w $ffe8,$0018,$fff0,$0010

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_085482:
	dc.w $fff4,$000c,$fff4,$000c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08548a:
	dc.w $ffe0,$0010,$fff0,$0010

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_085492:
	dc.w $fff0,$0010,$fff0,$0010

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08549a:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0854d8

	dc.w $8039,$0000
	dc.w $803b,$0000,$f20c
	dc.w $803e,$3c04,$2b00
	dc.w $803f,$2008,$100a,$2008
	dc.w $8040,$0000,$1612,$1c00
	dc.w $8043,$0017
	dc.w $8041,$0812,$2020
	dc.w $8048,$0550,$0004,$0000

loc_0854d8:
	dc.w $802c

	dc.w $800a
	dc.l loc_085586

	dc.w $802a,$0071
	dc.w $8027,$ffe4,$0020
	dc.w $0008,$0e74,$0000,$8800
	dc.w $0002,$0e75,$0000,$88ff,$fffc,$0000,$0000
	dc.w $8045,$0010
	dc.w $800f,$0039
	dc.w $8026,$001e
	dc.w $8002,$18e8
	dc.w $0005,$0e76,$0068,$8800
	dc.w $0007,$0ef6,$0068,$8800
	dc.w $0002,$0e76,$0068,$8800
	dc.w $0002,$0ef6,$0068,$8800
	dc.w $0002,$0e76,$0068,$8800
	dc.w $0002,$0ef6,$0068,$8800
	dc.w $0002,$0e76,$0068,$8800
	dc.w $0002,$0ef6,$0068,$8800
	dc.w $0002,$0e76,$0068,$8800
	dc.w $0002,$0ef6,$0068,$8800
	dc.w $0002,$0e76,$0068,$8800
	dc.w $803c,$0004
	dc.w $0006,$0ef6,$0068,$8800
	dc.w $0006,$0ef5,$0068,$8800
	dc.w $0010,$0e77,$0068,$8800
	dc.w $8001

loc_085586
	dc.w $0001,$0faa,$70ff,$0020,$0078,$0f00
	dc.w $0001,$0faa,$70ff,$0020,$0078,$1000
	dc.w $0001,$0fac,$70ff,$0020,$0078,$1100
	dc.w $0001,$0fac,$70ff,$0020,$0078,$1300
	dc.w $0001,$0fab,$70ff,$0020,$0078,$0f00
	dc.w $0001,$0fab,$70ff,$0020,$0078,$1000
	dc.w $0001,$0fac,$70ff,$0020,$0078,$1100
	dc.w $0001,$0fac,$70ff,$0020,$0078,$1300
	dc.w $0001,$0fab,$70ff,$0015,$0068,$0f00
	dc.w $0001,$0fab,$70ff,$000a,$0058,$1000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_085600:
	dc.w $8037
	dc.l loc_081756
	dc.w $8038
	dc.l loc_085642

	dc.w $8039,$0000
	dc.w $803e,$3c20,$2c00
	dc.w $803f,$2008,$0c0a,$2008
	dc.w $8040,$0000,$1010,$2400
	dc.w $8043,$000c
	dc.w $8041,$0401,$0c28
	dc.w $8048,$0550,$0006
	dc.w $8048,$0552,$0034

	dc.w $8036
	dc.l loc_08260a

loc_085642:
	dc.w $802c
	dc.w $8047,$02b8,$0014
	dc.w $8011,$001c,$0004,$f000,$f000
	dc.w $8011,$001c,$0004,$1000,$1000
	dc.w $8027,$ffec,$0010
	dc.w $0002,$0e19,$0000,$8800
	dc.w $8004,$18ac

	dc.w $800a
	dc.l loc_0857fa

	dc.w $802a,$0070
	dc.w $8027,$ffe4,$0008
	dc.w $0004,$0e1a,$0000,$88ff,$0008,$0000,$0000
	dc.w $8027,$ffdc,$0010
	dc.w $0006,$0e1b,$0000,$88ff,$0008,$0000,$0000
	dc.w $8045,$0010
	dc.w $8008,$0002,$0000,$0000,$0000
	dc.w $8027,$ffe4,$0020
	dc.w $0002,$0ea0,$0069,$7c00
	dc.w $8027,$ffec,$0028
	dc.w $0002,$0ea1,$0069,$78ff,$fff8,$0000,$0000
	dc.w $803b,$cc00,$f614
	dc.w $8004,$1885
	dc.w $8008,$000c,$0000,$0000,$0000
	dc.w $8043,$0001
	dc.w $8032,$0010,$0010,$1700
	dc.w $8027,$ffec,$0030
	dc.w $0010,$0ef7,$006a,$78ff,$fff8,$0000,$0000
	dc.w $8023
	dc.w $0014,$0ea3,$006b,$78ff,$fff8,$0000,$0000
	dc.w $803c,$0000
	dc.w $8027,$fff4,$0028
	dc.w $0006,$0e17,$001e,$7cff,$fff4,$0000,$0000
	dc.w $8027,$ffec,$0028
	dc.w $0006,$0e11,$006c,$7cff,$fffa,$0000,$0000
	dc.w $8027,$ffec,$0020
	dc.w $0004,$0e10,$0020,$7cff,$fff8,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_085758:
	dc.w $8040,$0002,$0000,$3600
	dc.w $8023

	dc.w $800a
	dc.l loc_08591c

	dc.w $8027,$ffec,$0030
	dc.w $0014,$0ea3,$006b,$78ff,$fff8,$0000,$0000
	dc.w $8007,$0010,$0000
	dc.w $803c,$0008

	dc.w $804a
	dc.l $fffd0000,$fff53900

	dc.w $8004,$188d
	dc.w $8028
	dc.w $0006,$0e3e,$006d,$78ff,$0000,$0000,$0000
	dc.w $0008,$0e56,$000c,$78ff,$0000,$0008,$0000
	dc.w $0003,$0e55,$000d,$7800
	dc.w $0002,$0e54,$000e,$78ff,$0008,$0010,$0000
	dc.w $0002,$0e53,$000f,$78ff,$0000,$0008,$0000
	dc.w $0003,$0e52,$0010,$78ff,$0000,$0008,$0000
	dc.w $0008,$0e38,$000b,$7800
	dc.w $803c,$0000
	dc.w $0004,$0e35,$0003,$8000
	dc.w $8001

;==========================
loc_0857fa:
	dc.w $0002,$0ecb,$7cff,$0008,$0010,$0a03
	dc.w $0002,$0ecd,$84ff,$0018,$0020,$0a03
	dc.w $0002,$0ecc,$7cff,$0018,$0020,$0a03
	dc.w $0002,$0ecd,$84ff,$0018,$0040,$0a00
	dc.w $0002,$0ed1,$7cff,$0018,$0050,$0a01
	dc.w $0002,$0ecb,$7cff,$fff8,$0060,$0a01
	dc.w $0002,$0ece,$74ff,$0000,$0050,$0a01
	dc.w $0002,$0ecc,$74ff,$ffe8,$0060,$0a01
	dc.w $0001,$0ed0,$74ff,$ffd0,$0060,$0a02
	dc.w $0001,$0ecf,$74ff,$ffc8,$0060,$0a00
	dc.w $0001,$0ece,$74ff,$ffc8,$0060,$0a02
	dc.w $0001,$0ed1,$74ff,$ffb8,$0060,$0a00
	dc.w $0001,$0ece,$74ff,$ffc0,$0068,$0a00
	dc.w $0001,$0ecc,$74ff,$ffe0,$0068,$0a00
	dc.w $0001,$0ed0,$74ff,$ffd0,$0060,$0a02
	dc.w $0001,$0ecf,$74ff,$ffc8,$0060,$0a00
	dc.w $0001,$0ece,$74ff,$ffc8,$0060,$0a02
	dc.w $0001,$0ed1,$74ff,$ffb8,$0060,$0a00
	dc.w $0001,$0ece,$74ff,$ffc0,$0068,$0a00
	dc.w $0001,$0ecc,$74ff,$ffe0,$0068,$0a00
	dc.w $0001,$0ed0,$74ff,$ffd0,$0060,$0a02
	dc.w $0001,$0ecf,$74ff,$ffc8,$0060,$0a00
	dc.w $0001,$0ece,$74ff,$ffc8,$0060,$0a02
	dc.w $0001,$0ed1,$74ff,$ffb8,$0060,$0a00
	dc.w $8001

;==========================
loc_08591c:
	dc.w $0002,$00a9,$74ff,$ffb8,$005c,$0b00
	dc.w $0002,$00b4,$74ff,$ffb0,$005c,$0b00
	dc.w $0002,$00b6,$74ff,$ffa0,$005c,$0b01
	dc.w $0002,$00b5,$74ff,$ff9e,$005c,$0b01
	dc.w $0002,$00b3,$74ff,$ff98,$005c,$0b01
	dc.w $0002,$00a9,$74ff,$ff94,$005c,$0b01
	dc.w $0002,$00a7,$74ff,$ff90,$005c,$0b01
	dc.w $0002,$027c,$74ff,$ff80,$005a,$0b01
	dc.w $0002,$027d,$74ff,$ff80,$005a,$0b01
	dc.w $0002,$027e,$74ff,$ff80,$005a,$0b01
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_085996:
	dc.w $8037
	dc.l loc_0817ac
	dc.w $8038
	dc.l loc_0859d6

	dc.w $8039,$0000
	dc.w $803e,$2882,$2100
	dc.w $8046,$1cf0
	dc.w $803f,$0802,$000f,$0200
	dc.w $8040,$0000,$1440,$1800
	dc.w $8043,$0012
	dc.w $8041,$0601,$ec44
	dc.w $8048,$0550,$0000

	dc.w $8036
	dc.l loc_08260a

loc_0859d6:
	dc.w $802c
	dc.w $8047,$02b8,$0002
	dc.w $8047,$00b9,$0000
	dc.w $8047,$00b6,$0000
	dc.w $8027,$ffe4,$0020
	dc.w $0010,$0e78,$006e,$7cff,$fffc,$0000,$0000
	dc.w $802b,$1c48
	dc.w $8047,$00b9,$ffff
	dc.w $803b,$cc00,$fa14
	dc.w $8027,$ffec,$0030
	dc.w $0002,$0e84,$006f,$7c00
	dc.w $802a,$0075

	dc.w $8008
	dc.l $00010000,$00000000

	dc.w $800d
	dc.l loc_085b92
	dc.w $0001

	dc.w $0001,$0e85,$0070,$7c00
	dc.w $8004,$189c
	dc.w $0001,$0e79,$0071,$7c00
	dc.w $0001,$0e7a,$0072,$7c00
	dc.w $0001,$0e7b,$0073,$7c00
	dc.w $8004,$1898
	dc.w $0001,$0e7c,$0074,$7c00
	dc.w $0001,$0e7d,$0075,$7c00
	dc.w $0001,$0e7e,$006f,$7c00
	dc.w $8004,$189c
	dc.w $0001,$0e7f,$006f,$7c00
	dc.w $0001,$0e80,$0076,$7c00
	dc.w $0001,$0e81,$0077,$7c00
	dc.w $8004,$1898
	dc.w $0001,$0e82,$0078,$7c00
	dc.w $0001,$0e83,$0079,$7c00
	dc.w $0001,$0e84,$006f,$7c00
	dc.w $0001,$0e85,$0070,$7c00
	dc.w $8004,$189c
	dc.w $0001,$0e86,$0071,$7c00
	dc.w $0002,$0e7a,$0072,$7c00
	dc.w $0002,$0e7b,$0073,$7c00
	dc.w $8004,$1898
	dc.w $0002,$0e7c,$0074,$7c00
	dc.w $0002,$0e7d,$0075,$7c00
	dc.w $0002,$0e7e,$006f,$7c00
	dc.w $8004,$189c
	dc.w $0002,$0e7f,$006f,$7c00
	dc.w $0002,$0e80,$0076,$7c00
	dc.w $0002,$0e81,$0077,$7c00
	dc.w $8004,$1898
	dc.w $0003,$0e82,$0078,$7c00
	dc.w $0003,$0e83,$0079,$7c00
	dc.w $0003,$0e84,$006f,$7c00
	dc.w $8004,$189c
	dc.w $0003,$0e85,$0070,$7c00
	dc.w $0003,$0e86,$0071,$7c00
	dc.w $0004,$0e87,$0072,$7c00
	dc.w $8004,$18a3
	dc.w $8023
	dc.w $8047,$00b6,$ffff
	dc.w $000c,$0e88,$006f,$7c00
	dc.w $0004,$0e89,$006f,$7c00
	dc.w $8004,$188b
	dc.w $803e,$2884,$2800
	dc.w $0002,$0e8a,$007a,$7c00
	dc.w $8002,$00e9
	dc.w $0012,$0e8a,$006f,$7c00
	dc.w $803c,$0000
	dc.w $8027,$ffe4,$0020
	dc.w $0004,$0e78,$006e,$7cff,$fffc,$0000,$0000
	dc.w $8001

loc_085b92:
	dc.w $0003,$0fa5,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa6,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa7,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa8,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa9,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa5,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa6,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa7,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa8,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa9,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa5,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa6,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa7,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa8,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa9,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa5,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa6,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa7,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa8,$74ff,$fff8,$0008,$1100
	dc.w $0003,$0fa9,$74ff,$fff8,$0008,$1100
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_085c84:
	dc.w $8037
	dc.l loc_081870
	dc.w $8038
	dc.l loc_085cc6

	dc.w $8039,$0000
	dc.w $803e,$28bd,$1800
	dc.w $8046,$30fc
	dc.w $803f,$0c04,$0006,$0704
	dc.w $8040,$0000,$1006,$2e00
	dc.w $8043,$0010
	dc.w $8041,$0401,$0428
	dc.w $8048,$0550,$0000
	dc.w $803b,$0000,$f20c,$0000

loc_085cc6:
	dc.w $8048,$025c,$00e4
	dc.w $8047,$02b8,$ffff
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b9,$0000
	dc.w $802c
	dc.w $8011,$001c,$0004,$f000,$f000
	dc.w $8011,$001c,$0004,$1000,$1000
	dc.w $8027,$ffec,$0010
	dc.w $0002,$0e19,$0000,$8800

	dc.w $800a
	dc.l loc_085e5a

	dc.w $802b,$1c47
	dc.w $8027,$ffe4,$0008
	dc.w $0004,$0e1a,$0000,$88ff,$0008,$0000,$0000
	dc.w $8027,$ffdc,$0010
	dc.w $0006,$0e1b,$0000,$88ff,$0008,$0000,$0000
	dc.w $8008,$0002,$0000,$0000,$0000
	dc.w $8004,$18ac
	dc.w $8047,$00b9,$ffff
	dc.w $8027,$ffe4,$0020
	dc.w $0002,$0ea0,$0069,$7c00
	dc.w $8027,$ffec,$0028
	dc.w $0002,$0ea1,$0069,$78ff,$fff8,$0000,$0000
	dc.w $803b,$0000,$f614

	dc.w $804e
	dc.l $00380000,$fffa0000

	dc.w $8032,$0006,$0010,$1700
	dc.w $8027,$ffec,$0030
	dc.w $0006,$0ef7,$007b,$78ff,$fff8,$0000,$0000
	dc.w $8019
	dc.w $8023
	dc.w $8047,$00b6,$ffff
	dc.w $001e,$0ea3,$006b,$78ff,$fff8,$0000,$0000
	dc.w $803c,$0000
	dc.w $8027,$fff4,$0028
	dc.w $0006,$0e17,$001e,$7cff,$fff4,$0000,$0000
	dc.w $8027,$ffec,$0028
	dc.w $0006,$0e11,$006c,$7cff,$fffa,$0000,$0000
	dc.w $8027,$ffec,$0020
	dc.w $0004,$0e10,$0020,$7cff,$fff8,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_085df0:
	dc.w $802a,$0074
	dc.w $8047,$0232,$ffff
	dc.w $8027,$ffec,$0030
	dc.w $0050,$0ea3,$006b,$78ff,$fff8,$0000,$0000
	dc.w $803c,$0000
	dc.w $8047,$0232,$0000
	dc.w $8027,$fff4,$0028
	dc.w $0006,$0e17,$001e,$7cff,$fff4,$0000,$0000
	dc.w $8027,$ffec,$0028
	dc.w $0006,$0e11,$006c,$7cff,$fffa,$0000,$0000
	dc.w $8027,$ffec,$0020
	dc.w $8002,$00e9
	dc.w $0004,$0e10,$0020,$7cff,$fff8,$0000,$0000
	dc.w $8001

;==========================
loc_085e5a:
	dc.w $0002,$0ecb,$7cff,$0008,$0010,$0a03
	dc.w $0002,$0ecd,$84ff,$0018,$0020,$0a03
	dc.w $0002,$0ecc,$7cff,$0018,$0020,$0a03
	dc.w $0002,$0ecd,$84ff,$0018,$0040,$0a00
	dc.w $0002,$0ed1,$7cff,$0018,$0050,$0a01
	dc.w $0002,$0ecb,$7cff,$fff8,$0060,$0a01
	dc.w $0002,$0ece,$74ff,$0000,$0050,$0a01
	dc.w $0002,$0ecc,$74ff,$ffe8,$0060,$0a01
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_085ebc:
	dc.w $8037
	dc.l loc_081a88
	dc.w $8038
	dc.l loc_085ee8

	dc.w $803a,$00ff
	dc.w $8039,$0014
	dc.w $803d,$8048,$0550,$0000
	dc.w $8043,$0016,$8045,$0002
	dc.w $803b,$0000,$f20c,$0000

loc_085ee8:
	dc.w $8010,$003b,$0002,$0019

	dc.w $8008
	dc.l $fffb0000,$00000000

	dc.w $8002,$18e6
	dc.w $8011,$001c,$0004,$0000,$0400
	dc.w $0004,$0f06,$0008,$80ff,$0000,$fffa,$0d00

	dc.w $8008
	dc.l $fffc0000,$00000000

	dc.w $0004,$0f01,$0008,$80ff,$0000,$fffa,$0d00
	dc.w $0004,$0f02,$0008,$80ff,$0000,$fffa,$0d00
	dc.w $0004,$0f03,$0008,$80ff,$0000,$fffa,$0d00
	dc.w $0004,$0f04,$0008,$80ff,$0000,$fffa,$0d00
	dc.w $0004,$0f05,$0008,$80ff,$0000,$fffa,$0d00
	dc.w $803c,$0000
	dc.w $8008,$fffc,$c000,$0000,$0000
	dc.w $0004,$0f06,$0008,$80ff,$0000,$fffa,$0d00
	dc.w $803a,$0000
	dc.w $8039,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_085f8c:
	dc.w $8037
	dc.l loc_081a88
	dc.w $8038
	dc.l loc_085fb8

	dc.w $803a,$00ff
	dc.w $8039,$0018
	dc.w $803d,$8048,$0550,$0000
	dc.w $8043,$0016
	dc.w $8045,$0002
	dc.w $803b,$0000,$f20c,$0000

loc_085fb8:
	dc.w $8010,$003b,$0002,$0019

	dc.w $8008
	dc.l $00050000,$00000000

	dc.w $8002,$18e6
	dc.w $8011,$001c,$0004,$0000,$fc00
	dc.w $0004,$0efb,$0007,$80ff,$0000,$fffc,$0d00

	dc.w $8008
	dc.l $00040000,$00000000

	dc.w $0003,$0efc,$0007,$80ff,$0000,$fffc,$0d00
	dc.w $0003,$0efd,$0007,$80ff,$0000,$fffc,$0d00
	dc.w $0003,$0ef8,$0007,$80ff,$0000,$fffc,$0d00
	dc.w $0003,$0ef9,$0007,$80ff,$0000,$fffc,$0d00
	dc.w $0003,$0efa,$0007,$80ff,$0000,$fffc,$0d00
	dc.w $0003,$0efb,$0007,$80ff,$0000,$fffc,$0d00
	dc.w $0002,$0efc,$0007,$80ff,$0000,$fffc,$0d00
	dc.w $803c,$0000

	dc.w $8008
	dc.l $0003c000,$00000000

	dc.w $0001,$0efc,$0007,$80ff,$0000,$fffc,$0d00
	dc.w $0003,$0efd,$0007,$80ff,$0000,$fffc,$0d00
	dc.w $803a,$0000
	dc.w $8039,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_086086:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0860be

	dc.w $803e,$1843,$0d00
	dc.w $803f,$0000,$0000,$0008
	dc.w $8040,$0000,$0e0a,$1000
	dc.w $8045,$0002
	dc.w $8041,$0401,$0810
	dc.w $8048,$0556,$00b4

	dc.w $8036
	dc.l loc_08260a

loc_0860be:
	dc.w $802c
	dc.w $0006,$0e9c,$007c,$8000
	dc.w $0004,$0e9d,$007d,$8000
	dc.w $8002,$188a
	dc.w $0004,$0e9e,$007e,$8000
	dc.w $8017,$00a0,$0008,$60f0
	dc.w $802a,$0074
	dc.w $8000,$0000
	dc.l loc_0860f4

	dc.w $802a,$0078

loc_0860f4:
	dc.w $000a,$0e9f,$007e,$8000
	dc.w $0004,$0e9e,$007e,$8000
	dc.w $0004,$0e9d,$007d,$8000
	dc.w $0004,$0e9c,$007c,$8000
	dc.w $0002,$0e1e,$007f,$80ff,$fffe,$0000,$0000
	dc.w $0002,$0f0d,$0001,$8000
	dc.w $8001

;end at 08612c
