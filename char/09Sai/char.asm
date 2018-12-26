;Saizo Programming
loc_08612c:
	move.w #$f0,($344,a4)
	move.w #$28,($346,a4)
	move.w #5,($348,a4)
	move.w #$a,($34a,a4)
	move.w #$c4,($34c,a4)
	move.w #$54,($34e,a4)
	move.w #$7c,($350,a4)
	rts

;--------------------------
;Saizo AI program
loc_086158:
	tst.b ($4d3,a4)
	beq.w loc_086182
	move.b ($35c,a4),d0
	andi.w #$fffc,d0
	bne.w loc_086182
	cmpi.b #6,($360,a4)
	bne.w loc_086182
	sf ($4d3,a4)
	move.l #loc_086488,($56,a4)

loc_086182:
	rts

;--------------------------
loc_086184:
	movea.l #loc_08774a,a0
	bsr.w loc_0861d8
	bra.w loc_0862ac

;--------------------------
loc_086192:
	bclr #7,($35c,a4)
	bne.w loc_0861a2
	jmp loc_02e5c6

loc_0861a2:
	movea.l #loc_0875ba,a0
	bsr.w loc_0861d8
	bra.w loc_0862ac


;--------------------------
loc_0861b0:
	move.l (a7)+,($4d6,a4)
	jmp (a0)

;--------------------------
loc_0861b6:
	move.l ($4d6,a4),d0
	beq.b loc_086192
	clr.l ($4d6,a4)
	movea.l d0,a0
	clr.b d0
	jmp (a0)

;--------------------------
loc_0861c6
	move.l ($4d6,a4),d0
	beq.b loc_086192
	clr.l ($4d6,a4)
	movea.l d0,a0
	move.b #-1,d0
	jmp (a0)

;--------------------------
loc_0861d8:
	move.l (a7)+,($4da,a4)
	jmp (a0)

;--------------------------
loc_0861de:
	move.l ($4da,a4),d0
	beq.w loc_0862ac
	clr.l ($4da,a4)
	movea.l d0,a0
	jmp (a0)

;-+-+-+-+-+-+-+-+-+-+-+-+-+
loc_0861ee:
	st ($4d3,a4)
	cmpi.w #8,($be,a4)
	bge.w loc_08627e
	cmpi.w #$a0,($378,a4)
	bgt.w loc_086260
	cmpi.w #$50,($378,a4)
	bgt.w loc_08623c
	cmpi.w #$1e,($378,a4)
	bgt.w loc_08621e
	bra.w loc_08628c

loc_08621e:
	jsr RandomNumberGod
	lea loc_08622e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08622e:
	dc.w $0002

	dc.w $001e
	dc.l loc_08628c

	dc.w $000a
	dc.l loc_0862a0

;--------------------------
loc_08623c:
	jsr RandomNumberGod
	lea loc_08624c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08624c:
	dc.w $0003

	dc.w $003c
	dc.l loc_086296

	dc.w $001e
	dc.l loc_08628c

	dc.w $000a
	dc.l loc_0862a0

