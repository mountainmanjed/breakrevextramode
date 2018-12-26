loc_04f3c8:
	move.w #$f0,($344,a4)
	move.w #$30,($346,a4)
	move.w #4,($348,a4)
	move.w #8,($34a,a4)
	move.w #$b0,($34c,a4)
	move.w #$40,($34e,a4)
	move.w #$78,($350,a4)
	rts

;--------------------------
loc_04f3f4:
	tst.b ($4d4,a4)
	beq.w loc_04f41e
	move.b ($35c,a4),d0
	andi.w #$fffc,d0
	bne.w loc_04f41e
	cmpi.b #6,($360,a4)
	bne.w loc_04f41e
	sf ($4d4,a4)
	move.l #loc_04f73c,($56,a4)

loc_04f41e:
	rts

;--------------------------
loc_04f420:
	movea.l #loc_050982,a0
	bsr.w loc_04f474
	bra.w loc_04f548

;--------------------------
loc_04f42e:
	bclr #7,($35c,a4)
	bne.w loc_04f43e
	jmp loc_02e5c6

;--------------------------
loc_04f43e:
	movea.l #loc_0507f2,a0
	bsr.w loc_04f474
	bra.w loc_04f548

;--------------------------
loc_04f44c:
	move.l (a7)+,($4d8,a4)
	jmp (a0)

;--------------------------
loc_04f452:
	move.l ($4d8,a4),d0
	beq.b loc_04f42e
	clr.l ($4d8,a4)
	movea.l d0,a0
	clr.b d0
	jmp (a0)

;--------------------------
loc_04f462:
	move.l ($4d8,a4),d0
	beq.b loc_04f42e
	clr.l ($4d8,a4)
	movea.l d0,a0
	move.b #-1,d0
	jmp (a0)

;--------------------------
loc_04f474:
	move.l (a7)+,($4dc,a4)
	jmp (a0)

;--------------------------
loc_04f47a:
	move.l ($4dc,a4),d0
	beq.w loc_04f548
	clr.l ($4dc,a4)
	movea.l d0,a0
	jmp (a0)

;--------------------------
loc_04f48a:
	st ($4d4,a4)
	cmpi.w #$10,($bc,a4)
	bge.w loc_04f51a
	cmpi.w #$a0,($378,a4)
	bgt.w loc_04f4fc
	cmpi.w #$3c,($378,a4)
	bgt.w loc_04f4d8
	cmpi.w #$1e,($378,a4)
	bgt.w loc_04f4ba
	bra.w loc_04f528

