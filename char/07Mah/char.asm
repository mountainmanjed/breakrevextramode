;~~~~~~~~~~~~~~~~~~~~~~~~~~
;Maherl Program File
;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_074210:
	move.w #$f0,($344,a4)
	move.w #$28,($346,a4)
	move.w #7,($348,a4)
	move.w #$c,($34a,a4)
	move.w #$c8,($34c,a4)
	move.w #$5c,($34e,a4)
	move.w #$84,($350,a4)
	rts

;--------------------------
;Ai Start
loc_07423c:
	tst.b ($4d4,a4)
	beq.w loc_074266
	move.b ($35c,a4),d0
	andi.w #$fffc,d0
	bne.w loc_074266
	cmpi.b #6,($360,a4)
	bne.w loc_074266
	sf ($4d4,a4)
	move.l #loc_07457c,($56,a4)

loc_074266:
	rts

;--------------------------
loc_074268:
	movea.l #loc_0757f4,a0
	bsr.w loc_0742be
	bra.w loc_07437a

;--------------------------
loc_074276:
	bclr #7,($35c,a4)
	bne.w loc_074286
	jmp loc_02e5c6

;--------------------------
loc_074286:
	movea.l #loc_0756d8,a0
	bsr.w loc_0742be
	bra.w loc_07437a

;--------------------------
loc_074294:
	move.l (a7)+,($4d8,a4)
	jmp (a0)

;--------------------------
loc_07429a:
	move.l ($4d8,a4),d0
	beq.w loc_0757f4
	clr.l ($4d8,a4)
	movea.l d0,a0
	clr.b d0
	jmp (a0)

;--------------------------
loc_0742ac:
	move.l ($4d8,a4),d0
	beq.b loc_074276
	clr.l ($4d8,a4)
	movea.l d0,a0
	move.b #-1,d0
	jmp (a0)

;--------------------------
loc_0742be:
	move.l (a7)+,($4dc,a4)
	jmp (a0)

;--------------------------
loc_0742c4:
	move.l ($4dc,a4),d0
	beq.w loc_07437a
	clr.l ($4dc,a4)
	movea.l d0,a0
	jmp (a0)

;=-=-=-=-=-=-=-=-=-=-=-=-=-
loc_0742d4:
	st ($4d4,a4)
	cmpi.w #$a0,($378,a4)
	bgt.w loc_07433c
	cmpi.w #$3c,($378,a4)
	bgt.w loc_074318
	cmpi.w #$1e,($378,a4)
	bgt.w loc_0742fa
	bra.w loc_07436e

loc_0742fa:
	jsr RandomNumberGod
	lea loc_07430a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07430a:
	dc.w $0002

	dc.w $001e
	dc.l loc_07435a

	dc.w $001e
	dc.l loc_07436e