;--------------------------
loc_086260:
	jsr RandomNumberGod
	lea loc_086270(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_086270:
	dc.w $0002

	dc.w $003c
	dc.l loc_086296

	dc.w $000a
	dc.l loc_08628c

;--------------------------
loc_08627e:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_086296

loc_08628c:
	movea.l #loc_0875ba,a0
	bra.w loc_0862a6

loc_086296:
	movea.l #loc_08768a,a0
	bra.w loc_0862a6

loc_0862a0:
	movea.l #loc_08774a,a0

loc_0862a6:
	movea.l a0,a0
	bsr.w loc_0861d8

;--------------------------
loc_0862ac:
	clr.l ($4d6,a4)
	clr.l ($4da,a4)
	clr.l ($4de,a4)
	tst.b ($35d,a4)
	beq.w loc_0862c8
	jsr loc_0226b4
	bra.b loc_0862ac


loc_0862c8:
	st ($35d,a4)
	cmpi.b #6,($360,a4)
	beq.w loc_086488
	tst.b ($247,a4)
	beq.w loc_08647a
	cmpi.w #$a0,($378,a4)
	bgt.w loc_086434
	cmpi.w #$3c,($378,a4)
	bgt.w loc_0863c8
	cmpi.w #$1e,($378,a4)
	bgt.w loc_08635c
	jsr RandomNumberGod
	lea loc_08630c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08630c:
	dc.w $000d

	dc.w $000a
	dc.l loc_0878b2

	dc.w $0005
	dc.l loc_08774a

	dc.w $0005
	dc.l loc_08788e

	dc.w $0032
	dc.l loc_088316

	dc.w $0014
	dc.l loc_088698

	dc.w $0014
	dc.l loc_088804

	dc.w $0014
	dc.l loc_088446

	dc.w $0014
	dc.l loc_088f5a

	dc.w $0014
	dc.l loc_088e22

	dc.w $000a
	dc.l loc_0891de

	dc.w $0014
	dc.l loc_0883a2

	dc.w $000a
	dc.l loc_088a20

	dc.w $001e
	dc.l loc_087f74

;--------------------------
loc_08635c:
	jsr RandomNumberGod
	lea loc_08636c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08636c:
	dc.w $000f

	dc.w $000a
	dc.l loc_0878b2

	dc.w $000a
	dc.l loc_08774a

	dc.w $0014
	dc.l loc_0877b0

	dc.w $0002
	dc.l loc_088cb2

	dc.w $0032
	dc.l loc_088316

	dc.w $0014
	dc.l loc_088698

	dc.w $0014
	dc.l loc_088446

	dc.w $0014
	dc.l loc_088f5a

	dc.w $0014
	dc.l loc_088804

	dc.w $0014
	dc.l loc_088e22

	dc.w $000a
	dc.l loc_0883a2

	dc.w $000a
	dc.l loc_0889ca

	dc.w $000a
	dc.l loc_0885e4

	dc.w $000f
	dc.l loc_088a20

	dc.w $000a
	dc.l loc_0891de

;--------------------------
loc_0863c8:
	jsr RandomNumberGod
	lea loc_0863d8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0863d8:
	dc.w $000f

	dc.w $0028
	dc.l loc_08768a

	dc.w $0028
	dc.l loc_08786a

	dc.w $001e
	dc.l loc_0877b0

	dc.w $000a
	dc.l loc_08774a

	dc.w $000a
	dc.l loc_0878b2

	dc.w $0032
	dc.l loc_088316

	dc.w $0014
	dc.l loc_088a20

	dc.w $0014
	dc.l loc_088698

	dc.w $0014
	dc.l loc_088804

	dc.w $0014
	dc.l loc_088e22

	dc.w $0028
	dc.l loc_088cfc

	dc.w $000a
	dc.l loc_08813a

	dc.w $000a
	dc.l loc_0891de

	dc.w $000a
	dc.l loc_0889ca

	dc.w $000a
	dc.l loc_0885e4

;--------------------------
loc_086434:
	cmpi.w #8,($be,a4)
	bge.w loc_086192
	jsr RandomNumberGod
	lea loc_08644e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08644e:
	dc.w $0007

	dc.w $0028
	dc.l loc_08768a

	dc.w $0028
	dc.l loc_08786a

	dc.w $001e
	dc.l loc_088cfc

	dc.w $000a
	dc.l loc_0877b0

	dc.w $000a
	dc.l loc_08813a

	dc.w $000a
	dc.l loc_0891de

	dc.w $0032
	dc.l loc_088316

;--------------------------
loc_08647a:
	movea.l #loc_0879e0,a0
	bsr.w loc_0861b0
	bra.w loc_0862ac

;--------------------------
loc_086488:
	clr.b ($2f6,a4)
	movea.l #loc_0878b2,a0
	bsr.w loc_0861d8
	jsr RandomNumberGod
	lea loc_0864a6(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\
loc_0864a6:
	dc.w $0002

	dc.w $0050
	dc.l loc_0864b4

	dc.w $0014
	dc.l loc_0864c2

;--------------------------
loc_0864b4:
	movea.l #loc_088a20,a0
	bsr.w loc_0861b0
	bra.w loc_0862ac

loc_0864c2:
	movea.l #loc_08788e,a0
	bsr.w loc_0861d8
	bra.w loc_0862ac

;-+-+-+-+-+-+-+-+-+-+-+-+-+
loc_0864d0:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_0864e4(pc,d0.w),d0
	jmp loc_0864e4(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0864e4:
	dc.w loc_086504-loc_0864e4
	dc.w loc_086504-loc_0864e4
	dc.w loc_086504-loc_0864e4
	dc.w loc_086504-loc_0864e4

	dc.w loc_086508-loc_0864e4
	dc.w loc_08651a-loc_0864e4
	dc.w loc_08652c-loc_0864e4
	dc.w loc_08653e-loc_0864e4

	dc.w loc_086550-loc_0864e4
	dc.w loc_086562-loc_0864e4
	dc.w loc_086574-loc_0864e4
	dc.w loc_086586-loc_0864e4

	dc.w loc_086598-loc_0864e4
	dc.w loc_086598-loc_0864e4
	dc.w loc_086598-loc_0864e4
	dc.w loc_086598-loc_0864e4

;--------------------------
loc_086504:
	bra.w loc_08659c

loc_086508:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_08659c
	bra.w loc_0865aa

loc_08651a:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_08659c
	bra.w loc_0865aa

loc_08652c:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_08659c
	bra.w loc_0865aa

loc_08653e:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_08659c
	bra.w loc_0865aa

loc_086550:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_08659c
	bra.w loc_0865aa

loc_086562:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_08659c
	bra.w loc_0865aa

loc_086574:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_08659c
	bra.w loc_0865aa

loc_086586:
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_08659c
	bra.w loc_0865aa

loc_086598:
	bra.w loc_0865aa

loc_08659c:
	movea.l #loc_0878b2,a0
	bsr.w loc_0861d8
	bra.w loc_0862ac

loc_0865aa:
	jsr RandomNumberGod
	cmpi.w #-$6000,d0
	scs ($4d2,a4)

loc_0865b8:
	tst.b ($365,a4)
	bne.w loc_0868e0
	clr.b ($2f6,a4)
	tst.b ($4d2,a4)
	bpl.w loc_0865f2
	cmpi.b #3,($360,a4)
	beq.w loc_0865f2
	cmpi.b #4,($360,a4)
	beq.w loc_0865f2
	tst.b ($367,a4)
	beq.w loc_0865f6
	cmpi.b #1,($360,a4)
	beq.w loc_0865f6

loc_0865f2:
	bra.w loc_086634

loc_0865f6:
	cmpi.w #$40,($340,a4)
	blt.w loc_086634
	cmpi.w #$8c,($378,a4)
	bgt.w loc_086634
	cmpi.w #$a,($378,a4)
	blt.w loc_086634
	cmpi.w #-$8c,($37a,a4)
	bgt.w loc_086634
	tst.b ($24a,a4)
	bne.w loc_086634
	movea.l #loc_0877b0,a0
	bsr.w loc_0861d8
	bra.w loc_0868da

loc_086634:
	cmpi.b #3,($376,a4)
	beq.w loc_086680
	cmpi.b #3,($360,a4)
	beq.w loc_086672
	cmpi.b #4,($360,a4)
	beq.w loc_086672
	tst.b ($367,a4)
	beq.w loc_086672
	cmpi.b #1,($360,a4)
	beq.w loc_086680
	cmpi.b #2,($360,a4)
	beq.w loc_086680
	bra.w loc_0868c4

loc_086672:
	jsr RandomNumberGod
	cmpi.w #-$1000,d0
	bcs.w loc_0868c4

loc_086680:
	btst #7,($35c,a4)
	bne.w loc_0866ac
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_0866ac
	cmpi.w #-$64,($37a,a4)
	blt.w loc_0866ac
	movea.l #loc_088804,a0
	bsr.w loc_0861b0
	bne.w loc_0868da

loc_0866ac:
	cmpi.w #$40,($340,a4)
	blt.w loc_0866e2
	btst #7,($35c,a4)
	bne.w loc_0866e2
	cmpi.w #$3c,($378,a4)
	bgt.w loc_0866e2
	cmpi.w #-$1e,($37a,a4)
	blt.w loc_0866e2
	movea.l #loc_0883a2,a0
	bsr.w loc_0861b0
	bne.w loc_0868da

loc_0866e2:
	btst #7,($35c,a4)
	bne.w loc_08670c
	cmpi.w #$3c,($378,a4)
	bgt.w loc_08670c
	cmpi.w #-$78,($37a,a4)
	blt.w loc_08670c
	clr.b ($2f6,a4)
	bsr.w loc_08a30e
	bne.w loc_0868da

loc_08670c:
	btst #7,($35c,a4)
	bne.w loc_086742
	cmpi.w #$3c,($378,a4)
	bgt.w loc_086742
	cmpi.w #-$28,($37a,a4)
	blt.w loc_086742
	move.b #2,($2f6,a4)
	bsr.w loc_08a30e
	jsr loc_02e308
	bsr.w loc_08a30e
	bne.w loc_0868da

loc_086742:
	btst #7,($35c,a4)
	bne.w loc_08676c
	cmpi.w #$3c,($378,a4)
	bgt.w loc_08676c
	cmpi.w #-$3c,($37a,a4)
	blt.w loc_08676c
	clr.b ($2f6,a4)
	bsr.w loc_08a11a
	bne.w loc_0868da

loc_08676c:
	btst #7,($35c,a4)
	bne.w loc_086798
	cmpi.w #$3c,($378,a4)
	bgt.w loc_086798
	cmpi.w #-$64,($37a,a4)
	blt.w loc_086798
	move.b #2,($2f6,a4)
	bsr.w loc_08a1be
	bne.w loc_0868da

loc_086798:
	cmpi.w #$60,($340,a4)
	blt.w loc_0867d2
	btst #7,($35c,a4)
	bne.w loc_0867d2
	cmpi.w #$3c,($378,a4)
	bgt.w loc_0867d2
	cmpi.w #-$78,($37a,a4)
	blt.w loc_0867d2
	movea.l #loc_087998,a0
	bsr.w loc_0861d8
	bsr.w loc_08a11a
	bne.w loc_0868da

loc_0867d2:
	btst #7,($35c,a4)
	bne.w loc_0867fe
	cmpi.w #$46,($378,a4)
	bgt.w loc_0867fe
	cmpi.w #-$a,($37a,a4)
	blt.w loc_0867fe
	move.b #2,($2f6,a4)
	bsr.w loc_08a11a
	bne.w loc_0868da

loc_0867fe:
	cmpi.w #$60,($340,a4)
	blt.w loc_086838
	btst #7,($35c,a4)
	bne.w loc_086838
	cmpi.w #$46,($378,a4)
	bgt.w loc_086838
	cmpi.w #-$78,($37a,a4)
	blt.w loc_086838
	movea.l #loc_0879bc,a0
	bsr.w loc_0861d8
	bsr.w loc_08a11a
	bne.w loc_0868da

loc_086838:
	btst #7,($35c,a4)
	bne.w loc_086862
	cmpi.w #$50,($378,a4)
	bgt.w loc_086862
	cmpi.w #-$3c,($37a,a4)
	blt.w loc_086862
	clr.b ($2f6,a4)
	bsr.w loc_08a1be
	bne.w loc_0868da

loc_086862:
	btst #7,($35c,a4)
	bne.w loc_08688e
	cmpi.w #$64,($378,a4)
	bgt.w loc_08688e
	cmpi.w #-$64,($37a,a4)
	blt.w loc_08688e
	move.b #2,($2f6,a4)
	bsr.w loc_08a11a
	bne.w loc_0868da

loc_08688e:
	cmpi.w #$40,($340,a4)
	blt.w loc_0868c4
	btst #7,($35c,a4)
	beq.w loc_0868c4
	cmpi.w #$3c,($378,a4)
	bgt.w loc_0868c4
	cmpi.w #-$28,($37a,a4)
	bgt.w loc_0868c4
	movea.l #loc_0883a2,a0
	bsr.w loc_0861b0
	bne.w loc_0868da

loc_0868c4:
	jsr loc_02e456
	jsr loc_0226b4
	jsr loc_02e370
	bra.w loc_0865b8

loc_0868da:
	jsr loc_02e308

loc_0868e0:
	clr.b ($2f6,a4)
	bclr #2,($35c,a4)
	bra.w loc_0862ac


;-+-+-+-+-+-+-+-+-+-+-+-+-+
loc_0868ee:
	cmpi.w #$a0,($340,a4)
	bge.w loc_08690c
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($358,a4),d0
	bcs.w loc_08690c
	bra.w loc_0869d8

loc_08690c:
	move.w #7,($4d4,a4)

loc_086912:
	cmpi.b #1,($36a,a4)
	bne.w loc_086926
	btst #0,($362,a4)
	bne.w loc_0865aa

loc_086926:
	tst.b ($367,a4)
	beq.w loc_0869c8
	cmpi.b #3,($36a,a4)
	beq.w loc_0869bc
	cmpi.b #6,($36a,a4)
	beq.w loc_086980
	cmpi.b #5,($360,a4)
	beq.w loc_08696a
	cmpi.b #1,($36a,a4)
	bne.w loc_086960
	cmpi.w #$1c,($374,a4)
	bgt.w loc_0869bc

loc_086960:
	cmpi.b #1,($360,a4)
	beq.w loc_08699a

loc_08696a:
	jsr loc_02e456
	jsr loc_0226b4
	subq.w #1,($4d4,a4)
	bge.b loc_086912
	bra.w loc_0869c8

loc_086980:
	cmpi.b #4,($376,a4)
	beq.b loc_08696a
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0869d8
	bra.w loc_0878b2

loc_08699a:
	cmpi.b #4,($36a,a4)
	beq.w loc_0869bc
	cmpi.w #$80,($358,a4)
	blt.w loc_0869c8
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0869c8

loc_0869bc:
	btst #3,($24a,a4)
	bne.b loc_08696a
	bra.w loc_0869ea

loc_0869c8:
	btst #7,($35c,a4)
	bne.w loc_0869e6
	jsr loc_02e456

loc_0869d8:
	jsr loc_0226b4
	moveq #6,d0
	jsr loc_02e39c

loc_0869e6:
	bra.w loc_0862ac

loc_0869ea:
	tst.b ($247,a4)
	beq.w loc_0879e0

loc_0869f2:
	btst #1,($246,a4)
	bne.w loc_086a04
	jsr loc_0226b4
	bra.b loc_0869f2

loc_086a04:
	btst #3,($24a,a4)
	bne.w loc_086f3a
	cmpi.b #5,($36a,a4)
	beq.w loc_086f3a
	cmpi.b #5,($360,a4)
	beq.w loc_086f3a
	tst.b ($365,a4)
	beq.w loc_0865aa
	cmpi.b #1,($360,a4)
	beq.w loc_086a60
	cmpi.b #2,($360,a4)
	bne.w loc_086a56
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_086f2c
	sf d3
	move.w ($378,a4),d2
	bra.w loc_086a6c

loc_086a56:
	st d3
	move.w ($374,a4),d2
	bra.w loc_086a6c

loc_086a60:
	sf d3
	move.w ($374,a4),d2
	add.w ($378,a4),d2
	asr.w #1,d2

loc_086a6c:
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_086a80

loc_086a7c:
	bra.w loc_086c6c

loc_086a80:
	btst #7,($35c,a4)
	beq.w loc_086c6c
	jsr RandomNumberGod
	cmpi.w #$1000,d0

loc_086a94:
	bcs.w loc_086c6c
	cmpi.w #$1e,($36c,a4)
	bge.w loc_086acc
	jsr RandomNumberGod
	lea loc_086ab2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_086ab2:
	dc.w $0004

	dc.w $0014
	dc.l loc_086b84

	dc.w $0014
	dc.l loc_086bbc

	dc.w $0014
	dc.l loc_086bd4

	dc.w $0014
	dc.l loc_086c38

;--------------------------
loc_086acc:
	cmpi.w #$3c,($36c,a4)
	bge.w loc_086b06
	jsr RandomNumberGod
	lea loc_086ae6(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_086ae6:
	dc.w $0005

	dc.w $0014
	dc.l loc_086b84

	dc.w $0014
	dc.l loc_086ba0

	dc.w $0014
	dc.l loc_086bbc

	dc.w $0014
	dc.l loc_086bd4

	dc.w $0014
	dc.l loc_086c38

;--------------------------
loc_086b06:
	cmpi.w #$78,($36c,a4)
	bge.w loc_086b46
	jsr RandomNumberGod
	lea loc_086b20(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_086b20:
	dc.w $0006

	dc.w $001e
	dc.l loc_086b76

	dc.w $001e
	dc.l loc_086b92

	dc.w $001e
	dc.l loc_086bae

	dc.w $000a
	dc.l loc_086ba0

	dc.w $000a
	dc.l loc_086c1c

	dc.w $000a
	dc.l loc_086c50

;--------------------------
loc_086b46:
	jsr RandomNumberGod
	lea loc_086b56(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_086b56:
	dc.w $0005

	dc.w $0028
	dc.l loc_086b76

	dc.w $0028
	dc.l loc_086b92

	dc.w $001e
	dc.l loc_086bae

	dc.w $001e
	dc.l loc_086ba0

	dc.w $000a
	dc.l loc_086c1c

;--------------------------
loc_086b76:
	movea.l #loc_08786a,a0
	bsr.w loc_0861d8
	bra.w loc_086f10

loc_086b84:
	movea.l #loc_087f74,a0
	bsr.w loc_0861b0
	bra.w loc_086f10

loc_086b92:
	movea.l #loc_08768a,a0
	bsr.w loc_0861d8
	bra.w loc_086f10

loc_086ba0:
	movea.l #loc_08774a,a0
	bsr.w loc_0861d8
	bra.w loc_086f10

loc_086bae:
	movea.l #loc_0877b0,a0
	bsr.w loc_0861d8
	bra.w loc_0862ac

loc_086bbc:
	cmpi.w #$40,($340,a4)
	blt.w loc_086c6c
	movea.l #loc_0883a2,a0
	bsr.w loc_0861b0
	bra.w loc_086f10

loc_086bd4:
	cmpi.w #$40,($340,a4)
	blt.w loc_086c6c
	cmpi.w #$50,($36c,a4)
	bgt.w loc_086f10
	sf ($3cb,a4)
	bsr.w loc_089ebe
	jsr loc_02e308
	bra.w loc_086f10

loc_086bfa:
	cmpi.w #$40,($340,a4)
	blt.w loc_086c6c
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_089ebe
	jsr loc_02e308
	bra.w loc_086f10

loc_086c1c:
	cmpi.w #$40,($340,a4)
	blt.w loc_086c6c
	st ($3cb,a4)
	bsr.w loc_089f56
	jsr loc_02e308
	bra.w loc_086f10

loc_086c38:
	cmpi.w #$60,($340,a4)
	blt.w loc_086c6c
	bsr.w loc_089fac
	jsr loc_02e308
	bra.w loc_086f10

loc_086c50:
	cmpi.w #$60,($340,a4)
	blt.w loc_086c6c
	bsr.w loc_08a00c
	beq.w loc_086c6c
	jsr loc_02e308
	bra.w loc_086f10

loc_086c6c:
	jsr RandomNumberGod
	andi.w #$1f,d0
	subi.w #$10,d0
	add.w d0,d2
	btst #0,($369,a4)
	bne.w loc_086ca8
	btst #2,($369,a4)
	bne.w loc_086d20
	btst #1,($369,a4)
	bne.w loc_086ce4
	btst #3,($369,a4)
	bne.w loc_086d20
	bra.w loc_086f3a

loc_086ca8:
	cmpi.w #$1c,d2
	ble.w loc_086d9e
	cmpi.w #$24,d2
	ble.w loc_086eee
	cmpi.w #$28,d2
	ble.w loc_086d82
	cmpi.w #$2c,d2
	ble.w loc_086ec8
	cmpi.w #$2e,d2
	ble.w loc_086d5c
	cmpi.w #$32,d2
	ble.w loc_086dd2
	cmpi.w #$46,d2
	ble.w loc_086efc
	bra.w loc_086f3a

loc_086ce4:
	cmpi.w #$1c,d2
	ble.w loc_086eee
	cmpi.w #$24,d2
	ble.w loc_086e62
	cmpi.w #$28,d2
	ble.w loc_086d82
	cmpi.w #$38,d2
	ble.w loc_086efc
	cmpi.w #$3c,d2
	ble.w loc_086dd2
	cmpi.w #$44,d2
	ble.w loc_086eb0
	cmpi.w #$4b,d2
	ble.w loc_086d9e
	bra.w loc_086f3a

loc_086d20:
	cmpi.w #$1c,d2
	ble.w loc_086dac
	cmpi.w #$24,d2
	ble.w loc_086ee0
	cmpi.w #$28,d2
	ble.w loc_086e02
	cmpi.w #$2e,d2
	ble.w loc_086d5c
	cmpi.w #$3c,d2
	ble.w loc_086efc
	cmpi.w #$46,d2
	ble.w loc_086e3e
	cmpi.w #$50,d2
	ble.w loc_086e50
	bra.w loc_086f3a

loc_086d5c:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_086f10
	jsr loc_02c78a
	beq.w loc_086f10
	bsr.w loc_089fac
	jsr loc_02e308
	bra.w loc_086f10

loc_086d82:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_086f10
	movea.l #loc_08788e,a0
	bsr.w loc_0861d8
	bra.w loc_0862ac

loc_086d9e:
	movea.l #loc_0877b0,a0
	bsr.w loc_0861d8
	bra.w loc_0862ac

loc_086dac:
	cmpi.w #$40,($340,a4)
	blt.w loc_086f10
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_086f10
	movea.l #loc_0883a2,a0
	bsr.w loc_0861b0
	bra.w loc_086f10

loc_086dd2:
	cmpi.w #$40,($340,a4)
	blt.w loc_086f10
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_086f10
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_089ebe
	jsr loc_02e308
	bra.w loc_086f10

loc_086e02:
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_086e0e
	move.w d0,($4d4,a4)
	clr.b ($2f6,a4)
	bsr.w loc_08a30e
	jsr loc_02e2d0
	move.w ($4d4,a4),d0
	dbra d0,loc_086e0e
	bra.w loc_086f10
	clr.b ($2f6,a4)
	bsr.w loc_08a260
	jsr loc_02e308
	bra.w loc_086f10

loc_086e3e:
	clr.b ($2f6,a4)
	movea.l #loc_088804,a0
	bsr.w loc_0861b0
	bra.w loc_086f10

loc_086e50:
	clr.b ($2f6,a4)
	bsr.w loc_08a11a
	jsr loc_02e308
	bra.w loc_086f10

loc_086e62:
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_086e6e:
	move.w d0,($4d4,a4)
	move.b #2,($2f6,a4)
	bsr.w loc_08a30e
	jsr loc_02e2d0
	move.w ($4d4,a4),d0
	dbra d0,loc_086e6e
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_086d9e
	bra.w loc_086f10

loc_086e9c:
	move.b #2,($2f6,a4)
	bsr.w loc_08a1be
	jsr loc_02e308
	bra.w loc_086f10

loc_086eb0:
	cmpi.w #$40,($340,a4)
	blt.w loc_086f10
	bsr.w loc_08a0e8
	jsr loc_02e308
	bra.w loc_086f10

loc_086ec8:
	cmpi.w #$40,($340,a4)
	blt.w loc_086f10
	bsr.w loc_08a0e8
	jsr loc_02e308
	bra.w loc_086f10

loc_086ee0:
	movea.l #loc_088804,a0
	bsr.w loc_0861b0
	bra.w loc_086f10

loc_086eee:
	movea.l #loc_088698,a0
	bsr.w loc_0861b0
	bra.w loc_086f10

loc_086efc:
	move.b #2,($2f6,a4)
	bsr.w loc_08a11a
	jsr loc_02e308
	bra.w loc_086f10

loc_086f10:
	jsr loc_0226b4
	btst #7,($35c,a4)
	bne.w loc_086f28
	moveq #4,d0
	jsr loc_02e39c

loc_086f28:
	bra.w loc_086192

;--------------------------
loc_086f2c:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0878b2

loc_086f3a:
	jsr loc_02e456
	jsr loc_0226b4
	bclr #3,($35c,a4)
	bra.w loc_086192

;-+-+-+-+-+-+-+-+-+-+-+-+-+
loc_086f50:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_086f64(pc,d0.w),d0
	jmp loc_086f64(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_086f64:
	dc.w loc_086f84-loc_086f64
	dc.w loc_086f84-loc_086f64
	dc.w loc_086f8a-loc_086f64
	dc.w loc_086f9e-loc_086f64

	dc.w loc_086fb2-loc_086f64
	dc.w loc_086fc6-loc_086f64
	dc.w loc_086fda-loc_086f64
	dc.w loc_086fee-loc_086f64

	dc.w loc_087002-loc_086f64
	dc.w loc_087002-loc_086f64
	dc.w loc_087002-loc_086f64
	dc.w loc_087002-loc_086f64

	dc.w loc_087002-loc_086f64
	dc.w loc_087002-loc_086f64
	dc.w loc_087002-loc_086f64
	dc.w loc_087002-loc_086f64

;--------------------------
loc_086f84:
	jmp loc_02e5b2

loc_086f8a:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_087006
	jmp loc_02e5b2

loc_086f9e:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_087006
	jmp loc_02e5b2

loc_086fb2:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_087006
	jmp loc_02e5b2

loc_086fc6:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_087006
	jmp loc_02e5b2

loc_086fda:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_087006
	jmp loc_02e5b2

loc_086fee:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_087006
	jmp loc_02e5b2

loc_087002:
	bra.w loc_087006

loc_087006:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcc.b loc_08701a
	move.b #1,($4d0,a4)
	bra.b loc_08702a

loc_08701a:
	cmpi.w #$c000,d0
	bcc.b loc_087026
	sf ($4d0,a4)
	bra.b loc_08702a

loc_087026:
	st ($4d0,a4)

loc_08702a:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	scs ($4d1,a4)

loc_087038:
	tst.b ($367,a4)
	beq.w loc_08704e
	cmpi.w #$24,($374,a4)
	bge.w loc_08704e
	bra.w loc_08717a

loc_08704e:
	tst.b ($363,a4)
	beq.w loc_0871cc
	cmpi.w #-$34,($370,a4)
	ble.w loc_0871cc
	cmpi.w #$34,($370,a4)
	ble.w loc_08717a
	tst.b ($4d1,a4)
	beq.w loc_0870f6
	cmpi.w #$f0,($37c,a4)
	bgt.w loc_0870f6
	cmpi.w #$c8,($37c,a4)
	ble.w loc_0870f6
	cmpi.b #$12,($364,a4)
	beq.w loc_0870f6
	cmpi.w #$c0,($340,a4)
	bge.w loc_0870a8
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0870be

loc_0870a8:
	btst #1,($246,a4)
	beq.w loc_0871cc
	bsr.w loc_08a00c
	beq.w loc_0870be
	bra.w loc_0871cc

loc_0870be:
	cmpi.w #$40,($340,a4)
	blt.w loc_0870f6
	st ($3cb,a4)
	bsr.w loc_089f56
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0871cc
	st ($3cb,a4)
	bsr.w loc_089f56
	jsr loc_02e308
	bra.w loc_0871cc

loc_0870f6:
	tst.b ($4d0,a4)
	beq.w loc_087126
	bgt.w loc_087106
	bra.w loc_08717a

loc_087106:
	cmpi.w #$4b,($37c,a4)
	bgt.w loc_08717a
	tst.b ($24a,a4)
	bne.w loc_08717a
	movea.l #loc_087974,a0
	bsr.w loc_0861d8
	bra.w loc_0871cc

loc_087126:
	cmpi.w #$32,($37c,a4)
	bgt.w loc_08717a
	cmpi.b #$12,($364,a4)
	beq.w loc_08717a
	tst.b ($24a,a4)
	bne.w loc_08717a
	cmpi.w #$80,($340,a4)
	blt.w loc_08716c
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_08716c
	st ($3cb,a4)
	bsr.w loc_089ebe
	jsr loc_02e308
	bra.w loc_0871cc

loc_08716c:
	movea.l #loc_0879bc,a0
	bsr.w loc_0861d8
	bra.w loc_0871cc

loc_08717a:
	cmpi.w #$c0,($340,a4)
	blt.w loc_0871bc
	cmpi.w #$20,($370,a4)
	bgt.w loc_0871bc
	cmpi.w #8,($370,a4)
	bgt.w loc_0871bc
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0871bc
	btst #1,($246,a4)
	beq.w loc_0871cc
	bsr.w loc_08a00c
	beq.w loc_0871bc
	bra.w loc_0871cc

loc_0871bc:
	jsr loc_02e456
	jsr loc_0226b4
	bra.w loc_087038

loc_0871cc:
	clr.b ($2f6,a4)
	bra.w loc_0862ac

;-+-+-+-+-+-+-+-+-+-+-+-+-+
loc_0871d4:
	clr.b ($2f6,a4)
	cmpi.w #$40,($340,a4)
	bge.w loc_0871e6
	bra.w loc_0862ac

loc_0871e6:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_087220
	jsr RandomNumberGod
	lea loc_087200(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_087200:
	dc.w $0005

	dc.w $0032
	dc.l loc_0873d8

	dc.w $0014
	dc.l loc_0872ee

	dc.w $0014
	dc.l loc_0873ca

	dc.w $000a
	dc.l loc_0872e0

	dc.w $000a
	dc.l loc_08731e

;--------------------------
loc_087220:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_08725a
	jsr RandomNumberGod
	lea loc_08723a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08723a:
	dc.w $0005

	dc.w $0028
	dc.l loc_08731e

	dc.w $0014
	dc.l loc_0873d8

	dc.w $0014
	dc.l loc_0872ee

	dc.w $000a
	dc.l loc_0872e0

	dc.w $000a
	dc.l loc_0873ca

;--------------------------
loc_08725a:
	cmpi.w #$78,($378,a4)
	bgt.w loc_08728e
	jsr RandomNumberGod
	lea loc_087274(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_087274:
	dc.w $0004

	dc.w $0028
	dc.l loc_08731e

	dc.w $0014
	dc.l loc_087336

	dc.w $0014
	dc.l loc_0873ca

	dc.w $000a
	dc.l loc_0873a4

;--------------------------
loc_08728e:
	jsr RandomNumberGod
	lea loc_08729e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08729e:
	dc.w $0006

	dc.w $0028
	dc.l loc_08731e

	dc.w $0014
	dc.l loc_087336

	dc.w $0014
	dc.l loc_0873a4

	dc.w $000a
	dc.l loc_087396

	dc.w $000a
	dc.l loc_0872d2

	dc.w $000a
	dc.l loc_0872c4

;--------------------------
loc_0872c4:
	bsr.w loc_08a0c2
	jsr loc_02e308
	bra.w loc_0862ac

loc_0872d2:
	movea.l #loc_08911c,a0
	bsr.w loc_0861b0
	bra.w loc_0862ac

loc_0872e0:
	movea.l #loc_08774a,a0
	bsr.w loc_0861d8
	bra.w loc_0862ac

loc_0872ee:
	cmpi.w #$40,($340,a4)
	blt.w loc_0862ac
	btst #1,($362,a4)
	bne.w loc_087310
	bsr.w loc_08a0e8
	jsr loc_02e308
	bra.w loc_0862ac

loc_087310:
	bsr.w loc_08a0e8
	jsr loc_02e308
	bra.w loc_0862ac

loc_08731e:
	jsr loc_02c78a
	beq.w loc_087336
	movea.l #loc_088316,a0
	bsr.w loc_0861b0
	bra.w loc_0862ac

loc_087336:
	movea.l #loc_088cfc,a0
	bsr.w loc_0861b0
	bra.w loc_0862ac

loc_087344:
	movea.l #loc_088698,a0
	bsr.w loc_0861b0
	bra.w loc_0862ac

loc_087352:
	movea.l #loc_088804,a0
	bsr.w loc_0861b0
	bra.w loc_0862ac

loc_087360:
	movea.l #loc_08786a,a0
	bsr.w loc_0861d8
	jsr loc_02e308
	bra.w loc_0862ac

loc_087374:
	cmpi.w #$40,($340,a4)
	blt.w loc_0862ac
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_089f08
	jsr loc_02e308
	bra.w loc_0862ac

loc_087396:
	movea.l #loc_0885e4,a0
	bsr.w loc_0861b0
	bra.w loc_0862ac

loc_0873a4:
	movea.l #loc_0891de,a0
	bsr.w loc_0861b0
	bra.w loc_0862ac

loc_0873b2:
	cmpi.w #$40,($340,a4)
	blt.w loc_0862ac
	movea.l #loc_0883a2,a0
	bsr.w loc_0861b0
	bra.w loc_0862ac

loc_0873ca:
	movea.l #loc_088a20,a0
	bsr.w loc_0861b0
	bra.w loc_0862ac

loc_0873d8:
	movea.l #loc_087f74,a0
	bsr.w loc_0861b0
	bra.w loc_0862ac

;-+-+-+-+-+-+-+-+-+-+-+-+-+
loc_0873e6:
	clr.b ($2f6,a4)
	cmpi.w #$24,($36c,a4)
	bge.w loc_0873fa
	move.b #4,($2f6,a4)

loc_0873fa:
	cmpi.w #$64,($36c,a4)
	ble.w loc_08740a
	move.b #8,($2f6,a4)

loc_08740a:
	clr.b ($2f6,a4)
	btst #5,($361,a4)
	beq.w loc_087420
	jsr loc_0226b4
	bra.b loc_0873e6

loc_087420:
	clr.b ($2f6,a4)
	moveq #$12,d0
	jsr loc_02e420
	cmpi.w #$40,($340,a4)
	bge.w loc_087444
	movea.l #loc_0875ba,a0
	bsr.w loc_0861d8
	bra.w loc_0862ac

loc_087444:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_087460(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_087460:
	dc.w $0003

	dc.w $0028
	dc.l loc_087474

	dc.w $0014
	dc.l loc_087490

	dc.w $0014
	dc.l loc_087482

;--------------------------
loc_087474:
	movea.l #loc_087f74,a0
	bsr.w loc_0861b0
	bra.w loc_0862ac

loc_087482:
	movea.l #loc_088a20,a0
	bsr.w loc_0861d8
	bra.w loc_0862ac

loc_087490:
	cmpi.w #$60,($340,a4)
	blt.w loc_0874b8
	bsr.w loc_08a0c2
	jsr loc_02e308
	btst #1,($246,a4)
	beq.w loc_0862ac
	bsr.w loc_08a062
	jsr loc_02e308

loc_0874b8:
	bra.w loc_0862ac

;-+-+-+-+-+-+-+-+-+-+-+-+-+
loc_0874bc:
	andi.b #2,($2f6,a4)

loc_0874c2:
	btst #5,($249,a4)
	beq.w loc_087502
	cmpi.w #$50,($378,a4)
	blt.w loc_0874f2
	cmpi.w #$80,($340,a4)
	blt.w loc_0874f2
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0874f2
	st ($2fb,a4)

loc_0874f2:
	moveq #8,d0
	jsr loc_02e39c
	jsr loc_0226b4
	bra.b loc_0874c2

loc_087502:
	jsr loc_02e370
	move.l #$80004,d0
	jsr loc_02e39c
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_087528
	bra.w loc_086192

loc_087528:
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$32,($378,a4)
	bgt.w loc_087576

loc_08753e:
	tst.b ($249,a4)
	beq.w loc_0875b6
	jsr RandomNumberGod
	lea loc_08755a(pc),a0
	jsr loc_02decc
	bra.w loc_08756e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08755a:
	dc.w $0003

	dc.w $005a
	dc.l loc_087f74

	dc.w $000a
	dc.l loc_0883a2

	dc.w $000a
	dc.l loc_088316

;--------------------------
loc_08756e:
	jsr loc_0226b4
	bra.b loc_08753e

loc_087576:
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_0875b6

loc_087584:
	tst.b ($249,a4)
	beq.w loc_0875b6
	jsr RandomNumberGod
	lea loc_0875a0(pc),a0
	jsr loc_02decc
	bra.w loc_0875ae

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0875a0:
	dc.w $0002
	dc.w $005a
	dc.l loc_0883a2
	dc.w $000a
	dc.l loc_088316

;--------------------------
loc_0875ae:
	jsr loc_0226b4
	bra.b loc_087584

loc_0875b6:
	bra.w loc_0868ee

;--------------------------
loc_0875ba:
	cmpi.w #$80,($340,a4)
	bge.w loc_0875ea
	andi.b #2,($2f6,a4)
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$44,d2
	jsr loc_02e0f4
	bra.w loc_0861de

loc_0875ea:
	jsr loc_02e496
	jsr loc_02e550
	bra.w loc_0861de

loc_0875fa:
	jsr loc_02e370
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.b loc_0875ba
	cmpi.w #$a0,($358,a4)
	blt.w loc_087632
	jsr RandomNumberGod
	cmpi.w #$3000,d0
	bcs.w loc_08774a
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_08768a

loc_087632:
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
	bra.w loc_0861de

loc_08765e:
	cmpi.w #8,($be,a4)
	ble.w loc_087680
	move.b #8,($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr loc_0226b4

loc_087680:
	move.l #$40004,d0
	bra.w loc_0876a8

;--------------------------
loc_08768a:
	cmpi.w #$20,($340,a4)
	bge.w loc_0876a2
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0875ba

loc_0876a2:
	move.l #$100010,d0

loc_0876a8:
	cmpi.w #8,($be,a4)
	bgt.w loc_087702
	cmpi.w #$60,($340,a4)
	bge.w loc_087702
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$44,d2
	jsr loc_02e0f4
	cmpi.w #$20,($340,a4)
	bge.w loc_0876fa
	clr.b ($2f6,a4)
	move.w #$18,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$54,d2
	swap d2
	jsr loc_02e0f4

loc_0876fa:
	clr.b ($2f6,a4)
	bra.w loc_0861de

loc_087702:
	movem.l d0,-(a7)
	bsr.w loc_08a3e4
	movem.l (a7)+,d0
	bne.w loc_087732
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$44,($378,a4)
	ble.b loc_0876fa
	clr.b ($2f6,a4)
	jsr loc_0226b4
	bra.b loc_087702

loc_087732:
	moveq #0,d2
	move.w #$44,d2
	jsr loc_02e0f4
	bra.b loc_0876fa

loc_087740:
	move.l #$40004,d0
	bra.w loc_087768

;--------------------------
loc_08774a:
	cmpi.w #$20,($340,a4)
	bge.w loc_087762
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0875ba

loc_087762:
	move.l #$80010,d0

loc_087768:
	move.b #4,($2f6,a4)
	moveq #0,d2
	move.w #$8c,d2
	swap d2
	jsr loc_02e0f4
	cmpi.w #$20,($340,a4)
	bge.w loc_0877a8
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

loc_0877a8:
	clr.b ($2f6,a4)
	bra.w loc_0861de

;--------------------------
loc_0877b0:
	cmpi.w #$20,($340,a4)
	blt.w loc_0861de
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_0877d6
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_087846
	bra.w loc_08783c

loc_0877d6:
	cmpi.w #$50,($36c,a4)
	bgt.w loc_0877fc
	move.l #$80008,d0
	move.l #$6e0000,d2
	move.b #4,($2f6,a4)
	jsr loc_02e0f4
	bra.w loc_08781a

loc_0877fc:
	cmpi.w #$6e,($36c,a4)
	blt.w loc_08781a
	move.l #$80008,d0
	moveq #$50,d2
	move.b #8,($2f6,a4)
	jsr loc_02e0f4

loc_08781a:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_087846
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_08783c
	move.b #5,($2f6,a4)
	bra.w loc_08784c

loc_08783c:
	move.b #1,($2f6,a4)
	bra.w loc_08784c

loc_087846:
	move.b #9,($2f6,a4)

loc_08784c:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_08784c
	clr.b ($2f6,a4)
	moveq #4,d0
	jsr loc_02e39c
	bra.w loc_0861de

;--------------------------
loc_08786a:
	cmpi.w #$40,($340,a4)
	blt.w loc_08768a
	clr.b ($2f6,a4)
	bsr.w loc_08a3e4
	jsr loc_0226b4
	moveq #8,d0
	jsr loc_02e39c
	bra.w loc_0861de

;--------------------------
loc_08788e:
	cmpi.w #$40,($340,a4)
	blt.w loc_08774a
	clr.b ($2f6,a4)
	bsr.w loc_08a3c6
	jsr loc_0226b4
	moveq #8,d0
	jsr loc_02e39c
	bra.w loc_0861de

;--------------------------
loc_0878b2:
	cmpi.w #$20,($340,a4)
	blt.w loc_08796c
	cmpi.w #$28,($36c,a4)
	blt.w loc_0878de
	cmpi.w #$5a,($36c,a4)
	blt.w loc_087906
	cmpi.w #$b4,($36c,a4)
	bgt.w loc_08792e
	bra.w loc_0875ba

loc_0878de:
	bra.w loc_087906

loc_0878e2:
	move.b ($246,a4),d0
	andi.b #$c,d0
	bne.w loc_0878fc
	movea.l #loc_08788e,a0
	bsr.w loc_0861d8
	bra.w loc_08796c

loc_0878fc:
	move.b #9,($2f6,a4)
	bra.w loc_08784c

loc_087906
	cmpi.w #$80,($340,a4)
	bge.w loc_087954
	move.l #$100010,d0
	move.b #4,($2f6,a4)
	move.w #$b4,d2
	swap d2
	clr.w d2
	jsr loc_02e0f4
	bra.w loc_08796c

loc_08792e:
	cmpi.w #$60,($340,a4)
	bge.w loc_087962
	move.l #$100010,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$5a,d2
	jsr loc_02e0f4
	bra.w loc_08796c

loc_087954:
	movea.l #loc_08788e,a0
	bsr.w loc_0861d8
	bra.w loc_08796c

loc_087962:
	movea.l #loc_08786a,a0
	bsr.w loc_0861d8

loc_08796c:
	clr.b ($2f6,a4)
	bra.w loc_0861de

;--------------------------
loc_087974:
	move.b #9,($2f6,a4)

loc_08797a:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_08797a
	moveq #2,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_0861de

;--------------------------
loc_087998:
	move.b #5,($2f6,a4)

loc_08799e
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_08799e
	moveq #2,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_0861de

;--------------------------
loc_0879bc:
	move.b #1,($2f6,a4)

loc_0879c2:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_0879c2
	moveq #2,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_0861de

;--------------------------
loc_0879e0:
	btst #0,($24a,a4)
	bne.w loc_0861b6
	tst.b ($247,a4)
	bne.w loc_0861b6
	cmpi.w #$30,($340,a4)
	blt.w loc_0861b6

loc_0879fc:
	clr.b ($2f6,a4)
	btst #1,($246,a4)
	bne.w loc_087f66
	move.b ($361,a4),d0
	andi.b #$f8,d0
	beq.w loc_087a20
	cmpi.b #5,($360,a4)
	beq.w loc_087f5c

loc_087a20:
	tst.b ($365,a4)
	bne.w loc_087d28
	cmpi.w #$60,($358,a4)
	blt.w loc_087d28
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_087ce4
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_087b7a
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_087a84
	cmpi.w #$14,($378,a4)
	bgt.w loc_087a84
	cmpi.w #$30,($37a,a4)
	bgt.w loc_087a84
	cmpi.w #$10,($37a,a4)
	blt.w loc_087a84
	move.b #2,($2f6,a4)
	bsr.w loc_08a260
	bra.w loc_087f66

loc_087a84:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_087ab0
	cmpi.w #$10,($37a,a4)
	bgt.w loc_087ab0
	cmpi.w #-$40,($37a,a4)
	blt.w loc_087ab0
	move.b #1,($2f6,a4)
	bsr.w loc_08a1be
	bra.w loc_087f66

loc_087ab0:
	jsr RandomNumberGod
	cmpi.w #$d000,d0
	bcs.w loc_087ae4
	cmpi.w #$2e,($378,a4)
	bgt.w loc_087ae4
	cmpi.w #$10,($37a,a4)
	bgt.w loc_087ae4
	cmpi.w #-$30,($37a,a4)
	blt.w loc_087ae4
	bsr.w loc_08a260
	bra.w loc_087f66

loc_087ae4:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_087b1c
	cmpi.w #$2e,($378,a4)
	bgt.w loc_087b1c
	cmpi.w #$20,($37a,a4)
	bgt.w loc_087b1c
	cmpi.w #-$20,($37a,a4)
	blt.w loc_087b1c
	bsr.w loc_08a30e
	bra.w loc_087f66

loc_087b18:
	bra.w loc_087d12

loc_087b1c:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_087b50
	cmpi.w #$3e,($378,a4)
	bgt.w loc_087b50
	cmpi.w #$30,($37a,a4)
	bgt.w loc_087b50
	cmpi.w #-$30,($37a,a4)
	blt.w loc_087b50
	bsr.w loc_08a1be
	bra.w loc_087f66

loc_087b50:
	cmpi.w #$3e,($378,a4)
	bgt.w loc_087b76
	cmpi.w #$40,($37a,a4)
	bgt.w loc_087b76
	cmpi.w #-$20,($37a,a4)
	blt.w loc_087b76
	bsr.w loc_08a11a
	bra.w loc_087f66

loc_087b76:
	bra.w loc_087f5c

loc_087b7a:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_087bb4
	cmpi.w #$14,($378,a4)
	bgt.w loc_087bb4
	cmpi.w #$30,($37a,a4)
	bgt.w loc_087bb4
	cmpi.w #$10,($37a,a4)
	blt.w loc_087bb4
	move.b #2,($2f6,a4)
	bsr.w loc_08a260
	bra.w loc_087f66

loc_087bb4:
	cmpi.w #$24,($378,a4)
	bgt.w loc_087be0
	cmpi.w #$10,($37a,a4)
	bgt.w loc_087be0
	cmpi.w #-$40,($37a,a4)
	blt.w loc_087be0
	move.b #1,($2f6,a4)
	bsr.w loc_08a1be
	bra.w loc_087f66

loc_087be0:
	jsr RandomNumberGod
	cmpi.w #$d000,d0
	bcs.w loc_087c14
	cmpi.w #$34,($378,a4)
	bgt.w loc_087c14
	cmpi.w #$10,($37a,a4)
	bgt.w loc_087c14
	cmpi.w #-$10,($37a,a4)
	blt.w loc_087c14
	bsr.w loc_08a260
	bra.w loc_087f66

loc_087c14:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_087c4c
	cmpi.w #$34,($378,a4)
	bgt.w loc_087c4c
	cmpi.w #$20,($37a,a4)
	bgt.w loc_087c4c
	cmpi.w #-$20,($37a,a4)
	blt.w loc_087c4c
	bsr.w loc_08a30e
	bra.w loc_087f66

loc_087c48:
	bra.w loc_087d12

loc_087c4c:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_087c86
	cmpi.w #$44,($378,a4)
	bgt.w loc_087c86
	cmpi.w #-$10,($37a,a4)
	bgt.w loc_087c86
	cmpi.w #-$50,($37a,a4)
	blt.w loc_087c86
	move.b #2,($2f6,a4)
	bsr.w loc_08a11a
	bra.w loc_087f66

loc_087c86:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_087cba
	cmpi.w #$44,($378,a4)
	bgt.w loc_087cba
	cmpi.w #$30,($37a,a4)
	bgt.w loc_087cba
	cmpi.w #-$30,($37a,a4)
	blt.w loc_087cba
	bsr.w loc_08a1be
	bra.w loc_087f66

loc_087cba:
	cmpi.w #$44,($378,a4)
	bgt.w loc_087ce0
	cmpi.w #$40,($37a,a4)
	bgt.w loc_087ce0
	cmpi.w #-$20,($37a,a4)
	blt.w loc_087ce0
	bsr.w loc_08a11a
	bra.w loc_087f66

loc_087ce0:
	bra.w loc_087f5c

loc_087ce4:
	cmpi.w #$20,($378,a4)
	bge.w loc_087f5c
	cmpi.w #-$20,($37a,a4)
	blt.w loc_087f5c
	move.b #2,($2f6,a4)
	bsr.w loc_08a11a
	move.l #$80008,d0
	jsr loc_02e420
	bra.w loc_087f66

loc_087d12:
	bsr.w loc_08a30e
	jsr loc_02e2d0
	btst #1,($246,a4)
	bne.w loc_087f66
	bra.b loc_087d12

loc_087d28:
	jsr RandomNumberGod
	cmpi.w #$c00,d0
	bcs.w loc_087d5a
	tst.w ($21a,a4)
	blt.w loc_087f5c
	cmpi.l #$5dc000,($22a,a4)
	bgt.w loc_087f5c
	cmpi.l #$5dc000,($22a,a4)
	ble.w loc_087d9c
	bra.w loc_087f5c

loc_087d5a:
	cmpi.w #$60,($340,a4)
	blt.w loc_087f66
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_087d98
	cmpi.w #$8c,($378,a4)
	bgt.w loc_087f5c
	cmpi.w #$64,($378,a4)
	blt.w loc_087f5c
	btst #1,($246,a4)
	bne.w loc_087f66
	bsr.w loc_08a00c
	bne.w loc_087f66

loc_087d98:
	bra.w loc_087f5c

loc_087d9c:
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_087f4a
	cmpi.w #$14,($378,a4)
	bgt.w loc_087dba
	bsr.w loc_08a11a
	bra.w loc_087f66

loc_087dba:
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_087e88
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_087dec
	cmpi.w #$14,($378,a4)
	bgt.w loc_087dec
	move.b #2,($2f6,a4)
	bsr.w loc_08a260
	bra.w loc_087f66

loc_087dec:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_087e0c
	cmpi.w #$24,($378,a4)
	bgt.w loc_087e0c
	bsr.w loc_08a30e
	bra.w loc_087f66

loc_087e0c:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_087e2c
	cmpi.w #$24,($378,a4)
	bgt.w loc_087e2c
	bsr.w loc_08a260
	bra.w loc_087f66

loc_087e2c:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_087e4c
	cmpi.w #$34,($378,a4)
	bgt.w loc_087e4c
	bsr.w loc_08a1be
	bra.w loc_087f66

loc_087e4c:
	cmpi.w #$44,($378,a4)
	bgt.w loc_087e5e
	bsr.w loc_08a11a
	bra.w loc_087f66

loc_087e5e:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_087e84
	cmpi.w #$54,($378,a4)
	bgt.w loc_087e84
	move.b #2,($2f6,a4)
	bsr.w loc_08a11a
	bra.w loc_087f66

loc_087e84:
	bra.w loc_087f5c

loc_087e88:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_087eae
	cmpi.w #$14,($378,a4)
	bgt.w loc_087eae
	move.b #2,($2f6,a4)
	bsr.w loc_08a260
	bra.w loc_087f66

loc_087eae:
	jsr RandomNumberGod
	cmpi.w #$d000,d0
	bcs.w loc_087ece
	cmpi.w #$24,($378,a4)
	bgt.w loc_087ece
	bsr.w loc_08a260
	bra.w loc_087f66

loc_087ece:
	jsr RandomNumberGod
	cmpi.w #$d000,d0
	bcs.w loc_087eee
	cmpi.w #$34,($378,a4)
	bgt.w loc_087eee
	bsr.w loc_08a30e
	bra.w loc_087f66

loc_087eee:
	jsr RandomNumberGod
	cmpi.w #$b000,d0
	bcs.w loc_087f0e
	cmpi.w #$44,($378,a4)
	bgt.w loc_087f0e
	bsr.w loc_08a1be
	bra.w loc_087f66

loc_087f0e:
	cmpi.w #$44,($378,a4)
	bgt.w loc_087f20
	bsr.w loc_08a11a
	bra.w loc_087f66

loc_087f20
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_087f46
	cmpi.w #$54,($378,a4)
	bgt.w loc_087f46
	move.b #2,($2f6,a4)
	bsr.w loc_08a11a
	bra.w loc_087f66

loc_087f46:
	bra.w loc_087f5c

loc_087f4a:
	cmpi.w #$24,($378,a4)
	bgt.w loc_087f66
	bsr.w loc_08a11a
	bra.w loc_087f66

loc_087f5c:
	jsr loc_0226b4
	bra.w loc_0879fc

loc_087f66:
	clr.b ($2f6,a4)
	jsr loc_02e308
	bra.w loc_0861b6

;--------------------------
loc_087f74:
	cmpi.w #$40,($340,a4)
	blt.w loc_0861b6
	move.w #7,d0

loc_087f82:
	move.w d0,($4d4,a4)
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_0861b6
	btst #6,($24a,a4)
	bne.w loc_0861b6
	tst.b ($247,a4)
	beq.w loc_08804a
	cmpi.w #-$50,($37a,a4)
	bgt.w loc_087ffa
	cmpi.w #$80,($340,a4)
	blt.w loc_087ffa
	cmpi.w #$24,($378,a4)
	ble.w loc_087fec
	cmpi.w #$74,($378,a4)
	ble.w loc_087fde
	clr.b ($2f6,a4)
	movea.l #loc_08786a,a0
	bsr.w loc_0861d8
	bra.w loc_088052

loc_087fde:
	movea.l #loc_087974,a0
	bsr.w loc_0861d8
	bra.w loc_088052

loc_087fec:
	movea.l #loc_0879bc,a0
	bsr.w loc_0861d8
	bra.w loc_088052

loc_087ffa:
	cmpi.w #$8,($be,a4)
	bgt.w loc_08800e
	cmpi.w #$14,($36c,a4)
	bgt.w loc_088018

loc_08800e:
	move.b #4,($2f6,a4)
	bra.w loc_08803e

loc_088018:
	cmpi.w #$1e,($36c,a4)
	ble.w loc_08803e
	move.l #$100010,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$1e,d2
	jsr loc_02e0f4
	bra.w loc_088052

loc_08803e:
	bsr.w loc_089e6e
	bne.w loc_08806e
	bra.w loc_088052

loc_08804a:
	bsr.w loc_089e90
	bne.w loc_08806e

loc_088052:
	move.l #$20004,d0
	jsr loc_02e420
	move.w ($4d4,a4),d0
	dbra d0,loc_087f82
	clr.b ($2f6,a4)
	bra.w loc_0861b6

loc_08806e:
	clr.b ($2f6,a4)
	jsr loc_02e308
	cmpi.w #$64,($36c,a4)
	bgt.w loc_088086
	bra.w loc_0880c0

loc_088086:
	cmpi.w #$82,($36c,a4)
	bgt.w loc_088094
	bra.w loc_08810c

loc_088094:
	cmpi.w #$a0,($36c,a4)
	bgt.w loc_0880a2
	bra.w loc_0880ce

loc_0880a2:
	jsr RandomNumberGod
	lea loc_0880b2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0880b2:
	dc.w $0002

	dc.w $001e
	dc.l loc_0880f4

	dc.w $001e
	dc.l loc_08811a

;--------------------------
loc_0880c0:
	movea.l #loc_08774a,a0
	bsr.w loc_0861d8
	bra.w loc_088132

loc_0880ce:
	movea.l #loc_08774a,a0
	bsr.w loc_0861d8
	cmpi.w #$40,($340,a4)
	blt.w loc_088132
	sf ($3cb,a4)
	bsr.w loc_089f56
	jsr loc_02e308
	bra.w loc_088132

loc_0880f4:
	cmpi.w #$40,($340,a4)
	blt.w loc_088132
	sf ($3cb,a4)
	bsr.w loc_089f08
	jsr loc_02e308

loc_08810c:
	bsr.w loc_08a0c2
	jsr loc_02e308
	bra.w loc_088132

loc_08811a:
	movea.l #loc_08788e,a0
	bsr.w loc_0861d8
	movea.l #loc_088a20,a0
	bsr.w loc_0861b0
	bra.w loc_088132

loc_088132:
	clr.b ($2f6,a4)
	bra.w loc_0861b6

;--------------------------
loc_08813a:
	cmpi.w #$30,($340,a4)
	blt.w loc_0861b6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$b4,($36c,a4)
	bgt.w loc_0881b6
	jsr RandomNumberGod
	lea loc_08816e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08816e:
	dc.w $0003

	dc.w $003c
	dc.l loc_088190

	dc.w $000a
	dc.l loc_08819e

	dc.w $000a
	dc.l loc_088182

;--------------------------
loc_088182:
	movea.l #loc_08774a,a0
	bsr.w loc_0861d8
	bra.w loc_0881b6

loc_088190:
	movea.l #loc_08788e,a0
	bsr.w loc_0861d8
	bra.w loc_0881b6

loc_08819e:
	movea.l #loc_087998,a0
	bsr.w loc_0861d8

loc_0881a8
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_0881a8

loc_0881b6:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	cmpi.w #$f800,d0
	bcs.w loc_0881e8
	clr.b ($2f6,a4)
	bsr.w loc_08a30e
	jsr loc_02e2d0
	bsr.w loc_08a30e
	jsr loc_02e308

loc_0881e8:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_088204(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_088204:
	dc.w $0003

	dc.w $0050
	dc.l loc_088254

	dc.w $0014
	dc.l loc_088218

	dc.w $0014
	dc.l loc_088238

;--------------------------
loc_088218:
	cmpi.w #$60,($340,a4)
	blt.w loc_088254
	btst #1,($246,a4)
	beq.w loc_08830e
	bsr.w loc_08a00c
	beq.w loc_08830e
	bra.w loc_088254

loc_088238:
	cmpi.w #$60,($340,a4)
	blt.w loc_088254
	btst #1,($246,a4)
	beq.w loc_08830e
	bsr.w loc_089fac
	bne.w loc_08830e

loc_088254:
	cmpi.w #$60,($340,a4)
	blt.w loc_08830e
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_089f56
	beq.w loc_0861b6
	jsr loc_02e308
	cmpi.w #$b4,($378,a4)
	ble.w loc_08829c
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_08829c
	st ($3cb,a4)
	bsr.w loc_089f56
	jsr loc_02e308

loc_08829c:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_0882b8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0882b8:
	dc.w $0003

	dc.w $0050
	dc.l loc_0882cc

	dc.w $000a
	dc.l loc_0882f2

	dc.w $000a
	dc.l loc_088300

;--------------------------
loc_0882cc:
	movea.l #loc_08786a,a0
	bsr.w loc_0861d8
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_08830e
	movea.l #loc_0877b0,a0
	bsr.w loc_0861d8
	bra.w loc_0862ac

loc_0882f2:
	movea.l #loc_08768a,a0
	bsr.w loc_0861d8
	bra.w loc_08830e

loc_088300:
	movea.l #loc_0877b0,a0
	bsr.w loc_0861d8
	bra.w loc_0862ac

loc_08830e:
	clr.b ($2f6,a4)
	bra.w loc_0861b6

;--------------------------
loc_088316:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_0861b6
	btst #1,($246,a4)
	beq.w loc_0861b6
	btst #3,($24a,a4)
	bne.w loc_0861b6
	cmpi.w #$60,($340,a4)
	blt.w loc_0861b6
	cmpi.w #$a0,($378,a4)
	bgt.w loc_0861b6
	jsr loc_02c78a
	beq.w loc_0861b6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$64,($378,a4)
	bgt.w loc_088386
	btst #1,($246,a4)
	beq.w loc_08839a
	bsr.w loc_08a00c
	jsr loc_02e308
	bra.w loc_08839a

loc_088386:
	btst #1,($246,a4)
	beq.w loc_08839a
	bsr.w loc_08a062
	jsr loc_02e308

loc_08839a:
	clr.b ($2f6,a4)
	bra.w loc_0861b6

;--------------------------
loc_0883a2:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_0861b6
	cmpi.w #$40,($340,a4)
	blt.w loc_0861b6
	tst.b ($365,a4)
	beq.w loc_0883c0

loc_0883c0:
	bsr.w loc_089f08
	beq.w loc_0861b6
	jsr loc_02e26e
	bgt.w loc_08843e
	blt.w loc_0883e0
	cmpi.w #$24,($36c,a4)
	bgt.w loc_08843e

loc_0883e0:
	move.l #$40004,d0
	jsr loc_02e420
	cmpi.w #$80,($340,a4)
	blt.w loc_08843e
	bset #5,($2f7,a4)
	jsr loc_02e26e
	bne.w loc_088422
	cmpi.w #$34,($36c,a4)
	bgt.w loc_08843e
	cmpi.w #$34,($36c,a4)
	bgt.w loc_088422
	move.l #$20004,d0
	bra.b loc_088428

loc_088422:
	move.l #$c0004,d0

loc_088428:
	jsr loc_02e420
	bset #5,($2f7,a4)
	jsr loc_02e346
	bra.w loc_08843e

loc_08843e:
	clr.b ($2f6,a4)
	bra.w loc_0861b6

;--------------------------
loc_088446:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_0861b6
	btst #1,($246,a4)
	beq.w loc_0861b6
	btst #3,($24a,a4)
	bne.w loc_0861b6
	cmpi.w #$c0,($340,a4)
	blt.w loc_0861b6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$32,($36c,a4)
	bgt.w loc_0884ca
	move.b #2,($2f6,a4)
	bsr.w loc_08a30e
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_08a260
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_088552

loc_0884ca:
	bsr.w loc_08a11a
	jsr loc_02e26e
	bgt.w loc_0884e0
	blt.w loc_0885a6
	bra.w loc_0885dc

loc_0884e0:
	cmpi.w #$60,($340,a4)
	blt.w loc_0885dc
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_088502
	btst #1,($362,a4)
	bne.w loc_088552

loc_088502:
	cmpi.w #$40,($340,a4)
	blt.w loc_0885dc
	cmpi.w #$c0,($340,a4)
	blt.w loc_088540
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_088540
	btst #1,($246,a4)
	beq.w loc_0885dc
	bsr.w loc_08a00c
	beq.w loc_088540
	jsr loc_02e308
	bra.w loc_0885dc

loc_088540:
	st ($3cb,a4)
	bsr.w loc_089f56
	jsr loc_02e308
	bra.w loc_0885dc

loc_088552:
	cmpi.w #$40,($340,a4)
	blt.w loc_0885dc
	bsr.w loc_08a0e8
	jsr loc_02e26e
	bgt.w loc_0885d6
	blt.w loc_088572
	bra.w loc_0885d6

loc_088572:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_088598
	jsr loc_02c78a
	beq.w loc_088598
	bsr.w loc_089fac
	jsr loc_02e308
	bra.w loc_0885dc

loc_088598:
	movea.l #loc_0883a2,a0
	bsr.w loc_0861b0
	bra.w loc_0885dc

loc_0885a6:
	cmpi.w #$c0,($340,a4)
	blt.w loc_0885dc
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0885dc
	btst #1,($246,a4)
	beq.w loc_0885dc
	bsr.w loc_089fac
	jsr loc_02e308
	bra.w loc_0885dc

loc_0885d6:
	jsr loc_02e308

loc_0885dc:
	clr.b ($2f6,a4)
	bra.w loc_0861b6

;--------------------------
loc_0885e4:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_0861b6
	btst #1,($246,a4)
	beq.w loc_0861b6
	cmpi.w #$70,($340,a4)
	blt.w loc_0861b6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	tst.b ($365,a4)
	beq.w loc_088622
	move.b #2,($2f6,a4)

loc_088622:
	bsr.w loc_08a30e
	beq.w loc_0861b6
	jsr loc_02e26e
	beq.w loc_088668

loc_088634:
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_088690
	clr.b ($2f6,a4)
	tst.b ($365,a4)
	beq.w loc_088650
	move.b #2,($2f6,a4)

loc_088650:
	bsr.w loc_08a30e
	jsr loc_02e2d0
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_088690
	bra.b loc_088634

loc_088668:
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_088674:
	move.w d0,($4d4,a4)
	bsr.w loc_08a30e
	jsr loc_02e2d0
	tst.b ($271,a4)
	bne.b loc_088634
	move.w ($4d4,a4),d0
	dbra d0,loc_088674

loc_088690:
	clr.b ($2f6,a4)
	bra.w loc_0861b6

;--------------------------
loc_088698:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_0861b6
	btst #1,($246,a4)
	beq.w loc_0861b6
	btst #3,($24a,a4)
	bne.w loc_0861b6
	cmpi.w #$30,($340,a4)
	blt.w loc_0861b6
	clr.b ($2f6,a4)

loc_0886c6:
	cmpi.w #$37,($36c,a4)
	bgt.w loc_0886fc
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0886fc
	move.b #2,($2f6,a4)
	bsr.w loc_08a260
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_0887fc
	bra.b loc_0886c6

loc_0886fc:
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_0887cc
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_0887da
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_0887b0
	btst #2,($361,a4)
	bne.w loc_088766
	cmpi.w #$3c,($36c,a4)
	ble.w loc_08874c
	bra.w loc_088766

loc_08873e:
	cmpi.w #$4b,($36c,a4)
	ble.w loc_088766
	bra.w loc_0887fc

loc_08874c:
	clr.b ($2f6,a4)
	bsr.w loc_08a1be
	jsr loc_02e26e
	beq.w loc_0887fc
	bgt.w loc_088794
	bra.w loc_0887b0

loc_088766:
	tst.b ($365,a4)
	beq.w loc_0887fc
	cmpi.w #$50,($36c,a4)
	bgt.w loc_088794
	move.b #2,($2f6,a4)
	bsr.w loc_08a11a
	jsr loc_02e26e
	beq.w loc_0887fc
	bgt.w loc_088794
	bra.w loc_0887fc

loc_088794:
	cmpi.w #$60,($340,a4)
	blt.w loc_0887fc
	st ($3cb,a4)
	bsr.w loc_089f56
	jsr loc_02e308
	bra.w loc_0887fc

loc_0887b0:
	cmpi.w #$60,($340,a4)
	blt.w loc_0887fc
	st ($3cb,a4)
	bsr.w loc_089f08
	jsr loc_02e308
	bra.w loc_0887fc

loc_0887cc:
	movea.l #loc_0877b0,a0
	bsr.w loc_0861b0
	bra.w loc_0887fc

loc_0887da:
	btst #1,($362,a4)
	bne.w loc_0887f2
	bsr.w loc_08a0e8
	jsr loc_02e308
	bra.w loc_0887fc

loc_0887f2:
	bsr.w loc_08a0e8
	jsr loc_02e308

loc_0887fc:
	clr.b ($2f6,a4)
	bra.w loc_0861b6

;--------------------------
loc_088804:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_0861b6
	btst #1,($246,a4)
	beq.w loc_0861b6
	cmpi.w #$64,($378,a4)
	bgt.w loc_0861b6
	cmpi.w #$30,($340,a4)
	blt.w loc_0861b6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_08a1be
	beq.w loc_0861b6
	cmpi.w #7,($2fe,a4)
	beq.w loc_088884
	jsr loc_02e26e
	beq.w loc_0889c2
	jsr loc_02e496
	jsr loc_02e550
	jsr loc_02e308
	cmpi.w #$64,($378,a4)
	bgt.w loc_0861b6
	bsr.w loc_08a11a
	jsr loc_02e308
	bra.w loc_0889c2

loc_088884
	jsr loc_02e26e
	beq.w loc_0889c2
	jsr loc_02e2d0
	cmpi.w #$40,($340,a4)
	blt.w loc_0889bc
	bsr.w loc_08a1be
	jsr loc_02e26e
	beq.w loc_0889c2
	blt.w loc_088914
	cmpi.w #$40,($340,a4)
	blt.w loc_088944
	jsr loc_02e2d0
	btst #1,($362,a4)
	beq.w loc_0888f2
	jsr RandomNumberGod
	lea loc_0888de(pc),a0
	jsr loc_02decc
	bra.w loc_0889bc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0888de:
	dc.w $00003

	dc.w $0050
	dc.l loc_08a0e8

	dc.w $001e
	dc.l loc_08a0e8

	dc.w $000a
	dc.l loc_08a0e8

;--------------------------
loc_0888f2:
	jsr RandomNumberGod
	lea loc_088906(pc),a0
	jsr loc_02decc
	bra.w loc_0889bc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_088906:
	dc.w $0002

	dc.w $0014
	dc.l loc_08a0e8

	dc.w $0050
	dc.l loc_08a0e8

;------------------------
loc_088914:
	cmpi.w #$40,($340,a4)
	blt.w loc_088944
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_088944
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_089f08
	jsr loc_02e308
	bra.w loc_0889c2

loc_088944:
	jsr loc_02e2d0
	bsr.w loc_08a1be
	jsr loc_02e26e
	bgt.w loc_088978
	blt.w loc_088978
	bra.w loc_0889bc

loc_088960:
	cmpi.w #$c0,($340,a4)
	blt.w loc_0889bc
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0889bc

loc_088978:
	jsr loc_02c78a
	beq.w loc_0889bc
	jsr RandomNumberGod
	lea loc_088992(pc),a0
	jmp loc_02decc
 
;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_088992:
	dc.w $0002

	dc.w $001e
	dc.l loc_0889a0

	dc.w $001e
	dc.l loc_0889ae

;--------------------------
loc_0889a0:
	bsr.w loc_089fac
	jsr loc_02e308
	bra.w loc_0889c2

loc_0889ae:
	bsr.w loc_08a00c
	jsr loc_02e308
	bra.w loc_0889c2

loc_0889bc:
	jsr loc_02e308

loc_0889c2:
	clr.b ($2f6,a4)
	bra.w loc_0861b6

;--------------------------
loc_0889ca:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0861b6
	btst #1,($246,a4)
	beq.w loc_0861b6
	btst #3,($24a,a4)
	bne.w loc_0861b6
	cmpi.w #$40,($340,a4)
	blt.w loc_0861b6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$40,($340,a4)
	blt.w loc_088a18
	bsr.w loc_089f08
	jsr loc_02e308

loc_088a18:
	clr.b ($2f6,a4)
	bra.w loc_0861b6

;--------------------------
loc_088a20:
	move.l ($4d6,a4),($4e2,a4)
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0861c6
	btst #1,($246,a4)
	beq.w loc_0861b6
	btst #3,($24a,a4)
	bne.w loc_0861b6
	cmpi.w #$60,($340,a4)
	blt.w loc_0861b6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_08768a,a0
	bsr.w loc_0861d8
	movea.l #loc_0877b0,a0
	bsr.w loc_0861d8

loc_088a74:
	jsr loc_0226b4
	movea.l #loc_0879e0,a0
	bsr.w loc_0861b0
	move.l ($4e2,a4),($4d6,a4)
	btst #1,($246,a4)
	beq.b loc_088a74
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_088aae(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_088aae:
	dc.w $0003
	dc.w $001e
	dc.l loc_088ad0
	dc.w $001e
	dc.l loc_088b06
	dc.w $000a
	dc.l loc_088ac2

;--------------------------
loc_088ac2:
	movea.l #loc_088804,a0
	bsr.w loc_0861b0
	bra.w loc_088caa

loc_088ad0:
	cmpi.w #$2c,($36c,a4)
	bgt.w loc_088b3c
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_088b3c
	move.b #2,($2f6,a4)
	bsr.w loc_08a30e
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_088caa
	bra.b loc_088ad0

loc_088b06:
	cmpi.w #$2c,($36c,a4)
	bgt.w loc_088bf4
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_088bf4
	move.b #2,($2f6,a4)
	bsr.w loc_08a260
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_088caa
	bra.b loc_088b06

loc_088b3c:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_088c9c
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_088caa
	clr.b ($2f6,a4)
	bsr.w loc_08a1be
	jsr loc_02e26e
	bgt.w loc_088b9e
	blt.w loc_088b6e
	bra.w loc_088caa

loc_088b6e
	cmpi.w #$60,($340,a4)
	blt.w loc_088caa
	jsr loc_02c78a
	beq.w loc_088b90
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_088bd2

loc_088b90:
	movea.l #loc_0883a2,a0
	bsr.w loc_0861b0
	bra.w loc_088caa

loc_088b9e:
	cmpi.w #$60,($340,a4)
	blt.w loc_088caa
	jsr loc_02c78a
	beq.w loc_088bc0
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_088bd2

loc_088bc0:
	st ($3cb,a4)
	bsr.w loc_089f56
	jsr loc_02e308
	bra.w loc_088caa

loc_088bd2:
	cmpi.w #$a0,($340,a4)
	blt.w loc_088caa
	btst #1,($246,a4)
	beq.w loc_088caa
	bsr.w loc_08a00c
	jsr loc_02e308
	bra.w loc_088caa

loc_088bf4:
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_088caa
	clr.b ($2f6,a4)
	bsr.w loc_08a1be
	jsr loc_02e26e
	bgt.w loc_088c46
	blt.w loc_088c18
	bra.w loc_088caa

loc_088c18
	cmpi.w #$60,($340,a4)
	blt.w loc_088caa
	jsr loc_02c78a
	beq.w loc_088c38
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.b loc_088bd2

loc_088c38:
	movea.l #loc_0883a2,a0
	bsr.w loc_0861b0
	bra.w loc_088caa

loc_088c46:
	cmpi.w #$60,($340,a4)
	blt.w loc_088caa
	jsr loc_02c78a
	beq.w loc_088c68
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_088c7a

loc_088c68:
	st ($3cb,a4)
	bsr.w loc_089f56
	jsr loc_02e308
	bra.w loc_088caa

loc_088c7a:
	cmpi.w #$a0,($340,a4)
	blt.w loc_088caa
	btst #1,($246,a4)
	beq.w loc_088caa
	bsr.w loc_089fac
	jsr loc_02e308
	bra.w loc_088caa

loc_088c9c:
	movea.l #loc_088698,a0
	bsr.w loc_0861b0
	bra.w loc_088caa

loc_088caa:
	clr.b ($2f6,a4)
	bra.w loc_0861c6

;--------------------------
loc_088cb2:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0861b6
	btst #1,($246,a4)
	beq.w loc_0861b6
	btst #3,($24a,a4)
	bne.w loc_0861b6
	cmpi.w #$60,($340,a4)
	blt.w loc_088cf4
	movea.l #loc_0877b0,a0
	bsr.w loc_0861d8

loc_088ce6:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_088ce6

loc_088cf4:
	clr.b ($2f6,a4)
	bra.w loc_0861b6

;--------------------------
loc_088cfc:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0861b6
	btst #1,($246,a4)
	beq.w loc_0861b6
	btst #3,($24a,a4)
	bne.w loc_0861b6
	clr.b ($2f6,a4)
	cmpi.w #$64,($378,a4)
	blt.w loc_0861b6
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_08786a,a0
	bsr.w loc_0861d8
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	beq.w loc_088d86
	jsr RandomNumberGod
	lea loc_088d66(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_088d66:
	dc.w $0005

	dc.w $0014
	dc.l loc_088ddc

	dc.w $0014
	dc.l loc_088e0c

	dc.w $0014
	dc.l loc_088db6

	dc.w $0014
	dc.l loc_088df4

	dc.w $0014
	dc.l loc_088dce

;--------------------------
loc_088d86:
	jsr RandomNumberGod
	lea loc_088d96(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_088d96:
	dc.w $0005

	dc.w $0014
	dc.l loc_088e0c

	dc.w $0014
	dc.l loc_088ddc

	dc.w $0014
	dc.l loc_088db6

	dc.w $0014
	dc.l loc_088df4

	dc.w $0014
	dc.l loc_088dce

;--------------------------
loc_088db6:
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_089f08
	jsr loc_02e308
	bra.w loc_088e1a

loc_088dce:
	movea.l #loc_0891de,a0
	bsr.w loc_0861b0
	bra.w loc_088e1a

loc_088ddc:
	cmpi.w #$46,($378,a4)
	bgt.w loc_088e0c
	movea.l #loc_088698,a0
	bsr.w loc_0861b0
	bra.w loc_088e1a

loc_088df4:
	cmpi.w #$32,($378,a4)
	bgt.w loc_088e0c
	movea.l #loc_0883a2,a0
	bsr.w loc_0861b0
	bra.w loc_088e1a

loc_088e0c:
	movea.l #loc_087f74,a0
	bsr.w loc_0861b0
	bra.w loc_088e1a

loc_088e1a:
	clr.b ($2f6,a4)
	bra.w loc_0861b6

;--------------------------
loc_088e22:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0861b6
	btst #1,($246,a4)
	beq.w loc_0861b6
	btst #3,($24a,a4)
	bne.w loc_0861b6
	cmpi.w #$c0,($340,a4)
	blt.w loc_0861b6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	beq.w loc_088eea
	cmpi.w #$64,($378,a4)
	bgt.w loc_0861b6
	bsr.w loc_08a0e8
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_088ec0
	blt.w loc_088e8c
	bra.w loc_088f52

loc_088e8c:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_088eb2
	jsr loc_02c78a
	beq.w loc_088eb2
	bsr.w loc_08a00c
	jsr loc_02e308
	bra.w loc_088f52

loc_088eb2:
	movea.l #loc_0883a2,a0
	bsr.w loc_0861b0
	bra.w loc_088f52

loc_088ec0:
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_088edc
	movea.l #loc_088698,a0
	bsr.w loc_0861b0
	bra.w loc_088f52

loc_088edc:
	movea.l #loc_087f74,a0
	bsr.w loc_0861b0
	bra.w loc_088f52

loc_088eea:
	cmpi.w #$32,($378,a4)
	bgt.w loc_088f52
	bsr.w loc_08a0e8
	jsr loc_02e26e
	bgt.w loc_088f52
	blt.w loc_088f0a
	bra.w loc_088f52

loc_088f0a:
	cmpi.w #$28,($36c,a4)
	bgt.w loc_088f48
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_088f3a
	jsr loc_02c78a
	beq.w loc_088f3a
	bsr.w loc_08a00c
	jsr loc_02e308
	bra.w loc_088f52

loc_088f3a:
	movea.l #loc_0883a2,a0
	bsr.w loc_0861b0
	bra.w loc_088f52

loc_088f48:
	movea.l #loc_088698,a0
	bsr.w loc_0861b0

loc_088f52:
	clr.b ($2f6,a4)
	bra.w loc_0861b6

;--------------------------
loc_088f5a:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0861b6
	btst #1,($246,a4)
	beq.w loc_0861b6
	btst #3,($24a,a4)
	bne.w loc_0861b6
	cmpi.w #$c0,($340,a4)
	blt.w loc_0861b6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_088fa4(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_088fa4:
	dc.w $0003
	dc.w $0014
	dc.l loc_088fb8
	dc.w $0014
	dc.l loc_08900e
	dc.w $0014
	dc.l loc_089046

;--------------------------
loc_088fb8:
	cmpi.w #$1e,($36c,a4)
	bgt.w loc_0861b6
	btst #1,($362,a4)
	beq.w loc_088fe8
	move.b #2,($2f6,a4)
	bsr.w loc_08a260
	jsr loc_02e26e
	bgt.w loc_0890b4
	blt.w loc_0890ce
	bra.w loc_089114

loc_088fe8:
	cmpi.w #$28,($36c,a4)
	bgt.w loc_0861b6
	bsr.w loc_08a0e8
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_089084
	blt.w loc_0890dc
	bra.w loc_089114

loc_08900e:
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$46,($36c,a4)
	bgt.w loc_089114
	move.b #2,($2f6,a4)
	bsr.w loc_08a11a
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_089084
	blt.w loc_0890dc
	bra.w loc_089114

loc_089046:
	cmpi.w #$1e,($36c,a4)
	bgt.w loc_0861b6
	move.b #2,($2f6,a4)
	bsr.w loc_08a260
	jsr loc_02e308
	bsr.w loc_08a260
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_087f74,a0
	bsr.w loc_0861b0
	bra.w loc_089114

loc_089084:
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_08a0e8
	jsr loc_02e26e
	bgt.w loc_089114
	blt.w loc_0890ce
	bra.w loc_089114

loc_0890a6:
	movea.l #loc_0883a2,a0
	bsr.w loc_0861b0
	bra.w loc_089114

loc_0890b4:
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_087f74,a0
	bsr.w loc_0861b0
	bra.w loc_089114

loc_0890ce:
	movea.l #loc_0889ca,a0
	bsr.w loc_0861b0
	bra.w loc_089114

loc_0890dc:
	jsr loc_02e496
	jsr loc_02e550
	jsr loc_02c78a
	beq.b loc_0890a6
	bsr.w loc_089fac
	beq.w loc_089102
	jsr loc_02e308
	bra.w loc_089114

loc_089102:
	st ($3cb,a4)
	bsr.w loc_089f56
	jsr loc_02e308
	bra.w loc_089114

loc_089114:
	clr.b ($2f6,a4)
	bra.w loc_0861b6

loc_08911c:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0861b6
	btst #1,($246,a4)
	beq.w loc_0861b6
	btst #3,($24a,a4)
	bne.w loc_0861b6
	cmpi.w #$c0,($340,a4)
	blt.w loc_0861b6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	move.w #1,d0

loc_08915a:
	move.w d0,($4d4,a4)
	cmpi.w #$a0,($378,a4)
	bgt.w loc_089172
	movea.l #loc_08774a,a0
	bsr.w loc_0861d8

loc_089172:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_089f56
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0891c0
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_089f56
	jsr loc_02e308

loc_0891c0:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0891d6
	move.w ($4d4,a4),d0
	dbra d0,loc_08915a

loc_0891d6:
	clr.b ($2f6,a4)
	bra.w loc_0861c6

;--------------------------
loc_0891de:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0861b6
	btst #1,($246,a4)
	beq.w loc_0861b6
	btst #3,($24a,a4)
	bne.w loc_0861b6
	cmpi.w #$70,($340,a4)
	blt.w loc_0861b6
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_089228(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_089228:
	dc.w $000d

	dc.w $000a
	dc.l loc_0892dc

	dc.w $000a
	dc.l loc_089520

	dc.w $000a
	dc.l loc_089386

	dc.w $000a
	dc.l loc_089324

	dc.w $000a
	dc.l loc_08948a

	dc.w $000a
	dc.l loc_08934e

	dc.w $000a
	dc.l loc_0893a8

	dc.w $0005
	dc.l loc_0893f0

	dc.w $0005
	dc.l loc_08945c

	dc.w $0005
	dc.l loc_0892f8

	dc.w $0005
	dc.l loc_0894ce

	dc.w $0005
	dc.l loc_0892c4

	dc.w $0005
	dc.l loc_089278

;--------------------------
loc_089278:
	movea.l #loc_08788e,a0
	bsr.w loc_0861d8
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_08a0c2
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_08a062
	beq.w loc_0892b6
	jsr loc_02e308
	bra.w loc_0895d2

loc_0892b6:
	bsr.w loc_089f08
	jsr loc_02e308
	bra.w loc_0895d2

loc_0892c4:
	cmpi.w #$a0,($36c,a4)
	bgt.w loc_0895d2
	bsr.w loc_08a0c2
	jsr loc_02e308
	bra.w loc_0895d2

loc_0892dc:
	cmpi.w #$28,($36c,a4)
	bgt.w loc_0895d2
	sf ($3cb,a4)
	bsr.w loc_089f08
	jsr loc_02e308
	bra.w loc_0895d2

loc_0892f8:
	sf ($3cb,a4)
	bsr.w loc_089ebe
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	sf ($3cb,a4)
	bsr.w loc_089ebe
	jsr loc_02e308
	bra.w loc_0895d2

loc_089324:
	movea.l #loc_087998,a0
	bsr.w loc_0861d8
	move.l #$100002,d0
	jsr loc_02e420
	move.b #2,($2f6,a4)
	bsr.w loc_08a11a
	jsr loc_02e308
	bra.w loc_0895d2

loc_08934e:
	cmpi.w #$32,($378,a4)
	bgt.w loc_0895d2
	jsr loc_02c78a
	beq.w loc_0895d2
	movea.l #loc_087998,a0
	bsr.w loc_0861d8
	move.l #$100002,d0
	jsr loc_02e420
	bsr.w loc_08a062
	jsr loc_02e308
	bra.w loc_0895d2

loc_089386:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_0895d2
	movea.l #loc_087998,a0
	bsr.w loc_0861d8
	bsr.w loc_08a11a
	jsr loc_02e308
	bra.w loc_0895d2

loc_0893a8:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_0895d2
	jsr loc_02c78a
	beq.w loc_0895d2
	movea.l #loc_08788e,a0
	bsr.w loc_0861d8
	jsr loc_02e308
	movea.l #loc_0879bc,a0
	bsr.w loc_0861d8
	move.l #$60006,d0
	jsr loc_02e420
	bsr.w loc_08a062
	jsr loc_02e308
	bra.w loc_0895d2

loc_0893f0:
	cmpi.w #$60,($340,a4)
	blt.w loc_0895d2
	bsr.w loc_08a0e8
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	beq.w loc_08941a

loc_08941a:
	jsr RandomNumberGod
	lea loc_08942a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08942a:
	dc.w $0002

	dc.w $001e
	dc.l loc_0895c4

	dc.w $001e
	dc.l loc_08957a

;--------------------------
loc_089438:
	jsr RandomNumberGod
	lea loc_089448(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_089448:
	dc.w $0003

	dc.w $0014
	dc.l loc_0895a8

	dc.w $0014
	dc.l loc_0895c4

	dc.w $0014
	dc.l loc_089548

;--------------------------
loc_08945c:
	bsr.w loc_08a30e
	jsr loc_02e308
	bsr.w loc_08a30e
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_08a1be
	jsr loc_02e308
	bra.w loc_0895d2

loc_08948a:
	cmpi.w #$50,($378,a4)
	bgt.w loc_0895d2
	bsr.w loc_08a11a
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_0894ba(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0894ba:
	dc.w $0003

	dc.w $0014
	dc.l loc_089568

	dc.w $0014
	dc.l loc_08958c

	dc.w $0014
	dc.l loc_08957a

;--------------------------
loc_0894ce:
	cmpi.w #$64,($378,a4)
	blt.w loc_0895d2
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_0894e4:
	move.w d0,($4d4,a4)
	move.b #2,($2f6,a4)
	bsr.w loc_08a260
	jsr loc_02e2d0
	move.w ($4d4,a4),d0
	dbra d0,loc_0894e4
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_0883a2,a0
	bsr.w loc_0861b0
	bra.w loc_0895d2

loc_089520:
	sf ($3cb,a4)
	bsr.w loc_089ebe
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_0883a2,a0
	bsr.w loc_0861b0
	bra.w loc_0895d2

loc_089548:
	movea.l #loc_088698,a0
	bsr.w loc_0861d8
	bra.w loc_0895d2

loc_089556:
	clr.b ($2f6,a4)
	bsr.w loc_08a1be
	jsr loc_02e308
	bra.w loc_0895d2

loc_089568:
	clr.b ($2f6,a4)
	bsr.w loc_08a11a
	jsr loc_02e308
	bra.w loc_0895d2

loc_08957a:
	clr.b ($2f6,a4)
	movea.l #loc_0883a2,a0
	bsr.w loc_0861b0
	bra.w loc_0862ac

loc_08958c:
	clr.b ($2f6,a4)
	jsr RandomNumberGod
	smi ($3cb,a4)
	bsr.w loc_089ebe
	jsr loc_02e308
	bra.w loc_0895d2

loc_0895a8:
	bsr.w loc_08a0e8
	jsr loc_02e308
	bra.w loc_0895d2

loc_0895b6:
	bsr.w loc_08a0e8
	jsr loc_02e308
	bra.w loc_0895d2

loc_0895c4:
	bsr.w loc_08a0e8
	jsr loc_02e308
	bra.w loc_0895d2

loc_0895d2:
	clr.b ($2f6,a4)
	bra.w loc_0861b6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Palette Pointers
;Sai A
loc_0895da:
	dc.l loc_0897fe,loc_08989e,loc_08979e,loc_08977e
	dc.l loc_08993e,loc_08995e,loc_08997e,loc_08999e
	dc.l loc_0899be,loc_0899de,loc_0897be,loc_0897de
	dc.l loc_0899fe,loc_089a1e,loc_089a3e,loc_089a5e
	dc.l loc_089a7e,loc_089a9e,loc_089abe,loc_089ade
	dc.l $00000000

;Sai B
loc_08962e:
	dc.l loc_08981e,loc_0898be,loc_08979e,loc_08977e
	dc.l loc_08993e,loc_08995e,loc_08997e,loc_08999e
	dc.l loc_0899be,loc_0899de,loc_0897be,loc_0897de
	dc.l loc_0899fe,loc_089a1e,loc_089a3e,loc_089a5e
	dc.l loc_089a7e,loc_089a9e,loc_089abe,loc_089ade
	dc.l $00000000

;Sai C
loc_089682:
	dc.l loc_08983e,loc_0898de,loc_08979e,loc_08977e
	dc.l loc_08993e,loc_08995e,loc_08997e,loc_08999e
	dc.l loc_0899be,loc_0899de,loc_0897be,loc_0897de
	dc.l loc_0899fe,loc_089a1e,loc_089a3e,loc_089a5e
	dc.l loc_089a7e,loc_089a9e,loc_089abe,loc_089ade
	dc.l $00000000

;Sai D
loc_0896d6:
	dc.l loc_08985e,loc_0898fe,loc_08979e,loc_08977e
	dc.l loc_08993e,loc_08995e,loc_08997e,loc_08999e
	dc.l loc_0899be,loc_0899de,loc_0897be,loc_0897de
	dc.l loc_0899fe,loc_089a1e,loc_089a3e,loc_089a5e
	dc.l loc_089a7e,loc_089a9e,loc_089abe,loc_089ade
	dc.l $00000000

;Sai 5
loc_08972a:
	dc.l loc_08987e,loc_08991e,loc_08979e,loc_08977e
	dc.l loc_08993e,loc_08995e,loc_08997e,loc_08999e
	dc.l loc_0899be,loc_0899de,loc_0897be,loc_0897de
	dc.l loc_0899fe,loc_089a1e,loc_089a3e,loc_089a5e
	dc.l loc_089a7e,loc_089a9e,loc_089abe,loc_089ade
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Palette Data
loc_08977e:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

loc_08979e:
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

loc_0897be:
	dc.w $7111,$700a,$601c,$700f,$112f,$713f,$324f,$526f
	dc.w $337f,$539f,$73af,$34bf,$74df,$75ff,$7aff,$7fff

loc_0897de:
	dc.w $7888,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_0897fe:
	dc.w $7a77,$0111,$0555,$0898,$0ffe,$2121,$2343,$2565
	dc.w $2832,$4c85,$3fc9,$37cf,$2f80,$5fe2,$3036,$305f

loc_08981e:
	dc.w $7a77,$0111,$0555,$0898,$0ffe,$5410,$4734,$3955
	dc.w $5731,$4c85,$3fc9,$07ee,$2f80,$5fe2,$3055,$207d

loc_08983e:
	dc.w $7a77,$0111,$0555,$0898,$0ffe,$6002,$1334,$1556
	dc.w $5731,$4c85,$3fc9,$29bf,$2f80,$5fe2,$4447,$455f

loc_08985e:
	dc.w $7a77,$0111,$0555,$0898,$0ffe,$1403,$4626,$3948
	dc.w $5731,$4c85,$3fc9,$39c7,$2f80,$5fe2,$7261,$46b5

loc_08987e:
	dc.w $7a77,$0111,$0555,$0898,$0ffe,$1510,$5832,$2a55
	dc.w $5731,$4c85,$3fc9,$39c7,$2f80,$5fe2,$7261,$46b5

loc_08989e:
	dc.w $7a77,$7000,$7000,$0343,$0aa9,$7000,$7000,$7010
	dc.w $3300,$4730,$3a74,$702a,$2a30,$5a90,$3000,$3005

loc_0898be:
	dc.w $7a77,$7000,$7000,$0343,$0aa9,$7000,$7200,$3400
	dc.w $3300,$4730,$3a74,$0299,$2a30,$5a90,$3000,$2028

loc_0898de:
	dc.w $7a77,$7000,$7000,$0343,$0aa9,$7000,$7000,$7001
	dc.w $3300,$4730,$3a74,$636a,$2a30,$5a90,$6002,$600a

loc_0898fe:
	dc.w $7a77,$7000,$7000,$0343,$0aa9,$5000,$6101,$3403
	dc.w $3300,$4730,$3a74,$7372,$2a30,$5a90,$7010,$5160

loc_08991e:
	dc.w $7a77,$7000,$7000,$0343,$0aa9,$3100,$7300,$2501
	dc.w $3300,$4730,$3a74,$3472,$2a30,$5a90,$7010,$4160

loc_08993e:
	dc.w $6cba,$7b00,$7f00,$5f50,$7f93,$7fd7,$6ff7,$7d00
	dc.w $5f40,$7f60,$5f80,$4fd1,$5f80,$4fd1,$7fea,$7fff

loc_08995e:
	dc.w $6cba,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_08997e:
	dc.w $6cba,$7fff,$7ccf,$799f,$766f,$733f,$700f,$74ff
	dc.w $53cf,$528f,$714f,$700f,$7fff,$3def,$1adf,$57cf

loc_08999e:
	dc.w $6cba,$700f,$733f,$766f,$799f,$7ccf,$7fff,$700f
	dc.w $714f,$528f,$53cf,$74ff,$57cf,$1adf,$3def,$7fff

loc_0899be:
	dc.w $6cba,$750a,$672d,$394f,$796f,$3b8f,$5ccf,$491c
	dc.w $6a3d,$2c6e,$0d9f,$0ebd,$3b39,$5c5b,$1e6d,$7f7f

loc_0899de:
	dc.w $6cba,$4174,$3384,$54a4,$66b5,$18d5,$69e6,$05a2
	dc.w $06b3,$78c4,$0be6,$7df7,$71a6,$23b8,$04da,$55eb

loc_0899fe:
	dc.w $3035,$5211,$20f0,$4110,$5220,$0331,$4441,$7541
	dc.w $5661,$6762,$0872,$1982,$4a93,$5cb3,$3fe7,$7fff

loc_089a1e:
	dc.w $5026,$2200,$6643,$5432,$1864,$7975,$5cb9,$2fdd
	dc.w $6b98,$1db6,$3311,$7ec9,$2fdd,$5cb9,$1b96,$5321

loc_089a3e:
	dc.w $4365,$4300,$2f81,$4910,$4e60,$4e40,$4100,$6ed5
	dc.w $1eeb,$0000,$7fff,$1e70,$2fa2,$0000,$4100,$4e20

loc_089a5e:
	dc.w $006c,$35a3,$7fff,$0665,$0454,$7000,$4bb9,$7776
	dc.w $7191,$6333,$1241,$4233,$7111,$2edb,$6997,$0000

loc_089a7e:
	dc.w $7a77,$758f,$369f,$57bf,$1bef,$6afc,$0ccf,$0000
	dc.w $0000,$0000,$0000,$7aaa,$0333,$0666,$0111,$7fff

loc_089a9e:
	dc.w $4a99,$0761,$6a41,$4f90,$4fb0,$4f42,$735e,$6fff
	dc.w $4f60,$6f70,$4f90,$6fa0,$5fc3,$5fd6,$6fe9,$6ffd

loc_089abe:
	dc.w $2020,$0100,$0200,$7fff,$0300,$4000,$0700,$4d00
	dc.w $6fe2,$4f30,$6f90,$7ffb,$6fe7,$4b30,$4d73,$0503

loc_089ade:
	dc.w $2019,$7fff,$0100,$4200,$0200,$4100,$0800,$7fe2
	dc.w $4d00,$4fa0,$6f50,$5ffb,$6fe6,$6503,$0300,$4300

;--------------------------
SaiPRGStart:;089afe
	move.l #loc_08a4e8,($86,a4)
	move.l #loc_086184,($56,a4)
	move.l #loc_089b9a,($1b6,a4)
	move.l #loc_089ba6,($1ba,a4)
	move.l #loc_089bac,($1be,a4)
	move.l #loc_089bc2,($1c2,a4)
	move.l #loc_086158,($1c6,a4)
	move.l #loc_08a40a,($1ce,a4)
	move.l #loc_089cf6,($1ca,a4)
	move.l #loc_08b794,($1d2,a4)
	move.l #loc_095e60,($1d6,a4)
	move.l #loc_08b5b0,($1da,a4)
	move.l #loc_08b664,($1de,a4)
	move.l #loc_08b5d0,($1e2,a4)
	move.l #loc_08b580,($1e6,a4)
	move.l #loc_08b564,($1ea,a4)
	move.l #loc_08b698,($1ee,a4)
	bsr.w loc_08612c
	andi.w #$f0ff,($2ee,a4)
	move.l #loc_08bad2,($2d0,a4)
	rts

;--------------------------
loc_089b9a:
	clr.w ($550,a4)
	jsr loc_02a9c4
	rts

;--------------------------
loc_089ba6:
	clr.w ($550,a4)
	rts

;--------------------------
loc_089bac:
	bra.b loc_089bba

loc_089bae
	move.w #8,($2c0,a4)
	bclr #5,($24a,a4)

loc_089bba:
	move.w ($2ba,a3),($2ba,a4)
	rts

;--------------------------
loc_089bc2:
	lea ($3d0,a4),a0
	jsr loc_02cbba
	move.b ($3d0,a4),d0
	move.b d0,($3c0,a4)
	move.b ($3d4,a4),d0
	move.b d0,($3c1,a4)

	lea ($3d8,a4),a0
	lea loc_089ccc(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c2,a4)
	or.b d0,($3c2,a4)
	andi.b #$55,($3c2,a4)

	lea ($3e0,a4),a0
	lea loc_089cb8(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c3,a4)
	or.b d0,($3c3,a4)
	andi.b #$55,($3c3,a4)

	lea ($3e8,a4),a0
	lea loc_089cc2(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c4,a4)
	or.b d0,($3c4,a4)
	andi.b #$55,($3c4,a4)

	lea ($3f0,a4),a0
	lea loc_089cd6(pc),a1
	move.w #5,d7
	jsr loc_02c946
	and.b d1,($3c5,a4)
	or.b d0,($3c5,a4)
	andi.b #$aa,($3c5,a4)

	lea ($3fc,a4),a0
	lea loc_089cd6(pc),a1
	move.w #5,d7
	jsr loc_02c946
	and.b d1,($3c6,a4)
	or.b d0,($3c6,a4)
	andi.b #$55,($3c6,a4)

	lea ($414,a4),a0
	lea loc_089ce6(pc),a1
	move.w #5,d7
	jsr loc_02c946
	and.b d1,($3c8,a4)
	or.b d0,($3c8,a4)
	andi.b #$55,($3c8,a4)
	move.b ($2f9,a4),d0
	not.b d0
	andi.b #$a0,d0
	seq d0
	or.b d0,($3c9,a4)
	tst.b ($2fc,a4)
	smi d0
	or.b d0,($3ca,a4)
	rts

;/\/\/\/\/\/\/\/\
loc_089cb8:
	dc.w $0804,$0802,$0208,$0a06,$0a00

loc_089cc2:
	dc.w $0202,$080a,$0608,$0804,$0a00

loc_089ccc:
	dc.w $0202,$0806,$0a08,$0408,$0a00

loc_089cd6:
	dc.w $0202,$080a,$0608,$0804,$0c02,$020c,$0a06,$0c00

loc_089ce6:
	dc.w $0202,$0806,$0a08,$0408,$0c02,$020c,$060a,$0c00

;--------------------------
loc_089cf6:
	bsr.w loc_089d5c
	bne.w loc_089d0a
	bsr.w loc_089dbe
	bne.w loc_089d0a
	bsr.w loc_089e20

loc_089d0a:
	rts

loc_089d0c:
	btst #6,($2f7,a4)
	beq.w loc_089d32
	move.b ($2f6,a4),d0
	cmpi.b #4,d0
	beq.w loc_089d2a
	cmpi.b #8,d0
	bne.w loc_089d32

loc_089d2a:
	bsr.w loc_089e6e
	bne.w loc_089d5a

loc_089d32:
	btst #7,($2f7,a4)
	bne.w loc_089d46
	btst #6,($2f7,a4)
	beq.w loc_089d56

loc_089d46:
	move.b ($2f6,a4),d0
	beq.w loc_089d56
	bsr.w loc_089e90
	bne.w loc_089d5a

loc_089d56:
	clr.w d0
	rts

loc_089d5a:
	rts

loc_089d5c:
	tst.b ($3c5,a4)
	beq.b loc_089d6a
	bsr.w loc_089fac
	bne.w loc_089dbc

loc_089d6a:
	tst.b ($3c6,a4)
	beq.b loc_089d78
	bsr.w loc_08a00c
	bne.w loc_089dbc

loc_089d78:
	tst.b ($3c8,a4)
	beq.b loc_089d86
	bsr.w loc_08a062
	bne.w loc_089dbc

loc_089d86:
	tst.b ($3c2,a4)
	beq.b loc_089d94
	bsr.w loc_089ebe
	bne.w loc_089dbc

loc_089d94:
	tst.b ($3c3,a4)
	beq.b loc_089da2
	bsr.w loc_089f08
	bne.w loc_089dbc

loc_089da2:
	tst.b ($3c4,a4)
	beq.b loc_089db0
	bsr.w loc_089f56
	bne.w loc_089dbc

loc_089db0:
	bsr.w loc_089d0c
	bne.w loc_089dbc
	clr.w d0
	rts

loc_089dbc:
	rts

loc_089dbe:
	tst.b ($3c9,a4)
	beq.b loc_089dcc
	bsr.w loc_08a0e8
	bne.w loc_089e1e

loc_089dcc:
	btst #7,($2f7,a4)
	beq.b loc_089ddc
	bsr.w loc_08a11a
	bne.w loc_089e1e

loc_089ddc:
	btst #6,($2f7,a4)
	beq.b loc_089dec
	bsr.w loc_08a1be
	bne.w loc_089e1e

loc_089dec:
	btst #5,($2f7,a4)
	beq.b loc_089dfc
	bsr.w loc_08a260
	bne.w loc_089e1e

loc_089dfc:
	btst #4,($2f7,a4)
	beq.b loc_089e0c
	bsr.w loc_08a30e
	bne.w loc_089e1e

loc_089e0c:
	tst.b ($3ca,a4)
	beq.b loc_089e1a
	bsr.w loc_08a0c2
	bne.w loc_089e1e

loc_089e1a:
	clr.w d0
	rts

loc_089e1e:
	rts

loc_089e20:
	tst.b ($209,a4)
	bmi.w loc_089e48
	tst.b ($3c1,a4)
	beq.b loc_089e36
	bsr.w loc_08a3c6
	bne.w loc_089e68

loc_089e36:
	tst.b ($3c0,a4)
	beq.b loc_089e44
	bsr.w loc_08a3e4
	bne.w loc_089e68

loc_089e44:
	clr.w d0
	rts

loc_089e48:
	tst.b ($3c0,a4)
	beq.b loc_089e56
	bsr.w loc_08a3c6
	bne.w loc_089e68

loc_089e56:
	tst.b ($3c1,a4)
	beq.b loc_089e64
	bsr.w loc_08a3e4
	bne.w loc_089e68

loc_089e64:
	clr.w d0
	rts

loc_089e68:
	rts

;||||||||||||||||||||||||||
;Attack determination start
;||||||||||||||||||||||||||

;--------------------------
loc_089e6a:
	clr.w d0
	rts

loc_089e6e:
	cmpi.w #8,($be,a4)
	bgt.b loc_089e6a
	cmpi.w #$1e,($226,a4)
	bgt.b loc_089e6a
	jsr loc_02a4dc
	beq.b loc_089e6a
	move.w #$26,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_089e90:
	btst #0,($24a,a4)
	bne.b loc_089e6a
	move.w #$3c,d2
	move.w #-$88,d3
	move.w #-$18,d4
	jsr loc_02de6a
	beq.b loc_089e6a
	jsr loc_02a518
	beq.b loc_089e6a
	move.w #$27,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_089ebe:
	btst #5,($24a,a4)
	bne.b loc_089e6a
	btst #1,($246,a4)
	beq.b loc_089e6a
	tst.b (1,a4)
	bpl.b loc_089ee2
	move.b ($3c2,a4),d0
	andi.b #$cc,d0
	sne ($bc,a4)
	bra.b loc_089ee8

loc_089ee2:
	move.b ($3cb,a4),($bc,a4)

loc_089ee8:
	sf ($3d9,a4)
	tst.b ($bc,a4)
	bne.b loc_089efe

	move.w #$1b,d0
	move.w d0,($2fe,a4)
	rts

loc_089efc:
	bra.b loc_089f08

loc_089efe:
	move.w #$1c,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_089f08:
	btst #5,($24a,a4)
	bne.w loc_089e6a
	btst #1,($246,a4)
	beq.w loc_089e6a
	tst.b (1,a4)
	bpl.b loc_089f30
	move.b ($3c3,a4),d0
	andi.b #$cc,d0
	sne ($bc,a4)
	bra.b loc_089f36

loc_089f30:
	move.b ($3cb,a4),($bc,a4)

loc_089f36:
	sf ($3e1,a4)
	tst.b ($bc,a4)
	bne.b loc_089f4c
	move.w #$1d,d0
	move.w d0,($2fe,a4)
	rts
 
loc_089f4a
	bra.b loc_089f56

loc_089f4c:
	move.w #$1e,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
;Projectile animation set
loc_089f56:
	btst #5,($24a,a4)
	bne.w loc_089e6a
	btst #1,($246,a4)
	beq.w loc_089e6a
	tst.b ($2b2,a4)
	bne.w loc_089e6a
	tst.b (1,a4)
	bpl.b loc_089f86
	move.b ($3c4,a4),d0
	andi.b #$cc,d0
	sne ($bc,a4)
	bra.b loc_089f8c

loc_089f86
	move.b ($3cb,a4),($bc,a4)

loc_089f8c:
	sf ($3e9,a4)
	tst.b ($bc,a4)
	bne.b loc_089fa2

;Kunai
	move.w #$1f,d0
	move.w d0,($2fe,a4)
	rts

loc_089fa0:
	bra.b loc_089fac

;Bomb
loc_089fa2:
	move.w #$20,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
;super 23623+K
loc_089fac:
	btst #1,($246,a4)
	beq.w loc_089e6a
	jsr loc_02c78a
	beq.w loc_089e6a
	btst #5,($24a,a4)
	beq.b loc_089fd2
	tst.w ($550,a4)
	bne.b loc_089fd2
	bra.w loc_089e6a

loc_089fd2:
	tst.b (1,a4)
	bpl.b loc_089fe6
	move.b ($3c5,a4),d0
	andi.b #$cc,d0
	sne ($bc,a4)
	bra.b loc_089fec

loc_089fe6:
	move.b ($3cb,a4),($bc,a4)

loc_089fec:
	sf ($3f1,a4)
	tst.b ($bc,a4)
	bne.b loc_08a002
	move.w #$21,d0
	move.w d0,($2fe,a4)
	rts

loc_08a000:
	bra.b loc_08a00c

loc_08a002:
	move.w #$22,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_08a00c:
	btst #1,($246,a4)
	beq.w loc_089e6a
	tst.b ($2b2,a4)
	bne.w loc_089e6a
	jsr loc_02c78a
	beq.w loc_089e6a
	btst #5,($24a,a4)
	beq.b loc_08a03a
	tst.w ($550,a4)
	bne.b loc_08a03a
	bra.w loc_089e6a

loc_08a03a:
	tst.b (1,a4)
	bpl.b loc_08a04e
	move.b ($3c6,a4),d0
	andi.b #$cc,d0
	sne ($bc,a4)
	bra.b loc_08a054

loc_08a04e:
	move.b ($3cb,a4),($bc,a4)

loc_08a054:
	sf ($3fd,a4)
	move.w #$23,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_08a062:
	btst #1,($246,a4)
	beq.w loc_089e6a
	jsr loc_02c78a
	beq.w loc_089e6a
	btst #5,($24a,a4)
	beq.b loc_08a088
	tst.w ($550,a4)
	bne.b loc_08a088
	bra.w loc_089e6a

loc_08a088:
	tst.b (1,a4)
	bpl.b loc_08a09c
	move.b ($3c8,a4),d0
	andi.b #$cc,d0
	sne ($bc,a4)
	bra.b loc_08a0a2

loc_08a09c:
	move.b ($3cb,a4),($bc,a4)

loc_08a0a2:
	sf ($415,a4)
	tst.b ($bc,a4)
	bne.b loc_08a0b8
	move.w #$24,d0
	move.w d0,($2fe,a4)
	rts

loc_08a0b6:
	bra.b loc_08a0c2

loc_08a0b8:
	move.w #$25,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_08a0c2:
	btst #4,($24a,a4)
	bne.w loc_089e6a
	btst #1,($246,a4)
	beq.w loc_089e6a
	tst.w ($552,a4)
	bne.w loc_089e6a
	move.w #$2a,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_08a0e8:
	btst #4,($24a,a4)
	bne.w loc_089e6a
	btst #1,($246,a4)
	beq.w loc_089e6a
	btst #1,($2f6,a4)
	bne.w loc_08a110
	move.w #$19,d0
	move.w d0,($2fe,a4)
	rts

loc_08a110:
	move.w #$1a,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_08a11a:;hk
	btst #1,($246,a4)
	bne.w loc_08a160
	btst #0,($24a,a4)
	bne.w loc_089e6a
	btst #3,($248,a4)
	bne.w loc_08a14c
	btst #2,($248,a4)
	bne.w loc_08a156
	move.w #$16,d0
	move.w d0,($2fe,a4)
	rts

loc_08a14c:
	move.w #$17,d0
	move.w d0,($2fe,a4)
	rts

loc_08a156:
	move.w #$18,d0
	move.w d0,($2fe,a4)
	rts

loc_08a160:
	btst #1,($246,a4)
	beq.w loc_089e6a
	btst #3,($24a,a4)
	beq.w loc_08a18c
	btst #1,($24a,a4)
	bne.w loc_089e6a
	cmpi.b #1,($2c6,a4)
	beq.w loc_08a18c
	bra.w loc_089e6a

loc_08a18c:
	btst #1,($2f6,a4)
	bne.w loc_08a1b4
	cmpi.w #$3c,($226,a4)
	bgt.w loc_08a1aa
	move.w #$a,d0
	move.w d0,($2fe,a4)
	rts

loc_08a1aa:
	move.w #$b,d0
	move.w d0,($2fe,a4)
	rts

loc_08a1b4:
	move.w #$c,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_08a1be:;hp
	btst #1,($246,a4)
	bne.w loc_08a204
	btst #0,($24a,a4)
	bne.w loc_089e6a
	btst #3,($248,a4)
	bne.w loc_08a1f0
	btst #2,($248,a4)
	bne.w loc_08a1fa
	move.w #$13,d0
	move.w d0,($2fe,a4)
	rts

loc_08a1f0:
	move.w #$14,d0
	move.w d0,($2fe,a4)
	rts

loc_08a1fa:
	move.w #$15,d0
	move.w d0,($2fe,a4)
	rts

loc_08a204:
	btst #1,($246,a4)
	beq.w loc_089e6a
	btst #3,($24a,a4)
	bne.w loc_08a24a

loc_08a218:
	btst #1,($2f6,a4)
	bne.w loc_08a240
	cmpi.w #$3c,($226,a4)
	bgt.w loc_08a236
	move.w #7,d0
	move.w d0,($2fe,a4)
	rts

loc_08a236:
	move.w #8,d0
	move.w d0,($2fe,a4)
	rts

loc_08a240:
	move.w #9,d0
	move.w d0,($2fe,a4)
	rts

loc_08a24a:
	btst #1,($24a,a4)
	bne.w loc_089e6a
	cmpi.b #1,($2c6,a4)
	beq.b loc_08a218
	bra.w loc_089e6a

;--------------------------
loc_08a260:;lk
	btst #1,($246,a4)
	bne.w loc_08a2a6
	btst #0,($24a,a4)
	bne.w loc_089e6a
	btst #3,($248,a4)
	bne.w loc_08a292
	btst #2,($248,a4)
	bne.w loc_08a29c
	move.w #$10,d0
	move.w d0,($2fe,a4)
	rts

loc_08a292:
	move.w #$11,d0
	move.w d0,($2fe,a4)
	rts

loc_08a29c:
	move.w #$12,d0
	move.w d0,($2fe,a4)
	rts

loc_08a2a6:
	btst #1,($246,a4)
	beq.w loc_089e6a
	btst #3,($24a,a4)
	beq.w loc_08a2dc
	btst #1,($24a,a4)
	bne.w loc_089e6a
	cmpi.b #1,($2c6,a4)
	beq.w loc_08a2dc
	cmpi.b #1,($2c6,a4)
	beq.w loc_08a2dc
	bra.w loc_089e6a

loc_08a2dc:
	btst #1,($2f6,a4)
	bne.w loc_08a304
	cmpi.w #$24,($226,a4)
	bgt.w loc_08a2fa
	move.w #4,d0
	move.w d0,($2fe,a4)
	rts

loc_08a2fa:
	move.w #5,d0
	move.w d0,($2fe,a4)
	rts

loc_08a304:
	move.w #6,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_08a30e:;lp
	btst #1,($246,a4)
	bne.w loc_08a35e
	btst #0,($24a,a4)
	beq.w loc_08a32c
	btst #1,($24a,a4)
	bne.w loc_089e6a

loc_08a32c:
	btst #3,($248,a4)
	bne.w loc_08a34a
	btst #2,($248,a4)
	bne.w loc_08a354
	move.w #$d,d0
	move.w d0,($2fe,a4)
	rts

loc_08a34a:
	move.w #$e,d0
	move.w d0,($2fe,a4)
	rts

loc_08a354:
	move.w #$f,d0
	move.w d0,($2fe,a4)
	rts

loc_08a35e:
	btst #1,($246,a4)
	beq.w loc_089e6a
	btst #3,($24a,a4)
	beq.w loc_08a394
	btst #1,($24a,a4)
	bne.w loc_089e6a
	cmpi.b #1,($2c6,a4)
	beq.w loc_08a394
	cmpi.b #1,($2c6,a4)
	beq.w loc_08a394
	bra.w loc_089e6a

loc_08a394:
	btst #1,($2f6,a4)
	bne.w loc_08a3bc
	cmpi.w #$20,($226,a4)
	bgt.w loc_08a3b2
	move.w #1,d0
	move.w d0,($2fe,a4)
	rts

loc_08a3b2:
	move.w #2,d0
	move.w d0,($2fe,a4)
	rts

loc_08a3bc:
	move.w #3,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_08a3c6:
	btst #3,($24a,a4)
	bne.w loc_089e6a
	btst #1,($246,a4)
	beq.w loc_089e6a
	move.w #$29,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_08a3e4:
	tst.b ($24a,a4)
	bne.w loc_089e6a
	btst #1,($246,a4)
	beq.w loc_089e6a
	btst #4,($248,a4)
	bne.w loc_089e6a
	move.w #$28,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
;Dash programming
loc_08a40a:
	tst.b (-$3dd,a5)
	bne.w loc_08a4be
	tst.b ($271,a4)
	beq.w loc_08a41e
	subq.w #5,($be,a4)

loc_08a41e:
	tst.w ($be,a4)
	ble.w loc_08a4be
	tst.b ($249,a4)
	bne.w loc_08a4be
	move.w ($be,a4),d2
	subq.w #1,($be,a4)
	btst #1,($246,a4)
	beq.w loc_08a48c
	btst #3,($24c,a4)
	beq.w loc_08a464
	btst #5,($24c,a4)
	bne.w loc_08a4be
	cmpi.w #$c,($be,a4)
	blt.w loc_08a464
	move.w #$c,($be,a4)

loc_08a464:
	cmpi.w #8,d2
	blt.w loc_08a470
	move.w #8,d2

loc_08a470:
	lea loc_08a4c4(pc),a0
	lsl.w #2,d2
	move.l (a0,d2.w),d0
	tst.b ($bd,a4)
	bpl.w loc_08a484
	neg.l d0

loc_08a484:
	add.l d0,($20e,a4)
	bra.w loc_08a4c2

loc_08a48c:
	btst #3,($24c,a4)
	beq.w loc_08a4a0
	btst #5,($24c,a4)
	bne.w loc_08a4be

loc_08a4a0:
	move.w #1,($be,a4)
	move.l #$18000,d0
	tst.b ($bd,a4)
	bpl.w loc_08a4b6
	neg.l d0

loc_08a4b6:
	add.l d0,($20e,a4)
	bra.w loc_08a4c2

loc_08a4be:
	clr.w ($be,a4)

loc_08a4c2:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08a4c4:
	dc.l $00000000,$0000c000,$00018000,$00024000
	dc.l $00030000,$0003c000,$00048000,$00054000
	dc.l $00060000


;--------------------------
;Attack Properites
loc_08a4e8:
	tst.b (-$3e4,a5)
	bne.w loc_08a516
	cmpi.w #1,(-$f2e,a5)
	bgt.w loc_08a516
	movea.l #loc_08b840,a0
	clr.w d0
	jsr loc_0226f0

loc_08a508:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_08a508

loc_08a516:
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;-------------------------
loc_08a520
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),($bd,a4)

loc_08a532:
	cmpi.w #8,($be,a4)
	ble.w loc_08a5bc
	btst #2,($24a,a4)
	bne.w loc_08a562
	move.w #2,d1
	move.b ($209,a4),d0
	cmp.b ($208,a4),d0
	beq.w loc_08a55a
	move.w #3,d1

loc_08a55a:
	btst d1,($2f6,a4)
	bne.w loc_08a586

loc_08a562:
	btst #0,($2f6,a4)
	beq.w loc_08a57e
	tst.w ($20c,a4)
	bne.w loc_08a57e
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_08a57e:
	jsr loc_02269c
	bra.b loc_08a532

loc_08a586:
	movea.l #loc_0901d6,a0
	clr.w d0
	jsr loc_0226f0

loc_08a594:
	btst #0,($2f6,a4)
	beq.w loc_08a5b0
	tst.w ($20c,a4)
	bne.w loc_08a5b0
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_08a5b0:
	jsr loc_02269c
	tst.w ($be,a4)
	bne.b loc_08a594

loc_08a5bc:
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;-------------------------
loc_08a5c6:
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_08a5d2:
	jsr loc_02269c
	btst #4,($248,a4)
	bne.w loc_08a5fe
	btst #0,($2f6,a4)
	beq.w loc_08a5fe
	tst.w ($20c,a4)
	bne.w loc_08a5fe
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_08a5fe:
	btst #2,($2e1,a4)
	beq.b loc_08a5d2
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;-------------------------
loc_08a610:
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_08a62e:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_08a64c
	sf ($b9,a4)
	move.w #0,d2
	move.w #-$54,d3
	jsr loc_02c7be

loc_08a64c:
	tst.b ($b6,a4)
	beq.w loc_08a674
	sf ($b6,a4)
	movem.l d2,-(a7)
	move.w #$3f,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_08a674
	move.b ($bc,a4),($66,a0)

loc_08a674:
	tst.b ($b8,a4)
	beq.w loc_08a6a4
	sf ($b8,a4)
	movem.l d2,-(a7)
	move.w #$3d,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_08a6a4
	move.b ($bc,a4),($66,a0)
	move.l #0,($68,a0)

loc_08a6a4:
	btst #2,($2e1,a4)
	beq.b loc_08a62e
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;-------------------------
loc_08a6b6:
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_08a6d4
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_08a6f2
	sf ($b9,a4)
	move.w #0,d2
	move.w #-$54,d3
	jsr loc_02c7be

loc_08a6f2:
	tst.b ($b6,a4)
	beq.w loc_08a722
	sf ($b6,a4)
	movem.l d2,-(a7)
	move.w #$3d,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_08a722
	move.b ($bc,a4),($66,a0)
	move.l #0,($68,a0)

loc_08a722:
	tst.b ($b7,a4)
	beq.w loc_08a752
	sf ($b7,a4)
	movem.l d2,-(a7)
	move.w #$3d,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_08a752
	move.b ($bc,a4),($66,a0)
	move.l #$400000,($68,a0)

loc_08a752:
	tst.b ($b8,a4)
	beq.w loc_08a782
	sf ($b8,a4)
	movem.l d2,-(a7)
	move.w #$3d,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_08a782
	move.b ($bc,a4),($66,a0)
	move.l #$800000,($68,a0)

loc_08a782:
	btst #2,($2e1,a4)
	beq.w loc_08a6d4
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;-------------------------
loc_08a796:
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_08a7b4:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_08a7d2
	sf ($b9,a4)
	move.w #0,d2
	move.w #-$54,d3
	jsr loc_02c7be

loc_08a7d2:
	tst.b ($b6,a4)
	beq.w loc_08a802
	sf ($b6,a4)
	movem.l d2,-(a7)
	move.w #$3e,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_08a802
	move.b ($bc,a4),($66,a0)
	move.l #$280000,($68,a0)

loc_08a802:
	tst.b ($b7,a4)
	beq.w loc_08a832
	sf ($b7,a4)
	movem.l d2,-(a7)
	move.w #$3e,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_08a832
	move.b ($bc,a4),($66,a0)
	move.l #$180000,($68,a0)

loc_08a832:
	tst.b ($b8,a4)
	beq.w loc_08a862
	sf ($b8,a4)
	movem.l d2,-(a7)
	move.w #$3e,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_08a862
	move.b ($bc,a4),($66,a0)
	move.l #$80000,($68,a0)

loc_08a862:
	btst #2,($2e1,a4)
	beq.w loc_08a7b4
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;-------------------------
;Kunai Throw Program
loc_08a876:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_08a88e:
	jsr loc_02269c
	tst.b ($b6,a4);Spawn frame Check
	beq.w loc_08a8e8
	sf ($b6,a4)
	movem.l d2,-(a7)
	move.w #$40,d2;Projectile ID
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_08a8c4
	move.b ($bc,a4),($66,a0)
	move.l #0,($68,a0)

loc_08a8c4:
	movem.l d2,-(a7)
	move.w #$40,d2;Projectile ID
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_08a8e8
	move.b ($bc,a4),($66,a0)
	move.l #$80000,($68,a0)

loc_08a8e8:
	btst #2,($2e1,a4)
	beq.b loc_08a88e

loc_08a8f0:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_08a8f0
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;-------------------------
;Bomb
loc_08a908:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_08a920:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.w loc_08a94e
	sf ($b6,a4)
	movem.l d2,-(a7)
	move.w #$41,d2;Projectile ID
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_08a94e
	move.b ($bc,a4),($66,a0)

loc_08a94e:
	btst #2,($2e1,a4)
	beq.b loc_08a920

loc_08a956
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_08a956
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;-------------------------
loc_08a96e:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_08a986:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.w loc_08a9aa
	sf ($b6,a4)
	bmi.w loc_08a9aa
	move.b ($bc,a4),($66,a0)
	move.l #0,($68,a0)

loc_08a9aa:
	tst.b ($b7,a4)
	beq.w loc_08a9c8
	sf ($b7,a4)
	bmi.w loc_08a9c8
	move.b ($bc,a4),($66,a0)
	move.l #-$40000,($68,a0)

loc_08a9c8:
	tst.b ($b8,a4)
	beq.w loc_08a9e6
	sf ($b8,a4)
	bmi.w loc_08a9e6
	move.b ($bc,a4),($66,a0)
	move.l #-$80000,($68,a0)

loc_08a9e6:
	btst #2,($2e1,a4)
	beq.b loc_08a986
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;-------------------------
PRGSaiCmbSup:
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_08aa34
	sf ($b9,a4)
	move.w #$1c,d2
	move.w #-$54,d3
	jsr loc_02c7be

loc_08aa34:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_08aa34
	sf ($b6,a4)

loc_08aa44:
	btst #2,($249,a3)
	bne.w loc_08aa60
	tst.b ($271,a4)
	beq.w loc_08aa60
	btst #3,($249,a3)
	bne.w loc_08aa96

loc_08aa60:
	jsr loc_02269c
	tst.b ($b7,a4)
	beq.b loc_08aa44
	sf ($b7,a4)
	movea.l #loc_08e610,a0
	clr.w d0
	jsr loc_0226f0

loc_08aa7e:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_08aa7e
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_08aa96:
	sf ($b7,a4)

loc_08aa9a:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_08aa9a
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;-------------------------
loc_08aab2:;Throw
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
	bpl.w loc_08aaea
	btst #3,($2f6,a4)
	sne ($c4,a4)

loc_08aaea:
	move.l #$38000,d2
	move.l #-$70000,d3
	jsr loc_02a59c
	lea loc_08ab44(pc),a0
	jsr loc_02a554

loc_08ab06:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.w loc_08ab28
	sf ($b6,a4)
	tst.b ($c4,a4)
	beq.w loc_08ab28
	not.b ($208,a4)
	not.b ($208,a3)

loc_08ab28:
	btst #2,($2e1,a4)
	beq.b loc_08ab06
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08ab44:
	dc.l loc_08f7be,loc_08f834,loc_08f8aa,loc_08f926
	dc.l loc_08f9a2,loc_08fa18,loc_08fa94,loc_08fb0a
	dc.l loc_08fb86,loc_08f742,loc_08f7be,loc_08f7be
	dc.l loc_08f7be,loc_08f7be,loc_08f7be,loc_08f7be

;-------------------------
loc_08ab84:
	st ($24a,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	move.l #-$60000,d2
	moveq #0,d3
	jsr loc_02a59c
	lea loc_08ac52(pc),a0
	jsr loc_02a554
	move.l #-$10000,d2
	sf ($c4,a4)
	tst.b (1,a4)
	bpl.b loc_08abda
	btst #3,($2f6,a4)
	beq.b loc_08abc8
	move.l #$28000,d2

loc_08abc8:
	btst #2,($2f6,a4)
	beq.b loc_08abda
	st ($c4,a4)
	move.l #-$40000,d2

loc_08abda:
	jsr loc_02269c
	addi.l #$c800,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_08abf4
	clr.l ($216,a4)

loc_08abf4:
	tst.b ($b6,a4)
	beq.b loc_08abda
	sf ($b6,a4)
	move.l d2,($216,a4)
	move.l #-$8fc00,($21a,a4)
	move.l ($22a,a4),d0
	asr.l #8,d0
	divu.w #$18,d0
	ext.l d0
	asl.l #8,d0
	add.l d0,($21a,a4)

loc_08ac1c:
	jsr loc_02269c
	addi.l #$c800,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_08ac1c
	clr.l ($216,a4)
	clr.l ($21a,a4)

loc_08ac3a
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_08ac3a
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08ac52:
	dc.l loc_08fdbc,loc_08fe1c,loc_08fe7c,loc_08fedc
	dc.l loc_08ff3c,loc_08ff9c,loc_08fffc,loc_09005c
	dc.l loc_0900bc,loc_08fd5c,loc_08fdbc,loc_08fdbc
	dc.l loc_08fdbc,loc_08fdbc,loc_08fdbc,loc_08fdbc

;-------------------------
loc_08ac92:
	st ($24a,a4)

loc_08ac96
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_08ac96
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_08acae:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_08ad2e
	move.l #0,($36,a4)
	clr.l ($3a,a4)
	move.l #$a00000,d2
	move.l #-$480000,d3
	add.l ($68,a4),d3
	jsr loc_0282ea
	movea.l #loc_08edc4,a0
	clr.w d0
	jsr loc_027e70
	move.l #0,($9c,a4)

loc_08acfa:
	btst #2,($53,a4)
	bne.w loc_08ad2e
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_08acfa

loc_08ad2e:
	jmp loc_027de6

;-------------------------
loc_08ad34:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_08ae56
	move.l #0,($36,a4)
	clr.l ($3a,a4)
	move.l #$300000,d2
	move.l #-$200000,d3
	jsr loc_0282ea
	movea.l #loc_08ee88,a0
	clr.w d0
	jsr loc_027e70
	move.l #loc_08ae5c,($9c,a4)

loc_08ad7c:
	tst.b ($9b,a4)
	bne.w loc_08adee
	jsr loc_02805e
	bne.w loc_08adee
	jsr loc_028112
	bne.w loc_08ade8
	jsr loc_027e48
	move.w ($2e,a4),d0
	addi.w #$20,d0
	cmp.w (-$45d6,a5),d0
	blt.w loc_08ae56
	move.w ($2e,a4),d0
	subi.w #$20,d0
	cmp.w (-$45d4,a5),d0
	bge.w loc_08ae56
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_08ad7c

loc_08ade8:
	jsr loc_0281fa

loc_08adee:
	clr.l ($9c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	movea.l #loc_08ef98,a0
	clr.w d0
	jsr loc_027e70

loc_08ae22:
	btst #2,($53,a4)
	bne.w loc_08ae56
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_08ae22

loc_08ae56:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08ae5c:
	dc.w $fff8,$0008,$fff4,$000c

;-------------------------
loc_08ae64:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_08afbc
	tst.b ($66,a4)
	bne.b loc_08ae8c
	move.l #$28000,($36,a4)
	clr.l ($3a,a4)
	bra.b loc_08ae98

loc_08ae8c:
	move.l #$50000,($36,a4)
	clr.l ($3a,a4)

loc_08ae98:
	move.l #$480000,d2
	move.l #-$380000,d3
	jsr loc_0282ea
	movea.l #loc_08f006,a0
	clr.w d0
	jsr loc_027e70
	clr.w ($68,a4)
	move.l #loc_08afc2,($9c,a4)

loc_08aec4:
	tst.b ($9b,a4)
	bne.w loc_08af36
	jsr loc_02805e
	bne.w loc_08af36
	jsr loc_028112
	bne.w loc_08af30
	jsr loc_027e48

loc_08aee6:
	move.w ($2e,a4),d0
	addi.w #$20,d0
	cmp.w (-$45d6,a5),d0
	blt.w loc_08afbc
	move.w ($2e,a4),d0
	subi.w #$20,d0
	cmp.w (-$45d4,a5),d0
	bge.w loc_08afbc
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_08aec4

loc_08af30:
	jsr loc_0281fa

loc_08af36:
	clr.l ($9c,a4)
	addq.w #1,($68,a4)
	cmpi.w #5,($68,a4)
	bge.w loc_08af4e
	clr.b ($9b,a4)
	bra.b loc_08aee6

loc_08af4e:
	move.w #$e9,d0
	jsr loc_02301a
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	movea.l #loc_08f11e,a0
	clr.w d0
	jsr loc_027e70

loc_08af88:
	btst #2,($53,a4)
	bne.w loc_08afbc
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_08af88

loc_08afbc:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08afc2:
	dc.w $ffe0,$0020,$ffe0,$0020

;-------------------------
loc_08afca:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_08b14a
	tst.b ($66,a4)
	bne.b loc_08affe
	move.l #$20000,($36,a4)
	move.l #$20000,($3a,a4)
	move.l #$800,($6c,a4)
	bra.b loc_08b016

loc_08affe:
	move.l #$40000,($36,a4)
	move.l #$30000,($3a,a4)
	move.l #$1000,($6c,a4)

loc_08b016:
	move.l #$300000,d2
	move.l #-$c00000,d3
	add.l ($68,a4),d3
	jsr loc_0282ea
	movea.l #loc_08f18c,a0
	clr.w d0
	jsr loc_027e70
	clr.w ($70,a4)
	move.l #loc_08b150,($9c,a4)

loc_08b046:
	tst.b ($9b,a4)
	bne.w loc_08b0c0
	jsr loc_02805e
	bne.w loc_08b0c0
	jsr loc_028112
	bne.w loc_08b0ba
	jsr loc_027e48

loc_08b068:
	move.w ($2e,a4),d0
	addi.w #$20,d0
	cmp.w (-$45d6,a5),d0
	blt.w loc_08b14a
	move.w ($2e,a4),d0
	subi.w #$20,d0
	cmp.w (-$45d4,a5),d0
	bge.w loc_08b14a
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	move.l ($6c,a4),d0
	sub.l d0,($3a,a4)
	bra.b loc_08b046

loc_08b0ba:
	jsr loc_0281fa

loc_08b0c0:
	clr.l ($9c,a4)
	addq.w #1,($70,a4)
	cmpi.w #5,($70,a4)
	bge.w loc_08b0d8
	clr.b ($9b,a4)
	bra.b loc_08b068

loc_08b0d8:
	clr.l ($9c,a4)
	move.w #$e9,d0
	jsr loc_02301a
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	movea.l #loc_08f248,a0
	clr.w d0
	jsr loc_027e70

loc_08b116:
	btst #2,($53,a4)
	bne.w loc_08b14a
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_08b116

loc_08b14a:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08b150:
	dc.w $ffec,$002c,$ffee,$002c

;-------------------------
loc_08b158:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_08b2ae
	tst.b ($66,a4)
	bne.b loc_08b186
	move.l #$20000,($36,a4)
	clr.l ($3a,a4)
	move.l #$100000,d2
	bra.b loc_08b198

loc_08b186:
	move.l #$30000,($36,a4)
	clr.l ($3a,a4)
	move.l #$200000,d2

loc_08b198:
	moveq #0,d3
	add.l ($68,a4),d2
	jsr loc_0282ea
	movea.l #loc_08f2c8,a0
	clr.w d0
	jsr loc_027e70
	clr.l ($9c,a4)
	clr.w ($6c,a4)

loc_08b1ba:
	btst #2,($53,a4)
	bne.w loc_08b2ae
	tst.b ($9b,a4)
	bne.w loc_08b24a
	jsr loc_02805e
	bne.w loc_08b244
	jsr loc_028112
	bne.w loc_08b230
	jsr loc_027e48
	move.w ($2e,a4),d0
	addi.w #$20,d0
	cmp.w (-$45d6,a5),d0
	blt.w loc_08b2ae
	move.w ($2e,a4),d0
	subi.w #$20,d0
	cmp.w (-$45d4,a5),d0
	bge.w loc_08b2ae

loc_08b206:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l ($8,a4),a3
	jsr loc_027ea4
	bra.b loc_08b1ba

loc_08b230:
	jsr loc_0281fa
	addq.w #1,($6c,a4)
	cmpi.w #$a,($6c,a4)
	bge.w loc_08b24a

loc_08b244:
	clr.b ($9b,a4)
	bra.b loc_08b206

loc_08b24a:
	move.w #$e9,d0
	jsr loc_02301a
	clr.l ($9c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3

loc_08b27a
	btst #2,($53,a4)
	bne.w loc_08b2ae
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_08b27a

loc_08b2ae:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08b2b4:
	dc.w $ffc0,$0000,$ffe8,$0018

loc_08b2bc:
	dc.w $ffa0,$0000,$ffe8,$0018

loc_08b2c4:
	dc.w $ff70,$0000,$ffe8,$0018

loc_08b2cc:
	dc.w $ff58,$0000,$ffe8,$0018

;-------------------------
loc_08b2d4:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_08b412
	move.l #$74000,($36,a4)
	move.l #0,($3a,a4)
	move.l ($68,a4),d2
	neg.l d2
	addi.l #$400000,d2
	move.l #-$400000,d3
	add.l ($68,a4),d3
	jsr loc_0282ea
	movea.l #loc_08f47c,a0
	clr.w d0
	jsr loc_027e70
	move.l #loc_08b418,($9c,a4)

loc_08b32a:
	tst.b ($9b,a4)
	bne.w loc_08b3aa
	jsr loc_02805e
	bne.w loc_08b3aa
	jsr loc_028112
	bne.w loc_08b3a4
	jsr loc_027e48
	move.w ($2e,a4),d0
	addi.w #$20,d0
	cmp.w (-$45d6,a5),d0
	blt.w loc_08b412
	move.w ($2e,a4),d0
	subi.w #$20,d0
	cmp.w (-$45d4,a5),d0
	bge.w loc_08b412
	move.w ($32,a4),d0
	addq.w #8,d0
	cmp.w (-$45de,a5),d0
	bge.w loc_08b3aa
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_08b32a

loc_08b3a4:
	jsr loc_0281fa

loc_08b3aa:
	clr.l ($9c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	movea.l #loc_08f490,a0
	clr.w d0
	jsr loc_027e70

loc_08b3de:
	btst #2,($53,a4)
	bne.w loc_08b412
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_08b3de

loc_08b412:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08b418
	dc.w $fff8,$0008,$fff8,$0008

;--------------------------
loc_08b420:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_08b55e
	move.l #$54000,($36,a4)
	move.l #0,($3a,a4)
	move.l #$320000,d2
	move.l #-$380000,d3
	jsr loc_0282ea
	movea.l #loc_08f4da,a0
	clr.w d0
	jsr loc_027e70
	move.l #loc_08b418,($9c,a4)

loc_08b46c:
	tst.b ($9b,a4)
	bne.w loc_08b4f6
	jsr loc_02805e
	bne.w loc_08b4f6
	jsr loc_028112
	bne.w loc_08b4f0
	jsr loc_027e48
	move.w ($2e,a4),d0
	addi.w #$20,d0
	cmp.w (-$45d6,a5),d0
	blt.w loc_08b55e
	move.w ($2e,a4),d0
	subi.w #$20,d0
	cmp.w (-$45d4,a5),d0
	bge.w loc_08b55e
	move.w ($32,a4),d0
	addq.w #8,d0
	cmp.w (-$45de,a5),d0
	bge.w loc_08b4f6
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	addi.l #$2000,($3a,a4)
	bra.w loc_08b46c

loc_08b4f0
	jsr loc_0281fa

loc_08b4f6:
	clr.l ($9c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	movea.l #loc_08f4ee,a0
	clr.w d0
	jsr loc_027e70

loc_08b52a:
	btst #2,($53,a4)
	bne.w loc_08b55e
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_08b52a

loc_08b55e:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08b564:
	dc.l $00032000,$fffd4000,$00000000,$00034000
	dc.l $fffcc000,$fff31c00,$0000c800

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08b580:
	dc.l loc_08b58c,loc_08b598,loc_08b5a4

loc_08b58c:
	dc.w $8039,$fc00
	dc.w $803b,$d000,$f60a,$0000

loc_08b598:
	dc.w $8039,$fe02
	dc.w $803b,$e000,$f60a,$0000

loc_08b5a4:
	dc.w $8039,$fd01
	dc.w $803b,$d0ec,$f60a,$0000


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08b5b0:
	dc.l loc_0861ee,loc_0861ee,loc_0864d0,loc_0868ee
	dc.l loc_086f50,loc_0871d4,loc_0873e6,loc_0874bc


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08b5d0:
	dc.l loc_08bad2,loc_08bb4a,loc_08bbc2,loc_08bc2c
	dc.l loc_08bb60,loc_08bb7e,loc_08bbac,loc_08bb8e
	dc.l loc_08bc96,loc_08bcaa,loc_08bcf2,loc_08bd56
	dc.l loc_08bdba,loc_08bcd4,loc_08bdce,loc_08bde4
	dc.l loc_08bde4,loc_08bdfa,loc_08be0a,loc_08be0a
	dc.l loc_08be1a,loc_08be2a,loc_08be2a,loc_08be3a
	dc.l loc_08be3a,loc_08be50,loc_08be66,loc_08be66
	dc.l loc_08be76,loc_08be86,loc_08be86,loc_08be86
	dc.l loc_08be96,loc_08bf4c,loc_08bea6,loc_08bff2
	dc.l loc_08c098

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08b664:
	dc.l loc_028468,loc_028562,loc_02848c,loc_028572
	dc.l loc_02861e,loc_0286fc,loc_0287a6,loc_0287e0
	dc.l loc_02881a,loc_028a02,loc_028958,loc_028a30
	dc.l loc_028ae2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Neutral
loc_08b698:
	dc.l loc_08c0c8,loc_08c0d8,loc_08c0d8,loc_08c0e8
	dc.l loc_08c0e8,loc_08c0f8,loc_08c108,loc_08c108
	dc.l loc_08c12c,loc_08c12c,loc_08c150,loc_08c150
	dc.l loc_08c190,loc_08c190,loc_08c1c2,loc_08c1c2
	dc.l loc_08c1e6,loc_08c1e6,loc_08c20a,loc_08c20a
	dc.l loc_08c24a,loc_08c24a,loc_08c27c,loc_08c27c
	dc.l loc_08c2a0,loc_08c2a0,loc_08c2c4,loc_08c2c4
	dc.l loc_08c304,loc_08c304,loc_08c336,loc_08c3bc
	dc.l loc_08c336,loc_08c3bc,loc_08c442,loc_08c482
	dc.l loc_08c4ae,loc_08c4fc,loc_08c4ae,loc_08c4fc
	dc.l loc_08c4ae,loc_08c54a,loc_08c54a,loc_08c576
	dc.l loc_08c594,loc_08c5e2,loc_08c614,loc_08c724
	dc.l loc_08c61c,loc_08c738,loc_08c738,loc_08c738
	dc.l loc_08c7a4,loc_08c7a4,loc_08c808,loc_08c89c
	dc.l loc_08c908,loc_08c908,loc_08c932,loc_08c932
	dc.l loc_08c978,loc_08c978,loc_08c9da

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Attack Animations
loc_08b794:
	dc.l $00000000
	dc.l loc_08ca14,loc_08ca84,loc_08caf4,loc_08cb72;01,02,03,04
	dc.l loc_08cbfe,loc_08cca6,loc_08cd16,loc_08cdb4;05,06,07,08
	dc.l loc_08ce60,loc_08cf0c,loc_08cfaa,loc_08d0b6;09,0a,0b,0c
	dc.l loc_08d300,loc_08d3a8,loc_08d3a8,loc_08d45e;0d,0e,0f,10
	dc.l loc_08d4f2,loc_08d568,loc_08d5de,loc_08d68a;11,12,13,14
	dc.l loc_08d68a,loc_08d752,loc_08d7e2,loc_08d872;15,16,17,18
	dc.l loc_08d154,loc_08d260,loc_08d902,loc_08d94c;19,1a,1b,1c
	dc.l loc_08dcee,loc_08dd36,loc_08dfa2,loc_08e068;1d,1e,1f,20
	dc.l SaiCmbSupr,SaiCmbSupr,SaiBirdFrg,loc_08e66c;21,22,23,24
	dc.l loc_08e6aa,loc_08f616,loc_08fc02,loc_09011c;25,26,27,28
	dc.l loc_090206,loc_0902d0						;29,2a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08b840:
	dc.w $802a,$0079
	dc.w $0002,$1143,$0000,$74ff,$0000,$0006,$0e01
	dc.w $0002,$1144,$0000,$74ff,$0000,$0006,$0e01
	dc.w $0002,$1145,$0000,$74ff,$0000,$0006,$0e01
	dc.w $0002,$1146,$0000,$74ff,$0000,$0006,$0e01
	dc.w $0002,$1147,$0000,$74ff,$0000,$0006,$0e01
	dc.w $0002,$1148,$0000,$74ff,$0000,$0006,$0e01
	dc.w $0002,$1149,$0000,$74ff,$0000,$0006,$0e01
	dc.w $0002,$114a,$0000,$74ff,$0000,$0006,$0e01
	dc.w $0002,$114d,$0000,$74ff,$0000,$0006,$0e01
	dc.w $0002,$114e,$0000,$74ff,$0000,$0006,$0e01

	dc.w $800a
	dc.l loc_08b996
	dc.w $800a
	dc.l loc_08ba34

	dc.w $0002,$1149,$0000,$74ff,$0000,$0006,$0e00
	dc.w $0002,$1147,$0000,$74ff,$0000,$0006,$0e00
	dc.w $0002,$1146,$0000,$74ff,$0000,$0006,$0e00
	dc.w $0004,$118b,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$1077,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$1078,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$1079,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$107a,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$107b,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$107c,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$107d,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$1083,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$1084,$0000,$80ff,$0000,$0003,$0000
	dc.w $802c
	dc.w $8001

loc_08b996:
	dc.w $0003,$1143,$74ff,$0036,$0006,$0e00
	dc.w $0003,$1144,$74ff,$0036,$0006,$0e00
	dc.w $0003,$1145,$74ff,$0036,$0006,$0e00
	dc.w $0003,$1146,$74ff,$0036,$0006,$0e00
	dc.w $0003,$1147,$74ff,$0036,$0006,$0e00
	dc.w $0003,$1148,$74ff,$0036,$0006,$0e00
	dc.w $0003,$1149,$74ff,$0036,$0006,$0e00
	dc.w $0003,$114a,$74ff,$0036,$0006,$0e00
	dc.w $0003,$114d,$74ff,$0036,$0006,$0e00
	dc.w $0003,$114e,$74ff,$0036,$0006,$0e00
	dc.w $0003,$1149,$74ff,$0036,$0006,$0e00
	dc.w $0003,$1147,$74ff,$0036,$0006,$0e00
	dc.w $0003,$1146,$74ff,$0036,$0006,$0e00
	dc.w $8001

loc_08ba34:
	dc.w $0003,$1143,$74ff,$ffd0,$0006,$0e00
	dc.w $0003,$1144,$74ff,$ffd0,$0006,$0e00
	dc.w $0003,$1145,$74ff,$ffd0,$0006,$0e00
	dc.w $0003,$1146,$74ff,$ffd0,$0006,$0e00
	dc.w $0003,$1147,$74ff,$ffd0,$0006,$0e00
	dc.w $0003,$1148,$74ff,$ffd0,$0006,$0e00
	dc.w $0003,$1149,$74ff,$ffd0,$0006,$0e00
	dc.w $0003,$114a,$74ff,$ffd0,$0006,$0e00
	dc.w $0003,$114d,$74ff,$ffd0,$0006,$0e00
	dc.w $0003,$114e,$74ff,$ffd0,$0006,$0e00
	dc.w $0003,$1149,$74ff,$ffd0,$0006,$0e00
	dc.w $0003,$1147,$74ff,$ffd0,$0006,$0e00
	dc.w $0003,$1146,$74ff,$ffd0,$0006,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bad2:
	dc.w $0004,$0fb4,$0001,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fb5,$0001,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fb6,$0001,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fb7,$0001,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fb8,$0001,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fb9,$0001,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fba,$0001,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fbb,$0001,$80ff,$0000,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_08bad2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bb4a:
	dc.w $0006,$0fd0,$000c,$80ff,$fff4,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_08bad2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bb60:
	dc.w $0003,$0fd2,$000e,$80ff,$0006,$0003,$0000
	dc.w $0002,$0fd2,$000e,$80ff,$0006,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bb7e:
	dc.w $0004,$0fd3,$000b,$80ff,$000c,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bb8e:
	dc.w $0002,$0fd4,$000e,$80ff,$0006,$0003,$0000
	dc.w $0003,$0fd4,$000e,$80ff,$0006,$0003,$0000
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bbac:
	dc.w $0006,$0fd1,$000d,$80ff,$0002,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_08bb7e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bbc2:
	dc.w $0004,$0fbc,$000a,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fbd,$000a,$80ff,$0001,$0003,$0000
	dc.w $0004,$0fbe,$000a,$80ff,$ffff,$0003,$0000
	dc.w $0004,$0fbf,$000a,$80ff,$0007,$0003,$0000
	dc.w $0004,$0fc0,$000a,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fc1,$000a,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fc2,$000a,$80ff,$fff9,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_08bbc2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bc2c:
	dc.w $0004,$0fc9,$000a,$80ff,$fff9,$0003,$0000
	dc.w $0004,$0fca,$000a,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fcb,$000a,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fcc,$000a,$80ff,$0007,$0003,$0000
	dc.w $0004,$0fcd,$000a,$80ff,$0007,$0003,$0000
	dc.w $0004,$0fce,$000a,$80ff,$0001,$0003,$0000
	dc.w $0004,$0fcf,$000a,$80ff,$0000,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_08bc2c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bc96:
	dc.w $8003,$186f
	dc.w $0002,$1001,$0009,$7cff,$fffe,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bcaa:
	dc.w $0006,$1002,$000f,$7cff,$fffc,$fffd,$0000
	dc.w $0005,$1003,$000f,$7cff,$fffc,$fffd,$0000
	dc.w $0005,$1004,$000f,$7cff,$fffc,$fffd,$0000

loc_08bcd4:
	dc.w $000a,$1005,$000f,$7cff,$fffc,$fffd,$0000
	dc.w $0006,$1006,$000f,$7cff,$fffc,$fffd,$0000
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bcf2:
	dc.w $0006,$101c,$000f,$7cff,$0000,$0003,$0000
	dc.w $0004,$101d,$000f,$7cff,$0000,$ffeb,$0000
	dc.w $0004,$101e,$000f,$7cff,$0000,$fff0,$0000
	dc.w $0004,$101f,$000f,$7cff,$0000,$0006,$0000
	dc.w $0004,$1020,$000f,$7cff,$0000,$fff6,$0000
	dc.w $0004,$1021,$000f,$7cff,$0000,$0000,$0000
	dc.w $0006,$1022,$000f,$7cff,$0000,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bd56:
	dc.w $0006,$1028,$000f,$7cff,$0000,$0000,$0000
	dc.w $0004,$1029,$000f,$7cff,$0000,$0000,$0000
	dc.w $0004,$102a,$000f,$7cff,$0000,$fff6,$0000
	dc.w $0004,$102b,$000f,$7cff,$0000,$0006,$0000
	dc.w $0004,$102c,$000f,$7cff,$0000,$0010,$0000
	dc.w $0004,$102d,$000f,$7cff,$0008,$fffb,$0000
	dc.w $0006,$102e,$000f,$7cff,$0000,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bdba:
	dc.w $8003,$1870
	dc.w $0003,$1007,$0009,$7cff,$fffe,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bdce:
	dc.w $0004,$1037,$00aa,$84ff,$0008,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_08bdfa

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bde4:
	dc.w $0004,$1034,$00aa,$84ff,$0008,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_08be0a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bdfa:
	dc.w $0004,$1038,$00aa,$84ff,$0008,$0003,$0000
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08be0a:
	dc.w $0004,$1035,$00aa,$84ff,$0008,$0003,$0000
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08be1a:
	dc.w $0004,$1037,$00aa,$84ff,$0008,$0003,$0000
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08be2a:
	dc.w $0004,$1034,$00aa,$84ff,$0008,$0003,$0000
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08be3a:
	dc.w $0004,$103d,$00ab,$84ff,$000a,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_08be66

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08be50:
	dc.w $0004,$103d,$00ab,$84ff,$000a,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_08be76

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08be66:
	dc.w $0004,$103e,$00ab,$84ff,$001a,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08be76:
	dc.w $0004,$1041,$00ab,$84ff,$0016,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08be86:
	dc.w $0004,$103d,$00ab,$84ff,$000a,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08be96:
	dc.w $003c,$0fb4,$0001,$80ff,$0000,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bea6:
	dc.w $802b,$1cca
	dc.w $0006,$1084,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$1083,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$10a3,$0000,$80ff,$ffff,$0003,$0000
	dc.w $0006,$10a4,$0000,$80ff,$ffff,$0003,$0000
	dc.w $0006,$10a5,$0000,$80ff,$ffff,$0003,$0000
	dc.w $0006,$10a6,$0000,$80ff,$ffff,$0003,$0000
	dc.w $0006,$10a7,$0000,$80ff,$ffff,$0003,$0000

loc_08bf0c:
	dc.w $0006,$10a8,$0000,$80ff,$ffff,$0003,$0000
	dc.w $0006,$10a5,$0000,$80ff,$ffff,$0003,$0000
	dc.w $0006,$10a6,$0000,$80ff,$ffff,$0003,$0000
	dc.w $0006,$10a7,$0000,$80ff,$ffff,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_08bf0c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bf4c:
	dc.w $802a,$008f
	dc.w $0006,$1084,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$1083,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$1097,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$1098,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$1099,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$109a,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$109b,$0000,$80ff,$0000,$0003,$0000

loc_08bfb2:
	dc.w $0004,$10ce,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$1099,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$109a,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$109b,$0000,$80ff,$0000,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_08bfb2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08bff2:
	dc.w $802b,$1ccb
	dc.w $0006,$1084,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$1083,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$1097,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$1098,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$1099,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$109a,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$109b,$0000,$80ff,$0000,$0003,$0000

loc_08c058:
	dc.w $0006,$10ce,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$1099,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$109a,$0000,$80ff,$0000,$0003,$0000
	dc.w $0006,$109b,$0000,$80ff,$0000,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_08c058

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c098:
	dc.w $802b,$1ccc
	dc.w $0008,$118c,$0000,$84ff,$0008,$0003,$0000
	dc.w $0008,$118d,$0000,$84ff,$0008,$0003,$0000
	dc.w $0008,$118e,$0000,$84ff,$0008,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c0c8:
	dc.w $0004,$1039,$00aa,$84ff,$0008,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c0d8:
	dc.w $0004,$1036,$00aa,$84ff,$0008,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c0e8:
	dc.w $0004,$103f,$00ab,$84ff,$001a,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c0f8:
	dc.w $0004,$1042,$00ab,$84ff,$0016,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c108:
	dc.w $802d,$ffec,$ff98
	dc.w $0006,$1046,$00ad,$84ff,$0008,$0003,$0000
	dc.w $0006,$1047,$00ad,$84ff,$0008,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c12c:
	dc.w $802d,$ffec,$ff98
	dc.w $000c,$1044,$00ad,$84ff,$0008,$0003,$0000
	dc.w $0006,$1043,$00ad,$84ff,$0008,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c150:
	dc.w $802d,$ffe4,$ff98
	dc.w $0002,$1044,$00ad,$84ff,$0008,$0003,$0000
	dc.w $000a,$1045,$00ad,$84ff,$0008,$0003,$0000
	dc.w $0006,$1046,$00ad,$84ff,$0008,$0003,$0000
	dc.w $0006,$1047,$00ad,$84ff,$0008,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c190:
	dc.w $802d,$ffdc,$ff98
	dc.w $0012,$1045,$00ad,$84ff,$0008,$0003,$0000
	dc.w $0006,$1046,$00ad,$84ff,$0008,$0003,$0000
	dc.w $0006,$1047,$00ad,$84ff,$0008,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c1c2:
	dc.w $802e,$0004,$ffb4
	dc.w $0006,$1049,$00af,$84ff,$0006,$0003,$0000
	dc.w $0006,$1048,$00af,$84ff,$0009,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c1e6:
	dc.w $802e,$0004,$ffb4
	dc.w $000c,$104b,$00af,$84ff,$0006,$0003,$0000
	dc.w $0006,$1048,$00af,$84ff,$0009,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c20a:
	dc.w $802e,$fffc,$ffb4
	dc.w $0002,$1049,$00af,$84ff,$0006,$0003,$0000
	dc.w $000a,$104a,$00af,$84ff,$000e,$0003,$0000
	dc.w $0006,$104b,$00af,$84ff,$0006,$0003,$0000
	dc.w $0006,$1048,$00af,$84ff,$0009,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c24a:
	dc.w $802e,$fff4,$ffb4
	dc.w $0012,$104a,$00af,$84ff,$000e,$0003,$0000
	dc.w $0006,$104b,$00af,$84ff,$0006,$0003,$0000
	dc.w $0006,$1048,$00af,$84ff,$0009,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c27c:
	dc.w $802f,$fff2,$ffbe
	dc.w $0006,$1056,$00b1,$84ff,$0010,$0003,$0000
	dc.w $0006,$1057,$00b1,$84ff,$0007,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c2a0:
	dc.w $802f,$fff2,$ffbe
	dc.w $000c,$1054,$00b1,$84ff,$0010,$0003,$0000
	dc.w $0006,$1053,$00b1,$84ff,$0010,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c2c4:
	dc.w $802f,$ffee,$ffba
	dc.w $0002,$1054,$00b0,$84ff,$0010,$0003,$0000
	dc.w $000a,$1055,$00b0,$84ff,$0010,$0003,$0000
	dc.w $0006,$1056,$00b0,$84ff,$0010,$0003,$0000
	dc.w $0006,$1057,$00b1,$84ff,$0007,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c304:
	dc.w $802f,$ffda,$ffb8
	dc.w $0012,$1055,$00b0,$84ff,$0010,$0003,$0000
	dc.w $0006,$1056,$00b0,$84ff,$0010,$0003,$0000
	dc.w $0006,$1057,$00b1,$84ff,$0007,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c336:
	dc.w $802e,$0004,$ffb4
	dc.w $0006,$1050,$00b2,$84ff,$0000,$0003,$0000
	dc.w $0003,$1051,$00b2,$84ff,$0000,$0003,$0000
	dc.w $0003,$1052,$00b2,$84ff,$fff4,$0003,$0000
	dc.w $0003,$1029,$00b3,$84ff,$0000,$0000,$0000
	dc.w $0003,$102a,$00b3,$84ff,$0000,$fff6,$0000
	dc.w $0003,$102b,$00b3,$84ff,$0000,$0006,$0000
	dc.w $0003,$102c,$00b3,$84ff,$0000,$0010,$0000
	dc.w $0003,$102d,$00b3,$84ff,$0008,$fffb,$0000
	dc.w $0003,$102e,$00b3,$84ff,$0000,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c3bc:
	dc.w $802d,$ffe8,$ff98
	dc.w $0006,$104d,$00b2,$84ff,$0000,$0003,$0000
	dc.w $0003,$104e,$00b2,$84ff,$fffa,$0003,$0000
	dc.w $0003,$104f,$00b2,$84ff,$ffee,$0003,$0000
	dc.w $0003,$1029,$00b3,$84ff,$0000,$0000,$0000
	dc.w $0003,$102a,$00b3,$84ff,$0000,$fff6,$0000
	dc.w $0003,$102b,$00b3,$84ff,$0000,$0006,$0000
	dc.w $0003,$102c,$00b3,$84ff,$0000,$0010,$0000
	dc.w $0003,$102d,$00b3,$84ff,$0008,$fffb,$0000
	dc.w $0003,$102e,$00b3,$84ff,$0000,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c442:
	dc.w $802e,$fffe,$ffb4
	dc.w $0004,$1065,$00b4,$84ff,$fff8,$000b,$0000
	dc.w $0006,$1066,$00b4,$84ff,$0000,$0018,$0000
	dc.w $0004,$1067,$00b4,$84ff,$0000,$000e,$0000
	dc.w $0006,$1068,$00b4,$84ff,$0000,$0010,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c482:
	dc.w $0004,$1068,$00b4,$7cff,$0000,$0008,$0000
	dc.w $0004,$105e,$00b4,$7cff,$0000,$0003,$0000
	dc.w $0004,$105f,$00b4,$7cff,$ffff,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c4ae:
	dc.w $8030,$fff0,$ffb0
	dc.w $0008,$1052,$00b2,$84ff,$fff4,$000e,$0000
	dc.w $0004,$105b,$00b2,$84ff,$0000,$0003,$0000
	dc.w $0004,$105c,$00b2,$84ff,$0000,$0008,$0000
	dc.w $0004,$1067,$00b2,$84ff,$0000,$fff8,$0000
	dc.w $0004,$1068,$00b2,$84ff,$0000,$0010,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c4fc:
	dc.w $8030,$fff0,$ffb0
	dc.w $0008,$104e,$00b2,$84ff,$fffa,$0003,$0000
	dc.w $0004,$105b,$00b2,$84ff,$0000,$0003,$0000
	dc.w $0004,$105c,$00b2,$84ff,$0000,$0008,$0000
	dc.w $0004,$1067,$00b2,$84ff,$0000,$0010,$0000
	dc.w $0004,$1068,$00b2,$84ff,$0000,$0010,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c54a:
	dc.w $0004,$1068,$00b4,$7cff,$0000,$0008,$0000
	dc.w $0008,$105d,$00b5,$7cff,$0000,$0000,$0000
	dc.w $0008,$105c,$00b5,$7cff,$0000,$000c,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c576:
	dc.w $0004,$105e,$00b5,$7cff,$0000,$0003,$0000
	dc.w $000c,$105f,$00b5,$7cff,$ffff,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c594:
	dc.w $8030,$0008,$ff98
	dc.w $0013,$1185,$00b2,$7cff,$0000,$0014,$0000
	dc.w $0004,$105b,$00b2,$7cff,$0000,$0003,$0000
	dc.w $0004,$105c,$00b4,$7cff,$0000,$0008,$0000
	dc.w $0004,$1067,$00b2,$84ff,$0000,$0010,$0000
	dc.w $0004,$1068,$00b2,$84ff,$0000,$0010,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c5e2:
	dc.w $8030,$fff0,$ffc8
	dc.w $0002,$105b,$00b2,$7cff,$0000,$0003,$0000
	dc.w $0002,$105c,$00b4,$7cff,$0000,$0008,$0000
	dc.w $0002,$1186,$00b4,$7cff,$0002,$ffff,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c614:
	dc.w $8000,$0000
	dc.l loc_08c336

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c61c:
	dc.w $8037
	dc.l loc_08ac92
	dc.w $8002,$188d
	dc.w $8024
	dc.w $8043,$0020
	dc.w $8044,$0028

	dc.w $804e
	dc.l $fff80000,$00010000

	dc.w $0003,$1068,$0000,$7cff,$0004,$0003,$0000
	dc.w $0003,$1186,$0000,$7cff,$fffc,$fff9,$0000
	dc.w $0001,$1188,$0000,$7cff,$fffa,$fff3,$0001

	dc.w $804b
	dc.l $ffff0000,$fff88000,$0000c000

	dc.w $0002,$1188,$0000,$7cff,$fffa,$fff3,$0001
	dc.w $0003,$1187,$0000,$7cff,$0000,$ffed,$0001
	dc.w $0002,$1188,$0000,$7cff,$0004,$0061,$0002
	dc.w $0002,$1187,$0000,$7cff,$0000,$0059,$0002
	dc.w $0002,$1188,$0000,$7cff,$fffa,$fff3,$0001
	dc.w $0002,$1187,$0000,$7cff,$0000,$ffed,$0001
	dc.w $0002,$1188,$0000,$7cff,$0004,$0061,$0002
	dc.w $0002,$1187,$0000,$7cff,$0000,$0059,$0002
	dc.w $0002,$1188,$0000,$7cff,$fffa,$fff3,$0001
	dc.w $0002,$1187,$0000,$7cff,$0000,$ffed,$0001
	dc.w $803a,$df00
	dc.w $0002,$1004,$0000,$7cff,$fffe,$fff5,$0000
	dc.w $803a,$0000
	dc.w $0002,$1007,$0000,$7cff,$fffe,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c724:
	dc.w $8003,$1870
	dc.w $0003,$1007,$0000,$7cff,$fffe,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c738:
	dc.w $0004,$107f,$0000,$7cff,$0000,$0003,$0000
	dc.w $0004,$1080,$0000,$7cff,$0000,$0003,$0000
	dc.w $0004,$1081,$0000,$7cff,$0000,$0003,$0000
	dc.w $0004,$1082,$0000,$7cff,$0000,$0003,$0000
	dc.w $0008,$107d,$0000,$7cff,$0000,$0003,$0000
	dc.w $803a,$df00
	dc.w $0002,$1083,$0000,$7cff,$0000,$0003,$0000
	dc.w $803a,$0000
	dc.w $0002,$1084,$0000,$7cff,$0000,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c7a4:
	dc.w $0004,$107f,$0000,$7cff,$0000,$0003,$0000
	dc.w $0004,$1080,$0000,$7cff,$0000,$0003,$0000
	dc.w $0004,$1081,$0000,$7cff,$0000,$0003,$0000
	dc.w $0004,$1082,$0000,$7cff,$0000,$0003,$0000
	dc.w $0004,$107d,$0000,$7cff,$0000,$0003,$0000
	dc.w $0002,$1083,$0000,$7cff,$0000,$0003,$0000
	dc.w $0002,$1084,$0000,$7cff,$0000,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c808:;roland808
	dc.w $0006,$1085,$00b6,$7cff,$0003,$0003,$0000
	dc.w $0006,$1086,$00b6,$7cff,$0002,$0003,$0000
	dc.w $0006,$1087,$00b6,$7cff,$0002,$0003,$0000
	dc.w $0006,$1088,$00b6,$7cff,$0002,$0003,$0000
	dc.w $0006,$1089,$00b6,$7cff,$fffa,$0003,$0000
	dc.w $0006,$108a,$00b6,$7cff,$0002,$0003,$0000
	dc.w $0006,$108b,$00b6,$7cff,$0003,$0003,$0000
	dc.w $0006,$108c,$00b6,$7cff,$0003,$0003,$0000
	dc.w $0006,$108d,$00b6,$7cff,$0002,$0003,$0000
	dc.w $0006,$108e,$00b6,$7cff,$0002,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_08c808

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c89c:
	dc.w $0004,$118f,$0000,$80ff,$fff9,$0003,$0000
	dc.w $0004,$1190,$0000,$80ff,$fff9,$0003,$0000
	dc.w $0008,$1191,$0000,$80ff,$fff9,$0003,$0000
	dc.w $0008,$1190,$0000,$80ff,$fff9,$0003,$0000
	dc.w $0004,$118f,$0000,$80ff,$fff9,$0003,$0000
	dc.w $803a,$df00
	dc.w $0002,$118f,$0000,$80ff,$fff9,$0003,$0000
	dc.w $803a,$0000
	dc.w $0002,$118f,$0000,$80ff,$fff9,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c908:
	dc.w $8030,$fff0,$ffb8

loc_08c90e:
	dc.w $0003,$00d8,$00b2,$7cff,$0000,$0000,$0500
	dc.w $0001,$00d9,$00b2,$7cff,$0000,$0000,$0500
	dc.w $8000,$0000
	dc.l loc_08c90e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c932:
	dc.w $8030,$fff0,$ffb8

loc_08c938:
	dc.w $0002,$105b,$00b2,$7cff,$0000,$0000,$0600
	dc.w $0002,$105b,$00b2,$7cff,$fffd,$0000,$0200
	dc.w $0002,$105b,$00b2,$7cff,$0000,$0000,$0400
	dc.w $0002,$105b,$00b2,$7cff,$0003,$0000,$0700
	dc.w $8000,$0000
	dc.l loc_08c938

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c978:
	dc.w $8030,$fff0,$ffb8

loc_08c97e:
	dc.w $0002,$1065,$00b2,$7cff,$0000,$0008,$0800
	dc.w $0002,$1065,$00b2,$7cff,$0002,$0005,$0900
	dc.w $0002,$1065,$00b2,$7cff,$fffe,$0007,$0800
	dc.w $0002,$1065,$00b2,$7cff,$0000,$0004,$0900
	dc.w $0002,$1065,$00b2,$7cff,$0002,$0007,$0800
	dc.w $0002,$1065,$00b2,$7cff,$fffe,$0005,$0900
	dc.w $8000,$0000
	dc.l loc_08c97e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08c9da:
	dc.w $0008,$1085,$00b6,$7cff,$0003,$0003,$0000
	dc.w $0006,$1086,$00b6,$7cff,$0002,$0003,$0000
	dc.w $000c,$1087,$00b6,$7cff,$0002,$0003,$0000
	dc.w $0004,$1088,$00b6,$7cff,$0002,$0003,$0000
	dc.w $8001

;||||||||||||||||||||||||||
;Attack Start
;||||||||||||||||||||||||||

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08ca14:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08ca46

	dc.w $803e,$0821,$0100
	dc.w $803f,$0602,$0401,$0402
	dc.w $8040,$0305,$0204,$04ff
	dc.w $8042,$0301
	dc.w $8041,$0601,$1021

	dc.w $8036
	dc.l loc_08b58c

loc_08ca46:
	dc.w $8005,$189d
	dc.w $0002,$0ff9,$0018,$7cff,$fffc,$0003,$0000
	dc.w $0002,$0ffd,$0015,$7cff,$ffe3,$0003,$0000
	dc.w $0002,$0ffe,$0015,$7cff,$ffe3,$0003,$0000
	dc.w $0004,$0fff,$0018,$78ff,$fff4,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08ca84:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08cab6

	dc.w $803e,$0821,$0100
	dc.w $803f,$0602,$0401,$0402
	dc.w $8040,$0705,$0606,$05ff
	dc.w $8042,$0701
	dc.w $8041,$0401,$102a

	dc.w $8036
	dc.l loc_08b58c

loc_08cab6:
	dc.w $8005,$189d
	dc.w $0003,$0ff9,$0018,$7cff,$fffc,$0003,$0000
	dc.w $0003,$0ffa,$0019,$7cff,$ffeb,$0003,$0000
	dc.w $0006,$0ffb,$001a,$78ff,$ffeb,$0003,$0000
	dc.w $0005,$0ffc,$0018,$7cff,$fff4,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08caf4:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08cb26

	dc.w $803e,$0821,$0200
	dc.w $803f,$0601,$0401,$0402
	dc.w $8040,$0502,$0403,$04ff
	dc.w $8042,$0501
	dc.w $8041,$0601,$1124

	dc.w $8036
	dc.l loc_08b598

loc_08cb26:
	dc.w $8005,$189d
	dc.w $0002,$0fdc,$001c,$7cff,$0004,$0003,$0000
	dc.w $0002,$0fdd,$001c,$7cff,$0003,$0003,$0000
	dc.w $0003,$0fde,$001d,$7cff,$0003,$0003,$0000
	dc.w $0002,$0fdf,$001c,$78ff,$0004,$0003,$0000
	dc.w $0002,$0fdc,$001c,$7cff,$0004,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08cb72:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08cba4

	dc.w $803e,$082a,$0200
	dc.w $803f,$0604,$0402,$0802
	dc.w $8040,$0807,$0704,$08ff
	dc.w $8042,$0801
	dc.w $8041,$0601,$0d2b

	dc.w $8036
	dc.l loc_08b58c

loc_08cba4:
	dc.w $8005,$189d
	dc.w $0002,$10fe,$0021,$7cff,$fff9,$0002,$0000
	dc.w $0002,$10ff,$0022,$7cff,$ffe4,$0003,$0000
	dc.w $0003,$1100,$0023,$78ff,$ffd4,$0003,$0000
	dc.w $0004,$1103,$0024,$78ff,$ffd4,$0003,$0000
	dc.w $0004,$1104,$0022,$78ff,$ffe4,$0003,$0000
	dc.w $0004,$10fe,$0021,$7cff,$fff9,$0002,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08cbfe:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08cc30

	dc.w $803e,$082a,$0100
	dc.w $803f,$0604,$0402,$0802
	dc.w $8040,$0808,$0605,$10ff
	dc.w $8042,$0801
	dc.w $8041,$0601,$102e

	dc.w $8036
	dc.l loc_08b58c

loc_08cc30:
	dc.w $8005,$189d
	dc.w $0002,$10fe,$0021,$7cff,$fff9,$0002,$0000
	dc.w $0002,$10ff,$0022,$7cff,$ffe4,$0003,$0000
	dc.w $0002,$1100,$0024,$78ff,$ffd4,$0003,$0000
	dc.w $0005,$1101,$0025,$78ff,$ffd4,$0003,$0000
	dc.w $0004,$1102,$0026,$78ff,$ffd4,$0003,$0000
	dc.w $0004,$1103,$0024,$78ff,$ffd4,$0003,$0000
	dc.w $0004,$1104,$0022,$7cff,$ffe4,$0003,$0000
	dc.w $0004,$10fe,$0021,$7cff,$fff9,$0002,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08cca6:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08ccd8

	dc.w $803e,$0a29,$0200
	dc.w $803f,$0402,$0401,$0402
	dc.w $8040,$0407,$0306,$06ff
	dc.w $8042,$0401
	dc.w $8041,$0101,$f221

	dc.w $8036
	dc.l loc_08b598

loc_08ccd8:
	dc.w $8005,$189d
	dc.w $0003,$0fe1,$0027,$7cff,$000c,$0003,$0000
	dc.w $0003,$0fe2,$0028,$78ff,$000c,$0003,$0000
	dc.w $0003,$0fe3,$0028,$78ff,$000c,$0003,$0000
	dc.w $0006,$0fe1,$0027,$7cff,$000c,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08cd16:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08cd44

	dc.w $803e,$0a75,$0200
	dc.w $803f,$1802,$0c04,$1002
	dc.w $8040,$080a,$0404,$12ff
	dc.w $8041,$0701,$1227

	dc.w $8036
	dc.l loc_08b58c

loc_08cd44:
	dc.w $8004,$00cf
	dc.w $802b,$00d3
	dc.w $0003,$0ff2,$002a,$7cff,$0001,$0003,$0000
	dc.w $0001,$0ff3,$002b,$78ff,$fff8,$0003,$0000
	dc.w $8045,$0005
	dc.w $0002,$0ff4,$002c,$78ff,$fff0,$0003,$0000
	dc.w $0002,$0ff5,$002d,$78ff,$fff8,$0003,$0000
	dc.w $0008,$0ff6,$002e,$7cff,$ffe7,$0003,$0000
	dc.w $0006,$0ff7,$002f,$7cff,$fff9,$0003,$0000
	dc.w $0004,$0ff8,$0030,$7cff,$0000,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08cdb4:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08cde2

	dc.w $803e,$0855,$0100
	dc.w $803f,$1804,$1205,$1404
	dc.w $8040,$0000,$0503,$20ff
	dc.w $8041,$0401,$1e3f

	dc.w $8036
	dc.l loc_08b58c

loc_08cde2:
	dc.w $8004,$00ce
	dc.w $802b,$00d5
	dc.w $0003,$0feb,$0031,$7cff,$fffe,$0003,$0000
	dc.w $0002,$0fec,$0032,$78ff,$0000,$0003,$0000
	dc.w $8045,$0005
	dc.w $0003,$0fed,$0033,$78ff,$fffa,$0003,$0000
	dc.w $0003,$0fee,$0034,$7cff,$0004,$0003,$0000
	dc.w $0004,$0fef,$0035,$7cff,$0006,$0003,$0000
	dc.w $000e,$0ff0,$0035,$7cff,$0006,$0003,$0000
	dc.w $0007,$0ff1,$0036,$7cff,$0002,$0003,$0000
	dc.w $0004,$0feb,$0031,$7cff,$fffe,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08ce60:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08ce8e

	dc.w $803e,$0a75,$0b00
	dc.w $803f,$1402,$1205,$1404
	dc.w $8040,$0000,$0803,$20ff
	dc.w $8041,$0301,$fe40

	dc.w $8036
	dc.l loc_08b598

loc_08ce8e:
	dc.w $8004,$00ce
	dc.w $802b,$00d6
	dc.w $0003,$0fd5,$0037,$7cff,$0004,$0003,$0000
	dc.w $0002,$0fd6,$0038,$78ff,$0005,$0003,$0000
	dc.w $0003,$0fd7,$003a,$78ff,$0005,$0003,$0000
	dc.w $8045,$0003
	dc.w $0003,$0fd8,$003b,$78ff,$0005,$0003,$0000
	dc.w $0006,$0fd9,$003c,$7cff,$0005,$0003,$0000
	dc.w $000c,$0fda,$003c,$7cff,$0005,$0003,$0000
	dc.w $0008,$0fdb,$003d,$7cff,$0005,$0003,$0000
	dc.w $0006,$0fe0,$003e,$7cff,$0009,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08cf0c:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08cf3a

	dc.w $803e,$082c,$0100
	dc.w $803f,$1802,$1004,$1004
	dc.w $8040,$070f,$030d,$0fff
	dc.w $8041,$0e02,$fd1f

	dc.w $8036
	dc.l loc_08b58c

loc_08cf3a:
	dc.w $8004,$18a1
	dc.w $802b,$00d7
	dc.w $0002,$10ee,$003f,$7cff,$0009,$0003,$0000
	dc.w $0001,$10ef,$0040,$7cff,$000a,$0003,$0000
	dc.w $8045,$0005
	dc.w $0003,$10f0,$0042,$78ff,$000a,$0003,$0000
	dc.w $000a,$10f1,$0043,$78ff,$000a,$0003,$0000
	dc.w $0006,$10f2,$0044,$78ff,$0009,$0003,$0000
	dc.w $0005,$10f3,$0045,$78ff,$0009,$0003,$0000
	dc.w $0004,$10a2,$0046,$7cff,$0008,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08cfaa:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08cfd8

	dc.w $803e,$086e,$0100
	dc.w $803f,$180a,$1806,$1404
	dc.w $8040,$0000,$1107,$0fff
	dc.w $8041,$0c01,$0623

	dc.w $8036
	dc.l loc_08b58c

loc_08cfd8:
	dc.w $8004,$189e
	dc.w $802b,$00d8
	dc.w $0001,$10c1,$0058,$7cff,$0000,$0003,$0000
	dc.w $8008,$000a,$0000,$0000,$0000
	dc.w $0003,$10c1,$0058,$7cff,$0000,$0003,$0000
	dc.w $8008,$0007,$0000,$0000,$0000
	dc.w $0004,$10c2,$0047,$80ff,$0000,$0003,$0000
	dc.w $8008,$0005,$0000,$0000,$0000
	dc.w $0004,$10f5,$0048,$84ff,$0000,$0002,$0000
	dc.w $8008,$0000,$0000,$0000,$0000
	dc.w $0003,$10f6,$0049,$84ff,$0000,$0002,$0000
	dc.w $0002,$10f7,$004a,$84ff,$fff6,$0002,$0000
	dc.w $8045,$0005
	dc.w $0003,$10f8,$004c,$88ff,$0007,$0002,$0000
	dc.w $0004,$10f9,$004e,$78ff,$0000,$0002,$0000
	dc.w $0004,$10fa,$0050,$78ff,$0000,$0002,$0000
	dc.w $0004,$10fb,$004b,$7cff,$0007,$0002,$0000
	dc.w $0004,$10fc,$004a,$7cff,$fff6,$0002,$0000
	dc.w $0003,$10a2,$0046,$7cff,$0008,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08d0b6:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08d0e4

	dc.w $803e,$0a2f,$0b00
	dc.w $803f,$180a,$1806,$1802
	dc.w $8040,$0006,$080c,$16ff
	dc.w $8041,$0201,$0932

	dc.w $8036
	dc.l loc_08b598

loc_08d0e4:
	dc.w $8004,$18a1
	dc.w $802b,$00d4
	dc.w $0002,$0fe4,$0051,$7cff,$000b,$0003,$0000
	dc.w $0002,$0fe5,$0052,$78ff,$000b,$0003,$0000
	dc.w $0004,$0fe6,$0053,$78ff,$000b,$0003,$0000
	dc.w $8045,$0003
	dc.w $000c,$0fe7,$0054,$78ff,$000b,$0003,$0000
	dc.w $000a,$0fe8,$0053,$7cff,$000b,$0003,$0000
	dc.w $0006,$0fe9,$0052,$7cff,$000b,$0003,$0000
	dc.w $0006,$0fea,$0051,$7cff,$000b,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08d154:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08d182

	dc.w $803e,$194c,$0100
	dc.w $803f,$0c06,$1206,$1404
	dc.w $8040,$0600,$1409,$1000
	dc.w $8041,$0e03,$fd1e

	dc.w $8036
	dc.l loc_08b58c

loc_08d182:
	dc.w $802c
	dc.w $0001,$10c1,$0058,$7cff,$fffc,$0003,$0000
	dc.w $802a,$0082
	dc.w $0003,$10c1,$0058,$7cff,$fffc,$0003,$0000
	dc.w $8008,$0008,$0000,$0000,$0000
	dc.w $0002,$10c2,$0059,$7cff,$fffe,$0003,$0000
	dc.w $8008,$0004,$0000,$0000,$0000
	dc.w $0002,$109c,$005a,$7cff,$0000,$0003,$0000
	dc.w $0002,$109d,$005b,$7cff,$0006,$0003,$0000
	dc.w $0003,$109e,$005c,$7cff,$0006,$0003,$0000
	dc.w $0007,$109f,$005d,$7cff,$0006,$0003,$0000
	dc.w $8045,$0008
	dc.w $8008,$0001,$8000,$0000,$0000
	dc.w $0005,$10a0,$005e,$7cff,$0009,$0003,$0000
	dc.w $8008,$0000,$c000,$0000,$0000
	dc.w $803e,$194c,$0200
	dc.w $0004,$10a1,$005f,$7cff,$0008,$0003,$0000
	dc.w $8008,$0000,$0000,$0000,$0000
	dc.w $0004,$10a2,$0060,$7cff,$0009,$0003,$0000
	dc.w $000c,$1001,$0061,$7cff,$fffe,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08d260:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08d28e

	dc.w $803e,$1a2c,$0b00
	dc.w $803f,$1006,$0c06,$1804
	dc.w $8040,$0700,$0610,$0a00
	dc.w $8041,$0104,$0729

	dc.w $8036
	dc.l loc_08b598

loc_08d28e:
	dc.w $802c
	dc.w $0001,$10d4,$0055,$7cff,$0008,$000a,$0000
	dc.w $802a,$0084
	dc.w $8011,$001c,$0004,$e800,$0000

	dc.w $804e
	dc.l $00060000,$ffffd000

	dc.w $0005,$10d4,$0055,$7cff,$0008,$000a,$0000
	dc.w $8045,$0006
	dc.w $8011,$001d,$0005,$e000,$f0f4,$ff00
	dc.w $0008,$10d5,$0056,$7cff,$000c,$fffc,$0000
	dc.w $0008,$10d6,$0056,$7cff,$000c,$fffc,$0000
	dc.w $000a,$10d7,$0055,$7cff,$0014,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08d300:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_08d32e

	dc.w $803e,$0970,$0800
	dc.w $803f,$0802,$0402,$0802
	dc.w $8040,$0000,$040a,$ffff
	dc.w $8041,$0201,$193f

	dc.w $8036
	dc.l loc_08b5a4

loc_08d32e:
	dc.w $8005,$189f
	dc.w $0002,$1008,$0085,$78ff,$fffb,$0007,$0000
	dc.w $0002,$1009,$0086,$78ff,$fff7,$0007,$0000
	dc.w $8045,$0002
	dc.w $000a,$100e,$008b,$78ff,$fff6,$0007,$0000
	dc.w $0003,$100b,$0088,$7cff,$fff1,$0007,$0000
	dc.w $0003,$100c,$0089,$7cff,$ffed,$0007,$0000
	dc.w $0003,$100d,$008a,$7cff,$fff5,$0007,$0000
	dc.w $0004,$1005,$00a4,$7cff,$0000,$0003,$0000
	dc.w $0004,$1006,$00a5,$7cff,$0000,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08d3a8:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_08d3d6

	dc.w $803e,$0950,$0800
	dc.w $803f,$0802,$0402,$0802
	dc.w $8040,$0000,$040d,$ffff
	dc.w $8041,$0201,$fb3e

	dc.w $8036
	dc.l loc_08b5a4

loc_08d3d6:
	dc.w $8005,$1898
	dc.w $0002,$1015,$0092,$78ff,$fffa,$0007,$0000
	dc.w $0002,$1016,$0093,$78ff,$fff4,$0007,$0000
	dc.w $8045,$0002
	dc.w $0001,$1017,$0094,$78ff,$fff6,$0007,$0000
	dc.w $000c,$1018,$0095,$78ff,$fff6,$0008,$0000
	dc.w $0002,$101a,$0096,$7cff,$fff6,$0008,$0000
	dc.w $0003,$101b,$0093,$7cff,$fff6,$0008,$0000
	dc.w $0003,$1015,$0092,$78ff,$fffa,$0007,$0000
	dc.w $0004,$1005,$00a4,$7cff,$0000,$0003,$0000
	dc.w $0004,$1006,$00a5,$7cff,$0000,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08d45e:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_08d48c

	dc.w $803e,$096a,$0100
	dc.w $803f,$0802,$0403,$0a02
	dc.w $8040,$0000,$0606,$ffff
	dc.w $8041,$0401,$0831

	dc.w $8036
	dc.l loc_08b5a4

loc_08d48c:
	dc.w $8004,$1897
	dc.w $8049,$0216,$0001,$8000
	dc.w $0002,$100f,$008c,$78ff,$0001,$0008,$0000
	dc.w $0002,$1010,$008d,$78ff,$fff9,$0007,$0000
	dc.w $0002,$1011,$008e,$78ff,$0005,$0007,$0000
	dc.w $8045,$0002
	dc.w $0006,$1012,$008f,$78ff,$0008,$0005,$0000
	dc.w $0004,$1013,$0090,$78ff,$fffb,$0005,$0000
	dc.w $0004,$1014,$0091,$78ff,$fff2,$0005,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08d4f2:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_08d520

	dc.w $803e,$092a,$0100
	dc.w $803f,$0802,$0403,$0a02
	dc.w $8040,$0000,$0408,$ffff
	dc.w $8041,$0201,$f220

	dc.w $8036
	dc.l loc_08b5a4

loc_08d520:
	dc.w $8004,$189d
	dc.w $0002,$1023,$0097,$78ff,$0000,$0003,$0000
	dc.w $0002,$1024,$0098,$78ff,$0000,$fff4,$0000
	dc.w $8045,$0002

loc_08d544:
	dc.w $0004,$1025,$0099,$78ff,$fffd,$0002,$0000
	dc.w $0004,$1026,$0099,$78ff,$fffd,$0002,$0000
	dc.w $8000,$0000
	dc.l loc_08d544

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08d568:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_08d596

	dc.w $803e,$092a,$0100
	dc.w $803f,$0802,$0403,$0a02
	dc.w $8040,$0000,$0408,$ffff
	dc.w $8041,$0201,$f220

	dc.w $8036
	dc.l loc_08b5a4

loc_08d596:
	dc.w $8004,$189d
	dc.w $0002,$102f,$0097,$78ff,$0000,$0003,$0000
	dc.w $0002,$1030,$0098,$78ff,$0000,$0004,$0000
	dc.w $8045,$0002

loc_08d5ba:
	dc.w $0004,$1031,$0099,$78ff,$0002,$fffd,$0000
	dc.w $0004,$1032,$0099,$78ff,$0002,$fffd,$0000
	dc.w $8000,$0000
	dc.l loc_08d5ba

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08d5de:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_08d60c

	dc.w $803e,$0974,$0200
	dc.w $803f,$1002,$0c04,$1004
	dc.w $8040,$0000,$0406,$ffff
	dc.w $8041,$0401,$1943

	dc.w $8036
	dc.l loc_08b5a4

loc_08d60c:
	dc.w $8004,$189e
	dc.w $802b,$00da
	dc.w $0002,$1008,$0085,$78ff,$fffb,$0007,$0000
	dc.w $0002,$1009,$0086,$78ff,$fff7,$0007,$0000
	dc.w $8045,$0004
	dc.w $0006,$100a,$0087,$78ff,$fff5,$0007,$0000
	dc.w $0003,$100b,$0088,$78ff,$fff1,$0007,$0000
	dc.w $0003,$100c,$0089,$78ff,$ffed,$0007,$0000
	dc.w $0003,$100d,$008a,$78ff,$fff5,$0007,$0000
	dc.w $0004,$1005,$00a4,$7cff,$0000,$0003,$0000
	dc.w $0004,$1006,$00a5,$7cff,$0000,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08d68a:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_08d6b8

	dc.w $803e,$0954,$0200
	dc.w $803f,$1002,$0c04,$1004
	dc.w $8040,$0000,$0408,$ffff
	dc.w $8041,$0101,$fb3e

	dc.w $8036
	dc.l loc_08b5a4

loc_08d6b8:
	dc.w $8004,$18a3
	dc.w $802b,$00d9
	dc.w $0002,$1015,$0092,$78ff,$fffa,$0007,$0000
	dc.w $0002,$1016,$0093,$78ff,$fff4,$0007,$0000
	dc.w $8045,$0004
	dc.w $0002,$1017,$0094,$78ff,$fff6,$0007,$0000
	dc.w $0002,$1018,$0095,$78ff,$fff6,$0008,$0000
	dc.w $0002,$1019,$0096,$78ff,$fff6,$0008,$0000
	dc.w $0002,$101a,$0096,$78ff,$fff6,$0008,$0000
	dc.w $0003,$101b,$0093,$7cff,$fff6,$0008,$0000
	dc.w $0003,$1015,$0092,$7cff,$fffa,$0007,$0000
	dc.w $0004,$1005,$00a4,$7cff,$0000,$0003,$0000
	dc.w $0004,$1006,$00a5,$7cff,$0000,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08d752:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_08d780

	dc.w $803e,$096c,$0200
	dc.w $803f,$1002,$0e05,$1204
	dc.w $8040,$0000,$0606,$ffff
	dc.w $8041,$0401,$0831

	dc.w $8036
	dc.l loc_08b5a4

loc_08d780:
	dc.w $8004,$1897
	dc.w $802b,$00d9
	dc.w $0002,$100f,$008c,$78ff,$0001,$0008,$0000
	dc.w $0002,$1010,$008d,$78ff,$fff9,$0007,$0000
	dc.w $0002,$1011,$008e,$78ff,$0005,$0007,$0000
	dc.w $8045,$0004
	dc.w $0006,$1012,$008f,$78ff,$0008,$0005,$0000
	dc.w $0004,$1013,$0090,$78ff,$fffb,$0005,$0000
	dc.w $0004,$1014,$0091,$78ff,$fff2,$0005,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08d7e2:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_08d810

	dc.w $803e,$092c,$0200
	dc.w $803f,$1002,$0e05,$1204
	dc.w $8040,$0000,$0408,$ffff
	dc.w $8041,$0201,$f220

	dc.w $8036
	dc.l loc_08b5a4

loc_08d810:
	dc.w $8004,$18a1
	dc.w $802b,$00db
	dc.w $0002,$1023,$0097,$78ff,$0000,$0003,$0000
	dc.w $0002,$1024,$0098,$78ff,$0000,$fff4,$0000
	dc.w $8045,$0004
	dc.w $0004,$1025,$0099,$78ff,$fffd,$0002,$0000
	dc.w $0004,$1026,$0099,$78ff,$fffd,$0002,$0000
	dc.w $0002,$1027,$0098,$78ff,$0000,$0003,$0000
	dc.w $0002,$1014,$0091,$78ff,$fff8,$fffe,$0000
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08d872:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_08d8a0

	dc.w $803e,$092c,$0200
	dc.w $803f,$1002,$0e05,$1204
	dc.w $8040,$0000,$0408,$ffff
	dc.w $8041,$0201,$f220

	dc.w $8036
	dc.l loc_08b5a4

loc_08d8a0:
	dc.w $8004,$18a1
	dc.w $802b,$00db
	dc.w $0002,$102f,$0097,$78ff,$0000,$0003,$0000
	dc.w $0002,$1030,$0098,$78ff,$0000,$0004,$0000
	dc.w $8045,$0004
	dc.w $0004,$1031,$0099,$78ff,$0002,$fffd,$0000
	dc.w $0004,$1032,$0099,$78ff,$0002,$fffd,$0000
	dc.w $0002,$1033,$0098,$78ff,$0000,$0004,$0000
	dc.w $0002,$1014,$0091,$78ff,$fff8,$fffe,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08d902:
	dc.w $8037
	dc.l loc_08a96e
	dc.w $8038
	dc.l loc_08d98e

	dc.w $803e,$2839,$0700
	dc.w $8046,$2800
	dc.w $803f,$0808,$0a05,$0800
	dc.w $8040,$0000,$0615,$1000
	dc.w $8043,$0007
	dc.w $8044,$0003
	dc.w $8041,$0601,$0a30
	dc.w $8039,$0000
	dc.w $8048,$0550,$0008
	dc.w $8048,$00be,$0000

	dc.w $8036
	dc.l loc_08b58c

;==========================
loc_08d94c:
	dc.w $8037
	dc.l loc_08a96e
	dc.w $8038
	dc.l loc_08daa0

	dc.w $803e,$2839,$0700
	dc.w $803f,$080a,$0a05,$0800
	dc.w $8040,$0000,$1215,$1000
	dc.w $8044,$0003
	dc.w $8041,$0601,$0a30
	dc.w $8039,$0000
	dc.w $8048,$0550,$0008
	dc.w $8048,$00be,$0000

	dc.w $8036
	dc.l loc_08b58c

;==========================
loc_08d98e:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $8047,$00b8,$0000
	dc.w $802c
	dc.w $0001,$10d8,$006f,$78ff,$fff2,$0003,$0000
	dc.w $802a,$007c
	dc.w $0001,$10d9,$0070,$78ff,$0008,$0003,$0000
	dc.w $0001,$10da,$0071,$78ff,$0008,$0003,$0000
	dc.w $8008,$0004,$0000,$0000,$0000
	dc.w $0001,$10db,$0072,$78ff,$0008,$0003,$0000
	dc.w $0001,$10dc,$0073,$78ff,$fff9,$0003,$0000
	dc.w $0001,$10dd,$0074,$78ff,$fff7,$0003,$0000
	dc.w $8045,$000c
	dc.w $8008,$0002,$0000,$0000,$0000
	dc.w $8048,$0550,$000f
	dc.w $0005,$10de,$0075,$78ff,$fff7,$0003,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $803e,$2839,$0700
	dc.w $0005,$10df,$0075,$78ff,$fff7,$0003,$0000
	dc.w $8047,$00b7,$ffff
	dc.w $8048,$0550,$0013
	dc.w $0005,$10e0,$0075,$78ff,$fff7,$0003,$0000
	dc.w $8047,$00b8,$ffff
	dc.w $8008,$0001,$0000,$0000,$0000
	dc.w $0006,$10e1,$0075,$78ff,$fff7,$0003,$0000
	dc.w $8008,$0000,$0000,$0000,$0000
	dc.w $0008,$10e2,$0077,$78ff,$fff7,$0003,$0000
	dc.w $0008,$1040,$006f,$78ff,$fff9,$0003,$0000
	dc.w $8001

;==========================
loc_08daa0:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $8047,$00b8,$0000
	dc.w $802c
	dc.w $0001,$10d8,$006f,$78ff,$fff2,$0003,$0000
	dc.w $802a,$007c
	dc.w $0002,$10d8,$006f,$78ff,$fff2,$0003,$0000
	dc.w $0003,$10d9,$0070,$78ff,$0008,$0003,$0000
	dc.w $0003,$10da,$0071,$78ff,$0008,$0003,$0000
	dc.w $8008,$0005,$0000,$0000,$0000
	dc.w $0003,$10db,$0072,$78ff,$0008,$0003,$0000
	dc.w $0003,$10dc,$0073,$78ff,$fff9,$0003,$0000
	dc.w $0003,$10dd,$0074,$78ff,$fff7,$0003,$0000
	dc.w $8045,$000c
	dc.w $8008,$0002,$8000,$0000,$0000
	dc.w $0005,$10de,$0075,$78ff,$fff7,$0003,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $803e,$2839,$0700
	dc.w $0005,$10df,$0075,$78ff,$fff7,$0003,$0000
	dc.w $8047,$00b7,$ffff
	dc.w $803f,$0a0a,$0a05,$0800
	dc.w $803e,$2839,$2800
	dc.w $8048,$0550,$001b
	dc.w $0005,$10e0,$0075,$78ff,$fff7,$0003,$0000
	dc.w $8047,$00b8,$ffff
	dc.w $8008,$0001,$4000,$0000,$0000
	dc.w $0006,$10e1,$0075,$78ff,$fff7,$0003,$0000
	dc.w $8008,$0000,$0000,$0000,$0000
	dc.w $0008,$10e2,$0077,$78ff,$fff7,$0003,$0000
	dc.w $0008,$1040,$006f,$78ff,$fff9,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;unused projectiles?
loc_08dbc8:
	dc.w $0002,$111a,$74ff,$ff70,$0048,$1100
	dc.w $0002,$111b,$74ff,$ff70,$0048,$1100
	dc.w $0002,$111c,$74ff,$ff70,$0048,$1100
	dc.w $0002,$111d,$74ff,$ff70,$0048,$1100
	dc.w $0002,$111e,$74ff,$ff70,$0048,$1100
	dc.w $0002,$111f,$74ff,$ff70,$0048,$1100
	dc.w $0002,$1120,$74ff,$ff70,$0048,$1100
	dc.w $0002,$1121,$74ff,$ff70,$0048,$1100
	dc.w $8001

loc_08dc2a:
	dc.w $0002,$111a,$74ff,$ff70,$004c,$1100
	dc.w $0002,$111b,$74ff,$ff70,$004c,$1100
	dc.w $0002,$111c,$74ff,$ff70,$004c,$1100
	dc.w $0002,$111d,$74ff,$ff70,$004c,$1100
	dc.w $0002,$111e,$74ff,$ff70,$004c,$1100
	dc.w $0002,$111f,$74ff,$ff70,$004c,$1100
	dc.w $0002,$1120,$74ff,$ff70,$004c,$1100
	dc.w $0002,$1121,$74ff,$ff70,$004c,$1100
	dc.w $8001

loc_08dc8c:
	dc.w $0002,$111a,$74ff,$ff70,$0050,$1100
	dc.w $0002,$111b,$74ff,$ff70,$0050,$1100
	dc.w $0002,$111c,$74ff,$ff70,$0050,$1100
	dc.w $0002,$111d,$74ff,$ff70,$0050,$1100
	dc.w $0002,$111e,$74ff,$ff70,$0050,$1100
	dc.w $0002,$111f,$74ff,$ff70,$0050,$1100
	dc.w $0002,$1120,$74ff,$ff70,$0050,$1100
	dc.w $0002,$1121,$74ff,$ff70,$0050,$1100
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08dcee:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08dd7e

	dc.w $803e,$3859,$1900
	dc.w $803f,$0800,$0204,$0600
	dc.w $8040,$0000,$060b,$1a00
	dc.w $8044,$0006
	dc.w $8041,$0f04,$ec45
	dc.w $8039,$0000
	dc.w $8048,$0550,$0006
	dc.w $8048,$00be,$0000
	dc.w $8047,$02b8,$0004

	dc.w $8036
	dc.l loc_08b58c

;==========================
loc_08dd36:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_08de64

	dc.w $803e,$3859,$1900
	dc.w $803f,$0a00,$0204,$0600
	dc.w $8040,$0000,$060b,$1e00
	dc.w $8044,$0006
	dc.w $8041,$0f04,$ec45
	dc.w $8039,$0000
	dc.w $8048,$0550,$0006
	dc.w $8048,$00be,$0000
	dc.w $8047,$02b8,$0004

	dc.w $8036
	dc.l loc_08b58c

;==========================
loc_08dd7e:
	dc.w $802c
	dc.w $0001,$10e3,$0063,$78ff,$0001,$0003,$0000
	dc.w $802a,$0080
	dc.w $0002,$10e3,$0063,$78ff,$0001,$0003,$0000
	dc.w $0003,$10e4,$0064,$78ff,$fff8,$0003,$0000
	dc.w $8045,$0004
	dc.w $803e,$3859,$1a00
	dc.w $0003,$10e5,$0065,$78ff,$fff9,$0003,$0000
	dc.w $803e,$3859,$1b00

	dc.w $800a
	dc.l loc_08df58

	dc.w $0003,$10e6,$0066,$78ff,$fff9,$0003,$0000
	dc.w $803e,$3859,$1b00
	dc.w $0003,$10e7,$0067,$78ff,$ffef,$0003,$0000
	dc.w $8048,$0550,$001c
	dc.w $803e,$3859,$2400
	dc.w $0002,$10e8,$0068,$78ff,$ffef,$0003,$0000
	dc.w $0002,$10e9,$0069,$78ff,$ffef,$0003,$0000
	dc.w $0003,$10ea,$006a,$78ff,$ffef,$0003,$0000
	dc.w $0003,$10eb,$006b,$78ff,$fff8,$0003,$0000
	dc.w $0004,$10ec,$006c,$78ff,$fff8,$0003,$0000
	dc.w $0005,$10ed,$006d,$78ff,$0000,$0003,$0000
	dc.w $0009,$0ff8,$006e,$78ff,$0000,$0003,$0000
	dc.w $8001

loc_08de64:
	dc.w $802c
	dc.w $0001,$10e3,$0063,$78ff,$0001,$0003,$0000
	dc.w $802a,$0080
	dc.w $0002,$10e3,$0063,$78ff,$0001,$0003,$0000
	dc.w $8008,$0004,$0000,$0000,$0000
	dc.w $0003,$10e4,$0064,$78ff,$fff8,$0003,$0000
	dc.w $8045,$0004
	dc.w $803e,$3859,$1a00
	dc.w $0003,$10e5,$0065,$78ff,$fff9,$0003,$0000
	dc.w $8008,$0000,$0000,$0000,$0000
	dc.w $803e,$3859,$1a00

	dc.w $800a
	dc.l loc_08df58

	dc.w $0003,$10e6,$0066,$78ff,$fff9,$0003,$0000
	dc.w $803e,$3859,$1b00
	dc.w $0003,$10e7,$0067,$78ff,$ffef,$0003,$0000
	dc.w $803e,$3859,$2500
	dc.w $0002,$10e8,$0068,$78ff,$ffef,$0003,$0000
	dc.w $0002,$10e9,$0069,$78ff,$ffef,$0003,$0000
	dc.w $0003,$10ea,$006a,$78ff,$ffef,$0003,$0000
	dc.w $0003,$10eb,$006b,$78ff,$fff8,$0003,$0000
	dc.w $0005,$10ec,$006c,$78ff,$fff8,$0003,$0000
	dc.w $0006,$10ed,$006d,$78ff,$0000,$0003,$0000
	dc.w $000b,$0ff8,$006e,$78ff,$0000,$0003,$0000
	dc.w $8001

loc_08df58:
	dc.w $0003,$1114,$74ff,$ffc3,$000c,$1100
	dc.w $0003,$1115,$74ff,$ffaf,$004a,$1100
	dc.w $0002,$1116,$74ff,$ffcf,$0052,$1100
	dc.w $0002,$1117,$74ff,$ffcf,$0052,$1100
	dc.w $0002,$1118,$74ff,$ffcf,$0052,$1100
	dc.w $0002,$1119,$74ff,$ffcf,$0052,$1100
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Kunai Throw
loc_08dfa2:
	dc.w $8037
	dc.l loc_08a876
	dc.w $8038
	dc.l loc_08dfe0

	dc.w $803e,$2802,$0f00
	dc.w $803f,$0a04,$0603,$0808
	dc.w $8040,$0000,$0a00,$1a00
	dc.w $8041,$0311,$2020
	dc.w $8039,$0000
	dc.w $8048,$0550,$0008
	dc.w $8048,$00be,$0000

	dc.w $8036
	dc.l loc_08b58c

loc_08dfe0:
	dc.w $8047,$00b6,$0000
	dc.w $802b,$00de

	dc.w $0006,$1105,$0081,$7cff,$ffff,$0003,$0000
	dc.w $0002,$1106,$0081,$7cff,$fffe,$0003,$0000

	dc.w $800a
	dc.l loc_08e042

	dc.w $0002,$1107,$0081,$7cff,$0000,$0003,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $8045,$0006
	dc.w $000e,$1108,$0081,$7cff,$0000,$0003,$0000
	dc.w $000c,$0fc8,$0081,$7cff,$fff9,$0003,$0000
	dc.w $8001

loc_08e042:
	dc.w $0002,$112b,$74ff,$fff2,$0042,$1000
	dc.w $0003,$112c,$74ff,$ffb4,$0048,$1000
	dc.w $0003,$112d,$74ff,$ffbc,$0058,$1000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Bomb Throw
loc_08e068:
	dc.w $8037
	dc.l loc_08a908
	dc.w $8038
	dc.l loc_08e0a6

	dc.w $803e,$2402,$2b00
	dc.w $803f,$1804,$0c06,$1208
	dc.w $8040,$0000,$0600,$1800
	dc.w $8041,$0311,$2020
	dc.w $8039,$0000
	dc.w $8048,$0550,$0008
	dc.w $8048,$00be,$0000

	dc.w $8036
	dc.l loc_08b58c

loc_08e0a6:
	dc.w $8047,$00b6,$0000
	dc.w $802b,$00df
	dc.w $0004,$1105,$0081,$7cff,$ffff,$0003,$0000
	dc.w $0002,$1109,$0081,$7cff,$fffd,$0003,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $8045,$0006
	dc.w $0002,$110a,$0081,$7cff,$fff8,$0003,$0000
	dc.w $000c,$1108,$0081,$7cff,$0000,$0003,$0000
	dc.w $000a,$0fc8,$0081,$7cff,$fff9,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
SaiCmbSupr:
	dc.w $8037
	dc.l PRGSaiCmbSup
	dc.w $8038
	dc.l loc_08e144

	dc.w $803e,$38a7,$1700
	dc.w $803f,$0200,$0006,$0200
	dc.w $8046,$1c00
	dc.w $8040,$0000,$0580,$1a00
	dc.w $8041,$0f04,$ec45
	dc.w $8039,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$00be,$0000

	dc.w $8036
	dc.l loc_08b58c

loc_08e144:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $8047,$00b9,$0000
	dc.w $802c
	dc.w $0001,$0ff9,$0018,$7cff,$fffc,$0003,$0000
	dc.w $8047,$00b9,$ffff
	dc.w $8008,$000a,$8000,$0000,$0000
	dc.w $0002,$0ff9,$0018,$7cff,$fffc,$0003,$0000
	dc.w $0002,$0ffa,$0019,$7cff,$ffeb,$0003,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $0002,$0ffb,$001a,$78ff,$ffeb,$0003,$0000
	dc.w $8008,$0000,$0000,$0000,$0000
	dc.w $0002,$10fe,$0021,$7cff,$fff9,$0002,$0000
	dc.w $8047,$00b7,$ffff
	dc.w $0002,$10ff,$0022,$7cff,$ffe4,$0003,$0000
	dc.w $802a,$007e
	dc.w $8047,$02b8,$0002
	dc.w $803e,$38af,$1800
	dc.w $0002,$1100,$0023,$78ff,$ffd4,$0003,$0000
	dc.w $803e,$38af,$1700
	dc.w $0002,$1101,$0025,$78ff,$ffd4,$0003,$0000
	dc.w $0002,$1102,$0026,$7cff,$ffd4,$0003,$0000
	dc.w $0002,$1103,$0024,$7cff,$ffd4,$0003,$0000
	dc.w $0002,$1104,$0022,$7cff,$ffe4,$0003,$0000
	dc.w $0002,$10ee,$003f,$7cff,$0009,$0003,$0000
	dc.w $0002,$10ef,$0040,$7cff,$000a,$0003,$0000
	dc.w $0002,$10f0,$0041,$7cff,$000a,$0003,$0000
	dc.w $803e,$38af,$1700
	dc.w $0002,$10f1,$0043,$78ff,$000a,$0003,$0000
	dc.w $0002,$10f2,$0044,$7cff,$0009,$0003,$0000
	dc.w $0002,$10f3,$0045,$7cff,$0009,$0003,$0000
	dc.w $0002,$0ff9,$0018,$7cff,$fffc,$0003,$0000
	dc.w $0002,$0ffa,$0019,$7cff,$ffeb,$0003,$0000
	dc.w $803e,$38a7,$1700
	dc.w $0002,$0ffb,$001a,$78ff,$ffeb,$0003,$0000
	dc.w $0002,$10fe,$0021,$7cff,$fff9,$0002,$0000
	dc.w $0002,$10ff,$0022,$7cff,$ffe4,$0003,$0000
	dc.w $803e,$38af,$1800
	dc.w $0002,$1100,$0023,$78ff,$ffd4,$0003,$0000
	dc.w $803e,$38af,$1700
	dc.w $0002,$1101,$0025,$78ff,$ffd4,$0003,$0000
	dc.w $0002,$1102,$0026,$7cff,$ffd4,$0003,$0000
	dc.w $0002,$1103,$0024,$7cff,$ffd4,$0003,$0000
	dc.w $0002,$1104,$0022,$7cff,$ffe4,$0003,$0000
	dc.w $0002,$109d,$005b,$7cff,$0006,$0003,$0000
	dc.w $0002,$109e,$005c,$7cff,$0006,$0003,$0000
	dc.w $0002,$109f,$005d,$7cff,$0006,$0003,$0000
	dc.w $803e,$38cf,$1700
	dc.w $0002,$10a0,$005e,$78ff,$0009,$0003,$0000
	dc.w $803e,$38cf,$1800
	dc.w $0002,$10a1,$005f,$78ff,$0008,$0003,$0000
	dc.w $0002,$10a2,$0060,$7cff,$0009,$0003,$0000
	dc.w $0002,$0ff2,$002a,$7cff,$0001,$0003,$0000
	dc.w $803e,$38f7,$1700
	dc.w $0002,$0ff3,$002b,$78ff,$fff8,$0003,$0000
	dc.w $803e,$38f7,$1800
	dc.w $0002,$0ff4,$002c,$78ff,$fff0,$0003,$0000
	dc.w $803e,$38f7,$1800
	dc.w $0002,$0ff5,$002d,$78ff,$fff8,$0003,$0000
	dc.w $0002,$0ff6,$002e,$7cff,$ffe7,$0003,$0000
	dc.w $803e,$38d7,$1700
	dc.w $0002,$0fec,$0032,$78ff,$0000,$0003,$0000
	dc.w $803e,$38d7,$1700
	dc.w $0002,$0fed,$0033,$78ff,$fffa,$0003,$0000
	dc.w $0002,$0fee,$0034,$7cff,$0004,$0003,$0000
	dc.w $0002,$0fef,$0035,$7cff,$0006,$0003,$0000
	dc.w $0002,$0ff0,$0035,$7cff,$0006,$0003,$0000
	dc.w $0002,$0ff1,$0036,$7cff,$0002,$0003,$0000
	dc.w $803e,$38f7,$1700
	dc.w $0002,$0ff3,$002b,$7cff,$fff8,$0003,$0000
	dc.w $803e,$38f7,$1800
	dc.w $0002,$110b,$0078,$7cff,$fff9,$0003,$0000
	dc.w $803e,$38f7,$1800
	dc.w $0002,$110c,$0079,$7cff,$fff9,$0003,$0000
	dc.w $0002,$110d,$007a,$7cff,$fff9,$0003,$0000
	dc.w $0002,$0ff1,$0036,$7cff,$0002,$0003,$0000
	dc.w $803e,$38d7,$1700
	dc.w $0002,$10e4,$0064,$78ff,$fff8,$0003,$0000
	dc.w $803e,$38d7,$1800
	dc.w $0002,$10e5,$0065,$78ff,$fff9,$0003,$0000

	dc.w $800a
	dc.l loc_08df58

	dc.w $803e,$38d7,$1d00
	dc.w $0003,$10e6,$0066,$78ff,$fff9,$0003,$0000
	dc.w $803e,$38d7,$1d00
	dc.w $0003,$10e7,$0067,$78ff,$ffef,$0003,$0000
	dc.w $803e,$38d7,$1d00
	dc.w $0002,$10e8,$0068,$78ff,$ffef,$0003,$0000
	dc.w $0002,$10e9,$0069,$78ff,$ffef,$0003,$0000
	dc.w $0002,$10ea,$006a,$78ff,$ffef,$0003,$0000
	dc.w $0002,$10eb,$006b,$78ff,$fff8,$0003,$0000
	dc.w $0002,$10ec,$006c,$78ff,$fff8,$0003,$0000
	dc.w $803e,$38d7,$1d00
	dc.w $0002,$10e4,$0064,$78ff,$fff8,$0003,$0000
	dc.w $803e,$38d7,$1d00
	dc.w $0002,$10e5,$0065,$78ff,$fff9,$0003,$0000
	dc.w $803e,$38d7,$1d00
	dc.w $0002,$10e6,$0066,$78ff,$fff9,$0003,$0000
	dc.w $803e,$38d7,$1d00
	dc.w $0002,$110e,$007b,$7cff,$ffef,$0003,$0000
	dc.w $0002,$110f,$007c,$7cff,$ffef,$0003,$0000
	dc.w $0002,$1110,$007d,$7cff,$ffef,$0003,$0000
	dc.w $8047,$02b8,$0005
	dc.w $803e,$38d7,$1e00
	dc.w $0002,$1111,$007e,$7cff,$fff0,$0003,$0000
	dc.w $803e,$38d7,$2800
	dc.w $0002,$1112,$007f,$7cff,$fff0,$0003,$0000
	dc.w $8002,$00e9
	dc.w $0018,$1113,$0080,$7cff,$fff0,$0003,$0000
	dc.w $0003,$0ff4,$0062,$7cff,$fff0,$0003,$0000
	dc.w $0003,$0ff6,$002e,$7cff,$ffe7,$0003,$0000
	dc.w $0003,$0ff7,$002f,$7cff,$fff9,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08e610:
	dc.w $0014,$10fe,$0021,$7cff,$fff9,$0002,$0000
	dc.w $0010,$0fb4,$0001,$7cff,$0000,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
SaiBirdFrg:
	dc.w $8037
	dc.l loc_08a610
	dc.w $8038
	dc.l loc_08e6e8

	dc.w $803e,$3882,$1d00
	dc.w $803f,$0300,$0006,$0200
	dc.w $8040,$0000,$0c00,$6000
	dc.w $8041,$0f12,$0e28
	dc.w $8039,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$00be,$0000

	dc.w $8036
	dc.l loc_08b58c

;==========================
loc_08e66c:
	dc.w $8037
	dc.l loc_08a796
	dc.w $8038
	dc.l loc_08ec00

	dc.w $803e,$3882,$1400
	dc.w $803f,$0200,$0006,$0200
	dc.w $8040,$0000,$0600,$6000
	dc.w $8041,$0711,$0e28
	dc.w $8039,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$00be,$0000

	dc.w $8036
	dc.l loc_08b58c

;==========================
loc_08e6aa:
	dc.w $8037
	dc.l loc_08a796
	dc.w $8038
	dc.l loc_08ea2e

	dc.w $803e,$3882,$1400
	dc.w $803f,$0200,$0006,$0200
	dc.w $8040,$0000,$0c00,$6000
	dc.w $8041,$0711,$0e28
	dc.w $8039,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$00be,$0000

	dc.w $8036
	dc.l loc_08b58c

;==========================
loc_08e6e8:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $8047,$00b8,$0000
	dc.w $8047,$00b9,$0000
	dc.w $802c
	dc.w $0001,$1084,$0082,$7cff,$0000,$0003,$0000
	dc.w $802a,$0087
	dc.w $0002,$1084,$0082,$7cff,$0000,$0003,$0000
	dc.w $0003,$1083,$0083,$7cff,$0000,$0003,$0000
	dc.w $8047,$00b9,$ffff
	dc.w $0003,$10a3,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0003,$10a4,$0084,$7cff,$ffff,$0003,$0000
	dc.w $8002,$00c3

	dc.w $800a
	dc.l loc_08e8c4

	dc.w $8047,$00b8,$ffff
	dc.w $0004,$10a5,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a6,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a7,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a8,$0084,$7cff,$ffff,$0003,$0000
	dc.w $8026,$0010
	dc.w $0004,$10a5,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a6,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a7,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a8,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a5,$0084,$7cff,$ffff,$0003,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $8047,$00b7,$ffff
	dc.w $0004,$10a6,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a7,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a8,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a5,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a6,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a7,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a8,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a5,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a6,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a7,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a8,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a4,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$1083,$0083,$7cff,$0000,$0003,$0000
	dc.w $0004,$1084,$0082,$7cff,$0000,$0003,$0000
	dc.w $0004,$0fb4,$0001,$7cff,$0000,$0003,$0000
	dc.w $8001

loc_08e8c4:
	dc.w $0001,$112e,$40ff,$0000,$00e0,$0c00
	dc.w $0001,$112e,$40ff,$0000,$00d0,$0c00
	dc.w $0001,$112e,$40ff,$0000,$00c0,$0c00
	dc.w $0001,$112e,$40ff,$0000,$00b0,$0c00
	dc.w $0001,$112e,$40ff,$0000,$00a0,$0c00
	dc.w $0001,$112e,$40ff,$0000,$0090,$0c00
	dc.w $0001,$112e,$40ff,$0000,$0080,$0c00
	dc.w $0001,$112e,$40ff,$0000,$0070,$0c00
	dc.w $0001,$112e,$40ff,$0000,$0068,$0c00
	dc.w $0001,$112e,$40ff,$0000,$0060,$0c00
	dc.w $0001,$112e,$40ff,$0000,$0058,$0c00
	dc.w $0001,$112e,$40ff,$0000,$0050,$0c00
	dc.w $0001,$112e,$40ff,$0000,$0048,$0c00
	dc.w $0001,$112e,$40ff,$0000,$0040,$0c00
	dc.w $0001,$112e,$40ff,$0000,$0038,$0c00
	dc.w $0001,$112e,$40ff,$0000,$0030,$0c00
	dc.w $0004,$112e,$40ff,$0000,$0028,$0c00
	dc.w $0004,$112f,$40ff,$0000,$0028,$0c00
	dc.w $0004,$1130,$40ff,$fff8,$0028,$0c00
	dc.w $0004,$1131,$40ff,$0000,$0028,$0c00
	dc.w $0004,$1132,$40ff,$fff8,$0028,$0c00
	dc.w $0004,$1133,$40ff,$fff8,$0028,$0c00
	dc.w $0004,$1134,$40ff,$fff8,$0028,$0c00
	dc.w $0004,$1135,$40ff,$0000,$0028,$0c00
	dc.w $0004,$1136,$40ff,$0000,$0028,$0c00
	dc.w $0004,$1137,$40ff,$0000,$0028,$0c00
	dc.w $0004,$1138,$40ff,$fff8,$0028,$0c00
	dc.w $0004,$1139,$40ff,$fff8,$0028,$0c00

loc_08ea14
	dc.w $0001,$0000,$6000
	dc.w $0001,$1139,$40ff,$fff8,$0028,$0c00
	dc.w $8000,$0000
	dc.l loc_08ea14

;==========================
loc_08ea2e:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $8047,$00b8,$0000
	dc.w $8047,$00b9,$0000
	dc.w $802c
	dc.w $0001,$1084,$0082,$7cff,$0000,$0003,$0000
	dc.w $802a,$008a
	dc.w $0002,$1084,$0082,$7cff,$0000,$0003,$0000
	dc.w $0003,$1083,$0083,$7cff,$0000,$0003,$0000
	dc.w $8047,$00b9,$ffff
	dc.w $0003,$10a3,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0003,$10a4,$0084,$7cff,$ffff,$0003,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$10a5,$0084,$7cff,$ffff,$0003,$0000
	dc.w $8004,$18bf
	dc.w $0004,$10a6,$0084,$7cff,$ffff,$0003,$0000
	dc.w $8047,$00b7,$ffff
	dc.w $0004,$10a7,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a8,$0084,$7cff,$ffff,$0003,$0000
	dc.w $8047,$00b8,$ffff
	dc.w $0004,$10a5,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a6,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a7,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a8,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a5,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a6,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a7,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a8,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a5,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a6,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a7,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a8,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a5,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a6,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a7,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a8,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a4,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$1083,$0083,$7cff,$ffff,$0003,$0000
	dc.w $0004,$1084,$0082,$7cff,$ffff,$0003,$0000
	dc.w $0004,$0fb4,$0001,$7cff,$0000,$0003,$0000
	dc.w $8001

;==========================
loc_08ec00:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $8047,$00b8,$0000
	dc.w $8047,$00b9,$0000
	dc.w $802c
	dc.w $0001,$1084,$0082,$7cff,$0000,$0003,$0000
	dc.w $802a,$0089
	dc.w $0001,$1083,$0083,$7cff,$0000,$0003,$0000
	dc.w $8047,$00b9,$ffff
	dc.w $0002,$10a3,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0002,$10a4,$0084,$7cff,$ffff,$0003,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$10a5,$0084,$7cff,$ffff,$0003,$0000
	dc.w $8004,$18bf
	dc.w $0004,$10a6,$0084,$7cff,$ffff,$0003,$0000
	dc.w $8047,$00b7,$ffff
	dc.w $0004,$10a7,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a8,$0084,$7cff,$ffff,$0003,$0000
	dc.w $8047,$00b8,$ffff
	dc.w $0004,$10a5,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a6,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a7,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a8,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a5,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a6,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a7,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a8,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a5,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a6,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a7,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a8,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a5,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a6,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a7,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a8,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$10a4,$0084,$7cff,$ffff,$0003,$0000
	dc.w $0004,$1083,$0083,$7cff,$ffff,$0003,$0000
	dc.w $0004,$1084,$0082,$7cff,$ffff,$0003,$0000
	dc.w $0004,$0fb4,$0001,$7cff,$0000,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08edc4:
	dc.w $0002,$111a,$40ff,$0000,$0000,$1100
	dc.w $0002,$111b,$40ff,$0000,$0000,$1100
	dc.w $0002,$111c,$40ff,$0000,$0000,$1100
	dc.w $0002,$111d,$40ff,$0000,$0000,$1100
	dc.w $0002,$111e,$40ff,$0000,$0000,$1100
	dc.w $0002,$111f,$40ff,$0000,$0000,$1100
	dc.w $0002,$1120,$40ff,$0000,$0000,$1100
	dc.w $0002,$1121,$40ff,$0000,$0000,$1100
	dc.w $8001

loc_08ee26:
	dc.w $0002,$111a,$88ff,$0000,$0000,$1100
	dc.w $0002,$111b,$88ff,$0000,$0000,$1100
	dc.w $0002,$111c,$88ff,$0000,$0000,$1100
	dc.w $0002,$111d,$88ff,$0000,$0000,$1100
	dc.w $0002,$111e,$88ff,$0000,$0000,$1100
	dc.w $0002,$111f,$88ff,$0000,$0000,$1100
	dc.w $0002,$1120,$88ff,$0000,$0000,$1100
	dc.w $0002,$1121,$88ff,$0000,$0000,$1100
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08ee88:
	dc.w $0005,$112e,$40ff,$0000,$0000,$0c00
	dc.w $0005,$112f,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1130,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1131,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1132,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1133,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1134,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1135,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1136,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1137,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1138,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1139,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1135,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1136,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1137,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1138,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1139,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1135,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1136,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1137,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1138,$40ff,$0000,$0000,$0c00
	dc.w $0005,$1139,$40ff,$0000,$0000,$0c00
	dc.w $8000,$0000
	dc.l loc_08ee88

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08ef98:
	dc.w $0001,$1139,$40ff,$0000,$0000,$0c00
	dc.w $0001,$0000,$6000
	dc.w $0001,$1139,$40ff,$0000,$0000,$0c00
	dc.w $0001,$0000,$6000
	dc.w $0001,$1139,$40ff,$0000,$0000,$0c00
	dc.w $0001,$0000,$6000
	dc.w $0001,$1139,$40ff,$0000,$0000,$0c00
	dc.w $0001,$0000,$6000
	dc.w $0001,$1139,$40ff,$0000,$0000,$0c00
	dc.w $0001,$0000,$6000
	dc.w $0001,$1139,$40ff,$0000,$0000,$0c00
	dc.w $0001,$0000,$6000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08f006:
	dc.w $0003,$1173,$40ff,$0000,$0000,$0f00
	dc.w $8015,$009c
	dc.l loc_08afc2
	
	dc.w $0003,$1174,$40ff,$0000,$0000,$0f00
	dc.w $8015,$009c
	dc.l loc_08afc2
	
	dc.w $0003,$1175,$40ff,$0000,$0000,$0f00
	dc.w $8015,$009c
	dc.l loc_08afc2
	
	dc.w $0003,$1176,$40ff,$0000,$0000,$0f00
	dc.w $8015,$009c
	dc.l loc_08afc2
	
	dc.w $0003,$1177,$40ff,$0000,$0000,$0f00
	dc.w $8015,$009c
	dc.l loc_08afc2
	
	dc.w $0003,$1178,$40ff,$0000,$0000,$0f00
	dc.w $8015,$009c
	dc.l loc_08afc2
	
	dc.w $0003,$1179,$40ff,$0000,$0000,$0f00
	dc.w $8015,$009c
	dc.l loc_08afc2
	
	dc.w $0003,$117a,$40ff,$0000,$0000,$0f00

loc_08f09e:
	dc.w $8015,$009c
	dc.l loc_08afc2
	
	dc.w $0005,$117b,$40ff,$0000,$0000,$0f00
	dc.w $8015,$009c
	dc.l loc_08afc2
	
	dc.w $0005,$117c,$40ff,$0000,$0000,$0f00
	dc.w $8015,$009c
	dc.l loc_08afc2
	
	dc.w $0005,$117d,$40ff,$0000,$0000,$0f00
	dc.w $8015,$009c
	dc.l loc_08afc2
	
	dc.w $0005,$117e,$40ff,$0000,$0000,$0f00
	dc.w $8015,$009c
	dc.l loc_08afc2
	
	dc.w $0005,$117f,$40ff,$0000,$0000,$0f00
	dc.w $8015,$009c
	dc.l loc_08afc2

	dc.w $0005,$1180,$40ff,$0000,$0000,$0f00
	dc.w $8000,$0000
	dc.l loc_08f09e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08f11e:
	dc.w $0001,$1180,$40ff,$0000,$0000,$0f00
	dc.w $0001,$0000,$6000
	dc.w $0001,$1180,$40ff,$0000,$0000,$0f00
	dc.w $0001,$0000,$6000
	dc.w $0001,$1180,$40ff,$0000,$0000,$0f00
	dc.w $0001,$0000,$6000
	dc.w $0001,$1180,$40ff,$0000,$0000,$0f00
	dc.w $0001,$0000,$6000
	dc.w $0001,$1180,$40ff,$0000,$0000,$0f00
	dc.w $0001,$0000,$6000
	dc.w $0001,$1180,$40ff,$0000,$0000,$0f00
	dc.w $0001,$0000,$6000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08f18c:
	dc.w $8015,$009c
	dc.l loc_08b150
	
	dc.w $0005,$113a,$40ff,$0000,$0000,$0d00
	dc.w $8015,$009c
	dc.l loc_08b150
	
	dc.w $0005,$113b,$40ff,$0000,$0000,$0d00
	dc.w $8015,$009c
	dc.l loc_08b150
	
	dc.w $0005,$113c,$40ff,$0000,$0000,$0d00
	dc.w $8015,$009c
	dc.l loc_08b150
	
	dc.w $0005,$113d,$40ff,$0000,$0000,$0d00
	dc.w $8015,$009c
	dc.l loc_08b150
	
	dc.w $0005,$113e,$40ff,$0000,$0000,$0d00
	dc.w $8015,$009c
	dc.l loc_08b150
	
	dc.w $0005,$113f,$40ff,$0000,$0000,$0d00
	dc.w $8015,$009c
	dc.l loc_08b150
	
	dc.w $0005,$1140,$40ff,$0000,$0000,$0d00
	dc.w $8015,$009c
	dc.l loc_08b150
	
	dc.w $0005,$1141,$40ff,$0000,$0000,$0d00
	dc.w $8015,$009c
	dc.l loc_08b150
	
	dc.w $0005,$1142,$40ff,$0000,$0000,$0d00
	dc.w $8000,$0000
	dc.l loc_08f18c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08f248:
	dc.w $0001,$113c,$40ff,$0000,$0000,$0d00
	dc.w $0001,$0000,$6000
	dc.w $0001,$113c,$40ff,$0000,$0000,$0d00
	dc.w $0001,$0000,$6000
	dc.w $0001,$113c,$40ff,$0000,$0000,$0d00
	dc.w $0001,$0000,$6000
	dc.w $0001,$113c,$40ff,$0000,$0000,$0d00
	dc.w $0001,$0000,$6000
	dc.w $0001,$113c,$40ff,$0000,$0000,$0d00
	dc.w $0001,$0000,$6000
	dc.w $0001,$113c,$40ff,$0000,$0000,$0d00
	dc.w $0001,$0000,$6000
	dc.w $0001,$113c,$40ff,$0000,$0000,$0d00
	dc.w $0001,$0000,$6000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08f2c8:
	dc.w $0002,$1143,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1144,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1145,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1146,$40ff,$0000,$0008,$0e00
	dc.w $8015,$009c
	dc.l loc_08b2b4

	dc.w $0002,$1147,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1148,$40ff,$0000,$0008,$0e00
	dc.w $8015,$009c
	dc.l loc_08b2bc

	dc.w $0002,$1149,$40ff,$0000,$0008,$0e00
	dc.w $8015,$009c
	dc.l loc_08b2c4

	dc.w $0002,$114a,$40ff,$0000,$0008,$0e00
	dc.w $0002,$114b,$40ff,$0000,$0008,$0e00
	dc.w $0002,$114c,$40ff,$0000,$0008,$0e00
	dc.w $0002,$114d,$40ff,$0000,$0008,$0e00
	dc.w $0002,$114e,$40ff,$0000,$0008,$0e00
	dc.w $0002,$114f,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1150,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1151,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1152,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1153,$40ff,$0000,$0008,$0e00
	dc.w $8015,$009c
	dc.l loc_08b2cc

	dc.w $0002,$1154,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1155,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1156,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1157,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1158,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1159,$40ff,$0000,$0008,$0e00
	dc.w $0002,$115a,$40ff,$0000,$0008,$0e00
	dc.w $8015,$009c
	dc.l loc_08b2bc

	dc.w $0002,$1149,$40ff,$0000,$0008,$0e00
	dc.w $8015,$009c
	dc.l loc_08b2b4

	dc.w $0002,$1148,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1147,$40ff,$0000,$0008,$0e00
	dc.w $8015,$009c,$0000,$0000
	dc.w $0002,$1146,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1145,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1144,$40ff,$0000,$0008,$0e00
	dc.w $0002,$1143,$40ff,$0000,$0008,$0e00
	dc.w $0001,$0000,$6000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08f47c:
	dc.w $0003,$1129,$40ff,$0000,$0000,$1000
	dc.w $8000,$0000
	dc.l loc_08f47c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08f490:
	dc.w $0004,$1125,$40ff,$fff8,$0008,$1000
	dc.w $0004,$1126,$40ff,$fff0,$0008,$1000
	dc.w $0004,$1127,$40ff,$ffe8,$0010,$1000
	dc.w $0004,$1128,$40ff,$ffd8,$0010,$1000
	dc.w $0004,$1129,$40ff,$ffd8,$0010,$1000
	dc.w $0004,$112a,$40ff,$ffd8,$0004,$1000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08f4da:
	dc.w $0003,$1123,$40ff,$0000,$0000,$1000
	dc.w $8000,$0000
	dc.l loc_08f4da

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08f4ee:
	dc.w $8002,$00c9
	dc.w $0002,$115b,$40ff,$fffe,$fffc,$1200
	dc.w $0002,$115c,$40ff,$fffa,$0000,$1200
	dc.w $0002,$115d,$40ff,$0000,$0004,$1200
	dc.w $0002,$115e,$40ff,$fffc,$0000,$1200
	dc.w $0002,$115f,$40ff,$0000,$0004,$1200
	dc.w $0002,$1160,$40ff,$0000,$0008,$1200
	dc.w $0002,$1161,$40ff,$0000,$0010,$1200
	dc.w $0002,$1162,$40ff,$0000,$0010,$1200
	dc.w $0002,$1163,$40ff,$0000,$0010,$1200
	dc.w $0002,$1164,$40ff,$0000,$0010,$1200
	dc.w $0002,$1165,$40ff,$0000,$0010,$1200
	dc.w $0002,$1166,$40ff,$0000,$0010,$1200
	dc.w $8001

;unused?
loc_08f584:
	dc.w $0002,$1167,$40ff,$0000,$0000,$1300
	dc.w $0002,$1168,$40ff,$0000,$0000,$1300
	dc.w $0002,$1169,$40ff,$0000,$0000,$1300
	dc.w $0002,$116a,$40ff,$0000,$0000,$1300
	dc.w $0002,$116b,$40ff,$0000,$0000,$1300
	dc.w $0002,$116c,$40ff,$0000,$0000,$1300
	dc.w $0002,$116d,$40ff,$0000,$0000,$1300
	dc.w $0002,$116e,$40ff,$0000,$0000,$1300
	dc.w $0002,$116f,$40ff,$0000,$0000,$1300
	dc.w $0002,$1170,$40ff,$0000,$0000,$1300
	dc.w $0002,$1171,$40ff,$0000,$0000,$1300
	dc.w $0002,$1172,$40ff,$0000,$0000,$1300
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08f616:
	dc.w $8037
	dc.l loc_08aab2
	dc.w $8038
	dc.l loc_08f656

	dc.w $8039,$0000
	dc.w $803e,$0807,$2f00
	dc.w $803f,$1808,$000a,$2808
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$00be,$0000
	dc.w $8047,$024b,$ffff,$0000

loc_08f656:
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $8047,$00b6,$0000
	dc.w $801a,$0005,$001a
	dc.w $8047,$00b6,$ffff
	dc.w $803b,$d000,$f61a
	dc.w $0002,$10c3,$0000,$78ff,$0000,$0003,$0000
	dc.w $8011,$001d,$0005,$2000,$10f4,$ff00
	dc.w $802b,$00d3
	dc.w $803b,$d000,$ee12
	dc.w $8004,$1886
	dc.w $0002,$10c4,$0000,$78ff,$0000,$0003,$0000
	dc.w $803b,$d000,$de0a
	dc.w $8011,$001d,$0005,$e000,$f0f4,$ff00
	dc.w $0002,$10c5,$0000,$78ff,$0000,$0003,$0000
	dc.w $803c,$0000
	dc.w $0006,$10c6,$0000,$78ff,$0000,$0003,$0000
	dc.w $0006,$10c7,$0000,$78ff,$fffc,$0003,$0000
	dc.w $0006,$10c8,$0000,$78ff,$0000,$0003,$0000
	dc.w $0006,$10c9,$0000,$78ff,$0000,$0003,$0000
	dc.w $0006,$10ca,$0000,$78ff,$0000,$0003,$0000
	dc.w $801d
	dc.w $000a,$10cb,$0000,$78ff,$fff8,$0003,$0000
	dc.w $000a,$10cc,$0000,$78ff,$0000,$0003,$0000
	dc.w $000a,$10cd,$0000,$78ff,$0000,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Thrown Animation
;Saizo
loc_08f742:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$1050,$0000,$80ff,$0032,$0007,$0000
	dc.w $0006,$1185,$0000,$80ff,$0020,$0019,$0000
	dc.w $0006,$10b7,$0000,$80ff,$0014,$0021,$0000
	dc.w $0006,$10b9,$0000,$80ff,$0006,$0034,$0000
	dc.w $0006,$10c0,$0000,$80ff,$fff2,$002a,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0006,$1185,$0000,$80ff,$fff9,$0059,$0003
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$1067,$0000,$80ff,$0000,$0008,$0000
	dc.w $8001

;Sho
loc_08f7be:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$00cc,$0000,$80ff,$0026,$fffe,$0000
	dc.w $0006,$0143,$0000,$80ff,$001a,$fff8,$0001
	dc.w $0006,$017b,$0000,$80ff,$0015,$0010,$0000
	dc.w $0006,$013f,$0000,$80ff,$000d,$002b,$0000
	dc.w $0006,$0182,$0000,$80ff,$0000,$0020,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0006,$0143,$0000,$80ff,$fffe,$0078,$0002
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$011f,$0000,$8000
	dc.w $8001

;Dao
loc_08f834:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$02a2,$0000,$80ff,$0026,$fffe,$0000
	dc.w $0006,$0224,$0000,$80ff,$0020,$0008,$0000
	dc.w $0006,$0308,$0000,$80ff,$001d,$0004,$0001
	dc.w $0006,$030f,$0000,$80ff,$0005,$003b,$0000
	dc.w $0006,$0310,$0000,$80ff,$fffd,$001a,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0006,$02fc,$0000,$80ff,$fff8,$0000,$0000
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$0225,$0000,$8000
	dc.w $8001

;Con
loc_08f8aa:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0441,$0000,$80ff,$0024,$fffc,$0000
	dc.w $0006,$0414,$0000,$80ff,$0022,$fffc,$0000
	dc.w $0006,$040e,$0000,$80ff,$001b,$0088,$0003
	dc.w $0006,$0409,$0000,$80ff,$0018,$0027,$0000
	dc.w $0006,$040a,$0000,$80ff,$fff0,$0010,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0006,$0414,$0000,$80ff,$fff5,$0070,$0003
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$0458,$0000,$80ff,$0008,$0000,$0000
	dc.w $8001

;Tia
loc_08f926:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$05c5,$0000,$80ff,$0030,$0000,$0000
	dc.w $0006,$0676,$0000,$80ff,$0018,$000c,$0001
	dc.w $0006,$0696,$0000,$80ff,$0020,$0012,$0001
	dc.w $0006,$0670,$0000,$80ff,$0000,$0028,$0000
	dc.w $0006,$06a0,$0000,$80ff,$ffe4,$0028,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0006,$0676,$0000,$80ff,$0000,$0060,$0002
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$0527,$0000,$80ff,$0000,$0008,$0000
	dc.w $8001

;Ril
loc_08f9a2:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$07b5,$0000,$80ff,$0033,$fffe,$0000
	dc.w $0006,$0730,$0000,$80ff,$001d,$000d,$0000
	dc.w $0006,$085d,$0000,$80ff,$0017,$008d,$0003
	dc.w $0006,$085c,$0000,$80ff,$0004,$001e,$0001
	dc.w $0006,$085e,$0000,$80ff,$ffeb,$000d,$0001
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0006,$0870,$0000,$80ff,$fff8,$0000,$0000
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$0812,$0000,$8000
	dc.w $8001

;Als
loc_08fa18:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$09af,$0000,$80ff,$0026,$fffa,$0000
	dc.w $0006,$09af,$0000,$80ff,$0014,$0000,$0000
	dc.w $0006,$09f8,$0000,$80ff,$001c,$000b,$0001
	dc.w $0006,$0a05,$0000,$80ff,$ffec,$003e,$0000
	dc.w $0006,$0a04,$0000,$80ff,$ffe8,$001c,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0006,$0a06,$0000,$80ff,$fff5,$0078,$0002
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$09d7,$0000,$80ff,$0008,$0000,$0000
	dc.w $8001

;Pie
loc_08fa94:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0b55,$0000,$80ff,$0022,$fffa,$0000
	dc.w $0006,$0b55,$0000,$80ff,$0018,$0000,$0000
	dc.w $0006,$0bcb,$0000,$80ff,$001c,$000b,$0001
	dc.w $0006,$0bd6,$0000,$80ff,$0013,$0026,$0000
	dc.w $0006,$0bd5,$0000,$80ff,$fff1,$0029,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0006,$0b99,$0000,$80ff,$ffff,$0070,$0002
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$0b89,$0000,$8000
	dc.w $8001

;Mah
loc_08fb0a:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0d6b,$0000,$80ff,$0022,$fffa,$0000
	dc.w $0006,$0dd6,$0000,$80ff,$0018,$0010,$0001
	dc.w $0006,$0dbc,$0000,$80ff,$001a,$0022,$0001
	dc.w $0006,$0da9,$0000,$80ff,$0000,$0038,$0000
	dc.w $0006,$0db0,$0000,$80ff,$ffef,$0011,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0006,$0dd6,$0000,$80ff,$0002,$006a,$0002
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$0dc4,$0000,$80ff,$0000,$fff8,$0000
	dc.w $8001

;Bai
loc_08fb86:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0eda,$0000,$80ff,$0028,$fffa,$0000
	dc.w $0006,$0e5a,$0000,$80ff,$0026,$0004,$0000
	dc.w $0006,$0e5b,$0000,$80ff,$0012,$0030,$0000
	dc.w $0006,$0f28,$0000,$80ff,$0005,$0098,$0003
	dc.w $0006,$0e5c,$0000,$80ff,$ffea,$0028,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0006,$0e5d,$0000,$80ff,$fffd,$0004,$0000
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$0e5f,$0000,$80ff,$0000,$0010,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_08fc02:
	dc.w $8037
	dc.l loc_08ab84
	dc.w $8038
	dc.l loc_08fc3e

	dc.w $803e,$0807,$2f00
	dc.w $803f,$2010,$080c,$2808
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$00be,$0000
	dc.w $8047,$024b,$ffff,$0000

loc_08fc3e:
	dc.w $8002,$18e7
	dc.w $802c,$8047,$00b6,$0000
	dc.w $801a,$0001,$0020
	dc.w $803b,$d0ec,$f622
	dc.w $0008,$10cf,$0000,$78ff,$0000,$0003,$0000
	dc.w $8004,$1886
	dc.w $802b,$00dc
	dc.w $8047,$00b6,$ffff
	dc.w $803b,$d0ec,$ee22
	dc.w $0004,$10cf,$0000,$78ff,$0000,$0003,$0000
	dc.w $803b,$d0ec,$e622
	dc.w $0004,$10d0,$0000,$78ff,$0000,$0010,$0000
	dc.w $803b,$d0ec,$e21a
	dc.w $0006,$10d1,$0000,$78ff,$fff8,$0000,$0000
	dc.w $000a,$10d2,$0000,$7800
	dc.w $8026,$0010
	dc.w $803b,$0000,$de1a
	dc.w $8034
	dc.w $8011,$001d,$0005,$2000,$40e0,$0100
	dc.w $8011,$001d,$0005,$e000,$c0e0,$0100
	dc.w $000a,$10d3,$0000,$7800
	dc.w $803b,$0000,$f60a,$801d
	dc.w $804a,$fffd,$0000,$fff7,$0400
	dc.w $0004,$1028,$0000,$7cff,$0006,$0003,$0000
	dc.w $0003,$1029,$0000,$7cff,$0008,$fff0,$0000
	dc.w $0003,$102a,$0000,$7cff,$0002,$fff6,$0000
	dc.w $803c,$0008
	dc.w $0003,$102b,$0000,$7cff,$0000,$fffa,$0000
	dc.w $0003,$102c,$0000,$7cff,$fffe,$fff8,$0000
	dc.w $0003,$102d,$0000,$7cff,$0000,$ffeb,$0000
	dc.w $0005,$102e,$0000,$7cff,$0000,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Saizo
loc_08fd5c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$1049,$0000,$84ff,$002f,$0022,$0001
	dc.w $0004,$1049,$0000,$84ff,$002f,$0022,$0001
	dc.w $0004,$10bc,$0000,$84ff,$fffc,$003c,$0001
	dc.w $0006,$10b6,$0000,$84ff,$ffe0,$0000,$0001
	dc.w $000a,$10b5,$0000,$84ff,$000e,$ffe8,$0001
	dc.w $8022
	dc.w $000a,$10a9,$0000,$84ff,$000c,$fff4,$0001
	dc.w $8001

;Sho
loc_08fdbc:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$00cd,$0000,$84ff,$002b,$0018,$0001
	dc.w $0004,$00cd,$0000,$84ff,$002b,$0018,$0001
	dc.w $0004,$017f,$0000,$84ff,$0008,$0042,$0001
	dc.w $0006,$017a,$0000,$84ff,$ffe0,$0000,$0001
	dc.w $000a,$0179,$0000,$84ff,$fff4,$fff6,$0001
	dc.w $8022
	dc.w $000a,$0140,$0000,$84ff,$0000,$ffe8,$0001
	dc.w $8001

;Dao
loc_08fe1c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$02a3,$0000,$84ff,$002a,$0017,$0001
	dc.w $0004,$02a3,$0000,$84ff,$002a,$0017,$0001
	dc.w $0004,$0313,$0000,$84ff,$0002,$004f,$0001
	dc.w $0006,$030c,$0000,$84ff,$ffe4,$fffc,$0000
	dc.w $000a,$030a,$0000,$84ff,$fff8,$ffe4,$0000
	dc.w $8022
	dc.w $000a,$0305,$0000,$84ff,$0000,$fff6,$0001
	dc.w $8001

;Con
loc_08fe7c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0442,$0000,$84ff,$0030,$0010,$0001
	dc.w $0004,$0442,$0000,$84ff,$0030,$0010,$0001
	dc.w $0004,$0409,$0000,$84ff,$0015,$00a3,$0002
	dc.w $0006,$040f,$0000,$84ff,$ffe4,$ffe8,$0001
	dc.w $000a,$040c,$0000,$84ff,$fffa,$0062,$0002
	dc.w $8022
	dc.w $000a,$0411,$0000,$84ff,$0000,$003b,$0002
	dc.w $8001

;Tia
loc_08fedc:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0521,$0000,$84ff,$0025,$0011,$0001
	dc.w $0004,$0521,$0000,$84ff,$0025,$0011,$0001
	dc.w $0004,$069e,$0000,$84ff,$ffe8,$0048,$0001
	dc.w $0006,$0699,$0000,$84ff,$ffe4,$0000,$0000
	dc.w $000a,$0698,$0000,$84ff,$0008,$fff8,$0000
	dc.w $8022
	dc.w $000a,$0674,$0000,$84ff,$fffc,$fff8,$0001
	dc.w $8001

;Ril
loc_08ff3c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0731,$0000,$84ff,$002d,$0019,$0001
	dc.w $0004,$0731,$0000,$84ff,$002d,$0019,$0001
	dc.w $0004,$0858,$0000,$84ff,$0001,$00a7,$0003
	dc.w $0006,$0861,$0000,$84ff,$ffe4,$fff4,$0001
	dc.w $000a,$0857,$0000,$84ff,$0006,$0060,$0002
	dc.w $8022
	dc.w $000a,$0859,$0000,$84ff,$0004,$ffe6,$0000
	dc.w $8001

;Als
loc_08ff9c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$09ec,$0000,$84ff,$002c,$0010,$0001
	dc.w $0004,$09ec,$0000,$84ff,$002c,$0010,$0001
	dc.w $0004,$0a02,$0000,$84ff,$ffe8,$003c,$0001
	dc.w $0006,$09fb,$0000,$84ff,$ffdc,$ffe8,$0000
	dc.w $000a,$09fa,$0000,$84ff,$0010,$ffe4,$0000
	dc.w $8022
	dc.w $000a,$09ee,$0000,$84ff,$fff8,$fff8,$0001
	dc.w $8001

;Pie
loc_08fffc:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0b56,$0000,$84ff,$002b,$000e,$0001
	dc.w $0004,$0b56,$0000,$84ff,$002b,$000e,$0001
	dc.w $0004,$0bd3,$0000,$84ff,$000c,$0042,$0001
	dc.w $0006,$0bce,$0000,$84ff,$ffe0,$fff8,$0000
	dc.w $000a,$0bcd,$0000,$84ff,$0000,$fff2,$0000
	dc.w $8022
	dc.w $000a,$0b97,$0000,$84ff,$000c,$fff2,$0001
	dc.w $8001

;Mah
loc_09005c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0d6b,$0000,$84ff,$0021,$001d,$0001
	dc.w $0004,$0d6b,$0000,$84ff,$0021,$001d,$0001
	dc.w $0004,$0dad,$0000,$84ff,$fffa,$003d,$0001
	dc.w $0006,$0dbf,$0000,$84ff,$ffe8,$fff8,$0000
	dc.w $000a,$0dbe,$0000,$84ff,$0014,$ffe8,$0000
	dc.w $8022
	dc.w $000a,$0db1,$0000,$84ff,$0002,$fffa,$0001
	dc.w $8001

;Bai
loc_0900bc:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0edc,$0000,$84ff,$0035,$0019,$0001
	dc.w $0004,$0edc,$0000,$84ff,$0035,$0019,$0001
	dc.w $0004,$0f28,$0000,$84ff,$0000,$0030,$0001
	dc.w $0006,$0f29,$0000,$84ff,$ffe4,$0074,$0002
	dc.w $000a,$0e5e,$0000,$84ff,$0006,$004c,$0002
	dc.w $8022
	dc.w $000a,$0f2c,$0000,$84ff,$0000,$fff0,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_09011c:
	dc.w $8037
	dc.l loc_08a520
	dc.w $8038
	dc.l loc_090148

	dc.w $8039,$0018
	dc.w $803a,$0004
	dc.w $803d
	dc.w $8045,$0002
	dc.w $8048,$0550,$0004
	dc.w $8048,$00be,$0014

	dc.w $8036
	dc.l loc_08b58c

loc_090148:
	dc.w $8023
	dc.w $0002,$0fc3,$0010,$80ff,$fffe,$0003,$0000
	dc.w $8002,$188a
	dc.w $8011,$001c,$0004,$e800,$0000
	dc.w $0002,$0fc4,$0011,$80ff,$ffec,$0003,$0000
	dc.w $803a,$0000
	dc.w $8011,$001d,$0005,$e000,$f0f4,$ff00
	dc.w $0006,$0fc5,$0012,$7cff,$ffef,$0003,$0000
	dc.w $8011,$001d,$0005,$e000,$f0f4,$ff00
	dc.w $0006,$0fc6,$0012,$7cff,$ffef,$0003,$0000
	dc.w $8011,$001d,$0005,$e800,$ecec,$ff00
	dc.w $0002,$0fc7,$0011,$80ff,$ffec,$0003,$0000
	dc.w $0002,$0fc8,$0013,$80ff,$fff9,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0901d6:
	dc.w $803a,$0000
	dc.w $8027,$ffe4,$0014
	dc.w $8048,$00be,$0008
	dc.w $8002,$188a
	dc.w $8011,$001d,$0005,$1800,$14ec,$ff00
	dc.w $0008,$0fc3,$0010,$80ff,$fffe,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_090206:
	dc.w $8037
	dc.l loc_08a5c6
	dc.w $8038
	dc.l loc_090236

	dc.w $803a,$00ff
	dc.w $8039,$0014
	dc.w $803d
	dc.w $8045,$0002
	dc.w $8048,$0550,$0003
	dc.w $8048,$00be,$0000
	dc.w $8043,$000f

	dc.w $8036
	dc.l loc_08b5a4

loc_090236:
	dc.w $8023
	dc.w $8002,$188d
	dc.w $0003,$1001,$0000,$80ff,$fffe,$0003,$0000
	dc.w $8011,$001d,$0005,$1800,$0800,$ff00

	dc.w $804b
	dc.l $fffc0000,$fffa4000,$00008000

	dc.w $8027,$ffe4,$001c
	dc.w $0006,$1181,$0000,$80ff,$0003,$0003,$0000
	dc.w $0006,$1182,$0000,$80ff,$0005,$0000,$0000
	dc.w $8028
	dc.w $0006,$1183,$0007,$80ff,$0004,$0009,$0000
	dc.w $0006,$1184,$0008,$80ff,$0004,$0004,$0000
	dc.w $803c,$0000
	dc.w $803a,$0004
	dc.w $8039,$0000
	dc.w $8003,$1870
	dc.w $8011,$001d,$0005,$e800,$e8e8,$ff00
	dc.w $0004,$1007,$0009,$80ff,$fffe,$0003,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0902d0:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_090304

	dc.w $803e,$1803,$0d00
	dc.w $803f,$0000,$0000,$0008
	dc.w $8040,$0402,$1000,$4800
	dc.w $8041,$0401,$0810
	dc.w $8048,$0552,$00b4

	dc.w $8036
	dc.l loc_08b58c

loc_090304:
	dc.w $8017,$0010
	dc.l loc_09032c
	dc.w $8017,$0080
	dc.l loc_090320

	dc.w $802b,$00e8
	dc.w $8000,$0000
	dc.l loc_090338

loc_090320:
	dc.w $802b,$00e7
	dc.w $8000,$0000
	dc.l loc_090338

loc_09032c:
	dc.w $802b,$00e6
	dc.w $8000,$0000
	dc.l loc_090338

loc_090338:
	dc.w $0003,$118f,$0003,$80ff,$fff9,$0003,$0000
	dc.w $0004,$1190,$0004,$80ff,$fff9,$0003,$0000
	dc.w $8045,$0002
	dc.w $001e,$1191,$0005,$80ff,$fff9,$0003,$0000
	dc.w $0008,$1190,$0004,$80ff,$fff9,$0003,$0000
	dc.w $0008,$118f,$0003,$80ff,$fff9,$0003,$0000
	dc.w $8001

;090384