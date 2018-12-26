loc_0436a8:
	move.w #$f0,($344,a4)
	move.w #$20,($346,a4)
	move.w #7,($348,a4)
	move.w #$e,($34a,a4)
	move.w #$86,($34c,a4)
	move.w #$5e,($34e,a4)
	move.w #$86,($350,a4)
	rts

;--------------------------
loc_0436d4:
	tst.b ($4d4,a4)
	beq.w loc_0436fe
	move.b ($35c,a4),d0
	andi.w #$fffc,d0
	bne.w loc_0436fe
	cmpi.b #6,($360,a4)
	bne.w loc_0436fe
	sf ($4d4,a4)
	move.l #loc_0439f4,($56,a4)

loc_0436fe:
	rts

;--------------------------
loc_043700:
	movea.l #loc_044b44,a0
	bsr.w loc_043754
	bra.w loc_043816

;--------------------------
loc_04370e:
	bclr #7,($35c,a4)
	bne.w loc_04371e
	jmp loc_02e5c6

;--------------------------
loc_04371e:
	movea.l #loc_044a20,a0
	bsr.w loc_043754
	bra.w loc_043816

;--------------------------
loc_04372c:
	move.l (a7)+,($4d8,a4)
	jmp (a0)

;--------------------------
loc_043732:
	move.l ($4d8,a4),d0
	beq.b loc_04370e
	clr.l ($4d8,a4)
	movea.l d0,a0
	clr.b d0
	jmp (a0)

;--------------------------
loc_043742:
	move.l ($4d8,a4),d0
	beq.b loc_04370e
	clr.l ($4d8,a4)
	movea.l d0,a0
	move.b #-1,d0
	jmp (a0)

;--------------------------
loc_043754:
	move.l (a7)+,($4dc,a4)
	jmp (a0)

;--------------------------
loc_04375a:
	move.l ($4dc,a4),d0
	beq.w loc_043816
	clr.l ($4dc,a4)
	movea.l d0,a0
	jmp (a0)

;--------------------------
loc_04376a:
	st ($4d4,a4)
	cmpi.w #$a0,($378,a4)
	bgt.w loc_0437d8
	cmpi.w #$3c,($378,a4)
	bgt.w loc_0437b4
	cmpi.w #$1e,($378,a4)
	bgt.w loc_043790
	bra.w loc_0437f6

;--------------------------
loc_043790:
	jsr RandomNumberGod
	lea loc_0437a0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0437a0:
	dc.w $0003

	dc.w $000a
	dc.l loc_043800

	dc.w $000a
	dc.l loc_0437f6

	dc.w $000a
	dc.l loc_04380a