;--------------------------
loc_074318:
	jsr RandomNumberGod
	lea loc_074328(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_074328:
	dc.w $0003

	dc.w $003c
	dc.l loc_074364

	dc.w $001e
	dc.l loc_07436e

	dc.w $001e
	dc.l loc_07435a

;--------------------------
loc_07433c:
	jsr RandomNumberGod
	lea loc_07434c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07434c:
	dc.w $0002

	dc.w $005a
	dc.l loc_074364

	dc.w $001e
	dc.l loc_07435a

;--------------------------
loc_07435a:
	movea.l #loc_0756d8,a0
	bra.w loc_074374

loc_074364:
	movea.l #loc_075786,a0
	bra.w loc_074374

loc_07436e:
	movea.l #loc_0757f4,a0

loc_074374:
	movea.l a0,a0
	bsr.w loc_0742be

loc_07437a:
	clr.l ($4d8,a4)
	clr.l ($4dc,a4)
	clr.l ($4e0,a4)
	tst.b ($35d,a4)
	beq.w loc_074396
	jsr loc_0226b4
	bra.b loc_07437a

loc_074396:
	st ($35d,a4)
	cmpi.b #6,($360,a4)
	beq.w loc_07457c
	tst.b ($247,a4)
	beq.w loc_07456e
	cmpi.w #$a0,($378,a4)
	bgt.w loc_07452c
	cmpi.w #$3c,($378,a4)
	bgt.w loc_0744ae
	cmpi.w #$1e,($378,a4)
	bgt.w loc_074436
	jsr RandomNumberGod
	lea loc_0743da(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0743da:
	dc.w $000f

	dc.w $000a
	dc.l loc_07595c

	dc.w $0004
	dc.l loc_0757f4

	dc.w $0004
	dc.l loc_075940

	dc.w $0032
	dc.l loc_076618

	dc.w $0019
	dc.l loc_076968

	dc.w $0019
	dc.l loc_076084

	dc.w $0019
	dc.l loc_07669c

	dc.w $0014
	dc.l loc_076824

	dc.w $0014
	dc.l loc_076a00

	dc.w $0019
	dc.l loc_076ac4

	dc.w $000a
	dc.l loc_076190

	dc.w $000a
	dc.l loc_076260

	dc.w $000a
	dc.l loc_0761f8

	dc.w $000a
	dc.l loc_0764a8

	dc.w $001e
	dc.l loc_075dac

;--------------------------
loc_074436:
	jsr RandomNumberGod
	lea loc_074446(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_074446
	dc.w $0011

	dc.w $0014
	dc.l loc_07595c

	dc.w $0005
	dc.l loc_0757f4

	dc.w $0005
	dc.l loc_075940

	dc.w $0014
	dc.l loc_07586a

	dc.w $0032
	dc.l loc_076618

	dc.w $0019
	dc.l loc_076968

	dc.w $0014
	dc.l loc_076084

	dc.w $0014
	dc.l loc_07669c

	dc.w $0014
	dc.l loc_076a00

	dc.w $000f
	dc.l loc_076be4

	dc.w $0014
	dc.l loc_0762f0

	dc.w $0028
	dc.l loc_075ec4

	dc.w $000a
	dc.l loc_0764a8

	dc.w $000f
	dc.l loc_076190

	dc.w $000f
	dc.l loc_0761f8

	dc.w $000a
	dc.l loc_076260

	dc.w $000a
	dc.l loc_075dac

;--------------------------
loc_0744ae:
	jsr RandomNumberGod
	lea loc_0744be(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0744be:
	dc.w $0012

	dc.w $001e
	dc.l loc_075786

	dc.w $000a
	dc.l loc_075924

	dc.w $000a
	dc.l loc_0757f4

	dc.w $000a
	dc.l loc_07595c

	dc.w $0014
	dc.l loc_07586a

	dc.w $000a
	dc.l loc_0756d8

	dc.w $0032
	dc.l loc_076618

	dc.w $0014
	dc.l loc_0762f0

	dc.w $0014
	dc.l loc_0764a8

	dc.w $0014
	dc.l loc_076260

	dc.w $0014
	dc.l loc_076190

	dc.w $0014
	dc.l loc_0761f8

	dc.w $0014
	dc.l loc_076084

	dc.w $0014
	dc.l loc_07669c

	dc.w $0014
	dc.l loc_076a00

	dc.w $0014
	dc.l loc_076be4

	dc.w $001e
	dc.l loc_076d4e

	dc.w $000a
	dc.l loc_075ec4

;--------------------------
loc_07452c:
	jsr RandomNumberGod
	lea loc_07453c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07453c:
	dc.w $0008

	dc.w $0028
	dc.l loc_075786

	dc.w $000a
	dc.l loc_07586a

	dc.w $0014
	dc.l loc_0762f0

	dc.w $001e
	dc.l loc_076d4e

	dc.w $000a
	dc.l loc_075ec4

	dc.w $0032
	dc.l loc_076618

	dc.w $000a
	dc.l loc_0761f8

	dc.w $000a
	dc.l loc_076260

;--------------------------
loc_07456e:
	movea.l #loc_075a56,a0
	bsr.w loc_074294
	bra.w loc_07437a

;--------------------------
loc_07457c:
	clr.b ($2f6,a4)
	move.l #$100010,d0
	jsr loc_02e420
	cmpi.w #$78,($378,a4)
	blt.w loc_074596

loc_074596:
	jsr RandomNumberGod
	lea loc_0745a6(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0745a6:
	dc.w $0003

	dc.w $0050
	dc.l loc_0745de

	dc.w $000a
	dc.l loc_0745fa

	dc.w $000a
	dc.l loc_074608

;--------------------------
loc_0745ba:
	jsr RandomNumberGod
	lea loc_0745ca(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0745ca:
	dc.w $0003

	dc.w $0050
	dc.l loc_0745ec

	dc.w $0014
	dc.l loc_074608

	dc.w $000a
	dc.l loc_0745fa

;--------------------------
loc_0745de:
	movea.l #loc_075940,a0
	bsr.w loc_0742be
	bra.w loc_07437a

loc_0745ec:
	movea.l #loc_075924,a0
	bsr.w loc_0742be
	bra.w loc_07437a

loc_0745fa:
	movea.l #loc_07586a,a0
	bsr.w loc_0742be
	bra.w loc_07437a

loc_074608:
	movea.l #loc_07595c,a0
	bsr.w loc_0742be
	bra.w loc_07437a

;=-=-=-=-=-=-=-=-=-=-=-=-=-
loc_074616:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_07462a(pc,d0.w),d0
	jmp loc_07462a(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07462a:
	dc.w loc_07464a-loc_07462a
	dc.w loc_07464a-loc_07462a
	dc.w loc_07464a-loc_07462a
	dc.w loc_07464a-loc_07462a

	dc.w loc_07464e-loc_07462a
	dc.w loc_074660-loc_07462a
	dc.w loc_074672-loc_07462a
	dc.w loc_074684-loc_07462a

	dc.w loc_074696-loc_07462a
	dc.w loc_0746a8-loc_07462a
	dc.w loc_0746ba-loc_07462a
	dc.w loc_0746cc-loc_07462a

	dc.w loc_0746de-loc_07462a
	dc.w loc_0746de-loc_07462a
	dc.w loc_0746de-loc_07462a
	dc.w loc_0746de-loc_07462a

;--------------------------
loc_07464a:
	bra.w loc_0746e2

loc_07464e:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_0746e2
	bra.w loc_0746e2

loc_074660:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0746e2
	bra.w loc_0746f0

loc_074672:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_0746e2
	bra.w loc_0746f0

loc_074684:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0746e2
	bra.w loc_0746f0

loc_074696:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_0746e2
	bra.w loc_0746f0

loc_0746a8:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0746e2
	bra.w loc_0746f0

loc_0746ba:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_0746e2
	bra.w loc_0746f0

loc_0746cc:
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_0746e2
	bra.w loc_0746f0

loc_0746de:
	bra.w loc_0746f0

;--------------------------
loc_0746e2:
	movea.l #loc_07595c,a0

loc_0746e8:
	bsr.w loc_0742be
	bra.w loc_07437a

loc_0746f0:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	scs ($4d3,a4)

loc_0746fe:
	tst.b ($365,a4)
	bne.w loc_074a54
	clr.b ($2f6,a4)
	tst.b ($4d3,a4)
	bpl.w loc_074738
	cmpi.b #3,($360,a4)
	beq.w loc_074738
	cmpi.b #4,($360,a4)
	beq.w loc_074738
	tst.b ($367,a4)
	beq.w loc_07473c
	cmpi.b #1,($360,a4)
	beq.w loc_07473c

loc_074738:
	bra.w loc_07477a

loc_07473c:
	cmpi.w #$40,($340,a4)
	blt.w loc_07477a
	cmpi.w #$82,($378,a4)
	bgt.w loc_07477a
	cmpi.w #$28,($378,a4)
	blt.w loc_07477a
	cmpi.w #-$82,($37a,a4)
	bgt.w loc_07477a
	tst.b ($24a,a4)
	bne.w loc_07477a
	movea.l #loc_07586a,a0
	bsr.w loc_0742be
	bra.w loc_074a4e

loc_07477a:
	cmpi.b #3,($376,a4)
	beq.w loc_0747c6
	cmpi.b #3,($360,a4)
	beq.w loc_0747b8
	cmpi.b #4,($360,a4)
	beq.w loc_0747b8
	tst.b ($367,a4)
	beq.w loc_0747b8
	cmpi.b #1,($360,a4)
	beq.w loc_0747c6
	cmpi.b #2,($360,a4)
	beq.w loc_0747c6
	bra.w loc_074a38

loc_0747b8:
	jsr RandomNumberGod
	cmpi.w #$f800,d0
	bcs.w loc_074a38

loc_0747c6:
	btst #7,($35c,a4)
	bne.w loc_074848
	cmpi.w #$30,($36c,a4)
	bgt.w loc_074848
	cmpi.w #-$28,($37a,a4)
	blt.w loc_074848
	move.b #2,($2f6,a4)
	bsr.w loc_077d28
	bne.w loc_074a4e
	btst #7,($35c,a4)
	bne.w loc_074848
	cmpi.w #$30,($36c,a4)
	bgt.w loc_074848
	cmpi.w #-$5a,($37a,a4)
	blt.w loc_074848
	bsr.w loc_077d28
	bne.w loc_074a4e
	jsr loc_02e26e
	beq.w loc_074a4e
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_074a4e
	st ($3cb,a4)
	bsr.w loc_077ba4
	jsr loc_02e308
	bra.w loc_074a4e

loc_074848:
	btst #7,($35c,a4)
	bne.w loc_074872
	cmpi.w #$4c,($378,a4)
	bgt.w loc_074872
	cmpi.w #-$1e,($37a,a4)
	blt.w loc_074872
	clr.b ($2f6,a4)
	bsr.w loc_077e62
	bne.w loc_074a4e

loc_074872:
	btst #7,($35c,a4)
	bne.w loc_0748a6
	cmpi.w #$4c,($378,a4)
	bgt.w loc_0748a6
	cmpi.w #-$3c,($37a,a4)
	blt.w loc_0748a6
	clr.b ($2f6,a4)
	jsr loc_02c78a
	beq.w loc_0748a6
	bsr.w loc_077a42
	bne.w loc_074a4e

loc_0748a6:
	btst #7,($35c,a4)
	bne.w loc_07490a
	cmpi.w #$4c,($378,a4)
	bgt.w loc_07490a
	cmpi.w #-$5a,($37a,a4)
	blt.w loc_07490a
	clr.b ($2f6,a4)
	bsr.w loc_077db6
	bne.w loc_074a4e
	jsr loc_02e26e
	beq.w loc_074a4e
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_074a4e
	cmpi.w #$40,($340,a4)
	blt.w loc_074a4e
	st ($3cb,a4)
	bsr.w loc_077ba4
	jsr loc_02e308
	bra.w loc_074a4e

loc_07490a:
	cmpi.w #$40,($340,a4)
	blt.w loc_07493e
	btst #7,($35c,a4)
	bne.w loc_07493e
	cmpi.w #$4c,($378,a4)
	bgt.w loc_07493e
	cmpi.w #-$6e,($37a,a4)
	blt.w loc_07493e
	sf ($3cb,a4)
	bsr.w loc_077b58
	bne.w loc_074a4e

loc_07493e:
	btst #7,($35c,a4)
	bne.w loc_07496e
	cmpi.w #$4c,($378,a4)
	bgt.w loc_07496e
	cmpi.w #-$78,($37a,a4)
	blt.w loc_07496e
	movea.l #loc_075a32,a0
	bsr.w loc_0742be
	bsr.w loc_077d28
	bne.w loc_074a4e

loc_07496e:
	btst #7,($35c,a4)
	bne.w loc_07499a
	cmpi.w #$64,($378,a4)
	bgt.w loc_07499a
	cmpi.w #-$a,($37a,a4)
	blt.w loc_07499a
	move.b #2,($2f6,a4)
	bsr.w loc_077cae
	bne.w loc_074a4e

loc_07499a:
	btst #7,($35c,a4)
	bne.w loc_0749fe
	cmpi.w #$64,($378,a4)
	bgt.w loc_0749fe
	cmpi.w #-$3c,($37a,a4)
	blt.w loc_0749fe
	clr.b ($2f6,a4)
	bsr.w loc_077d28
	bne.w loc_074a4e
	jsr loc_02e26e
	beq.w loc_074a4e
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_074a4e
	cmpi.w #$40,($340,a4)
	blt.w loc_074a4e
	st ($3cb,a4)
	bsr.w loc_077c00
	jsr loc_02e308
	bra.w loc_074a4e

loc_0749fe:
	cmpi.w #$40,($340,a4)
	blt.w loc_074a38
	btst #7,($35c,a4)
	beq.w loc_074a38
	cmpi.w #$3c,($378,a4)
	bgt.w loc_074a38
	cmpi.w #-$28,($37a,a4)
	blt.w loc_074a38
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077c00
	bne.w loc_074a4e

loc_074a38:
	jsr loc_02e456
	jsr loc_0226b4
	jsr loc_02e370
	bra.w loc_0746fe

loc_074a4e:
	jsr loc_02e308

loc_074a54:
	clr.b ($2f6,a4)
	bclr #2,($35c,a4)
	bra.w loc_07437a

;=-=-=-=-=-=-=-=-=-=-=-=-=-
loc_074a62:
	cmpi.w #$a0,($340,a4)
	bge.w loc_074a80
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($358,a4),d0
	bcs.w loc_074a80
	bra.w loc_074b4c

loc_074a80:
	move.w #$d,($4d6,a4)

loc_074a86:
	cmpi.b #1,($36a,a4)
	bne.w loc_074a9a
	btst #0,($362,a4)
	bne.w loc_0746f0

loc_074a9a:
	tst.b ($367,a4)
	beq.w loc_074b3c
	cmpi.b #3,($36a,a4)
	beq.w loc_074b30
	cmpi.b #6,($36a,a4)
	beq.w loc_074af4
	cmpi.b #5,($360,a4)
	beq.w loc_074ade
	cmpi.b #1,($36a,a4)
	bne.w loc_074ad4
	cmpi.w #$24,($374,a4)
	bgt.w loc_074b30

loc_074ad4:
	cmpi.b #1,($360,a4)
	beq.w loc_074b0e

loc_074ade:
	jsr loc_02e456
	jsr loc_0226b4
	subq.w #1,($4d6,a4)
	bge.b loc_074a86
	bra.w loc_074b3c

loc_074af4:
	cmpi.b #4,($376,a4)
	beq.b loc_074ade
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_074b4c
	bra.w loc_07595c

loc_074b0e:
	cmpi.b #4,($36a,a4)
	beq.w loc_074b30
	cmpi.w #$80,($358,a4)
	blt.w loc_074b3c
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_074b3c

loc_074b30:
	btst #3,($24a,a4)
	bne.b loc_074ade
	bra.w loc_074b5e

loc_074b3c:
	btst #7,($35c,a4)
	bne.w loc_074b5a
	jsr loc_02e456

loc_074b4c:
	jsr loc_0226b4
	moveq #3,d0
	jsr loc_02e39c

loc_074b5a:
	bra.w loc_07437a

loc_074b5e:
	tst.b ($247,a4)
	beq.w loc_075a56

loc_074b66:
	btst #1,($246,a4)
	bne.w loc_074b78
	jsr loc_0226b4
	bra.b loc_074b66

loc_074b78:
	btst #3,($24a,a4)
	bne.w loc_075118
	cmpi.b #5,($36a,a4)
	beq.w loc_075118
	cmpi.b #5,($360,a4)
	beq.w loc_075118
	tst.b ($365,a4)
	beq.w loc_0746f0
	cmpi.b #1,($360,a4)
	beq.w loc_074bd4
	cmpi.b #2,($360,a4)
	bne.w loc_074bca
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_07510a
	sf d3
	move.w ($378,a4),d2
	bra.w loc_074be0

loc_074bca:
	st d3
	move.w ($374,a4),d2
	bra.w loc_074be0

loc_074bd4:
	sf d3
	move.w ($374,a4),d2
	add.w ($378,a4),d2
	asr.w #1,d2

loc_074be0:
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_074bf4
	bra.w loc_074dac

loc_074bf4:
	btst #7,($35c,a4)
	beq.w loc_074dac
	cmpi.w #$1e,($36c,a4)
	bge.w loc_074c32
	jsr RandomNumberGod
	lea loc_074c18(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_074c18:
	dc.w $0004

	dc.w $0050
	dc.l loc_074cd6

	dc.w $000a
	dc.l loc_074d0e

	dc.w $000a
	dc.l loc_074d48

	dc.w $0014
	dc.l loc_074d8c

;--------------------------
loc_074c32:
	cmpi.w #$3c,($36c,a4)
	bge.w loc_074c6c
	jsr RandomNumberGod
	lea loc_074c4c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_074c4c:
	dc.w $0005

	dc.w $0050
	dc.l loc_074cd6

	dc.w $001e
	dc.l loc_074d0e

	dc.w $000a
	dc.l loc_074d30

	dc.w $000a
	dc.l loc_074d6a

	dc.w $000a
	dc.l loc_074d8c

;--------------------------
loc_074c6c:
	cmpi.w #$78,($36c,a4)
	bge.w loc_074ca6
	jsr RandomNumberGod
	lea loc_074c86(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_074c86:
	dc.w $0005

	dc.w $003c
	dc.l loc_074cf2

	dc.w $001e
	dc.l loc_074d00

	dc.w $000a
	dc.l loc_074ce4

	dc.w $001e
	dc.l loc_074d0e

	dc.w $000a
	dc.l loc_074d6a

;--------------------------
loc_074ca6:
	jsr RandomNumberGod
	lea loc_074cb6(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_074cb6:
	dc.w $0005

	dc.w $0032
	dc.l loc_074d00

	dc.w $0032
	dc.l loc_074cf2

	dc.w $000a
	dc.l loc_074ce4

	dc.w $000a
	dc.l loc_074d6a

	dc.w $000a
	dc.l loc_074d0e

;--------------------------
loc_074cd6:
	movea.l #loc_075dac,a0
	bsr.w loc_074294
	bra.w loc_0750ee

loc_074ce4:
	movea.l #loc_07586a,a0
	bsr.w loc_0742be
	bra.w loc_0750ee

loc_074cf2:
	movea.l #loc_0757f4,a0
	bsr.w loc_0742be
	bra.w loc_0750ee

loc_074d00:
	movea.l #loc_075786,a0
	bsr.w loc_0742be
	bra.w loc_0750ee

loc_074d0e:
	cmpi.w #$40,($340,a4)
	blt.w loc_0750ee
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b0c
	jsr loc_02e308
	bra.w loc_0750ee

loc_074d30:
	cmpi.w #$40,($340,a4)
	blt.w loc_0750ee
	movea.l #loc_0764a8,a0
	bsr.w loc_074294
	bra.w loc_0750ee

loc_074d48:
	cmpi.w #$40,($340,a4)
	blt.w loc_0750ee
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077bd2
	jsr loc_02e308
	bra.w loc_0750ee

loc_074d6a:
	cmpi.w #$40,($340,a4)
	blt.w loc_0750ee
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077c00
	jsr loc_02e308
	bra.w loc_0750ee

loc_074d8c:
	cmpi.w #$60,($340,a4)
	blt.w loc_074dac
	bsr.w loc_077a90
	bne.w loc_0750ee
	bsr.w loc_077ad8
	jsr loc_02e308
	bra.w loc_0750ee

;--------------------------
loc_074dac:
	jsr RandomNumberGod
	andi.w #$1f,d0
	subi.w #$10,d0
	add.w d0,d2
	btst #0,($369,a4)
	bne.w loc_074de8
	btst #2,($369,a4)
	bne.w loc_074e68
	btst #1,($369,a4)
	bne.w loc_074e24
	btst #3,($369,a4)
	bne.w loc_074e68
	bra.w loc_075118

loc_074de8:
	cmpi.w #$20,d2
	ble.w loc_074ea4
	cmpi.w #$2c,d2
	ble.w loc_074f72
	cmpi.w #$38,d2
	ble.w loc_074fba
	cmpi.w #$42,d2
	ble.w loc_074f72
	cmpi.w #$4c,d2
	ble.w loc_0750ba
	cmpi.w #$54,d2
	ble.w loc_074f0e
	cmpi.w #$5e,d2
	ble.w loc_074ede
	bra.w loc_075118

loc_074e24:
	cmpi.w #$24,d2
	ble.w loc_075024
	cmpi.w #$2c,d2
	ble.w loc_07505a
	cmpi.w #$32,d2
	ble.w loc_074fba
	cmpi.w #$3a,d2
	ble.w loc_0750ac
	cmpi.w #$40,d2
	ble.w loc_074f0e
	cmpi.w #$44,d2
	ble.w loc_074fea
	cmpi.w #$4a,d2
	ble.w loc_0750ba
	cmpi.w #$54,d2
	ble.w loc_074eb2
	bra.w loc_075118

loc_074e68:
	cmpi.w #$22,d2
	ble.w loc_07506e
	cmpi.w #$30,d2
	ble.w loc_074fea
	cmpi.w #$36,d2
	ble.w loc_0750ac
	cmpi.w #$3a,d2
	ble.w loc_074f0e
	cmpi.w #$40,d2
	ble.w loc_0750ba
	cmpi.w #$4a,d2
	ble.w loc_074ede
	cmpi.w #$54,d2
	ble.w loc_074f3e
	bra.w loc_075118

loc_074ea4:
	movea.l #loc_075940,a0
	bsr.w loc_0742be
	bra.w loc_0750ee

loc_074eb2;
	cmpi.w #$40,($340,a4)
	blt.w loc_0750ee
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0750ee
	jsr RandomNumberGod
	bsr.w loc_077b58
	jsr loc_02e308
	bra.w loc_0750ee

loc_074ede:
	cmpi.w #$40,($340,a4)
	blt.w loc_0750ee
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0750ee
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077c00
	jsr loc_02e308
	bra.w loc_0750ee

loc_074f0e:
	cmpi.w #$40,($340,a4)
	blt.w loc_0750ee
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0750ee
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077ba4
	jsr loc_02e308
	bra.w loc_0750ee

loc_074f3e:
	cmpi.w #$40,($340,a4)
	blt.w loc_0750ee
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0750ee
	clr.b ($2f6,a4)
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b0c
	jsr loc_02e308
	bra.w loc_0750ee

loc_074f72:
	bsr.w loc_077cae
	jsr loc_02e308
	bra.w loc_0750ee

loc_074f80:
	movea.l #loc_07586a,a0
	bsr.w loc_0742be
	bra.w loc_07437a

loc_074f8e:
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_074f9a:
	move.w d0,($4d6,a4)
	move.b #2,($2f6,a4)
	bsr.w loc_077db6
	jsr loc_02e2d0
	move.w ($4d6,a4),d0
	dbra d0,loc_074f9a
	bra.w loc_0750ee

loc_074fba:
	cmpi.w #$40,($340,a4)
	blt.w loc_0750ee
	bsr.w loc_077c90
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0750ee
	movea.l #loc_076084,a0
	bsr.w loc_074294
	bra.w loc_0750ee

loc_074fea:
	move.b #2,($2f6,a4)
	bsr.w loc_077cae
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0750ee
	cmpi.w #$40,($340,a4)
	blt.w loc_0750ee
	sf ($3cb,a4)
	bsr.w loc_077ba4
	jsr loc_02e308
	bra.w loc_0750ee

loc_075024:
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_075030:
	move.w d0,($4d6,a4)
	move.b #2,($2f6,a4)
	bsr.w loc_077e62
	jsr loc_02e2d0
	move.w ($4d6,a4),d0
	dbra d0,loc_075030
	movea.l #loc_07586a,a0
	bsr.w loc_0742be
	bra.w loc_07437a

loc_07505a:
	move.b #2,($2f6,a4)
	bsr.w loc_077d28
	jsr loc_02e308
	bra.w loc_0750ee

loc_07506e:
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_07507a
	move.w d0,($4d6,a4)
	bsr.w loc_077e62
	jsr loc_02e2d0
	move.w ($4d6,a4),d0
	dbra d0,loc_07507a
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_0750ee
	movea.l #loc_07586a,a0
	bsr.w loc_0742be
	bra.w loc_07437a

loc_0750ac:
	bsr.w loc_077d28
	jsr loc_02e308
	bra.w loc_0750ee

loc_0750ba:
	bsr.w loc_077cae
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0750ee
	cmpi.w #$40,($340,a4)
	blt.w loc_0750ee
	sf ($3cb,a4)
	bsr.w loc_077b0c
	jsr loc_02e308
	bra.w loc_0750ee

loc_0750ee:
	jsr loc_0226b4
	btst #7,($35c,a4)
	bne.w loc_075106
	moveq #4,d0
	jsr loc_02e39c

loc_075106:
	bra.w loc_074276

;--------------------------
loc_07510a:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_07595c

loc_075118:
	jsr loc_02e456
	jsr loc_0226b4
	bclr #3,($35c,a4)
	bra.w loc_074276

;=-=-=-=-=-=-=-=-=-=-=-=-=-
loc_07512e:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_075142(pc,d0.w),d0
	jmp loc_075142(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_075142:
	dc.w loc_075162-loc_075142
	dc.w loc_075162-loc_075142
	dc.w loc_075168-loc_075142
	dc.w loc_07517c-loc_075142

	dc.w loc_075190-loc_075142
	dc.w loc_0751a4-loc_075142
	dc.w loc_0751b8-loc_075142
	dc.w loc_0751cc-loc_075142

	dc.w loc_0751e0-loc_075142
	dc.w loc_0751e0-loc_075142
	dc.w loc_0751e0-loc_075142
	dc.w loc_0751e0-loc_075142

	dc.w loc_0751e0-loc_075142
	dc.w loc_0751e0-loc_075142
	dc.w loc_0751e0-loc_075142
	dc.w loc_0751e0-loc_075142

;----------------------
loc_075162:
	jmp loc_02e5b2

loc_075168:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0751e4
	jmp loc_02e5b2

loc_07517c:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_0751e4
	jmp loc_02e5b2

loc_075190:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0751e4
	jmp loc_02e5b2

loc_0751a4:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_0751e4
	jmp loc_02e5b2

loc_0751b8:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0751e4
	jmp loc_02e5b2

loc_0751cc:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_0751e4
	jmp loc_02e5b2

loc_0751e0:
	bra.w loc_0751e4

;--------------------------
loc_0751e4:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcc.b loc_0751f8
	move.b #1,($4d0,a4)
	bra.b loc_075208

loc_0751f8:
	cmpi.w #$8000,d0
	bcc.b loc_075204
	sf ($4d0,a4)
	bra.b loc_075208

loc_075204:
	st ($4d0,a4)

loc_075208:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	scs ($4d1,a4)

loc_075216:
	tst.b ($367,a4)
	beq.w loc_07522c
	cmpi.w #$24,($374,a4)
	bge.w loc_07522c
	bra.w loc_075354

loc_07522c:
	tst.b ($363,a4)
	beq.w loc_07539c
	cmpi.w #-$40,($370,a4)
	ble.w loc_07539c
	cmpi.w #$34,($370,a4)
	ble.w loc_075354
	tst.b ($4d1,a4)
	beq.w loc_0752d4
	cmpi.w #$d4,($37c,a4)
	bgt.w loc_0752d4
	cmpi.w #$a4,($37c,a4)
	ble.w loc_0752d4
	cmpi.b #$12,($364,a4)
	beq.w loc_0752d4
	cmpi.w #$60,($340,a4)
	blt.w loc_075298
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_075298
	bsr.w loc_077a42
	beq.w loc_075298
	jsr loc_02e308
	bra.w loc_07539c

loc_075298:
	cmpi.w #$80,($340,a4)
	blt.w loc_0752d4
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0752c2
	st ($3cb,a4)
	bsr.w loc_077c00
	jsr loc_02e308
	bra.w loc_07539c

loc_0752c2:
	sf ($3cb,a4)
	bsr.w loc_077ba4
	jsr loc_02e308
	bra.w loc_07539c

loc_0752d4:
	tst.b ($4d0,a4)
	beq.w loc_075304
	bgt.w loc_0752e4
	bra.w loc_075354

loc_0752e4:
	cmpi.w #$3a,($37c,a4)
	bgt.w loc_075354
	tst.b ($24a,a4)
	bne.w loc_075354
	movea.l #loc_0759ea,a0
	bsr.w loc_0742be
	bra.w loc_07539c

loc_075304
	cmpi.w #$30,($37c,a4)
	bgt.w loc_075354
	cmpi.b #$12,($364,a4)
	beq.w loc_075354
	tst.b ($24a,a4)
	bne.w loc_075354
	cmpi.w #$80,($340,a4)
	blt.w loc_075346
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_075346
	movea.l #loc_075924,a0
	bsr.w loc_0742be
	bra.w loc_07539c

loc_075346:
	movea.l #loc_075a32,a0
	bsr.w loc_0742be
	bra.w loc_07539c

loc_075354:
	cmpi.w #$20,($370,a4)
	bgt.w loc_07538c
	cmpi.w #8,($370,a4)
	bgt.w loc_07538c
	cmpi.w #$a0,($340,a4)
	blt.w loc_07538c
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07538c
	bsr.w loc_077ad8
	beq.w loc_07538c
	bra.w loc_07539c

loc_07538c:
	jsr loc_02e456
	jsr loc_0226b4
	bra.w loc_075216

loc_07539c:
	clr.b ($2f6,a4)
	bra.w loc_07437a

;=-=-=-=-=-=-=-=-=-=-=-=-=-
loc_0753a4:
	clr.b ($2f6,a4)
	cmpi.w #$40,($340,a4)
	bge.w loc_0753b6
	bra.w loc_07437a

loc_0753b6:
	cmpi.w #$1e,($36c,a4)
	bgt.w loc_0753ea
	jsr RandomNumberGod
	lea loc_0753d0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0753d0:
	dc.w $0004

	dc.w $0032
	dc.l loc_0754a0

	dc.w $001e
	dc.l loc_075550

	dc.w $000a
	dc.l loc_07552a

	dc.w $000a
	dc.l loc_075542

;--------------------------
loc_0753ea:
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_075424
	jsr RandomNumberGod
	lea loc_075404(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_075404:
	dc.w $0005

	dc.w $0032
	dc.l loc_0754a0

	dc.w $0014
	dc.l loc_075550

	dc.w $0014
	dc.l loc_0754c6

	dc.w $000a
	dc.l loc_075512

	dc.w $000a
	dc.l loc_07552a

;--------------------------
loc_075424:
	cmpi.w #$78,($36c,a4)
	bgt.w loc_075464
	jsr RandomNumberGod
	lea loc_07543e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07543e:
	dc.w $0006

	dc.w $0032
	dc.l loc_0754a0

	dc.w $001e
	dc.l loc_075550

	dc.w $0014
	dc.l loc_0754c6

	dc.w $000a
	dc.l loc_07552a

	dc.w $000a
	dc.l loc_0754f0

	dc.w $000a
	dc.l loc_0754e2

;--------------------------
loc_075464:
	jsr RandomNumberGod
	lea loc_075474(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_075474:
	dc.w $0007

	dc.w $0032
	dc.l loc_0754a0

	dc.w $000a
	dc.l loc_07552a

	dc.w $000a
	dc.l loc_0754f0

	dc.w $000a
	dc.l loc_0754c6

	dc.w $000a
	dc.l loc_075550

	dc.w $000a
	dc.l loc_0754e2

	dc.w $000a
	dc.l loc_0754b8


;--------------------------
loc_0754a0:
	jsr loc_02c78a
	beq.w loc_075550
	movea.l #loc_076618,a0
	bsr.w loc_074294
	bra.w loc_07437a

loc_0754b8:
	bsr.w loc_077c6a
	jsr loc_02e308
	bra.w loc_07437a

loc_0754c6:
	movea.l #loc_0762f0,a0
	bsr.w loc_074294
	bra.w loc_07437a

loc_0754d4:
	movea.l #loc_075786,a0
	bsr.w loc_0742be
	bra.w loc_07437a

loc_0754e2:
	movea.l #loc_076d4e,a0
	bsr.w loc_074294
	bra.w loc_07437a

loc_0754f0:
	cmpi.w #$40,($340,a4)
	blt.w loc_07437a
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077c00
	jsr loc_02e308
	bra.w loc_07437a

loc_075512:
	cmpi.w #$40,($340,a4)
	blt.w loc_07437a
	movea.l #loc_0764a8,a0
	bsr.w loc_074294
	bra.w loc_07437a

loc_07552a:
	cmpi.w #$40,($340,a4)
	blt.w loc_07437a
	movea.l #loc_076190,a0
	bsr.w loc_074294
	bra.w loc_07437a

loc_075542:
	movea.l #loc_075ec4,a0
	bsr.w loc_074294
	bra.w loc_07437a

loc_075550:
	movea.l #loc_075dac,a0
	bsr.w loc_074294
	bra.w loc_07437a

loc_07555e:
	cmpi.w #$60,($340,a4)
	blt.b loc_075550
	bsr.w loc_077a42
	jsr loc_02e308
	bra.w loc_07437a

;=-=-=-=-=-=-=-=-=-=-=-=-=-
loc_075574:
	clr.b ($2f6,a4)
	cmpi.w #$24,($36c,a4)
	bge.w loc_075588
	move.b #4,($2f6,a4)

loc_075588:
	cmpi.w #$64,($36c,a4)
	ble.w loc_075598
	move.b #8,($2f6,a4)

loc_075598:
	clr.b ($2f6,a4)
	btst #5,($361,a4)
	beq.w loc_0755ae
	jsr loc_0226b4
	bra.b loc_075574

loc_0755ae:
	clr.b ($2f6,a4)
	moveq #$c,d0
	jsr loc_02e420
	cmpi.w #$40,($340,a4)
	bge.w loc_0755d2
	movea.l #loc_0756d8,a0
	bsr.w loc_0742be
	bra.w loc_07437a

loc_0755d2:
	jsr RandomNumberGod
	lea loc_0755e2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0755e2:
	dc.w $0003

	dc.w $0046
	dc.l loc_075604

	dc.w $0014
	dc.l loc_075612

	dc.w $0014
	dc.l loc_0755f6

;--------------------------
loc_0755f6:
	movea.l #loc_075ec4,a0
	bsr.w loc_074294
	bra.w loc_07437a

loc_075604:
	movea.l #loc_075dac,a0
	bsr.w loc_074294
	bra.w loc_07437a

loc_075612:
	cmpi.w #$60,($340,a4)
	blt.w loc_07437a
	bsr.w loc_077ad8
	jsr loc_02e308
	bra.w loc_07437a

;=-=-=-=-=-=-=-=-=-=-=-=-=-
loc_07562a:
	andi.b #2,($2f6,a4)

loc_075630:
	btst #5,($249,a4)
	beq.w loc_075666
	cmpi.w #$80,($340,a4)
	blt.w loc_075656
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_075656
	st ($2fb,a4)

loc_075656:
	moveq #8,d0
	jsr loc_02e39c
	jsr loc_0226b4
	bra.b loc_075630

loc_075666
	jsr loc_02e370
	move.l #$80004,d0
	jsr loc_02e39c
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_07568c
	bra.w loc_074276

loc_07568c:
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$3c,($378,a4)
	bgt.w loc_0756d4

loc_0756a2:
	tst.b ($249,a4)
	beq.w loc_0756d4
	jsr RandomNumberGod
	lea loc_0756be(pc),a0
	jsr loc_02decc
	bra.w loc_0756cc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0756be:
	dc.w $0002

	dc.w $0050
	dc.l loc_075dac

	dc.w $0014
	dc.l loc_076618

;--------------------------
loc_0756cc:
	jsr loc_0226b4
	bra.b loc_0756a2

loc_0756d4:
	bra.w loc_074a62

;==========================
loc_0756d8:
	cmpi.w #$80,($340,a4)
	bge.w loc_075708
	andi.b #2,($2f6,a4)
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$44,d2
	jsr loc_02e0f4
	bra.w loc_0742c4

loc_075708:
	jsr loc_02e496
	jsr loc_02e550
	bra.w loc_0742c4
	jsr loc_02e370
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.b loc_0756d8
	cmpi.w #$a0,($358,a4)
	blt.w loc_075750
	jsr RandomNumberGod
	cmpi.w #$3000,d0
	bcs.w loc_0757f4
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_075786

loc_075750:
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
	bra.w loc_0742c4

;--------------------------
loc_07577c:
	move.l #$40006,d0
	bra.w loc_0757a4

;--------------------------
loc_075786:
	cmpi.w #$20,($340,a4)
	bge.w loc_07579e
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0756d8

loc_07579e:
	move.l #$100020,d0

loc_0757a4:
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$64,d2
	jsr loc_02e0f4
	cmpi.w #$20,($340,a4)
	bge.w loc_0757e2
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

loc_0757e2:
	clr.b ($2f6,a4)
	bra.w loc_0742c4

;--------------------------
loc_0757ea:
	move.l #$40006,d0
	bra.w loc_075812

;--------------------------
loc_0757f4:
	cmpi.w #$20,($340,a4)
	bge.w loc_07580c
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0756d8

loc_07580c:
	move.l #$100020,d0

loc_075812:
	move.b #4,($2f6,a4)
	move.w #$b4,d2
	swap d2
	move.w #$5a,d2
	jsr loc_02e0f4
	cmpi.w #$5a,($378,a4)
	ble.w loc_075862
	bmi.w loc_0756d8
	cmpi.w #$20,($340,a4)
	bge.w loc_075862
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

loc_075862:
	clr.b ($2f6,a4)
	bra.w loc_0742c4

;--------------------------
loc_07586a:
	cmpi.w #$20,($340,a4)
	blt.w loc_0742c4
	cmpi.w #$32,($36c,a4)
	bgt.w loc_075890
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_075900
	bra.w loc_0758f6

loc_075890:
	cmpi.w #$46,($36c,a4)
	bgt.w loc_0758b6
	move.l #$80008,d0
	move.l #$640000,d2
	move.b #4,($2f6,a4)
	jsr loc_02e0f4
	bra.w loc_0758d4

loc_0758b6:
	cmpi.w #$64,($36c,a4)
	blt.w loc_0758d4
	move.l #$80008,d0
	moveq #$46,d2
	move.b #8,($2f6,a4)
	jsr loc_02e0f4

loc_0758d4:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_075900
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_0758f6
	move.b #5,($2f6,a4)
	bra.w loc_075906

loc_0758f6:
	move.b #1,($2f6,a4)
	bra.w loc_075906

loc_075900:
	move.b #9,($2f6,a4)

loc_075906:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_075906
	clr.b ($2f6,a4)
	moveq #4,d0
	jsr loc_02e39c
	bra.w loc_0742c4

;--------------------------
loc_075924:
	clr.b ($2f6,a4)
	cmpi.w #$40,($340,a4)
	blt.w loc_075786
	bsr.w loc_077f18
	jsr loc_02e308
	bra.w loc_0742c4

;--------------------------
loc_075940:
	clr.b ($2f6,a4)
	cmpi.w #$40,($340,a4)
	blt.w loc_0757f4
	bsr.w loc_077ef0
	jsr loc_02e308
	bra.w loc_0742c4

;--------------------------
loc_07595c:
	cmpi.w #$20,($340,a4)
	blt.w loc_0759e2
	cmpi.w #$28,($36c,a4)
	blt.w loc_075988
	cmpi.w #$5a,($36c,a4)
	blt.w loc_0759ac
	cmpi.w #$c8,($36c,a4)
	bgt.w loc_0759ca
	bra.w loc_0756d8

loc_075988:
	move.b ($246,a4),d0
	andi.b #$c,d0
	bne.w loc_0759a2
	movea.l #loc_075940,a0
	bsr.w loc_0742be
	bra.w loc_0759e2

loc_0759a2:
	move.b #9,($2f6,a4)
	bra.w loc_075906

loc_0759ac:
	move.l #$200020,d0
	move.b #4,($2f6,a4)
	move.w #$c8,d2
	swap d2
	clr.w d2
	jsr loc_02e0f4
	bra.w loc_0759e2

loc_0759ca:
	move.l #$200020,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$5a,d2
	jsr loc_02e0f4

loc_0759e2:
	clr.b ($2f6,a4)
	bra.w loc_0742c4

;--------------------------
loc_0759ea:
	move.b #9,($2f6,a4)

loc_0759f0:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_0759f0
	moveq #2,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_0742c4

;--------------------------
loc_075a0e:
	move.b #5,($2f6,a4)

loc_075a14:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_075a14
	moveq #2,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_0742c4

;--------------------------
loc_075a32:
	move.b #1,($2f6,a4)

loc_075a38:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_075a38
	moveq #2,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_0742c4

;--------------------------
loc_075a56:
	btst #0,($24a,a4)
	bne.w loc_07429a
	tst.b ($247,a4)
	bne.w loc_07429a
	cmpi.w #$30,($340,a4)
	blt.w loc_07429a

loc_075a72:
	clr.b ($2f6,a4)
	btst #1,($246,a4)
	bne.w loc_075d9e
	move.b ($361,a4),d0
	andi.b #$f8,d0
	beq.w loc_075a96
	cmpi.b #5,($360,a4)
	beq.w loc_075d94

loc_075a96:
	tst.b ($365,a4)
	bne.w loc_075c4e
	cmpi.w #$80,($358,a4)
	blt.w loc_075c4e
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_075c30
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_075b78
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_075af4
	cmpi.w #$1c,($378,a4)
	bgt.w loc_075af4
	cmpi.w #$30,($37a,a4)
	bgt.w loc_075af4
	cmpi.w #$10,($37a,a4)
	blt.w loc_075af4
	bsr.w loc_077db6
	bra.w loc_075d9e

loc_075af4:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_075b28
	cmpi.w #$2c,($378,a4)
	bgt.w loc_075b28
	cmpi.w #$10,($37a,a4)
	bgt.w loc_075b28
	cmpi.w #-$10,($37a,a4)
	blt.w loc_075b28
	bsr.w loc_077e62
	bra.w loc_075d9e

loc_075b28:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_075b4e
	cmpi.w #$30,($37a,a4)
	bgt.w loc_075b4e
	cmpi.w #-$30,($37a,a4)
	blt.w loc_075b4e
	bsr.w loc_077d28
	bra.w loc_075d9e

loc_075b4e:
	cmpi.w #$4c,($378,a4)
	bgt.w loc_075b74
	cmpi.w #$30,($37a,a4)
	bgt.w loc_075b74
	cmpi.w #-$20,($37a,a4)
	blt.w loc_075b74
	bsr.w loc_077cae
	bra.w loc_075d9e

loc_075b74:
	bra.w loc_075d94

loc_075b78:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_075bac
	cmpi.w #$1c,($378,a4)
	bgt.w loc_075bac
	cmpi.w #$20,($37a,a4)
	bgt.w loc_075bac
	cmpi.w #-$10,($37a,a4)
	blt.w loc_075c06
	bsr.w loc_077e62
	bra.w loc_075d9e

loc_075bac:
	cmpi.w #$2c,($378,a4)
	bgt.w loc_075bd2
	cmpi.w #$30,($37a,a4)
	bgt.w loc_075bd2
	cmpi.w #-$30,($37a,a4)
	blt.w loc_075bd2
	bsr.w loc_077d28
	bra.w loc_075d9e

loc_075bd2:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_075c06
	cmpi.w #$3c,($378,a4)
	bgt.w loc_075c06
	cmpi.w #$20,($37a,a4)
	bgt.w loc_075c06
	cmpi.w #-$20,($37a,a4)
	blt.w loc_075c06
	bsr.w loc_077db6
	bra.w loc_075d9e

loc_075c06:
	cmpi.w #$4c,($378,a4)
	bgt.w loc_075c2c
	cmpi.w #$30,($37a,a4)
	bgt.w loc_075c2c
	cmpi.w #-$20,($37a,a4)
	blt.w loc_075c2c
	bsr.w loc_077cae
	bra.w loc_075d9e

loc_075c2c:
	bra.w loc_075d94

loc_075c30:
	cmpi.w #$20,($378,a4)
	bge.w loc_075d94
	cmpi.w #$20,($37a,a4)
	bgt.w loc_075d94
	cmpi.w #-$20,($37a,a4)
	bra.w loc_075d9e

loc_075c4e:
	tst.w ($21a,a4)
	blt.w loc_075d94
	cmpi.l #$60b000,($22a,a4)
	bgt.w loc_075d94
	cmpi.l #$60b000,($22a,a4)
	ble.w loc_075c7c
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_075d94

loc_075c7c:
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_075d7c
	cmpi.w #$14,($378,a4)
	bgt.w loc_075ca0
	move.b #2,($2f6,a4)
	bsr.w loc_077d28
	bra.w loc_075d9e

loc_075ca0:
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_075d14
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_075ccc
	cmpi.w #$24,($378,a4)
	bgt.w loc_075ccc
	bsr.w loc_077e62
	bra.w loc_075d9e

loc_075ccc:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_075cec
	cmpi.w #$24,($378,a4)
	bgt.w loc_075cec
	bsr.w loc_077db6
	bra.w loc_075d9e

loc_075cec:
	cmpi.w #$34,($378,a4)
	bgt.w loc_075cfe
	bsr.w loc_077d28
	bra.w loc_075d9e

loc_075cfe:
	cmpi.w #$44,($378,a4)
	bgt.w loc_075d10
	bsr.w loc_077cae
	bra.w loc_075d9e

loc_075d10:
	bra.w loc_075d94

loc_075d14:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_075d34
	cmpi.w #$24,($378,a4)
	bgt.w loc_075d34
	bsr.w loc_077e62
	bra.w loc_075d9e

loc_075d34:
	cmpi.w #$34,($378,a4)
	bgt.w loc_075d46
	bsr.w loc_077d28
	bra.w loc_075d9e

loc_075d46:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_075d66
	cmpi.w #$44,($378,a4)
	bgt.w loc_075d66
	bsr.w loc_077db6
	bra.w loc_075d9e

loc_075d66:
	cmpi.w #$54,($378,a4)
	bgt.w loc_075d78
	bsr.w loc_077cae
	bra.w loc_075d9e

loc_075d78:
	bra.w loc_075d94

loc_075d7c:
	btst #3,($248,a4)
	beq.w loc_075d90
	move.b #2,($2f6,a4)
	bsr.w loc_077db6

loc_075d90:
	bra.w loc_075d9e

loc_075d94:
	jsr loc_0226b4
	bra.w loc_075a72

loc_075d9e:
	jsr loc_02e308
	clr.b ($2f6,a4)
	bra.w loc_07429a

;--------------------------
loc_075dac:
	cmpi.w #$40,($340,a4)
	blt.w loc_07429a
	move.w #7,d0

loc_075dba:
	move.w d0,($4d6,a4)
	btst #6,($24a,a4)
	bne.w loc_07429a
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_07429a
	cmpi.w #$20,($36c,a4)
	ble.w loc_075dfa
	move.l #$100010,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$20,d2
	jsr loc_02e0f4
	bra.w loc_075e2c

loc_075dfa:
	jsr RandomNumberGod
	lea loc_075e0a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_075e0a:
	dc.w $0002

	dc.w $0028
	dc.l loc_075e18

	dc.w $0028
	dc.l loc_075e24

;--------------------------
loc_075e18:
	bsr.w loc_077a0e
	bne.w loc_075e42
	bra.w loc_075e2c

loc_075e24:
	bsr.w loc_077a28
	bne.w loc_075e42

loc_075e2c:
	move.w ($4d6,a4),d0
	dbra d0,loc_075dba
	jsr loc_02e308
	clr.b ($2f6,a4)
	bra.w loc_07429a

loc_075e42:
	clr.b ($2f6,a4)
	jsr loc_02e308
	cmpi.w #$64,($36c,a4)
	bgt.w loc_075e5a
	bra.w loc_075e7a

loc_075e5a:
	cmpi.w #$78,($36c,a4)
	bgt.w loc_075e68
	bra.w loc_075ea4

loc_075e68:
	cmpi.w #$96,($36c,a4)
	bgt.w loc_075e76
	bra.w loc_075e96

loc_075e76:
	bra.w loc_075e88

loc_075e7a:
	movea.l #loc_0757f4,a0
	bsr.w loc_0742be
	bra.w loc_075ebc

loc_075e88:
	movea.l #loc_075924,a0
	bsr.w loc_0742be
	bra.w loc_075ebc

loc_075e96:
	bsr.w loc_077c6a
	jsr loc_02e308
	bra.w loc_075ebc

loc_075ea4:
	move.l #$100010,d0
	jsr loc_02e420
	st ($3cb,a4)
	bsr.w loc_077c00
	bra.w loc_075ebc

loc_075ebc:
	clr.b ($2f6,a4)
	bra.w loc_07429a

;--------------------------
loc_075ec4:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_07429a
	move.l ($4d8,a4),($4e4,a4)
	btst #1,($246,a4)
	beq.w loc_07429a
	btst #3,($24a,a4)
	bne.w loc_07429a
	cmpi.w #$60,($340,a4)
	blt.w loc_07429a
	clr.b ($2f6,a4)

loc_075ef8:
	cmpi.w #$5a,($36c,a4)
	ble.w loc_075f22
	jsr loc_0226b4
	move.l #$100010,d0
	moveq #0,d2
	move.w #$54,d2
	move.b #8,($2f6,a4)
	jsr loc_02e0f4
	bra.b loc_075ef8

loc_075f22:
	movea.l #loc_07586a,a0
	bsr.w loc_0742be

loc_075f2c:
	jsr loc_0226b4
	movea.l #loc_075a56,a0
	bsr.w loc_074294
	move.l ($4e4,a4),($4d8,a4)
	btst #1,($246,a4)
	beq.b loc_075f2c
	jsr RandomNumberGod
	lea loc_075f5a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_075f5a:
	dc.w $0004

	dc.w $0014
	dc.l loc_075fa8

	dc.w $0014
	dc.l loc_075fd8

	dc.w $0014
	dc.l loc_075fb6

	dc.w $0014
	dc.l loc_075f74

;--------------------------
loc_075f74:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_075f9a
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b0c
	jsr loc_02e308
	bra.w loc_07607c

loc_075f9a:
	bsr.w loc_077bd2
	jsr loc_02e308
	bra.w loc_07607c

loc_075fa8:
	bsr.w loc_077d28
	jsr loc_02e308
	bra.w loc_07607c

loc_075fb6:
	move.b #2,($2f6,a4)
	bsr.w loc_077d28
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_076038
	blt.w loc_076038
	bra.w loc_076076

loc_075fd8:
	bsr.w loc_077d28
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_075ff4
	blt.w loc_075ff4
	bra.w loc_076076

loc_075ff4:
	jsr loc_02c78a
	beq.w loc_076016
	cmpi.w #$c0,($340,a4)
	blt.w loc_076016
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_076068

loc_076016:
	cmpi.w #$60,($340,a4)
	blt.w loc_076076
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b0c
	jsr loc_02e308
	bra.w loc_07607c

loc_076038:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_076068
	cmpi.w #$60,($340,a4)
	blt.w loc_076076
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b58
	jsr loc_02e308
	bra.w loc_07607c

loc_076068:
	bsr.w loc_077ad8
	jsr loc_02e308
	bra.w loc_07607c

loc_076076:
	jsr loc_02e308

loc_07607c:
	clr.b ($2f6,a4)
	bra.w loc_0742ac

;--------------------------
loc_076084:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_07429a
	btst #1,($246,a4)
	beq.w loc_07429a
	btst #3,($24a,a4)
	bne.w loc_07429a
	cmpi.w #$30,($340,a4)
	blt.w loc_07429a
	clr.b ($2f6,a4)

loc_0760b2:
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_0760e8
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0760e8
	move.b #2,($2f6,a4)
	bsr.w loc_077db6
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_076188
	bra.b loc_0760b2

loc_0760e8:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_076152
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_07616a
	cmpi.w #$64,($378,a4)
	bgt.w loc_076188
	move.b #2,($2f6,a4)
	bsr.w loc_077cae
	jsr loc_02e308
	move.l #$40004,d0
	jsr loc_02e420
	cmpi.w #$40,($340,a4)
	blt.w loc_076182
	jsr RandomNumberGod
	lea loc_076144(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_076144:
	dc.w $0002

	dc.w $001e
	dc.l loc_07616a

	dc.w $001e
	dc.l loc_076152

;--------------------------

loc_076152:
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077c00
	jsr loc_02e308
	bra.w loc_076188

loc_07616a:
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077ba4
	jsr loc_02e308
	bra.w loc_076188

loc_076182:
	jsr loc_02e308

loc_076188:
	clr.b ($2f6,a4)
	bra.w loc_07429a

;--------------------------
loc_076190:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_07429a
	btst #1,($246,a4)
	beq.w loc_07429a
	btst #3,($24a,a4)
	bne.w loc_07429a
	clr.b ($2f6,a4)
	cmpi.w #$40,($340,a4)
	blt.w loc_07429a
	jsr loc_02e496
	jsr loc_02e550
	st ($3cb,a4)
	cmpi.w #$78,($378,a4)
	bgt.w loc_0761dc
	sf ($3cb,a4)

loc_0761dc:
	cmpi.w #$a0,($378,a4)
	bgt.w loc_0761f0
	bsr.w loc_077b58
	jsr loc_02e308

loc_0761f0:
	clr.b ($2f6,a4)
	bra.w loc_07429a

;--------------------------
loc_0761f8:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_07429a
	btst #1,($246,a4)
	beq.w loc_07429a
	btst #3,($24a,a4)
	bne.w loc_07429a
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$40,($340,a4)
	blt.w loc_07429a
	st ($3cb,a4)
	cmpi.w #$50,($378,a4)
	bgt.w loc_076244
	sf ($3cb,a4)

loc_076244:
	cmpi.w #$b4,($378,a4)
	bgt.w loc_076258
	bsr.w loc_077b0c
	jsr loc_02e308

loc_076258:
	clr.b ($2f6,a4)
	bra.w loc_07429a

;--------------------------
loc_076260:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0742ac
	btst #1,($246,a4)
	beq.w loc_07429a
	btst #3,($24a,a4)
	bne.w loc_07429a
	cmpi.w #$40,($340,a4)
	blt.w loc_07429a
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	st ($3cb,a4)
	cmpi.w #$50,($378,a4)
	bgt.w loc_0762ac
	sf ($3cb,a4)

loc_0762ac:
	cmpi.w #$c8,($378,a4)
	cmpi.w #$40,($340,a4)
	blt.w loc_0762e8
	bsr.w loc_077c00
	jsr loc_02e308
	cmpi.w #$80,($340,a4)
	blt.w loc_0762e8
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0762e8
	bsr.w loc_077ef0
	jsr loc_02e308

loc_0762e8:
	clr.b ($2f6,a4)
	bra.w loc_07429a

;--------------------------
loc_0762f0:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_07429a
	btst #1,($246,a4)
	beq.w loc_07429a
	btst #3,($24a,a4)
	bne.w loc_07429a
	cmpi.w #$a0,($378,a4)
	bgt.w loc_07429a
	cmpi.w #$30,($340,a4)
	blt.w loc_07429a
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_075924,a0
	bsr.w loc_0742be
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	bne.w loc_076384
	jsr RandomNumberGod
	lea loc_076364(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_076364:
	dc.w $0005

	dc.w $0050
	dc.l loc_0763cc

	dc.w $001e
	dc.l loc_0763da

	dc.w $000a
	dc.l loc_0763e8

	dc.w $000a
	dc.l loc_076470

	dc.w $000a
	dc.l loc_0763b4

;--------------------------
loc_076384:
	jsr RandomNumberGod
	lea loc_076394(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_076394:
	dc.w $0005

	dc.w $0050
	dc.l loc_0763cc

	dc.w $001e
	dc.l loc_07640a

	dc.w $000a
	dc.l loc_07642c

	dc.w $000a
	dc.l loc_07644e

	dc.w $000a
	dc.l loc_0763b4

;--------------------------
loc_0763b4:
	cmpi.w #$c0,($340,a4)
	blt.w loc_07649a
	movea.l #loc_076618,a0
	bsr.w loc_074294
	bra.w loc_0764a0

loc_0763cc:
	movea.l #loc_075dac,a0
	bsr.w loc_074294
	bra.w loc_0764a0

loc_0763da:
	movea.l #loc_076084,a0
	bsr.w loc_074294
	bra.w loc_0764a0

loc_0763e8:
	cmpi.w #$40,($340,a4)
	blt.w loc_07649a
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b0c
	jsr loc_02e308
	bra.w loc_0764a0

loc_07640a:
	cmpi.w #$40,($340,a4)
	blt.w loc_07649a
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077c00
	jsr loc_02e308
	bra.w loc_0764a0

loc_07642c:
	cmpi.w #$40,($340,a4)
	blt.w loc_07649a
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077ba4
	jsr loc_02e308
	bra.w loc_0764a0

loc_07644e:
	cmpi.w #$40,($340,a4)
	blt.w loc_07649a
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b58
	jsr loc_02e308
	bra.w loc_0764a0

loc_076470:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_07648c
	movea.l #loc_075924,a0
	bsr.w loc_0742be
	bra.w loc_0764a0

loc_07648c:
	movea.l #loc_075940,a0
	bsr.w loc_0742be
	bra.w loc_0764a0

loc_07649a:
	jsr loc_02e308

loc_0764a0:
	clr.b ($2f6,a4)
	bra.w loc_07429a

;--------------------------
loc_0764a8:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_07429a
	btst #1,($246,a4)
	beq.w loc_07429a
	btst #3,($24a,a4)
	bne.w loc_07429a
	clr.b ($2f6,a4)
	cmpi.w #$8c,($378,a4)
	bge.w loc_076610
	cmpi.w #$40,($340,a4)
	blt.w loc_076610
	sf ($3cb,a4)
	bsr.w loc_077ba4
	jsr loc_02e26e
	bgt.w loc_0764fa
	blt.w loc_076610
	bra.w loc_07660a

loc_0764fa:
	jsr loc_02e308
	btst #1,($362,a4)
	bne.w loc_076534
	jsr RandomNumberGod
	lea loc_07651a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07651a:
	dc.w $0004

	dc.w $0032
	dc.l loc_076558

	dc.w $0014
	dc.l loc_0765e8

	dc.w $0014
	dc.l loc_076588

	dc.w $0014
	dc.l loc_0765aa

;--------------------------
loc_076534:
	jsr RandomNumberGod
	lea loc_076544(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_076544
	dc.w $0003

	dc.w $001e
	dc.l loc_076566

	dc.w $001e
	dc.l loc_0765c6

	dc.w $001e
	dc.l loc_0765e8

;--------------------------
loc_076558:
	movea.l #loc_076084,a0
	bsr.w loc_074294
	bra.w loc_076610

loc_076566:
	cmpi.w #$40,($340,a4)
	blt.w loc_076610
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b58
	jsr loc_02e308
	bra.w loc_076610

loc_076588:
	cmpi.w #$40,($340,a4)
	blt.w loc_076610
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b0c
	jsr loc_02e308
	bra.w loc_076610

loc_0765aa:
	cmpi.w #$40,($340,a4)
	blt.w loc_076610
	st ($3cb,a4)
	bsr.w loc_077bd2
	jsr loc_02e308
	bra.w loc_076610

loc_0765c6:
	cmpi.w #$40,($340,a4)
	blt.w loc_076610
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077c00
	jsr loc_02e308
	bra.w loc_076610

loc_0765e8:
	cmpi.w #$40,($340,a4)
	blt.w loc_076610
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077ba4
	jsr loc_02e308
	bra.w loc_076610

loc_07660a:
	jsr loc_02e308

loc_076610:
	clr.b ($2f6,a4)
	bra.w loc_07429a

;--------------------------
loc_076618:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_07429a
	btst #1,($246,a4)
	beq.w loc_07429a
	btst #3,($24a,a4)
	bne.w loc_07429a
	cmpi.w #$60,($340,a4)
	blt.w loc_07429a
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_076662(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_076662:
	dc.w $0003

	dc.w $001e
	dc.l loc_076686

	dc.w $001e
	dc.l loc_07667e

	dc.w $001e
	dc.l loc_076676

;--------------------------
loc_076676:
	bsr.w loc_077a90
	bne.w loc_07668e

loc_07667e:
	bsr.w loc_077a42
	bra.w loc_07668e

loc_076686:
	bsr.w loc_077ad8
	bra.w loc_07668e

loc_07668e:
	jsr loc_02e308
	clr.b ($2f6,a4)
	bra.w loc_07429a

;--------------------------
loc_07669c:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_07429a
	btst #1,($246,a4)
	beq.w loc_07429a
	btst #3,($24a,a4)
	bne.w loc_07429a
	cmpi.w #$64,($378,a4)
	bgt.w loc_07429a
	cmpi.w #$30,($340,a4)
	blt.w loc_07429a
	clr.b ($2f6,a4)
	bsr.w loc_077d28
	beq.w loc_07429a
	cmpi.w #7,($2fe,a4)
	beq.w loc_076704
	jsr loc_02e308
	cmpi.w #$6e,($378,a4)
	bgt.w loc_07429a
	bsr.w loc_077cae
	jsr loc_02e308
	bra.w loc_07681c

loc_076704:
	jsr loc_02e26e
	beq.w loc_07681c
	cmpi.w #$60,($340,a4)
	blt.w loc_076816
	jsr RandomNumberGod
	lea loc_076728(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_076728:
	dc.w $0007

	dc.w $000a
	dc.l loc_0767b0

	dc.w $000a
	dc.l loc_07678e

	dc.w $000a
	dc.l loc_0767d2

	dc.w $000a
	dc.l loc_07676c

	dc.w $000a
	dc.l loc_0767f4

	dc.w $000a
	dc.l loc_07681c

	dc.w $000a
	dc.l loc_076754

;--------------------------
loc_076754:
	cmpi.w #$c0,($340,a4)
	blt.w loc_076816
	bsr.w loc_077ad8
	jsr loc_02e308
	bra.w loc_07681c

loc_07676c:
	cmpi.w #$40,($340,a4)
	blt.w loc_07681c
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b58
	jsr loc_02e308
	bra.w loc_07681c

loc_07678e:
	cmpi.w #$40,($340,a4)
	blt.w loc_07681c
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b0c
	jsr loc_02e308
	bra.w loc_07681c

loc_0767b0:
	cmpi.w #$40,($340,a4)
	blt.w loc_07681c
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077ba4
	jsr loc_02e308
	bra.w loc_07681c

loc_0767d2:
	cmpi.w #$40,($340,a4)
	blt.w loc_07681c
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077bd2
	jsr loc_02e308
	bra.w loc_07681c

loc_0767f4:
	cmpi.w #$40,($340,a4)
	blt.w loc_07681c
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077c00
	jsr loc_02e308
	bra.w loc_07681c

loc_076816:
	jsr loc_02e308

loc_07681c:
	clr.b ($2f6,a4)
	bra.w loc_07429a

;--------------------------
loc_076824:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_07429a
	btst #1,($246,a4)
	beq.w loc_07429a
	btst #3,($24a,a4)
	bne.w loc_07429a
	cmpi.w #$32,($36c,a4)
	bgt.w loc_07429a
	cmpi.w #$30,($340,a4)
	blt.w loc_07429a
	clr.b ($2f6,a4)
	move.b #2,($2f6,a4)
	bsr.w loc_077e62
	jsr loc_02e308
	bsr.w loc_077e62
	jsr loc_02e26e
	bgt.w loc_076882
	blt.w loc_076882
	bra.w loc_07695a

loc_076882:
	cmpi.w #$60,($340,a4)
	blt.w loc_07695a
	btst #1,($362,a4)
	bne.w loc_0768f8
	jsr RandomNumberGod
	lea loc_0768a6(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0768a6:
	dc.w $0002

	dc.w $001e
	dc.l loc_0768b4

	dc.w $001e
	dc.l loc_0768d6

;--------------------------
loc_0768b4:
	cmpi.w #$40,($340,a4)
	blt.w loc_07695a
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077ba4
	jsr loc_02e308
	bra.w loc_076960

loc_0768d6:
	cmpi.w #$40,($340,a4)
	blt.w loc_07695a
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b0c
	jsr loc_02e308
	bra.w loc_076960

loc_0768f8:
	jsr RandomNumberGod
	lea loc_076908(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_076908:
	dc.w $0002

	dc.w $001e
	dc.l loc_076938

	dc.w $001e
	dc.l loc_076916

;--------------------------
loc_076916:
	cmpi.w #$40,($340,a4)
	blt.w loc_07695a
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077c00
	jsr loc_02e308
	bra.w loc_076960

loc_076938:
	cmpi.w #$40,($340,a4)
	blt.w loc_07695a
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b58
	jsr loc_02e308
	bra.w loc_076960

loc_07695a:
	jsr loc_02e308

loc_076960:
	clr.b ($2f6,a4)
	bra.w loc_07429a

;--------------------------
loc_076968:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_07429a
	btst #1,($246,a4)
	beq.w loc_07429a
	btst #3,($24a,a4)
	bne.w loc_07429a
	cmpi.w #$3c,($378,a4)
	bgt.w loc_07429a
	cmpi.w #$30,($340,a4)
	blt.w loc_07429a
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_075924,a0
	bsr.w loc_0742be
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_0769d2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0769d2:
	dc.w $0002

	dc.w $005a
	dc.l loc_0769e0

	dc.w $000a
	dc.l loc_0769ee

;--------------------------
loc_0769e0:
	movea.l #loc_075dac,a0
	bsr.w loc_074294
	bra.w loc_0769f8

loc_0769ee:
	movea.l #loc_076618,a0
	bsr.w loc_074294

loc_0769f8:
	clr.b ($2f6,a4)
	bra.w loc_07429a

;--------------------------
loc_076a00:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_07429a
	btst #1,($246,a4)
	beq.w loc_07429a
	btst #3,($24a,a4)
	bne.w loc_07429a
	cmpi.w #$32,($378,a4)
	bgt.w loc_07429a
	cmpi.w #$30,($340,a4)
	blt.w loc_07429a
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_077cae
	beq.w loc_07429a
	cmpi.w #7,($2fe,a4)
	beq.w loc_076a74
	jsr loc_02e308
	cmpi.w #$6e,($378,a4)
	bgt.w loc_07429a
	bsr.w loc_077cae
	jsr loc_02e308
	bra.w loc_076abc

loc_076a74:
	btst #1,($362,a4)
	bne.w loc_076aa2
	jsr loc_02e308
	cmpi.w #$6e,($378,a4)
	bgt.w loc_07429a
	move.b #2,($2f6,a4)
	bsr.w loc_077cae
	jsr loc_02e308
	bra.w loc_076abc

loc_076aa2:
	jsr loc_02e308
	cmpi.w #$6e,($378,a4)
	bgt.w loc_07429a
	bsr.w loc_077cae
	jsr loc_02e308

loc_076abc:
	clr.b ($2f6,a4)
	bra.w loc_07429a

;--------------------------
loc_076ac4:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_07429a
	btst #1,($246,a4)
	beq.w loc_07429a
	btst #3,($24a,a4)
	bne.w loc_07429a
	cmpi.w #$32,($378,a4)
	bgt.w loc_07429a
	cmpi.w #$30,($340,a4)
	blt.w loc_07429a
	clr.b ($2f6,a4)
	move.b #2,($2f6,a4)
	bsr.w loc_077d28
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_076b1e
	blt.w loc_076b1e
	bra.w loc_076bd6

loc_076b1e:
	cmpi.w #$60,($340,a4)
	blt.w loc_076bd6
	jsr RandomNumberGod
	lea loc_076b38(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_076b38:
	dc.w $0003

	dc.w $001e
	dc.l loc_076b4c

	dc.w $001e
	dc.l loc_076b6e

	dc.w $001e
	dc.l loc_076b90

;--------------------------
loc_076b4c:
	cmpi.w #$40,($340,a4)
	blt.w loc_076bd6
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077ba4
	jsr loc_02e308
	bra.w loc_076bdc

loc_076b6e:
	cmpi.w #$40,($340,a4)
	blt.w loc_076bd6
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077c00
	jsr loc_02e308
	bra.w loc_076bdc

loc_076b90:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_076bc0
	cmpi.w #$40,($340,a4)
	blt.w loc_076bd6
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b0c
	jsr loc_02e308
	bra.w loc_076bdc

loc_076bc0:
	cmpi.w #$c0,($340,a4)
	blt.b loc_076b90
	bsr.w loc_077ad8
	jsr loc_02e308
	bra.w loc_076bdc

loc_076bd6:
	jsr loc_02e308

loc_076bdc:
	clr.b ($2f6,a4)
	bra.w loc_07429a

;--------------------------
loc_076be4:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_07429a
	btst #1,($246,a4)
	beq.w loc_07429a
	btst #3,($24a,a4)
	bne.w loc_07429a
	cmpi.w #$46,($378,a4)
	blt.w loc_07429a
	cmpi.w #$40,($340,a4)
	blt.w loc_07429a
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_077c90
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_076c4e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_076c4e:
	dc.w $0008

	dc.w $000a
	dc.l loc_076c98

	dc.w $000a
	dc.l loc_076d32

	dc.w $000a
	dc.l loc_076ca6

	dc.w $000a
	dc.l loc_076cc8

	dc.w $000a
	dc.l loc_076cea

	dc.w $000a
	dc.l loc_076d0c

	dc.w $000a
	dc.l loc_076d24

	dc.w $000a
	dc.l loc_076c80

;--------------------------
loc_076c80:
	cmpi.w #$c0,($340,a4)
	blt.w loc_076d40
	movea.l #loc_076618,a0
	bsr.w loc_074294
	bra.w loc_076d46

loc_076c98:
	movea.l #loc_075dac,a0
	bsr.w loc_074294
	bra.w loc_076d46

loc_076ca6:
	cmpi.w #$40,($340,a4)
	blt.w loc_076d46
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077ba4
	jsr loc_02e308
	bra.w loc_076d46

loc_076cc8:
	cmpi.w #$40,($340,a4)
	blt.w loc_076d46
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077c00
	jsr loc_02e308
	bra.w loc_076d46

loc_076cea:
	cmpi.w #$40,($340,a4)
	blt.w loc_076d46
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b58
	jsr loc_02e308
	bra.w loc_076d46

loc_076d0c:
	cmpi.w #$40,($340,a4)
	blt.w loc_076d46
	bsr.w loc_077c90
	jsr loc_02e308
	bra.w loc_076d46

loc_076d24:
	movea.l #loc_07586a,a0
	bsr.w loc_0742be
	bra.w loc_07437a

loc_076d32:
	movea.l #loc_076084,a0
	bsr.w loc_074294
	bra.w loc_076d46

loc_076d40:
	jsr loc_02e308

loc_076d46:
	clr.b ($2f6,a4)
	bra.w loc_0742ac

;--------------------------
loc_076d4e:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_07429a
	btst #1,($246,a4)
	beq.w loc_07429a
	btst #3,($24a,a4)
	bne.w loc_07429a
	cmpi.w #$70,($340,a4)
	blt.w loc_07429a
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_076d98(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_076d98:
	dc.w $0009

	dc.w $000a
	dc.l loc_076f68

	dc.w $000a
	dc.l loc_076f28

	dc.w $000a
	dc.l loc_076ef2

	dc.w $000a
	dc.l loc_076e76

	dc.w $000a
	dc.l loc_076ed0

	dc.w $000a
	dc.l loc_076e54

	dc.w $000a
	dc.l loc_076e32

	dc.w $000a
	dc.l loc_076e1a

	dc.w $000a
	dc.l loc_076dd0

;--------------------------
loc_076dd0:
	cmpi.w #$b4,($378,a4)
	bgt.w loc_076de4
	movea.l #loc_075940,a0
	bsr.w loc_0742be

loc_076de4:
	jsr loc_02e496
	jsr loc_02e550
	move.l #$200030,d0
	move.b #2,($2f6,a4)
	moveq #0,d2
	move.w #$54,d2
	jsr loc_02e0f4
	bsr.w loc_077a42
	beq.w loc_076e1a
	jsr loc_02e308
	bra.w loc_07705c

loc_076e1a:
	cmpi.w #$a0,($36c,a4)
	bgt.w loc_07705c
	bsr.w loc_077c6a
	jsr loc_02e308
	bra.w loc_07705c

loc_076e32:
	cmpi.w #$b4,($378,a4)
	blt.w loc_07429a
	movea.l #loc_075924,a0
	bsr.w loc_0742be
	movea.l #loc_075924,a0
	bsr.w loc_0742be
	bra.w loc_07705c

loc_076e54:
	cmpi.w #$32,($378,a4)
	bgt.w loc_07429a
	movea.l #loc_075940,a0
	bsr.w loc_0742be
	movea.l #loc_075940,a0
	bsr.w loc_0742be
	bra.w loc_07705c

loc_076e76:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_076eaa
	movea.l #loc_0759ea,a0
	bsr.w loc_0742be

loc_076e8e:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_076e8e
	movea.l #loc_075a0e,a0
	bsr.w loc_0742be
	bra.w loc_07705c

loc_076eaa:
	movea.l #loc_075a0e,a0
	bsr.w loc_0742be
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_076eaa
	movea.l #loc_075a0e,a0
	bsr.w loc_0742be
	bra.w loc_07705c

loc_076ed0:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_07429a
	movea.l #loc_075a0e,a0
	bsr.w loc_0742be
	bsr.w loc_077cae
	jsr loc_02e308
	bra.w loc_07705c

loc_076ef2:
	cmpi.w #$c8,($378,a4)
	blt.w loc_07705c
	sf ($3cb,a4)
	bsr.w loc_077c00
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	st ($3cb,a4)
	bsr.w loc_077c00
	jsr loc_02e308
	bra.w loc_07705c

loc_076f28:
	cmpi.w #$40,($340,a4)
	blt.w loc_07705c
	cmpi.w #$8c,($378,a4)
	blt.w loc_07705c
	sf ($3cb,a4)
	bsr.w loc_077b0c
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	st ($3cb,a4)
	bsr.w loc_077b0c
	jsr loc_02e308
	bra.w loc_07705c

loc_076f68:
	cmpi.w #$78,($378,a4)
	bgt.w loc_07705c
	bsr.w loc_077cae
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_077cae
	jsr loc_02e308
	bra.w loc_07705c

loc_076f96:
	bsr.w loc_077c90
	jsr loc_02e308
	bra.w loc_07705c

loc_076fa4:
	cmpi.w #$5a,($378,a4)
	bgt.w loc_07705c
	move.b #2,($2f6,a4)
	bsr.w loc_077cae
	jsr loc_02e308
	bra.w loc_07705c

loc_076fc2:
	cmpi.w #$64,($378,a4)
	bgt.w loc_07705c
	bsr.w loc_077d28
	jsr loc_02e308
	bra.w loc_07705c

loc_076fda:
	cmpi.w #$78,($378,a4)
	bgt.w loc_07705c
	move.b #2,($2f6,a4)
	bsr.w loc_077cae
	jsr loc_02e308
	bra.w loc_07705c

loc_076ff8:
	cmpi.w #$6e,($378,a4)
	bgt.w loc_07705c
	bsr.w loc_077cae
	jsr loc_02e308
	bra.w loc_07705c

loc_077010:
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077c00
	jsr loc_02e308
	bra.w loc_07705c

loc_077028:
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_077b58
	jsr loc_02e308
	bra.w loc_07705c

loc_077040:
	bsr.w loc_077c90
	jsr loc_02e308
	bra.w loc_07705c

loc_07704e:
	movea.l #loc_07586a,a0
	bsr.w loc_0742be
	bra.w loc_07437a

loc_07705c:
	clr.b ($2f6,a4)
	bra.w loc_07429a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;palette pointers
;Mah Pal A
loc_077064:
	dc.l loc_077288,loc_077328,loc_077228,loc_077208
	dc.l loc_0773c8,loc_0773e8,loc_077408,loc_077428
	dc.l loc_077448,loc_077468,loc_077248,loc_077268
	dc.l loc_077488,loc_077508,loc_077548,loc_077588
	dc.l loc_077528,loc_077568,loc_0775a8,loc_0775c8
	dc.l $00000000

;Mah Pal B
loc_0770b8:
	dc.l loc_0772a8,loc_077348,loc_077228,loc_077208
	dc.l loc_0773c8,loc_0773e8,loc_077408,loc_077428
	dc.l loc_077448,loc_077468,loc_077248,loc_077268
	dc.l loc_0774a8,loc_077508,loc_077548,loc_077588
	dc.l loc_077528,loc_077568,loc_0775a8,loc_0775c8
	dc.l $00000000

;Mah Pal C
loc_07710c:
	dc.l loc_0772c8,loc_077368,loc_077228,loc_077208
	dc.l loc_0773c8,loc_0773e8,loc_077408,loc_077428
	dc.l loc_077448,loc_077468,loc_077248,loc_077268
	dc.l loc_0774c8,loc_077508,loc_077548,loc_077588
	dc.l loc_077528,loc_077568,loc_0775a8,loc_0775c8
	dc.l $00000000

;Mah Pal D
loc_077160:
	dc.l loc_0772e8,loc_077388,loc_077228,loc_077208
	dc.l loc_0773c8,loc_0773e8,loc_077408,loc_077428
	dc.l loc_077448,loc_077468,loc_077248,loc_077268
	dc.l loc_0774e8,loc_077508,loc_077548,loc_077588
	dc.l loc_077528,loc_077568,loc_0775a8,loc_0775c8
	dc.l $00000000

;Mah Pal E
loc_0771b4:
	dc.l loc_077308,loc_0773a8,loc_077228,loc_077208
	dc.l loc_0773c8,loc_0773e8,loc_077408,loc_077428
	dc.l loc_077448,loc_077468,loc_077248,loc_077268
	dc.l loc_0774a8,loc_077508,loc_077548,loc_077588
	dc.l loc_077528,loc_077568,loc_0775a8,loc_0775c8
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Palette Data
loc_077208:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

loc_077228:
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

loc_077248:
	dc.w $7111,$700a,$601c,$700f,$112f,$713f,$324f,$526f
	dc.w $337f,$539f,$73af,$34bf,$74df,$75ff,$7aff,$7fff

loc_077268:
	dc.w $7888,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_077288:
	dc.w $09ac,$43e0,$2533,$3a42,$7d74,$6fa6,$6fc7,$0666
	dc.w $0999,$7ccc,$7fff,$4900,$7d00,$7f21,$6f54,$7ff3

loc_0772a8:
	dc.w $09ac,$43e0,$7432,$1a51,$6d73,$2fa6,$4fd9,$7666
	dc.w $2889,$2ccd,$7fff,$1250,$6162,$4192,$32b2,$7ff3

loc_0772c8:
	dc.w $09ac,$43e0,$1421,$6831,$6c52,$0f84,$4fa5,$1553
	dc.w $1886,$0bba,$7ddd,$4427,$163a,$085e,$597f,$5ff3

loc_0772e8:
	dc.w $09ac,$43e0,$3211,$6333,$3654,$2976,$7b97,$1553
	dc.w $1886,$0bba,$7ddd,$3334,$5457,$277a,$59ac,$5fd0

loc_077308:
	dc.w $09ac,$43e0,$5321,$0932,$2c52,$4e83,$5fa4,$6657
	dc.w $2a8b,$0dcf,$7fef,$6851,$0c90,$0fd0,$6ff0,$6efb

loc_077328:
	dc.w $0999,$40b0,$3100,$2600,$7930,$6b62,$4c93,$0222
	dc.w $0555,$0999,$7ccc,$0600,$7900,$0c11,$6c43,$2cb1

loc_077348:
	dc.w $0999,$40b0,$3100,$4610,$4951,$4b84,$4ca7,$0222
	dc.w $0555,$0999,$7ccc,$7020,$7040,$5060,$7070,$7cc0

loc_077368:
	dc.w $0999,$40b0,$5001,$7500,$6720,$2b41,$6c62,$4220
	dc.w $1553,$5887,$3bbb,$6004,$3206,$241a,$263c,$7cc0

loc_077388:
	dc.w $0999,$40b0,$7000,$7000,$3210,$2532,$7753,$4220
	dc.w $1553,$5887,$3bbb,$7000,$5013,$2336,$2669,$5ca0

loc_0773a8:
	dc.w $0999,$40b0,$7000,$0410,$3810,$5a40,$4c60,$6213
	dc.w $5546,$098b,$7cbc,$7410,$4750,$0b90,$6cc0,$6cc8

loc_0773c8:
	dc.w $6339,$7a00,$3d00,$7f00,$5f60,$7f90,$6ff1,$6ffa
	dc.w $7a00,$7f00,$7f90,$6ff1,$7f60,$5f80,$7fa0,$7fff

loc_0773e8:
	dc.w $0777,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_077408:
	dc.w $0666,$100f,$105f,$109f,$10cf,$30ff,$7cff,$105f
	dc.w $109f,$10cf,$30ff,$100f,$105f,$109f,$10cf,$30ff

loc_077428:
	dc.w $2210,$7fff,$3aff,$10cf,$109f,$105f,$100f,$30ff
	dc.w $10cf,$109f,$105f,$7aff,$10cf,$109f,$105f,$100f

loc_077448:
	dc.w $1498,$750a,$672d,$394f,$796f,$3b8f,$5ccf,$491c
	dc.w $6a3d,$2c6e,$0d9f,$6a3d,$3b39,$5c5b,$1e6d,$7f7f

loc_077468:
	dc.w $7888,$3053,$4174,$3384,$54a4,$37c5,$3af6,$4174
	dc.w $06b3,$58d4,$5bf6,$4174,$71a6,$23b8,$44da,$06fc

loc_077488:
	dc.w $7373,$0025,$4b00,$4f00,$7f70,$5fa0,$5fd0,$6ff0
	dc.w $7fff,$7370,$7370,$6371,$7371,$6372,$7372,$6373

loc_0774a8:
	dc.w $0aaa,$0025,$200c,$113f,$127f,$509f,$35cf,$36ff
	dc.w $3eff,$6370,$7370,$6371,$7371,$6372,$7372,$6373

loc_0774c8:
	dc.w $1286,$2040,$2060,$3080,$50b0,$00d0,$20f0,$6bf6
	dc.w $6ffc,$43d0,$53d0,$43d1,$53d1,$43d2,$53d2,$43d3

loc_0774e8:
	dc.w $53d3,$5603,$5806,$3b29,$4d5b,$5e7c,$7fad,$5fdf
	dc.w $5fff,$43d8,$53d8,$43d9,$53d9,$43da,$53da,$43db

loc_077508:
	dc.w $53d3,$0090,$70a0,$50c0,$54d0,$26d1,$19e2,$3be4
	dc.w $4cf4,$6df2,$6ffb,$7fff,$4a3f,$1c7f,$3ebf,$3fef

loc_077528:
	dc.w $53db,$3b39,$6b4a,$1c6a,$5c7b,$2d8c,$3d9c,$6dad
	dc.w $1ecd,$5ede,$2fef,$7fff,$108f,$30af,$10df,$54ff

loc_077548:
	dc.w $7ff3,$325f,$337f,$539f,$73af,$30cf,$30df,$30ef
	dc.w $15ff,$7aff,$3eff,$7fff,$3b39,$6c5d,$3e8f,$1fbf

loc_077568:
	dc.w $73db,$0090,$70a0,$50c0,$54d0,$26d1,$19e2,$3be4
	dc.w $4cf4,$6cf0,$6ffb,$7fff,$1caf,$1dcf,$7edf,$7fff

loc_077588:
	dc.w $53e3,$4d00,$4e00,$7f40,$5f70,$5f80,$6f91,$5fb1
	dc.w $4fd2,$5fe6,$4ff9,$7fff,$70a0,$54d0,$3be4,$6ffb

loc_0775a8:
	dc.w $53eb,$713f,$526f,$337f,$739f,$14bf,$34cf,$54ef
	dc.w $35ef,$75ff,$7aff,$7fff,$4e00,$5f70,$5fb1,$5fe6

loc_0775c8:
	dc.w $7ccc,$2c84,$7c94,$5db5,$5ec7,$5ec6,$0fd9,$7fd9
	dc.w $7feb,$4ffd,$6fff,$43c9,$53c9,$43ca,$53ca,$43cb

;--------------------------
MahPRGStart:;0775e8
	move.l #loc_077f42,($86,a4)
	move.l #loc_074268,($56,a4)
	move.l #loc_077688,($1b6,a4)
	move.l #loc_077698,($1ba,a4)
	move.l #loc_0776a2,($1be,a4)
	move.l #loc_0776ae,($1c2,a4)
	move.l #loc_07423c,($1c6,a4)
	move.l #loc_077f40,($1ce,a4)
	move.l #loc_07781c,($1ca,a4)
	move.l #loc_079120,($1d2,a4)
	move.l #loc_095820,($1d6,a4)
	move.l #loc_078f3c,($1da,a4)
	move.l #loc_078ff0,($1de,a4)
	move.l #loc_078f5c,($1e2,a4)
	move.l #loc_078f0c,($1e6,a4)
	move.l #loc_078ef0,($1ea,a4)
	move.l #loc_079024,($1ee,a4)
	bsr.w loc_074210
	andi.w #$f0ff,($2ee,a4)
	move.l #loc_0792d8,($2d0,a4)
	sf ($bc,a4)
	rts

;--------------------------
loc_077688:
	clr.w ($550,a4)
	clr.w ($552,a4)
	jsr loc_02a9c4
	rts

;--------------------------
loc_077698:
	clr.w ($550,a4)
	clr.w ($552,a4)
	rts

;--------------------------
loc_0776a2:
	clr.w ($552,a4)
	move.w ($2ba,a3),($2ba,a4)
	rts

;--------------------------
;Special Move Inputs
loc_0776ae:
	lea ($3d0,a4),a0
	jsr loc_02cbba
	move.b ($3d0,a4),d0
	move.b d0,($3c0,a4)
	move.b ($3d4,a4),d0
	move.b d0,($3c1,a4)
	
	lea ($3d8,a4),a0
	lea loc_0777dc(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c2,a4)
	or.b d0,($3c2,a4)
	andi.b #$55,($3c2,a4)
	
	lea ($3e0,a4),a0
	lea loc_0777e6(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c3,a4)
	or.b d0,($3c3,a4)
	andi.b #$aa,($3c3,a4)
	
	lea ($3e8,a4),a0
	lea loc_0777f0(pc),a1
	move.w #4,d7
	jsr loc_02c946
	and.b d1,($3c4,a4)
	or.b d0,($3c4,a4)
	andi.b #$55,($3c4,a4)

	tst.b ($2fb,a4)
	beq.b loc_077764
	btst #3,($2f6,a4)
	beq.b loc_07773e
	move.b #$80,($3c5,a4)
	bra.b loc_077764

loc_07773e:
	cmpi.b #4,($2f6,a4)
	bne.b loc_07774e
	move.b #$40,($3c5,a4)
	bra.b loc_077764

loc_07774e:
	cmpi.b #5,($2f6,a4)
	bne.b loc_07775e
	move.b #$40,($3c5,a4)
	bra.b loc_077764

loc_07775e:
	move.b #$20,($3c5,a4)

loc_077764:
	lea ($3fa,a4),a0
	lea loc_0777fc(pc),a1
	move.w #5,d7
	jsr loc_02c946
	and.b d1,($3c6,a4)
	or.b d0,($3c6,a4)
	andi.b #$55,($3c6,a4)

	lea ($406,a4),a0
	move.b #5,d7
	jsr loc_02cc42
	and.b d1,($3c7,a4)
	or.b d0,($3c7,a4)
	andi.b #$aa,($3c7,a4)

	lea ($40c,a4),a0
	lea loc_07780c(pc),a1
	move.w #5,d7
	jsr loc_02c946
	and.b d1,($3c8,a4)
	or.b d0,($3c8,a4)
	andi.b #$55,($3c8,a4)
	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$50,d0
	seq d0
	or.b d0,($3c9,a4)
	tst.b ($2fc,a4)
	smi d0
	or.b d0,($3ca,a4)
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Specinput data
loc_0777dc:
	dc.w $0202,$0806,$0a08,$0408,$0a00

loc_0777e6:
	dc.w $0202,$0806,$0a08,$0408,$0a00

loc_0777f0:
	dc.w $060a,$0802,$0208,$0a06,$0808,$040a

loc_0777fc:
	dc.w $0202,$080a,$0608,$0804,$0c02,$020c,$0a06,$0c00

loc_07780c:
	dc.w $0202,$0806,$0a08,$0408,$0c02,$020c,$060a,$0c00

;--------------------------
loc_07781c:
	bsr.w loc_077884
	bne.w loc_077830
	bsr.w loc_07795e
	bne.w loc_077830
	bsr.w loc_0779c0

loc_077830:
	rts

;--------------------------
loc_077832:
	btst #6,($2f7,a4)
	beq.w loc_077858
	move.b ($2f6,a4),d0
	cmpi.b #4,d0
	beq.w loc_077850
	cmpi.b #8,d0
	bne.w loc_077858

loc_077850:
	bsr.w loc_077a0e
	bne.w loc_077882

loc_077858:
	btst #7,($2f7,a4)
	beq.w loc_07787e
	move.b ($2f6,a4),d0
	cmpi.b #4,d0
	beq.w loc_077876
	cmpi.b #8,d0
	bne.w loc_07787e

loc_077876:
	bsr.w loc_077a28
	bne.w loc_077882

loc_07787e:
	clr.w d0
	rts

loc_077882:
	rts

;--------------------------
loc_077884:
	tst.b ($3c7,a4)
	beq.b loc_077892
	bsr.w loc_077a90
	bne.w loc_07795c

loc_077892:
	tst.b ($3c6,a4)
	beq.b loc_0778a0
	bsr.w loc_077a42
	bne.w loc_07795c

loc_0778a0:
	tst.b ($3c8,a4)
	beq.b loc_0778ae
	bsr.w loc_077ad8
	bne.w loc_07795c

loc_0778ae:
	move.b ($3c3,a4),d0
	andi.b #$f0,d0
	beq.b loc_0778c0
	bsr.w loc_077b58
	bne.w loc_07795c

loc_0778c0:
	move.b ($3c2,a4),d0
	andi.b #$f0,d0
	beq.b loc_0778d2
	bsr.w loc_077b0c
	bne.w loc_07795c

loc_0778d2:
	move.b ($3c5,a4),d0
	andi.b #$f0,d0
	beq.b loc_0778e4
	bsr.w loc_077c00
	bne.w loc_07795c

loc_0778e4:
	bsr.w loc_077832
	bne.w loc_07795c
	move.b ($3c4,a4),d0
	andi.b #$c0,d0
	beq.b loc_0778fe
	bsr.w loc_077bd2
	bne.w loc_07795c

loc_0778fe:
	move.b ($3c4,a4),d0
	andi.b #$30,d0
	beq.b loc_077910
	bsr.w loc_077ba4
	bne.w loc_07795c

loc_077910:
	move.b ($3c3,a4),d0
	andi.b #$f,d0
	beq.b loc_077922
	bsr.w loc_077b58
	bne.w loc_07795c

loc_077922:
	move.b ($3c2,a4),d0
	andi.b #$f,d0
	beq.b loc_077934
	bsr.w loc_077b0c
	bne.w loc_07795c

loc_077934:
	move.b ($3c4,a4),d0
	andi.b #$c,d0
	beq.b loc_077946
	bsr.w loc_077bd2
	bne.w loc_07795c

loc_077946:
	move.b ($3c4,a4),d0
	andi.b #3,d0
	beq.b loc_077958
	bsr.w loc_077ba4
	bne.w loc_07795c

loc_077958:
	clr.w d0
	rts

loc_07795c:
	rts

;--------------------------
loc_07795e:
	tst.b ($3c9,a4)
	beq.b loc_07796c
	bsr.w loc_077c90
	bne.w loc_0779be

loc_07796c:
	btst #7,($2f7,a4)
	beq.b loc_07797c
	bsr.w loc_077cae
	bne.w loc_0779be

loc_07797c:
	btst #6,($2f7,a4)
	beq.b loc_07798c
	bsr.w loc_077d28
	bne.w loc_0779be

loc_07798c:
	btst #5,($2f7,a4)
	beq.b loc_07799c
	bsr.w loc_077db6
	bne.w loc_0779be

loc_07799c:
	btst #4,($2f7,a4)
	beq.b loc_0779ac
	bsr.w loc_077e62
	bne.w loc_0779be

loc_0779ac:
	tst.b ($3ca,a4)
	beq.b loc_0779ba
	bsr.w loc_077c6a
	bne.w loc_0779be

loc_0779ba:
	clr.w d0
	rts

loc_0779be:
	rts

;--------------------------
loc_0779c0:
	tst.b ($209,a4)
	bmi.w loc_0779e8
	tst.b ($3c1,a4)
	beq.b loc_0779d6
	bsr.w loc_077ef0
	bne.w loc_077a08

loc_0779d6:
	tst.b ($3c0,a4)
	beq.b loc_0779e4
	bsr.w loc_077f18
	bne.w loc_077a08

loc_0779e4:
	clr.w d0
	rts

loc_0779e8:
	tst.b ($3c0,a4)
	beq.b loc_0779f6
	bsr.w loc_077ef0
	bne.w loc_077a08

loc_0779f6:
	tst.b ($3c1,a4)
	beq.b loc_077a04
	bsr.w loc_077f18
	bne.w loc_077a08

loc_077a04:
	clr.w d0
	rts

loc_077a08:
	rts

;--------------------------
loc_077a0a:
	clr.w d0
	rts

;--------------------------
loc_077a0e:
	cmpi.w #$20,($226,a4)
	bgt.b loc_077a0a
	jsr loc_02a4dc
	beq.b loc_077a0a
	move.w #$24,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077a28:
	cmpi.w #$24,($226,a4)
	bgt.b loc_077a0a
	jsr loc_02a4dc
	beq.b loc_077a0a
	move.w #$25,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077a42:
	jsr loc_02c78a
	beq.b loc_077a0a
	btst #1,($246,a4)
	beq.b loc_077a0a
	tst.b ($2b2,a4)
	bne.b loc_077a0a
	btst #5,($24a,a4)
	beq.b loc_077a68
	tst.w ($550,a4)
	bne.b loc_077a68
	bra.b loc_077a0a

loc_077a68:
	tst.b (1,a4)
	bpl.b loc_077a7c
	move.b ($3c6,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_077a82

loc_077a7c:
	move.b ($3cb,a4),($ba,a4)

loc_077a82:
	sf ($3fb,a4)
	move.w #$21,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077a90:
	jsr loc_02c78a
	beq.w loc_077a0a
	btst #5,($24a,a4)
	beq.b loc_077ab6
	tst.w ($550,a4)
	bne.b loc_077ab6
	tst.w ($552,a4)
	bne.b loc_077ab2
	bra.w loc_077a0a

loc_077ab2:
	bra.w loc_077aca

loc_077ab6:
	cmpi.w #$28,($226,a4)
	bgt.w loc_077a0a
	jsr loc_02a4dc
	beq.w loc_077a0a

loc_077aca:
	sf ($407,a4)
	move.w #$22,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077ad8:
	jsr loc_02c78a
	beq.w loc_077a0a
	btst #1,($246,a4)
	beq.w loc_077a0a
	btst #5,($24a,a4)
	beq.b loc_077afe
	tst.w ($550,a4)
	bne.b loc_077afe
	bra.w loc_077a0a

loc_077afe:
	sf ($40d,a4)
	move.w #$23,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077b0c:
	btst #5,($24a,a4)
	bne.w loc_077a0a
	btst #1,($246,a4)
	beq.w loc_077a0a
	tst.b ($1,a4)
	bpl.b loc_077b34
	move.b ($3c2,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_077b3a

loc_077b34:
	move.b ($3cb,a4),($ba,a4)

loc_077b3a:
	sf ($3d9,a4)
	tst.b ($ba,a4)
	bne.b loc_077b4e
	move.w #$18,d0
	move.w d0,($2fe,a4)
	rts

loc_077b4e:
	move.w #$19,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077b58:
	btst #5,($24a,a4)
	bne.w loc_077a0a
	btst #1,($246,a4)
	beq.w loc_077a0a
	tst.b ($1,a4)
	bpl.b loc_077b80
	move.b ($3c3,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_077b86

loc_077b80:
	move.b ($3cb,a4),($ba,a4)

loc_077b86:
	sf ($3e1,a4)
	tst.b ($ba,a4)
	bne.b loc_077b9a
	move.w #$1a,d0
	move.w d0,($2fe,a4)
	rts

loc_077b9a:
	move.w #$1b,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077ba4:
	btst #5,($24a,a4)
	bne.w loc_077a0a
	btst #1,($246,a4)
	beq.w loc_077a0a
	tst.b ($2b2,a4)
	bne.w loc_077a0a
	st ($ba,a4)
	sf ($3e9,a4)
	move.w #$1c,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077bd2:
	btst #5,($24a,a4)
	bne.w loc_077a0a
	btst #1,($246,a4)
	beq.w loc_077a0a
	tst.b ($2b2,a4)
	bne.w loc_077a0a
	st ($ba,a4)
	sf ($3e9,a4)
	move.w #$1d,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
;Balloon
loc_077c00:
	btst #5,($24a,a4)
	bne.w loc_077a0a
	btst #1,($246,a4)
	beq.w loc_077a0a
	tst.b (1,a4)
	bpl.b loc_077c3a
	sf ($ba,a4)
	btst #6,($3c5,a4)
	beq.b loc_077c2c
	move.b #1,($ba,a4)

loc_077c2c:
	btst #7,($3c5,a4)
	beq.b loc_077c38
	st ($ba,a4)

loc_077c38:
	bra.b loc_077c40

loc_077c3a:
	move.b ($3cb,a4),($ba,a4)

loc_077c40:
	sf ($3f3,a4)
	tst.b ($ba,a4)
	bmi.b loc_077c60
	bne.b loc_077c56
	move.w #$1f,d0
	move.w d0,($2fe,a4)
	rts

loc_077c56:
	move.w #$20,d0
	move.w d0,($2fe,a4)
	rts

loc_077c60:
	move.w #$1e,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077c6a:
	btst #4,($24a,a4)
	bne.w loc_077a0a
	btst #1,($246,a4)
	beq.w loc_077a0a
	tst.w ($554,a4)
	bne.w loc_077a0a
	move.w #$28,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077c90:
	btst #4,($24a,a4)
	bne.w loc_077a0a
	btst #1,($246,a4)
	beq.w loc_077a0a
	move.w #$17,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077cae:;HK
	btst #1,($246,a4)
	bne.w loc_077ce2
	btst #0,($24a,a4)
	bne.w loc_077a0a
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_077cd8
	move.w #$15,d0
	move.w d0,($2fe,a4)
	rts

loc_077cd8:
	move.w #$16,d0
	move.w d0,($2fe,a4)
	rts

loc_077ce2:
	btst #1,($246,a4)
	beq.w loc_077a0a
	btst #3,($24a,a4)
	bne.w loc_077a0a
	btst #1,($2f6,a4)
	bne.w loc_077d1e
	cmpi.w #$38,($226,a4)
	bgt.w loc_077d14
	move.w #$a,d0
	move.w d0,($2fe,a4)
	rts

loc_077d14:
	move.w #$b,d0
	move.w d0,($2fe,a4)
	rts

loc_077d1e:
	move.w #$c,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077d28:;HP
	btst #1,($246,a4)
	bne.w loc_077d70
	btst #0,($24a,a4)
	bne.w loc_077a0a
	btst #1,($2f6,a4)
	bne.w loc_077d66
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_077d5c
	move.w #$12,d0
	move.w d0,($2fe,a4)
	rts

loc_077d5c:
	move.w #$13,d0
	move.w d0,($2fe,a4)
	rts

loc_077d66:
	move.w #$14,d0
	move.w d0,($2fe,a4)
	rts

loc_077d70:
	btst #1,($246,a4)
	beq.w loc_077a0a
	btst #3,($24a,a4)
	bne.w loc_077a0a
	btst #1,($2f6,a4)
	bne.w loc_077dac
	cmpi.w #$30,($226,a4)
	bgt.w loc_077da2
	move.w #7,d0
	move.w d0,($2fe,a4)
	rts

loc_077da2:
	move.w #8,d0
	move.w d0,($2fe,a4)
	rts

loc_077dac:
	move.w #9,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077db6:;LK
	btst #1,($246,a4)
	bne.w loc_077dfe
	btst #0,($24a,a4)
	bne.w loc_077a0a
	btst #1,($2f6,a4)
	bne.w loc_077df4
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_077dea
	move.w #$f,d0
	move.w d0,($2fe,a4)
	rts

loc_077dea:
	move.w #$10,d0
	move.w d0,($2fe,a4)
	rts

loc_077df4:
	move.w #$11,d0
	move.w d0,($2fe,a4)
	rts

loc_077dfe:
	btst #1,($246,a4)
	beq.w loc_077a0a
	btst #3,($24a,a4)
	beq.w loc_077e30
	btst #1,($24a,a4)
	bne.w loc_077a0a
	cmpi.b #1,($2c6,a4)
	bne.w loc_077a0a
	btst #1,($2f6,a4)
	beq.w loc_077a0a

loc_077e30:
	btst #1,($2f6,a4)
	bne.w loc_077e58
	cmpi.w #$28,($226,a4)
	bgt.w loc_077e4e
	move.w #4,d0
	move.w d0,($2fe,a4)
	rts

loc_077e4e:
	move.w #$5,d0
	move.w d0,($2fe,a4)
	rts

loc_077e58:
	move.w #$6,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077e62:;LP
	btst #1,($246,a4)
	bne.w loc_077e96
	btst #0,($24a,a4)
	bne.w loc_077a0a
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_077e8c
	move.w #$d,d0
	move.w d0,($2fe,a4)
	rts

loc_077e8c:
	move.w #$e,d0
	move.w d0,($2fe,a4)
	rts

loc_077e96:
	btst #1,($246,a4)
	beq.w loc_077a0a
	btst #3,($24a,a4)
	beq.w loc_077ebe
	btst #1,($24a,a4)
	bne.w loc_077a0a
	cmpi.b #1,($2c6,a4)
	bne.w loc_077a0a

loc_077ebe:
	btst #1,($2f6,a4)
	bne.w loc_077ee6
	cmpi.w #$30,($226,a4)
	bgt.w loc_077edc
	move.w #1,d0
	move.w d0,($2fe,a4)
	rts

loc_077edc:
	move.w #2,d0
	move.w d0,($2fe,a4)
	rts

loc_077ee6:
	move.w #3,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077ef0:
	btst #3,($24a,a4)
	bne.w loc_077a0a
	btst #1,($246,a4)
	beq.w loc_077a0a
	btst #4,($248,a4)
	bne.w loc_077a0a
	move.w #$27,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077f18:
	btst #3,($24a,a4)
	bne.w loc_077a0a
	btst #1,($246,a4)
	beq.w loc_077a0a
	btst #4,($248,a4)
	bne.w loc_077a0a
	move.w #$26,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_077f40:
	rts

;--------------------------
;Animation Properties Programming
loc_077f42:
	tst.b (-$3e4,a5)
	bne.w loc_077f70
	cmpi.w #1,(-$f2e,a5)
	bgt.w loc_077f70
	movea.l #loc_0791c4,a0
	clr.w d0
	jsr loc_0226f0

loc_077f62:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_077f62

loc_077f70:
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_077f7a:
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_077f86:
	jsr loc_02269c
	btst #4,($248,a4)
	bne.w loc_077fb2
	btst #0,($2f6,a4)
	beq.w loc_077fb2
	tst.w ($20c,a4)
	bne.w loc_077fb2
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_077fb2:
	btst #2,($2e1,a4)
	beq.b loc_077f86
	movea.l ($1de,a4),a0
	movea.l (4,a0),a0
	jmp (a0)

;--------------------------
;Regular grab
loc_077fc4:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	sf ($bd,a4)
	tst.b (1,a4)
	bpl.w loc_077ffc
	btst #3,($2f6,a4)
	sne ($bd,a4)

loc_077ffc:
	move.l #$80000,d2
	move.l #$20000,d3
	jsr loc_02a59c
	lea loc_078056(pc),a0
	jsr loc_02a554

loc_078018:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.w loc_07803a
	sf ($b6,a4)
	tst.b ($bd,a4)
	beq.w loc_07803a
	not.b ($208,a4)
	not.b ($208,a3)

loc_07803a:
	btst #2,($2e1,a4)
	beq.b loc_078018
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_078056:;Thrown pointers
	dc.l loc_07c2a4,loc_07c326,loc_07c3a8,loc_07c42a
	dc.l loc_07c4ac,loc_07c52e,loc_07c5b0,loc_07c632
	dc.l loc_07c6b4,loc_07c736,loc_07c2a4,loc_07c2a4
	dc.l loc_07c2a4,loc_07c2a4,loc_07c2a4,loc_07c2a4

;--------------------------
loc_078096:;720 Grab
	move.w #9,($be,a4)
	move.w #4,($c0,a4)
	move.w #8,($c2,a4)
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	move.l #-$30000,d2
	move.l #$60000,d3
	jsr loc_02a59c
	lea loc_078212(pc),a0
	jsr loc_02a554
	jsr loc_02c8b8
	swap d0
	mulu.w ($c2,a4),d0
	move.w d0,($c2,a4)
	mulu.w ($be,a4),d0
	move.w d0,($c6,a4)

loc_0780f8:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_0780f8
	st d5

loc_078108:
	move.w ($c2,a4),($c4,a4)
	move.w ($c0,a4),d6
	subq.w #1,d6
	subq.w #1,($be,a4)
	move.w #-$90,($27e,a3)
	move.w #-$80,($280,a3)
	move.w #-$28,($282,a3)
	move.w #-$8,($284,a3)
	not.b d5
	bmi.b loc_078154
	movea.l #loc_07c864,a0
	clr.w d0
	jsr loc_0226f0
	lea loc_078252(pc),a0
	jsr loc_02a554
	move.w #-$10,($284,a3)
	bra.b loc_078172

loc_078154:
	movea.l #loc_07c880,a0
	clr.w d0
	jsr loc_0226f0
	lea loc_078292(pc),a0
	jsr loc_02a554
	addi.w #$10,($282,a3)

loc_078172:
	jsr loc_02269c
	bsr.w loc_0781ea
	subq.w #1,d6
	bpl.b loc_078172
	clr.w d6
	tst.b (-$3dd,a5)
	bne.w loc_0781b0
	btst #7,($249,a3)
	bne.w loc_0781b0
	btst #1,($249,a3)
	bne.w loc_0781b0
	tst.w ($be,a4)
	ble.w loc_0781b0
	tst.w ($c4,a4)
	bgt.b loc_078172
	bra.w loc_078108

loc_0781b0:
	movea.l #loc_07c89c,a0
	clr.w d0
	jsr loc_0226f0
	lea loc_0782d2(pc),a0
	jsr loc_02a554

loc_0781c8:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_0781c8
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_0781ea:
	jsr loc_02c8b8
	sub.w d0,($c4,a4)
	exg a3,a4
	jsr loc_02c8b8
	exg a3,a4
	move.w d0,d1
	add.w d1,d1
	swap d0
	sub.w d0,d1
	sub.w d1,($c6,a4)
	bpl.b loc_078210
	clr.w ($be,a4)

loc_078210:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_078212:
	dc.l loc_07c90e,loc_07c9b8,loc_07ca62,loc_07cb0c
	dc.l loc_07cbb6,loc_07cc60,loc_07cd0a,loc_07cdb4
	dc.l loc_07ce5e,loc_07cf08,loc_07c90e,loc_07c90e
	dc.l loc_07c90e,loc_07c90e,loc_07c90e,loc_07c90e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_078252:
	dc.l loc_07c942,loc_07c9ec,loc_07ca96,loc_07cb40
	dc.l loc_07cbea,loc_07cc94,loc_07cd3e,loc_07cde8
	dc.l loc_07ce92,loc_07cf3c,loc_07c942,loc_07c942
	dc.l loc_07c942,loc_07c942,loc_07c942,loc_07c942

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_078292:
	dc.l loc_07c962,loc_07ca0c,loc_07cab6,loc_07cb60
	dc.l loc_07cc0a,loc_07ccb4,loc_07cd5e,loc_07ce08
	dc.l loc_07ceb2,loc_07cf5c,loc_07c962,loc_07c962
	dc.l loc_07c962,loc_07c962,loc_07c962,loc_07c962

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0782d2:
	dc.l loc_07c982,loc_07ca2c,loc_07cad6,loc_07cb80
	dc.l loc_07cc2a,loc_07ccd4,loc_07cd7e,loc_07ce28
	dc.l loc_07ced2,loc_07cf7c,loc_07c982,loc_07c982
	dc.l loc_07c982,loc_07c982,loc_07c982,loc_07c982

;--------------------------
loc_078312:
	jsr loc_02c7ae
	clr.l ($216,a4)
	clr.l ($21a,a4)
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	move.w #$10,d2
	move.w #-$78,d3
	jsr loc_02c7be
	move.l #-$80000,d2
	move.l #-$42800,d3
	jsr loc_02a59c
	lea loc_0783b2(pc),a0
	jsr loc_02a554

loc_078364:
	jsr loc_02269c
	tst.b ($b7,a4)
	bne.w loc_078384
	tst.b ($b6,a4)
	beq.b loc_078396
	jsr loc_02a642
	jsr loc_02a702

loc_078384:
	sf ($b6,a4)
	sf ($b7,a4)
	exg a3,a4
	jsr loc_02ee5a
	exg a3,a4

loc_078396:
	btst #2,($2e1,a4)
	beq.b loc_078364
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0783b2:
	dc.l loc_07d228,loc_07d2c0,loc_07d358,loc_07d3f0
	dc.l loc_07d488,loc_07d520,loc_07d5b8,loc_07d650
	dc.l loc_07d6e8,loc_07d780,loc_07d228,loc_07d228
	dc.l loc_07d228,loc_07d228,loc_07d228,loc_07d228

;--------------------------
loc_0783f2:
	move.b ($209,a4),($208,a4)
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	sf ($bb,a4)

loc_07840e:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_07843a
	sf ($b6,a4)
	movem.l d2,-(a7)
	move.w #$34,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_078440
	move.b ($ba,a4),($66,a0)

loc_07843a:
	tst.b ($bb,a4)
	beq.b loc_07840e

loc_078440:
	clr.w ($2ca,a4)
	movea.l #loc_07b3ee,a0
	clr.w d0
	jsr loc_0226f0

loc_078452:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_078452
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0) 

;--------------------------
loc_07846a:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	sf ($273,a4)
	move.b ($209,a4),($208,a4)

loc_078486:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_078486
	move.w #$41,d7
	movem.l d2,-(a7)
	move.w #$35,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_0784c0
	move.b ($ba,a4),($66,a0)
	move.w d7,($2ca,a4)

loc_0784b6:
	jsr loc_02269c
	dbra d7,loc_0784b6

loc_0784c0:
	clr.w ($2ca,a4)
	movea.l #loc_07b820,a0
	clr.w d0
	jsr loc_0226f0

loc_0784d2:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_0784d2
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_0784ea:
	jsr loc_02c7ae
	st ($24a,a4)
	st ($bc,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_07850c:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_07852a
	sf ($b9,a4)
	move.w #0,d2
	move.w #-$7a,d3
	jsr loc_02c7be

loc_07852a:
	tst.b ($b7,a4)
	beq.b loc_07850c

loc_078530:
	jsr loc_02269c
	addi.l #$b600,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_078530
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

;--------------------------
loc_078550:
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	sf ($273,a4)

loc_078572:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_078590
	sf ($b9,a4)
	move.w #$24,d2
	move.w #-$78,d3
	jsr loc_02c7be

loc_078590:
	btst #2,($2e1,a4)
	beq.b loc_078572
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_0785a2:
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	sf ($273,a4)

loc_0785b6:
	jsr loc_0290b8
	jsr loc_02269c
	tst.b ($273,a4)
	beq.b loc_0785e0
	sf ($273,a4)
	tst.b ($b6,a4)
	beq.b loc_0785d8
	clr.l ($216,a4)
	bra.b loc_0785e0

loc_0785d8:
	subi.l #$20000,($216,a4)

loc_0785e0:
	btst #3,($24a,a4)
	bne.w loc_078606
	btst #0,($2f6,a4)
	beq.w loc_078606
	tst.w ($20c,a4)
	bne.w loc_078606
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_078606:
	btst #2,($2e1,a4)
	beq.b loc_0785b6
	btst #1,($248,a4)
	bne.w loc_078622
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_078622:
	movea.l ($1de,a4),a0
	movea.l ($4,a0),a0
	jmp (a0)

;--------------------------
loc_07862c:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_078644:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_078644
	sf ($b6,a4)
	tst.b ($ba,a4)
	bne.b loc_078674
	move.l #$30000,($216,a4)
	move.l #-$c0000,($21a,a4)
	moveq #0,d5
	move.l #$2000,d6
	bra.b loc_0786a8

loc_078674:
	bmi.b loc_078690
	move.l #-$30000,($216,a4)
	move.l #-$c0000,($21a,a4)
	moveq #0,d5
	move.l #$2000,d6
	bra.b loc_0786a8

loc_078690:
	move.l #$50000,($216,a4)
	move.l #-$c0000,($21a,a4)
	moveq #0,d5
	move.l #$1800,d6

loc_0786a8:
	jsr loc_02269c
	add.l d5,($21a,a4)
	add.l d6,d5
	tst.b ($247,a4)
	beq.b loc_0786c0
	move.w #1,($2bc,a4)

loc_0786c0:
	btst #1,($246,a4)
	beq.b loc_0786a8
	clr.l ($216,a4)
	clr.l ($21a,a4)
	movea.l #loc_07b24e,a0
	clr.w d0
	jsr loc_0226f0

loc_0786de:
	jsr loc_02269c
	tst.b ($b7,a4)
	beq.b loc_0786de
	move.b ($209,a4),d0
	cmp.b ($208,a4),d0
	beq.b loc_0786f8
	neg.l ($216,a4)

loc_0786f8:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_0786f8
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_078710:
	st ($24a,a4)

loc_078714:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_078714
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_07872c:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_07886e
	move.w #$38,($68,a4)
	move.b ($66,a4),d0
	movea.l #loc_07b448,a0
	clr.w d0
	jsr loc_027e70
	move.w #-1,($6c,a4)
	sf ($6e,a4)

loc_078762:
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.l #$500000,d2
	move.l #-$500000,d3
	jsr loc_0282ea
	tst.w ($6c,a4)
	blt.b loc_078794
	cmpi.w #$36,($68,a4)
	bhi.b loc_078792
	bsr.w loc_07887c

loc_078792:
	bra.b loc_0787a4

loc_078794:
	cmpi.w #$36,($68,a4)
	bhi.b loc_0787a0
	bsr.w loc_07887c

loc_0787a0:
	bsr.w loc_07889e

loc_0787a4:
	sf ($9b,a4)
	tst.b ($6e,a4)
	bne.b loc_0787b8
	move.l #loc_078ca2,($9c,a4)
	bra.b loc_0787bc

loc_0787b8:
	clr.l ($9c,a4)

loc_0787bc:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l ($8,a4),a3
	tst.b ($249,a3)
	bne.w loc_078824
	btst #3,($2e1,a3)
	bne.w loc_07880c
	jsr loc_027ea4
	btst #2,($53,a4)
	bne.w loc_078824
	subq.w #1,($6c,a4)
	subq.w #1,($68,a4)
	bmi.w loc_078810

loc_07880c:
	bra.w loc_078762

loc_078810:
	clr.l ($9c,a4)
	movea.l #loc_07b536,a0
	clr.w d0
	jsr loc_027e70
	bra.b loc_078836

loc_078824:
	clr.l ($9c,a4)
	movea.l #loc_07b536,a0
	clr.w d0
	jsr loc_027e70

loc_078836:
	st ($bb,a3)

loc_07883a:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l ($8,a4),a3
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_07883a
	bra.w loc_078876

loc_07886e:
	clr.l ($9c,a4)
	st ($bb,a3)

loc_078876:
	jmp loc_027de6

loc_07887c:
	tst.b ($6e,a4)
	bne.b loc_07889c
	tst.b ($9b,a4)
	bne.b loc_078898
	move.l #loc_078906,($9c,a4)
	jsr loc_02805e
	beq.b loc_07889c

loc_078898:
	st ($6e,a4)

loc_07889c:
	rts

;--------------------------
loc_07889e
	move.l #loc_078916,($9c,a4)
	jsr loc_028112
	beq.b loc_0788b2
	bra.w loc_0788d0

loc_0788b2:
	cmpi.w #$36,($68,a4)
	bhi.b loc_0788ce
	move.l #loc_07890e,($9c,a4)
	jsr loc_028112
	beq.b loc_0788ce
	bra.w loc_0788d0

loc_0788ce:
	rts

loc_0788d0:
	addq.w #1,($6a,a4)
	cmpi.w #3,($6a,a4)
	blt.b loc_0788e2
	move.w #-1,($68,a4)

loc_0788e2:
	jsr loc_0281fa
	jsr loc_028344
	bclr #6,($25e,a3)
	movea.l ($28,a4),a3
	move.b #1,($275,a3)
	move.w #$e,($6c,a4)
	rts

;/\/\/\/\\//\/\/\/\/\/\/\/\
loc_078906:
	dc.w $ffe0,$0020,$ffe0,$0020

loc_07890e:
	dc.w $fff8,$0010,$0008,$0014

loc_078916:
	dc.w $0010,$0020,$fff0,$0008

;--------------------------
loc_07891e:
	tst.b ($26,a4)
	beq.w loc_078b78
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_078af2
	movem.l d1-d2,-(a7)
	move.w #$35,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_078966
	sf ($66,a0)
	move.w (2,a4),($68,a0)
	move.w #1,($6c,a0)

loc_078966:
	movem.l d1-d2,-(a7)
	move.w #$35,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_078992
	st ($66,a0)
	move.w (2,a4),($68,a0)
	move.w #5,($6c,a0)

loc_078992:
	movea.l #loc_07b6e0,a0
	clr.w d0
	jsr loc_027e70
	move.b ($52,a4),($67,a4)
	move.w #$42,($6a,a4)
	move.w #-1,($6c,a4)
	clr.w ($6e,a4)
	sf ($74,a4)

loc_0789ba:
	subq.w #1,($6a,a4)
	bmi.w loc_078aa4
	subq.w #1,($6c,a4)

loc_0789c6:
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	moveq #0,d2
	move.l #-$500000,d3
	jsr loc_0282ea
	move.w ($6a,a4),d0
	andi.w #$fffc,d0
	bsr.w loc_078c84
	lsl.w #3,d0
	move.w d0,d1
	jsr loc_002a72
	exg d0,d1
	jsr loc_002a6e
	neg.w d1
	muls.w #$4c00,d0
	muls.w #$1600,d1
	move.l d0,d2
	move.l d1,d3
	jsr loc_0282ea
	tst.w ($6c,a4)
	blt.b loc_078a1e
	bsr.w loc_078afc
	bra.b loc_078a48

loc_078a1e:
	bsr.w loc_078afc
	move.w ($6a,a4),d0
	lsr.w #2,d0
	andi.w #7,d0
	move.w d0,d1
	subq.w #2,d1
	cmpi.w #4,d1
	bcs.b loc_078a3c
	bsr.w loc_078b1e
	bra.b loc_078a48

loc_078a3c:
	not.b ($2c,a4)
	bsr.w loc_078b1e
	not.b ($2c,a4)

loc_078a48:
	sf ($9b,a4)
	tst.b ($74,a4)
	bne.b loc_078a5c
	move.l #loc_078ca2,($9c,a4)
	bra.b loc_078a60

loc_078a5c:
	clr.l ($9c,a4)

loc_078a60:
	move.b ($67,a4),($52,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	tst.b ($249,a3)
	bne.w loc_078aa4
	btst #3,($2e1,a3)
	bne.w loc_0789c6
	jsr loc_027ea4
	bra.w loc_0789ba

loc_078aa4:
	move.w #-1,($6a,a4)
	clr.l ($9c,a4)
	movea.l #loc_07b792,a0
	clr.w d0
	jsr loc_027e70

loc_078abc:
	move.b ($67,a4),($52,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_078abc

loc_078af2:
	clr.l ($9c,a4)
	jmp loc_027de6

;--------------------------
loc_078afc:
	tst.b ($74,a4)
	bne.b loc_078b1c
	tst.b ($9b,a4)
	bne.b loc_078b18
	move.l #loc_078ca2,($9c,a4)
	jsr loc_02805e
	beq.b loc_078b1c

loc_078b18:
	st ($74,a4)

loc_078b1c:
	rts

loc_078b1e:
	lsl.w #2,d0
	lea loc_078caa(pc),a0
	move.l (a0,d0.w),($9c,a4)
	jsr loc_028112
	beq.w loc_078b76
	addq.w #1,($6e,a4)
	cmpi.w #4,($6e,a4)
	blt.b loc_078b46
	move.b #$2b,($89,a4)

loc_078b46:
	cmpi.w #$10,($6a,a4)
	bgt.b loc_078b54
	move.b #$2b,($89,a4)

loc_078b54:
	move.b #1,($275,a3)
	move.w #$f,($6c,a4)
	jsr loc_0281fa
	jsr loc_028344
	bclr #6,($25e,a3)
	movea.l ($28,a4),a3

loc_078b76:
	rts

loc_078b78:
	jsr loc_027a44
	subq.w #1,($6c,a4)
	bpl.b loc_078b78
	clr.w ($6a,a4)

loc_078b88:
	movea.l #loc_07b730,a0
	clr.w d0
	jsr loc_027e70
	movea.l ($28,a4),a3
	move.w ($68,a4),d0
	cmp.w (2,a3),d0
	bne.w loc_078c7e
	tst.w ($6a,a3)
	bmi.w loc_078c7e
	move.w ($60,a3),($60,a4)
	move.b ($2c,a3),($2c,a4)
	movea.l ($28,a3),a3
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	moveq #0,d2
	move.l #-$500000,d3
	jsr loc_0282ea
	movea.l ($28,a4),a3
	move.w ($6a,a3),d0
	tst.b ($66,a4)
	bne.b loc_078c0a
	addq.w #3,d0
	bsr.w loc_078c84
	lsl.w #3,d0
	move.w d0,d1
	jsr loc_002a72
	exg d0,d1
	jsr loc_002a6e
	neg.w d1
	muls.w #$4c00,d0
	muls.w #$1600,d1
	bra.b loc_078c2c

loc_078c0a:
	addq.w #$2,d0
	bsr.w loc_078c84
	lsl.w #3,d0
	move.w d0,d1
	jsr loc_002a72
	exg d0,d1
	jsr loc_002a6e
	neg.w d1
	muls.w #$4c00,d0
	muls.w #$1600,d1

loc_078c2c:
	move.l d0,d2
	move.l d1,d3
	jsr loc_0282ea
	move.b ($67,a4),($52,a4)


loc_078c3c:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027ea4
	btst #2,($53,a4)
	bne.b loc_078c7a
	movea.l ($28,a4),a3
	move.w ($68,a4),d0
	cmp.w (2,a3),d0
	bne.w loc_078c7e
	tst.w ($6a,a3)
	bmi.w loc_078c7e
	bra.b loc_078c3c

loc_078c7a:
	bra.w loc_078b88

loc_078c7e:
	jmp loc_027de6

loc_078c84:
	subq.w #1,d0
	andi.w #$1f,d0
	cmpi.w #$10,d0
	bge.b loc_078c98
	move.b #$7d,($67,a4)
	bra.b loc_078c9e

loc_078c98:
	move.b #$75,($67,a4)

loc_078c9e:
	addq.w #1,d0
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_078ca2:
	dc.w $ffe8,$0014,$ffec,$0014

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_078caa:
	dc.l loc_078cca,loc_078cd2,loc_078cda,loc_078ce2
	dc.l loc_078cea,loc_078cf2,loc_078cfa,loc_078d02

loc_078cca:
	dc.w $fff8,$0008,$ffc4,$000c

loc_078cd2:
	dc.w $fff8,$0008,$ffd8,$0010

loc_078cda:
	dc.w $fff8,$0008,$ffe8,$0018

loc_078ce2:
	dc.w $fff8,$0008,$ffd8,$0010

loc_078cea:
	dc.w $fff8,$0008,$ffc4,$000c

loc_078cf2:
	dc.w $fff8,$0008,$ffd8,$0010

loc_078cfa:
	dc.w $fff8,$0008,$ffe8,$0018

loc_078d02:
	dc.w $fff8,$0008,$ffd8,$0010

;--------------------------
loc_078d0a:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_078e04
	move.l (-$45de,a5),($32,a4)
	move.l #$100000,d2
	moveq #0,d3
	jsr loc_0282ea
	sf ($67,a4)
	movea.l #loc_07b9c8,a0
	clr.w d0
	jsr loc_027e70

loc_078d44:
	lea loc_07bba4(pc),a0
	move.w ($4e,a4),d0
	subq.w #1,d0
	lsl.w #2,d0
	move.l (a0,d0.w),($9c,a4)
	beq.w loc_078db4
	jsr loc_02805e
	lea loc_07bb8c(pc),a0
	move.w ($4e,a4),d0
	subq.w #1,d0
	move.b (a0,d0.w),($89,a4)
	beq.w loc_078db4
	tst.b ($67,a4)
	bne.w loc_078db4
	jsr loc_028112
	beq.w loc_078db4
	jsr loc_0281fa
	move.w ($8e,a4),d0
	addq.w #2,d0
	asr.w #2,d0
	sub.w d0,($8e,a4)
	move.w ($90,a4),d0
	addq.w #2,d0
	asr.w #2,d0
	sub.w d0,($90,a4)
	move.w #$12c,($94,a4)
	move.w #8,($68,a4)
	st ($67,a4)

loc_078db4:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	tst.w ($68,a4)
	bgt.b loc_078df6
	jsr loc_027ea4
	btst #0,($53,a4)
	beq.b loc_078dee
	sf ($67,a4)

loc_078dee:
	jsr loc_027e48
	bra.b loc_078dfa

loc_078df6:
	subq.w #1,($68,a4)

loc_078dfa:
	btst #2,($53,a4)
	beq.w loc_078d44

loc_078e04:
	jmp loc_027de6

;--------------------------
loc_078e0a:
	movea.l ($28,a4),a3
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.b ($208,a3),($2c,a4)
	move.w ($2ee,a3),($60,a4)
	tst.b ($bc,a3)
	beq.b loc_078e48
	movea.l #loc_079606,a0
	clr.w d0
	jsr loc_027e70
	move.l #-$300000,d2
	move.l #-$60000,d3
	bra.b loc_078e7c

loc_078e48:
	move.w #$1f,d7

loc_078e4c:
	movem.l d7,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),d7
	dbra d7,loc_078e4c
	movea.l #loc_07971e,a0
	clr.w d0
	jsr loc_027e70
	move.l #-$380000,d2
	move.l #-$60000,d3

loc_078e7c:
	jsr loc_0282ea
	clr.w ($6a,a4)
	move.l #loc_078ed2,($66,a4)

loc_078e8e:
	movea.l ($66,a4),a0
	move.w ($6a,a4),d0
	add.w d0,d0
	move.w (a0,d0.w),($5e,a4)
	addq.w #1,d0
	cmpi.w #$e,d0
	ble.b loc_078eaa
	move.w #$e,d0

loc_078eaa:
	move.w d0,($6a,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027ea4
	bra.b loc_078e8e

loc_078ecc:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_078ed2:
	dc.w $30c8,$48b0,$6098,$7080,$7870
	dc.w $7e60,$8050,$7e40,$7830,$7020
	dc.w $6018,$4810,$3008,$1804,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_078ef0:
	dc.l $00026000,$fffdc000,$00000000
	dc.l $0002c000,$fffd0000,$fff3ea00
	dc.l $0000b600

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_078f0c:
	dc.l loc_078f18,loc_078f24,loc_078f30

loc_078f18:
	dc.w $8039,$fc00
	dc.w $803b,$d000,$f00a,$0000

loc_078f24:
	dc.w $8039,$fe02
	dc.w $803b,$e000,$f20c,$0000

loc_078f30:
	dc.w $8039,$fd01
	dc.w $803b,$d0f0,$f40a,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_078f3c:
	dc.l loc_0742d4,loc_0742d4,loc_074616,loc_074a62
	dc.l loc_07512e,loc_0753a4,loc_075574,loc_07562a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_078f5c:
	dc.l loc_0792d8,loc_079356,loc_0793e4,loc_079422
	dc.l loc_079380,loc_07939e,loc_0793c6,loc_0793a8
	dc.l loc_079460,loc_07946e,loc_0794b6,loc_0794ec
	dc.l loc_079522,loc_0794a4,loc_079530,loc_079530
	dc.l loc_079530,loc_079540,loc_079540,loc_079540
	dc.l loc_07954a,loc_07954a,loc_07954a,loc_079554
	dc.l loc_079554,loc_079554,loc_079564,loc_079564
	dc.l loc_079564,loc_07956e,loc_07956e,loc_07956e
	dc.l loc_079578,loc_079588,loc_079756,loc_079588
	dc.l loc_079822

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_078ff0:
	dc.l loc_028468,loc_028562,loc_02848c,loc_028572
	dc.l loc_02861e,loc_0286fc,loc_0287a6,loc_0287e0
	dc.l loc_02881a,loc_028a02,loc_028958,loc_028a30
	dc.l loc_028ae2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079024:
	dc.l loc_07983c,loc_07983c,loc_07983c,loc_079846
	dc.l loc_079846,loc_079846,loc_079850,loc_079850
	dc.l loc_079868,loc_079868,loc_079880,loc_079880
	dc.l loc_0798ae,loc_0798ae,loc_0798d4,loc_0798d4
	dc.l loc_0798ec,loc_0798ec,loc_079904,loc_079904
	dc.l loc_07992c,loc_07992c,loc_07994c,loc_07994c
	dc.l loc_079964,loc_079964,loc_07997c,loc_07997c
	dc.l loc_0799a4,loc_0799a4,loc_0799c4,loc_0799f8
	dc.l loc_0799c4,loc_0799f8,loc_079a2c,loc_079a5e
	dc.l loc_079a7c,loc_079abc,loc_079a7c,loc_079abc
	dc.l loc_079a7c,loc_079afc,loc_079afc,loc_079b22
	dc.l loc_079b32,loc_079b72,loc_079b96,loc_079c2a
	dc.l loc_079b9e,loc_079c38,loc_079c38,loc_079c38
	dc.l loc_079c90,loc_079c90,loc_079cc4,loc_079cfc
	dc.l loc_079d4c,loc_079d4c,loc_079d76,loc_079d76
	dc.l loc_079dbc,loc_079dbc,loc_079e1e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079120:
	dc.l $00000000,loc_079e28,loc_079e9a,loc_079f0c
	dc.l loc_079f64,loc_079fde,loc_07a05e,loc_07a0cc
	dc.l loc_07a182,loc_07a236,loc_07a2c0,loc_07a394
	dc.l loc_07a494,loc_07a50a,loc_07a50a,loc_07a57e
	dc.l loc_07a5fa,loc_07a674,loc_07a6e0,loc_07a778
	dc.l loc_07a862,loc_07a8ce,loc_07a942,loc_07a9ba
	dc.l loc_07aa60,loc_07abc6,loc_07ad66,loc_07aed6
	dc.l loc_07b32a,loc_07b568,loc_07b0c6,loc_07b084
	dc.l loc_07b108,loc_07b872,loc_07cfb2,loc_07bc44
	dc.l loc_07c166,loc_07c7b8,loc_07d818,loc_07d8de
	dc.l loc_07d994

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0791c4:
	dc.w $0005,$0d80,$0000,$80ff,$0004,$0004,$0000
	dc.w $0005,$0d79,$0000,$8000
	dc.w $000a,$0d40,$0000,$80ff,$0004,$0004,$0000
	dc.w $0005,$0dff,$0000,$80ff,$0004,$0004,$0000
	dc.w $0005,$0e00,$0000,$80ff,$0004,$0005,$0000
	dc.w $000a,$0e01,$0000,$80ff,$0004,$0005,$0000
	dc.w $0005,$0e02,$0000,$80ff,$0004,$0005,$0000
	dc.w $0005,$0e03,$0000,$80ff,$0004,$0004,$0000
	dc.w $000a,$0c67,$0000,$80ff,$0004,$0000,$0000
	dc.w $0002,$0e0c,$0000,$80ff,$0004,$0000,$0000
	dc.w $0002,$0e0d,$0000,$80ff,$0004,$0000,$0000
	dc.w $0002,$0e0c,$0000,$80ff,$0004,$0000,$0000
	dc.w $0002,$0e0d,$0000,$80ff,$0004,$0000,$0000
	dc.w $0002,$0e0c,$0000,$80ff,$0004,$0000,$0000
	dc.w $0002,$0e0d,$0000,$80ff,$0004,$0000,$0000
	dc.w $0002,$0e0c,$0000,$80ff,$0004,$0000,$0000
	dc.w $0002,$0e0d,$0000,$80ff,$0004,$0000,$0000
	dc.w $0002,$0e0c,$0000,$80ff,$0004,$0000,$0000
	dc.w $0002,$0e0d,$0000,$80ff,$0004,$0000,$0000
	dc.w $0004,$0c69,$0000,$80ff,$0004,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0792d8:
	dc.w $8027,$ffe0,$001c
	dc.w $0006,$0d80,$0001,$80ff,$0004,$0004,$0000
	dc.w $0006,$0d81,$0001,$80ff,$0004,$0004,$0000
	dc.w $0006,$0d82,$0001,$80ff,$0004,$0004,$0000
	dc.w $0006,$0d83,$0001,$80ff,$0004,$0004,$0000
	dc.w $0006,$0d84,$0001,$80ff,$0004,$0004,$0000
	dc.w $0006,$0d85,$0001,$80ff,$0004,$0004,$0000
	dc.w $0006,$0d86,$0001,$80ff,$0004,$0004,$0000
	dc.w $0006,$0d87,$0001,$80ff,$0004,$0004,$0000
	dc.w $8000,$0000
	dc.l loc_0792d8

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079356:
	dc.w $8027,$ffe0,$001c
	dc.w $0004,$0cc6,$0002,$80ff,$0001,$0000,$0001
	dc.w $0004,$0cc6,$0002,$80ff,$ffff,$0000,$0000
	dc.w $8000,$0000
	dc.l loc_0792d8

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079380:
	dc.w $0002,$0c81,$0003,$80ff,$0004,$0002,$0000
	dc.w $0002,$0c81,$0003,$80ff,$0004,$0002,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07939e:
	dc.w $0004,$0c82,$0004,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0793a8:
	dc.w $0002,$0c81,$0003,$80ff,$0004,$0002,$0000
	dc.w $0002,$0c81,$0003,$80ff,$0004,$0002,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0793c6:
	dc.w $0004,$0cc5,$0005,$80ff,$0000,$0000,$0001
	dc.w $0004,$0cc5,$0005,$8000
	dc.w $8000,$0000
	dc.l loc_07939e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0793e4:
	dc.w $8027,$ffe8,$0018
	dc.w $0004,$0c61,$0006,$8000
	dc.w $0004,$0c62,$0006,$8000
	dc.w $0004,$0c63,$0006,$8000
	dc.w $0004,$0c64,$0006,$8000
	dc.w $0004,$0c65,$0006,$8000
	dc.w $0004,$0c66,$0006,$8000
	dc.w $8000,$0000
	dc.l loc_0793e4

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079422:
	dc.w $8027,$ffe8,$0018
	dc.w $0005,$0d5f,$0007,$8000
	dc.w $0005,$0d60,$0007,$8000
	dc.w $0005,$0d61,$0007,$8000
	dc.w $0005,$0d62,$0007,$8000
	dc.w $0005,$0d63,$0007,$8000
	dc.w $0005,$0d64,$0007,$8000
	dc.w $8000,$0000
	dc.l loc_079422

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079460:
	dc.w $8003,$186f
	dc.w $0002,$0c7b,$0008,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07946e:
	dc.w $0005,$0c78,$0009,$7c00
	dc.w $0005,$0de6,$000a,$7cff,$0000,$0008,$0000
	dc.w $000b,$0de7,$000b,$7cff,$0000,$000a,$0000
	dc.w $0005,$0c79,$000a,$7c00
	dc.w $000a,$0c7a,$000c,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0794a4:
	dc.w $0005,$0c79,$000a,$7c00
	dc.w $000a,$0c7a,$000c,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0794b6:
	dc.w $0005,$0c78,$0009,$7c00
	dc.w $0005,$0de6,$000a,$7cff,$0000,$0008,$0000
	dc.w $000b,$0de7,$000b,$7cff,$0000,$000a,$0000
	dc.w $0005,$0c79,$000a,$7c00
	dc.w $000a,$0c7a,$000c,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0794ec:
	dc.w $0005,$0c78,$0009,$7c00
	dc.w $0005,$0de6,$000a,$7cff,$0000,$0008,$0000
	dc.w $000b,$0de7,$000b,$7cff,$0000,$000a,$0000
	dc.w $0005,$0c79,$000a,$7c00
	dc.w $000a,$0c7a,$000c,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079522:
	dc.w $8003,$1870
	dc.w $0003,$0c7b,$0008,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079530:
	dc.w $0002,$0ca7,$000d,$8400
	dc.w $8000,$0000
	dc.l loc_079540

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079540:
	dc.w $0004,$0ca7,$000d,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07954a:
	dc.w $0002,$0ca7,$000d,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079554:
	dc.w $0002,$0d72,$000e,$8400
	dc.w $8000,$0000
	dc.l loc_079564

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079564:
	dc.w $0004,$0d72,$000e,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07956e:
	dc.w $0002,$0d72,$000e,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079578:
	dc.w $003c,$0d80,$0001,$80ff,$0004,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079588:
	dc.w $0004,$0d84,$0000,$80ff,$0004,$0004,$0000
	dc.w $0006,$0c6d,$0000,$80ff,$fffc,$0000,$0000
	dc.w $8027,$fff0,$001c
	dc.w $8007,$0010,$0000
	dc.w $0008,$0c5f,$0000,$80ff,$0018,$0002,$0000
	dc.w $802b,$1ca3
	dc.w $800f,$0037

loc_0795c6:
	dc.w $0008,$0dc9,$0000,$80ff,$fff4,$0008,$0000
	dc.w $0008,$0dca,$0000,$80ff,$fff4,$0008,$0000
	dc.w $0008,$0dcb,$0000,$80ff,$fff4,$0008,$0000
	dc.w $0008,$0dcc,$0000,$80ff,$fff4,$0008,$0000
	dc.w $8000,$0000
	dc.l loc_0795c6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079606:
	dc.w $0001,$0d90,$84ff,$0000,$0000,$0c01
	dc.w $0001,$0d91,$84ff,$0000,$0000,$0c01
	dc.w $0001,$0d92,$84ff,$0000,$0000,$0c01
	dc.w $0001,$0d93,$84ff,$0000,$0000,$0c01
	dc.w $0002,$0d94,$84ff,$0000,$0000,$0c01
	dc.w $0002,$0d95,$84ff,$0000,$0000,$0c01
	dc.w $0002,$0d96,$84ff,$0000,$0000,$0c01
	dc.w $0002,$0d97,$84ff,$0000,$0000,$0c01
	dc.w $0010,$0d98,$84ff,$0000,$0000,$0c01
	dc.w $000c,$0df8,$84ff,$fffc,$0000,$0c00
	dc.w $0006,$0df9,$84ff,$fffc,$0000,$0c00
	dc.w $0004,$0dfa,$84ff,$fffc,$0000,$0c00
	dc.w $8002,$1ca5
	dc.w $0004,$0df9,$84ff,$fffc,$0000,$0c00
	dc.w $000c,$0dfa,$84ff,$fffc,$0000,$0c00
	dc.w $0003,$0d9a,$84ff,$fffc,$0000,$0c01
	dc.w $0002,$0d9b,$84ff,$fffc,$0000,$0c01
	dc.w $0004,$0d9c,$84ff,$0000,$0000,$0c01
	dc.w $000c,$0dfb,$84ff,$000c,$0000,$0c00
	dc.w $0006,$0dfc,$84ff,$000c,$0000,$0c00
	dc.w $0004,$0dfd,$84ff,$000c,$0000,$0c00
	dc.w $8002,$1ca5
	dc.w $0004,$0dfc,$84ff,$000c,$0000,$0c00

loc_07970a:
	dc.w $000c,$0dfd,$84ff,$000c,$0000,$0c00
	dc.w $8000,$0000
	dc.l loc_07970a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07971e:
	dc.w $0008,$0dcd,$84ff,$0000,$0000,$0c00
	dc.w $0008,$0dce,$84ff,$0000,$0000,$0c00
	dc.w $0008,$0dcf,$84ff,$0000,$0000,$0c00
	dc.w $0008,$0dd0,$84ff,$0000,$0000,$0c00
	dc.w $8000,$0000
	dc.l loc_07971e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079756:
	dc.w $0004,$0d84,$0000,$80ff,$0004,$0004,$0000
	dc.w $0006,$0cfc,$0000,$80ff,$0004,$0004,$0000
	dc.w $0006,$0ceb,$0000,$80ff,$0002,$0004,$0000
	dc.w $0004,$0cef,$0000,$80ff,$0004,$0004,$0000
	dc.w $8002,$189f
	dc.w $0002,$0cf0,$0000,$80ff,$0000,$0004,$0000
	dc.w $0002,$0cf1,$0000,$80ff,$fff4,$0004,$0000
	dc.w $0003,$0cf2,$0000,$80ff,$fff4,$0004,$0000
	dc.w $8007,$0008,$0000
	dc.w $0003,$0cf5,$0000,$80ff,$0004,$0004,$0000
	dc.w $8002,$189f
	dc.w $0002,$0cf6,$0000,$80ff,$0000,$0004,$0000
	dc.w $0002,$0cf7,$0000,$80ff,$fffe,$0004,$0000
	dc.w $0003,$0cf8,$0000,$80ff,$0004,$0004,$0000
	dc.w $0003,$0cf9,$0000,$80ff,$0004,$0004,$0000
	dc.w $000c,$0d66,$0000,$8000
	dc.w $802b,$1ca4
	dc.w $000c,$0d67,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079822:
	dc.w $0004,$0d68,$0000,$8400
	dc.w $0004,$0d69,$0000,$8400
	dc.w $0004,$0d71,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07983c:
	dc.w $0004,$0d71,$000d,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079846:
	dc.w $0004,$0d72,$000e,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079850:
	dc.w $802d,$fff0,$ff98
	dc.w $0006,$0d69,$000f,$8400
	dc.w $0006,$0d68,$0010,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079868:
	dc.w $802d,$fff0,$ff98
	dc.w $000c,$0d69,$000f,$8400
	dc.w $0006,$0d68,$0010,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079880:
	dc.w $802d,$ffe8,$ff9c
	dc.w $0002,$0d69,$000f,$8400
	dc.w $000a,$0d6a,$000f,$84ff,$0004,$0000,$0000
	dc.w $0006,$0d69,$000f,$8400
	dc.w $0006,$0d68,$0010,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0798ae:
	dc.w $802d,$ffe0,$ffa0
	dc.w $0012,$0d6a,$000f,$84ff,$0004,$0000,$0000
	dc.w $0006,$0d69,$000f,$8400
	dc.w $0006,$0d68,$0010,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0798d4:
	dc.w $802e,$fffa,$ffaa
	dc.w $0006,$0d6c,$0011,$8400
	dc.w $0006,$0d6b,$0012,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0798ec:
	dc.w $802e,$fffa,$ffaa
	dc.w $000c,$0d6c,$0011,$8400
	dc.w $0006,$0d6b,$0012,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079904:
	dc.w $802e,$fffa,$ffaa
	dc.w $0002,$0d6c,$0011,$8400
	dc.w $000a,$0d6d,$0011,$8400
	dc.w $0006,$0d6c,$0011,$8400
	dc.w $0006,$0d6b,$0012,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07992c:
	dc.w $802e,$fff2,$ffa6
	dc.w $0012,$0d6d,$0011,$8400
	dc.w $0006,$0d6c,$0011,$8400
	dc.w $0006,$0d6b,$0012,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07994c:
	dc.w $802f,$fffe,$ffc4
	dc.w $0006,$0d6f,$0013,$8400
	dc.w $0006,$0d6e,$0014,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079964:
	dc.w $802f,$fffe,$ffc4
	dc.w $000c,$0d6f,$0013,$8400
	dc.w $0006,$0d6e,$0014,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07997c:
	dc.w $802f,$fffa,$ffc2
	dc.w $0002,$0d6f,$0013,$8400
	dc.w $000a,$0d70,$0013,$8400
	dc.w $0006,$0d6f,$0013,$8400
	dc.w $0006,$0d6e,$0014,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0799a4:
	dc.w $802f,$fff6,$ffc0
	dc.w $0012,$0d70,$0013,$8400
	dc.w $0006,$0d6f,$0013,$8400
	dc.w $0006,$0d6e,$0014,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0799c4:
	dc.w $802e,$0000,$ffa4
	dc.w $0006,$0d6c,$0015,$84ff,$fff8,$0004,$0000
	dc.w $0006,$0d6b,$0015,$84ff,$0000,$0004,$0000
	dc.w $0008,$0c79,$0016,$8400
	dc.w $000a,$0c7a,$0016,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0799f8:
	dc.w $802d,$fff0,$ff90
	dc.w $0006,$0d69,$0015,$84ff,$fffa,$0004,$0000
	dc.w $0006,$0d68,$0015,$84ff,$fffa,$0004,$0000
	dc.w $0008,$0c79,$0016,$8400
	dc.w $000a,$0c7a,$0016,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079a2c:
	dc.w $802e,$ffee,$ffb0
	dc.w $0004,$0dc8,$0015,$84ff,$0008,$0008,$0000
	dc.w $0006,$0ddd,$0015,$84ff,$0000,$0008,$0000
	dc.w $0006,$0dde,$0017,$84ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079a5e:
	dc.w $0004,$0ddf,$0018,$7cff,$fff8,$fff8,$0000
	dc.w $0008,$0dc7,$0018,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079a7c:
	dc.w $8030,$ffe8,$ffb0
	dc.w $0008,$0d6d,$0015,$7cff,$fff8,$0000,$0000
	dc.w $0006,$0ddc,$0015,$7cff,$0008,$0008,$0000
	dc.w $0006,$0ddd,$0017,$7cff,$0000,$0008,$0000
	dc.w $0006,$0dde,$0017,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079abc:
	dc.w $8030,$ffe8,$ffb0
	dc.w $0008,$0d6a,$0015,$7cff,$fff8,$0008,$0000
	dc.w $0006,$0ddc,$0015,$7cff,$0008,$0008,$0000
	dc.w $0006,$0ddd,$0017,$7cff,$0000,$0008,$0000
	dc.w $0006,$0dde,$0017,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079afc:
	dc.w $0004,$0ddf,$0018,$7cff,$fff8,$fff8,$0000
	dc.w $0008,$0de0,$0018,$7c00
	dc.w $0008,$0dc5,$0018,$7cff,$0000,$0010,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079b22:
	dc.w $0010,$0dc7,$0018,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079b32:
	dc.w $8030,$fff8,$ffa0
	dc.w $0013,$0dd6,$0015,$7cff,$fff8,$0008,$0001
	dc.w $0006,$0ddc,$0015,$7cff,$0008,$0008,$0000
	dc.w $0006,$0ddd,$0017,$7cff,$0000,$0008,$0000
	dc.w $0006,$0dde,$0017,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079b72:
	dc.w $8030,$ffe8,$ffd0
	dc.w $0002,$0dde,$0015,$84ff,$0008,$0000,$0000
	dc.w $0002,$0dd8,$0017,$84ff,$0008,$fff0,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079b96:
	dc.w $8000,$0000
	dc.l loc_0799c4

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079b9e:
	dc.w $8037
	dc.l loc_078710

	dc.w $8002,$188d
	dc.w $8024
	dc.w $8043,$0027
	dc.w $8044,$002f

	dc.w $804b
	dc.l $fffdc000,$fff67000,$00009000

	dc.w $0003,$0dad,$0000,$7c00
	dc.w $0006,$0cab,$0000,$7cff,$0000,$0078,$0003
	dc.w $0004,$0ca2,$0000,$7cff,$0000,$0008,$0000
	dc.w $0004,$0cab,$0000,$7c00
	dc.w $0005,$0ca1,$0000,$7cff,$0000,$0078,$0003
	dc.w $0006,$0c9b,$0000,$7c00
	dc.w $0007,$0c8f,$0000,$7cff,$0008,$0000,$0000
	dc.w $803a,$df00
	dc.w $0002,$0c7b,$0000,$7c00
	dc.w $803a,$0000
	dc.w $0002,$0c7b,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079c2a:
	dc.w $8003,$1870
	dc.w $0003,$0c7b,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079c38:
	dc.w $0006,$0ce4,$0000,$7cff,$fff8,$0000,$0000
	dc.w $0006,$0ce5,$0000,$7c00
	dc.w $0006,$0ce6,$0000,$7cff,$0008,$fffc,$0000
	dc.w $0002,$0c81,$0000,$7cff,$0008,$0000,$0000
	dc.w $803a,$df00
	dc.w $0002,$0c81,$0000,$7cff,$0008,$0000,$0000
	dc.w $803a,$0000
	dc.w $0002,$0c81,$0000,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079c90:
	dc.w $0006,$0ce4,$0000,$7cff,$fff8,$0000,$0000
	dc.w $0006,$0ce5,$0000,$7c00
	dc.w $0006,$0ce6,$0000,$7cff,$0008,$fffc,$0000
	dc.w $0006,$0c81,$0000,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079cc4:
	dc.w $0008,$0dd1,$0019,$7c00
	dc.w $0009,$0dd2,$0019,$7c00
	dc.w $000b,$0dd3,$0019,$7c00
	dc.w $000e,$0dd4,$0019,$7c00
	dc.w $0008,$0dd3,$0019,$7c00
	dc.w $0007,$0dd2,$0019,$7c00
	dc.w $8000,$0000
	dc.l loc_079cc4

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079cfc:
	dc.w $0004,$0e00,$0000,$80ff,$0004,$0005,$0000
	dc.w $000e,$0e01,$0000,$80ff,$0004,$0005,$0000
	dc.w $0006,$0e02,$0000,$80ff,$0004,$0005,$0000
	dc.w $803a,$df00
	dc.w $0003,$0e03,$0000,$80ff,$0004,$0004,$0000
	dc.w $803a,$0000
	dc.w $0003,$0e03,$0000,$80ff,$0004,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079d4c:
	dc.w $8030,$fff0,$ffb8

loc_079d52:
	dc.w $0003,$0d73,$0015,$7cff,$0000,$0000,$0500
	dc.w $0001,$0d74,$0015,$7cff,$0000,$0000,$0500
	dc.w $8000,$0000
	dc.l loc_079d52

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079d76:
	dc.w $8030,$fff0,$ffb8

loc_079d7c:
	dc.w $0002,$0ddc,$0015,$7cff,$0008,$0008,$0600
	dc.w $0002,$0ddc,$0015,$7cff,$0005,$0008,$0200
	dc.w $0002,$0ddc,$0015,$7cff,$0008,$0008,$0400
	dc.w $0002,$0ddc,$0015,$7cff,$000b,$0008,$0700
	dc.w $8000,$0000
	dc.l loc_079d7c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079dbc:
	dc.w $8030,$fff0,$ffb8

loc_079dc2:
	dc.w $0002,$0ddc,$0015,$7cff,$0008,$000a,$0800
	dc.w $0002,$0ddc,$0015,$7cff,$000a,$0007,$0900
	dc.w $0002,$0ddc,$0015,$7cff,$0006,$0009,$0800
	dc.w $0002,$0ddc,$0015,$7cff,$0008,$0006,$0900
	dc.w $0002,$0ddc,$0015,$7cff,$000a,$0009,$0800
	dc.w $0002,$0ddc,$0015,$7cff,$0006,$0007,$0900
	dc.w $8000,$0000
	dc.l loc_079dc2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079e1e:
	dc.w $0004,$0d6b,$0019,$8400
	dc.w $8001

;-+-+-+-+-+-+-+-+-+-+-+-+-+
;Attack Start
;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079e28:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_079e5a

	dc.w $803e,$0861,$0600
	dc.w $803f,$0e04,$0803,$0e02
	dc.w $8040,$0a05,$0307,$06ff
	dc.w $8042,$0a01
	dc.w $8041,$0401,$0822

	dc.w $8036
	dc.l loc_078f18

loc_079e5a:
	dc.w $8004,$1897
	dc.w $0003,$0c67,$001a,$78ff,$0004,$0000,$0000
	dc.w $8045,$0001
	dc.w $8027,$ffe0,$0034
	dc.w $0007,$0c6b,$001b,$78ff,$0006,$0000,$0000
	dc.w $8027,$ffe0,$0024
	dc.w $0006,$0c69,$001c,$7cff,$0004,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079e9a:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_079ecc

	dc.w $803e,$0861,$0100
	dc.w $803f,$0c04,$0603,$0c02
	dc.w $8040,$0a05,$0307,$06ff
	dc.w $8042,$0a01
	dc.w $8041,$0401,$1028

	dc.w $8036
	dc.l loc_078f18

loc_079ecc:
	dc.w $8004,$1897
	dc.w $0003,$0c67,$001a,$78ff,$0004,$0000,$0000
	dc.w $8045,$0001
	dc.w $8027,$ffe0,$0044
	dc.w $0007,$0c6a,$001d,$78ff,$0006,$0000,$0000
	dc.w $8027,$ffe0,$0024
	dc.w $0006,$0c69,$001c,$7cff,$0004,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079f0c:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_079f3e

	dc.w $803e,$0821,$0600
	dc.w $803f,$0602,$0201,$0601
	dc.w $8040,$0a05,$0307,$06ff
	dc.w $8042,$0601
	dc.w $8041,$0201,$0e29

	dc.w $8036
	dc.l loc_078f24

loc_079f3e:
	dc.w $8004,$187a
	dc.w $0003,$0c83,$001e,$7c00
	dc.w $8027,$ffe4,$0050
	dc.w $0007,$0da5,$001f,$7800
	dc.w $8028
	dc.w $0006,$0c84,$001e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079f64:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_079f92

	dc.w $803e,$082b,$0600
	dc.w $803f,$1004,$0804,$1002
	dc.w $8040,$0a04,$0408,$08ff
	dc.w $8041,$0201,$0021

	dc.w $8036
	dc.l loc_078f18

loc_079f92:
	dc.w $8004,$187a
	dc.w $0002,$0c5e,$0020,$7c00
	dc.w $0002,$0c75,$0021,$78ff,$fff0,$0000,$0000
	dc.w $8045,$0002
	dc.w $8027,$ffd8,$003c
	dc.w $0008,$0de9,$0022,$7800
	dc.w $8027,$ffd8,$000c
	dc.w $0004,$0c8b,$0023,$78ff,$0008,$0000,$0000
	dc.w $8028
	dc.w $0004,$0c5e,$0020,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_079fde:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_07a00c

	dc.w $803e,$082b,$0100
	dc.w $803f,$0e04,$0803,$0e02
	dc.w $8040,$0a04,$040a,$08ff
	dc.w $8041,$0401,$0824

	dc.w $8036
	dc.l loc_078f18

loc_07a00c:
	dc.w $8004,$187a
	dc.w $0002,$0c5e,$0020,$7c00
	dc.w $0002,$0c75,$0021,$78ff,$fff0,$0000,$0000
	dc.w $8045,$0002
	dc.w $8027,$ffd8,$003c
	dc.w $000a,$0c7d,$0024,$78ff,$fff0,$0000,$0000
	dc.w $8027,$ffd8,$000c
	dc.w $0004,$0c8b,$0023,$78ff,$0008,$0000,$0000
	dc.w $8028
	dc.w $0004,$0c5e,$0020,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a05e:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_07a090

	dc.w $803e,$0a29,$0600
	dc.w $803f,$0602,$0201,$0601
	dc.w $8040,$0a04,$0308,$04ff
	dc.w $8042,$0601
	dc.w $8041,$0101,$0624
	dc.w $803c,$0004,$0000

loc_07a090:
	dc.w $8004,$189d
	dc.w $8027,$ffec,$0028
	dc.w $0003,$0c87,$0025,$84ff,$fff8,$0000,$0000
	dc.w $8027,$ffe4,$0040
	dc.w $0008,$0c88,$0026,$7800
	dc.w $8027,$ffec,$0028
	dc.w $0004,$0c87,$0025,$84ff,$fff8,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a0cc:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_07a0fa

	dc.w $803e,$0844,$0300
	dc.w $803f,$1406,$0005,$1404
	dc.w $8040,$0803,$0508,$11ff
	dc.w $8041,$0401,$fc24

	dc.w $8036
	dc.l loc_078f18

loc_07a0fa:
	dc.w $8004,$18a3
	dc.w $0003,$0de2,$0027,$7cff,$0004,$0005,$0000
	dc.w $8027,$ffe0,$001c
	dc.w $0002,$0de3,$0028,$78ff,$0004,$0004,$0000
	dc.w $8045,$0004
	dc.w $8027,$ffe0,$0034
	dc.w $0003,$0de4,$0029,$78ff,$0004,$0004,$0000
	dc.w $803e,$0845,$0500
	dc.w $803f,$0e06,$1203,$0c04
	dc.w $0005,$0de5,$002a,$78ff,$0004,$0004,$0000
	dc.w $8027,$ffe0,$001c
	dc.w $0005,$0de4,$002b,$78ff,$0004,$0004,$0000
	dc.w $8028
	dc.w $0006,$0de3,$002c,$7cff,$0004,$0004,$0000
	dc.w $0006,$0c68,$002d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a182:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_07a1b0

	dc.w $803e,$0825,$0100
	dc.w $803f,$1a0a,$1006,$1a08
	dc.w $8040,$0704,$0708,$0eff
	dc.w $8041,$0401,$1333

	dc.w $8036
	dc.l loc_078f18

loc_07a1b0:
	dc.w $0003,$0c67,$001a,$78ff,$0004,$0000,$0000
	dc.w $8004,$18a1
	dc.w $802b,$1c98
	dc.w $0002,$0c6c,$002e,$7800
	dc.w $803b,$d000,$f812

	dc.w $8008
	dc.l $00040000,$00000000

	dc.w $8027,$ffe8,$0024
	dc.w $0002,$0c6d,$002f,$78ff,$fffc,$0000,$0000
	dc.w $8023
	dc.w $8045,$0004
	dc.w $8027,$fff0,$0054
	dc.w $0008,$0c6e,$0030,$78ff,$fff6,$0000,$0000
	dc.w $8027,$ffe8,$0024
	dc.w $0007,$0c6d,$002f,$78ff,$fffc,$0000,$0000
	dc.w $8028
	dc.w $8007,$0008,$0000
	dc.w $803c,$0000
	dc.w $0007,$0c6c,$002e,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a236:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_07a264

	dc.w $803e,$0825,$0200
	dc.w $803f,$180a,$0c06,$1808
	dc.w $8040,$0a04,$0707,$0dff
	dc.w $8041,$0201,$0e2e

	dc.w $8036
	dc.l loc_078f24

loc_07a264:
	dc.w $0004,$0c85,$0031,$7cff,$0002,$0000,$0000
	dc.w $8004,$18a1
	dc.w $802b,$1c9b
	dc.w $8007,$0004,$0000
	dc.w $0003,$0d88,$0032,$7800
	dc.w $8007,$0004,$0000
	dc.w $8045,$0004
	dc.w $8027,$ffe4,$0048
	dc.w $0007,$0c86,$0033,$7800
	dc.w $8007,$0008,$0000
	dc.w $8028
	dc.w $0006,$0d89,$0032,$7800
	dc.w $0007,$0d8a,$0031,$7cff,$0002,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a2c0:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_07a2f4

	dc.w $803e,$086d,$0100
	dc.w $803f,$1c0a,$1007,$1c08
	dc.w $8040,$0a02,$0708,$0dff
	dc.w $8041,$0401,$0020
	dc.w $803c,$0000
	dc.w $803b,$d000,$e802,$0000

loc_07a2f4:
	dc.w $8027,$ffd0,$0014
	dc.w $0001,$0c70,$0034,$84ff,$fffc,$0000,$0000
	dc.w $8004,$189e
	dc.w $8027,$ffd0,$fffc
	dc.w $0002,$0c71,$0035,$88ff,$fffc,$0000,$0000
	dc.w $803b,$d000,$e4fe
	dc.w $8027,$ffb8,$ffdc
	dc.w $0002,$0c72,$0036,$88ff,$fff8,$0000,$0000
	dc.w $802b,$1c99
	dc.w $8027,$ffb8,$ffec
	dc.w $0002,$0c73,$0037,$88ff,$fff8,$0000,$0000
	dc.w $8045,$0004
	dc.w $8027,$ffc0,$002c
	dc.w $0008,$0c74,$0038,$88ff,$fffc,$0000,$0000
	dc.w $8027,$ffc8,$0004
	dc.w $0007,$0c75,$0039,$78ff,$fffc,$0000,$0000
	dc.w $803c,$0000
	dc.w $8028
	dc.w $0006,$0c66,$003a,$7cff,$000a,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a394:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_07a3c2

	dc.w $803e,$086d,$0200
	dc.w $803f,$160a,$0a05,$1608
	dc.w $8040,$0802,$0804,$14ff
	dc.w $8041,$0201,$103a

	dc.w $8036
	dc.l loc_078f18

loc_07a3c2:
	dc.w $8027,$ffe0,$001c
	dc.w $0002,$0c5b,$0001,$7800
	dc.w $8004,$189e
	dc.w $0003,$0c6d,$002f,$78ff,$fffc,$0000,$0000
	dc.w $8007,$0010,$0000
	dc.w $802b,$1c99
	dc.w $8027,$0008,$0034
	dc.w $8011,$001c,$0004,$d000,$3000
	dc.w $0003,$0c5f,$003b,$78ff,$0018,$0000,$0000
	dc.w $8045,$0004
	dc.w $8027,$0018,$0074
	dc.w $0004,$0da6,$003c,$78ff,$001a,$0000,$0000
	dc.w $8027,$0020,$006c
	dc.w $0004,$0da7,$003d,$88ff,$0018,$0000,$0000
	dc.w $8011,$001d,$0005,$1000,$10f4,$ff00
	dc.w $8027,$0010,$003c
	dc.w $8007,$0008,$0000
	dc.w $0004,$0c97,$003e,$88ff,$0018,$0000,$0000
	dc.w $8027,$0008,$002c
	dc.w $0004,$0c98,$003f,$84ff,$0010,$0000,$0000
	dc.w $8027,$ffe8,$001c
	dc.w $0004,$0c99,$0040,$8000
	dc.w $8007,$0008,$0000
	dc.w $8027,$ffe0,$001c
	dc.w $0004,$0c68,$002d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a494:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_07a4c2

	dc.w $803e,$0a6d,$0b00
	dc.w $803f,$140a,$0805,$1408
	dc.w $8040,$0704,$0706,$12ff
	dc.w $8041,$0201,$1032
	dc.w $803c,$0004,$0000

loc_07a4c2:
	dc.w $0003,$0dda,$0041,$7800
	dc.w $8004,$189e
	dc.w $802b,$1c9c
	dc.w $803b,$e000,$fa14
	dc.w $0004,$0c89,$0042,$7800
	dc.w $8045,$0004
	dc.w $8027,$fffc,$0068
	dc.w $0006,$0c8a,$0043,$7800
	dc.w $8028
	dc.w $000a,$0c89,$0042,$7800
	dc.w $803c,$0004
	dc.w $0008,$0ddb,$0041,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a50a:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_07a538

	dc.w $803e,$0922,$0500
	dc.w $803f,$1004,$0604,$1003
	dc.w $8040,$0400,$0610,$ffff
	dc.w $8041,$0201,$0322

	dc.w $8036
	dc.l loc_078f30

loc_07a538:
	dc.w $8004,$187a
	dc.w $0004,$0c9d,$0044,$7800
	dc.w $8027,$ffe0,$001c
	dc.w $0002,$0c9e,$0045,$7800
	dc.w $8045,$0002
	dc.w $8027,$ffd8,$003c
	dc.w $0010,$0c9f,$0046,$7800
	dc.w $8027,$ffe0,$001c
	dc.w $0004,$0c9e,$0045,$7800
	dc.w $8028
	dc.w $0004,$0c9d,$0044,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a57e:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_07a5ac

	dc.w $803e,$092a,$0500
	dc.w $803f,$1004,$0a04,$1003
	dc.w $8040,$0800,$0408,$ffff
	dc.w $8041,$0201,$0023

	dc.w $8036
	dc.l loc_078f30

loc_07a5ac:
	dc.w $8004,$187a
	dc.w $8027,$ffe0,$001c
	dc.w $0004,$0c76,$0047,$7800
	dc.w $8045,$0002
	dc.w $8027,$ffd0,$003c
	dc.w $0008,$0c95,$0048,$7cff,$0010,$0000,$0000
	dc.w $8027,$ffe0,$0024
	dc.w $0004,$0c87,$0049,$88ff,$0000,$0020,$0000
	dc.w $8027,$ffd8,$0014
	dc.w $0004,$0c8b,$004a,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a5fa:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_07a628

	dc.w $803e,$094a,$0200
	dc.w $803f,$1004,$0604,$1003
	dc.w $8040,$0800,$0410,$ffff
	dc.w $8041,$0101,$f020

	dc.w $8036
	dc.l loc_078f30

loc_07a628
	dc.w $8004,$189c
	dc.w $0004,$0d25,$004b,$7cff,$0000,$0018,$0000
	dc.w $8045,$0002
	dc.w $8027,$ffe0,$002c
	dc.w $0010,$0c8d,$004c,$7cff,$fff8,$0000,$0000
	dc.w $8028
	dc.w $0004,$0d25,$004b,$7cff,$0000,$0018,$0000
	dc.w $0006,$0c79,$000a,$7c00
	dc.w $0008,$0c7a,$000c,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a674:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_07a6a8

	dc.w $803e,$194a,$0200
	dc.w $803f,$0e04,$0603,$0e03
	dc.w $8040,$0800,$06ff,$ffff
	dc.w $8041,$0101,$f211
	dc.w $803c,$0008
	dc.w $803b,$d0e0,$f40a,$0000

loc_07a6a8:
	dc.w $8004,$1898
	dc.w $0003,$0d25,$004b,$7cff,$0000,$0018,$0000
	dc.w $802a,$0042
	dc.w $0003,$0c76,$0047,$7800
	dc.w $8045,$0002
	dc.w $8027,$ffe0,$001c
	dc.w $0010,$0de1,$004d,$78ff,$fffc,$0020,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a6e0:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_07a70e

	dc.w $803e,$1946,$0500
	dc.w $803f,$1c08,$1207,$1c08
	dc.w $8040,$0800,$0505,$ffff
	dc.w $8041,$0401,$ff18

	dc.w $8036
	dc.l loc_078f30

loc_07a70e:
	dc.w $8004,$18a3
	dc.w $8027,$ffe0,$001c
	dc.w $0002,$0c76,$0047,$7800
	dc.w $802b,$1c98
	dc.w $8049,$0216,$0003,$0000
	dc.w $8027,$ffe0,$000c
	dc.w $0003,$0c9b,$004e,$7800
	dc.w $8049,$0216,$0000,$0000
	dc.w $8045,$0004
	dc.w $8027,$ffe8,$001c
	dc.w $0005,$0d8b,$004f,$78ff,$0000,$fff8,$0000
	dc.w $8027,$ffe0,$000c
	dc.w $0006,$0c9b,$004e,$7800
	dc.w $8027,$ffe0,$001c
	dc.w $0006,$0c76,$0047,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a778:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_07a7a6

	dc.w $803e,$0946,$0200
	dc.w $803f,$1808,$1006,$1806
	dc.w $8040,$0800,$0408,$ffff
	dc.w $8041,$0601,$0a27

	dc.w $8036
	dc.l loc_078f30

loc_07a7a6:
	dc.w $8004,$18a3

	dc.w $800a
	dc.l loc_07a7f4

	dc.w $8027,$ffe8,$001c
	dc.w $0002,$0c90,$0050,$7c00
	dc.w $802b,$1c9c
	dc.w $0002,$0c91,$0051,$7c00
	dc.w $8045,$0004
	dc.w $8027,$fff0,$003c
	dc.w $0003,$0c92,$0052,$7800
	dc.w $0005,$0c93,$0053,$7800
	dc.w $8027,$fff0,$0014
	dc.w $0006,$0c8f,$0054,$8800
	dc.w $8001

loc_07a7f4:
	dc.w $0002,$0d58,$88ff,$0004,$007f,$0b00
	dc.w $0002,$0d56,$88ff,$ffdb,$0087,$0b01
	dc.w $0003,$0d47,$88ff,$ffbb,$004f,$0b01
	dc.w $0002,$0d4c,$88ff,$ffc6,$0029,$0b00
	dc.w $0002,$0d47,$88ff,$ffc5,$0029,$0b00
	dc.w $0002,$0d50,$88ff,$ffc2,$0025,$0b01
	dc.w $0002,$0d57,$88ff,$ffc2,$0030,$0b01
	dc.w $0002,$0d59,$88ff,$ffc6,$0030,$0b00
	dc.w $0002,$0d5a,$88ff,$ffc6,$0030,$0b00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a862:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_07a890

	dc.w $803e,$1944,$0100
	dc.w $803f,$1208,$0a04,$1206
	dc.w $8040,$0400,$06ff,$ffff
	dc.w $8041,$0101,$ee13

	dc.w $8036
	dc.l loc_078f30

loc_07a890:
	dc.w $8004,$18a3
	dc.w $8027,$ffe0,$000c
	dc.w $0004,$0c9b,$004e,$7800
	dc.w $802b,$1c9b
	dc.w $8027,$ffd8,$001c
	dc.w $0002,$0ca1,$0055,$78ff,$0000,$0078,$0003
	dc.w $8045,$0004
	dc.w $8027,$ffe0,$001c
	dc.w $0010,$0cab,$0056,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a8ce:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_07a8fc

	dc.w $803e,$092c,$0100
	dc.w $803f,$1608,$1005,$1606
	dc.w $8040,$0800,$0705,$ffff
	dc.w $8041,$0201,$0428

	dc.w $8036
	dc.l loc_078f30

loc_07a8fc:
	dc.w $8004,$18a1
	dc.w $8027,$ffe0,$001c
	dc.w $0007,$0c76,$0058,$7800
	dc.w $8045,$0004
	dc.w $8027,$ffd8,$0034
	dc.w $0005,$0cad,$0057,$7800
	dc.w $8027,$ffe0,$001c
	dc.w $0004,$0c76,$0058,$7800
	dc.w $8028
	dc.w $0006,$0c79,$000a,$7c00
	dc.w $0006,$0c7a,$000c,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a942:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_07a970

	dc.w $803e,$092c,$0200
	dc.w $803f,$1408,$0a05,$1406
	dc.w $8040,$0800,$0605,$ffff
	dc.w $8041,$0101,$fe24

	dc.w $8036
	dc.l loc_078f30

loc_07a970:
	dc.w $8004,$18a1
	dc.w $8027,$ffe0,$001c
	dc.w $0006,$0c76,$0058,$7800
	dc.w $8045,$0004
	dc.w $8027,$ffd8,$0034
	dc.w $0005,$0dd5,$0059,$78ff,$fff8,$0000,$0000
	dc.w $8027,$ffe0,$001c
	dc.w $0004,$0c76,$0058,$7800
	dc.w $0006,$0c79,$000a,$7c00
	dc.w $0006,$0c7a,$000c,$7c00
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07a9ba:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_07a9e8

	dc.w $803e,$0843,$0500
	dc.w $803f,$1806,$0c07,$1808
	dc.w $8040,$0403,$080c,$0a00
	dc.w $8041,$0401,$ff13

	dc.w $8036
	dc.l loc_078f18

loc_07a9e8:
	dc.w $802c
	dc.w $0004,$0c7b,$0008,$7c00
	dc.w $8045,$0004
	dc.w $8011,$001c,$0004,$0000,$e000

	dc.w $804b
	dc.l $00030000,$fffb4000,$00008000

	dc.w $802b,$1c9d
	dc.w $8004,$18a3
	dc.w $0004,$0c9b,$004e,$7800
	dc.w $8027,$ffe8,$001c
	dc.w $000c,$0c77,$005a,$7800
	dc.w $8028
	dc.w $0004,$0c9b,$004e,$7800
	dc.w $8011,$001d,$0005,$f000,$ecec,$ff00
	dc.w $8048,$02c0,$0006
	dc.w $0003,$0c65,$005b,$7c00
	dc.w $8007,$0010,$0000
	dc.w $0003,$0c7b,$0008,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07aa60:
	dc.w $8037
	dc.l loc_0785a2
	dc.w $8038
	dc.l loc_07aa98

	dc.w $803e,$3815,$2800
	dc.w $803f,$1606,$0408,$1608
	dc.w $8040,$0002,$0b08,$1700
	dc.w $8041,$0201,$062e
	dc.w $8039,$0018
	dc.w $8048,$0550,$000a

	dc.w $8036
	dc.l loc_078f18

loc_07aa98:
	dc.w $8047,$00b6,$0000
	dc.w $802c

	dc.w $804e
	dc.l $fffc8000,$00010000

	dc.w $0003,$0ceb,$005c,$78ff,$0000,$0004,$0000
	dc.w $802a,$0041
	dc.w $8004,$1885
	dc.w $0004,$0cef,$005d,$78ff,$0000,$0004,$0000
	dc.w $803b,$d000,$f012

	dc.w $804e
	dc.l $000d8000,$fffee000

	dc.w $8032,$000c,$fff0,$1300
	dc.w $0002,$0cf0,$005e,$78ff,$0000,$0004,$0000
	dc.w $8045,$000a

	dc.w $800d
	dc.l loc_07ab8e
	dc.w $0003

	dc.w $0002,$0cf1,$005f,$78ff,$fff8,$0004,$0000
	dc.w $0004,$0cf1,$0060,$78ff,$fff8,$0004,$0000
	dc.w $0002,$0cf1,$0061,$78ff,$fff8,$0004,$0000
	dc.w $803e,$3815,$2400
	dc.w $8047,$00b6,$ffff
	dc.w $0002,$0cf2,$0062,$78ff,$fff8,$0004,$0000
	dc.w $0008,$0cf2,$0063,$78ff,$fff8,$0004,$0000
	dc.w $8007,$0010,$0000,$803c,$0000
	dc.w $0007,$0cfd,$0064,$7cff,$0004,$0004,$0000
	dc.w $0005,$0cff,$0065,$7cff,$0004,$0004,$0000
	dc.w $8048,$0550,$0003
	dc.w $0003,$0d00,$0065,$7cff,$0004,$0004,$0000
	dc.w $8001

loc_07ab8e:
	dc.w $0002,$0000,$6000
	dc.w $0004,$0e04,$74ff,$ffd8,$0054,$0d00
	dc.w $0002,$0e05,$74ff,$ffd8,$0054,$0d00
	dc.w $0002,$0e06,$74ff,$ffd8,$0054,$0d00
	dc.w $0002,$0e07,$74ff,$ffd8,$0054,$0d00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07abc6:
	dc.w $8037
	dc.l loc_0785a2
	dc.w $8038
	dc.l loc_07abfe

	dc.w $803e,$3815,$2800
	dc.w $803f,$2008,$040b,$2008
	dc.w $8040,$0004,$0f07,$1d00
	dc.w $8041,$0201,$062e
	dc.w $8039,$0018
	dc.w $8048,$0550,$000a

	dc.w $8036
	dc.l loc_078f18

loc_07abfe:
	dc.w $8047,$00b6,$0000
	dc.w $802c

	dc.w $804e
	dc.l $fffc8000,$00010000

	dc.w $0003,$0ceb,$005c,$78ff,$0000,$0004,$0000
	dc.w $802a,$0041
	dc.w $0007,$0cef,$005d,$78ff,$0000,$0004,$0000
	dc.w $803b,$d000,$f012
	dc.w $8004,$1885

	dc.w $804e
	dc.l $000fc000,$fffee000

	dc.w $8032,$0010,$fff0,$1300
	dc.w $0003,$0cf0,$005e,$78ff,$0000,$0004,$0000
	dc.w $8045,$000c

	dc.w $800d
	dc.l loc_07ad0a
	dc.w $0003

	dc.w $0002,$0cf1,$005f,$78ff,$fff8,$0004,$0000
	dc.w $0002,$0cf1,$0060,$78ff,$fff8,$0004,$0000
	dc.w $803e,$3815,$2800
	dc.w $803f,$1808,$0409,$1808
	dc.w $0002,$0cf1,$0061,$78ff,$fff8,$0004,$0000
	dc.w $803e,$3815,$2400
	dc.w $803f,$1608,$0409,$1608
	dc.w $8047,$00b6,$ffff
	dc.w $0003,$0cf2,$0062,$78ff,$fff8,$0004,$0000
	dc.w $000a,$0cf2,$0063,$78ff,$fff8,$0004,$0000
	dc.w $8007,$0010,$0000
	dc.w $803c,$0000
	dc.w $0009,$0cfe,$0064,$7cff,$0004,$0004,$0000
	dc.w $0006,$0cff,$0065,$7cff,$0004,$0004,$0000
	dc.w $8048,$0550,$0004
	dc.w $0004,$0d00,$0065,$7cff,$0004,$0004,$0000
	dc.w $8001

loc_07ad0a
	dc.w $0004,$0e04,$74ff,$ffd8,$0054,$0d00
	dc.w $0002,$0e05,$74ff,$ffd8,$0054,$0d00
	dc.w $0003,$0e06,$74ff,$ffd8,$0054,$0d00
	dc.w $0002,$0e07,$74ff,$ffd8,$0054,$0d00
	dc.w $0008,$0000,$6000
	dc.w $0003,$0ce9,$74ff,$fff8,$0084,$0000
	dc.w $0003,$0cea,$74ff,$fff8,$0084,$0000
	dc.w $0003,$0ce9,$74ff,$fff0,$007c,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07ad66:
	dc.w $8037
	dc.l loc_0785a2
	dc.w $8038
	dc.l loc_07ada2

	dc.w $803e,$3815,$2400
	dc.w $803f,$1808,$0c09,$1808
	dc.w $8040,$0002,$0908,$1900
	dc.w $8043,$0006
	dc.w $8041,$0c01,$f830
	dc.w $8039,$0018
	dc.w $8048,$0550,$0006

	dc.w $8036
	dc.l loc_078f18

loc_07ada2:
	dc.w $8047,$00b6,$0000
	dc.w $802c

	dc.w $804e
	dc.l $fffc8000,$00010000

	dc.w $0003,$0ceb,$0066,$78ff,$0000,$0004,$0000
	dc.w $802a,$0040
	dc.w $8004,$1885
	dc.w $0003,$0cf4,$0067,$78ff,$0000,$0004,$0000
	dc.w $0003,$0cf5,$0068,$78ff,$0000,$0004,$0000
	dc.w $803b,$d000,$f00e
	dc.w $8045,$000a

	dc.w $804e
	dc.l $000a8000,$ffff0000

	dc.w $8032,$000c,$0000,$1300

	dc.w $800d
	dc.l loc_07aea4
	dc.w $0001

	dc.w $0003,$0cf6,$0069,$88ff,$fffc,$0004,$0000
	dc.w $0003,$0cf6,$006a,$88ff,$fffc,$0004,$0000
	dc.w $8007,$0008,$0000
	dc.w $803e,$3815,$2400
	dc.w $8047,$00b6,$ffff
	dc.w $0002,$0cf7,$006b,$78ff,$0004,$0004,$0000
	dc.w $0004,$0cf7,$006c,$78ff,$0004,$0004,$0000
	dc.w $803c,$0000
	dc.w $0004,$0cf8,$006d,$78ff,$0004,$0004,$0000
	dc.w $8011,$001d,$0005,$1800,$20f0,$ff00
	dc.w $0009,$0cf9,$006e,$78ff,$0004,$0004,$0000
	dc.w $0005,$0cfb,$006f,$7cff,$0004,$0004,$0000
	dc.w $8048,$0550,$0003
	dc.w $0003,$0cfc,$006f,$7cff,$0004,$0004,$0000
	dc.w $8001

loc_07aea4:
	dc.w $0003,$0e08,$74ff,$ffcc,$005c,$0e00
	dc.w $0003,$0e09,$74ff,$ffd4,$005c,$0e00
	dc.w $0002,$0e0a,$74ff,$ffdc,$006c,$0e00
	dc.w $0002,$0e0b,$74ff,$ffdc,$0064,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07aed6:
	dc.w $8037
	dc.l loc_0785a2
	dc.w $8038
	dc.l loc_07af12

	dc.w $803e,$3814,$1800
	dc.w $803f,$0a06,$0004,$0804
	dc.w $8040,$0004,$0d09,$2000
	dc.w $8043,$0006
	dc.w $8041,$0c01,$0830
	dc.w $8039,$0018
	dc.w $8048,$0550,$0008

	dc.w $8036
	dc.l loc_078f18

loc_07af12:
	dc.w $8047,$00b6,$0000
	dc.w $802c

	dc.w $804e
	dc.l $fffc8000,$00010000

	dc.w $0003,$0ceb,$005c,$78ff,$0000,$0004,$0000
	dc.w $802a,$0040
	dc.w $0007,$0cf4,$0067,$78ff,$0000,$0004,$0000

	dc.w $804e
	dc.l $000d0000,$ffff0000

	dc.w $8004,$1885
	dc.w $803b,$d000,$f00e
	dc.w $8032,$0010,$0000,$1300
	dc.w $0003,$0cf5,$0073,$78ff,$0000,$0004,$0000
	dc.w $8045,$000e

	dc.w $800d
	dc.l loc_07b01c
	dc.w $0001

	dc.w $0003,$0cf6,$0070,$88ff,$fffc,$0004,$0000
	dc.w $0003,$0cf6,$0071,$88ff,$fffc,$0004,$0000
	dc.w $803e,$3815,$2400
	dc.w $803f,$1e06,$000a,$1a04
	dc.w $8047,$00b6,$ffff
	dc.w $8007,$0008,$0000
	dc.w $0003,$0cf7,$0072,$78ff,$0004,$0004,$0000
	dc.w $0005,$0cf7,$006c,$78ff,$0004,$0004,$0000
	dc.w $803c,$0000
	dc.w $0005,$0cf8,$006d,$78ff,$0004,$0004,$0000
	dc.w $8011,$001d,$0005,$1800,$20f0,$ff00
	dc.w $000c,$0cfa,$006e,$78ff,$0004,$0004,$0000
	dc.w $0006,$0cfb,$006f,$7cff,$0004,$0004,$0000
	dc.w $8048,$0550,$0004
	dc.w $0004,$0cfc,$006f,$7cff,$0004,$0004,$0000
	dc.w $8001

loc_07b01c:
	dc.w $0003,$0e08,$74ff,$ffcc,$005c,$0e00
	dc.w $0003,$0e09,$74ff,$ffd4,$005c,$0e00
	dc.w $0003,$0e0a,$74ff,$ffdc,$006c,$0e00
	dc.w $0003,$0e0b,$74ff,$ffdc,$0064,$0e00
	dc.w $0007,$0000,$6000
	dc.w $0003,$0cea,$74ff,$0030,$006c,$0001
	dc.w $0003,$0ce9,$74ff,$0028,$007c,$0001
	dc.w $0003,$0cea,$74ff,$0020,$0084,$0001
	dc.w $0003,$0ce9,$74ff,$0018,$007c,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07b084:
	dc.w $8037
	dc.l loc_07862c
	dc.w $8038
	dc.l loc_07b14a

	dc.w $803e,$294e,$1f00
	dc.w $803f,$0c04,$0005,$0a08
	dc.w $8045,$000c
	dc.w $8040,$0000,$16ff,$0000
	dc.w $8043,$0008
	dc.w $8041,$0206,$e41c
	dc.w $803b,$0000,$f00a
	dc.w $8039,$0011
	dc.w $8048,$0550,$0002,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07b0c6:
	dc.w $8037
	dc.l loc_07862c
	dc.w $8038
	dc.l loc_07b1cc

	dc.w $803e,$294e,$1f00
	dc.w $803f,$0c04,$0005,$0a08
	dc.w $8045,$000c
	dc.w $8040,$0000,$18ff,$0000
	dc.w $8043,$0008
	dc.w $8041,$0206,$e41c
	dc.w $803b,$0000,$f00a
	dc.w $8039,$0011
	dc.w $8048,$0550,$0002,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07b108:
	dc.w $8037
	dc.l loc_07862c
	dc.w $8038
	dc.l loc_07b14a

	dc.w $803e,$294e,$1f00
	dc.w $803f,$0c04,$0005,$0a08
	dc.w $8045,$000c
	dc.w $8040,$0000,$16ff,$0000
	dc.w $8043,$0008
	dc.w $8041,$0206,$e41c
	dc.w $803b,$0000,$f00a
	dc.w $8039,$0011
	dc.w $8048,$0550,$0002,$0000

;==========================
loc_07b14a:
	dc.w $8047,$02b8,$0002
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $802c
	dc.w $0002,$0c81,$0000,$84ff,$0008,$0000,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $802a,$0045
	dc.w $8011,$001c,$0004,$e800,$b0f0
	dc.w $8011,$001c,$0004,$1000,$20f0
	dc.w $0004,$0d11,$0074,$8400
	dc.w $0004,$0d12,$0075,$7400
	dc.w $803b,$d0f0,$f010
	dc.w $0004,$0d12,$0075,$7400
	dc.w $0008,$0d13,$0076,$7400
	dc.w $8004,$18a3
	dc.w $0004,$0d14,$0077,$7400
	dc.w $803b,$0000,$e818
	dc.w $0008,$0d15,$0078,$7400
	dc.w $8001

;==========================
loc_07b1cc:
	dc.w $8047,$02b8,$0002
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $802c
	dc.w $0002,$0c81,$0000,$84ff,$0008,$0000,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $802a,$0045
	dc.w $8011,$001c,$0004,$e800,$b0f0
	dc.w $8011,$001c,$0004,$1000,$20f0
	dc.w $0004,$0d11,$0074,$8400
	dc.w $0004,$0d12,$0075,$7400
	dc.w $803b,$d0f0,$f010
	dc.w $0004,$0d12,$0075,$7400
	dc.w $0008,$0d13,$0076,$7400
	dc.w $8004,$18a3
	dc.w $0006,$0d14,$0077,$7400
	dc.w $803b,$0000,$e818
	dc.w $0008,$0d15,$0078,$7400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07b24e:
	dc.w $803e,$294e,$2700
	dc.w $803f,$1808,$0c0a,$1808
	dc.w $8047,$02b8,$0000
	dc.w $8026,$0010
	dc.w $802b,$1c9e
	dc.w $8002,$1891
	dc.w $8040,$0000,$0004,$2700
	dc.w $8043,$0001
	dc.w $8011,$001d,$0005,$e000,$a0e0,$0100
	dc.w $8011,$001d,$0005,$2000,$60e0,$0100
	dc.w $803b,$e000,$e818
	dc.w $0008,$0d19,$0079,$7400

	dc.w $804b
	dc.l $fffd0000,$fff6a000,$0000c000

	dc.w $8047,$00b7,$ffff
	dc.w $0005,$0d1a,$007a,$7800
	dc.w $0004,$0d1b,$007a,$7800
	dc.w $0004,$0d1c,$007a,$7800
	dc.w $0004,$0d1d,$007a,$7800
	dc.w $0004,$0d1e,$007b,$8000
	dc.w $0005,$0d1f,$007b,$8000
	dc.w $803c,$0000
	dc.w $8003,$1870
	dc.w $8011,$001d,$0005,$0000,$c0e0,$ff00
	dc.w $0004,$0d20,$007c,$80ff,$0008,$0000,$0000
	dc.w $8048,$0550,$0005
	dc.w $0003,$0d21,$007d,$80ff,$0004,$0000,$0000
	dc.w $0002,$0d22,$007e,$80ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07b32a:
	dc.w $8037
	dc.l loc_0783f2
	dc.w $8038
	dc.l loc_07b364

	dc.w $803e,$2804,$1100
	dc.w $803f,$0c03,$0204,$0b06
	dc.w $8040,$0000,$0d38,$ff00
	dc.w $8041,$0204,$2032
	dc.w $8039,$0000
	dc.w $8048,$0550,$000a
	dc.w $803b,$d000,$f00e,$0000

loc_07b364:
	dc.w $8047,$02b8,$0004
	dc.w $8047,$00b6,$0000
	dc.w $802c
	dc.w $0002,$0d04,$007f,$7c00
	dc.w $8002,$18be
	dc.w $0002,$0d05,$0080,$7c00
	dc.w $0004,$0d06,$0080,$7c00
	dc.w $802a,$0044
	dc.w $0002,$0d07,$0081,$7c00
	dc.w $8007,$0010,$0000
	dc.w $0002,$0d08,$0082,$7cff,$fff0,$0000,$0000
	dc.w $8045,$000a
	dc.w $8007,$0010,$0000
	dc.w $8002,$18bf
	dc.w $8011,$001c,$0004,$0000,$f000

	dc.w $800a
	dc.l loc_07b43a

	dc.w $0001,$0d09,$0083,$7c00
	dc.w $804e,$0004,$0000,$ffff,$8000
	dc.w $8047,$00b6,$ffff
	dc.w $0008,$0d09,$0083,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07b3ee:
	dc.w $8040,$0000,$0000,$1600
	dc.w $8023
	dc.w $0004,$0d09,$0083,$7c00
	dc.w $8007,$fff0,$0000
	dc.w $0005,$0d08,$0082,$7cff,$fff0,$0000,$0000
	dc.w $8007,$fff0,$0000
	dc.w $0005,$0d07,$0081,$7c00
	dc.w $0004,$0d04,$007f,$7c00
	dc.w $8048,$0550,$0004
	dc.w $0004,$0d03,$0084,$7c00
	dc.w $8001

loc_07b43a:
	dc.w $0001,$0dec,$70ff,$ffc8,$0058,$0b00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07b448:
	dc.w $0002,$0ded,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0dee,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0def,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0df0,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0df1,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0df2,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0df3,$70ff,$0018,$0008,$0b00
	dc.w $8002,$18cc
	dc.w $0003,$0dee,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0def,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0df0,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0df1,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0df2,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0df3,$70ff,$0018,$0008,$0b00
	dc.w $8002,$18cc
	dc.w $0003,$0dee,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0def,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0df0,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0df1,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0df2,$70ff,$0018,$0008,$0b00
	dc.w $0003,$0df3,$70ff,$0018,$0008,$0b00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07b536:
	dc.w $0004,$0df4,$70ff,$0018,$0008,$0b00
	dc.w $0004,$0df5,$70ff,$0014,$0008,$0b00
	dc.w $0004,$0df6,$70ff,$0010,$0008,$0b00
	dc.w $0004,$0df7,$70ff,$000c,$0008,$0b00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07b568:
	dc.w $8037
	dc.l loc_07846a
	dc.w $8038
	dc.l loc_07b5a6

	dc.w $803e,$280d,$1100
	dc.w $8046,$ec00
	dc.w $803f,$0e03,$0204,$0c06
	dc.w $8040,$0000,$0e40,$ff00
	dc.w $8041,$0204,$d22e
	dc.w $8039,$0000
	dc.w $8048,$0550,$000a
	dc.w $803b,$0000,$f00e,$0000

loc_07b5a6:
	dc.w $8047,$02b8,$0004
	dc.w $8047,$00b6,$0000
	dc.w $802c
	dc.w $0002,$0d04,$007f,$7c00
	dc.w $8002,$18be
	dc.w $0002,$0d05,$0080,$7c00
	dc.w $0004,$0d06,$0080,$7c00
	dc.w $802a,$0043
	dc.w $0002,$0d07,$0081,$7c00
	dc.w $8007,$0010,$0000
	dc.w $8049,$0216,$0003,$8000
	dc.w $0002,$0d08,$0082,$7cff,$fff0,$0000,$0000
	dc.w $8007,$0010,$0000
	dc.w $8045,$000e
	dc.w $8011,$001c,$0004,$0000,$f000

	dc.w $800a
	dc.l loc_07b6d2

	dc.w $0002,$0d09,$0083,$7c00
	dc.w $8002,$18bf
	dc.w $8047,$00b6,$ffff
	dc.w $8000,$0000
	dc.l loc_07b630

loc_07b62c:
	dc.w $8002,$18cc

loc_07b630:
	dc.w $0002,$0d09,$0085,$7c00
	dc.w $8049,$0216,$0001,$d916
	dc.w $0004,$0d0a,$0085,$7c00
	dc.w $8049,$0216,$0000,$c000
	dc.w $0004,$0d0b,$0085,$7c00
	dc.w $8049,$0216,$ffff,$a6e9
	dc.w $0004,$0d0c,$0085,$7c00
	dc.w $8049,$0216,$ffff,$4000
	dc.w $0004,$0d0d,$0085,$7c00
	dc.w $8049,$0216,$ffff,$a6e9
	dc.w $0004,$0d0e,$0085,$7cff,$0004,$0002,$0000
	dc.w $8049,$0216,$0000,$c000
	dc.w $0004,$0d0f,$0085,$7cff,$0000,$0002,$0000
	dc.w $8049,$0216,$0001,$d916
	dc.w $0004,$0d10,$0085,$7cff,$fffc,$0003,$0000
	dc.w $8049,$0216,$0002,$4000
	dc.w $0002,$0d09,$0085,$7c00
	dc.w $8000,$0000
	dc.l loc_07b62c

loc_07b6d2:
	dc.w $0002,$0dec,$70ff,$ffc8,$0058,$0b00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07b6e0:
	dc.w $0003,$0d41,$78ff,$0002,$0000,$0b00
	dc.w $0003,$0d42,$78ff,$0002,$0000,$0b00
	dc.w $0003,$0d43,$78ff,$0002,$0000,$0b00
	dc.w $0003,$0d44,$78ff,$0002,$0000,$0b00
	dc.w $0003,$0d45,$78ff,$0002,$0000,$0b00
	dc.w $0003,$0d46,$78ff,$0002,$0000,$0b00
	dc.w $8000,$0000
	dc.l loc_07b6e0

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07b730:
	dc.w $0001,$0d51,$78ff,$0002,$fff8,$0b00
	dc.w $0001,$0d52,$78ff,$0002,$fff8,$0b00
	dc.w $0001,$0d53,$78ff,$0002,$fff8,$0b00
	dc.w $0001,$0d54,$78ff,$0002,$fff8,$0b00
	dc.w $0001,$0d57,$78ff,$0002,$fff8,$0b00
	dc.w $0001,$0d58,$78ff,$0002,$fff8,$0b00
	dc.w $0001,$0d59,$78ff,$fffe,$fff8,$0b01
	dc.w $0001,$0d5a,$78ff,$fffe,$fff8,$0b01
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07b792:
	dc.w $0002,$0d47,$78ff,$0000,$0000,$0b00
	dc.w $0002,$0d48,$78ff,$0000,$0000,$0b00
	dc.w $0002,$0d4f,$78ff,$0000,$0008,$0b01
	dc.w $0002,$0d50,$78ff,$0000,$0008,$0b01

	dc.w $800a
	dc.l loc_07b7fa

	dc.w $0002,$0d57,$78ff,$fffc,$0014,$0b01
	dc.w $0002,$0d58,$78ff,$fffc,$0014,$0b01
	dc.w $0002,$0d59,$78ff,$fffc,$0014,$0b01
	dc.w $0002,$0d5a,$78ff,$0004,$0014,$0b00
	dc.w $8001

loc_07b7fa:
	dc.w $0002,$0d58,$78ff,$0004,$0010,$0b01
	dc.w $0002,$0d59,$78ff,$0004,$0010,$0b01
	dc.w $0002,$0d5a,$78ff,$0004,$0010,$0b01
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07b820:
	dc.w $8040,$0000,$0000,$1400
	dc.w $8023
	dc.w $803b,$d000,$f00e
	dc.w $0004,$0d09,$0083,$7c00
	dc.w $8007,$fff0,$0000
	dc.w $0004,$0d08,$0082,$7cff,$fff0,$0000,$0000
	dc.w $8007,$fff0,$0000
	dc.w $0004,$0d07,$0081,$7c00
	dc.w $0004,$0d04,$007f,$7c00
	dc.w $8048,$0550,$0004
	dc.w $0004,$0d03,$0084,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07b872:
	dc.w $8037
	dc.l loc_0784ea
	dc.w $8038
	dc.l loc_07b8b0

	dc.w $803e,$3886,$1b00
	dc.w $803f,$0f04,$000a,$0800
	dc.w $8040,$0000,$1428,$ff00
	dc.w $8043,$0018
	dc.w $8041,$0612,$0e3c
	dc.w $8039,$0001
	dc.w $8048,$0550,$0000
	dc.w $803b,$0000,$f40a,$0000

loc_07b8b0:
	dc.w $8047,$00b7,$0000
	dc.w $8047,$00b9,$0000
	dc.w $802c
	dc.w $0004,$0c5f,$0000,$7cff,$0020,$0000,$0000

	dc.w $8017,$0020
	dc.l loc_07b8e0

	dc.w $802b,$1ca0
	dc.w $8000,$0000
	dc.l loc_07b8e4

loc_07b8e0:
	dc.w $802b,$1c9f

loc_07b8e4:
	dc.w $8011,$001d,$0005,$f000,$e0e0,$ff00
	dc.w $0005,$0d23,$0000,$7c00
	dc.w $0003,$0d24,$0000,$7c00
	dc.w $0002,$0d25,$0000,$7c00
	dc.w $8003,$186f
	dc.w $804b,$0000,$0000,$fff4,$0000,$0001,$0000
	dc.w $800f,$0036
	dc.w $8011,$001c,$0004,$f000,$e0f8
	dc.w $8011,$001c,$0004,$0000,$20f8
	dc.w $0006,$0d26,$0086,$7c00
	dc.w $8047,$00b9,$ffff
	dc.w $8032,$0010,$0010,$1300
	dc.w $0006,$0d26,$0086,$7c00
	dc.w $8019,$8008,$0000,$0000,$0000,$0000
	dc.w $0006,$0d8d,$0086,$7c00
	dc.w $0006,$0d8e,$0086,$7c00
	dc.w $0006,$0d8f,$0086,$7c00
	dc.w $0006,$0d8d,$0086,$7c00
	dc.w $0006,$0d8e,$0086,$7c00
	dc.w $0006,$0d8f,$0086,$7c00
	dc.w $0006,$0d8d,$0086,$7c00
	dc.w $0006,$0d8e,$0086,$7c00
	dc.w $0006,$0d8f,$0086,$7c00
	dc.w $0006,$0d8d,$0086,$7c00
	dc.w $0006,$0d8e,$0086,$7c00
	dc.w $803c,$0008
	dc.w $8047,$00b7,$ffff
	dc.w $000a,$0c7a,$000c,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07b9c8:
	dc.w $8008,$fffe,$8000,$0000,$0000
	dc.w $0002,$0d90,$78ff,$0000,$0000,$0c00
	dc.w $0002,$0d91,$78ff,$0000,$0000,$0c00
	dc.w $8008,$fffc,$8000,$0000,$0000
	dc.w $0002,$0d92,$78ff,$0000,$0000,$0c00
	dc.w $0002,$0d93,$78ff,$0000,$0000,$0c00
	dc.w $8008,$fff9,$0000,$0000,$0000
	dc.w $8004,$18bf
	dc.w $0002,$0d94,$78ff,$0000,$0000,$0c00
	dc.w $0002,$0d95,$78ff,$0000,$0000,$0c00
	dc.w $8008,$0000,$0000,$0000,$0000
	dc.w $0004,$0d96,$78ff,$0000,$0000,$0c00
	dc.w $0004,$0d97,$78ff,$0000,$0000,$0c00
	dc.w $0008,$0d98,$78ff,$0000,$0000,$0c00
	dc.w $8008,$000c,$0000,$0000,$0000
	dc.w $0004,$0d99,$78ff,$0000,$0000,$0c00
	dc.w $8008,$0010,$0000,$0000,$0000
	dc.w $8002,$1ca5
	dc.w $0002,$0d9a,$88ff,$0000,$0000,$0c00
	dc.w $8008,$000c,$0000,$0000,$0000
	dc.w $0002,$0d9b,$88ff,$0008,$0000,$0c00
	dc.w $8008,$0006,$0000,$0000,$0000
	dc.w $0002,$0d9c,$88ff,$0000,$0000,$0c00
	dc.w $8008,$0001,$0000,$0000,$0000
	dc.w $0004,$0d9d,$78ff,$fff8,$0000,$0c00
	dc.w $8008,$0000,$0000,$0000,$0000
	dc.w $8002,$00e9
	dc.w $0006,$0d9e,$78ff,$fff8,$0000,$0c00
	dc.w $0006,$0d9f,$78ff,$0000,$0000,$0c00
	dc.w $0004,$0d98,$78ff,$0000,$0000,$0c00
	dc.w $0004,$0d97,$78ff,$0000,$0000,$0c00
	dc.w $0004,$0d96,$78ff,$0000,$0000,$0c00
	dc.w $8008,$ffff,$0000,$0000,$0000
	dc.w $0004,$0da0,$8cff,$0000,$0000,$0c00
	dc.w $8008,$fffe,$0000,$0000,$0000
	dc.w $0003,$0da1,$8cff,$0000,$0000,$0c00
	dc.w $8008,$fffc,$8000,$0000,$0000
	dc.w $0003,$0da2,$8cff,$0000,$0000,$0c00
	dc.w $8008,$fffa,$0000,$0000,$0000
	dc.w $0003,$0da3,$8cff,$0000,$0000,$0c00
	dc.w $8008,$fff4,$0000,$0000,$0000
	dc.w $0003,$0da4,$8cff,$0000,$0000,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07bb8c:
	dc.w $0000,$0000,$1b1b,$0000
	dc.w $0000,$1e1e,$1e2a,$0000
	dc.w $0000,$0000,$0000,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Genie Movement:
loc_07bba4:
	dc.l loc_07bc04,loc_07bc04,loc_07bc04
	dc.l loc_07bc0c,loc_07bc0c,loc_07bc14
	dc.l loc_07bc1c,loc_07bc1c,loc_07bc1c
	dc.l loc_07bc14,loc_07bc24,loc_07bc2c
	dc.l loc_07bc34,loc_07bc3c,loc_07bc3c
	dc.l loc_07bc1c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07bbe4:
	dc.w $0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07bc04:
	dc.w $fff0,$0000,$0000,$0040

loc_07bc0c:
	dc.w $ffd0,$0000,$0000,$0040

loc_07bc14:
	dc.w $ffa0,$ffe0,$fff0,$0038

loc_07bc1c:
	dc.w $ff98,$ffe0,$ffe8,$0028

loc_07bc24:
	dc.w $ff98,$ffc0,$0000,$0060

loc_07bc2c:
	dc.w $ffb0,$ffd0,$ffe0,$0040

loc_07bc34:
	dc.w $ffb0,$ffe0,$ffd0,$0030

loc_07bc3c:
	dc.w $ff88,$0000,$ffe0,$0030

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07bc44:;21421+P
	dc.w $8037
	dc.l loc_078550
	dc.w $8038
	dc.l loc_07bc84

	dc.w $803e,$3894,$1700
	dc.w $8046,$3000
	dc.w $803f,$0c02,$0008,$0802
	dc.w $8040,$0000,$103a,$2800
	dc.w $8043,$0010
	dc.w $8041,$0c01,$0830
	dc.w $8039,$0018
	dc.w $8048,$0550,$0000

	dc.w $8036
	dc.l loc_078f18

loc_07bc84:
	dc.w $802c
	dc.w $8047,$00b9,$0000
	dc.w $0002,$0d65,$0000,$78ff,$fff8,$0000,$0000
	dc.w $802b,$1c99
	dc.w $803b,$d000,$f016
	dc.w $0006,$0d66,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8007,$0010,$0000
	dc.w $8047,$00b9,$ffff
	dc.w $8032,$0008,$0000,$1300
	dc.w $0002,$0d67,$0000,$7000
	dc.w $8047,$02b8,$0004

	dc.w $804e
	dc.l $000b4000,$fffee000

	dc.w $8004,$1885
	dc.w $0002,$0cf8,$006d,$78ff,$0004,$0004,$0000
	dc.w $8011,$001d,$0005,$f000,$c0c0,$0000
	dc.w $0004,$0cf5,$0068,$78ff,$0000,$0004,$0000
	dc.w $8011,$001d,$0005,$f000,$c0c0,$0000

	dc.w $800a
	dc.l loc_07bf4e

	dc.w $8004,$1884
	dc.w $803e,$3895,$1800
	dc.w $0002,$0cf6,$0070,$88ff,$fffc,$0004,$0000
	dc.w $8007,$0008,$0000
	dc.w $0002,$0cf7,$0072,$78ff,$0004,$0004,$0000
	dc.w $802a,$0040
	dc.w $0002,$0cf8,$006d,$78ff,$0004,$0004,$0000
	dc.w $0003,$0cf9,$006e,$88ff,$0004,$0004,$0000

	dc.w $804e
	dc.l $0006c000,$fffee000

	dc.w $8032,$0003,$0000,$1300
	dc.w $0003,$0cf5,$0073,$88ff,$0000,$0004,$0000
	dc.w $8004,$1884
	dc.w $803e,$3895,$1d00
	dc.w $8046,$3800
	dc.w $0002,$0cf6,$0071,$88ff,$fffc,$0004,$0000
	dc.w $8007,$0008,$0000
	dc.w $0002,$0cf7,$0072,$78ff,$0004,$0004,$0000
	dc.w $802a,$0040
	dc.w $0002,$0cf8,$006d,$78ff,$0004,$0004,$0000
	dc.w $0003,$0cf9,$006e,$88ff,$0004,$0004,$0000

	dc.w $804e
	dc.l $0006c000,$fffee000

	dc.w $8032,$0003,$0000,$1300
	dc.w $0003,$0cf5,$0073,$88ff,$0000,$0004,$0000
	dc.w $8004,$1884
	dc.w $803e,$3897,$1d00
	dc.w $8046,$40f0
	dc.w $0002,$0cf6,$0071,$88ff,$fffc,$0004,$0000
	dc.w $8007,$0008,$0000
	dc.w $0002,$0cf7,$0072,$78ff,$0004,$0004,$0000
	dc.w $802a,$003f
	dc.w $0002,$0cf8,$006d,$78ff,$0004,$0004,$0000
	dc.w $803b,$d000,$f012
	dc.w $0010,$0dfe,$006e,$78ff,$0004,$0004,$0000

	dc.w $804e
	dc.l $000a0000,$ffff0000

	dc.w $8032,$0004,$0000,$1300
	dc.w $0002,$0cef,$005d,$78ff,$0000,$0004,$0000
	dc.w $0002,$0cf0,$005e,$78ff,$0000,$0004,$0000
	dc.w $8047,$02b8,$0000
	dc.w $8004,$1886
	dc.w $803e,$3895,$2b00
	dc.w $8046,$0000
	dc.w $803f,$1e02,$0012,$1808
	dc.w $8041,$0201,$062e
	dc.w $8047,$0232,$ffff
	dc.w $8011,$001d,$0005,$d800,$e0f0,$0000
	dc.w $802a,$0041
	dc.w $0002,$0cf1,$0060,$78ff,$fff8,$0004,$0000
	dc.w $0002,$0cf1,$0061,$78ff,$fff8,$0004,$0000
	dc.w $8011,$001d,$0005,$e800,$00f0,$0000
	dc.w $0004,$0cf2,$0062,$78ff,$fff8,$0004,$0000
	dc.w $8011,$001d,$0005,$1800,$20f0,$ff00
	dc.w $0008,$0cf2,$0063,$78ff,$fff8,$0004,$0000
	dc.w $803c,$0000
	dc.w $8007,$0010,$0000
	dc.w $8047,$0232,$0000
	dc.w $000a,$0cfe,$0064,$7cff,$0004,$0004,$0000
	dc.w $000c,$0dfe,$006e,$78ff,$0004,$0004,$0000
	dc.w $0006,$0cfb,$006f,$7cff,$0004,$0004,$0000
	dc.w $0004,$0cfc,$006f,$7cff,$0004,$0004,$0000
	dc.w $8001

loc_07bf4e:
	dc.w $0001,$0e08,$74ff,$ffcc,$005c,$0e00
	dc.w $0001,$0e09,$74ff,$ffd4,$005c,$0e00
	dc.w $0002,$0e0a,$74ff,$ffdc,$006c,$0e00
	dc.w $0002,$0e0b,$74ff,$ffdc,$0064,$0e00
	dc.w $0006,$0000,$6000
	dc.w $0001,$0e08,$74ff,$ffcc,$005c,$0d00
	dc.w $0001,$0e09,$74ff,$ffd4,$005c,$0d00
	dc.w $0002,$0e0a,$74ff,$ffdc,$006c,$0d00
	dc.w $0002,$0e0b,$74ff,$ffdc,$0064,$0d00
	dc.w $0006,$0000,$6000
	dc.w $0001,$0e08,$74ff,$ffcc,$005c,$0f00
	dc.w $0001,$0e09,$74ff,$ffd4,$005c,$0f00
	dc.w $0002,$0e0a,$74ff,$ffdc,$006c,$0f00
	dc.w $0002,$0e0b,$74ff,$ffdc,$0064,$0f00
	dc.w $0002,$0cea,$74ff,$0028,$0068,$0001
	dc.w $0002,$0ce9,$74ff,$0028,$0068,$0001
	dc.w $0002,$0cea,$74ff,$0020,$0070,$0001
	dc.w $0002,$0ce9,$74ff,$001c,$006c,$0001
	dc.w $0002,$0cea,$74ff,$0018,$0070,$0000
	dc.w $0002,$0ce9,$74ff,$0014,$006c,$0000
	dc.w $0002,$0cea,$74ff,$0010,$0068,$0000
	dc.w $0002,$0ce9,$74ff,$0008,$0058,$0000
	dc.w $0004,$0000,$6000
	dc.w $0002,$0d75,$74ff,$ffc8,$0054,$0f00
	dc.w $0001,$0d75,$74ff,$ffc8,$0054,$0200
	dc.w $0001,$0d75,$74ff,$ffc8,$0054,$0f00
	dc.w $0002,$0d76,$74ff,$ffc8,$005c,$0e00
	dc.w $0001,$0d76,$74ff,$ffc8,$005c,$0200
	dc.w $0001,$0d76,$74ff,$ffc8,$005c,$0f00
	dc.w $0002,$0d77,$74ff,$ffc8,$0064,$0e00
	dc.w $0001,$0d77,$74ff,$ffc8,$0064,$0300
	dc.w $0001,$0d77,$74ff,$ffc8,$0064,$0f00
	dc.w $0002,$0d78,$74ff,$ffc8,$0064,$0f00
	dc.w $0001,$0d78,$74ff,$ffc8,$0064,$0300
	dc.w $0001,$0d78,$74ff,$ffc8,$0064,$0e00
	dc.w $0002,$0ce9,$74ff,$fff0,$007c,$0000
	dc.w $0002,$0cea,$74ff,$fff0,$007c,$0000
	dc.w $0002,$0ce9,$74ff,$ffec,$0074,$0000
	dc.w $0002,$0cea,$74ff,$fff0,$0074,$0000
	dc.w $0002,$0ce9,$74ff,$fff0,$006c,$0000
	dc.w $0002,$0cea,$74ff,$fff8,$0070,$0000
	dc.w $0002,$0ce9,$74ff,$fffc,$0068,$0000
	dc.w $0002,$0cea,$74ff,$0010,$006c,$0000
	dc.w $0002,$0ce9,$74ff,$0020,$0068,$0001
	dc.w $0002,$0cea,$74ff,$0020,$0074,$0001
	dc.w $0002,$0ce9,$74ff,$0020,$0074,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\
;Grab
loc_07c166:
	dc.w $8037
	dc.l loc_077fc4
	dc.w $8038
	dc.l loc_07c1a6

	dc.w $8039,$0000
	dc.w $803e,$0807,$2f00
	dc.w $803f,$2008,$000a,$2808
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$0552,$0006
	dc.w $8047,$024b,$ffff,$0000

loc_07c1a6:
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $803b,$d000,$f028
	dc.w $8047,$00b6,$0000
	dc.w $801a,$0005,$7fff
	dc.w $0003,$0c7f,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8007,$0040,$0000
	dc.w $803b,$d000,$e010
	dc.w $802b,$1c9b
	dc.w $8011,$001d,$0005,$b800,$30f0,$ff00
	dc.w $0003,$0c80,$0000,$78ff,$0038,$fffe,$0000
	dc.w $803b,$d000,$f828
	dc.w $8047,$00b6,$ffff
	dc.w $0008,$0ce3,$0000,$78ff,$fff8,$0000,$0000
	dc.w $803b,$d000,$f020
	dc.w $8011,$001d,$0005,$2000,$20e0,$ff00
	dc.w $0006,$0ca3,$0000,$78ff,$fffc,$0000,$0000
	dc.w $8007,$ffd0,$0000
	dc.w $803b,$d000,$0030
	dc.w $0004,$0ca4,$0000,$78ff,$ffe8,$0000,$0000
	dc.w $803b,$d000,$f020
	dc.w $0003,$0cbd,$0000,$78ff,$0008,$0000,$0000
	dc.w $803b,$d000,$d010
	dc.w $8004,$1886
	dc.w $802b,$1c9a
	dc.w $0003,$0dea,$0000,$78ff,$0008,$0000,$0000
	dc.w $803c,$0000
	dc.w $801d
	dc.w $801a,$0000,$0000
	dc.w $000c,$0deb,$0000,$78ff,$0008,$0000,$0000
	dc.w $0008,$0c68,$0000,$78ff,$0000,$0000,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\
;Thrown Animation
;Sho
loc_07c2a4:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$00cc,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$00cd,$0000,$84ff,$fff8,$0008,$0000
	dc.w $0008,$00ce,$0000,$84ff,$0020,$0010,$0000
	dc.w $0006,$013e,$0000,$84ff,$001c,$0000,$0000
	dc.w $0004,$013f,$0000,$84ff,$0048,$0020,$0000
	dc.w $0003,$0182,$0000,$84ff,$0020,$0038,$0000
	dc.w $0003,$0181,$0000,$84ff,$ffc0,$0008,$0000
	dc.w $801b,$ffa0,$fff0,$0000
	dc.w $000c,$0143,$0000,$84ff,$0018,$0070,$0002
	dc.w $8001

;Dao
loc_07c326:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$02a2,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$02a3,$0000,$84ff,$fff8,$0008,$0000
	dc.w $0008,$02a4,$0000,$84ff,$001c,$0014,$0000
	dc.w $0006,$030e,$0000,$84ff,$0014,$0000,$0000
	dc.w $0004,$030f,$0000,$84ff,$0040,$0028,$0000
	dc.w $0003,$0310,$0000,$84ff,$0020,$0028,$0000
	dc.w $0003,$0311,$0000,$84ff,$ffd0,$fffc,$0000
	dc.w $801b,$ffa0,$fff0,$0000
	dc.w $000c,$02fa,$0000,$84ff,$0018,$0070,$0002
	dc.w $8001

;Con
loc_07c3a8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$0441,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$0442,$0000,$84ff,$fff8,$0004,$0000
	dc.w $0008,$0443,$0000,$84ff,$0010,$0008,$0000
	dc.w $0006,$040f,$0000,$84ff,$0024,$009b,$0003
	dc.w $0004,$0408,$0000,$84ff,$0028,$0004,$0000
	dc.w $0003,$0409,$0000,$84ff,$0018,$002c,$0000
	dc.w $0003,$040b,$0000,$84ff,$ffc4,$0008,$0000
	dc.w $801b,$ffa0,$fff0,$0000
	dc.w $000c,$0414,$0000,$84ff,$0018,$0078,$0003
	dc.w $8001

;Tia
loc_07c42a:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$05c5,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$05c6,$0000,$84ff,$fff8,$0010,$0000
	dc.w $0008,$0521,$0000,$84ff,$002c,$000c,$0000
	dc.w $0006,$0671,$0000,$84ff,$001c,$0010,$0000
	dc.w $0004,$0670,$0000,$84ff,$0040,$0020,$0000
	dc.w $0003,$06a1,$0000,$84ff,$0010,$0038,$0000
	dc.w $0003,$06a0,$0000,$84ff,$ffc8,$0010,$0000
	dc.w $801b,$ffa0,$fff0,$0000
	dc.w $000c,$0676,$0000,$84ff,$0020,$0058,$0002
	dc.w $8001

;Ril
loc_07c4ac:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$07b5,$0000,$84ff,$0038,$0000,$0000
	dc.w $0003,$0730,$0000,$84ff,$0008,$0010,$0000
	dc.w $0008,$0731,$0000,$84ff,$002c,$0018,$0000
	dc.w $0006,$0871,$0000,$84ff,$0030,$0080,$0003
	dc.w $0004,$0858,$0000,$84ff,$0040,$0014,$0001
	dc.w $0003,$085c,$0000,$84ff,$0018,$0028,$0001
	dc.w $0003,$085e,$0000,$84ff,$ffcc,$0000,$0001
	dc.w $801b,$ffa0,$fff0,$0000
	dc.w $000c,$0870,$0000,$84ff,$0018,$fff0,$0000
	dc.w $8001

;Als
loc_07c52e:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$09af,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$09b0,$0000,$84ff,$fff0,$0000,$0000
	dc.w $0008,$09ed,$0000,$84ff,$001c,$0004,$0000
	dc.w $0006,$09ff,$0000,$84ff,$0030,$000c,$0000
	dc.w $0004,$09fe,$0000,$84ff,$0040,$0014,$0000
	dc.w $0003,$0a05,$0000,$84ff,$0000,$0044,$0000
	dc.w $0003,$0a04,$0000,$84ff,$ffc8,$0000,$0000
	dc.w $801b,$ffa0,$fff0,$0000
	dc.w $000c,$0a06,$0000,$84ff,$0018,$0070,$0002
	dc.w $8001

;Pie
loc_07c5b0:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$0b55,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$0b56,$0000,$84ff,$fff8,$0000,$0000
	dc.w $0008,$0b57,$0000,$84ff,$0018,$0008,$0000
	dc.w $0006,$0b93,$0000,$84ff,$0024,$0000,$0000
	dc.w $0004,$0b94,$0000,$84ff,$004c,$000c,$0000
	dc.w $0003,$0bd6,$0000,$84ff,$0020,$0028,$0000
	dc.w $0003,$0bd5,$0000,$84ff,$ffd0,$000c,$0000
	dc.w $801b,$ffa0,$fff0,$0000
	dc.w $000c,$0b99,$0000,$84ff,$0018,$0070,$0002
	dc.w $8001

;Mah
loc_07c632:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$0d6b,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$0d6c,$0000,$84ff,$fffc,$0008,$0000
	dc.w $0008,$0d6d,$0000,$84ff,$001c,$000c,$0000
	dc.w $0006,$0daa,$0000,$84ff,$001c,$0010,$0000
	dc.w $0004,$0da9,$0000,$84ff,$003c,$002c,$0000
	dc.w $0003,$0db0,$0000,$84ff,$0010,$0020,$0000
	dc.w $0003,$0daf,$0000,$84ff,$ffc8,$0004,$0000
	dc.w $801b,$ffa0,$fff0,$0000
	dc.w $000c,$0dd6,$0000,$84ff,$0028,$0058,$0002
	dc.w $8001

;Bai
loc_07c6b4:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$0eda,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$0edb,$0000,$84ff,$0000,$0008,$0000
	dc.w $0008,$0f36,$0000,$84ff,$0028,$000c,$0000
	dc.w $0006,$0f27,$0000,$84ff,$0024,$0000,$0000
	dc.w $0004,$0e5b,$0000,$84ff,$0048,$0020,$0000
	dc.w $0003,$0f28,$0000,$84ff,$0018,$0098,$0003
	dc.w $0003,$0e5c,$0000,$84ff,$ffc8,$0014,$0000
	dc.w $801b,$ffa0,$fff0,$0000
	dc.w $000c,$0e5d,$0000,$84ff,$0020,$0000,$0000
	dc.w $8001

;Sai
loc_07c736:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$1047,$0000,$84ff,$0032,$0006,$0000
	dc.w $0003,$1049,$0000,$84ff,$fff3,$0012,$0000
	dc.w $0008,$104a,$0000,$84ff,$0025,$001c,$0000
	dc.w $0006,$10ba,$0000,$84ff,$0029,$0015,$0000
	dc.w $0004,$10b9,$0000,$84ff,$0043,$0027,$0000
	dc.w $0003,$10c0,$0000,$84ff,$0017,$0042,$0000
	dc.w $0003,$10bf,$0000,$84ff,$ffc8,$0012,$0000
	dc.w $801b,$ffa0,$fff0,$0000
	dc.w $000c,$1185,$0000,$84ff,$0015,$0052,$0003
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07c7b8:
	dc.w $8037
	dc.l loc_078096
	dc.w $8038
	dc.l loc_07c7f8

	dc.w $8039,$0000
	dc.w $803e,$0803,$2f00
	dc.w $803f,$0301,$0001,$0300
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$0552,$0006
	dc.w $8047,$024b,$ffff,$0000

loc_07c7f8:
	dc.w $8048,$025c,$18bd
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $803b,$d000,$0822
	dc.w $801a,$0005,$7fff
	dc.w $803b,$0000,$f022
	dc.w $0003,$0c6d,$0000,$78ff,$fffc,$0000,$0000
	dc.w $8007,$0010,$0000
	dc.w $0003,$0c80,$0000,$78ff,$0018,$0000,$0000
	dc.w $8007,$0010,$0000
	dc.w $8011,$001d,$0005,$e000,$f0f0,$ff00
	dc.w $8011,$001d,$0005,$2000,$30f0,$ff00
	dc.w $802b,$1c9b
	dc.w $0010,$0cce,$0000,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07c864:
	dc.w $0002,$0ccf,$0000,$7800
	dc.w $803f,$0301,$0001,$0300
	dc.w $8034
	dc.w $0006,$0cd0,$0000,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07c880:
	dc.w $0002,$0ccf,$0000,$7800
	dc.w $803f,$0301,$0001,$0300
	dc.w $8034
	dc.w $0006,$0cce,$0000,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Slap throw end
loc_07c89c:
	dc.w $8048,$025c,$00c4
	dc.w $803f,$0804,$0403,$1408
	dc.w $8033
	dc.w $000a,$0cce,$0000,$7800
	dc.w $8034
	dc.w $0002,$0ccf,$0000,$7800
	dc.w $803c,$0000
	dc.w $801d
	dc.w $801a,$0000,$0000
	dc.w $802b,$1c9c
	dc.w $0010,$0de8,$0000,$78ff,$fff0,$0000,$0000
	dc.w $8007,$fff0,$0000
	dc.w $0006,$0c80,$0000,$78ff,$0018,$0000,$0000
	dc.w $8007,$fff0,$0000
	dc.w $0008,$0c6d,$0000,$78ff,$fffc,$0000,$0000
	dc.w $0004,$0c68,$0000,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Slap throw

;==========================
;Sho
loc_07c90e:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$00c9,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$00cc,$0000,$84ff,$0020,$0000,$0000
	dc.w $0010,$00cc,$0000,$84ff,$0010,$0030,$0000
	dc.w $8001

loc_07c942:
	dc.w $0002,$00c9,$0000,$84ff,$000c,$0028,$0000
	dc.w $8020
	dc.w $0006,$00cb,$0000,$84ff,$0000,$0020,$0000
	dc.w $8001

loc_07c962:
	dc.w $0002,$00cc,$0000,$84ff,$000c,$0028,$0000
	dc.w $8020
	dc.w $0006,$00ce,$0000,$84ff,$0000,$0028,$0000
	dc.w $8001

loc_07c982:
	dc.w $000a,$00c9,$0000,$84ff,$000c,$002c,$0000
	dc.w $8020
	dc.w $0002,$0129,$0000,$84ff,$0018,$0028,$0000
	dc.w $801b,$0030,$ffc0,$0000
	dc.w $0010,$0171,$0000,$84ff,$0000,$ffe8,$0001
	dc.w $8001

;==========================
;Dao
loc_07c9b8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$029f,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$02a2,$0000,$84ff,$0020,$0008,$0000
	dc.w $0010,$02a2,$0000,$84ff,$000c,$0030,$0000
	dc.w $8001

loc_07c9ec:
	dc.w $0002,$02a0,$0000,$84ff,$fffe,$0028,$0000
	dc.w $8020
	dc.w $0006,$02a1,$0000,$84ff,$fff4,$0020,$0000
	dc.w $8001

loc_07ca0c:
	dc.w $0002,$02a2,$0000,$84ff,$000c,$002c,$0000
	dc.w $8020
	dc.w $0006,$02a4,$0000,$84ff,$fffc,$0030,$0000
	dc.w $8001

loc_07ca2c:
	dc.w $000a,$029f,$0000,$84ff,$0008,$002c,$0000
	dc.w $8020
	dc.w $0002,$0228,$0000,$84ff,$0010,$0030,$0000
	dc.w $801b,$0030,$ffc0,$0000
	dc.w $0010,$02fb,$0000,$84ff,$fff8,$ffe8,$0001
	dc.w $8001

;==========================
;Con
loc_07ca62:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$043e,$0000,$84ff,$0028,$0000,$0000
	dc.w $0003,$0441,$0000,$84ff,$001c,$0000,$0000
	dc.w $0010,$0441,$0000,$84ff,$0008,$0020,$0000
	dc.w $8001

loc_07ca96:
	dc.w $0002,$043e,$0000,$84ff,$0008,$0018,$0000
	dc.w $8020
	dc.w $0006,$0440,$0000,$84ff,$fff0,$0010,$0000
	dc.w $8001

loc_07cab6:
	dc.w $0002,$0441,$0000,$84ff,$0008,$0018,$0000
	dc.w $8020
	dc.w $0006,$0442,$0000,$84ff,$fffc,$0018,$0000
	dc.w $8001

loc_07cad6:
	dc.w $000a,$0441,$0000,$84ff,$0008,$0020,$0000
	dc.w $8020
	dc.w $0002,$0456,$0000,$84ff,$0008,$0020,$0000
	dc.w $801b,$0030,$ffc0,$0000
	dc.w $0010,$0415,$0000,$84ff,$0000,$0000,$0000
	dc.w $8001

;==========================
;Tia
loc_07cb0c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$05c2,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$05c5,$0000,$84ff,$0028,$0010,$0000
	dc.w $0010,$05c5,$0000,$84ff,$0014,$0038,$0000
	dc.w $8001

loc_07cb40:
	dc.w $0002,$05c2,$0000,$84ff,$000c,$0024,$0000
	dc.w $8020
	dc.w $0006,$05c4,$0000,$84ff,$000c,$0020,$0000
	dc.w $8001

loc_07cb60:
	dc.w $0002,$05c6,$0000,$84ff,$0000,$0030,$0000
	dc.w $8020
	dc.w $0006,$05c7,$0000,$84ff,$fff8,$0034,$0000
	dc.w $8001

loc_07cb80:
	dc.w $000a,$05c5,$0000,$84ff,$0010,$0038,$0000
	dc.w $8020
	dc.w $0002,$0528,$0000,$84ff,$0010,$0040,$0000
	dc.w $801b,$0030,$ffc0,$0000
	dc.w $0010,$068e,$0000,$84ff,$fff8,$0000,$0001
	dc.w $8001

;==========================
;Ril
loc_07cbb6:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$07b5,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$0730,$0000,$84ff,$002c,$0008,$0000
	dc.w $0010,$0730,$0000,$84ff,$0014,$0038,$0000
	dc.w $8001

loc_07cbea:
	dc.w $0002,$07b6,$0000,$84ff,$0008,$002c,$0000
	dc.w $8020
	dc.w $0006,$07b7,$0000,$84ff,$fffc,$0028,$0000
	dc.w $8001


loc_07cc0a:
	dc.w $0002,$0731,$0000,$84ff,$0004,$0030,$0000
	dc.w $8020
	dc.w $0006,$07ba,$0000,$84ff,$fffc,$0030,$0000
	dc.w $8001

loc_07cc2a:
	dc.w $000a,$0730,$0000,$84ff,$0014,$0038,$0000
	dc.w $8020
	dc.w $0002,$0810,$0000,$84ff,$0010,$0040,$0000
	dc.w $801b,$0030,$ffc0,$0000
	dc.w $0010,$0812,$0000,$84ff,$0000,$0000,$0000
	dc.w $8001

;==========================
;Als
loc_07cc60:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$09af,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$09b0,$0000,$84ff,$0018,$0000,$0000
	dc.w $0010,$09af,$0000,$84ff,$0000,$0028,$0000
	dc.w $8001

loc_07cc94:
	dc.w $0002,$09ac,$0000,$84ff,$0008,$0020,$0000
	dc.w $8020
	dc.w $0006,$09ae,$0000,$84ff,$0004,$001c,$0000
	dc.w $8001

loc_07ccb4:
	dc.w $0002,$09af,$0000,$84ff,$0000,$0020,$0000
	dc.w $8020
	dc.w $0006,$09b1,$0000,$84ff,$fff0,$001c,$0000
	dc.w $8001

loc_07ccd4:
	dc.w $000a,$09af,$0000,$84ff,$0000,$0028,$0000
	dc.w $8020
	dc.w $0002,$0a00,$0000,$84ff,$0010,$0030,$0000
	dc.w $801b,$0030,$ffc0,$0000
	dc.w $0010,$0a07,$0000,$84ff,$fff8,$0000,$0001
	dc.w $8001

;==========================
;Pie
loc_07cd0a:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$0b52,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$0b55,$0000,$84ff,$001c,$0000,$0000
	dc.w $0010,$0b87,$0000,$84ff,$0004,$001c,$0000
	dc.w $8001

loc_07cd3e:
	dc.w $0002,$0b85,$0000,$84ff,$0004,$0018,$0000
	dc.w $8020
	dc.w $0006,$0b86,$0000,$84ff,$fffc,$0014,$0000
	dc.w $8001

loc_07cd5e:
	dc.w $0002,$0b87,$0000,$84ff,$0004,$0014,$0000
	dc.w $8020
	dc.w $0006,$0b88,$0000,$84ff,$fffc,$0018,$0000
	dc.w $8001

loc_07cd7e:
	dc.w $000a,$0b87,$0000,$84ff,$0004,$001c,$0000
	dc.w $8020
	dc.w $0002,$0bd1,$0000,$84ff,$0008,$0020,$0000
	dc.w $801b,$0030,$ffc0,$0000
	dc.w $0010,$0bc3,$0000,$84ff,$fff0,$fff8,$0001
	dc.w $8001


;==========================
;Mah
loc_07cdb4:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$0d68,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$0d6b,$0000,$84ff,$0024,$0008,$0000
	dc.w $0010,$0d68,$0000,$84ff,$000c,$0034,$0000
	dc.w $8001

loc_07cde8:
	dc.w $0002,$0d69,$0000,$84ff,$0008,$0024,$0000
	dc.w $8020
	dc.w $0006,$0d6a,$0000,$84ff,$0004,$0028,$0000
	dc.w $8001


loc_07ce08:
	dc.w $0002,$0d6b,$0000,$84ff,$0008,$0028,$0000
	dc.w $8020
	dc.w $0006,$0d6d,$0000,$84ff,$fff8,$0024,$0000
	dc.w $8001

loc_07ce28:
	dc.w $000a,$0d68,$0000,$84ff,$000c,$0034,$0000
	dc.w $8020
	dc.w $0002,$0ddc,$0000,$84ff,$0018,$0038,$0000
	dc.w $801b,$0030,$ffc0,$0000
	dc.w $0010,$0dd7,$0000,$84ff,$fff8,$0000,$0001
	dc.w $8001

;==========================
;Bai
loc_07ce5e:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$0f37,$0000,$84ff,$0030,$0000,$0000
	dc.w $0003,$0f34,$0000,$84ff,$0024,$0000,$0000
	dc.w $0010,$0f34,$0000,$84ff,$0010,$0028,$0000
	dc.w $8001

loc_07ce92:
	dc.w $0002,$0f37,$0000,$84ff,$000c,$0020,$0000
	dc.w $8020
	dc.w $0006,$0f38,$0000,$84ff,$0000,$0018,$0000
	dc.w $8001

loc_07ceb2:
	dc.w $0002,$0f34,$0000,$84ff,$000c,$001c,$0000
	dc.w $8020
	dc.w $0006,$0f35,$0000,$84ff,$0008,$0020,$0000
	dc.w $8001

loc_07ced2:
	dc.w $000a,$0f34,$0000,$84ff,$0010,$0028,$0000
	dc.w $8020
	dc.w $0002,$0e5c,$0000,$84ff,$0008,$0098,$0003
	dc.w $801b,$0030,$ffc0,$0000
	dc.w $0010,$0e5f,$0000,$84ff,$fff8,$fff8,$0000
	dc.w $8001


;==========================
;Sai
loc_07cf08:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0003,$1043,$0000,$84ff,$0036,$0009,$0000
	dc.w $0003,$1049,$0000,$84ff,$0016,$000d,$0000
	dc.w $0010,$1049,$0000,$84ff,$0005,$003c,$0000
	dc.w $8001

loc_07cf3c:
	dc.w $0002,$1047,$0000,$84ff,$0009,$0036,$0000
	dc.w $8020
	dc.w $0006,$1045,$0000,$84ff,$fffb,$002a,$0000
	dc.w $8001

loc_07cf5c:
	dc.w $0002,$1049,$0000,$84ff,$ffe9,$0036,$0000
	dc.w $8020
	dc.w $0006,$104a,$0000,$84ff,$0006,$0035,$0000
	dc.w $8001

loc_07cf7c:
	dc.w $000a,$1047,$0000,$84ff,$0008,$003a,$0000
	dc.w $8020
	dc.w $0002,$104f,$0000,$84ff,$0007,$0034,$0000
	dc.w $801b,$0030,$ffc0,$0000
	dc.w $0010,$105c,$0000,$84ff,$fffd,$fffc,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07cfb2:
	dc.w $8037
	dc.l loc_078312
	dc.w $8038
	dc.l loc_07cff8

	dc.w $8039,$0000
	dc.w $803e,$28c7,$2800
	dc.w $803f,$1404,$0003,$0400
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$0552,$0000
	dc.w $8047,$024b,$ffff
	dc.w $803b,$0000,$e41c,$0000

loc_07cff8:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $801a,$0005,$7fff
	dc.w $802b,$1c9b
	dc.w $0004,$0cd0,$0000,$7800
	dc.w $8004,$18a3
	dc.w $0004,$0d11,$0000,$8800
	dc.w $0004,$0d12,$0000,$8800
	dc.w $8008,$0004,$0000,$0000,$0000
	dc.w $802b,$1ca1
	dc.w $0004,$0d13,$0000,$8800
	dc.w $8026,$0050
	dc.w $8011,$001d,$0005,$e000,$d0e0,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$0d14,$0000,$7800
	dc.w $803f,$0401,$0003,$0400
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$0d15,$0000,$7800
	dc.w $8011,$001d,$0005,$e000,$d0e0,$0000
	dc.w $0004,$0d16,$0000,$8800
	dc.w $0004,$0d17,$0000,$8800
	dc.w $8011,$001d,$0005,$e000,$d0e0,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$0d18,$0000,$8800
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$0d14,$0000,$7800
	dc.w $8011,$001d,$0005,$e000,$d0e0,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$0d15,$0000,$7800
	dc.w $0004,$0d16,$0000,$8800
	dc.w $8011,$001d,$0005,$e000,$d0e0,$0000
	dc.w $0004,$0d17,$0000,$8800
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$0d18,$0000,$8800
	dc.w $8011,$001d,$0005,$e000,$d0e0,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$0d14,$0000,$7800
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$0d15,$0000,$7800
	dc.w $8011,$001d,$0005,$e000,$d0e0,$0000
	dc.w $0004,$0d16,$0000,$8800
	dc.w $0004,$0d17,$0000,$8800
	dc.w $8011,$001d,$0005,$e000,$d0e0,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$0d18,$0000,$8800
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$0d14,$0000,$7800
	dc.w $803f,$1404,$0014,$0a00
	dc.w $8033,$8034
	dc.w $8047,$00b7,$ffff
	dc.w $801d
	dc.w $801a,$0000,$0000
	dc.w $8011,$001d,$0005,$e000,$d0e0,$0000
	dc.w $804a,$fffc,$0000,$fff9,$3f00
	dc.w $0004,$0d19,$0000,$7800
	dc.w $0004,$0d15,$0000,$7800
	dc.w $0003,$0d1a,$007a,$8000
	dc.w $0003,$0d1b,$007a,$8000
	dc.w $0003,$0d1c,$007a,$8000
	dc.w $0003,$0d1d,$007a,$8000
	dc.w $8003,$1870
	dc.w $803c,$0004
	dc.w $8002,$00e9
	dc.w $8011,$001d,$0005,$2000,$30f0,$ff00
	dc.w $8011,$001d,$0005,$e000,$d0f0,$ff00
	dc.w $0004,$0d1e,$007b,$8000
	dc.w $0004,$0d1f,$007b,$8000
	dc.w $0004,$0d20,$007c,$80ff,$0008,$0000,$0000
	dc.w $0006,$0d21,$007d,$80ff,$0004,$0000,$0000
	dc.w $0006,$0d22,$007e,$80ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Balloon Grab
;Sho
loc_07d228:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801f,$ffd0,$0000,$ffd0,$0030
	dc.w $0004,$00cb,$0000,$80ff,$0034,$0020,$0001
	dc.w $0004,$017f,$0000,$80ff,$0018,$0018,$0001
	dc.w $0004,$017a,$0000,$80ff,$0020,$0000,$0000
	dc.w $0004,$00cb,$0000,$80ff,$0028,$0060,$0003

loc_07d272:
	dc.w $0004,$0140,$0000,$80ff,$0008,$ffe0,$0000
	dc.w $0004,$0172,$0000,$80ff,$ffe8,$0000,$0000
	dc.w $0004,$0178,$0000,$80ff,$0000,$0040,$0000
	dc.w $0004,$0071,$0000,$80ff,$0018,$0018,$0000
	dc.w $0004,$00cb,$0000,$80ff,$0028,$0060,$0003
	dc.w $8000,$0000
	dc.l loc_07d272

;Dao
loc_07d2c0:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801f,$ffd0,$0000,$ffd0,$0030
	dc.w $0004,$02a1,$0000,$80ff,$0040,$001c,$0001
	dc.w $0004,$0310,$0000,$80ff,$0028,$fff8,$0000
	dc.w $0004,$030b,$0000,$80ff,$0020,$0000,$0001
	dc.w $0004,$02a1,$0000,$80ff,$0038,$0068,$0003

loc_07d30a:
	dc.w $0004,$0305,$0000,$80ff,$0008,$fff0,$0000
	dc.w $0004,$02ff,$0000,$80ff,$ffe8,$0000,$0000
	dc.w $0004,$030d,$0000,$80ff,$0010,$0028,$0001
	dc.w $0004,$030c,$0000,$80ff,$0028,$0008,$0001
	dc.w $0004,$02a1,$0000,$80ff,$0038,$0068,$0003
	dc.w $8000,$0000
	dc.l loc_07d30a

;Con
loc_07d358:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801f,$ffd0,$0000,$ffd0,$0030
	dc.w $0004,$0440,$0000,$80ff,$004c,$0004,$0001
	dc.w $0004,$0415,$0000,$80ff,$0020,$0058,$0003
	dc.w $0004,$040f,$0000,$80ff,$0020,$ffe8,$0000
	dc.w $0004,$0440,$0000,$80ff,$0040,$0070,$0003

loc_07d3a2:
	dc.w $0004,$0411,$0000,$80ff,$0008,$0038,$0003
	dc.w $0004,$0413,$0000,$80ff,$ffe0,$0088,$0003
	dc.w $0004,$040d,$0000,$80ff,$0010,$0038,$0000
	dc.w $0004,$040e,$0000,$80ff,$0018,$0010,$0000
	dc.w $0004,$0440,$0000,$80ff,$0040,$0070,$0003
	dc.w $8000,$0000
	dc.l loc_07d3a2

;Tia
loc_07d3f0:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801f,$ffd0,$0000,$ffd0,$0030
	dc.w $0004,$0696,$0000,$80ff,$0028,$001c,$0001
	dc.w $0004,$06a1,$0000,$80ff,$0018,$0008,$0000
	dc.w $0004,$0699,$0000,$80ff,$0020,$0000,$0001
	dc.w $0004,$05c4,$0000,$80ff,$0028,$0058,$0003

loc_07d43a:
	dc.w $0004,$0674,$0000,$80ff,$0008,$fff0,$0000
	dc.w $0004,$0690,$0000,$80ff,$ffe8,$0008,$0000
	dc.w $0004,$069b,$0000,$80ff,$0010,$0040,$0001
	dc.w $0004,$069a,$0000,$80ff,$0020,$0010,$0001
	dc.w $0004,$05c4,$0000,$80ff,$0028,$0058,$0003
	dc.w $8000,$0000
	dc.l loc_07d43a

;Ril
loc_07d488:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801f,$ffd0,$0000,$ffd0,$0030
	dc.w $0004,$07b7,$0000,$80ff,$003c,$001c,$0001
	dc.w $0004,$085c,$0000,$80ff,$0020,$fff8,$0001
	dc.w $0004,$0861,$0000,$80ff,$0018,$ffe8,$0000
	dc.w $0004,$07b7,$0000,$80ff,$0030,$0060,$0003

loc_07d4d2:
	dc.w $0004,$0859,$0000,$80ff,$0008,$ffd8,$0001
	dc.w $0004,$085f,$0000,$80ff,$ffe8,$0080,$0002
	dc.w $0004,$085a,$0000,$80ff,$0000,$0040,$0000
	dc.w $0004,$085d,$0000,$80ff,$0020,$0000,$0000
	dc.w $0004,$07b7,$0000,$80ff,$0030,$0060,$0003
	dc.w $8000,$0000
	dc.l loc_07d4d2

;Als
loc_07d520:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801f,$ffd0,$0000,$ffd0,$0030
	dc.w $0004,$09ae,$0000,$80ff,$0034,$0014,$0001
	dc.w $0004,$0a05,$0000,$80ff,$0010,$0010,$0000
	dc.w $0004,$09fb,$0000,$80ff,$0020,$fff0,$0001
	dc.w $0004,$09ae,$0000,$80ff,$0020,$0058,$0003

loc_07d56a:
	dc.w $0004,$09ee,$0000,$80ff,$0008,$fff0,$0000
	dc.w $0004,$09f0,$0000,$80ff,$fff8,$fff0,$0000
	dc.w $0004,$09fd,$0000,$80ff,$0008,$0040,$0001
	dc.w $0004,$09fc,$0000,$80ff,$0010,$0000,$0001
	dc.w $0004,$09ae,$0000,$80ff,$0020,$0058,$0003
	dc.w $8000,$0000
	dc.l loc_07d56a

;Pie
loc_07d5b8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801f,$ffd0,$0000,$ffd0,$0030
	dc.w $0004,$0b54,$0000,$80ff,$004c,$000c,$0001
	dc.w $0004,$0bd6,$0000,$80ff,$0028,$fff8,$0000
	dc.w $0004,$0bce,$0000,$80ff,$0010,$fff8,$0001
	dc.w $0004,$0b54,$0000,$80ff,$0030,$0068,$0003

loc_07d602:
	dc.w $0004,$0b97,$0000,$80ff,$fff8,$ffe8,$0000
	dc.w $0004,$0bc5,$0000,$80ff,$ffe0,$fff8,$0000
	dc.w $0004,$0bd0,$0000,$80ff,$0008,$0038,$0001
	dc.w $0004,$0bcf,$0000,$80ff,$0018,$0008,$0001
	dc.w $0004,$0b54,$0000,$80ff,$0030,$0068,$0003
	dc.w $8000,$0000
	dc.l loc_07d602

;Mah
loc_07d650:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801f,$ffd0,$0000,$ffd0,$0030
	dc.w $0004,$0dc2,$0000,$80ff,$001c,$0024,$0001
	dc.w $0004,$0db0,$0000,$80ff,$0020,$fff0,$0000
	dc.w $0004,$0dbf,$0000,$80ff,$0020,$fff8,$0001
	dc.w $0004,$0d6a,$0000,$80ff,$0028,$0058,$0003

loc_07d69a:
	dc.w $0004,$0db1,$0000,$80ff,$0008,$fff0,$0000
	dc.w $0004,$0db4,$0000,$80ff,$ffe8,$fff0,$0000
	dc.w $0004,$0dc1,$0000,$80ff,$0010,$0038,$0001
	dc.w $0004,$0dc0,$0000,$80ff,$0020,$0010,$0001
	dc.w $0004,$0d6a,$0000,$80ff,$0028,$0058,$0003
	dc.w $8000,$0000
	dc.l loc_07d69a

;Bai
loc_07d6e8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801f,$ffd0,$0000,$ffd0,$0030
	dc.w $0004,$0f39,$0000,$80ff,$003c,$0014,$0001
	dc.w $0004,$0f28,$0000,$80ff,$0028,$0068,$0003
	dc.w $0004,$0f29,$0000,$80ff,$0020,$0080,$0003
	dc.w $0004,$0f39,$0000,$80ff,$0030,$0060,$0003

loc_07d732:
	dc.w $0004,$0f2c,$0000,$80ff,$0008,$ffe8,$0000
	dc.w $0004,$0f2e,$0000,$80ff,$fff0,$0088,$0003
	dc.w $0004,$0f2b,$0000,$80ff,$0008,$0038,$0000
	dc.w $0004,$0f2a,$0000,$80ff,$0020,$0010,$0000
	dc.w $0004,$0f39,$0000,$80ff,$0030,$0060,$0003
	dc.w $8000,$0000
	dc.l loc_07d732

;Sai
loc_07d780:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801f,$ffd0,$0000,$ffd0,$0030
	dc.w $0004,$1045,$0000,$80ff,$003f,$002c,$0001
	dc.w $0004,$10bd,$0000,$80ff,$0018,$fffe,$0001
	dc.w $0004,$10b6,$0000,$80ff,$001c,$fffa,$0000
	dc.w $0004,$1045,$0000,$80ff,$0030,$0058,$0003

loc_07d7ca:
	dc.w $0004,$10a9,$0000,$80ff,$fffc,$ffee,$0000
	dc.w $0004,$10ab,$0000,$80ff,$ffe9,$0005,$0000
	dc.w $0004,$10b4,$0000,$80ff,$0010,$003e,$0000
	dc.w $0004,$10b3,$0000,$80ff,$001a,$0012,$0000
	dc.w $0004,$1045,$0000,$80ff,$002f,$0057,$0003
	dc.w $8000,$0000
	dc.l loc_07d7ca

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07d818:
	dc.w $8037 
	dc.l loc_077f7a
	dc.w $8038 
	dc.l loc_07d840

	dc.w $803a,$00ff
	dc.w $8039,$0018
	dc.w $803d
	dc.w $8045,$0002
	dc.w $8048,$0550,$0004
	dc.w $803b,$0000,$f610,$0000

loc_07d840:
	dc.w $8011,$001c,$0004,$e000,$f800
	dc.w $8008,$0004,$0000,$0000,$0000
	dc.w $0005,$0dea,$0087,$80ff,$fffc,$0003,$0001
	dc.w $8002,$188d
	dc.w $8011,$001d,$0005,$f000,$f0f4,$ff00
	dc.w $0005,$0dd9,$0088,$80ff,$fff0,$0040,$0002
	dc.w $0006,$0d3c,$0089,$80ff,$fffc,$fffc,$0001
	dc.w $0005,$0d3b,$0089,$80ff,$fffc,$0044,$0002
	dc.w $803b,$e000,$000c

	dc.w $804e
	dc.l $00034000,$ffff4000

	dc.w $0003,$0d89,$0032,$8000
	dc.w $803b,$e000,$f20c
	dc.w $0002,$0d89,$0032,$8000
	dc.w $803a,$0004
	dc.w $8039,$0000
	dc.w $0003,$0d8a,$0031,$80ff,$0002,$0000,$0000
	dc.w $803a,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07d8de:
	dc.w $8037
	dc.l loc_077f7a
	dc.w $8038
	dc.l loc_07d90a

	dc.w $803a,$00ff
	dc.w $8039,$0014
	dc.w $803d,$8045,$0002
	dc.w $8048,$0550,$0002
	dc.w $8043,$0005
	dc.w $803b,$e000,$f20c,$0000

loc_07d90a:
	dc.w $8011,$001c,$0004,$2000,$0800
	dc.w $8008,$fffc,$0000,$0000,$0000
	dc.w $0005,$0c8d,$0000,$80ff,$0000,$ffe8,$0000
	dc.w $8002,$188d
	dc.w $8011,$001d,$0005,$1000,$10f4,$ff00
	dc.w $0005,$0d3b,$0089,$80ff,$fffc,$0044,$0002
	dc.w $0006,$0d3c,$0089,$80ff,$fffc,$fffc,$0001
	dc.w $0005,$0d3b,$0089,$80ff,$fffc,$fffc,$0001
	dc.w $804e,$fffc,$c000,$0000,$c000
	dc.w $0005,$0d89,$0032,$8000
	dc.w $803a,$0004,$8039,$0000
	dc.w $0003,$0d8a,$0031,$80ff,$0002,$0000,$0000
	dc.w $803a,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_07d994:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_07d9b6

	dc.w $803d
	dc.w $8040,$0400,$1400,$2000
	dc.w $8048,$0554,$00b4

	dc.w $8036
	dc.l loc_078f18

loc_07d9b6:
	dc.w $802c,$0004,$0d79,$002d,$8000
	dc.w $0010,$0d40,$006e,$80ff,$0004,$0004,$0000
	dc.w $8045,$0002
	dc.w $802a,$0048
	dc.w $0004,$0dff,$008a,$80ff,$0004,$0004,$0000
	dc.w $0004,$0e00,$008b,$80ff,$0004,$0005,$0000
	dc.w $000c,$0e01,$008c,$80ff,$0004,$0005,$0000
	dc.w $8045,$0002
	dc.w $0006,$0e02,$008d,$80ff,$0004,$0005,$0000
	dc.w $0006,$0e03,$008e,$80ff,$0004,$0004,$0000
	dc.w $8001

;end 07da22