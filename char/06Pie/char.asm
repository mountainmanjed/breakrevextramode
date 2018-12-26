;Pielle Start
loc_069e5c:
	move.w #$f0,($344,a4)
	move.w #$30,($346,a4)
	move.w #7,($348,a4)
	move.w #$c,($34a,a4)
	move.w #$cc,($34c,a4)
	move.w #$74,($34e,a4)
	move.w #$a4,($350,a4)
	rts

;--------------------------
;Pielle AI Start
loc_069e88:
	tst.b ($4d4,a4)
	beq.w loc_069eb2
	move.b ($35c,a4),d0
	andi.w #$fffc,d0
	bne.w loc_069eb2
	cmpi.b #6,($360,a4)
	bne.w loc_069eb2
	sf ($4d4,a4)
	move.l #loc_06a1da,($56,a4)

loc_069eb2:
	rts

;--------------------------
loc_069eb4:
	movea.l #loc_06b512,a0
	bsr.w loc_069f08
	bra.w loc_069fd2

loc_069ec2:
	bclr #7,($35c,a4)
	bne.w loc_069ed2
	jmp loc_02e5c6

loc_069ed2:
	movea.l #loc_06b3a4,a0
	bsr.w loc_069f08
	bra.w loc_069fd2

loc_069ee0:
	move.l (a7)+,($4da,a4)
	jmp (a0)

loc_069ee6:
	move.l ($4da,a4),d0
	beq.b loc_069ec2
	clr.l ($4da,a4)
	movea.l d0,a0
	clr.b d0
	jmp (a0)

loc_069ef6:
	move.l ($4da,a4),d0
	beq.b loc_069ec2
	clr.l ($4da,a4)
	movea.l d0,a0
	move.b #-1,d0
	jmp (a0)

loc_069f08:
	move.l (a7)+,($4de,a4)
	jmp (a0)

loc_069f0e:
	move.l ($4de,a4),d0
	beq.w loc_069fd2
	clr.l ($4de,a4)
	movea.l d0,a0
	jmp (a0)

loc_069f1e:
	st ($4d4,a4)
	cmpi.w #$a0,($378,a4)
	bgt.w loc_069f86
	cmpi.w #$3c,($378,a4)
	bgt.w loc_069f62
	cmpi.w #$1e,($378,a4)
	bgt.w loc_069f44
	bra.w loc_069fc6