;--------------------------
loc_0437b4:
	jsr RandomNumberGod
	lea loc_0437c4(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0437c4:
	dc.w $0003
	
	dc.w $005a
	dc.l loc_043800
	
	dc.w $000a
	dc.l loc_0437f6
	
	dc.w $000a
	dc.l loc_04380a

;--------------------------
loc_0437d8:
	jsr RandomNumberGod
	lea loc_0437e8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0437e8:
	dc.w $0002

	dc.w $005a
	dc.l loc_043800

	dc.w $000a
	dc.l loc_0437f6

;--------------------------
loc_0437f6:
	movea.l #loc_044a20,a0
	bra.w loc_043810

loc_043800:
	movea.l #loc_044ad2,a0
	bra.w loc_043810

loc_04380a:
	movea.l #loc_044b44,a0

loc_043810:
	movea.l a0,a0
	bsr.w loc_043754

loc_043816:
	clr.l ($4d8,a4)
	clr.l ($4dc,a4)
	clr.l ($4e0,a4)
	tst.b ($35d,a4)
	beq.w loc_043832
	jsr loc_0226b4
	bra.b loc_043816

loc_043832:
	st ($35d,a4)
	cmpi.b #6,($360,a4)
	beq.w loc_0439f4
	tst.b ($247,a4)
	beq.w loc_0439ec
	cmpi.w #$a0,($378,a4)
	bgt.w loc_0439bc
	cmpi.w #$3c,($378,a4)
	bgt.w loc_043956
	cmpi.w #$1e,($378,a4)
	bgt.w loc_0438d2
	jsr RandomNumberGod
	lea loc_043876(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_043876:
	dc.w $000f

	dc.w $000a
	dc.l loc_044c7c

	dc.w $0005
	dc.l loc_044b44

	dc.w $0005
	dc.l loc_044bbe

	dc.w $0032
	dc.l loc_0458ec

	dc.w $0014
	dc.l loc_045212

	dc.w $000a
	dc.l loc_045eb2

	dc.w $0014
	dc.l loc_04555a

	dc.w $0014
	dc.l loc_046134

	dc.w $0014
	dc.l loc_045cb8

	dc.w $001e
	dc.l loc_0455ae

	dc.w $0014
	dc.l loc_0456ee

	dc.w $0014
	dc.l loc_045a92

	dc.w $0014
	dc.l loc_045986

	dc.w $000a
	dc.l loc_045c18

	dc.w $0008
	dc.l loc_0453d2

;--------------------------
loc_0438d2:
	jsr RandomNumberGod
	lea loc_0438e2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0438e2:
	dc.w $0013

	dc.w $000a
	dc.l loc_044c7c

	dc.w $0005
	dc.l loc_044b44

	dc.w $0019
	dc.l loc_044bbe

	dc.w $0005
	dc.l loc_0460e6

	dc.w $0032
	dc.l loc_0458ec

	dc.w $001e
	dc.l loc_045212

	dc.w $000a
	dc.l loc_045eb2

	dc.w $001e
	dc.l loc_045f94

	dc.w $001e
	dc.l loc_04555a

	dc.w $0014
	dc.l loc_046134

	dc.w $0014
	dc.l loc_0455ae

	dc.w $0014
	dc.l loc_0456ee

	dc.w $0014
	dc.l loc_045cb8

	dc.w $0014
	dc.l loc_045c18

	dc.w $0014
	dc.l loc_046208

	dc.w $0014
	dc.l loc_045834

	dc.w $0014
	dc.l loc_045a92

	dc.w $0014
	dc.l loc_045986

	dc.w $000a
	dc.l loc_0453d2

;--------------------------
loc_043956:
	jsr RandomNumberGod
	lea loc_043966(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_043966:
	dc.w $000e

	dc.w $0028
	dc.l loc_044ad2

	dc.w $0014
	dc.l loc_044b44

	dc.w $0014
	dc.l loc_044c7c

	dc.w $0023
	dc.l loc_044bbe

	dc.w $0005
	dc.l loc_0460e6

	dc.w $0032
	dc.l loc_0458ec

	dc.w $0028
	dc.l loc_045f94

	dc.w $0014
	dc.l loc_04555a

	dc.w $0014
	dc.l loc_0455ae

	dc.w $0014
	dc.l loc_045cb8

	dc.w $0014
	dc.l loc_045834

	dc.w $0014
	dc.l loc_046208

	dc.w $0014
	dc.l loc_0453d2

	dc.w $0014
	dc.l loc_045212

;--------------------------
loc_0439bc:
	jsr RandomNumberGod
	lea loc_04399c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04399c:
	dc.w $0005

	dc.w $0028
	dc.l loc_044ad2

	dc.w $0023
	dc.l loc_044bbe

	dc.w $000a
	dc.l loc_044a20

	dc.w $0014
	dc.l loc_046208

	dc.w $0032
	dc.l loc_0458ec

;--------------------------
loc_0439ec:
	bsr.w loc_044d92
	bra.w loc_043816

;--------------------------
loc_0439f4:
	clr.b ($2f6,a4)
	move.l #$100010,d0
	jsr loc_02e420
	jsr RandomNumberGod
	lea loc_043a14(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_043a14:
	dc.w $0004

	dc.w $0050
	dc.l loc_043a2e

	dc.w $000a
	dc.l loc_043a5e

	dc.w $000a
	dc.l loc_043a6c

	dc.w $000a
	dc.l loc_043a3c

;--------------------------
loc_043a2e:
	movea.l #loc_044c7c,a0
	bsr.w loc_043754
	bra.w loc_043816

loc_043a3c:
	cmpi.w #$40,($340,a4)
	blt.w loc_043816
	jsr RandomNumberGod
	smi ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_043816

loc_043a5e:
	movea.l #loc_044ad2,a0
	bsr.w loc_043754
	bra.w loc_043816

loc_043a6c:
	movea.l #loc_0453d2,a0
	bsr.w loc_04372c
	bra.w loc_043816

loc_043a7a:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_043a8e(pc,d0.w),d0
	jmp loc_043a8e(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_043a8e:
	dc.w loc_043aae-loc_043a8e
	dc.w loc_043aae-loc_043a8e
	dc.w loc_043aae-loc_043a8e
	dc.w loc_043aae-loc_043a8e

	dc.w loc_043ab2-loc_043a8e
	dc.w loc_043ac4-loc_043a8e
	dc.w loc_043ad6-loc_043a8e
	dc.w loc_043ae8-loc_043a8e

	dc.w loc_043afa-loc_043a8e
	dc.w loc_043b0c-loc_043a8e
	dc.w loc_043b1e-loc_043a8e
	dc.w loc_043b30-loc_043a8e

	dc.w loc_043b42-loc_043a8e
	dc.w loc_043b42-loc_043a8e
	dc.w loc_043b42-loc_043a8e
	dc.w loc_043b42-loc_043a8e

;--------------------------
loc_043aae:
	bra.w loc_043b4e

;--------------------------
loc_043ab2:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_043b46
	bra.w loc_043b4e

;--------------------------
loc_043ac4:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_043b46
	bra.w loc_043b4e

;--------------------------
loc_043ad6:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_043b46
	bra.w loc_043b4e

;--------------------------
loc_043ae8:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_043b46
	bra.w loc_043b4e

;--------------------------
loc_043afa:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_043b46
	bra.w loc_043b4e

;--------------------------
loc_043b0c:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_043b46
	bra.w loc_043b4e

;--------------------------
loc_043b1e:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_043b46
	bra.w loc_043b4e

;--------------------------
loc_043b30:
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_043b46
	bra.w loc_043b4e

;--------------------------
loc_043b42:
	bra.w loc_043b4e

;--------------------------
loc_043b46:
	bsr.w loc_044c78
	bra.w loc_043816

;--------------------------
loc_043b4e:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	scs ($4d2,a4)

loc_043b5c:
	tst.b ($365,a4)
	bne.w loc_043e20
	clr.b ($2f6,a4)
	tst.b ($4d2,a4)
	bpl.w loc_043b96
	cmpi.b #3,($360,a4)
	beq.w loc_043b96
	cmpi.b #4,($360,a4)
	beq.w loc_043b96
	tst.b ($367,a4)
	beq.w loc_043b9a
	cmpi.b #1,($360,a4)
	beq.w loc_043b9a

loc_043b96:
	bra.w loc_043bd8

loc_043b9a:
	cmpi.w #$40,($340,a4)
	blt.w loc_043bd8
	cmpi.w #$8c,($378,a4)
	bgt.w loc_043bd8
	cmpi.w #$28,($378,a4)
	blt.w loc_043bd8
	cmpi.w #$ff74,($37a,a4)
	bgt.w loc_043bd8
	tst.b ($24a,a4)
	bne.w loc_043bd8
	movea.l #loc_044bbe,a0
	bsr.w loc_043754
	bra.w loc_043e1a

loc_043bd8:
	cmpi.b #3,($376,a4)
	beq.w loc_043c24
	cmpi.b #3,($360,a4)
	beq.w loc_043c16
	cmpi.b #4,($360,a4)
	beq.w loc_043c16
	tst.b ($367,a4)
	beq.w loc_043c16
	cmpi.b #1,($360,a4)
	beq.w loc_043c24
	cmpi.b #2,($360,a4)
	beq.w loc_043c24
	bra.w loc_043e04

loc_043c16:
	jsr RandomNumberGod
	cmpi.w #$fc00,d0
	bcs.w loc_043e04

loc_043c24:
	btst #7,($35c,a4)
	bne.w loc_043c4a
	cmpi.w #$16,($36c,a4)
	bgt.w loc_043c4a
	cmpi.w #-$78,($37a,a4)
	blt.w loc_043c4a
	bsr.w loc_047142
	bne.w loc_043e1a

loc_043c4a:
	btst #7,($35c,a4)
	bne.w loc_043c76
	cmpi.w #$46,($378,a4)
	bgt.w loc_043c76
	cmpi.w #-$28,($37a,a4)
	blt.w loc_043c76
	move.b #2,($2f6,a4)
	bsr.w loc_047142
	bne.w loc_043e1a

loc_043c76:
	cmpi.w #$60,($340,a4)
	blt.w loc_043cb0
	btst #7,($35c,a4)
	bne.w loc_043cb0
	cmpi.w #$46,($378,a4)
	bgt.w loc_043cb0
	cmpi.w #$ffba,($37a,a4)
	blt.w loc_043cb0
	jsr loc_02c78a
	beq.w loc_043cb0
	bsr.w loc_046e10
	bne.w loc_043e1a

loc_043cb0:
	btst #7,($35c,a4)
	bne.w loc_043ce0
	cmpi.w #$46,($378,a4)
	bgt.w loc_043ce0
	cmpi.w #$ffa6,($37a,a4)
	blt.w loc_043ce0
	bsr.w loc_04728a
	jsr loc_02e2d0
	bsr.w loc_04728a
	bne.w loc_043e1a

loc_043ce0
	cmpi.w #$40,($340,a4)
	blt.w loc_043d14
	btst #7,($35c,a4)
	bne.w loc_043d14
	cmpi.w #$46,($378,a4)
	bgt.w loc_043d14
	cmpi.w #$ff7e,($37a,a4)
	blt.w loc_043d14
	smi ($3c7,a4)
	bsr.w loc_046f58
	bne.w loc_043e1a

loc_043d14:
	btst #7,($35c,a4)
	bne.w loc_043d4a
	cmpi.w #$50,($378,a4)
	bgt.w loc_043d4a
	cmpi.w #$ffd8,($37a,a4)
	blt.w loc_043d4a
	move.b #2,($2f6,a4)
	bsr.w loc_04728a
	jsr loc_02e2d0
	bsr.w loc_04728a
	bne.w loc_043e1a

loc_043d4a:
	btst #7,($35c,a4)
	bne.w loc_043d74
	cmpi.w #$50,($378,a4)
	bgt.w loc_043d74
	cmpi.w #$ffba,($37a,a4)
	blt.w loc_043d74
	clr.b ($2f6,a4)
	bsr.w loc_0470a0
	bne.w loc_043e1a

loc_043d74:
	btst #7,($35c,a4)
	bne.w loc_043da0
	cmpi.w #$5a,($378,a4)
	bgt.w loc_043da0
	cmpi.w #$fff6,($37a,a4)
	blt.w loc_043da0
	move.b #2,($2f6,a4)
	bsr.w loc_0470a0
	bne.w loc_043e1a

loc_043da0:
	btst #7,($35c,a4)
	bne.w loc_043dca
	cmpi.w #$5a,($378,a4)
	bgt.w loc_043dca
	cmpi.w #$ffb0,($37a,a4)
	blt.w loc_043dca
	clr.b ($2f6,a4)
	bsr.w loc_047142
	bne.w loc_043e1a

loc_043dca:
	cmpi.w #$40,($340,a4)
	blt.w loc_043e04
	btst #7,($35c,a4)
	beq.w loc_043e04
	cmpi.w #$56,($378,a4)
	bgt.w loc_043e04
	cmpi.w #$ffc4,($37a,a4)
	bgt.w loc_043e04
	jsr RandomNumberGod
	smi ($3c7,a4)
	bsr.w loc_046f58
	bne.w loc_043e1a

loc_043e04:
	jsr loc_02e456
	jsr loc_0226b4
	jsr loc_02e370
	bra.w loc_043b5c

;--------------------------
loc_043e1a:
	jsr loc_02e308

loc_043e20:
	clr.b ($2f6,a4)
	bclr #2,($35c,a4)
	bra.w loc_043816

;--------------------------
loc_043e2e:
	cmpi.w #$a0,($340,a4)
	bge.w loc_043e4c
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($358,a4),d0
	bcs.w loc_043e4c
	bra.w loc_043f18

;--------------------------
loc_043e4c:
	move.w #$f,($4d6,a4)

loc_043e52:
	cmpi.b #1,($36a,a4)
	bne.w loc_043e66
	btst #0,($362,a4)
	bne.w loc_043b4e

loc_043e66:
	tst.b ($367,a4)
	beq.w loc_043f08
	cmpi.b #3,($36a,a4)
	beq.w loc_043efc
	cmpi.b #6,($36a,a4)
	beq.w loc_043ec0
	cmpi.b #5,($360,a4)
	beq.w loc_043eaa
	cmpi.b #1,($36a,a4)
	bne.w loc_043ea0
	cmpi.w #$22,($374,a4)
	bgt.w loc_043efc

loc_043ea0:
	cmpi.b #1,($360,a4)
	beq.w loc_043eda

loc_043eaa:
	jsr loc_02e456
	jsr loc_0226b4
	subq.w #1,($4d6,a4)
	bge.b loc_043e52
	bra.w loc_043f08

;--------------------------
loc_043ec0:
	cmpi.b #4,($376,a4)
	beq.b loc_043eaa
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_043f18
	bra.w loc_044c7c

;--------------------------
loc_043eda:
	cmpi.b #4,($36a,a4)
	beq.w loc_043efc
	cmpi.w #$80,($358,a4)
	blt.w loc_043f08
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_043f08

loc_043efc:
	btst #3,($24a,a4)
	bne.b loc_043eaa
	bra.w loc_043f2a

;--------------------------
loc_043f08:
	btst #7,($35c,a4)
	bne.w loc_043f26
	jsr loc_02e456

loc_043f18:
	jsr loc_0226b4
	moveq #4,d0
	jsr loc_02e39c

loc_043f26:
	bra.w loc_043816

;--------------------------
loc_043f2a:
	tst.b ($247,a4)
	beq.w loc_044d96

loc_043f32:
	btst #1,($246,a4)
	bne.w loc_043f44
	jsr loc_0226b4
	bra.b loc_043f32

;--------------------------
loc_043f44:
	btst #3,($24a,a4)
	bne.w loc_044498
	cmpi.b #5,($36a,a4)
	beq.w loc_044498
	cmpi.b #5,($360,a4)
	beq.w loc_044498
	tst.b ($365,a4)
	beq.w loc_043b4e
	cmpi.b #1,($360,a4)
	beq.w loc_043fa0
	cmpi.b #2,($360,a4)
	bne.w loc_043f96
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_04448a
	sf d3
	move.w ($378,a4),d2
	bra.w loc_043fac

;--------------------------
loc_043f96:
	st d3
	move.w ($374,a4),d2
	bra.w loc_043fac

;--------------------------
loc_043fa0:
	sf d3
	move.w ($374,a4),d2
	add.w ($378,a4),d2
	asr.w #1,d2

loc_043fac:
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_043fc0
	bra.w loc_044154

;--------------------------
loc_043fc0:
	btst #7,($35c,a4)
	beq.w loc_044154
	cmpi.w #$32,($36c,a4)
	bge.w loc_044004
	jsr RandomNumberGod
	lea loc_043fe4(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_043fe4:
	dc.w $0005

	dc.w $0014
	dc.l loc_0440d6
	dc.w $0014
	dc.l loc_0440f8
	dc.w $000a
	dc.l loc_04413c
	dc.w $000a
	dc.l loc_0440b4
	dc.w $000a
	dc.l loc_04408a

;--------------------------
loc_044004:
	cmpi.w #$5a,($36c,a4)
	bge.w loc_044038
	jsr RandomNumberGod
	lea loc_04401e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04401e:
	dc.w $0004

	dc.w $001e
	dc.l loc_04408a

	dc.w $0014
	dc.l loc_0440d6

	dc.w $000a
	dc.l loc_04411a

	dc.w $000a
	dc.l loc_04413c

;--------------------------
loc_044038:
	cmpi.w #$96,($36c,a4)
	bge.w loc_044066
	jsr RandomNumberGod
	lea loc_044052(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_044052:
	dc.w $0003

	dc.w $003c
	dc.l loc_044098

	dc.w $0028
	dc.l loc_0440a6

	dc.w $000a
	dc.l loc_04411a

;--------------------------
loc_044066:
	jsr RandomNumberGod
	lea loc_044076(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_044076
	dc.w $0003
	
	dc.w $003c
	dc.l loc_044098
	
	dc.w $001e
	dc.l loc_0440a6
	
	dc.w $000a
	dc.l loc_04411a

;--------------------------
loc_04408a:
	movea.l #loc_045212,a0
	bsr.w loc_04372c
	bra.w loc_04446e

;--------------------------
loc_044098:
	movea.l #loc_044ad2,a0
	bsr.w loc_043754
	bra.w loc_04446e

;--------------------------
loc_0440a6:
	movea.l #loc_044b44,a0
	bsr.w loc_043754
	bra.w loc_04446e

;--------------------------
loc_0440b4:
	cmpi.w #$40,($340,a4)
	blt.w loc_04446e
	jsr RandomNumberGod
	smi ($3c7,a4)
	bsr.w loc_046e8a
	jsr loc_02e308
	bra.w loc_04446e

;--------------------------
loc_0440d6:
	cmpi.w #$40,($340,a4)
	blt.w loc_04446e
	jsr RandomNumberGod
	smi ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_04446e

;--------------------------
loc_0440f8:
	cmpi.w #$40,($340,a4)
	blt.w loc_04446e
	jsr RandomNumberGod
	smi ($3c7,a4)
	bsr.w loc_046f58
	jsr loc_02e308
	bra.w loc_04446e

;--------------------------
loc_04411a:
	cmpi.w #$40,($340,a4)
	blt.w loc_04446e
	jsr RandomNumberGod
	smi ($3c7,a4)
	bsr.w loc_046f7a
	jsr loc_02e308
	bra.w loc_04446e

;--------------------------
loc_04413c:
	cmpi.w #$60,($340,a4)
	blt.w loc_044154
	movea.l #loc_0458ec,a0
	bsr.w loc_04372c
	bra.w loc_04446e

;--------------------------
loc_044154:
	jsr RandomNumberGod
	andi.w #$1f,d0
	subi.w #$10,d0
	add.w d0,d2
	btst #0,($369,a4)
	bne.w loc_044190
	btst #2,($369,a4)
	bne.w loc_044200
	btst #1,($369,a4)
	bne.w loc_0441c4
	btst #3,($369,a4)
	bne.w loc_044200
	bra.w loc_044498

loc_044190:
	cmpi.w #$26,d2
	ble.w loc_0442cc
	cmpi.w #$2a,d2
	ble.w loc_044414
	cmpi.w #$32,d2
	ble.w loc_04423c
	cmpi.w #$46,d2
	ble.w loc_04438a
	cmpi.w #$4c,d2
	ble.w loc_04427a
	cmpi.w #$56,d2
	ble.w loc_04444e
	bra.w loc_044498

loc_0441c4:
	cmpi.w #$2a,d2
	ble.w loc_044300
	cmpi.w #$3c,d2
	ble.w loc_04438a
	cmpi.w #$40,d2
	ble.w loc_04423c
	cmpi.w #$42,d2
	ble.w loc_04434e
	cmpi.w #$4c,d2
	ble.w loc_04427a
	cmpi.w #$56,d2
	ble.w loc_04444e
	cmpi.w #$60,d2
	ble.w loc_0442cc
	bra.w loc_044498

loc_044200:
	cmpi.w #$26,d2
	ble.w loc_0442da
	cmpi.w #$34,d2
	ble.w loc_04438a
	cmpi.w #$3e,d2
	ble.w loc_0442aa
	cmpi.w #$46,d2
	ble.w loc_04423c
	cmpi.w #$46,d2
	ble.w loc_04439e
	cmpi.w #$4e,d2
	ble.w loc_0443d8
	cmpi.w #$58,d2
	ble.w loc_04444e
	bra.w loc_044498

loc_04423c:
	cmpi.w #$60,($340,a4)
	blt.w loc_04446e
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_04446e
	jsr loc_02c78a
	beq.w loc_04446e
	bsr.w loc_046e10
	jsr loc_02e308
	bra.w loc_04446e
	movea.l #loc_045212,a0
	bsr.w loc_04372c
	bra.w loc_04446e

loc_04427a:
	cmpi.w #$40,($340,a4)
	blt.w loc_04446e
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_04446e
	jsr RandomNumberGod
	smi ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_04446e

loc_0442aa:
	cmpi.w #$40,($340,a4)
	blt.w loc_04446e
	jsr RandomNumberGod
	smi ($3c7,a4)
	bsr.w loc_046f58
	jsr loc_02e308
	bra.w loc_04446e

loc_0442cc:
	movea.l #loc_044bbe,a0
	bsr.w loc_043754
	bra.w loc_043816

loc_0442da:
	clr.b ($2f6,a4)
	bsr.w loc_04728a
	jsr loc_02e2d0
	bsr.w loc_04728a
	jsr loc_02e2d0
	bsr.w loc_04728a
	jsr loc_02e308
	bra.w loc_04446e

loc_044300:
	move.b #2,($2f6,a4)
	bsr.w loc_04728a
	jsr loc_02e2d0
	bsr.w loc_04728a
	jsr loc_02e2d0
	bsr.w loc_04728a
	jsr loc_02e2d0
	cmpi.w #$40,($340,a4)
	blt.w loc_04446e
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_04446e
	st ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_04446e

loc_04434e:
	move.b #2,($2f6,a4)
	bsr.w loc_047142
	jsr loc_02e308
	cmpi.w #$40,($340,a4)
	blt.w loc_04446e
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_04446e
	move.b #2,($2f6,a4)
	bsr.w loc_0470a0
	jsr loc_02e308
	bra.w loc_04446e

loc_04438a:
	move.b #2,($2f6,a4)
	bsr.w loc_0470a0
	jsr loc_02e308
	bra.w loc_04446e

loc_04439e:
	clr.b ($2f6,a4)
	bsr.w loc_047142
	jsr loc_02e308
	cmpi.w #$40,($340,a4)
	blt.w loc_04446e
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_04446e
	move.b #8,($2f6,a4)
	bsr.w loc_047142
	jsr loc_02e308
	bra.w loc_04446e

loc_0443d8:
	move.b #8,($2f6,a4)
	bsr.w loc_047142
	jsr loc_02e308
	cmpi.w #$40,($340,a4)
	blt.w loc_04446e
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_04446e
	move.b #8,($2f6,a4)
	bsr.w loc_047142
	jsr loc_02e308
	bra.w loc_04446e

loc_044414:
	clr.b ($2f6,a4)
	bsr.w loc_0471fc
	jsr loc_02e308
	cmpi.w #$40,($340,a4)
	blt.w loc_04446e
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_04446e
	move.b #2,($2f6,a4)
	bsr.w loc_0470a0
	jsr loc_02e308
	bra.w loc_04446e

loc_04444e:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_04446e
	sf ($3c7,a4)
	bsr.w loc_046f7a
	jsr loc_02e308
	bra.w loc_04446e

loc_04446e:
	jsr loc_0226b4
	btst #7,($35c,a4)
	bne.w loc_044486
	moveq #4,d0
	jsr loc_02e39c

loc_044486:
	bra.w loc_04370e

;--------------------------
loc_04448a:
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_044c7c

loc_044498:
	jsr loc_02e456
	jsr loc_0226b4
	bclr #3,($35c,a4)
	bra.w loc_04370e

;--------------------------
loc_0444ae:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_0444c2(pc,d0.w),d0
	jmp loc_0444c2(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0444c2:

	dc.w loc_0444e2-loc_0444c2
	dc.w loc_0444e2-loc_0444c2
	dc.w loc_0444e8-loc_0444c2
	dc.w loc_0444fc-loc_0444c2

	dc.w loc_044510-loc_0444c2
	dc.w loc_044524-loc_0444c2
	dc.w loc_044538-loc_0444c2
	dc.w loc_04454c-loc_0444c2

	dc.w loc_044560-loc_0444c2
	dc.w loc_044560-loc_0444c2
	dc.w loc_044560-loc_0444c2
	dc.w loc_044560-loc_0444c2

	dc.w loc_044560-loc_0444c2
	dc.w loc_044560-loc_0444c2
	dc.w loc_044560-loc_0444c2
	dc.w loc_044560-loc_0444c2

;--------------------------
loc_0444e2:
	jmp loc_02e5b2

;--------------------------
loc_0444e8:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_044564
	jmp loc_02e5b2

;--------------------------
loc_0444fc:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_044564
	jmp loc_02e5b2

;--------------------------
loc_044510:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_044564
	jmp loc_02e5b2

;--------------------------
loc_044524:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_044564
	jmp loc_02e5b2

;--------------------------
loc_044538:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_044564
	jmp loc_02e5b2

;--------------------------
loc_04454c:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_044564
	jmp loc_02e5b2

;--------------------------
loc_044560:
	bra.w loc_044564

;--------------------------
loc_044564:
	jsr RandomNumberGod
	cmpi.w #$d000,d0
	bcc.b loc_044578
	move.b #$1,($4d0,a4)
	bra.b loc_044588

loc_044578:
	cmpi.w #$c000,d0
	bcc.b loc_044584
	sf ($4d0,a4)
	bra.b loc_044588

loc_044584:
	st ($4d0,a4)

loc_044588:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	scs ($4d1,a4)

loc_044596:
	tst.b ($367,a4)
	beq.w loc_0445ac
	cmpi.w #$26,($374,a4)
	bge.w loc_0445ac
	bra.w loc_04465e

loc_0445ac:
	tst.b ($363,a4)
	beq.w loc_0446a6
	cmpi.w #$ffc4,($370,a4)
	ble.w loc_0446a6
	cmpi.w #$36,($370,a4)
	ble.w loc_04465e
	tst.b ($4d1,a4)
	beq.w loc_044604
	cmpi.w #$84,($37c,a4)
	bgt.w loc_044604
	cmpi.w #$76,($37c,a4)
	ble.w loc_044604
	cmpi.b #$12,($364,a4)
	beq.w loc_044604
	cmpi.w #$40,($340,a4)
	blt.w loc_044604
	sf ($3c7,a4)
	bsr.w loc_046f58
	bne.w loc_0446a6

loc_044604:
	tst.b ($4d0,a4)
	beq.w loc_044634
	bgt.w loc_044614
	bra.w loc_04465e

;--------------------------
loc_044614:
	cmpi.w #$5c,($37c,a4)
	bgt.w loc_04465e
	tst.b ($24a,a4)
	bne.w loc_04465e
	movea.l #loc_044d26,a0
	bsr.w loc_043754
	bra.w loc_0446a6

;--------------------------
loc_044634:
	cmpi.w #$3c,($37c,a4)
	bgt.w loc_04465e
	cmpi.b #$12,($364,a4)
	beq.w loc_04465e
	tst.b ($24a,a4)
	bne.w loc_04465e
	movea.l #loc_044d6e,a0
	bsr.w loc_043754
	bra.w loc_0446a6

loc_04465e:
	cmpi.w #$22,($370,a4)
	bge.w loc_044696
	cmpi.w #$a,($370,a4)
	bge.w loc_044696
	cmpi.w #$c0,($340,a4)
	blt.w loc_044696
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_044696
	bsr.w loc_046e10
	beq.w loc_044696
	bra.w loc_0446a6

;--------------------------
loc_044696:
	jsr loc_02e456
	jsr loc_0226b4
	bra.w loc_044596

;--------------------------
loc_0446a6:
	clr.b ($2f6,a4)
	bra.w loc_043816

;--------------------------
loc_0446ae:
	clr.b ($2f6,a4)
	cmpi.w #$40,($340,a4)
	bge.w loc_0446c0
	bra.w loc_043816

;--------------------------
loc_0446c0:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_044700
	jsr RandomNumberGod
	lea loc_0446da(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0446da:
	dc.w $0006

	dc.w $001e
	dc.l loc_0447c2

	dc.w $001e
	dc.l loc_04480a

	dc.w $001e
	dc.l loc_04488a

	dc.w $000a
	dc.l loc_044844

	dc.w $000a
	dc.l loc_044898

	dc.w $000a
	dc.l loc_044822

;--------------------------
loc_044700:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_044746
	jsr RandomNumberGod
	lea loc_04471a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04471a:
	dc.w $0007

	dc.w $001e
	dc.l loc_0447c2

	dc.w $001e
	dc.l loc_04480a

	dc.w $001e
	dc.l loc_04488a

	dc.w $000a
	dc.l loc_044898

	dc.w $000a
	dc.l loc_044844

	dc.w $000a
	dc.l loc_044822

	dc.w $000a
	dc.l loc_04486e

;--------------------------
loc_044746:
	cmpi.w #$78,($378,a4)
	bgt.w loc_04478c
	jsr RandomNumberGod
	lea loc_044760(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_044760:
	dc.w $0007

	dc.w $001e
	dc.l loc_0447c2

	dc.w $001e
	dc.l loc_04480a

	dc.w $001e
	dc.l loc_04488a

	dc.w $000a
	dc.l loc_044860

	dc.w $000a
	dc.l loc_044898

	dc.w $000a
	dc.l loc_044844

	dc.w $000a
	dc.l loc_04486e

;--------------------------
loc_04478c:
	jsr RandomNumberGod
	lea loc_04479c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04479c
	dc.w $0006

	dc.w $001e
	dc.l loc_0447c2

	dc.w $000a
	dc.l loc_04480a

	dc.w $000a
	dc.l loc_04488a

	dc.w $000a
	dc.l loc_044860

	dc.w $000a
	dc.l loc_0447fc

	dc.w $000a
	dc.l loc_0447ee

;--------------------------
loc_0447c2:
	jsr loc_02c78a
	beq.w loc_04480a
	cmpi.w #$60,($340,a4)
	blt.w loc_043816
	cmpi.w #$a0,($378,a4)
	bgt.w loc_0447ea
	bsr.w loc_046e10
	jsr loc_02e308

loc_0447ea:
	bra.w loc_043816

;--------------------------
loc_0447ee:
	bsr.w loc_04707a
	jsr loc_02e308
	bra.w loc_043816

;--------------------------
loc_0447fc:
	movea.l #loc_044b44,a0
	bsr.w loc_043754
	bra.w loc_043816

;--------------------------
loc_04480a:
	cmpi.w #$40,($340,a4)
	blt.w loc_043816
	movea.l #loc_045f94,a0
	bsr.w loc_04372c
	bra.w loc_043816

;--------------------------
loc_044822:
	cmpi.w #$40,($340,a4)
	blt.w loc_043816
	jsr RandomNumberGod
	smi ($3c7,a4)
	bsr.w loc_046f58
	jsr loc_02e308
	bra.w loc_043816

;--------------------------
loc_044844:
	cmpi.w #$40,($340,a4)
	blt.w loc_043816
	st ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_043816

;--------------------------
loc_044860:
	movea.l #loc_046208,a0
	bsr.w loc_04372c
	bra.w loc_043816

;--------------------------
loc_04486e:
	cmpi.w #$40,($340,a4)
	blt.w loc_043816
	sf ($3c7,a4)
	bsr.w loc_046f7a
	jsr loc_02e308
	bra.w loc_043816

;--------------------------
loc_04488a:
	movea.l #loc_045212,a0
	bsr.w loc_04372c
	bra.w loc_043816

;--------------------------
loc_044898:
	movea.l #loc_0453d2,a0
	bsr.w loc_04372c
	bra.w loc_043816

;--------------------------
loc_0448a6:
	clr.b ($2f6,a4)
	cmpi.w #$1e,($36c,a4)
	bge.w loc_0448ba
	move.b #4,($2f6,a4)

loc_0448ba:
	cmpi.w #$66,($36c,a4)
	ble.w loc_0448ca
	move.b #8,($2f6,a4)

loc_0448ca:
	btst #5,($361,a4)
	beq.w loc_0448dc
	jsr loc_0226b4
	bra.b loc_0448a6

;--------------------------
loc_0448dc:
	clr.b ($2f6,a4)
	moveq #$12,d0
	jsr loc_02e420
	cmpi.w #$40,($340,a4)
	bge.w loc_044900
	movea.l #loc_044a20,a0
	bsr.w loc_043754
	bra.w loc_043816

;--------------------------
loc_044900:
	jsr RandomNumberGod
	lea loc_044910(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_044910:
	dc.w $0003

	dc.w $001e
	dc.l loc_044924

	dc.w $001e
	dc.l loc_044932

	dc.w $001e
	dc.l loc_044940

;--------------------------
loc_044924:
	movea.l #loc_045212,a0
	bsr.w loc_04372c
	bra.w loc_043816

;--------------------------
loc_044932:
	movea.l #loc_0453d2,a0
	bsr.w loc_04372c
	bra.w loc_043816

;--------------------------
loc_044940:
	cmpi.w #$60,($340,a4)
	blt.w loc_043816
	cmpi.w #$a0,($378,a4)
	bgt.w loc_04495e
	bsr.w loc_046e10
	jsr loc_02e308

loc_04495e:
	bra.w loc_043816

;--------------------------
loc_044962:
	andi.b #2,($2f6,a4)

loc_044968:
	btst #5,($249,a4)
	beq.w loc_0449a8
	cmpi.w #$64,($378,a4)
	blt.w loc_044998
	cmpi.w #$80,($340,a4)
	blt.w loc_044998
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_044998
	st ($2fb,a4)

loc_044998:
	moveq #8,d0
	jsr loc_02e39c
	jsr loc_0226b4
	bra.b loc_044968

;--------------------------
loc_0449a8:
	jsr loc_02e370
	move.l #$80004,d0
	jsr loc_02e39c
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_0449ce
	bra.w loc_04370e

loc_0449ce:
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$32,($378,a4)
	bgt.w loc_044a1c

loc_0449e4:
	tst.b ($249,a4)
	beq.w loc_044a1c
	jsr RandomNumberGod
	lea loc_044a00(pc),a0
	jsr loc_02decc
	bra.w loc_044a14

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_044a00
	dc.w $0003

	dc.w $0050
	dc.l loc_045212

	dc.w $001e
	dc.l loc_045eb2

	dc.w $000a
	dc.l loc_0458ec

;--------------------------
loc_044a14:
	jsr loc_0226b4
	bra.b loc_0449e4

;--------------------------
loc_044a1c:
	bra.w loc_043e2e

;--------------------------
loc_044a20:
	cmpi.w #$80,($340,a4)
	bge.w loc_044a50
	andi.b #2,($2f6,a4)
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$46,d2
	jsr loc_02e0f4
	bra.w loc_04375a

;--------------------------
loc_044a50:
	jsr loc_02e496
	jsr loc_02e550
	bra.w loc_04375a

;--------------------------
loc_044a60:
	jsr loc_02e370
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.b loc_044a20
	cmpi.w #$a0,($358,a4)
	blt.w loc_044a98
	jsr RandomNumberGod
	cmpi.w #$3000,d0
	bcs.w loc_044b44
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_044ad2

loc_044a98:
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$46,d2
	jsr loc_02e0aa
	jsr loc_02e496
	jsr loc_02e550
	bra.w loc_04375a

;--------------------------
loc_044ac4:
	move.l #$40004,d0
	bra.w loc_044af0

;--------------------------
loc_044ace:
	move.l (a7)+,($4dc,a4)

loc_044ad2:
	cmpi.w #$20,($340,a4)
	bge.w loc_044aea
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_044a20

loc_044aea:
	move.l #$100020,d0

loc_044af0:
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$46,d2
	jsr loc_02e0f4
	cmpi.w #$20,($340,a4)
	bge.w loc_044b2e
	clr.b ($2f6,a4)
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$46,d2
	swap d2
	jsr loc_02e0f4

loc_044b2e:
	clr.b ($2f6,a4)
	bra.w loc_04375a

;--------------------------
loc_044b36:
	move.l #$40004,d0
	bra.w loc_044b62

;--------------------------
loc_044b40:
	move.l (a7)+,($4dc,a4)

loc_044b44:
	cmpi.w #$20,($340,a4)
	bge.w loc_044b5c
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_044a20

loc_044b5c:
	move.l #$80010,d0

loc_044b62:
	move.b #4,($2f6,a4)
	move.w #$b4,d2
	swap d2
	move.w #$3c,d2
	jsr loc_02e0f4
	bmi.w loc_044a20
	cmpi.w #$3c,($378,a4)
	ble.w loc_044bb2
	cmpi.w #$20,($340,a4)
	bge.w loc_044bb2
	clr.b ($2f6,a4)
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$46,d2
	swap d2
	jsr loc_02e0f4

loc_044bb2:
	clr.b ($2f6,a4)
	bra.w loc_04375a

;--------------------------
loc_044bba:
	move.l (a7)+,($4dc,a4)

loc_044bbe:
	cmpi.w #$20,($340,a4)
	blt.w loc_04375a
	cmpi.w #$28,($36c,a4)
	bgt.w loc_044be4
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_044c54
	bra.w loc_044c4a

loc_044be4:
	cmpi.w #$46,($36c,a4)
	bgt.w loc_044c0a
	move.l #$80008,d0
	move.l #$820000,d2
	move.b #4,($2f6,a4)
	jsr loc_02e0f4
	bra.w loc_044c28

loc_044c0a:
	cmpi.w #$82,($36c,a4)
	blt.w loc_044c28
	move.l #$40004,d0
	moveq #$46,d2
	move.b #8,($2f6,a4)
	jsr loc_02e0f4

loc_044c28:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_044c54
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_044c4a
	move.b #5,($2f6,a4)
	bra.w loc_044c5a

loc_044c4a:
	move.b #1,($2f6,a4)
	bra.w loc_044c5a

loc_044c54:
	move.b #9,($2f6,a4)

loc_044c5a:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_044c5a
	clr.b ($2f6,a4)
	moveq #4,d0
	jsr loc_02e39c
	bra.w loc_04375a

;--------------------------
loc_044c78:
	move.l (a7)+,($4dc,a4)

loc_044c7c:
	cmpi.w #$20,($340,a4)
	blt.w loc_044d1e
	cmpi.w #$1e,($36c,a4)
	blt.w loc_044ca8
	cmpi.w #$5a,($36c,a4)
	blt.w loc_044ce8
	cmpi.w #$8c,($36c,a4)
	bgt.w loc_044d06
	bra.w loc_044a20


loc_044ca8:
	jsr RandomNumberGod
	lea loc_044cb8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_044cb8:
	dc.w $0003

	dc.w $001e
	dc.l loc_044cd4

	dc.w $001e
	dc.l loc_044ccc

	dc.w $001e
	dc.l loc_044cde


;--------------------------
loc_044ccc:
	move.b #9,($2f6,a4)
	bra.b loc_044c5a

;--------------------------
loc_044cd4:
	move.b #1,($2f6,a4)
	bra.w loc_044c5a

;--------------------------
loc_044cde:
	move.b #5,($2f6,a4)
	bra.w loc_044c5a

;--------------------------
loc_044ce8:
	move.l #$200020,d0
	move.b #4,($2f6,a4)
	move.w #$8c,d2
	swap d2
	clr.w d2
	jsr loc_02e0f4
	bra.w loc_044d1e

;--------------------------
loc_044d06:
	move.l #$200020,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$5a,d2
	jsr loc_02e0f4

loc_044d1e:
	clr.b ($2f6,a4)
	bra.w loc_04375a

;--------------------------
loc_044d26:
	move.b #9,($2f6,a4)

loc_044d2c:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_044d2c
	clr.b ($2f6,a4)
	moveq #2,d0
	jsr loc_02e420
	bra.w loc_04375a

;--------------------------
loc_044d4a:
	move.b #5,($2f6,a4)

loc_044d50:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_044d50
	clr.b ($2f6,a4)
	moveq #2,d0
	jsr loc_02e420
	bra.w loc_04375a

;--------------------------
loc_044d6e:
	move.b #1,($2f6,a4)

loc_044d74:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_044d74
	clr.b ($2f6,a4)
	moveq #2,d0
	jsr loc_02e420
	bra.w loc_04375a

;--------------------------
loc_044d92:
	move.l (a7)+,($4d8,a4)

loc_044d96:
	btst #0,($24a,a4)
	bne.w loc_043732
	tst.b ($247,a4)
	bne.w loc_043732
	cmpi.w #$30,($340,a4)
	blt.w loc_043732

loc_044db2:
	clr.b ($2f6,a4)
	btst #1,($246,a4)
	bne.w loc_045204
	move.b ($361,a4),d0
	andi.b #$f8,d0
	beq.w loc_044dd6
	cmpi.b #5,($360,a4)
	beq.w loc_0451fa

loc_044dd6:
	tst.b ($365,a4)
	bne.w loc_045016
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_044fea
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_044f06
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_044e2a
	cmpi.w #$2a,($378,a4)
	bgt.w loc_044e2a
	cmpi.w #$30,($37a,a4)
	bgt.w loc_044e2a
	cmpi.w #$10,($37a,a4)
	blt.w loc_044e2a
	bsr.w loc_0471fc
	bra.w loc_045204

;--------------------------
loc_044e2a:
	cmpi.w #$2a,($378,a4)
	bgt.w loc_044e56
	cmpi.w #$40,($37a,a4)
	bgt.w loc_044e56
	cmpi.w #$10,($37a,a4)
	blt.w loc_044e56
	move.b #2,($2f6,a4)
	bsr.w loc_0470a0
	bra.w loc_045204

loc_044e56:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_044e8a
	cmpi.w #$3a,($378,a4)
	bgt.w loc_044e8a
	cmpi.w #$20,($37a,a4)
	bgt.w loc_044e8a
	cmpi.w #$fff0,($37a,a4)
	blt.w loc_044e8a
	bsr.w loc_0471fc
	bra.w loc_045204

loc_044e8a:
	cmpi.w #$3a,($378,a4)
	bgt.w loc_044eb6
	cmpi.w #$40,($37a,a4)
	bgt.w loc_044eb6
	cmpi.w #$ffe0,($37a,a4)
	blt.w loc_044eb6
	move.b #2,($2f6,a4)
	bsr.w loc_047142
	bra.w loc_045204

loc_044eb6:
	cmpi.w #$4a,($378,a4)
	bgt.w loc_044edc
	cmpi.w #$30,($37a,a4)
	bgt.w loc_044edc
	cmpi.w #-$30,($37a,a4)
	blt.w loc_044edc
	bsr.w loc_047142
	bra.w loc_045204

loc_044edc:
	cmpi.w #$5a,($378,a4)
	bgt.w loc_044f02
	cmpi.w #$30,($37a,a4)
	bgt.w loc_044f02
	cmpi.w #-$30,($37a,a4)
	blt.w loc_044f02
	bsr.w loc_0470a0
	bra.w loc_045204

loc_044f02:
	bra.w loc_0451fa

;--------------------------
loc_044f06:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_044f3a
	cmpi.w #$2a,($378,a4)
	bgt.w loc_044f3a
	cmpi.w #$10,($37a,a4)
	bgt.w loc_044f3a
	cmpi.w #-$20,($37a,a4)
	blt.w loc_044f3a
	bsr.w loc_0471fc
	bra.w loc_045204

loc_044f3a:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_044f74
	cmpi.w #$2a,($378,a4)
	bgt.w loc_044f74
	cmpi.w #$30,($37a,a4)
	bgt.w loc_044f74
	cmpi.w #$10,($37a,a4)
	blt.w loc_044f74
	move.b #2,($2f6,a4)
	bsr.w loc_0470a0
	bra.w loc_045204

loc_044f74:
	cmpi.w #$3a,($378,a4)
	bgt.w loc_044f9a
	cmpi.w #$40,($37a,a4)
	bgt.w loc_044f9a
	cmpi.w #-$30,($37a,a4)
	blt.w loc_044f9a
	bsr.w loc_04728a
	bra.w loc_045204


loc_044f9a:
	cmpi.w #$4a,($378,a4)
	bgt.w loc_044fc0
	cmpi.w #-$10,($37a,a4)
	bgt.w loc_044fc0
	cmpi.w #-$40,($37a,a4)
	blt.w loc_044fc0
	bsr.w loc_047142
	bra.w loc_045204

loc_044fc0:
	cmpi.w #$5a,($378,a4)
	bgt.w loc_044fe6
	cmpi.w #$40,($37a,a4)
	bgt.w loc_044fe6
	cmpi.w #-$10,($37a,a4)
	blt.w loc_044fe6
	bsr.w loc_0470a0
	bra.w loc_045204

loc_044fe6:
	bra.w loc_0451fa

loc_044fea:
	cmpi.w #$20,($378,a4)
	bge.w loc_0451fa
	cmpi.w #$20,($37a,a4)
	bgt.w loc_0451fa
	cmpi.w #-$20,($37a,a4)
	blt.w loc_0451fa
	move.b #2,($2f6,a4)
	bsr.w loc_047142
	bra.w loc_045204

loc_045016:
	tst.w ($21a,a4)
	blt.w loc_0451fa
	cmpi.l #$583000,($22a,a4)
	bgt.w loc_0451fa
	cmpi.l #$583000,($22a,a4)
	ble.w loc_045044
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_0451fa

loc_045044:
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_0451ec
	cmpi.w #$1a,($378,a4)
	bgt.w loc_045068
	move.b #2,($2f6,a4)
	bsr.w loc_047142
	bra.w loc_045204

loc_045068:
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_045142
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_04509a
	cmpi.w #$2a,($378,a4)
	bgt.w loc_04509a
	move.b #2,($2f6,a4)
	bsr.w loc_0470a0
	bra.w loc_045204

loc_04509a:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0450ba
	cmpi.w #$2a,($378,a4)
	bgt.w loc_0450ba
	bsr.w loc_04728a
	bra.w loc_045204

loc_0450ba:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0450da
	cmpi.w #$2a,($378,a4)
	bgt.w loc_0450da
	bsr.w loc_04728a
	bra.w loc_045204

loc_0450da:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_045100
	cmpi.w #$3a,($378,a4)
	bgt.w loc_045100
	move.b #2,($2f6,a4)
	bsr.w loc_047142
	bra.w loc_045204

loc_045100:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_045120
	cmpi.w #$4a,($378,a4)
	bgt.w loc_045120
	bsr.w loc_047142
	bra.w loc_045204

loc_045120:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.b loc_045120
	cmpi.w #$5a,($378,a4)
	bgt.w loc_045204
	bsr.w loc_0470a0
	bra.w loc_045204

loc_04513e:
	bra.w loc_0451fa

loc_045142:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_045168
	cmpi.w #$2a,($378,a4)
	bgt.w loc_045168
	move.b #2,($2f6,a4)
	bsr.w loc_0470a0
	bra.w loc_045204

loc_045168:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_045188
	cmpi.w #$38,($378,a4)
	bgt.w loc_045188
	bsr.w loc_04728a
	bra.w loc_045204

loc_045188:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0451a8
	cmpi.w #$38,($378,a4)
	bgt.w loc_0451a8
	bsr.w loc_04728a
	bra.w loc_045204

loc_0451a8:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0451c8
	cmpi.w #$42,($378,a4)
	bgt.w loc_0451c8
	bsr.w loc_047142
	bra.w loc_045204

loc_0451c8:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0451e8
	cmpi.w #$4c,($378,a4)
	bgt.w loc_0451e8
	bsr.w loc_0470a0
	bra.w loc_045204

loc_0451e8:
	bra.w loc_0451fa

loc_0451ec:
	move.b #2,($2f6,a4)
	bsr.w loc_047142
	bra.w loc_045204

;--------------------------
loc_0451fa:
	jsr loc_0226b4
	bra.w loc_044db2

;--------------------------
loc_045204:
	jsr loc_02e308
	clr.b ($2f6,a4)
	bra.w loc_043732

;--------------------------
loc_045212:
	cmpi.w #$40,($340,a4)
	blt.w loc_043732
	tst.b ($361,a4)
	bne.w loc_0452be
	tst.b ($247,a4)
	bne.w loc_045246
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_045246
	bsr.w loc_044d92
	tst.b ($361,a4)
	bne.w loc_0452be

loc_045246:
	tst.b ($377,a4)
	beq.w loc_044bbe
	move.w #7,d0

loc_045252:
	move.w d0,($4d6,a4)
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_043742
	btst #6,($24a,a4)
	bne.w loc_043732
	jsr loc_02e308
	cmpi.w #$30,($36c,a4)
	ble.w loc_045298
	move.l #$200020,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$30,d2
	jsr loc_02e0f4
	bra.w loc_0452a0

loc_045298:
	bsr.w loc_04536a
	bne.w loc_0452c2

loc_0452a0
	move.l #$20004,d0
	jsr loc_02e420
	move.w ($4d6,a4),d0
	dbra d0,loc_045252
	jsr loc_02e308
	clr.b ($2f6,a4)

loc_0452be:
	bra.w loc_043732

loc_0452c2:
	clr.b ($2f6,a4)
	jsr loc_02e308
	move.l #$100010,d0
	jsr loc_02e420
	jsr RandomNumberGod
	lea loc_0452e8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0452e8:
	dc.w $0003

	dc.w $0014
	dc.l loc_0452fc

	dc.w $0014
	dc.l loc_04534a

	dc.w $0014
	dc.l loc_045318

;--------------------------
loc_0452fc:
	cmpi.w #$40,($340,a4)
	blt.w loc_045362
	st ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_045362

loc_045318:
	movea.l #loc_044ad2,a0
	bsr.w loc_043754
	bra.w loc_045362

loc_045326:
	movea.l #loc_044bbe,a0
	bsr.w loc_043754
	bra.w loc_043816

loc_045334:
	cmpi.w #$40,($340,a4)
	blt.w loc_045362
	sf ($3c7,a4)
	bsr.w loc_046f7a
	bra.w loc_045362

loc_04534a:
	cmpi.w #$40,($340,a4)
	blt.w loc_045362
	move.b #8,($2f6,a4)
	bsr.w loc_047142
	bra.w loc_045362

;--------------------------
loc_045362:
	clr.b ($2f6,a4)
	bra.w loc_043742

loc_04536a:
	jsr RandomNumberGod
	lea loc_04537a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04537a:
	dc.w $0006

	dc.w $000a
	dc.l loc_0453b0

	dc.w $000a
	dc.l loc_0453a0

	dc.w $000a
	dc.l loc_0453a8

	dc.w $000a
	dc.l loc_0453b8

	dc.w $000a
	dc.l loc_0453c0

	dc.w $000a
	dc.l loc_0453c8

;--------------------------
loc_0453a0:
	bsr.w loc_046fc6
	bra.w loc_0453d0

loc_0453a8:
	bsr.w loc_046fe4
	bra.w loc_0453d0

loc_0453b0:
	bsr.w loc_047002
	bra.w loc_0453d0

loc_0453b8:
	bsr.w loc_047020
	bra.w loc_0453d0

loc_0453c0:
	bsr.w loc_04703e
	bra.w loc_0453d0

loc_0453c8:
	bsr.w loc_04705c
	bra.w loc_0453d0

loc_0453d0:
	rts

;--------------------------
loc_0453d2:
	move.l ($4d8,a4),($4e4,a4)
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_043742
	btst #1,($246,a4)
	beq.w loc_043732
	btst #3,($24a,a4)
	bne.w loc_043732
	cmpi.w #$60,($340,a4)
	blt.w loc_043732
	clr.b ($2f6,a4)

loc_045406:
	cmpi.w #$64,($36c,a4)
	ble.w loc_045430
	jsr loc_0226b4
	move.l #$100010,d0
	moveq #0,d2
	move.w #$46,d2
	move.b #8,($2f6,a4)
	jsr loc_02e0f4
	bra.b loc_045406

;--------------------------
loc_045430:
	movea.l #loc_044bbe,a0
	bsr.w loc_043754

loc_04543a:
	jsr loc_0226b4
	movea.l #loc_044d96,a0
	bsr.w loc_04372c
	move.l ($4e4,a4),($4d8,a4)
	btst #1,($246,a4)
	beq.b loc_04543a
	jsr RandomNumberGod
	lea loc_045468(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_045468:
	dc.w $0004

	dc.w $001e
	dc.l loc_0454c0

	dc.w $001e
	dc.l loc_045490

	dc.w $000a
	dc.l loc_045544

	dc.w $000a
	dc.l loc_045482

;--------------------------
loc_045482:
	movea.l #loc_045212,a0
	bsr.w loc_04372c
	bra.w loc_045552

;--------------------------
loc_045490:
	bsr.w loc_047142
	jsr loc_02e26e
	beq.w loc_045552
	cmpi.w #$40,($340,a4)
	blt.w loc_045552
	jsr RandomNumberGod
	smi ($3c7,a4)
	bsr.w loc_046f58
	jsr loc_02e308
	bra.w loc_045552

;--------------------------
loc_0454c0:
	cmpi.w #$28,($36c,a4)
	bgt.w loc_0454f6
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0454f6
	move.b #2,($2f6,a4)
	bsr.w loc_04728a
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_045552
	bra.b loc_0454c0

loc_0454f6:
	jsr RandomNumberGod
	lea loc_045506(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_045506:
	dc.w $0002

	dc.w $001e
	dc.l loc_045528

	dc.w $001e
	dc.l loc_045514


;--------------------------
loc_045514
	move.b #2,($2f6,a4)
	bsr.w loc_0470a0
	jsr loc_02e308
	bra.w loc_045552

;--------------------------
loc_045528:
	cmpi.w #$40,($340,a4)
	blt.w loc_045552
	st ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_045552

;--------------------------
loc_045544:
	movea.l #loc_044bbe,a0
	bsr.w loc_043754
	bra.w loc_043816

;--------------------------
loc_045552:
	clr.b ($2f6,a4)
	bra.w loc_043742

;--------------------------
loc_04555a:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_043732
	btst #1,($246,a4)
	beq.w loc_043732
	btst #3,($24a,a4)
	bne.w loc_043732
	cmpi.w #$30,($340,a4)
	blt.w loc_043732
	clr.b ($2f6,a4)
	cmpi.w #$55,($378,a4)
	bgt.w loc_0455a6
	move.b #2,($2f6,a4)
	bsr.w loc_0470a0
	jsr loc_02e308
	bra.w loc_0455a6

loc_0455a6
	clr.b ($2f6,a4)
	bra.w loc_043742

;--------------------------
loc_0455ae:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_043732
	btst #1,($246,a4)
	beq.w loc_043732
	cmpi.w #$64,($378,a4)
	bgt.w loc_043732
	cmpi.w #$30,($340,a4)
	blt.w loc_043732
	clr.b ($2f6,a4)
	bsr.w loc_047142
	beq.w loc_043732
	cmpi.w #7,($2fe,a4)
	beq.w loc_04562a
	jsr loc_02e308
	cmpi.w #$6e,($378,a4)
	bgt.w loc_0456e6
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_0456e6
	cmpi.w #$40,($340,a4)
	blt.w loc_0456e6
	move.b #8,($2f6,a4)
	bsr.w loc_047142
	jsr loc_02e308
	bra.w loc_0456e6

loc_04562a:
	jsr loc_02e26e
	bgt.w loc_04563c
	blt.w loc_04563c
	bra.w loc_0456e6

loc_04563c:
	cmpi.w #$64,($378,a4)
	bge.w loc_0456bc
	jsr RandomNumberGod
	lea loc_045656(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_045656:
	dc.w $0003

	dc.w $0014
	dc.l loc_04566a

	dc.w $0014
	dc.l loc_045682

	dc.w $0014
	dc.l loc_04569a

;--------------------------
loc_04566a:
	cmpi.w #$60,($340,a4)
	blt.w loc_0456e0
	bsr.w loc_046f58
	jsr loc_02e308
	bra.w loc_0456e6

;--------------------------
loc_045682:
	cmpi.w #$60,($340,a4)
	blt.w loc_0456e0
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_0456e6

;--------------------------
loc_04569a:
	cmpi.w #$c0,($340,a4)
	blt.w loc_0456e0
	jsr loc_02c78a
	beq.w loc_0456e0
	bsr.w loc_046e10
	jsr loc_02e308
	bra.w loc_0456e6

;--------------------------
loc_0456bc:
	jsr loc_02e308
	cmpi.w #$40,($340,a4)
	blt.w loc_0456e6
	move.b #2,($2f6,a4)
	bsr.w loc_047142
	jsr loc_02e308
	bra.w loc_0456e6

;--------------------------
loc_0456e0:
	jsr loc_02e308

loc_0456e6:
	clr.b ($2f6,a4)
	bra.w loc_043732

;--------------------------
loc_0456ee:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_043732
	btst #1,($246,a4)
	beq.w loc_043732
	cmpi.w #$50,($378,a4)
	bgt.w loc_043732
	cmpi.w #$30,($340,a4)
	blt.w loc_043732
	clr.b ($2f6,a4)
	bsr.w loc_0470a0
	beq.w loc_043732
	cmpi.w #$a,($2fe,a4)
	beq.w loc_045740
	jsr loc_02e26e
	bgt.w loc_0457be
	blt.w loc_0457be
	bra.w loc_04582c

loc_045740:
	jsr loc_02e26e
	bgt.w loc_045752
	blt.w loc_045752
	bra.w loc_04582c

loc_045752:
	cmpi.w #$60,($340,a4)
	blt.w loc_045826
	jsr RandomNumberGod
	lea loc_04576c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04576c:
	dc.w $0004

	dc.w $000a
	dc.l loc_0457be

	dc.w $000a
	dc.l loc_0457a2

	dc.w $000a
	dc.l loc_045786

	dc.w $000a
	dc.l loc_045804

;--------------------------
loc_045786:
	cmpi.w #$40,($340,a4)
	blt.w loc_04582c
	st ($3c7,a4)
	bsr.w loc_046f58
	jsr loc_02e308
	bra.w loc_04582c

;--------------------------
loc_0457a2:
	cmpi.w #$40,($340,a4)
	blt.w loc_04582c
	sf ($3c7,a4)
	bsr.w loc_046f7a
	jsr loc_02e308
	bra.w loc_04582c

;--------------------------
loc_0457be:
	cmpi.w #$40,($340,a4)
	blt.w loc_04582c
	jsr RandomNumberGod
	smi ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_04582c

;--------------------------
loc_0457e0:
	jsr loc_02e308
	cmpi.w #$40,($340,a4)
	blt.w loc_04582c
	move.b #8,($2f6,a4)
	bsr.w loc_047142
	jsr loc_02e308
	bra.w loc_04582c

;--------------------------
loc_045804:
	cmpi.w #$c0,($340,a4)
	blt.w loc_045826
	jsr loc_02c78a
	beq.w loc_045826
	bsr.w loc_046e10
	jsr loc_02e308
	bra.w loc_04582c

;--------------------------
loc_045826:
	jsr loc_02e308

loc_04582c:
	clr.b ($2f6,a4)
	bra.w loc_043732

;--------------------------
loc_045834:
	move.b ($361,a4),d0
	andi.b #$21,d0
	bne.w loc_043732
	btst #1,($246,a4)
	beq.w loc_043732
	btst #$3,($24a,a4)
	bne.w loc_043732
	cmpi.w #$60,($340,a4)
	blt.w loc_043732
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	move.b #2,($2f6,a4)
	bsr.w loc_04728a
	beq.w loc_043732
	jsr loc_02e26e
	beq.w loc_0458b6

loc_045886:
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_0458e4
	tst.b ($365,a4)
	beq.w loc_045898

loc_045898:
	move.b #2,($2f6,a4)
	bsr.w loc_04728a
	jsr loc_02e2d0
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_0458e4
	bra.b loc_045886

;--------------------------
loc_0458b6:
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_0458c2:
	move.w d0,($4d6,a4)
	move.b #2,($2f6,a4)
	bsr.w loc_04728a
	jsr loc_02e2d0
	tst.b ($271,a4)
	bne.b loc_045886
	move.w ($4d6,a4),d0
	dbra d0,loc_0458c2

loc_0458e4:
	clr.b ($2f6,a4)
	bra.w loc_043742

;--------------------------
loc_0458ec:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_043742
	btst #1,($246,a4)
	beq.w loc_043732
	btst #3,($24a,a4)
	bne.w loc_043732
	jsr loc_02c78a
	beq.w loc_043732
	cmpi.w #$60,($340,a4)
	blt.w loc_04597e
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_045940(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_045940:
	dc.w $0002

	dc.w $0014
	dc.l loc_04594e

	dc.w $0014
	dc.l loc_04596a

;--------------------------
loc_04594e:
	cmpi.w #$36,($36c,a4)
	bgt.w loc_04596a
	bsr.w loc_046e42
	beq.w loc_04596a
	jsr loc_02e308
	bra.w loc_04597e

;--------------------------
loc_04596a:
	cmpi.w #$b4,($378,a4)
	bgt.w loc_04597e
	bsr.w loc_046e10
	jsr loc_02e308

loc_04597e:
	clr.b ($2f6,a4)
	bra.w loc_043732

;--------------------------
loc_045986:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_043732
	btst #1,($246,a4)
	beq.w loc_043732
	btst #3,($24a,a4)
	bne.w loc_043732
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_043732
	cmpi.w #$30,($340,a4)
	blt.w loc_043732
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	move.b #2,($2f6,a4)
	bsr.w loc_0471fc
	jsr loc_02e26e
	bgt.w loc_0459e6
	blt.w loc_0459e6
	bra.w loc_045a84

;--------------------------
loc_0459e6:
	jsr RandomNumberGod
	lea loc_0459f6(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0459f6:
	dc.w $0004

	dc.w $000a
	dc.l loc_045a10

	dc.w $000a
	dc.l loc_045a2c

	dc.w $000a
	dc.l loc_045a6a

	dc.w $000a
	dc.l loc_045a48

;--------------------------
loc_045a10:
	cmpi.w #$40,($340,a4)
	blt.w loc_045a84
	sf ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_045a8a

;--------------------------
loc_045a2c:
	cmpi.w #$40,($340,a4)
	blt.w loc_045a84
	sf ($3c7,a4)
	bsr.w loc_046f7a
	jsr loc_02e308
	bra.w loc_045a8a

;--------------------------
loc_045a48:
	cmpi.w #$c0,($340,a4)
	blt.w loc_045a84
	jsr loc_02c78a
	beq.w loc_045a84
	bsr.w loc_046e10
	jsr loc_02e308
	bra.w loc_045a8a

;--------------------------
loc_045a6a:
	jsr loc_02e308
	move.b #2,($2f6,a4)
	bsr.w loc_0470a0
	jsr loc_02e308
	bra.w loc_045a8a

;--------------------------
loc_045a84:
	jsr loc_02e308

loc_045a8a:
	clr.b ($2f6,a4)
	bra.w loc_043732

;--------------------------
loc_045a92:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_043732
	btst #1,($246,a4)
	beq.w loc_043732
	btst #3,($24a,a4)
	bne.w loc_043732
	cmpi.w #$46,($378,a4)
	bgt.w loc_043732
	cmpi.w #$30,($340,a4)
	blt.w loc_043732
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550

loc_045ad6:
	cmpi.w #$32,($36c,a4)
	bgt.w loc_045b0c
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_045b0c
	move.b #2,($2f6,a4)
	bsr.w loc_04728a
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_045c10
	bra.b loc_045ad6

loc_045b0c:
	btst #1,($362,a4)
	beq.w loc_045b40
	jsr RandomNumberGod
	lea loc_045b26(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_045b26:
	dc.w $0004

	dc.w $001e
	dc.l loc_045b94

	dc.w $001e
	dc.l loc_045bd8

	dc.w $000a
	dc.l loc_045bb6

	dc.w $000a
	dc.l loc_045c00

;--------------------------
loc_045b40:
	jsr RandomNumberGod
	lea loc_045b50(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_045b50:
	dc.w $0004

	dc.w $0032
	dc.l loc_045c00

	dc.w $0014
	dc.l loc_045bd8

	dc.w $0014
	dc.l loc_045bb6

	dc.w $000a
	dc.l loc_045b78

;--------------------------
loc_045b6a:
	movea.l #loc_045212,a0
	bsr.w loc_04372c
	bra.w loc_045c10

;--------------------------
loc_045b78:
	cmpi.w #$40,($340,a4)
	blt.w loc_045c10
	sf ($3c7,a4)
	bsr.w loc_046f58
	jsr loc_02e308
	bra.w loc_045c10

;--------------------------
loc_045b94:
	movea.l #loc_044bbe,a0
	bsr.w loc_043754
	bra.w loc_043816

;--------------------------
loc_045ba2:
	move.b #2,($2f6,a4)
	bsr.w loc_047142
	jsr loc_02e308
	bra.w loc_045c10

;--------------------------
loc_045bb6:
	cmpi.w #$40,($340,a4)
	blt.w loc_045c10
	jsr RandomNumberGod
	smi ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_045c10

;--------------------------
loc_045bd8:
	cmpi.w #$40,($340,a4)
	blt.w loc_045c10
	move.l #$100010,d0
	jsr loc_02e420
	st ($3c7,a4)
	bsr.w loc_046e8a
	jsr loc_02e308
	bra.w loc_045c10

;--------------------------
loc_045c00:
	move.b #2,($2f6,a4)
	bsr.w loc_0470a0
	jsr loc_02e308

loc_045c10:
	clr.b ($2f6,a4)
	bra.w loc_043732

;--------------------------
loc_045c18:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_043732
	btst #1,($246,a4)
	beq.w loc_043732
	btst #3,($24a,a4)
	bne.w loc_043732
	cmpi.w #$30,($340,a4)
	blt.w loc_043732
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_04728a
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_04728a
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	beq.w loc_045c9c
	move.b #2,($2f6,a4)
	bsr.w loc_0470a0
	jsr loc_02e308
	bra.w loc_045cb0

loc_045c9c:
	move.b #8,($2f6,a4)
	bsr.w loc_047142
	jsr loc_02e308
	bra.w loc_045cb0

loc_045cb0:
	clr.b ($2f6,a4)
	bra.w loc_043732

;--------------------------
loc_045cb8:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_043732
	btst #1,($246,a4)
	beq.w loc_043732
	btst #3,($24a,a4)
	bne.w loc_043732
	cmpi.w #$30,($340,a4)
	blt.w loc_043732
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_0471fc
	beq.w loc_043732
	cmpi.w #4,($2fe,a4)
	beq.w loc_045d48
	jsr loc_02e26e
	beq.w loc_045eaa
	cmpi.w #$60,($340,a4)
	blt.w loc_045eaa
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_045eaa
	cmpi.w #$64,($378,a4)
	bgt.w loc_045eaa
	jsr RandomNumberGod
	smi ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_045eaa

;--------------------------
loc_045d48:
	jsr loc_02e26e
	bgt.w loc_045d5a
	blt.w loc_045d5a
	bra.w loc_045ea4

;--------------------------
loc_045d5a:
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	beq.w loc_045d9a
	jsr RandomNumberGod
	lea loc_045d80(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_045d80:
	dc.w $0004

	dc.w $0028
	dc.l loc_045dee

	dc.w $0028
	dc.l loc_045de0

	dc.w $000a
	dc.l loc_045e5a

	dc.w $000a
	dc.l loc_045dc4

;--------------------------
loc_045d9a:
	jsr RandomNumberGod
	lea loc_045daa(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_045daa:
	dc.w $0004

	dc.w $003c
	dc.l loc_045e5a

	dc.w $0014
	dc.l loc_045dee

	dc.w $0014
	dc.l loc_045e34

	dc.w $000a
	dc.l loc_045de0

;--------------------------
loc_045dc4:
	move.b #2,($2f6,a4)
	bsr.w loc_0471fc
	jsr loc_02e26e
	bgt.w loc_045dee
	blt.w loc_045dee
	bra.w loc_045eaa

;--------------------------
loc_045de0:
	bsr.w loc_0470a0
	jsr loc_02e26e
	beq.w loc_045eaa

loc_045dee:
	cmpi.w #$c0,($340,a4)
	blt.w loc_045e0a
	bsr.w loc_046e10
	beq.w loc_045e0a
	jsr loc_02e308
	bra.w loc_045eaa

loc_045e0a:
	cmpi.w #$60,($340,a4)
	blt.w loc_045eaa
	st ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_045eaa

;--------------------------
loc_045e26:
	bsr.w loc_04728a
	jsr loc_02e308
	bra.w loc_045eaa

;--------------------------
loc_045e34:
	cmpi.w #$40,($340,a4)
	blt.w loc_045eaa
	bsr.w loc_046f7a
	jsr loc_02e308
	bra.w loc_045eaa

;--------------------------
loc_045e4c:
	movea.l #loc_044bbe,a0
	bsr.w loc_043754
	bra.w loc_043816

;--------------------------
loc_045e5a:
	move.b #2,($2f6,a4)
	bsr.w loc_0470a0
	jsr loc_02e308
	bra.w loc_045eaa

;--------------------------
loc_045e6e:
	bsr.w loc_047142
	jsr loc_02e308
	bra.w loc_045eaa

;--------------------------
loc_045e7c:
	cmpi.w #$40,($340,a4)
	blt.w loc_045eaa
	move.l #$40004,d0
	jsr loc_02e420
	st ($3c7,a4)
	bsr.w loc_046e8a
	jsr loc_02e308
	bra.w loc_045eaa

;--------------------------
loc_045ea4:
	jsr loc_02e308

loc_045eaa:
	clr.b ($2f6,a4)
	bra.w loc_043742

;--------------------------
loc_045eb2:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_043732
	btst #1,($246,a4)
	beq.w loc_043732
	btst #3,($24a,a4)
	bne.w loc_043732
	cmpi.w #$40,($340,a4)
	blt.w loc_043732
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_045efc(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_045efc:
	dc.w $0002

	dc.w $005a
	dc.l loc_045f0a

	dc.w $000a
	dc.l loc_045f30

;--------------------------
loc_045f0a:
	cmpi.w #$46,($378,a4)
	bge.w loc_045f8c
	cmpi.w #$40,($340,a4)
	blt.w loc_045f8c
	st ($3c7,a4)
	bsr.w loc_046e8a
	jsr loc_02e308
	bra.w loc_045f8c

;--------------------------
loc_045f30:
	cmpi.w #$50,($378,a4)
	bge.w loc_045f6a
	cmpi.w #$30,($378,a4)
	bge.w loc_045f4e
	bsr.w loc_0471fc
	jsr loc_02e308

loc_045f4e:
	cmpi.w #$40,($340,a4)
	blt.w loc_045f8c
	st ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_045f8c

;--------------------------
loc_045f6a:
	cmpi.w #$6e,($36c,a4)
	bge.w loc_045f8c
	cmpi.w #$40,($340,a4)
	blt.w loc_045f8c
	st ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308

loc_045f8c:
	clr.b ($2f6,a4)
	bra.w loc_043742

;--------------------------
loc_045f94:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_043732
	cmpi.w #$40,($340,a4)
	blt.w loc_043732
	jsr loc_02e496
	jsr loc_02e550
	tst.b ($361,a4)
	bne.w loc_04603e
	tst.b ($247,a4)
	bne.w loc_045fe6
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_045fe6
	movea.l #loc_044d96,a0
	bsr.w loc_04372c
	tst.b ($361,a4)
	bne.w loc_04603e

loc_045fe6:
	tst.b ($377,a4)
	beq.w loc_044bbe
	move.w #7,d0

loc_045ff2:
	btst #5,($24a,a4)
	bne.w loc_043732
	move.w d0,($4d6,a4)
	cmpi.w #$46,($36c,a4)
	ble.w loc_046014
	move.b #8,($2f6,a4)

loc_046010:
	bra.w loc_046020

;--------------------------
loc_046014:
	st ($3c7,a4)
	bsr.w loc_046e8a
	bra.w loc_046042

loc_046020:
	move.l #$20004,d0
	jsr loc_02e420
	move.w ($4d6,a4),d0
	dbra d0,loc_045ff2

loc_046034:
	jsr loc_02e308
	clr.b ($2f6,a4)

loc_04603e:
	bra.w loc_043732

;--------------------------
loc_046042:
	jsr loc_02e308
	clr.b ($2f6,a4)
	move.l #$100010,d0
	jsr loc_02e420
	jsr RandomNumberGod
	lea loc_046068(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_046068:
	dc.w $0004

	dc.w $001e
	dc.l loc_0460b8

	dc.w $001e
	dc.l loc_04609a

	dc.w $001e
	dc.l loc_046082

	dc.w $000a
	dc.l loc_0460c6

;--------------------------
loc_046082:
	cmpi.w #$40,($340,a4)
	blt.b loc_046034
	st ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.b loc_046034

;--------------------------
loc_04609a:
	cmpi.w #$40,($340,a4)
	blt.b loc_046034
	move.l #8,($2f6,a4)
	bsr.w loc_047142
	jsr loc_02e308
	bra.w loc_0460de

;--------------------------
loc_0460b8:
	movea.l #loc_044bbe,a0
	bsr.w loc_043754
	bra.w loc_043816

;--------------------------
loc_0460c6:
	cmpi.w #$40,($340,a4)
	blt.w loc_046034
	st ($3c7,a4)
	bsr.w loc_046f7a
	jsr loc_02e308

loc_0460de:
	clr.b ($2f6,a4)
	bra.w loc_043742

;--------------------------
loc_0460e6:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_043732
	btst #1,($246,a4)
	beq.w loc_043732
	btst #3,($24a,a4)
	bne.w loc_043732
	clr.b ($2f6,a4)
	cmpi.w #$60,($340,a4)
	blt.w loc_04612c
	movea.l #loc_044bbe,a0
	bsr.w loc_043754

loc_04611e:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_04611e

loc_04612c:
	clr.b ($2f6,a4)
	bra.w loc_043732

;--------------------------
loc_046134:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_043732
	btst #1,($246,a4)
	beq.w loc_043732
	btst #3,($24a,a4)
	bne.w loc_043732
	cmpi.w #$c0,($340,a4)
	blt.w loc_043732
	clr.b ($2f6,a4)
	jsr RandomNumberGod
	lea loc_046172(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_046172:
	dc.w $0002

	dc.w $000a
	dc.l loc_046180

	dc.w $000a
	dc.l loc_0461aa

;--------------------------
loc_046180:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_046194
	move.b #2,($2f6,a4)

loc_046194:
	bsr.w loc_04728a
	jsr loc_02e26e
	bgt.w loc_0461ec
	blt.w loc_0461d4
	bra.w loc_0461fa

;--------------------------
loc_0461aa:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0461be
	move.b #2,($2f6,a4)

loc_0461be:
	bsr.w loc_0471fc
	jsr loc_02e26e
	bgt.w loc_0461ec
	blt.w loc_0461d4
	bra.w loc_0461fa

loc_0461d4:
	jsr loc_02c78a
	beq.w loc_0461ec
	movea.l #loc_0458ec,a0
	bsr.w loc_04372c
	bra.w loc_046200

loc_0461ec:
	movea.l #loc_045212,a0
	bsr.w loc_04372c
	bra.w loc_046200

loc_0461fa:
	jsr loc_02e308

loc_046200:
	clr.b ($2f6,a4)
	bra.w loc_043732

;--------------------------
loc_046208:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_043732
	btst #1,($246,a4)
	beq.w loc_043732
	btst #3,($24a,a4)
	bne.w loc_043732
	cmpi.w #$70,($340,a4)
	blt.w loc_043732
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_046252(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_046252:
	dc.w $000d

	dc.w $000a
	dc.l loc_04637c

	dc.w $000a
	dc.l loc_046346

	dc.w $000a
	dc.l loc_0463e0

	dc.w $000a
	dc.l loc_046444

	dc.w $000a
	dc.l loc_0463b2

	dc.w $000a
	dc.l loc_04641c

	dc.w $000a
	dc.l loc_046478

	dc.w $000a
	dc.l loc_046490

	dc.w $000a
	dc.l loc_0464cc

	dc.w $000a
	dc.l loc_046508

	dc.w $000a
	dc.l loc_0462e4

	dc.w $000a
	dc.l loc_04632e

	dc.w $000a
	dc.l loc_0462a2

;--------------------------
loc_0462a2:
	cmpi.w #$40,($340,a4)
	blt.w loc_0465c4
	st ($3c7,a4)
	bsr.w loc_046f58
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	st ($3c7,a4)
	bsr.w loc_046f58
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bra.w loc_0465a4

;--------------------------
loc_0462e4:
	cmpi.w #$60,($340,a4)
	blt.w loc_0465c4
	movea.l #loc_044b44,a0
	bsr.w loc_043754
	jsr loc_02e496
	jsr loc_02e550
	move.l #$200030,d0
	move.b #2,($2f6,a4)
	moveq #0,d2
	move.w #$56,d2
	jsr loc_02e0f4
	bsr.w loc_046e10
	beq.w loc_04632e
	jsr loc_02e308
	bra.w loc_0465c4

;--------------------------
loc_04632e:
	cmpi.w #$b4,($36c,a4)
	blt.w loc_0465c4
	bsr.w loc_04707a
	jsr loc_02e308
	bra.w loc_0465c4

;--------------------------
loc_046346:
	cmpi.w #$40,($340,a4)
	blt.w loc_0465c4
	st ($3c7,a4)
	bsr.w loc_046f58
	jsr loc_02e308
	jsr RandomNumberGod
	lea loc_04636e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04636e:
	dc.w $0002

	dc.w $0050
	dc.l loc_0465a4

	dc.w $0014
	dc.l loc_046592

;--------------------------
loc_04637c:
	cmpi.w #$40,($340,a4)
	blt.w loc_0465c4
	sf ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	jsr RandomNumberGod
	lea loc_0463a4(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0463a4:
	dc.w $0002

	dc.w $0050
	dc.l loc_046592

	dc.w $0014
	dc.l loc_0465a4

;--------------------------
loc_0463b2:
	cmpi.w #$64,($378,a4)
	bgt.w loc_0465c4
	move.b #2,($2f6,a4)
	bsr.w loc_0471fc
	jsr loc_02e308
	move.b #2,($2f6,a4)
	bsr.w loc_0470a0
	jsr loc_02e308
	bra.w loc_0465c4

;--------------------------
loc_0463e0:
	cmpi.w #$78,($378,a4)
	bgt.w loc_0465c4
	bsr.w loc_04728a
	jsr loc_02e308
	bsr.w loc_04728a
	jsr loc_02e308
	jsr RandomNumberGod
	lea loc_04640e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04640e
	dc.w $0002

	dc.w $001e
	dc.l loc_0465a4

	dc.w $001e
	dc.l loc_046574

;--------------------------
loc_04641c:
	cmpi.w #$8c,($378,a4)
	bgt.w loc_0465c4
	cmpi.w #$40,($340,a4)
	blt.w loc_0465c4
	move.b #8,($2f6,a4)
	bsr.w loc_047142
	jsr loc_02e308
	bra.w loc_046574

;--------------------------
loc_046444:
	cmpi.w #$96,($378,a4)
	bgt.w loc_0465c4
	cmpi.w #$40,($340,a4)
	blt.w loc_0465c4
	sf ($3c7,a4)
	bsr.w loc_046f7a
	jsr loc_02e308
	st ($3c7,a4)
	bsr.w loc_046f7a
	jsr loc_02e308
	bra.w loc_0465c4

;--------------------------
loc_046478:
	bsr.w loc_046ec8
	jsr loc_02e308
	bsr.w loc_046ec8
	jsr loc_02e308
	bra.w loc_0465c4

;--------------------------
loc_046490:
	movea.l #loc_044d6e,a0
	bsr.w loc_043754

loc_04649a:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_04649a
	jsr RandomNumberGod
	lea loc_0464b8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0464b8:
	dc.w $0003

	dc.w $001e
	dc.l loc_046566

	dc.w $001e
	dc.l loc_046592

	dc.w $001e
	dc.l loc_046558

;--------------------------
loc_0464cc:
	movea.l #loc_044d4a,a0
	bsr.w loc_043754

loc_0464d6:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_0464d6
	jsr RandomNumberGod
	lea loc_0464f4(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0464f4:
	dc.w $0003

	dc.w $001e
	dc.l loc_0465b2

	dc.w $001e
	dc.l loc_046592

	dc.w $001e
	dc.l loc_046558

;--------------------------
loc_046508:
	movea.l #loc_044d26,a0
	bsr.w loc_043754

loc_046512:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_046512
	jsr RandomNumberGod
	lea loc_046530(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_046530:
	dc.w $0004

	dc.w $001e
	dc.l loc_046558

	dc.w $001e
	dc.l loc_046592

	dc.w $000a
	dc.l loc_0465b2

	dc.w $000a
	dc.l loc_046566

;--------------------------
loc_04654a:
	movea.l #loc_044d4a,a0
	bsr.w loc_043754
	bra.w loc_0465c4

;--------------------------
loc_046558:
	movea.l #loc_044d26,a0
	bsr.w loc_043754
	bra.w loc_0465c4

;--------------------------
loc_046566:
	bsr.w loc_046ec8
	jsr loc_02e308
	bra.w loc_0465c4

;--------------------------
loc_046574:
	cmpi.w #$40,($340,a4)
	blt.w loc_0465c4
	move.b #8,($2f6,a4)
	bsr.w loc_047142
	jsr loc_02e308
	bra.w loc_0465c4

;--------------------------
loc_046592:
	st ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_0465c4

;--------------------------
loc_0465a4:
	bsr.w loc_046f58
	jsr loc_02e308
	bra.w loc_0465c4

loc_0465b2:
	st ($3c7,a4)
	bsr.w loc_046f0c
	jsr loc_02e308
	bra.w loc_0465c4

;--------------------------
loc_0465c4:
	clr.b ($2f6,a4)
	bra.w loc_043742

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0465cc:
	dc.l loc_046778,loc_046818,loc_046718,loc_0466f8
	dc.l loc_0468b8,loc_0468d8,loc_0468f8,loc_046918
	dc.l loc_046938,loc_046958,loc_046738,loc_046758
	dc.l loc_046978,loc_0469f8,$00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_046608:
	dc.l loc_046798,loc_046838,loc_046718,loc_0466f8
	dc.l loc_0468b8,loc_0468d8,loc_0468f8,loc_046918
	dc.l loc_046938,loc_046958,loc_046738,loc_046758
	dc.l loc_046998,loc_0469f8,$00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_046644:
	dc.l loc_0467b8,loc_046858,loc_046718,loc_0466f8
	dc.l loc_0468b8,loc_0468d8,loc_0468f8,loc_046918
	dc.l loc_046938,loc_046958,loc_046738,loc_046758
	dc.l loc_0469b8,loc_0469f8,$00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_046680:
	dc.l loc_0467d8,loc_046878,loc_046718,loc_0466f8
	dc.l loc_0468b8,loc_0468d8,loc_0468f8,loc_046918
	dc.l loc_046938,loc_046958,loc_046738,loc_046758
	dc.l loc_0469d8,loc_0469f8,$00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0466bc:
	dc.l loc_0467f8,loc_046898,loc_046718,loc_0466f8
	dc.l loc_0468b8,loc_0468d8,loc_0468f8,loc_046918
	dc.l loc_046938,loc_046958,loc_046738,loc_046758
	dc.l loc_046998,loc_0469f8,$00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0466f8:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

loc_046718:
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

loc_046738:
	dc.w $7111,$700a,$601c,$700f,$112f,$713f,$324f,$526f
	dc.w $337f,$539f,$73af,$34bf,$74df,$75ff,$7aff,$7fff

loc_046758:
	dc.w $7888,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_046778:
	dc.w $346b,$7fef,$4521,$6831,$1b62,$4d95,$7fb6,$5fd8
	dc.w $7653,$3a97,$4ddb,$6ffd,$7162,$03a2,$26c6,$6f20

loc_046798:
	dc.w $346b,$7fff,$6211,$2521,$6741,$7963,$7b84,$0da6
	dc.w $4456,$2a9b,$0ddf,$7fff,$5539,$085f,$797f,$4f23

loc_0467b8:
	dc.w $346b,$7fff,$3631,$4942,$2d64,$0fa6,$6fc9,$4feb
	dc.w $5230,$4454,$3775,$3997,$4850,$3d92,$6fe5,$7f31

loc_0467d8:
	dc.w $346b,$7fff,$1410,$4700,$4a20,$4d42,$2f63,$5f95
	dc.w $2851,$5c92,$3fc2,$4ff5,$5636,$5a4a,$0d7d,$0078

loc_0467f8:
	dc.w $346b,$7fef,$1431,$2841,$4a73,$4da5,$2fc7,$4fe9
	dc.w $4700,$4b00,$4f31,$5f74,$5121,$3554,$3775,$5930

loc_046818:
	dc.w $346b,$2cbc,$3300,$2510,$7730,$5962,$1b95,$1cb7
	dc.w $0320,$4553,$3986,$6cca,$2010,$2060,$2282,$0a00

loc_046838:
	dc.w $346b,$2cbc,$4000,$4000,$4200,$4520,$2741,$6864
	dc.w $4123,$7546,$788a,$7ccc,$1004,$1238,$645a,$4c00

loc_046858:
	dc.w $346b,$2cbc,$4200,$2600,$6831,$7a62,$1c95,$5bb8
	dc.w $7000,$4010,$3331,$3664,$2730,$3b71,$6cb4,$4c00

loc_046878:
	dc.w $346b,$2cbc,$7000,$4300,$4600,$4900,$2c30,$7c52
	dc.w $6410,$6840,$6c80,$6ca2,$7525,$2939,$2b5b,$1022

loc_046898:
	dc.w $7bbb,$7cbc,$7000,$7410,$3730,$1a71,$5b93,$5cb5
	dc.w $0400,$0900,$4c00,$4c40,$7000,$4010,$3331,$5600

loc_0468b8:
	dc.w $7bbb,$7a00,$3d00,$7f00,$5f60,$7f90,$6ff1,$6ffa
	dc.w $7a00,$7f00,$7f90,$6ff1,$7f60,$5f80,$7fa0,$7fff

loc_0468d8:
	dc.w $0777,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_0468f8:
	dc.w $0000,$700f,$133f,$755f,$188f,$7aaf,$1ddf,$7fff
	dc.w $700f,$735f,$76af,$79ff,$700d,$535d,$179e,$3adf

loc_046918:
	dc.w $0000,$7fff,$1ddf,$7aaf,$188f,$755f,$133f,$700f
	dc.w $79ff,$76af,$735f,$700f,$3adf,$179e,$535d,$700d

loc_046938:
	dc.w $736b,$0409,$750a,$672d,$394f,$796f,$3b8f,$5ccf
	dc.w $6a3d,$2c6e,$0d9f,$0ebd,$3b39,$5c5b,$1e6d,$7f7f

loc_046958:
	dc.w $7888,$3053,$4174,$3384,$54a4,$66b5,$18d5,$69e6
	dc.w $06b3,$78c4,$0be6,$7df7,$71a6,$23b8,$04da,$55eb

loc_046978:
	dc.w $0aaa,$504f,$505f,$116f,$517f,$518f,$129f,$32af
	dc.w $72bf,$72cf,$54df,$37df,$19ef,$3bef,$5dff,$7fff

loc_046998:
	dc.w $6335,$0409,$250a,$451b,$462c,$672d,$484d,$195d
	dc.w $3a6d,$6a7e,$4b9e,$7cae,$3dbe,$0edf,$4eef,$7fff

loc_0469b8:
	dc.w $1443,$5f03,$7f13,$6f23,$4f43,$5f52,$7f62,$7f72
	dc.w $4f92,$6fa2,$7fb1,$5fd1,$4fe1,$6ff1,$6ff8,$7fff

loc_0469d8:
	dc.w $633a,$3053,$2063,$1082,$0092,$20a2,$30b1,$00d1
	dc.w $10e0,$20f0,$72f2,$25f5,$77f7,$7afa,$2dfd,$7fff

loc_0469f8:
	dc.w $7ccc,$2c84,$7c94,$5db5,$5ec7,$5ec6,$0fd9,$7fd9
	dc.w $7feb,$4ffd,$6fff,$43c9,$53c9,$43ca,$53ca,$43cb

;--------------------------
ConPRGStart: ;loc_046a18
    move.l #loc_04731a,($86,a4)
    move.l #loc_043700,($56,a4)
    move.l #loc_046ab4,($1b6,a4)
    move.l #loc_046ac4,($1ba,a4)
    move.l #loc_046ace,($1be,a4)
    move.l #loc_046ada,($1c2,a4)
    move.l #loc_0436d4,($1c6,a4)
    move.l #loc_047318,($1ce,a4)
    move.l #loc_046c2c,($1ca,a4)
    move.l #loc_048444,($1d2,a4)
    move.l #loc_094c00,($1d6,a4)
    move.l #loc_048260,($1da,a4)
    move.l #loc_048314,($1de,a4)
    move.l #loc_048280,($1e2,a4)
    move.l #loc_048230,($1e6,a4)
    move.l #loc_048214,($1ea,a4)
    move.l #loc_048348,($1ee,a4)
    bsr.w loc_0436a8
    andi.w #$f0ff,($2ee,a4)
    move.l #loc_048568,($2d0,a4)
    rts

;--------------------------
loc_046ab4:
    clr.w ($550,a4)
    clr.w ($552,a4)
    jsr loc_02a9c4
    rts


;--------------------------
loc_046ac4:
    clr.w ($550,a4)
    clr.w ($552,a4)
    rts

;--------------------------
loc_046ace:
    clr.w ($552,a4)
    move.w ($2ba,a3),($2ba,a4)
    rts

;--------------------------
loc_046ada:
    lea ($3d0,a4),a0
    move.b #5,d7
    jsr loc_02cc42
    and.b d1,($3c0,a4)
    or.b d0,($3c0,a4)
    andi.b #$55,($3c0,a4)
    jsr loc_02c78a
    beq.w loc_046b16
    lea ($3d6,a4),a0
    move.b #$d,d7
    jsr loc_02cc42
    and.b d1,($3c1,a4)
    or.b d0,($3c1,a4)

loc_046b16:
    move.b ($2fb,a4),d0
    or.b d0,($3c4,a4)
    lea ($3dc,a4),a0
    lea loc_046c12(pc),a1
    move.w #3,d7
    jsr loc_02c946
    and.b d1,($3c3,a4)
    or.b d0,($3c3,a4)
    andi.b #$aa,($3c3,a4)
    lea ($3e4,a4),a0
    lea loc_046c1c(pc),a1
    move.w #5,d7
    jsr loc_02c946
    and.b d1,($3c2,a4)
    or.b d0,($3c2,a4)
    andi.b #$55,($3c2,a4)
    tst.b ($3e5,a4)
    bmi.b loc_046b74
    cmpi.b #5,($2f6,a4)
    beq.w loc_046b70
    bra.b loc_046b74

loc_046b70:
    sf ($3e5,a4)

loc_046b74:
    tst.b ($3fd,a4)
    bne.b loc_046b8a
    clr.l ($3fc,a4)
    st ($3fd,a4)
    clr.l ($400,a4)
    clr.l ($404,a4)

loc_046b8a:
    tst.b ($3fe,a4)
    beq.b loc_046b94
    subq.b #1,($3fe,a4)

loc_046b94:
    tst.b ($3ff,a4)
    beq.b loc_046b9e
    subq.b #1,($3ff,a4)

loc_046b9e:
    lea ($400,a4),a0
    jsr loc_02cbba
    tst.b ($400,a4)
    beq.b loc_046bb4
    move.b #8,($3fe,a4)

loc_046bb4:
    tst.b ($404,a4)
    beq.b loc_046bc0
    move.b #8,($3ff,a4)

loc_046bc0:
    tst.b ($209,a4)
    bmi.b loc_046bdc
    tst.b ($3fe,a4)
    bne.b loc_046bf0
    tst.b ($3ff,a4)
    beq.b loc_046c00
    cmpi.w #8,($20a,a4)
    bgt.b loc_046c00
    bra.b loc_046bf0

loc_046bdc:
    tst.b ($3ff,a4)
    bne.b loc_046bf0
    tst.b ($3fe,a4)
    beq.b loc_046c00
    cmpi.w #$8,($20a,a4)
    bgt.b loc_046c00

loc_046bf0:
    move.b ($2f8,a4),d0
    lsr.b #4,d0
    or.b ($2f7,a4),d0
    beq.b loc_046c00
    or.b d0,($3c5,a4)

loc_046c00:
    andi.b #$aa,($3c5,a4)
    tst.b ($2fc,a4)
    smi d0
    or.b d0,($3c6,a4)
    rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_046c12:
    dc.w $0202,$080a,$0608,$0804,$0a00

loc_046c1c:
    dc.w $0202,$080a,$0608,$0804,$0c02,$020c,$0a06,$0c00

;--------------------------
loc_046c2c:
    bsr.w loc_046d00
    bne.w loc_046c40
    bsr.w loc_046db4
    bne.w loc_046c40
    bsr.w loc_046e08

loc_046c40:
    rts

;--------------------------
loc_046c42:
    move.b ($2f6,a4),d0
    cmpi.b #4,d0
    beq.w loc_046c56
    cmpi.b #8,d0
    bne.w loc_046c9e

loc_046c56:
    btst #7,($2f7,a4)
    beq.w loc_046c68
    bsr.w loc_046fc6
    bne.w loc_046cfe

loc_046c68:
    btst #6,($2f7,a4)
    beq.w loc_046c7a
    bsr.w loc_046fe4
    bne.w loc_046cfe

loc_046c7a:
    btst #5,($2f7,a4)
    beq.w loc_046c8c
    bsr.w loc_047002
    bne.w loc_046cfe

loc_046c8c:
    btst #4,($2f7,a4)
    beq.w loc_046c9e
    bsr.w loc_047002
    bne.w loc_046cfe

loc_046c9e:
    btst #1,($2f6,a4)
    beq.w loc_046cfa
    btst #3,($2f6,a4)
    beq.w loc_046cfa
    btst #7,($2f7,a4)
    beq.w loc_046cc4
    bsr.w loc_04703e
    bne.w loc_046cfe

loc_046cc4:
    btst #6,($2f7,a4)
    beq.w loc_046cd6
    bsr.w loc_04705c
    bne.w loc_046cfe

loc_046cd6:
    btst #5,($2f7,a4)
    beq.w loc_046ce8
    bsr.w loc_047020
    bne.w loc_046cfe

loc_046ce8:
    btst #4,($2f7,a4)
    beq.w loc_046cfa
    bsr.w loc_047020
    bne.w loc_046cfe

loc_046cfa:
    clr.w d0
    rts

loc_046cfe:
    rts

;--------------------------
loc_046d00:
    tst.b ($3c1,a4)
    beq.b loc_046d0e
    bsr.w loc_046e42
    bne.w loc_046db2

loc_046d0e:
    tst.b ($3c2,a4)
    beq.b loc_046d1c
    bsr.w loc_046e10
    bne.w loc_046db2

loc_046d1c:
    tst.b ($3c4,a4)
    beq.b loc_046d2a
    bsr.w loc_046f58
    bne.w loc_046db2

loc_046d2a:
    move.b ($3c0,a4),d1
    andi.b #$50,d1
    beq.b loc_046d44
    bsr.w loc_046e8a
    bne.w loc_046db2
    bsr.w loc_046ec8
    bne.w loc_046db2

loc_046d44:
    move.b ($3c3,a4),d1
    andi.b #$a0,d1
    beq.b loc_046d56
    bsr.w loc_046f0c
    bne.w loc_046db2

loc_046d56:
    move.b ($3c5,a4),d1
    andi.b #$a0,d1
    beq.b loc_046d68
    bsr.w loc_046f7a
    bne.w loc_046db2

loc_046d68:
    bsr.w loc_046c42
    bne.w loc_046db2
    move.b ($3c0,a4),d1
    andi.b #5,d1
    beq.b loc_046d8a
    bsr.w loc_046e8a
    bne.w loc_046db2
    bsr.w loc_046ec8
    bne.w loc_046db2

loc_046d8a:
    move.b ($3c3,a4),d1
    andi.b #$a,d1
    beq.b loc_046d9c
    bsr.w loc_046f0c
    bne.w loc_046db2

loc_046d9c:
    move.b ($3c5,a4),d1
    andi.b #$a,d1
    beq.b loc_046dae
    bsr.w loc_046f7a
    bne.w loc_046db2

loc_046dae:
    clr.w d0
    rts

loc_046db2:
    rts

;--------------------------
loc_046db4:
    btst #7,($2f7,a4)
    beq.b loc_046dc4
    bsr.w loc_0470a0
    bne.w loc_046e06

loc_046dc4
    btst #6,($2f7,a4)
    beq.b loc_046dd4
    bsr.w loc_047142
    bne.w loc_046e06

loc_046dd4:
    btst #5,($2f7,a4)
    beq.b loc_046de4
    bsr.w loc_0471fc
    bne.w loc_046e06

loc_046de4:
    btst #4,($2f7,a4)
    beq.b loc_046df4
    bsr.w loc_04728a
    bne.w loc_046e06

loc_046df4:
    tst.b ($3c6,a4)
    beq.b loc_046e02
    bsr.w loc_04707a
    bne.w loc_046e06

loc_046e02:
    clr.w d0
    rts

loc_046e06:
    rts

;--------------------------
loc_046e08:
    clr.w d0
    rts

;--------------------------
loc_046e0c:
    clr.w d0
    rts

;--------------------------
loc_046e10:
	jsr loc_02c78a
	beq.b loc_046e0c
	btst #1,($246,a4)
	beq.b loc_046e0c
	btst #5,($24a,a4)
	beq.b loc_046e30
	tst.w ($550,a4)
	bne.b loc_046e30
	bra.b loc_046e0c

loc_046e30:
	sf ($3e5,a4)
	st ($bb,a4)
	move.w #$26,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_046e42:
	jsr loc_02c78a
	beq.b loc_046e0c
	btst #1,($246,a4)
	beq.b loc_046e0c
	btst #5,($24a,a4)
	beq.b loc_046e6c
	tst.w ($550,a4)
	bne.b loc_046e6c
	tst.w ($552,a4)
	bne.b loc_046e68
	bra.b loc_046e0c

loc_046e68:
	bra.w loc_046e7c

loc_046e6c:
	cmpi.w #$36,($226,a4)
	bgt.b loc_046e0c
	jsr loc_02a4e4
	beq.b loc_046e0c

loc_046e7c:
	sf ($3d7,a4)
	move.w #$27,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_046e8a:;360P
	btst #5,($24a,a4)
	bne.w loc_046e0c
	cmpi.w #$46,($226,a4)
	bgt.w loc_046e0c
	jsr loc_02a4e4;throw check
	beq.w loc_046e0c
	st ($bb,a4)
	sf ($3d1,a4)
	cmpi.w #$36,($226,a4)
	bgt.b loc_046ebe
	move.w #6,($552,a4)

loc_046ebe:
	move.w #$24,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_046ec8:;360P #2
	btst #5,($24a,a4)
	bne.w loc_046e0c
	btst #1,($246,a4)
	beq.w loc_046e0c
	sf ($bb,a4)
	sf ($3d1,a4)
	move.w #$23,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_046eee:;360P #3
	cmpi.w #$30,($226,a4)
	bgt.w loc_046e0c
	jsr loc_02a4e4
	beq.w loc_046e0c
	move.w #$25,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_046f0c:;236K
	btst #5,($24a,a4)
	bne.w loc_046e0c
	btst #1,($246,a4)
	beq.w loc_046e0c
	tst.b (1,a4)
	bpl.b loc_046f34
	move.b ($3c3,a4),d0
	andi.b #$88,d0
	sne ($bb,a4)
	bra.b loc_046f3a

loc_046f34:
	move.b ($3c7,a4),($bb,a4)

loc_046f3a:
	sf ($3dd,a4)
	tst.b ($bb,a4)
	bne.b loc_046f4e
	move.w #$21,d0
	move.w d0,($2fe,a4)
	rts

loc_046f4e:
	move.w #$22,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_046f58:
	btst #5,($24a,a4)
	bne.w loc_046e0c
	btst #1,($246,a4)
	beq.w loc_046e0c
	st ($bb,a4)
	move.w #$18,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_046f7a:;66K
	btst #5,($24a,a4)
	bne.w loc_046e0c
	btst #1,($246,a4);Air check
	beq.w loc_046e0c
	tst.b (1,a4)
	bpl.b loc_046fa2
	move.b ($3c5,a4),d0
	andi.b #$88,d0
	sne ($bb,a4)
	bra.b loc_046fa8

loc_046fa2
	move.b ($3c7,a4),($bb,a4)

loc_046fa8:
	sf ($3fd,a4)
	tst.b ($bb,a4)
	bne.b loc_046fbc
	move.w #$19,d0
	move.w d0,($2fe,a4)
	rts

loc_046fbc:
	move.w #$1a,d0
	move.w d0,($2fe,a4)
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~;
;Regular Throws Programming;
;~~~~~~~~~~~~~~~~~~~~~~~~~~;
;--------------------------
loc_046fc6:;HK Throw
	cmpi.w #$30,($226,a4)
	bgt.w loc_046e0c
	jsr loc_02a4dc
	beq.w loc_046e0c
	move.w #$1b,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_046fe4:;Throw
	cmpi.w #$30,($226,a4)
	bgt.w loc_046e0c
	jsr loc_02a4dc
	beq.w loc_046e0c
	move.w #$1c,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_047002:
	cmpi.w #$24,($226,a4)
	bgt.w loc_046e0c
	jsr loc_02a4dc
	beq.w loc_046e0c
	move.w #$1d,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_047020:
	cmpi.w #$30,($226,a4)
	bgt.w loc_046e0c
	jsr loc_02a4dc
	beq.w loc_046e0c
	move.w #$1e,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_04703e:
	cmpi.w #$30,($226,a4)
	bgt.w loc_046e0c
	jsr loc_02a4dc
	beq.w loc_046e0c
	move.w #$1f,d0
	move.w d0,($2fe,a4)
	rts  

;--------------------------
loc_04705c:
	cmpi.w #$30,($226,a4)
	bgt.w loc_046e0c
	jsr loc_02a4dc
	beq.w loc_046e0c
	move.w #$20,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_04707a:;Taunt
	btst #4,($24a,a4)
	bne.w loc_046e0c
	btst #1,($246,a4)
	beq.w loc_046e0c
	tst.w ($554,a4)
	bne.w loc_046e0c
	move.w #$28,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0470a0:;Deals with HK
	btst #1,($246,a4)
	bne.w loc_0470e8
	btst #0,($24a,a4)
	bne.w loc_046e0c
	btst #1,($2f6,a4)
	bne.w loc_0470de
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_0470d4
	move.w #$15,d0
	move.w d0,($2fe,a4)
	rts

loc_0470d4:
	move.w #$16,d0
	move.w d0,($2fe,a4)
	rts

loc_0470de:
	move.w #$17,d0
	move.w d0,($2fe,a4)
	rts

loc_0470e8:
	btst #1,($246,a4)
	beq.w loc_046e0c
	btst #3,($24a,a4)
	beq.w loc_047110
	btst #1,($24a,a4)
	bne.w loc_046e0c
	cmpi.b #2,($2c6,a4)
	bne.w loc_046e0c

loc_047110:
	btst #1,($2f6,a4)
	bne.w loc_047138
	cmpi.w #$30,($226,a4)
	bgt.w loc_04712e
	move.w #$a,d0
	move.w d0,($2fe,a4)
	rts

loc_04712e:
	move.w #$b,d0
	move.w d0,($2fe,a4)
	rts

loc_047138:
	move.w #$c,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_047142:;HP
	btst #1,($246,a4)
	bne.w loc_04718a
	btst #0,($24a,a4)
	bne.w loc_046e0c
	btst #1,($2f6,a4)
	bne.w loc_047180
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_047176
	move.w #$12,d0
	move.w d0,($2fe,a4)
	rts

loc_047176:
	move.w #$13,d0
	move.w d0,($2fe,a4)
	rts

loc_047180:
	move.w #$14,d0
	move.w d0,($2fe,a4)
	rts

loc_04718a:
	btst #1,($246,a4)
	beq.w loc_046e0c
	btst #3,($24a,a4)
	beq.w loc_0471b2
	btst #1,($24a,a4)
	bne.w loc_046e0c
	cmpi.b #2,($2c6,a4)
	bne.w loc_046e0c

loc_0471b2:
	btst #1,($2f6,a4)
	bne.w loc_0471e8
	cmpi.w #$30,($226,a4)
	ble.w loc_0471d4
	btst #3,($2f6,a4)
	bne.w loc_0471f2
	bra.w loc_0471de

loc_0471d4:
	move.w #7,d0
	move.w d0,($2fe,a4)
	rts

loc_0471de:
	move.w #8,d0
	move.w d0,($2fe,a4)
	rts

loc_0471e8:
	move.w #9,d0
	move.w d0,($2fe,a4)
	rts

loc_0471f2:
	move.w #$d,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0471fc:;LK
	btst #1,($246,a4)
	bne.w loc_047230
	btst #0,($24a,a4)
	bne.w loc_046e0c
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_047226
	move.w #$10,d0
	move.w d0,($2fe,a4)
	rts

loc_047226:
	move.w #$11,d0
	move.w d0,($2fe,a4)
	rts

loc_047230:
	btst #1,($246,a4)
	beq.w loc_046e0c
	btst #3,($24a,a4)
	beq.w loc_047258
	btst #1,($24a,a4)
	bne.w loc_046e0c
	cmpi.b #1,($2c6,a4)
	bne.w loc_046e0c

loc_047258:
	btst #1,($2f6,a4)
	bne.w loc_047280
	cmpi.w #$30,($226,a4)
	bgt.w loc_047276
	move.w #4,d0
	move.w d0,($2fe,a4)
	rts

loc_047276:
	move.w #5,d0
	move.w d0,($2fe,a4)
	rts

loc_047280:
	move.w #6,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_04728a:;LP
	btst #1,($246,a4)
	bne.w loc_0472be
	btst #0,($24a,a4)
	bne.w loc_046e0c
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_0472b4
	move.w #$e,d0
	move.w d0,($2fe,a4)
	rts

loc_0472b4:
	move.w #$f,d0
	move.w d0,($2fe,a4)
	rts

loc_0472be:
	btst #1,($246,a4)
	beq.w loc_046e0c
	btst #3,($24a,a4)
	beq.w loc_0472e6
	btst #1,($24a,a4)
	bne.w loc_046e0c
	cmpi.b #1,($2c6,a4)
	bne.w loc_046e0c

loc_0472e6:
	btst #1,($2f6,a4)
	bne.w loc_04730e
	cmpi.w #$28,($226,a4)
	bgt.w loc_047304
	move.w #1,d0
	move.w d0,($2fe,a4)
	rts

loc_047304:
	move.w #2,d0
	move.w d0,($2fe,a4)
	rts

loc_04730e:
	move.w #3,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_047318:
	rts

;--------------------------
loc_04731a:
	tst.b (-$3e4,a5)
	bne.w loc_047348
	cmpi.w #1,(-$f2e,a5)
	bgt.w loc_047348
	movea.l #loc_0484e8,a0
	clr.w d0
	jsr loc_0226f0

loc_04733a:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_04733a

loc_047348:
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_047352:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_04736a:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_047382
	bsr.w loc_047394
	beq.b loc_047382
	move.l ($86,a4),-(a7)
	rts

loc_047382:
	btst #2,($2e1,a4)
	beq.b loc_04736a
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_047394:
	move.b ($209,a4),d0
	cmp.b ($208,a4),d0
	bne.w loc_0473c4
	cmpi.w #$30,($226,a4)
	bgt.w loc_0473c4
	jsr loc_02a4e4
	beq.w loc_0473c4
	movea.l #loc_04ac9c,a0
	jsr loc_023384
	moveq #-1,d0
	rts

loc_0473c4:
	moveq #0,d0
	rts

;--------------------------
loc_0473c8:
	jsr loc_02c7ae
	clr.l ($216,a4)
	clr.l ($21a,a4)
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	sf ($ba,a4)
	tst.b (1,a4)
	bpl.w loc_0473fc
	btst #3,($2f6,a4)
	sne ($ba,a4)

loc_0473fc:
	move.l #-$34000,d2
	move.l #-$90000,d3
	tst.b ($ba,a4)
	bpl.w loc_047412
	neg.l d2

loc_047412:
	jsr loc_02a59c
	move.w #-$70,($27e,a3)
	move.w #-$20,($280,a3)
	move.w #-$28,($282,a3)
	move.w #$28,($284,a3)
	move.w #$2c,d2
	move.w #$ffb4,d3
	jsr loc_02c7be

loc_04743e:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_04743e
	movea.l #loc_04ad22,a0
	clr.w d0
	jsr loc_0226f0
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	lea loc_047df8(pc),a0
	jsr loc_02a554

loc_04746e:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_04746e
	move.l #0,($216,a4)
	move.l #-$2c000,($21a,a4)
	move.w #$2b,d7

loc_04748e:
	jsr loc_02269c
	addi.l #$1000,($21a,a4)
	dbra d7,loc_04748e
	movea.l #loc_04ae54,a0
	clr.w d0
	jsr loc_0226f0
	lea loc_047eb8(pc),a0
	jsr loc_02a554
	clr.w d5
	move.l #0,($216,a4)
	move.l #-$2000,d2
	move.l #-$5600,d3
	move.l #$400,d4
	move.w #$42,d7

loc_0474d8:
	subq.w #1,d5
	bpl.b loc_0474e4
	move.w #2,d5
	bsr.w loc_047684

loc_0474e4:
	jsr loc_02269c
	add.l d2,($216,a4)
	add.l d3,($21a,a4)
	add.l d4,d3
	dbra d7,loc_0474d8
	movea.l #loc_04ac7c,a0
	jsr loc_023384
	jsr loc_02a642
	movea.l #loc_04b002,a0
	clr.w d0
	jsr loc_0226f0
	lea loc_047e38(pc),a0
	jsr loc_02a554

loc_047522:
	jsr loc_02269c
	move.l ($216,a4),d0
	bmi.b loc_047532
	asr.l #3,d0
	bra.b loc_047538

loc_047532:
	neg.l d0
	asr.l #3,d0
	neg.l d0

loc_047538:
	sub.l d0,($216,a4)
	add.l d3,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_047522
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.w #$14,d0
	jsr loc_023178
	movea.l #loc_04b022,a0
	clr.w d0
	jsr loc_0226f0
	lea loc_047e78(pc),a0
	jsr loc_02a554
	move.w #$c,(-$45e2,a5)
	jsr loc_02a702
	move.w #3,d7

loc_047582:
	jsr loc_02269c
	dbra d7,loc_047582
	movea.l #loc_04ae68,a0
	clr.w d0
	jsr loc_0226f0
	lea loc_047ef8(pc),a0
	jsr loc_02a554
	move.l #$50000,($216,a4)
	move.l #-$d8000,($21a,a4)
	move.w #$15,d7

loc_0475b8:
	jsr loc_02269c
	addi.l #$10000,($21a,a4)
	dbra d7,loc_0475b8
	movea.l #loc_04ac8c,a0
	jsr loc_023384
	jsr loc_02a642
	movea.l #loc_04b00a,a0
	clr.w d0
	jsr loc_0226f0
	lea loc_047e38(pc),a0
	jsr loc_02a554

loc_0475f4:
	jsr loc_02269c
	addi.l #$10000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_0475f4
	clr.l ($216,a4)
	clr.l ($21a,a4)
	movea.l #loc_04b022,a0
	clr.w d0
	jsr loc_0226f0
	lea loc_047e78(pc),a0
	jsr loc_02a554
	move.w #$20,(-$45e2,a5)
	jsr loc_02a702
	move.w #$e9,d0
	jsr loc_02301a
	move.w #$15,d0
	jsr loc_023178

loc_04764a:
	jsr loc_02269c
	tst.b ($b7,a4)
	beq.w loc_047668
	sf ($b7,a4)
	tst.b ($ba,a4)
	bpl.w loc_047668
	not.b ($208,a4)

loc_047668:
	btst #2,($2e1,a4)
	beq.b loc_04764a
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_047684:
	jsr loc_02a642
	jsr loc_02a702
	exg a3,a4
	jsr loc_02ee5a
	exg a3,a4
	move.b ($246,a4),d0
	andi.b #$c,d0
	beq.b loc_0476aa
	neg.l ($216,a4)
	neg.l d2

loc_0476aa:
	rts

;--------------------------
loc_0476ac:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	sf ($ba,a4)
	tst.b (1,a4)
	bpl.w loc_0476e4
	btst #3,($2f6,a4)
	sne ($ba,a4)

loc_0476e4:
	move.l #-$34000,d2
	move.l #-$90000,d3
	tst.b ($ba,a4)
	bpl.w loc_0476fa
	neg.l d2

loc_0476fa:
	jsr loc_02a59c
	lea loc_047df8(pc),a0
	jsr loc_02a554

loc_04770a:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_04770a
	jsr loc_023294
	move.w #$1c64,d0
	jsr loc_02301a
	tst.b ($bb,a4)
	bne.w loc_047756
	move.l #-$10000,($216,a4)
	move.l #-$70000,($21a,a4)
	move.l #-$1000,d2
	move.l #$3c00,d3
	move.l #$400,d4
	move.w #$21,d7
	bra.b loc_04777c

loc_047756:
	move.l #0,($216,a4)
	move.l #0,($21a,a4)
	move.l #-$1000,d2
	move.l #-$11000,d3
	move.l #$1000,d4
	move.w #$31,d7

loc_04777c:
	tst.b ($ba,a4)
	bpl.w loc_04778a
	not.l ($216,a4)
	not.l d2

loc_04778a:
	jsr loc_02269c
	tst.l ($21a,a4)
	bpl.b loc_04779a
	add.l d2,($216,a4)

loc_04779a:
	add.l d3,($21a,a4)
	add.l d4,d3
	dbra d7,loc_04778a
	movea.l #loc_04b00a,a0
	clr.w d0
	jsr loc_0226f0
	lea loc_047e38(pc),a0
	jsr loc_02a554

loc_0477bc:
	jsr loc_02269c
	add.l d3,($21a,a4)
	add.l d4,d3
	btst #1,($246,a4)
	beq.b loc_0477bc
	clr.l ($216,a4)
	clr.l ($21a,a4)
	jsr loc_023294
	move.w #$1c65,d0
	jsr loc_02301a
	movea.l #loc_04b022,a0
	clr.w d0
	jsr loc_0226f0
	lea loc_047e78(pc),a0
	jsr loc_02a554
	move.w #$20,(-$45e2,a5)
	jsr loc_02a702

loc_04780c:
	jsr loc_02269c
	tst.b ($b7,a4)
	beq.w loc_04782a
	sf ($b7,a4)
	tst.b ($ba,a4)
	bpl.w loc_04782a
	not.b ($208,a4)

loc_04782a:
	btst #2,($2e1,a4)
	beq.b loc_04780c
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_047846:
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	clr.b ($273,a4)

loc_04785a:
	jsr loc_02269c
	tst.b ($273,a4)
	beq.b loc_047880
	btst #2,($249,a3)
	bne.b loc_047878
	btst #3,($249,a3)
	bne.w loc_047892

loc_047878:
	sf ($273,a4)
	addq.w #1,($2ce,a4)

loc_047880:
	btst #2,($2e1,a4)
	beq.b loc_04785a
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_047892:
	movea.l ($bc,a4),a0
	clr.w d0
	jsr loc_0226f0

loc_04789e:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_04789e
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	move.l #$30000,d2
	move.l #$60000,d3
	jsr loc_02a59c
	lea loc_047f38(pc),a0
	jsr loc_02a554

loc_0478d0:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_0478d0
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_0478f2
	clr.l ($216,a4)
	clr.l ($21a,a4)
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	move.l #$30000,d2
	move.l #$60000,d3
	jsr loc_02a59c
	lea loc_047f78(pc),a0
	jsr loc_02a554

loc_047930:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_047930
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_047952:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	sf ($ba,a4)
	tst.b (1,a4)
	bpl.w loc_04798a
	btst #2,($2f6,a4)
	sne ($ba,a4)

loc_04798a:
	move.l #-$20000,d2
	move.l #-$60000,d3
	jsr loc_02a59c
	lea loc_047fb8(pc),a0
	jsr loc_02a554

loc_0479a6:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_0479a6
	sf ($b6,a4)
	tst.b ($ba,a4)
	beq.b loc_0479c0
	neg.l ($216,a4)

loc_0479c0:
	jsr loc_02269c
	tst.b ($b7,a4)
	beq.b loc_0479c0
	sf ($b7,a4)
	clr.w ($2bc,a4)
	move.l #-$30000,($216,a4)
	move.l #-$90000,($21a,a4)

loc_0479e4:
	jsr loc_02269c
	addi.l #$a600,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_0479e4
	move.b ($209,a4),($208,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_047a0a:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),d0
	move.b d0,($208,a3)
	sf ($ba,a4)
	tst.b (1,a4)
	bpl.w loc_047a40
	btst #3,($2f6,a4)
	sne ($ba,a4)

loc_047a40:
	move.l #-$20000,d2
	move.l #-$60000,d3
	jsr loc_02a59c
	lea loc_047ff8(pc),a0
	jsr loc_02a554

loc_047a5c:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.w loc_047a7e
	sf ($b6,a4)
	tst.b ($ba,a4)
	beq.w loc_047a7e
	not.b ($208,a4)
	not.b ($208,a3)

loc_047a7e:
	btst #2,($2e1,a4)
	beq.b loc_047a5c
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_047a9a:
	move.l #loc_04d85e,($c0,a4)
	move.l #loc_04d88a,($c4,a4)
	move.l #loc_048038,($c8,a4)
	move.l #loc_048078,($cc,a4)
	move.w #$a,($d0,a4)
	move.w #6,($d2,a4)
	move.w #$18,($d4,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	move.l #-$20000,d2
	move.l #-$60000,d3
	bra.w loc_047b90

;--------------------------
loc_047aec:
	move.l #loc_04dd68,($c0,a4)
	move.l #loc_04ddbe,($c4,a4)
	move.l #loc_0480b8,($c8,a4)
	move.l #loc_0480f8,($cc,a4)
	move.w #4,($d0,a4)
	move.w #$14,($d2,a4)
	move.w #$4c,($d4,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	move.l #-$20000,d2
	move.l #-$70000,d3
	bra.w loc_047b90

;--------------------------
loc_047b3e:
	move.l #loc_04e36a,($c0,a4)
	move.l #loc_04e39e,($c4,a4)
	move.l #loc_048138,($c8,a4)
	move.l #loc_048178,($cc,a4)
	move.w #6,($d0,a4)
	move.w #$10,($d2,a4)
	move.w #$2c,($d4,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	move.l #-$40000,d2
	move.l #-$28000,d3
	bra.w loc_047b90

;--------------------------
loc_047b90:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	jsr loc_02a59c
	movea.l ($c8,a4),a0
	jsr loc_02a554
	jsr loc_02c8b8
	swap d0
	mulu.w ($d4,a4),d0
	move.w d0,($d4,a4)
	mulu.w ($d0,a4),d0
	move.w d0,($d8,a4)

loc_047bca:
	jsr loc_02269c
	bsr.w loc_047c68
	btst #2,($2e1,a4)
	beq.b loc_047bca

loc_047bdc:
	move.w ($d4,a4),($d6,a4)
	move.w ($d2,a4),d6
	subq.w #1,d6
	subq.w #1,($d0,a4)
	movea.l ($c0,a4),a0
	clr.w d0
	jsr loc_0226f0
	movea.l ($cc,a4),a0
	jsr loc_02a554

loc_047c02:
	jsr loc_02269c
	bsr.w loc_047c68
	subq.w #1,d6
	bpl.b loc_047c02
	clr.w d6
	tst.b (-$3dd,a5)
	bne.w loc_047c3e
	btst #7,($249,a3)
	bne.w loc_047c3e
	btst #1,($249,a3)
	bne.w loc_047c3e
	tst.w ($d0,a4)
	ble.w loc_047c3e
	tst.w ($d6,a4)
	bgt.b loc_047c02
	bra.b loc_047bdc

loc_047c3e:
	movea.l ($c4,a4),a0
	clr.w d0
	jsr loc_0226f0

loc_047c4a:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_047c4a
	move.b ($209,a4),($208,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_047c68:
	jsr loc_02c8b8
	sub.w d0,($d6,a4)
	exg a3,a4
	jsr loc_02c8b8
	exg a3,a4
	move.w d0,d1
	add.w d1,d1
	swap d0
	sub.w d0,d1
	sub.w d1,($d8,a4)
	bpl.b loc_047c8e
	clr.w ($d0,a4)

loc_047c8e:
	rts

;--------------------------
loc_047c90:
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_047cae:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_047cae
	sf ($b9,a4)
	move.w #$1c,d2
	move.w #-$64,d3
	jsr loc_02c7be
	clr.b ($273,a4)

loc_047cd0:
	jsr loc_02269c
	move.w ($20e,a4),d0
	sub.w ($30c,a4),d0
	tst.b ($208,a4)
	bpl.b loc_047ce6
	neg.w d0

loc_047ce6:
	sub.w d0,($290,a4)
	tst.b ($b6,a4)
	beq.b loc_047cd0
	sf d5
	clr.w d2
	clr.b ($273,a4)

loc_047cf8:
	jsr loc_02269c
	tst.b ($273,a4)
	beq.b loc_047d1a
	tst.b d5
	bne.b loc_047d1a
	st d5
	move.w ($226,a4),d2
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	beq.b loc_047d1a
	neg.w d2

loc_047d1a:
	btst #2,($2e1,a4)
	beq.b loc_047cf8
	tst.b ($273,a4)
	beq.w loc_047d46
	sf ($273,a4)
	move.b ($249,a3),d0
	beq.w loc_047d46
	btst #5,d0
	beq.w loc_047d46
	btst #2,d0
	beq.w loc_047d6c

loc_047d46:
	movea.l #loc_04ea56,a0
	clr.w d0
	jsr loc_0226f0

loc_047d54:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_047d54
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)


loc_047d6c:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	subi.w #$16,d2
	swap d2
	clr.w d2
	asr.l #3,d2
	movem.l d2,-(a7)
	movea.l #loc_04ead0,a0
	clr.w d0
	jsr loc_0226f0
	movem.l (a7)+,d2

loc_047d94:
	jsr loc_02269c
	tst.b ($b8,a4)
	beq.b loc_047d94
	add.l d2,($216,a4)

loc_047da4:
	jsr loc_02269c
	tst.b ($b7,a4)
	beq.b loc_047da4
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	move.l #-$40000,d2
	move.l #-$80000,d3
	jsr loc_02a59c
	lea loc_0481b8(pc),a0
	jsr loc_02a554

loc_047dd6:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_047dd6
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Throw animations
loc_047df8:
	dc.l loc_04b10c,loc_04b342,loc_04b558,loc_04b786
	dc.l loc_04b9c2,loc_04bbe6,loc_04bdfc,loc_04c012
	dc.l loc_04c236,loc_04c438,loc_04b10c,loc_04b10c
	dc.l loc_04b10c,loc_04b10c,loc_04b10c,loc_04b10c

loc_047e38:
	dc.l loc_04b2ca,loc_04b4e8,loc_04b716,loc_04b944
	dc.l loc_04bb6e,loc_04bd8c,loc_04bfa2,loc_04c1b8
	dc.l loc_04c3dc,loc_04c5f6,loc_04b2ca,loc_04b2ca
	dc.l loc_04b2ca,loc_04b2ca,loc_04b2ca,loc_04b2ca

loc_047e78:
	dc.l loc_04b2f0,loc_04b50e,loc_04b73c,loc_04b96a
	dc.l loc_04bb94,loc_04bdb2,loc_04bfc8,loc_04c1de
	dc.l loc_04c402,loc_04c61c,loc_04b2f0,loc_04b2f0
	dc.l loc_04b2f0,loc_04b2f0,loc_04b2f0,loc_04b2f0

loc_047eb8:
	dc.l loc_04b252,loc_04b470,loc_04b69e,loc_04b8cc
	dc.l loc_04baf6,loc_04bd14,loc_04bf2a,loc_04c140
	dc.l loc_04c364,loc_04c57e,loc_04b252,loc_04b252
	dc.l loc_04b252,loc_04b252,loc_04b252,loc_04b252

loc_047ef8:
	dc.l loc_04b298,loc_04b4b6,loc_04b6e4,loc_04b912
	dc.l loc_04bb3c,loc_04bd5a,loc_04bf70,loc_04c186
	dc.l loc_04c3aa,loc_04c5c4,loc_04b298,loc_04b298
	dc.l loc_04b298,loc_04b298,loc_04b298,loc_04b298

loc_047f38:
	dc.l loc_04a57c,loc_04a614,loc_04a6ac,loc_04a744
	dc.l loc_04a7dc,loc_04a874,loc_04a90c,loc_04a9a4
	dc.l loc_04aa3c,loc_04aad4,loc_04a57c,loc_04a57c
	dc.l loc_04a57c,loc_04a57c,loc_04a57c,loc_04a57c

loc_047f78:
	dc.l loc_04c746,loc_04c7ac,loc_04c812,loc_04c878
	dc.l loc_04c8de,loc_04c944,loc_04c9aa,loc_04ca10
	dc.l loc_04ca76,loc_04cadc,loc_04c746,loc_04c746
	dc.l loc_04c746,loc_04c746,loc_04c746,loc_04c746

loc_047fb8:
	dc.l loc_04cc48,loc_04ccc6,loc_04cd44,loc_04cdc2
	dc.l loc_04ce40,loc_04cebe,loc_04cf3c,loc_04cfba
	dc.l loc_04d038,loc_04d0b6,loc_04cc48,loc_04cc48
	dc.l loc_04cc48,loc_04cc48,loc_04cc48,loc_04cc48

loc_047ff8:
	dc.l loc_04d238,loc_04d2ca,loc_04d35c,loc_04d3ee
	dc.l loc_04d480,loc_04d512,loc_04d5a4,loc_04d636
	dc.l loc_04d6c8,loc_04d75a,loc_04d238,loc_04d238
	dc.l loc_04d238,loc_04d238,loc_04d238,loc_04d238

loc_048038:
	dc.l loc_04d8bc,loc_04d928,loc_04d994,loc_04da00
	dc.l loc_04da6c,loc_04dad8,loc_04db44,loc_04dbb0
	dc.l loc_04dc1c,loc_04dc88,loc_04d8bc,loc_04d8bc
	dc.l loc_04d8bc,loc_04d8bc,loc_04d8bc,loc_04d8bc

loc_048078:
	dc.l loc_04d8e2,loc_04d94e,loc_04d9ba,loc_04da26
	dc.l loc_04da92,loc_04dafe,loc_04db6a,loc_04dbd6
	dc.l loc_04dc42,loc_04dcae,loc_04d8e2,loc_04d8e2
	dc.l loc_04d8e2,loc_04d8e2,loc_04d8e2,loc_04d8e2

loc_0480b8:
	dc.l loc_04ddf6,loc_04de76,loc_04def6,loc_04df76
	dc.l loc_04dff6,loc_04e076,loc_04e0f6,loc_04e176
	dc.l loc_04e1f6,loc_04e276,loc_04ddf6,loc_04ddf6
	dc.l loc_04ddf6,loc_04ddf6,loc_04ddf6,loc_04ddf6

loc_0480f8:
	dc.l loc_04de1c,loc_04de9c,loc_04df1c,loc_04df9c
	dc.l loc_04e01c,loc_04e09c,loc_04e11c,loc_04e19c
	dc.l loc_04e21c,loc_04e29c,loc_04de1c,loc_04de1c
	dc.l loc_04de1c,loc_04de1c,loc_04de1c,loc_04de1c

loc_048138:
	dc.l loc_04e3d0,loc_04e458,loc_04e4e0,loc_04e568
	dc.l loc_04e5cc,loc_04e654,loc_04e6dc,loc_04e764
	dc.l loc_04e7d4,loc_04e85c,loc_04e3d0,loc_04e3d0
	dc.l loc_04e3d0,loc_04e3d0,loc_04e3d0,loc_04e3d0

loc_048178:
	dc.l loc_04e404,loc_04e48c,loc_04e514,loc_04e58a
	dc.l loc_04e600,loc_04e688,loc_04e710,loc_04e78c
	dc.l loc_04e808,loc_04e890,loc_04e404,loc_04e404
	dc.l loc_04e404,loc_04e404,loc_04e404,loc_04e404

loc_0481b8:
	dc.l loc_04ec0c,loc_04ecc0,loc_04ed74,loc_04ee28
	dc.l loc_04eed6,loc_04ef84,loc_04f038,loc_04f0e6
	dc.l loc_04f19a,loc_04f24e,loc_04ec0c,loc_04ec0c
	dc.l loc_04ec0c,loc_04ec0c,loc_04ec0c,loc_04ec0c

;--------------------------
loc_0481f8:
	st ($24a,a4)

loc_0481fc:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_0481fc
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048214:
	dc.l $0002c000,$fffe0000,$00000000
	dc.l $0002c000,$fffd4000,$fff54d00
	dc.l $0000a600

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048230:
	dc.l loc_04823c,loc_048248,loc_048254

loc_04823c:
	dc.w $8039,$fc00
	dc.w $803b,$cc00,$f20b,$0000

loc_048248:
	dc.w $8039,$fe02
	dc.w $803b,$e000,$f30d,$0000

loc_048254:
	dc.w $8039,$fd01
	dc.w $803b,$c8e8,$f30d,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048260:
	dc.l loc_04376a,loc_04376a,loc_043a7a,loc_043e2e
	dc.l loc_0444ae,loc_0446ae,loc_0448a6,loc_044962

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048280:
	dc.l loc_048568,loc_0485b0,loc_048632,loc_0486e2
	dc.l loc_0485d4,loc_0485ec,loc_04860e,loc_0485f6
	dc.l loc_048792,loc_0487a6,loc_0487da,loc_0487fc
	dc.l loc_04881e,loc_0487c8,loc_04882c,loc_04882c
	dc.l loc_04882c,loc_048842,loc_048842,loc_048842
	dc.l loc_048852,loc_048852,loc_048852,loc_048862
	dc.l loc_048862,loc_048862,loc_048878,loc_048878
	dc.l loc_048878,loc_048888,loc_048888,loc_048888
	dc.l loc_048898,loc_0488a2,loc_04897c,loc_0489d4
	dc.l loc_048a56

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048314:
	dc.l loc_028468,loc_028562,loc_02848c,loc_028572
	dc.l loc_02861e,loc_0286fc,loc_0287a6,loc_0287e0
	dc.l loc_02881a,loc_028a02,loc_028958,loc_028a30
	dc.l loc_028ae2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048348:
	dc.l loc_048a9e,loc_048a9e,loc_048a9e,loc_048aa8
	dc.l loc_048aa8,loc_048aa8,loc_048ab8,loc_048ab8
	dc.l loc_048ad6,loc_048ad6,loc_048af4,loc_048af4
	dc.l loc_048b2e,loc_048b2e,loc_048b5a,loc_048b5a
	dc.l loc_048b7e,loc_048b7e,loc_048ba2,loc_048ba2
	dc.l loc_048be2,loc_048be2,loc_048c14,loc_048c14
	dc.l loc_048c32,loc_048c32,loc_048c50,loc_048c50
	dc.l loc_048c8a,loc_048c8a,loc_048cb6,loc_048cf2
	dc.l loc_048cb6,loc_048cf2,loc_048d2e,loc_048d6e
	dc.l loc_048d86,loc_048dc0,loc_048d86,loc_048dc0
	dc.l loc_048d86,loc_048dfa,loc_048dfa,loc_048e12
	dc.l loc_048e1c,loc_048e56,loc_048e88,loc_048f4e
	dc.l loc_048e90,loc_048f5c,loc_048f5c,loc_048f5c
	dc.l loc_048fb0,loc_048fb0,loc_048ff4,loc_04903c
	dc.l loc_0490a6,loc_0490a6,loc_0490d0,loc_0490d0
	dc.l loc_049116,loc_049116,loc_049178


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048444:
	dc.l  $00000000,loc_04919a,loc_049202,loc_04928a
	dc.l loc_0492ea,loc_049380,loc_049416,loc_04947e
	dc.l loc_049514,loc_049594,loc_049600,loc_0496b0
	dc.l loc_049762,loc_0497ee,loc_049894,loc_049910

	dc.l loc_049992,loc_049a16,loc_049a84,loc_049b1c
	dc.l loc_049b90,loc_049bea,loc_049c66,loc_049ce0
	dc.l loc_049d46,loc_049eb8,loc_049ffe,loc_04d134
	dc.l loc_04cb42,loc_04c674,loc_04d7ec,loc_04dcf4

	dc.l loc_04e2f6,loc_04a160,loc_04a296,loc_04ab6c
	dc.l loc_04ace2,loc_04ac9c,loc_04e8e4,loc_04ac10
	dc.l loc_04f302

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0484e8:
	dc.w $0008,$0448,$0000,$8000
	dc.w $0008,$0447,$0000,$80ff,$0004,$0000,$0000
	dc.w $0006,$04a0,$0000,$8000
	dc.w $0003,$04a1,$0000,$8000
	dc.w $0003,$04a2,$0000,$80ff,$ffff,$0000,$0000
	dc.w $0003,$04a1,$0000,$8000
	dc.w $0003,$04a2,$0000,$80ff,$ffff,$0000,$0000
	dc.w $0003,$04a1,$0000,$8000
	dc.w $0003,$04a2,$0000,$80ff,$ffff,$0000,$0000
	dc.w $0003,$04a1,$0000,$8000
	dc.w $0003,$04a2,$0000,$80ff,$ffff,$0000,$0000
	dc.w $0006,$04a3,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048568:;Idle Animation
	dc.w $0008,$048e,$0001,$8000
	dc.w $0005,$048f,$0001,$8000
	dc.w $0005,$0490,$0001,$8000
	dc.w $0007,$0491,$0001,$8000
	dc.w $000c,$0492,$0001,$8000
	dc.w $0008,$0493,$0001,$8000
	dc.w $0007,$0494,$0001,$8000
	dc.w $0006,$0495,$0001,$8000
	dc.w $8000,0000
	dc.l loc_048568

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0485b0:
	dc.w $0004,$03cd,$0002,$80ff,$fffc,$0000,$0001
	dc.w $0004,$03cd,$0002,$80ff,$0004,$0000,$0000
	dc.w $8000,$0000
	dc.l loc_048568

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0485d4:
	dc.w $0003,$0386,$0003,$8000
	dc.w $0003,$0373,$0004,$80ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0485ec:
	dc.w $0004,$0374,$0005,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0485f6:
	dc.w $0003,$0373,$0004,$80ff,$fffc,$0000,$0000
	dc.w $0003,$0386,$0003,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04860e:
	dc.w $0004,$03ce,$0006,$80ff,$0004,$0000,$0001
	dc.w $0004,$03ce,$0006,$80ff,$fffc,$0000,$0000
	dc.w $8000,$0000
	dc.l loc_0485ec

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048632:
	dc.w $0003,$04aa,$0007,$80ff,$0002,$0002,$0000
	dc.w $0003,$04ab,$0007,$80ff,$0002,$0002,$0000
	dc.w $0003,$04ac,$0007,$80ff,$0002,$0002,$0000
	dc.w $0003,$04ad,$0007,$80ff,$0002,$0002,$0000
	dc.w $0003,$04ae,$0007,$80ff,$0002,$0002,$0000
	dc.w $0003,$04af,$0007,$80ff,$0002,$0002,$0000
	dc.w $0003,$04a4,$0007,$80ff,$0002,$0002,$0000
	dc.w $0003,$04a5,$0007,$80ff,$0002,$0002,$0000
	dc.w $0003,$04a6,$0007,$80ff,$0002,$0002,$0000
	dc.w $0003,$04a7,$0007,$80ff,$0002,$0002,$0000
	dc.w $0003,$04a8,$0007,$80ff,$0002,$0002,$0000
	dc.w $0003,$04a9,$0007,$80ff,$0002,$0002,$0000

	dc.w $8000,$0000
	dc.l loc_048632

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0486e2:
	dc.w $0004,$04b4,$0008,$80ff,$0006,$0002,$0000
	dc.w $0004,$04b5,$0008,$80ff,$0006,$0002,$0000
	dc.w $0005,$04b6,$0008,$80ff,$0006,$0002,$0000
	dc.w $0005,$04b7,$0008,$80ff,$0006,$0002,$0000
	dc.w $0005,$04b8,$0008,$80ff,$0006,$0002,$0000
	dc.w $0004,$04b9,$0008,$80ff,$0006,$0002,$0000
	dc.w $0004,$04ba,$0008,$80ff,$0006,$0002,$0000
	dc.w $0004,$04bb,$0008,$80ff,$0006,$0002,$0000
	dc.w $0005,$04b0,$0008,$80ff,$0006,$0002,$0000
	dc.w $0005,$04b1,$0008,$80ff,$0006,$0002,$0000
	dc.w $0005,$04b2,$0008,$80ff,$0006,$0002,$0000
	dc.w $0004,$04b3,$0008,$80ff,$0006,$0002,$0000
	dc.w $8000,$0000
	dc.l loc_0486e2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048792:
	dc.w $8003,$186f
	dc.w $0003,$03eb,$0009,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0487a6:
	dc.w $0006,$0387,$000a,$7c00
	dc.w $0008,$0396,$000b,$7c00
	dc.w $000c,$0388,$000c,$7c00
	dc.w $0008,$0389,$000d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0487c8:
	dc.w $0008,$0388,$000c,$7c00
	dc.w $0008,$0389,$000d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0487da:
	dc.w $0006,$0387,$000a,$7c00
	dc.w $0008,$0396,$000b,$7c00
	dc.w $000c,$0388,$000c,$7c00
	dc.w $0008,$0389,$000d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0487fc:
	dc.w $0006,$0387,$000a,$7c00
	dc.w $000c,$0388,$000c,$7c00
	dc.w $0008,$0396,$000b,$7c00
	dc.w $0008,$0389,$000d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04881e:
	dc.w $8003,$1870
	dc.w $0003,$0386,$0003,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04882c:
	dc.w $0002,$0447,$000e,$84ff,$0004,$0000,$0000
	dc.w $8000,$0000
	dc.l loc_048842

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048842:
	dc.w $0004,$0447,$000e,$84ff,$0004,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048852:
	dc.w $0002,$0447,$000e,$84ff,$0004,$0000,$0000
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048862:
	dc.w $0002,$0449,$000f,$84ff,$fffc,$0000,$0000
	dc.w $8000,$0000
	dc.l loc_048878

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048878:
	dc.w $0004,$0449,$000f,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048888:
	dc.w $0002,$0449,$000f,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048898:
	dc.w $003c,$048f,$0001,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0488a2:
	dc.w $8017,$0080
	dc.l loc_048928

loc_0488aa:
	dc.w $0006,$03cf,$0000,$8000
	dc.w $803b,$cc00,$ee17
	dc.w $0008,$03d0,$0000,$8000
	dc.w $802b,$1c5d
	dc.w $0002,$03d2,$0000,$8000
	dc.w $0002,$03d1,$0000,$8000
	dc.w $0010,$03d2,$0000,$8000
	dc.w $0005,$03d1,$0000,$8000
	dc.w $0007,$03d0,$0000,$8000
	dc.w $0008,$03d3,$0000,$8000
	dc.w $0005,$046d,$0000,$8000
	dc.w $0002,$03d4,$0000,$8000
	dc.w $0002,$03d5,$0000,$8000
	dc.w $802b,$1c6b

loc_048910:
	dc.w $0003,$03d4,$0000,$8000
	dc.w $0003,$03d5,$0000,$8000
	dc.w $8000,$0000
	dc.l loc_048910

loc_048928:
	dc.w $0008,$03d8,$0000,$80ff,$0004,$0000,$0000
	dc.w $000c,$03d9,$0000,$8000
	dc.w $802b,$1c6c
	dc.w $0007,$03da,$0000,$8000
	dc.w $0007,$03db,$0000,$8000
	dc.w $0007,$03dc,$0000,$8000
	dc.w $0007,$03dd,$0000,$8000
	dc.w $000c,$03da,$0000,$8000
	dc.w $0008,$03d9,$0000,$8000
	dc.w $0014,$03de,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04897c:
	dc.w $8017,$0010
	dc.l loc_048928

	dc.w $0008,$03d8,$0000,$80ff,$0004,$0000,$0000
	dc.w $000c,$03d9,$0000,$8000
	dc.w $0007,$03da,$0000,$8000
	dc.w $0007,$03db,$0000,$8000
	dc.w $0007,$03dc,$0000,$8000
	dc.w $0007,$03dd,$0000,$8000
	dc.w $000c,$03da,$0000,$8000
	dc.w $0008,$03d9,$0000,$8000
	dc.w $0014,$03de,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0489d4:
	dc.w $8017,$0020
	dc.l loc_0488aa

	dc.w $0006,$03cf,$0000,$8000
	dc.w $803b,$cc00,$ee17
	dc.w $0008,$03d0,$0000,$8000
	dc.w $0002,$03d2,$0000,$8000
	dc.w $0002,$03d1,$0000,$8000
	dc.w $0010,$03d2,$0000,$8000
	dc.w $0005,$03d1,$0000,$8000
	dc.w $0007,$03d0,$0000,$8000
	dc.w $0008,$03d3,$0000,$8000
	dc.w $0005,$046d,$0000,$8000
	dc.w $802a,$0019
	dc.w $0002,$03d4,$0000,$8000
	dc.w $0002,$03d5,$0000,$8000

loc_048a3e:
	dc.w $0003,$03d4,$0000,$8000
	dc.w $0003,$03d5,$0000,$8000

	dc.w $8000,$0000
	dc.l loc_048a3e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048a56:
	dc.w $0004,$04ac,$0000,$84ff,$0000,$0003,$0000
	dc.w $0004,$0476,$0000,$8400
	dc.w $0004,$0477,$0000,$8400
	dc.w $0004,$0478,$0000,$8400
	dc.w $0004,$0479,$0000,$8400
	dc.w $0002,$047a,$0000,$8400
	dc.w $0002,$0479,$0000,$8400
	dc.w $0006,$047a,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048a9e:
	dc.w $0004,$0448,$000e,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048aa8:
	dc.w $0004,$044a,$000f,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048ab8:
	dc.w $802d,$ffdc,$ff84
	dc.w $0006,$043f,$0010,$84ff,$fff8,$0000,$0000
	dc.w $0006,$043e,$0011,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048ad6:
	dc.w $802d,$ffdc,$ff84
	dc.w $000c,$043f,$0010,$84ff,$fff8,$0000,$0000
	dc.w $0006,$043e,$0011,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048af4:
	dc.w $802d,$ffd4,$ff84
	dc.w $0002,$043f,$0010,$84ff,$fff8,$0000,$0000
	dc.w $000a,$0440,$0010,$84ff,$fff8,$0000,$0000
	dc.w $0006,$043f,$0010,$84ff,$fff8,$0000,$0000
	dc.w $0006,$043e,$0011,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048b2e:
	dc.w $802d,$ffcc,$ff84
	dc.w $0012,$0440,$0010,$84ff,$fff8,$0000,$0000
	dc.w $0006,$043f,$0010,$84ff,$fff8,$0000,$0000
	dc.w $0006,$043e,$0011,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048b5a:
	dc.w $802e,$0008,$ff9c
	dc.w $0006,$0442,$0012,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0441,$0013,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048b7e:
	dc.w $802e,$0008,$ff9c
	dc.w $000c,$0442,$0012,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0441,$0013,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048ba2:
	dc.w $802e,$0006,$ff9c
	dc.w $0002,$0442,$0012,$84ff,$fff8,$0000,$0000
	dc.w $000a,$0443,$0012,$84ff,$fff4,$0000,$0000
	dc.w $0006,$0442,$0012,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0441,$0013,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048be2:
	dc.w $802e,$fffc,$ff9c
	dc.w $0012,$0443,$0012,$84ff,$fff4,$0000,$0000
	dc.w $0006,$0442,$0012,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0441,$0013,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048c14:
	dc.w $802f,$ffe8,$ffb2
	dc.w $0006,$0445,$0014,$84ff,$fffc,$0000,$0000
	dc.w $0006,$0444,$0015,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048c32:
	dc.w $802f,$ffe8,$ffb2
	dc.w $000c,$0445,$0014,$84ff,$fffc,$0000,$0000
	dc.w $0006,$0444,$0015,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048c50:
	dc.w $802f,$ffe6,$ffb0
	dc.w $0002,$0445,$0014,$84ff,$fffc,$0000,$0000
	dc.w $000a,$0446,$0014,$84ff,$fffc,$0000,$0000
	dc.w $0006,$0445,$0014,$84ff,$fffc,$0000,$0000
	dc.w $0006,$0444,$0015,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048c8a:
	dc.w $802f,$ffde,$ffac
	dc.w $0012,$0446,$0014,$84ff,$fffc,$0000,$0000
	dc.w $0006,$0445,$0014,$84ff,$fffc,$0000,$0000
	dc.w $0006,$0444,$0015,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048cb6:
	dc.w $802e,$000e,$ff9c
	dc.w $0006,$0442,$0016,$84ff,$fff0,$0000,$0000
	dc.w $0006,$0441,$0016,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0388,$0017,$8400
	dc.w $0006,$0396,$0017,$8400
	dc.w $0006,$0389,$0017,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048cf2:
	dc.w $802d,$ffe0,$ff84
	dc.w $0006,$043f,$0016,$84ff,$fff0,$0000,$0000
	dc.w $0006,$043e,$0016,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0388,$0017,$8400
	dc.w $0006,$0396,$0017,$8400
	dc.w $0006,$0389,$0017,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048d2e:
	dc.w $802e,$000a,$ff9c
	dc.w $0006,$045c,$0016,$84ff,$fff8,$0000,$0000
	dc.w $0006,$045d,$0016,$84ff,$0008,$0008,$0000
	dc.w $0004,$0457,$0018,$84ff,$0000,$fff8,$0000
	dc.w $0004,$0458,$0018,$84ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048d6e:
	dc.w $0004,$0459,$0019,$7cff,$0000,$fff0,$0000
	dc.w $0008,$045b,$0019,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048d86:
	dc.w $8030,$ffe0,$ffa0
	dc.w $0008,$0443,$0016,$7cff,$fff0,$0000,$0000
	dc.w $0006,$0456,$0016,$7c00
	dc.w $0006,$0457,$0018,$7cff,$0000,$fff8,$0000
	dc.w $0006,$0458,$0018,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048dc0:
	dc.w $8030,$ffe0,$ffa0
	dc.w $0008,$0440,$0016,$7cff,$fff0,$0000,$0000
	dc.w $0006,$0456,$0016,$7c00
	dc.w $0006,$0457,$0018,$7cff,$0000,$fff8,$0000
	dc.w $0006,$0458,$0018,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048dfa:
	dc.w $0004,$045b,$0019,$7c00
	dc.w $0010,$0459,$0019,$7cff,$0000,$fff0,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048e12:
	dc.w $0010,$045b,$0019,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048e1c:
	dc.w $8030,$0000,$ff98
	dc.w $0013,$0414,$0016,$7cff,$fff8,$0000,$0000
	dc.w $0006,$0456,$0016,$7c00
	dc.w $0006,$0457,$0018,$7cff,$0000,$fff8,$0000
	dc.w $0006,$0458,$0018,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048e56:
	dc.w $8030,$ffe0,$ffb8
	dc.w $0002,$045d,$0016,$7cff,$0008,$0010,$0000
	dc.w $0002,$0457,$0018,$7cff,$0000,$fff8,$0000
	dc.w $0002,$0414,$0018,$7cff,$0010,$0070,$0003
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048e88:
	dc.w $8000,$0000
	dc.l loc_048cb6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048e90:
	dc.w $8037
	dc.l loc_0481f8

	dc.w $8002,$188d
	dc.w $8024
	dc.w $8043,$0028
	dc.w $8044,$0030
	dc.w $0002,$03a0,$0000,$7cff,$0000,$ffd0,$0000
	dc.w $804b,$ffff,$0000,$fff7,$c000,$0000,$8000
	dc.w $0003,$03ad,$0000,$7cff,$fff0,$0000,$0000
	dc.w $0003,$03b0,$0000,$7cff,$fff0,$0010,$0000
	dc.w $0003,$03b2,$0000,$7cff,$0010,$0090,$0003
	dc.w $0003,$03ad,$0000,$7cff,$0010,$0090,$0003
	dc.w $0003,$03b0,$0000,$7cff,$0010,$0080,$0003
	dc.w $0003,$03b1,$0000,$7cff,$0008,$0078,$0003
	dc.w $0004,$039c,$0000,$7c00
	dc.w $0004,$0388,$0000,$7c00
	dc.w $0004,$0396,$0000,$7c00
	dc.w $0004,$0389,$0000,$7c00
	dc.w $803a,$df00
	dc.w $0002,$0373,$0000,$7c00
	dc.w $803a,$0000
	dc.w $0002,$0373,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048f4e:
	dc.w $8003,$1870,$0003,$0386,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048f5c:
	dc.w $0004,$03a1,$0000,$7cff,$0000,$ffc8,$0000
	dc.w $0005,$03c5,$0000,$7c00
	dc.w $0003,$03a0,$0000,$7cff,$0000,$ffd0,$0000
	dc.w $0003,$03a7,$0000,$7c00
	dc.w $0005,$0396,$0000,$7cff,$0000,$ffe0,$0000
	dc.w $803a,$df00
	dc.w $0002,$0373,$0000,$7c00
	dc.w $803a,$0000
	dc.w $0002,$0373,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048fb0:
	dc.w $0004,$03a1,$0000,$7cff,$0000,$ffc8,$0000
	dc.w $0005,$03c5,$0000,$7c00
	dc.w $0003,$03a0,$0000,$7cff,$0000,$ffd0,$0000
	dc.w $0003,$03a7,$0000,$7c00
	dc.w $0005,$0396,$0000,$7cff,$0000,$ffe0,$0000
	dc.w $0004,$0373,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_048ff4:
	dc.w $0006,$0477,$001a,$8400
	dc.w $0006,$0478,$001a,$8400
	dc.w $0006,$0479,$001a,$8400
	dc.w $000a,$047a,$001a,$8400
	dc.w $0006,$0479,$001a,$8400
	dc.w $0006,$0478,$001a,$8400
	dc.w $0006,$0477,$001a,$8400
	dc.w $000a,$0476,$001a,$8400
	dc.w $8000,$0000
	dc.l loc_048ff4

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04903c:
	dc.w $0003,$0448,$0000,$8000
	dc.w $0003,$0447,$0000,$80ff,$0004,$0000,$0000
	dc.w $0004,$04a0,$0000,$8000
	dc.w $0002,$04a1,$0000,$8000
	dc.w $0002,$04a2,$0000,$80ff,$ffff,$0000,$0000
	dc.w $0002,$04a1,$0000,$8000
	dc.w $0008,$04a2,$0000,$80ff,$ffff,$0000,$0000
	dc.w $803a,$df00
	dc.w $0003,$04a2,$0000,$80ff,$ffff,$0000,$0000
	dc.w $803a,$0000
	dc.w $0003,$04a3,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0490a6:
	dc.w $8030,$ffe8,$ffa8

loc_0490ac:
	dc.w $0003,$044f,$0016,$7cff,$0000,$0000,$0500
	dc.w $0001,$0450,$0016,$7cff,$0000,$0000,$0500
	dc.w $8000,$0000
	dc.l loc_0490ac

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0490d0:
	dc.w $8030,$ffe0,$ffa8

loc_0490d6:
	dc.w $0002,$0456,$0016,$7cff,$0000,$0000,$0600
	dc.w $0002,$0456,$0016,$7cff,$fffd,$0000,$0200
	dc.w $0002,$0456,$0016,$7cff,$0000,$0000,$0400
	dc.w $0002,$0456,$0016,$7cff,$0003,$0000,$0700
	dc.w $8000,$0000
	dc.l loc_0490d6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049116:
	dc.w $8030,$ffe0,$ffa8

loc_04911c:
	dc.w $0002,$0456,$0016,$7cff,$0000,$0002,$0800
	dc.w $0002,$0456,$0016,$7cff,$0002,$ffff,$0900
	dc.w $0002,$0456,$0016,$7cff,$fffe,$0001,$0800
	dc.w $0002,$0456,$0016,$7cff,$0000,$fffe,$0900
	dc.w $0002,$0456,$0016,$7cff,$0002,$0001,$0800
	dc.w $0002,$0456,$0016,$7cff,$fffe,$ffff,$0900
	dc.w $8000,$0000
	dc.l loc_04911c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049178:
	dc.w $0006,$0477,$001a,$8400
	dc.w $0006,$0478,$001a,$8400
	dc.w $0006,$0479,$001a,$8400
	dc.w $000a,$047a,$001a,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04919a:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0491cc

	dc.w $803e,$0841,$0200
	dc.w $803f,$0702,$0401,$0701
	dc.w $8040,$0a05,$020c,$00ff
	dc.w $8042,$0501
	dc.w $8041,$0601,$0020

	dc.w $8036
	dc.l loc_04823c

loc_0491cc:
	dc.w $8027,$fff4,$0016
	dc.w $8005,$1898
	dc.w $0002,$042e,$001b,$7800
	dc.w $8027,$ffdc,$0026
	dc.w $0003,$042f,$001c,$78ff,$fffc,$0000,$0000
	dc.w $8027,$ffdc,$001e
	dc.w $0009,$0430,$001d,$8800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049202:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_049234

	dc.w $803e,$0861,$0100
	dc.w $803f,$0702,$0401,$0701
	dc.w $8040,$0a02,$0406,$04ff
	dc.w $8042,$0501
	dc.w $8041,$0401,$0324

	dc.w $8036
	dc.l loc_04823c

loc_049234:
	dc.w $8027,$ffdc,$001e
	dc.w $8005,$189f
	dc.w $0002,$036b,$001e,$78ff,$0004,$0000,$0000
	dc.w $8027,$ffe4,$0016
	dc.w $0002,$036c,$001f,$78ff,$0004,$0000,$0000
	dc.w $8027,$ffe4,$002e
	dc.w $0006,$036d,$0020,$78ff,$0004,$0000,$0000
	dc.w $8027,$ffe4,$001e
	dc.w $0004,$0471,$0021,$88ff,$0004,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04928a:
	dc.w $8037
	dc.l loc_028fca

	dc.w $8038
	dc.l loc_0492bc

	dc.w $803e,$0861,$0200
	dc.w $803f,$0702,$0401,$0701
	dc.w $8040,$0a02,$0406,$04ff
	dc.w $8042,$0501
	dc.w $8041,$0201,$0b28

	dc.w $8036
	dc.l loc_048248

loc_0492bc
	dc.w $8005,$189f
	dc.w $0002,$0378,$0022,$7800
	dc.w $0002,$0379,$0023,$7800
	dc.w $8027,$ffe6,$0032
	dc.w $0006,$037a,$0024,$7800
	dc.w $8028
	dc.w $0004,$0472,$0025,$8800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0492ea:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_04931c

	dc.w $803e,$086b,$0200
	dc.w $803f,$1004,$0804,$1003
	dc.w $8040,$0a06,$0408,$06ff
	dc.w $8042,$0602
	dc.w $8041,$0101,$001e

	dc.w $8036
	dc.l loc_04823c

loc_04931c:
	dc.w $8004,$1897
	dc.w $0002,$0370,$0026,$78ff,$0008,$fffe,$0000
	dc.w $8027,$fff4,$001e
	dc.w $0002,$0371,$0027,$78ff,$000a,$fffe,$0000
	dc.w $8045,$0002
	dc.w $8027,$fff4,$002e
	dc.w $0008,$0465,$0028,$78ff,$0010,$0000,$0000
	dc.w $8027,$fff4,$001e
	dc.w $0003,$0371,$0027,$78ff,$000a,$fffe,$0000
	dc.w $8028
	dc.w $0003,$0370,$0026,$78ff,$0008,$fffe,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049380:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0493b2

	dc.w $803e,$082b,$0200
	dc.w $803f,$1004,$0804,$1003
	dc.w $8040,$0a00,$0606,$08ff
	dc.w $8042,$1002
	dc.w $8041,$0201,$0b29

	dc.w $8036
	dc.l loc_04823c

loc_0493b2:
	dc.w $8004,$187a
	dc.w $0003,$03fb,$0029,$7cff,$fffc,$0000,$0000
	dc.w $8027,$ffe4,$001e
	dc.w $0003,$036e,$002a,$7cff,$ffe8,$0000,$0000
	dc.w $8045,$0002
	dc.w $8027,$ffdc,$003e
	dc.w $0006,$036f,$002b,$78ff,$ffe8,$0000,$0000
	dc.w $8027,$ffe4,$001e
	dc.w $0004,$036e,$002a,$7cff,$ffe8,$0000,$0000
	dc.w $8028
	dc.w $0004,$03fb,$0029,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049416:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_049448

	dc.w $803e,$0a6b,$0200
	dc.w $803f,$0c04,$0403,$0c02
	dc.w $8040,$0a02,$0308,$06ff
	dc.w $8042,$0e02
	dc.w $8041,$0101,$0428

	dc.w $8036
	dc.l loc_048248

loc_049448:
	dc.w $8004,$187a
	dc.w $0003,$0461,$002c,$7800
	dc.w $8045,$0001
	dc.w $8027,$ffe6,$003a
	dc.w $0008,$0462,$002d,$78ff,$0000,$0002,$0000
	dc.w $8028
	dc.w $0006,$0384,$002e,$88ff,$fff8,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04947e:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0494ac

	dc.w $803e,$0845,$0100
	dc.w $803f,$1a0a,$1206,$1a06
	dc.w $8040,$0803,$030c,$0fff
	dc.w $8041,$0c01,$0020

	dc.w $8036
	dc.l loc_04823c

loc_0494ac:
	dc.w $8004,$18a3
	dc.w $0003,$044b,$002f,$7c00
	dc.w $8045,$0004
	dc.w $8027,$ffe4,$001e
	dc.w $0002,$044c,$0030,$7800
	dc.w $8027,$ffe4,$0026
	dc.w $0002,$044d,$0031,$78ff,$0002,$0000,$0000
	dc.w $0008,$044e,$0032,$78ff,$0004,$fffe,$0000
	dc.w $0003,$044d,$0033,$78ff,$0002,$0000,$0000
	dc.w $8027,$ffe4,$001e
	dc.w $0005,$044c,$0034,$7800
	dc.w $8028
	dc.w $0007,$044b,$0035,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049514:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_049542

	dc.w $803e,$0845,$0200
	dc.w $803f,$1a0a,$1006,$1a06
	dc.w $8040,$0602,$060e,$0aff
	dc.w $8041,$0401,$0426

	dc.w $8036
	dc.l loc_04823c

loc_049542:
	dc.w $8004,$1898
	dc.w $0004,$042c,$0036,$7800
	dc.w $802b,$1c5d
	dc.w $0002,$0394,$0037,$7800
	dc.w $8045,$0004
	dc.w $8027,$ffe4,$002e
	dc.w $0001,$042d,$0038,$88ff,$0002,$0001,$0000
	dc.w $0001,$042d,$0038,$88ff,$fffe,$ffff,$0000
	dc.w $000c,$042d,$0038,$8800
	dc.w $8028
	dc.w $000a,$044b,$0035,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049594:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0495c2

	dc.w $803e,$0825,$0200
	dc.w $803f,$1a0a,$1006,$1a06
	dc.w $8040,$0700,$070c,$0aff
	dc.w $8041,$0201,$082a

	dc.w $8036
	dc.l loc_048248

loc_0495c2:
	dc.w $8004,$18a1
	dc.w $0004,$0375,$0039,$7c00
	dc.w $802b,$1c5e
	dc.w $0003,$0376,$003a,$7c00
	dc.w $8045,$0004
	dc.w $8027,$ffe4,$0036
	dc.w $000c,$0377,$003b,$7800
	dc.w $8028
	dc.w $0005,$0376,$003a,$7c00
	dc.w $0005,$0375,$0039,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049600:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_04962e

	dc.w $803e,$086c,$0800
	dc.w $803f,$1206,$0004,$1204
	dc.w $8040,$0704,$040a,$13ff
	dc.w $8041,$0202,$fc2e

	dc.w $8036
	dc.l loc_04823c

loc_04962e:
	dc.w $8004,$189e
	dc.w $0002,$03e8,$003c,$7c00
	dc.w $0002,$0370,$0026,$78ff,$0008,$fffe,$0000
	dc.w $8045,$0004
	dc.w $8027,$fff4,$0026
	dc.w $0003,$0371,$003d,$78ff,$000a,$fffe,$0000
	dc.w $803e,$086d,$0200
	dc.w $803f,$1206,$1204,$1204
	dc.w $8027,$fff4,$0046
	dc.w $0007,$0372,$003e,$78ff,$000c,$0000,$0000
	dc.w $8027,$fff4,$0026
	dc.w $0006,$0371,$0027,$78ff,$000a,$fffe,$0000
	dc.w $8028
	dc.w $0006,$0370,$0026,$78ff,$0008,$fffe,$0000
	dc.w $0007,$0386,$0003,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0496b0:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0496de

	dc.w $803e,$084d,$0200
	dc.w $803f,$1a0a,$1007,$1a06
	dc.w $8040,$0a02,$0408,$16ff
	dc.w $8041,$0401,$0a23

	dc.w $8036
	dc.l loc_04823c

loc_0496de:
	dc.w $8004,$18a3
	dc.w $0002,$03fb,$0029,$7cff,$fffc,$0000,$0000
	dc.w $8027,$ffe4,$001e
	dc.w $0002,$0380,$003f,$7cff,$fff0,$0000,$0000
	dc.w $8045,$0004
	dc.w $802b,$1c5f
	dc.w $8027,$fff4,$002e
	dc.w $0001,$0381,$0040,$78ff,$fff4,$0004,$0000
	dc.w $0001,$0381,$0040,$78ff,$fff6,$0002,$0000
	dc.w $0006,$0381,$0040,$78ff,$fff8,$0000,$0000
	dc.w $8027,$ffe4,$001e
	dc.w $000e,$0380,$003f,$7cff,$fff0,$0000,$0000
	dc.w $8028
	dc.w $0008,$03fb,$0029,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049762:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_049790

	dc.w $803e,$0a2d,$0b00
	dc.w $803f,$160a,$0a05,$1608
	dc.w $8040,$0604,$0608,$12ff
	dc.w $8041,$0101,$0a2c

	dc.w $8036
	dc.l loc_048248

loc_049790:
	dc.w $8004,$18a1
	dc.w $0003,$03c8,$0005,$7cff,$fffc,$0000,$0001
	dc.w $8027,$ffe6,$0022
	dc.w $0003,$0461,$002c,$78ff,$0000,$0002,$0000
	dc.w $8045,$0004
	dc.w $8027,$ffd6,$004a
	dc.w $0008,$0385,$0041,$78ff,$fff8,$0000,$0000
	dc.w $8028
	dc.w $000a,$0384,$002e,$88ff,$fff8,$0004,$0000
	dc.w $0008,$03c8,$0005,$7cff,$fffc,$0000,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0497ee:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_04981c

	dc.w $803e,$0825,$0100
	dc.w $803f,$1a0a,$1006,$1a06
	dc.w $8040,$0804,$0808,$12ff
	dc.w $8041,$0401,$0c2c

	dc.w $8036
	dc.l loc_04823c

loc_04981c:
	dc.w $8004,$18a1
	dc.w $8027,$ffdc,$0016
	dc.w $0005,$0368,$0042,$7c00
	dc.w $802a,$0014
	dc.w $804e,$0004,$2000,$ffff,$a000
	dc.w $8011,$001d,$0005,$d800,$e0f4,$ff00
	dc.w $8027,$ffe4,$001e
	dc.w $0003,$0369,$0043,$78ff,$fff8,$0000,$0000
	dc.w $8045,$0004
	dc.w $8011,$001d,$0005,$2000,$f0f4,$ff00
	dc.w $8027,$ffe4,$0046
	dc.w $0008,$036a,$0044,$7800
	dc.w $8027,$ffe4,$001e
	dc.w $0008,$044c,$0034,$7800
	dc.w $8028
	dc.w $000a,$044b,$0035,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049894:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_0498c2

	dc.w $803e,$0942,$0200
	dc.w $803f,$1204,$0c04,$1203
	dc.w $8040,$14ff,$0311,$ffff
	dc.w $8041,$0601,$0325

	dc.w $8036
	dc.l loc_048254

loc_0498c2:
	dc.w $8004,$18a3
	dc.w $8027,$ffe6,$0012
	dc.w $0003,$0391,$0045,$7800
	dc.w $8045,$0002
	dc.w $8027,$ffee,$0032
	dc.w $0005,$0392,$0046,$7800
	dc.w $8027,$ffe6,$0022
	dc.w $000c,$0393,$0047,$8800
	dc.w $8028
	dc.w $0006,$038a,$0048,$7c00
	dc.w $0004,$0388,$000c,$7c00
	dc.w $0004,$0389,$000d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049910:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_04993e

	dc.w $803e,$0962,$0200
	dc.w $803f,$1004,$0804,$1003
	dc.w $8040,$11ff,$050c,$ffff
	dc.w $8041,$0201,$0424

	dc.w $8036
	dc.l loc_048254

loc_04993e:
	dc.w $8004,$189f
	dc.w $8027,$ffd6,$002a
	dc.w $0003,$038d,$0049,$8800
	dc.w $8027,$ffe6,$002a
	dc.w $0002,$038f,$004a,$8800
	dc.w $8045,$0002
	dc.w $8027,$ffe6,$0032
	dc.w $000c,$0390,$004b,$7800
	dc.w $8027,$ffe6,$002a
	dc.w $0006,$038f,$004a,$8800
	dc.w $8028
	dc.w $0004,$0388,$000c,$7c00
	dc.w $0004,$0389,$000d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049992:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_0499c0

	dc.w $803e,$094a,$0100
	dc.w $803f,$1204,$0c04,$1203
	dc.w $8040,$10ff,$040c,$ffff
	dc.w $8041,$0601,$041e

	dc.w $8036
	dc.l loc_048254

loc_0499c0:
	dc.w $8004,$189c
	dc.w $0002,$0399,$004c,$7c00
	dc.w $8027,$ffde,$002a
	dc.w $0002,$038e,$004d,$7c00
	dc.w $8045,$0002
	dc.w $0001,$039e,$004e,$78ff,$0002,$ffff,$0000
	dc.w $0001,$039e,$004e,$78ff,$fffe,$0001,$0000
	dc.w $000a,$039e,$004e,$7800
	dc.w $8028
	dc.w $0004,$0396,$000b,$7c00
	dc.w $0004,$0389,$000d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049a16:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_049a44

	dc.w $803e,$092a,$0200
	dc.w $803f,$1004,$0804,$1003
	dc.w $8040,$12ff,$040e,$ffff
	dc.w $8041,$0101,$f31a

	dc.w $8036
	dc.l loc_048254

loc_049a44:
	dc.w $8004,$187a
	dc.w $0002,$0396,$000b,$7c00
	dc.w $8027,$ffde,$0022
	dc.w $0002,$038a,$0048,$7c00
	dc.w $8045,$0002
	dc.w $8027,$ffe6,$0022
	dc.w $000e,$039f,$004f,$7800
	dc.w $8028
	dc.w $0004,$0388,$000c,$7c00
	dc.w $0004,$0389,$000d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049a84:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_049ab2

	dc.w $803e,$0944,$2700
	dc.w $803f,$1a08,$1206,$1a05
	dc.w $8040,$0bff,$0506,$ffff
	dc.w $8041,$0401,$0628

	dc.w $8036
	dc.l loc_048254

loc_049ab2:
	dc.w $8004,$18a3
	dc.w $8027,$ffde,$002a
	dc.w $0002,$039c,$0050,$7800
	dc.w $8027,$ffe6,$0022
	dc.w $0003,$0394,$0051,$7800
	dc.w $8045,$0004,$8027,$ffee,$0042
	dc.w $0002,$0395,$0052,$88ff,$fffc,$fffe,$0000
	dc.w $0002,$0395,$0052,$88ff,$0001,$0001,$0000
	dc.w $0002,$0395,$0052,$8800
	dc.w $8028
	dc.w $0006,$0396,$000b,$7c00
	dc.w $0004,$0388,$000c,$7c00
	dc.w $0004,$0389,$000d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049b1c:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_049b4a

	dc.w $803e,$0944,$0100
	dc.w $803f,$1608,$0e05,$1605
	dc.w $8040,$0aff,$0406,$ffff
	dc.w $8041,$0401,$0a26

	dc.w $8036
	dc.l loc_048254

loc_049b4a:
	dc.w $8004,$18a3
	dc.w $8027,$ffde,$0022
	dc.w $0004,$038a,$0048,$7c00
	dc.w $8045,$0004
	dc.w $8027,$ffce,$0032
	dc.w $0006,$038c,$0053,$7800
	dc.w $8027,$ffde,$0022
	dc.w $0008,$038a,$0048,$7c00
	dc.w $8028
	dc.w $0004,$0388,$000c,$7c00
	dc.w $0004,$0389,$000d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049b90:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_049bbe

	dc.w $803e,$0944,$0100
	dc.w $803f,$1208,$0804,$1205
	dc.w $8040,$06ff,$06ff,$00ff
	dc.w $8041,$0201,$ee23

	dc.w $8036
	dc.l loc_048254

loc_049bbe:
	dc.w $8004,$18a3
	dc.w $8027,$ffde,$0022
	dc.w $0006,$038a,$0048,$8400
	dc.w $8045,$0004
	dc.w $8027,$ffd6,$0052
	dc.w $0008,$038b,$0054,$88ff,$fff0,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049bea:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_049c18

	dc.w $803e,$096c,$0100
	dc.w $803f,$1808,$0c06,$1805
	dc.w $8040,$0bff,$0506,$ffff
	dc.w $8041,$0201,$f827

	dc.w $8036
	dc.l loc_048254

loc_049c18:
	dc.w $8004,$189e
	dc.w $0003,$0399,$004c,$7c00
	dc.w $8027,$ffde,$0022
	dc.w $0002,$039a,$0055,$8800
	dc.w $8045,$0004
	dc.w $8027,$ffce,$0042
	dc.w $0006,$039b,$0056,$8800
	dc.w $8027,$ffde,$002a
	dc.w $0008,$039c,$0050,$7800
	dc.w $8028
	dc.w $0006,$0396,$000b,$7c00
	dc.w $0006,$0389,$000d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049c66:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_049c94

	dc.w $803e,$092c,$0100
	dc.w $803f,$1408,$0c05,$1405
	dc.w $8040,$0cff,$0606,$ffff
	dc.w $8041,$0201,$082c

	dc.w $8036
	dc.l loc_048254

loc_049c94:
	dc.w $8004,$18a1
	dc.w $8027,$ffde,$002a
	dc.w $0006,$0397,$0057,$7800
	dc.w $8045,$0004
	dc.w $8027,$ffbe,$0052
	dc.w $0006,$0398,$0058,$78ff,$0008,$0000,$0000
	dc.w $8027,$ffde,$002a
	dc.w $0006,$0397,$0057,$7800
	dc.w $8028
	dc.w $0006,$0388,$000c,$7c00
	dc.w $0006,$0389,$000d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049ce0:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_049d0e

	dc.w $803e,$092c,$0200
	dc.w $803f,$1408,$0805,$1405
	dc.w $8040,$14ff,$060e,$ffff
	dc.w $8041,$0101,$fe1e

	dc.w $8036
	dc.l loc_048254

loc_049d0e:
	dc.w $8004,$18a1
	dc.w $8027,$ffde,$002a
	dc.w $0006,$0397,$0057,$7800
	dc.w $8045,$0004
	dc.w $8027,$ffe6,$003a
	dc.w $000e,$03a2,$0059,$7800
	dc.w $8028
	dc.w $0008,$0396,$000b,$7c00
	dc.w $0004,$0389,$000d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049d46:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_049d86

	dc.w $803e,$3846,$1200
	dc.w $803f,$1a08,$1008,$1a08
	dc.w $8040,$0000,$090a,$1600
	dc.w $8044,$0007
	dc.w $8043,$0007
	dc.w $8041,$0e01,$f826
	dc.w $8048,$0550,$0006
	dc.w $8039,$0000

	dc.w $8036
	dc.l loc_04823c

loc_049d86:
	dc.w $802c
	dc.w $8027,$ffe4,$001e
	dc.w $0002,$03e0,$005a,$8400
	dc.w $8004,$18ac
	dc.w $8007,$0008,$0000
	dc.w $8027,$ffdc,$0026
	dc.w $0005,$03df,$005b,$84ff,$000a,$0000,$0000
	dc.w $8045,$0008
	dc.w $802a,$0016
	dc.w $8027,$ffe4,$001e
	dc.w $8012
	dc.l loc_049eb0
	dc.w $000c,$0002,$03e0,$005a,$8400

	dc.w $800d
	dc.l loc_049e5a
	dc.w $ffff

	dc.w $8027,$ffd4,$0026
	dc.w $8043,$0001
	dc.w $0002,$03e1,$005c,$7c00
	dc.w $803f,$1208,$0606,$1208
	dc.w $8027,$ffd4,$0036
	dc.w $0008,$03e2,$005d,$7cff,$fffe,$0000,$0000
	dc.w $0008,$03e2,$005e,$7cff,$fffe,$0000,$0000
	dc.w $8007,$0010,$0000
	dc.w $8027,$ffd4,$0026
	dc.w $0006,$03e1,$005f,$7c00
	dc.w $8007,$0010,$0000
	dc.w $8027,$ffdc,$0016
	dc.w $0004,$03e0,$0060,$80ff,$0008,$0000,$0000
	dc.w $8048,$0550,$0004
	dc.w $0004,$03e0,$0060,$80ff,$0008,$0000,$0000
	dc.w $8001

loc_049e5a:
	dc.w $0002,$049b,$74ff,$ffd0,$0070,$0c00
	dc.w $0002,$049c,$74ff,$ffde,$0090,$0c00
	dc.w $0002,$049d,$74ff,$ffde,$0090,$0c00
	dc.w $0002,$049c,$74ff,$ffde,$0090,$0c00
	dc.w $0002,$049d,$74ff,$ffde,$0090,$0c00
	dc.w $0002,$049e,$74ff,$ffde,$0090,$0c00
	dc.w $0002,$049f,$74ff,$ffde,$0090,$0c00
	dc.w $8001

loc_049eb0:
	dc.w $ff80,$ffc0,$0000,$0050

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049eb8:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_049ef4

	dc.w $803e,$3a2d,$0b00
	dc.w $803f,$180c,$0c09,$1808
	dc.w $8040,$0000,$100c,$1200
	dc.w $8043,$0004
	dc.w $8041,$0101,$0024
	dc.w $8048,$0550,$0004
	dc.w $8039,$0000

	dc.w $8036
	dc.l loc_04823c

loc_049ef4:
	dc.w $802c
	dc.w $0002,$03eb,$0009,$7cff,$0008,$0000,$0000
	dc.w $8011,$001c,$0004,$f000,$f000
	dc.w $0002,$0387,$000a,$7c00
	dc.w $8045,$000a
	dc.w $8002,$188d
	dc.w $8007,$0000,$ffe8
	dc.w $804a,$0002,$0000,$fffe,$6f00
	dc.w $803c,$0004
	dc.w $8027,$ffde,$0022
	dc.w $0008,$0388,$0061,$7cff,$0000,$ffe8,$0000
	dc.w $8027,$ffde,$0032
	dc.w $8004,$18a4
	dc.w $802a,$0018
	dc.w $0004,$03a0,$0062,$7cff,$0000,$ffd0,$0000
	dc.w $804e,$0006,$0000,$ffff,$8000
	dc.w $8032,$000c,$0010,$0d00
	dc.w $8027,$ffce,$004a
	dc.w $0004,$03a1,$0063,$78ff,$0000,$ffc8,$0000
	dc.w $0004,$03a1,$0063,$78ff,$0000,$ffc8,$0000
	dc.w $803e,$3a2d,$02ff
	dc.w $803f,$0e04,$0406,$0e08
	dc.w $0004,$03a1,$0063,$78ff,$0000,$ffc8,$0000
	dc.w $8027,$ffce,$003a
	dc.w $0005,$03c5,$0064,$7c00
	dc.w $8027,$ffe6,$003a
	dc.w $0003,$03a0,$0065,$7cff,$0000,$ffd0,$0000
	dc.w $0003,$03a7,$0066,$7c00
	dc.w $0004,$0396,$0067,$7cff,$0000,$ffe0,$0000
	dc.w $8048,$0550,$0004
	dc.w $803c,$0000
	dc.w $0003,$0373,$0004,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_049ffe:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_04a03a

	dc.w $803e,$3a2d,$2800
	dc.w $803f,$200c,$0c0b,$2008
	dc.w $8040,$0000,$1214,$1200
	dc.w $8043,$0004
	dc.w $8041,$0101,$0024
	dc.w $8048,$0550,$0004
	dc.w $8039,$0000

	dc.w $8036
	dc.l loc_04823c

loc_04a03a:
	dc.w $802c
	dc.w $0002,$03eb,$0009,$7cff,$0008,$0000,$0000
	dc.w $8011,$001c,$0004,$f000,$f000
	dc.w $0002,$0387,$000a,$7c00
	dc.w $8045,$000e
	dc.w $8002,$188d
	dc.w $8007,$0000,$ffe8
	dc.w $804a,$0002,$0000,$fffd,$7fdb
	dc.w $803c,$0004
	dc.w $8027,$ffde,$0022
	dc.w $0008,$0388,$0061,$7cff,$0000,$ffe8,$0000
	dc.w $8027,$ffde,$0032
	dc.w $8004,$18a4
	dc.w $802a,$0018
	dc.w $0006,$03a0,$0062,$7cff,$0000,$ffd0,$0000
	dc.w $804e,$0007,$8000,$ffff,$a000
	dc.w $8032,$0014,$0010,$0d00
	dc.w $8027,$ffce,$004a
	dc.w $0005,$03a1,$0063,$78ff,$0000,$ffc8,$0000
	dc.w $803e,$3a2d,$0bff
	dc.w $803f,$1a06,$0609,$1a08
	dc.w $0005,$03a1,$0063,$78ff,$0000,$ffc8,$0000
	dc.w $0005,$03a1,$0063,$78ff,$0000,$ffc8,$0000
	dc.w $803e,$3a2d,$02ff
	dc.w $803f,$0e04,$0406,$0e08
	dc.w $0005,$03a1,$0063,$78ff,$0000,$ffc8,$0000
	dc.w $8027,$ffce,$003a
	dc.w $0005,$03c5,$0064,$7c00
	dc.w $8027,$ffe6,$003a
	dc.w $0003,$03a0,$0065,$7cff,$0000,$ffd0,$0000
	dc.w $0003,$03a7,$0066,$7c00
	dc.w $0004,$0396,$0067,$7cff,$0000,$ffe0,$0000
	dc.w $8048,$0550,$0004
	dc.w $803c,$0000
	dc.w $0003,$0373,$0004,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04a160:;236+k animation
	dc.w $8037
	dc.l loc_047846

	dc.w $8049,$00bc
	dc.l loc_04a3f0

	dc.w $8047,$00b6,$0000

	dc.w $8038
	dc.l loc_04a1aa

	dc.w $803e,$286d,$2600
	dc.w $8046,$18a0
	dc.w $803f,$0a02,$0003,$0a00
	dc.w $8040,$0000,$0806,$1800
	dc.w $8041,$0201,$1026
	dc.w $8048,$0550,$0008
	dc.w $8039,$0000

	dc.w $8036
	dc.l loc_04823c

loc_04a1aa:
	dc.w $8023
	dc.w $802c
	dc.w $0002,$0466,$0068,$7cff,$0000,$0000,$0001
	dc.w $8004,$1884
	dc.w $8011,$001c,$0004,$f000,$e000
	dc.w $802b,$1c5c
	dc.w $0004,$0467,$0069,$7cff,$0000,$0000,$0001
	dc.w $8027,$ffe4,$003e
	dc.w $0002,$0468,$006a,$88ff,$0000,$0000,$0001
	dc.w $8045,$000a

	dc.w $800d
	dc.l loc_04a270
	dc.w $ffff

	dc.w $0006,$0469,$006b,$78ff,$0000,$0000,$0001
	dc.w $8027,$ffdc,$001e
	dc.w $0004,$046a,$006c,$78ff,$0000,$0000,$0001
	dc.w $8028,$8007,$0008,$0000
	dc.w $8011,$001d,$0005,$e800,$e8f0,$ff00
	dc.w $0006,$046b,$006d,$7cff,$ffe8,$0000,$0001
	dc.w $8007,$0008,$0000
	dc.w $8011,$001d,$0005,$1800,$10f4,$ff00
	dc.w $0006,$03fb,$0029,$7cff,$fffc,$0000,$0000
	dc.w $8048,$0550,$0008
	dc.w $0008,$0386,$0003,$7c00
	dc.w $8001

loc_04a270:
	dc.w $0006,$04c5,$74ff,$ffc0,$0060,$0c01
	dc.w $0004,$04c6,$74ff,$ffd0,$0050,$0c01
	dc.w $0004,$04c7,$74ff,$ffe0,$0030,$0c01
	dc.w $8001

;start of HK version
loc_04a296:
	dc.w $8037
	dc.l loc_047846

	dc.w $8049,$00bc
	dc.l loc_04a3f0

	dc.w $8047,$00b6,$0000

	dc.w $8038
	dc.l loc_04a2e0

	dc.w $803e,$286d,$2600
	dc.w $8046,$18a0
	dc.w $803f,$1006,$0004,$1000
	dc.w $8040,$0000,$1004,$1c00
	dc.w $8041,$0201,$1026
	dc.w $8048,$0550,$0008
	dc.w $8039,$0000

	dc.w $8036
	dc.l loc_04823c

loc_04a2e0:
	dc.w $8023
	dc.w $802c
	dc.w $0002,$0466,$0068,$7cff,$0000,$0000,$0001
	dc.w $804a,$0003,$0000,$fffb,$c900
	dc.w $8004,$1884
	dc.w $8011,$001c,$0004,$f000,$e000
	dc.w $0002,$0466,$0068,$7cff,$0000,$0000,$0001
	dc.w $8045,$000e
	dc.w $802b,$1c5c
	dc.w $0009,$0467,$0069,$7cff,$0000,$0000,$0001
	dc.w $8027,$ffe4,$003e
	dc.w $0003,$0468,$006a,$88ff,$0000,$0000,$0001

	dc.w $800d
	dc.l loc_04a3ca
	dc.w $ffff

	dc.w $8011,$001d,$0005,$e800,$e8f0,$ff00
	dc.w $0004,$0469,$006b,$78ff,$0000,$0000,$0001
	dc.w $8027,$ffdc,$001e
	dc.w $8011,$001d,$0005,$e800,$18f0,$ff00
	dc.w $0006,$046a,$006c,$78ff,$0000,$0000,$0001
	dc.w $8028
	dc.w $8007,$0008,$0000
	dc.w $0006,$046b,$006d,$7cff,$ffe8,$0000,$0001
	dc.w $8007,$0008,$0000
	dc.w $8011,$001d,$0005,$1800,$10f4,$ff00
	dc.w $0006,$03fb,$0029,$7cff,$fffc,$0000,$0000
	dc.w $8048,$0550,$000a
	dc.w $000a,$0386,$0003,$7c00
	dc.w $8001

loc_04a3ca:
	dc.w $0004,$04c5,$74ff,$ffc0,$0060,$0c01
	dc.w $0006,$04c6,$74ff,$ffd0,$0050,$0c01
	dc.w $0004,$04c7,$74ff,$ffe0,$0030,$0c01
	dc.w $8001

loc_04a3f0:
	dc.w $8048,$0550,$0000
	dc.w $8023
	dc.w $8027,$ffdc,$001e
	dc.w $0004,$046a,$006c,$78ff,$0000,$0000,$0001
	dc.w $8028
	dc.w $0004,$0466,$0068,$7cff,$0000,$0000,$0001
	dc.w $8011,$001c,$0004,$f000,$e800
	dc.w $0004,$047e,$0000,$7cff,$fff8,$0000,$0001
	dc.w $803e,$2806,$2f00
	dc.w $803f,$1a0a,$080a,$1a08
	dc.w $803b,$0000,$f20b
	dc.w $8048,$025c,$18c4
	dc.w $8043,$000c
	dc.w $8002,$1886

	dc.w $804c
	dc.l $00078000,$fff40000,$ffff6000,$00010000

	dc.w $802b,$1c62
	dc.w $0004,$047f,$0000,$88ff,$fffc,$0000,$0001
	dc.w $0004,$0480,$0000,$88ff,$fff4,$0008,$0001
	dc.w $0004,$03e5,$0000,$88ff,$0002,$0000,$0000
	dc.w $801a,$0001,$7fff
	dc.w $8047,$00b6,$ffff
	dc.w $8002,$18e7
	dc.w $8019
	dc.w $8023
	dc.w $0008,$03e3,$0000,$88ff,$0002,$0000,$0000
	dc.w $0004,$03e4,$0000,$88ff,$0000,$0008,$0000
	dc.w $804b,$0000,$0000,$0000,$0000,$0001,$0000
	dc.w $000c,$03e6,$0000,$88ff,$0004,$0000,$0000
	dc.w $802b,$1c63
	dc.w $0002,$03e4,$0000,$8800
	dc.w $8026,$0014
	dc.w $8034
	dc.w $8011,$001d,$0005,$d800,$c0e0,$0100
	dc.w $8011,$001d,$0005,$2000,$40e0,$0100
	dc.w $0010,$03e7,$0000,$7800
	dc.w $803b,$cc00,$ea13
	dc.w $0008,$03a9,$0000,$7800
	dc.w $803b,$cc00,$e60f
	dc.w $0004,$03aa,$0000,$78ff,$000a,$fffe,$0000
	dc.w $803b,$cc00,$e20b
	dc.w $0003,$03ab,$0000,$78ff,$0008,$0000,$0000
	dc.w $801d
	dc.w $801a,$0000,$0000
	dc.w $803c,$0000
	dc.w $0004,$03ac,$0000,$8800
	dc.w $0004,$046f,$0000,$88ff,$0000,$0000,$0001
	dc.w $0008,$03d8,$0002,$88ff,$0004,$0000,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04a57c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0178,$0000,$80ff,$000c,$0070,$0001
	dc.w $0004,$0122,$0000,$80ff,$0008,$0090,$0001
	dc.w $000c,$0122,$0000,$80ff,$0008,$0092,$0001
	dc.w $0002,$0122,$0000,$80ff,$0008,$0088,$0001
	dc.w $801e,$0000,$ffb0
	dc.w $8020
	dc.w $0010,$0174,$0000,$80ff,$0000,$0024,$0001
	dc.w $0008,$017c,$0000,$80ff,$000b,$005c,$0000
	dc.w $0004,$0182,$0000,$80ff,$0001,$0066,$0000
	dc.w $0003,$0181,$0000,$80ff,$ffc0,$0040,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0143,$0000,$80ff,$0010,$0070,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04a614:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0306,$0000,$80ff,$0000,$0064,$0000
	dc.w $0004,$022c,$0000,$80ff,$0000,$008e,$0001
	dc.w $000c,$022c,$0000,$80ff,$0000,$0090,$0001
	dc.w $0002,$022c,$0000,$80ff,$0000,$0086,$0001
	dc.w $801e,$0000,$ffb0
	dc.w $8020
	dc.w $0010,$0301,$0000,$80ff,$0000,$001e,$0001
	dc.w $0008,$030a,$0000,$80ff,$0003,$0054,$0001
	dc.w $0004,$0310,$0000,$80ff,$fff9,$005e,$0000
	dc.w $0003,$0311,$0000,$80ff,$ffca,$0028,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$02fa,$0000,$80ff,$0010,$0070,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04a6ac:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$040d,$0000,$80ff,$fffc,$0070,$0001
	dc.w $0004,$045b,$0000,$80ff,$0000,$0090,$0001
	dc.w $000c,$045b,$0000,$80ff,$0000,$0092,$0001
	dc.w $0002,$045b,$0000,$80ff,$0000,$0088,$0001
	dc.w $801e,$0000,$ffb0
	dc.w $8020
	dc.w $0010,$0411,$0000,$80ff,$fffe,$002d,$0001
	dc.w $0008,$040d,$0000,$80ff,$fff9,$00bb,$0003
	dc.w $0004,$040a,$0000,$80ff,$fff1,$0057,$0000
	dc.w $0003,$040b,$0000,$80ff,$ffcf,$003c,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0414,$0000,$80ff,$0010,$0078,$0003
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04a744:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$069b,$0000,$80ff,$fff8,$007a,$0000
	dc.w $0004,$052a,$0000,$80ff,$fffc,$008e,$0001
	dc.w $000c,$052a,$0000,$80ff,$fffc,$0090,$0001
	dc.w $0002,$052a,$0000,$80ff,$fffc,$0086,$0001
	dc.w $801e,$0000,$ffb0
	dc.w $8020
	dc.w $0010,$0692,$0000,$80ff,$fffc,$0020,$0001
	dc.w $0008,$0697,$0000,$80ff,$fff8,$005f,$0001
	dc.w $0004,$06a1,$0000,$80ff,$ffe7,$006e,$0000
	dc.w $0003,$06a0,$0000,$80ff,$ffbf,$0040,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0676,$0000,$80ff,$0010,$0060,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04a7dc:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$085a,$0000,$80ff,$0000,$0078,$0001
	dc.w $0004,$0815,$0000,$80ff,$0000,$008c,$0001
	dc.w $000c,$0815,$0000,$80ff,$0000,$008e,$0001
	dc.w $0002,$0815,$0000,$80ff,$0000,$0084,$0001
	dc.w $801e,$0000,$ffb0
	dc.w $8020
	dc.w $0010,$0859,$0000,$80ff,$fff8,$007c,$0003
	dc.w $0008,$085a,$0000,$80ff,$0002,$00aa,$0003
	dc.w $0004,$085c,$0000,$80ff,$fff4,$005f,$0001
	dc.w $0003,$085e,$0000,$80ff,$ffc7,$002c,$0001
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0871,$0000,$80ff,$0008,$fff8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04a874:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$09fd,$0000,$80ff,$0000,$0072,$0000
	dc.w $0004,$093f,$0000,$80ff,$0000,$0092,$0001
	dc.w $000c,$093f,$0000,$80ff,$0000,$0094,$0001
	dc.w $0002,$093f,$0000,$80ff,$0000,$008a,$0001
	dc.w $801e,$0000,$ffb0
	dc.w $8020
	dc.w $0010,$09d9,$0000,$80ff,$fffc,$0044,$0001
	dc.w $0008,$09f9,$0000,$80ff,$fffb,$0051,$0001
	dc.w $0004,$0a05,$0000,$80ff,$ffe7,$007e,$0000
	dc.w $0003,$0a04,$0000,$80ff,$ffc4,$0033,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0a06,$0000,$80ff,$0008,$0078,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04a90c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0bd0,$0000,$80ff,$0000,$0072,$0000
	dc.w $0004,$0ac5,$0000,$80ff,$fffc,$009c,$0001
	dc.w $000c,$0ac5,$0000,$80ff,$fffc,$009e,$0001
	dc.w $0002,$0ac5,$0000,$80ff,$fffc,$0084,$0001
	dc.w $801e,$0000,$ffb0
	dc.w $8020
	dc.w $0010,$0bc7,$0000,$80ff,$fff6,$0030,$0001
	dc.w $0008,$0bcc,$0000,$80ff,$0002,$006c,$0001
	dc.w $0004,$0bd6,$0000,$80ff,$fffc,$005f,$0000
	dc.w $0003,$0bd5,$0000,$80ff,$ffcb,$003c,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0b99,$0000,$80ff,$0008,$0078,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04a9a4:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0dc1,$0000,$80ff,$0000,$0074,$0000
	dc.w $0004,$0dc7,$0000,$80ff,$fffc,$0096,$0001
	dc.w $000c,$0dc7,$0000,$80ff,$fffc,$0098,$0001
	dc.w $0002,$0dc7,$0000,$80ff,$fffc,$008e,$0001
	dc.w $801e,$0000,$ffb0
	dc.w $8020
	dc.w $0010,$0db6,$0000,$80ff,$0000,$002c,$0001
	dc.w $0008,$0dbd,$0000,$80ff,$0004,$006b,$0001
	dc.w $0004,$0db0,$0000,$80ff,$fff0,$005c,$0000
	dc.w $0003,$0daf,$0000,$80ff,$ffc8,$003c,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0dd6,$0000,$80ff,$0018,$0060,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04aa3c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0f2b,$0000,$80ff,$0000,$0078,$0001
	dc.w $0004,$0e62,$0000,$80ff,$fffa,$008c,$0001
	dc.w $000c,$0e62,$0000,$80ff,$fffa,$008e,$0001
	dc.w $0002,$0e62,$0000,$80ff,$fffa,$0084,$0001
	dc.w $801e,$0000,$ffb0
	dc.w $8020
	dc.w $0010,$0f2c,$0000,$80ff,$0002,$0073,$0002
	dc.w $0008,$0f2b,$0000,$80ff,$0006,$00a8,$0003
	dc.w $0004,$0f28,$0000,$80ff,$fffa,$00d2,$0003
	dc.w $0003,$0e5c,$0000,$80ff,$ffc3,$0044,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0e5a,$0000,$80ff,$0000,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04aad4:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$10b4,$0000,$80ff,$ffee,$006f,$0001
	dc.w $0004,$105e,$0000,$80ff,$0000,$008c,$0001
	dc.w $000c,$105e,$0000,$80ff,$0000,$008e,$0001
	dc.w $0002,$105e,$0000,$80ff,$0000,$0084,$0001
	dc.w $801e,$0000,$ffb0
	dc.w $8020
	dc.w $0010,$10ad,$0000,$80ff,$fff3,$0026,$0001
	dc.w $0008,$10b8,$0000,$80ff,$fff8,$005a,$0000
	dc.w $0004,$10c0,$0000,$80ff,$fff4,$0076,$0000
	dc.w $0003,$10bf,$0000,$80ff,$ffc6,$0049,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$1185,$0000,$80ff,$000c,$0052,$0003
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ab6c:
	dc.w $8037
	dc.l loc_047352
	dc.w $8038
	dc.l loc_04aba0

	dc.w $803c,$0000
	dc.w $803e,$0807,$2f00
	dc.w $803f,$0000,$0000,$0000
	dc.w $8040,$0000,$0c00,$2200
	dc.w $8041,$0006,$0000
	dc.w $8048,$0550,$000c,$0000

loc_04aba0:
	dc.w $8047,$00b6,$ffff
	dc.w $802c
	dc.w $000c,$046e,$006e,$78ff,$0004,$0000,$0000
	dc.w $8047,$00b6,$0000
	dc.w $8045,$000c
	dc.w $8004,$18a3
	dc.w $0004,$0471,$006f,$78ff,$0004,$0000,$0000
	dc.w $802b,$1c66
	dc.w $0004,$046f,$0070,$78ff,$0004,$0000,$0000
	dc.w $0010,$0470,$0070,$78ff,$0004,$0000,$0000
	dc.w $0004,$046f,$0070,$78ff,$0004,$0000,$0000
	dc.w $0004,$0471,$006f,$78ff,$0004,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ac10:
	dc.w $8037
	dc.l loc_0473c8
	dc.w $8038
	dc.l loc_04ac5c

	dc.w $803e,$28fc,$2f00
	dc.w $8048,$025c,$189e
	dc.w $803f,$0200,$0001,$0000
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8039,$0000
	dc.w $803b,$0000,$f20b
	dc.w $8048,$0550,$0000
	dc.w $8048,$0552,$0000
	dc.w $8047,$024b,$ffff,$0000

loc_04ac5c:
	dc.w $802c
	dc.w $0001,$046e,$0000,$78ff,$0004,$0000,$0000
	dc.w $0002,$046f,$0000,$78ff,$0004,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ac7c:
	dc.w $803e,$28df,$2f00
	dc.w $803f,$1004,$000a,$1800,$0000

loc_04ac8c:
	dc.w $803e,$289f,$2f00
	dc.w $803f,$1004,$000a,$1800,$0000

loc_04ac9c:
	dc.w $8037
	dc.l loc_0476ac
	dc.w $8038
	dc.l loc_04ad22

	dc.w $803e,$2807,$2f00
	dc.w $803f,$2c08,$0012,$3c00
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8039,$0000
	dc.w $803b,$0000,$f20b
	dc.w $8048,$0550,$0000
	dc.w $8048,$0552,$0000
	dc.w $8047,$024b,$ffff,$0000

loc_04ace2:
	dc.w $8037
	dc.l loc_0476ac
	dc.w $8038
	dc.l loc_04ad22

	dc.w $803e,$2807,$2f00
	dc.w $803f,$3808,$0014,$4600
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8039,$0000
	dc.w $803b,$0000,$f20b
	dc.w $8048,$0550,$0000
	dc.w $8047,$024b,$ffff,$0000

loc_04ad22:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $801a,$0005,$8000
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $0002,$0383,$0000,$7800
	dc.w $0002,$037b,$0000,$7800
	dc.w $0002,$0382,$0000,$7800
	dc.w $802b,$1c68
	dc.w $8011,$001c,$0004,$e000,$c0f8
	dc.w $8011,$001c,$0004,$1800,$40f8
	dc.w $0010,$03a4,$0000,$7800
	dc.w $0004,$03ec,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0004,$03ed,$0000,$78ff,$fff0,$0000,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $8002,$188d
	dc.w $8007,$0000,$ffe0
	dc.w $8011,$001d,$0005,$2020,$10f4,$ff00
	dc.w $0006,$03ef,$0000,$7800
	dc.w $0005,$03f0,$0000,$78ff,$fffc,$0002,$0000
	dc.w $0004,$03f1,$0000,$7800
	dc.w $0004,$03f2,$0000,$78ff,$0002,$0004,$0000
	dc.w $0003,$03f3,$0000,$7800
	dc.w $0003,$03f4,$0000,$78ff,$0004,$fffe,$0000
	dc.w $0003,$03f5,$0000,$7800

loc_04adf4:
	dc.w $0002,$0404,$0000,$78ff,$fffe,$fffc,$0000
	dc.w $0002,$03ef,$0000,$7800
	dc.w $0002,$03f0,$0000,$78ff,$fffc,$0002,$0000
	dc.w $0002,$03f1,$0000,$7800
	dc.w $0002,$03f2,$0000,$78ff,$0002,$0004,$0000
	dc.w $0002,$03f3,$0000,$7800
	dc.w $0002,$03f4,$0000,$78ff,$0004,$fffe,$0000
	dc.w $0002,$03f5,$0000,$7800
	dc.w $8000,$0000
	dc.l loc_04adf4

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ae54:
	dc.w $802b,$1c69

	dc.w $800d
	dc.l loc_04aef0
	dc.w $0001

	dc.w $8000,$0000
	dc.l loc_04ae78

loc_04ae68:
	dc.w $800d
	dc.l loc_04af58
	dc.w $0001

	dc.w $8000,$0000
	dc.l loc_04aebe

loc_04ae78:
	dc.w $0001,$0404,$0000,$78ff,$fffe,$fffc,$0400
	dc.w $0001,$03ef,$0000,$78ff,$0000,$0000,$0400
	dc.w $0001,$03f0,$0000,$78ff,$fffc,$0002,$0400
	dc.w $0001,$03f1,$0000,$78ff,$0000,$0000,$0400
	dc.w $0001,$03f2,$0000,$78ff,$0002,$0004,$0400

loc_04aebe:
	dc.w $0001,$03f3,$0000,$78ff,$0000,$0000,$0400
	dc.w $0001,$03f4,$0000,$78ff,$0004,$fffe,$0400
	dc.w $0001,$03f5,$0000,$78ff,$0000,$0000,$0400
	dc.w $8000,$0000
	dc.l loc_04ae78

loc_04aef0:
	dc.w $0001,$04be,$74ff,$0000,$0034,$0b03
	dc.w $0001,$04bf,$74ff,$0000,$0034,$0b03
	dc.w $0001,$04bc,$74ff,$0000,$0034,$0b00
	dc.w $0001,$04bd,$74ff,$0000,$0034,$0b00
	dc.w $0001,$04be,$74ff,$0000,$0034,$0b00
	dc.w $0001,$04bf,$74ff,$0000,$0034,$0b00
	dc.w $0001,$04bc,$74ff,$0000,$0034,$0b03
	dc.w $0001,$04bd,$74ff,$0000,$0034,$0b03
	dc.w $8000,$0000
	dc.l loc_04aef0

loc_04af58:
	dc.w $0001,$04bf,$74ff,$0000,$0034,$0b00
	dc.w $0001,$04bc,$74ff,$0000,$0034,$0b03
	dc.w $0001,$04bd,$74ff,$0000,$0034,$0b03
	dc.w $0001,$04be,$74ff,$0000,$0034,$0b03
	dc.w $0001,$04bf,$74ff,$0000,$0034,$0b03
	dc.w $0001,$04bc,$74ff,$0000,$0034,$0b00

loc_04afa0:
	dc.w $0001,$04c1,$74ff,$0000,$0034,$0b00
	dc.w $0001,$04c2,$74ff,$0000,$0034,$0b00
	dc.w $0001,$04c3,$74ff,$0000,$0034,$0b00
	dc.w $0001,$04c0,$74ff,$0000,$0034,$0b03
	dc.w $0001,$04c1,$74ff,$0000,$0034,$0b03
	dc.w $0001,$04c2,$74ff,$0000,$0034,$0b03
	dc.w $0001,$04c3,$74ff,$0000,$0034,$0b03
	dc.w $0001,$04c0,$74ff,$0000,$0034,$0b00
	dc.w $8001

loc_04b002:
	dc.w $800d
	dc.l loc_04afa0
	dc.w $0001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b00a:
	dc.w $0002,$0405,$0000,$7800
	dc.w $0002,$0406,$0000,$78ff,$fffc,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b022:
	dc.w $8047,$00b7,$0000
	dc.w $0010,$0407,$0000,$78ff,$fffc,$fff8,$0000
	dc.w $8047,$00b7,$ffff

loc_04b03c:
	dc.w $801d
	dc.w $801a,$0000,$0000
	dc.w $803b,$0000,$f30d
	dc.w $0002,$03a0,$0000,$88ff,$0000,$ffe0,$0000
	dc.w $804a,$fffc,$c000,$fff4,$a700
	dc.w $8002,$188d
	dc.w $0003,$03ad,$0000,$88ff,$fff0,$0000,$0000
	dc.w $0003,$03b0,$0000,$88ff,$fff0,$0010,$0000
	dc.w $0003,$03b2,$0000,$88ff,$0010,$0090,$0003
	dc.w $0003,$03ad,$0000,$88ff,$0010,$0090,$0003
	dc.w $0003,$03b0,$0000,$88ff,$0010,$0080,$0003
	dc.w $0003,$03b1,$0000,$88ff,$0008,$0078,$0003
	dc.w $803c,$0008
	dc.w $0004,$039c,$0000,$8800
	dc.w $0004,$0388,$0000,$8800
	dc.w $0004,$0396,$0000,$8800
	dc.w $0006,$0389,$0000,$8800
	dc.w $8011,$001d,$0005,$d800,$e0f0,$ff00
	dc.w $8011,$001d,$0005,$1800,$20f0,$ff00
	dc.w $803c,$0000
	dc.w $0004,$0386,$0003,$8000
	dc.w $0004,$0373,$0004,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b10c:
	dc.w $801b,$0020,$0000,$0006
	dc.w $0002,$00cc,$0000,$84ff,$fffc,$0000,$0000
	dc.w $0002,$00cd,$0000,$84ff,$fffc,$0000,$0000
	dc.w $0002,$00ce,$0000,$84ff,$fffc,$0000,$0000
	dc.w $0010,$00cc,$0000,$84ff,$fffc,$0000,$0000
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$017b,$0000,$84ff,$0038,$0014,$0000
	dc.w $0004,$017c,$0000,$84ff,$0024,$0040,$0000
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0179,$0000,$84ff,$0000,$0008,$0000
	dc.w $0005,$017a,$0000,$84ff,$fff0,$0000,$0000
	dc.w $0004,$0071,$0000,$84ff,$fff8,$fff8,$0000
	dc.w $0004,$0178,$0000,$84ff,$fff8,$fff8,$0000
	dc.w $0003,$006f,$0000,$84ff,$0008,$fff8,$0000
	dc.w $0003,$0142,$0000,$84ff,$0010,$fff0,$0000
	dc.w $0003,$017b,$0000,$84ff,$0000,$fff8,$0000

loc_04b1da:
	dc.w $0002,$017c,$0000,$84ff,$0008,$0018,$0000
	dc.w $0002,$0179,$0000,$84ff,$0000,$0008,$0000
	dc.w $0002,$017a,$0000,$84ff,$fff0,$0000,$0000
	dc.w $0002,$0071,$0000,$84ff,$fff8,$fff8,$0000
	dc.w $0002,$0178,$0000,$84ff,$fff8,$fff8,$0000
	dc.w $0002,$006f,$0000,$84ff,$0008,$fff8,$0000
	dc.w $0002,$0142,$0000,$84ff,$0010,$fff0,$0000
	dc.w $0002,$017b,$0000,$84ff,$0000,$fff8,$0000
	dc.w $8000,$0000
	dc.l loc_04b1da

loc_04b252:
	dc.w $0001,$017c,$0000,$84ff,$0008,$0018,$0000
	dc.w $0001,$0179,$0000,$84ff,$0000,$0008,$0000
	dc.w $0001,$017a,$0000,$84ff,$fff0,$0000,$0000
	dc.w $0001,$0071,$0000,$84ff,$fff8,$fff8,$0000
	dc.w $0001,$0178,$0000,$84ff,$fff8,$fff8,$0000

loc_04b298:
	dc.w $0001,$006f,$0000,$84ff,$0008,$fff8,$0000
	dc.w $0001,$0142,$0000,$84ff,$0010,$fff0,$0000
	dc.w $0001,$017b,$0000,$84ff,$0000,$fff8,$0000
	dc.w $8000,$0000
	dc.l loc_04b252

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b2ca:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$0071,$0000,$84ff,$fff8,$fff8,$0000
	dc.w $0002,$0178,$0000,$84ff,$fff8,$ffe8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b2f0:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0010,$012a,$0000,$84ff,$fff8,$fff8,$0000
	dc.w $0006,$0120,$0000,$7cff,$0000,$0008,$0000
	dc.w $0006,$012b,$0000,$7cff,$0000,$fff8,$0000
	dc.w $0006,$0121,$0000,$7cff,$fff8,$0008,$0000
	dc.w $0006,$011f,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b342:
	dc.w $801b,$0020,$0000,$0006
	dc.w $0002,$02a2,$0000,$8400
	dc.w $0002,$02a3,$0000,$8400
	dc.w $0002,$02a4,$0000,$8400
	dc.w $0010,$02a2,$0000,$8400
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$0308,$0000,$84ff,$0044,$0008,$0001
	dc.w $0004,$0309,$0000,$84ff,$0020,$0034,$0001
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$030b,$0000,$84ff,$fff4,$0000,$0001
	dc.w $0005,$030c,$0000,$84ff,$fff8,$fffc,$0001
	dc.w $0004,$030d,$0000,$84ff,$fff4,$fff8,$0001
	dc.w $0004,$0306,$0000,$84ff,$fff8,$ffec,$0001
	dc.w $0003,$0307,$0000,$84ff,$000c,$ffe8,$0001
	dc.w $0003,$0308,$0000,$84ff,$0018,$ffec,$0001
	dc.w $0003,$0309,$0000,$84ff,$000c,$0000,$0001

loc_04b3f8:
	dc.w $0002,$030a,$0000,$84ff,$0008,$000c,$0001
	dc.w $0002,$030b,$0000,$84ff,$fff4,$0000,$0001
	dc.w $0002,$030c,$0000,$84ff,$fff8,$fffc,$0001
	dc.w $0002,$030d,$0000,$84ff,$fff4,$fff8,$0001
	dc.w $0002,$0306,$0000,$84ff,$fff8,$ffec,$0001
	dc.w $0002,$0307,$0000,$84ff,$000c,$ffe8,$0001
	dc.w $0002,$0308,$0000,$84ff,$0018,$ffec,$0001
	dc.w $0002,$0309,$0000,$84ff,$000c,$0000,$0001
	dc.w $8000,$0000
	dc.l loc_04b3f8

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b470:;b4c6
	dc.w $0001,$030a,$0000,$84ff,$0008,$000c,$0001
	dc.w $0001,$030b,$0000,$84ff,$fff4,$0000,$0001
	dc.w $0001,$030c,$0000,$84ff,$fff8,$fffc,$0001
	dc.w $0001,$030d,$0000,$84ff,$fff4,$fff8,$0001
	dc.w $0001,$0306,$0000,$84ff,$fff8,$ffec,$0001

loc_04b4b6:
	dc.w $0001,$0307,$0000,$84ff,$000c,$ffe8,$0001
	dc.w $0001,$0308,$0000,$84ff,$0018,$ffec,$0001
	dc.w $0001,$0309,$0000,$84ff,$000c,$0000,$0001
	dc.w $8000,$0000
	dc.l loc_04b470

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b4e8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$030d,$0000,$84ff,$fff4,$fff8,$0001
	dc.w $0002,$0306,$0000,$84ff,$fffc,$ffd4,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b50e:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0010,$0229,$0000,$84ff,$fffa,$ffe6,$0000
	dc.w $0006,$0227,$0000,$7cff,$fff8,$0008,$0000
	dc.w $000a,$02d4,$0000,$7cff,$0000,$0008,$0000
	dc.w $0008,$022b,$0000,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b558:
	dc.w $801b,$0018,$0000,$0006
	dc.w $0002,$0441,$0000,$84ff,$fffc,$0000,$0000
	dc.w $0002,$0442,$0000,$84ff,$fff8,$0000,$0000
	dc.w $0002,$0443,$0000,$84ff,$fff4,$0000,$0000
	dc.w $0010,$0441,$0000,$84ff,$fff8,$0000,$0000
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$040e,$0000,$84ff,$0034,$0090,$0003
	dc.w $0004,$040d,$0000,$84ff,$0018,$009c,$0003
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$040c,$0000,$84ff,$fffc,$0078,$0003
	dc.w $0005,$040f,$0000,$84ff,$fff0,$ffe8,$0000
	dc.w $0004,$040e,$0000,$84ff,$fff8,$fff4,$0000
	dc.w $0004,$040d,$0000,$84ff,$0000,$fff8,$0000
	dc.w $0003,$040c,$0000,$84ff,$0004,$fff0,$0000
	dc.w $0003,$040f,$0000,$84ff,$0010,$0080,$0003
	dc.w $0003,$040e,$0000,$84ff,$0008,$0074,$0003

loc_04b626:
	dc.w $0002,$040d,$0000,$84ff,$0000,$0070,$0003
	dc.w $0002,$040c,$0000,$84ff,$fffc,$0078,$0003
	dc.w $0002,$040f,$0000,$84ff,$fff0,$ffe8,$0000
	dc.w $0002,$040e,$0000,$84ff,$fff8,$fff4,$0000
	dc.w $0002,$040d,$0000,$84ff,$0000,$fff8,$0000
	dc.w $0002,$040c,$0000,$84ff,$0004,$fff0,$0000
	dc.w $0002,$040f,$0000,$84ff,$0010,$0080,$0003
	dc.w $0002,$040e,$0000,$84ff,$0008,$0074,$0003
	dc.w $8000,$0000
	dc.l loc_04b626

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b69e:
	dc.w $0001,$040d,$0000,$84ff,$0000,$0070,$0003
	dc.w $0001,$040c,$0000,$84ff,$fffc,$0078,$0003
	dc.w $0001,$040f,$0000,$84ff,$fff0,$ffe8,$0000
	dc.w $0001,$040e,$0000,$84ff,$fff8,$fff4,$0000
	dc.w $0001,$040d,$0000,$84ff,$0000,$fff8,$0000

loc_04b6e4:
	dc.w $0001,$040c,$0000,$84ff,$0004,$fff0,$0000
	dc.w $0001,$040f,$0000,$84ff,$0010,$0080,$0003
	dc.w $0001,$040e,$0000,$84ff,$0008,$0074,$0003
	dc.w $8000,$0000
	dc.l loc_04b69e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b716:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$040e,$0000,$84ff,$fff8,$fff4,$0000
	dc.w $0002,$040d,$0000,$84ff,$0008,$fff0,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b73c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0010,$0457,$0000,$84ff,$fff8,$ffe0,$0000
	dc.w $0006,$045b,$0000,$7cff,$0000,$0010,$0000
	dc.w $000a,$0459,$0000,$7cff,$0000,$0000,$0000
	dc.w $0008,$0457,$0000,$7cff,$0000,$fff0,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b786:
	dc.w $801b,$0024,$fff8,$0006
	dc.w $0002,$05c5,$0000,$84ff,$0000,$0004,$0000
	dc.w $0002,$05c6,$0000,$84ff,$0000,$0004,$0000
	dc.w $0002,$05c7,$0000,$84ff,$0000,$0004,$0000
	dc.w $0010,$05c5,$0000,$84ff,$0000,$0004,$0000
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$0696,$0000,$84ff,$0040,$001c,$0001
	dc.w $0004,$0697,$0000,$84ff,$0018,$0050,$0001
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0698,$0000,$84ff,$fffc,$0014,$0001
	dc.w $0005,$0699,$0000,$84ff,$ffec,$0008,$0001
	dc.w $0004,$069a,$0000,$84ff,$fff4,$0004,$0001
	dc.w $0004,$069b,$0000,$84ff,$0000,$0004,$0001
	dc.w $0003,$0672,$0000,$84ff,$0004,$fffc,$0001
	dc.w $0003,$0673,$0000,$84ff,$0014,$fff8,$0001
	dc.w $0003,$0696,$0000,$84ff,$000c,$fffc,$0001

loc_04b854:
	dc.w $0002,$0697,$0000,$84ff,$0000,$001c,$0001
	dc.w $0002,$0698,$0000,$84ff,$fffc,$0014,$0001
	dc.w $0002,$0699,$0000,$84ff,$ffec,$0008,$0001
	dc.w $0002,$069a,$0000,$84ff,$fff4,$0004,$0001
	dc.w $0002,$069b,$0000,$84ff,$0000,$0004,$0001
	dc.w $0002,$0672,$0000,$84ff,$0004,$fffc,$0001
	dc.w $0002,$0673,$0000,$84ff,$0014,$fff8,$0001
	dc.w $0002,$0696,$0000,$84ff,$000c,$fffc,$0001
	dc.w $8000,$0000
	dc.l loc_04b854

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b8cc:
	dc.w $0001,$0697,$0000,$84ff,$0000,$001c,$0001
	dc.w $0001,$0698,$0000,$84ff,$fffc,$0014,$0001
	dc.w $0001,$0699,$0000,$84ff,$ffec,$0008,$0001
	dc.w $0001,$069a,$0000,$84ff,$fff4,$0004,$0001
	dc.w $0001,$069b,$0000,$84ff,$0000,$0004,$0001

loc_04b912:
	dc.w $0001,$0672,$0000,$84ff,$0004,$fffc,$0001
	dc.w $0001,$0673,$0000,$84ff,$0014,$fff8,$0001
	dc.w $0001,$0696,$0000,$84ff,$000c,$fffc,$0001
	dc.w $8000,$0000
	dc.l loc_04b8cc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b944:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$069a,$0000,$84ff,$fff4,$0004,$0001
	dc.w $0002,$069b,$0000,$84ff,$0004,$fff0,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b96a:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0010,$0639,$0000,$84ff,$fff0,$0000,$0000
	dc.w $0006,$0527,$0000,$7cff,$fff8,$0010,$0000
	dc.w $0006,$063a,$0000,$7cff,$0000,$0000,$0000
	dc.w $0006,$0529,$0000,$7cff,$0008,$0000,$0000
	dc.w $0006,$0639,$0000,$7cff,$0000,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04b9c2:
	dc.w $801b,$0028,$fff8,$0006
	dc.w $0002,$0730,$0000,$8400
	dc.w $0002,$0731,$0000,$84ff,$fff8,$0000,$0000
	dc.w $0002,$07ba,$0000,$8400
	dc.w $0010,$0730,$0000,$8400
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$085d,$0000,$84ff,$0038,$0090,$0003
	dc.w $0004,$085a,$0000,$84ff,$001a,$0092,$0003
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0857,$0000,$84ff,$0000,$0076,$0003
	dc.w $0005,$0861,$0000,$84ff,$ffee,$ffea,$0000
	dc.w $0004,$085d,$0000,$84ff,$fffc,$fff6,$0000
	dc.w $0004,$085a,$0000,$84ff,$fffc,$0004,$0000
	dc.w $0003,$0857,$0000,$84ff,$0000,$fff2,$0000
	dc.w $0003,$0861,$0000,$84ff,$0012,$007e,$0003
	dc.w $0003,$085d,$0000,$84ff,$0004,$0072,$0003

loc_04ba7e:
	dc.w $0002,$085a,$0000,$84ff,$0004,$0064,$0003
	dc.w $0002,$0857,$0000,$84ff,$0000,$0076,$0003
	dc.w $0002,$0861,$0000,$84ff,$ffee,$ffea,$0000
	dc.w $0002,$085d,$0000,$84ff,$fffc,$fff6,$0000
	dc.w $0002,$085a,$0000,$84ff,$fffc,$0004,$0000
	dc.w $0002,$0857,$0000,$84ff,$0000,$fff2,$0000
	dc.w $0002,$0861,$0000,$84ff,$0012,$007e,$0003
	dc.w $0002,$085d,$0000,$84ff,$0004,$0072,$0003
	dc.w $8000,$0000
	dc.l loc_04ba7e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04baf6:
	dc.w $0001,$085a,$0000,$84ff,$0004,$0064,$0003
	dc.w $0001,$0857,$0000,$84ff,$0000,$0076,$0003
	dc.w $0001,$0861,$0000,$84ff,$ffee,$ffea,$0000
	dc.w $0001,$085d,$0000,$84ff,$fffc,$fff6,$0000
	dc.w $0001,$085a,$0000,$84ff,$fffc,$0004,$0000

loc_04bb3c:
	dc.w $0001,$0857,$0000,$84ff,$0000,$fff2,$0000
	dc.w $0001,$0861,$0000,$84ff,$0012,$007e,$0003
	dc.w $0001,$085d,$0000,$84ff,$0004,$0072,$0003
	dc.w $8000,$0000
	dc.l loc_04baf6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04bb6e:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$085d,$0000,$84ff,$fffc,$fff6,$0000
	dc.w $0002,$085a,$0000,$84ff,$0000,$fff8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04bb94:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0010,$0811,$0000,$84ff,$fff8,$ffe8,$0000
	dc.w $0006,$0813,$0000,$7cff,$0000,$0008,$0000
	dc.w $0006,$0814,$0000,$7cff,$0000,$0008,$0000
	dc.w $0006,$0811,$0000,$7cff,$fff8,$fff0,$0000
	dc.w $0006,$0812,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04bbe6:
	dc.w $801b,$0018,$0000,$0006
	dc.w $0002,$09af,$0000,$8400
	dc.w $0002,$09b0,$0000,$8400
	dc.w $0002,$09b1,$0000,$8400
	dc.w $0010,$09af,$0000,$8400
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$09f8,$0000,$84ff,$003c,$0010,$0001
	dc.w $0004,$09f9,$0000,$84ff,$0018,$0044,$0001
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$09fa,$0000,$84ff,$fff8,$0000,$0001
	dc.w $0005,$09fb,$0000,$84ff,$fff8,$ffec,$0001
	dc.w $0004,$09fc,$0000,$84ff,$fff8,$fff0,$0001
	dc.w $0004,$09fd,$0000,$84ff,$fffc,$0000,$0001
	dc.w $0003,$09f6,$0000,$84ff,$0008,$0000,$0001
	dc.w $0003,$09f7,$0000,$84ff,$0008,$ffe4,$0001
	dc.w $0003,$09f8,$0000,$84ff,$0008,$fff0,$0001

loc_04bc9c:
	dc.w $0002,$09f9,$0000,$84ff,$0004,$0010,$0001
	dc.w $0002,$09fa,$0000,$84ff,$fff8,$0000,$0001
	dc.w $0002,$09fb,$0000,$84ff,$fff8,$ffec,$0001
	dc.w $0002,$09fc,$0000,$84ff,$fff8,$fff0,$0001
	dc.w $0002,$09fd,$0000,$84ff,$fffc,$0000,$0001
	dc.w $0002,$09f6,$0000,$84ff,$0008,$0000,$0001
	dc.w $0002,$09f7,$0000,$84ff,$0008,$ffe4,$0001
	dc.w $0002,$09f8,$0000,$84ff,$0008,$fff0,$0001
	dc.w $8000,$0000
	dc.l loc_04bc9c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04bd14:
	dc.w $0001,$09f9,$0000,$84ff,$0004,$0010,$0001
	dc.w $0001,$09fa,$0000,$84ff,$fff8,$0000,$0001
	dc.w $0001,$09fb,$0000,$84ff,$fff8,$ffec,$0001
	dc.w $0001,$09fc,$0000,$84ff,$fff8,$fff0,$0001
	dc.w $0001,$09fd,$0000,$84ff,$fffc,$0000,$0001

loc_04bd5a:
	dc.w $0001,$09f6,$0000,$84ff,$0008,$0000,$0001
	dc.w $0001,$09f7,$0000,$84ff,$0008,$ffe4,$0001
	dc.w $0001,$09f8,$0000,$84ff,$0008,$fff0,$0001
	dc.w $8000,$0000
	dc.l loc_04bd14


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04bd8c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$09fc,$0000,$84ff,$fff8,$fff0,$0001
	dc.w $0002,$09fd,$0000,$84ff,$0000,$ffec,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04bdb2:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0010,$09d7,$0000,$84ff,$fff8,$0004,$0000
	dc.w $0006,$09d8,$0000,$7cff,$0000,$0008,$0000
	dc.w $000a,$09d9,$0000,$7cff,$0000,$0008,$0000
	dc.w $0008,$09d7,$0000,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04bdfc:
	dc.w $801b,$0020,$0000,$0006
	dc.w $0002,$0b55,$0000,$8400
	dc.w $0002,$0b56,$0000,$8400
	dc.w $0002,$0b57,$0000,$8400
	dc.w $0010,$0b55,$0000,$8400
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$0bcb,$0000,$84ff,$0038,$0000,$0001
	dc.w $0004,$0bcc,$0000,$84ff,$0020,$0040,$0001
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0bcd,$0000,$84ff,$0000,$0010,$0001
	dc.w $0005,$0bce,$0000,$84ff,$ffe8,$fff8,$0001
	dc.w $0004,$0bcf,$0000,$84ff,$fff8,$fff8,$0001
	dc.w $0004,$0bd0,$0000,$84ff,$0000,$0000,$0001
	dc.w $0003,$0b95,$0000,$84ff,$0008,$fff0,$0001
	dc.w $0003,$0b96,$0000,$84ff,$0010,$ffe8,$0001
	dc.w $0003,$0bcb,$0000,$84ff,$0008,$fff8,$0001

loc_04beb2:
	dc.w $0002,$0bcc,$0000,$84ff,$0000,$0020,$0001
	dc.w $0002,$0bcd,$0000,$84ff,$0000,$0010,$0001
	dc.w $0002,$0bce,$0000,$84ff,$ffe8,$fff8,$0001
	dc.w $0002,$0bcf,$0000,$84ff,$fff8,$fff8,$0001
	dc.w $0002,$0bd0,$0000,$84ff,$0000,$0000,$0001
	dc.w $0002,$0b95,$0000,$84ff,$0008,$fff0,$0001
	dc.w $0002,$0b96,$0000,$84ff,$0010,$ffe8,$0001
	dc.w $0002,$0bcb,$0000,$84ff,$0008,$fff8,$0001
	dc.w $8000,$0000
	dc.l loc_04beb2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04bf2a:
	dc.w $0001,$0bcc,$0000,$84ff,$0000,$0020,$0001
	dc.w $0001,$0bcd,$0000,$84ff,$0000,$0010,$0001
	dc.w $0001,$0bce,$0000,$84ff,$ffe8,$fff8,$0001
	dc.w $0001,$0bcf,$0000,$84ff,$fff8,$fff8,$0001
	dc.w $0001,$0bd0,$0000,$84ff,$0000,$0000,$0001

loc_04bf70:
	dc.w $0001,$0b95,$0000,$84ff,$0008,$fff0,$0001
	dc.w $0001,$0b96,$0000,$84ff,$0010,$ffe8,$0001
	dc.w $0001,$0bcb,$0000,$84ff,$0008,$fff8,$0001
	dc.w $8000,$0000
	dc.l loc_04bf2a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04bfa2:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$0bcf,$0000,$84ff,$fff8,$fff8,$0001
	dc.w $0002,$0bd0,$0000,$84ff,$0000,$fff8,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04bfc8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0010,$0b8a,$0000,$84ff,$fff4,$0008,$0000
	dc.w $0006,$0b8a,$0000,$7cff,$fff8,$0008,$0000
	dc.w $000a,$0ac3,$0000,$7cff,$0000,$0000,$0000
	dc.w $0008,$0b8b,$0000,$7cff,$0000,$fff8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c012:
	dc.w $801b,$0020,$0000,$0006
	dc.w $0002,$0d6b,$0000,$8400
	dc.w $0002,$0d6c,$0000,$8400
	dc.w $0002,$0d6d,$0000,$8400
	dc.w $0010,$0d6b,$0000,$8400
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$0dbc,$0000,$84ff,$0038,$0020,$0001
	dc.w $0004,$0dbd,$0000,$84ff,$0018,$0054,$0001
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0dbe,$0000,$84ff,$fff8,$0004,$0001
	dc.w $0005,$0dbf,$0000,$84ff,$fff0,$0000,$0001
	dc.w $0004,$0dc0,$0000,$84ff,$fff8,$0000,$0001
	dc.w $0004,$0dc1,$0000,$84ff,$fff8,$fff8,$0001
	dc.w $0003,$0dba,$0000,$84ff,$0008,$fff0,$0001
	dc.w $0003,$0dbb,$0000,$84ff,$0010,$ffe0,$0001
	dc.w $0003,$0dbc,$0000,$84ff,$0008,$0000,$0001

loc_04c0c8:
	dc.w $0002,$0dbd,$0000,$84ff,$0008,$0028,$0001
	dc.w $0002,$0dbe,$0000,$84ff,$fff8,$0004,$0001
	dc.w $0002,$0dbf,$0000,$84ff,$fff0,$0000,$0001
	dc.w $0002,$0dc0,$0000,$84ff,$fff8,$0000,$0001
	dc.w $0002,$0dc1,$0000,$84ff,$fff8,$fff8,$0001
	dc.w $0002,$0dba,$0000,$84ff,$0008,$fff0,$0001
	dc.w $0002,$0dbb,$0000,$84ff,$0010,$ffe0,$0001
	dc.w $0002,$0dbc,$0000,$84ff,$0008,$0000,$0001
	dc.w $8000,$0000
	dc.l loc_04c0c8

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c140:
	dc.w $0001,$0dbd,$0000,$84ff,$0008,$0028,$0001
	dc.w $0001,$0dbe,$0000,$84ff,$fff8,$0004,$0001
	dc.w $0001,$0dbf,$0000,$84ff,$fff0,$0000,$0001
	dc.w $0001,$0dc0,$0000,$84ff,$fff8,$0000,$0001
	dc.w $0001,$0dc1,$0000,$84ff,$fff8,$fff8,$0001

loc_04c186:
	dc.w $0001,$0dba,$0000,$84ff,$0008,$fff0,$0001
	dc.w $0001,$0dbb,$0000,$84ff,$0010,$ffe0,$0001
	dc.w $0001,$0dbc,$0000,$84ff,$0008,$0000,$0001
	dc.w $8000,$0000
	dc.l loc_04c140

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c1b8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$0dc0,$0000,$84ff,$fff8,$0000,$0001
	dc.w $0002,$0dc1,$0000,$84ff,$0000,$fff8,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c1de:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0010,$0dde,$0000,$84ff,$0000,$fff8,$0000
	dc.w $0006,$0ddd,$0000,$7cff,$0000,$fff8,$0000
	dc.w $0006,$0de0,$0000,$7cff,$0000,$0008,$0000
	dc.w $0006,$0dc5,$0000,$7cff,$0000,$0020,$0000
	dc.w $0006,$0dde,$0000,$7cff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c236:
	dc.w $801b,$0024,$0000,$0006
	dc.w $0002,$0f34,$0000,$8400
	dc.w $0002,$0f35,$0000,$8400
	dc.w $0002,$0f36,$0000,$8400
	dc.w $0010,$0f34,$0000,$8400
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$0f2a,$0000,$84ff,$0038,$0098,$0003
	dc.w $0004,$0f2b,$0000,$84ff,$0018,$008e,$0003
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0e5e,$0000,$84ff,$0000,$006c,$0003
	dc.w $0005,$0f29,$0000,$84ff,$fff8,$0078,$0003
	dc.w $0004,$0f2a,$0000,$84ff,$fff8,$fff4,$0000
	dc.w $0004,$0f2b,$0000,$84ff,$fffc,$0004,$0000
	dc.w $0003,$0e5e,$0000,$84ff,$0000,$fffc,$0000
	dc.w $0003,$0f29,$0000,$84ff,$0008,$fff0,$0000
	dc.w $0003,$0f2a,$0000,$84ff,$0008,$0074,$0003

loc_04c2ec:
	dc.w $0002,$0f2b,$0000,$84ff,$0004,$0064,$0003
	dc.w $0002,$0e5e,$0000,$84ff,$0000,$006c,$0003
	dc.w $0002,$0f29,$0000,$84ff,$fff8,$0078,$0003
	dc.w $0002,$0f2a,$0000,$84ff,$fff8,$fff4,$0000
	dc.w $0002,$0f2b,$0000,$84ff,$fffc,$0004,$0000
	dc.w $0002,$0e5e,$0000,$84ff,$0000,$fffc,$0000
	dc.w $0002,$0f29,$0000,$84ff,$0008,$fff0,$0000
	dc.w $0002,$0f2a,$0000,$84ff,$0008,$0074,$0003
	dc.w $8000,$0000
	dc.l loc_04c2ec

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c364:
	dc.w $0001,$0f2b,$0000,$84ff,$0004,$0064,$0003
	dc.w $0001,$0e5e,$0000,$84ff,$0000,$006c,$0003
	dc.w $0001,$0f29,$0000,$84ff,$fff8,$0078,$0003
	dc.w $0001,$0f2a,$0000,$84ff,$fff8,$fff4,$0000
	dc.w $0001,$0f2b,$0000,$84ff,$fffc,$0004,$0000

loc_04c3aa:
	dc.w $0001,$0e5e,$0000,$84ff,$0000,$fffc,$0000
	dc.w $0001,$0f29,$0000,$84ff,$0008,$fff0,$0000
	dc.w $0001,$0f2a,$0000,$84ff,$0008,$0074,$0003
	dc.w $8000,$0000
	dc.l loc_04c364

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c3dc:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$0f2a,$0000,$84ff,$fff8,$fff4,$0000
	dc.w $0002,$0f2b,$0000,$84ff,$0000,$fff8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c402:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0010,$0e5f,$0000,$84ff,$fff8,$fff8,$0000
	dc.w $000c,$0e5e,$0000,$7c00
	dc.w $000c,$0e5f,$0000,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c438:
	dc.w $801b,$0020,$0000,$0006
	dc.w $0002,$1050,$0000,$84ff,$0004,$000a,$0000
	dc.w $0002,$1051,$0000,$84ff,$0004,$000a,$0000
	dc.w $0002,$1052,$0000,$84ff,$0003,$000d,$0000
	dc.w $0010,$1051,$0000,$84ff,$fffc,$000b,$0000
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$10b7,$0000,$84ff,$0039,$0022,$0000
	dc.w $0004,$10b8,$0000,$84ff,$0011,$003f,$0000
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$10b5,$0000,$84ff,$fff9,$fffd,$0000
	dc.w $0005,$10b6,$0000,$84ff,$ffeb,$fff9,$0000
	dc.w $0004,$10b3,$0000,$84ff,$fffb,$fff4,$0000
	dc.w $0004,$10b4,$0000,$84ff,$0007,$fff6,$0000
	dc.w $0003,$10b2,$0000,$84ff,$000a,$fffa,$0000
	dc.w $0003,$10b1,$0000,$84ff,$0010,$0000,$0000
	dc.w $0003,$10b7,$0000,$84ff,$0005,$0007,$0000

loc_04c506:
	dc.w $0002,$10b8,$0000,$84ff,$fff9,$001a,$0000
	dc.w $0002,$10b5,$0000,$84ff,$fffc,$ffff,$0000
	dc.w $0002,$10b6,$0000,$84ff,$ffeb,$fffb,$0000
	dc.w $0002,$10b3,$0000,$84ff,$fff9,$fff4,$0000
	dc.w $0002,$10b4,$0000,$84ff,$0009,$fff6,$0000
	dc.w $0002,$10b2,$0000,$84ff,$0007,$fff5,$0000
	dc.w $0002,$10b1,$0000,$84ff,$0014,$fffd,$0000
	dc.w $0002,$10b7,$0000,$84ff,$0001,$000a,$0000
	dc.w $8000,$0000
	dc.l loc_04c506

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c57e:
	dc.w $0001,$10b8,$0000,$84ff,$fff8,$0019,$0000
	dc.w $0001,$10b5,$0000,$84ff,$fff7,$fffd,$0000
	dc.w $0001,$10b6,$0000,$84ff,$ffed,$fff8,$0000
	dc.w $0001,$10b3,$0000,$84ff,$fffb,$fff5,$0000
	dc.w $0001,$10b4,$0000,$84ff,$0009,$fff6,$0000

loc_04c5c4:
	dc.w $0001,$10b2,$0000,$84ff,$000a,$fffa,$0000
	dc.w $0001,$10b1,$0000,$84ff,$0010,$fffe,$0000
	dc.w $0001,$10b7,$0000,$84ff,$fffe,$0008,$0000
	dc.w $8000,$0000
	dc.l loc_04c57e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c5f6:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$10b3,$0000,$84ff,$fffc,$fff6,$0000
	dc.w $0002,$10b4,$0000,$84ff,$0007,$ffe7,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c61c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $801e,$0000,$0000
	dc.w $8022
	dc.w $0010,$1067,$0000,$84ff,$fffc,$fff5,$0000
	dc.w $0006,$1068,$0000,$7cff,$0006,$0009,$0000
	dc.w $0006,$105d,$0000,$7cff,$000d,$0002,$0000
	dc.w $0006,$105e,$0000,$7cff,$fffb,$0012,$0000
	dc.w $0006,$1067,$0000,$7cff,$0002,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c674:
	dc.w $8037
	dc.l loc_0478f2
	dc.w $8038
	dc.l loc_04c6b4

	dc.w $8039,$0000
	dc.w $803e,$0803,$2f00
	dc.w $803f,$2008,$000a,$2808
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$0552,$0006
	dc.w $8047,$024b,$ffff,$0000

loc_04c6b4:
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $803b,$cc00,$f21b
	dc.w $0006,$03a4,$0000,$78ff,$0004,$0000,$0000
	dc.w $0004,$03a8,$0000,$78ff,$fff8,$0000,$0000
	dc.w $803b,$cc00,$ea13
	dc.w $802b,$1c5d
	dc.w $0008,$03a9,$0000,$7800
	dc.w $803b,$cc00,$e60f
	dc.w $0004,$03aa,$0000,$78ff,$000a,$fffe,$0000
	dc.w $8004,$1886
	dc.w $803b,$cc00,$e20b
	dc.w $0003,$03ab,$0000,$78ff,$0008,$0000,$0000
	dc.w $801d
	dc.w $803c,$0000
	dc.w $0004,$03ac,$0000,$8800
	dc.w $0004,$046f,$0000,$88ff,$0000,$0000,$0001
	dc.w $0008,$03d8,$0002,$88ff,$0004,$0000,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c746:;00
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$00cc,$0000,$80ff,$001c,$0002,$0000
	dc.w $0004,$013e,$0000,$80ff,$0017,$0029,$0000
	dc.w $0008,$017c,$0000,$80ff,$000b,$005c,$0000
	dc.w $0004,$0182,$0000,$80ff,$0001,$0066,$0000
	dc.w $0003,$0181,$0000,$80ff,$ffc0,$0040,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0143,$0000,$80ff,$0010,$0070,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c7ac:;01
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$02a3,$0000,$80ff,$001c,$0001,$0000
	dc.w $0004,$030e,$0000,$80ff,$0017,$0027,$0000
	dc.w $0008,$030a,$0000,$80ff,$0003,$0054,$0001
	dc.w $0004,$0310,$0000,$80ff,$fff9,$005e,$0000
	dc.w $0003,$0311,$0000,$80ff,$ffca,$0028,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$02fa,$0000,$80ff,$0010,$0070,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c812:;02
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$043e,$0000,$80ff,$001a,$0000,$0000
	dc.w $0004,$0408,$0000,$80ff,$000d,$0026,$0000
	dc.w $0008,$040d,$0000,$80ff,$fff9,$00bb,$0003
	dc.w $0004,$040a,$0000,$80ff,$fff1,$0057,$0000
	dc.w $0003,$040b,$0000,$80ff,$ffcf,$003c,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0414,$0000,$80ff,$0010,$0078,$0003
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c878:;03
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$05c5,$0000,$80ff,$0024,$0009,$0000
	dc.w $0004,$0671,$0000,$80ff,$001f,$0037,$0000
	dc.w $0008,$0697,$0000,$80ff,$fff8,$005f,$0001
	dc.w $0004,$06a1,$0000,$80ff,$ffe7,$006e,$0000
	dc.w $0003,$06a0,$0000,$80ff,$ffbf,$0040,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0676,$0000,$80ff,$0010,$0060,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c8de:;04
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0730,$0000,$80ff,$002c,$000e,$0000
	dc.w $0004,$0858,$0000,$80ff,$001c,$0035,$0001
	dc.w $0008,$085a,$0000,$80ff,$0002,$00aa,$0003
	dc.w $0004,$085c,$0000,$80ff,$fff4,$005f,$0001
	dc.w $0003,$085e,$0000,$80ff,$ffc7,$002c,$0001
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0871,$0000,$80ff,$0008,$fff8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c944:;05
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$09af,$0000,$80ff,$0018,$0000,$0000
	dc.w $0004,$09fe,$0000,$80ff,$0020,$003d,$0000
	dc.w $0008,$09f9,$0000,$80ff,$fffb,$0051,$0001
	dc.w $0004,$0a05,$0000,$80ff,$ffe7,$007e,$0000
	dc.w $0003,$0a04,$0000,$80ff,$ffc4,$0033,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0a06,$0000,$80ff,$0008,$0078,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04c9aa:;06
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0b52,$0000,$80ff,$0020,$0000,$0000
	dc.w $0004,$0b94,$0000,$80ff,$0028,$0035,$0000
	dc.w $0008,$0bcc,$0000,$80ff,$0002,$006c,$0001
	dc.w $0004,$0bd6,$0000,$80ff,$fffc,$005f,$0000
	dc.w $0003,$0bd5,$0000,$80ff,$ffcb,$003c,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0b99,$0000,$80ff,$0008,$0078,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ca10:;07
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0d6b,$0000,$80ff,$0020,$0008,$0000
	dc.w $0004,$0da9,$0000,$80ff,$001c,$004d,$0000
	dc.w $0008,$0dbd,$0000,$80ff,$0004,$006b,$0001
	dc.w $0004,$0db0,$0000,$80ff,$fff0,$005c,$0000
	dc.w $0003,$0daf,$0000,$80ff,$ffc8,$003c,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0dd6,$0000,$80ff,$0018,$0060,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ca76:;08
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0eda,$0000,$80ff,$0028,$0006,$0000
	dc.w $0004,$0e5b,$0000,$80ff,$0022,$0045,$0000
	dc.w $0008,$0f2b,$0000,$80ff,$0006,$00a8,$0003
	dc.w $0004,$0f28,$0000,$80ff,$fffa,$00d2,$0003
	dc.w $0003,$0e5c,$0000,$80ff,$ffc3,$0044,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$0e5a,$0000,$80ff,$0000,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04cadc:;09
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$1050,$0000,$80ff,$0021,$000c,$0000
	dc.w $0004,$10ba,$0000,$80ff,$0024,$003f,$0000
	dc.w $0008,$10b8,$0000,$80ff,$fffd,$005c,$0000
	dc.w $0004,$10c0,$0000,$80ff,$fff4,$0074,$0000
	dc.w $0003,$10bf,$0000,$80ff,$ffc7,$0048,$0000
	dc.w $801b,$ffb0,$fff0,$0000
	dc.w $0004,$1185,$0000,$80ff,$fff4,$0052,$0003
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04cb42:
	dc.w $8037
	dc.l loc_047952
	dc.w $8038
	dc.l loc_04cb82

	dc.w $8039,$0000
	dc.w $803e,$0807,$2f00
	dc.w $803f,$260a,$080f,$3008
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$0552,$0006
	dc.w $8047,$024b,$ffff,$0000

loc_04cb82:
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $803b,$cc00,$f21f
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $801a,$0005,$7fff
	dc.w $000a,$03a4,$0000,$78ff,$0004,$0000,$0000
	dc.w $8047,$00b6,$ffff

	dc.w $804b
	dc.l $00020000,$fffa2555,$0000a000

	dc.w $8007,$0000,$ffe0
	dc.w $8004,$1886
	dc.w $802b,$1c5d
	dc.w $0008,$03a5,$0000,$78ff,$0008,$ffe0,$0000
	dc.w $0004,$0480,$0000,$78ff,$fff8,$ffe0,$0001
	dc.w $0006,$03a6,$0000,$78ff,$0008,$ffe0,$0000
	dc.w $0006,$03a7,$0000,$78ff,$0008,$0000,$0000
	dc.w $8026,$0018
	dc.w $8034
	dc.w $803c,$0000
	dc.w $000a,$03a7,$0000,$78ff,$0008,$0000,$0000
	dc.w $8047,$00b7,$ffff
	dc.w $801d
	dc.w $801a,$0000,$0000
	dc.w $0006,$039c,$0050,$7c00
	dc.w $0006,$0396,$000b,$7c00
	dc.w $0008,$0389,$000d,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04cc48:;00 Thrown
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$00cc,$0000,$84ff,$0020,$0004,$0000
	dc.w $0008,$0143,$0000,$84ff,$0020,$fff0,$0001
	dc.w $0004,$0171,$0000,$84ff,$002b,$007d,$0002
	dc.w $0006,$0181,$0000,$84ff,$0012,$0000,$0000
	dc.w $0006,$0143,$0000,$84ff,$001c,$006c,$0002
	dc.w $801b,$0010,$0000,$0000
	dc.w $8022
	dc.w $000a,$00ce,$0000,$84ff,$001c,$005c,$0003
	dc.w $801b,$0018,$0000,$0000
	dc.w $000a,$0143,$0000,$84ff,$0010,$0070,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ccc6:;01 Thrown
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$02a3,$0000,$84ff,$001c,$0006,$0000
	dc.w $0008,$02fa,$0000,$84ff,$0022,$ffea,$0001
	dc.w $0004,$02fb,$0000,$84ff,$002c,$007a,$0002
	dc.w $0006,$0311,$0000,$84ff,$0020,$ffea,$0000
	dc.w $0006,$02fc,$0000,$84ff,$0017,$fff0,$0000
	dc.w $801b,$0010,$0000,$0000
	dc.w $8022
	dc.w $000a,$02a4,$0000,$84ff,$001c,$0054,$0003
	dc.w $801b,$0018,$0000,$0000
	dc.w $000a,$02fa,$0000,$84ff,$0010,$0070,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04cd44:;02 Thrown
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$043e,$0000,$84ff,$0016,$0000,$0000
	dc.w $0008,$0414,$0000,$84ff,$0022,$ffe9,$0000
	dc.w $0004,$0415,$0000,$84ff,$001b,$0068,$0003
	dc.w $0006,$040b,$0000,$84ff,$0024,$ffff,$0000
	dc.w $0006,$040f,$0000,$84ff,$001a,$ffe1,$0000
	dc.w $801b,$0010,$0000,$0000
	dc.w $8022
	dc.w $000a,$0443,$0000,$84ff,$0029,$006c,$0003
	dc.w $801b,$0018,$0000,$0000
	dc.w $000a,$0414,$0000,$84ff,$0018,$0070,$0003
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04cdc2:;03 Thrown
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$05c5,$0000,$84ff,$0022,$000d,$0000
	dc.w $0008,$0676,$0000,$84ff,$001a,$fffa,$0001
	dc.w $0004,$068e,$0000,$84ff,$002f,$0066,$0002
	dc.w $0006,$06a0,$0000,$84ff,$0019,$fffa,$0000
	dc.w $0006,$0676,$0000,$84ff,$001d,$0052,$0002
	dc.w $801b,$0010,$0000,$0000
	dc.w $8022
	dc.w $000a,$05c7,$0000,$84ff,$001c,$0044,$0003
	dc.w $801b,$0018,$0000,$0000
	dc.w $000a,$0677,$0000,$84ff,$0008,$0000,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ce40:;04 Thrown
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0730,$0000,$84ff,$0029,$000c,$0000
	dc.w $0008,$0870,$0000,$84ff,$0022,$0061,$0003
	dc.w $0004,$0810,$0000,$84ff,$0029,$007e,$0003
	dc.w $0006,$085e,$0000,$84ff,$001e,$fff4,$0001
	dc.w $0006,$0861,$0000,$84ff,$0012,$ffe1,$0000
	dc.w $801b,$0010,$0000,$0000
	dc.w $8022
	dc.w $000a,$0870,$0000,$84ff,$0009,$ffec,$0000
	dc.w $801b,$0018,$0000,$0000
	dc.w $000a,$0871,$0000,$84ff,$0008,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04cebe:;05 Thrown
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$09af,$0000,$84ff,$001a,$0000,$0000
	dc.w $0008,$0a08,$0000,$84ff,$0030,$0055,$0002
	dc.w $0004,$0a09,$0000,$84ff,$002d,$007b,$0002
	dc.w $0006,$0a04,$0000,$84ff,$0019,$fff6,$0000
	dc.w $0006,$0a06,$0000,$84ff,$0017,$006b,$0002
	dc.w $801b,$0010,$0000,$0000
	dc.w $8022
	dc.w $000a,$09b1,$0000,$84ff,$0020,$0069,$0003
	dc.w $801b,$0018,$0000,$0000
	dc.w $000a,$0a08,$0000,$84ff,$0008,$0000,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04cf3c:;06 Thrown
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0b52,$0000,$84ff,$0020,$0000,$0000
	dc.w $0008,$0b99,$0000,$84ff,$0028,$ffe5,$0001
	dc.w $0004,$0bc4,$0000,$84ff,$0035,$006b,$0002
	dc.w $0006,$0bd5,$0000,$84ff,$001f,$fffc,$0000
	dc.w $0006,$0bce,$0000,$84ff,$000b,$fff3,$0001
	dc.w $801b,$0010,$0000,$0000
	dc.w $8022
	dc.w $000a,$0b99,$0000,$84ff,$0008,$006f,$0002
	dc.w $801b,$0018,$0000,$0000
	dc.w $000a,$0bd4,$0000,$84ff,$0008,$fff8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04cfba:;07 Thrown
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0d68,$0000,$84ff,$0020,$0004,$0000
	dc.w $0008,$0dd6,$0000,$84ff,$0011,$fffe,$0001
	dc.w $0004,$0dd7,$0000,$84ff,$002d,$0069,$0002
	dc.w $0006,$0daf,$0000,$84ff,$0023,$fffc,$0000
	dc.w $0006,$0dbb,$0000,$84ff,$0017,$007c,$0002
	dc.w $801b,$0010,$0000,$0000
	dc.w $8022
	dc.w $000a,$0d6d,$0000,$84ff,$0020,$0063,$0003
	dc.w $801b,$0018,$0000,$0000
	dc.w $000a,$0dd6,$0000,$84ff,$0020,$0060,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d038:;08 Thrown
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$0eda,$0000,$84ff,$0026,$0000,$0000
	dc.w $0008,$0e5a,$0000,$84ff,$0029,$fff6,$0000
	dc.w $0004,$0f28,$0000,$84ff,$002e,$0077,$0003
	dc.w $0006,$0f27,$0000,$84ff,$0015,$007f,$0003
	dc.w $0006,$0f29,$0000,$84ff,$001d,$006c,$0003
	dc.w $801b,$0010,$0000,$0000
	dc.w $8022
	dc.w $000a,$0e5d,$0000,$84ff,$000b,$fff8,$0001
	dc.w $801b,$0018,$0000,$0000
	dc.w $000a,$0e5d,$0000,$84ff,$0018,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d0b6:;09 Thrown
	dc.w $801b,$0000,$0000,$0000
	dc.w $000a,$1050,$0000,$84ff,$0027,$000e,$0000
	dc.w $0008,$1185,$0000,$84ff,$0025,$000e,$0000
	dc.w $0004,$10b4,$0000,$84ff,$0026,$0077,$0003
	dc.w $0006,$10bf,$0000,$84ff,$0019,$0008,$0000
	dc.w $0006,$1185,$0000,$84ff,$0018,$004e,$0003
	dc.w $801b,$0010,$0000,$0000
	dc.w $8022
	dc.w $000a,$1051,$0000,$84ff,$0010,$0050,$0003
	dc.w $801b,$0018,$0000,$0000
	dc.w $000a,$1185,$0000,$84ff,$000c,$0052,$0003
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d134:
	dc.w $8037
	dc.l loc_047a0a
	dc.w $8038
	dc.l loc_04d174

	dc.w $8039,$0000
	dc.w $803e,$0807,$2f00
	dc.w $803f,$260a,$080f,$3008
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$0552,$0006
	dc.w $8047,$024b,$ffff,$0000

loc_04d174:
	dc.w $8002,$18e7
	dc.w $802c,$8047,$00b6,$0000
	dc.w $801a,$0005,$0031
	dc.w $803b,$cc00,$f224
	dc.w $0002,$037b,$0000,$7800
	dc.w $000c,$03ae,$0000,$7800
	dc.w $8047,$00b6,$ffff
	dc.w $802b,$1c5f
	dc.w $803b,$cc00,$002c
	dc.w $0006,$03b2,$0000,$78ff,$ffd0,$0000,$0000
	dc.w $803b,$cc00,$f41c
	dc.w $0008,$03b3,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8004,$1886
	dc.w $803b,$cc00,$d80c
	dc.w $0004,$03ad,$0000,$7800
	dc.w $803b,$cc00,$d00c
	dc.w $0003,$03b0,$0000,$7800
	dc.w $8026,$0018
	dc.w $8034
	dc.w $000c,$03b1,$0000,$7800
	dc.w $801d,$803c,$0004
	dc.w $0006,$03c5,$0064,$7800
	dc.w $0003,$03a0,$0065,$78ff,$0000,$ffd0,$0000
	dc.w $0003,$03a7,$0066,$7800
	dc.w $0006,$0396,$0067,$78ff,$0000,$ffe0,$0000
	dc.w $0006,$03c8,$0005,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d238:;thrown 00
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$00cc,$0000,$84ff,$ffc0,$0008,$0000
	dc.w $000c,$00ce,$0000,$84ff,$ffbc,$000c,$0000
	dc.w $0006,$00cc,$0000,$84ff,$ffa8,$000c,$0000
	dc.w $0008,$017d,$0000,$84ff,$ffd8,$0030,$0000
	dc.w $0004,$017f,$0000,$84ff,$002c,$0060,$0000
	dc.w $0003,$0180,$0000,$84ff,$0050,$0022,$0000
	dc.w $801b,$ffd0,$0000,$0000
	dc.w $801e,$ffe8,$0000
	dc.w $8022
	dc.w $000c,$00ce,$0000,$84ff,$0028,$0060,$0003
	dc.w $801b,$ffc0,$0000,$0000
	dc.w $000a,$0143,$0000,$84ff,$0018,$0070,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d2ca:;01
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$02a2,$0000,$84ff,$ffc0,$0008,$0000
	dc.w $000c,$02a4,$0000,$84ff,$ffbc,$0010,$0000
	dc.w $0006,$02a2,$0000,$84ff,$ffa8,$000c,$0000
	dc.w $0008,$0315,$0000,$84ff,$ffd4,$0038,$0000
	dc.w $0004,$0313,$0000,$84ff,$0030,$006c,$0000
	dc.w $0003,$0312,$0000,$84ff,$0050,$001c,$0000
	dc.w $801b,$ffd0,$0000,$0000
	dc.w $801e,$ffe8,$0000
	dc.w $8022
	dc.w $000c,$02a4,$0000,$84ff,$002c,$005c,$0003
	dc.w $801b,$ffc0,$0000,$0000
	dc.w $000a,$02fa,$0000,$84ff,$0018,$0068,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d35c:;02
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$0441,$0000,$84ff,$ffbc,$0004,$0000
	dc.w $000c,$0443,$0000,$84ff,$ffae,$0000,$0000
	dc.w $0006,$0442,$0000,$84ff,$ff96,$0000,$0000
	dc.w $0008,$040a,$0000,$84ff,$ffd4,$00c6,$0003
	dc.w $0004,$0409,$0000,$84ff,$0020,$00c2,$0003
	dc.w $0003,$0408,$0000,$84ff,$005c,$009c,$0003
	dc.w $801b,$ffd0,$0000,$0000
	dc.w $801e,$ffe8,$0000
	dc.w $8022
	dc.w $000c,$0443,$0000,$84ff,$0038,$0074,$0003
	dc.w $801b,$ffc0,$0000,$0000
	dc.w $000a,$0414,$0000,$84ff,$0020,$0070,$0003
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d3ee:;03
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$05c5,$0000,$84ff,$ffc0,$0010,$0000
	dc.w $000c,$05c6,$0000,$84ff,$ffc8,$0014,$0000
	dc.w $0006,$05c5,$0000,$84ff,$ffac,$0010,$0000
	dc.w $0008,$069c,$0000,$84ff,$ffdc,$0040,$0000
	dc.w $0004,$069e,$0000,$84ff,$0032,$0064,$0000
	dc.w $0003,$069f,$0000,$84ff,$0050,$0020,$0000
	dc.w $801b,$ffd0,$0000,$0000
	dc.w $801e,$ffe8,$0000
	dc.w $8022
	dc.w $000c,$05c7,$0000,$84ff,$002c,$0054,$0003
	dc.w $801b,$ffc0,$0000,$0000
	dc.w $000a,$0676,$0000,$84ff,$0018,$0058,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d480:;04
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$0731,$0000,$84ff,$ffbc,$0010,$0000
	dc.w $000c,$07ba,$0000,$84ff,$ffc4,$0014,$0000
	dc.w $0006,$0731,$0000,$84ff,$ffa6,$0012,$0000
	dc.w $0008,$085e,$0000,$84ff,$ffd6,$00b8,$0002
	dc.w $0004,$0858,$0000,$84ff,$0030,$00c6,$0002
	dc.w $0003,$0860,$0000,$84ff,$005c,$0014,$0001
	dc.w $801b,$ffd0,$0000,$0000
	dc.w $801e,$ffe8,$0000
	dc.w $8022
	dc.w $000c,$07ba,$0000,$84ff,$0024,$005c,$0003
	dc.w $801b,$ffc0,$0000,$0000
	dc.w $000a,$0870,$0000,$84ff,$0018,$fff8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d512:;05
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$09af,$0000,$84ff,$ffb8,$0004,$0000
	dc.w $000c,$09b1,$0000,$84ff,$ffb4,$0004,$0000
	dc.w $0006,$09b0,$0000,$84ff,$ff9c,$0008,$0000
	dc.w $0008,$0a00,$0000,$84ff,$ffdc,$003a,$0000
	dc.w $0004,$0a02,$0000,$84ff,$0032,$0058,$0000
	dc.w $0003,$0a03,$0000,$84ff,$0040,$0008,$0000
	dc.w $801b,$ffd0,$0000,$0000
	dc.w $801e,$ffe8,$0000
	dc.w $8022
	dc.w $000c,$09b1,$0000,$84ff,$0034,$0070,$0003
	dc.w $801b,$ffc0,$0000,$0000
	dc.w $000a,$0a06,$0000,$84ff,$0010,$0078,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d5a4:;06
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$0b55,$0000,$84ff,$ffc0,$0008,$0000
	dc.w $000c,$0b57,$0000,$84ff,$ffbc,$0008,$0000
	dc.w $0006,$0b56,$0000,$84ff,$ffa0,$0004,$0000
	dc.w $0008,$0bd1,$0000,$84ff,$ffd6,$0030,$0000
	dc.w $0004,$0bd3,$0000,$84ff,$0024,$0062,$0000
	dc.w $0003,$0bd4,$0000,$84ff,$004a,$0020,$0000
	dc.w $801b,$ffd0,$0000,$0000
	dc.w $801e,$ffe8,$0000
	dc.w $8022
	dc.w $000c,$0b57,$0000,$84ff,$0030,$006a,$0003
	dc.w $801b,$ffc0,$0000,$0000
	dc.w $000a,$0b99,$0000,$84ff,$0018,$0078,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d636:;07
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$0d6b,$0000,$84ff,$ffc0,$0008,$0000
	dc.w $000c,$0d6d,$0000,$84ff,$ffc4,$000c,$0000
	dc.w $0006,$0d6c,$0000,$84ff,$ffa8,$0008,$0000
	dc.w $0008,$0dab,$0000,$84ff,$ffde,$0042,$0000
	dc.w $0004,$0dad,$0000,$84ff,$003a,$005a,$0000
	dc.w $0003,$0dae,$0000,$84ff,$0054,$000e,$0000
	dc.w $801b,$ffd0,$0000,$0000
	dc.w $801e,$ffe8,$0000
	dc.w $8022
	dc.w $000c,$0d6d,$0000,$84ff,$0024,$006c,$0003
	dc.w $801b,$ffc0,$0000,$0000
	dc.w $000a,$0dd6,$0000,$84ff,$0028,$0058,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d6c8:;08
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$0f34,$0000,$84ff,$ffc0,$0000,$0000
	dc.w $000c,$0f36,$0000,$84ff,$ffc6,$0006,$0000
	dc.w $0006,$0f35,$0000,$84ff,$ffa6,$0004,$0000
	dc.w $0008,$0e5c,$0000,$84ff,$ffd4,$00a0,$0003
	dc.w $0004,$0f28,$0000,$84ff,$001c,$0050,$0000
	dc.w $0003,$0e5b,$0000,$84ff,$0040,$007e,$0003
	dc.w $801b,$ffd0,$0000,$0000
	dc.w $801e,$ffe8,$0000
	dc.w $8022
	dc.w $000c,$0f36,$0000,$84ff,$0024,$006c,$0003
	dc.w $801b,$ffc0,$0000,$0000
	dc.w $000a,$0e5d,$0000,$84ff,$0018,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d75a:;09
	dc.w $801b,$0000,$0000,$0000
	dc.w $0002,$1050,$0000,$84ff,$ffc7,$0012,$0000
	dc.w $000c,$1051,$0000,$84ff,$ffc8,$0018,$0000
	dc.w $0006,$1050,$0000,$84ff,$ffaf,$0017,$0000
	dc.w $0008,$10bb,$0000,$84ff,$ffe0,$0037,$0000
	dc.w $0004,$10bd,$0000,$84ff,$002c,$0047,$0000
	dc.w $0003,$10be,$0000,$84ff,$0044,$0014,$0000
	dc.w $801b,$ffd0,$0000,$0000
	dc.w $801e,$ffe8,$0000
	dc.w $8022
	dc.w $000c,$1051,$0000,$84ff,$001b,$0053,$0003
	dc.w $801b,$ffc0,$0000,$0000
	dc.w $000a,$1185,$0000,$84ff,$0015,$0053,$0003
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d7ec:
	dc.w $8037
	dc.l loc_047a9a
	dc.w $8038
	dc.l loc_04d836

	dc.w $8039,$0000
	dc.w $803e,$0803,$0a00
	dc.w $8048,$025c,$00cd
	dc.w $803f,$0e00,$0005,$1400
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$0552,$0006
	dc.w $8047,$024b,$ffff

	dc.w $8036
	dc.l loc_04823c

loc_04d836:
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $801a,$00c5,$7fff
	dc.w $802b,$1c5d
	dc.w $0004,$037b,$0000,$78ff,$0004,$0000,$0000
	dc.w $0004,$037c,$0000,$7800
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d85e:
	dc.w $0002,$037c,$0000,$7800
	dc.w $8034
	dc.w $803f,$0302,$0101,$0300
	dc.w $0006,$037d,$0000,$7800
	dc.w $0006,$03a8,$0000,$7800
	dc.w $000a,$037c,$0000,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d88a:
	dc.w $801a,$0000,$0000
	dc.w $801d
	dc.w $8004,$188d
	dc.w $0004,$037d,$0000,$8800
	dc.w $0004,$044c,$0000,$88ff,$0008,$0000,$0000
	dc.w $0006,$03e0,$0000,$88ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d8bc:
	dc.w $801b,$0038,$ffd0,$0000
	dc.w $0004,$00cc,$0000,$84ff,$fff8,$ffd0,$0000
	dc.w $0004,$00c9,$0000,$84ff,$ffeb,$ffea,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d8e2:
	dc.w $0002,$00c9,$0000,$84ff,$ffeb,$ffea,$0000
	dc.w $801f,$ffa0,$ffc0,$fff8,$0010
	dc.w $8020
	dc.w $0006,$00ce,$0000,$84ff,$ffe0,$0006,$0000
	dc.w $0006,$00cc,$0000,$84ff,$ffec,$fffc,$0000
	dc.w $000a,$00c9,$0000,$84ff,$ffeb,$ffea,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d928:
	dc.w $801b,$0038,$ffd0,$0000
	dc.w $0004,$02a2,$0000,$84ff,$fff8,$ffd0,$0000
	dc.w $0004,$029f,$0000,$84ff,$ffe8,$ffeb,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d94e:
	dc.w $0002,$029f,$0000,$84ff,$ffe8,$ffeb,$0000
	dc.w $801f,$ffa0,$ffc0,$fff8,$0010
	dc.w $8020
	dc.w $0006,$02a4,$0000,$84ff,$ffe6,$000a,$0000
	dc.w $0006,$02a2,$0000,$84ff,$ffec,$fffc,$0000
	dc.w $000a,$029f,$0000,$84ff,$ffe8,$ffeb,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d994:
	dc.w $801b,$0038,$ffd0,$0000
	dc.w $0004,$0441,$0000,$84ff,$fff8,$ffd0,$0000
	dc.w $0004,$043e,$0000,$84ff,$ffe2,$ffde,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04d9ba:
	dc.w $0002,$043e,$0000,$84ff,$ffe2,$ffde,$0000
	dc.w $801f,$ffa0,$ffc0,$fff8,$0010
	dc.w $8020
	dc.w $0006,$0443,$0000,$84ff,$ffde,$ffee,$0000
	dc.w $0006,$0441,$0000,$84ff,$ffec,$ffec,$0000
	dc.w $000a,$043e,$0000,$84ff,$ffe2,$ffde,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04da00:
	dc.w $801b,$0038,$ffd0,$0000
	dc.w $0004,$05c5,$0000,$84ff,$fff8,$ffe0,$0000
	dc.w $0004,$05c2,$0000,$84ff,$ffe8,$ffea,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04da26:
	dc.w $0002,$05c2,$0000,$84ff,$ffe8,$ffea,$0000
	dc.w $801f,$ffa0,$ffc0,$fff8,$0010
	dc.w $8020
	dc.w $0006,$05c6,$0000,$84ff,$ffe8,$000c,$0000
	dc.w $0006,$05c5,$0000,$84ff,$ffec,$0002,$0000
	dc.w $000a,$05c2,$0000,$84ff,$ffe8,$ffea,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04da6c:
	dc.w $801b,$0038,$ffd0,$0000
	dc.w $0004,$0730,$0000,$84ff,$0000,$ffd8,$0000
	dc.w $0004,$07b5,$0000,$84ff,$fff7,$fff2,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04da92:
	dc.w $0002,$07b5,$0000,$84ff,$fff7,$fff2,$0000
	dc.w $801f,$ffa0,$ffc0,$fff8,$0010
	dc.w $8020
	dc.w $0006,$07ba,$0000,$84ff,$ffec,$0008,$0000
	dc.w $0006,$0730,$0000,$84ff,$fff8,$0000,$0000
	dc.w $000a,$07b5,$0000,$84ff,$fff7,$fff2,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04dad8:
	dc.w $801b,$0038,$ffd0,$0000
	dc.w $0004,$09af,$0000,$84ff,$fff4,$ffd0,$0000
	dc.w $0004,$09ac,$0000,$84ff,$ffe4,$ffe4,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04dafe:
	dc.w $0002,$09ac,$0000,$84ff,$ffe4,$ffe4,$0000
	dc.w $801f,$ffa0,$ffc0,$fff8,$0010
	dc.w $8020
	dc.w $0006,$09b1,$0000,$84ff,$ffdc,$fff4,$0000
	dc.w $0006,$09af,$0000,$84ff,$ffe4,$fff0,$0000
	dc.w $000a,$09ac,$0000,$84ff,$ffe4,$ffe4,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04db44:
	dc.w $801b,$0038,$ffd0,$0000
	dc.w $0004,$0b55,$0000,$84ff,$fff8,$ffd4,$0000
	dc.w $0004,$0b52,$0000,$84ff,$ffe2,$ffee,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04db6a:
	dc.w $0002,$0b52,$0000,$84ff,$ffe2,$ffee,$0000
	dc.w $801f,$ffa0,$ffc0,$fff8,$0010
	dc.w $8020
	dc.w $0006,$0b88,$0000,$84ff,$ffea,$fff0,$0000
	dc.w $0006,$0b55,$0000,$84ff,$ffe6,$fff2,$0000
	dc.w $000a,$0b52,$0000,$84ff,$ffe2,$ffee,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04dbb0:
	dc.w $801b,$0038,$ffd0,$0000
	dc.w $0004,$0d6b,$0000,$84ff,$fff8,$ffd4,$0000
	dc.w $0004,$0d68,$0000,$84ff,$ffef,$fff2,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04dbd6:
	dc.w $0002,$0d68,$0000,$84ff,$ffef,$fff2,$0000
	dc.w $801f,$ffa0,$ffc0,$fff8,$0010
	dc.w $8020
	dc.w $0006,$0d6d,$0000,$84ff,$ffe8,$fffa,$0000
	dc.w $0006,$0d6b,$0000,$84ff,$fff0,$fff8,$0000
	dc.w $000a,$0d68,$0000,$84ff,$ffef,$fff2,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04dc1c:
	dc.w $801b,$0038,$ffd0,$0000
	dc.w $0004,$0f34,$0000,$84ff,$0000,$ffd0,$0000
	dc.w $0004,$0f37,$0000,$84ff,$ffe8,$ffe4,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04dc42:
	dc.w $0002,$0f37,$0000,$84ff,$ffe8,$ffe4,$0000
	dc.w $801f,$ffa0,$ffc0,$fff8,$0010
	dc.w $8020
	dc.w $0006,$0f35,$0000,$84ff,$fff4,$fff6,$0000
	dc.w $0006,$0f34,$0000,$84ff,$fff0,$fff0,$0000
	dc.w $000a,$0f37,$0000,$84ff,$ffe8,$ffe4,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04dc88:
	dc.w $801b,$0038,$ffd0,$0000
	dc.w $0004,$1050,$0000,$84ff,$fffe,$ffdc,$0000
	dc.w $0004,$104d,$0000,$84ff,$fff2,$fff6,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04dcae:
	dc.w $0002,$104d,$0000,$84ff,$fff2,$fff6,$0000
	dc.w $801f,$ffa0,$ffc0,$fff8,$0010
	dc.w $8020
	dc.w $0006,$1052,$0000,$84ff,$ffe6,$0016,$0000
	dc.w $0006,$1050,$0000,$84ff,$fff3,$0007,$0000
	dc.w $000a,$104d,$0000,$84ff,$fff1,$fff5,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04dcf4:
	dc.w $8037
	dc.l loc_047aec
	dc.w $8038
	dc.l loc_04dd3e

	dc.w $8039,$0000
	dc.w $803e,$0807,$2400
	dc.w $8048,$025c,$18c2
	dc.w $803f,$1800,$0008,$2000
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$0552,$0006
	dc.w $8047,$024b,$ffff

	dc.w $8036
	dc.l loc_04823c

loc_04dd3e:
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $801a,$00c5,$7fff
	dc.w $0004,$037b,$0000,$78ff,$0008,$0000,$0000
	dc.w $0008,$03ae,$0000,$78ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04dd68:
	dc.w $802b,$1c5e
	dc.w $0004,$03ae,$0000,$78ff,$0008,$0000,$0000
	dc.w $8034
	dc.w $803f,$0806,$0203,$0800
	dc.w $000c,$037f,$0000,$78ff,$0006,$0000,$0000
	dc.w $000c,$037e,$0000,$78ff,$0008,$0000,$0000
	dc.w $0008,$037b,$0000,$78ff,$0008,$0000,$0000
	dc.w $0028,$03ae,$0000,$78ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ddbe:
	dc.w $801a,$0000,$0000
	dc.w $801d
	dc.w $8004,$188d
	dc.w $0006,$0382,$0000,$88ff,$0008,$0000,$0000
	dc.w $0004,$046e,$0000,$88ff,$0008,$0000,$0000
	dc.w $000c,$0471,$0000,$88ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ddf6:
	dc.w $801b,$0030,$ffe0,$0000
	dc.w $0004,$00cc,$0000,$84ff,$ffec,$ffe8,$0000
	dc.w $0008,$00c9,$0000,$84ff,$ffe0,$fff0,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04de1c:
	dc.w $0004,$00c9,$0000,$84ff,$ffe0,$fff0,$0000
	dc.w $801f,$ffc0,$ffd8,$fff8,$0010
	dc.w $8020
	dc.w $8031,$0010,$ffc8
	dc.w $000c,$00cb,$0000,$84ff,$ffd4,$0006,$0000
	dc.w $000c,$00ca,$0000,$84ff,$ffde,$000e,$0000
	dc.w $0008,$00cc,$0000,$84ff,$ffe8,$fffc,$0000
	dc.w $0028,$00c9,$0000,$84ff,$ffe0,$fff0,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04de76:
	dc.w $801b,$0030,$ffe0,$0000
	dc.w $0004,$02a2,$0000,$84ff,$fff0,$ffe8,$0000
	dc.w $0008,$029f,$0000,$84ff,$ffe0,$ffec,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04de9c:
	dc.w $0004,$029f,$0000,$84ff,$ffe0,$ffec,$0000
	dc.w $801f,$ffc0,$ffd8,$fff8,$0010
	dc.w $8020
	dc.w $8031,$0010,$ffc8
	dc.w $000c,$02a1,$0000,$84ff,$ffc0,$0000,$0000
	dc.w $000c,$02a0,$0000,$84ff,$ffd6,$000e,$0000
	dc.w $0008,$02a2,$0000,$84ff,$ffec,$fff8,$0000
	dc.w $0028,$029f,$0000,$84ff,$ffe0,$ffec,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04def6:
	dc.w $801b,$0030,$ffe0,$0000
	dc.w $0004,$0441,$0000,$84ff,$ffe8,$ffe0,$0000
	dc.w $0008,$043e,$0000,$84ff,$ffda,$ffe0,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04df1c:
	dc.w $0004,$043e,$0000,$84ff,$ffda,$ffe0,$0000
	dc.w $801f,$ffc0,$ffd8,$fff8,$0010
	dc.w $8020
	dc.w $8031,$0010,$ffc8
	dc.w $000c,$0440,$0000,$84ff,$ffba,$fff6,$0000
	dc.w $000c,$043f,$0000,$84ff,$ffce,$fffa,$0000
	dc.w $0008,$0441,$0000,$84ff,$ffe4,$fff0,$0000
	dc.w $0028,$043e,$0000,$84ff,$ffda,$ffe0,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04df76:
	dc.w $801b,$0030,$ffe0,$0000
	dc.w $0004,$05c5,$0000,$84ff,$fff8,$fff0,$0000
	dc.w $0008,$05c2,$0000,$84ff,$ffe2,$ffec,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04df9c:
	dc.w $0004,$05c2,$0000,$84ff,$ffe2,$ffec,$0000
	dc.w $801f,$ffc0,$ffd8,$fff8,$0010
	dc.w $8020
	dc.w $8031,$0010,$ffc8
	dc.w $000c,$05c4,$0000,$84ff,$ffda,$fffc,$0000
	dc.w $000c,$05c3,$0000,$84ff,$ffe2,$0007,$0000
	dc.w $0008,$05c5,$0000,$84ff,$fff0,$0000,$0000
	dc.w $0028,$05c2,$0000,$84ff,$ffe2,$ffec,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04dff6:
	dc.w $801b,$0030,$ffe0,$0000
	dc.w $0004,$0730,$0000,$84ff,$fff8,$fff0,$0000
	dc.w $0008,$07b5,$0000,$84ff,$ffe8,$fff4,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e01c:
	dc.w $0004,$07b5,$0000,$84ff,$ffe8,$fff4,$0000
	dc.w $801f,$ffc0,$ffd8,$fff8,$0010
	dc.w $8020
	dc.w $8031,$0010,$ffc8
	dc.w $000c,$07b7,$0000,$84ff,$ffca,$000a,$0000
	dc.w $000c,$07b6,$0000,$84ff,$ffde,$000e,$0000
	dc.w $0008,$0730,$0000,$84ff,$fff0,$fffc,$0000
	dc.w $0028,$07b5,$0000,$84ff,$ffe8,$fff4,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e076:
	dc.w $801b,$0030,$ffe0,$0000
	dc.w $0004,$09af,$0000,$84ff,$ffe8,$ffe0,$0000
	dc.w $0008,$09ac,$0000,$84ff,$ffe0,$ffee,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e09c:
	dc.w $0004,$09ac,$0000,$84ff,$ffe0,$ffee,$0000
	dc.w $801f,$ffc0,$ffd8,$fff8,$0010
	dc.w $8020
	dc.w $8031,$0010,$ffc8
	dc.w $000c,$09ae,$0000,$84ff,$ffd6,$fffc,$0000
	dc.w $000c,$09ad,$0000,$84ff,$ffe0,$0004,$0000
	dc.w $0008,$09af,$0000,$84ff,$ffe8,$fff4,$0000
	dc.w $0028,$09ac,$0000,$84ff,$ffe0,$ffee,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e0f6:
	dc.w $801b,$0030,$ffe0,$0000
	dc.w $0004,$0b55,$0000,$84ff,$fff4,$ffe8,$0000
	dc.w $0008,$0b52,$0000,$84ff,$ffde,$ffec,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e11c:
	dc.w $0004,$0b52,$0000,$84ff,$ffde,$ffec,$0000
	dc.w $801f,$ffc0,$ffd8,$fff8,$0010
	dc.w $8020
	dc.w $8031,$0010,$ffc8
	dc.w $000c,$0b54,$0000,$84ff,$ffc0,$fffa,$0000
	dc.w $000c,$0b53,$0000,$84ff,$ffd2,$0008,$0000
	dc.w $0008,$0b55,$0000,$84ff,$ffe4,$fff4,$0000
	dc.w $0028,$0b52,$0000,$84ff,$ffde,$ffec,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e176:
	dc.w $801b,$0030,$ffe0,$0000
	dc.w $0004,$0d6b,$0000,$84ff,$fff4,$ffec,$0000
	dc.w $0008,$0d68,$0000,$84ff,$ffde,$ffea,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e19c:
	dc.w $0004,$0d68,$0000,$84ff,$ffde,$ffea,$0000
	dc.w $801f,$ffc0,$ffd8,$fff8,$0010
	dc.w $8020
	dc.w $8031,$0010,$ffc8
	dc.w $000c,$0d6d,$0000,$84ff,$fff8,$fffc,$0001
	dc.w $000c,$0d6c,$0000,$84ff,$fffc,$0007,$0001
	dc.w $0008,$0d6b,$0000,$84ff,$ffe8,$0000,$0000
	dc.w $0028,$0d68,$0000,$84ff,$ffde,$ffea,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e1f6:
	dc.w $801b,$0030,$ffe0,$0000
	dc.w $0004,$0f34,$0000,$84ff,$ffec,$ffe0,$0000
	dc.w $0008,$0f37,$0000,$84ff,$ffe0,$ffe8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e21c:
	dc.w $0004,$0f37,$0000,$84ff,$ffe0,$ffe8,$0000
	dc.w $801f,$ffc0,$ffd8,$fff8,$0010
	dc.w $8020
	dc.w $8031,$0010,$ffc8
	dc.w $000c,$0f39,$0000,$84ff,$ffc8,$fffe,$0000
	dc.w $000c,$0f38,$0000,$84ff,$ffce,$0004,$0000
	dc.w $0008,$0f34,$0000,$84ff,$fff0,$fff4,$0000
	dc.w $0028,$0f37,$0000,$84ff,$ffe0,$ffe8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e276:
	dc.w $801b,$0030,$ffe0,$0000
	dc.w $0004,$1050,$0000,$84ff,$fff2,$fff6,$0000
	dc.w $0008,$104d,$0000,$84ff,$ffe6,$fff8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e29c:
	dc.w $0004,$104d,$0000,$84ff,$ffe6,$fff8,$0000
	dc.w $801f,$ffc0,$ffd8,$fff8,$0010
	dc.w $8020
	dc.w $8031,$0010,$ffc8
	dc.w $000c,$104f,$0000,$84ff,$ffc9,$000f,$0000
	dc.w $000c,$104e,$0000,$84ff,$ffd9,$001a,$0000
	dc.w $0008,$1050,$0000,$84ff,$ffef,$0006,$0000
	dc.w $0028,$104d,$0000,$84ff,$ffe6,$fff8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e2f6:
	dc.w $8037
	dc.l loc_047b3e
	dc.w $8038
	dc.l loc_04e340

	dc.w $8039,$0000
	dc.w $803e,$081d,$2400
	dc.w $8048,$025c,$00c4
	dc.w $803f,$1400,$0007,$1c00
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$0552,$0006
	dc.w $8047,$024b,$ffff

	dc.w $8036
	dc.l loc_04823c

loc_04e340:
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $801a,$00c5,$7fff
	dc.w $802a,$0017
	dc.w $0004,$03a4,$0000,$7800
	dc.w $0004,$037b,$0000,$7800
	dc.w $0008,$0382,$0000,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e36a:
	dc.w $0004,$0382,$0000,$7800
	dc.w $8034
	dc.w $803f,$0504,$0202,$0500
	dc.w $0002,$0383,$0000,$7800
	dc.w $000a,$0383,$0000,$7800
	dc.w $0008,$037b,$0000,$7800
	dc.w $0014,$0382,$0000,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e39e:
	dc.w $801a,$0000,$0000
	dc.w $801d
	dc.w $8004,$188d
	dc.w $0004,$046e,$0000,$8800
	dc.w $0004,$0471,$0000,$88ff,$0002,$0000,$0000
	dc.w $0008,$044b,$0000,$88ff,$0004,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e3d0:
	dc.w $801b,$0030,$0000,$0000
	dc.w $0004,$00c9,$0000,$84ff,$fffc,$0002,$0000
	dc.w $0004,$00ca,$0000,$84ff,$fffc,$0002,$0000
	dc.w $0008,$00cc,$0000,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e404:
	dc.w $0004,$00cc,$0000,$84ff,$fffc,$0002,$0000
	dc.w $801f,$ff90,$ffa8,$ffe0,$0008
	dc.w $8020
	dc.w $0002,$00c9,$0000,$84ff,$fffc,$0002,$0000
	dc.w $000a,$00cb,$0000,$84ff,$fffc,$0002,$0000
	dc.w $0008,$00ca,$0000,$84ff,$fffc,$0002,$0000
	dc.w $0014,$00cc,$0000,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e458:
	dc.w $801b,$0030,$0000,$0000
	dc.w $0004,$029f,$0000,$84ff,$fff0,$0000,$0000
	dc.w $0004,$02a0,$0000,$84ff,$fff0,$0000,$0000
	dc.w $0008,$02a2,$0000,$84ff,$fff4,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e48c:
	dc.w $0004,$02a2,$0000,$84ff,$fff4,$0004,$0000
	dc.w $801f,$ff90,$ffa8,$ffe0,$0008
	dc.w $8020
	dc.w $0002,$02a0,$0000,$84ff,$fff0,$0000,$0000
	dc.w $000a,$02a1,$0000,$84ff,$ffec,$0000,$0000
	dc.w $0008,$02a0,$0000,$84ff,$fff0,$0000,$0000
	dc.w $0014,$02a2,$0000,$84ff,$fff4,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e4e0:
	dc.w $801b,$0030,$0000,$0000
	dc.w $0004,$043e,$0000,$84ff,$fff0,$0000,$0000
	dc.w $0004,$043f,$0000,$84ff,$ffe8,$0000,$0000
	dc.w $0008,$0441,$0000,$84ff,$ffec,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e514:
	dc.w $0004,$0441,$0000,$84ff,$ffec,$0000,$0000
	dc.w $801f,$ff90,$ffa8,$ffe0,$0008
	dc.w $8020
	dc.w $0002,$043f,$0000,$84ff,$ffe8,$0000,$0000
	dc.w $000a,$0440,$0000,$84ff,$ffe8,$0000,$0000
	dc.w $0008,$043f,$0000,$84ff,$ffe8,$0000,$0000
	dc.w $0014,$0441,$0000,$84ff,$ffec,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e568:
	dc.w $801b,$0030,$0000,$0000
	dc.w $0004,$05c2,$0000,$8400
	dc.w $0004,$05c3,$0000,$8400
	dc.w $0008,$05c5,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e58a:
	dc.w $0004,$05c5,$0000,$84ff,$0004,$0008,$0000
	dc.w $801f,$ff90,$ffa8,$ffe0,$0008
	dc.w $8020
	dc.w $0002,$05c2,$0000,$8400
	dc.w $000a,$05c4,$0000,$8400
	dc.w $0008,$05c3,$0000,$8400
	dc.w $0014,$05c5,$0000,$84ff,$0004,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e5cc:
	dc.w $801b,$0030,$0000,$0000
	dc.w $0004,$07b5,$0000,$84ff,$fffc,$0004,$0000
	dc.w $0004,$07b6,$0000,$84ff,$fffc,$0004,$0000
	dc.w $0008,$0730,$0000,$84ff,$fffc,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e600:
	dc.w $0004,$0730,$0000,$84ff,$fffc,$0004,$0000
	dc.w $801f,$ff90,$ffa8,$ffe0,$0008
	dc.w $8020
	dc.w $0002,$07b6,$0000,$84ff,$fffc,$0004,$0000
	dc.w $000a,$07b7,$0000,$84ff,$fffc,$0004,$0000
	dc.w $0008,$07b6,$0000,$84ff,$fffc,$0004,$0000
	dc.w $0014,$0730,$0000,$84ff,$fffc,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e654:
	dc.w $801b,$0030,$0000,$0000
	dc.w $0004,$09ac,$0000,$84ff,$fff8,$0000,$0000
	dc.w $0004,$09ad,$0000,$84ff,$fff8,$0000,$0000
	dc.w $0008,$09af,$0000,$84ff,$fff0,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e688:
	dc.w $0004,$09af,$0000,$84ff,$fff0,$0000,$0000
	dc.w $801f,$ff90,$ffa8,$ffe0,$0008
	dc.w $8020
	dc.w $0002,$09ac,$0000,$84ff,$fff8,$0000,$0000
	dc.w $000a,$09ae,$0000,$84ff,$fff8,$0000,$0000
	dc.w $0008,$09ad,$0000,$84ff,$fff8,$0000,$0000
	dc.w $0014,$09af,$0000,$84ff,$fff0,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e6dc:
	dc.w $801b,$0030,$0000,$0000
	dc.w $0004,$0b52,$0000,$84ff,$fff0,$0000,$0000
	dc.w $0004,$0b52,$0000,$84ff,$fff0,$0000,$0000
	dc.w $0008,$0b55,$0000,$84ff,$fff0,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e710:
	dc.w $0004,$0b55,$0000,$84ff,$fff0,$0000,$0000
	dc.w $801f,$ff90,$ffa8,$ffe0,$0008
	dc.w $8020
	dc.w $0002,$0b53,$0000,$84ff,$fff8,$0000,$0000
	dc.w $000a,$0b54,$0000,$84ff,$fff8,$0000,$0000
	dc.w $0008,$0b53,$0000,$84ff,$fff8,$0000,$0000
	dc.w $0014,$0b55,$0000,$84ff,$fff0,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e764:
	dc.w $801b,$0030,$0000,$0000
	dc.w $0004,$0d68,$0000,$8400
	dc.w $0004,$0d69,$0000,$8400
	dc.w $0008,$0d6b,$0000,$84ff,$0004,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e78c:
	dc.w $0004,$0d6b,$0000,$84ff,$0004,$0000,$0000
	dc.w $801f,$ff90,$ffa8,$ffe0,$0008
	dc.w $8020
	dc.w $0002,$0d68,$0000,$8400
	dc.w $000a,$0d6a,$0000,$84ff,$0010,$0000,$0000
	dc.w $0008,$0d69,$0000,$8400
	dc.w $0014,$0d6b,$0000,$84ff,$0004,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e7d4:
	dc.w $801b,$0030,$0000,$0000
	dc.w $0004,$0f37,$0000,$84ff,$fffc,$0000,$0000
	dc.w $0004,$0f38,$0000,$84ff,$fff8,$0000,$0000
	dc.w $0008,$0f34,$0000,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e808:
	dc.w $0004,$0f34,$0000,$84ff,$fffc,$0000,$0000
	dc.w $801f,$ff90,$ffa8,$ffe0,$0008
	dc.w $8020
	dc.w $0002,$0f37,$0000,$84ff,$fffc,$0000,$0000
	dc.w $000a,$0f39,$0000,$84ff,$fff8,$0000,$0000
	dc.w $0008,$0f38,$0000,$84ff,$fff8,$0000,$0000
	dc.w $0014,$0f34,$0000,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e85c:
	dc.w $801b,$0030,$0000,$0000
	dc.w $0004,$104d,$0000,$84ff,$0002,$000a,$0000
	dc.w $0004,$104e,$0000,$84ff,$fff8,$000d,$0000
	dc.w $0008,$1050,$0000,$84ff,$0002,$000a,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e890:
	dc.w $0004,$1050,$0000,$84ff,$0002,$000c,$0000
	dc.w $801f,$ff90,$ffa8,$ffe0,$0008
	dc.w $8020
	dc.w $0002,$104d,$0000,$84ff,$0002,$000a,$0000
	dc.w $000a,$104f,$0000,$84ff,$fff3,$000b,$0000
	dc.w $0008,$104e,$0000,$84ff,$fffb,$000d,$0000
	dc.w $0014,$1050,$0000,$84ff,$0002,$000a,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04e8e4:
	dc.w $8037
	dc.l loc_047c90
	dc.w $8038
	dc.l loc_04e924

	dc.w $803c,$0000
	dc.w $803e,$38a7,$1900
	dc.w $8046,$3cf0
	dc.w $803f,$1006,$0005,$0804
	dc.w $8040,$0000,$08ff,$ff00
	dc.w $8043,$000a
	dc.w $8041,$0401,$fd2c
	dc.w $8048,$0550,$0000
	dc.w $8039,$0018,$0000

loc_04e924:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b9,$0000
	dc.w $802c
	dc.w $0005,$03eb,$0000,$78ff,$fff8,$0002,$0000
	dc.w $8047,$00b9,$ffff
	dc.w $0001,$03eb,$0000,$78ff,$fff8,$0002,$0000
	dc.w $802a,$0012
	dc.w $8007,$0010,$0000
	dc.w $804e,$0007,$2000,$ffff,$b400
	dc.w $8032,$0010,$fff0,$0d00
	dc.w $0002,$03e8,$0000,$78ff,$0000,$0001,$0000
	dc.w $8004,$1885

	dc.w $800d
	dc.l loc_04ea60
	dc.w $ffff

	dc.w $0005,$03e9,$0071,$7800
	dc.w $0005,$03e9,$0071,$7800
	dc.w $0004,$03ea,$0072,$78ff,$0008,$0000,$0000
	dc.w $0006,$0394,$0073,$88ff,$fff0,$0000,$0000
	dc.w $0006,$039d,$0074,$88ff,$fff8,$0002,$0000
	dc.w $803e,$38c7,$2c00
	dc.w $803f,$1006,$0005,$0c00
	dc.w $8047,$00b6,$ffff
	dc.w $8040,$0000,$0604,$1a00
	dc.w $8004,$18ac
	dc.w $8007,$0008,$0000
	dc.w $0002,$03df,$005b,$88ff,$000a,$0000,$0000
	dc.w $802a,$0016
	dc.w $0002,$03e0,$005a,$8800

	dc.w $800d
	dc.l loc_04ea92
	dc.w $ffff

	dc.w $0002,$03e1,$005c,$8800
	dc.w $0004,$03e2,$005d,$88ff,$fffe,$0000,$0000
	dc.w $0006,$03e2,$005e,$88ff,$fffe,$0000,$0000
	dc.w $8007,$0010,$0000
	dc.w $0004,$0368,$0042,$8000
	dc.w $0004,$036c,$001f,$8000
	dc.w $8007,$0010,$0000
	dc.w $0004,$0373,$0004,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ea56:
	dc.w $0008,$0373,$0004,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ea60:
	dc.w $0004,$04c8,$74ff,$ffd8,$0060,$0c00
	dc.w $0006,$04cb,$74ff,$ffd0,$0060,$0c00
	dc.w $0002,$04c9,$74ff,$ffa8,$0060,$0c00
	dc.w $0002,$04ca,$74ff,$ffa8,$0060,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ea92
	dc.w $0002,$049b,$74ff,$ffd0,$0070,$0c00
	dc.w $0004,$049c,$74ff,$ffde,$0090,$0c00
	dc.w $0002,$049d,$74ff,$ffde,$0090,$0c00
	dc.w $0002,$049e,$74ff,$ffde,$0090,$0c00
	dc.w $0002,$049f,$74ff,$ffde,$0090,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ead0:
	dc.w $8047,$00b7,$0000
	dc.w $8047,$00b8,$0000
	dc.w $803e,$2887,$2f00
	dc.w $803f,$2810,$000f,$2008
	dc.w $0004,$03eb,$0000,$78ff,$0008,$0000,$0000
	dc.w $804a,$0004,$0000,$fff4,$0100
	dc.w $8004,$188d
	dc.w $8047,$00b8,$ffff
	dc.w $8011,$001c,$0004,$e000,$c0f8
	dc.w $0008,$03e9,$0000,$7800
	dc.w $8047,$00b7,$ffff
	dc.w $801a,$0005,$8000
	dc.w $8002,$18e7
	dc.w $803b,$0000,$f018
	dc.w $0005,$047d,$0000,$78ff,$fff8,$ffe8,$0000
	dc.w $803b,$0000,$f01c
	dc.w $0003,$047e,$0000,$78ff,$0008,$ffe8,$0000
	dc.w $803b,$0000,$ec18
	dc.w $0003,$047f,$0000,$78ff,$0008,$ffe0,$0000
	dc.w $803b,$0000,$e014
	dc.w $0003,$0480,$0000,$78ff,$0010,$fff0,$0000
	dc.w $0003,$0481,$0000,$78ff,$0008,$fff0,$0000
	dc.w $0004,$0482,$0000,$78ff,$0010,$ffe8,$0000
	dc.w $803b,$0000,$e418
	dc.w $0006,$0483,$0000,$78ff,$0000,$fff0,$0000
	dc.w $803b,$0000,$f428
	dc.w $0003,$0484,$0000,$78ff,$0000,$0000,$0000
	dc.w $8026,$0018
	dc.w $8034
	dc.w $8002,$00e9
	dc.w $802a,$0013
	dc.w $803b,$0000,$f30d
	dc.w $8011,$001d,$0005,$e000,$d0f0,$0000
	dc.w $8011,$001d,$0005,$2000,$50e8,$0000
	dc.w $803b,$0000,$f420
	dc.w $0004,$0485,$0000,$7800
	dc.w $0010,$04c4,$0000,$7800
	dc.w $8000,$0000
	dc.l loc_04b03c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ec0c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0005,$00cb,$0000,$84ff,$000e,$000a,$0000
	dc.w $0003,$006f,$0000,$84ff,$0020,$0020,$0001
	dc.w $0003,$0171,$0000,$84ff,$000c,$0048,$0000
	dc.w $0003,$0180,$0000,$84ff,$ffdc,$0032,$0000
	dc.w $0003,$017e,$0000,$84ff,$ffbe,$0056,$0000
	dc.w $0004,$017d,$0000,$84ff,$ffc6,$0036,$0000
	dc.w $0006,$00ce,$0000,$84ff,$ffc0,$0024,$0000
	dc.w $0003,$0180,$0000,$84ff,$0044,$0030,$0000
	dc.w $801b,$0020,$0000,$0000
	dc.w $801e,$fff6,$0000
	dc.w $8022
	dc.w $0014,$00ce,$0000,$84ff,$0024,$0060,$0003
	dc.w $0010,$0144,$0000,$84ff,$0010,$0000,$0001
	dc.w $0010,$012a,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ecc0:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0005,$02a1,$0000,$84ff,$fffc,$0006,$0000
	dc.w $0003,$0307,$0000,$84ff,$0016,$000c,$0000
	dc.w $0003,$02fb,$0000,$84ff,$000c,$0040,$0000
	dc.w $0003,$0312,$0000,$84ff,$ffe4,$0028,$0000
	dc.w $0003,$0314,$0000,$84ff,$ffc4,$005a,$0000
	dc.w $0004,$0315,$0000,$84ff,$ffc6,$003e,$0000
	dc.w $0006,$02a4,$0000,$84ff,$ffc0,$0028,$0000
	dc.w $0003,$0312,$0000,$84ff,$004c,$0028,$0000
	dc.w $801b,$0020,$0000,$0000
	dc.w $801e,$fff6,$0000
	dc.w $8022
	dc.w $0014,$02a4,$0000,$84ff,$0024,$005c,$0003
	dc.w $0010,$02fa,$0000,$84ff,$0018,$0068,$0002
	dc.w $0010,$022b,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ed74:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0005,$0440,$0000,$84ff,$fff6,$fffa,$0000
	dc.w $0003,$040c,$0000,$84ff,$001e,$001e,$0001
	dc.w $0003,$0415,$0000,$84ff,$0004,$0054,$0001
	dc.w $0003,$0408,$0000,$84ff,$ffe2,$00a8,$0003
	dc.w $0003,$040a,$0000,$84ff,$ffcb,$00ca,$0003
	dc.w $0004,$040b,$0000,$84ff,$ffc8,$00b4,$0003
	dc.w $0006,$0443,$0000,$84ff,$ffb6,$001a,$0000
	dc.w $0003,$0408,$0000,$84ff,$004a,$00a8,$0003
	dc.w $801b,$0020,$0000,$0000
	dc.w $801e,$fff6,$0000
	dc.w $8022
	dc.w $0014,$0443,$0000,$84ff,$002e,$0070,$0003
	dc.w $0010,$0414,$0000,$84ff,$0020,$0070,$0003
	dc.w $0010,$0458,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ee28:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0005,$0522,$0000,$84ff,$002a,$0004,$0000
	dc.w $0003,$0672,$0000,$84ff,$0026,$0028,$0000
	dc.w $0003,$068e,$0000,$84ff,$0012,$0060,$0000
	dc.w $0003,$069f,$0000,$84ff,$ffda,$0034,$0000
	dc.w $0003,$069d,$0000,$84ff,$ffcc,$0060,$0000
	dc.w $0004,$069c,$0000,$84ff,$ffd2,$0042,$0000
	dc.w $0006,$05c7,$0000,$84ff,$ffc0,$0028,$0000
	dc.w $0003,$069f,$0000,$84ff,$0044,$0032,$0000
	dc.w $801b,$0020,$0000,$0000
	dc.w $801e,$fff6,$0000
	dc.w $8022
	dc.w $0014,$05c7,$0000,$84ff,$001c,$004e,$0003
	dc.w $0010,$0677,$0000,$84ff,$0010,$0000,$0001
	dc.w $0010,$0639,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04eed6:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0005,$07b7,$0000,$84ff,$0002,$000c,$0000
	dc.w $0003,$0857,$0000,$84ff,$0020,$001e,$0001
	dc.w $0003,$085a,$0000,$84ff,$0008,$004c,$0001
	dc.w $0003,$0860,$0000,$84ff,$ffe8,$0024,$0001
	dc.w $0003,$085c,$0000,$84ff,$ffc8,$00ba,$0002
	dc.w $0004,$085e,$0000,$84ff,$ffca,$00b8,$0002
	dc.w $0006,$07ba,$0000,$84ff,$ffc2,$002a,$0000
	dc.w $0003,$0860,$0000,$84ff,$0052,$0020,$0001
	dc.w $801b,$0020,$0000,$0000
	dc.w $801e,$fff6,$0000
	dc.w $8022
	dc.w $0014,$07ba,$0000,$84ff,$001e,$0056,$0003
	dc.w $0010,$0870,$0000,$84ff,$0018,$fff8,$0000
	dc.w $0010,$0812,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04ef84:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0005,$09ae,$0000,$84ff,$0010,$0002,$0000
	dc.w $0003,$09f6,$0000,$84ff,$001c,$002e,$0000
	dc.w $0003,$0a07,$0000,$84ff,$001a,$0056,$0000
	dc.w $0003,$0a03,$0000,$84ff,$ffca,$0014,$0000
	dc.w $0003,$0a01,$0000,$84ff,$ffdc,$004a,$0000
	dc.w $0004,$0a00,$0000,$84ff,$ffd0,$0040,$0000
	dc.w $0006,$09b1,$0000,$84ff,$ffb6,$0018,$0000
	dc.w $0003,$0a03,$0000,$84ff,$0038,$0010,$0000
	dc.w $801b,$0020,$0000,$0000
	dc.w $801e,$fff6,$0000
	dc.w $8022
	dc.w $0014,$09b1,$0000,$84ff,$002c,$006c,$0003
	dc.w $0010,$0a08,$0000,$84ff,$0008,$0000,$0001
	dc.w $0010,$09d7,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04f038:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0005,$0b54,$0000,$84ff,$fffc,$fffe,$0000
	dc.w $0003,$0b95,$0000,$84ff,$0020,$001c,$0000
	dc.w $0003,$0bc3,$0000,$84ff,$001a,$0054,$0000
	dc.w $0003,$0bd4,$0000,$84ff,$ffd2,$002a,$0000
	dc.w $0003,$0bd2,$0000,$84ff,$ffc2,$0052,$0000
	dc.w $0004,$0bd1,$0000,$84ff,$ffca,$0032,$0000
	dc.w $0006,$0b57,$0000,$84ff,$ffbc,$001e,$0000
	dc.w $0003,$0bd4,$0000,$84ff,$0040,$0028,$0000
	dc.w $801b,$0020,$0000,$0000
	dc.w $801e,$fff6,$0000
	dc.w $8022
	dc.w $0014,$0b57,$0000,$84ff,$0028,$006a,$0003
	dc.w $0010,$0b99,$0000,$84ff,$0018,$0078,$0002
	dc.w $0010,$0b89,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04f0e6:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0005,$0d6a,$0000,$84ff,$000e,$000e,$0000
	dc.w $0003,$0dba,$0000,$84ff,$0018,$001c,$0001
	dc.w $0003,$0dd7,$0000,$84ff,$000c,$005a,$0000
	dc.w $0003,$0dae,$0000,$84ff,$ffd8,$0026,$0000
	dc.w $0003,$0dac,$0000,$84ff,$ffcc,$0056,$0000
	dc.w $0004,$0dab,$0000,$84ff,$ffca,$003e,$0000
	dc.w $0006,$0d6d,$0000,$84ff,$ffc2,$0020,$0000
	dc.w $0003,$0dae,$0000,$84ff,$0044,$001c,$0000
	dc.w $801b,$0020,$0000,$0000
	dc.w $801e,$fff6,$0000
	dc.w $8022
	dc.w $0014,$0d6d,$0000,$84ff,$0024,$0064,$0003
	dc.w $0010,$0dd8,$0000,$84ff,$0010,$fff8,$0001
	dc.w $0010,$0dde,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04f19a:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0005,$0f39,$0000,$84ff,$0004,$0004,$0000
	dc.w $0003,$0e5e,$0000,$84ff,$0024,$0028,$0001
	dc.w $0003,$0e5f,$0000,$84ff,$000c,$0056,$0001
	dc.w $0003,$0f27,$0000,$84ff,$ffd0,$00a6,$0003
	dc.w $0003,$0f28,$0000,$84ff,$ffc9,$0052,$0000
	dc.w $0004,$0e5c,$0000,$84ff,$ffce,$00a6,$0003
	dc.w $0006,$0f36,$0000,$84ff,$ffca,$001e,$0000
	dc.w $0003,$0f27,$0000,$84ff,$003a,$00a4,$0003
	dc.w $801b,$0020,$0000,$0000
	dc.w $801e,$fff6,$0000
	dc.w $8022
	dc.w $0014,$0f36,$0000,$84ff,$001e,$006a,$0003
	dc.w $0010,$0e5d,$0000,$84ff,$0018,$0000,$0000
	dc.w $0010,$0e5f,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04f24e:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0005,$104f,$0000,$84ff,$0004,$0013,$0000
	dc.w $0003,$10b2,$0000,$84ff,$001e,$001f,$0001
	dc.w $0003,$10b4,$0000,$84ff,$0009,$004d,$0001
	dc.w $0003,$10be,$0000,$84ff,$ffcf,$0023,$0000
	dc.w $0003,$10bc,$0000,$84ff,$ffcf,$005b,$0000
	dc.w $0004,$10bb,$0000,$84ff,$ffce,$003d,$0000
	dc.w $0006,$1051,$0000,$84ff,$ffcd,$0031,$0000
	dc.w $0003,$10be,$0000,$84ff,$0039,$0022,$0000
	dc.w $801b,$0020,$0000,$0000
	dc.w $801e,$fff6,$0000
	dc.w $8022
	dc.w $0014,$1051,$0000,$84ff,$0015,$0056,$0003
	dc.w $0010,$1186,$0000,$84ff,$0003,$0006,$0000
	dc.w $0010,$1067,$0000,$84ff,$0001,$0005,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_04f302:
	dc.w $8037
	dc.l loc_028fca

	dc.w $803d

	dc.w $8038
	dc.l loc_04f320

	dc.w $8045,$0002
	dc.w $8048,$0554,$00b4

	dc.w $8036
	dc.l loc_04823c

loc_04f320:
	dc.w $8017,$0080
	dc.l loc_04f38a

	dc.w $8040,$0404,$0404,$2700
	dc.w $802a,$001a
	dc.w $0004,$03d8,$0075,$80ff,$0004,$0000,$0000
	dc.w $0004,$03d9,$0076,$8000
	dc.w $0004,$03da,$0076,$8000
	dc.w $0006,$03db,$0076,$8000
	dc.w $0006,$03dc,$0076,$8000
	dc.w $0006,$03dd,$0076,$8000
	dc.w $0007,$03da,$0076,$8000
	dc.w $0006,$03d9,$0076,$8000
	dc.w $0004,$03d8,$0075,$80ff,$0004,$0000,$0000
	dc.w $8001

loc_04f38a:
	dc.w $8040,$0400,$0a00,$2200
	dc.w $802a,$0019
	dc.w $000a,$03d3,$0077,$8000
	dc.w $0005,$046d,$0078,$8000
	dc.w $0003,$03d4,$0078,$8000
	dc.w $0003,$03d5,$0078,$8000
	dc.w $0012,$03d4,$0078,$8000
	dc.w $0005,$046d,$0078,$8000
	dc.w $8001


;end at 04f3c8