;--------------------------
loc_04f4ba:
	jsr RandomNumberGod
	lea loc_04f4ca(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04f4ca:
	dc.w $0002

	dc.w $001e
	dc.l loc_04f528
	dc.w $000a
	dc.l loc_04f53c

;--------------------------
loc_04f4d8
	jsr RandomNumberGod
	lea loc_04f4e8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04f4e8:
	dc.w $0003

	dc.w $0050
	dc.l loc_04f532
	dc.w $000a
	dc.l loc_04f528
	dc.w $000a
	dc.l loc_04f53c

;--------------------------
loc_04f4fc:
	jsr RandomNumberGod
	lea loc_04f50c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04f50c:
	dc.w $0002

	dc.w $0050
	dc.l loc_04f532
	dc.w $000a
	dc.l loc_04f528

;--------------------------
loc_04f51a:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_04f532

loc_04f528:
	movea.l #loc_0507f2,a0
	bra.w loc_04f542

loc_04f532:
	movea.l #loc_0508c2,a0
	bra.w loc_04f542

loc_04f53c:
	movea.l #loc_050982,a0

loc_04f542:
	movea.l a0,a0
	bsr.w loc_04f474

loc_04f548:
	clr.l ($4d8,a4)
	clr.l ($4dc,a4)
	clr.l ($4e0,a4)
	tst.b ($35d,a4)
	beq.w loc_04f564
	jsr loc_0226b4
	bra.b loc_04f548

loc_04f564:
	st ($35d,a4)
	cmpi.b #6,($360,a4)
	beq.w loc_04f73c
	tst.b ($247,a4)
	beq.w loc_04f72e
	cmpi.w #$a0,($378,a4)
	bgt.w loc_04f6f4
	cmpi.w #$3c,($378,a4)
	bgt.w loc_04f682
	cmpi.w #$1e,($378,a4)
	bgt.w loc_04f5fe
	jsr RandomNumberGod
	lea loc_04f5a8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04f5a8:
	dc.w $000e

	dc.w $000a
	dc.l loc_050aea
	dc.w $0005
	dc.l loc_050ac6
	dc.w $0005
	dc.l loc_050982
	dc.w $0032
	dc.l loc_05193c
	dc.w $0014
	dc.l loc_0516aa
	dc.w $0014
	dc.l loc_051ae2
	dc.w $0014
	dc.l loc_051506
	dc.w $0014
	dc.l loc_0515a4
	dc.w $0014
	dc.l loc_0519d0
	dc.w $0014
	dc.l loc_051d52
	dc.w $0014
	dc.l loc_051c56
	dc.w $000a
	dc.l loc_0513c6
	dc.w $000a
	dc.l loc_051a28
	dc.w $001e
	dc.l loc_051078

;--------------------------
loc_04f5fe:
	jsr RandomNumberGod
	lea loc_04f60e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04f60e:
	dc.w $0013

	dc.w $000a
	dc.l loc_050aea
	dc.w $0005
	dc.l loc_050ac6
	dc.w $0005
	dc.l loc_050982
	dc.w $0032
	dc.l loc_05193c
	dc.w $0014
	dc.l loc_0516aa
	dc.w $0014
	dc.l loc_051ae2
	dc.w $000f
	dc.l loc_0513c6
	dc.w $001a
	dc.l loc_0515a4
	dc.w $0014
	dc.l loc_051506
	dc.w $0014
	dc.l loc_051ec6
	dc.w $0014
	dc.l loc_05118a
	dc.w $0014
	dc.l loc_051db4
	dc.w $0014
	dc.l loc_051d52
	dc.w $0010
	dc.l loc_051c56
	dc.w $0010
	dc.l loc_0519d0
	dc.w $000a
	dc.l loc_051a28
	dc.w $0004
	dc.l loc_0517f8
	dc.w $001e
	dc.l loc_0509e8
	dc.w $001e
	dc.l loc_051078

;--------------------------
loc_04f682:
	jsr RandomNumberGod
	lea loc_04f692(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04f692:
	dc.w $0010

	dc.w $0028
	dc.l loc_0508c2
	dc.w $000a
	dc.l loc_050aea
	dc.w $000a
	dc.l loc_050982
	dc.w $000a
	dc.l loc_050aa2
	dc.w $001e
	dc.l loc_0509e8
	dc.w $0032
	dc.l loc_05193c
	dc.w $001e
	dc.l loc_0516aa
	dc.w $001e
	dc.l loc_051ae2
	dc.w $001e
	dc.l loc_051db4
	dc.w $0014
	dc.l loc_051a28
	dc.w $001e
	dc.l loc_05118a
	dc.w $0010
	dc.l loc_051c56
	dc.w $0014
	dc.l loc_051d52
	dc.w $0004
	dc.l loc_0517f8
	dc.w $0014
	dc.l loc_051fbc
	dc.w $001e
	dc.l loc_051078

;--------------------------
loc_04f6f4:
	cmpi.w #$10,($bc,a4)
	bge.w loc_04f42e
	jsr RandomNumberGod
	lea loc_04f70e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04f70e:
	dc.w $0005

	dc.w $0028
	dc.l loc_0508c2
	dc.w $0014
	dc.l loc_050aa2
	dc.w $000a
	dc.l loc_0509e8
	dc.w $0004
	dc.l loc_0517f8
	dc.w $0032
	dc.l loc_05193c

;--------------------------
loc_04f72e:
	movea.l #loc_050bd2,a0
	bsr.w loc_04f44c
	bra.w loc_04f548

;--------------------------
loc_04f73c:
	clr.b ($2f6,a4)
	move.l #$100020,d0
	jsr loc_02e420
	jsr RandomNumberGod
	lea loc_04f75c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04f75c:
	dc.w $0002
	dc.w $001e
	dc.l loc_04f778
	dc.w $001e
	dc.l loc_04f76a

;--------------------------
loc_04f76a:
	movea.l #loc_050982,a0
	bsr.w loc_04f474
	bra.w loc_04f548

;--------------------------
loc_04f778:
	movea.l #loc_05118a,a0
	bsr.w loc_04f44c
	bra.w loc_04f548

;--------------------------
loc_04f786:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_04f79a(pc,d0.w),d0
	jmp loc_04f79a(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04f79a:
	dc.w loc_04f7ba-loc_04f79a
	dc.w loc_04f7ba-loc_04f79a
	dc.w loc_04f7ba-loc_04f79a
	dc.w loc_04f7ba-loc_04f79a

	dc.w loc_04f7be-loc_04f79a
	dc.w loc_04f7d0-loc_04f79a
	dc.w loc_04f7e2-loc_04f79a
	dc.w loc_04f7f4-loc_04f79a

	dc.w loc_04f806-loc_04f79a
	dc.w loc_04f818-loc_04f79a
	dc.w loc_04f82a-loc_04f79a
	dc.w loc_04f83c-loc_04f79a

	dc.w loc_04f84e-loc_04f79a
	dc.w loc_04f84e-loc_04f79a
	dc.w loc_04f84e-loc_04f79a
	dc.w loc_04f84e-loc_04f79a

;--------------------------
loc_04f7ba:
	bra.w loc_04f852

;--------------------------
loc_04f7be:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_04f852
	bra.w loc_04f860

;--------------------------
loc_04f7d0:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_04f852
	bra.w loc_04f860

;--------------------------
loc_04f7e2:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_04f852
	bra.w loc_04f860

;--------------------------
loc_04f7f4:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_04f852
	bra.w loc_04f860

;--------------------------
loc_04f806:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_04f852
	bra.w loc_04f860

;--------------------------
loc_04f818:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_04f852
	bra.w loc_04f860

;--------------------------
loc_04f82a:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_04f852
	bra.w loc_04f860

;--------------------------
loc_04f83c:
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_04f852
	bra.w loc_04f860

;--------------------------
loc_04f84e:
	bra.w loc_04f860

;--------------------------
loc_04f852:
	movea.l #loc_050aea,a0
	bsr.w loc_04f474
	bra.w loc_04f548

;--------------------------
loc_04f860:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	scs ($4d1,a4)

loc_04f86e:
	tst.b ($365,a4)
	bne.w loc_04fae2
	clr.b ($2f6,a4)
	tst.b ($4d1,a4)
	bpl.w loc_04f8a8
	cmpi.b #3,($360,a4)
	beq.w loc_04f8a8
	cmpi.b #4,($360,a4)
	beq.w loc_04f8a8
	tst.b ($367,a4)
	beq.w loc_04f8ac
	cmpi.b #1,($360,a4)
	beq.w loc_04f8ac

loc_04f8a8:
	bra.w loc_04f8e0

loc_04f8ac:
	cmpi.w #$78,($378,a4)
	bgt.w loc_04f8e0
	cmpi.w #$28,($378,a4)
	blt.w loc_04f8e0
	cmpi.w #$ff92,($37a,a4)
	bgt.w loc_04f8e0
	tst.b ($24a,a4)
	bne.w loc_04f8e0
	movea.l #loc_0509e8,a0
	bsr.w loc_04f474
	bra.w loc_04fadc

loc_04f8e0:
	cmpi.b #3,($376,a4)
	beq.w loc_04f92c
	cmpi.b #3,($360,a4)
	beq.w loc_04f91e
	cmpi.b #4,($360,a4)
	beq.w loc_04f91e
	tst.b ($367,a4)
	beq.w loc_04f91e
	cmpi.b #1,($360,a4)
	beq.w loc_04f92c
	cmpi.b #2,($360,a4)
	beq.w loc_04f92c
	bra.w loc_04fac6

loc_04f91e:
	jsr RandomNumberGod
	cmpi.w #$fc00,d0
	bcs.w loc_04fac6

loc_04f92c:
	btst #7,($35c,a4)
	bne.w loc_04f956
	cmpi.w #$24,($36c,a4)
	bgt.w loc_04f956
	cmpi.w #$ff88,($37a,a4)
	blt.w loc_04f956
	clr.b ($2f6,a4)
	bsr.w loc_052ed0
	bne.w loc_04fadc

loc_04f956:
	btst #7,($35c,a4)
	bne.w loc_04f984
	cmpi.w #$30,($36c,a4)
	bgt.w loc_04f984
	cmpi.w #$ffc4,($37a,a4)
	blt.w loc_04f984
	clr.b ($2f6,a4)
	sf ($3cc,a4)
	bsr.w loc_052d28
	bne.w loc_04fadc

loc_04f984:
	cmpi.w #$60,($340,a4)
	blt.w loc_04f9d2
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_04f9d2
	btst #7,($35c,a4)
	bne.w loc_04f9d2
	cmpi.w #$50,($378,a4)
	bgt.w loc_04f9d2
	cmpi.w #$ffd8,($37a,a4)
	blt.w loc_04f9d2
	jsr loc_02c78a
	beq.w loc_04f9d2
	bsr.w loc_052cc0
	jsr loc_02e308
	bne.w loc_04fadc

loc_04f9d2:
	btst #7,($35c,a4)
	bne.w loc_04f9fe
	cmpi.w #$50,($378,a4)
	bgt.w loc_04f9fe
	cmpi.w #$ffb0,($37a,a4)
	blt.w loc_04f9fe
	move.b #2,($2f6,a4)
	bsr.w loc_052f5e
	bne.w loc_04fadc

loc_04f9fe:
	btst #7,($35c,a4)
	bne.w loc_04fa28
	cmpi.w #$50,($378,a4)
	bgt.w loc_04fa28
	cmpi.w #$ff7e,($37a,a4)
	blt.w loc_04fa28
	clr.b ($2f6,a4)
	bsr.w loc_052ed0
	bne.w loc_04fadc

loc_04fa28:
	btst #7,($35c,a4)
	bne.w loc_04fa54
	cmpi.w #$5a,($378,a4)
	bgt.w loc_04fa54
	cmpi.w #$fff6,($37a,a4)
	blt.w loc_04fa54
	move.b #2,($2f6,a4)
	bsr.w loc_052ed0
	bne.w loc_04fadc

loc_04fa54:
	btst #7,($35c,a4)
	bne.w loc_04fa84
	cmpi.w #$64,($378,a4)
	bgt.w loc_04fa84
	cmpi.w #$ffd8,($37a,a4)
	blt.w loc_04fa84
	clr.b ($2f6,a4)
	movea.l #loc_051ae2,a0
	bsr.w loc_04f44c
	bne.w loc_04fadc

loc_04fa84:
	cmpi.w #$40,($340,a4)
	blt.w loc_04fac6
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_04fac6
	btst #7,($35c,a4)
	beq.w loc_04fac6
	cmpi.w #$30,($378,a4)
	bgt.w loc_04fac6
	cmpi.w #$ffd8,($37a,a4)
	bgt.w loc_04fac6
	sf ($3cc,a4)
	bsr.w loc_052d28
	bne.w loc_04fadc

loc_04fac6:
	jsr loc_02e456
	jsr loc_0226b4
	jsr loc_02e370
	bra.w loc_04f86e

loc_04fadc:
	jsr loc_02e308

loc_04fae2:
	clr.b ($2f6,a4)
	bclr #2,($35c,a4)
	bra.w loc_04f548

loc_04faf0:
	cmpi.w #$a0,($340,a4)
	bge.w loc_04fb0e
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($358,a4),d0
	bcs.w loc_04fb0e
	bra.w loc_04fbda

loc_04fb0e:
	move.w #$11,($4d6,a4)

loc_04fb14:
	cmpi.b #1,($36a,a4)
	bne.w loc_04fb28
	btst #0,($362,a4)
	bne.w loc_04f860

loc_04fb28:
	tst.b ($367,a4)
	beq.w loc_04fbca
	cmpi.b #3,($36a,a4)
	beq.w loc_04fbbe
	cmpi.b #6,($36a,a4)
	beq.w loc_04fb82
	cmpi.b #5,($360,a4)
	beq.w loc_04fb6c
	cmpi.b #1,($36a,a4)
	bne.w loc_04fb62
	cmpi.w #$1c,($374,a4)
	bgt.w loc_04fbbe

loc_04fb62:
	cmpi.b #1,($360,a4)
	beq.w loc_04fb9c

loc_04fb6c:
	jsr loc_02e456
	jsr loc_0226b4
	subq.w #1,($4d6,a4)
	bge.b loc_04fb14
	bra.w loc_04fbca

loc_04fb82:
	cmpi.b #4,($376,a4)
	beq.b loc_04fb6c
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_04fbda
	bra.w loc_050aea

loc_04fb9c:
	cmpi.b #4,($36a,a4)
	beq.w loc_04fbbe
	cmpi.w #$60,($358,a4)
	blt.w loc_04fbca
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_04fbca

loc_04fbbe
	btst #3,($24a,a4)
	bne.b loc_04fb6c
	bra.w loc_04fbec

loc_04fbca:
	btst #7,($35c,a4)
	bne.w loc_04fbe8
	jsr loc_02e456

loc_04fbda:
	jsr loc_0226b4
	moveq #8,d0
	jsr loc_02e39c

loc_04fbe8:
	bra.w loc_04f548

loc_04fbec:
	tst.b ($247,a4)
	beq.w loc_050bd2

loc_04fbf4:
	btst #1,($246,a4)
	bne.w loc_04fc06
	jsr loc_0226b4
	bra.b loc_04fbf4

loc_04fc06:
	btst #3,($24a,a4)
	bne.w loc_0501ec
	cmpi.b #5,($36a,a4)
	beq.w loc_0501ec
	cmpi.b #5,($360,a4)
	beq.w loc_0501ec
	tst.b ($365,a4)
	beq.w loc_04f860
	cmpi.b #1,($360,a4)
	beq.w loc_04fc62
	cmpi.b #2,($360,a4)
	bne.w loc_04fc58
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_0501de
	sf d3
	move.w ($378,a4),d2
	bra.w loc_04fc6e

loc_04fc58:
	st d3
	move.w ($374,a4),d2
	bra.w loc_04fc6e

loc_04fc62:
	sf d3
	move.w ($374,a4),d2
	add.w ($378,a4),d2
	asr.w #1,d2

loc_04fc6e:
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_04fc82
	bra.w loc_04fe60

loc_04fc82:
	btst #7,($35c,a4)
	beq.w loc_04fe60
	cmpi.w #$1e,($36c,a4)
	bge.w loc_04fcc0
	jsr RandomNumberGod
	lea loc_04fca6(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04fca6:
	dc.w $0004

	dc.w $001e
	dc.l loc_04fd6a
	dc.w $001e
	dc.l loc_04fdb0
	dc.w $000a
	dc.l loc_04fe28
	dc.w $000a
	dc.l loc_04fdea

;--------------------------
loc_04fcc0:
	cmpi.w #$3c,($36c,a4)
	bge.w loc_04fcfa
	jsr RandomNumberGod
	lea loc_04fcda(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04fcda:
	dc.w $0005

	dc.w $001e
	dc.l loc_04fd6a
	dc.w $001e
	dc.l loc_04fdb0
	dc.w $0014
	dc.l loc_04fda2
	dc.w $000a
	dc.l loc_04fe28
	dc.w $000a
	dc.l loc_04fdc8

;--------------------------
loc_04fcfa:
	cmpi.w #$78,($36c,a4)
	bge.w loc_04fd3a
	jsr RandomNumberGod
	lea loc_04fd14(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04fd14:
	dc.w $0006

	dc.w $001e
	dc.l loc_04fd86
	dc.w $001e
	dc.l loc_04fd94
	dc.w $001e
	dc.l loc_04fda2
	dc.w $000a
	dc.l loc_04fe28
	dc.w $000a
	dc.l loc_04fe0c
	dc.w $000a
	dc.l loc_04fd78

;--------------------------
loc_04fd3a:
	jsr RandomNumberGod
	lea loc_04fd4a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04fd4a:
	dc.w $0005
	dc.w $001e
	dc.l loc_04fd94
	dc.w $001e
	dc.l loc_04fda2
	dc.w $001e
	dc.l loc_04fd86
	dc.w $000a
	dc.l loc_04fd78
	dc.w $000a
	dc.l loc_04fe0c

;--------------------------
loc_04fd6a:
	movea.l #loc_051078,a0
	bsr.w loc_04f44c
	bra.w loc_0501c2

;--------------------------
loc_04fd78:
	movea.l #loc_050b66,a0
	bsr.w loc_04f474
	bra.w loc_0501c2

;--------------------------
loc_04fd86:
	movea.l #loc_050aa2,a0
	bsr.w loc_04f474
	bra.w loc_0501c2

;--------------------------
loc_04fd94:
	movea.l #loc_0508c2,a0
	bsr.w loc_04f474
	bra.w loc_0501c2

;--------------------------
loc_04fda2:
	movea.l #loc_050982,a0
	bsr.w loc_04f474
	bra.w loc_0501c2

;--------------------------
loc_04fdb0:
	cmpi.w #$40,($340,a4)
	blt.w loc_0501c2
	movea.l #loc_0519d0,a0
	bsr.w loc_04f44c
	bra.w loc_0501c2

;--------------------------
loc_04fdc8:
	cmpi.w #$40,($340,a4)
	blt.w loc_0501c2
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052e16
	jsr loc_02e308
	bra.w loc_0501c2

;--------------------------
loc_04fdea:
	cmpi.w #$40,($340,a4)
	blt.w loc_0501c2
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052dcc
	jsr loc_02e308
	bra.w loc_0501c2

;--------------------------
loc_04fe0c:
	cmpi.w #$40,($340,a4)
	blt.w loc_0501c2
	st ($3cc,a4)
	bsr.w loc_052d76
	jsr loc_02e308
	bra.w loc_0501c2

;--------------------------
loc_04fe28:
	cmpi.w #$60,($340,a4)
	blt.w loc_04fe60
	jsr loc_02c78a
	beq.w loc_04fe4e
	bsr.w loc_052cc0
	beq.w loc_04fe4e
	jsr loc_02e308
	bra.w loc_0501c2

loc_04fe4e:
	st ($3cc,a4)
	bsr.w loc_052d28
	jsr loc_02e308
	bra.w loc_0501c2

;--------------------------
loc_04fe60:
	jsr RandomNumberGod
	andi.w #$1f,d0
	subi.w #$10,d0
	add.w d0,d2
	btst #0,($369,a4)
	bne.w loc_04fe9c
	btst #2,($369,a4)
	bne.w loc_04ff04
	btst #1,($369,a4)
	bne.w loc_04fed8
	btst #3,($369,a4)
	bne.w loc_04ff04
	bra.w loc_0501ec

loc_04fe9c:
	cmpi.w #$18,d2
	ble.w loc_0501b4
	cmpi.w #$1c,d2
	ble.w loc_050006
	cmpi.w #$22,d2
	ble.w loc_04ff8a
	cmpi.w #$28,d2
	ble.w loc_050042
	cmpi.w #$2e,d2
	ble.w loc_04ff30
	cmpi.w #$38,d2
	ble.w loc_050076
	cmpi.w #$42,d2
	ble.w loc_04ffd6
	bra.w loc_0501ec

loc_04fed8:
	cmpi.w #$1e,d2
	ble.w loc_0500c6
	cmpi.w #$24,d2
	ble.w loc_050112
	cmpi.w #$28,d2
	ble.w loc_04ffa6
	cmpi.w #$2e,d2
	ble.w loc_04ff30
	cmpi.w #$38,d2
	ble.w loc_050076
	bra.w loc_0501ec

loc_04ff04:
	cmpi.w #$1a,d2
	ble.w loc_05008a
	cmpi.w #$20,d2
	ble.w loc_04ff64
	cmpi.w #$24,d2
	ble.w loc_050180
	cmpi.w #$33,d2
	ble.w loc_050076
	cmpi.w #$42,d2
	ble.w loc_05014c
	bra.w loc_0501ec

loc_04ff30:
	cmpi.w #$60,($340,a4)
	blt.w loc_0501c2
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0501c2
	jsr loc_02c78a
	beq.w loc_0501c2
	bsr.w loc_052cf4
	beq.w loc_0501c2
	jsr loc_02e308
	bra.w loc_0501c2

loc_04ff64:
	cmpi.w #$40,($340,a4)
	blt.w loc_0501c2
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0501c2
	movea.l #loc_0519d0,a0
	bsr.w loc_04f44c
	bra.w loc_0501c2

loc_04ff8a:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0501c2
	movea.l #loc_050ac6,a0
	bsr.w loc_04f474
	bra.w loc_0501c2

loc_04ffa6:
	cmpi.w #$40,($340,a4)
	blt.w loc_0501c2
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0501c2
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052dcc
	jsr loc_02e308
	bra.w loc_0501c2

loc_04ffd6:
	cmpi.w #$40,($340,a4)
	blt.w loc_0501c2
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0501c2
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052e16
	jsr loc_02e308
	bra.w loc_0501c2

loc_050006:
	clr.b ($2f6,a4)
	bsr.w loc_053000
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_050026
	bra.w loc_0501c2

loc_050026:
	cmpi.w #$40,($340,a4)
	blt.w loc_0501c2
	sf ($3cc,a4)
	bsr.w loc_052dcc
	jsr loc_02e308
	bra.w loc_0501c2

loc_050042:
	cmpi.w #$40,($340,a4)
	blt.w loc_0501c2
	bsr.w loc_052e94
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0501c2
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052e16
	bra.w loc_0501c2

loc_050076:
	move.b #2,($2f6,a4)
	bsr.w loc_052ed0
	jsr loc_02e308
	bra.w loc_0501c2

loc_05008a:
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_050096
	move.w d0,($4d6,a4)
	clr.b ($2f6,a4)
	bsr.w loc_053098
	jsr loc_02e2d0
	move.w ($4d6,a4),d0
	dbra d0,loc_050096
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_0501c2
	bsr.w loc_052f5e
	bra.w loc_0501c2

loc_0500c6:
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_0500d2:
	move.w d0,($4d6,a4)
	move.b #2,($2f6,a4)
	bsr.w loc_053098
	jsr loc_02e2d0
	move.w ($4d6,a4),d0
	dbf d0,loc_0500d2
	cmpi.w #$40,($340,a4)
	blt.w loc_0501c2
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_0501c2
	st ($3cc,a4)
	bsr.w loc_052d76
	bra.w loc_0501c2

loc_050112:
	move.b #2,($2f6,a4)
	bsr.w loc_052f5e
	jsr loc_02e308
	cmpi.w #$40,($340,a4)
	blt.w loc_0501c2
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_0501c2
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052d76
	bra.w loc_0501c2

loc_05014c:
	bsr.w loc_052f5e
	jsr loc_02e308
	cmpi.w #$40,($340,a4)
	blt.w loc_0501c2
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_0501c2
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052d76
	bra.w loc_0501c2

loc_050180:
	bsr.w loc_052ed0
	jsr loc_02e308
	cmpi.w #$40,($340,a4)
	blt.w loc_0501c2
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_0501c2
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052d76
	bra.w loc_0501c2

loc_0501b4:
	movea.l #loc_0509e8,a0
	bsr.w loc_04f474
	bra.w loc_0501c2

;--------------------------
loc_0501c2:
	jsr loc_0226b4
	btst #7,($35c,a4)
	bne.w loc_0501da
	moveq #6,d0
	jsr loc_02e39c

loc_0501da:
	bra.w loc_04f42e

;--------------------------
loc_0501de:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_050aea

loc_0501ec:
	jsr loc_02e456
	jsr loc_0226b4
	bclr #3,($35c,a4)
	bra.w loc_04f42e

;--------------------------
loc_050202:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_050216(pc,d0.w),d0
	jmp loc_050216(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_050216:
	dc.w loc_050236-loc_050216
	dc.w loc_050236-loc_050216
	dc.w loc_05023c-loc_050216
	dc.w loc_050250-loc_050216

	dc.w loc_050264-loc_050216
	dc.w loc_050278-loc_050216
	dc.w loc_05028c-loc_050216
	dc.w loc_0502a0-loc_050216

	dc.w loc_0502b4-loc_050216
	dc.w loc_0502b4-loc_050216
	dc.w loc_0502b4-loc_050216
	dc.w loc_0502b4-loc_050216

	dc.w loc_0502b4-loc_050216
	dc.w loc_0502b4-loc_050216
	dc.w loc_0502b4-loc_050216
	dc.w loc_0502b4-loc_050216

;--------------------------
loc_050236:
	jmp loc_02e5b2

;--------------------------
loc_05023c:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0502b8
	jmp loc_02e5b2

;--------------------------
loc_050250:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_0502b8
	jmp loc_02e5b2

;--------------------------
loc_050264:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0502b8
	jmp loc_02e5b2

;--------------------------
loc_050278:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_0502b8
	jmp loc_02e5b2

;--------------------------
loc_05028c:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0502b8
	jmp loc_02e5b2

;--------------------------
loc_0502a0:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_0502b8
	jmp loc_02e5b2

;--------------------------
loc_0502b4:
	bra.w loc_0502b8

;--------------------------
loc_0502b8:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcc.b loc_0502cc
	move.b #1,($4d2,a4)
	bra.b loc_0502dc

loc_0502cc:
	cmpi.w #$c000,d0
	bcc.b loc_0502d8
	sf ($4d2,a4)
	bra.b loc_0502dc

loc_0502d8:
	st ($4d2,a4)

loc_0502dc:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	scs ($4d3,a4)

loc_0502ea:
	tst.b ($367,a4)
	beq.w loc_050300
	cmpi.w #$20,($374,a4)
	bge.w loc_050300
	bra.w loc_0503fe

loc_050300:
	tst.b ($363,a4)
	beq.w loc_050446
	cmpi.w #$ffc8,($370,a4)
	ble.w loc_050446
	cmpi.w #$30,($370,a4)
	ble.w loc_0503fe
	tst.b ($4d3,a4)
	beq.w loc_05037a
	cmpi.w #$ec,($37c,a4)
	bgt.w loc_05037a
	cmpi.w #$a6,($37c,a4)
	ble.w loc_05037a
	cmpi.b #$12,($364,a4)
	beq.w loc_05037a
	cmpi.w #$40,($340,a4)
	blt.w loc_05037a
	st ($3cc,a4)
	bsr.w loc_052d76
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_050446
	st ($3cc,a4)
	bsr.w loc_052d76
	jsr loc_02e308
	bra.w loc_050446

loc_05037a:
	tst.b ($4d2,a4)
	beq.w loc_0503aa
	bgt.w loc_05038a
	bra.w loc_0503fe

loc_05038a:
	cmpi.w #$4c,($37c,a4)
	bgt.w loc_0503fe
	tst.b ($24a,a4)
	bne.w loc_0503fe
	movea.l #loc_050b66,a0
	bsr.w loc_04f474
	bra.w loc_050446

loc_0503aa:
	cmpi.w #$33,($37c,a4)
	bgt.w loc_0503fe
	cmpi.b #$12,($364,a4)
	beq.w loc_0503fe
	tst.b ($24a,a4)
	bne.w loc_0503fe
	cmpi.w #$80,($340,a4)
	blt.w loc_0503f0
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_0503f0
	st ($3cc,a4)
	bsr.w loc_052e16
	jsr loc_02e308
	bra.w loc_050446

loc_0503f0:
	movea.l #loc_050bae,a0
	bsr.w loc_04f474
	bra.w loc_050446

loc_0503fe:
	cmpi.w #$c0,($340,a4)
	blt.w loc_050436
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_050436
	cmpi.w #$1c,($370,a4)
	bge.w loc_050436
	cmpi.w #4,($370,a4)
	bgt.w loc_050436
	bsr.w loc_052cc0
	beq.w loc_050436
	bra.w loc_050446

loc_050436:
	jsr loc_02e456
	jsr loc_0226b4
	bra.w loc_0502ea

loc_050446:
	clr.b ($2f6,a4)
	bra.w loc_04f548

loc_05044e:
	clr.b ($2f6,a4)
	cmpi.w #$40,($340,a4)
	bge.w loc_050460
	bra.w loc_04f548

loc_050460:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_05049a
	jsr RandomNumberGod
	lea loc_05047a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05047a:
	dc.w $0005
	dc.w $0014
	dc.l loc_0505c2
	dc.w $0014
	dc.l loc_050556
	dc.w $0014
	dc.l loc_050598
	dc.w $0014
	dc.l loc_050600
	dc.w $0014
	dc.l loc_05057c

;--------------------------
loc_05049a:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_0504da
	jsr RandomNumberGod
	lea loc_0504b4(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0504b4:
	dc.w $0006
	dc.w $0032
	dc.l loc_050556
	dc.w $0014
	dc.l loc_0505c2
	dc.w $000a
	dc.l loc_050598
	dc.w $000a
	dc.l loc_050600
	dc.w $000a
	dc.l loc_050618
	dc.w $000a
	dc.l loc_0505b4

;--------------------------
loc_0504da:
	cmpi.w #$78,($378,a4)
	bgt.w loc_05051a
	jsr RandomNumberGod
	lea loc_0504f4(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0504f4:
	dc.w $0006

	dc.w $0032
	dc.l loc_050556
	dc.w $000a
	dc.l loc_0505c2
	dc.w $000a
	dc.l loc_0505d0
	dc.w $000a
	dc.l loc_05058a
	dc.w $000a
	dc.l loc_05057c
	dc.w $000a
	dc.l loc_0505b4

;--------------------------
loc_05051a:
	jsr RandomNumberGod
	lea loc_05052a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05052a:
	dc.w $0007

	dc.w $0032
	dc.l loc_050556
	dc.w $000a
	dc.l loc_05058a
	dc.w $000a
	dc.l loc_0505d0
	dc.w $000a
	dc.l loc_0505a6
	dc.w $000a
	dc.l loc_0505b4
	dc.w $000a
	dc.l loc_05057c
	dc.w $000a
	dc.l loc_05056e

;--------------------------
loc_050556:
	jsr loc_02c78a
	beq.w loc_0505c2
	movea.l #loc_05193c,a0
	bsr.w loc_04f44c
	bra.w loc_04f548

;--------------------------
loc_05056e:
	bsr.w loc_052e6e
	jsr loc_02e308
	bra.w loc_04f548

;--------------------------
loc_05057c:
	movea.l #loc_050982,a0
	bsr.w loc_04f474
	bra.w loc_04f548

;--------------------------
loc_05058a:
	movea.l #loc_050aa2,a0
	bsr.w loc_04f474
	bra.w loc_04f548

;--------------------------
loc_050598:
	movea.l #loc_051ec6,a0
	bsr.w loc_04f44c
	bra.w loc_04f548

;--------------------------
loc_0505a6:
	movea.l #loc_051fbc,a0
	bsr.w loc_04f44c
	bra.w loc_04f548

;--------------------------
loc_0505b4:
	movea.l #loc_05118a,a0
	bsr.w loc_04f44c
	bra.w loc_04f548

;--------------------------
loc_0505c2:
	movea.l #loc_051078,a0
	bsr.w loc_04f44c
	bra.w loc_04f548

;--------------------------
loc_0505d0:
	cmpi.w #$40,($340,a4)
	blt.w loc_04f548
	movea.l #loc_0517f8,a0
	bsr.w loc_04f44c
	bra.w loc_04f548

;--------------------------
loc_0505e8:
	cmpi.w #$40,($340,a4)
	blt.w loc_04f548
	movea.l #loc_0519d0,a0
	bsr.w loc_04f44c
	bra.w loc_04f548

;--------------------------
loc_050600:
	cmpi.w #$40,($340,a4)
	blt.w loc_04f548
	movea.l #loc_051d52,a0
	bsr.w loc_04f44c
	bra.w loc_04f548

;--------------------------
loc_050618:
	cmpi.w #$40,($340,a4)
	blt.w loc_04f548
	movea.l #loc_051c56,a0
	bsr.w loc_04f44c
	bra.w loc_04f548

;--------------------------
loc_050630:
	cmpi.w #$60,($340,a4)
	blt.w loc_05064e
	btst #1,($246,a4)
	beq.w loc_04f452
	bsr.w loc_052c9a
	jsr loc_02e308

loc_05064e:
	bra.w loc_04f548

;--------------------------
loc_050652:
	cmpi.w #$60,($340,a4)
	blt.w loc_050666
	bsr.w loc_052cf4
	jsr loc_02e308

loc_050666:;Tia already biten by gay satan
	bra.w loc_04f548

;--------------------------
loc_05066a:
	clr.b ($2f6,a4)
	cmpi.w #$20,($36c,a4)
	bge.w loc_05067e
	move.b #4,($2f6,a4)

loc_05067e:
	cmpi.w #$60,($36c,a4)
	ble.w loc_05068e
	move.b #8,($2f6,a4)

loc_05068e:
	clr.b ($2f6,a4)
	btst #5,($361,a4)
	beq.w loc_0506a4
	jsr loc_0226b4
	bra.b loc_05066a

loc_0506a4:
	clr.b ($2f6,a4)
	moveq #$14,d0
	jsr loc_02e39c
	cmpi.w #$40,($340,a4)
	bge.w loc_0506c8
	movea.l #loc_0507f2,a0
	bsr.w loc_04f474
	bra.w loc_04f548

loc_0506c8:
	jsr RandomNumberGod
	lea loc_0506d8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0506d8:
	dc.w $0003

	dc.w $0032
	dc.l loc_0506fa
	dc.w $001e
	dc.l loc_0506ec
	dc.w $000a
	dc.l loc_050708

;--------------------------
loc_0506ec:
	movea.l #loc_05118a,a0
	bsr.w loc_04f44c
	bra.w loc_04f548

;--------------------------
loc_0506fa:
	movea.l #loc_051078,a0
	bsr.w loc_04f44c
	bra.w loc_04f548

;--------------------------
loc_050708:
	cmpi.w #$60,($340,a4)
	blt.w loc_05073a
	cmpi.w #$3c,($378,a4)
	blt.w loc_050726
	movea.l #loc_050aa2,a0
	bsr.w loc_04f474

loc_050726:
	btst #1,($246,a4)
	beq.w loc_04f452
	bsr.w loc_052c9a
	jsr loc_02e308

loc_05073a:
	bra.w loc_04f548

;--------------------------
loc_05073e:
	andi.b #2,($2f6,a4)

loc_050744:
	btst #5,($249,a4)
	beq.w loc_05077a
	cmpi.w #$80,($340,a4)
	blt.w loc_05076a
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_05076a
	st ($2fb,a4)

loc_05076a:
	moveq #8,d0
	jsr loc_02e39c
	jsr loc_0226b4
	bra.b loc_050744

loc_05077a:
	jsr loc_02e370
	move.l #$80004,d0
	jsr loc_02e39c
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_0507a0
	bra.w loc_04f42e

loc_0507a0:
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$32,($378,a4)
	bgt.w loc_0507ee

loc_0507b6:
	tst.b ($249,a4)
	beq.w loc_0507ee
	jsr RandomNumberGod
	lea loc_0507d2(pc),a0
	jsr loc_02decc
	bra.w loc_0507e6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0507d2:
	dc.w $0003

	dc.w $0050
	dc.l loc_051078
	dc.w $000a
	dc.l loc_05193c
	dc.w $000a
	dc.l loc_0519d0

;--------------------------
loc_0507e6:
	jsr loc_0226b4
	bra.b loc_0507b6

;--------------------------
loc_0507ee:
	bra.w loc_04faf0

;--------------------------
loc_0507f2:
	cmpi.w #$80,($340,a4)
	bge.w loc_050822
	andi.b #$2,($2f6,a4)
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$50,d2
	jsr loc_02e0f4
	bra.w loc_04f47a

loc_050822:
	jsr loc_02e496
	jsr loc_02e550
	bra.w loc_04f47a
	jsr loc_02e370
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.b loc_0507f2
	cmpi.w #$a0,($358,a4)
	blt.w loc_05086a
	jsr RandomNumberGod
	cmpi.w #$3000,d0
	bcs.w loc_050982
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_0508c2

loc_05086a:
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$40,d2
	jsr loc_02e0aa
	jsr loc_02e496
	jsr loc_02e550
	bra.w loc_04f47a

;--------------------------
loc_050892:
	cmpi.w #$10,($bc,a4)
	ble.w loc_0508b8
	move.b #4,($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr loc_0226b4

loc_0508b8:
	move.l #$40004,d0
	bra.w loc_0508e0

;--------------------------
loc_0508c2:
	cmpi.w #$20,($340,a4)
	bge.w loc_0508da
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0507f2

loc_0508da:
	move.l #$200030,d0

loc_0508e0:
	cmpi.w #$10,($bc,a4)
	bgt.w loc_05093a
	cmpi.w #$ff,($340,a4)
	bge.w loc_05093a
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$60,d2
	jsr loc_02e0f4
	cmpi.w #$20,($340,a4)
	bge.w loc_050932
	clr.b ($2f6,a4)
	move.w #$18,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$40,d2
	swap d2
	jsr loc_02e0f4

loc_050932:
	clr.b ($2f6,a4)
	bra.w loc_04f47a

loc_05093a:
	movem.l d0,-(a7)
	bsr.w loc_053144
	movem.l (a7)+,d0
	bne.w loc_05096a
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$60,($378,a4)
	ble.b loc_050932
	clr.b ($2f6,a4)
	jsr loc_0226b4
	bra.b loc_05093a

loc_05096a:
	moveq #0,d2
	move.w #$60,d2
	jsr loc_02e0f4
	bra.b loc_050932

loc_050978:
	move.l #$40004,d0
	bra.w loc_0509a0

;--------------------------
loc_050982:
	cmpi.w #$20,($340,a4)
	bge.w loc_05099a
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0507f2

loc_05099a:
	move.l #$200020,d0

loc_0509a0:
	move.b #4,($2f6,a4)
	moveq #0,d2
	move.w #$a0,d2
	swap d2
	jsr loc_02e0f4
	cmpi.w #$20,($340,a4)
	bge.w loc_0509e0
	clr.b ($2f6,a4)
	move.w #$18,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$40,d2
	swap d2
	jsr loc_02e0f4

loc_0509e0:
	clr.b ($2f6,a4)
	bra.w loc_04f47a

;--------------------------
loc_0509e8:
	cmpi.w #$20,($340,a4)
	blt.w loc_04f47a
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_050a0e
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_050a7e
	bra.w loc_050a74

loc_050a0e:
	cmpi.w #$50,($36c,a4)
	bgt.w loc_050a34
	move.l #$100010,d0
	move.l #$640000,d2
	move.b #4,($2f6,a4)
	jsr loc_02e0f4
	bra.w loc_050a52

loc_050a34:
	cmpi.w #$64,($36c,a4)
	blt.w loc_050a52
	move.l #$100010,d0
	moveq #$50,d2
	move.b #8,($2f6,a4)
	jsr loc_02e0f4

loc_050a52:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_050a7e
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_050a74
	move.b #5,($2f6,a4)
	bra.w loc_050a84

loc_050a74:
	move.b #1,($2f6,a4)
	bra.w loc_050a84

loc_050a7e:
	move.b #9,($2f6,a4)

loc_050a84:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_050a84
	clr.b ($2f6,a4)
	moveq #4,d0
	jsr loc_02e39c
	bra.w loc_04f47a

;--------------------------
loc_050aa2:
	cmpi.w #$40,($340,a4)
	blt.w loc_0508c2
	clr.b ($2f6,a4)
	bsr.w loc_053144
	jsr loc_0226b4
	moveq #8,d0
	jsr loc_02e39c
	bra.w loc_04f47a

;--------------------------
loc_050ac6:
	cmpi.w #$40,($340,a4)
	blt.w loc_050982
	clr.b ($2f6,a4)
	bsr.w loc_053126
	jsr loc_0226b4
	moveq #8,d0
	jsr loc_02e39c
	bra.w loc_04f47a

;--------------------------
loc_050aea:
	cmpi.w #$20,($340,a4)
	blt.w loc_050b5e
	cmpi.w #$28,($36c,a4)
	blt.w loc_050b16
	cmpi.w #$50,($36c,a4)
	blt.w loc_050b28
	cmpi.w #$b4,($36c,a4)
	bgt.w loc_050b46
	bra.w loc_0507f2

loc_050b16
	move.b ($246,a4),d0
	andi.b #%1100,d0
	bne.w loc_050b24
	bra.b loc_050ac6

loc_050b24:
	bra.w loc_0509e8

loc_050b28
	move.l #$200020,d0
	move.b #4,($2f6,a4)
	move.w #$b4,d2
	swap d2
	clr.w d2
	jsr loc_02e0f4
	bra.w loc_050b5e

loc_050b46
	move.l #$200020,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$50,d2
	jsr loc_02e0f4

loc_050b5e:
	clr.b ($2f6,a4)
	bra.w loc_04f47a

;--------------------------
loc_050b66:
	move.b #9,($2f6,a4)

loc_050b6c:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_050b6c
	moveq #2,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_04f47a


;--------------------------
loc_050b8a:
	move.b #5,($2f6,a4)

loc_050b90
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_050b90
	moveq #2,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_04f47a

;--------------------------
loc_050bae:
	move.b #1,($2f6,a4)

loc_050bb4:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_050bb4
	moveq #2,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_04f47a

;--------------------------
loc_050bd2:
	btst #0,($24a,a4)
	bne.w loc_04f452
	tst.b ($247,a4)
	bne.w loc_04f452
	cmpi.w #$30,($340,a4)
	blt.w loc_04f452

loc_050bee:
	clr.b ($2f6,a4)
	btst #1,($246,a4)
	bne.w loc_05106a
	move.b ($361,a4),d0
	andi.b #$f8,d0
	beq.w loc_050c12
	cmpi.b #5,($360,a4)
	beq.w loc_051060

loc_050c12:
	tst.b ($365,a4)
	bne.w loc_050e54
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_050e32
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_050d22
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_050c66
	cmpi.w #$22,($378,a4)
	bgt.w loc_050c66
	cmpi.w #$20,($37a,a4)
	bgt.w loc_050c66
	cmpi.w #$ffe0,($37a,a4)
	blt.w loc_050c66
	bsr.w loc_053000
	bra.w loc_05106a

loc_050c66:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.b loc_050c66
	cmpi.w #$32,($378,a4)
	bgt.w loc_050c98
	cmpi.w #$40,($37a,a4)
	bgt.w loc_050c98
	cmpi.w #$ffd0,($37a,a4)
	blt.w loc_050c98
	bsr.w loc_052f5e
	bra.w loc_05106a

loc_050c98:
	cmpi.w #$42,($378,a4)
	bgt.w loc_050cc4
	cmpi.w #$10,($37a,a4)
	bgt.w loc_050cc4
	cmpi.w #$ffc0,($37a,a4)
	blt.w loc_050cc4
	move.b #1,($2f6,a4)
	bsr.w loc_052f5e
	bra.w loc_05106a

loc_050cc4:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_050cf8
	cmpi.w #$42,($378,a4)
	bgt.w loc_050cf8
	cmpi.w #$30,($37a,a4)
	bgt.w loc_050cf8
	cmpi.w #$10,($37a,a4)
	blt.w loc_050cf8
	bsr.w loc_053098
	bra.w loc_05106a

loc_050cf8:
	cmpi.w #$52,($378,a4)
	bgt.w loc_050d1e
	cmpi.w #$20,($37a,a4)
	bgt.w loc_050d1e
	cmpi.w #$ffc0,($37a,a4)
	blt.w loc_050d1e
	bsr.w loc_052ed0
	bra.w loc_05106a

loc_050d1e:
	bra.w loc_051060

loc_050d22:
	cmpi.w #$32,($378,a4)
	bgt.w loc_050d4e
	cmpi.w #$10,($37a,a4)
	bgt.w loc_050d4e
	cmpi.w #$ffc0,($37a,a4)
	blt.w loc_050d4e
	move.b #1,($2f6,a4)
	bsr.w loc_052f5e
	bra.w loc_05106a

loc_050d4e:
	cmpi.w #$32,($378,a4)
	bgt.w loc_050d74
	cmpi.w #$40,($37a,a4)
	bgt.w loc_050d74
	cmpi.w #$10,($37a,a4)
	blt.w loc_050d74
	bsr.w loc_052f5e
	bra.w loc_05106a

loc_050d74:
	cmpi.w #$42,($378,a4)
	bgt.w loc_050d9a
	cmpi.w #$40,($37a,a4)
	bgt.w loc_050d9a
	cmpi.w #$ffe0,($37a,a4)
	blt.w loc_050d9a
	bsr.w loc_053098
	bra.w loc_05106a

loc_050d9a:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_050de2
	cmpi.w #$42,($378,a4)
	bgt.w loc_050de2
	cmpi.w #$10,($37a,a4)
	bgt.w loc_050de2
	cmpi.w #$ffc0,($37a,a4)
	blt.w loc_050de2
	cmpi.w #$40,($340,a4)
	blt.w loc_05106a
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052e16
	bra.w loc_05106a

loc_050de2:
	cmpi.w #$52,($378,a4)
	bgt.w loc_050e08
	cmpi.w #$20,($37a,a4)
	bgt.w loc_050e08
	cmpi.w #$ffd0,($37a,a4)
	blt.w loc_050e08
	bsr.w loc_053000
	bra.w loc_05106a

loc_050e08:
	cmpi.w #$52,($378,a4)
	bgt.w loc_050e2e
	cmpi.w #$20,($37a,a4)
	bgt.w loc_050e2e
	cmpi.w #$ffc0,($37a,a4)
	blt.w loc_050e2e
	bsr.w loc_052ed0
	bra.w loc_05106a

loc_050e2e
	bra.w loc_051060

;--------------------------
loc_050e32:
	cmpi.w #$20,($378,a4)
	bge.w loc_051060
	cmpi.w #$20,($37a,a4)
	bgt.w loc_051060
	cmpi.w #$ffe0,($37a,a4)
	blt.w loc_051060
	bra.w loc_05106a

;--------------------------
loc_050e54:
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_050e86
	tst.w  ($21a,a4)
	blt.w loc_051060
	cmpi.l #$5a0000,($22a,a4)
	bgt.w loc_051060
	cmpi.l #$5a0000,($22a,a4)
	ble.w loc_050ebe
	bra.w loc_051060

;--------------------------
loc_050e86:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_050eba
	cmpi.w #$3c,($378,a4)
	bgt.w loc_051060
	cmpi.w #$40,($340,a4)
	blt.w loc_050eba
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052e16
	bne.w loc_05106a

loc_050eba:
	bra.w loc_051060

;--------------------------
loc_050ebe:
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_051058
	cmpi.w #$12,($378,a4)
	bgt.w loc_050edc
	bsr.w loc_053000
	bra.w loc_05106a

loc_050edc:
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_050fa0
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_050f08
	cmpi.w #$32,($378,a4)
	bgt.w loc_050f08
	bsr.w loc_053098
	bra.w loc_05106a

;--------------------------
loc_050f08:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_050f28
	cmpi.w #$2a,($378,a4)
	bgt.w loc_050f28
	bsr.w loc_052f5e
	bra.w loc_05106a

loc_050f28:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_050f48
	cmpi.w #$2a,($378,a4)
	bgt.w loc_050f48
	bsr.w loc_053000
	bra.w loc_05106a

loc_050f48:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_050f7c
	cmpi.w #$36,($378,a4)
	bgt.w loc_050f7c
	cmpi.w #$40,($340,a4)
	blt.w loc_050f7c
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052e16
	bra.w loc_05106a

loc_050f7c:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_050f9c
	cmpi.w #$44,($378,a4)
	bgt.w loc_050f9c
	bsr.w loc_052ed0
	bra.w loc_05106a

loc_050f9c:
	bra.w loc_051060

;--------------------------
loc_050fa0:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_050fc0
	cmpi.w #$22,($378,a4)
	bgt.w loc_050fc0
	bsr.w loc_052f5e
	bra.w loc_05106a

loc_050fc0:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_050fe0
	cmpi.w #$32,($378,a4)
	bgt.w loc_050fe0
	bsr.w loc_053000
	bra.w loc_05106a

loc_050fe0:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_051000
	cmpi.w #$32,($378,a4)
	bgt.w loc_051000
	bsr.w loc_053098
	bra.w loc_05106a

loc_051000:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_051034
	cmpi.w #$42,($378,a4)
	bgt.w loc_051034
	cmpi.w #$40,($340,a4)
	blt.w loc_051034
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052e16
	bra.w loc_05106a

loc_051034:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_051054
	cmpi.w #$52,($378,a4)
	bgt.w loc_051054
	bsr.w loc_052ed0
	bra.w loc_05106a

loc_051054:
	bra.w loc_051060

;--------------------------
loc_051058:
	bsr.w loc_053000
	bra.w loc_05106a

;--------------------------
loc_051060:
	jsr loc_0226b4
	bra.w loc_050bee

;--------------------------
loc_05106a:
	jsr loc_02e308
	clr.b ($2f6,a4)
	bra.w loc_04f452

;--------------------------
loc_051078:
	cmpi.w #$40,($340,a4)
	blt.w loc_04f452
	move.w #7,d0

loc_051086:
	move.w d0,($4d6,a4)
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_04f452
	btst #6,($24a,a4)
	bne.w loc_04f452
	tst.b ($247,a4)
	beq.w loc_05112a
	cmpi.w #$ffb0,($37a,a4)
	bgt.w loc_0510f8
	cmpi.w #$80,($340,a4)
	blt.w loc_0510f8
	cmpi.w #$12,($378,a4)
	ble.w loc_0510ea
	cmpi.w #$62,($378,a4)
	ble.w loc_0510dc
	clr.b ($2f6,a4)
	bsr.w loc_053144
	bra.w loc_051132

loc_0510dc:
	movea.l #loc_050b66,a0
	bsr.w loc_04f474
	bra.w loc_051132


loc_0510ea:
	movea.l #loc_050bae,a0
	bsr.w loc_04f474
	bra.w loc_051132

loc_0510f8:
	cmpi.w #$1c,($36c,a4)
	ble.w loc_05111e
	move.l #$200030,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$1c,d2
	jsr loc_02e0f4
	bra.w loc_051132

loc_05111e:
	bsr.w loc_052c4a
	bne.w loc_051148
	bra.w loc_051132

loc_05112a:
	bsr.w loc_052c6c
	bne.w loc_051148

loc_051132:
	move.w ($4d6,a4),d0
	dbra d0,loc_051086
	jsr loc_02e308
	clr.b ($2f6,a4)
	bra.w loc_04f452

loc_051148:
	clr.b ($2f6,a4)
	jsr loc_02e308
	cmpi.w #$50,($36c,a4)
	bgt.w loc_05116a
	movea.l #loc_050ac6,a0
	bsr.w loc_04f474
	bra.w loc_051182

loc_05116a:
	movea.l #loc_0508c2,a0
	bsr.w loc_04f474
	movea.l #loc_0509e8,a0
	bsr.w loc_04f474
	bra.w loc_051182

loc_051182:
	clr.b ($2f6,a4)
	bra.w loc_04f452

;--------------------------
loc_05118a:
	move.l ($4d8,a4),($4e4,a4)
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_04f452
	btst #1,($246,a4)
	beq.w loc_04f452
	btst #3,($24a,a4)
	bne.w loc_04f452
	cmpi.w #$60,($340,a4)
	blt.w loc_04f452
	clr.b ($2f6,a4)

loc_0511be:
	cmpi.w #$5a,($36c,a4)
	ble.w loc_0511e8
	jsr loc_0226b4
	move.l #$200020,d0
	moveq #0,d2
	move.w #$40,d2
	move.b #8,($2f6,a4)
	jsr loc_02e0f4
	bra.b loc_0511be

loc_0511e8
	movea.l #loc_0509e8,a0
	bsr.w loc_04f474

loc_0511f2
	jsr loc_0226b4
	movea.l #loc_050bd2,a0
	bsr.w loc_04f44c
	move.l ($4e4,a4),($4d8,a4)
	btst #1,($246,a4)
	beq.b loc_0511f2
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_05122c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05122c:
	dc.w $0003

	dc.w $0014
	dc.l loc_051252
	dc.w $0014
	dc.l loc_051300
	dc.w $0014
	dc.l loc_051240

;--------------------------
loc_051240:
	sf ($3cc,a4)
	bsr.w loc_052d28
	jsr loc_02e308
	bra.w loc_0513be

;--------------------------
loc_051252:
	cmpi.w #$2c,($36c,a4)
	bgt.w loc_051284
	cmpi.w #$40,($340,a4)
	blt.w loc_051284
	move.b #2,($2f6,a4)
	bsr.w loc_053098
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_0513be
	bra.b loc_051252

loc_051284:
	move.b #2,($2f6,a4)
	bsr.w loc_052f5e
	jsr loc_02e26e
	bgt.w loc_0512a0
	blt.w loc_0512a0
	bra.w loc_0513b8

loc_0512a0:
	cmpi.w #$60,($340,a4)
	blt.w loc_0513b8
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_051394
	jsr RandomNumberGod
	lea loc_0512c8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0512c8:
	dc.w $0002

	dc.w $001e
	dc.l loc_0512ee

	dc.w $001e
	dc.l loc_0512d6


;==========================
loc_0512d6
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052e16
	jsr loc_02e308
	bra.w loc_0513be

;==========================
loc_0512ee:
	st ($3cc,a4)
	bsr.w loc_052d76
	jsr loc_02e308
	bra.w loc_0513be

;--------------------------
loc_051300:
	bsr.w loc_052f5e
	jsr loc_02e26e
	bgt.w loc_051316
	blt.w loc_051316
	bra.w loc_0513be

loc_051316
	cmpi.w #$60,($340,a4)
	blt.w loc_0513b8
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_051394
	jsr RandomNumberGod
	lea loc_05133e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05133e:
	dc.w $0003

	dc.w $0014
	dc.l loc_051352
	dc.w $0014
	dc.l loc_05137c
	dc.w $0014
	dc.l loc_051364

;==========================
loc_051352:
	sf ($3cc,a4)
	bsr.w loc_052d28
	jsr loc_02e308
	bra.w loc_0513be

;==========================
loc_051364:
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052e16
	jsr loc_02e308
	bra.w loc_0513be

;==========================
loc_05137c:
	cmpi.w #$40,($340,a4)
	blt.w loc_0513b8
	bsr.w loc_052eb2
	jsr loc_02e308
	bra.w loc_0513be

loc_051394:
	cmpi.w #$60,($340,a4)
	blt.w loc_0513b8
	btst #1,($246,a4)
	beq.w loc_0513be
	bsr.w loc_052cc0
	beq.b loc_051352
	jsr loc_02e308
	bra.w loc_0513be

loc_0513b8:
	jsr loc_02e308

loc_0513be:
	clr.b ($2f6,a4)
	bra.w loc_04f462

;--------------------------
loc_0513c6:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_04f452
	btst #1,($246,a4)
	beq.w loc_04f452
	cmpi.w #$3c,($378,a4)
	bgt.w loc_04f452
	cmpi.w #$30,($340,a4)
	blt.w loc_04f452
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_053098
	beq.w loc_04f452
	cmpi.w #7,($2fe,a4)
	beq.w loc_05143c
	jsr loc_02e26e
	beq.w loc_0514fe
	cmpi.w #$40,($340,a4)
	blt.w loc_0514fe
	bsr.w loc_052f5e
	jsr loc_02e26e
	bgt.w loc_05147c
	blt.w loc_05147c
	bra.w loc_0514f8

loc_05143c
	jsr loc_02e26e
	bgt.w loc_05144e
	blt.w loc_05144e
	bra.w loc_0514f8

loc_05144e
	cmpi.w #$60,($340,a4)
	blt.w loc_0514f8
	jsr RandomNumberGod
	lea loc_051468(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_051468:
	dc.w $0003
	dc.w $0014
	dc.l loc_0514da
	dc.w $0014
	dc.l loc_0514ba
	dc.w $0014
	dc.l loc_0514cc

;--------------------------
loc_05147c:
	cmpi.w #$80,($340,a4)
	blt.w loc_0514f8
	bsr.w loc_052f5e
	jsr loc_02e26e
	bgt.w loc_05149c
	blt.w loc_05149c
	bra.w loc_0514f8

loc_05149c:
	jsr RandomNumberGod
	lea loc_0514ac(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0514ac:
	dc.w $0002

	dc.w $000a
	dc.l loc_0514cc

	dc.w $000a
	dc.l loc_0514da

;==========================
loc_0514ba:
	sf ($3cc,a4)
	bsr.w loc_052d28
	jsr loc_02e308
	bra.w loc_0514fe

;==========================
loc_0514cc:
	bsr.w loc_052eb2
	jsr loc_02e308
	bra.w loc_0514fe

;==========================
loc_0514da:
	cmpi.w #$60,($340,a4)
	blt.b loc_0514cc
	jsr loc_02c78a
	beq.b loc_0514cc
	movea.l #loc_05193c,a0
	bsr.w loc_04f44c
	bra.w loc_0514fe

loc_0514f8:
	jsr loc_02e308

loc_0514fe:
	clr.b ($2f6,a4)
	bra.w loc_04f452

;--------------------------
loc_051506:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_04f452
	btst #1,($246,a4)
	beq.w loc_04f452
	cmpi.w #$28,($378,a4)
	bgt.w loc_04f452
	cmpi.w #$30,($340,a4)
	blt.w loc_04f452
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	move.b #2,($2f6,a4)
	bsr.w loc_053098
	jsr loc_02e308
	bsr.w loc_053098
	jsr loc_02e26e
	bgt.w loc_051566
	blt.w loc_051566
	bra.w loc_051596

loc_051566
	btst #1,($362,a4)
	beq.w loc_051588
	cmpi.w #$40,($340,a4)
	blt.w loc_051596
	bsr.w loc_052e94
	jsr loc_02e308
	bra.w loc_05159c

loc_051588
	movea.l #loc_0516aa,a0
	bsr.w loc_04f44c
	bra.w loc_05159c

loc_051596:
	jsr loc_02e308

loc_05159c:
	clr.b ($2f6,a4)
	bra.w loc_04f452

;--------------------------
loc_0515a4:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_04f452
	btst #1,($246,a4)
	beq.w loc_04f452
	cmpi.w #$3c,($378,a4)
	bgt.w loc_04f452
	cmpi.w #$30,($340,a4)
	blt.w loc_04f452
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_053000
	beq.w loc_04f452
	cmpi.w #7,($2fe,a4)
	beq.w loc_05160c
	cmpi.w #$60,($340,a4)
	blt.w loc_05169c
	jsr loc_02e26e
	bgt.w loc_051664
	blt.w loc_051664
	bra.w loc_05169c

loc_05160c:
	jsr loc_02e26e
	bgt.w loc_05161e
	blt.w loc_05161e
	bra.w loc_05169c

loc_05161e:
	cmpi.w #$60,($340,a4)
	blt.w loc_05169c
	btst #1,($362,a4)
	beq.w loc_051656
	jsr RandomNumberGod
	lea loc_051642(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_051642:
	dc.w $0003

	dc.w $000a
	dc.l loc_051676

	dc.w $000a
	dc.l loc_051664

	dc.w $000a
	dc.l loc_051684

;--------------------------
loc_051656:
	movea.l #loc_0516aa,a0
	bsr.w loc_04f44c
	bra.w loc_0516a2

loc_051664:
	st ($3cc,a4)
	bsr.w loc_052e16
	jsr loc_02e308
	bra.w loc_0516a2

loc_051676:
	bsr.w loc_052e94
	jsr loc_02e308
	bra.w loc_0516a2

loc_051684:
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052dcc
	jsr loc_02e308
	bra.w loc_0516a2

loc_05169c:
	jsr loc_02e308

loc_0516a2:
	clr.b ($2f6,a4)
	bra.w loc_04f452

;--------------------------
loc_0516aa:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_04f452
	btst #1,($246,a4)
	beq.w loc_04f452
	btst #3,($24a,a4)
	bne.w loc_04f452
	cmpi.w #$30,($340,a4)
	blt.w loc_04f452
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550

loc_0516e4:
	cmpi.w #$32,($36c,a4)
	bgt.w loc_05171a
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_05171a
	move.b #2,($2f6,a4)
	bsr.w loc_053098
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_0517f0
	bra.b loc_0516e4

loc_05171a:
	jsr loc_02e496
	jsr loc_02e550
	btst #2,($361,a4)
	bne.w loc_05176a
	cmpi.w #$28,($36c,a4)
	ble.w loc_051748
	cmpi.w #$50,($36c,a4)
	ble.w loc_05176a
	bra.w loc_0517f0

loc_051748:
	move.b #2,($2f6,a4)
	bsr.w loc_052f5e
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_0517a8
	blt.w loc_0517a8
	bra.w loc_0517f0

loc_05176a:
	cmpi.w #$55,($36c,a4)
	bgt.w loc_0517f0
	move.b #2,($2f6,a4)
	bsr.w loc_052ed0
	jsr loc_02e26e
	bgt.w loc_0517a8
	blt.w loc_051790
	bra.w loc_0517f0

loc_051790:
	cmpi.w #$c0,($340,a4)
	blt.w loc_0517f0
	bsr.w loc_052cc0
	jsr loc_02e308
	bra.w loc_0517f0

loc_0517a8:
	jsr loc_02c78a
	beq.w loc_0517ce
	cmpi.w #$c0,($340,a4)
	blt.w loc_0517ce
	bsr.w loc_052cf4
	beq.w loc_0517ce
	jsr loc_02e308
	bra.w loc_0517f0

loc_0517ce:
	cmpi.w #$60,($340,a4)
	blt.w loc_0517ea
	st ($3cc,a4)
	bsr.w loc_052d76
	jsr loc_02e308
	bra.w loc_0517f0

loc_0517ea:
	jsr loc_02e308

loc_0517f0:
	clr.b ($2f6,a4)
	bra.w loc_04f452

;--------------------------
loc_0517f8:
	cmpi.w #$20,($340,a4)
	blt.w loc_04f452
	cmpi.w #$a0,($36c,a4)
	bgt.w loc_051856
	jsr RandomNumberGod
	lea loc_05181c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05181c:
	dc.w $0003

	dc.w $003c
	dc.l loc_051830

	dc.w $001e
	dc.l loc_05183e

	dc.w $000a
	dc.l loc_05184c

;==========================
loc_051830:
	movea.l #loc_050982,a0
	bsr.w loc_04f474
	bra.w loc_051856

;==========================
loc_05183e:
	bsr.w loc_053126
	jsr loc_02e308
	bra.w loc_051856

;==========================
loc_05184c:
	movea.l #loc_050b8a,a0
	bsr.w loc_04f474

loc_051856:
	jsr RandomNumberGod
	cmpi.w #$fc00,d0
	bcs.w loc_05187c
	clr.b ($2f6,a4)
	bsr.w loc_053098
	jsr loc_02e2d0
	bsr.w loc_053098
	jsr loc_02e308

loc_05187c:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_051898(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_051898:
	dc.w $0002

	dc.w $0050
	dc.l loc_0518c2
	dc.w $0014
	dc.l loc_0518a6

;==========================
loc_0518a6:
	cmpi.w #$60,($340,a4)
	blt.w loc_051934
	btst #1,($246,a4)
	beq.w loc_051934
	bsr.w loc_052c9a
	bne.w loc_051934

loc_0518c2:
	cmpi.w #$40,($340,a4)
	blt.w loc_051934
	st ($3cc,a4)
	bsr.w loc_052d76
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_0518f6(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0518f6:
	dc.w $0003

	dc.w $0050
	dc.l loc_051926

	dc.w $0014
	dc.l loc_05190a

	dc.w $000a
	dc.l loc_051918

;==========================
loc_05190a:
	movea.l #loc_0508c2,a0
	bsr.w loc_04f474
	bra.w loc_051934

;==========================
loc_051918:
	movea.l #loc_0509e8,a0
	bsr.w loc_04f474
	bra.w loc_04f548

;==========================
loc_051926:
	movea.l #loc_050aa2,a0
	bsr.w loc_04f474
	bra.w loc_051934

;==========================
loc_051934:
	clr.b ($2f6,a4)
	bra.w loc_04f452

;--------------------------
loc_05193c:
	move.b ($361,a4),d0
	andi.b #$30,d0
	bne.w loc_04f452
	btst #1,($246,a4)
	beq.w loc_04f452
	btst #3,($24a,a4)
	bne.w loc_04f452
	clr.b ($2f6,a4)
	cmpi.w #$60,($340,a4)
	blt.w loc_0519c8
	jsr RandomNumberGod
	lea loc_05197a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05197a:
	dc.w $0003

	dc.w $0014
	dc.l loc_0519b4

	dc.w $0014
	dc.l loc_05199c

	dc.w $0014
	dc.l loc_05198e

;--------------------------
loc_05198e:
	bsr.w loc_052c9a
	jsr loc_02e308
	bra.w loc_0519c8

;--------------------------
loc_05199c:
	cmpi.w #$78,($36c,a4)
	bgt.w loc_0519c8
	bsr.w loc_052cf4
	jsr loc_02e308
	bra.w loc_0519c8

;--------------------------
loc_0519b4:
	cmpi.w #$8c,($36c,a4)
	bgt.w loc_0519c8
	bsr.w loc_052cc0
	jsr loc_02e308

loc_0519c8:
	clr.b ($2f6,a4)
	bra.w loc_04f452

;--------------------------
loc_0519d0:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_04f452
	btst #1,($246,a4)
	beq.w loc_04f452
	btst #5,($24a,a4)
	bne.w loc_04f452
	clr.b ($2f6,a4)
	cmpi.w #$40,($340,a4)
	blt.w loc_051a20
	st ($3cc,a4)
	tst.b ($365,a4)
	beq.w loc_051a0e
	sf ($3cc,a4)

loc_051a0e:
	cmpi.w #$30,($378,a4)
	bgt.w loc_051a20
	bsr.w loc_052d28
	bra.w loc_051a20

loc_051a20:
	clr.b ($2f6,a4)
	bra.w loc_04f452

;--------------------------
loc_051a28:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_04f452
	btst #1,($246,a4)
	beq.w loc_04f452
	cmpi.w #$60,($340,a4)
	blt.w loc_04f452
	clr.b ($2f6,a4)
	tst.b ($365,a4)
	beq.w loc_051a5a
	move.b #2,($2f6,a4)

loc_051a5a:
	bsr.w loc_053098
	beq.w loc_04f452
	jsr loc_02e26e
	beq.w loc_051aa0

loc_051a6c:
	cmpi.w #$28,($36c,a4)
	bge.w loc_051acc
	clr.b ($2f6,a4)
	tst.b ($365,a4)
	beq.w loc_051a88
	move.b #2,($2f6,a4)

loc_051a88:
	bsr.w loc_053098
	jsr loc_02e2d0
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_051ada
	bra.b loc_051a6c

loc_051aa0:
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_051aac:
	move.w d0,($4d6,a4)
	bsr.w loc_053098
	jsr loc_02e2d0
	tst.b ($271,a4)
	bne.b loc_051a6c
	move.w ($4d6,a4),d0
	dbra d0,loc_051aac
	bra.w loc_051ada

loc_051acc
	bsr.w loc_052f5e
	jsr loc_02e308
	bra.w loc_051ada


loc_051ada:
	clr.b ($2f6,a4)
	bra.w loc_04f462

;--------------------------
loc_051ae2:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_04f452
	btst #1,($246,a4)
	beq.w loc_04f452
	cmpi.w #$64,($378,a4)
	bgt.w loc_04f452
	cmpi.w #$30,($340,a4)
	blt.w loc_04f452
	clr.b ($2f6,a4)
	bsr.w loc_052f5e
	beq.w loc_04f452
	cmpi.w #7,($2fe,a4)
	beq.w loc_051b5a
	jsr loc_02e26e
	beq.w loc_051c4e
	cmpi.w #$40,($340,a4)
	blt.w loc_051c4e
	jsr RandomNumberGod
	lea loc_051b46(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_051b46:
	dc.w $0003

	dc.w $003c
	dc.l loc_051c48

	dc.w $000a
	dc.l loc_051bd4

	dc.w $000a
	dc.l loc_051be2
;--------------------------
loc_051b5a:
	jsr loc_02e26e
	beq.w loc_051c4e
	cmpi.w #$60,($340,a4)
	blt.w loc_051c4e
	jsr RandomNumberGod
	lea loc_051b7e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_051b7e:
	dc.w $0006
	
	dc.w $0014
	dc.l loc_051bbc
	
	dc.w $0014
	dc.l loc_051ba4
	
	dc.w $0014
	dc.l loc_051c24
	
	dc.w $000a
	dc.l loc_051c36
	
	dc.w $000a
	dc.l loc_051bf0
	
	dc.w $000a
	dc.l loc_051c02

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_051ba4:
	cmpi.w #$40,($340,a4)
	blt.w loc_051c48
	bsr.w loc_052e94
	jsr loc_02e308
	bra.w loc_051c4e

loc_051bbc:
	cmpi.w #$40,($340,a4)
	blt.w loc_051c48
	bsr.w loc_052eb2
	jsr loc_02e308
	bra.w loc_051c4e

loc_051bd4
	bsr.w loc_052ed0
	jsr loc_02e308
	bra.w loc_051c4e

loc_051be2:
	bsr.w loc_052f5e
	jsr loc_02e308
	bra.w loc_051c4e

loc_051bf0:
	sf ($3cc,a4)
	bsr.w loc_052e16
	jsr loc_02e308
	bra.w loc_051c4e

loc_051c02:
	cmpi.w #$60,($340,a4)
	blt.w loc_051c24
	jsr loc_02c78a
	beq.w loc_051c24
	bsr.w loc_052cc0
	jsr loc_02e308
	bra.w loc_051c4e

loc_051c24:
	sf ($3cc,a4)
	bsr.w loc_052d28
	jsr loc_02e308
	bra.w loc_051c4e

loc_051c36:
	st ($3cc,a4)
	bsr.w loc_052d76
	jsr loc_02e308
	bra.w loc_051c4e

loc_051c48:
	jsr loc_02e308

loc_051c4e:
	clr.b ($2f6,a4)
	bra.w loc_04f452

;--------------------------
loc_051c56:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_04f452
	btst #1,($246,a4)
	beq.w loc_04f452
	btst #5,($24a,a4)
	bne.w loc_04f452
	cmpi.w #$40,($340,a4)
	blt.w loc_051d4a
	clr.b ($2f6,a4)
	sf ($3cc,a4)
	cmpi.w #$50,($378,a4)
	blt.w loc_04f452
	bsr.w loc_052e16
	jsr loc_02e308
	btst #1,($362,a4)
	beq.w loc_051cca
	jsr RandomNumberGod
	lea loc_051cb6(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_051cb6:
	dc.w $0003

	dc.w $001e
	dc.l loc_051d12

	dc.w $000a
	dc.l loc_051d34

	dc.w $000a
	dc.l loc_051cf6

;--------------------------
loc_051cca:
	jsr RandomNumberGod
	lea loc_051cda(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_051cda:
	dc.w $0002

	dc.w $001e
	dc.l loc_051ce8

	dc.w $001e
	dc.l loc_051cf6

;--------------------------
loc_051ce8:
	movea.l #loc_0516aa,a0
	bsr.w loc_04f44c
	bra.w loc_051d4a

;--------------------------
loc_051cf6:
	cmpi.w #$64,($378,a4)
	bgt.w loc_051d4a
	st ($3cc,a4)
	bsr.w loc_052dcc
	jsr loc_02e308
	bra.w loc_051d4a

;--------------------------
loc_051d12:
	cmpi.w #$40,($340,a4)
	blt.w loc_051d4a
	cmpi.w #$50,($378,a4)
	bgt.w loc_051d4a
	bsr.w loc_052e94
	jsr loc_02e308
	bra.w loc_051d4a

;--------------------------
loc_051d34:
	cmpi.w #$64,($378,a4)
	bgt.w loc_051d4a
	st ($3cc,a4)
	bsr.w loc_052e16
	bra.w loc_051d4a

loc_051d4a:
	clr.b ($2f6,a4)
	bra.w loc_04f452

;--------------------------
loc_051d52:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_04f452
	btst #1,($246,a4)
	beq.w loc_04f452
	btst #5,($24a,a4)
	bne.w loc_04f452
	cmpi.w #$40,($340,a4)
	blt.w loc_051dac
	clr.b ($2f6,a4)
	cmpi.w #$20,($36c,a4)
	bgt.w loc_051d98
	bsr.w loc_053000
	jsr loc_02e26e
	beq.w loc_051dac

loc_051d98:
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_052dcc
	jsr loc_02e308

loc_051dac:
	clr.b ($2f6,a4)
	bra.w loc_04f452

;--------------------------
loc_051db4:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_04f452
	btst #1,($246,a4)
	beq.w loc_04f452
	btst #5,($24a,a4)
	bne.w loc_04f452
	cmpi.w #$50,($378,a4)
	blt.w loc_04f452
	cmpi.w #$30,($340,a4)
	blt.w loc_04f452
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_050aa2,a0
	bsr.w loc_04f474
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	beq.w loc_051e3c
	jsr RandomNumberGod
	lea loc_051e28(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_051e28:
	dc.w $0003

	dc.w $0050
	dc.l loc_051e8a

	dc.w $001e
	dc.l loc_051e98

	dc.w $000a
	dc.l loc_051e60

;--------------------------
loc_051e3c:
	jsr RandomNumberGod
	lea loc_051e4c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_051e4c:
	dc.w $0003

	dc.w $0050
	dc.l loc_051e8a

	dc.w $001e
	dc.l loc_051eb0

	dc.w $000a
	dc.l loc_051e7c

;--------------------------
loc_051e60:
	cmpi.w #$40,($340,a4)
	blt.w loc_051ebe
	sf ($3cc,a4)
	bsr.w loc_052e16
	jsr loc_02e308
	bra.w loc_051ebe

loc_051e7c:
	movea.l #loc_0519d0,a0
	bsr.w loc_04f44c
	bra.w loc_051ebe

;--------------------------
loc_051e8a:
	movea.l #loc_051078,a0
	bsr.w loc_04f44c
	bra.w loc_051ebe

;--------------------------
loc_051e98:
	cmpi.w #$40,($340,a4)
	blt.w loc_051ebe
	bsr.w loc_052e94
	jsr loc_02e308
	bra.w loc_051ebe

;--------------------------
loc_051eb0:
	movea.l #loc_0516aa,a0
	bsr.w loc_04f44c
	bra.w loc_051ebe

;--------------------------
loc_051ebe:
	clr.b ($2f6,a4)
	bra.w loc_04f452

;--------------------------
loc_051ec6:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_04f452
	btst #1,($246,a4)
	beq.w loc_04f452
	btst #5,($24a,a4)
	bne.w loc_04f452
	cmpi.w #$60,($340,a4)
	blt.w loc_04f452
	clr.b ($2f6,a4)
	btst #1,($362,a4)
	beq.w loc_051f22
	jsr RandomNumberGod
	lea loc_051f0e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_051f0e:
	dc.w $0003

	dc.w $003c
	dc.l loc_051f92

	dc.w $000a
	dc.l loc_051f54

	dc.w $000a
	dc.l loc_051f46

;--------------------------
loc_051f22:
	jsr RandomNumberGod
	lea loc_051f32(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_051f32:
	dc.w $0003

	dc.w $003c
	dc.l loc_051f46

	dc.w $000a
	dc.l loc_051f70

	dc.w $000a
	dc.l loc_051f62

;--------------------------
loc_051f46:
	movea.l #loc_0516aa,a0
	bsr.w loc_04f44c
	bra.w loc_051fb4

;--------------------------
loc_051f54:
	movea.l #loc_051c56,a0
	bsr.w loc_04f44c
	bra.w loc_051fb4

;--------------------------
loc_051f62:
	movea.l #loc_051d52,a0
	bsr.w loc_04f44c
	bra.w loc_051fb4

;--------------------------
loc_051f70:
	cmpi.w #$60,($340,a4)
	blt.w loc_051fb4
	cmpi.w #$64,($378,a4)
	bgt.w loc_051fb4
	bsr.w loc_052eb2
	jsr loc_02e308
	bra.w loc_051fb4

;--------------------------
loc_051f92:
	cmpi.w #$60,($340,a4)
	blt.w loc_051fb4
	cmpi.w #$64,($378,a4)
	bgt.w loc_051fb4
	bsr.w loc_052e94
	jsr loc_02e308
	bra.w loc_051fb4

loc_051fb4:
	clr.b ($2f6,a4)
	bra.w loc_04f452

;--------------------------
loc_051fbc:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_04f452
	btst #1,($246,a4)
	beq.w loc_04f452
	btst #5,($24a,a4)
	bne.w loc_04f452
	cmpi.w #$60,($340,a4)
	blt.w loc_04f452
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_052006(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_052006:
	dc.w $000a

	dc.w $0014
	dc.l loc_0520a6

	dc.w $000a
	dc.l loc_0521f2

	dc.w $000a
	dc.l loc_0521c6

	dc.w $000a
	dc.l loc_052216

	dc.w $000a
	dc.l loc_052186

	dc.w $000a
	dc.l loc_052152

	dc.w $000a
	dc.l loc_0520fc

	dc.w $000a
	dc.l loc_0520d8

	dc.w $000a
	dc.l loc_05208e

	dc.w $000a
	dc.l loc_052044

;--------------------------
loc_052044:
	cmpi.w #$60,($340,a4)
	blt.w loc_0522a4
	movea.l #loc_050982,a0
	bsr.w loc_04f474
	jsr loc_02e496
	jsr loc_02e550
	move.l #$200030,d0
	move.b #2,($2f6,a4)
	moveq #0,d2
	move.w #$50,d2
	jsr loc_02e0f4
	bsr.w loc_052c9a
	beq.w loc_05208e
	jsr loc_02e308
	bra.w loc_0522a4

;--------------------------
loc_05208e:
	cmpi.w #$b4,($36c,a4)
	blt.w loc_0522a4
	bsr.w loc_052e6e
	jsr loc_02e308
	bra.w loc_0522a4

;--------------------------
loc_0520a6:
	cmpi.w #$78,($378,a4)
	bgt.w loc_0522a4
	clr.b ($2f6,a4)
	bsr.w loc_052ed0
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_052ed0
	jsr loc_02e308
	bra.w loc_0522a4

;--------------------------
loc_0520d8:
	movea.l #loc_050ac6,a0
	bsr.w loc_04f474
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_050aa2,a0
	bsr.w loc_04f474
	bra.w loc_0522a4

;--------------------------
loc_0520fc:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_05212e
	movea.l #loc_050aa2,a0
	bsr.w loc_04f474
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_0509e8,a0
	bsr.w loc_04f474
	bra.w loc_0522a4

loc_05212e:
	movea.l #loc_050ac6,a0
	bsr.w loc_04f474
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_050b8a,a0
	bsr.w loc_04f474
	bra.w loc_0522a4

;--------------------------
loc_052152:
	cmpi.w #$a0,($378,a4)
	blt.w loc_0522a4
	movea.l #loc_050bae,a0
	bsr.w loc_04f474

loc_052166:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_052166
	st ($3cc,a4)
	bsr.w loc_052d28
	jsr loc_02e308
	bra.w loc_0522a4

;--------------------------
loc_052186:
	movea.l #loc_050b8a,a0
	bsr.w loc_04f474

loc_052190:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_052190
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_050b8a,a0
	bsr.w loc_04f474

loc_0521b4:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_0521b4
	bra.w loc_0522a4

;--------------------------
loc_0521c6:
	sf ($3cc,a4)
	bsr.w loc_052d28
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	sf ($3cc,a4)
	bsr.w loc_052d28
	jsr loc_02e308
	bra.w loc_0522a4

;--------------------------
loc_0521f2:
	bsr.w loc_053098
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_052f5e
	jsr loc_02e308
	bra.w loc_0522a4

;--------------------------
loc_052216:
	bsr.w loc_052f5e
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_052f5e
	jsr loc_02e308
	bra.w loc_0522a4

;--------------------------
loc_05223a:
	cmpi.w #$64,($378,a4)
	bgt.w loc_0522a4
	bsr.w loc_052f5e
	jsr loc_02e308
	bra.w loc_0522a4

;--------------------------
loc_052252:
	cmpi.w #$5a,($378,a4)
	bgt.w loc_0522a4
	bsr.w loc_052ed0
	jsr loc_02e308
	bra.w loc_0522a4

;--------------------------
loc_05226a:
	cmpi.w #$40,($340,a4)
	blt.w loc_0522a4
	bsr.w loc_052dcc
	jsr loc_02e308
	bra.w loc_0522a4

;--------------------------
loc_052282:
	cmpi.w #$60,($340,a4)
	blt.w loc_0522a4
	cmpi.w #$78,($378,a4)
	bgt.w loc_0522a4
	bsr.w loc_052eb2
	jsr loc_02e308
	bra.w loc_0522a4

;--------------------------
loc_0522a4:
	clr.b ($2f6,a4)
	bra.w loc_04f452

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Palette Start
;TiaPal_A
loc_0522ac:
	dc.l loc_0524a8,loc_052548,loc_052448,loc_052428
	dc.l loc_0525e8,loc_052608,loc_052628,loc_052648
	dc.l loc_052668,loc_052688,loc_052468,loc_052488
	dc.l loc_0526a8,loc_052728,loc_0527a8,loc_0527c8
	dc.l loc_0527e8,loc_052808
	dc.l $0000000

;TiaPal_B
loc_0522f8:
	dc.l loc_0524c8,loc_052568,loc_052448,loc_052428
	dc.l loc_0525e8,loc_052608,loc_052628,loc_052648
	dc.l loc_052668,loc_052688,loc_052468,loc_052488
	dc.l loc_0526c8,loc_052748,loc_0527a8,loc_0527c8
	dc.l loc_0527e8,loc_052808
	dc.l $0000000

;TiaPal_C
loc_052344:
	dc.l loc_0524e8,loc_052588,loc_052448,loc_052428
	dc.l loc_0525e8,loc_052608,loc_052628,loc_052648
	dc.l loc_052668,loc_052688,loc_052468,loc_052488
	dc.l loc_0526e8,loc_052768,loc_0527a8,loc_0527c8
	dc.l loc_0527e8,loc_052808
	dc.l $0000000

;TiaPal_D
loc_052390:
	dc.l loc_052508,loc_0525a8,loc_052448,loc_052428
	dc.l loc_0525e8,loc_052608,loc_052628,loc_052648
	dc.l loc_052668,loc_052688,loc_052468,loc_052488
	dc.l loc_052708,loc_052788,loc_0527a8,loc_0527c8
	dc.l loc_0527e8,loc_052808
	dc.l $00000000


;ShellyPal_A
loc_0523dc:
	dc.l loc_052528,loc_0525c8,loc_052448,loc_052428
	dc.l loc_0525e8,loc_052608,loc_052628,loc_052648
	dc.l loc_052668,loc_052688,loc_052468,loc_052488
	dc.l loc_0526c8,loc_052748,loc_0527a8,loc_0527c8
	dc.l loc_0527e8,loc_052808
	dc.l $00000000


;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Palettes
loc_052428:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

loc_052448:
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

loc_052468:
	dc.w $7111,$700a,$601c,$700f,$112f,$713f,$324f,$526f
	dc.w $337f,$539f,$73af,$34bf,$74df,$75ff,$7aff,$7fff

loc_052488:
	dc.w $7888,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_0524a8:
	dc.w $0aaa,$1eef,$4532,$4a63,$7d84,$7fb7,$5fea,$5ffc
	dc.w $3546,$1879,$1aac,$5ccf,$0900,$4d20,$6f42,$1fff

loc_0524c8:
	dc.w $0aaa,$3edb,$3521,$6953,$5d95,$7fb7,$6fc9,$7feb
	dc.w $2233,$1666,$4899,$6bbb,$3d81,$0fd0,$6ff5,$6eef

loc_0524e8:
	dc.w $0aaa,$39ae,$1532,$5a63,$6e96,$4fc9,$4feb,$4ffd
	dc.w $3546,$1879,$1aac,$5ccf,$7000,$7222,$0444,$1fff

loc_052508:
	dc.w $0aaa,$7aad,$1632,$7a63,$4d95,$4fc8,$5fea,$7ffc
	dc.w $5444,$1888,$4abb,$6ddd,$1b48,$2f6c,$4f9e,$1fff

loc_052528:
	dc.w $0aaa,$38cf,$2533,$5a63,$6e96,$4fc9,$4feb,$6ffd
	dc.w $0156,$3579,$37ac,$1adf,$7162,$03a2,$26c6,$1fff

loc_052548:
	dc.w $0aaa,$3a9c,$4200,$2620,$7841,$5b84,$4ca7,$2cb9
	dc.w $6001,$7214,$7447,$287b,$4400,$4700,$6c00,$1ccc

loc_052568:
	dc.w $0aaa,$7997,$4100,$6510,$5841,$4a74,$7b85,$5cb8
	dc.w $7000,$3212,$3444,$6777,$2c40,$4c81,$4cc2,$7bbc

loc_052588:
	dc.w $0aaa,$356a,$4200,$1731,$5963,$7c85,$4ca7,$6ccb
	dc.w $0001,$7214,$6447,$387b,$7000,$7000,$1110,$1ccc

loc_0525a8:
	dc.w $0aaa,$7669,$3200,$2620,$1951,$5b84,$0ca7,$4cc9
	dc.w $7000,$1222,$5344,$5787,$1603,$2a17,$7c7a,$0ccc

loc_0525c8:
	dc.w $0aaa,$248c,$3100,$3720,$6a52,$0c85,$0ca7,$3cc9
	dc.w $7012,$0135,$4268,$469c,$3554,$0998,$5bcb,$1ccc

loc_0525e8:
	dc.w $7bbb,$7a00,$3d00,$7f00,$5f60,$7f90,$6ff1,$6ffa
	dc.w $7a00,$7f00,$7f90,$6ff1,$7f60,$5f80,$7fa0,$7fff

loc_052608:
	dc.w $0777,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_052628:
	dc.w $0666,$7fff,$1ddf,$7aaf,$188f,$755f,$133f,$700f
	dc.w $79ff,$76af,$735f,$700f,$3adf,$179e,$535d,$700d

loc_052648:
	dc.w $0bbb,$700f,$133f,$755f,$188f,$7aaf,$1ddf,$7fff
	dc.w $700f,$735f,$76af,$79ff,$700d,$535d,$179e,$3adf

loc_052668:
	dc.w $736b,$0409,$750a,$672d,$394f,$796f,$3b8f,$5ccf
	dc.w $6a3d,$2c6e,$0d9f,$0ebd,$3b39,$5c5b,$1e6d,$7f7f

loc_052688:
	dc.w $7888,$3053,$4174,$3384,$54a4,$66b5,$18d5,$69e6
	dc.w $06b3,$78c4,$0be6,$7df7,$71a6,$23b8,$04da,$55eb

loc_0526a8:
	dc.w $1409,$2a04,$4a15,$7b16,$3c17,$0d29,$6d2a,$7d3a
	dc.w $0e5b,$0e6c,$7e7c,$6e8d,$1fad,$1fbe,$6fdf,$7fff

loc_0526c8:
	dc.w $340b,$2071,$7081,$1192,$41a3,$02b4,$63b5,$05c6
	dc.w $66c7,$08d8,$69d9,$0bea,$6ceb,$0efc,$6ffd,$7fff

loc_0526e8:
	dc.w $3403,$1306,$7307,$5418,$3519,$361a,$562b,$772c
	dc.w $183d,$393e,$3a5e,$2b7f,$2c9f,$6dbf,$7edf,$7fff

loc_052708:
	dc.w $7777,$0d20,$7d30,$2e41,$1e61,$6e72,$3f82,$3f93
	dc.w $1fa4,$1fb5,$1fc6,$5fd7,$7fd8,$7fe9,$7ffa,$7fff

loc_052728:
	dc.w $0566,$5406,$3507,$1618,$7619,$371a,$572b,$782c
	dc.w $193d,$0a5e,$2b6e,$3c8e,$5cae,$4dcf,$6edf,$7fff

loc_052748:
	dc.w $7383,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$4f30
	dc.w $6f51,$7f51,$7f82,$4fc3,$4ff4,$4ff9,$4ffc,$7fff

loc_052768:
	dc.w $34d3,$0007,$6008,$4119,$022a,$722a,$533b,$343c
	dc.w $354d,$555e,$276f,$287f,$599f,$7bbf,$7ddf,$7fff

loc_052788:
	dc.w $34db,$6908,$0a19,$7a19,$5b2a,$2c2b,$4c3c,$3d3c
	dc.w $1e4d,$6e4e,$0f5f,$2f7f,$4faf,$6fcf,$4fdf,$6fef

loc_0527a8:
	dc.w $5787,$20f0,$20f0,$20f0,$20f0,$20f0,$20f0,$526f
	dc.w $337f,$539f,$73af,$34bf,$74df,$75ff,$7aff,$7fff

loc_0527c8:
	dc.w $5bbb,$777f,$777f,$788f,$1aaf,$7ccf,$7eef,$7fff
	dc.w $379f,$18bf,$39df,$79ff,$078e,$479e,$1bde,$7dff

loc_0527e8:
	dc.w $5a99,$5ed4,$1fe6,$2fe8,$2fea,$4efc,$5efd,$5efe
	dc.w $584c,$577d,$46ae,$45df,$44ff,$3cff,$7dff,$7eff

loc_052808:
	dc.w $7ccc,$2c84,$7c94,$5db5,$5ec7,$5ec6,$0fd9,$7fd9
	dc.w $7feb,$4ffd,$6fff,$43c9,$53c9,$43ca,$53ca,$43cb

;--------------------------
TiaPRGStart:;52828
	move.l #loc_053268,($86,a4)
	move.l #loc_04f420,($56,a4)
	move.l #loc_0528c4,($1b6,a4)
	move.l #loc_0528dc,($1ba,a4)
	move.l #loc_0528e6,($1be,a4)
	move.l #loc_0528ee,($1c2,a4)
	move.l #loc_04f3f4,($1c6,a4)
	move.l #loc_05316a,($1ce,a4)
	move.l #loc_052a72,($1ca,a4)
	move.l #loc_054074,($1d2,a4)
	move.l #loc_094de4,($1d6,a4)
	move.l #loc_053e90,($1da,a4)
	move.l #loc_053f44,($1de,a4)
	move.l #loc_053eb0,($1e2,a4)
	move.l #loc_053e60,($1e6,a4)
	move.l #loc_053e44,($1ea,a4)
	move.l #loc_053f78,($1ee,a4)
	bsr.w loc_04f3c8
	andi.w #$f0ff,($2ee,a4)
	move.l #loc_05421a,($2d0,a4)
	rts

;--------------------------
loc_0528c4:
	clr.w ($550,a4)
	jsr loc_02a9c4
	btst #3,($249,a4)
	beq.b loc_0528da
	sf ($3f1,a4)

loc_0528da:
	rts

;--------------------------
loc_0528dc:
	clr.w ($550,a4)
	sf ($3f1,a4)
	rts

;--------------------------
loc_0528e6:
	move.w ($2ba,a3),($2ba,a4)
	rts

;--------------------------
loc_0528ee:
	lea ($3d0,a4),a0
	jsr loc_02cbba
	move.b ($3d0,a4),d0
	move.b d0,($3c0,a4)
	move.b ($3d4,a4),d0
	move.b d0,($3c1,a4)
	lea ($3e0,a4),a0
	lea loc_052a26(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c3,a4)
	or.b d0,($3c3,a4)
	andi.b #$55,($3c3,a4)
	lea ($3e8,a4),a0
	lea loc_052a30(pc),a1
	move.w #$3,d7
	jsr loc_02c946
	and.b d1,($3c4,a4)
	or.b d0,($3c4,a4)
	andi.b #$55,($3c4,a4)
	lea ($3d8,a4),a0
	lea loc_052a1c(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c2,a4)
	or.b d0,($3c2,a4)
	andi.b #$aa,($3c2,a4)
	lea ($3f0,a4),a0
	lea loc_052a6a(pc),a1
	jsr loc_02d176
	and.b d1,($3c5,a4)
	or.b d0,($3c5,a4)
	andi.b #$aa,($3c5,a4)
	btst #1,($249,a4)
	beq.b loc_052990
	sf ($3f1,a4)

loc_052990:
	lea ($3fc,a4),a0
	lea loc_052a3a(pc),a1
	move.w #5,d7
	jsr loc_02c946
	and.b d1,($3c6,a4)
	or.b d0,($3c6,a4)
	andi.b #$55,($3c6,a4)
	lea ($408,a4),a0
	lea loc_052a4a(pc),a1
	move.w #5,d7
	jsr loc_02c946
	and.b d1,($3c7,a4)
	or.b d0,($3c7,a4)
	andi.b #$55,($3c7,a4)
	lea ($414,a4),a0
	lea loc_052a5a(pc),a1
	move.w #5,d7
	jsr loc_02c946
	and.b d1,($3c8,a4)
	or.b d0,($3c8,a4)
	andi.b #$aa,($3c8,a4)
	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$50,d0
	seq d0
	or.b d0,($3c9,a4)
	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$a0,d0
	seq d0
	or.b d0,($3ca,a4)
	tst.b ($2fc,a4)
	smi d0
	or.b d0,($3cb,a4)
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_052a1c:
	dc.w $0202,$0806,$0a08,$0408,$0a00

loc_052a26:
	dc.w $0804,$0a02,$0208,$0a06,$0a00

loc_052a30:
	dc.w $0202,$080a,$0608,$0804,$0a00

loc_052a3a:
	dc.w $0202,$0806,$0a08,$0408,$0c02,$020c,$060a,$0c00

loc_052a4a:
	dc.w $0202,$080a,$0608,$0804,$0c02,$020c,$0a06,$0c00

loc_052a5a:
	dc.w $0202,$080a,$0608,$0804,$0c02,$020c,$0a06,$0c00

loc_052a6a:
	dc.w $0000,$0b05,$0000,$0705

;--------------------------
loc_052a72:
	bsr.w loc_052ad8
	bne.w loc_052a86
	bsr.w loc_052b8c
	bne.w loc_052a86
	bsr.w loc_052bfc

loc_052a86:
	rts

;--------------------------
loc_052a88:
	btst #6,($2f7,a4)
	beq.w loc_052aae
	move.b ($2f6,a4),d0
	cmpi.b #4,d0
	beq.w loc_052aa6
	cmpi.b #8,d0
	bne.w loc_052aae

loc_052aa6:
	bsr.w loc_052c4a
	bne.w loc_052ad6

loc_052aae:
	btst #7,($2f7,a4)
	bne.w loc_052ac2
	btst #6,($2f7,a4)
	beq.w loc_052ad2

loc_052ac2:
	move.b ($2f6,a4),d0
	beq.w loc_052ad2
	bsr.w loc_052c6c
	bne.w loc_052ad6

loc_052ad2:
	clr.w d0
	rts

loc_052ad6:
	rts

;--------------------------
loc_052ad8:
	tst.b ($3c6,a4)
	beq.b loc_052ae6
	bsr.w loc_052c9a
	bne.w loc_052b8a

loc_052ae6:
	tst.b ($3c7,a4)
	beq.b loc_052af4
	bsr.w loc_052cc0
	bne.w loc_052b8a

loc_052af4:
	tst.b ($3c8,a4)
	beq.b loc_052b02
	bsr.w loc_052cf4
	bne.w loc_052b8a

loc_052b02:
	move.b ($3c3,a4),d0
	andi.b #$f0,d0
	beq.b loc_052b14
	bsr.w loc_052d28
	bne.w loc_052b8a

loc_052b14:
	bsr.w loc_052a88
	bne.w loc_052b8a
	move.b ($3c4,a4),d0
	andi.b #$f0,d0
	beq.b loc_052b2e
	bsr.w loc_052d76
	bne.w loc_052b8a

loc_052b2e:
	move.b ($3c2,a4),d0
	andi.b #$f0,($3c2,a4)
	beq.b loc_052b42
	bsr.w loc_052e16
	bne.w loc_052b8a

loc_052b42:
	tst.b ($3c5,a4)
	beq.b loc_052b50
	bsr.w loc_052dcc
	bne.w loc_052b8a

loc_052b50:
	move.b ($3c3,a4),d0
	andi.b #$f,d0
	beq.b loc_052b62
	bsr.w loc_052d28
	bne.w loc_052b8a

loc_052b62:
	move.b ($3c4,a4),d0
	andi.b #$f,d0
	beq.b loc_052b74
	bsr.w loc_052d76
	bne.w loc_052b8a

loc_052b74:
	move.b ($3c2,a4),d0
	andi.b #$f,d0
	beq.b loc_052b86
	bsr.w loc_052e16
	bne.w loc_052b8a

loc_052b86:
	clr.w d0
	rts

loc_052b8a:
	rts

;--------------------------
loc_052b8c:
	tst.b ($3ca,a4)
	beq.b loc_052b9a
	bsr.w loc_052e94
	bne.w loc_052bfa

loc_052b9a:
	tst.b ($3c9,a4)
	beq.b loc_052ba8
	bsr.w loc_052eb2
	bne.w loc_052bfa

loc_052ba8:
	btst #7,($2f7,a4)
	beq.b loc_052bb8
	bsr.w loc_052ed0
	bne.w loc_052bfa

loc_052bb8:
	btst #6,($2f7,a4)
	beq.b loc_052bc8
	bsr.w loc_052f5e
	bne.w loc_052bfa

loc_052bc8:
	btst #5,($2f7,a4)
	beq.b loc_052bd8
	bsr.w loc_053000
	bne.w loc_052bfa

loc_052bd8:
	btst #4,($2f7,a4)
	beq.b loc_052be8
	bsr.w loc_053098
	bne.w loc_052bfa

loc_052be8:
	tst.b ($3cb,a4)
	beq.b loc_052bf6
	bsr.w loc_052e6e
	bne.w loc_052bfa

loc_052bf6:
	clr.w d0
	rts

loc_052bfa:
	rts

;--------------------------
loc_052bfc:
	tst.b ($209,a4)
	bmi.w loc_052c24
	tst.b ($3c1,a4)
	beq.b loc_052c12
	bsr.w loc_053126
	bne.w loc_052c44

loc_052c12:
	tst.b ($3c0,a4)
	beq.b loc_052c20
	bsr.w loc_053144
	bne.w loc_052c44

loc_052c20:
	clr.w d0
	rts

loc_052c24:
	tst.b ($3c0,a4)
	beq.b loc_052c32
	bsr.w loc_053126
	bne.w loc_052c44

loc_052c32:
	tst.b ($3c1,a4)
	beq.b loc_052c40
	bsr.w loc_053144
	bne.w loc_052c44

loc_052c40:
	clr.w d0
	rts

loc_052c44:
	rts

;--------------------------
loc_052c46:
	clr.w d0
	rts

;--------------------------
loc_052c4a:
	cmpi.w #8,($bc,a4)
	bgt.b loc_052c46
	cmpi.w #$1c,($226,a4)
	bgt.b loc_052c46
	jsr loc_02a4dc
	beq.b loc_052c46
	move.w #$24,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_052c6c:
	btst #0,($24a,a4)
	bne.b loc_052c46
	move.w #$2e,d2
	move.w #$ff88,d3
	move.w #$ffe2,d4
	jsr loc_02de6a
	beq.b loc_052c46
	jsr loc_02a518
	beq.b loc_052c46
	move.w #$25,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_052c9a:
	jsr loc_02c78a
	beq.b loc_052c46
	btst #5,($24a,a4)
	beq.b loc_052cb2
	tst.w ($550,a4)
	bne.b loc_052cb2
	bra.b loc_052c46

loc_052cb2:
	sf ($3fd,a4)
	move.w #$21,d0
	move.w d0,($2fe,a4)
	rts 

;--------------------------
loc_052cc0:
	jsr loc_02c78a
	beq.w loc_052c46
	btst #1,($246,a4)
	beq.w loc_052c46
	btst #5,($24a,a4)
	beq.b loc_052ce6
	tst.w ($550,a4)
	bne.b loc_052ce6
	bra.w loc_052c46

loc_052ce6:
	sf ($409,a4)
	move.w #$22,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_052cf4:
	jsr loc_02c78a
	beq.w loc_052c46
	btst #1,($246,a4)
	beq.w loc_052c46
	btst #5,($24a,a4)
	beq.b loc_052d1a
	tst.w ($550,a4)
	bne.b loc_052d1a
	bra.w loc_052c46

loc_052d1a:
	sf ($415,a4)
	move.w #$23,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_052d28:
	btst #5,($24a,a4)
	bne.w loc_052c46
	btst #1,($246,a4)
	beq.w loc_052c46
	tst.b (1,a4)
	bpl.b loc_052d50
	move.b ($3c3,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_052d56

loc_052d50:
	move.b ($3cc,a4),($ba,a4)

loc_052d56:
	sf ($3e1,a4)
	tst.b ($ba,a4)
	bne.b loc_052d6c
	move.w #$1b,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_052d6a:
	bra.b loc_052d76

;--------------------------
loc_052d6c:
	move.w #$1c,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_052d76:
	btst #5,($24a,a4)
	bne.w loc_052c46
	btst #1,($246,a4)
	beq.w loc_052c46
	tst.b ($2b2,a4)
	bne.w loc_052c46
	tst.b ($1,a4)
	bpl.b loc_052da6
	move.b ($3c4,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_052dac

loc_052da6:
	move.b ($3cc,a4),($ba,a4)

loc_052dac:
	sf ($3e9,a4)
	tst.b ($ba,a4)
	bne.b loc_052dc2
	move.w #$1d,d0
	move.w d0,($2fe,a4)
	rts

loc_052dc0:
	bra.b loc_052dcc

loc_052dc2:
	move.w #$1e,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_052dcc:
	btst #5,($24a,a4)
	bne.w loc_052c46
	btst #1,($246,a4)
	beq.w loc_052c46
	tst.b (1,a4)
	bpl.b loc_052df4
	move.b ($3c5,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_052dfa

loc_052df4:
	move.b ($3cc,a4),($ba,a4)

loc_052dfa:
	tst.b ($ba,a4)
	bne.b loc_052e0c
	move.w #$1f,d0
	move.w d0,($2fe,a4)
	rts

loc_052e0a:
	bra.b loc_052e16

loc_052e0c:
	move.w #$20,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_052e16:
	btst #5,($24a,a4)
	bne.w loc_052c46
	tst.b (1,a4)
	bpl.b loc_052e34
	move.b ($3c2,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_052e3a

loc_052e34:
	move.b ($3cc,a4),($ba,a4)

loc_052e3a:
	sf ($3d9,a4)
	btst #1,($246,a4)
	beq.w loc_052e64
	tst.b ($ba,a4)
	bne.b loc_052e5a
	move.w #$18,d0
	move.w d0,($2fe,a4)
	rts

loc_052e58:
	bra.b loc_052e64

loc_052e5a:
	move.w #$19,d0
	move.w d0,($2fe,a4)
	rts

loc_052e64:
	move.w #$1a,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_052e6e:
	btst #4,($24a,a4)
	bne.w loc_052c46
	btst #1,($246,a4)
	beq.w loc_052c46
	tst.w ($552,a4)
	bne.w loc_052c46
	move.w #$29,d0
	move.w d0,($2fe,a4)
	rts   

;--------------------------
loc_052e94:
	btst #4,($24a,a4)
	bne.w loc_052c46
	btst #1,($246,a4)
	beq.w loc_052c46
	move.w #$17,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_052eb2:
	btst #4,($24a,a4)
	bne.w loc_052c46
	btst #1,($246,a4)
	beq.w loc_052c46
	move.w #$16,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_052ed0:;hk
	btst #$1,($246,a4)
	bne.w loc_052f04
	btst #0,($24a,a4)
	bne.w loc_052c46
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_052efa
	move.w #$14,d0
	move.w d0,($2fe,a4)
	rts

loc_052efa:
	move.w #$15,d0
	move.w d0,($2fe,a4)
	rts

loc_052f04:
	btst #1,($246,a4)
	beq.w loc_052c46
	btst #3,($24a,a4)
	beq.w loc_052f2c
	btst #1,($24a,a4)
	bne.w loc_052c46
	cmpi.b #2,($2c6,a4)
	bne.w loc_052c46

loc_052f2c:
	btst #1,($2f6,a4)
	bne.w loc_052f54
	cmpi.w #$24,($226,a4)
	bgt.w loc_052f4a
	move.w #$a,d0
	move.w d0,($2fe,a4)
	rts

loc_052f4a:
	move.w #$b,d0
	move.w d0,($2fe,a4)
	rts

loc_052f54:
	move.w #$c,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_052f5e:;hp
	btst #1,($246,a4)
	bne.w loc_052fa6
	btst #0,($24a,a4)
	bne.w loc_052c46
	btst #0,($2f6,a4)
	bne.w loc_052f9c
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_052f92
	move.w #$11,d0
	move.w d0,($2fe,a4)
	rts

loc_052f92:
	move.w #$12,d0
	move.w d0,($2fe,a4)
	rts

loc_052f9c:
	move.w #$13,d0
	move.w d0,($2fe,a4)
	rts

loc_052fa6:
	btst #1,($246,a4)
	beq.w loc_052c46
	btst #3,($24a,a4)
	beq.w loc_052fce
	btst #1,($24a,a4)
	bne.w loc_052c46
	cmpi.b #2,($2c6,a4)
	bne.w loc_052c46

loc_052fce:
	btst #1,($2f6,a4)
	bne.w loc_052ff6
	cmpi.w #$24,($226,a4)
	bgt.w loc_052fec
	move.w #7,d0
	move.w d0,($2fe,a4)
	rts

loc_052fec:
	move.w #8,d0
	move.w d0,($2fe,a4)
	rts

loc_052ff6:
	move.w #9,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_053000:;lk
	btst #1,($246,a4)
	bne.w loc_053034
	btst #0,($24a,a4)
	bne.w loc_052c46
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_05302a
	move.w #$f,d0
	move.w d0,($2fe,a4)
	rts

loc_05302a:
	move.w #$10,d0
	move.w d0,($2fe,a4)
	rts

loc_053034:
	btst #1,($246,a4)
	beq.w loc_052c46
	btst #3,($24a,a4)
	beq.w loc_053066
	btst #1,($24a,a4)
	bne.w loc_052c46
	cmpi.b #1,($2c6,a4)
	bne.w loc_052c46
	btst #1,($2f6,a4)
	beq.w loc_052c46

loc_053066:
	btst #1,($2f6,a4)
	bne.w loc_05308e
	cmpi.w #$20,($226,a4)
	bgt.w loc_053084
	move.w #4,d0
	move.w d0,($2fe,a4)
	rts

loc_053084:
	move.w #5,d0
	move.w d0,($2fe,a4)
	rts

loc_05308e:
	move.w #6,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_053098:;lp
	btst #1,($246,a4)
	bne.w loc_0530cc
	btst #0,($24a,a4)
	bne.w loc_052c46
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_0530c2
	move.w #$d,d0
	move.w d0,($2fe,a4)
	rts

loc_0530c2:
	move.w #$e,d0
	move.w d0,($2fe,a4)
	rts

loc_0530cc:
	btst #1,($246,a4)
	beq.w loc_052c46
	btst #3,($24a,a4)
	beq.w loc_0530f4
	btst #1,($24a,a4)
	bne.w loc_052c46
	cmpi.b #1,($2c6,a4)
	bne.w loc_052c46

loc_0530f4:
	btst #1,($2f6,a4)
	bne.w loc_05311c
	cmpi.w #$1c,($226,a4)
	bgt.w loc_053112
	move.w #1,d0
	move.w d0,($2fe,a4)
	rts

loc_053112:
	move.w #2,d0
	move.w d0,($2fe,a4)
	rts

loc_05311c:
	move.w #3,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_053126:
	btst #3,($24a,a4)
	bne.w loc_052c46
	btst #1,($246,a4)
	beq.w loc_052c46
	move.w #$28,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_053144:
	tst.b ($24a,a4)
	bne.w loc_052c46
	btst #1,($246,a4)
	beq.w loc_052c46
	btst #4,($248,a4)
	bne.w loc_052c46
	move.w #$27,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_05316a:
	tst.b (-$3dd,a5)
	bne.w loc_05321e
	tst.b ($271,a4)
	beq.w loc_05317e
	subq.w #5,($bc,a4)

loc_05317e:
	tst.w ($bc,a4)
	ble.w loc_05321e
	tst.b ($249,a4)
	bne.w loc_05321e
	move.w ($bc,a4),d2
	subq.w #1,($bc,a4)
	btst #1,($246,a4)
	beq.w loc_0531ec
	btst #3,($24c,a4)
	beq.w loc_0531c4
	btst #5,($24c,a4)
	bne.w loc_05321e
	cmpi.w #$e,($bc,a4)
	blt.w loc_0531c4
	move.w #$e,($bc,a4)

loc_0531c4:
	cmpi.w #$10,d2
	blt.w loc_0531d0
	move.w #$10,d2

loc_0531d0:
	lea loc_053224(pc),a0
	lsl.w #2,d2
	move.l (a0,d2.w),d0
	tst.b ($bb,a4)
	bpl.w loc_0531e4
	neg.l d0

loc_0531e4:
	add.l d0,($20e,a4)
	bra.w loc_053222

loc_0531ec:
	btst #3,($24c,a4)
	beq.w loc_053200
	btst #5,($24c,a4)
	bne.w loc_05321e

loc_053200:
	move.w #1,($bc,a4)
	move.l #$14000,d0
	tst.b ($bb,a4)
	bpl.w loc_053216
	neg.l d0

loc_053216:
	add.l d0,($20e,a4)
	bra.w loc_053222

loc_05321e:
	clr.w ($bc,a4)

loc_053222:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_053224:
	dc.l $00000000,$00007000,$0000e000,$00015000
	dc.l $0001c000,$00023000,$0002a000,$00031000
	dc.l $00038000,$0003f000,$00046000,$0004d000
	dc.l $00054000,$0005b000,$00062000,$00069000
	dc.l $00070000

;--------------------------
loc_053268:
	tst.b (-$3e4,a5)
	bne.w loc_053296
	cmpi.w #1,(-$f2e,a5)
	bgt.w loc_053296
	movea.l #loc_05411c,a0
	clr.w d0
	jsr loc_0226f0

loc_053288:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_053288

loc_053296:
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_0532a0:
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),($bb,a4)

loc_0532b2:
	btst #0,($2f6,a4)
	beq.w loc_0532ce
	tst.w ($20c,a4)
	bne.w loc_0532ce
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

;--------------------------
loc_0532ce:
	jsr loc_02269c
	tst.w ($bc,a4)
	bne.b loc_0532b2

loc_0532da:
	btst #2,($2e1,a4)
	bne.w loc_053308
	btst #0,($2f6,a4)
	beq.w loc_053300
	tst.w ($20c,a4)
	bne.w loc_053300
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_053300:
	jsr loc_02269c
	bra.b loc_0532da

loc_053308:
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_053312:
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_05331e:
	jsr loc_02269c
	btst #4,($248,a4)
	bne.w loc_05334a
	btst #0,($2f6,a4)
	beq.w loc_05334a
	tst.w ($20c,a4)
	bne.w loc_05334a
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_05334a:
	btst #2,($2e1,a4)
	beq.b loc_05331e
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_05335c:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_053374:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_053374
	sf ($b6,a4)
	tst.b ($ba,a4)
	bne.w loc_0533a0
	move.l #$30000,($216,a4)
	move.l #-$88000,($21a,a4)
	bra.w loc_0533b0

loc_0533a0:
	move.l #$80000,($216,a4)
	move.l #-$c0000,($21a,a4)

loc_0533b0:
	jsr loc_02269c
	move.l ($216,a4),d0
	asr.l #3,d0
	sub.l d0,($216,a4)
	addi.l #$b000,($21a,a4)
	tst.l ($21a,a4)
	bmi.b loc_0533b0
	tst.b ($ba,a4)
	bne.b loc_0533e4
	movea.l #loc_055c50,a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_0533f2

loc_0533e4:
	movea.l #loc_055d5a,a0
	clr.w d0
	jsr loc_0226f0

loc_0533f2
	clr.l ($216,a4)


loc_0533f6
	jsr loc_02269c
	addi.l #$9000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_0533f6
	clr.l ($216,a4)
	clr.l ($21a,a4)
	movea.l #loc_055c62,a0
	clr.w d0
	jsr loc_0226f0

loc_053422:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_053422
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_05343a:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_053452:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_053452
	movea.l #loc_056570,a0
	clr.w d0
	jsr loc_0226f0
	move.l #$3c000,($216,a4)
	sf ($273,a4)
	clr.w d5
	sf d6

loc_05347e:
	jsr loc_02269c
	bsr.w loc_05362e
	subi.l #$4000,($216,a4)
	btst #2,($2e1,a4)
	beq.b loc_05347e
	tst.b (1,a4)
	bpl.b loc_0534a4
	clr.w ($c4,a4)
	bra.b loc_0534b2

loc_0534a4
	jsr RandomNumberGod
	andi.w #3,d0
	move.w d0,($c4,a4)

loc_0534b2:
	bra.w loc_05355a

loc_0534b6:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_0534ce:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_0534ce
	movea.l #loc_056706, a0
	clr.w d0
	jsr loc_0226f0
	move.l #$50000,($216,a4)
	sf ($273,a4)
	clr.w d5
	st d6

loc_0534fa:
	jsr loc_02269c
	bsr.w loc_05362e
	subi.l #$8000,($216,a4)
	btst #2,($2e1,a4)
	beq.b loc_0534fa
	movea.l #loc_056706,a0
	clr.w d0
	jsr loc_0226f0

loc_053522:
	jsr loc_02269c
	bsr.w loc_05362e
	subi.l #$8000,($216,a4)
	btst #2,($2e1,a4)
	beq.b loc_053522
	tst.b (1,a4)
	bpl.b loc_053548
	clr.w ($c4,a4)
	bra.b loc_053556

loc_053548:
	jsr RandomNumberGod
	andi.w #7,d0
	move.w d0,($c4,a4)

loc_053556:
	bra.w loc_05355a

loc_05355a:
	move.l #0,($216,a4)
	tst.b (1,a4)
	bpl.b loc_053572
	bsr.w loc_053602
	bmi.w loc_0535ba
	bra.b loc_05357a

loc_053572:
	subq.w #1,($c4,a4)
	bmi.w loc_0535ba

loc_05357a:
	move.b d6,($ba,a4)
	tst.b ($ba,a4)
	bne.b loc_053594
	movea.l #loc_056570,a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_0535a2

loc_053594:
	movea.l #loc_056706,a0
	clr.w d0
	jsr loc_0226f0

loc_0535a2:
	jsr loc_02269c
	bsr.w loc_05362e
	bsr.w loc_053602
	btst #2,($2e1,a4)
	beq.b loc_0535a2
	bra.b loc_05355a

loc_0535ba:
	clr.l ($216,a4)
	move.b d6,($ba,a4)
	tst.b ($ba,a4)
	bne.b loc_0535d8
	movea.l #loc_0565da,a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_0535e6

loc_0535d8:
	movea.l #loc_056770,a0
	clr.w d0
	jsr loc_0226f0

loc_0535e6:
	jsr loc_02269c
	bsr.w loc_05362e
	btst #2,($2e1,a4)
	beq.b loc_0535e6
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_053602:
	tst.b (-$3dd,a5)
	bne.w loc_053626
	tst.w ($c4,a4)
	bmi.w loc_053626
	move.b ($3c5,a4),d0
	beq.w loc_053626
	andi.b #$cc,d0
	sne d6
	clr.w ($c4,a4)
	rts

;--------------------------
loc_053626:
	move.w #-1,($c4,a4)
	rts

loc_05362e:
	tst.b ($273,a4)
	bne.w loc_053656
	subq.w #8,($254,a4)
	cmpi.w #$40,($254,a4)
	bgt.b loc_053648
	move.w #$40,($254,a4)

loc_053648:
	subq.w #2,($256,a4)
	bgt.b loc_053652
	clr.w ($256,a4)

loc_053652:
	bra.w loc_05369c

loc_053656:
	sf ($273,a4)
	tst.b ($ba,a4)
	bne.b loc_053666
	move.w #4,d5
	bra.b loc_05366a

loc_053666:
	move.w #2,d5

loc_05366a:
	move.w ($254,a4),d0
	addq.w #1,d0
	asr.w #2,d0
	sub.w d0,($254,a4)
	cmpi.w #$40,($254,a4)
	bgt.b loc_053684
	move.w #$40,($254,a4)

loc_053684:
	move.w ($256,a4),d0
	addq.w #1,d0
	asr.w #2,d0
	sub.w d0,($256,a4)
	move.w ($258,a4),d0
	addq.w #1,d0
	asr.w #2,d0
	sub.w d0,($258,a4)

loc_05369c:
	tst.w d5
	bne.b loc_0536ac
	addq.w #1,($27a,a4)
	bclr #7,($24c,a4)
	bra.b loc_0536ae

loc_0536ac:
	subq.w #1,d5

loc_0536ae:
	rts

;--------------------------
loc_0536b0:
	st ($24a,a4)
	tst.b ($ba,a4)
	beq.b loc_0536c2
	addi.l #$20000,($216,a4)

loc_0536c2:
	tst.l ($21a,a4)
	bmi.b loc_0536f6
	cmpi.l #$4ec000,($22a,a4)
	bge.b loc_0536f2
	move.l ($22a,a4),d0
	addi.l #$880,d0
	asr.l #8,d0
	divs.w #$e,d0
	ext.l d0
	asl.l #8,d0
	addi.l #-$4e000,d0
	move.l d0,($21a,a4)
	bra.b loc_0536f6

loc_0536f2:
	clr.l ($21a,a4)

loc_0536f6:
	jsr loc_02269c
	addi.l #$c000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_0536f6
	clr.l ($216,a4)
	clr.l ($21a,a4)
	tst.b ($b6,a4)
	bne.b loc_05372a
	movea.l #loc_056438,a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_053738

loc_05372a:
	movea.l #loc_0564aa,a0
	clr.w d0
	jsr loc_0226f0

loc_053738:
	jmp loc_028fd0

;--------------------------
loc_05373e:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_053756:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.w loc_053784
	sf ($b6,a4)
	movem.l d2,-(a7)
	move.w #$2b,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_053784
	move.b ($ba,a4),($66,a0)

loc_053784:
	btst #2,($2e1,a4)
	beq.b loc_053756
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_053796:
	jsr loc_02c7ae
	btst #1,($246,a4)
	beq.b loc_0537aa
	move.b ($209,a4),($208,a4)

loc_0537aa:
	move.l #-$30000,($216,a4)
	clr.l ($21a,a4)
	cmpi.l #$100000,($22a,a4)
	bge.b loc_0537c8
	move.l #-$20000,($21a,a4)

loc_0537c8:
	st ($24a,a4)

loc_0537cc:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_0537cc
	sf ($b9,a4)
	move.w #$24,d2
	move.w #-$42,d3
	jsr loc_02c7be
	sf ($273,a4)
	move.w #$14,d5

loc_0537f2:
	tst.b ($273,a4)
	bne.w loc_053852
	tst.b (1,a4)
	bpl.w loc_053818
	btst #1,($2f6,a4)
	bne.w loc_053844
	btst #0,($2f6,a4)
	bne.w loc_05383a
	bra.b loc_05384e

loc_053818:
	cmpi.w #$80,($340,a4)
	ble.w loc_05384e
	cmpi.w #$10,($222,a4)
	bgt.w loc_053844
	cmpi.w #-$18,($222,a4)
	blt.w loc_05383a
	bra.w loc_05384e

loc_05383a:
	move.l #-$10000,($21a,a4)
	bra.b loc_053852

loc_053844:
	move.l #$10000,($21a,a4)
	bra.b loc_053852

loc_05384e:
	clr.l ($21a,a4)

loc_053852:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_053864
	sf ($b6,a4)
	subq.w #1,d5

loc_053864:
	tst.w d5
	bpl.b loc_0537f2
	sf ($273,a4)
	movea.l #loc_0569d2,a0
	clr.w d0
	jsr loc_0226f0

loc_05387a:
	jsr loc_02269c
	tst.b ($b7,a4)
	beq.b loc_05387a
	sf ($b7,a4)
	tst.b ($273,a4)
	beq.b loc_0538ac
	move.l #-$14000,($216,a4)
	move.l #-$96000,($21a,a4)
	move.w #$e9,d0
	jsr loc_02301a
	bra.b loc_0538bc

loc_0538ac:
	move.l #$30000,($216,a4)
	move.l #-$96000,($21a,a4)

loc_0538bc:
	jsr loc_02269c
	addi.l #$c000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_0538bc
	clr.l ($216,a4)
	clr.l ($21a,a4)
	movea.l #loc_056a6c,a0
	clr.w d0
	jsr loc_0226f0

loc_0538e8:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_0538e8
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_053900:
	jsr loc_02c7ae
	move.b ($209,a4),($208,a4)
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)

loc_053916:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_053916
	sf ($b9,a4)
	move.w #$18,d2
	move.w #-$38,d3
	jsr loc_02c7be

loc_053934:
	jsr loc_02269c
	tst.b ($b6,a4)
	bne.w loc_053944
	bra.b loc_053934

loc_053944:
	jsr loc_02269c
	tst.b ($b7,a4)
	beq.b loc_053944
	sf ($b7,a4)
	tst.b ($273,a4)
	beq.w loc_05396c
	move.b ($249,a3),d0
	beq.w loc_05396c
	btst #2,d0
	bra.w loc_05397a

loc_05396c:
	movea.l #loc_056da8,a0
	clr.w d0
	jsr loc_0226f0

loc_05397a:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_05397a
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_053992
	jsr loc_02c7ae
	move.b ($209,a4),($208,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	st ($24a,a4)

loc_0539b0:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_0539b0
	sf ($b9,a4)
	move.w #0,d2
	move.w #-$38,d3
	jsr loc_02c7be

loc_0539ce:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_0539e6
	bsr.w loc_0539f8
	beq.b loc_0539e6
	move.l ($86,a4),-(a7)
	rts

loc_0539e6:
	btst #2,($2e1,a4)
	beq.b loc_0539ce
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_0539f8:
	move.w #$36,d2
	move.w #-$78,d3
	move.w #-$1e,d4
	jsr loc_02de6a
	beq.w loc_053a44
	move.b ($249,a3),d0
	beq.b loc_053a2a
	andi.b #$15,d0
	bne.w loc_053a2a
	btst #1,($246,a3)
	bne.w loc_053a44
	bra.w loc_053a34

loc_053a2a:
	jsr loc_02a520
	beq.w loc_053a44

loc_053a34:
	movea.l #loc_0570d0,a0
	jsr loc_023384
	moveq #-1,d0
	rts

loc_053a44:
	moveq #0,d0
	rts

;--------------------------
loc_053a48:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),d0
	move.b d0,($208,a3)
	sf ($c2,a4)
	tst.b (1,a4)
	bpl.w loc_053a7e
	btst #3,($2f6,a4)
	sne ($c2,a4)

loc_053a7e:
	move.l #-$30000,d2
	move.l #-$50000,d3
	jsr loc_02a59c
	lea loc_053ad8(pc),a0
	jsr loc_02a554

loc_053a9a:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.w loc_053abc
	sf ($b6,a4)
	tst.b ($c2,a4)
	beq.w loc_053abc
	not.b ($208,a4)
	not.b ($208,a3)

loc_053abc:
	btst #2,($2e1,a4)
	beq.b loc_053a9a
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_053ad8:
	dc.l loc_05790c,loc_057988,loc_057a04,loc_057a80
	dc.l loc_057afc,loc_057b78,loc_057bf4,loc_057c70
	dc.l loc_057cec,loc_057d68,loc_05790c,loc_05790c
	dc.l loc_05790c,loc_05790c,loc_05790c,loc_05790c

;--------------------------
loc_053b18:
	st ($24a,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	move.l #-$20000,d2
	move.l #$60000,d3
	jsr loc_02a59c
	lea loc_053c14(pc),a0
	jsr loc_02a554
	tst.l ($21a,a4)
	bmi.b loc_053b50
	clr.l ($216,a4)
	clr.l ($21a,a4)

loc_053b50:
	jsr loc_02269c
	tst.l ($21a,a4)
	bpl.b loc_053b66
	addi.l #$c000,($21a,a4)
	bra.b loc_053b6e

loc_053b66:
	clr.l ($216,a4)
	clr.l ($21a,a4)

loc_053b6e:
	tst.b ($b6,a4)
	beq.b loc_053b50

loc_053b74:
	jsr loc_02269c
	addi.l #$c000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_053b74
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

;--------------------------
loc_053b94:
	st ($24a,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	move.l #-$20000,d2
	move.l #$60000,d3
	jsr loc_02a59c
	move.l #-$75000,($21a,a4)
	move.l ($22a,a4),d0
	asr.l #8,d0
	divu.w #$28,d0
	ext.l d0
	asl.l #8,d0
	add.l d0,($21a,a4)
	move.l #$28000,($216,a4)
	lea loc_053c54(pc),a0
	jsr loc_02a554


loc_053be0:
	jsr loc_02269c
	addi.l #$6000,($21a,a4)
	tst.b ($b6,a4)
	beq.b loc_053be0

loc_053bf4:
	jsr loc_02269c
	addi.l #$c000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_053bf4
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_053c14:
	dc.l loc_057ee8,loc_057f40,loc_057f98,loc_057ff0
	dc.l loc_058048,loc_0580a0,loc_0580f8,loc_058150
	dc.l loc_0581a8,loc_058200,loc_057ee8,loc_057ee8
	dc.l loc_057ee8,loc_057ee8,loc_057ee8,loc_057ee8

loc_053c54:
	dc.l loc_05721a,loc_0572b2,loc_05734a,loc_0573e2
	dc.l loc_05747a,loc_057512,loc_0575aa,loc_057642
	dc.l loc_0576da,loc_057772,loc_05721a,loc_05721a
	dc.l loc_05721a,loc_05721a,loc_05721a,loc_05721a

;--------------------------
loc_053c94:;quick get up
	st ($24a,a4)

loc_053c98:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_053c98
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)


;--------------------------
loc_053cb0:;Tia fireball
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_053e36
	tst.b ($66,a4)
	bne.b loc_053ce4
	move.l #$48000,($36,a4)
	clr.l ($3a,a4)
	move.w #$15,($68,a4)
	move.w #$28,($6a,a4)
	bra.b loc_053cfc

loc_053ce4:
	move.l #$68000,($36,a4)
	clr.l ($3a,a4)
	move.w #$f,($68,a4)
	move.w #$1a,($6a,a4)

loc_053cfc:
	move.l #$280000,d2
	move.l #-$400000,d3
	jsr loc_0282ea
	movea.l #loc_055f64,a0
	clr.w d0
	jsr loc_027e70
	move.l #loc_053e3c,($9c,a4)

loc_053d24:
	tst.b ($9b,a4)
	bne.w loc_053dbe
	jsr loc_02805e
	bne.w loc_053dbe
	jsr loc_028112
	bne.w loc_053db8
	jsr loc_027e48
	move.w ($2e,a4),d0
	addi.w #$20,d0
	cmp.w (-$45d6,a5),d0
	blt.w loc_053e36
	move.w ($2e,a4),d0
	subi.w #$20,d0
	cmp.w (-$45d4,a5),d0
	bge.w loc_053e36
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	subq.w #1,($68,a4)
	bpl.b loc_053dac
	tst.b ($66,a4)
	bne.b loc_053da4
	subi.l #$2800,($36,a4)
	bra.b loc_053dac

loc_053da4:
	subi.l #$5000,($36,a4)

loc_053dac:
	subq.w #1,($6a,a4)
	bpl.w loc_053d24
	bra.w loc_053df4

loc_053db8:
	jsr loc_0281fa

loc_053dbe:
	clr.l ($9c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	movea.l #loc_055fa8,a0
	clr.w d0
	jsr loc_027e70
	bra.b loc_053e02

loc_053df4:
	movea.l #loc_056002,a0
	clr.w d0
	jsr loc_027e70

loc_053e02:
	btst #2,($53,a4)
	bne.w loc_053e36
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_053e02

loc_053e36:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_053e3c:
	dc.w $fffc,$0004,$fff6,$000a

loc_053e44:
	dc.w $0003,$6000,$fffd,$0000,$0000,$0000
	dc.w $0003,$2000,$fffc,$e000,$fff3,$4000
	dc.w $0000,$c000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_053e60:
	dc.l loc_053e6c,loc_053e78,loc_053e84

loc_053e6c:
	dc.w $8039,$fc00
	dc.w $803b,$d000,$f408,$0000

loc_053e78:
	dc.w $8039,$fe02
	dc.w $803b,$e000,$f408,$0000

loc_053e84:
	dc.w $8039,$fd01
	dc.w $803b,$d0ec,$f709,$0000


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_053e90:
	dc.l loc_04f48a,loc_04f48a,loc_04f786,loc_04faf0
	dc.l loc_050202,loc_05044e,loc_05066a,loc_05073e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_053eb0:
	dc.l loc_05421a,loc_054302,loc_054394,loc_054428
	dc.l loc_054328,loc_054340,loc_054362,loc_05434a
	dc.l loc_0544bc,loc_0544d0,loc_054514,loc_054566
	dc.l loc_0545ac,loc_0544fa,loc_0545c0,loc_0545c0
	dc.l loc_0545c0,loc_0545d0,loc_0545d0,loc_0545d0
	dc.l loc_0545da,loc_0545da,loc_0545da,loc_0545e4
	dc.l loc_0545e4,loc_0545e4,loc_0545f4,loc_0545f4
	dc.l loc_0545f4,loc_0545fe,loc_0545fe,loc_0545fe
	dc.l loc_054608,loc_054612,loc_054788,loc_05468e
	dc.l loc_054852

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_053f44:
	dc.l loc_028468,loc_028562,loc_02848c,loc_028572
	dc.l loc_02861e,loc_0286fc,loc_0287a6,loc_0287e0
	dc.l loc_02881a,loc_028a02,loc_028958,loc_028a30
	dc.l loc_028ae2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_053f78:
	dc.l loc_054864,loc_054864,loc_054864,loc_05486e
	dc.l loc_05486e,loc_05486e,loc_054878,loc_054878
	dc.l loc_054890,loc_054890,loc_0548a8,loc_0548a8
	dc.l loc_0548d0,loc_0548d0,loc_0548f0,loc_0548f0
	dc.l loc_054914,loc_054914,loc_054938,loc_054938
	dc.l loc_054978,loc_054978,loc_0549aa,loc_0549aa
	dc.l loc_0549c2,loc_0549c2,loc_0549da,loc_0549da
	dc.l loc_054a02,loc_054a02,loc_054a22,loc_054a80
	dc.l loc_054a22,loc_054a80,loc_054ade,loc_054b12
	dc.l loc_054b2a,loc_054b74,loc_054b2a,loc_054b74
	dc.l loc_054b2a,loc_054bca,loc_054bca,loc_054bea
	dc.l loc_054bfa,loc_054c42,loc_054c74,loc_054d66
	dc.l loc_054c7c,loc_054d7a,loc_054d7a,loc_054d7a
	dc.l loc_054df0,loc_054df0,loc_054e40,loc_054e78
	dc.l loc_054ed6,loc_054ed6,loc_054f00,loc_054f00
	dc.l loc_054f46,loc_054f46,loc_054fa8
	
;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054074:;attack table
	dc.l  $00000000,loc_054fb2,loc_05500a,loc_05505a;
	dc.l loc_0550aa,loc_05512e,loc_0551d0,loc_055238;4
	dc.l loc_0552aa,loc_055352,loc_0553e6,loc_055474;8
	dc.l loc_055532,loc_0555ca,loc_055646,loc_0556c8;c
	dc.l loc_055768,loc_0557ec,loc_0557ec,loc_055886;10
	dc.l loc_05590c,loc_05590c,loc_05598c,loc_055a7a;14
	dc.l loc_056070,loc_0561de,loc_056348,loc_055b76;18
	dc.l loc_055c80,loc_055dc0,loc_055e92,loc_0564fa;1c
	dc.l loc_056690,loc_056826,loc_056aa4,loc_056df8
	dc.l loc_05780a,loc_057de4,loc_0570d0,loc_058258
	dc.l loc_0582f8,loc_0583a6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05411c:
	dc.w $0005,$06c3,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0004,$06c4,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0003,$06c5,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0003,$06c6,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0004,$06c7,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0005,$06c8,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0003,$06c9,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0005,$06c8,$0000,$80ff,$fff8,$0000,$0000
	dc.w $000c,$06c9,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0006,$06ca,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0004,$06cb,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0003,$06cc,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0005,$06cd,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0003,$06ce,$0000,$80ff,$0004,$0000,$0000
	dc.w $0004,$06cf,$0000,$80ff,$0004,$0000,$0000
	dc.w $0010,$06d0,$0000,$80ff,$0004,$0000,$0000
	dc.w $0003,$06d1,$0000,$80ff,$0004,$0000,$0000
	dc.w $0003,$06d2,$0000,$80ff,$0004,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05421a:
	dc.w $0003,$065b,$0001,$80ff,$0004,$0003,$0000
	dc.w $0003,$065c,$0001,$80ff,$0004,$0003,$0000
	dc.w $0003,$065d,$0001,$80ff,$0004,$0003,$0000
	dc.w $0003,$065e,$0001,$80ff,$0004,$0003,$0000
	dc.w $0003,$065f,$0001,$80ff,$0004,$0003,$0000
	dc.w $0003,$0660,$0001,$80ff,$0004,$0003,$0000
	dc.w $0003,$0661,$0001,$80ff,$0004,$0003,$0000
	dc.w $0003,$0662,$0001,$80ff,$0004,$0003,$0000
	dc.w $0003,$0663,$0001,$80ff,$0004,$0003,$0000
	dc.w $0003,$0664,$0001,$80ff,$0004,$0003,$0000
	dc.w $0003,$0665,$0001,$80ff,$0004,$0003,$0000
	dc.w $0003,$0666,$0001,$80ff,$0004,$0003,$0000
	dc.w $0003,$0657,$0001,$80ff,$0004,$0003,$0000
	dc.w $0003,$0658,$0001,$80ff,$0004,$0003,$0000
	dc.w $0003,$0659,$0001,$80ff,$0004,$0003,$0000
	dc.w $0003,$065a,$0001,$80ff,$0004,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_05421a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054302:
	dc.w $0002,$0634,$0002,$80ff,$0000,$0000,$0001
	dc.w $0004,$051b,$0002,$8000
	dc.w $0002,$0634,$0002,$8000
	dc.w $8000,$0000
	dc.l loc_05421a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054328:
	dc.w $0003,$0623,$0003,$80ff,$0002,$0000,$0000
	dc.w $0003,$062f,$0004,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054340:
	dc.w $0004,$04ed,$0005,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05434a:
	dc.w $0003,$062f,$0004,$8000
	dc.w $0003,$0623,$0003,$80ff,$0002,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054362:
	dc.w $0002,$0635,$0006,$80ff,$0004,$0000,$0001
	dc.w $0004,$051c,$0006,$80ff,$0000,$0000,$0001
	dc.w $0002,$0636,$0006,$80ff,$000c,$0000,$0001
	dc.w $8000,$0000
	dc.l loc_054340

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054394:
	dc.w $0003,$0679,$0007,$80ff,$0004,$0001,$0000
	dc.w $0002,$067a,$0007,$80ff,$0004,$0001,$0000
	dc.w $0002,$067b,$0007,$80ff,$0004,$0001,$0000
	dc.w $0002,$067c,$0007,$80ff,$0004,$0001,$0000
	dc.w $0004,$067d,$0007,$80ff,$0004,$0001,$0000
	dc.w $0002,$067e,$0007,$80ff,$0004,$0001,$0000
	dc.w $0002,$067f,$0007,$80ff,$0004,$0001,$0000
	dc.w $0002,$0680,$0007,$80ff,$0004,$0001,$0000
	dc.w $0003,$0681,$0007,$80ff,$0004,$0001,$0000
	dc.w $0004,$0678,$0007,$80ff,$0004,$0001,$0000
	dc.w $8000,$0000
	dc.l loc_054394

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054428:
	dc.w $0003,$0683,$0008,$80ff,$0002,$0000,$0000
	dc.w $0002,$0686,$0008,$80ff,$0002,$0001,$0000
	dc.w $0002,$0687,$0008,$80ff,$0002,$0001,$0000
	dc.w $0003,$0688,$0008,$80ff,$0002,$0002,$0000
	dc.w $0004,$0689,$0008,$80ff,$0002,$0002,$0000
	dc.w $0003,$068a,$0008,$80ff,$0002,$0001,$0000
	dc.w $0002,$068b,$0008,$80ff,$0002,$0000,$0000
	dc.w $0002,$068c,$0008,$80ff,$0002,$0000,$0000
	dc.w $0003,$068d,$0008,$80ff,$0002,$0000,$0000
	dc.w $0004,$0682,$0008,$80ff,$0002,$ffff,$0000
	dc.w $8000,$0000
	dc.l loc_054428

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0544bc:
	dc.w $8003,$186f
	dc.w $0002,$04ec,$0009,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0544d0:
	dc.w $0005,$04f7,$000a,$7c00
	dc.w $0005,$0628,$000b,$7c00
	dc.w $000c,$04f8,$000c,$7c00
	dc.w $0005,$0629,$000d,$7c00
	dc.w $0007,$04f9,$000e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0544fa:
	dc.w $0005,$04f8,$000c,$7c00
	dc.w $0005,$0629,$000d,$7c00
	dc.w $0007,$04f9,$000e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054514:
	dc.w $0004,$04f7,$000a,$7c00
	dc.w $0006,$0500,$000f,$7cff,$0000,$fff8,$0000
	dc.w $0004,$04fd,$0010,$7cff,$fff8,$fff0,$0000
	dc.w $0004,$04fc,$0011,$7cff,$0000,$fff8,$0000
	dc.w $0004,$04fb,$0012,$7c00
	dc.w $0005,$04fa,$0013,$7cff,$0000,$0008,$0000
	dc.w $0007,$04f9,$000e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054566:
	dc.w $0004,$04f7,$000a,$7c00
	dc.w $0006,$062d,$0014,$7c00
	dc.w $0004,$04fb,$0012,$7c00
	dc.w $0004,$04fc,$0011,$7cff,$0000,$fff8,$0000
	dc.w $0004,$04fd,$0010,$7cff,$fff8,$fff0,$0000
	dc.w $0005,$062e,$0015,$7c00
	dc.w $0007,$04f9,$000e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0545ac:
	dc.w $8003,$1870
	dc.w $0003,$062a,$0009,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0545c0:
	dc.w $0002,$0519,$0016,$8400
	dc.w $8000,$0000
	dc.l loc_0545d0

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0545d0:
	dc.w $0002,$0519,$0016,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0545da:
	dc.w $0002,$0519,$0016,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0545e4:
	dc.w $0002,$051a,$0017,$8400
	dc.w $8000,$0000
	dc.l loc_0545f4

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0545f4:
	dc.w $0002,$051a,$0017,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0545fe:
	dc.w $0002,$051a,$0017,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054608:
	dc.w $003c,$0579,$0001,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054612:
	dc.w $0006,$051b,$0000,$8000
	dc.w $802b,$1cba
	dc.w $0006,$056d,$0000,$8000
	dc.w $804a,$0000,$0000,$fff8,$e000
	dc.w $0003,$056e,$0000,$8000
	dc.w $0004,$056f,$0000,$8000
	dc.w $0006,$0570,$0000,$8000
	dc.w $0004,$056f,$0000,$8000
	dc.w $0003,$056e,$0000,$8000
	dc.w $0004,$056d,$0000,$8000
	dc.w $0005,$0571,$0000,$8000
	dc.w $0002,$0572,$0000,$8000
	dc.w $802a,$005f
	dc.w $000d,$0573,$0000,$8000
	dc.w $0004,$0572,$0000,$8000
	dc.w $0010,$063c,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05468e:
	dc.w $0008,$0641,$0000,$8000
	dc.w $0006,$0642,$0000,$8000
	dc.w $0006,$0641,$0000,$8000
	dc.w $0006,$0642,$0000,$8000
	dc.w $802b,$1cb2
	dc.w $0005,$0643,$0000,$8000
	dc.w $0005,$0644,$0000,$8000
	dc.w $0005,$0645,$0000,$8000
	dc.w $0005,$0646,$0000,$8000
	dc.w $0006,$0647,$0000,$8000
	dc.w $0006,$0648,$0000,$8000
	dc.w $0007,$0649,$0000,$8000
	dc.w $0007,$064a,$0000,$8000
	dc.w $0008,$064b,$0000,$8000
	dc.w $8017,$0010
	dc.l loc_05473a

	dc.w $8018
	dc.l loc_05476c
	dc.l loc_05473a

	dc.w $0008,$064c,$0000,$8000
	dc.w $0008,$064d,$0000,$8000
	dc.w $0008,$064e,$0000,$8000
	dc.w $8017,$0080
	dc.l loc_054730

	dc.w $802b,$1cb3

loc_054730:
	dc.w $0008,$064f,$0000,$8000
	dc.w $8001

loc_05473a:
	dc.w $802b,$1cb4
	dc.w $0008,$064c,$0000,$8000
	dc.w $0008,$064d,$0000,$8000
	dc.w $0008,$064e,$0000,$8000
	dc.w $0024,$064f,$0000,$8000
	dc.w $802b,$1cb5
	dc.w $0008,$064f,$0000,$8000
	dc.w $8001

;--------------------------
loc_05476c:
	tst.b (1,a4)
	bmi.w loc_054784
	move.w ($14,a4),d0
	cmp.w ($14,a3),d0
	bne.w loc_054784
	moveq #0,d0
	rts

loc_054784:
	moveq #-$1,d0
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054788:
	dc.w $0006,$051b,$0000,$8000
	dc.w $802b,$1cb9
	dc.w $0004,$056d,$0000,$8000
	dc.w $804a,$0000,$0000,$fff8,$e000
	dc.w $0003,$056e,$0000,$8000
	dc.w $0004,$056f,$0000,$8000
	dc.w $0006,$0570,$0000,$8000
	dc.w $0004,$056f,$0000,$8000
	dc.w $0003,$056e,$0000,$8000
	dc.w $0004,$056d,$0000,$8000
	dc.w $804a,$0000,$0000,$fff8,$e000
	dc.w $0003,$056e,$0000,$8000
	dc.w $0004,$056f,$0000,$8000
	dc.w $0006,$0570,$0000,$8000
	dc.w $0004,$056f,$0000,$8000
	dc.w $0003,$056e,$0000,$8000
	dc.w $0004,$056d,$0000,$8000
	dc.w $0005,$0571,$0000,$8000
	dc.w $0002,$0572,$0000,$8000
	dc.w $000d,$0573,$0000,$8000
	dc.w $8017,$0078
	dc.l loc_05483c

	dc.w $802b,$1cb6
	dc.w $8000,$0000
	dc.l loc_054840

loc_05483c:
	dc.w $802b,$1cb8

loc_054840:
	dc.w $0004,$0572,$0000,$8000
	dc.w $0010,$063c,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054852:
	dc.w $0008,$063d,$0000,$8400
	dc.w $0014,$0536,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054864:
	dc.w $0002,$05cb,$0016,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05486e:
	dc.w $0002,$05cc,$0017,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054878:
	dc.w $802d,$ffec,$ff9c
	dc.w $0006,$05c3,$0018,$8400
	dc.w $0006,$05c2,$0019,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054890:
	dc.w $802d,$ffec,$ff9c
	dc.w $000c,$05c3,$0018,$8400
	dc.w $0006,$05c2,$0019,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0548a8:
	dc.w $802d,$ffe4,$ff9c
	dc.w $0002,$05c3,$0018,$8400
	dc.w $000a,$05c4,$0018,$8400
	dc.w $0006,$05c3,$0018,$8400
	dc.w $0006,$05c2,$0019,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0548d0:
	dc.w $802d,$ffe0,$ff9c
	dc.w $0012,$05c4,$0018,$8400
	dc.w $0006,$05c3,$0018,$8400
	dc.w $0006,$05c2,$0019,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0548f0:
	dc.w $802e,$fff8,$ffbc
	dc.w $0006,$05c6,$001a,$84ff,$0000,$0004,$0000
	dc.w $0006,$05c5,$001b,$84ff,$0000,$0004,$0000
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054914:
	dc.w $802e,$fff8,$ffbc
	dc.w $000c,$05c6,$001a,$84ff,$0000,$0004,$0000
	dc.w $0006,$05c5,$001b,$84ff,$0000,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054938:
	dc.w $802e,$fff4,$ffc4
	dc.w $0002,$05c6,$001a,$84ff,$0000,$0004,$0000
	dc.w $000a,$05c7,$001a,$84ff,$0000,$0004,$0000
	dc.w $0006,$05c6,$001a,$84ff,$0000,$0004,$0000
	dc.w $0006,$05c5,$001b,$84ff,$0000,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054978:
	dc.w $802e,$fff4,$ffcc
	dc.w $0012,$05c7,$001a,$84ff,$0000,$0004,$0000
	dc.w $0006,$05c6,$001a,$84ff,$0000,$0004,$0000
	dc.w $0006,$05c5,$001b,$84ff,$0000,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0549aa:
	dc.w $802f,$ffea,$ffc0
	dc.w $0006,$05c9,$001c,$8400
	dc.w $0006,$05c8,$001d,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0549c2:
	dc.w $802f,$ffea,$ffc0
	dc.w $000c,$05c9,$001c,$8400
	dc.w $0006,$05c8,$001d,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0549da:
	dc.w $802f,$ffe6,$ffc2
	dc.w $0002,$05c9,$001c,$8400
	dc.w $000a,$05ca,$001c,$8400
	dc.w $0006,$05c9,$001c,$8400
	dc.w $0006,$05c8,$001d,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054a02:
	dc.w $802f,$ffde,$ffc4
	dc.w $0012,$05ca,$001c,$8400
	dc.w $0006,$05c9,$001c,$8400
	dc.w $0006,$05c8,$001d,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054a22:
	dc.w $802e,$fffe,$ffb4
	dc.w $0008,$0521,$001e,$84ff,$0000,$fff8,$0000
	dc.w $0004,$0528,$001e,$84ff,$0008,$0008,$0000
	dc.w $0002,$04fb,$001f,$84ff,$0000,$fff0,$0000
	dc.w $0002,$04fc,$001f,$84ff,$0000,$fff0,$0000
	dc.w $0002,$04fd,$001f,$84ff,$fff8,$fff0,$0000
	dc.w $0003,$062e,$001f,$8400
	dc.w $0003,$04f9,$001f,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054a80:
	dc.w $802d,$ffec,$ffa8
	dc.w $0008,$051d,$001e,$84ff,$0000,$fff8,$0000
	dc.w $0004,$0528,$001e,$84ff,$0008,$0008,$0000
	dc.w $0002,$04fb,$001f,$84ff,$0000,$fff0,$0000
	dc.w $0002,$04fc,$001f,$84ff,$0000,$fff0,$0000
	dc.w $0002,$04fd,$001f,$84ff,$fff8,$fff0,$0000
	dc.w $0003,$062e,$001f,$8400
	dc.w $0003,$04f9,$001f,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054ade:
	dc.w $802e,$fffe,$ffae
	dc.w $0004,$0521,$001e,$8400
	dc.w $0004,$0528,$001e,$84ff,$0008,$0010,$0000
	dc.w $0004,$0527,$001e,$84ff,$0000,$0018,$0000
	dc.w $0008,$0639,$0020,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054b12:
	dc.w $0004,$0638,$0021,$7c00
	dc.w $0008,$052a,$0021,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054b2a:
	dc.w $8030,$fff0,$ffb0
	dc.w $0004,$0637,$001e,$7c00
	dc.w $0004,$0521,$001e,$7c00
	dc.w $0004,$0528,$001e,$7cff,$0008,$0010,$0000
	dc.w $0006,$0526,$0020,$7cff,$0008,$0010,$0000
	dc.w $0004,$0527,$0020,$7cff,$0000,$0010,$0000
	dc.w $0004,$0639,$0020,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054b74:
	dc.w $8030,$fff0,$ffb0
	dc.w $0004,$0522,$001e,$7cff,$0018,$0000,$0000
	dc.w $0004,$051d,$001e,$7cff,$0000,$fff8,$0000
	dc.w $0004,$0528,$001e,$7cff,$0008,$0010,$0000
	dc.w $0006,$0526,$0020,$7cff,$0008,$0010,$0000
	dc.w $0004,$0527,$0020,$7cff,$0000,$0010,$0000
	dc.w $0004,$0639,$0020,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054bca:
	dc.w $0004,$0638,$0021,$7c00
	dc.w $0008,$063a,$0021,$7c00
	dc.w $0008,$0529,$0021,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054bea:
	dc.w $0010,$052a,$0021,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054bfa:
	dc.w $8030,$fff8,$ffa0
	dc.w $0013,$0676,$001e,$7cff,$0000,$0008,$0001
	dc.w $0004,$0528,$001e,$7cff,$0008,$0010,$0000
	dc.w $0006,$0526,$0020,$7cff,$0008,$0010,$0000
	dc.w $0004,$0527,$0020,$7cff,$0000,$0010,$0000
	dc.w $0004,$0639,$0020,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054c42:
	dc.w $8030,$fff0,$ffc0
	dc.w $0002,$0528,$001e,$7cff,$0008,$0010,$0000
	dc.w $0002,$0527,$0020,$7cff,$0000,$0018,$0000
	dc.w $0002,$0639,$0020,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054c74:
	dc.w $8000,$0000
	dc.l loc_054a22

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054c7c:;Quick Get up animation
	dc.w $8037
	dc.l loc_053c94

	dc.w $8002,$188d
	dc.w $8024
	dc.w $8043,$0026
	dc.w $8044,$002e
	dc.w $804e,$fffb,$2000,$0000,$3000

	dc.w $0004,$052e,$0000,$7c00
	dc.w $0003,$052f,$0000,$7c00
	dc.w $0003,$04fc,$0000,$7cff,$0000,$ffd0,$0000
	dc.w $0002,$04fd,$0000,$7cff,$0000,$ffd0,$0000
	dc.w $0002,$04fc,$0000,$7cff,$0000,$0070,$0003
	dc.w $0002,$04fb,$0000,$7cff,$0000,$ffd0,$0000
	dc.w $0002,$04fc,$0000,$7cff,$0000,$ffd0,$0000
	dc.w $0002,$04fd,$0000,$7cff,$0000,$ffd0,$0000
	dc.w $0002,$04fc,$0000,$7cff,$0000,$0070,$0003
	dc.w $804a,$ffff,$4000,$fffb,$e000
	dc.w $0004,$04f8,$0000,$7cff,$0008,$ffe8,$0000
	dc.w $0004,$0628,$0000,$7cff,$0008,$fff8,$0000
	dc.w $0004,$0629,$0000,$7cff,$0004,$fff8,$0000
	dc.w $803a,$df00
	dc.w $0002,$062a,$0000,$7cff,$fffc,$0000,$0000
	dc.w $803a,$0000
	dc.w $0002,$062a,$0000,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054d66:
	dc.w $8003,$1870
	dc.w $0003,$062a,$0000,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054d7a:
	dc.w $0002,$052e,$0000,$7c00
	dc.w $0002,$052f,$0000,$7cff,$0008,$0000,$0000
	dc.w $0004,$0530,$0000,$7c00
	dc.w $0003,$0531,$0000,$7c00
	dc.w $0003,$04fb,$0000,$7cff,$0000,$0008,$0000
	dc.w $0003,$04fa,$0000,$7cff,$0000,$0018,$0000
	dc.w $0003,$04f9,$0000,$7cff,$0000,$0008,$0000
	dc.w $803a,$df00
	dc.w $0002,$062a,$0000,$7cff,$fffc,$0000,$0000
	dc.w $803a,$0000
	dc.w $0002,$04ec,$0000,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054df0:
	dc.w $0004,$052e,$0000,$7c00
	dc.w $0004,$052f,$0000,$7cff,$fff8,$0000,$0000
	dc.w $0004,$04fc,$0000,$7cff,$0000,$ffe8,$0000
	dc.w $0004,$04fd,$0000,$7cff,$0000,$ffe8,$0000
	dc.w $0004,$04f8,$0000,$7cff,$0004,$fff0,$0000
	dc.w $0004,$062a,$0000,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054e40:
	dc.w $0008,$066a,$0022,$7c00
	dc.w $0008,$066b,$0022,$7c00
	dc.w $0008,$066c,$0022,$7c00
	dc.w $0008,$066d,$0022,$7c00
	dc.w $0008,$066e,$0022,$7c00
	dc.w $0008,$066f,$0022,$7c00
	dc.w $8000,$0000
	dc.l loc_054e40

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054e78:
	dc.w $0004,$06d3,$0000,$7cff,$0008,$0001,$0000
	dc.w $0006,$06d4,$0000,$7cff,$0008,$0001,$0000
	dc.w $0004,$06d5,$0000,$7cff,$0008,$0001,$0000
	dc.w $000a,$06d6,$0000,$7cff,$0008,$0001,$0000
	dc.w $803a,$df00
	dc.w $0003,$06d6,$0000,$7cff,$0008,$0001,$0000
	dc.w $803a,$0000
	dc.w $0003,$06d6,$0000,$7cff,$0008,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054ed6:
	dc.w $8030,$fff0,$ffb8

loc_054edc:
	dc.w $0003,$05cf,$001e,$7cff,$0000,$0000,$0500
	dc.w $0001,$05d0,$001e,$7cff,$0000,$0000,$0500
	dc.w $8000,$0000
	dc.l loc_054edc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054f00:
	dc.w $8030,$fff8,$ffb0

loc_054f06:
	dc.w $0002,$0522,$001e,$7cff,$0008,$0000,$0600
	dc.w $0002,$0522,$001e,$7cff,$0005,$0000,$0200
	dc.w $0002,$0522,$001e,$7cff,$0008,$0000,$0400
	dc.w $0002,$0522,$001e,$7cff,$000b,$0000,$0700
	dc.w $8000,$0000
	dc.l loc_054f06

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054f46:
	dc.w $8030,$fff8,$ffc0

loc_054f4c:
	dc.w $0002,$0528,$001e,$7cff,$0000,$000a,$0800
	dc.w $0002,$0528,$001e,$7cff,$0002,$0007,$0900
	dc.w $0002,$0528,$001e,$7cff,$fffe,$0009,$0800
	dc.w $0002,$0528,$001e,$7cff,$0000,$0006,$0900
	dc.w $0002,$0528,$001e,$7cff,$0002,$0009,$0800
	dc.w $0002,$0528,$001e,$7cff,$fffe,$0007,$0900
	dc.w $8000,$0000
	dc.l loc_054f4c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054fa8:
	dc.w $0004,$05c6,$0022,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_054fb2:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_054fe4

	dc.w $803e,$0821,$0500
	dc.w $803f,$0602,$0201,$0601
	dc.w $8040,$0707,$0206,$06ff
	dc.w $8042,$0301
	dc.w $8041,$0401,$fe12

	dc.w $8036
	dc.l loc_053e6c

loc_054fe4:
	dc.w $8005,$189d
	dc.w $0002,$05d6,$0023,$7800
	dc.w $0006,$05d7,$0024,$7800
	dc.w $0003,$05d8,$0025,$7c00
	dc.w $0003,$05d9,$0025,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05500a:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05503c

	dc.w $803e,$0821,$0100
	dc.w $803f,$0502,$0301,$0501
	dc.w $8040,$0703,$0204,$04ff
	dc.w $8042,$0301
	dc.w $8041,$0401,$061d

	dc.w $8036
	dc.l loc_053e6c

loc_05503c:
	dc.w $8005,$189d
	dc.w $0002,$04da,$0026,$7c00
	dc.w $0004,$04db,$0027,$7800
	dc.w $0004,$04da,$0026,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05505a:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05508c

	dc.w $803e,$0821,$0200
	dc.w $803f,$0502,$0301,$0501
	dc.w $8040,$0703,$0204,$04ff
	dc.w $8042,$0301
	dc.w $8041,$0201,$081d

	dc.w $8036
	dc.l loc_053e78

loc_05508c:
	dc.w $8005,$189d
	dc.w $0002,$04ee,$0028,$7c00
	dc.w $0004,$04ef,$0029,$7800
	dc.w $0004,$04ee,$0028,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0550aa:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0550dc

	dc.w $803e,$084b,$0200
	dc.w $803f,$0e04,$0603,$0e02
	dc.w $8040,$0802,$0406,$0aff
	dc.w $8042,$0a02
	dc.w $8041,$0201,$041a

	dc.w $8036
	dc.l loc_053e6c

loc_0550dc:
	dc.w $8004,$189c
	dc.w $0002,$05de,$002a,$8800
	dc.w $0002,$05df,$002b,$88ff,$0008,$0000,$0000
	dc.w $8045,$0001
	dc.w $0002,$05e0,$002c,$78ff,$000d,$0004,$0000
	dc.w $0004,$05e0,$002c,$78ff,$0010,$0000,$0000
	dc.w $0005,$05df,$002b,$88ff,$0008,$0000,$0000
	dc.w $0005,$05de,$002a,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05512e:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05515c

	dc.w $803e,$082b,$0200
	dc.w $803f,$0e04,$0603,$0e02
	dc.w $8040,$0803,$0605,$0aff
	dc.w $8041,$0201,$0428

	dc.w $8036
	dc.l loc_053e6c

loc_05515c:
	dc.w $8004,$187a
	dc.w $0002,$05ea,$002d,$7cff,$fffc,$0000,$0000
	dc.w $801a,$0002,$0011
	dc.w $8007,$0008,$0000
	dc.w $0002,$05eb,$002e,$7c00
	dc.w $0002,$05ec,$002f,$7cff,$0004,$0000,$0000
	dc.w $8045,$0001
	dc.w $8027,$ffe8,$0020
	dc.w $0005,$04e3,$0030,$7800
	dc.w $8028
	dc.w $0004,$05ec,$0031,$7cff,$0004,$0000,$0000
	dc.w $0003,$05eb,$002e,$7c00,$8007,$fff8,$0000
	dc.w $0003,$05ea,$002d,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0551d0:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_055202

	dc.w $803e,$0a2b,$0200
	dc.w $803f,$0702,$0401,$0701
	dc.w $8040,$0a03,$0406,$0aff
	dc.w $8042,$0601
	dc.w $8041,$0101,$0020

	dc.w $8036
	dc.l loc_053e78

loc_055202:
	dc.w $8005,$189d
	dc.w $0002,$05f5,$0032,$7c00
	dc.w $0002,$05f6,$0033,$7800
	dc.w $8027,$ffe8,$0020
	dc.w $0006,$05f7,$0034,$7800
	dc.w $8028
	dc.w $0005,$05f6,$0033,$7800
	dc.w $0005,$05f5,$0032,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055238:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_055266

	dc.w $803e,$0845,$0200
	dc.w $803f,$180a,$1006,$1804
	dc.w $8040,$0a03,$0407,$0fff
	dc.w $8041,$0201,$0820

	dc.w $8036
	dc.l loc_053e6c

loc_055266:
	dc.w $8004,$18a3
	dc.w $0002,$05da,$0035,$7800
	dc.w $802b,$1ca9
	dc.w $8027,$ffe8,$0018
	dc.w $0002,$05db,$0036,$7800
	dc.w $8045,$0004
	dc.w $8027,$ffe8,$0020
	dc.w $0007,$04e1,$0037,$7800
	dc.w $0007,$05dc,$0038,$7800
	dc.w $8028
	dc.w $0008,$05dd,$0039,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0552aa:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0552de

	dc.w $803e,$0825,$0100
	dc.w $803f,$160a,$0e05,$1604
	dc.w $8040,$0a02,$0506,$0fff
	dc.w $8041,$0401,$0c27
	dc.w $803c,$0000
	dc.w $803b,$d000,$f40c,$0000

loc_0552de:
	dc.w $8004,$18a1
	dc.w $8027,$ffe8,$0018
	dc.w $0003,$05e5,$003a,$7800
	dc.w $8008,$0002,$0000,$0000,$0000
	dc.w $802b,$1cac
	dc.w $8027,$ffe8,$0020
	dc.w $803b,$d000,$f80c
	dc.w $0002,$05e6,$003b,$7800
	dc.w $8045,$0004
	dc.w $8027,$ffe8,$0028
	dc.w $0006,$04dd,$003c,$7800
	dc.w $8023,$8027,$ffe8,$0020
	dc.w $0005,$05e7,$003d,$7c00
	dc.w $803b,$d000,$f40c
	dc.w $0005,$05e8,$003e,$7c00
	dc.w $8028
	dc.w $803c,$0000
	dc.w $0005,$05e9,$003f,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055352:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_055386

	dc.w $803e,$0845,$0200
	dc.w $803f,$160a,$0805,$1606
	dc.w $8040,$0901,$050a,$0dff
	dc.w $8041,$0c01,$0321
	dc.w $803c,$0004
	dc.w $803b,$e000,$f40c,$0000

loc_055386:
	dc.w $8004,$18a3
	dc.w $8027,$fff0,$0020
	dc.w $0003,$05f0,$0040,$7800
	dc.w $0002,$04e7,$0041,$7800
	dc.w $8045,$0004
	dc.w $802b,$1cac
	dc.w $8027,$fff0,$0028
	dc.w $0002,$05f1,$0042,$7800
	dc.w $8027,$fff0,$0020
	dc.w $0003,$05f2,$0043,$7800
	dc.w $0005,$0624,$0044,$8800
	dc.w $0004,$05f3,$0045,$7c00
	dc.w $0005,$05f4,$0046,$7c00
	dc.w $0004,$0625,$0047,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0553e6:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_055414

	dc.w $803e,$084d,$0100
	dc.w $803f,$180a,$0e06,$1804
	dc.w $8040,$0a02,$0608,$0fff
	dc.w $8041,$0801,$0017

	dc.w $8036
	dc.l loc_053e6c

loc_055414:
	dc.w $8004,$18a3
	dc.w $0002,$05e1,$002e,$7c00
	dc.w $0002,$05e2,$0048,$7800
	dc.w $802b,$1ca6
	dc.w $0002,$05e3,$0049,$7800
	dc.w $8045,$0004
	dc.w $0002,$05e4,$004a,$78ff,$fffc,$0004,$0000
	dc.w $0006,$05e4,$004a,$7800
	dc.w $0005,$05ec,$0031,$7cff,$0004,$0000,$0000
	dc.w $0005,$05eb,$002e,$7c00
	dc.w $0005,$05ea,$002d,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055474:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0554a2

	dc.w $803e,$086c,$0800
	dc.w $803f,$0c06,$0002,$0804
	dc.w $8040,$0401,$0406,$12ff
	dc.w $8041,$0601,$082d

	dc.w $8036
	dc.l loc_053e6c

loc_0554a2:
	dc.w $8004,$189e
	dc.w $0002,$05ed,$004b,$7c00
	dc.w $8027,$fff0,$0018
	dc.w $0002,$05ee,$004c,$7800
	dc.w $802b,$1cb0
	dc.w $8008,$0001,$8000,$0000,$0000
	dc.w $8027,$fff8,$0020
	dc.w $803b,$d000,$fc10
	dc.w $8045,$0004
	dc.w $0002,$04e6,$004d,$7800
	dc.w $803f,$1206,$1205,$1204
	dc.w $803e,$086d,$0100
	dc.w $8027,$0000,$0030
	dc.w $0004,$05ef,$004e,$78ff,$fff8,$0000,$0000
	dc.w $8023
	dc.w $8027,$fff8,$0020
	dc.w $0005,$04e6,$004f,$7800
	dc.w $803c,$0000
	dc.w $8027,$fff0,$0018
	dc.w $0006,$05ee,$004c,$7800
	dc.w $8028
	dc.w $0007,$05ed,$004b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055532:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_055560

	dc.w $803e,$0a6d,$0b00
	dc.w $803f,$140a,$0805,$1408
	dc.w $8040,$0803,$0606,$13ff
	dc.w $8041,$0101,$0629

	dc.w $8036
	dc.l loc_053e78

loc_055560:
	dc.w $8004,$189e
	dc.w $0003,$05f8,$0050,$7cff,$0008,$0000,$0000
	dc.w $803b,$e000,$f410
	dc.w $8027,$fff0,$0018
	dc.w $0003,$05f9,$0051,$78ff,$0008,$0000,$0000
	dc.w $8045,$0004
	dc.w $8027,$fff0,$0038
	dc.w $0006,$05fa,$0052,$78ff,$0008,$0000,$0000
	dc.w $8027,$fff0,$0028
	dc.w $0007,$05fb,$0053,$8800
	dc.w $8028
	dc.w $803c,$0004
	dc.w $0006,$0626,$0054,$7c00
	dc.w $0006,$0627,$0005,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0555ca:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_0555f8

	dc.w $803e,$0962,$0200
	dc.w $803f,$1004,$0c04,$1002
	dc.w $8040,$1007,$060a,$ffff
	dc.w $8041,$0201,$0422

	dc.w $8036
	dc.l loc_053e84

loc_0555f8:
	dc.w $8004,$189f
	dc.w $0003,$055b,$0055,$7c00
	dc.w $8027,$ffee,$0022
	dc.w $0003,$055c,$0056,$7800
	dc.w $8027,$ffee,$002a
	dc.w $8045,$0002
	dc.w $000a,$055d,$0057,$7800
	dc.w $8027,$ffee,$001a
	dc.w $0008,$062b,$0058,$7800
	dc.w $8028
	dc.w $0006,$0629,$000d,$7c00
	dc.w $0004,$04f9,$000e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055646:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_055674

	dc.w $803e,$0922,$0200
	dc.w $803f,$0e04,$0603,$0e02
	dc.w $8040,$0a09,$050e,$ffff
	dc.w $8041,$0201,$0822

	dc.w $8036
	dc.l loc_053e84

loc_055674:
	dc.w $8004,$187a
	dc.w $0003,$0605,$0059,$78ff,$fff8,$0000,$0000
	dc.w $0002,$0606,$005a,$7800
	dc.w $8027,$fff6,$0022
	dc.w $8045,$0002
	dc.w $000e,$050c,$005b,$78ff,$fff8,$0000,$0000
	dc.w $8028
	dc.w $0006,$0606,$005a,$7800
	dc.w $0004,$0605,$0059,$7cff,$fff8,$0000,$0000
	dc.w $0004,$04f9,$000e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0556c8:
	dc.w $8037
	dc.l loc_02907e
	dc.w $8038
	dc.l loc_0556f6

	dc.w $803e,$094a,$0700
	dc.w $803f,$0c04,$0003,$0c02
	dc.w $8040,$0b09,$030e,$ffff
	dc.w $8041,$0201,$0123

	dc.w $8036
	dc.l loc_053e84

loc_0556f6:
	dc.w $8004,$1898
	dc.w $0003,$0601,$005c,$78ff,$fff8,$0000,$0000
	dc.w $8045,$0002
	dc.w $0005,$0602,$005d,$78ff,$fff8,$0000,$0000
	dc.w $803e,$094a,$0200
	dc.w $803f,$0c04,$0a03,$0c02
	dc.w $802b,$1cab
	dc.w $8027,$ffee,$0022
	dc.w $0003,$0507,$005e,$78ff,$fff8,$0008,$0000
	dc.w $8027,$ffee,$002a
	dc.w $0006,$062c,$005f,$78ff,$fff8,$0008,$0000
	dc.w $8028
	dc.w $0004,$0629,$000d,$7c00
	dc.w $0004,$04f9,$000e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055768:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_055796

	dc.w $803e,$092a,$0100
	dc.w $803f,$0c04,$0603,$0c02
	dc.w $8040,$0a03,$060c,$ffff
	dc.w $8041,$0201,$f125

	dc.w $8036
	dc.l loc_053e84

loc_055796:
	dc.w $8004,$187a
	dc.w $0004,$060b,$0060,$78ff,$fff8,$0000,$0000
	dc.w $0002,$060c,$0061,$7800
	dc.w $8045,$0002
	dc.w $8027,$ffee,$002a
	dc.w $000c,$060d,$0062,$7800
	dc.w $8028
	dc.w $0004,$0630,$0061,$7800
	dc.w $0004,$0631,$0060,$78ff,$fff8,$0008,$0000
	dc.w $0004,$0629,$000d,$7c00
	dc.w $0004,$04f9,$000e,$7c00
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0557ec:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_05581a

	dc.w $803e,$0944,$0200
	dc.w $803f,$1408,$0c05,$1404
	dc.w $8040,$0905,$050a,$ffff
	dc.w $8041,$0201,$0627

	dc.w $8036
	dc.l loc_053e84

loc_05581a:
	dc.w $8004,$18a3
	dc.w $0003,$05fc,$0063,$7800
	dc.w $802b,$1ca8
	dc.w $8027,$fff6,$0022
	dc.w $0002,$05fd,$0064,$78ff,$fff8,$0000,$0000
	dc.w $8045,$0004
	dc.w $8027,$fffe,$0032
	dc.w $0004,$05fe,$0065,$78ff,$fff0,$0000,$0000
	dc.w $8027,$fff6,$001a
	dc.w $0006,$05ff,$0066,$78ff,$fff8,$0000,$0000
	dc.w $8028
	dc.w $0006,$0600,$0067,$8800
	dc.w $0004,$0629,$000d,$7c00
	dc.w $0004,$04f9,$000e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055886:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_0558b4

	dc.w $803e,$0944,$0200
	dc.w $803f,$1608,$1005,$1604
	dc.w $8040,$0b05,$0308,$ffff
	dc.w $8041,$0401,$051f

	dc.w $8036
	dc.l loc_053e84

loc_0558b4:
	dc.w $8004,$18a3
	dc.w $0003,$0607,$0068,$7800
	dc.w $8045,$0004
	dc.w $802b,$1ca9
	dc.w $8027,$ffee,$0022
	dc.w $0003,$0608,$0069,$7800
	dc.w $8027,$fff6,$0022
	dc.w $0005,$0609,$006a,$7800
	dc.w $8027,$ffee,$001a
	dc.w $0006,$060a,$006b,$78ff,$0000,$0008,$0000
	dc.w $8028
	dc.w $0004,$04f7,$000a,$7c00
	dc.w $0004,$04f9,$000e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05590c:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_05593a

	dc.w $803e,$092c,$0200
	dc.w $803f,$1408,$0a05,$1404
	dc.w $8040,$060b,$0606,$ffff
	dc.w $8041,$0401,$0425

	dc.w $8036
	dc.l loc_053e84

loc_05593a:
	dc.w $8004,$18a1
	dc.w $0004,$060e,$006c,$7c00
	dc.w $802b,$1cad
	dc.w $8027,$ffe6,$002a
	dc.w $0002,$060f,$006d,$78ff,$0000,$fff8,$0000
	dc.w $8045,$0004
	dc.w $8027,$ffde,$0032
	dc.w $0006,$0610,$006e,$7800
	dc.w $8028
	dc.w $0006,$0632,$006f,$7800
	dc.w $0006,$0633,$0070,$7c00
	dc.w $0006,$04f9,$000e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05598c:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0559ba

	dc.w $803e,$0863,$0300
	dc.w $803f,$1004,$0404,$1004
	dc.w $8040,$0a00,$0806,$ff00
	dc.w $8041,$0401,$001a

	dc.w $8036
	dc.l loc_053e6c

loc_0559ba:
	dc.w $802c
	dc.w $0002,$0611,$0071,$7c00
	dc.w $8048,$00bc,$0000
	dc.w $8004,$188a
	dc.w $804e,$0006,$0000,$ffff,$a000
	dc.w $802b,$1cae
	dc.w $0002,$0611,$0071,$7800
	dc.w $8011,$001c,$0004,$e000,$f000
	dc.w $0004,$04de,$0072,$7800
	dc.w $8045,$0004
	dc.w $8027,$ffe8,$0018
	dc.w $0006,$04df,$0073,$7800
	dc.w $8007,$0008,$0000
	dc.w $8004,$18a3
	dc.w $0004,$04e0,$0074,$7800
	dc.w $8007,$0008,$0000
	dc.w $8040,$0003,$0407,$0f00
	dc.w $803e,$0845,$0500
	dc.w $803f,$1204,$0c05,$1004
	dc.w $8041,$0201,$0820
	dc.w $802b,$1ca9
	dc.w $0004,$0652,$0036,$7800
	dc.w $8045,$0002
	dc.w $8027,$ffe8,$0020
	dc.w $8011,$001d,$0005,$2000,$10f4,$ff00
	dc.w $0007,$04e1,$0037,$7800
	dc.w $0007,$05dc,$0038,$7800
	dc.w $8028
	dc.w $0008,$05dd,$0039,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055a7a:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_055aa8

	dc.w $803e,$084c,$0100
	dc.w $803f,$0804,$0002,$0804
	dc.w $8040,$0a00,$0703,$ff00
	dc.w $8041,$0201,$001b

	dc.w $8036
	dc.l loc_053e6c

loc_055aa8:
	dc.w $802c
	dc.w $0004,$061e,$0075,$7c00
	dc.w $8048,$00bc,$0000
	dc.w $804e,$0004,$0000,$ffff,$8000
	dc.w $8004,$188a
	dc.w $0003,$0612,$0076,$7c00
	dc.w $8045,$0004
	dc.w $8007,$0010,$0000
	dc.w $8027,$ffe8,$0018
	dc.w $8011,$001d,$0005,$d800,$10f4,$ff00
	dc.w $0003,$0613,$0077,$7800
	dc.w $8027,$fff8,$0010
	dc.w $0003,$063e,$0078,$78ff,$fff8,$0000,$0000
	dc.w $802b,$1caa
	dc.w $0007,$0614,$0079,$7800
	dc.w $8040,$0003,$0303,$0e00
	dc.w $803e,$094c,$0600
	dc.w $803f,$1804,$1007,$1804
	dc.w $8041,$0201,$0821
	dc.w $804e,$0003,$0000,$ffff,$8000
	dc.w $8004,$18a3
	dc.w $8027,$fff8,$0028
	dc.w $0003,$0615,$007a,$7800
	dc.w $8045,$0002
	dc.w $8027,$fff0,$0030
	dc.w $0003,$063f,$007b,$7800
	dc.w $8028
	dc.w $0007,$0640,$007c,$7800
	dc.w $8007,$fff0,$0000
	dc.w $0007,$0612,$0076,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055b76:
	dc.w $8037
	dc.l loc_05335c
	dc.w $8038
	dc.l loc_055bbe

	dc.w $8039,$0001
	dc.w $803e,$2844,$2400
	dc.w $803f,$180c,$080a,$1808
	dc.w $8040,$0000,$060d,$ff00
	dc.w $8043,$0007
	dc.w $8044,$0009
	dc.w $8041,$0e07,$fd19
	dc.w $8048,$0550,$0006
	dc.w $8048,$00bc,$0000
	dc.w $803b,$e000,$f709,$0000

loc_055bbe:
	dc.w $8047,$00b6,$0000
	dc.w $8004,$1884
	dc.w $802a,$0052
	dc.w $0004,$0539,$0000,$80ff,$0008,$0000,$0000
	dc.w $8008,$0000,$c000,$0000,$0000
	dc.w $0002,$0544,$0000,$7cff,$fffe,$0000,$0000
	dc.w $8045,$000a
	dc.w $8008,$0001,$8000,$0000,$0000
	dc.w $8011,$001c,$0004,$e800,$f000
	dc.w $0002,$0545,$007d,$7800
	dc.w $8047,$00b6,$ffff
	dc.w $803b,$d000,$f709
	dc.w $8007,$000c,$0000
	dc.w $803e,$2844,$2400
	dc.w $803f,$1008,$0205,$1008
	dc.w $8011,$001d,$0005,$0000,$10f4,$ff00
	dc.w $0003,$0546,$007e,$7800
	dc.w $0008,$0547,$007f,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055c50:
	dc.w $0006,$0548,$0080,$7c00
	dc.w $0006,$0549,$0081,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055c62:
	dc.w $803c,$0000
	dc.w $8003,$1870
	dc.w $8048,$0550,$0003
	dc.w $0003,$062a,$0009,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055c80:
	dc.w $8037
	dc.l loc_05335c
	dc.w $8038
	dc.l loc_055cc4

	dc.w $8039,$0001
	dc.w $803e,$2844,$1900
	dc.w $803f,$1604,$0005,$1206
	dc.w $8040,$0000,$0612,$ff00
	dc.w $8044,$0008
	dc.w $8041,$0e07,$fd1f
	dc.w $8048,$0550,$0006
	dc.w $8048,$00bc,$0000
	dc.w $803b,$d000,$f709,$0000

loc_055cc4:
	dc.w $8047,$00b6,$0000
	dc.w $8004,$1884
	dc.w $802a,$0052

	dc.w $800a
	dc.l loc_055d74

	dc.w $0004,$0539,$0082,$8000
	dc.w $8007,$0008,$0000
	dc.w $8043,$0003
	dc.w $0002,$0544,$0000,$7cff,$fffe,$0000,$0000
	dc.w $8045,$000e
	dc.w $8007,$0008,$0000
	dc.w $8011,$001c,$0004,$e800,$f000
	dc.w $0002,$0545,$0083,$7800
	dc.w $8047,$00b6,$ffff
	dc.w $8007,$000c,$0000
	dc.w $803e,$2844,$1900
	dc.w $803f,$0a04,$0004,$0804
	dc.w $8011,$001d,$0005,$0000,$10f4,$ff00
	dc.w $0004,$0546,$0084,$7800
	dc.w $803e,$2844,$2400
	dc.w $803f,$0804,$0403,$0808
	dc.w $0008,$0547,$0085,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055d5a:
	dc.w $800d
	dc.l loc_055db2
	dc.w $fffe

	dc.w $0008,$0548,$0080,$7c00
	dc.w $0008,$0549,$0081,$7c00
	dc.w $8001

;HP Dragon punch aura
loc_055d74:
	dc.w $0004,$06a4,$7cff,$0018,$0050,$0d00
	dc.w $0002,$06a5,$78ff,$fffe,$0030,$0d00
	dc.w $0002,$06a6,$74ff,$ffd0,$0050,$0d00
	dc.w $0004,$06a7,$74ff,$fff0,$0080,$0d00
	dc.w $0076,$06a8,$74ff,$0000,$0090,$0d00
	dc.w $8001

loc_055db2:
	dc.w $0008,$06a9,$78ff,$0000,$0080,$0d00
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055dc0:
	dc.w $8037
	dc.l loc_05373e
	dc.w $8038
	dc.l loc_055dfe

	dc.w $803e,$2802,$0d00
	dc.w $803f,$0f04,$0405,$1008
	dc.w $8040,$0000,$0900,$1f00
	dc.w $8041,$0211,$1818
	dc.w $8039,$0000
	dc.w $8048,$0550,$0008
	dc.w $8048,$00bc,$0000
	dc.w $8036,$0005,$3e6c

loc_055dfe:
	dc.w $8047,$00b6,$0000

	dc.w $800a
	dc.l loc_055e66

	dc.w $802c
	dc.w $0004,$0540,$0086,$7c00
	dc.w $8004,$1884
	dc.w $802a,$004e
	dc.w $0003,$0541,$0087,$7c00
	dc.w $0002,$0542,$0088,$7c00
	dc.w $8047,$00b6,$ffff
	dc.w $8045,$0006
	dc.w $0006,$0543,$0089,$7c00
	dc.w $0006,$0668,$0089,$7c00
	dc.w $000a,$0669,$0089,$7c00
	dc.w $0002,$0656,$008a,$7c00
	dc.w $8048,$0550,$0007
	dc.w $0007,$0656,$008a,$7c00
	dc.w $8001

loc_055e66:
	dc.w $0001,$0000,$6000
	dc.w $0003,$06ad,$78ff,$0020,$0050,$0c00
	dc.w $0003,$06ae,$78ff,$0000,$0040,$0c00
	dc.w $0002,$06af,$78ff,$ffe0,$0040,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055e92:
	dc.w $8037
	dc.l loc_05373e
	dc.w $8038
	dc.l loc_055ed0

	dc.w $803e,$2802,$0d00
	dc.w $803f,$1104,$0406,$1208
	dc.w $8040,$0000,$0b00,$2000
	dc.w $8041,$0211,$1818
	dc.w $8039,$0000
	dc.w $8048,$0550,$0008
	dc.w $8048,$00bc,$0000

	dc.w $8036
	dc.l loc_053e6c

loc_055ed0:
	dc.w $8047,$00b6,$0000

	dc.w $800a
	dc.l loc_055f38

	dc.w $802c
	dc.w $0006,$0540,$0086,$7c00
	dc.w $8004,$1884
	dc.w $802a,$004e
	dc.w $0003,$0541,$0087,$7c00
	dc.w $0002,$0542,$0088,$7c00
	dc.w $8047,$00b6,$ffff
	dc.w $8045,$0006
	dc.w $0006,$0543,$0089,$7c00
	dc.w $0006,$0668,$0089,$7c00
	dc.w $000b,$0669,$0089,$7c00
	dc.w $0002,$0656,$008a,$7c00
	dc.w $8048,$0550,$0007
	dc.w $0007,$0656,$008a,$7c00
	dc.w $8001

loc_055f38:
	dc.w $0003,$0000,$6000
	dc.w $0003,$06ad,$78ff,$0020,$0050,$0c00
	dc.w $0003,$06ae,$78ff,$0000,$0040,$0c00
	dc.w $0002,$06af,$78ff,$ffe0,$0040,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055f64:
	dc.w $0002,$06b0,$40ff,$0000,$0004,$0c00

loc_055f70:
	dc.w $0002,$06b1,$40ff,$0000,$0004,$0c00
	dc.w $0002,$06b2,$40ff,$0000,$0004,$0c00
	dc.w $0002,$06b3,$40ff,$0000,$0004,$0c00
	dc.w $0002,$06b4,$40ff,$0000,$0004,$0c00
	dc.w $8000,$0000
	dc.l loc_055f70

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_055fa8:
	dc.w $8002,$1885
	dc.w $0002,$05a3,$40ff,$0000,$0000,$0c00
	dc.w $0002,$05a4,$40ff,$0000,$0000,$0d00
	dc.w $0002,$05a5,$40ff,$0000,$0000,$0c00
	dc.w $0001,$05a6,$40ff,$0000,$0000,$0d00
	dc.w $0001,$05a7,$40ff,$0000,$0000,$0c00
	dc.w $0001,$05cd,$40ff,$0000,$0000,$0d00
	dc.w $0001,$05ce,$40ff,$0000,$0000,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056002:
	dc.w $0001,$06b9,$80ff,$0000,$0004,$0d00
	dc.w $0001,$06ba,$80ff,$0000,$0004,$0d00
	dc.w $0001,$06bb,$80ff,$0000,$0004,$0d00
	dc.w $0001,$06bc,$80ff,$0000,$0004,$0d00
	dc.w $0001,$06bd,$80ff,$0000,$0004,$0d00
	dc.w $0001,$06be,$80ff,$0000,$0004,$0d00
	dc.w $0001,$06bf,$80ff,$0000,$0004,$0d00
	dc.w $0001,$06c0,$80ff,$0000,$0004,$0d00
	dc.w $0001,$06c1,$80ff,$0000,$0004,$0d00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056070:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0560b2

	dc.w $8039,$0001
	dc.w $803e,$384c,$1000
	dc.w $803f,$1808,$0c09,$1808
	dc.w $8040,$0002,$0f04,$1000
	dc.w $8043,$0006
	dc.w $8041,$0e06,$0220
	dc.w $8048,$0550,$0002
	dc.w $8048,$00bc,$0000

	dc.w $8036
	dc.l loc_053e6c

loc_0560b2:
	dc.w $802c
	dc.w $0002,$054b,$008b,$7cff,$0004,$0000,$0000
	dc.w $8045,$000a
	dc.w $8007,$0010,$0000
	dc.w $8002,$188d

	dc.w $804c
	dc.l $00040000,$fff9e000,$ffffd000,$0000e000

	dc.w $8011,$001c,$0004,$e800,$0000
	dc.w $802a,$0050
	dc.w $0002,$054c,$008c,$7c00
	dc.w $0002,$054d,$008d,$7cff,$0000,$0010,$0000
	dc.w $0003,$054e,$008e,$78ff,$0000,$000c,$0000
	dc.w $8004,$18a3
	dc.w $0003,$054f,$008f,$78ff,$0000,$0018,$0000

	dc.w $800d
	dc.l loc_0561b8
	dc.w $ffff

	dc.w $8027,$ffe0,$0018
	dc.w $0003,$0550,$0090,$78ff,$0000,$001c,$0000
	dc.w $8044,$0002
	dc.w $8027,$ffe0,$0028
	dc.w $0002,$0551,$0091,$78ff,$0000,$0010,$0000
	dc.w $803c,$0004
	dc.w $8011,$001d,$0005,$f800,$e0f4,$ff00
	dc.w $8011,$001d,$0005,$1800,$30f4,$ff00
	dc.w $0002,$0552,$0092,$78ff,$0000,$0004,$0000
	dc.w $0004,$0667,$0093,$78ff,$0000,$0004,$0000
	dc.w $8028
	dc.w $8007,$0008,$0000
	dc.w $0006,$06a2,$0094,$7cff,$0008,$0000,$0000
	dc.w $8048,$0550,$0006
	dc.w $0006,$06a3,$0095,$7c00
	dc.w $8001

loc_0561b8:
	dc.w $0003,$06aa,$74ff,$000c,$004e,$0e00
	dc.w $0002,$06ab,$74ff,$fffc,$003c,$0e00
	dc.w $0002,$06ac,$74ff,$ffca,$002c,$0e00
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0561de:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_056220

	dc.w $8039,$0001
	dc.w $803e,$384c,$2400
	dc.w $803f,$1e08,$0c0c,$1e08
	dc.w $8040,$0002,$1504,$1000
	dc.w $8043,$0009
	dc.w $8041,$0e06,$0220
	dc.w $8048,$0550,$0002
	dc.w $8048,$00bc,$0000

	dc.w $8036
	dc.l loc_053e6c

loc_056220:
	dc.w $802c
	dc.w $0003,$054b,$008b,$7cff,$0004,$0000,$0000
	dc.w $8045,$000e
	dc.w $8007,$0010,$0000
	dc.w $8002,$188d
	dc.w $804b,$0004,$0000,$fff5,$5000,$0001,$2000
	dc.w $8011,$001c,$0004,$e800,$e000
	dc.w $802a,$0050
	dc.w $0004,$054c,$008c,$7c00
	dc.w $0004,$054d,$008d,$7cff,$0000,$0010,$0000
	dc.w $0004,$054e,$008e,$78ff,$0000,$000c,$0000
	dc.w $8004,$18a3
	dc.w $0003,$054f,$008f,$78ff,$0000,$0018,$0000

	dc.w $800d
	dc.l loc_056322
	dc.w $ffff

	dc.w $8027,$ffe0,$0018
	dc.w $0003,$0550,$0090,$78ff,$0000,$001c,$0000
	dc.w $8044,$0002
	dc.w $8027,$ffe0,$0028
	dc.w $0002,$0551,$0091,$78ff,$0000,$0010,$0000
	dc.w $803c,$0004
	dc.w $8011,$001d,$0005,$f800,$e0f4,$ff00
	dc.w $8011,$001d,$0005,$1800,$30f4,$ff00
	dc.w $0002,$0552,$0092,$78ff,$0000,$0004,$0000
	dc.w $0004,$0667,$0093,$78ff,$0000,$0004,$0000
	dc.w $8028
	dc.w $8007,$0008,$0000
	dc.w $0006,$06a2,$0094,$7cff,$0008,$0000,$0000
	dc.w $8048,$0550,$0006
	dc.w $0006,$06a3,$0095,$7c00
	dc.w $8001

loc_056322:
	dc.w $0003,$06aa,$74ff,$000c,$004e,$0e00
	dc.w $0002,$06ab,$74ff,$fffc,$003c,$0e00
	dc.w $0002,$06ac,$74ff,$ffca,$002c,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056348:
	dc.w $8037
	dc.l loc_0536b0
	dc.w $8038
	dc.l loc_056386

	dc.w $8039,$0c01
	dc.w $803e,$394c,$0f00
	dc.w $803f,$1a06,$040b,$1a08
	dc.w $8040,$0000,$0c06,$ff00
	dc.w $8041,$0e06,$0020
	dc.w $8048,$0550,$0005
	dc.w $8048,$00bc,$0000

	dc.w $8036
	dc.l loc_053e84

loc_056386:
	dc.w $8047,$00b6,$0000
	dc.w $802a,$0050
	dc.w $0002,$054c,$008c,$7c00
	dc.w $8045,$000e
	dc.w $0002,$054d,$008d,$7cff,$0000,$0010,$0000
	dc.w $0002,$054e,$008e,$78ff,$0000,$000c,$0000
	dc.w $8004,$18a3
	dc.w $0003,$054f,$008f,$78ff,$0000,$0018,$0000

	dc.w $800d
	dc.l loc_0564d4
	dc.w $ffff

	dc.w $8027,$ffe0,$0018
	dc.w $0003,$0550,$0090,$78ff,$0000,$001c,$0000
	dc.w $8044,$0002
	dc.w $8027,$ffe0,$0028
	dc.w $0002,$0551,$0091,$78ff,$0000,$0010,$0000
	dc.w $0002,$0552,$0096,$78ff,$0000,$0004,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $0002,$0552,$0096,$78ff,$0000,$0004,$0000
	dc.w $0003,$06a2,$0094,$7cff,$0008,$0000,$0000
	dc.w $0006,$0626,$0097,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056438:
	dc.w $803e,$384c,$10ff
	dc.w $8040,$0006,$0002,$1000
	dc.w $803c,$0004
	dc.w $8027,$ffe0,$0028
	dc.w $8011,$001d,$0005,$f800,$e0f4,$ff00
	dc.w $8011,$001d,$0005,$1800,$30f4,$ff00
	dc.w $0002,$0552,$0092,$78ff,$0000,$0004,$0000
	dc.w $0004,$0667,$0093,$78ff,$0000,$0004,$0000
	dc.w $8028
	dc.w $8007,$0008,$0000
	dc.w $0006,$06a2,$0094,$7cff,$0008,$0000,$0000
	dc.w $8048,$0550,$0006
	dc.w $0006,$06a3,$0095,$7c00
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0564aa:
	dc.w $8040,$0006,$0000,$0c00
	dc.w $803c,$0004
	dc.w $8028
	dc.w $8011,$001d,$0005,$1000,$f0f4,$ff00
	dc.w $8048,$0550,$000c
	dc.w $000c,$06a3,$0095,$7c00
	dc.w $8001

loc_0564d4:
	dc.w $0003,$06aa,$74ff,$000c,$004e,$0e00
	dc.w $0002,$06ab,$74ff,$fffc,$003c,$0e00
	dc.w $0002,$06ac,$74ff,$ffca,$002c,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0564fa:
	dc.w $8037
	dc.l loc_05343a
	dc.w $8038
	dc.l loc_05653e

	dc.w $8039,$0000
	dc.w $803e,$382c,$0f00
	dc.w $803f,$1004,$0c04,$0a08
	dc.w $8040,$0000,$05ff,$ff00
	dc.w $8041,$0601,$0426
	dc.w $8048,$0550,$0006
	dc.w $8048,$00bc,$0000
	dc.w $8047,$02b8,$0005

	dc.w $8036
	dc.l loc_053e6c

loc_05653e:
	dc.w $802c
	dc.w $0002,$0562,$0098,$7cff,$fff8,$0000,$0000
	dc.w $802a,$004c
	dc.w $0003,$0563,$0099,$7cff,$fff0,$0000,$0000
	dc.w $8045,$0010
	dc.w $8011,$001c,$0004,$f800,$f000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056570:
	dc.w $8027,$ffe8,$0030

	dc.w $800a
	dc.l loc_056644

	dc.w $8005,$187a
	dc.w $803e,$382c,$10ff
	dc.w $0003,$0564,$009a,$78ff,$fff0,$0000,$0000
	dc.w $803e,$382c,$0fff
	dc.w $0003,$0566,$009b,$78ff,$fff0,$0000,$0000
	dc.w $0003,$0650,$009c,$78ff,$fff0,$0000,$0000
	dc.w $803e,$382c,$10ff
	dc.w $0003,$0565,$009d,$78ff,$fff0,$0000,$0000
	dc.w $0003,$06c2,$009e,$78ff,$fff0,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0565da:
	dc.w $8027,$ffe8,$0028
	dc.w $8040,$0000,$0003,$1000

	dc.w $800a
	dc.l loc_056682

	dc.w $803e,$382c,$0fff
	dc.w $0003,$0651,$009f,$78ff,$fff0,$0000,$0000
	dc.w $8027,$ffe8,$0018
	dc.w $0004,$056c,$00a0,$78ff,$fff0,$0000,$0000
	dc.w $8028
	dc.w $0004,$05ec,$0031,$7cff,$0004,$0000,$0000
	dc.w $0004,$05eb,$002e,$7c00
	dc.w $8048,$0550,$0004
	dc.w $0004,$05ea,$002d,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056644:
	dc.w $0003,$0569,$74ff,$ffc8,$0050,$0000
	dc.w $0003,$056a,$74ff,$ffd0,$0060,$0000
	dc.w $0003,$056b,$74ff,$ffd8,$0068,$0000
	dc.w $0003,$0568,$74ff,$ffd0,$0030,$0000
	dc.w $0003,$0567,$74ff,$ffd8,$0018,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056682:
	dc.w $0003,$056b,$74ff,$ffd8,$0068,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056690:
	dc.w $8037
	dc.l loc_0534b6
	dc.w $8038
	dc.l loc_0566d4

	dc.w $8039,$0000
	dc.w $803e,$382c,$0f00
	dc.w $803f,$1004,$0c04,$0a08
	dc.w $8040,$0000,$09ff,$ff00
	dc.w $8041,$0601,$0426
	dc.w $8048,$0550,$0008
	dc.w $8048,$00bc,$0000
	dc.w $8047,$02b8,$0005

	dc.w $8036
	dc.l loc_053e6c

loc_0566d4:
	dc.w $802c
	dc.w $0005,$0562,$0098,$7cff,$fff8,$0000,$0000
	dc.w $802a,$0049
	dc.w $0004,$0563,$0099,$7cff,$fff0,$0000,$0000
	dc.w $8045,$0010
	dc.w $8011,$001c,$0004,$f800,$d000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056706:
	dc.w $8027,$ffe8,$0030

	dc.w $800a
	dc.l loc_0567da

	dc.w $8005,$187a
	dc.w $803e,$382c,$10ff
	dc.w $0001,$0564,$009a,$78ff,$fff0,$0000,$0000
	dc.w $803e,$382c,$0fff
	dc.w $0001,$0566,$009b,$78ff,$fff0,$0000,$0000
	dc.w $0001,$0650,$009c,$78ff,$fff0,$0000,$0000
	dc.w $803e,$382c,$10ff
	dc.w $0001,$0565,$009d,$78ff,$fff0,$0000,$0000
	dc.w $0001,$06c2,$009e,$78ff,$fff0,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056770:
	dc.w $8027,$ffe8,$0028
	dc.w $8040,$0000,$0001,$1200

	dc.w $800a
	dc.l loc_056818

	dc.w $803e,$382c,$0fff
	dc.w $0001,$0651,$009f,$78ff,$fff0,$0000,$0000
	dc.w $8027,$ffe8,$0018
	dc.w $0006,$056c,$00a0,$78ff,$fff0,$0000,$0000
	dc.w $8028
	dc.w $0004,$05ec,$0031,$7cff,$0004,$0000,$0000
	dc.w $0004,$05eb,$002e,$7c00,$8048,$0550,$0004
	dc.w $0004,$05ea,$002d,$7cff,$fffc,$0000,$0000
	dc.w $8001

loc_0567da:
	dc.w $0001,$0569,$74ff,$ffc8,$0050,$0000
	dc.w $0001,$056a,$74ff,$ffd0,$0060,$0000
	dc.w $0001,$056b,$74ff,$ffd8,$0068,$0000
	dc.w $0001,$0568,$74ff,$ffd0,$0030,$0000
	dc.w $0001,$0567,$74ff,$ffd8,$0018,$0000
	dc.w $8001

loc_056818:
	dc.w $0001,$056b,$74ff,$ffd8,$0068,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056826:
	dc.w $8037
	dc.l loc_053796
	dc.w $8038
	dc.l loc_05686e

	dc.w $8039,$0001
	dc.w $803e,$28e2,$2300
	dc.w $8046,$2000
	dc.w $803f,$0101,$0001,$0100
	dc.w $8040,$0000,$0cff,$ff00
	dc.w $8043,$000d
	dc.w $8041,$0407,$e022
	dc.w $8048,$0550,$0000
	dc.w $8048,$00bc,$0000
	dc.w $803b,$0000,$f010,$0000

loc_05686e:
	dc.w $8047,$02b8,$0001
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $8047,$00b9,$0000
	dc.w $802c
	dc.w $8027,$ffee,$0012
	dc.w $0002,$04f7,$0000,$7800
	dc.w $0002,$0628,$0000,$7800
	dc.w $0001,$055b,$0000,$78ff,$0000,$fff8,$0f00
	dc.w $0001,$055b,$0000,$78ff,$0000,$fff8,$0000
	dc.w $0001,$055b,$0000,$78ff,$0000,$fff8,$0f00
	dc.w $0001,$055b,$0000,$78ff,$0000,$fff8,$0000
	dc.w $802a,$0057
	dc.w $8047,$00b9,$ffff
	dc.w $8023
	dc.w $8027,$ffe6,$001a
	dc.w $0001,$055c,$0000,$78ff,$0008,$fff8,$0f00
	dc.w $0001,$055c,$0000,$78ff,$0008,$fff8,$0000
	dc.w $803b,$d8f0,$f010
	dc.w $0001,$055c,$0000,$78ff,$0008,$fff8,$0f00
	dc.w $0001,$055c,$0000,$78ff,$0008,$fff8,$0000
	dc.w $8028,$804e,$0004,$0000,$0000,$2000
	dc.w $8004,$1885

	dc.w $800a
	dc.l loc_056a34

	dc.w $8027,$ffde,$0022

loc_056942:
	dc.w $803e,$28e0,$2300
	dc.w $0001,$055e,$00a1,$78ff,$0000,$0000,$0f00
	dc.w $0001,$055e,$00a1,$7800
	dc.w $8047,$00b6,$ffff
	dc.w $803e,$28e0,$2300
	dc.w $0001,$055f,$00a1,$78ff,$0000,$0000,$0f00
	dc.w $0001,$055f,$00a1,$7800
	dc.w $8047,$00b6,$ffff
	dc.w $803e,$28e0,$2300
	dc.w $0001,$0560,$00a1,$78ff,$0000,$0000,$0f00
	dc.w $0001,$0560,$00a1,$7800
	dc.w $8047,$00b6,$ffff
	dc.w $803e,$28e0,$2300
	dc.w $0001,$0561,$00a1,$78ff,$0000,$0000,$0f00
	dc.w $0001,$0561,$00a1,$7800
	dc.w $8047,$00b6,$ffff
	dc.w $8000,$0000
	dc.l loc_056942

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0569d2:
	dc.w $803e,$28e4,$2b00
	dc.w $8046,$0000
	dc.w $803f,$2004,$000c,$2008
	dc.w $8040,$0000,$0004,$ff00
	dc.w $8019
	dc.w $8008,$0004,$0000,$0000,$0000
	dc.w $8027,$ffe6,$002a
	dc.w $8004,$189e
	dc.w $0004,$055d,$0057,$7800
	dc.w $8047,$00b7,$ffff
	dc.w $8027,$ffee,$0022
	dc.w $803c,$0008
	dc.w $0004,$055c,$0056,$7800
	dc.w $8028
	dc.w $0004,$055b,$0055,$7800
	dc.w $8000,$0000
	dc.l loc_0544fa

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056a34:
	dc.w $0002,$06b5,$74ff,$0000,$0000,$1000
	dc.w $0002,$06b6,$74ff,$0000,$0000,$1000
	dc.w $0002,$06b7,$74ff,$0000,$0000,$1000
	dc.w $0002,$06b8,$74ff,$0000,$0000,$1000
	dc.w $8000,$0000
	dc.l loc_056a34

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056a6c:
	dc.w $803d
	dc.w $8040,$0000,$0000,$0c00
	dc.w $803c,$0000
	dc.w $8003,$1870
	dc.w $0003,$062a,$0009,$7cff,$fffc,$0000,$0000
	dc.w $0007,$062f,$0004,$8000
	dc.w $0002,$0623,$0003,$80ff,$0002,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056aa4:
	dc.w $8037
	dc.l loc_053900
	dc.w $8038
	dc.l loc_056aea

	dc.w $8039,$0019
	dc.w $803e,$2882,$1d00
	dc.w $8046,$10f0
	dc.w $803f,$0801,$0004,$0800
	dc.w $8040,$0000,$0aff,$ff00
	dc.w $8043,$000a
	dc.w $8041,$0607,$0028
	dc.w $8048,$0550,$0000
	dc.w $8048,$00bc,$0000

	dc.w $8036
	dc.l loc_053e6c

loc_056aea:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $8047,$00b9,$0000
	dc.w $8008,$0003,$0000,$0000,$0000
	dc.w $802c
	dc.w $8004,$188a
	dc.w $8032,$000c,$0000,$1100
	dc.w $0002,$053a,$00a2,$78ff,$0008,$0000,$0000
	dc.w $802a,$0054
	dc.w $8047,$00b9,$ffff
	dc.w $8027,$ffe0,$0018
	dc.w $804e,$000b,$0000,$ffff,$8000
	dc.w $0004,$053b,$00a3,$78ff,$0008,$0000,$0000
	dc.w $8047,$02b8,$ffff
	dc.w $803e,$2884,$1d00
	dc.w $8046,$20f0
	dc.w $803f,$0801,$0004,$0800
	dc.w $8040,$0000,$04ff,$ff00
	dc.w $803b,$d000,$f410
	dc.w $8027,$fff0,$0020
	dc.w $8004,$18a3
	dc.w $0002,$05f0,$0040,$7800
	dc.w $0002,$04e7,$0041,$7800
	dc.w $8027,$fff0,$0028
	dc.w $0002,$05f1,$0042,$7800
	dc.w $803e,$2884,$1d00
	dc.w $8046,$24e0
	dc.w $803f,$0401,$0003,$0300
	dc.w $803b,$d000,$f414
	dc.w $8027,$fff0,$0020
	dc.w $0002,$05f2,$0043,$7800
	dc.w $8047,$00b6,$ffff
	dc.w $8007,$0020,$0000
	dc.w $804c,$0005,$0000,$fff6,$0000,$ffff,$a000,$0000,$a000
	dc.w $803b,$d0ec,$ef01
	dc.w $803e,$2880,$1d00
	dc.w $8046,$24d8
	dc.w $803f,$0301,$0003,$0300
	dc.w $8027,$ffee,$0012
	dc.w $0002,$0546,$0084,$7800
	dc.w $803e,$2880,$1d00
	dc.w $8046,$20e0
	dc.w $803f,$0201,$0001,$0200
	dc.w $0002,$0547,$0085,$7800
	dc.w $803e,$2880,$1d00
	dc.w $8046,$1ce4
	dc.w $0002,$0547,$0085,$7800
	dc.w $803e,$2880,$1d00
	dc.w $8046,$18e8
	dc.w $0002,$0547,$0085,$7800
	dc.w $803e,$2880,$1d00
	dc.w $8046,$14ec
	dc.w $0002,$0547,$0085,$7800
	dc.w $803e,$2880,$1d00
	dc.w $8046,$10f0
	dc.w $0002,$0547,$0085,$7800
	dc.w $803c,$0008
	dc.w $8047,$02b8,$0000
	dc.w $0004,$0548,$0080,$7800
	dc.w $804c,$0002,$8000,$fffc,$4000,$ffff,$c000,$0000,$5000
	dc.w $0002,$0607,$0068,$7800
	dc.w $8047,$0273,$0000
	dc.w $803e,$2886,$1d00
	dc.w $8046,$2800
	dc.w $803f,$0a03,$0008,$0a00
	dc.w $8027,$ffee,$0022
	dc.w $8004,$18a3
	dc.w $0002,$0608,$0069,$7800
	dc.w $8027,$fff6,$0022
	dc.w $0004,$0609,$006a,$7800
	dc.w $8027,$ffee,$001a
	dc.w $0004,$060a,$006b,$78ff,$0000,$0008,$0000
	dc.w $8028
	dc.w $8019
	dc.w $8023
	dc.w $0004,$0628,$000b,$7c00
	dc.w $0004,$04f8,$000c,$7c00
	dc.w $0004,$0629,$000d,$7c00
	dc.w $8047,$00b7,$ffff
	dc.w $804b,$0000,$0000,$0000,$cde2,$0000,$cde2
	dc.w $803e,$2884,$2700
	dc.w $8046,$0000
	dc.w $803f,$0e03,$000a,$0e08
	dc.w $8004,$18a3
	dc.w $0004,$05fc,$0063,$7800
	dc.w $802b,$1ca8
	dc.w $8027,$fff6,$0022
	dc.w $0002,$05fd,$0064,$78ff,$fff8,$0000,$0000
	dc.w $8027,$fffe,$0032
	dc.w $0002,$05fe,$0065,$78ff,$fff0,$0000,$0000
	dc.w $8027,$fff6,$001a
	dc.w $0006,$05ff,$0066,$78ff,$fff8,$0000,$0000
	dc.w $8028
	dc.w $8002,$00e9
	dc.w $0002,$0600,$0067,$8800
	dc.w $803c,$0000
	dc.w $8003,$1870
	dc.w $0003,$062a,$0009,$7cff,$fffc,$0000,$0000
	dc.w $0003,$062f,$0004,$8000
	dc.w $0002,$0623,$0003,$80ff,$0002,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056da8:
	dc.w $804b,$0000,$0000,$0000,$cde2,$0000,$cde2
	dc.w $0010,$04f9,$000e,$7c00
	dc.w $803c,$0000
	dc.w $8003,$1870
	dc.w $8011,$001d,$0005,$0800,$10f4,$ff00
	dc.w $0003,$062a,$0009,$7cff,$fffc,$0000,$0000
	dc.w $0003,$062f,$0004,$8000
	dc.w $0002,$0623,$0003,$80ff,$0002,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_056df8:
	dc.w $8037
	dc.l loc_053992
	dc.w $8038
	dc.l loc_056e3e

	dc.w $8039,$0019
	dc.w $803e,$29cd,$1e00
	dc.w $8046,$2010
	dc.w $803f,$1606,$0008,$0e06
	dc.w $8040,$0000,$17ff,$ff00
	dc.w $8043,$0012
	dc.w $8041,$0206,$0c23
	dc.w $8048,$0550,$0000
	dc.w $8048,$00bc,$0000

	dc.w $8036
	dc.l loc_053e6c

loc_056e3e:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b9,$0000
	dc.w $802c
	dc.w $0002,$062f,$0000,$7800
	dc.w $0002,$05f5,$0000,$7800
	dc.w $8047,$00b9,$ffff
	dc.w $0002,$0626,$0000,$7800
	dc.w $804b,$0003,$c000,$fff7,$b000,$0000,$e000
	dc.w $8011,$001c,$0004,$0000,$0000
	dc.w $8002,$186f
	dc.w $0004,$0601,$005c,$78ff,$fff8,$0000,$0000
	dc.w $8027,$fff8,$0010
	dc.w $0003,$063e,$0078,$78ff,$fff8,$0000,$0000
	dc.w $0007,$0614,$00af,$7800
	dc.w $802a,$0055
	dc.w $8027,$fff8,$0028
	dc.w $0003,$0615,$00b0,$7800
	dc.w $8027,$fff0,$0030
	dc.w $0003,$063f,$00a9,$7800
	dc.w $8028
	dc.w $8007,$0008,$0000
	dc.w $8011,$001d,$0005,$0000,$f0f4,$ff00
	dc.w $0002,$05f8,$0050,$78ff,$0008,$0000,$0000
	dc.w $8007,$0008,$0000
	dc.w $8047,$02b8,$0002
	dc.w $8040,$0000,$080c,$ff00
	dc.w $803e,$38ac,$2100
	dc.w $803f,$0401,$0001,$0200
	dc.w $8046,$1400
	dc.w $8041,$0607,$0426
	dc.w $0002,$05f5,$0032,$7800
	dc.w $0002,$0626,$0054,$7800
	dc.w $8007,$0010,$0000
	dc.w $8008,$0001,$0000,$0000,$0000
	dc.w $0002,$0562,$0098,$7cff,$fff8,$0000,$0000
	dc.w $0002,$0563,$0099,$7cff,$fff0,$0000,$0000

	dc.w $800a
	dc.l loc_057092

	dc.w $8005,$187a
	dc.w $0002,$0565,$009d,$78ff,$fff0,$0000,$0000
	dc.w $803e,$38ac,$2300
	dc.w $8046,$14f8
	dc.w $0002,$06c2,$009e,$78ff,$fff0,$0000,$0000
	dc.w $803e,$38ac,$2200
	dc.w $8046,$14f0
	dc.w $0002,$0564,$009a,$78ff,$fff0,$0000,$0000
	dc.w $803e,$38ac,$2200
	dc.w $8046,$10ec
	dc.w $0002,$0566,$009b,$78ff,$fff0,$0000,$0000
	dc.w $803e,$28cc,$1c00
	dc.w $8046,$2cd0
	dc.w $803f,$0602,$0004,$0600
	dc.w $8005,$187a
	dc.w $0002,$0651,$009f,$78ff,$fff0,$0000,$0000
	dc.w $8027,$ffe8,$0018
	dc.w $8023,$0004,$056c,$00a0,$78ff,$fff0,$0000,$0000
	dc.w $8047,$02b8,$0000
	dc.w $804a,$0003,$2000,$fff4,$6000
	dc.w $8011,$001d,$0005,$0000,$20e8,$ff00
	dc.w $0002,$05e3,$00ae,$78ff,$0000,$0008,$0000
	dc.w $803b,$0000,$f709
	dc.w $0005,$0632,$006f,$7800
	dc.w $0005,$0633,$0070,$7800
	dc.w $8047,$00b6,$ffff
	dc.w $0008,$0607,$0068,$7800
	dc.w $8047,$00b6,$0000
	dc.w $0006,$0629,$000d,$7c00
	dc.w $0006,$04f9,$000e,$7c00
	dc.w $803c,$0000
	dc.w $8003,$1870
	dc.w $8011,$001d,$0005,$0800,$10f4,$ff00
	dc.w $0003,$062a,$0009,$7cff,$fffc,$0000,$0000
	dc.w $0003,$062f,$0004,$8000
	dc.w $0002,$0623,$0003,$80ff
	dc.w $0002,$0000,$0000
	dc.w $8001

loc_057092:
	dc.w $0002,$0568,$74ff,$ffd0,$0030,$0000
	dc.w $0002,$0567,$74ff,$ffd8,$0018,$0000
	dc.w $0002,$0569,$74ff,$ffc8,$0050,$0000
	dc.w $0002,$056a,$74ff,$ffd0,$0060,$0000
	dc.w $0002,$056b,$74ff,$ffd8,$0068,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0570d0:
	dc.w $8037
	dc.l loc_053b94
	dc.w $8038
	dc.l loc_057110

	dc.w $803e,$2887,$2700
	dc.w $803f,$2806,$0014,$1908
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$00bc,$0000
	dc.w $8047,$024b,$ffff
	dc.w $8039,$0001,$0000

loc_057110:
	dc.w $8002,$18e7
	dc.w $8047,$00b6,$0000
	dc.w $801a,$0001,$0028
	dc.w $802a,$0056
	dc.w $803b,$d0ec,$f714
	dc.w $0008,$050e,$0000,$78ff,$0000,$0008,$0000
	dc.w $8004,$1886
	dc.w $803b,$d0ec,$f418
	dc.w $0006,$050f,$0000,$78ff,$0000,$0010,$0000
	dc.w $803b,$d0ec,$ec1c
	dc.w $0005,$0510,$0000,$78ff,$0008,$0010,$0000
	dc.w $803b,$d0ec,$e414
	dc.w $0004,$0511,$0000,$78ff,$0008,$0028,$0000
	dc.w $0004,$0512,$0000,$78ff,$ffe0,$0020,$0000
	dc.w $803b,$d0ec,$ec1c
	dc.w $0003,$0511,$0000,$78ff,$fff8,$0058,$0003
	dc.w $0003,$0510,$0000,$78ff,$0008,$0010,$0000
	dc.w $803b,$d0ec,$e414
	dc.w $0003,$0511,$0000,$78ff,$0008,$0028,$0000
	dc.w $0004,$0512,$0000,$78ff,$ffe0,$0020,$0000
	dc.w $8034
	dc.w $801d
	dc.w $8047,$00b6,$ffff
	dc.w $8008,$fffc,$e000,$fff7,$0000
	dc.w $8002,$00e9
	dc.w $803b,$0000,$f709
	dc.w $000a,$0616,$0000,$78ff,$fff8,$fff8,$0000
	dc.w $0006,$0617,$0000,$78ff,$fff8,$0000,$0000
	dc.w $803c,$0008
	dc.w $0006,$0629,$000d,$7c00
	dc.w $0006,$04f9,$000e,$7c00
	dc.w $8001

;**************************
;Throw Animations
;**************************

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05721a:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$00ce,$0000,$84ff,$fffc,$0010,$0000
	dc.w $0006,$013e,$0000,$84ff,$0014,$0008,$0000
	dc.w $0005,$013f,$0000,$84ff,$0010,$002c,$0000
	dc.w $0004,$0181,$0000,$84ff,$ffdc,$0010,$0000
	dc.w $0004,$017f,$0000,$84ff,$fff8,$0008,$0000
	dc.w $0003,$017d,$0000,$84ff,$0014,$fff8,$0000
	dc.w $0003,$013f,$0000,$84ff,$0010,$002c,$0000
	dc.w $0003,$0181,$0000,$84ff,$ffdc,$0010,$0000
	dc.w $0004,$017f,$0000,$84ff,$fff8,$0008,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $801e,$0000,$ffd0
	dc.w $8020
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0572b2:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$02a4,$0000,$84ff,$fffc,$0014,$0000
	dc.w $0006,$030e,$0000,$84ff,$0010,$0008,$0000
	dc.w $0005,$030f,$0000,$84ff,$000c,$0038,$0000
	dc.w $0004,$0311,$0000,$84ff,$fff0,$0008,$0000
	dc.w $0004,$0313,$0000,$84ff,$fff8,$0010,$0000
	dc.w $0003,$0315,$0000,$84ff,$0010,$fff8,$0000
	dc.w $0003,$030f,$0000,$84ff,$000c,$0038,$0000
	dc.w $0003,$0311,$0000,$84ff,$fff0,$0008,$0000
	dc.w $0004,$0313,$0000,$84ff,$fff8,$0010,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $801e,$0000,$ffd0
	dc.w $8020
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05734a:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0442,$0000,$84ff,$0000,$0000,$0000
	dc.w $0006,$0408,$0000,$84ff,$0008,$0004,$0000
	dc.w $0005,$0409,$0000,$84ff,$0024,$0020,$0000
	dc.w $0004,$040b,$0000,$84ff,$fff0,$0010,$0000
	dc.w $0004,$0409,$0000,$84ff,$ffe8,$0068,$0003
	dc.w $0003,$040b,$0000,$84ff,$0010,$0070,$0003
	dc.w $0003,$0409,$0000,$84ff,$0024,$0020,$0000
	dc.w $0003,$040b,$0000,$84ff,$fff0,$0010,$0000
	dc.w $0004,$0409,$0000,$84ff,$ffe8,$0068,$0003
	dc.w $801b,$0010,$0020,$0000
	dc.w $801e,$0000,$ffd0
	dc.w $8020
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0573e2:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$05c7,$0000,$84ff,$0008,$0018,$0000
	dc.w $0006,$0671,$0000,$84ff,$0018,$0018,$0000
	dc.w $0005,$0670,$0000,$84ff,$000c,$0024,$0000
	dc.w $0004,$06a0,$0000,$84ff,$ffe4,$001c,$0000
	dc.w $0004,$069e,$0000,$84ff,$fffc,$000c,$0000
	dc.w $0003,$069c,$0000,$84ff,$001c,$fffc,$0000
	dc.w $0003,$0670,$0000,$84ff,$000c,$0024,$0000
	dc.w $0003,$06a0,$0000,$84ff,$ffe4,$001c,$0000
	dc.w $0004,$069e,$0000,$84ff,$fffc,$000c,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $801e,$0000,$ffd0
	dc.w $8020
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05747a:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$07ba,$0000,$84ff,$0004,$0010,$0000
	dc.w $0006,$0860,$0000,$84ff,$0008,$008c,$0002
	dc.w $0005,$0858,$0000,$84ff,$000c,$001c,$0001
	dc.w $0004,$085e,$0000,$84ff,$ffec,$0008,$0001
	dc.w $0004,$0858,$0000,$84ff,$fffc,$006c,$0002
	dc.w $0003,$085e,$0000,$84ff,$0014,$0078,$0002
	dc.w $0003,$0858,$0000,$84ff,$000c,$001c,$0001
	dc.w $0003,$085e,$0000,$84ff,$ffec,$0008,$0001
	dc.w $0004,$0858,$0000,$84ff,$fffc,$006c,$0002
	dc.w $801b,$0010,$0020,$0000
	dc.w $801e,$0000,$ffd0
	dc.w $8020
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057512:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$09b1,$0000,$84ff,$0000,$0000,$0000
	dc.w $0006,$09ff,$0000,$84ff,$0028,$0010,$0000
	dc.w $0005,$09fe,$0000,$84ff,$0010,$0024,$0000
	dc.w $0004,$0a04,$0000,$84ff,$ffe4,$0010,$0000
	dc.w $0004,$0a02,$0000,$84ff,$fff8,$fffc,$0000
	dc.w $0003,$0a00,$0000,$84ff,$001c,$fff8,$0000
	dc.w $0003,$09fe,$0000,$84ff,$0010,$0024,$0000
	dc.w $0003,$0a04,$0000,$84ff,$ffe4,$0010,$0000
	dc.w $0004,$0a02,$0000,$84ff,$fff8,$fffc,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $801e,$0000,$ffd0
	dc.w $8020
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0575aa:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0b57,$0000,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0b93,$0000,$84ff,$0018,$0008,$0000
	dc.w $0005,$0b94,$0000,$84ff,$001c,$0018,$0000
	dc.w $0004,$0bd5,$0000,$84ff,$fff0,$0018,$0000
	dc.w $0004,$0bd3,$0000,$84ff,$fff0,$0008,$0000
	dc.w $0003,$0bd1,$0000,$84ff,$0010,$fff0,$0000
	dc.w $0003,$0b94,$0000,$84ff,$001c,$0018,$0000
	dc.w $0003,$0bd5,$0000,$84ff,$fff0,$0018,$0000
	dc.w $0004,$0bd3,$0000,$84ff,$fff0,$0008,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $801e,$0000,$ffd0
	dc.w $8020
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057642:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0d6d,$0000,$84ff,$0008,$0010,$0000
	dc.w $0006,$0daa,$0000,$84ff,$0010,$0018,$0000
	dc.w $0005,$0da9,$0000,$84ff,$000c,$0030,$0000
	dc.w $0004,$0daf,$0000,$84ff,$ffe8,$0008,$0000
	dc.w $0004,$0dad,$0000,$84ff,$0000,$0000,$0000
	dc.w $0003,$0dab,$0000,$84ff,$0018,$0000,$0000
	dc.w $0003,$0da9,$0000,$84ff,$000c,$0030,$0000
	dc.w $0003,$0daf,$0000,$84ff,$ffe8,$0008,$0000
	dc.w $0004,$0dad,$0000,$84ff,$0000,$0000,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $801e,$0000,$ffd0
	dc.w $8020
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0576da:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0f35,$0000,$84ff,$0008,$0010,$0000
	dc.w $0006,$0e5b,$0000,$84ff,$0018,$0028,$0000
	dc.w $0005,$0f28,$0000,$84ff,$0014,$0088,$0003
	dc.w $0004,$0f27,$0000,$84ff,$ffec,$008c,$0003
	dc.w $0004,$0f28,$0000,$84ff,$fff8,$0000,$0000
	dc.w $0003,$0f27,$0000,$84ff,$0014,$fff4,$0000
	dc.w $0003,$0f28,$0000,$84ff,$0014,$0088,$0003
	dc.w $0003,$0f27,$0000,$84ff,$ffec,$008c,$0003
	dc.w $0004,$0f28,$0000,$84ff,$fff8,$0000,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $801e,$0000,$ffd0
	dc.w $8020
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057772:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$1049,$0000,$84ff,$0004,$0010,$0000
	dc.w $0006,$10ba,$0000,$84ff,$0020,$0008,$0000
	dc.w $0005,$10b9,$0000,$84ff,$000a,$002c,$0000
	dc.w $0004,$10bf,$0000,$84ff,$ffe3,$0010,$0000
	dc.w $0004,$10bd,$0000,$84ff,$fff7,$0008,$0000
	dc.w $0003,$10bb,$0000,$84ff,$001d,$fff8,$0000
	dc.w $0003,$10b9,$0000,$84ff,$000b,$002c,$0000
	dc.w $0003,$10bf,$0000,$84ff,$ffe3,$0010,$0000
	dc.w $0004,$10bd,$0000,$84ff,$fffa,$0008,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $801e,$0000,$ffd0
	dc.w $8020
	dc.w $8001

;**************************
;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05780a:
	dc.w $8037
	dc.l loc_053a48
	dc.w $8038
	dc.l loc_05784a

	dc.w $8039,$0000
	dc.w $803e,$0807,$2f00
	dc.w $803f,$2008,$000a,$2808
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$00bc,$0000
	dc.w $8047,$024b,$ffff,$0000

loc_05784a:
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $8047,$00b6,$0000
	dc.w $801a,$0005,$0024
	dc.w $803b,$d000,$f41c
	dc.w $0006,$05e7,$0000,$7800
	dc.w $8047,$00b6,$ffff
	dc.w $0008,$0513,$0000,$78ff,$0008,$0000,$0001
	dc.w $8007,$fff0,$0000
	dc.w $8004,$1886
	dc.w $803b,$d000,$f020
	dc.w $000a,$0514,$0000,$78ff,$fff8,$0000,$0001
	dc.w $802b,$1caf
	dc.w $8007,$ffe0,$0000
	dc.w $803b,$d000,$e814
	dc.w $0003,$0515,$0000,$78ff,$ffe8,$0000,$0001
	dc.w $803b,$d000,$e008
	dc.w $0002,$0516,$0000,$78ff,$fff8,$0000,$0001
	dc.w $8026,$0010
	dc.w $8034
	dc.w $803b,$d000,$d008
	dc.w $000c,$0517,$0000,$78ff,$fff8,$0000,$0001
	dc.w $801d,$803c,$0004
	dc.w $0006,$063b,$0000,$78ff,$0010,$0000,$0001
	dc.w $0006,$0518,$0000,$78ff,$0000,$0000,$0001
	dc.w $8001

;**************************
;throws 2
;**************************

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05790c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$00cc,$0000,$84ff,$ffd0,$0008,$0000
	dc.w $0008,$00ce,$0000,$84ff,$ffd0,$0010,$0000
	dc.w $000a,$017e,$0000,$84ff,$ffe4,$0044,$0000
	dc.w $0003,$017f,$0000,$84ff,$0008,$0036,$0000
	dc.w $0002,$0180,$0000,$84ff,$0030,$0016,$0000
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff8,$0000
	dc.w $8020
	dc.w $000c,$00ce,$0000,$84ff,$001c,$0060,$0003
	dc.w $000a,$0143,$0000,$84ff,$0018,$0070,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057988:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$02a2,$0000,$84ff,$ffd8,$000c,$0000
	dc.w $0008,$02a4,$0000,$84ff,$ffd4,$0010,$0000
	dc.w $000a,$0314,$0000,$84ff,$ffe8,$0048,$0000
	dc.w $0003,$0313,$0000,$84ff,$0010,$0042,$0000
	dc.w $0002,$0312,$0000,$84ff,$003a,$000e,$0000
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff8,$0000
	dc.w $8020
	dc.w $000c,$02a4,$0000,$84ff,$0014,$0058,$0003
	dc.w $000a,$02fa,$0000,$84ff,$0018,$0068,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057a04:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0441,$0000,$84ff,$ffcc,$0000,$0000
	dc.w $0008,$0443,$0000,$84ff,$ffc8,$0002,$0000
	dc.w $000a,$040a,$0000,$84ff,$fff0,$00b4,$0003
	dc.w $0003,$0409,$0000,$84ff,$fffa,$0096,$0003
	dc.w $0002,$0408,$0000,$84ff,$003c,$0092,$0003
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff8,$0000
	dc.w $8020
	dc.w $000c,$0443,$0000,$84ff,$0020,$0070,$0003
	dc.w $000a,$0414,$0000,$84ff,$0020,$0070,$0003
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057a80:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$05c5,$0000,$84ff,$ffd8,$0010,$0000
	dc.w $0008,$05c6,$0000,$84ff,$ffd8,$0016,$0000
	dc.w $000a,$069d,$0000,$84ff,$fff2,$0054,$0000
	dc.w $0003,$069e,$0000,$84ff,$0014,$003c,$0000
	dc.w $0002,$069f,$0000,$84ff,$0032,$0016,$0000
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff8,$0000
	dc.w $8020
	dc.w $000c,$05c7,$0000,$84ff,$0018,$0048,$0003
	dc.w $000a,$0676,$0000,$84ff,$0018,$0058,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057afc:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0730,$0000,$84ff,$ffd4,$0008,$0000
	dc.w $0008,$0731,$0000,$84ff,$ffe0,$0016,$0000
	dc.w $000a,$085c,$0000,$84ff,$fff0,$00ac,$0002
	dc.w $0003,$0858,$0000,$84ff,$0010,$009c,$0002
	dc.w $0002,$0860,$0000,$84ff,$0040,$0008,$0001
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff8,$0000
	dc.w $8020
	dc.w $000c,$07ba,$0000,$84ff,$0010,$0058,$0003
	dc.w $000a,$0870,$0000,$84ff,$0018,$fff8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057b78:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$09af,$0000,$84ff,$ffd0,$0000,$0000
	dc.w $0008,$09b0,$0000,$84ff,$ffd0,$0004,$0000
	dc.w $000a,$0a01,$0000,$84ff,$0000,$0034,$0000
	dc.w $0003,$0a02,$0000,$84ff,$0010,$002c,$0000
	dc.w $0002,$0a03,$0000,$84ff,$0020,$fffa,$0000
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff8,$0000
	dc.w $8020
	dc.w $000c,$09b1,$0000,$84ff,$0018,$0068,$0003
	dc.w $000a,$0a06,$0000,$84ff,$0010,$0078,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057bf4:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0b55,$0000,$84ff,$ffd0,$0000,$0000
	dc.w $0008,$0b57,$0000,$84ff,$ffd0,$0008,$0000
	dc.w $000a,$0bd2,$0000,$84ff,$ffea,$0042,$0000
	dc.w $0003,$0bd3,$0000,$84ff,$0004,$0038,$0000
	dc.w $0002,$0bd4,$0000,$84ff,$0030,$0012,$0000
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff8,$0000
	dc.w $8020
	dc.w $000c,$0b57,$0000,$84ff,$0012,$006a,$0003
	dc.w $000a,$0b99,$0000,$84ff,$0018,$0078,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057c70:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0d6b,$0000,$84ff,$ffd0,$0004,$0000
	dc.w $0008,$0d6d,$0000,$84ff,$ffd8,$0010,$0000
	dc.w $000a,$0dac,$0000,$84ff,$fff6,$0046,$0000
	dc.w $0003,$0dad,$0000,$84ff,$0014,$0030,$0000
	dc.w $0002,$0dae,$0000,$84ff,$0038,$0002,$0000
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff8,$0000
	dc.w $8020
	dc.w $000c,$0d6d,$0000,$84ff,$0010,$0060,$0003
	dc.w $000a,$0dd6,$0000,$84ff,$0028,$0058,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057cec:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0f34,$0000,$84ff,$ffd4,$0000,$0000
	dc.w $0008,$0f36,$0000,$84ff,$ffdc,$0008,$0000
	dc.w $000a,$0e5c,$0000,$84ff,$fff0,$0094,$0003
	dc.w $0003,$0f28,$0000,$84ff,$0000,$0028,$0000
	dc.w $0002,$0e5b,$0000,$84ff,$0022,$0072,$0003
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff8,$0000
	dc.w $8020
	dc.w $000c,$0f35,$0000,$84ff,$0008,$0068,$0003
	dc.w $000a,$0e5d,$0000,$84ff,$0018,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057d68:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$104d,$0000,$84ff,$ffd6,$0010,$0000
	dc.w $0008,$104b,$0000,$84ff,$ffd6,$0019,$0000
	dc.w $000a,$10bc,$0000,$84ff,$fff3,$0046,$0000
	dc.w $0003,$10bd,$0000,$84ff,$0007,$001c,$0000
	dc.w $0002,$10be,$0000,$84ff,$0025,$0006,$0000
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff8,$0000
	dc.w $8020
	dc.w $000c,$1051,$0000,$84ff,$0011,$0056,$0003
	dc.w $000a,$1185,$0000,$84ff,$0015,$0052,$0003
	dc.w $8001

;**************************
;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057de4:
	dc.w $8037
	dc.l loc_053b18
	dc.w $8038
	dc.l loc_057e24

	dc.w $803e,$0807,$2700
	dc.w $803f,$1810,$080c,$2808
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$00bc,$0000
	dc.w $8047,$024b,$ffff
	dc.w $8039,$0001,$0000

loc_057e24:
	dc.w $8002,$18e7
	dc.w $8047,$00b6,$0000
	dc.w $801a,$0001,$0018
	dc.w $803b,$d0ec,$f714
	dc.w $0008,$050e,$0000,$78ff,$0000,$0008,$0000
	dc.w $8004,$1886
	dc.w $803b,$d0ec,$f418
	dc.w $0005,$050f,$0000,$78ff,$0000,$0010,$0000
	dc.w $803b,$d0ec,$ec1c
	dc.w $0004,$0510,$0000,$78ff,$0008,$0010,$0000
	dc.w $803b,$d0ec,$e414
	dc.w $0003,$0511,$0000,$78ff,$0008,$0028,$0000
	dc.w $802b,$1caf
	dc.w $0004,$0512,$0000,$78ff,$ffe0,$0020,$0000
	dc.w $801d
	dc.w $8047,$00b6,$ffff
	dc.w $8008,$fffc,$e000,$fff7,$0000
	dc.w $8004,$188a
	dc.w $803b,$0000,$f709
	dc.w $000a,$0616,$0000,$78ff,$fff8,$fff8,$0000
	dc.w $0006,$0617,$0000,$78ff,$fff8,$0000,$0000
	dc.w $803c,$0008
	dc.w $0006,$0629,$000d,$7c00
	dc.w $0006,$04f9,$000e,$7c00
	dc.w $8001

;**************************
;throws 3
;**************************
;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057ee8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$00ce,$0000,$84ff,$fffc,$0010,$0000
	dc.w $0005,$013e,$0000,$84ff,$0014,$0008,$0000
	dc.w $0004,$013f,$0000,$84ff,$0010,$002c,$0000
	dc.w $0003,$0181,$0000,$84ff,$ffdc,$0010,$0000
	dc.w $0004,$017f,$0000,$84ff,$fff8,$0008,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057f40:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$02a4,$0000,$84ff,$fffc,$0014,$0000
	dc.w $0005,$030e,$0000,$84ff,$0010,$0008,$0000
	dc.w $0004,$030f,$0000,$84ff,$000c,$0038,$0000
	dc.w $0003,$0311,$0000,$84ff,$fff0,$0008,$0000
	dc.w $0004,$0313,$0000,$84ff,$fff8,$0010,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057f98:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0442,$0000,$84ff,$0000,$0000,$0000
	dc.w $0005,$0408,$0000,$84ff,$0008,$0004,$0000
	dc.w $0004,$0409,$0000,$84ff,$0024,$0020,$0000
	dc.w $0003,$040b,$0000,$84ff,$fff0,$0010,$0000
	dc.w $0004,$0409,$0000,$84ff,$ffe8,$0068,$0003
	dc.w $801b,$0010,$0020,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_057ff0:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$05c7,$0000,$84ff,$0008,$0018,$0000
	dc.w $0005,$0671,$0000,$84ff,$0018,$0018,$0000
	dc.w $0004,$0670,$0000,$84ff,$000c,$0024,$0000
	dc.w $0003,$06a0,$0000,$84ff,$ffe4,$001c,$0000
	dc.w $0004,$069e,$0000,$84ff,$fffc,$000c,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_058048:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$07ba,$0000,$84ff,$0004,$0010,$0000
	dc.w $0005,$0860,$0000,$84ff,$0008,$008c,$0002
	dc.w $0004,$0858,$0000,$84ff,$000c,$001c,$0001
	dc.w $0003,$085e,$0000,$84ff,$ffec,$0008,$0001
	dc.w $0004,$0858,$0000,$84ff,$fffc,$006c,$0002
	dc.w $801b,$0010,$0020,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0580a0:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$09b1,$0000,$84ff,$0000,$0000,$0000
	dc.w $0005,$09ff,$0000,$84ff,$0028,$0010,$0000
	dc.w $0004,$09fe,$0000,$84ff,$0010,$0024,$0000
	dc.w $0003,$0a04,$0000,$84ff,$ffe4,$0010,$0000
	dc.w $0004,$0a02,$0000,$84ff,$fff8,$fffc,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0580f8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0b57,$0000,$84ff,$fff8,$0000,$0000
	dc.w $0005,$0b93,$0000,$84ff,$0018,$0008,$0000
	dc.w $0004,$0b94,$0000,$84ff,$001c,$0018,$0000
	dc.w $0003,$0bd5,$0000,$84ff,$fff0,$0018,$0000
	dc.w $0004,$0bd3,$0000,$84ff,$fff0,$0008,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_058150:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0d6d,$0000,$84ff,$0008,$0010,$0000
	dc.w $0005,$0daa,$0000,$84ff,$0010,$0018,$0000
	dc.w $0004,$0da9,$0000,$84ff,$000c,$0030,$0000
	dc.w $0003,$0daf,$0000,$84ff,$ffe8,$0008,$0000
	dc.w $0004,$0dad,$0000,$84ff,$0000,$0000,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0581a8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0f35,$0000,$84ff,$0008,$0010,$0000
	dc.w $0005,$0e5b,$0000,$84ff,$0018,$0028,$0000
	dc.w $0004,$0f28,$0000,$84ff,$0014,$0088,$0003
	dc.w $0003,$0f27,$0000,$84ff,$ffec,$008c,$0003
	dc.w $0004,$0f28,$0000,$84ff,$fff8,$0000,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_058200:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$1049,$0000,$84ff,$0006,$001b,$0000
	dc.w $0005,$10ba,$0000,$84ff,$0022,$001b,$0000
	dc.w $0004,$10b9,$0000,$84ff,$000c,$0035,$0000
	dc.w $0003,$10bf,$0000,$84ff,$ffe3,$001b,$0000
	dc.w $0004,$10bd,$0000,$84ff,$fff9,$ffee,$0000
	dc.w $801b,$0010,$0020,$0000
	dc.w $8001

;**************************
;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_058258:
	dc.w $8037
	dc.l loc_0532a0
	dc.w $8038
	dc.l loc_058286

	dc.w $8039,$0018
	dc.w $803a,$0004
	dc.w $803d
	dc.w $8045,$0002
	dc.w $8048,$0550,$0004
	dc.w $8048,$00bc,$0014
	dc.w $803b,$d800,$f408,$0000

loc_058286:
	dc.w $8023
	dc.w $8002,$188a
	dc.w $8011,$001c,$0004,$e800,$0000
	dc.w $0004,$053a,$00a2,$80ff,$0008,$0000,$0000
	dc.w $8027,$ffe0,$0018
	dc.w $8011,$001d,$0005,$e000,$f0f4,$ff00
	dc.w $0004,$053b,$00a3,$80ff,$0008,$0000,$0000
	dc.w $8011,$001d,$0005,$1000,$f0f4,$ff00
	dc.w $0008,$053b,$00a3,$80ff,$0008,$0000,$0000
	dc.w $803a,$0000
	dc.w $803c,$0000
	dc.w $8028
	dc.w $0004,$061b,$00a4,$80ff,$0000,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0582f8:
	dc.w $8037
	dc.l loc_053312
	dc.w $8038
	dc.l loc_058328

	dc.w $803a,$00ff
	dc.w $8039,$0014
	dc.w $803d
	dc.w $8045,$0002
	dc.w $8048,$0550,$0004
	dc.w $8048,$00bc,$0000
	dc.w $8043,$0008

	dc.w $8036
	dc.l loc_053e6c

loc_058328:
	dc.w $8008,$fff9,$0000,$0000,$0000
	dc.w $8002,$188a
	dc.w $8011,$001c,$0004,$1800,$0400
	dc.w $0004,$04f6,$00a4,$84ff,$fff8,$0000,$0000
	dc.w $804e,$fff9,$0000,$0000,$7000
	dc.w $8027,$ffe0,$0018
	dc.w $8011,$001d,$0005,$0000,$f0f4,$ff00
	dc.w $000a,$061d,$00a5,$80ff,$0000,$fff8,$0000
	dc.w $8028
	dc.w $8011,$001d,$0005,$e800,$e0f4,$ff00
	dc.w $0006,$061e,$0075,$8000
	dc.w $803a,$0004
	dc.w $8039,$0000
	dc.w $0004,$05ea,$002d,$80ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0583a6:
	dc.w $8037
	dc.l loc_028fca

	dc.w $803d

	dc.w $8038
	dc.l loc_0583c4

	dc.w $8045,$0002
	dc.w $8048,$0552,$00b4

	dc.w $8036
	dc.l loc_053e6c

loc_0583c4:
	dc.w $8040,$0003,$1004,$1800
	dc.w $802c
	dc.w $8017,$0060,$0005,$8438
	dc.w $0004,$056d,$00a6,$7c00
	dc.w $0004,$06d3,$00a6,$7cff,$0008,$0001,$0000
	dc.w $0008,$06d4,$00a7,$7cff,$0008,$0001,$0000

	dc.w $8017,$0040
	dc.l loc_05840e

	dc.w $802a,$0060
	dc.w $8000,$0000
	dc.l loc_05841a

loc_05840e:
	dc.w $802b,$1cba
	dc.w $8000,$0000
	dc.l loc_05841a

loc_05841a:
	dc.w $0004,$06d5,$00a8,$7cff,$0008,$0001,$0000
	dc.w $0018,$06d6,$00a8,$7cff,$0008,$0001,$0000
	dc.w $8001

;**************************
loc_058438:
	dc.w $8040,$0003,$1004,$1e00
	dc.w $0004,$06cc,$00aa,$80ff,$fff8,$0000,$0000
	dc.w $000c,$06cd,$00ab,$80ff,$fff6,$0000,$0000
	dc.w $802a,$005d
	dc.w $0004,$06ce,$00ac,$80ff,$0004,$0000,$0000
	dc.w $0006,$06cf,$00ad,$80ff,$0004,$0000,$0000
	dc.w $0010,$06d0,$00ad,$80ff,$0004,$0000,$0000
	dc.w $0004,$06d1,$0001,$80ff,$0004,$0000,$0000
	dc.w $0004,$06d2,$0001,$80ff,$0004,$0000,$0000
	dc.w $8001

;end at 0584a8