loc_069f44:
	jsr RandomNumberGod
	lea loc_069f54(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_069f54:
	dc.w $0002

	dc.w $001e
	dc.l loc_069fb2

	dc.w $001e
	dc.l loc_069fc6

;--------------------------
loc_069f62:
	jsr RandomNumberGod
	lea loc_069f72(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_069f72:
	dc.w $0003

	dc.w $003c
	dc.l loc_069fbc

	dc.w $001e
	dc.l loc_069fc6

	dc.w $000a
	dc.l loc_069fb2

;--------------------------
loc_069f86:
	jsr RandomNumberGod
	lea loc_069f96(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_069f96
	dc.w $0002

	dc.w $005a
	dc.l loc_069fbc

	dc.w $0014
	dc.l loc_069fb2

;--------------------------
loc_069fa4:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_069fbc

loc_069fb2:
	movea.l #loc_06b3a4,a0
	bra.w loc_069fcc

loc_069fbc:
	movea.l #loc_06b452,a0
	bra.w loc_069fcc

loc_069fc6:
	movea.l #loc_06b512,a0

loc_069fcc:
	movea.l a0,a0
	bsr.w loc_069f08

loc_069fd2:
	clr.l ($4da,a4)
	clr.l ($4de,a4)
	clr.l ($4e2,a4)
	tst.b ($35d,a4)
	beq.w loc_069fee
	jsr loc_0226b4
	bra.b loc_069fd2

loc_069fee:
	st ($35d,a4)
	cmpi.b #6,($360,a4)
	beq.w loc_06a1da
	tst.b ($247,a4)
	beq.w loc_06a1cc
	cmpi.w #$a0,($378,a4)
	bgt.w loc_06a18a
	cmpi.w #$3c,($378,a4)
	bgt.w loc_06a112
	cmpi.w #$1e,($378,a4)
	bgt.w loc_06a094
	jsr RandomNumberGod
	lea loc_06a032(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06a032:
	dc.w $0010

	dc.w $000a
	dc.l loc_06b698

	dc.w $0005
	dc.l loc_06b512

	dc.w $000a
	dc.l loc_06b670

	dc.w $0032
	dc.l loc_06cbd8

	dc.w $0014
	dc.l loc_06c302

	dc.w $0014
	dc.l loc_06bf9c

	dc.w $0014
	dc.l loc_06c598

	dc.w $0014
	dc.l loc_06c4ee

	dc.w $0014
	dc.l loc_06c116

	dc.w $000f
	dc.l loc_06c22c

	dc.w $000f
	dc.l loc_06c92c

	dc.w $0014
	dc.l loc_06c49c

	dc.w $0005
	dc.l loc_06ca74

	dc.w $0005
	dc.l loc_06caf6

	dc.w $0005
	dc.l loc_06cb78

	dc.w $001e
	dc.l loc_06bcdc

;--------------------------
loc_06a094:
	jsr RandomNumberGod
	lea loc_06a0a4(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06a0a4:
	dc.w $0012

	dc.w $000a
	dc.l loc_06b698

	dc.w $0005
	dc.l loc_06b512

	dc.w $0005
	dc.l loc_06b670

	dc.w $0032
	dc.l loc_06cbd8

	dc.w $0014
	dc.l loc_06c302

	dc.w $0014
	dc.l loc_06c116

	dc.w $001e
	dc.l loc_06c49c

	dc.w $0014
	dc.l loc_06c22c

	dc.w $0014
	dc.l loc_06c4ee

	dc.w $0014
	dc.l loc_06bf9c

	dc.w $0019
	dc.l loc_06c598

	dc.w $000f
	dc.l loc_06c92c

	dc.w $0014
	dc.l loc_06c7fe

	dc.w $000f
	dc.l loc_06ca74

	dc.w $001e
	dc.l loc_06caf6

	dc.w $0014
	dc.l loc_06cb78

	dc.w $000a
	dc.l loc_06bdd4

	dc.w $000a
	dc.l loc_06bcdc

;--------------------------
loc_06a112:
	jsr RandomNumberGod
	lea loc_06a122(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06a122:
	dc.w $0011

	dc.w $001e
	dc.l loc_06b452

	dc.w $000a
	dc.l loc_06b64c

	dc.w $000a
	dc.l loc_06b512

	dc.w $000a
	dc.l loc_06b698

	dc.w $0014
	dc.l loc_06b592

	dc.w $0032
	dc.l loc_06cbd8

	dc.w $001e
	dc.l loc_06caf6

	dc.w $001e
	dc.l loc_06cb78

	dc.w $0014
	dc.l loc_06ca74

	dc.w $0014
	dc.l loc_06c302

	dc.w $0014
	dc.l loc_06c49c

	dc.w $0014
	dc.l loc_06c92c

	dc.w $001e
	dc.l loc_06c7fe

	dc.w $000a
	dc.l loc_06c726

	dc.w $000f
	dc.l loc_06c68e

	dc.w $0014
	dc.l loc_06cc66

	dc.w $000a
	dc.l loc_06bdd4

;--------------------------
loc_06a18a:
	jsr RandomNumberGod
	lea loc_06a19a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06a19a:
	dc.w $0008

	dc.w $001e
	dc.l loc_06b452

	dc.w $000a
	dc.l loc_06b64c

	dc.w $000a
	dc.l loc_06b592

	dc.w $001e
	dc.l loc_06c7fe

	dc.w $000a
	dc.l loc_06cb78

	dc.w $000a
	dc.l loc_06ca74

	dc.w $0014
	dc.l loc_06cc66

	dc.w $0032
	dc.l loc_06cbd8

;--------------------------
loc_06a1cc:
	movea.l #loc_06b786,a0
	bsr.w loc_069ee0
	bra.w loc_069fd2

loc_06a1da:
	clr.b ($2f6,a4)
	move.l #$80010,d0
	jsr loc_02e420
	movea.l #loc_06b512,a0
	bsr.w loc_069f08
	move.l #$100010,d0
	jsr loc_02e420
	jsr RandomNumberGod
	lea loc_06a210(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06a210:
	dc.w $0004

	dc.w $0050
	dc.l loc_06a22a

	dc.w $000a
	dc.l loc_06a254

	dc.w $000a
	dc.l loc_06a246

	dc.w $000a
	dc.l loc_06a238

;--------------------------
loc_06a22a:
	movea.l #loc_06b698,a0
	bsr.w loc_069f08
	bra.w loc_069fd2

loc_06a238:
	movea.l #loc_06c7fe,a0
	bsr.w loc_069ee0
	bra.w loc_069fd2

loc_06a246:
	movea.l #loc_06b670,a0
	bsr.w loc_069f08
	bra.w loc_069fd2

loc_06a254:
	movea.l #loc_06b592,a0
	bsr.w loc_069ee0
	bra.w loc_069fd2

loc_06a262:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_06a276(pc,d0.w),d0
	jmp loc_06a276(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06a276:
	dc.w loc_06a296-loc_06a276
	dc.w loc_06a296-loc_06a276
	dc.w loc_06a296-loc_06a276
	dc.w loc_06a296-loc_06a276

	dc.w loc_06a29a-loc_06a276
	dc.w loc_06a2ac-loc_06a276
	dc.w loc_06a2be-loc_06a276
	dc.w loc_06a2d0-loc_06a276

	dc.w loc_06a2e2-loc_06a276
	dc.w loc_06a2f4-loc_06a276
	dc.w loc_06a306-loc_06a276
	dc.w loc_06a318-loc_06a276

	dc.w loc_06a32a-loc_06a276
	dc.w loc_06a32a-loc_06a276
	dc.w loc_06a32a-loc_06a276
	dc.w loc_06a32a-loc_06a276

;--------------------------
loc_06a296:
	bra.w loc_06a32e

loc_06a29a:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_06a32e
	bra.w loc_06a33c

loc_06a2ac:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_06a32e
	bra.w loc_06a33c

loc_06a2be:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_06a32e
	bra.w loc_06a33c

loc_06a2d0:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_06a32e
	bra.w loc_06a33c

loc_06a2e2:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_06a32e
	bra.w loc_06a33c

loc_06a2f4:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06a32e
	bra.w loc_06a33c

loc_06a306:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_06a32e
	bra.w loc_06a33c

loc_06a318:
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_06a32e
	bra.w loc_06a33c

loc_06a32a:
	bra.w loc_06a33c

loc_06a32e:
	movea.l #loc_06b698,a0
	bsr.w loc_069f08
	bra.w loc_069fd2

loc_06a33c:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	scs ($4d3,a4)

loc_06a34a:
	tst.b ($365,a4)
	bne.w loc_06a6da
	clr.b ($2f6,a4)
	tst.b ($4d3,a4)
	bpl.w loc_06a384
	cmpi.b #3,($360,a4)
	beq.w loc_06a384
	cmpi.b #4,($360,a4)
	beq.w loc_06a384
	tst.b ($367,a4)
	beq.w loc_06a388
	cmpi.b #1,($360,a4)
	beq.w loc_06a388

loc_06a384:
	bra.w loc_06a3c6

loc_06a388:
	cmpi.w #$40,($340,a4)
	blt.w loc_06a3c6
	cmpi.w #$8c,($378,a4)
	bgt.w loc_06a3c6
	cmpi.w #$28,($378,a4)
	blt.w loc_06a3c6
	cmpi.w #$ff74,($37a,a4)
	bgt.w loc_06a3c6
	tst.b ($24a,a4)
	bne.w loc_06a3c6
	movea.l #loc_06b592,a0
	bsr.w loc_069f08
	bra.w loc_06a6d4

loc_06a3c6:
	cmpi.b #3,($376,a4)
	beq.w loc_06a412
	cmpi.b #3,($360,a4)
	beq.w loc_06a404
	cmpi.b #4,($360,a4)
	beq.w loc_06a404
	tst.b ($367,a4)
	beq.w loc_06a404
	cmpi.b #1,($360,a4)
	beq.w loc_06a412
	cmpi.b #2,($360,a4)
	beq.w loc_06a412
	bra.w loc_06a6be

loc_06a404:
	jsr RandomNumberGod
	cmpi.w #$fc00,d0
	bcs.w loc_06a6be

loc_06a412:
	btst #7,($35c,a4)
	bne.w loc_06a43c
	cmpi.w #$38,($36c,a4)
	bgt.w loc_06a43c
	cmpi.w #$ffc4,($36e,a4)
	blt.w loc_06a43c
	clr.b ($2f6,a4)
	bsr.w loc_06dd4c
	bne.w loc_06a6d4

loc_06a43c:
	btst #7,($35c,a4)
	bne.w loc_06a478
	cmpi.w #$50,($378,a4)
	bgt.w loc_06a478
	cmpi.w #$ffec,($37a,a4)
	blt.w loc_06a478
	move.b #2,($2f6,a4)
	bsr.w loc_06dece
	jsr loc_02e2d0
	bsr.w loc_06dece
	jsr loc_02e2d0
	bne.w loc_06a6d4

loc_06a478:
	btst #7,($35c,a4)
	bne.w loc_06a4e4
	cmpi.w #$50,($378,a4)
	bgt.w loc_06a4e4
	cmpi.w #$ff9c,($37a,a4)
	blt.w loc_06a4e4
	move.b #2,($2f6,a4)
	bsr.w loc_06ddc6
	bne.w loc_06a6d4
	jsr loc_02e26e
	beq.w loc_06a6d4
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_06a6d4
	cmpi.w #$40,($340,a4)
	blt.w loc_06a6d4
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06dc94
	jsr loc_02e308
	bra.w loc_06a6d4

loc_06a4e4:
	cmpi.w #$40,($340,a4)
	blt.w loc_06a5fc
	btst #7,($35c,a4)
	bne.w loc_06a5fc
	cmpi.w #$50,($378,a4)
	bgt.w loc_06a5fc
	cmpi.w #$ff7e,($37a,a4)
	blt.w loc_06a5fc
	sf ($3ce,a4)
	bsr.w loc_06db96
	bne.w loc_06a6d4
	cmpi.w #$60,($340,a4)
	blt.w loc_06a556
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_06a556
	btst #7,($35c,a4)
	bne.w loc_06a556
	cmpi.w #$64,($378,a4)
	bgt.w loc_06a556
	cmpi.w #$ffa6,($37a,a4)
	blt.w loc_06a556
	bsr.w loc_06db00
	bne.w loc_06a6d4

loc_06a556:
	cmpi.w #$60,($340,a4)
	blt.w loc_06a590
	btst #7,($35c,a4)
	bne.w loc_06a590
	cmpi.w #$64,($378,a4)
	bgt.w loc_06a590
	cmpi.w #$ff7e,($37a,a4)
	blt.w loc_06a590
	movea.l #loc_06b762,a0
	bsr.w loc_069f08
	bsr.w loc_06dd4c
	bne.w loc_06a6d4

loc_06a590:
	cmpi.w #$40,($340,a4)
	blt.w loc_06a5c6
	btst #7,($35c,a4)
	bne.w loc_06a5c6
	cmpi.w #$78,($378,a4)
	bgt.w loc_06a5c6
	cmpi.w #$ffba,($37a,a4)
	blt.w loc_06a5c6
	movea.l #loc_06caf6,a0
	bsr.w loc_069ee0
	bne.w loc_06a6d4

loc_06a5c6:
	cmpi.w #$40,($340,a4)
	blt.w loc_06a5fc
	btst #7,($35c,a4)
	bne.w loc_06a5fc
	cmpi.w #$78,($378,a4)
	bgt.w loc_06a5fc
	cmpi.w #$ff7e,($37a,a4)
	blt.w loc_06a5fc
	movea.l #loc_06ca74,a0
	bsr.w loc_069ee0
	bne.w loc_06a6d4

loc_06a5fc:
	btst #$7,($35c,a4)
	bne.w loc_06a628
	cmpi.w #$8c,($378,a4)
	bgt.w loc_06a628
	cmpi.w #$fff6,($37a,a4)
	blt.w loc_06a628
	move.b #2,($2f6,a4)
	bsr.w loc_06dd4c
	bne.w loc_06a6d4

loc_06a628:
	btst #7,($35c,a4)
	bne.w loc_06a652
	cmpi.w #$8c,($378,a4)
	bgt.w loc_06a652
	cmpi.w #$ffc4,($37a,a4)
	blt.w loc_06a652
	clr.b ($2f6,a4)
	bsr.w loc_06ddc6
	bne.w loc_06a6d4

loc_06a652:
	btst #7,($35c,a4)
	bne.w loc_06a67c
	cmpi.w #$8c,($378,a4)
	bgt.w loc_06a67c
	cmpi.w #$ff88,($37a,a4)
	blt.w loc_06a67c
	clr.b ($2f6,a4)
	bsr.w loc_06dd4c
	bne.w loc_06a6d4

loc_06a67c:
	cmpi.w #$40,($340,a4)
	blt.w loc_06a6be
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_06a6be
	btst #7,($35c,a4)
	beq.w loc_06a6be
	cmpi.w #$44,($36c,a4)
	bgt.w loc_06a6be
	cmpi.w #$ffe2,($37a,a4)
	blt.w loc_06a6be
	sf ($3ce,a4)
	bsr.w loc_06db96
	bne.w loc_06a6d4

loc_06a6be:
	jsr loc_02e456
	jsr loc_0226b4
	jsr loc_02e370
	bra.w loc_06a34a

loc_06a6d4:
	jsr loc_02e308

loc_06a6da:
	clr.b ($2f6,a4)
	bclr #2,($35c,a4)
	bra.w loc_069fd2

;--------------------------
loc_06a6e8:
	cmpi.w #$a0,($340,a4)
	bge.w loc_06a706
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($358,a4),d0
	bcs.w loc_06a706
	bra.w loc_06a7d2

loc_06a706:
	move.w #$11,($4d6,a4)

loc_06a70c:
	cmpi.b #1,($36a,a4)
	bne.w loc_06a720
	btst #0,($362,a4)
	bne.w loc_06a33c

loc_06a720:
	tst.b ($367,a4)
	beq.w loc_06a7c2
	cmpi.b #3,($36a,a4)
	beq.w loc_06a7b6
	cmpi.b #6,($36a,a4)
	beq.w loc_06a77a
	cmpi.b #5,($360,a4)
	beq.w loc_06a764
	cmpi.b #1,($36a,a4)
	bne.w loc_06a75a
	cmpi.w #$20,($374,a4)
	bgt.w loc_06a7b6

loc_06a75a:
	cmpi.b #1,($360,a4)
	beq.w loc_06a794

loc_06a764
	jsr loc_02e456
	jsr loc_0226b4
	subq.w #1,($4d6,a4)
	bge.b loc_06a70c
	bra.w loc_06a7c2

loc_06a77a:
	cmpi.b #4,($376,a4)
	beq.b loc_06a764
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_06a7d2
	bra.w loc_06b698

loc_06a794:
	cmpi.b #4,($36a,a4)
	beq.w loc_06a7b6
	cmpi.w #$80,($358,a4)
	blt.w loc_06a7c2
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_06a7c2

loc_06a7b6:
	btst #3,($24a,a4)
	bne.b loc_06a764
	bra.w loc_06a7e4

loc_06a7c2:
	btst #7,($35c,a4)
	bne.w loc_06a7e0
	jsr loc_02e456

loc_06a7d2:
	jsr loc_0226b4
	moveq #6,d0
	jsr loc_02e39c

loc_06a7e0:
	bra.w loc_069fd2

loc_06a7e4:
	tst.b ($247,a4)
	beq.w loc_06b786

loc_06a7ec:
	btst #1,($246,a4)
	bne.w loc_06a7fe
	jsr loc_0226b4
	bra.b loc_06a7ec

loc_06a7fe:
	btst #3,($24a,a4)
	bne.w loc_06adb4
	cmpi.b #5,($36a,a4)
	beq.w loc_06adb4
	cmpi.b #5,($360,a4)
	beq.w loc_06adb4
	tst.b ($365,a4)
	beq.w loc_06a33c
	cmpi.b #1,($360,a4)
	beq.w loc_06a85a
	cmpi.b #2,($360,a4)
	bne.w loc_06a850
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06ada6
	sf d3
	move.w ($378,a4),d2
	bra.w loc_06a866

loc_06a850:
	st d3
	move.w ($374,a4),d2
	bra.w loc_06a866

loc_06a85a:
	sf d3
	move.w ($374,a4),d2
	add.w ($378,a4),d2
	asr.w #1,d2

loc_06a866:
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_06a87a
	bra.w loc_06aa32

loc_06a87a:
	btst #7,($35c,a4)
	beq.w loc_06aa32
	cmpi.w #$1e,($36c,a4)
	bge.w loc_06a8be
	jsr RandomNumberGod
	lea loc_06a89e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06a89e:
	dc.w $0005

	dc.w $0032
	dc.l loc_06a976

	dc.w $000a
	dc.l loc_06aa16

	dc.w $000a
	dc.l loc_06a9ca

	dc.w $000a
	dc.l loc_06a9bc

	dc.w $000a
	dc.l loc_06a9d8

;--------------------------
loc_06a8be:
	cmpi.w #$3c,($36c,a4)
	bge.w loc_06a8f8
	jsr RandomNumberGod
	lea loc_06a8d8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06a8d8
	dc.w $0005

	dc.w $001e
	dc.l loc_06a976

	dc.w $0014
	dc.l loc_06aa16

	dc.w $0014
	dc.l loc_06a9bc

	dc.w $0014
	dc.l loc_06a9ca

	dc.w $000a
	dc.l loc_06a992

;--------------------------
loc_06a8f8:
	cmpi.w #$78,($36c,a4)
	bge.w loc_06a938
	jsr RandomNumberGod
	lea loc_06a912(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06a912:
	dc.w $0006

	dc.w $001e
	dc.l loc_06a992

	dc.w $001e
	dc.l loc_06a9a0

	dc.w $000a
	dc.l loc_06a984

	dc.w $000a
	dc.l loc_06a9fa

	dc.w $000a
	dc.l loc_06a968

	dc.w $000a
	dc.l loc_06a9ae

;--------------------------
loc_06a938:
	jsr RandomNumberGod
	lea loc_06a948(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06a948:
	dc.w $0005

	dc.w $001e
	dc.l loc_06a992

	dc.w $001e
	dc.l loc_06a9a0

	dc.w $000a
	dc.l loc_06a984

	dc.w $000a
	dc.l loc_06a9ae

	dc.w $0014
	dc.l loc_06a968

;--------------------------
loc_06a968:
	movea.l #loc_06c7fe,a0
	bsr.w loc_069ee0
	bra.w loc_069fd2

loc_06a976:
	movea.l #loc_06bcdc,a0
	bsr.w loc_069ee0
	bra.w loc_06ad8a

loc_06a984:
	movea.l #loc_06b64c,a0
	bsr.w loc_069f08
	bra.w loc_06ad8a

loc_06a992:
	movea.l #loc_06b512,a0
	bsr.w loc_069f08
	bra.w loc_06ad8a

loc_06a9a0:
	movea.l #loc_06b452,a0
	bsr.w loc_069f08
	bra.w loc_06ad8a

loc_06a9ae:
	movea.l #loc_06b592,a0
	bsr.w loc_069f08
	bra.w loc_069fd2

loc_06a9bc:
	movea.l #loc_06ca74,a0
	bsr.w loc_069ee0
	bra.w loc_06ad8a

loc_06a9ca:
	movea.l #loc_06caf6,a0
	bsr.w loc_069ee0
	bra.w loc_06ad8a

loc_06a9d8:
	cmpi.w #$40,($340,a4)
	blt.w loc_06ad8a
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06dc0c
	jsr loc_02e308
	bra.w loc_06ad8a

loc_06a9fa:
	cmpi.w #$60,($340,a4)
	blt.w loc_06ad8a
	bsr.w loc_06db00
	beq.w loc_06aa32
	jsr loc_02e308
	bra.w loc_06ad8a

loc_06aa16:
	cmpi.w #$60,($340,a4)
	blt.w loc_06ad8a
	bsr.w loc_06db2e
	beq.w loc_06aa32
	jsr loc_02e308
	bra.w loc_06ad8a

loc_06aa32:
	jsr RandomNumberGod
	andi.w #$1f,d0
	subi.w #$10,d0
	add.w d0,d2
	btst #0,($369,a4)
	bne.w loc_06aa6e
	btst #2,($369,a4)
	bne.w loc_06aae6
	btst #1,($369,a4)
	bne.w loc_06aaba
	btst #3,($369,a4)
	bne.w loc_06aae6
	bra.w loc_06adb4

loc_06aa6e:
	cmpi.w #$20,d2
	ble.w loc_06abb6
	cmpi.w #$24,d2
	ble.w loc_06ad26
	cmpi.w #$28,d2
	ble.w loc_06abc4
	cmpi.w #$2d,d2
	ble.w loc_06ab4e
	cmpi.w #$32,d2
	ble.w loc_06acf2
	cmpi.w #$38,d2
	ble.w loc_06ac3a
	cmpi.w #$40,d2
	ble.w loc_06ac2c
	cmpi.w #$48,d2
	ble.w loc_06ac06
	cmpi.w #$50,d2
	ble.w loc_06acae
	bra.w loc_06adb4

loc_06aaba:
	cmpi.w #$20,d2
	ble.w loc_06ac7e
	cmpi.w #$28,d2
	ble.w loc_06ab1a
	cmpi.w #$32,d2
	ble.w loc_06abe0
	cmpi.w #$3c,d2
	ble.w loc_06ac2c
	cmpi.w #$46,d2
	ble.w loc_06acae
	bra.w loc_06adb4

loc_06aae6:
	cmpi.w #$20,d2
	ble.w loc_06ab82
	cmpi.w #$28,d2
	ble.w loc_06abe0
	cmpi.w #$38,d2
	ble.w loc_06ac2c
	cmpi.w #$44,d2
	ble.w loc_06ac68
	cmpi.w #$46,d2
	ble.w loc_06ac06
	cmpi.w #$50,d2
	ble.w loc_06acae
	bra.w loc_06adb4

loc_06ab1a:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_06ad8a
	cmpi.w #$60,($340,a4)
	blt.w loc_06ad8a
	jsr loc_02c78a
	beq.w loc_06ac06
	bsr.w loc_06db62
	beq.w loc_06adb4
	jsr loc_02e308
	bra.w loc_06ad8a

loc_06ab4e:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_06ad8a
	cmpi.w #$60,($340,a4)
	blt.w loc_06ad8a
	jsr loc_02c78a
	beq.w loc_06ac06
	bsr.w loc_06db2e
	beq.w loc_06adb4
	jsr loc_02e308
	bra.w loc_06ad8a

loc_06ab82:
	cmpi.w #$60,($340,a4)
	blt.w loc_06ad8a
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_06ad8a
	jsr loc_02c78a
	beq.w loc_06ac06
	bsr.w loc_06db00
	beq.w loc_06adb4
	jsr loc_02e308
	bra.w loc_06ad8a

loc_06abb6:
	movea.l #loc_06b592,a0
	bsr.w loc_069f08
	bra.w loc_069fd2

loc_06abc4:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_06ad8a
	movea.l #loc_06b670,a0
	bsr.w loc_069f08
	bra.w loc_06ad8a

loc_06abe0:
	cmpi.w #$40,($340,a4)
	blt.w loc_06ad8a
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_06ad8a
	movea.l #loc_06caf6,a0
	bsr.w loc_069ee0
	bra.w loc_06ad8a

loc_06ac06:
	cmpi.w #$40,($340,a4)
	blt.w loc_06ad8a
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_06ad8a
	movea.l #loc_06ca74,a0
	bsr.w loc_069ee0
	bra.w loc_06ad8a

loc_06ac2c:
	movea.l #loc_06c49c,a0
	bsr.w loc_069ee0
	bra.w loc_06ad8a

loc_06ac3a:
	clr.b ($2f6,a4)
	bsr.w loc_06ddc6
	beq.w loc_06adb4
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_06ad8a
	bsr.w loc_06dd10
	jsr loc_02e308
	bra.w loc_06ad8a

loc_06ac68:
	clr.b ($2f6,a4)
	bsr.w loc_06dd4c
	beq.w loc_06adb4
	jsr loc_02e308
	bra.w loc_06ad8a

loc_06ac7e:
	move.b #2,($2f6,a4)
	bsr.w loc_06ddc6
	beq.w loc_06adb4
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_06ad8a
	movea.l #loc_06c49c,a0
	bsr.w loc_069ee0
	bra.w loc_06ad8a

loc_06acae:
	cmpi.w #$40,($340,a4)
	blt.w loc_06ad8a
	bsr.w loc_06dd2e
	beq.w loc_06adb4
	jsr loc_02e308
	bra.w loc_06ad8a

loc_06acca:
	move.b #2,($2f6,a4)
	bsr.w loc_06dece
	jsr loc_02e2d0
	bsr.w loc_06dece
	jsr loc_02e2d0
	bsr.w loc_06dece
	jsr loc_02e2d0
	bra.w loc_06ad8a

loc_06acf2:
	cmpi.w #$40,($340,a4)
	blt.w loc_06ad8a
	bsr.w loc_06dd10
	beq.w loc_06adb4
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_06ad8a
	movea.l #loc_06c49c,a0
	bsr.w loc_069ee0
	bra.w loc_06ad8a

loc_06ad26:
	bsr.w loc_06de54
	beq.w loc_06adb4
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_06ad8a
	move.b #2,($2f6,a4)
	bsr.w loc_06dd4c
	jsr loc_02e308
	bra.w loc_06ad8a

loc_06ad56:
	clr.b ($2f6,a4)
	bsr.w loc_06dece
	jsr loc_02e2d0
	bsr.w loc_06dece
	jsr loc_02e2d0
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_06ad8a
	bsr.w loc_06ddc6
	jsr loc_02e308
	bra.w loc_06ad8a

loc_06ad8a:
	jsr loc_0226b4
	btst #7,($35c,a4)
	bne.w loc_06ada2
	moveq #6,d0
	jsr loc_02e39c

loc_06ada2:
	bra.w loc_069ec2

loc_06ada6:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_06b698

loc_06adb4:
	jsr loc_02e456
	jsr loc_0226b4
	bclr #3,($35c,a4)
	bra.w loc_069ec2

loc_06adca:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_06adde(pc,d0.w),d0
	jmp loc_06adde(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06adde:
	dc.w loc_06adfe-loc_06adde
	dc.w loc_06adfe-loc_06adde
	dc.w loc_06ae04-loc_06adde
	dc.w loc_06ae18-loc_06adde

	dc.w loc_06ae2c-loc_06adde
	dc.w loc_06ae40-loc_06adde
	dc.w loc_06ae54-loc_06adde
	dc.w loc_06ae68-loc_06adde

	dc.w loc_06ae7c-loc_06adde
	dc.w loc_06ae7c-loc_06adde
	dc.w loc_06ae7c-loc_06adde
	dc.w loc_06ae7c-loc_06adde

	dc.w loc_06ae7c-loc_06adde
	dc.w loc_06ae7c-loc_06adde
	dc.w loc_06ae7c-loc_06adde
	dc.w loc_06ae7c-loc_06adde

;--------------------------
loc_06adfe:
	jmp loc_02e5b2

loc_06ae04:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06ae80
	jmp loc_02e5b2

loc_06ae18:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_06ae80
	jmp loc_02e5b2

loc_06ae2c:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_06ae80
	jmp loc_02e5b2

loc_06ae40:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_06ae80
	jmp loc_02e5b2

loc_06ae54:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_06ae80
	jmp loc_02e5b2

loc_06ae68:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_06ae80
	jmp loc_02e5b2

loc_06ae7c:
	bra.w loc_06ae80

loc_06ae80:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcc.b loc_06ae94
	move.b #1,($4d0,a4)
	bra.b loc_06aea4

loc_06ae94:
	cmpi.w #$c000,d0
	bcc.b loc_06aea0
	sf ($4d0,a4)
	bra.b loc_06aea4

loc_06aea0:
	st ($4d0,a4)

loc_06aea4:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	scs ($4d1,a4)

loc_06aeb2:
	tst.b ($367,a4)
	beq.w loc_06aec8
	cmpi.w #$24,($374,a4)
	bge.w loc_06aec8
	bra.w loc_06affc

loc_06aec8:
	tst.b ($363,a4)
	beq.w loc_06b04e
	cmpi.w #$ffc4,($370,a4)
	ble.w loc_06b04e
	cmpi.w #$34,($370,a4)
	ble.w loc_06affc
	tst.b ($4d1,a4)
	beq.w loc_06af78
	cmpi.w #$aa,($370,a4)
	bgt.w loc_06af78
	cmpi.w #$94,($370,a4)
	ble.w loc_06af78
	cmpi.b #$12,($364,a4)
	beq.w loc_06af78
	cmpi.w #$40,($340,a4)
	blt.w loc_06af78
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06af5c
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06dc94
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_06b04e
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06dc94
	jsr loc_02e308
	bra.w loc_06b04e

loc_06af5c:
	cmpi.w #$40,($340,a4)
	blt.w loc_06af78
	sf ($3ce,a4)
	bsr.w loc_06db96
	jsr loc_02e308
	bra.w loc_06b04e

loc_06af78:
	tst.b ($4d0,a4)
	beq.w loc_06afa8
	bgt.w loc_06af88
	bra.w loc_06affc

loc_06af88:
	cmpi.w #$40,($37c,a4)
	bgt.w loc_06affc
	tst.b ($24a,a4)
	bne.w loc_06affc
	movea.l #loc_06b71a,a0
	bsr.w loc_069f08
	bra.w loc_06b04e

loc_06afa8:
	cmpi.w #$32,($37c,a4)
	bgt.w loc_06affc
	cmpi.b #$12,($364,a4)
	beq.w loc_06affc
	tst.b ($24a,a4)
	bne.w loc_06affc
	move.b ($246,a4),d0
	andi.b #$c,d0
	beq.w loc_06afee
	cmpi.w #$68,($378,a4)
	ble.w loc_06afee
	cmpi.w #$68,($370,a4)
	ble.w loc_06afee
	movea.l #loc_06b670,a0
	bsr.w loc_069f08

loc_06afee:
	movea.l #loc_06b762,a0
	bsr.w loc_069f08
	bra.w loc_06b04e

;--------------------------
loc_06affc:
	cmpi.w #$20,($370,a4)
	bgt.w loc_06b03e
	cmpi.w #8,($370,a4)
	bgt.w loc_06b03e
	cmpi.w #$c0,($340,a4)
	blt.w loc_06b03e
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_06b03e
	cmpi.w #$a0,($378,a4)
	blt.w loc_06b03e
	bsr.w loc_06db2e
	beq.w loc_06b03e
	bra.w loc_06b04e

loc_06b03e
	jsr loc_02e456
	jsr loc_0226b4
	bra.w loc_06aeb2

loc_06b04e:
	clr.b ($2f6,a4)
	bra.w loc_069fd2

loc_06b056:
	clr.b ($2f6,a4)
	cmpi.w #$40,($340,a4)
	bge.w loc_06b068
	bra.w loc_069fd2

loc_06b068:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_06b09c
	jsr RandomNumberGod
	lea loc_06b082(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06b082:
	dc.w $0004

	dc.w $0032
	dc.l loc_06b15e

	dc.w $001e
	dc.l loc_06b1e6

	dc.w $000a
	dc.l loc_06b1ca

	dc.w $000a
	dc.l loc_06b1bc

;--------------------------
loc_06b09c:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_06b0d6
	jsr RandomNumberGod
	lea loc_06b0b6(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06b0b6:
	dc.w $0005

	dc.w $0032
	dc.l loc_06b15e

	dc.w $001e
	dc.l loc_06b1e6

	dc.w $000a
	dc.l loc_06b1ca

	dc.w $000a
	dc.l loc_06b1bc

	dc.w $000a
	dc.l loc_06b1d8

;--------------------------
loc_06b0d6:
	cmpi.w #$78,($378,a4)
	bgt.w loc_06b122
	jsr RandomNumberGod
	lea loc_06b0f0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06b0f0:
	dc.w $0008

	dc.w $0032
	dc.l loc_06b15e

	dc.w $000a
	dc.l loc_06b1e6

	dc.w $000a
	dc.l loc_06b184

	dc.w $000a
	dc.l loc_06b192

	dc.w $000a
	dc.l loc_06b1bc

	dc.w $000a
	dc.l loc_06b1d8

	dc.w $000a
	dc.l loc_06b1a0

	dc.w $000a
	dc.l loc_06b1ae

;--------------------------
loc_06b122:
	jsr RandomNumberGod
	lea loc_06b132(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06b132:
	dc.w $0007

	dc.w $0032
	dc.l loc_06b15e

	dc.w $000a
	dc.l loc_06b184

	dc.w $000a
	dc.l loc_06b192

	dc.w $000a
	dc.l loc_06b1d8

	dc.w $000a
	dc.l loc_06b1ae

	dc.w $000a
	dc.l loc_06b1a0

	dc.w $000a
	dc.l loc_06b176

;--------------------------
loc_06b15e:
	jsr loc_02c78a
	beq.w loc_06b1e6
	movea.l #loc_06cbd8,a0
	bsr.w loc_069ee0
	bra.w loc_069fd2

loc_06b176:
	bsr.w loc_06dcea
	jsr loc_02e308
	bra.w loc_069ec2

loc_06b184:
	movea.l #loc_06b452,a0
	bsr.w loc_069f08
	bra.w loc_069fd2

loc_06b192:
	movea.l #loc_06b512,a0
	bsr.w loc_069f08
	bra.w loc_069fd2

loc_06b1a0:
	movea.l #loc_06b64c,a0
	bsr.w loc_069f08
	bra.w loc_069fd2

loc_06b1ae:
	movea.l #loc_06cc66,a0
	bsr.w loc_069ee0
	bra.w loc_069fd2

loc_06b1bc:
	movea.l #loc_06ca74,a0
	bsr.w loc_069ee0
	bra.w loc_069fd2

loc_06b1ca:
	movea.l #loc_06caf6,a0
	bsr.w loc_069ee0
	bra.w loc_069fd2

loc_06b1d8:
	movea.l #loc_06bdd4,a0
	bsr.w loc_069ee0
	bra.w loc_069fd2

loc_06b1e6:
	movea.l #loc_06bcdc,a0
	bsr.w loc_069ee0
	bra.w loc_069fd2

;--------------------------
loc_06b1f4:
	cmpi.w #$60,($340,a4)
	blt.w loc_06b212
	cmpi.w #$64,($36c,a4)
	bge.w loc_06b212
	bsr.w loc_06db00
	jsr loc_02e308

loc_06b212:
	bra.w loc_069fd2

;--------------------------
loc_06b216:
	cmpi.w #$60,($340,a4)
	blt.w loc_06b22a
	bsr.w loc_06db2e
	jsr loc_02e308

loc_06b22a:
	bra.w loc_069fd2

;--------------------------
loc_06b22e:
	clr.b ($2f6,a4)
	cmpi.w #$24,($36c,a4)
	bge.w loc_06b242
	move.b #4,($2f6,a4)

loc_06b242:
	cmpi.w #$64,($36c,a4)
	ble.w loc_06b252
	move.b #8,($2f6,a4)

loc_06b252:
	clr.b ($2f6,a4)
	btst #5,($361,a4)
	beq.w loc_06b268
	jsr loc_0226b4
	bra.b loc_06b22e

loc_06b268:
	clr.b ($2f6,a4)
	moveq #8,d0
	jsr loc_02e39c
	cmpi.w #$40,($340,a4)
	bge.w loc_06b28c
	movea.l #loc_06b3a4,a0
	bsr.w loc_069f08
	bra.w loc_069fd2

loc_06b28c:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_06b2a8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06b2a8:
	dc.w $0003

	dc.w $0028
	dc.l loc_06b2ca

	dc.w $001e
	dc.l loc_06b2bc

	dc.w $0014
	dc.l loc_06b2d8

;--------------------------
loc_06b2bc:
	movea.l #loc_06bdd4,a0
	bsr.w loc_069ee0
	bra.w loc_069fd2

loc_06b2ca:
	movea.l #loc_06bcdc,a0
	bsr.w loc_069ee0
	bra.w loc_069fd2

loc_06b2d8:
	cmpi.w #$60,($340,a4)
	blt.w loc_06b2ec
	bsr.w loc_06db62
	jsr loc_02e308

loc_06b2ec:
	bra.w loc_069fd2

;--------------------------
loc_06b2f0:
	andi.b #2,($2f6,a4)

loc_06b2f6:
	btst #5,($249,a4)
	beq.w loc_06b32c
	cmpi.w #$80,($340,a4)
	blt.w loc_06b31c
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_06b31c
	st ($2fb,a4)

loc_06b31c:
	moveq #8,d0
	jsr loc_02e39c
	jsr loc_0226b4
	bra.b loc_06b2f6

loc_06b32c:
	jsr loc_02e370
	move.l #$80004,d0
	jsr loc_02e39c
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_06b352
	bra.w loc_069ec2

loc_06b352:
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$32,($378,a4)
	bgt.w loc_06b3a0

loc_06b368:
	tst.b ($249,a4)
	beq.w loc_06b3a0
	jsr RandomNumberGod
	lea loc_06b384(pc),a0
	jsr loc_02decc
	bra.w loc_06b398

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06b384:
	dc.w $0003

	dc.w $005a
	dc.l loc_06bcdc

	dc.w $000a
	dc.l loc_06cbd8

	dc.w $000a
	dc.l loc_06ca74

;--------------------------
loc_06b398:
	jsr loc_0226b4
	bra.b loc_06b368

loc_06b3a0:
	bra.w loc_06a6e8

;--------------------------
loc_06b3a4:
	cmpi.w #$80,($340,a4)
	bge.w loc_06b3d4
	andi.b #2,($2f6,a4)
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$44,d2
	jsr loc_02e0f4
	bra.w loc_069f0e

loc_06b3d4:
	jsr loc_02e496
	jsr loc_02e550
	bra.w loc_069f0e
	jsr loc_02e370
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.b loc_06b3a4
	cmpi.w #$a0,($358,a4)
	blt.w loc_06b41c
	jsr RandomNumberGod
	cmpi.w #$3000,d0
	bcs.w loc_06b512
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_06b452

loc_06b41c:
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
	bra.w loc_069f0e
	move.l #$60006,d0
	bra.w loc_06b470

;--------------------------
loc_06b452:
	cmpi.w #$20,($340,a4)
	bge.w loc_06b46a
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_06b3a4

loc_06b46a:
	move.l #$100020,d0

loc_06b470:
	cmpi.w #$10,($bc,a4)
	bgt.w loc_06b4ca
	cmpi.w #$ff,($340,a4)
	bge.w loc_06b4ca
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$6e,d2
	jsr loc_02e0f4
	cmpi.w #$20,($340,a4)
	bge.w loc_06b4c2
	clr.b ($2f6,a4)
	move.w #$18,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$44,d2
	swap d2
	jsr loc_02e0f4

loc_06b4c2:
	clr.b ($2f6,a4)
	bra.w loc_069f0e

loc_06b4ca:
	movem.l d0,-(a7)
	bsr.w loc_06df8e
	movem.l (a7)+,d0
	bne.w loc_06b4fa
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$6e,($378,a4)
	ble.b loc_06b4c2
	clr.b ($2f6,a4)
	jsr loc_0226b4
	bra.b loc_06b4ca

loc_06b4fa:
	moveq #0,d2
	move.w #$6e,d2
	jsr loc_02e0f4
	bra.b loc_06b4c2
	move.l #$60006,d0
	bra.w loc_06b53a

loc_06b512:
	cmpi.w #$20,($340,a4)
	bge.w loc_06b52a
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_06b3a4

loc_06b52a:
	cmpi.w #$80,($340,a4)
	bge.w loc_06b670
	move.l #$100010,d0

loc_06b53a:
	move.b #$4,($2f6,a4)
	move.w #$c8,d2
	swap d2
	move.w #$5a,d2
	jsr loc_02e0f4
	cmpi.w #$5a,($378,a4)
	ble.w loc_06b58a
	bmi.w loc_06b3a4
	cmpi.w #$20,($340,a4)
	bge.w loc_06b58a
	clr.b ($2f6,a4)
	move.w #$18,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$44,d2
	swap d2
	jsr loc_02e0f4

loc_06b58a:
	clr.b ($2f6,a4)
	bra.w loc_069f0e

;--------------------------
loc_06b592:
	cmpi.w #$20,($340,a4)
	blt.w loc_069f0e
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_06b5b8
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_06b628
	bra.w loc_06b61e

loc_06b5b8:
	cmpi.w #$50,($36c,a4)
	bgt.w loc_06b5de
	move.l #$80008,d0
	move.l #$780000,d2
	move.b #4,($2f6,a4)
	jsr loc_02e0f4
	bra.w loc_06b5fc

loc_06b5de:
	cmpi.w #$78,($36c,a4)
	blt.w loc_06b5fc
	move.l #$80008,d0
	moveq #$50,d2
	move.b #8,($2f6,a4)
	jsr loc_02e0f4

loc_06b5fc:
	cmpi.w #$28,($378,a4)
	bgt.w loc_06b628
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_06b61e
	move.b #5,($2f6,a4)
	bra.w loc_06b62e

loc_06b61e:
	move.b #1,($2f6,a4)
	bra.w loc_06b62e

loc_06b628:
	move.b #9,($2f6,a4)

loc_06b62e:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_06b62e
	clr.b ($2f6,a4)
	moveq #2,d0
	jsr loc_02e39c
	bra.w loc_069f0e

;--------------------------
loc_06b64c:
	cmpi.w #$40,($340,a4)
	blt.w loc_06b452
	clr.b ($2f6,a4)
	bsr.w loc_06df8e
	jsr loc_0226b4
	moveq #8,d0
	jsr loc_02e39c
	bra.w loc_069f0e

loc_06b670:
	cmpi.w #$40,($340,a4)
	blt.w loc_06b512
	clr.b ($2f6,a4)
	bsr.w loc_06df70
	jsr loc_0226b4
	moveq #8,d0
	jsr loc_02e39c
	bra.w loc_069f0e

;-------------------------
loc_06b694:;wtf
	move.l (a7)+,($4de,a4)

;--------------------------
loc_06b698:
	cmpi.w #$20,($340,a4)
	blt.w loc_06b712
	cmpi.w #$1e,($36c,a4)
	blt.w loc_06b6c4
	cmpi.w #$5a,($36c,a4)
	blt.w loc_06b6dc
	cmpi.w #$c8,($36c,a4)
	bgt.w loc_06b6fa
	bra.w loc_06b3a4

loc_06b6c4:
	move.b ($246,a4),d0
	andi.b #$c,d0
	bne.w loc_06b6d2
	bra.b loc_06b670

loc_06b6d2:
	move.b #9,($2f6,a4)
	beq.w loc_06b62e

loc_06b6dc:
	move.l #$100020,d0
	move.b #4,($2f6,a4)
	move.w #$c8,d2
	swap d2
	clr.w d2
	jsr loc_02e0f4
	bra.w loc_06b712

loc_06b6fa:
	move.l #$100020,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$5a,d2
	jsr loc_02e0f4

loc_06b712
	clr.b ($2f6,a4)
	bra.w loc_069f0e

;--------------------------
loc_06b71a:
	move.b #9,($2f6,a4)

loc_06b720:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_06b720
	clr.b ($2f6,a4)
	moveq #2,d0
	jsr loc_02e420
	bra.w loc_069f0e

;--------------------------
loc_06b73e:
	move.b #5,($2f6,a4)

loc_06b744:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_06b744
	clr.b ($2f6,a4)
	moveq #2,d0
	jsr loc_02e420
	bra.w loc_069f0e

;--------------------------
loc_06b762:
	move.b #1,($2f6,a4)

loc_06b768:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_06b768
	clr.b ($2f6,a4)
	moveq #2,d0
	jsr loc_02e420
	bra.w loc_069f0e

;--------------------------
loc_06b786:
	btst #0,($24a,a4)
	bne.w loc_069ee6
	tst.b ($247,a4)
	bne.w loc_069ee6
	cmpi.w #$30,($340,a4)
	blt.w loc_069ee6

loc_06b7a2:
	clr.b ($2f6,a4)
	btst #1,($246,a4)
	bne.w loc_06bcce
	move.b ($361,a4),d0
	andi.b #$f8,d0
	beq.w loc_06b7c6
	cmpi.b #5,($360,a4)
	beq.w loc_06bcc4

loc_06b7c6:
	tst.b ($365,a4)
	bne.w loc_06baa2
	cmpi.w #$60,($358,a4)
	blt.w loc_06baa2
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_06ba80
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_06b938
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06b82a
	cmpi.w #$14,($378,a4)
	bgt.w loc_06b82a
	cmpi.w #$30,($37a,a4)
	bgt.w loc_06b82a
	cmpi.w #$10,($37a,a4)
	blt.w loc_06b82a
	move.b #2,($2f6,a4)
	bsr.w loc_06dece
	bra.w loc_06bcce

loc_06b82a:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06b85e
	cmpi.w #$1e,($378,a4)
	bgt.w loc_06b85e
	cmpi.w #$30,($37a,a4)
	bgt.w loc_06b85e
	cmpi.w #$fff0,($37a,a4)
	blt.w loc_06b85e
	bsr.w loc_06de54
	bra.w loc_06bcce

loc_06b85e:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06b892
	cmpi.w #$3c,($378,a4)
	bgt.w loc_06b892
	cmpi.w #$10,($37a,a4)
	bgt.w loc_06b892
	cmpi.w #$ffc0,($37a,a4)
	blt.w loc_06b892
	bsr.w loc_06ddc6
	bra.w loc_06bcce

loc_06b892:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06b8c6
	cmpi.w #$3c,($378,a4)
	bgt.w loc_06b8c6
	cmpi.w #$40,($37a,a4)
	bgt.w loc_06b8c6
	cmpi.w #$10,($37a,a4)
	blt.w loc_06b8c6
	bsr.w loc_06dd4c
	bra.w loc_06bcce

loc_06b8c6:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06b8fa
	cmpi.w #$4c,($378,a4)
	bgt.w loc_06b8fa
	cmpi.w #$30,($37a,a4)
	bgt.w loc_06b8fa
	cmpi.w #$ffd0,($37a,a4)
	blt.w loc_06b8fa
	bsr.w loc_06dece
	bra.w loc_06bcce

loc_06b8fa:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06b934
	cmpi.w #$5a,($378,a4)
	bgt.w loc_06b934
	cmpi.w #$40,($37a,a4)
	bgt.w loc_06b934
	cmpi.w #-$40,($37a,a4)
	blt.w loc_06b934
	move.b #1,($2f6,a4)
	bsr.w loc_06ddc6
	bra.w loc_06bcce

loc_06b934:
	bra.w loc_06bcc4

loc_06b938:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06b972
	cmpi.w #$14,($378,a4)
	bgt.w loc_06b972
	cmpi.w #$30,($37a,a4)
	bgt.w loc_06b972
	cmpi.w #$10,($37a,a4)
	blt.w loc_06b972
	move.b #2,($2f6,a4)
	bsr.w loc_06dece
	bra.w loc_06bcce

loc_06b972:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06b9a6
	cmpi.w #$1e,($378,a4)
	bgt.w loc_06b9a6
	cmpi.w #$30,($37a,a4)
	bgt.w loc_06b9a6
	cmpi.w #-$10,($37a,a4)
	blt.w loc_06b9a6
	bsr.w loc_06de54
	bra.w loc_06bcce

loc_06b9a6:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06b9da
	cmpi.w #$2e,($378,a4)
	bgt.w loc_06b9da
	cmpi.w #$10,($37a,a4)
	bgt.w loc_06b9da
	cmpi.w #-$40,($37a,a4)
	blt.w loc_06b9da
	bsr.w loc_06ddc6
	bra.w loc_06bcce

loc_06b9da:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06ba0e
	cmpi.w #$3e,($378,a4)
	bgt.w loc_06ba0e
	cmpi.w #$40,($37a,a4)
	bgt.w loc_06ba0e
	cmpi.w #$10,($37a,a4)
	blt.w loc_06ba0e
	bsr.w loc_06dd4c
	bra.w loc_06bcce

loc_06ba0e:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06ba42
	cmpi.w #$4e,($378,a4)
	bgt.w loc_06ba42
	cmpi.w #$40,($37a,a4)
	bgt.w loc_06ba42
	cmpi.w #$10,($37a,a4)
	blt.w loc_06ba42
	bsr.w loc_06dece
	bra.w loc_06bcce

loc_06ba42:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06ba7c
	cmpi.w #$5a,($378,a4)
	bgt.w loc_06ba7c
	cmpi.w #$40,($37a,a4)
	bgt.w loc_06ba7c
	cmpi.w #-$40,($37a,a4)
	blt.w loc_06ba7c
	move.b #1,($2f6,a4)
	bsr.w loc_06ddc6
	bra.w loc_06bcce

loc_06ba7c
	bra.w loc_06bcc4

loc_06ba80:
	cmpi.w #$20,($378,a4)
	bge.w loc_06bcc4
	cmpi.w #$20,($37a,a4)
	bgt.w loc_06bcc4
	cmpi.w #-$20,($37a,a4)
	blt.w loc_06bcc4
	bra.w loc_06bcce

loc_06baa2:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_06bad4
	tst.w ($21a,a4)
	blt.w loc_06bcc4
	cmpi.l #$5b6000,($22a,a4)
	bgt.w loc_06bcc4
	cmpi.l #$5b6000,($22a,a4)
	ble.w loc_06bb0e
	bra.w loc_06bcc4

loc_06bad4:
	cmpi.w #$40,($340,a4)
	blt.w loc_06bb0a
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_06bb0a
	cmpi.w #$96,($378,a4)
	bgt.w loc_06bcc4
	cmpi.l #$4e8680,($22a,a4)
	blt.w loc_06bb0a
	bsr.w loc_06dbe2
	bne.w loc_06bcce

loc_06bb0a:
	bra.w loc_06bcc4

loc_06bb0e:
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_06bcb2
	cmpi.w #$14,($378,a4)
	bgt.w loc_06bb2c
	bsr.w loc_06ddc6
	bra.w loc_06bcce

loc_06bb2c:
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_06bbe2
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06bb5e
	cmpi.w #$14,($378,a4)
	bgt.w loc_06bb5e
	move.b #2,($2f6,a4)
	bsr.w loc_06dece
	bra.w loc_06bcce

loc_06bb5e:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06bb7e
	cmpi.w #$24,($378,a4)
	bgt.w loc_06bb7e
	bsr.w loc_06dece
	bra.w loc_06bcce

loc_06bb7e:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06bb9e
	cmpi.w #$24,($378,a4)
	bgt.w loc_06bb9e
	bsr.w loc_06de54
	bra.w loc_06bcce

loc_06bb9e:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06bbbe
	cmpi.w #$24,($378,a4)
	bgt.w loc_06bbbe
	bsr.w loc_06ddc6
	bra.w loc_06bcce

loc_06bbbe:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06bbde
	cmpi.w #$44,($378,a4)
	bgt.w loc_06bbde
	bsr.w loc_06dd4c
	bra.w loc_06bcce

loc_06bbde:
	bra.w loc_06bcc4

loc_06bbe2:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06bc08
	cmpi.w #$24,($378,a4)
	bgt.w loc_06bc08
	move.b #2,($2f6,a4)
	bsr.w loc_06dece
	bra.w loc_06bcce

loc_06bc08:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06bc28
	cmpi.w #$24,($378,a4)
	bgt.w loc_06bc28
	bsr.w loc_06de54
	bra.w loc_06bcce

loc_06bc28:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06bc48
	cmpi.w #$34,($378,a4)
	bgt.w loc_06bc48
	bsr.w loc_06ddc6
	bra.w loc_06bcce

loc_06bc48:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06bc68
	cmpi.w #$44,($378,a4)
	bgt.w loc_06bc68
	bsr.w loc_06dd4c
	bra.w loc_06bcce

loc_06bc68:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06bc88
	cmpi.w #$64,($378,a4)
	bgt.w loc_06bc88
	bsr.w loc_06dece
	bra.w loc_06bcce

loc_06bc88:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06bcae
	cmpi.w #$64,($378,a4)
	bgt.w loc_06bcae
	move.b #1,($2f6,a4)
	bsr.w loc_06ddc6
	bra.w loc_06bcce

loc_06bcae:
	bra.w loc_06bcc4

;--------------------------
loc_06bcb2:
	btst #3,($248,a4)
	beq.w loc_06bcc4
	bsr.w loc_06de54
	bra.w loc_06bcce

loc_06bcc4:
	jsr loc_0226b4
	bra.w loc_06b7a2

loc_06bcce:
	clr.b ($2f6,a4)
	jsr loc_02e308
	bra.w loc_069ee6

;--------------------------
loc_06bcdc:
	cmpi.w #$40,($340,a4)
	blt.w loc_069ee6
	move.w #7,d0

loc_06bcea:
	move.w d0,($4d6,a4)
	btst #6,($24a,a4)
	bne.w loc_069ee6
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_069ee6
	tst.b ($247,a4)
	beq.w loc_06bd8e
	cmpi.w #-$50,($37a,a4)
	bgt.w loc_06bd5c
	cmpi.w #$80,($340,a4)
	blt.w loc_06bd5c
	cmpi.w #$24,($378,a4)
	ble.w loc_06bd4e
	cmpi.w #$64,($378,a4)
	ble.w loc_06bd40
	clr.b ($2f6,a4)
	bsr.w loc_06df8e
	bra.w loc_06bd96

loc_06bd40:
	movea.l #loc_06b71a,a0
	bsr.w loc_069f08
	bra.w loc_06bd96

loc_06bd4e:
	movea.l #loc_06b762,a0
	bsr.w loc_069f08
	bra.w loc_06bd96

loc_06bd5c:
	cmpi.w #$20,($36c,a4)
	ble.w loc_06bd82
	move.l #$100010,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$20,d2
	jsr loc_02e0f4
	bra.w loc_06bd96

loc_06bd82:
	bsr.w loc_06dab0
	bne.w loc_06bdb8
	bra.w loc_06bd96

loc_06bd8e:
	bsr.w loc_06dad2
	bne.w loc_06bdb8

loc_06bd96:
	move.l #$20002,d0
	jsr loc_02e420
	move.w ($4d6,a4),d0
	dbra d0,loc_06bcea
	jsr loc_02e308
	clr.b ($2f6,a4)
	bra.w loc_069ee6

loc_06bdb8:
	clr.b ($2f6,a4)
	jsr loc_02e308
	movea.l #loc_06b512,a0
	bsr.w loc_069f08
	clr.b ($2f6,a4)
	bra.w loc_069ee6

;--------------------------
loc_06bdd4:
	move.l ($4da,a4),($4e6,a4)
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_069ee6
	btst #3,($24a,a4)
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	cmpi.w #$60,($340,a4)
	blt.w loc_069ee6
	clr.b ($2f6,a4)

loc_06be08:
	cmpi.w #$5a,($36c,a4)
	ble.w loc_06be32
	jsr loc_0226b4
	move.l #$100010,d0
	moveq #0,d2
	move.w #$54,d2
	move.b #8,($2f6,a4)
	jsr loc_02e0f4
	bra.b loc_06be08

loc_06be32:
	movea.l #loc_06b592,a0
	bsr.w loc_069f08

loc_06be3c:
	jsr loc_0226b4
	movea.l #loc_06b786,a0
	bsr.w loc_069ee0
	move.l ($4e6,a4),($4da,a4)
	btst #1,($246,a4)
	beq.b loc_06be3c
	jsr RandomNumberGod
	lea loc_06be6a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06be6a:
	dc.w $0003

	dc.w $0014
	dc.l loc_06be7e

	dc.w $0014
	dc.l loc_06bea0

	dc.w $0014
	dc.l loc_06bebc

;--------------------------
loc_06be7e:
	move.b #2,($2f6,a4)
	bsr.w loc_06ddc6
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_06bee2
	blt.w loc_06bf06
	bra.w loc_06bf8e

loc_06bea0:
	bsr.w loc_06ddc6
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_06bee2
	blt.w loc_06bf2c
	bra.w loc_06bf8e

loc_06bebc:
	bsr.w loc_06dece
	jsr loc_02e308
	bsr.w loc_06dece
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_06bee2
	blt.w loc_06bf2c
	bra.w loc_06bf8e

loc_06bee2:
	jsr RandomNumberGod
	lea loc_06bef2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06bef2:
	dc.w $0003

	dc.w $003c
	dc.l loc_06bf48

	dc.w $001e
	dc.l loc_06bf2c

	dc.w $0014
	dc.l loc_06bf06

;--------------------------
loc_06bf06:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06bf6e
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06db96
	jsr loc_02e308
	bra.w loc_06bf94

loc_06bf2c:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06bf6e
	movea.l #loc_06caf6,a0
	bsr.w loc_069ee0
	bra.w loc_06bf94

loc_06bf48:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_06bf6e
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06dc94
	jsr loc_02e308
	bra.w loc_06bf94

loc_06bf6e:
	jsr loc_02c78a
	beq.b loc_06bf2c
	cmpi.w #$60,($340,a4)
	blt.w loc_06bf94
	bsr.w loc_06db2e
	jsr loc_02e308
	bra.w loc_06bf94

loc_06bf8e:
	jsr loc_02e308

loc_06bf94:
	clr.b ($2f6,a4)
	bra.w loc_069ef6

;--------------------------
loc_06bf9c:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_069ee6
	btst #3,($24a,a4)
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	cmpi.w #$30,($340,a4)
	blt.w loc_069ee6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	tst.b ($365,a4)
	beq.w loc_06bfe4
	move.b #2,($2f6,a4)

loc_06bfe4:
	bsr.w loc_06dece
	beq.w loc_069ee6
	jsr loc_02e26e
	beq.w loc_06c0e4

loc_06bff6
	cmpi.w #$32,($36c,a4)
	bgt.w loc_06c02a
	clr.b ($2f6,a4)
	tst.b ($365,a4)
	beq.w loc_06c012
	move.b #2,($2f6,a4)

loc_06c012: 
	bsr.w loc_06dece
	jsr loc_02e2d0
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_06c10e
	bra.b loc_06bff6

loc_06c02a:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_06c046(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06c046:
	dc.w $0005

	dc.w $000a
	dc.l loc_06c066

	dc.w $000a
	dc.l loc_06c0cc

	dc.w $000a
	dc.l loc_06c0b4

	dc.w $000a
	dc.l loc_06c092

	dc.w $000a
	dc.l loc_06c07e

;--------------------------
loc_06c066:
	cmpi.w #$40,($340,a4)
	blt.w loc_06c10e
	bsr.w loc_06dd2e
	jsr loc_02e308
	bra.w loc_06c10e

loc_06c07e:
	move.b #2,($2f6,a4)
	bsr.w loc_06dd4c
	jsr loc_02e308
	bra.w loc_06c10e

loc_06c092:
	cmpi.w #$40,($340,a4)
	blt.w loc_06c10e
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06dc0c
	jsr loc_02e308
	bra.w loc_06c10e

loc_06c0b4:
	cmpi.w #$40,($340,a4)
	blt.w loc_06c10e
	movea.l #loc_06ca74,a0
	bsr.w loc_069ee0
	bra.w loc_06c10e

loc_06c0cc:
	cmpi.w #$40,($340,a4)
	blt.w loc_06c10e
	movea.l #loc_06caf6,a0
	bsr.w loc_069ee0
	bra.w loc_06c10e

;--------------------------
loc_06c0e4:
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_06c0f0
	move.w d0,($4d6,a4)
	bsr.w loc_06dece
	jsr loc_02e2d0
	tst.b ($271,a4)
	bne.w loc_06bff6
	move.w ($4d6,a4),d0
	dbra d0,loc_06c0f0

loc_06c10e:
	clr.b ($2f6,a4)
	bra.w loc_069ef6

;--------------------------
loc_06c116:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	cmpi.w #$64,($378,a4)
	bgt.w loc_069ee6
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_069ee6
	cmpi.w #$30,($340,a4)
	blt.w loc_069ee6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	move.b #2,($2f6,a4)
	bsr.w loc_06dece
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	clr.b ($2f6,a4)
	bsr.w loc_06dece
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	bne.w loc_06c1b8
	jsr RandomNumberGod
	lea loc_06c1aa(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06c1aa:
	dc.w $0002

	dc.w $0032
	dc.l loc_06c206

	dc.w $000a
	dc.l loc_06c1ee

;--------------------------
loc_06c1b8:
	jsr RandomNumberGod
	lea loc_06c1c8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06c1c8:
	dc.w $0002

	dc.w $001e
	dc.l loc_06c1d6

	dc.w $001e
	dc.l loc_06c21a

;--------------------------
loc_06c1d6:
	cmpi.w #$40,($340,a4)
	blt.w loc_06c21a
	bsr.w loc_06dd2e
	jsr loc_02e308
	bra.w loc_06c224

loc_06c1ee:
	cmpi.w #$40,($340,a4)
	blt.w loc_06c206
	bsr.w loc_06dd10
	jsr loc_02e308
	bra.w loc_06c224

loc_06c206:
	move.b #2,($2f6,a4)
	bsr.w loc_06dd4c
	jsr loc_02e308
	bra.w loc_06c224

loc_06c21a:
	bsr.w loc_06ddc6
	jsr loc_02e308

loc_06c224:
	clr.b ($2f6,a4)
	bra.w loc_069ef6

;--------------------------
loc_06c22c:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_069ee6
	cmpi.w #$30,($340,a4)
	blt.w loc_069ee6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_06de54
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_06de54
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	bne.w loc_06c2b0
	move.b #2,($2f6,a4)
	bsr.w loc_06dd4c
	jsr loc_02e308
	bra.w loc_06c2fa

loc_06c2b0:
	jsr RandomNumberGod
	lea loc_06c2c0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06c2c0:
	dc.w $0002

	dc.w $001e
	dc.l loc_06c2e6

	dc.w $001e
	dc.l loc_06c2ce

;--------------------------
loc_06c2ce:
	cmpi.w #$60,($340,a4)
	blt.w loc_06c2fa
	movea.l #loc_06caf6,a0
	bsr.w loc_069ee0
	bra.w loc_06c2fa

loc_06c2e6:
	cmpi.w #$40,($340,a4)
	blt.w loc_06c2fa
	bsr.w loc_06dd10
	jsr loc_02e308

loc_06c2fa:
	clr.b ($2f6,a4)
	bra.w loc_069ef6

;--------------------------
loc_06c302:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	cmpi.w #$64,($378,a4)
	bgt.w loc_069ee6
	cmpi.w #$30,($340,a4)
	blt.w loc_069ee6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_06ddc6
	beq.w loc_069ee6
	cmpi.w #7,($2fe,a4)
	beq.w loc_06c37c
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_06c494
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_06dd2e
	jsr loc_02e308
	bra.w loc_06c494

loc_06c37c:
	jsr loc_02e26e
	jsr loc_02e26e;wat
	bgt.w loc_06c454
	blt.w loc_06c394
	bra.w loc_06c48e

loc_06c394:
	cmpi.w #$60,($340,a4)
	blt.w loc_06c494
	jsr RandomNumberGod
	lea loc_06c3ae(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06c3ae:
	dc.w $0005

	dc.w $0014
	dc.l loc_06c3ce

	dc.w $0014
	dc.l loc_06c416

	dc.w $0014
	dc.l loc_06c42e

	dc.w $0014
	dc.l loc_06c3f0

	dc.w $0014
	dc.l loc_06c3fe

;--------------------------
loc_06c3ce:
	jsr loc_02c78a
	beq.w loc_06c42e
	cmpi.w #$c0,($340,a4)
	blt.w loc_06c42e
	movea.l #loc_06cbd8,a0
	bsr.w loc_069ee0
	bra.w loc_06c494

loc_06c3f0:
	bsr.w loc_06dd2e
	jsr loc_02e308
	bra.w loc_06c494

loc_06c3fe:
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06dc0c
	jsr loc_02e308
	bra.w loc_06c494

loc_06c416:
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06db96
	jsr loc_02e308
	bra.w loc_06c494

loc_06c42e:
	movea.l #loc_06caf6,a0
	bsr.w loc_069ee0
	bra.w loc_06c494

loc_06c43c:
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06dc94
	jsr loc_02e308
	bra.w loc_06c494

loc_06c454:
	cmpi.w #$60,($340,a4)
	blt.w loc_06c48e
	jsr RandomNumberGod
	lea loc_06c46e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06c46e:
	dc.w $0005

	dc.w $0050
	dc.l loc_06c43c

	dc.w $001e
	dc.l loc_06c42e

	dc.w $0014
	dc.l loc_06c3fe

	dc.w $000a
	dc.l loc_06c416

	dc.w $000a
	dc.l loc_06c3ce

;--------------------------
loc_06c48e:
	jsr loc_02e308

loc_06c494:
	clr.b ($2f6,a4)
	bra.w loc_069ef6

loc_06c49c:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	btst #3,($24a,a4)
	bne.w loc_069ee6
	cmpi.w #$30,($340,a4)
	blt.w loc_069ee6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	move.b #2,($2f6,a4)
	bsr.w loc_06dd4c
	jsr loc_02e308
	clr.b ($2f6,a4)
	bra.w loc_069ef6

;--------------------------
loc_06c4ee:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	btst #3,($24a,a4)
	bne.w loc_069ee6
	cmpi.w #$30,($340,a4)
	blt.w loc_069ee6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$28,($36c,a4)
	bgt.w loc_06c54c
	bsr.w loc_06de54
	jsr loc_02e308
	move.b #2,($2f6,a4)
	bsr.w loc_06de54
	jsr loc_02e308

loc_06c54c:
	jsr RandomNumberGod
	lea loc_06c55c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06c55c:
	dc.w $0002

	dc.w $001e
	dc.l loc_06c56a

	dc.w $001e
	dc.l loc_06c57e

;--------------------------
loc_06c56a:
	move.b #2,($2f6,a4)
	bsr.w loc_06dd4c
	jsr loc_02e308
	bra.w loc_06c590

loc_06c57e:
	cmpi.w #$40,($340,a4)
	blt.b loc_06c56a
	bsr.w loc_06dd10
	jsr loc_02e308

loc_06c590:
	clr.b ($2f6,a4)
	bra.w loc_069ef6

;--------------------------
loc_06c598:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	btst #3,($24a,a4)
	bne.w loc_069ee6
	cmpi.w #$30,($340,a4)
	blt.w loc_069ee6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_06b670,a0
	bsr.w loc_069f08
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_06c5f8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06c5f8:
	dc.w $0004

	dc.w $000a
	dc.l loc_06c612

	dc.w $000a
	dc.l loc_06c634

	dc.w $000a
	dc.l loc_06c656

	dc.w $000a
	dc.l loc_06c66e

;--------------------------
loc_06c612:
	cmpi.w #$40,($340,a4)
	blt.w loc_06c686
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06db96
	jsr loc_02e308
	bra.w loc_06c686

loc_06c634:
	cmpi.w #$40,($340,a4)
	blt.w loc_06c686
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06dc0c
	jsr loc_02e308
	bra.w loc_06c686

loc_06c656:
	cmpi.w #$40,($340,a4)
	blt.w loc_06c686
	bsr.w loc_06dd10
	jsr loc_02e308
	bra.w loc_06c686

loc_06c66e:
	cmpi.w #$40,($340,a4)
	blt.w loc_06c686
	bsr.w loc_06dd2e
	jsr loc_02e308
	bra.w loc_06c686

loc_06c686:
	clr.b ($2f6,a4)
	bra.w loc_069ef6

;--------------------------
loc_06c68e:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	btst #3,($24a,a4)
	bne.w loc_069ee6
	cmpi.w #$30,($340,a4)
	blt.w loc_069ee6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_06dece
	jsr loc_02e308
	bsr.w loc_06dece
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$50,($378,a4)
	blt.w loc_06c6f6
	bra.w loc_06c70a

loc_06c6f6:
	move.b #2,($2f6,a4)
	bsr.w loc_06ddc6
	jsr loc_02e308
	bra.w loc_06c71e

loc_06c70a:
	cmpi.w #$40,($340,a4)
	blt.w loc_06c71e
	bsr.w loc_06dd2e
	jsr loc_02e308

loc_06c71e:
	clr.b ($2f6,a4)
	bra.w loc_069ef6

;--------------------------
loc_06c726:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	btst #3,($24a,a4)
	bne.w loc_069ee6
	cmpi.w #$8c,($378,a4)
	bgt.w loc_069ee6
	cmpi.w #$30,($340,a4)
	blt.w loc_069ee6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_06b64c,a0
	bsr.w loc_069f08
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_06c790(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06c790:
	dc.w $0004

	dc.w $0050
	dc.l loc_06c7da

	dc.w $001e
	dc.l loc_06c7b8

	dc.w $000a
	dc.l loc_06c7e8

	dc.w $000a
	dc.l loc_06c7aa

;--------------------------
loc_06c7aa:
	movea.l #loc_06b592,a0
	bsr.w loc_069f08
	bra.w loc_069fd2

loc_06c7b8:
	cmpi.w #$40,($340,a4)
	blt.w loc_06c7f6
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06db96
	jsr loc_02e308
	bra.w loc_06c7f6

loc_06c7da:
	movea.l #loc_06bcdc,a0
	bsr.w loc_069ee0
	bra.w loc_06c7f6

loc_06c7e8:
	movea.l #loc_06c49c,a0
	bsr.w loc_069ee0
	bra.w loc_06c7f6

loc_06c7f6:
	clr.b ($2f6,a4)
	bra.w loc_069ef6

;--------------------------
loc_06c7fe:
	cmpi.w #$40,($340,a4)
	blt.w loc_069ee6
	cmpi.w #$a0,($36c,a4)
	bgt.w loc_06c876
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_06c82e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06c82e:
	dc.w $0003

	dc.w $0046
	dc.l loc_06c842

	dc.w $0014
	dc.l loc_06c850

	dc.w $000a
	dc.l loc_06c85e


;--------------------------
loc_06c842:
	movea.l #loc_06b512,a0
	bsr.w loc_069f08
	bra.w loc_06c876

loc_06c850:
	bsr.w loc_06df70
	jsr loc_02e308
	bra.w loc_06c876

loc_06c85e:
	movea.l #loc_06b73e,a0
	bsr.w loc_069f08

loc_06c868:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_06c868

loc_06c876:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	spl ($3ce,a4)
	bsr.w loc_06dc94
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_06c924
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	spl ($3ce,a4)
	bsr.w loc_06dc94
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_06c8e0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06c8e0:
	dc.w $0003

	dc.w $001e
	dc.l loc_06c91a

	dc.w $000a
	dc.l loc_06c8f4

	dc.w $000a
	dc.l loc_06c902

;--------------------------
loc_06c8f4:
	movea.l #loc_06b592,a0
	bsr.w loc_069f08
	bra.w loc_069fd2

loc_06c902:
	movea.l #loc_06b64c,a0
	bsr.w loc_069f08
	movea.l #loc_06b592,a0
	bsr.w loc_069f08
	bra.w loc_069fd2

loc_06c91a:
	movea.l #loc_06b452,a0
	bsr.w loc_069f08

loc_06c924:
	clr.b ($2f6,a4)
	bra.w loc_069ef6

;--------------------------
loc_06c92c:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	cmpi.w #$64,($378,a4)
	bgt.w loc_069ee6
	cmpi.w #$30,($340,a4)
	blt.w loc_069ee6
	clr.b ($2f6,a4)
	bsr.w loc_06dd4c
	beq.w loc_069ee6
	cmpi.w #$a,($2fe,a4)
	beq.w loc_06c99a
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_06ca6c
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_06dd4c
	jsr loc_02e308
	bra.w loc_06ca6c

loc_06c99a:
	jsr loc_02e26e
	bgt.w loc_06c9ac
	blt.w loc_06c9ac
	bra.w loc_06ca66

loc_06c9ac:
	cmpi.w #$60,($340,a4)
	blt.w loc_06ca66
	btst #1,($362,a4)
	bne.w loc_06ca4e
	jsr RandomNumberGod
	lea loc_06c9d0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06c9d0
	dc.w $0005

	dc.w $001e
	dc.l loc_06ca20

	dc.w $001e
	dc.l loc_06ca40

	dc.w $001e
	dc.l loc_06c9f0

	dc.w $001e
	dc.l loc_06ca08

	dc.w $000a
	dc.l loc_06ca2e

;--------------------------
loc_06c9f0:
	cmpi.w #$c0,($340,a4)
	blt.w loc_06ca66
	movea.l #loc_06cbd8,a0
	bsr.w loc_069ee0
	bra.w loc_06ca6c

loc_06ca08:
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06dc0c
	jsr loc_02e308
	bra.w loc_06ca6c

loc_06ca20:
	bsr.w loc_06dd2e
	jsr loc_02e308
	bra.w loc_06ca6c

loc_06ca2e:
	sf ($3ce,a4)
	bsr.w loc_06db96
	jsr loc_02e308
	bra.w loc_06ca6c

loc_06ca40:
	movea.l #loc_06caf6,a0
	bsr.w loc_069ee0
	bra.w loc_06ca6c

loc_06ca4e:
	cmpi.w #$40,($340,a4)
	blt.w loc_06ca66
	bsr.w loc_06dd10
	jsr loc_02e308
	bra.w loc_06ca6c

loc_06ca66:
	jsr loc_02e308

loc_06ca6c:
	clr.b ($2f6,a4)
	bra.w loc_069ef6

;--------------------------
loc_06ca74:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	btst #3,($24a,a4)
	bne.w loc_069ee6
	cmpi.w #$6e,($378,a4)
	bgt.w loc_069ee6
	cmpi.w #$40,($340,a4)
	blt.w loc_069ee6
	clr.b ($2f6,a4)
	st ($3ce,a4)
	tst.b ($365,a4)
	beq.w loc_06cabc
	sf ($3ce,a4)

loc_06cabc:
	bsr.w loc_06db96
	jsr loc_02e308
	bra.w loc_06caee
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_06caee
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_06b670,a0
	bsr.w loc_069f08

loc_06caee:
	clr.b ($2f6,a4)
	bra.w loc_069ee6

;--------------------------
loc_06caf6:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	btst #3,($24a,a4)
	bne.w loc_069ee6
	cmpi.w #$40,($340,a4)
	blt.w loc_06cb70
	clr.b ($2f6,a4)
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06dc58
	jsr loc_02e26e
	beq.w loc_06cb70
	move.l #$10002,d0
	jsr loc_02e420
	bset #4,($2f7,a4)
	jsr loc_02e26e
	beq.w loc_06cb70
	move.l #$10002,d0
	jsr loc_02e420
	bset #4,($2f7,a4)
	jsr loc_02e308

loc_06cb70:
	clr.b ($2f6,a4)
	bra.w loc_069ee6

;--------------------------
loc_06cb78:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	btst #3,($24a,a4)
	bne.w loc_069ee6
	cmpi.w #$40,($340,a4)
	blt.w loc_069ee6
	clr.b ($2f6,a4)
	sf ($3ce,a4)
	cmpi.w #$64,($378,a4)
	blt.w loc_06cbb8
	st ($3ce,a4)

loc_06cbb8:
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06dc0c
	jsr loc_02e308
	bra.w loc_06cbd0

loc_06cbd0:
	clr.b ($2f6,a4)
	bra.w loc_069ee6

;--------------------------
loc_06cbd8:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	btst #3,($24a,a4)
	bne.w loc_069ee6
	jsr loc_02c78a
	beq.w loc_069ee6
	cmpi.w #$60,($340,a4)
	blt.w loc_069ee6
	clr.b ($2f6,a4)
	jsr RandomNumberGod
	lea loc_06cc20(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06cc20:
	dc.w $0003

	dc.w $001e
	dc.l loc_06cc42

	dc.w $001e
	dc.l loc_06cc34

	dc.w $001e
	dc.l loc_06cc50

;--------------------------
loc_06cc34:
	bsr.w loc_06db00
	jsr loc_02e308
	bra.w loc_06cc5e

loc_06cc42:
	bsr.w loc_06db2e
	jsr loc_02e308
	bra.w loc_06cc5e

loc_06cc50:
	bsr.w loc_06db62
	jsr loc_02e308
	bra.w loc_06cc5e

loc_06cc5e:
	clr.b ($2f6,a4)
	bra.w loc_069ee6

;--------------------------
loc_06cc66:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_069ee6
	btst #1,($246,a4)
	beq.w loc_069ee6
	btst #3,($24a,a4)
	bne.w loc_069ee6
	cmpi.w #$70,($340,a4)
	blt.w loc_069ee6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_06ccb0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06ccb0:
	dc.w $000a

	dc.w $000a
	dc.l loc_06cdea

	dc.w $000a
	dc.l loc_06cee2

	dc.w $000a
	dc.l loc_06ce8e

	dc.w $000a
	dc.l loc_06ce5c

	dc.w $000a
	dc.l loc_06ce1e

	dc.w $000a
	dc.l loc_06cd50

	dc.w $000a
	dc.l loc_06cda6

	dc.w $000a
	dc.l loc_06cd7e

	dc.w $000a
	dc.l loc_06cd38

	dc.w $000a
	dc.l loc_06ccee

;--------------------------
loc_06ccee:
	cmpi.w #$60,($340,a4)
	blt.w loc_06cff6
	movea.l #loc_06b512,a0
	bsr.w loc_069f08
	jsr loc_02e496
	jsr loc_02e550
	move.l #$200030,d0
	move.b #2,($2f6,a4)
	moveq #0,d2
	move.w #$54,d2
	jsr loc_02e0f4
	bsr.w loc_06db62
	beq.w loc_06cd38
	jsr loc_02e308
	bra.w loc_06cff6

loc_06cd38:
	cmpi.w #$b4,($36c,a4)
	blt.w loc_06cff6
	bsr.w loc_06dcea
	jsr loc_02e308
	bra.w loc_06cff6

loc_06cd50:
	bsr.w loc_06dd4c
	jsr loc_02e308
	jsr RandomNumberGod
	lea loc_06cd6a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06cd6a:
	dc.w $0003

	dc.w $001e
	dc.l loc_06cfd8

	dc.w $001e
	dc.l loc_06cfe2

	dc.w $001e
	dc.l loc_06cf8a

;--------------------------
loc_06cd7e:
	movea.l #loc_06b73e,a0
	bsr.w loc_069f08
	jsr RandomNumberGod
	lea loc_06cd98(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06cd98:
	dc.w $0002

	dc.w $001e
	dc.l loc_06cf50

	dc.w $001e
	dc.l loc_06cfd8

;--------------------------
loc_06cda6:
	cmpi.w #$32,($36c,a4)
	bgt.w loc_06cff6
	movea.l #loc_06b670,a0
	bsr.w loc_069f08
	jsr RandomNumberGod
	lea loc_06cdca(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06cdca:
	dc.w $0005

	dc.w $0014
	dc.l  loc_06cf2a

	dc.w $0014
	dc.l  loc_06cf50

	dc.w $0014
	dc.l  loc_06cf38

	dc.w $0014
	dc.l  loc_06cf8a

	dc.w $0014
	dc.l  loc_06cfa2

;-------------------------
loc_06cdea:
	cmpi.w #$40,($340,a4)
	blt.w loc_06cff6
	cmpi.w #$8c,($378,a4)
	bgt.w loc_06cff6
	sf ($3ce,a4)
	bsr.w loc_06db96
	jsr loc_02e308
	sf ($3ce,a4)
	bsr.w loc_06db96
	jsr loc_02e308
	bra.w loc_06cff6

;--------------------------
loc_06ce1e:
	cmpi.w #$78,($378,a4)
	bgt.w loc_06cff6
	move.b #2,($2f6,a4)
	bsr.w loc_06ddc6
	jsr loc_02e308
	jsr RandomNumberGod
	lea loc_06ce48(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06ce48:
	dc.w $0003

	dc.w $001e
	dc.l loc_06cf50

	dc.w $001e
	dc.l loc_06cfba

	dc.w $000a
	dc.l loc_06cfd8

;--------------------------
loc_06ce5c:
	cmpi.w #$82,($378,a4)
	bgt.w loc_06cff6
	move.b #2,($2f6,a4)
	bsr.w loc_06dd4c
	jsr loc_02e308
	bsr.w loc_06dd4c
	jsr loc_02e308
	bsr.w loc_06dd4c
	jsr loc_02e308
	bra.w loc_06cff6

loc_06ce8e:
	cmpi.w #$8c,($378,a4)
	bgt.w loc_06cff6
	move.b #2,($2f6,a4)
	bsr.w loc_06dece
	jsr loc_02e308
	bsr.w loc_06dece
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_06cece(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06cece
	dc.w $0003

	dc.w $001e
	dc.l loc_06cfba

	dc.w $001e
	dc.l loc_06cf50

	dc.w $000a
	dc.l loc_06cfd8

;--------------------------
loc_06cee2:
	cmpi.w #$aa,($378,a4)
	bgt.w loc_06cff6
	bsr.w loc_06dece
	jsr loc_02e308
	bsr.w loc_06dece
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_06cf1c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06cf1c:
	dc.w $0002

	dc.w $0028
	dc.l loc_06cfba

	dc.w $0014
	dc.l loc_06cf50

;--------------------------
loc_06cf2a:
	movea.l #loc_06b592,a0
	bsr.w loc_069f08
	bra.w loc_069fd2

loc_06cf38:
	cmpi.w #$60,($340,a4)
	blt.w loc_06cff6
	movea.l #loc_06cb78,a0
	bsr.w loc_069ee0
	bra.w loc_06cff6

loc_06cf50:
	cmpi.w #$60,($340,a4)
	blt.w loc_06cff6
	jsr RandomNumberGod
	smi ($3ce,a4)
	bsr.w loc_06dc0c
	jsr loc_02e308
	bra.w loc_06cff6

loc_06cf72:
	cmpi.w #$60,($340,a4)
	blt.w loc_06cff6
	movea.l #loc_06caf6,a0
	bsr.w loc_069ee0
	bra.w loc_06cff6

loc_06cf8a:
	cmpi.w #$60,($340,a4)
	blt.w loc_06cff6
	bsr.w loc_06dd10
	jsr loc_02e308
	bra.w loc_06cff6

loc_06cfa2:
	cmpi.w #$60,($340,a4)
	blt.w loc_06cff6
	bsr.w loc_06dd2e
	jsr loc_02e308
	bra.w loc_06cff6

loc_06cfba:
	cmpi.w #$5a,($378,a4)
	bgt.w loc_06cff6
	move.b #2,($2f6,a4)
	bsr.w loc_06ddc6
	jsr loc_02e308
	bra.w loc_06cff6

loc_06cfd8:
	cmpi.w #$82,($378,a4)
	bgt.w loc_06cff6

loc_06cfe2:
	move.b #2,($2f6,a4)
	bsr.w loc_06dd4c
	jsr loc_02e308
	bra.w loc_06cff6

loc_06cff6:
	clr.b ($2f6,a4)
	bra.w loc_069ef6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Palette Start
;Color 0
loc_06cffe:
	dc.l loc_06d222,loc_06d2c2,loc_06d1c2,loc_06d1a2
	dc.l loc_06d362,loc_06d382,loc_06d3a2,loc_06d3c2
	dc.l loc_06d3e2,loc_06d402,loc_06d1e2,loc_06d202
	dc.l loc_06d422,loc_06d4a2,loc_06d522,loc_06d542
	dc.l loc_06d602,loc_06d5e2,loc_06d562,loc_06d642
	dc.l $00000000

;Color 1
loc_06d052:
	dc.l loc_06d242,loc_06d2e2,loc_06d1c2,loc_06d1a2
	dc.l loc_06d362,loc_06d382,loc_06d3a2,loc_06d3c2
	dc.l loc_06d3e2,loc_06d402,loc_06d1e2,loc_06d202
	dc.l loc_06d442,loc_06d4c2,loc_06d522,loc_06d542
	dc.l loc_06d602,loc_06d5e2,loc_06d582,loc_06d642
	dc.l $00000000

;Color 2
loc_06d0a6:
	dc.l loc_06d262,loc_06d302,loc_06d1c2,loc_06d1a2
	dc.l loc_06d362,loc_06d382,loc_06d3a2,loc_06d3c2
	dc.l loc_06d3e2,loc_06d402,loc_06d1e2,loc_06d202
	dc.l loc_06d462,loc_06d4e2,loc_06d522,loc_06d542
	dc.l loc_06d602,loc_06d5e2,loc_06d5a2,loc_06d642
	dc.l $00000000


;Color 3
loc_06d0fa:
	dc.l loc_06d282,loc_06d322,loc_06d1c2,loc_06d1a2
	dc.l loc_06d362,loc_06d382,loc_06d3a2,loc_06d3c2
	dc.l loc_06d3e2,loc_06d402,loc_06d1e2,loc_06d202
	dc.l loc_06d482,loc_06d502,loc_06d522,loc_06d542
	dc.l loc_06d602,loc_06d5e2,loc_06d5c2,loc_06d642
	dc.l $00000000

;Color 4
loc_06d14e:
	dc.l loc_06d2a2,loc_06d342,loc_06d1c2,loc_06d1a2
	dc.l loc_06d362,loc_06d382,loc_06d3a2,loc_06d3c2
	dc.l loc_06d3e2,loc_06d402,loc_06d1e2,loc_06d202
	dc.l loc_06d442,loc_06d4c2,loc_06d522,loc_06d542
	dc.l loc_06d602,loc_06d5e2,loc_06d582,loc_06d642
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Palette Data
loc_06d1a2
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

loc_06d1c2:
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

loc_06d1e2
	dc.w $7111,$700a,$601c,$700f,$112f,$713f,$324f,$526f
	dc.w $337f,$539f,$73af,$34bf,$74df,$75ff,$7aff,$7fff

loc_06d202:
	dc.w $7888,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_06d222:
	dc.w $0286,$38df,$3841,$7b64,$4e96,$7fb8,$4feb,$4234
	dc.w $0557,$2779,$6ddf,$7fff,$7fa2,$6fe7,$006e,$34af

loc_06d242:
	dc.w $0286,$6f86,$3841,$7b64,$7e85,$6fb8,$4feb,$4243
	dc.w $4174,$0496,$3bed,$7fff,$7f92,$6fd7,$0a00,$4f43

loc_06d262:
	dc.w $0286,$3afc,$4942,$4c74,$6e96,$7fc9,$1feb,$3424
	dc.w $182a,$794d,$7fcf,$7fff,$5e92,$7fd4,$2074,$15c7

loc_06d282:
	dc.w $0286,$6fb6,$4942,$4c74,$6e96,$7fc9,$1feb,$3422
	dc.w $0a11,$6c45,$6fbb,$7fff,$7fa2,$6fe7,$3a30,$4f70

loc_06d2a2:
	dc.w $0286,$7d9e,$7942,$4c64,$3f85,$5fb8,$7fda,$4125
	dc.w $224b,$127d,$2acf,$3fff,$6fb2,$6ff6,$7929,$1c6e

loc_06d2c2:
	dc.w $0286,$269c,$2400,$2721,$1a52,$4a85,$1cb8,$4011
	dc.w $7113,$5345,$299b,$1bcc,$4c50,$1cb2,$0019,$126c

loc_06d2e2:
	dc.w $0286,$6c73,$4410,$4721,$5a52,$0b85,$7ca8,$7000
	dc.w $4030,$4164,$37a9,$7bcb,$4c50,$0cb3,$4500,$4b00

loc_06d302:
	dc.w $0286,$78ca,$7500,$0831,$3a51,$1c95,$1cb8,$7000
	dc.w $1406,$272b,$3c8c,$5cbc,$4c50,$0cb3,$0030,$1283

loc_06d322:
	dc.w $0286,$2b83,$7500,$0831,$3a51,$1c95,$1cb8,$7000
	dc.w $3400,$5721,$2b76,$1ccb,$4c50,$0cb3,$4500,$4b00

loc_06d342:
	dc.w $1aaa,$4b8c,$1500,$6820,$0c52,$6c85,$4cb8,$4011
	dc.w $7006,$3129,$168a,$1bbc,$3b50,$6cb3,$5403,$562a

loc_06d362:
	dc.w $0aaa,$7c00,$5f20,$5f50,$5f80,$4fd1,$7fea,$7b00
	dc.w $7f00,$5f50,$7f93,$7fd7,$5f50,$4fd1,$5f50,$5f80

loc_06d382:
	dc.w $0777,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_06d3a2:
	dc.w $0aaa,$7fff,$7ccf,$799f,$766f,$733f,$700f,$7fff
	dc.w $1ccf,$188f,$744f,$700f,$188f,$700f,$188f,$700f

loc_06d3c2:
	dc.w $0bbb,$700f,$733f,$766f,$799f,$7ccf,$7fff,$700f
	dc.w $744f,$188f,$1ccf,$7fff,$700f,$188f,$700f,$188f

loc_06d3e2:
	dc.w $736b,$750a,$672d,$394f,$796f,$3b8f,$5ccf,$491c
	dc.w $6a3d,$2c6e,$0d9f,$0ebd,$3b39,$5c5b,$1e6d,$7f7f

loc_06d402:
	dc.w $7888,$3053,$2274,$1494,$45b5,$77c5,$69e6,$06b3
	dc.w $08c4,$49d5,$7be6,$7df7,$71a6,$23b8,$04da,$55eb

loc_06d422:
	dc.w $0222,$4374,$5374,$4375,$5375,$4376,$5376,$4377
	dc.w $5377,$337f,$739f,$34bf,$35df,$75ff,$7aff,$7fff

loc_06d442:
	dc.w $0222,$636c,$736c,$636d,$736d,$636e,$736e,$636f
	dc.w $736f,$5f0a,$5f3b,$4f6d,$4f9e,$5fcf,$7fdf,$7fff

loc_06d462:
	dc.w $0222,$636c,$736c,$636d,$736d,$636e,$736e,$636f
	dc.w $736f,$5f80,$4fa1,$6fc2,$7fe2,$4ff7,$4ffb,$7fff

loc_06d482:
	dc.w $0111,$637c,$737c,$637d,$737d,$637e,$737e,$637f
	dc.w $737f,$43d4,$76d4,$49e5,$4cf6,$7ff6,$6ffb,$7fff

loc_06d4a2:
	dc.w $7888,$0111,$2c24,$3e66,$5f9b,$5fef,$5261,$0483
	dc.w $08d7,$100f,$100f,$100f,$100f,$100f,$100f,$100f

loc_06d4c2:
	dc.w $5461,$0111,$321c,$158f,$57df,$39ff,$7420,$6933
	dc.w $0c90,$100f,$100f,$100f,$100f,$100f,$100f,$100f

loc_06d4e2:
	dc.w $364b,$0111,$6b33,$6f70,$6fa0,$4ff3,$4151,$7372
	dc.w $08c7,$100f,$100f,$100f,$100f,$100f,$100f,$100f

loc_06d502:
	dc.w $3653,$0111,$0908,$2c1b,$7f7f,$7fbf,$5253,$3365
	dc.w $18ba,$100f,$100f,$100f,$100f,$100f,$100f,$100f

loc_06d522:
	dc.w $779b,$700a,$601c,$700f,$112f,$713f,$324f,$526f
	dc.w $337f,$428f,$13af,$34bf,$74df,$75ff,$7aff,$7fff

loc_06d542:
	dc.w $7111,$6f70,$4f90,$6fa0,$6fc0,$4fe0,$6fe0,$4ff0
	dc.w $6ff0,$6ff2,$7ff4,$7ff6,$6ff9,$6ffb,$7ffd,$7fff

loc_06d562:
	dc.w $7783,$0f70,$6f80,$6f90,$6fb0,$4fd0,$4fe0,$4ff2
	dc.w $7ff4,$6ff9,$7ffb,$7fff,$4f00,$41c8,$3afc,$7dff

loc_06d582:
	dc.w $778b,$7f00,$7f31,$5f72,$5fa3,$7fa3,$5fc3,$5fd3
	dc.w $5fe3,$7fe6,$4ffa,$7fff,$4b00,$6f90,$7ff4,$6ffe

loc_06d5a2:
	dc.w $5793,$782d,$2a4e,$5a6e,$0b7f,$1c8f,$7d9f,$0eaf
	dc.w $5ebf,$4fcf,$4fdf,$7fff,$461c,$73af,$75ff,$7dff

loc_06d5c2:
	dc.w $579b,$666b,$067c,$758d,$15af,$35bf,$76cf,$77df
	dc.w $38ef,$59ff,$7aff,$7fff,$666b,$1c8f,$5ebf,$7dff

loc_06d5e2:
	dc.w $53cb,$3a42,$4e85,$7fa7,$7fc9,$1112,$1334,$1667
	dc.w $0aab,$1ddd,$7fff,$0700,$0c43,$19df,$359f,$204c

loc_06d602:
	dc.w $1286,$539f,$73af,$74df,$75ff,$7aff,$7fff,$43cf
	dc.w $53cf,$63d8,$73d8,$63d9,$53e9,$43ea,$53ea,$43eb

loc_06d622:
	dc.w $1286,$539f,$539f,$539f,$539f,$539f,$539f,$73d7
	dc.w $73d7,$43d0,$53d0,$43d1,$53d1,$43d2,$53d2,$43d3

loc_06d642:
	dc.w $1286,$1908,$4a3a,$5b6b,$3d9c,$2ece,$7fff,$73cf
	dc.w $73cf,$63d8,$73d8,$63d9,$53e9,$43ea,$53ea,$43eb

;--------------------------
;06d662
PiePRGStart:
	move.l #loc_06e0b2,($86,a4)
	move.l #loc_069eb4,($56,a4)
	move.l #loc_06d6fe,($1b6,a4)
	move.l #loc_06d708,($1ba,a4)
	move.l #loc_06d70e,($1be,a4)
	move.l #loc_06d716,($1c2,a4)
	move.l #loc_069e88,($1c6,a4)
	move.l #loc_06dfb4,($1ce,a4)
	move.l #loc_06d8ac,($1ca,a4)
	move.l #loc_06f186,($1d2,a4)
	move.l #loc_09557c,($1d6,a4)
	move.l #loc_06efa2,($1da,a4)
	move.l #loc_06f056,($1de,a4)
	move.l #loc_06efc2,($1e2,a4)
	move.l #loc_06ef72,($1e6,a4)
	move.l #loc_06ef56,($1ea,a4)
	move.l #loc_06f08a,($1ee,a4)
	bsr.w loc_069e5c
	andi.w #$f0ff,($2ee,a4)
	move.l #loc_06f298,($2d0,a4)
	rts

loc_06d6fe:
	clr.w ($550,a4)
	jmp loc_02a9c4

loc_06d708:
	clr.w ($550,a4)
	rts

loc_06d70e:
	move.w ($2ba,a3),($2ba,a4)
	rts

loc_06d716:
	lea ($3d0,a4),a0
	jsr loc_02cbba
	move.b ($3d0,a4),d0
	move.b d0,($3c0,a4)
	move.b ($3d4,a4),d0
	move.b d0,($3c1,a4)

	lea ($3d8,a4),a0
	lea loc_06d854(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c2,a4)
	or.b d0,($3c2,a4)
	andi.b #$55,($3c2,a4)

	lea ($3e0,a4),a0
	lea loc_06d85e(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c3,a4)
	or.b d0,($3c3,a4)
	andi.b #$55,($3c3,a4)

	lea ($3e8,a4),a0
	lea loc_06d868(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c4,a4)
	or.b d0,($3c4,a4)
	andi.b #$aa,($3c4,a4)

	lea ($3f0,a4),a0
	lea loc_06d872(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c5,a4)
	or.b d0,($3c5,a4)
	andi.b #$55,($3c5,a4)

	lea ($3f8,a4),a0
	lea loc_06d87c(pc),a1
	move.w #5,d7
	jsr loc_02c946
	and.b d1,($3c7,a4)
	or.b d0,($3c7,a4)
	andi.b #$55,($3c7,a4)

	lea ($404,a4),a0
	lea loc_06d88c(pc),a1
	move.w #5,d7
	jsr loc_02c946
	and.b d1,($3c8,a4)
	or.b d0,($3c8,a4)
	andi.b #$55,($3c8,a4)

	lea ($410,a4),a0
	lea loc_06d89c(pc),a1
	move.w #5,d7
	jsr loc_02c946
	and.b d1,($3c9,a4)
	or.b d0,($3c9,a4)
	andi.b #$aa,($3c9,a4)
	cmpi.b #2,($2f6,a4)
	bne.b loc_06d820
	move.b ($2fb,a4),d0
	or.b d0,($3c6,a4)

loc_06d820:
	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$50,d0
	seq d0
	or.b d0,($3ca,a4)
	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$a0,d0
	seq d0
	or.b d0,($3cb,a4)
	tst.b ($2fc,a4)
	smi d0
	or.b d0,($3cc,a4)
	move.b ($2f7,a4),d0
	or.b d0,($3cd,a4)
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Special Move directional
loc_06d854:
	dc.w $0804,$0a02,$0208,$0a06,$0a00

loc_06d85e:
	dc.w $0202,$080a,$0608,$0804,$0a00

loc_06d868:
	dc.w $0202,$0806,$0a08,$0408,$0a00

loc_06d872:
	dc.w $0202,$0806,$0a08,$0408,$0a00

loc_06d87c:
	dc.w $0202,$0806,$0a08,$0408,$0c02,$020c,$060a,$0c00

loc_06d88c:
	dc.w $0202,$080a,$0608,$0804,$0c02,$020c,$0a06,$0c00

loc_06d89c:
	dc.w $0202,$0806,$0a08,$0408,$0c02,$020c,$060a,$0c00

;--------------------------
loc_06d8ac:
	bsr.w loc_06d91c
	bne.w loc_06d8c0
	bsr.w loc_06d9f2
	bne.w loc_06d8c0
	bsr.w loc_06da62

loc_06d8c0:
	rts

;--------------------------
loc_06d8c2:
	btst #7,($2f7,a4)
	bne.w loc_06d8d6
	btst #6,($2f7,a4)
	beq.w loc_06d8f2

loc_06d8d6:
	move.b ($2f6,a4),d0
	cmpi.b #4,d0
	beq.w loc_06d8ea
	cmpi.b #8,d0
	bne.w loc_06d8f2

loc_06d8ea:
	bsr.w loc_06dab0
	bne.w loc_06d91a

loc_06d8f2:
	btst #7,($2f7,a4)
	bne.w loc_06d906
	btst #6,($2f7,a4)
	beq.w loc_06d916

loc_06d906:
	move.b ($2f6,a4),d0
	beq.w loc_06d916
	bsr.w loc_06dad2
	bne.w loc_06d91a

loc_06d916:
	clr.w d0
	rts

loc_06d91a:
	rts

;--------------------------
loc_06d91c:
	tst.b ($3c7,a4)
	beq.b loc_06d92a
	bsr.w loc_06db00
	bne.w loc_06d9f0

loc_06d92a:
	tst.b ($3c8,a4)
	beq.b loc_06d938
	bsr.w loc_06db2e
	bne.w loc_06d9f0

loc_06d938:
	tst.b ($3c9,a4)
	beq.b loc_06d946
	bsr.w loc_06db62
	bne.w loc_06d9f0

loc_06d946:
	tst.b ($3c6,a4)
	beq.b loc_06d954
	bsr.w loc_06dbe2
	bne.w loc_06d9f0

loc_06d954:
	move.b ($3c2,a4),d0
	andi.b #$f0,d0
	beq.b loc_06d966
	bsr.w loc_06db96
	bne.w loc_06d9f0

loc_06d966:
	move.b ($3c5,a4),d0
	andi.b #$f0,d0
	beq.b loc_06d978
	bsr.w loc_06dc58
	bne.w loc_06d9f0

loc_06d978:
	bsr.w loc_06d8c2
	bne.w loc_06d9f0
	move.b ($3c3,a4),d0
	andi.b #$f0,d0
	beq.b loc_06d992
	bsr.w loc_06dc94
	bne.w loc_06d9f0

loc_06d992:
	move.b ($3c4,a4),d0
	andi.b #$f0,d0
	beq.b loc_06d9a4
	bsr.w loc_06dc0c
	bne.w loc_06d9f0

loc_06d9a4:
	move.b ($3c2,a4),d0
	andi.b #$f,d0
	beq.b loc_06d9b6
	bsr.w loc_06db96
	bne.w loc_06d9f0

loc_06d9b6:
	move.b ($3c5,a4),d0
	andi.b #$f,d0
	beq.b loc_06d9c8
	bsr.w loc_06dc58
	bne.w loc_06d9f0

loc_06d9c8:
	move.b ($3c3,a4),d0
	andi.b #$f,d0
	beq.b loc_06d9da
	bsr.w loc_06dc94
	bne.w loc_06d9f0

loc_06d9da:
	move.b ($3c4,a4),d0
	andi.b #$f,d0
	beq.b loc_06d9ec
	bsr.w loc_06dc0c
	bne.w loc_06d9f0

loc_06d9ec:
	clr.w d0
	rts

loc_06d9f0:
	rts

;--------------------------
loc_06d9f2:
	tst.b ($3cb,a4)
	beq.b loc_06da00
	bsr.w loc_06dd10
	bne.w loc_06da60

loc_06da00:
	tst.b ($3ca,a4)
	beq.b loc_06da0e
	bsr.w loc_06dd2e
	bne.w loc_06da60

loc_06da0e:
	btst #7,($2f7,a4)
	beq.b loc_06da1e
	bsr.w loc_06dd4c
	bne.w loc_06da60

loc_06da1e:
	btst #6,($2f7,a4)
	beq.b loc_06da2e
	bsr.w loc_06ddc6
	bne.w loc_06da60

loc_06da2e:
	btst #5,($2f7,a4)
	beq.b loc_06da3e
	bsr.w loc_06de54
	bne.w loc_06da60

loc_06da3e:
	btst #4,($2f7,a4)
	beq.b loc_06da4e
	bsr.w loc_06dece
	bne.w loc_06da60

loc_06da4e:
	tst.b ($3cc,a4)
	beq.b loc_06da5c
	bsr.w loc_06dcea
	bne.w loc_06da60

loc_06da5c:
	clr.w d0
	rts

loc_06da60:
	rts

;--------------------------
loc_06da62:
	tst.b ($209,a4)
	bmi.w loc_06da8a
	tst.b ($3c1,a4)
	beq.b loc_06da78
	bsr.w loc_06df70
	bne.w loc_06daaa

loc_06da78:
	tst.b ($3c0,a4)
	beq.b loc_06da86
	bsr.w loc_06df8e
	bne.w loc_06daaa

loc_06da86:
	clr.w d0
	rts
 
 loc_06da8a:
	tst.b ($3c0,a4)
	beq.b loc_06da98
	bsr.w loc_06df70
	bne.w loc_06daaa

loc_06da98:
	tst.b ($3c1,a4)
	beq.b loc_06daa6
	bsr.w loc_06df8e
	bne.w loc_06daaa

loc_06daa6:
	clr.w d0
	rts

loc_06daaa:
	rts

;--------------------------
loc_06daac:
	clr.w d0
	rts

;--------------------------
loc_06dab0:
	cmpi.w #$10,($bc,a4)
	bgt.b loc_06daac
	cmpi.w #$20,($226,a4)
	bgt.b loc_06daac
	jsr loc_02a4dc
	beq.b loc_06daac
	move.w #$24,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06dad2:
	btst #0,($24a,a4)
	bne.b loc_06daac
	move.w #$32,d2
	move.w #-$86,d3
	move.w #-$18,d4
	jsr loc_02de6a
	beq.b loc_06daac
	jsr loc_02a518
	beq.b loc_06daac
	move.w #$25,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06db00:
	jsr loc_02c78a
	beq.b loc_06daac
	btst #1,($246,a4)
	beq.b loc_06daac
	btst #5,($24a,a4)
	beq.b loc_06db20
	tst.w ($550,a4)
	bne.b loc_06db20
	bra.b loc_06daac

loc_06db20:
	sf ($3f9,a4)
	move.w #$21,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06db2e:
	jsr loc_02c78a
	beq.w loc_06daac
	btst #1,($246,a4)
	beq.w loc_06daac
	btst #5,($24a,a4)
	beq.b loc_06db54
	tst.w ($550,a4)
	bne.b loc_06db54
	bra.w loc_06daac

loc_06db54:
	sf ($405,a4)
	move.w #$22,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06db62:
	jsr loc_02c78a
	beq.w loc_06daac
	btst #1,($246,a4)
	beq.w loc_06daac
	btst #5,($24a,a4)
	beq.b loc_06db88
	tst.w ($550,a4)
	bne.b loc_06db88
	bra.w loc_06daac

loc_06db88:
	sf ($411,a4)
	move.w #$23,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06db96:
	btst #5,($24a,a4)
	bne.w loc_06daac
	btst #1,($246,a4)
	beq.w loc_06daac
	tst.b (1,a4)
	bpl.b loc_06dbbe
	move.b ($3c2,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_06dbc4

loc_06dbbe:
	move.b ($3ce,a4),($ba,a4)

loc_06dbc4:
	sf ($3d9,a4)
	tst.b ($ba,a4)
	bne.b loc_06dbd8
	move.w #$19,d0
	move.w d0,($2fe,a4)
	rts

loc_06dbd8:
	move.w #$1a,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06dbe2:
	btst #5,($24a,a4)
	bne.w loc_06daac
	btst #1,($246,a4)
	bne.w loc_06daac
	cmpi.l #$4e8680,($22a,a4)
	blt.w loc_06daac
	move.w #$20,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06dc0c:
	btst #5,($24a,a4)
	bne.w loc_06daac
	btst #1,($246,a4)
	beq.w loc_06daac
	tst.b (1,a4)
	bpl.b loc_06dc34
	move.b ($3c4,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_06dc3a

loc_06dc34:
	move.b ($3ce,a4),($ba,a4)

loc_06dc3a:
	sf ($3e9,a4)
	tst.b ($ba,a4)
	bne.b loc_06dc4e
	move.w #$1b,d0
	move.w d0,($2fe,a4)
	rts

loc_06dc4e:
	move.w #$1c,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06dc58:
	btst #5,($24a,a4)
	bne.w loc_06daac
	btst #1,($246,a4)
	beq.w loc_06daac
	tst.b ($1,a4)
	bpl.b loc_06dc80
	move.b ($3c5,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_06dc86

loc_06dc80:
	move.b ($3ce,a4),($ba,a4)

loc_06dc86:
	sf ($3f1,a4)
	move.w #$1d,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06dc94:
	btst #5,($24a,a4)
	bne.w loc_06daac
	btst #1,($246,a4)
	beq.w loc_06daac
	tst.b ($2b2,a4)
	bne.w loc_06daac
	tst.b (1,a4)
	bpl.b loc_06dcc4
	move.b ($3c3,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_06dcca

loc_06dcc4:
	move.b ($3ce,a4),($ba,a4)

loc_06dcca:
	sf ($3e1,a4)
	tst.b ($ba,a4)
	bne.b loc_06dce0
	move.w #$1e,d0
	move.w d0,($2fe,a4)
	rts

loc_06dcde:
	bra.b loc_06dcea

loc_06dce0:
	move.w #$1f,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06dcea:
	btst #4,($24a,a4)
	bne.w loc_06daac
	btst #1,($246,a4)
	beq.w loc_06daac
	tst.w ($552,a4)
	bne.w loc_06daac
	move.w #$28,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06dd10:
	btst #4,($24a,a4)
	bne.w loc_06daac
	btst #1,($246,a4)
	beq.w loc_06daac
	move.w #$16,d0
	move.w d0,($2fe,a4)
	rts

;------------------------- -
loc_06dd2e:
	btst #4,($24a,a4)
	bne.w loc_06daac
	btst #1,($246,a4)
	beq.w loc_06daac
	move.w #$15,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06dd4c:;HK
	btst #1,($246,a4)
	bne.w loc_06dd80
	btst #0,($24a,a4)
	bne.w loc_06daac
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_06dd76
	move.w #$13,d0
	move.w d0,($2fe,a4)
	rts

loc_06dd76:
	move.w #$14,d0
	move.w d0,($2fe,a4)
	rts

loc_06dd80:
	btst #1,($246,a4)
	beq.w loc_06daac
	btst #3,($24a,a4)
	bne.w loc_06daac
	btst #1,($2f6,a4)
	bne.w loc_06ddbc
	cmpi.w #$38,($226,a4)
	bgt.w loc_06ddb2
	move.w #$a,d0
	move.w d0,($2fe,a4)
	rts

loc_06ddb2:
	move.w #$b,d0
	move.w d0,($2fe,a4)
	rts

loc_06ddbc:
	move.w #$c,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06ddc6:;HP
	btst #1,($246,a4)
	bne.w loc_06de0e
	btst #0,($24a,a4)
	bne.w loc_06daac
	btst #0,($2f6,a4)
	bne.w loc_06de04
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_06ddfa
	move.w #$11,d0
	move.w d0,($2fe,a4)
	rts

loc_06ddfa:
	move.w #$12,d0
	move.w d0,($2fe,a4)
	rts

loc_06de04:
	move.w #$18,d0
	move.w d0,($2fe,a4)
	rts

loc_06de0e:
	btst #1,($246,a4)
	beq.w loc_06daac
	btst #3,($24a,a4)
	bne.w loc_06daac
	btst #1,($2f6,a4)
	bne.w loc_06de4a
	cmpi.w #$38,($226,a4)
	bgt.w loc_06de40
	move.w #7,d0
	move.w d0,($2fe,a4)
	rts

loc_06de40:
	move.w #8,d0
	move.w d0,($2fe,a4)
	rts

loc_06de4a:
	move.w #9,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06de54:;LK
	btst #1,($246,a4)
	bne.w loc_06de88
	btst #0,($24a,a4)
	bne.w loc_06daac
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_06de7e
	move.w #$f,d0
	move.w d0,($2fe,a4)
	rts

loc_06de7e:
	move.w #$10,d0
	move.w d0,($2fe,a4)
	rts

loc_06de88:
	btst #1,($246,a4)
	beq.w loc_06daac
	btst #3,($24a,a4)
	bne.w loc_06daac
	btst #1,($2f6,a4)
	bne.w loc_06dec4
	cmpi.w #$30,($226,a4)
	bgt.w loc_06deba
	move.w #4,d0
	move.w d0,($2fe,a4)
	rts

loc_06deba:
	move.w #5,d0
	move.w d0,($2fe,a4)
	rts

loc_06dec4:
	move.w #6,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06dece:;LP
	btst #1,($246,a4)
	bne.w loc_06df16
	btst #0,($24a,a4)
	bne.w loc_06daac
	btst #1,($2f6,a4)
	bne.w loc_06df0c
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_06df02
	move.w #$d,d0
	move.w d0,($2fe,a4)
	rts

loc_06df02:
	move.w #$e,d0
	move.w d0,($2fe,a4)
	rts

loc_06df0c:
	move.w #$17,d0
	move.w d0,($2fe,a4)
	rts

loc_06df16:
	btst #1,($246,a4)
	beq.w loc_06daac
	btst #3,($24a,a4)
	beq.w loc_06df3e
	btst #1,($24a,a4)
	bne.w loc_06daac
	cmpi.b #1,($2c6,a4)
	bne.w loc_06daac

loc_06df3e:
	btst #1,($2f6,a4)
	bne.w loc_06df66
	cmpi.w #$30,($226,a4)
	bgt.w loc_06df5c
	move.w #1,d0
	move.w d0,($2fe,a4)
	rts

loc_06df5c:
	move.w #2,d0
	move.w d0,($2fe,a4)
	rts

loc_06df66:
	move.w #3,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06df70:
	btst #3,($24a,a4)
	bne.w loc_06daac
	btst #1,($246,a4)
	beq.w loc_06daac
	move.w #$27,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06df8e:
	tst.b ($24a,a4)
	bne.w loc_06daac
	btst #1,($246,a4)
	beq.w loc_06daac
	btst #4,($248,a4)
	bne.w loc_06daac
	move.w #$26,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_06dfb4:
	tst.b (-$3dd,a5)
	bne.w loc_06e068
	tst.b ($271,a4)
	beq.w loc_06dfc8
	subq.w #5,($bc,a4)

loc_06dfc8:
	tst.w ($bc,a4)
	ble.w loc_06e068
	tst.b ($249,a4)
	bne.w loc_06e068
	move.w ($bc,a4),d2
	subq.w #1,($bc,a4)
	btst #1,($246,a4)
	beq.w loc_06e036
	btst #3,($24c,a4)
	beq.w loc_06e00e
	btst #5,($24c,a4)
	bne.w loc_06e068
	cmpi.w #4,($bc,a4)
	blt.w loc_06e00e
	move.w #4,($bc,a4)

loc_06e00e:
	cmpi.w #$10,d2
	blt.w loc_06e01a
	move.w #$10,d2

loc_06e01a:
	lea loc_06e06e(pc),a0
	lsl.w #2,d2
	move.l (a0,d2.w),d0
	tst.b ($bb,a4)
	bpl.w loc_06e02e
	neg.l d0

loc_06e02e:
	add.l d0,($20e,a4)
	bra.w loc_06e06c

loc_06e036:
	btst #3,($24c,a4)
	beq.w loc_06e04a
	btst #5,($24c,a4)
	bne.w loc_06e068

loc_06e04a:
	move.w #1,($bc,a4)
	move.l #$12000,d0
	tst.b ($bb,a4)
	bpl.w loc_06e060
	neg.l d0

loc_06e060:
	add.l d0,($20e,a4)
	bra.w loc_06e06c

loc_06e068:
	clr.w ($bc,a4)

loc_06e06c:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06e06e:
	dc.l $00000000,$00006000,$0000c000,$00012000
	dc.l $00018000,$0001e000,$00024000,$0002a000
	dc.l $00030000,$00036000,$0003c000,$00042000
	dc.l $00048000,$0004e000,$00054000,$0005a000
	dc.l $00060000

;--------------------------
;animation programming
loc_06e0b2:
	tst.b (-$3e4,a5)
	bne.w loc_06e0e0
	cmpi.w #1,(-$f2e,a5)
	bgt.w loc_06e0e0
	movea.l #loc_06f22a,a0
	clr.w d0
	jsr loc_0226f0

loc_06e0d2:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_06e0d2

loc_06e0e0:
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_06e0ea:
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),($bb,a4)

loc_06e0fc:
	btst #0,($2f6,a4)
	beq.w loc_06e118
	tst.w ($20c,a4)
	bne.w loc_06e118
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_06e118:
	jsr loc_02269c
	tst.w ($bc,a4)
	bne.b loc_06e0fc
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_06e12e:
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_06e13a:
	jsr loc_02269c
	btst #4,($248,a4)
	bne.w loc_06e166
	btst #0,($2f6,a4)
	beq.w loc_06e166
	tst.w ($20c,a4)
	bne.w loc_06e166
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_06e166:
	btst #2,($2e1,a4)
	beq.b loc_06e13a
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_06e178:
	jsr loc_0290f8
	ori.b #$df,($24a,a4)
	jsr loc_02269c
	addi.l #$ac00,($21a,a4)
	tst.b ($271,a4)
	bne.w loc_06e1ac
	btst #1,($246,a4)
	beq.b loc_06e178
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

loc_06e1ac:
	movea.l #loc_070932,a0
	clr.w d0
	jsr loc_0226f0
	btst #2,($246,a4)
	bne.b loc_06e206
	btst #3,($246,a4)
	bne.b loc_06e20e
	btst #2,($246,a3)
	bne.b loc_06e206
	btst #3,($246,a3)
	bne.b loc_06e20e
	btst #2,($248,a4)
	bne.b loc_06e1ec
	move.l #-$20000,($216,a4)
	bra.b loc_06e1f4

loc_06e1ec:
	move.l #-$20000,($216,a4)

loc_06e1f4:
	move.l #-$91200,($21a,a4)
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

loc_06e206:
	tst.b ($208,a4)
	bpl.b loc_06e232
	bra.b loc_06e214

loc_06e20e:
	tst.b ($208,a4)
	bmi.b loc_06e232

loc_06e214:
	bclr #3,($248,a4)
	bset #2,($248,a4)
	move.l #-$38000,($216,a4)
	move.l #-$91200,($21a,a4)
	bra.b loc_06e24e

loc_06e232:
	bclr #2,($248,a4)
	bset #3,($248,a4)
	move.l #$38000,($216,a4)
	move.l #-$91200,($21a,a4)

loc_06e24e:
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

;---------------------------
loc_06e258
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_06e270:
	jsr loc_02269c
	tst.w ($2c4,a4)
	bne.b loc_06e2a4
	cmpi.b #2,($2c6,a4)
	bne.b loc_06e2a4
	tst.b (1,a4)
	bpl.b loc_06e298
	move.b ($3cd,a4),d6
	andi.b #$55,d6
	bne.w loc_06e2b6
	bra.b loc_06e2a4

loc_06e298:
	move.b ($2f7,a4),d6
	andi.b #$55,d6
	bne.w loc_06e2b6

loc_06e2a4:
	btst #2,($2e1,a4)
	beq.b loc_06e270
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_06e2b6:
	movea.l #loc_0713c4,a0
	clr.w d0
	jsr loc_0226f0

loc_06e2c4:
	jsr loc_02269c
	tst.w ($2c4,a4)
	bne.b loc_06e2f8
	cmpi.b #3,($2c6,a4)
	bne.b loc_06e2f8
	tst.b (1,a4)
	bpl.b loc_06e2ec
	move.b ($3cd,a4),d6
	andi.b #$55,d6
	bne.w loc_06e30a
	bra.b loc_06e2f8

loc_06e2ec:
	move.b ($2f7,a4),d6
	andi.b #$55,d6
	bne.w loc_06e30a

loc_06e2f8:
	btst #2,($2e1,a4)
	beq.b loc_06e2c4
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_06e30a:
	movea.l #loc_0714fc,a0
	clr.w d0
	jsr loc_0226f0
	sf ($273,a4)

loc_06e31c:
	jsr loc_02269c
	tst.b ($273,a4)
	beq.b loc_06e336
	sf ($273,a4)
	btst #3,($249,a3)
	bne.w loc_06e348

loc_06e336:
	btst #2,($2e1,a4)
	beq.b loc_06e31c
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_06e348:
	movea.l #loc_071630,a0
	clr.w d0
	jsr loc_0226f0

loc_06e356:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_06e356
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;---------------------------
loc_06e36e:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_06e386:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.w loc_06e3b4
	sf ($b6,a4)
	movem.l d2,-(a7)
	move.w #$30,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_06e3b4
	move.b ($ba,a4),($66,a0)

loc_06e3b4:
	btst #2,($2e1,a4)
	beq.b loc_06e386
	movea.l ($1de,a4),a0
	movea.l (4,a0),a0
	jmp (a0)

;--------------------------
loc_06e3c6:
	st ($24a,a4)

loc_06e3ca:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_06e3ca
	move.l #$45000,($216,a4)
	move.l ($22a,a4),d0
	asr.l #8,d0
	divu.w #$14,d0
	ext.l d0
	asl.l #8,d0
	move.l d0,($21a,a4)

loc_06e3f0:
	jsr loc_02269c
	btst #1,($246,a4)
	beq.b loc_06e3f0
	clr.l ($216,a4)
	clr.l ($21a,a4)
	movea.l #loc_07238a,a0
	clr.w d0
	jsr loc_0226f0

loc_06e414:
	jsr loc_02269c
	tst.b ($b7,a4)
	beq.b loc_06e414
	sf ($273,a4)

loc_06e424:
	jsr loc_02269c
	tst.b ($273,a4)
	beq.b loc_06e43c
	sf ($273,a4)
	tst.b ($249,a3)
	bne.w loc_06e44e

loc_06e43c:
	btst #2,($2e1,a4)
	beq.b loc_06e424
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_06e44e:
	move.l #-$30000,($216,a4)
	move.l ($22a,a4),d0
	asr.l #8,d0
	divu.w #$28,d0
	ext.l d0
	asl.l #8,d0
	addi.l #-$9c000,d0
	move.l d0,($21a,a4)
	movea.l #loc_0724ca,a0
	clr.w d0
	jsr loc_0226f0

loc_06e47c:
	jsr loc_02269c
	addi.l #$8000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_06e47c
	clr.l ($216,a4)
	clr.l ($21a,a4)

loc_06e49a:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_06e49a
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_06e4b2:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.w ($290,a4),d2
	sf ($273,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	tst.b ($ba,a4)
	bne.b loc_06e4e2
	move.w #2,d6
	move.w #0,d4
	bra.b loc_06e4ea

loc_06e4e2:
	move.w #6,d6
	move.w #1,d4

loc_06e4ea:
	move.w #$7fff,d5

loc_06e4ee:
	tst.b ($b6,a4)
	beq.b loc_06e4fe
	sf ($b6,a4)
	bsr.w loc_06e598
	clr.w d6

loc_06e4fe:
	tst.b ($ba,a4)
	beq.b loc_06e518
	tst.w d6
	ble.b loc_06e518
	move.w d2,($290,a4)
	move.l ($216,a4),d0
	lsl.l #3,d0
	swap d0
	add.w d0,($290,a4)

loc_06e518:
	jsr loc_02269c
	btst #0,($2e1,a4)
	beq.b loc_06e538
	subq.w #1,d5
	bpl.b loc_06e538
	move.w #$7fff,d5
	addq.w #1,($27a,a4)
	bclr #7,($24c,a4)

loc_06e538:
	tst.b ($273,a4)
	beq.b loc_06e584
	sf ($273,a4)
	move.w #2,d5
	subq.w #1,d6
	bgt.b loc_06e558
	beq.b loc_06e552
	move.w #$7fff,d5
	bra.b loc_06e556

loc_06e552:
	bsr.w loc_06e598

loc_06e556:
	bra.b loc_06e584

loc_06e558:
	subq.w #1,d4
	bmi.b loc_06e574
	cmpi.b #$17,($24e,a4)
	beq.b loc_06e56c
	move.b #$17,($24e,a4)
	bra.b loc_06e572

loc_06e56c:
	move.b #$18,($24e,a4)

loc_06e572:
	bra.b loc_06e57a

loc_06e574:
	move.b #$1c,($24e,a4)

loc_06e57a:
	tst.b ($ba,a4)
	beq.b loc_06e584
	addi.w #$18,d2

loc_06e584:
	btst #2,($2e1,a4)
	beq.w loc_06e4ee
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_06e598:
	move.b #$28,($24e,a4)
	move.b #$74,($24d,a4)
	clr.w ($290,a4)
	clr.w ($292,a4)
	rts

;---------------------------
loc_06e5ae:
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),d6
	move.l (-$45de,a5),($212,a4)

loc_06e5d0:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_06e5ee
	sf ($b9,a4)
	move.w #-$a,d2
	move.w #-$64,d3
	jsr loc_02c7be

loc_06e5ee:
	tst.b ($b6,a4)
	beq.b loc_06e5d0
	move.w #$17,d7

loc_06e5f8
	jsr loc_02269c
	jsr RandomNumberGod
	andi.w #$3f,d0
	subi.w #$1f,d0
	move.w d0,($290,a4)
	jsr RandomNumberGod
	andi.w #$3f,d0
	subi.w #$60,d0
	move.w d0,($292,a4)
	dbra d7,loc_06e5f8
	move.b d6,($208,a4)
	movea.l #loc_07276e,a0
	clr.w d0
	jsr loc_0226f0

loc_06e638:
	jsr loc_02269c
	tst.b ($b7,a4)
	beq.b loc_06e638
	sf ($273,a4)
	move.l #$80000,($216,a4)
	move.w #$1f,d7

loc_06e654:
	jsr loc_02269c
	tst.b ($273,a4)
	beq.b loc_06e676
	sf ($273,a4)
	move.l #-$40000,($216,a4)
	move.w #$e9,d0
	jsr loc_02301a

loc_06e676:
	bsr.w loc_06e6a8
	dbra d7,loc_06e654
	movea.l #loc_072976,a0
	clr.w d0
	jsr loc_0226f0

loc_06e68c:
	jsr loc_02269c
	bsr.w loc_06e6a8
	btst #2,($2e1,a4)
	beq.b loc_06e68c
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_06e6a8:
	tst.l ($216,a4)
	bpl.w loc_06e6c0
	addi.l #$8000,($216,a4)
	ble.b loc_06e6ce
	clr.l ($216,a4)
	bra.b loc_06e6ce

loc_06e6c0:
	subi.l #$8000,($216,a4)
	bge.b loc_06e6ce
	clr.l ($216,a4)

loc_06e6ce:
	rts

;--------------------------
loc_06e6d0
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.b ($209,a4),($208,a4)
	move.l (-$45de,a5),($212,a4)

loc_06e6ee:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_06e6ee
	sf ($b9,a4)
	move.w #$18,d2
	move.w #-$5e,d3
	jsr loc_02c7be
	jmp loc_028fd0

;--------------------------
loc_06e712
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.b ($209,a4),($208,a4)
	move.l (-$45de,a5),($212,a4)

loc_06e730:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_06e730
	sf ($b9,a4)
	move.w #8,d2
	move.w #-$74,d3
	jsr loc_02c7be

loc_06e74e:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_06e74e
	sf ($b6,a4)
	move.l #$100000,($216,a4)
	movem.l d2,-(a7)
	move.w #$31,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_06e80c
	sf ($273,a4)
	sf d5
	move.w #$17,d7

loc_06e786:
	tst.b d5
	bne.b loc_06e7a0
	tst.b ($273,a4)
	beq.b loc_06e7a0
	sf ($273,a4)
	tst.b ($249,a3)
	beq.b loc_06e7a0
	st d5
	st ($66,a0)

loc_06e7a0:
	jsr loc_02269c
	dbra d7,loc_06e786
	tst.b d5
	beq.b loc_06e806
	movea.l #loc_072f6a,a0
	clr.w d0
	jsr loc_0226f0

loc_06e7bc:
	btst #5,($249,a3)
	bne.w loc_06e7e6
	btst #3,($249,a3)
	bne.w loc_06e7de
	btst #2,($249,a3)
	bne.w loc_06e7de
	bra.w loc_06e81a

loc_06e7de:
	jsr loc_02269c
	bra.b loc_06e7bc

loc_06e7e6:
	jsr loc_023294
	move.w #$1c97,d0
	jsr loc_02301a
	movea.l #loc_072fce,a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_06e81a

loc_06e806:
	move.b #1,($66,a0)

loc_06e80c:
	movea.l #loc_072f6a,a0
	clr.w d0
	jsr loc_0226f0

loc_06e81a:
	btst #2,($2e1,a4)
	bne.w loc_06e82c
	jsr loc_02269c
	bra.b loc_06e81a

loc_06e82c
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;---------------------------
loc_06e836:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	sf ($c4,a4)
	tst.b (1,a4)
	bpl.w loc_06e86e
	btst #3,($2f6,a4)
	sne ($c4,a4)

loc_06e86e:
	move.l #$14000,d2
	move.l #-$7a800,d3

loc_06e87a:
	jsr loc_02a59c
	lea loc_06e8f0(pc),a0
	jsr loc_02a554

loc_06e88a:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.w loc_06e8ac
	sf ($b6,a4)
	tst.b ($c4,a4)
	beq.w loc_06e8ac
	not.b ($208,a4)
	not.b ($208,a3)

loc_06e8ac:
	tst.b ($b7,a4)
	beq.b loc_06e8c4
	sf ($b7,a4)
	cmpi.w #2,($14,a3)
	bne.b loc_06e8c4
	subi.w #$10,($212,a4)

loc_06e8c4:
	tst.b ($b8,a4)
	beq.b loc_06e8d4
	sf ($b8,a4)
	move.l (-$45de,a5),($212,a4)

loc_06e8d4:
	btst #2,($2e1,a4)
	beq.b loc_06e88a
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06e8f0:;throws
	dc.l loc_07324e,loc_0732e6,loc_07337e,loc_073416
	dc.l loc_0734a8,loc_07353a,loc_0735d2,loc_073664
	dc.l loc_0736fc,loc_073794
	dc.l loc_07324e,loc_07324e,loc_07324e,loc_07324e
	dc.l loc_07324e,loc_07324e

;--------------------------
loc_06e930:
	st ($24a,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	tst.b (1,a4)
	bpl.b loc_06e964
	sf ($c4,a4)
	btst #3,($2f6,a4)
	beq.b loc_06e956
	move.b #1,($c4,a4)

loc_06e956:
	btst #2,($2f6,a4)
	beq.b loc_06e962
	st ($c4,a4)

loc_06e962:
	bra.b loc_06e976

loc_06e964:
	jsr RandomNumberGod
	mulu.w #3,d0
	swap d0
	subq.w #1,d0
	move.b d0,($c4,a4)

loc_06e976:
	move.l #$14000,d2
	move.l #-$80000,d3
	jsr loc_02a59c
	lea loc_06ea34(pc),a0
	jsr loc_02a554

loc_06e992:
	jsr loc_02269c
	btst #1,($246,a4)
	beq.b loc_06e9aa
	clr.l ($216,a4)
	clr.l ($21a,a4)
	bra.b loc_06e9be

loc_06e9aa:
	move.l ($21a,a4),d0
	asr.l #1,d0
	move.l d0,($21a,a4)
	move.l ($216,a4),d0
	asr.l #2,d0
	sub.l d0,($216,a4)

loc_06e9be:
	tst.b ($b6,a4)
	beq.b loc_06e992
	tst.b ($c4,a4)
	beq.b loc_06e9de
	bmi.b loc_06e9d6
	move.l #$2e000,($216,a4)
	bra.b loc_06e9de

loc_06e9d6:
	move.l #-$2e000,($216,a4)

loc_06e9de:
	move.l #-$a6a00,($21a,a4)
	move.l ($22a,a4),d0
	asr.l #8,d0
	divu.w #$20,d0
	ext.l d0
	asl.l #8,d0
	add.l d0,($21a,a4)

loc_06e9f8:
	jsr loc_02269c
	addi.l #$ac00,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_06e9f8
	clr.l ($216,a4)
	clr.l ($21a,a4)

loc_06ea16:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_06ea16
	move.b ($209,a4),($208,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Air Throws
loc_06ea34:
	dc.l loc_0739b6,loc_073a4e,loc_073ae6,loc_073b7e
	dc.l loc_073c10,loc_073ca2,loc_073d3a,loc_073dcc
	dc.l loc_073e64,loc_073efc
	dc.l loc_0739b6,loc_0739b6,loc_0739b6,loc_0739b6
	dc.l loc_0739b6,loc_0739b6

;--------------------------
loc_06ea74:
	st ($24a,a4)

loc_06ea78:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_06ea78
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_06ea90:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_06ec12
	tst.b ($66,a4)
	bne.b loc_06eabe
	move.l #$66000,($36,a4)
	move.w #$28,($68,a4)
	clr.l ($3a,a4)
	bra.b loc_06ead0

loc_06eabe:
	move.l #$a8000,($36,a4)
	move.w #$1c,($68,a4)
	clr.l ($3a,a4)

loc_06ead0:
	move.l #$300000,d2
	moveq #0,d3
	jsr loc_0282ea
	movea.l #loc_071a24,a0
	clr.w d0
	jsr loc_027e70

loc_06eaec:
	tst.b ($9b,a4)
	bne.w loc_06ebaa
	move.l #loc_06ec20,($9c,a4)
	jsr loc_02805e
	bne.w loc_06ebaa
	move.l #loc_06ec18,($9c,a4)
	jsr loc_028112
	bne.w loc_06eba4
	move.l #loc_06ec20,($9c,a4)
	jsr loc_027e48
	move.w ($2e,a4),d0
	addi.w #$20,d0
	cmp.w (-$45d6,a5),d0
	blt.w loc_06ec12
	move.w ($2e,a4),d0
	subi.w #$20,d0
	cmp.w (-$45d4,a5),d0
	bge.w loc_06ec12
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	tst.b ($66,a4)
	bne.b loc_06eb7e
	addi.l #-$1e00,($36,a4)
	bra.b loc_06eb86

loc_06eb7e:
	addi.l #-$5800,($36,a4)

loc_06eb86:
	subq.w #1,($68,a4)
	bpl.w loc_06eaec
	clr.l ($9c,a4)
	movea.l #loc_071ab6,a0
	clr.w d0
	jsr loc_027e70
	bra.w loc_06ebde

loc_06eba4:
	jsr loc_0281fa

loc_06ebaa:
	clr.l ($9c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	movea.l #loc_071a5c,a0
	clr.w d0
	jsr loc_027e70

loc_06ebde:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	btst #2,($53,a4)
	bne.w loc_06ec12
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l ($8,a4),a3
	jsr loc_027ea4
	bra.b loc_06ebde

loc_06ec12:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06ec18:
	dc.w $ffe0,$0000,$fff4,$000c

loc_06ec20:
	dc.w $ffc0,$0000,$fff4,$000c

;--------------------------
loc_06ec28:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_06edf8
	movea.l #loc_072fd8,a0
	clr.w d0
	jsr loc_027e70

loc_06ec4a:
	tst.b ($249,a3)
	bne.w loc_06eda8
	tst.b ($66,a4)
	bgt.w loc_06edf8
	bmi.w loc_06ec94
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_06ec4a

loc_06ec94:
	jsr loc_028344
	move.w #$f,($6c,a4)

loc_06eca0:
	move.w ($6c,a4),d7
	addq.w #1,d7
	move.l ($20e,a3),d0
	sub.l ($2e,a4),d0
	asr.l #8,d0
	divs.w d7,d0
	ext.l d0
	asl.l #8,d0
	add.l d0,($2e,a4)
	move.l ($212,a3),d0
	sub.l ($32,a4),d0
	asr.l #8,d0
	divs.w d7,d0
	ext.l d0
	asl.l #8,d0
	add.l d0,($32,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	subq.w #1,($6c,a4)
	bpl.b loc_06eca0
	clr.w ($68,a4)
	clr.w ($6a,a4)
	move.w #$77,($6c,a4)

loc_06ed0a:
	not.b ($2c,a4)
	eori.w #1,($60,a4)

loc_06ed14:
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.l #loc_06edfe,($9c,a4)
	tst.w ($6a,a4)
	bgt.b loc_06ed3e
	jsr loc_028112
	bne.w loc_06ed7e
	bra.w loc_06eda8

loc_06ed3c:
	bra.b loc_06ed48

loc_06ed3e:
	subq.w #1,($6a,a4)
	jsr loc_028112

loc_06ed48:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	clr.l ($9c,a4)
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	subq.w #1,($6c,a4)
	bpl.b loc_06ed14
	bra.w loc_06eda8

loc_06ed7e:
	jsr loc_0281fa
	sf ($9b,a4)
	addq.w #1,($68,a4)
	cmpi.w #6,($68,a4)
	bgt.w loc_06eda8
	blt.b loc_06ed9e
	move.b #$24,($89,a4)

loc_06ed9e:
	move.w #8,($6a,a4)
	bra.w loc_06ed0a

loc_06eda8:
	clr.l ($9c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	movea.l #loc_07304c,a0
	clr.w d0
	jsr loc_027e70

loc_06edd0:
	btst #2,($53,a4)
	bne.w loc_06edf8
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027ea4
	bra.b loc_06edd0

loc_06edf8:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06edfe:
	dc.w $ff98,$ffc0,$ffc0,$0040

;--------------------------
loc_06ee06:
	movea.l ($28,a4),a3
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.b ($208,a3),($2c,a4)
	move.w ($2ee,a3),($60,a4)
	movea.l #loc_06f8e0,a0
	clr.w d0
	jsr loc_027e70
	move.w ($2e,a4),d0
	cmp.w (-$45d2,a5),d0
	blt.w loc_06ee64
	move.l #-$60000,($36,a4)
	move.l #$4000,d4
	clr.l ($3a,a4)
	tst.b ($2c,a4)
	bpl.b loc_06ee62
	move.l #$6c000,($36,a4)
	move.l #-$4800,d4

loc_06ee62:
	bra.b loc_06ee8a

loc_06ee64:
	move.l #$60000,($36,a4)
	move.l #-$4000,d4
	clr.l ($3a,a4)
	tst.b ($2c,a4)
	bpl.b loc_06ee8a
	move.l #-$6c000,($36,a4)
	move.l #$4800,d4

loc_06ee8a:
	move.w #$17,d7

loc_06ee8e:
	jsr loc_027e48
	add.l d4,($36,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l d4/d7,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),d4/d7
	jsr loc_027ea4
	dbra d7,loc_06ee8e
	clr.l ($36,a4)

loc_06eec8:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027ea4
	bra.b loc_06eec8


loc_06eee6:
	movea.l ($28,a4),a3
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.b ($208,a3),($2c,a4)
	move.w ($2ee,a3),($60,a4)
	movea.l #loc_0711ee,a0
	clr.w d0
	jsr loc_027e70

loc_06ef10:
	tst.b ($249,a3)
	bne.w loc_06ef50
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	btst #3,($2e1,a3)
	bne.b loc_06ef10
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_06ef10

loc_06ef50:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06ef56:
	dc.l $0002c000,$fffdc000,$00000000
	dc.l $0002e000,$fffd2000,$fff43e00
	dc.l $0000ac00

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06ef72:
	dc.l loc_06ef7e,loc_06ef8a,loc_06ef96

loc_06ef7e:
	dc.w $8039,$fc00
	dc.w $803b,$d000,$f20a,$0000

loc_06ef8a:
	dc.w $8039,$fe02
	dc.w $803b,$e000,$f20a,$0000

loc_06ef96:
	dc.w $8039,$fd01
	dc.w $803b,$ccf0,$f20a,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06efa2:
	dc.l loc_069f1e,loc_069f1e,loc_06a262,loc_06a6e8
	dc.l loc_06adca,loc_06b056,loc_06b22e,loc_06b2f0

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06efc2:
	dc.l loc_06f298,loc_06f326,loc_06f3a6,loc_06f40e
	dc.l loc_06f33c,loc_06f35a,loc_06f382,loc_06f364
	dc.l loc_06f476,loc_06f484,loc_06f4ce,loc_06f52a
	dc.l loc_06f586,loc_06f4b0,loc_06f594,loc_06f594
	dc.l loc_06f594,loc_06f5aa,loc_06f5aa,loc_06f5aa
	dc.l loc_06f5b4,loc_06f5b4,loc_06f5b4,loc_06f5c4
	dc.l loc_06f5c4,loc_06f5c4,loc_06f5d4,loc_06f5d4
	dc.l loc_06f5d4,loc_06f5de,loc_06f5de,loc_06f5de
	dc.l loc_06f5e8,loc_06f742,loc_06f668,loc_06f5f8
	dc.l loc_06f9fe

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f056:
	dc.l loc_028468,loc_028562,loc_02848c,loc_028572
	dc.l loc_02861e,loc_0286fc,loc_0287a6,loc_0287e0
	dc.l loc_02881a,loc_028a02,loc_028958,loc_028a30
	dc.l loc_028ae2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f08a:
	dc.l loc_06fa4e,loc_06fa4e,loc_06fa4e,loc_06fa58
	dc.l loc_06fa58,loc_06fa58,loc_06fa62,loc_06fa62
	dc.l loc_06fa7a,loc_06fa7a,loc_06fa92,loc_06fa92
	dc.l loc_06fac0,loc_06fac0,loc_06fae6,loc_06fae6
	dc.l loc_06fafe,loc_06fafe,loc_06fb16,loc_06fb16
	dc.l loc_06fb3e,loc_06fb3e,loc_06fb5e,loc_06fb5e
	dc.l loc_06fb76,loc_06fb76,loc_06fb8e,loc_06fb8e
	dc.l loc_06fbbc,loc_06fbbc,loc_06fbe2,loc_06fc1c
	dc.l loc_06fbe2,loc_06fc1c,loc_06fc5c,loc_06fc8a
	dc.l loc_06fca8,loc_06fcd8,loc_06fca8,loc_06fcd8
	dc.l loc_06fca8,loc_06fd0e,loc_06fd0e,loc_06fd34
	dc.l loc_06fd44,loc_06fd72,loc_06fd9e,loc_06fe5c
	dc.l loc_06fda6,loc_06fe6a,loc_06fe6a,loc_06fe6a
	dc.l loc_06fec8,loc_06fec8,loc_06ff10,loc_06ff38
	dc.l loc_06fffe,loc_06fffe,loc_070028,loc_070028
	dc.l loc_07006e,loc_07006e,loc_0700d0

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f186:
	dc.l $00000000
	dc.l loc_0700f2,loc_07017a,loc_070202,loc_070282
	dc.l loc_0702ee,loc_070378,loc_0703da,loc_070484
	dc.l loc_070562,loc_070634,loc_0706b0,loc_0707a0
	dc.l loc_070854,loc_070854,loc_070942,loc_0709c8
	dc.l loc_070a62,loc_070a62,loc_070c0c,loc_070c0c
	dc.l loc_070ca4,loc_070dce,loc_0708d8,loc_070b4c
	dc.l loc_070e94,loc_071012,loc_071b04,loc_071e3c
	dc.l loc_071274,loc_071778,loc_0718ce,loc_072272
	dc.l loc_072626,loc_0729b4,loc_072e0c,loc_07309a
	dc.l loc_07382c,loc_073f94,loc_074028,loc_0740cc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f22a:
	dc.w $0004,$0a92,$0000,$80ff,$0003,$0000,$0000
	dc.w $8027,$ffdc,$0024
	dc.w $0004,$0b6d,$0000,$8000
	dc.w $8027,$ffe4,$0014
	dc.w $0003,$0b06,$0000,$80ff,$0008,$0000,$0000
	dc.w $8027,$ffec,$0014
	dc.w $0004,$0b07,$0000,$80ff,$0008,$0000,$0000
	dc.w $8027,$fff4,$000c
	dc.w $001e,$0b08,$0000,$80ff,$0002,$0000,$0000
	dc.w $8027,$ffe4,$0014
	dc.w $0008,$0b09,$0000,$80ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f298:
	dc.w $8027,$ffdc,$0024
	dc.w $0004,$0b6d,$0001,$8000
	dc.w $0004,$0b6e,$0001,$8000
	dc.w $0004,$0b6f,$0001,$8000
	dc.w $0004,$0b70,$0001,$8000
	dc.w $0004,$0b71,$0001,$8000
	dc.w $0004,$0b72,$0001,$8000
	dc.w $0004,$0b73,$0001,$8000
	dc.w $0004,$0b74,$0001,$8000
	dc.w $0004,$0b75,$0001,$8000
	dc.w $0004,$0b76,$0001,$8000
	dc.w $0004,$0b77,$0001,$8000
	dc.w $0004,$0b78,$0001,$8000
	dc.w $0004,$0b69,$0001,$8000
	dc.w $0004,$0b6a,$0001,$8000
	dc.w $0004,$0b6b,$0001,$8000
	dc.w $0004,$0b6c,$0001,$8000
	dc.w $8000,$0000
	dc.l loc_06f298

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f326:
	dc.w $8027,$ffdc,$0024
	dc.w $0005,$0ad0,$0002,$8000
	dc.w $8000,$0000
	dc.l loc_06f298

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f33c:
	dc.w $0003,$0a92,$0003,$80ff,$0003,$0000,$0000
	dc.w $0003,$0c56,$0004,$80ff,$0001,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f35a:
	dc.w $0004,$0a93,$0005,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f364:
	dc.w $0003,$0c56,$0004,$80ff,$0001,$0000,$0000
	dc.w $0003,$0a92,$0003,$80ff,$0003,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f382:
	dc.w $0003,$0ad1,$0006,$80ff,$ffff,$0000,$0001
	dc.w $0003,$0ad1,$0006,$80ff,$0001,$0000,$0000
	dc.w $8000,$0000
	dc.l loc_06f35a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f3a6:
	dc.w $0002,$0bab,$0007,$8000
	dc.w $0003,$0bac,$0007,$8000
	dc.w $0002,$0bad,$0007,$8000
	dc.w $0003,$0bae,$0007,$8000
	dc.w $0002,$0baf,$0007,$8000
	dc.w $0003,$0bb0,$0007,$8000
	dc.w $0002,$0bb1,$0007,$8000
	dc.w $0003,$0bb2,$0007,$8000
	dc.w $0002,$0bb3,$0007,$8000
	dc.w $0003,$0bb4,$0007,$8000
	dc.w $0002,$0bb5,$0007,$8000
	dc.w $0003,$0bb6,$0007,$8000
	dc.w $8000,$0000
	dc.l loc_06f3a6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f40e:
	dc.w $0003,$0bb8,$0008,$8000
	dc.w $0004,$0bb9,$0008,$8000
	dc.w $0003,$0bba,$0008,$8000
	dc.w $0004,$0bbb,$0008,$8000
	dc.w $0003,$0bbc,$0008,$8000
	dc.w $0004,$0bbd,$0008,$8000
	dc.w $0003,$0bbe,$0008,$8000
	dc.w $0004,$0bbf,$0008,$8000
	dc.w $0003,$0bc0,$0008,$8000
	dc.w $0004,$0bc1,$0008,$8000
	dc.w $0003,$0bc2,$0008,$8000
	dc.w $0004,$0bb7,$0008,$8000
	dc.w $8000,$0000
	dc.l loc_06f40e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f476:
	dc.w $8003,$186f
	dc.w $0002,$0a92,$0009,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f484:
	dc.w $0006,$0a9d,$000a,$7cff,$0000,$0008,$0000
	dc.w $0014,$0a9e,$000b,$7cff,$0000,$0008,$0000
	dc.w $000a,$0a9f,$000c,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f4b0:
	dc.w $0008,$0a9e,$000b,$7cff,$0000,$0008,$0000
	dc.w $000a,$0a9f,$000c,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f4ce:
	dc.w $0006,$0a9d,$000a,$7cff,$0000,$0008,$0000
	dc.w $0003,$0ab1,$000d,$7c00
	dc.w $0003,$0ab2,$000e,$7c00
	dc.w $0003,$0ab3,$000f,$7c00
	dc.w $0003,$0ab4,$0010,$7cff,$fffc,$0000,$0000
	dc.w $0003,$0ab5,$0011,$7c00
	dc.w $0003,$0ab6,$0012,$7c00
	dc.w $0004,$0ab7,$0013,$7c00
	dc.w $0008,$0a9f,$000c,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f52a:
	dc.w $0006,$0a9d,$000a,$7cff,$0000,$0008,$0000
	dc.w $0003,$0ab7,$0013,$7c00
	dc.w $0003,$0ab6,$0012,$7c00
	dc.w $0003,$0ab5,$0011,$7c00
	dc.w $0003,$0ab4,$0010,$7cff,$fffc,$0000,$0000
	dc.w $0003,$0ab3,$000f,$7c00
	dc.w $0003,$0ab2,$000e,$7c00
	dc.w $0004,$0ab1,$000d,$7c00
	dc.w $0008,$0a9f,$000c,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f586:
	dc.w $8003,$1870
	dc.w $0003,$0a92,$0009,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f594:
	dc.w $0003,$0a85,$0014,$84ff,$fff8,$0000,$0000
	dc.w $8000,$0000
	dc.l loc_06f5aa

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f5aa:
	dc.w $0004,$0ae3,$0014,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f5b4:
	dc.w $0003,$0a85,$0014,$84ff,$fff8,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f5c4:
	dc.w $0002,$0ae4,$0015,$8400
	dc.w $8000,$0000
	dc.l loc_06f5d4

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f5d4:
	dc.w $0004,$0ae4,$0015,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f5de:
	dc.w $0002,$0ae4,$0015,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f5e8:
	dc.w $8027,$ffdc,$0024
	dc.w $003c,$0b6d,$0001,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f5f8:
	dc.w $8017,$0020
	dc.l loc_06f742

	dc.w $8027,$ffe4,$0014
	dc.w $0005,$0ba1,$0000,$8000
	dc.w $8027,$ffe4,$000c
	dc.w $0004,$0ba2,$0000,$8000
	dc.w $0003,$0ba3,$0000,$8000
	dc.w $0010,$0ba4,$0000,$8000
	dc.w $0004,$0ba5,$0000,$8000
	dc.w $0005,$0ba6,$0000,$8000
	dc.w $8027,$ffec,$0004
	dc.w $000e,$0ba7,$0000,$8000
	dc.w $802b,$1c96
	dc.w $0006,$0ba8,$0000,$8000
	dc.w $0008,$0ba9,$0000,$8000
	dc.w $0014,$0baa,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f668:
	dc.w $0002,$0b06,$0000,$80ff,$0008,$0000,$0000
	dc.w $0002,$0b07,$0000,$80ff,$0008,$0000,$0000
	dc.w $0004,$0b08,$0000,$8000
	dc.w $0002,$0aff,$0000,$80ff,$0002,$0000,$0000
	dc.w $0002,$0ad4,$0000,$78ff,$fff8,$ffff,$0000
	dc.w $0002,$0ad3,$0000,$78ff,$fffe,$0000,$0000
	dc.w $0002,$0ada,$0000,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0ad9,$0000,$78ff,$0003,$0000,$0000
	dc.w $0002,$0ad8,$0000,$78ff,$0002,$0000,$0000
	dc.w $0002,$0ad7,$0000,$78ff,$0008,$0002,$0000
	dc.w $0002,$0ad6,$0000,$78ff,$0006,$0002,$0000
	dc.w $0002,$0ad5,$0000,$78ff,$0000,$0002,$0000
	dc.w $0004,$0c19,$0000,$80ff,$0008,$0000,$0000
	dc.w $0008,$0c1a,$0000,$80ff,$fff8,$0000,$0000
	dc.w $802b,$1c88
	dc.w $8027,$ffd4,$0024
	dc.w $0003,$0c1b,$0000,$8000
	dc.w $0026,$0aeb,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f742:;Butler Winpose?
	dc.w $0002,$0b06,$0000,$80ff,$0008,$0000,$0000
	dc.w $0002,$0b07,$0000,$80ff,$0008,$0000,$0000
	dc.w $0004,$0b08,$0000,$8000
	dc.w $0002,$0aff,$0000,$80ff,$0002,$0000,$0000
	dc.w $800f,$0032
	dc.w $8008,$0000,$8000,$0000,$0000

	dc.w $0003,$0ad4,$0000,$78ff,$fff8,$ffff,$0000
	dc.w $0003,$0ad3,$0000,$78ff,$fffe,$0000,$0000
	dc.w $0003,$0ada,$0000,$78ff,$fffc,$0000,$0000
	dc.w $0003,$0ad9,$0000,$78ff,$0003,$0000,$0000
	dc.w $0003,$0ad8,$0000,$78ff,$0002,$0000,$0000
	dc.w $0003,$0ad7,$0000,$78ff,$0008,$0002,$0000
	dc.w $0003,$0ad6,$0000,$78ff,$0006,$0002,$0000
	dc.w $0003,$0ad5,$0000,$78ff,$0000,$0002,$0000
	dc.w $8023,$0004,$0c1c,$0000,$8000
	dc.w $8027,$ffd4,$0014
	dc.w $0008,$0c1d,$0000,$80ff,$0008,$0000,$0000

	dc.w $800a
	dc.l loc_06f8ba

	dc.w $8027,$ffcc,$0024
	dc.w $0028,$0c1e,$0000,$8000
	dc.w $8027,$ffd4,$0014
	dc.w $0008,$0c1d,$0000,$80ff,$0008,$0000,$0000
	dc.w $8027,$ffec,$0014
	dc.w $0004,$0c1c,$0000,$80ff,$0000,$0000,$0001
	dc.w $8027,$ffec,$002c
	dc.w $0008,$0c1d,$0000,$80ff,$fff8,$0000,$0001
	dc.w $8027,$ffdc,$0034
	dc.w $0014,$0c1e,$0000,$80ff,$0000,$0000,$0001
	dc.w $8027,$ffec,$002c
	dc.w $0008,$0c1d,$0000,$80ff,$fff8,$0000,$0001
	dc.w $8027,$ffec
	dc.w $0014,$0004,$0c1c,$0000,$8000
	dc.w $8027,$ffd4,$0014
	dc.w $0008,$0c1d,$0000,$80ff,$0008,$0000,$0000
	dc.w $8027,$ffcc,$0024
	dc.w $0028,$0c1e,$0000,$8000
	dc.w $8001

loc_06f8ba:
	dc.w $0002,$0c28,$88ff,$fff8,$0068,$0000
	dc.w $0008,$0c28,$88ff,$fff8,$0068,$0000
	dc.w $0006,$0c28,$88ff,$fff8,$0068,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f8e0:
	dc.w $0018,$0c1f,$88ff,$0000,$0000,$1100

	dc.w $8017,$0080
	dc.l loc_06f900

	dc.w $8002,$1cc6
	dc.w $8000,$0000
	dc.l loc_06f90c

loc_06f900:
	dc.w $8002,$1cc7
	dc.w $8000,$0000
	dc.l loc_06f90c

loc_06f90c:
	dc.w $0010,$0c1f,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c20,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c21,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c20,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c21,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c20,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c22,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c23,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c24,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c25,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c26,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c27,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c26,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c20,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c21,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c20,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c21,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c20,$88ff,$0000,$0000,$1100
	dc.w $0008,$0c21,$88ff,$0000,$0000,$1100
	dc.w $038c,$0c1f,$88ff,$0000,$0000,$1100
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06f9fe:
	dc.w $0004,$0afb,$0000,$8400
	dc.w $0004,$0afc,$0000,$8400
	dc.w $0004,$0afd,$0000,$8400
	dc.w $0004,$0afe,$0000,$8400
	dc.w $0004,$0aff,$0000,$8400
	dc.w $0004,$0b00,$0000,$8400
	dc.w $0004,$0b01,$0000,$8400

loc_06fa36:
	dc.w $0006,$0b02,$0000,$8400
	dc.w $0006,$0b03,$0000,$8400
	dc.w $8000,$0000
	dc.l loc_06fa36

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fa4e:
	dc.w $0004,$0b5b,$0014,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fa58:
	dc.w $0004,$0b5c,$0015,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fa62:
	dc.w $802d,$ffe0,$ff98
	dc.w $0006,$0b53,$0016,$8400
	dc.w $0006,$0b52,$0017,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fa7a:
	dc.w $802d,$ffe0,$ff98
	dc.w $000c,$0b53,$0016,$8400
	dc.w $0006,$0b52,$0017,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fa92:
	dc.w $802d,$ffd8,$ff98
	dc.w $0002,$0b53,$0016,$8400
	dc.w $000a,$0b54,$0016,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0b53,$0016,$8400
	dc.w $0006,$0b52,$0017,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fac0:
	dc.w $802d,$ffd0,$ff98
	dc.w $0012,$0b54,$0016,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0b53,$0016,$8400
	dc.w $0006,$0b52,$0017,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fae6:
	dc.w $802e,$fff6,$ffa2
	dc.w $0006,$0b56,$0018,$8400
	dc.w $0006,$0b55,$0019,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fafe:
	dc.w $802e,$fff6,$ffa2
	dc.w $000c,$0b56,$0018,$8400
	dc.w $0006,$0b55,$0019,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fb16:
	dc.w $802e,$fff6,$ffa2
	dc.w $0002,$0b56,$0018,$8400
	dc.w $000a,$0b57,$0018,$8400
	dc.w $0006,$0b56,$0018,$8400
	dc.w $0006,$0b55,$0019,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fb3e:
	dc.w $802e,$fff0,$ff9e
	dc.w $0012,$0b57,$0018,$8400
	dc.w $0006,$0b56,$0018,$8400
	dc.w $0006,$0b55,$0019,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fb5e:
	dc.w $802f,$ffdc,$ffc0
	dc.w $0006,$0b59,$001a,$8400
	dc.w $0006,$0b58,$001b,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fb76:
	dc.w $802f,$ffdc,$ffc0
	dc.w $000c,$0b59,$001a,$8400
	dc.w $0006,$0b58,$001b,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fb8e:
	dc.w $802f,$ffd8,$ffbc
	dc.w $0002,$0b59,$001a,$8400
	dc.w $000a,$0b5a,$001a,$84ff,$0010,$0000,$0000
	dc.w $0006,$0b59,$001a,$8400
	dc.w $0006,$0b58,$001b,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fbbc:
	dc.w $802f,$ffd4,$ffb8
	dc.w $0012,$0b5a,$001a,$84ff,$0010,$0000,$0000
	dc.w $0006,$0b59,$001a,$8400
	dc.w $0006,$0b58,$001b,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fbe2:
	dc.w $802e,$fffe,$ff98
	dc.w $0006,$0b87,$001c,$8400
	dc.w $0006,$0abe,$001c,$84ff,$0000,$0008,$0000
	dc.w $0006,$0a9e,$001d,$84ff,$0000,$0008,$0000
	dc.w $0006,$0a9f,$001d,$84ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fc1c:
	dc.w $802d,$ffe0,$ff88
	dc.w $0006,$0b85,$001c,$84ff,$0008,$0000,$0000
	dc.w $0006,$0abe,$001c,$84ff,$0000,$0008,$0000
	dc.w $0006,$0a9e,$001d,$84ff,$0000,$0008,$0000
	dc.w $0006,$0a9f,$001d,$84ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fc5c:
	dc.w $802e,$0008,$ffa2
	dc.w $0005,$0abe,$001c,$8400
	dc.w $0005,$0abf,$001c,$8400
	dc.w $0005,$0b8a,$001e,$84ff,$0000,$0020,$0000
	dc.w $0005,$0b89,$001e,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fc8a:
	dc.w $0004,$0b8a,$001f,$7cff,$0000,$0008,$0000
	dc.w $0008,$0ac5,$001f,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fca8:
	dc.w $8030,$ffe8,$ffa0
	dc.w $0004,$0b88,$001c,$7c00
	dc.w $0004,$0b87,$001c,$7c00
	dc.w $0006,$0abf,$001c,$7c00
	dc.w $0006,$0b8b,$001e,$7c00
	dc.w $0006,$0b89,$001e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fcd8:
	dc.w $8030,$ffe8,$ffa0
	dc.w $0004,$0b86,$001c,$7c00
	dc.w $0004,$0b85,$001c,$7cff,$0008,$0000,$0000
	dc.w $0006,$0abf,$001c,$7c00
	dc.w $0006,$0b8b,$001e,$7c00
	dc.w $0006,$0b89,$001e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fd0e:
	dc.w $0004,$0b8a,$001f,$7cff,$0000,$0008,$0000
	dc.w $0008,$0ac3,$001f,$7c00
	dc.w $0008,$0b8a,$001f,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fd34:
	dc.w $0010,$0ac5,$001f,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fd44:
	dc.w $8030,$0000,$ff90
	dc.w $0013,$0b99,$001c,$7cff,$0000,$0000,$0001
	dc.w $0006,$0abf,$001c,$7c00
	dc.w $0006,$0b8b,$001e,$7c00
	dc.w $0006,$0b89,$001e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fd72:
	dc.w $8030,$fff0,$ffc0
	dc.w $0002,$0abf,$001c,$8400
	dc.w $0002,$0b8a,$001e,$84ff,$0000,$0020,$0000
	dc.w $0002,$0b9a,$001e,$84ff,$0018,$0000,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fd9e:
	dc.w $8000,$0000
	dc.l loc_06fbe2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fda6:
	dc.w $8037
	dc.l loc_06ea74

	dc.w $8002,$188d
	dc.w $8043,$0026
	dc.w $8044,$002e
	dc.w $0002,$0b8a,$0000,$7cff,$0000,$0008,$0000
	dc.w $8024
	dc.w $0004,$0b66,$0000,$7cff,$fff0,$0000,$0000
	dc.w $8008,$fffc,$0000,$0000,$0000
	dc.w $0002,$0ab6,$0000,$7c00
	dc.w $0003,$0aca,$0000,$7c00
	dc.w $0003,$0acb,$0000,$7c00
	dc.w $8007,$ffd8,$0000
	dc.w $0004,$0acc,$0000,$7c00

	dc.w $804a
	dc.l $fffe8000,$fffaf600

	dc.w $0004,$0ab3,$0000,$7c00
	dc.w $0003,$0ab2,$0000,$7c00
	dc.w $0003,$0ab1,$0000,$7c00
	dc.w $0006,$0a9f,$0000,$7cff,$0000,$0008,$0000
	dc.w $803a,$df00
	dc.w $0002,$0b8d,$0000,$7cff,$0004,$0000,$0000
	dc.w $803a,$0000
	dc.w $0002,$0b8d,$0000,$7cff,$0004,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fe5c:
	dc.w $8003,$1870
	dc.w $0003,$0a92,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fe6a:
	dc.w $0006,$0b8c,$0000,$7cff,$0008,$0000,$0000
	dc.w $0006,$0ac6,$0000,$7cff,$0010,$0000,$0000
	dc.w $0004,$0ac7,$0000,$7cff,$0008,$0000,$0000
	dc.w $0004,$0ac8,$0000,$7cff,$0008,$0000,$0000
	dc.w $803a,$df00
	dc.w $0002,$0b8d,$0000,$7cff,$0005,$0000,$0000
	dc.w $803a,$0000
	dc.w $0002,$0b8d,$0000,$7cff,$0005,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fec8:
	dc.w $0006,$0b8c,$0000,$7cff,$0008,$0000,$0000
	dc.w $0006,$0ac6,$0000,$7cff,$0010,$0000,$0000
	dc.w $0004,$0ac7,$0000,$7cff,$0008,$0000,$0000
	dc.w $0004,$0ac8,$0000,$7cff,$0008,$0000,$0000
	dc.w $0004,$0b8d,$0000,$7cff,$0005,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06ff10:
	dc.w $0008,$0af5,$0020,$7c00
	dc.w $0008,$0af6,$0020,$7c00
	dc.w $0008,$0af7,$0020,$7c00
	dc.w $0008,$0af8,$0020,$7c00
	dc.w $8000,$0000
	dc.l loc_06ff10

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06ff38:
	dc.w $0004,$0b66,$0000,$7cff,$fff0,$0000,$0000

	dc.w $8008
	dc.l $fffc0000,$00000000

	dc.w $0002,$0ab6,$0000,$7c00
	dc.w $0003,$0aca,$0000,$7c00
	dc.w $0003,$0acb,$0000,$7c00
	dc.w $8007,$ffd8,$0000
	dc.w $0004,$0acc,$0000,$7c00

	dc.w $804a
	dc.l $fffe8000,$fffaf600

	dc.w $0004,$0ab3,$0000,$7c00
	dc.w $0003,$0ab2,$0000,$7c00
	dc.w $0003,$0ab1,$0000,$7c00
	dc.w $0006,$0a9f,$0000,$7cff,$0000,$0008,$0000
	dc.w $0004,$0b8d,$0000,$7c00
	dc.w $0003,$0b06,$0000,$78ff,$0008,$0000,$0000
	dc.w $0005,$0b07,$0000,$78ff,$0010,$0000,$0000
	dc.w $0014,$0b08,$0000,$78ff,$0010,$0000,$0000
	dc.w $803a,$df00
	dc.w $0004,$0b09,$0000,$78ff,$0008,$0000,$0000
	dc.w $803a,$0000
	dc.w $0006,$0b09,$0000,$78ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06fffe:
	dc.w $8030,$ffe8,$ffb8

loc_070004:
	dc.w $0003,$0b5d,$001c,$7cff,$0000,$0000,$0500
	dc.w $0001,$0b5e,$001c,$7cff,$0000,$0000,$0500
	dc.w $8000,$0000
	dc.l loc_070004

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070028:
	dc.w $8030,$ffe8,$ffa8

loc_07002e:
	dc.w $0002,$0b86,$001c,$7cff,$0000,$0000,$0600
	dc.w $0002,$0b86,$001c,$7cff,$fffd,$0000,$0200
	dc.w $0002,$0b86,$001c,$7cff,$0000,$0000,$0400
	dc.w $0002,$0b86,$001c,$7cff,$0003,$0000,$0700
	dc.w $8000,$0000
	dc.l loc_07002e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07006e:
	dc.w $8030,$ffe8,$ffb8

loc_070074:
	dc.w $0002,$0abf,$001c,$7cff,$0000,$0002,$0800
	dc.w $0002,$0abf,$001c,$7cff,$0002,$ffff,$0900
	dc.w $0002,$0abf,$001c,$7cff,$fffe,$0001,$0800
	dc.w $0002,$0abf,$001c,$7cff,$0000,$fffe,$0900
	dc.w $0002,$0abf,$001c,$7cff,$0002,$0001,$0800
	dc.w $0002,$0abf,$001c,$7cff,$fffe,$ffff,$0900
	dc.w $8000,$0000
	dc.l loc_070074

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0700d0:
	dc.w $0008,$0af5,$0020,$8400
	dc.w $0008,$0af6,$0020,$8400
	dc.w $0008,$0af7,$0020,$8400
	dc.w $0008,$0af8,$0020,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Attacks animations
loc_0700f2:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_070124

	dc.w $803e,$0861,$0500
	dc.w $803f,$0702,$0401,$0701
	dc.w $8040,$0800,$0304,$08ff
	dc.w $8042,$0501
	dc.w $8041,$0201,$0425

	dc.w $8036
	dc.l loc_06ef7e

loc_070124:
	dc.w $8005,$1897
	dc.w $8027,$ffdc,$0024
	dc.w $0003,$0a82,$0021,$7cff,$0004,$0001,$0000
	dc.w $8027,$ffe4,$003c
	dc.w $0004,$0a81,$0022,$78ff,$0004,$0001,$0000
	dc.w $8027,$ffe4,$002c
	dc.w $0004,$0a80,$0023,$78ff,$0004,$0001,$0000
	dc.w $8027,$ffdc,$0024
	dc.w $0004,$0a82,$0021,$7cff,$0004,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07017a:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0701ac

	dc.w $803e,$0830,$0600
	dc.w $803f,$0502,$0301,$0501
	dc.w $8040,$0804,$0404,$08ff
	dc.w $8042,$0601
	dc.w $8041,$0201,$1c3c

	dc.w $8036
	dc.l loc_06ef7e

loc_0701ac:
	dc.w $8005,$18aa
	dc.w $8027,$ffe4,$0034
	dc.w $0004,$0b7b,$0024,$78ff,$0005,$0001,$0000
	dc.w $8027,$ffe4,$0044
	dc.w $0004,$0a7c,$0025,$78ff,$0004,$0001,$0000
	dc.w $8027,$ffe4,$003c
	dc.w $0004,$0a81,$0026,$78ff,$0004,$0001,$0000
	dc.w $8027,$ffdc,$0024
	dc.w $0004,$0a82,$0021,$7cff,$0004,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070202:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_070234

	dc.w $803e,$0850,$0600
	dc.w $803f,$0502,$0301,$0501
	dc.w $8040,$0804,$0404,$08ff
	dc.w $8042,$0601
	dc.w $8041,$0301,$122e

	dc.w $8036
	dc.l loc_06ef8a

loc_070234
	dc.w $8005,$18a7
	dc.w $8027,$ffe4,$001c
	dc.w $0002,$0a94,$0027,$8800
	dc.w $8027,$ffe4,$003c
	dc.w $0002,$0a95,$0028,$8800

	dc.w $800a
	dc.l loc_070274

	dc.w $8027,$ffec,$0034
	dc.w $0004,$0a96,$0029,$7800
	dc.w $8028
	dc.w $0008,$0a98,$002a,$7800
	dc.w $8001

loc_070274
	dc.w $0003,$0beb,$74ff,$ffa0,$0030,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070282:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0702b0

	dc.w $803e,$082b,$0600
	dc.w $803f,$0c04,$0803,$0c02
	dc.w $8040,$0802,$0308,$08ff
	dc.w $8041,$0201,$0422

	dc.w $8036
	dc.l loc_06ef7e

loc_0702b0:
	dc.w $8004,$187a
	dc.w $0003,$0b79,$002b,$7800
	dc.w $802b,$1c8c
	dc.w $8027,$ffec,$002c
	dc.w $8045,$0001
	dc.w $0008,$0a89,$002c,$78ff,$fffe,$0000,$0000
	dc.w $8027,$ffec,$0024
	dc.w $0008,$0a88,$002d,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0702ee:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_07031c

	dc.w $803e,$082b,$0200
	dc.w $803f,$0c04,$0803,$0c02
	dc.w $8040,$0700,$0606,$09ff
	dc.w $8041,$0201,$1736

	dc.w $8036
	dc.l loc_06ef7e

loc_07031c:
	dc.w $8004,$187a
	dc.w $8027,$ffdc,$0014
	dc.w $0004,$0a85,$002e,$7c00
	dc.w $8027,$fff4,$0024
	dc.w $0002,$0a90,$002f,$7cff,$0008,$0000,$0000
	dc.w $8045,$0001
	dc.w $8027,$fff4,$005c
	dc.w $0006,$0a91,$0030,$7c00
	dc.w $8027,$fff4,$0024
	dc.w $0005,$0a90,$002f,$7cff,$0008,$0000,$0000
	dc.w $8027,$ffdc,$0014
	dc.w $0004,$0a85,$002e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070378:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0703a6

	dc.w $803e,$0a29,$0600
	dc.w $803f,$0a04,$0602,$0a02
	dc.w $8040,$0602,$0405,$06ff
	dc.w $8041,$0101,$0426

	dc.w $8036
	dc.l loc_06ef8a

loc_0703a6:
	dc.w $8004,$187a
	dc.w $8027,$ffdc,$000c
	dc.w $0004,$0b64,$0031,$7800
	dc.w $8045,$0001
	dc.w $8027,$ffdc,$003c
	dc.w $0005,$0b65,$0032,$7800
	dc.w $8027,$ffdc,$000c
	dc.w $0006,$0b64,$0031,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0703da:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_070408

	dc.w $803e,$0875,$0500
	dc.w $803f,$1a0a,$1206,$1a06
	dc.w $8040,$0c00,$0508,$10ff
	dc.w $8041,$0401,$f82b

	dc.w $8036
	dc.l loc_06ef7e

loc_070408:
	dc.w $8004,$18a9
	dc.w $0003,$0b9c,$0033,$7c00
	dc.w $802b,$1c8a

	dc.w $800a
	dc.l loc_070452

	dc.w $0002,$0b9d,$0034,$7800
	dc.w $8045,$0004
	dc.w $0002,$0b9e,$0035,$7800
	dc.w $0006,$0b9f,$0036,$7800
	dc.w $0008,$0b9f,$0037,$7800
	dc.w $8027,$ffe4,$0034
	dc.w $0008,$0ba0,$0038,$7c00
	dc.w $8001

loc_070452:
	dc.w $0002,$0bde,$74ff,$0040,$00a0,$0e00
	dc.w $0002,$0bdf,$74ff,$ffc0,$0080,$0e00
	dc.w $0003,$0be0,$74ff,$ffb0,$0030,$0e00
	dc.w $0003,$0be1,$74ff,$ffb0,$0030,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070484:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0704b2

	dc.w $803e,$0854,$0100
	dc.w $803f,$1006,$0004,$1004
	dc.w $8040,$0703,$0708,$13ff
	dc.w $8041,$0601,$0c39

	dc.w $8036
	dc.l loc_06ef7e

loc_0704b2:
	dc.w $8027,$ffe4,$0024
	dc.w $0002,$0a82,$0021,$7cff,$0002,$0001,$0000
	dc.w $8004,$1898
	dc.w $0005,$0a7d,$0039,$7cff,$0002,$0000,$0000
	dc.w $8045,$0004

	dc.w $800a
	dc.l loc_07053c

	dc.w $8027,$ffe4,$0044
	dc.w $0003,$0a7e,$003a,$78ff,$0002,$0001,$0000
	dc.w $803e,$0854,$0600
	dc.w $803f,$1006,$1204,$1004
	dc.w $8027,$ffe4,$002c
	dc.w $0005,$0a7f,$003b,$78ff,$0002,$0002,$0000
	dc.w $000a,$0b7c,$003c,$7cff,$0000,$ffff,$0000
	dc.w $8027,$ffdc,$0024
	dc.w $0009,$0a82,$0021,$7cff,$0002,$0001,$0000
	dc.w $8001

loc_07053c:
	dc.w $0003,$0be2,$74ff,$ffa2,$0061,$0e00
	dc.w $0004,$0be3,$74ff,$ffa2,$0061,$0e00
	dc.w $0004,$0be4,$74ff,$ffd2,$0031,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070562:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_070590

	dc.w $803e,$0854,$0900
	dc.w $803f,$160a,$0a05,$1608
	dc.w $8040,$0a04,$0707,$13ff
	dc.w $8041,$0c01,$0e2a

	dc.w $8036
	dc.l loc_06ef8a

loc_070590:
	dc.w $0004,$0b7e,$003d,$7c00
	dc.w $8004,$1898
	dc.w $0003,$0b7f,$003e,$7c00
	dc.w $8045,$0004

	dc.w $800a
	dc.l loc_07060e

	dc.w $803c,$0000
	dc.w $8027,$ffec,$002c
	dc.w $0003,$0a83,$003f,$78ff,$fff8,$0000,$0000
	dc.w $803e,$0854,$05ff
	dc.w $0004,$0a84,$0040,$78ff,$fff8,$0000,$0000
	dc.w $0004,$0a84,$0041,$78ff,$fff8,$0000,$0000
	dc.w $0005,$0b80,$0042,$78ff,$fff8,$0000,$0000
	dc.w $803c,$0004
	dc.w $8028
	dc.w $0005,$0b81,$003e,$7c00
	dc.w $0005,$0b7e,$003d,$7c00
	dc.w $8001

loc_07060e:
	dc.w $0003,$0c59,$74ff,$ffb8,$0050,$0e00
	dc.w $0004,$0bec,$74ff,$ffb8,$0088,$0e00
	dc.w $0002,$0bed,$74ff,$ffb8,$0078,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070634:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_070662

	dc.w $803e,$082d,$0500
	dc.w $803f,$180a,$1206,$1806
	dc.w $8040,$0702,$050a,$0eff
	dc.w $8041,$0401,$f81e

	dc.w $8036
	dc.l loc_06ef7e

loc_070662:
	dc.w $8004,$18a1
	dc.w $8027,$ffc4,$fff4
	dc.w $0003,$0b7a,$0043,$8800
	dc.w $802a,$0033
	dc.w $8027,$ffc4,$0014
	dc.w $0002,$0a86,$0044,$7800
	dc.w $8045,$0004
	dc.w $8027,$ffc4,$002c
	dc.w $000a,$0a87,$0045,$7800
	dc.w $8027,$ffdc,$0014
	dc.w $0008,$0a86,$0044,$7800
	dc.w $0006,$0a85,$002e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0706b0:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0706e4

	dc.w $803e,$086d,$0500
	dc.w $803f,$180a,$1206,$1806
	dc.w $8040,$0704,$0708,$10ff
	dc.w $8041,$0401,$0834
	dc.w $803c,$0000
	dc.w $803b,$d000,$fa12,$0000

loc_0706e4:
	dc.w $8027,$ffdc,$0024
	dc.w $0003,$0a82,$0021,$7cff,$0002,$0001,$0000
	dc.w $802b,$1c8d
	dc.w $8004,$189e
	dc.w $8008,$0002,$8000,$0000,$0000
	dc.w $8027,$fff4,$0024
	dc.w $0002,$0a8a,$0046,$78ff,$0008,$0000,$0000
	dc.w $8027,$fffc,$0024
	dc.w $8008,$0001,$0000,$0000,$0000
	dc.w $0002,$0a8b,$0047,$78ff,$0008,$0000,$0000
	dc.w $8045,$0004
	dc.w $8027,$fffc,$0044
	dc.w $0003,$0a8c,$0048,$88ff,$0010,$0000,$0000
	dc.w $8023
	dc.w $8027,$000c,$005c
	dc.w $0005,$0a8d,$0049,$78ff,$0008,$0000,$0000
	dc.w $8027,$000c,$0054
	dc.w $0006,$0a8e,$004a,$78ff,$0008,$0000,$0000
	dc.w $803c,$0000
	dc.w $8027,$fff4,$002c
	dc.w $0006,$0a8f,$004b,$7c00
	dc.w $8027,$ffdc,$0024
	dc.w $0007,$0b7d,$004c,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0707a0:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0707ce

	dc.w $803e,$0a2d,$0b00
	dc.w $803f,$140a,$0805,$1408
	dc.w $8040,$0603,$060c,$14ff
	dc.w $8041,$0101,$fc20

	dc.w $8036
	dc.l loc_06ef8a

loc_0707ce:
	dc.w $8004,$18a4
	dc.w $8027,$ffe4,$001c
	dc.w $0004,$0b66,$004d,$7800
	dc.w $0002,$0a9a,$004e,$7800
	dc.w $8045,$0004
	dc.w $804e,$0009,$c000,$ffff,$3000
	dc.w $8011,$001c,$0004,$e800,$c0e8
	dc.w $8027,$ffdc,$004c
	dc.w $0003,$0a9b,$004f,$78ff,$0008,$0000,$0000
	dc.w $0004,$0a9b,$004f,$78ff,$0008,$0000,$0000
	dc.w $0005,$0a9b,$004f,$78ff,$0008,$0000,$0000
	dc.w $8011,$001d,$0005,$e800,$c0e8,$ff00
	dc.w $8027,$ffe4,$001c
	dc.w $0008,$0a9a,$004e,$7800
	dc.w $000c,$0b66,$004d,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070854:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_070882

	dc.w $803e,$0932,$0500
	dc.w $803f,$0a04,$0a02,$0a02
	dc.w $8040,$0400,$040c,$ffff
	dc.w $8041,$0201,$1230

	dc.w $8036
	dc.l loc_06ef96

loc_070882:
	dc.w $8004,$18aa
	dc.w $8027,$ffec,$0014
	dc.w $0004,$0aa4,$0050,$88ff,$0000,$0008,$0000
	dc.w $8045,$0002
	dc.w $8027,$ffe4,$0034
	dc.w $000c,$0aa5,$0051,$78ff,$0000,$0008,$0000
	dc.w $8027,$ffec,$0014
	dc.w $0004,$0aa4,$0050,$88ff,$0000,$0008,$0000
	dc.w $8028
	dc.w $0004,$0a9f,$000c,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0708d8:
	dc.w $8037
	dc.l loc_06e178
	dc.w $8038
	dc.l loc_07090c

	dc.w $803e,$1952,$0200
	dc.w $803f,$0c04,$0603,$0c02
	dc.w $8040,$0800,$03ff,$ffff
	dc.w $8041,$0101,$f709
	dc.w $803c,$0008
	dc.w $803b,$cce0,$f20a,$0000

loc_07090c:
	dc.w $8004,$18aa
	dc.w $0003,$0aac,$0052,$78ff,$0000,$0008,$0000
	dc.w $8045,$0002
	dc.w $0016,$0aad,$0053,$78ff,$0000,$fff8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070932:
	dc.w $0003,$0aac,$0052,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070942:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_070970

	dc.w $803e,$092a,$0100
	dc.w $803f,$0e04,$0a03,$0e02
	dc.w $8040,$0800,$0410,$ffff
	dc.w $8041,$0201,$0023

	dc.w $8036
	dc.l loc_06ef96

loc_070970:
	dc.w $8004,$187a
	dc.w $0004,$0b67,$0054,$78ff,$0000,$0008,$0000
	dc.w $8045,$0002
	dc.w $8027,$ffd4,$0044
	dc.w $0010,$0b68,$0055,$78ff,$0008,$0000,$0000
	dc.w $8028
	dc.w $0006,$0b67,$0054,$78ff,$0000,$0008,$0000
	dc.w $0004,$0a9e,$000b,$7cff,$0000,$0008,$0000
	dc.w $0004,$0a9f,$000c,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0709c8:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_0709fc

	dc.w $803e,$092a,$0100
	dc.w $803f,$0c04,$0603,$0c02
	dc.w $8040,$0800,$040e,$ffff
	dc.w $8041,$0201,$f126
	dc.w $803c,$0008
	dc.w $803b,$cce8,$f20a,$0000

loc_0709fc:
	dc.w $8004,$187a
	dc.w $0004,$0aaa,$0056,$78ff,$0000,$0008,$0000
	dc.w $8045,$0002
	dc.w $8027,$ffd4,$0044
	dc.w $000e,$0aaf,$0057,$78ff,$fff0,$0008,$0000
	dc.w $8028
	dc.w $000a,$0aaa,$0056,$78ff,$0000,$0008,$0000
	dc.w $0006,$0b67,$0054,$78ff,$0000,$0008,$0000
	dc.w $0004,$0a9e,$000b,$7cff,$0000,$0008,$0000
	dc.w $0004,$0a9f,$000c,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070a62:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_070a90

	dc.w $803e,$0954,$0200
	dc.w $803f,$1808,$0e06,$1804
	dc.w $8040,$0800,$0607,$ffff
	dc.w $8041,$0301,$0434

	dc.w $8036
	dc.l loc_06ef96

loc_070a90:
	dc.w $8004,$18a9
	dc.w $8027,$ffdc,$001c
	dc.w $0002,$0aa0,$0058,$7cff,$0000,$0004,$0000
	dc.w $802b,$1c89
	dc.w $8027,$ffe4,$002c

	dc.w $800a
	dc.l loc_070b1a

	dc.w $0002,$0aa1,$0059,$7cff,$0000,$0008,$0000
	dc.w $8027,$ffe4,$003c
	dc.w $0002,$0aa2,$005a,$78ff,$0000,$0008,$0000
	dc.w $8045,$0004
	dc.w $0003,$0b82,$005b,$78ff,$0004,$0004,$0000
	dc.w $8028
	dc.w $0004,$0aa3,$005c,$78ff,$0000,$0008,$0000
	dc.w $0004,$0a9e,$000b,$7cff,$0000,$0008,$0000
	dc.w $0004,$0a9f,$000c,$7cff,$0000,$0008,$0000
	dc.w $8001

loc_070b1a:
	dc.w $0002,$0be5,$78ff,$fff8,$00a8,$0e00
	dc.w $0002,$0be6,$74ff,$ffb0,$0078,$0e00
	dc.w $0003,$0be7,$74ff,$ffb4,$001c,$0e00
	dc.w $0003,$0be8,$74ff,$ffc0,$0010,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070b4c:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_070b7a

	dc.w $803e,$0976,$0600
	dc.w $803f,$1808,$1006,$1804
	dc.w $8040,$0800,$0606,$ffff
	dc.w $8041,$0801,$0437

	dc.w $8036
	dc.l loc_06ef96

loc_070b7a:
	dc.w $8004,$18a9
	dc.w $0004,$0aa6,$005d,$7800
	dc.w $802b,$1c8b
	dc.w $0002,$0aa7,$005e,$7800
	dc.w $8027,$ffe4,$003c
	dc.w $8045,$0004

	dc.w $800a
	dc.l loc_070be6

	dc.w $0002,$0aa8,$005f,$78ff,$fff8,$0000,$0000
	dc.w $8027,$ffe4,$0024
	dc.w $0004,$0aa9,$0060,$8800
	dc.w $0008,$0aa9,$0061,$8800
	dc.w $8028
	dc.w $0006,$0a9e,$000b,$7cff,$0000,$0008,$0000
	dc.w $0006,$0a9f,$000c,$7cff,$0000,$0008,$0000
	dc.w $8001

loc_070be6:
	dc.w $0002,$0be9,$74ff,$ffa8,$0040,$0e00
	dc.w $0004,$0bea,$74ff,$ffa8,$004c,$0e00
	dc.w $0002,$0beb,$74ff,$ff9c,$005c,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070c0c:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_070c3a

	dc.w $803e,$092c,$0200
	dc.w $803f,$1408,$0e05,$1404
	dc.w $8040,$0800,$0606,$ffff
	dc.w $8041,$0101,$fe2a

	dc.w $8036
	dc.l loc_06ef96

loc_070c3a:
	dc.w $8004,$18a1
	dc.w $0006,$0aaa,$0062,$78ff,$0000,$0008,$0000
	dc.w $802b,$1c8f
	dc.w $8045,$0004
	dc.w $8027,$ffdc,$004c
	dc.w $0006,$0aab,$0063,$78ff,$0000,$0008,$0000
	dc.w $8028
	dc.w $000a,$0aaa,$0062,$78ff,$0000,$0008,$0000
	dc.w $0006,$0b67,$0054,$78ff,$0000,$0008,$0000
	dc.w $0004,$0a9e,$000b,$7cff,$0000,$0008,$0000
	dc.w $0004,$0a9f,$000c,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070ca4:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_070cd2

	dc.w $803e,$0857,$0e00
	dc.w $803f,$2406,$100a,$2408
	dc.w $8040,$0604,$1204,$1c00
	dc.w $8041,$0201,$183a

	dc.w $8036
	dc.l loc_06ef7e

loc_070cd2:
	dc.w $802c
	dc.w $8027,$ffdc,$0014
	dc.w $0006,$0b7a,$0043,$7c00
	dc.w $802b,$1c88
	dc.w $0007,$0b9c,$0033,$7c00
	dc.w $8027,$ffe4,$0024
	dc.w $8004,$1898
	dc.w $0003,$0a7d,$0039,$7cff,$0002,$0000,$0000
	dc.w $8008,$000c,$0000,$0000,$0000
	dc.w $8011,$001d,$0005,$e000,$d0e8,$0000
	dc.w $8027,$ffe4,$0044
	dc.w $0002,$0a7e,$0064,$78ff,$0002,$0001,$0000
	dc.w $8011,$001d,$0005,$2800,$e0e8,$0000
	dc.w $8045,$0006
	dc.w $8008,$0000,$0000,$0000,$0000
	dc.w $0002,$0aee,$0065,$78ff,$0002,$0000,$0000
	dc.w $0002,$0aee,$0065,$78ff,$0006,$0000,$0000
	dc.w $0002,$0aee,$0066,$78ff,$0003,$0000,$0000
	dc.w $0002,$0aee,$0066,$78ff,$0005,$0000,$0000
	dc.w $0002,$0aee,$0066,$78ff,$0004,$0000,$0000
	dc.w $8027,$ffe4,$002c
	dc.w $0006,$0adc,$0067,$78ff,$0000,$ffff,$0000
	dc.w $8027,$ffdc,$0024
	dc.w $0008,$0b7c,$003c,$7cff,$0000,$ffff,$0000
	dc.w $8048,$02c0,$0008
	dc.w $0008,$0a82,$0021,$7cff,$0002,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070dce:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_070dfc

	dc.w $803e,$092a,$0100
	dc.w $803f,$1806,$0a06,$1808
	dc.w $8040,$0404,$1705,$0700
	dc.w $8041,$0201,$0820

	dc.w $8036
	dc.l loc_06ef7e

loc_070dfc:
	dc.w $802c
	dc.w $0005,$0a92,$0009,$7800
	dc.w $8011,$001c,$0004,$0000,$f000
	dc.w $8045,$0004
	dc.w $803c,$0008

	dc.w $804b
	dc.l $00030000,$fff9c000,$00008000

	dc.w $8002,$186f
	dc.w $0008,$0b83,$0068,$7800
	dc.w $802b,$1c8c
	dc.w $0006,$0aaa,$0069,$78ff,$0000,$0008,$0000
	dc.w $8004,$18a1
	dc.w $8027,$ffec,$0024
	dc.w $0004,$0a88,$006a,$7800
	dc.w $8027,$ffec,$002c
	dc.w $0005,$0a89,$006b,$7800
	dc.w $8027,$ffec,$0024
	dc.w $0003,$0b84,$006c,$78ff,$fffc,$fffc,$0000
	dc.w $8028,$803c,$0000
	dc.w $8011,$001d,$0005,$0800,$30f0,$ff00
	dc.w $0004,$0a92,$0009,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_070e94:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_070ed6

	dc.w $8039,$0001
	dc.w $803e,$3834,$0f00
	dc.w $803f,$1808,$080a,$1808
	dc.w $8040,$0000,$080c,$1300
	dc.w $8043,$0005
	dc.w $8041,$0a07,$1038
	dc.w $8048,$0550,$000a
	dc.w $8048,$00bc,$0000

	dc.w $8036
	dc.l loc_06ef7e

loc_070ed6:
	dc.w $802c

	dc.w $800a
	dc.l loc_070fb4

	dc.w $8027,$ffe4,$002c
	dc.w $0003,$0adb,$006d,$78ff,$0002,$0000,$0000
	dc.w $802a,$0036
	dc.w $0003,$0aec,$006e,$78ff,$fff6,$0000,$0000
	dc.w $8045,$000a
	dc.w $8027,$ffe4,$0044
	dc.w $0002,$0aee,$006f,$78ff,$0004,$0000,$0000
	dc.w $8007,$0020,$0000
	dc.w $800f,$0033
	dc.w $8004,$18c9
	dc.w $804b,$0000,$6000,$fff9,$3800,$0000,$7000
	dc.w $8011,$001d,$0005,$0800,$20c0,$0000
	dc.w $8027,$ffec,$001c
	dc.w $0002,$0af0,$0070,$7800
	dc.w $803e,$3854,$0dff
	dc.w $803f,$1008,$0205,$1008
	dc.w $000a,$0af0,$0071,$7800
	dc.w $8027,$ffec,$000c
	dc.w $0007,$0af1,$0072,$78ff,$0004,$0004,$0000
	dc.w $8028
	dc.w $0007,$0af2,$0073,$7800
	dc.w $0006,$0a9f,$000c,$7cff,$0000,$0008,$0000
	dc.w $8003,$1870
	dc.w $8048,$0550,$0003
	dc.w $8011,$001d,$0005,$0800,$30f0,$ff00
	dc.w $0003,$0a92,$0009,$7c00
	dc.w $8001

loc_070fb4:
	dc.w $0001,$0c11,$74ff,$0002,$0060,$1200
	dc.w $0001,$0c12,$74ff,$0002,$0060,$1200
	dc.w $0001,$0c13,$74ff,$0002,$0060,$1200
	dc.w $0001,$0c14,$74ff,$0010,$0000,$1200
	dc.w $0001,$0c15,$74ff,$ffe0,$0000,$1200
	dc.w $0001,$0c16,$74ff,$ffc0,$0000,$1200

	dc.w $8012
	dc.l loc_071264
	dc.w $0002

	dc.w $0002,$0c17,$74ff,$ffa0,$0000,$1200
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_071012:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_071058

	dc.w $8039,$0001
	dc.w $803e,$2834,$1800
	dc.w $8046,$10f0
	dc.w $803f,$1808,$0009,$1808
	dc.w $8040,$0000,$0c14,$1b00
	dc.w $8043,$0005
	dc.w $8041,$0a07,$1038
	dc.w $8048,$0550,$000a
	dc.w $8048,$00bc,$0000

	dc.w $8036
	dc.l loc_06ef7e

loc_071058:
	dc.w $802c

	dc.w $800a
	dc.l loc_071160

	dc.w $8027,$ffe4,$002c
	dc.w $0006,$0adb,$006d,$78ff,$0002,$0000,$0000
	dc.w $802a,$0036
	dc.w $8008,$0002,$0000,$0000,$0000
	dc.w $0006,$0aec,$0074,$78ff,$fff6,$0000,$0000
	dc.w $8045,$0010
	dc.w $8023
	dc.w $8027,$ffe4,$0044
	dc.w $0004,$0aee,$0075,$78ff,$0004,$0000,$0000
	dc.w $8007,$0020,$0000
	dc.w $803e,$3856,$2b00
	dc.w $803f,$1208,$0205,$0e08
	dc.w $8046,$0000
	dc.w $800f,$0033
	dc.w $8004,$18c9

	dc.w $804b
	dc.l $00010000,$fff64000,$00008000

	dc.w $8011,$001d,$0005,$0800,$20c0,$0000
	dc.w $8027,$ffec,$001c
	dc.w $0002,$0af0,$0070,$7800
	dc.w $803e,$3856,$2b00
	dc.w $0006,$0af0,$0071,$7800
	dc.w $802b,$1c92
	dc.w $803f,$0a02,$0203,$0a08
	dc.w $0008,$0af0,$0071,$7800
	dc.w $8027,$ffec,$000c
	dc.w $0008,$0af1,$0072,$78ff,$0004,$0004,$0000
	dc.w $8028
	dc.w $0008,$0af2,$0073,$7800
	dc.w $0008,$0a9f,$000c,$7cff,$0000,$0008,$0000
	dc.w $8003,$1870
	dc.w $8048,$0550,$0003
	dc.w $8011,$001d,$0005,$0800,$30f0,$ff00
	dc.w $0003,$0a92,$0009,$7c00
	dc.w $8001

loc_071160:
	dc.w $0002,$0c11,$74ff,$0002,$0060,$1200
	dc.w $0002,$0c12,$74ff,$0002,$0060,$1200
	dc.w $0002,$0c13,$74ff,$0002,$0060,$1200
	dc.w $0001,$0c14,$74ff,$0020,$0000,$1200
	dc.w $0001,$0c14,$74ff,$0010,$0000,$1200
	dc.w $0001,$0c15,$74ff,$ffe0,$0000,$1200
	dc.w $0001,$0c15,$74ff,$ffd0,$0000,$1200
	dc.w $0001,$0c16,$74ff,$ffc0,$0000,$1200
	dc.w $0001,$0c16,$74ff,$ffb0,$0000,$1200

	dc.w $8012
	dc.l loc_071264
	dc.w $0004

	dc.w $0002,$0c17,$74ff,$ffa0,$0000,$1200
	dc.w $0002,$0c17,$74ff,$ffa0,$0000,$1201
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0711ee:
	dc.w $8012,$0007,$126c,$0008
	dc.w $0002,$0c18,$74ff,$ffc0,$0000,$1200
	dc.w $0002,$0c18,$74ff,$ffc0,$0000,$1201
	dc.w $0002,$0c57,$74ff,$ffc0,$0000,$1200
	dc.w $0002,$0c57,$74ff,$ffc0,$0000,$1201
	dc.w $0002,$0c2a,$74ff,$ffc0,$0000,$1200
	dc.w $0002,$0c2a,$74ff,$ffc0,$0000,$1201
	dc.w $0002,$0c2b,$74ff,$ffc0,$0000,$1200
	dc.w $0002,$0c2c,$74ff,$ffc0,$0000,$1200
	dc.w $0002,$0c58,$74ff,$ffc0,$0000,$1200
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_071264:
	dc.w $ffc8,$0000,$0020,$0070
	dc.w $ff80,$0020,$0020,$0050

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_071274:
	dc.w $8037
	dc.l loc_06e258
	dc.w $8038
	dc.l loc_0712ba

	dc.w $8039,$0000
	dc.w $803e,$2874,$1700
	dc.w $8046,$20f8
	dc.w $803f,$0c04,$0003,$0c03
	dc.w $8040,$0000,$0802,$1c00
	dc.w $8042,$0902
	dc.w $8041,$0401,$1039
	dc.w $8048,$0550,$0007
	dc.w $8048,$00bc,$0000

	dc.w $8036
	dc.l loc_06ef7e

loc_0712ba:
	dc.w $802c
	dc.w $8027,$ffe4,$002c
	dc.w $0003,$0b7c,$003c,$7800
	dc.w $8004,$18a5
	dc.w $0003,$0adc,$0076,$7800
	dc.w $802b,$1c93

	dc.w $800a
	dc.l loc_071350

	dc.w $0002,$0add,$0077,$8800
	dc.w $8045,$0008
	dc.w $0002,$0ade,$0078,$78ff,$fffe,$ffff,$0000
	dc.w $000a,$0ade,$0079,$78ff,$fffe,$ffff,$0000
	dc.w $8027,$ffe4,$0034
	dc.w $0006,$0adf,$007a,$88ff,$0004,$0000,$0000
	dc.w $8042,$0000
	dc.w $8027,$ffe4,$002c
	dc.w $0006,$0a80,$0023,$7cff,$0002,$0001,$0000
	dc.w $8048,$0550,$0006
	dc.w $8027,$ffdc,$0024
	dc.w $0006,$0a82,$0021,$7cff,$0002,$0001,$0000
	dc.w $8001

loc_071350:
	dc.w $0002,$0c45,$80ff,$ffb8,$0050,$1200
	dc.w $0004,$0c46,$80ff,$ffb8,$0050,$1200
	dc.w $0001,$0c47,$80ff,$ffb8,$0050,$1200
	dc.w $0001,$0c46,$80ff,$ffb8,$0050,$1200
	dc.w $0002,$0c47,$80ff,$ffb8,$0050,$1200
	dc.w $0001,$0c48,$80ff,$ffb8,$0050,$1200
	dc.w $0001,$0c47,$80ff,$ffb8,$0050,$1200
	dc.w $0002,$0c48,$80ff,$ffb8,$0050,$1200
	dc.w $0001,$0000,$6000
	dc.w $0001,$0c48,$80ff,$ffb8,$0050,$1200
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0713c4:
	dc.w $803e,$2854,$1800
	dc.w $8046,$3008
	dc.w $803f,$0e04,$0004,$0a05
	dc.w $8045,$0004
	dc.w $8040,$0000,$0602,$1e00
	dc.w $8042,$0703
	dc.w $8041,$0401,$1038
	dc.w $8007,$0008,$0000

	dc.w $800a
	dc.l loc_071488

	dc.w $8011,$001c,$0004,$2000,$0800
	dc.w $8027,$ffe4,$0034
	dc.w $8004,$18a5
	dc.w $0006,$0adf,$007a,$88ff,$0004,$0000,$0000
	dc.w $802b,$1c94
	dc.w $8027,$ffe4,$0044
	dc.w $0002,$0aee,$007b,$78ff,$0004,$0000,$0000
	dc.w $0006,$0aee,$007c,$78ff,$0004,$0000,$0000
	dc.w $8027,$ffe4,$0034
	dc.w $000c,$0ae0,$007d,$78ff,$0003,$0001,$0000
	dc.w $8042,$0000
	dc.w $8027,$ffe4,$002c
	dc.w $0006,$0a80,$0023,$7cff,$0002,$0001,$0000
	dc.w $8048,$0550,$0006
	dc.w $8027,$ffdc,$0024
	dc.w $0006,$0a82,$0021,$7cff,$0002,$0001,$0000
	dc.w $8001

loc_071488:
	dc.w $0006,$0c49,$80ff,$ffc0,$0050,$1200
	dc.w $0004,$0c4a,$80ff,$ffc0,$0050,$1200
	dc.w $0001,$0c4b,$80ff,$ffc0,$0050,$1200
	dc.w $0001,$0c4a,$80ff,$ffc0,$0050,$1200
	dc.w $0002,$0c4b,$80ff,$ffc0,$0050,$1200
	dc.w $0001,$0c4c,$80ff,$ffc0,$0050,$1200
	dc.w $0001,$0c4b,$80ff,$ffc0,$0050,$1200
	dc.w $0002,$0c4c,$80ff,$ffc0,$0050,$1200
	dc.w $0001,$0000,$6000
	dc.w $0001,$0c4c,$80ff,$ffc0,$0050,$1200
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0714fc:
	dc.w $803e,$2874,$2400
	dc.w $8046,$f0e0
	dc.w $803f,$1208,$0805,$0a08
	dc.w $8045,$0004
	dc.w $8040,$0000,$0602,$2400
	dc.w $8042,$0000
	dc.w $8041,$0201,$0234
	dc.w $8007,$0008,$0000

	dc.w $800a
	dc.l loc_0715bc

	dc.w $8011,$001c,$0004,$2800,$0800
	dc.w $8027,$ffe4,$0034
	dc.w $8004,$18a5

	dc.w $0006,$0ae1,$007e,$84ff,$0004,$0000,$0000
	dc.w $802a,$0037
	dc.w $8027,$ffd4,$0024
	dc.w $0002,$0ae2,$007f,$78ff,$fff2,$0000,$0000
	dc.w $0010,$0ae2,$0080,$78ff,$fff2,$0000,$0000
	dc.w $8027,$ffe4,$0034
	dc.w $0008,$0adf,$007a,$7cff,$0004,$0000,$0000
	dc.w $8027,$ffe4,$002c
	dc.w $0006,$0a80,$0023,$7cff,$0002,$0001,$0000
	dc.w $8048,$0550,$0006
	dc.w $8027,$ffdc,$0024
	dc.w $0006,$0a82,$0021,$7cff,$0002,$0001,$0000
	dc.w $8001

loc_0715bc:
	dc.w $0006,$0c4d,$80ff,$ffc8,$0050,$1200
	dc.w $0004,$0c4e,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0c4f,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0c4e,$80ff,$ffc8,$0050,$1200
	dc.w $0002,$0c4f,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0c50,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0c4f,$80ff,$ffc8,$0050,$1200
	dc.w $0002,$0c50,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0000,$6000
	dc.w $0001,$0c50,$80ff,$ffc8,$0050,$1200
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_071630:
	dc.w $803d
	dc.w $8040,$0000,$0000,$2800

	dc.w $800a
	dc.l loc_071692

	dc.w $8027,$ffd4,$0024
	dc.w $0014,$0ae2,$0080,$78ff,$fff2,$0000,$0000
	dc.w $8027,$ffe4,$0034
	dc.w $0008,$0adf,$007a,$7cff,$0004,$0000,$0000
	dc.w $8027,$ffe4,$002c
	dc.w $0006,$0a80,$0023,$7cff,$0002,$0001,$0000
	dc.w $8027,$ffdc,$0024
	dc.w $0006,$0a82,$0021,$7cff,$0002,$0001,$0000
	dc.w $8001

loc_071692:
	dc.w $0002,$0c51,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0c52,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0c51,$80ff,$ffc8,$0050,$1200
	dc.w $0002,$0c52,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0c53,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0c52,$80ff,$ffc8,$0050,$1200
	dc.w $0002,$0c53,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0c54,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0c53,$80ff,$ffc8,$0050,$1200
	dc.w $0003,$0c54,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0c55,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0c54,$80ff,$ffc8,$0050,$1200
	dc.w $0003,$0c55,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0c51,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0c55,$80ff,$ffc8,$0050,$1200
	dc.w $0004,$0c51,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0000,$6000
	dc.w $0001,$0c51,$80ff,$ffc8,$0050,$1200
	dc.w $0001,$0000,$6000
	dc.w $0001,$0c51,$80ff,$ffc8,$0050,$1200
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_071778:
	dc.w $8037
	dc.l loc_06e36e
	dc.w $8038
	dc.l loc_0717b6

	dc.w $803e,$281a,$1200
	dc.w $803f,$1204,$0406,$1208
	dc.w $8040,$0000,$0b00,$2400
	dc.w $8041,$0111,$2020
	dc.w $8039,$0000
	dc.w $8048,$0550,$0008
	dc.w $8048,$00bc,$0000

	dc.w $8036
	dc.l loc_06ef7e

loc_0717b6:
	dc.w $802c
	dc.w $8047,$00b6,$0000
	dc.w $8027,$ffe4,$002c

	dc.w $800a
	dc.l loc_071854

	dc.w $0005,$0bda,$0081,$7cff,$0002,$0000,$0000
	dc.w $8004,$18ac
	dc.w $802a,$0035
	dc.w $8027,$ffdc,$0024
	dc.w $0002,$0bdb,$0082,$7cff,$0002,$0000,$0000
	dc.w $803c,$0004
	dc.w $8027,$ffe4,$0014
	dc.w $0002,$0bdc,$0083,$7cff,$0008,$0000,$0000
	dc.w $8045,$0006
	dc.w $8027,$ffec,$0034
	dc.w $0002,$0bdd,$0084,$7cff,$0008,$0000,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $8027,$ffec,$001c
	dc.w $001e,$0a99,$0085,$80ff,$0006,$0000,$0000
	dc.w $8048,$0550,$0006
	dc.w $0006,$0a99,$0085,$80ff,$0006,$0000,$0000
	dc.w $8001

loc_071854:
	dc.w $0001,$0bfa,$74ff,$0022,$0070,$0e00
	dc.w $0001,$0882,$74ff,$0018,$0070,$0e00
	dc.w $0001,$0884,$74ff,$0020,$0068,$0e00
	dc.w $0001,$0875,$74ff,$0028,$0068,$0e00
	dc.w $0001,$0bfb,$74ff,$0022,$0060,$0e00
	dc.w $0001,$0bfb,$74ff,$002a,$0050,$0e00
	dc.w $0001,$0bfc,$74ff,$0018,$0038,$0e00
	dc.w $0001,$0bfc,$74ff,$0010,$0028,$0e00
	dc.w $0001,$0bfd,$74ff,$ffe8,$0018,$0e00
	dc.w $0001,$0bfd,$74ff,$ffd0,$0010,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0718ce:
	dc.w $8037
	dc.l loc_06e36e
	dc.w $8038
	dc.l loc_07190c

	dc.w $803e,$281a,$1200
	dc.w $803f,$1404,$0406,$1208
	dc.w $8040,$0000,$0c00,$2400
	dc.w $8041,$0111,$2020
	dc.w $8039,$0000
	dc.w $8048,$0550,$0008
	dc.w $8048,$00bc,$0000

	dc.w $8036
	dc.l loc_06ef7e

loc_07190c:
	dc.w $802c
	dc.w $8047,$00b6,$0000
	dc.w $8027,$ffe4,$002c

	dc.w $800a
	dc.l loc_0719aa

	dc.w $0006,$0bda,$0081,$7cff,$0002,$0000,$0000
	dc.w $8004,$18ac
	dc.w $802a,$0035
	dc.w $8027,$ffdc,$0024
	dc.w $0002,$0bdb,$0082,$7cff,$0002,$0000,$0000
	dc.w $803c,$0004
	dc.w $8027,$ffe4,$0014
	dc.w $0002,$0bdc,$0083,$7cff,$0008,$0000,$0000
	dc.w $8045,$0006
	dc.w $8027,$ffec,$0034
	dc.w $0002,$0bdd,$0084,$7cff,$0008,$0000,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $8027,$ffec,$001c
	dc.w $001e,$0a99,$0085,$80ff,$0006,$0000,$0000
	dc.w $8048,$0550,$0006
	dc.w $0006,$0a99,$0085,$80ff,$0006,$0000,$0000
	dc.w $8001

loc_0719aa:
	dc.w $0002,$0bfa,$74ff,$0022,$0070,$0e00
	dc.w $0002,$0882,$74ff,$0018,$0070,$0e00
	dc.w $0001,$0884,$74ff,$0020,$0068,$0e00
	dc.w $0001,$0875,$74ff,$0028,$0068,$0e00
	dc.w $0001,$0bfb,$74ff,$0022,$0060,$0e00
	dc.w $0001,$0bfb,$74ff,$002a,$0050,$0e00
	dc.w $0001,$0bfc,$74ff,$0018,$0038,$0e00
	dc.w $0001,$0bfc,$74ff,$0010,$0028,$0e00
	dc.w $0001,$0bfd,$74ff,$ffe8,$0018,$0e00
	dc.w $0001,$0bfd,$74ff,$ffd0,$0010,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_071a24:
	dc.w $0002,$0bfe,$74ff,$0000,$0000,$0c00
	dc.w $0002,$0bff,$74ff,$0000,$0000,$0c00
	dc.w $0002,$0c00,$74ff,$0000,$0000,$0c00
	dc.w $0002,$0bff,$74ff,$0000,$0000,$0c00
	dc.w $8000,$0000
	dc.l loc_071a24

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_071a5c:
	dc.w $8004,$1885
	dc.w $0002,$0c02,$74ff,$0000,$0000,$0c00
	dc.w $0002,$0c03,$74ff,$0008,$0000,$0f00
	dc.w $0003,$0c04,$74ff,$0008,$0000,$0c00
	dc.w $0003,$0c05,$74ff,$0008,$0000,$0f00
	dc.w $0002,$0c06,$74ff,$0008,$0000,$0c00
	dc.w $0002,$0c06,$74ff,$0008,$0000,$0f00
	dc.w $0004,$0c07,$74ff,$0008,$0000,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_071ab6:
	dc.w $8004,$18ab
	dc.w $0002,$0c34,$74ff,$0000,$0000,$0c00
	dc.w $0001,$0c34,$74ff,$ffe8,$0000,$0c01
	dc.w $0002,$0c01,$74ff,$0000,$0000,$0c00
	dc.w $0001,$0c35,$74ff,$ffe8,$0000,$0c01
	dc.w $0002,$0c35,$74ff,$0000,$0000,$0c00
	dc.w $0002,$0c36,$74ff,$0008,$0008,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_071b04:
	dc.w $8037
	dc.l loc_06e4b2
	dc.w $8038
	dc.l loc_071b44

	dc.w $8039,$0010
	dc.w $803e,$2871,$1700
	dc.w $803f,$0c04,$0404,$0a05
	dc.w $8040,$0000,$0a22,$1c00
	dc.w $8041,$0401,$d62a

	dc.w $8048,$0550,$000a
	dc.w $8048,$00bc,$0000
	dc.w $803b,$d000,$f40c,$0000


loc_071b44:
	dc.w $802c
	dc.w $8047,$00b6,$0000
	dc.w $8047,$02b8,$0006
	dc.w $8027,$ffe4,$0014
	dc.w $0002,$0b06,$0086,$7cff,$0008,$0000,$0000
	dc.w $8027,$ffec,$0014
	dc.w $0002,$0b07,$0087,$7cff,$0008,$0000,$0000
	dc.w $8027,$fff4,$000c
	dc.w $802a,$0038
	dc.w $0004,$0b08,$0088,$7c00
	dc.w $8027,$fff4,$0014
	dc.w $8011,$001c,$0004,$0000,$d000
	dc.w $0002,$0aff,$0089,$7cff,$fffe,$0000,$0001
	dc.w $8045,$000a
	dc.w $804e,$0004,$0000,$ffff,$e000

	dc.w $800a
	dc.l loc_071d4a

	dc.w $8027,$fff0,$0010
	dc.w $8005,$18a9
	dc.w $0002,$0ad5,$008a,$78ff,$0000,$0002,$0001
	dc.w $0002,$0ad4,$008b,$78ff,$0008,$ffff,$0001
	dc.w $8011,$001d,$0005,$0000,$10f0,$ff00
	dc.w $0001,$0ad3,$008c,$78ff,$0002,$0000,$0001
	dc.w $0002,$0ada,$008d,$78ff,$0004,$0000,$0001
	dc.w $0003,$0ad9,$008e,$78ff,$fffd,$0000,$0001
	dc.w $8005,$18a9
	dc.w $0002,$0ad8,$008d,$78ff,$fffe,$0000,$0001
	dc.w $8011,$001d,$0005,$0000,$f0f0,$ff00
	dc.w $0001,$0ad7,$008c,$78ff,$fff8,$0002,$0001
	dc.w $0002,$0ad6,$008b,$78ff,$fffa,$0002,$0001
	dc.w $0003,$0ad5,$008a,$78ff,$0000,$0002,$0001
	dc.w $8005,$18a9
	dc.w $0002,$0ad4,$008b,$78ff,$0008,$ffff,$0001
	dc.w $8011,$001d,$0005,$0000,$10f0,$ff00
	dc.w $0001,$0ad3,$008c,$78ff,$0002,$0000,$0001
	dc.w $0002,$0ada,$008d,$78ff,$0004,$0000,$0001
	dc.w $0003,$0ad9,$008e,$78ff,$fffd,$0000,$0001
	dc.w $8005,$18a9
	dc.w $0002,$0ad8,$008d,$78ff,$fffe,$0000,$0001
	dc.w $8047,$00b6,$ffff
	dc.w $8011,$001d,$0005,$0000,$f0f0,$ff00
	dc.w $0001,$0ad7,$008c,$78ff,$fff8,$0002,$0001
	dc.w $0002,$0ad6,$008b,$78ff,$fffa,$0002,$0001
	dc.w $0003,$0ad5,$008a,$78ff,$0000,$0002,$0001
	dc.w $8027,$ffe4,$0004
	dc.w $0002,$0aff,$008f,$7cff,$0002,$0000,$0000
	dc.w $8027,$fff4,$000c
	dc.w $0010,$0b08,$0088,$7c00
	dc.w $8027,$ffec,$0014
	dc.w $0004,$0b07,$0087,$7cff,$0008,$0000,$0000
	dc.w $8048,$0550,$0006
	dc.w $8027,$ffe4,$0014
	dc.w $0006,$0b06,$0086,$7cff,$0008,$0000,$0000
	dc.w $8001

loc_071d4a:
	dc.w $0001,$0b2c,$74ff,$0000,$0050,$0d00
	dc.w $0001,$0b2d,$74ff,$0000,$0050,$0d00
	dc.w $0001,$0b2e,$74ff,$0000,$0050,$0d00
	dc.w $0001,$0b2f,$74ff,$0000,$0050,$0d00
	dc.w $0001,$0b30,$74ff,$0000,$0050,$0d00
	dc.w $0001,$0b31,$74ff,$0000,$0050,$0d00
	dc.w $0001,$0b32,$74ff,$0000,$0050,$0d00
	dc.w $0001,$0b33,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_071e3c:
	dc.w $8037
	dc.l loc_06e4b2
	dc.w $8038
	dc.l loc_071e80

	dc.w $8039,$0010
	dc.w $803e,$2871,$1700
	dc.w $8046,$e8ff
	dc.w $803f,$0802,$0202,$0603
	dc.w $8040,$0000,$0a3c,$2000
	dc.w $8041,$0401,$d62a
	dc.w $8048,$0550,$000a
	dc.w $8048,$00bc,$0000
	dc.w $803b,$0000,$f40c,$0000

loc_071e80:
	dc.w $802c
	dc.w $8047,$00b6,$0000
	dc.w $8047,$02b8,$0006
	dc.w $8027,$ffe4,$0014
	dc.w $0002,$0b06,$0086,$7cff,$0008,$0000,$0000
	dc.w $8027,$ffec,$0014
	dc.w $0002,$0b07,$0087,$7cff,$0008,$0000,$0000
	dc.w $8027,$fff4,$000c
	dc.w $802a,$0039
	dc.w $0004,$0b08,$0088,$7c00
	dc.w $8011,$001c,$0004,$0000,$d000
	dc.w $8027,$ffe4,$0004
	dc.w $0002,$0aff,$008f,$7cff,$0002,$0000,$0000
	dc.w $8045,$0010
	dc.w $8025
	dc.w $804e
	dc.l $ffffc000,$ffffc000

	dc.w $800a
	dc.l loc_072120

	dc.w $8027,$fff0,$0010
	dc.w $8004,$18a9
	dc.w $0002,$0ad4,$00a8,$78ff,$0008,$ffff,$0001
	dc.w $8011,$001d,$0005,$0000,$10f0,$ff00
	dc.w $0001,$0ad3,$00a8,$78ff,$0002,$0000,$0001
	dc.w $0002,$0ada,$008d,$78ff,$0004,$0000,$0001
	dc.w $0003,$0ad9,$008e,$78ff,$fffd,$0000,$0001
	dc.w $8004,$18a9
	dc.w $0002,$0ad8,$008d,$78ff,$fffe,$0000,$0001
	dc.w $8011,$001d,$0005,$0000,$f0f0,$ff00
	dc.w $0001,$0ad7,$008c,$78ff,$fff8,$0002,$0001
	dc.w $0002,$0ad6,$008b,$78ff,$fffa,$0002,$0001
	dc.w $0003,$0ad5,$008a,$78ff,$0000,$0002,$0001
	dc.w $8004,$18a9
	dc.w $0002,$0ad4,$008b,$78ff,$0008,$ffff,$0001
	dc.w $8011,$001d,$0005,$0000,$10f0,$ff00
	dc.w $0001,$0ad3,$008c,$78ff,$0002,$0000,$0001
	dc.w $0002,$0ada,$008d,$78ff,$0004,$0000,$0001
	dc.w $0003,$0ad9,$008e,$78ff,$fffd,$0000,$0001
	dc.w $8004,$18a9
	dc.w $0002,$0ad8,$008d,$78ff,$fffe,$0000,$0001
	dc.w $8011,$001d,$0005,$0000,$f0f0,$ff00
	dc.w $0001,$0ad7,$008c,$78ff,$fff8,$0002,$0001
	dc.w $0002,$0ad6,$008b,$78ff,$fffa,$0002,$0001

	dc.w $804e
	dc.l $fff88000,$00004000

	dc.w $0003,$0ad5,$008a,$78ff,$0000,$0002,$0001
	dc.w $8004,$18a9
	dc.w $0003,$0ad4,$008b,$78ff,$0008,$ffff,$0001

	dc.w $8011,$001d,$0005,$0000,$10f0,$ff00
	dc.w $0002,$0ad3,$008c,$78ff,$0002,$0000,$0001
	dc.w $0003,$0ada,$008d,$78ff,$0004,$0000,$0001
	dc.w $0004,$0ad9,$008e,$78ff,$fffd,$0000,$0001
	dc.w $8004,$18a9
	dc.w $0004,$0ad8,$008d,$78ff,$fffe,$0000,$0001
	dc.w $8047,$00b6,$ffff
	dc.w $803b,$d000,$f40c
	dc.w $8011,$001d,$0005,$0000,$f0f0,$ff00
	dc.w $0003,$0ad7,$008c,$78ff,$fff8,$0002,$0001
	dc.w $0004,$0ad6,$008b,$78ff,$fffa,$0002,$0001
	dc.w $0005,$0ad5,$008a,$78ff,$0000,$0002,$0001
	dc.w $8023
	dc.w $8025
	dc.w $8027,$ffec,$0024
	dc.w $0004,$0ad2,$0090,$7c00
	dc.w $8027,$ffdc,$0024
	dc.w $0004,$0af6,$0091,$7c00
	dc.w $0004,$0af5,$0092,$7c00
	dc.w $0004,$0af8,$0093,$7c00
	dc.w $0004,$0af7,$0094,$7c00
	dc.w $0004,$0af6,$0091,$7c00
	dc.w $0004,$0af5,$0092,$7c00
	dc.w $8048,$0550,$0004
	dc.w $0004,$0af8,$0093,$7c00
	dc.w $8001

loc_072120:
	dc.w $0001,$0b2c,$74ff,$0000,$0050,$0d00
	dc.w $0001,$0b2d,$74ff,$0000,$0050,$0d00
	dc.w $0001,$0b2e,$74ff,$0000,$0050,$0d00
	dc.w $0001,$0b2f,$74ff,$0000,$0050,$0d00
	dc.w $0001,$0b30,$74ff,$0000,$0050,$0d00
	dc.w $0001,$0b31,$74ff,$0000,$0050,$0d00
	dc.w $0001,$0b32,$74ff,$0000,$0050,$0d00
	dc.w $0001,$0b33,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0002,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $0003,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0003,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $0003,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0003,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $0004,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0004,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $0004,$0b34,$74ff,$0000,$0050,$0d00
	dc.w $0004,$0b35,$74ff,$0000,$0050,$0d00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_072272:
	dc.w $8037
	dc.l loc_06e3c6
	dc.w $8038
	dc.l loc_0722b0

	dc.w $8039,$0009
	dc.w $803e,$3956,$1900
	dc.w $803f,$1204,$0006,$1005
	dc.w $8040,$0000,$1aff,$0000
	dc.w $8041,$0201,$0432
	dc.w $8048,$0550,$0000
	dc.w $8048,$00bc,$0000

	dc.w $8036
	dc.l loc_06ef96

loc_0722b0:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $802c

	dc.w $8008
	dc.l $fffe8000,$fffe0000

	dc.w $0002,$0ac9,$0095,$7800
	dc.w $8027,$ffdc,$001c
	dc.w $0008,$0b9b,$0096,$78ff,$fff8,$0000,$0000
	dc.w $8045,$0010
	dc.w $8004,$1885
	dc.w $8047,$00b6,$ffff
	dc.w $0002,$0ab2,$000e,$7800
	dc.w $0002,$0ab3,$000f,$7800
	dc.w $0002,$0ab4,$0010,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0ab5,$0011,$7800
	dc.w $0002,$0ab6,$0012,$7800
	dc.w $802a,$0034
	dc.w $0002,$0aa0,$0058,$78ff,$0000,$0004,$0000

	dc.w $800d
	dc.l loc_072592
	dc.w $0001

	dc.w $8027,$ffe4,$002c
	dc.w $0002,$0aa1,$0059,$78ff,$0000,$0008,$0000
	dc.w $8027,$ffe4,$003c
	dc.w $0002,$0aa2,$005a,$78ff,$0000,$0008,$0000
	dc.w $8004,$18a5
	dc.w $0003,$0b82,$0097,$78ff,$0004,$0004,$0000
	dc.w $8027,$ffe4,$0014
	dc.w $0002,$0aa3,$0098,$78ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07238a:
	dc.w $803e,$2874,$1900
	dc.w $8046,$40dc
	dc.w $803f,$0e04,$0004,$0c05
	dc.w $8040,$0000,$0a1a,$ff00
	dc.w $8041,$0807,$0837
	dc.w $8011,$001d,$0005,$0000,$60e0,$ff00
	dc.w $8027,$ffe4,$0014
	dc.w $0002,$0b7e,$003d,$7cff,$0000,$0002,$0000
	dc.w $0002,$0a92,$0009,$7c00,$8007,$0010,$0000

	dc.w $804b
	dc.l $00030000,$fff69800,$00007000

	dc.w $8011,$001d,$0005,$d000,$c0d0,$0000
	dc.w $8027,$ffe4,$0014
	dc.w $8004,$18a5
	dc.w $0004,$0aa6,$005d,$7800

	dc.w $800d
	dc.l loc_0725d0
	dc.w $0001

	dc.w $0002,$0aa7,$005e,$7800
	dc.w $8027,$ffe4,$003c
	dc.w $0004,$0aa8,$0099,$78ff,$fff8,$0000,$0000
	dc.w $8027,$ffe4,$0024
	dc.w $0004,$0aa9,$009a,$8800
	dc.w $0006,$0aa9,$0061,$8800
	dc.w $8047,$00b7,$ffff
	dc.w $803e,$2930,$2400
	dc.w $8046,$0000
	dc.w $803f,$0c04,$0803,$0a08
	dc.w $8041,$0207,$1230
	dc.w $8027,$ffec,$0014
	dc.w $8004,$18aa
	dc.w $802b,$1c90
	dc.w $0004,$0aa4,$0050,$88ff,$0000,$0008,$0000
	dc.w $8027,$ffe4,$0034
	dc.w $0008,$0aa5,$009b,$78ff,$0000,$0008,$0000
	dc.w $8028
	dc.w $0004,$0a9e,$000b,$7cff,$0000,$0008,$0000
	dc.w $0008,$0a9f,$000c,$7cff,$0000,$0008,$0000
	dc.w $8003,$1870
	dc.w $8048,$0550,$0004
	dc.w $8011,$001d,$0005,$0800,$30f0,$ff00
	dc.w $0004,$0a92,$0009,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0724ca:
	dc.w $8028
	dc.w $0008,$0ab7,$0013,$7c00
	dc.w $0005,$0ab6,$0012,$7c00
	dc.w $0004,$0ab5,$0011,$7c00
	dc.w $0004,$0ab4,$0010,$7cff,$fffc,$0000,$0000
	dc.w $0004,$0ab3,$000f,$7c00
	dc.w $0005,$0ab2,$000e,$7c00
	dc.w $0006,$0ab1,$000d,$7c00
	dc.w $8027,$ffe4,$0004
	dc.w $0004,$0b01,$009c,$7c00
	dc.w $8011,$001d,$0005,$0000,$c0e0,$ff00
	dc.w $8011,$001d,$0005,$0000,$40e0,$ff00
	dc.w $8027,$ffdc,$000c
	dc.w $0006,$0b02,$009d,$7c00
	dc.w $802b,$1c91
	dc.w $000c,$0b03,$009d,$7c00
	dc.w $0006,$0b02,$009d,$7c00
	dc.w $8027,$ffe4,$0004
	dc.w $0004,$0b01,$009c,$7c00
	dc.w $0004,$0b00,$009c,$7c00
	dc.w $8027,$ffec,$0014
	dc.w $8048,$02c0,$0008
	dc.w $0004,$0b07,$0087,$7cff,$0008,$0000,$0000
	dc.w $0004,$0b06,$0086,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_072592:
	dc.w $0002,$0c38,$74ff,$fff8,$00a8,$0e00
	dc.w $0002,$0c39,$74ff,$ffc0,$0078,$0e00
	dc.w $0001,$0c3a,$74ff,$ffc4,$002c,$0e00
	dc.w $0002,$0c3b,$74ff,$ffc4,$002c,$0e00
	dc.w $0002,$0c3c,$74ff,$ffc4,$002c,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0725d0:
	dc.w $0002,$0c3e,$74ff,$0028,$0040,$0e00
	dc.w $0004,$0c3f,$74ff,$ffb8,$0050,$0e00
	dc.w $0004,$0c40,$74ff,$ffb8,$0050,$0e00
	dc.w $0003,$0c41,$74ff,$ffb8,$0050,$0e00
	dc.w $0003,$0000,$6000
	dc.w $0004,$0000,$6000
	dc.w $0004,$0c43,$74ff,$ffc0,$0048,$0e00
	dc.w $0004,$0c44,$74ff,$ffc0,$0048,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_072626:
	dc.w $8037
	dc.l loc_06e5ae
	dc.w $8038
	dc.l loc_07266e

	dc.w $8039,$0000
	dc.w $803e,$38ba,$2000
	dc.w $8046,$00d0
	dc.w $803f,$0201,$0002,$0201
	dc.w $8040,$0000,$0cff,$0000
	dc.w $8043,$0010
	dc.w $8041,$0f04,$e41c
	dc.w $8048,$0550,$0000
	dc.w $8048,$00bc,$0000
	dc.w $803b,$0000,$f20a,$0000

loc_07266e:
	dc.w $8047,$02b8,$0002
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $8047,$00b9,$0000
	dc.w $8047,$00b9,$ffff
	dc.w $802c
	dc.w $8027,$ffdc,$0024
	dc.w $0004,$0ba0,$0000,$7800
	dc.w $8004,$18ac
	dc.w $802a,$003a
	dc.w $8027,$ffe4,$001c
	dc.w $0004,$0ba1,$0000,$78ff,$fffc,$0000,$0000
	dc.w $0004,$0b09,$0000,$78ff,$0000,$0002,$0000
	dc.w $8047,$00b6,$ffff

	dc.w $800a
	dc.l loc_072706

loc_0726d2:
	dc.w $0002,$0b0a,$009e,$88ff,$0000,$0000,$0e00
	dc.w $8025
	dc.w $803e,$28b8,$2100
	dc.w $0002,$0bd7,$009e,$88ff,$0000,$0000,$0001
	dc.w $8025
	dc.w $803e,$28b8,$2000
	dc.w $8000,$0000
	dc.l loc_0726d2

loc_072706:
	dc.w $0001,$0c08,$74ff,$0000,$0080,$0f00
	dc.w $0001,$0c09,$74ff,$0000,$0080,$0e00
	dc.w $0001,$0c0a,$74ff,$0000,$0080,$0f01
	dc.w $0001,$0c0b,$74ff,$0000,$0080,$0e01
	dc.w $0001,$0c08,$74ff,$0000,$0080,$0e00
	dc.w $0001,$0c09,$74ff,$0000,$0080,$0f00
	dc.w $0001,$0c0a,$74ff,$0000,$0080,$0e01
	dc.w $0001,$0c0b,$74ff,$0000,$0080,$0f01
	dc.w $8000,$0000
	dc.l loc_072706

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07276e:
	dc.w $8040,$0000,$0034,$ff00
	dc.w $8041,$0404,$1440
	dc.w $803e,$38bc,$1d00
	dc.w $803f,$0201,$0006,$0204
	dc.w $8046,$40f0
	dc.w $0002,$0b0a,$009f,$88ff,$0000,$0000,$0e00
	dc.w $0002,$0bd7,$009f,$8800

	dc.w $800a
	dc.l loc_072878

	dc.w $8008
	dc.l $ffff8000,$00000000

	dc.w $8027,$ffdc,$0034

	dc.w $0002,$0b0c,$00a0,$88ff,$0000,$0000,$0e00
	dc.w $0002,$0bd8,$00a0,$8800
	dc.w $0002,$0b0c,$00a0,$88ff,$0000,$0000,$0e00
	dc.w $0002,$0bd8,$00a0,$8800
	dc.w $0002,$0b0c,$00a0,$88ff,$0000,$0000,$0e00
	dc.w $0002,$0bd8,$00a0,$8800
	dc.w $0002,$0b0c,$00a0,$88ff,$0000,$0000,$0e00
	dc.w $0002,$0bd8,$00a0,$8800

	dc.w $803b,$d000,$f212
	dc.w $803e,$38bf,$2c00
	dc.w $803f,$2808,$080a,$1408
	dc.w $8047,$02b8,$0000
	dc.w $8047,$0232,$ffff
	dc.w $8004,$1885
	dc.w $8047,$00b7,$ffff
	dc.w $802a,$003b
	dc.w $8011,$001c,$0004,$e000,$a0d0
	dc.w $8011,$001c,$0004,$2000,$a0d0
	dc.w $8027,$ffd4,$004c

loc_07285a:
	dc.w $0002,$0b0e,$00a1,$78ff,$0000,$0000,$0e00
	dc.w $0002,$0bd9,$00a1,$7800

	dc.w $8000,$0000
	dc.l loc_07285a

loc_072878:
	dc.w $0001,$0c0c,$74ff,$fff8,$0060,$0f00
	dc.w $0001,$0c0c,$74ff,$fff8,$0060,$0e00
	dc.w $0001,$0c0c,$74ff,$fff8,$0060,$0f00
	dc.w $0001,$0c0c,$74ff,$fff8,$0060,$0e00
	dc.w $0001,$0c0f,$74ff,$0020,$0058,$0f00
	dc.w $0001,$0c0f,$74ff,$0020,$0058,$0e00
	dc.w $0001,$0c10,$74ff,$0020,$0058,$0f00
	dc.w $0001,$0c10,$74ff,$0020,$0058,$0e00
	dc.w $0001,$0c0f,$74ff,$0020,$0058,$0f00
	dc.w $0001,$0c0f,$74ff,$0020,$0058,$0e00
	dc.w $0001,$0c10,$74ff,$0020,$0058,$0f00
	dc.w $0001,$0c10,$74ff,$0020,$0058,$0e00
	dc.w $0004,$0000,$6000
	dc.w $0002,$0c0d,$74ff,$ffc8,$0050,$0f00
	dc.w $0002,$0c0e,$74ff,$ffb8,$0050,$0e00
	dc.w $0002,$0c0f,$74ff,$ffb8,$0050,$0f00
	dc.w $0002,$0c10,$74ff,$ffb8,$0050,$0e00
	dc.w $0002,$0c0d,$74ff,$ffc8,$0050,$0f00
	dc.w $0002,$0c0e,$74ff,$ffb8,$0050,$0e00

loc_072956:
	dc.w $0002,$0c0f,$74ff,$ffb8,$0050,$0f00
	dc.w $0002,$0c10,$74ff,$ffb8,$0050,$0e00
	dc.w $8000,$0000
	dc.l loc_072956

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_072976:
	dc.w $8040,$0000,$0000,$2000
	dc.w $803c,$0000
	dc.w $8047,$0232,$0000
	dc.w $8027,$ffdc,$0024
	dc.w $0006,$0a80,$0023,$78ff,$0004,$0001,$0000
	dc.w $0006,$0a82,$0021,$7cff,$0004,$0001,$0000
	dc.w $0014,$0ba0,$0038,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0729b4:
	dc.w $8037
	dc.l loc_06e6d0
	dc.w $8038
	dc.l loc_0729fa

	dc.w $8039,$0010
	dc.w $803e,$38b2,$1800
	dc.w $8046,$28f8
	dc.w $803f,$0201,$0001,$0000
	dc.w $8040,$0000,$063c,$1b00
	dc.w $8043,$0006
	dc.w $8041,$0a07,$1038
	dc.w $8048,$0550,$0000
	dc.w $8048,$00bc,$0000

	dc.w $8036
	dc.l loc_06ef7e

loc_0729fa:
	dc.w $8047,$00b9,$0000
	dc.w $8047,$02b8,$0004
	dc.w $802a,$0031
	dc.w $8027,$ffe4,$002c
	dc.w $0004,$0adb,$006d,$78ff,$0002,$0000,$0000
	dc.w $8047,$00b9,$ffff

	dc.w $800c
	dc.l loc_072c9a

	dc.w $0002,$0adb,$006d,$78ff,$0002,$0000,$0000

	dc.w $800a
	dc.l loc_072d2c

	dc.w $8012
	dc.l loc_072e04
	dc.w $0010

	dc.w $8004,$18ac
	dc.w $8008,$0006,$0000,$0000,$0000
	dc.w $0002,$0aec,$00a2,$78ff,$fff6,$0000,$0000
	dc.w $803e,$38b2,$1800
	dc.w $0002,$0aec,$00a2,$78ff,$fff6,$0000,$0000
	dc.w $803e,$38b2,$1800
	dc.w $0002,$0aec,$00a2,$78ff,$fff6,$0000,$0000
	dc.w $803e,$38b2,$1800
	dc.w $0002,$0aec,$00a2,$78ff,$fff6,$0000,$0000
	dc.w $803e,$38b4,$1800
	dc.w $0002,$0aec,$00a2,$78ff,$fff6,$0000,$0000
	dc.w $803e,$38b2,$1800
	dc.w $0002,$0aec,$00a2,$78ff,$fff6,$0000,$0000
	dc.w $803e,$38b2,$1800
	dc.w $0002,$0aec,$00a2,$78ff,$fff6,$0000,$0000
	dc.w $803e,$38b2,$1800
	dc.w $0002,$0aec,$00a2,$78ff,$fff6,$0000,$0000
	dc.w $803e,$38b4,$1800
	dc.w $8046,$30f0
	dc.w $803f,$0601,$0005,$0000
	dc.w $8023
	dc.w $8027,$ffe4,$0044
	dc.w $802a,$0036
	dc.w $0002,$0aee,$0075,$78ff,$0004,$0000,$0000
	dc.w $8007,$0020,$0000
	dc.w $800f,$0033
	dc.w $8004,$18c9

	dc.w $804b
	dc.l $fffe8000,$fffc4000,$00008000

	dc.w $803e,$38d5,$1700
	dc.w $8046,$20f0
	dc.w $803f,$1002,$000a,$0004
	dc.w $8011,$001d,$0005,$0800,$20c0,$0000
	dc.w $8027,$ffec,$001c
	dc.w $0002,$0af0,$0070,$7800
	dc.w $0005,$0af0,$0071,$7800
	dc.w $8027,$ffec,$000c
	dc.w $0003,$0af1,$0072,$78ff,$0004,$0004,$0000
	dc.w $8027,$ffe4,$0014
	dc.w $0003,$0af2,$0073,$7800
	dc.w $0003,$0aa6,$005d,$7800
	dc.w $8011,$001d,$0005,$0800,$30f0,$ff00
	dc.w $8003,$1870
	dc.w $8008,$0008,$0000,$0000,$0000
	dc.w $803e,$38b2,$1800
	dc.w $8046,$28f8
	dc.w $803f,$0401,$0002,$0000
	dc.w $8027,$ffe4,$002c
	dc.w $0004,$0aec,$00a2,$78ff,$fff6,$0000,$0000
	dc.w $803e,$38b4,$1d00
	dc.w $8046,$30f0
	dc.w $803f,$0601,$0005,$0000
	dc.w $8023
	dc.w $8027,$ffe4,$0044
	dc.w $0004,$0aee,$0075,$78ff,$0004,$0000,$0000
	dc.w $8007,$0020,$0000
	dc.w $8004,$18c9
	dc.w $800f,$0033
	dc.w $802b,$1c92

	dc.w $804b
	dc.l $00010000,$fff64000,$00008000

	dc.w $803e,$38d6,$2b00
	dc.w $8046,$0000
	dc.w $803f,$1002,$000a,$0008
	dc.w $8011,$001d,$0005,$0800,$20c0,$0000
	dc.w $8027,$ffec,$001c
	dc.w $0002,$0af0,$0070,$7800
	dc.w $000e,$0af0,$0071,$7800
	dc.w $8027,$ffec,$000c
	dc.w $8002,$00e9
	dc.w $0008,$0af1,$0072,$78ff,$0004,$0004,$0000
	dc.w $8028
	dc.w $0008,$0af2,$0073,$7800
	dc.w $0008,$0a9f,$000c,$7cff,$0000,$0008,$0000
	dc.w $8003,$1870
	dc.w $8011,$001d,$0005,$0800,$30f0,$ff00
	dc.w $0003,$0a92,$0009,$7c00
	dc.w $8001

loc_072c9a:
	dc.w $0002,$0c11,$74ff,$0002,$0060,$1200
	dc.w $0002,$0c12,$74ff,$0002,$0060,$1200
	dc.w $0002,$0c13,$74ff,$0002,$0060,$1200
	dc.w $0002,$0c11,$74ff,$0002,$0060,$1200
	dc.w $0002,$0c12,$74ff,$0002,$0060,$1200
	dc.w $0002,$0c13,$74ff,$0002,$0060,$1200
	dc.w $0002,$0c11,$74ff,$0002,$0060,$1200
	dc.w $0002,$0c12,$74ff,$0002,$0060,$1200
	dc.w $0002,$0c13,$74ff,$0002,$0060,$1200
	dc.w $0002,$0c11,$74ff,$0002,$0060,$1200
	dc.w $0002,$0c12,$74ff,$0002,$0060,$1200
	dc.w $0003,$0c13,$74ff,$0002,$0060,$1200
	dc.w $8001

loc_072d2c:
	dc.w $0002,$0c15,$74ff,$0018,$0000,$1200
	dc.w $0002,$0c16,$74ff,$0018,$0000,$1200
	dc.w $0002,$0c15,$74ff,$0010,$0000,$1200
	dc.w $0002,$0c16,$74ff,$0008,$0000,$1200
	dc.w $0002,$0c15,$74ff,$fff8,$0000,$1200
	dc.w $0002,$0c16,$74ff,$ffe8,$0000,$1200
	dc.w $0002,$0c16,$74ff,$ffe0,$0000,$1201
	dc.w $0002,$0c15,$74ff,$ffd0,$0000,$1201

	dc.w $8012
	dc.l loc_071264
	dc.w $0002

	dc.w $0001,$0c17,$74ff,$ffa0,$0000,$1200
	dc.w $0001,$0c17,$74ff,$ffa0,$0000,$1201
	dc.w $0010,$0000,$6000
	dc.w $0001,$0c15,$74ff,$fff8,$0000,$1200
	dc.w $0001,$0c16,$74ff,$ffe8,$0000,$1200
	dc.w $0001,$0c16,$74ff,$ffe0,$0000,$1201
	dc.w $0001,$0c15,$74ff,$ffd0,$0000,$1201

	dc.w $8012
	dc.l loc_071264
	dc.w $0004

	dc.w $0002,$0c17,$74ff,$ffa0,$0000,$1200
	dc.w $0002,$0c17,$74ff,$ffa0,$0000,$1201
	dc.w $8001

loc_072e04:
	dc.w $ffc0,$0000,$0000,$0048

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_072e0c:
	dc.w $8037
	dc.l loc_06e712
	dc.w $8038
	dc.l loc_072e54

	dc.w $8039,$0010
	dc.w $803e,$38f5,$1700
	dc.w $8046,$c0f0
	dc.w $803f,$0b02,$0005,$0603
	dc.w $8040,$0000,$1418,$2600
	dc.w $8043,$000e
	dc.w $8041,$0401,$e028
	dc.w $8048,$0550,$0000
	dc.w $8048,$00bc,$0000
	dc.w $803b,$0000,$f40c,$0000

loc_072e54:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b9,$0000
	dc.w $802c
	dc.w $8047,$02b8,$ffff
	dc.w $8027,$ffe4,$0014
	dc.w $0002,$0b06,$0086,$78ff,$0008,$0000,$0000
	dc.w $8027,$ffec,$0014
	dc.w $0002,$0b07,$0087,$78ff,$0008,$0000,$0000
	dc.w $8027,$fff4,$000c
	dc.w $802a,$0031
	dc.w $0004,$0b08,$0088,$7800
	dc.w $8047,$00b9,$ffff
	dc.w $8027,$ffdc,$000c
	dc.w $000c,$0afb,$009d,$78ff,$0002,$0000,$0000
	dc.w $802a,$003c
	dc.w $8004,$18a5
	dc.w $8047,$00b6,$ffff
	dc.w $8011,$001c,$0004,$0000,$a000
	dc.w $8027,$fff0,$0010

loc_072eda:
	dc.w $0001,$0ad4,$00a3,$78ff,$fff8,$ffff,$0000
	dc.w $8011,$001d,$0005,$0000,$10f0,$0000
	dc.w $0001,$0ad3,$00a3,$78ff,$fffe,$0000,$0000
	dc.w $0001,$0ada,$00a3,$78ff,$fffc,$0000,$0000
	dc.w $0001,$0ad9,$00a3,$78ff,$0003,$0000,$0000
	dc.w $0001,$0ad8,$00a3,$78ff,$0002,$0000,$0000
	dc.w $8011,$001d,$0005,$0000,$f0f0,$0000
	dc.w $0001,$0ad7,$00a3,$78ff,$0008,$0002,$0000
	dc.w $0001,$0ad6,$00a3,$78ff,$0006,$0002,$0000
	dc.w $0001,$0ad5,$00a3,$78ff,$0000,$0002,$0000
	dc.w $8000,$0000
	dc.l loc_072eda

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_072f6a:
	dc.w $8023
	dc.w $803b,$d000,$f40c
	dc.w $8027,$ffec,$0014
	dc.w $8004,$188a
	dc.w $0004,$0b07,$0087,$78ff,$0008,$0000,$0000
	dc.w $8027,$ffdc,$000c
	dc.w $803c,$0000
	dc.w $0004,$0afb,$009d,$7800
	dc.w $0004,$0afc,$009d,$7800
	dc.w $0005,$0afd,$009d,$7800
	dc.w $0006,$0afe,$009d,$7800
	dc.w $0005,$0afd,$009d,$7800
	dc.w $0006,$0afc,$009d,$7800
	dc.w $0004,$0afb,$009d,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_072fce:
	dc.w $0010,$0afb,$009d,$7800
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_072fd8:
	dc.w $0001,$0bee,$70ff,$0000,$0048,$0f00
	dc.w $0001,$0bee,$70ff,$0000,$0048,$0e00
	dc.w $0002,$0bee,$70ff,$0000,$0048,$0d00
	dc.w $0001,$0bef,$70ff,$0000,$0048,$0f00
	dc.w $0001,$0bef,$70ff,$0000,$0048,$0e00
	dc.w $0002,$0bef,$70ff,$0000,$0048,$0d00
	dc.w $0001,$0bf0,$70ff,$0000,$0048,$0f00
	dc.w $0001,$0bf0,$70ff,$0000,$0048,$0e00
	dc.w $0002,$0bf0,$70ff,$0000,$0048,$0d00
	dc.w $8000,$0000
	dc.l loc_072fd8

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07304c:
	dc.w $8002,$00e9
	dc.w $0006,$0bf1,$70ff,$0000,$0048,$0d00
	dc.w $0003,$0bf2,$70ff,$0000,$0048,$0d00
	dc.w $0003,$0bf3,$70ff,$0000,$0048,$0d00
	dc.w $0004,$0bf4,$70ff,$0000,$0048,$0d00
	dc.w $0004,$0bf5,$70ff,$0000,$0048,$0d00
	dc.w $0004,$0bf6,$70ff,$0000,$0048,$0d00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07309a:
	dc.w $8037
	dc.l loc_06e836
	dc.w $8038
	dc.l loc_0730da

	dc.w $8039,$0000
	dc.w $803e,$0807,$2f00
	dc.w $803f,$2008,$000a,$2808
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$00bc,$0000
	dc.w $8047,$024b,$ffff,$0000

loc_0730da:
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $801a,$0005,$7fff
	dc.w $803b,$0000,$f020
	dc.w $8011,$001d,$0005,$e000,$f0f4,$ff00
	dc.w $0006,$0b90,$0000,$78ff,$fff0,$0000,$0000
	dc.w $8007,$0030,$0000
	dc.w $8047,$00b7,$ffff
	dc.w $803b,$0000,$e818
	dc.w $0004,$0b91,$0000,$78ff,$fff8,$0028,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $802b,$1c8f
	dc.w $000a,$0b92,$0000,$78ff,$fff0,$0020,$0000
	dc.w $803b,$0000,$e010
	dc.w $0004,$0aca,$0000,$78ff,$0010,$0018,$0000
	dc.w $8011,$001d,$0005,$d000,$f0f0,$ff00
	dc.w $8047,$00b8,$ffff
	dc.w $0006,$0acb,$0000,$78ff,$0010,$0000,$0000
	dc.w $8007,$ffb0,$0000
	dc.w $803b,$0000,$f828
	dc.w $0004,$0acc,$0000,$78ff,$fff0,$0000,$0000
	dc.w $8026,$0018
	dc.w $8034
	dc.w $8011,$001d,$0005,$d800,$60f0,$0100
	dc.w $8011,$001d,$0005,$c000,$a0f0,$0100
	dc.w $803b,$0000,$d810
	dc.w $0004,$0acd,$0000,$78ff,$0010,$0000,$0000
	dc.w $801d
	dc.w $801a,$0000,$0000
	dc.w $803c,$0000
	dc.w $000c,$0ace,$0000,$78ff,$0018,$0000,$0000
	dc.w $0004,$0acf,$0000,$7800
	dc.w $0004,$0a92,$0000,$7800
	dc.w $0004,$0b06,$0000,$78ff,$000c,$0000,$0000
	dc.w $000c,$0b07,$0000,$80ff,$0008,$0000,$0000
	dc.w $802b,$1c8e
	dc.w $0004,$0afb,$0000,$8000
	dc.w $0004,$0afc,$0000,$8000
	dc.w $0005,$0afd,$0000,$8000
	dc.w $0006,$0afe,$0000,$8000
	dc.w $0005,$0afd,$0000,$8000
	dc.w $0006,$0afc,$0000,$8000
	dc.w $0004,$0afb,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Throw
;Sho
loc_07324e:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$00c9,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$00cb,$0000,$84ff,$0000,$0000,$0000
	dc.w $000a,$00ca,$0000,$84ff,$0000,$0000,$0000
	dc.w $0004,$00cd,$0000,$84ff,$0000,$0004,$0000
	dc.w $0006,$013e,$0000,$84ff,$0008,$fff8,$0000
	dc.w $0004,$017c,$0000,$84ff,$0038,$0048,$0000
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0143,$0000,$84ff,$0018,$0070,$0002
	dc.w $000c,$0144,$0000,$84ff,$0010,$0000,$0001
	dc.w $000c,$012a,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;Dao
loc_0732e6:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$02a2,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$02a0,$0000,$84ff,$0000,$0000,$0000
	dc.w $000a,$029f,$0000,$84ff,$0000,$0000,$0000
	dc.w $0004,$02a2,$0000,$84ff,$0000,$0000,$0000
	dc.w $0006,$030e,$0000,$84ff,$0000,$fff0,$0000
	dc.w $0004,$030a,$0000,$84ff,$0030,$0048,$0001
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$02fa,$0000,$84ff,$0018,$0068,$0002
	dc.w $000c,$02fa,$0000,$84ff,$0018,$0068,$0002
	dc.w $000c,$022b,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;Con
loc_07337e:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$043e,$0000,$84ff,$0028,$0000,$0000
	dc.w $0004,$043f,$0000,$84ff,$fff0,$fff0,$0000
	dc.w $000a,$043f,$0000,$84ff,$fff0,$fff0,$0000
	dc.w $0004,$0441,$0000,$84ff,$0000,$fff0,$0000
	dc.w $0006,$0414,$0000,$84ff,$0008,$fff8,$0000
	dc.w $0004,$0409,$0000,$84ff,$0030,$0030,$0000
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0414,$0000,$84ff,$0020,$0070,$0003
	dc.w $000c,$0414,$0000,$84ff,$0020,$0070,$0003
	dc.w $000c,$0458,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;Tia
loc_073416:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$05c2,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$05c3,$0000,$84ff,$0000,$0000,$0000
	dc.w $000a,$05c4,$0000,$84ff,$0000,$0000,$0000
	dc.w $0004,$05c2,$0000,$84ff,$0000,$0000,$0000
	dc.w $0006,$0671,$0000,$84ff,$0008,$0008,$0000
	dc.w $0004,$0670,$0000,$84ff,$0028,$0038,$0000
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0676,$0000,$84ff,$0018,$0058,$0002
	dc.w $000c,$0677,$0000,$84ff,$0010,$0000,$0001
	dc.w $000c,$0639,$0000,$8400
	dc.w $8001

;Ril
loc_0734a8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$07b7,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$07b7,$0000,$84ff,$0000,$0000,$0000
	dc.w $000a,$07b6,$0000,$84ff,$0000,$0000,$0000
	dc.w $0004,$0730,$0000,$84ff,$0008,$0000,$0000
	dc.w $0006,$0860,$0000,$84ff,$0000,$0080,$0002
	dc.w $0004,$085c,$0000,$84ff,$0030,$0038,$0001
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0870,$0000,$84ff,$0018,$fff8,$0000
	dc.w $000c,$0870,$0000,$84ff,$0018,$fff8,$0000
	dc.w $000c,$0812,$0000,$8400
	dc.w $8001

;Als
loc_07353a:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$09ae,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$09ad,$0000,$84ff,$0000,$0000,$0000
	dc.w $000a,$09ac,$0000,$84ff,$0000,$0000,$0000
	dc.w $0004,$09b0,$0000,$84ff,$0000,$0000,$0000
	dc.w $0006,$09ff,$0000,$84ff,$0010,$0008,$0000
	dc.w $0004,$09f9,$0000,$84ff,$0038,$0040,$0001
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0a06,$0000,$84ff,$0010,$0078,$0002
	dc.w $000c,$0a08,$0000,$84ff,$0008,$0000,$0001
	dc.w $000c,$09d7,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;Pie
loc_0735d2:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0b52,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$0b53,$0000,$84ff,$0008,$0000,$0000
	dc.w $000a,$0b52,$0000,$84ff,$0000,$0000,$0000
	dc.w $0004,$0b55,$0000,$84ff,$0000,$0000,$0000
	dc.w $0006,$0b93,$0000,$84ff,$0008,$0000,$0000
	dc.w $0004,$0b97,$0000,$84ff,$0020,$0088,$0002
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0b99,$0000,$84ff,$0018,$0078,$0002
	dc.w $000c,$0b99,$0000,$84ff,$0018,$0078,$0002
	dc.w $000c,$0b89,$0000,$8400
	dc.w $8001

;Mah
loc_073664:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0d68,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$0d68,$0000,$84ff,$0000,$0000,$0000
	dc.w $000a,$0d69,$0000,$84ff,$0000,$0000,$0000
	dc.w $0004,$0d6d,$0000,$84ff,$0004,$0000,$0000
	dc.w $0006,$0dba,$0000,$84ff,$0020,$0008,$0000
	dc.w $0004,$0dbd,$0000,$84ff,$0030,$0048,$0001
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0dd6,$0000,$84ff,$0028,$0058,$0002
	dc.w $000c,$0dd8,$0000,$84ff,$0010,$fff8,$0001
	dc.w $000c,$0dde,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;Bai
loc_0736fc:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0f34,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$0f38,$0000,$84ff,$0000,$0000,$0000
	dc.w $000a,$0f37,$0000,$84ff,$0000,$0000,$0000
	dc.w $0004,$0f35,$0000,$84ff,$0008,$0000,$0000
	dc.w $0006,$0f2a,$0000,$84ff,$0018,$0080,$0003
	dc.w $0004,$0f28,$0000,$84ff,$0028,$0098,$0003
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0e5d,$0000,$84ff,$0018,$0000,$0000
	dc.w $000c,$0e5d,$0000,$84ff,$0018,$0000,$0000
	dc.w $000c,$0e5f,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;Sai
loc_073794:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$104d,$0000,$84ff,$0036,$0008,$0000
	dc.w $0004,$104f,$0000,$84ff,$fff9,$000a,$0000
	dc.w $000a,$104e,$0000,$84ff,$fffd,$000b,$0000
	dc.w $0004,$1051,$0000,$84ff,$0004,$000f,$0000
	dc.w $0006,$10ba,$0000,$84ff,$0015,$000b,$0000
	dc.w $0004,$10b8,$0000,$84ff,$002e,$0048,$0000
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$1185,$0000,$84ff,$0015,$0053,$0003
	dc.w $000c,$1186,$0000,$84ff,$0002,$0006,$0000
	dc.w $000c,$1067,$0000,$84ff,$0002,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07382c
	dc.w $8037
	dc.l loc_06e930
	dc.w $8038
	dc.l loc_07386c

	dc.w $803e,$0807,$2f00
	dc.w $803f,$1810,$080c,$2808
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$00bc,$0000
	dc.w $8047,$024b,$ffff

	dc.w $8036
	dc.l loc_06ef96

loc_07386c:
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $8047,$00b6,$0000
	dc.w $801a,$0001,$7fff
	dc.w $803b,$0000,$f020
	dc.w $0006,$0b90,$0000,$78ff,$fff0,$0000,$0000
	dc.w $8007,$0030,$0000
	dc.w $803b,$0000,$e818
	dc.w $0004,$0b91,$0000,$78ff,$fff8,$0028,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $802b,$1c8d
	dc.w $0004,$0b92,$0000,$78ff,$fff0,$0020,$0000
	dc.w $803b,$0000,$e010
	dc.w $0008,$0aca,$0000,$78ff,$0010,$0018,$0000
	dc.w $000c,$0acb,$0000,$78ff,$0010,$0000,$0000
	dc.w $8007,$ffd0,$0000
	dc.w $803b,$0000,$f828
	dc.w $0008,$0acc,$0000,$78ff,$fff0,$0000,$0000
	dc.w $8026,$0018
	dc.w $8034
	dc.w $8011,$001d,$0005,$d800,$60f0,$0100
	dc.w $8011,$001d,$0005,$c000,$a0f0,$0100
	dc.w $803b,$0000,$d810
	dc.w $0004,$0acd,$0000,$78ff,$0010,$0000,$0000
	dc.w $801d,$801a,$0000,$0000
	dc.w $803c,$0000
	dc.w $000c,$0ace,$0000,$78ff,$0018,$0000,$0000
	dc.w $0004,$0acf,$0000,$7800
	dc.w $0004,$0a92,$0000,$7800
	dc.w $0004,$0b06,$0000,$78ff,$000c,$0000,$0000
	dc.w $000c,$0b07,$0000,$80ff,$0008,$0000,$0000
	dc.w $802b,$1c8e
	dc.w $0004,$0afb,$0000,$8000
	dc.w $0004,$0afc,$0000,$8000
	dc.w $0005,$0afd,$0000,$8000
	dc.w $0006,$0afe,$0000,$8000
	dc.w $0005,$0afd,$0000,$8000
	dc.w $0006,$0afc,$0000,$8000
	dc.w $0004,$0afb,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Throw
;Sho
loc_0739b6:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$00c9,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$00cb,$0000,$84ff,$0000,$0000,$0000
	dc.w $0004,$00ca,$0000,$84ff,$0000,$0000,$0000
	dc.w $0008,$00cd,$0000,$84ff,$0000,$0004,$0000
	dc.w $000c,$013e,$0000,$84ff,$0008,$fff8,$0000
	dc.w $0008,$017c,$0000,$84ff,$0038,$0048,$0000
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0143,$0000,$84ff,$0018,$0070,$0002
	dc.w $000c,$0144,$0000,$84ff,$0010,$0000,$0001
	dc.w $000c,$012a,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;Dao
loc_073a4e:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$02a2,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$02a0,$0000,$84ff,$0000,$0000,$0000
	dc.w $0004,$029f,$0000,$84ff,$0000,$0000,$0000
	dc.w $0008,$02a2,$0000,$84ff,$0000,$0000,$0000
	dc.w $000c,$030e,$0000,$84ff,$0000,$fff0,$0000
	dc.w $0008,$030a,$0000,$84ff,$0030,$0048,$0001
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$02fa,$0000,$84ff,$0018,$0068,$0002
	dc.w $000c,$02fa,$0000,$84ff,$0018,$0068,$0002
	dc.w $000c,$022b,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;Con
loc_073ae6:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$043e,$0000,$84ff,$0028,$0000,$0000
	dc.w $0004,$043f,$0000,$84ff,$fff0,$fff0,$0000
	dc.w $0004,$043f,$0000,$84ff,$fff0,$fff0,$0000
	dc.w $0008,$0441,$0000,$84ff,$0000,$fff0,$0000
	dc.w $000c,$0414,$0000,$84ff,$0008,$fff8,$0000
	dc.w $0008,$0409,$0000,$84ff,$0030,$0030,$0000
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0414,$0000,$84ff,$0020,$0070,$0003
	dc.w $000c,$0414,$0000,$84ff,$0020,$0070,$0003
	dc.w $000c,$0458,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;Tia
loc_073b7e:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$05c2,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$05c3,$0000,$84ff,$0000,$0000,$0000
	dc.w $0004,$05c4,$0000,$84ff,$0000,$0000,$0000
	dc.w $0008,$05c2,$0000,$84ff,$0000,$0000,$0000
	dc.w $000c,$0671,$0000,$84ff,$0008,$0008,$0000
	dc.w $0008,$0670,$0000,$84ff,$0028,$0038,$0000
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0676,$0000,$84ff,$0018,$0058,$0002
	dc.w $000c,$0677,$0000,$84ff,$0010,$0000,$0001
	dc.w $000c,$0639,$0000,$8400
	dc.w $8001

;Ril
loc_073c10:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$07b7,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$07b7,$0000,$84ff,$0000,$0000,$0000
	dc.w $0004,$07b6,$0000,$84ff,$0000,$0000,$0000
	dc.w $0008,$0730,$0000,$84ff,$0008,$0000,$0000
	dc.w $000c,$0860,$0000,$84ff,$0000,$0080,$0002
	dc.w $0008,$085c,$0000,$84ff,$0030,$0038,$0001
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0870,$0000,$84ff,$0018,$fff8,$0000
	dc.w $000c,$0870,$0000,$84ff,$0018,$fff8,$0000
	dc.w $000c,$0812,$0000,$8400
	dc.w $8001

;Als
loc_073ca2:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$09ae,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$09ad,$0000,$84ff,$0000,$0000,$0000
	dc.w $0004,$09ac,$0000,$84ff,$0000,$0000,$0000
	dc.w $0008,$09b0,$0000,$84ff,$0000,$0000,$0000
	dc.w $000c,$09ff,$0000,$84ff,$0010,$0008,$0000
	dc.w $0008,$09f9,$0000,$84ff,$0038,$0040,$0001
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0a06,$0000,$84ff,$0010,$0078,$0002
	dc.w $000c,$0a08,$0000,$84ff,$0008,$0000,$0001
	dc.w $000c,$09d7,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;Pie
loc_073d3a:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0b52,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$0b53,$0000,$84ff,$0008,$0000,$0000
	dc.w $0004,$0b52,$0000,$84ff,$0000,$0000,$0000
	dc.w $0008,$0b55,$0000,$84ff,$0000,$0000,$0000
	dc.w $000c,$0b93,$0000,$84ff,$0008,$0000,$0000
	dc.w $0008,$0b97,$0000,$84ff,$0020,$0088,$0002
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0b99,$0000,$84ff,$0018,$0078,$0002
	dc.w $000c,$0b99,$0000,$84ff,$0018,$0078,$0002
	dc.w $000c,$0b89,$0000,$8400
	dc.w $8001

;Mah
loc_073dcc:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0d68,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$0d68,$0000,$84ff,$0000,$0000,$0000
	dc.w $0004,$0d69,$0000,$84ff,$0000,$0000,$0000
	dc.w $0008,$0d6d,$0000,$84ff,$0004,$0000,$0000
	dc.w $000c,$0dba,$0000,$84ff,$0020,$0008,$0000
	dc.w $0008,$0dbd,$0000,$84ff,$0030,$0048,$0001
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0dd6,$0000,$84ff,$0028,$0058,$0002
	dc.w $000c,$0dd8,$0000,$84ff,$0010,$fff8,$0001
	dc.w $000c,$0dde,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;Bai
loc_073e64:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0f34,$0000,$84ff,$0030,$0000,$0000
	dc.w $0004,$0f38,$0000,$84ff,$0000,$0000,$0000
	dc.w $0004,$0f37,$0000,$84ff,$0000,$0000,$0000
	dc.w $0008,$0f35,$0000,$84ff,$0008,$0000,$0000
	dc.w $000c,$0f2a,$0000,$84ff,$0018,$0080,$0003
	dc.w $0008,$0f28,$0000,$84ff,$0028,$0098,$0003
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$0e5d,$0000,$84ff,$0018,$0000,$0000
	dc.w $000c,$0e5d,$0000,$84ff,$0018,$0000,$0000
	dc.w $000c,$0e5f,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;Sai
loc_073efc:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$104d,$0000,$84ff,$0036,$0008,$0000
	dc.w $0004,$104f,$0000,$84ff,$fff9,$000a,$0000
	dc.w $0004,$104e,$0000,$84ff,$fffd,$000b,$0000
	dc.w $0008,$1051,$0000,$84ff,$0004,$000f,$0000
	dc.w $000c,$10ba,$0000,$84ff,$0015,$000b,$0000
	dc.w $0008,$10b8,$0000,$84ff,$002e,$0048,$0000
	dc.w $801b,$ffb0,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0004,$1185,$0000,$84ff,$0015,$0053,$0003
	dc.w $000c,$1186,$0000,$84ff,$0002,$0006,$0000
	dc.w $000c,$1067,$0000,$84ff,$0002,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_073f94:
	dc.w $8037
	dc.l loc_06e0ea
	dc.w $8038
	dc.l loc_073fc0

	dc.w $8039,$0018
	dc.w $803a,$00ff
	dc.w $803d,$8045,$0002
	dc.w $8048,$0550,$0004
	dc.w $8048,$00bc,$0014

	dc.w $8036
	dc.l loc_06ef7e

loc_073fc0:
	dc.w $8023
	dc.w $8002,$188a
	dc.w $8011,$001c,$0004,$e800,$c000
	dc.w $0002,$0a92,$0009,$8000
	dc.w $802a,$0032
	dc.w $8011,$001d,$0005,$e000,$f0f4,$ff00
	dc.w $8027,$ffdc,$0024
	dc.w $0004,$0af9,$00a4,$80ff,$0008,$0000,$0000
	dc.w $803a,$0004
	dc.w $8011,$001d,$0005,$1000,$f0f4,$ff00
	dc.w $0006,$0af9,$00a4,$80ff,$0008,$0000,$0000
	dc.w $803a,$0000
	dc.w $0004,$0afa,$00a5,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_074028:
	dc.w $8037
	dc.l loc_06e12e
	dc.w $8038
	dc.l loc_074058

	dc.w $803a,$00ff
	dc.w $8039,$0014
	dc.w $803d
	dc.w $8045,$0002
	dc.w $8048,$0550,$0003
	dc.w $8048,$00bc,$0000
	dc.w $8043,$0006

	dc.w $8036
	dc.l loc_06ef96

loc_074058:
	dc.w $8023
	dc.w $0003,$0a92,$0009,$8000
	dc.w $8002,$188d

	dc.w $804c
	dc.l $fffb0000,$fffa4000,$00002000,$00008000

	dc.w $802a,$0033
	dc.w $8011,$001d,$0005,$1800,$0800,$ff00
	dc.w $8027,$ffdc,$0024
	dc.w $0010,$0afa,$00a5,$8000
	dc.w $0008,$0b8f,$00a6,$8000
	dc.w $8003,$1870
	dc.w $8011,$001d,$0005,$0800,$e8e8,$ff00
	dc.w $803c,$0000
	dc.w $0002,$0a92,$0009,$8000
	dc.w $803a,$0004
	dc.w $8039,$0000
	dc.w $0003,$0a92,$0009,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0740cc:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_074100

	dc.w $803e,$0800,$0100
	dc.w $803f,$0000,$0000,$0008
	dc.w $8040,$0704,$0732,$2200
	dc.w $8041,$0801,$e818
	dc.w $8048,$0552,$00b4

	dc.w $8036
	dc.l loc_06ef7e

loc_074100:
	dc.w $802c
	dc.w $8027,$ffe4,$0014
	dc.w $0003,$0b06,$0086,$80ff,$0008,$0000,$0000
	dc.w $8027,$ffec,$0014
	dc.w $8045,$0002
	dc.w $0004,$0b07,$0087,$80ff,$0008,$0000,$0000
	dc.w $802b,$1c8a
	dc.w $8027,$fff4,$000c
	dc.w $001e,$0b08,$0088,$80ff,$0002,$0000,$0000
	dc.w $0002,$0b08,$0088,$80ff,$fffe,$0000,$0000
	dc.w $0002,$0b08,$0088,$80ff,$0002,$0000,$0000
	dc.w $0002,$0b08,$0088,$80ff,$fffe,$0000,$0000
	dc.w $0002,$0b08,$0088,$80ff,$0002,$0000,$0000
	dc.w $0002,$0b08,$0088,$80ff,$fffe,$0000,$0000
	dc.w $0002,$0b08,$0088,$80ff,$0002,$0000,$0000
	dc.w $0002,$0b08,$0088,$80ff,$fffe,$0000,$0000
	dc.w $8048,$0550,$0006
	dc.w $0002,$0b08,$0088,$80ff,$0002,$0000,$0000
	dc.w $8027,$ffe4,$0014
	dc.w $8045,$0002
	dc.w $0004,$0b09,$00a7,$80ff,$fffc,$0000,$0000
	dc.w $802b,$1c8c
	dc.w $8027,$ffdc,$0024
	dc.w $8011,$001d,$0005,$00a8,$0030,$ff00
	dc.w $0002,$0af8,$0093,$80ff,$0000,$fffe,$0000
	dc.w $0002,$0af8,$0093,$80ff,$0000,$0002,$0000
	dc.w $001e,$0af8,$0093,$8000
	dc.w $8001

;Ends at 074210