;=====================;
;   Sho Programming   ;
;=====================;
loc_032826:
	move.w #$f0,($344,a4)
	move.w #$28,($346,a4)
	move.w #5,($348,a4)
	move.w #$a,($34a,a4)
	move.w #$c4,($34c,a4)
	move.w #$54,($34e,a4)
	move.w #$7c,($350,a4)
	rts

;--------------------------
loc_032852:
	tst.b ($4d3,a4)
	beq.w loc_03287c
	move.b ($35c,a4),d0
	andi.w #$fffc,d0
	bne.w loc_03287c
	cmpi.b #6,($360,a4)
	bne.w loc_03287c
	sf ($4d3,a4)
	move.l #loc_032b82,($56,a4)

loc_03287c:
	rts

;--------------------------
loc_03287e:
	movea.l #loc_033e44,a0
	bsr.w loc_0328d2
	bra.w loc_0329a6

loc_03288c:
	bclr #7,($35c,a4)
	bne.w loc_03289c
	jmp loc_02e5c6

loc_03289c:
	movea.l #loc_033cb4,a0
	bsr.w loc_0328d2
	bra.w loc_0329a6

;--------------------------
loc_0328aa:
	move.l (a7)+,($4d6,a4)
	jmp (a0)

;--------------------------
loc_0328b0:
	move.l ($4d6,a4),d0
	beq.b loc_03288c
	clr.l ($4d6,a4)
	movea.l d0,a0
	clr.b d0
	jmp (a0)

;--------------------------
loc_0328c0:
	move.l ($4d6,a4),d0
	beq.b loc_03288c
	clr.l ($4d6,a4)
	movea.l d0,a0
	move.b #-1,d0
	jmp (a0)

;--------------------------
loc_0328d2:
	move.l (a7)+,($4da,a4)
	jmp (a0)

;--------------------------
loc_0328d8:
	move.l ($4da,a4),d0
	beq.w loc_0329a6
	clr.l ($4da,a4)
	movea.l d0,a0
	jmp (a0)

;--------------------------
loc_0328e8:
	st ($4d3,a4)
	cmpi.w #$c,($be,a4)
	bge.w loc_032978
	cmpi.w #$a0,($378,a4)
	bgt.w loc_03295a
	cmpi.w #$50,($378,a4)
	bgt.w loc_032936
	cmpi.w #$1e,($378,a4)
	bgt.w loc_032918
	bra.w loc_032986

loc_032918:
	jsr RandomNumberGod
	lea loc_032928(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_032928:
	dc.w $0002,$001e
	dc.l loc_032986
	dc.w $000a
	dc.l loc_03299a

;--------------------------
loc_032936:
	jsr RandomNumberGod
	lea loc_032946(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_032946:
	dc.w $0003,$003c
	dc.l loc_032990
	dc.w $001e
	dc.l loc_032986
	dc.w $000a
	dc.l loc_03299a

;--------------------------
loc_03295a:
	jsr RandomNumberGod
	lea loc_03296a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03296a:
	dc.w $0002,$003c
	dc.l loc_032990
	dc.w $000a
	dc.l loc_032986 

;--------------------------
loc_032978:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_032990

loc_032986:
	movea.l #loc_033cb4,a0
	bra.w loc_0329a0

loc_032990:
	movea.l #loc_033d84,a0
	bra.w loc_0329a0

;--------------------------
loc_03299a:
	movea.l #loc_033e44,a0

loc_0329a0:
	movea.l a0,a0
	bsr.w loc_0328d2

loc_0329a6:
	clr.l ($4d6,a4)
	clr.l ($4da,a4)
	clr.l ($4de,a4)
	tst.b ($35d,a4)
	beq.w loc_0329c2
	jsr loc_0226b4
	bra.b loc_0329a6

loc_0329c2:
	st ($35d,a4)
	cmpi.b #6,($360,a4)
	beq.w loc_032b82
	tst.b ($247,a4)
	beq.w loc_032b74
	cmpi.w #$a0,($378,a4)
	bgt.w loc_032b2e
	cmpi.w #$3c,($378,a4)
	bgt.w loc_032ac2
	cmpi.w #$1e,($378,a4)
	bgt.w loc_032a56
	jsr RandomNumberGod
	lea loc_032a06(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_032a06:
	dc.w $000d,$000a
	dc.l loc_033fac
	dc.w $0005
	dc.l loc_033e44
	dc.w $0005
	dc.l loc_033f88
	dc.w $0032
	dc.l loc_034a00
	dc.w $0014
	dc.l loc_034d8a
	dc.w $0014
	dc.l loc_034ef8
	dc.w $0014
	dc.l loc_034b38
	dc.w $0014
	dc.l loc_035656
	dc.w $0014
	dc.l loc_03551e
	dc.w $000a
	dc.l loc_0358da
	dc.w $0014
	dc.l loc_034a8c
	dc.w $000a
	dc.l loc_035118
	dc.w $001e
	dc.l loc_03465e

;--------------------------
loc_032a56:
	jsr RandomNumberGod
	lea loc_032a66(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_032a66:
	dc.w $000f,$000a
	dc.l loc_033fac
	dc.w $000a
	dc.l loc_033e44
	dc.w $0014
	dc.l loc_033eaa
	dc.w $0002
	dc.l loc_0353ae
	dc.w $0032
	dc.l loc_034a00
	dc.w $0014
	dc.l loc_034d8a
	dc.w $0014
	dc.l loc_034b38
	dc.w $0014
	dc.l loc_035656
	dc.w $0014
	dc.l loc_034ef8
	dc.w $0014
	dc.l loc_03551e
	dc.w $000a
	dc.l loc_034a8c
	dc.w $000a
	dc.l loc_0350be
	dc.w $000a
	dc.l loc_034cd6
	dc.w $000f
	dc.l loc_035118
	dc.w $000a
	dc.l loc_0358da

;--------------------------
loc_032ac2:
	jsr RandomNumberGod
	lea loc_032ad2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_032ad2:
	dc.w $000f,$0028
	dc.l loc_033d84
	dc.w $0028
	dc.l loc_033f64
	dc.w $001e
	dc.l loc_033eaa
	dc.w $000a
	dc.l loc_033e44
	dc.w $000a
	dc.l loc_033fac
	dc.w $0032
	dc.l loc_034a00
	dc.w $0014
	dc.l loc_035118
	dc.w $0014
	dc.l loc_034d8a
	dc.w $0014
	dc.l loc_034ef8
	dc.w $0014
	dc.l loc_03551e
	dc.w $0028
	dc.l loc_0353f8
	dc.w $000a
	dc.l loc_034824
	dc.w $000a
	dc.l loc_0358da
	dc.w $000a
	dc.l loc_0350be
	dc.w $000a
	dc.l loc_034cd6

;--------------------------
loc_032b2e:
	cmpi.w #$c,($be,a4)
	bge.w loc_03288c
	jsr RandomNumberGod
	lea loc_032b48(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_032b48:
	dc.w $0007,$0028
	dc.l loc_033d84
	dc.w $0028
	dc.l loc_033f64
	dc.w $001e
	dc.l loc_0353f8
	dc.w $000a
	dc.l loc_033eaa
	dc.w $000a
	dc.l loc_034824
	dc.w $000a
	dc.l loc_0358da
	dc.w $0032
	dc.l loc_034a00

;--------------------------
loc_032b74:
	movea.l #loc_0340da,a0
	bsr.w loc_0328aa
	bra.w loc_0329a6

;--------------------------
loc_032b82:
	clr.b ($2f6,a4)
	movea.l #loc_033fac,a0
	bsr.w loc_0328d2
	jsr RandomNumberGod
	lea loc_032ba0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_032ba0:
	dc.w $0002,$0050
	dc.l loc_032bae
	dc.w $0014
	dc.l loc_032bbc

;--------------------------
loc_032bae:
	movea.l #loc_035118,a0
	bsr.w loc_0328aa
	bra.w loc_0329a6

loc_032bbc:
	movea.l #loc_033f88,a0
	bsr.w loc_0328d2
	bra.w loc_0329a6

;--------------------------
loc_032bca:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_032bde(pc,d0.w),d0
	jmp loc_032bde(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_032bde:
	dc.w loc_032bfe-loc_032bde;00
	dc.w loc_032bfe-loc_032bde;01
	dc.w loc_032bfe-loc_032bde;02
	dc.w loc_032bfe-loc_032bde;03
	dc.w loc_032c02-loc_032bde;04
	dc.w loc_032c14-loc_032bde;05
	dc.w loc_032c26-loc_032bde;06
	dc.w loc_032c38-loc_032bde;07

	dc.w loc_032c4a-loc_032bde;08
	dc.w loc_032c5c-loc_032bde;09
	dc.w loc_032c6e-loc_032bde;0a
	dc.w loc_032c80-loc_032bde;0b
	dc.w loc_032c92-loc_032bde;0c
	dc.w loc_032c92-loc_032bde;0d
	dc.w loc_032c92-loc_032bde;0e
	dc.w loc_032c92-loc_032bde;0f

;--------------------------
loc_032bfe:
	bra.w loc_032c96

loc_032c02:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_032c96
	bra.w loc_032ca4

loc_032c14:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_032c96
	bra.w loc_032ca4

loc_032c26:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_032c96
	bra.w loc_032ca4

loc_032c38:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_032c96
	bra.w loc_032ca4

loc_032c4a:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_032c96
	bra.w loc_032ca4

loc_032c5c:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_032c96
	bra.w loc_032ca4

loc_032c6e:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_032c96
	bra.w loc_032ca4

loc_032c80:
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_032c96
	bra.w loc_032ca4

loc_032c92:
	bra.w loc_032ca4

loc_032c96:
	movea.l #loc_033fac,a0
	bsr.w loc_0328d2
	bra.w loc_0329a6

loc_032ca4:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	scs ($4d2,a4)

loc_032cb2:
	tst.b ($365,a4)
	bne.w loc_032fda
	clr.b ($2f6,a4)
	tst.b ($4d2,a4)
	bpl.w loc_032cec
	cmpi.b #3,($360,a4)
	beq.w loc_032cec
	cmpi.b #4,($360,a4)
	beq.w loc_032cec
	tst.b ($367,a4)
	beq.w loc_032cf0
	cmpi.b #1,($360,a4)
	beq.w loc_032cf0

loc_032cec:
	bra.w loc_032d2e

loc_032cf0:
	cmpi.w #$40,($340,a4)
	blt.w loc_032d2e
	cmpi.w #$8c,($378,a4)
	bgt.w loc_032d2e
	cmpi.w #$a,($378,a4)
	blt.w loc_032d2e
	cmpi.w #-$8c,($37a,a4)
	bgt.w loc_032d2e
	tst.b ($24a,a4)
	bne.w loc_032d2e
	movea.l #loc_033eaa,a0
	bsr.w loc_0328d2
	bra.w loc_032fd4

loc_032d2e:
	cmpi.b #3,($376,a4)
	beq.w loc_032d7a
	cmpi.b #3,($360,a4)
	beq.w loc_032d6c
	cmpi.b #4,($360,a4)
	beq.w loc_032d6c
	tst.b ($367,a4)
	beq.w loc_032d6c
	cmpi.b #1,($360,a4)
	beq.w loc_032d7a
	cmpi.b #2,($360,a4)
	beq.w loc_032d7a
	bra.w loc_032fbe

loc_032d6c:
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_032fbe

loc_032d7a:
	btst #7,($35c,a4)
	bne.w loc_032da6
	cmpi.w #$28,($36c,a4)
	bgt.w loc_032da6
	cmpi.w #-$64,($37a,a4)
	blt.w loc_032da6
	movea.l #loc_034ef8,a0
	bsr.w loc_0328aa
	bne.w loc_032fd4

loc_032da6:
	cmpi.w #$40,($340,a4)
	blt.w loc_032ddc
	btst #7,($35c,a4)
	bne.w loc_032ddc
	cmpi.w #$28,($378,a4)
	bgt.w loc_032ddc
	cmpi.w #-$1e,($37a,a4)
	blt.w loc_032ddc
	movea.l #loc_034a8c,a0
	bsr.w loc_0328aa
	bne.w loc_032fd4

loc_032ddc:
	btst #7,($35c,a4)
	bne.w loc_032e08
	cmpi.w #$28,($378,a4)
	bgt.w loc_032e08
	cmpi.w #-$78,($37a,a4)
	blt.w loc_032e08
	move.b #2,($2f6,a4)
	bsr.w loc_0368a6
	bne.w loc_032fd4

loc_032e08:
	btst #7,($35c,a4)
	bne.w loc_032e3e
	cmpi.w #$3c,($378,a4)
	bgt.w loc_032e3e
	cmpi.w #-$28,($37a,a4)
	blt.w loc_032e3e
	move.b #2,($2f6,a4)
	bsr.w loc_036a22
	jsr loc_02e308
	bsr.w loc_036a22
	bne.w loc_032fd4

loc_032e3e:
	btst #7,($35c,a4)
	bne.w loc_032e68
	cmpi.w #$3c,($378,a4)
	bgt.w loc_032e68
	cmpi.w #-$3c,($37a,a4)
	blt.w loc_032e68
	clr.b ($2f6,a4)
	bsr.w loc_036972
	bne.w loc_032fd4

loc_032e68:
	btst #7,($35c,a4)
	bne.w loc_032e94
	cmpi.w #$3c,($378,a4)
	bgt.w loc_032e94
	cmpi.w #-$64,($37a,a4)
	blt.w loc_032e94
	move.b #2,($2f6,a4)
	bsr.w loc_0368a6
	bne.w loc_032fd4

loc_032e94:
	cmpi.w #$60,($340,a4)
	blt.w loc_032ece
	btst #7,($35c,a4)
	bne.w loc_032ece
	cmpi.w #$3c,($378,a4)
	bgt.w loc_032ece
	cmpi.w #-$78,($37a,a4)
	blt.w loc_032ece
	movea.l #loc_034092,a0
	bsr.w loc_0328d2
	bsr.w loc_036800
	bne.w loc_032fd4

loc_032ece:
	btst #7,($35c,a4)
	bne.w loc_032efa
	cmpi.w #$46,($378,a4)
	bgt.w loc_032efa
	cmpi.w #-$a,($37a,a4)
	blt.w loc_032efa
	move.b #2,($2f6,a4)
	bsr.w loc_036800
	bne.w loc_032fd4

loc_032efa:
	cmpi.w #$60,($340,a4)
	blt.w loc_032f34
	btst #7,($35c,a4)
	bne.w loc_032f34
	cmpi.w #$46,($378,a4)
	bgt.w loc_032f34
	cmpi.w #-$78,($37a,a4)
	blt.w loc_032f34
	movea.l #loc_0340b6,a0
	bsr.w loc_0328d2
	bsr.w loc_036800
	bne.w loc_032fd4

loc_032f34:
	btst #7,($35c,a4)
	bne.w loc_032f5e
	cmpi.w #$50,($378,a4)
	bgt.w loc_032f5e
	cmpi.w #-$3c,($37a,a4)
	blt.w loc_032f5e
	clr.b ($2f6,a4)
	bsr.w loc_0368a6
	bne.w loc_032fd4

loc_032f5e:
	btst #7,($35c,a4)
	bne.w loc_032f88
	cmpi.w #$64,($378,a4)
	bgt.w loc_032f88
	cmpi.w #-$64,($37a,a4)
	blt.w loc_032f88
	clr.b ($2f6,a4)
	bsr.w loc_036800
	bne.w loc_032fd4

loc_032f88:
	cmpi.w #$40,($340,a4)
	blt.w loc_032fbe
	btst #7,($35c,a4)
	beq.w loc_032fbe
	cmpi.w #$3c,($378,a4)
	bgt.w loc_032fbe
	cmpi.w #-$28,($37a,a4)
	bgt.w loc_032fbe
	movea.l #loc_034a8c,a0
	bsr.w loc_0328aa
	bne.w loc_032fd4

loc_032fbe:
	jsr loc_02e456
	jsr loc_0226b4
	jsr loc_02e370
	bra.w loc_032cb2

loc_032fd4:
	jsr loc_02e308

loc_032fda:
	clr.b ($2f6,a4)
	bclr #2,($35c,a4)
	bra.w loc_0329a6

;--------------------------
loc_032fe8:
	cmpi.w #$a0,($340,a4)
	bge.w loc_033006
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($358,a4),d0
	bcs.w loc_033006
	bra.w loc_0330d2

loc_033006:
	move.w #7,($4d4,a4)

loc_03300c:
	cmpi.b #1,($36a,a4)
	bne.w loc_033020
	btst #0,($362,a4)
	bne.w loc_032ca4

loc_033020:
	tst.b ($367,a4)
	beq.w loc_0330c2
	cmpi.b #3,($36a,a4)
	beq.w loc_0330b6
	cmpi.b #6,($36a,a4)
	beq.w loc_03307a
	cmpi.b #5,($360,a4)
	beq.w loc_033064
	cmpi.b #1,($36a,a4)
	bne.w loc_03305a
	cmpi.w #$1c,($374,a4)
	bgt.w loc_0330b6

loc_03305a:
	cmpi.b #1,($360,a4)
	beq.w loc_033094

loc_033064:
	jsr loc_02e456
	jsr loc_0226b4
	subq.w #1,($4d4,a4)
	bge.b loc_03300c
	bra.w loc_0330c2

loc_03307a:
	cmpi.b #4,($376,a4)
	beq.b loc_033064
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0330d2
	bra.w loc_033fac

loc_033094:
	cmpi.b #4,($36a,a4)
	beq.w loc_0330b6
	cmpi.w #$80,($358,a4)
	blt.w loc_0330c2
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0330c2

loc_0330b6:
	btst #3,($24a,a4)
	bne.b loc_033064
	bra.w loc_0330e4

loc_0330c2:
	btst #7,($35c,a4)
	bne.w loc_0330e0
	jsr loc_02e456

loc_0330d2:
	jsr loc_0226b4
	moveq #6,d0
	jsr loc_02e39c

loc_0330e0:
	bra.w loc_0329a6

loc_0330e4:
	tst.b ($247,a4)
	beq.w loc_0340da

loc_0330ec:
	btst #1,($246,a4)
	bne.w loc_0330fe
	jsr loc_0226b4
	bra.b loc_0330ec

loc_0330fe:
	btst #3,($24a,a4)
	bne.w loc_033634
	cmpi.b #5,($36a,a4)
	beq.w loc_033634
	cmpi.b #5,($360,a4)
	beq.w loc_033634
	tst.b ($365,a4)
	beq.w loc_032ca4
	cmpi.b #1,($360,a4)
	beq.w loc_03315a
	cmpi.b #2,($360,a4)
	bne.w loc_033150
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_033626
	sf d3
	move.w ($378,a4),d2
	bra.w loc_033166

loc_033150:
	st d3
	move.w ($374,a4),d2
	bra.w loc_033166

loc_03315a:
	sf d3
	move.w ($374,a4),d2
	add.w ($378,a4),d2
	asr #1,d2


loc_033166:
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_03317a
	bra.w loc_033366

loc_03317a:
	btst #7,($35c,a4)
	beq.w loc_033366
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_033366
	cmpi.w #$1e,($36c,a4)
	bge.w loc_0331c6
	jsr RandomNumberGod
	lea loc_0331ac(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0331ac:
	dc.w $0004,$0014
	dc.l loc_03327e
	dc.w $0014
	dc.l loc_0332b6
	dc.w $0014
	dc.l loc_0332ce
	dc.w $0014
	dc.l loc_033332

;--------------------------
loc_0331c6:
	cmpi.w #$3c,($36c,a4)
	bge.w loc_033200
	jsr RandomNumberGod
	lea loc_0331e0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0331e0:
	dc.w $0005,$0014
	dc.l loc_03327e
	dc.w $0014
	dc.l loc_03329a
	dc.w $0014
	dc.l loc_0332b6
	dc.w $0014
	dc.l loc_0332ce
	dc.w $0014
	dc.l loc_033332

;--------------------------
loc_033200:
	cmpi.w #$78,($36c,a4)
	bge.w loc_033240
	jsr RandomNumberGod
	lea loc_03321a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03321a:
	dc.w $0006,$001e
	dc.l loc_033270
	dc.w $001e
	dc.l loc_03328c
	dc.w $001e
	dc.l loc_0332a8
	dc.w $000a
	dc.l loc_03329a
	dc.w $000a
	dc.l loc_033316
	dc.w $000a
	dc.l loc_03334a

;--------------------------
loc_033240:
	jsr RandomNumberGod
	lea loc_033250(pc),a0
	jmp loc_02decc


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_033250:
	dc.w $0005,$0028
	dc.l loc_033270
	dc.w $0028
	dc.l loc_03328c
	dc.w $001e
	dc.l loc_0332a8
	dc.w $001e
	dc.l loc_03329a
	dc.w $000a
	dc.l loc_033316

;--------------------------
loc_033270:
	movea.l #loc_033f64,a0
	bsr.w loc_0328d2
	bra.w loc_03360a

;--------------------------
loc_03327e:
	movea.l #loc_03465e,a0
	bsr.w loc_0328aa
	bra.w loc_03360a

;--------------------------
loc_03328c:
	movea.l #loc_033d84,a0
	bsr.w loc_0328d2
	bra.w loc_03360a

;--------------------------
loc_03329a:
	movea.l #loc_033e44,a0
	bsr.w loc_0328d2
	bra.w loc_03360a

;--------------------------
loc_0332a8:
	movea.l #loc_033eaa,a0
	bsr.w loc_0328d2
	bra.w loc_0329a6

;--------------------------
loc_0332b6:
	cmpi.w #$40,($340,a4)
	blt.w loc_033366
	movea.l #loc_034a8c,a0
	bsr.w loc_0328aa
	bra.w loc_03360a

;--------------------------
loc_0332ce:
	cmpi.w #$40,($340,a4)
	blt.w loc_033366
	cmpi.w #$50,($36c,a4)
	bgt.w loc_03360a
	sf ($3cc,a4)
	bsr.w loc_036744
	jsr loc_02e308
	bra.w loc_03360a

;--------------------------
loc_0332f4:
	cmpi.w #$40,($340,a4)
	blt.w loc_033366
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_036654
	jsr loc_02e308
	bra.w loc_03360a

;--------------------------
loc_033316:
	cmpi.w #$40,($340,a4)
	blt.w loc_033366
	st ($3cc,a4)
	bsr.w loc_0366ee
	jsr loc_02e308
	bra.w loc_03360a

;--------------------------
loc_033332:
	cmpi.w #$60,($340,a4)
	blt.w loc_033366
	bsr.w loc_036618
	jsr loc_02e308
	bra.w loc_03360a

;--------------------------
loc_03334a:
	cmpi.w #$60,($340,a4)
	blt.w loc_033366
	bsr.w loc_0365c6
	beq.w loc_033366
	jsr loc_02e308
	bra.w loc_03360a

;--------------------------
loc_033366:
	jsr RandomNumberGod
	andi.w #$1f,d0
	subi.w #$10,d0
	add.w d0,d2
	btst #0,($369,a4)
	bne.w loc_0333a2
	btst #2,($369,a4)
	bne.w loc_03341a
	btst #1,($369,a4)
	bne.w loc_0333de
	btst #3,($369,a4)
	bne.w loc_03341a
	bra.w loc_033634

;--------------------------
loc_0333a2:
	cmpi.w #$1c,d2
	ble.w loc_033498
	cmpi.w #$24,d2
	ble.w loc_0335e8
	cmpi.w #$28,d2
	ble.w loc_03347c
	cmpi.w #$2c,d2
	ble.w loc_0335c2
	cmpi.w #$2e,d2
	ble.w loc_033456
	cmpi.w #$32,d2
	ble.w loc_0334cc
	cmpi.w #$46,d2
	ble.w loc_0335f6
	bra.w loc_033634

;--------------------------
loc_0333de:
	cmpi.w #$1c,d2
	ble.w loc_0335e8
	cmpi.w #$24,d2
	ble.w loc_03355c
	cmpi.w #$28,d2
	ble.w loc_03347c
	cmpi.w #$38,d2
	ble.w loc_0335f6
	cmpi.w #$3c,d2
	ble.w loc_0334cc
	cmpi.w #$44,d2
	ble.w loc_0335aa
	cmpi.w #$4b,d2
	ble.w loc_033498
	bra.w loc_033634

;--------------------------
loc_03341a:
	cmpi.w #$1c,d2
	ble.w loc_0334a6
	cmpi.w #$24,d2
	ble.w loc_0335da
	cmpi.w #$28,d2
	ble.w loc_0334fc
	cmpi.w #$2e,d2
	ble.w loc_033456
	cmpi.w #$3c,d2
	ble.w loc_0335f6
	cmpi.w #$46,d2
	ble.w loc_033538
	cmpi.w #$50,d2
	ble.w loc_03354a
	bra.w loc_033634

;--------------------------
loc_033456:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_03360a
	jsr loc_02c78a
	beq.w loc_03360a
	bsr.w loc_036618
	jsr loc_02e308
	bra.w loc_03360a

;--------------------------
loc_03347c:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_03360a
	movea.l #loc_033f88,a0
	bsr.w loc_0328d2
	bra.w loc_0329a6

;--------------------------
loc_033498:
	movea.l #loc_033eaa,a0
	bsr.w loc_0328d2
	bra.w loc_0329a6

;--------------------------
loc_0334a6:
	cmpi.w #$40,($340,a4)
	blt.w loc_03360a
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_03360a
	movea.l #loc_034a8c,a0
	bsr.w loc_0328aa
	bra.w loc_03360a

;--------------------------
loc_0334cc:
	cmpi.w #$40,($340,a4)
	blt.w loc_03360a
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_03360a
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_036654
	jsr loc_02e308
	bra.w loc_03360a

;--------------------------
loc_0334fc:
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_033508:
	move.w d0,($4d4,a4)
	clr.b ($2f6,a4)
	bsr.w loc_036a22
	jsr loc_02e2d0
	move.w ($4d4,a4),d0
	dbra d0,loc_033508
	bra.w loc_03360a

;--------------------------
loc_033526:
	clr.b ($2f6,a4)
	bsr.w loc_036972
	jsr loc_02e308
	bra.w loc_03360a

;--------------------------
loc_033538:
	clr.b ($2f6,a4)
	movea.l #loc_034ef8,a0
	bsr.w loc_0328aa
	bra.w loc_03360a

;--------------------------
loc_03354a:
	clr.b ($2f6,a4)
	bsr.w loc_036800
	jsr loc_02e308
	bra.w loc_03360a

;--------------------------
loc_03355c:
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_033568:
	move.w d0,($4d4,a4)
	move.b #2,($2f6,a4)
	bsr.w loc_036a22
	jsr loc_02e2d0
	move.w ($4d4,a4),d0
	dbra d0,loc_033568
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_033498
	bra.w loc_03360a

;--------------------------
loc_033596:
	move.b #2,($2f6,a4)
	bsr.w loc_0368a6
	jsr loc_02e308
	bra.w loc_03360a

;--------------------------
loc_0335aa:
	cmpi.w #$40,($340,a4)
	blt.w loc_03360a
	bsr.w loc_0367c4
	jsr loc_02e308
	bra.w loc_03360a

;--------------------------
loc_0335c2:
	cmpi.w #$40,($340,a4)
	blt.w loc_03360a
	bsr.w loc_0367a6
	jsr loc_02e308
	bra.w loc_03360a

;--------------------------
loc_0335da:
	movea.l #loc_034ef8,a0
	bsr.w loc_0328aa
	bra.w loc_03360a

;--------------------------
loc_0335e8:
	movea.l #loc_034d8a,a0
	bsr.w loc_0328aa
	bra.w loc_03360a

;--------------------------
loc_0335f6:
	move.b #2,($2f6,a4)
	bsr.w loc_036800
	jsr loc_02e308
	bra.w loc_03360a

;--------------------------
loc_03360a:
	jsr loc_0226b4
	btst #7,($35c,a4)
	bne.w loc_033622
	moveq #4,d0
	jsr loc_02e39c

loc_033622:
	bra.w loc_03288c

;--------------------------
loc_033626:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_033fac

loc_033634:
	jsr loc_02e456
	jsr loc_0226b4
	bclr #3,($35c,a4)
	bra.w loc_03288c

;--------------------------
loc_03364a:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_03365e(pc,d0.w),d0
	jmp loc_03365e(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03365e:
	dc.w loc_03367e-loc_03365e ;00
	dc.w loc_03367e-loc_03365e ;01
	dc.w loc_033684-loc_03365e ;02
	dc.w loc_033698-loc_03365e ;03
	dc.w loc_0336ac-loc_03365e ;04
	dc.w loc_0336c0-loc_03365e ;05
	dc.w loc_0336d4-loc_03365e ;06
	dc.w loc_0336e8-loc_03365e ;07

	dc.w loc_0336fc-loc_03365e ;08
	dc.w loc_0336fc-loc_03365e ;09
	dc.w loc_0336fc-loc_03365e ;0a
	dc.w loc_0336fc-loc_03365e ;0b
	dc.w loc_0336fc-loc_03365e ;0c
	dc.w loc_0336fc-loc_03365e ;0d
	dc.w loc_0336fc-loc_03365e ;0e
	dc.w loc_0336fc-loc_03365e ;0f

;--------------------------
loc_03367e:
	jmp loc_02e5b2

;--------------------------
loc_033684:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_033700
	jmp loc_02e5b2

;--------------------------
loc_033698:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_033700
	jmp loc_02e5b2

;--------------------------
loc_0336ac:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_033700
	jmp loc_02e5b2

;--------------------------
loc_0336c0:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_033700
	jmp loc_02e5b2

;--------------------------
loc_0336d4:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_033700
	jmp loc_02e5b2

;--------------------------
loc_0336e8:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_033700
	jmp loc_02e5b2

;--------------------------
loc_0336fc:
	bra.w loc_033700

;--------------------------
loc_033700:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcc.b loc_033714
	move.b #1,($4d0,a4)
	bra.b loc_033724

loc_033714:
	cmpi.w #$c000,d0
	bcc.b loc_033720
	sf ($4d0,a4)
	bra.b loc_033724

loc_033720:
	st ($4d0,a4)

loc_033724:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	scs ($4d1,a4)

loc_033732:
	tst.b ($367,a4)
	beq.w loc_033748
	cmpi.w #$24,($374,a4)
	bge.w loc_033748
	bra.w loc_033874

loc_033748:
	tst.b ($363,a4)
	beq.w loc_0338c6
	cmpi.w #-$34,($370,a4)
	ble.w loc_0338c6
	cmpi.w #$34,($370,a4)
	ble.w loc_033874
	tst.b ($4d1,a4)
	beq.w loc_0337f0
	cmpi.w #$f0,($37c,a4)
	bgt.w loc_0337f0
	cmpi.w #$c8,($37c,a4)
	ble.w loc_0337f0
	cmpi.b #$12,($364,a4)
	beq.w loc_0337f0
	cmpi.w #$c0,($340,a4)
	bge.w loc_0337a2
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0337b8

loc_0337a2:
	btst #1,($246,a4)
	beq.w loc_0338c6
	bsr.w loc_0365c6
	beq.w loc_0337b8
	bra.w loc_0338c6


loc_0337b8:
	cmpi.w #$40,($340,a4)
	blt.w loc_0337f0
	st ($3cc,a4)
	bsr.w loc_0366ee
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0338c6
	st ($3cc,a4)
	bsr.w loc_0366ee
	jsr loc_02e308
	bra.w loc_0338c6

loc_0337f0:
	tst.b ($4d0,a4)
	beq.w loc_033820
	bgt.w loc_033800
	bra.w loc_033874

loc_033800:
	cmpi.w #$4b,($37c,a4)
	bgt.w loc_033874
	tst.b ($24a,a4)
	bne.w loc_033874
	movea.l #loc_03406e,a0
	bsr.w loc_0328d2
	bra.w loc_0338c6

loc_033820:
	cmpi.w #$32,($37c,a4)
	bgt.w loc_033874
	cmpi.b #$12,($364,a4)
	beq.w loc_033874
	tst.b ($24a,a4)
	bne.w loc_033874
	cmpi.w #$80,($340,a4)
	blt.w loc_033866
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_033866
	st ($3cc,a4)
	bsr.w loc_036654
	jsr loc_02e308
	bra.w loc_0338c6

loc_033866:
	movea.l #loc_0340b6,a0
	bsr.w loc_0328d2
	bra.w loc_0338c6

loc_033874:
	cmpi.w #$c0,($340,a4)
	blt.w loc_0338b6
	cmpi.w #$20,($370,a4)
	bgt.w loc_0338b6
	cmpi.w #8,($370,a4)
	bgt.w loc_0338b6
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0338b6
	btst #1,($246,a4)
	beq.w loc_0338c6
	bsr.w loc_036618
	beq.w loc_0338b6
	bra.w loc_0338c6

loc_0338b6:
	jsr loc_02e456
	jsr loc_0226b4
	bra.w loc_033732

loc_0338c6:
	clr.b ($2f6,a4)
	bra.w loc_0329a6

;--------------------------
loc_0338ce:
	clr.b ($2f6,a4)

loc_0338d2:
	cmpi.w #$40,($340,a4)
	bge.w loc_0338e0
	bra.w loc_0329a6

loc_0338e0:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_03391a
	jsr RandomNumberGod
	lea loc_0338fa(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0338fa:
	dc.w $0005,$0032
	dc.l loc_033ad2
	dc.w $0014
	dc.l loc_0339e8
	dc.w $0014
	dc.l loc_033ac4
	dc.w $000a
	dc.l loc_0339da
	dc.w $000a
	dc.l loc_033a18

;--------------------------
loc_03391a:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_033954
	jsr RandomNumberGod
	lea loc_033934(pc),a0
	jmp loc_02decc


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_033934:
	dc.w $0005,$0028
	dc.l loc_033a18
	dc.w $0014
	dc.l loc_033ad2
	dc.w $0014
	dc.l loc_0339e8
	dc.w $000a
	dc.l loc_0339da
	dc.w $000a
	dc.l loc_033ac4

;--------------------------
loc_033954:
	cmpi.w #$78,($378,a4)
	bgt.w loc_033988
	jsr RandomNumberGod
	lea loc_03396e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03396e:
	dc.w $0004,$0028
	dc.l loc_033a18
	dc.w $0014
	dc.l loc_033a30
	dc.w $0014
	dc.l loc_033ac4
	dc.w $000a
	dc.l loc_033a9e

;--------------------------
loc_033988:
	jsr RandomNumberGod
	lea loc_033998(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_033998:
	dc.w $0006,$0028
	dc.l loc_033a18
	dc.w $0014
	dc.l loc_033a30
	dc.w $0014
	dc.l loc_033a9e
	dc.w $000a
	dc.l loc_033a90
	dc.w $000a
	dc.l loc_0339cc
	dc.w $000a
	dc.l loc_0339be

;--------------------------
loc_0339be:
	bsr.w loc_036780
	jsr loc_02e308
	bra.w loc_0329a6

;--------------------------
loc_0339cc:
	movea.l #loc_035818,a0
	bsr.w loc_0328aa
	bra.w loc_0329a6

;--------------------------
loc_0339da:
	movea.l #loc_033e44,a0
	bsr.w loc_0328d2
	bra.w loc_0329a6

;--------------------------
loc_0339e8:
	cmpi.w #$40,($340,a4)
	blt.w loc_0329a6
	btst #1,($362,a4)
	bne.w loc_033a0a
	bsr.w loc_0367a6
	jsr loc_02e308
	bra.w loc_0329a6

loc_033a0a:
	bsr.w loc_0367c4
	jsr loc_02e308
	bra.w loc_0329a6

;--------------------------
loc_033a18:
	jsr loc_02c78a
	beq.w loc_033a30
	movea.l #loc_034a00,a0
	bsr.w loc_0328aa
	bra.w loc_0329a6

;--------------------------
loc_033a30:
	movea.l #loc_0353f8,a0
	bsr.w loc_0328aa
	bra.w loc_0329a6

;--------------------------
loc_033a3e:
	movea.l #loc_034d8a,a0
	bsr.w loc_0328aa
	bra.w loc_0329a6

;--------------------------
loc_033a4c:
	movea.l #loc_034ef8,a0
	bsr.w loc_0328aa
	bra.w loc_0329a6

;--------------------------
loc_033a5a:
	movea.l #loc_033f64,a0
	bsr.w loc_0328d2
	jsr loc_02e308
	bra.w loc_0329a6

;--------------------------
loc_033a6e:
	cmpi.w #$40,($340,a4)
	blt.w loc_0329a6
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_036654
	jsr loc_02e308
	bra.w loc_0329a6

;--------------------------
loc_033a90:
	movea.l #loc_034cd6,a0
	bsr.w loc_0328aa
	bra.w loc_0329a6

;--------------------------
loc_033a9e:
	movea.l #loc_0358da,a0
	bsr.w loc_0328aa
	bra.w loc_0329a6

;--------------------------
loc_033aac:
	cmpi.w #$40,($340,a4)
	blt.w loc_0329a6
	movea.l #loc_034a8c,a0
	bsr.w loc_0328aa
	bra.w loc_0329a6

;--------------------------
loc_033ac4:
	movea.l #loc_035118,a0
	bsr.w loc_0328aa
	bra.w loc_0329a6

;--------------------------
loc_033ad2:
	movea.l #loc_03465e,a0
	bsr.w loc_0328aa
	bra.w loc_0329a6

;--------------------------
loc_033ae0:
	clr.b ($2f6,a4)
	cmpi.w #$24,($36c,a4)
	bge.w loc_033af4
	move.b #4,($2f6,a4)

loc_033af4:
	cmpi.w #$64,($36c,a4)
	ble.w loc_033b04
	move.b #8,($2f6,a4)

loc_033b04:
	clr.b ($2f6,a4)
	btst #5,($361,a4)
	beq.w loc_033b1a
	jsr loc_0226b4
	bra.b loc_033ae0

loc_033b1a:
	clr.b ($2f6,a4)
	moveq #$12,d0
	jsr loc_02e420
	cmpi.w #$40,($340,a4)
	bge.w loc_033b3e
	movea.l #loc_033cb4,a0
	bsr.w loc_0328d2
	bra.w loc_0329a6

loc_033b3e:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_033b5a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_033b5a:
	dc.w $0003,$0028
	dc.l loc_033b6e
	dc.w $0014
	dc.l loc_033b8a
	dc.w $0014
	dc.l loc_033b7c

;--------------------------
loc_033b6e:
	movea.l #loc_03465e,a0
	bsr.w loc_0328aa
	bra.w loc_0329a6
;--------------------------
loc_033b7c:
	movea.l #loc_035118,a0
	bsr.w loc_0328d2
	bra.w loc_0329a6

;--------------------------
loc_033b8a:
	cmpi.w #$60,($340,a4)
	blt.w loc_033bb2
	bsr.w loc_036780
	jsr loc_02e308
	btst #1,($246,a4)
	beq.w loc_0329a6
	bsr.w loc_036618
	jsr loc_02e308

loc_033bb2:
	bra.w loc_0329a6

;--------------------------
loc_033bb6:
	andi.b #2,($2f6,a4)

loc_033bbc:
	btst #5,($249,a4)
	beq.w loc_033bfc
	cmpi.w #$50,($378,a4)
	blt.w loc_033bec
	cmpi.w #$80,($340,a4)
	blt.w loc_033bec
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_033bec
	st ($2fb,a4)

loc_033bec:
	moveq #8,d0
	jsr loc_02e39c
	jsr loc_0226b4
	bra.b loc_033bbc

;--------------------------
loc_033bfc:
	jsr loc_02e370
	move.l #$80004,d0
	jsr loc_02e39c
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_033c22
	bra.w loc_03288c

loc_033c22:
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$32,($378,a4)
	bgt.w loc_033c70

loc_033c38:
	tst.b ($249,a4)
	beq.w loc_033cb0
	jsr RandomNumberGod
	lea loc_033c54(pc),a0
	jsr loc_02decc
	bra.w loc_033c68

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_033c54:
	dc.w $0003,$005a
	dc.l loc_03465e
	dc.w $000a
	dc.l loc_034a8c
	dc.w $000a
	dc.l loc_034a00

;--------------------------
loc_033c68:
	jsr loc_0226b4
	bra.b loc_033c38

loc_033c70:
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_033cb0

loc_033c7e:
	tst.b ($249,a4)
	beq.w loc_033cb0
	jsr RandomNumberGod
	lea loc_033c9a(pc),a0
	jsr loc_02decc
	bra.w loc_033ca8

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_033c9a:
	dc.w $0002,$005a
	dc.l loc_034a8c
	dc.w $000a
	dc.l loc_034a00

;--------------------------
loc_033ca8
	jsr loc_0226b4
	bra.b loc_033c7e

loc_033cb0:
	bra.w loc_032fe8

;--------------------------
loc_033cb4:
	cmpi.w #$80,($340,a4)
	bge.w loc_033ce4
	andi.b #2,($2f6,a4)
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$44,d2
	jsr loc_02e0f4
	bra.w loc_0328d8

loc_033ce4:
	jsr loc_02e496
	jsr loc_02e550
	bra.w loc_0328d8

loc_033cf4:
	jsr loc_02e370
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.b loc_033cb4
	cmpi.w #$a0,($358,a4)
	blt.w loc_033d2c
	jsr RandomNumberGod
	cmpi.w #$3000,d0
	bcs.w loc_033e44
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_033d84

loc_033d2c:
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
	bra.w loc_0328d8

loc_033d58:
	cmpi.w #$c,($be,a4)
	ble.w loc_033d7a
	move.b #8,($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr loc_0226b4

loc_033d7a:
	move.l #$40004,d0
	bra.w loc_033da2

;--------------------------
loc_033d84:
	cmpi.w #$20,($340,a4)
	bge.w loc_033d9c
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_033cb4

loc_033d9c:
	move.l #$100010,d0

loc_033da2:
	cmpi.w #$c,($be,a4)
	bgt.w loc_033dfc
	cmpi.w #$60,($340,a4)
	bge.w loc_033dfc
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$44,d2
	jsr loc_02e0f4
	cmpi.w #$20,($340,a4)
	bge.w loc_033df4
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

loc_033df4:
	clr.b ($2f6,a4)
	bra.w loc_0328d8

loc_033dfc:
	movem.l d0,-(a7)
	bsr.w loc_036af0
	movem.l (a7)+,d0
	bne.w loc_033e2c
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$44,($378,a4)
	ble.b loc_033df4
	clr.b ($2f6,a4)
	jsr loc_0226b4
	bra.b loc_033dfc

loc_033e2c:
	moveq #0,d2
	move.w #$44,d2
	jsr loc_02e0f4
	bra.b loc_033df4

;--------------------------
loc_033e3a:
	move.l #$40004,d0
	bra.w loc_033e62

;--------------------------
loc_033e44:
	cmpi.w #$20,($340,a4)
	bge.w loc_033e5c
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_033cb4

loc_033e5c:
	move.l #$80010,d0

loc_033e62:
	move.b #4,($2f6,a4)
	moveq #0,d2
	move.w #$8c,d2
	swap d2
	jsr loc_02e0f4
	cmpi.w #$20,($340,a4)
	bge.w loc_033ea2
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

loc_033ea2:
	clr.b ($2f6,a4)
	bra.w loc_0328d8

;--------------------------
loc_033eaa:
	cmpi.w #$20,($340,a4)
	blt.w loc_0328d8
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_033ed0
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_033f40
	bra.w loc_033f36

loc_033ed0:
	cmpi.w #$50,($36c,a4)
	bgt.w loc_033ef6
	move.l #$80008,d0
	move.l #$6e0000,d2
	move.b #4,($2f6,a4)
	jsr loc_02e0f4
	bra.w loc_033f14

loc_033ef6:
	cmpi.w #$6e,($36c,a4)

loc_033efc:
	blt.w loc_033f14
	move.l #$80008,d0
	moveq #$50,d2
	move.b #8,($2f6,a4)
	jsr loc_02e0f4

loc_033f14:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_033f40
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_033f36
	move.b #5,($2f6,a4)
	bra.w loc_033f46

loc_033f36
	move.b #1,($2f6,a4)
	bra.w loc_033f46

loc_033f40
	move.b #9,($2f6,a4)

loc_033f46:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_033f46
	clr.b ($2f6,a4)
	moveq #4,d0
	jsr loc_02e39c
	bra.w loc_0328d8

;--------------------------
loc_033f64:
	cmpi.w #$40,($340,a4)
	blt.w loc_033d84
	clr.b ($2f6,a4)
	bsr.w loc_036af0
	jsr loc_0226b4
	moveq #8,d0
	jsr loc_02e39c
	bra.w loc_0328d8

;--------------------------
loc_033f88:
	cmpi.w #$40,($340,a4)
	blt.w loc_033e44
	clr.b ($2f6,a4)
	bsr.w loc_036ad2
	jsr loc_0226b4
	moveq #8,d0
	jsr loc_02e39c
	bra.w loc_0328d8

;--------------------------
loc_033fac:
	cmpi.w #$20,($340,a4)
	blt.w loc_034066
	cmpi.w #$28,($36c,a4)
	blt.w loc_033fd8
	cmpi.w #$5a,($36c,a4)
	blt.w loc_034000
	cmpi.w #$b4,($36c,a4)
	bgt.w loc_034028
	bra.w loc_033cb4

loc_033fd8:
	bra.w loc_034000

;--------------------------
loc_033fdc:
	move.b ($246,a4),d0
	andi.b #$c,d0
	bne.w loc_033ff6
	movea.l #loc_033f88,a0
	bsr.w loc_0328d2
	bra.w loc_034066

loc_033ff6:
	move.b #9,($2f6,a4)
	bra.w loc_033f46

loc_034000:
	cmpi.w #$80,($340,a4)
	bge.w loc_03404e
	move.l #$100010,d0
	move.b #4,($2f6,a4)
	move.w #$b4,d2
	swap d2
	clr.w d2
	jsr loc_02e0f4
	bra.w loc_034066

loc_034028:
	cmpi.w #$60,($340,a4)
	bge.w loc_03405c
	move.l #$100010,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$5a,d2
	jsr loc_02e0f4
	bra.w loc_034066

loc_03404e:
	movea.l #loc_033f88,a0
	bsr.w loc_0328d2
	bra.w loc_034066

loc_03405c:
	movea.l #loc_033f64,a0
	bsr.w loc_0328d2

loc_034066:
	clr.b ($2f6,a4)
	bra.w loc_0328d8

;--------------------------
loc_03406e:
	move.b #9,($2f6,a4)

loc_034074
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_034074
	moveq #2,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_0328d8

;--------------------------
loc_034092:
	move.b #5,($2f6,a4)

loc_034098:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_034098
	moveq #2,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_0328d8

;--------------------------
loc_0340b6:
	move.b #1,($2f6,a4)

loc_0340bc:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_0340bc
	moveq #2,d0
	jsr loc_02e420
	clr.b ($2f6,a4)
	bra.w loc_0328d8

;--------------------------
loc_0340da:
	btst #0,($24a,a4)
	bne.w loc_0328b0
	tst.b ($247,a4)
	bne.w loc_0328b0
	cmpi.w #$30,($340,a4)
	blt.w loc_0328b0

loc_0340f6:
	clr.b ($2f6,a4)
	btst #1,($246,a4)
	bne.w loc_034650
	move.b ($361,a4),d0
	andi.b #$f8,d0
	beq.w loc_03411a
	cmpi.b #5,($360,a4)
	beq.w loc_034646

loc_03411a:
	tst.b ($365,a4)
	bne.w loc_034412
	cmpi.w #$60,($358,a4)
	blt.w loc_034412
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_0343ce
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_03426c
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_03417e
	cmpi.w #$14,($378,a4)
	bgt.w loc_03417e
	cmpi.w #$30,($37a,a4)
	bgt.w loc_03417e
	cmpi.w #$10,($37a,a4)
	blt.w loc_03417e
	move.b #2,($2f6,a4)
	bsr.w loc_036972
	bra.w loc_034650

loc_03417e:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_0341aa
	cmpi.w #$10,($37a,a4)
	bgt.w loc_0341aa
	cmpi.w #$ffc0,($37a,a4)
	blt.w loc_0341aa
	move.b #1,($2f6,a4)
	bsr.w loc_0368a6
	bra.w loc_034650

loc_0341aa:
	jsr RandomNumberGod
	cmpi.w #$d000,d0
	bcs.w loc_0341de
	cmpi.w #$2e,($378,a4)
	bgt.w loc_0341de
	cmpi.w #$10,($37a,a4)
	bgt.w loc_0341de
	cmpi.w #$ffd0,($37a,a4)
	blt.w loc_0341de
	bsr.w loc_036972
	bra.w loc_034650

loc_0341de:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_03420e
	cmpi.w #$2e,($378,a4)
	bgt.w loc_03420e
	cmpi.w #$20,($37a,a4)
	bgt.w loc_03420e
	cmpi.w #$ffe0,($37a,a4)
	blt.w loc_03420e
	bra.w loc_0343fc

loc_03420e:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_034242
	cmpi.w #$3e,($378,a4)
	bgt.w loc_034242
	cmpi.w #$30,($37a,a4)
	bgt.w loc_034242
	cmpi.w #$ffd0,($37a,a4)
	blt.w loc_034242
	bsr.w loc_0368a6
	bra.w loc_034650

loc_034242:
	cmpi.w #$3e,($378,a4)
	bgt.w loc_034268
	cmpi.w #$40,($37a,a4)
	bgt.w loc_034268
	cmpi.w #$ffe0,($37a,a4)
	blt.w loc_034268
	bsr.w loc_036800
	bra.w loc_034650

loc_034268:
	bra.w loc_034646

loc_03426c:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0342a6
	cmpi.w #$14,($378,a4)
	bgt.w loc_0342a6
	cmpi.w #$30,($37a,a4)
	bgt.w loc_0342a6
	cmpi.w #$10,($37a,a4)
	blt.w loc_0342a6
	move.b #2,($2f6,a4)
	bsr.w loc_036972
	bra.w loc_034650

loc_0342a6:
	cmpi.w #$24,($378,a4)
	bgt.w loc_0342d2
	cmpi.w #$10,($37a,a4)
	bgt.w loc_0342d2
	cmpi.w #$ffc0,($37a,a4)
	blt.w loc_0342d2
	move.b #$1,($2f6,a4)
	bsr.w loc_0368a6
	bra.w loc_034650

loc_0342d2:
	jsr RandomNumberGod
	cmpi.w #$d000,d0
	bcs.w loc_034306
	cmpi.w #$34,($378,a4)
	bgt.w loc_034306
	cmpi.w #$10,($37a,a4)
	bgt.w loc_034306
	cmpi.w #$fff0,($37a,a4)
	blt.w loc_034306
	bsr.w loc_036972
	bra.w loc_034650

loc_034306:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_034336
	cmpi.w #$34,($378,a4)
	bgt.w loc_034336
	cmpi.w #$20,($37a,a4)
	bgt.w loc_034336
	cmpi.w #$ffe0,($37a,a4)
	blt.w loc_034336
	bra.w loc_0343fc

loc_034336:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_034370
	cmpi.w #$44,($378,a4)
	bgt.w loc_034370
	cmpi.w #-$10,($37a,a4)
	bgt.w loc_034370
	cmpi.w #-$50,($37a,a4)
	blt.w loc_034370
	move.b #2,($2f6,a4)
	bsr.w loc_036800
	bra.w loc_034650

loc_034370:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0343a4
	cmpi.w #$44,($378,a4)
	bgt.w loc_0343a4
	cmpi.w #$30,($37a,a4)
	bgt.w loc_0343a4
	cmpi.w #$ffd0,($37a,a4)
	blt.w loc_0343a4
	bsr.w loc_0368a6
	bra.w loc_034650

loc_0343a4:
	cmpi.w #$44,($378,a4)
	bgt.w loc_0343ca
	cmpi.w #$40,($37a,a4)
	bgt.w loc_0343ca
	cmpi.w #$ffe0,($37a,a4)
	blt.w loc_0343ca
	bsr.w loc_036800
	bra.w loc_034650

loc_0343ca:
	bra.w loc_034646

loc_0343ce:
	cmpi.w #$20,($378,a4)
	bge.w loc_034646
	cmpi.w #$ffe0,($37a,a4)
	blt.w loc_034646
	move.b #2,($2f6,a4)
	bsr.w loc_036800
	move.l #$80008,d0
	jsr loc_02e420
	bra.w loc_034650

loc_0343fc:
	bsr.w loc_036a22
	jsr loc_02e2d0
	btst #1,($246,a4)
	bne.w loc_034650
	bra.b loc_0343fc

loc_034412:
	jsr RandomNumberGod
	cmpi.w #$c00,d0
	bcs.w loc_034444
	tst.w ($21a,a4)
	blt.w loc_034646
	cmpi.l #$5dc000,($22a,a4)
	bgt.w loc_034646
	cmpi.l #$5dc000,($22a,a4)
	ble.w loc_034486
	bra.w loc_034646

loc_034444:
	cmpi.w #$60,($340,a4)
	blt.w loc_034650
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_034482
	cmpi.w #$8c,($378,a4)
	bgt.w loc_034646
	cmpi.w #$64,($378,a4)
	blt.w loc_034646
	btst #1,($246,a4)
	bne.w loc_034650
	bsr.w loc_0365c6
	bne.w loc_034650

loc_034482:
	bra.w loc_034646

loc_034486:
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_034634
	cmpi.w #$14,($378,a4)
	bgt.w loc_0344a4
	bsr.w loc_036800
	bra.w loc_034650

loc_0344a4:
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_034572
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0344d6
	cmpi.w #$14,($378,a4)
	bgt.w loc_0344d6
	move.b #2,($2f6,a4)
	bsr.w loc_036972
	bra.w loc_034650

loc_0344d6:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0344f6
	cmpi.w #$24,($378,a4)
	bgt.w loc_0344f6
	bsr.w loc_036a22
	bra.w loc_034650

loc_0344f6:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_034516
	cmpi.w #$24,($378,a4)
	bgt.w loc_034516
	bsr.w loc_036972
	bra.w loc_034650

loc_034516:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_034536
	cmpi.w #$34,($378,a4)
	bgt.w loc_034536
	bsr.w loc_0368a6
	bra.w loc_034650

loc_034536:
	cmpi.w #$44,($378,a4)
	bgt.w loc_034548
	bsr.w loc_036800
	bra.w loc_034650

loc_034548:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_03456e
	cmpi.w #$54,($378,a4)
	bgt.w loc_03456e
	move.b #2,($2f6,a4)
	bsr.w loc_036800
	bra.w loc_034650

loc_03456e:
	bra.w loc_034646

loc_034572:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_034598
	cmpi.w #$14,($378,a4)
	bgt.w loc_034598
	move.b #2,($2f6,a4)
	bsr.w loc_036972
	bra.w loc_034650

loc_034598:
	jsr RandomNumberGod
	cmpi.w #$d000,d0
	bcs.w loc_0345b8
	cmpi.w #$24,($378,a4)
	bgt.w loc_0345b8
	bsr.w loc_036972
	bra.w loc_034650

loc_0345b8:
	jsr RandomNumberGod
	cmpi.w #$d000,d0
	bcs.w loc_0345d8
	cmpi.w #$34,($378,a4)
	bgt.w loc_0345d8
	bsr.w loc_036a22
	bra.w loc_034650

loc_0345d8:
	jsr RandomNumberGod
	cmpi.w #$b000,d0
	bcs.w loc_0345f8
	cmpi.w #$44,($378,a4)
	bgt.w loc_0345f8
	bsr.w loc_0368a6
	bra.w loc_034650

loc_0345f8:
	cmpi.w #$44,($378,a4)
	bgt.w loc_03460a
	bsr.w loc_036800
	bra.w loc_034650

loc_03460a:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_034630
	cmpi.w #$54,($378,a4)
	bgt.w loc_034630
	move.b #2,($2f6,a4)
	bsr.w loc_036800
	bra.w loc_034650

loc_034630:
	bra.w loc_034646

loc_034634:
	cmpi.w #$24,($378,a4)
	bgt.w loc_034650
	bsr.w loc_036800
	bra.w loc_034650

loc_034646:
	jsr loc_0226b4
	bra.w loc_0340f6

loc_034650:
	clr.b ($2f6,a4)
	jsr loc_02e308
	bra.w loc_0328b0

loc_03465e:
	cmpi.w #$40,($340,a4)
	blt.w loc_0328b0
	move.w #7,d0

loc_03466c:
	move.w d0,($4d4,a4)
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_0328b0
	btst #6,($24a,a4)
	bne.w loc_0328b0
	tst.b ($247,a4)
	beq.w loc_034734
	cmpi.w #$ffb0,($37a,a4)
	bgt.w loc_0346e4
	cmpi.w #$80,($340,a4)
	blt.w loc_0346e4
	cmpi.w #$24,($378,a4)
	ble.w loc_0346d6
	cmpi.w #$74,($378,a4)
	ble.w loc_0346c8
	clr.b ($2f6,a4)
	movea.l #loc_033f64,a0
	bsr.w loc_0328d2
	bra.w loc_03473c

loc_0346c8:
	movea.l #loc_03406e,a0
	bsr.w loc_0328d2
	bra.w loc_03473c

loc_0346d6:
	movea.l #loc_0340b6,a0
	bsr.w loc_0328d2
	bra.w loc_03473c

loc_0346e4:
	cmpi.w #8,($be,a4)
	bgt.w loc_0346f8
	cmpi.w #$14,($36c,a4)
	bgt.w loc_034702

loc_0346f8:
	move.b #4,($2f6,a4)
	bra.w loc_034728

loc_034702:
	cmpi.w #$1e,($36c,a4)
	ble.w loc_034728
	move.l #$100010,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$1e,d2
	jsr loc_02e0f4
	bra.w loc_03473c

loc_034728:
	bsr.w loc_036576
	bne.w loc_034758
	bra.w loc_03473c

loc_034734:
	bsr.w loc_036598
	bne.w loc_034758

loc_03473c:
	move.l #$20004,d0
	jsr loc_02e420
	move.w ($4d4,a4),d0
	dbra d0,loc_03466c
	clr.b ($2f6,a4)
	bra.w loc_0328b0

loc_034758:
	clr.b ($2f6,a4)
	jsr loc_02e308
	cmpi.w #$64,($36c,a4)
	bgt.w loc_034770
	bra.w loc_0347aa

loc_034770:
	cmpi.w #$82,($36c,a4)
	bgt.w loc_03477e
	bra.w loc_0347f6

loc_03477e:
	cmpi.w #$a0,($36c,a4)
	bgt.w loc_03478c
	bra.w loc_0347b8

loc_03478c:
	jsr RandomNumberGod
	lea loc_03479c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03479c:
	dc.w $0002,$001e
	dc.l loc_0347de
	dc.w $001e
	dc.l loc_034804

;--------------------------
loc_0347aa:
	movea.l #loc_033e44,a0
	bsr.w loc_0328d2
	bra.w loc_03481c

loc_0347b8:
	movea.l #loc_033e44,a0
	bsr.w loc_0328d2
	cmpi.w #$40,($340,a4)
	blt.w loc_03481c
	sf ($3cc,a4)
	bsr.w loc_0366ee
	jsr loc_02e308
	bra.w loc_03481c

loc_0347de:
	cmpi.w #$40,($340,a4)
	blt.w loc_03481c
	sf ($3cc,a4)
	bsr.w loc_036654
	jsr loc_02e308

loc_0347f6:
	bsr.w loc_036780
	jsr loc_02e308
	bra.w loc_03481c

loc_034804:
	movea.l #loc_033f88,a0
	bsr.w loc_0328d2
	movea.l #loc_035118,a0
	bsr.w loc_0328aa
	bra.w loc_03481c

loc_03481c:
	clr.b ($2f6,a4)
	bra.w loc_0328b0

loc_034824:
	cmpi.w #$30,($340,a4)
	blt.w loc_0328b0
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$b4,($36c,a4)
	bgt.w loc_0348a0
	jsr RandomNumberGod
	lea loc_034858(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_034858:
	dc.w $0003,$003c
	dc.l loc_03487a
	dc.w $000a
	dc.l loc_034888
	dc.w $000a
	dc.l loc_03486c

;--------------------------
loc_03486c:
	movea.l #loc_033e44,a0
	bsr.w loc_0328d2
	bra.w loc_0348a0

loc_03487a:
	movea.l #loc_033f88,a0
	bsr.w loc_0328d2
	bra.w loc_0348a0

loc_034888:
	movea.l #loc_034092,a0
	bsr.w loc_0328d2

loc_034892:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_034892

loc_0348a0:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	cmpi.w #-$800,d0
	bcs.w loc_0348d2
	clr.b ($2f6,a4)
	bsr.w loc_036a22
	jsr loc_02e2d0
	bsr.w loc_036a22
	jsr loc_02e308

loc_0348d2:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_0348ee(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0348ee:
	dc.w $0003,$0050
	dc.l loc_03493e
	dc.w $0014
	dc.l loc_034902
	dc.w $0014
	dc.l loc_034922

;--------------------------
loc_034902:
	cmpi.w #$60,($340,a4)
	blt.w loc_03493e
	btst #1,($246,a4)
	beq.w loc_0349f8
	bsr.w loc_0365c6
	beq.w loc_0349f8
	bra.w loc_03493e

loc_034922:
	cmpi.w #$60,($340,a4)
	blt.w loc_03493e
	btst #1,($246,a4)
	beq.w loc_0349f8
	bsr.w loc_036618
	bne.w loc_0349f8

loc_03493e:
	cmpi.w #$60,($340,a4)
	blt.w loc_0349f8
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_0366ee
	beq.w loc_0328b0
	jsr loc_02e308
	cmpi.w #$b4,($378,a4)
	ble.w loc_034986
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_034986
	st ($3cc,a4)
	bsr.w loc_0366ee
	jsr loc_02e308

loc_034986:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_0349a2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0349a2:
	dc.w $0003,$0050
	dc.l loc_0349b6
	dc.w $000a
	dc.l loc_0349dc
	dc.w $000a
	dc.l loc_0349ea

;--------------------------
loc_0349b6:
	movea.l #loc_033f64,a0
	bsr.w loc_0328d2
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0349f8
	movea.l #loc_033eaa,a0
	bsr.w loc_0328d2
	bra.w loc_0329a6

loc_0349dc:
	movea.l #loc_033d84,a0
	bsr.w loc_0328d2
	bra.w loc_0349f8

loc_0349ea:
	movea.l #loc_033eaa,a0
	bsr.w loc_0328d2
	bra.w loc_0329a6

loc_0349f8:
	clr.b ($2f6,a4)
	bra.w loc_0328b0

;--------------------------
loc_034a00:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_0328b0
	btst #1,($246,a4)
	beq.w loc_0328b0
	btst #3,($24a,a4)
	bne.w loc_0328b0
	cmpi.w #$60,($340,a4)
	blt.w loc_0328b0
	cmpi.w #$a0,($378,a4)
	bgt.w loc_0328b0
	jsr loc_02c78a
	beq.w loc_0328b0
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$64,($378,a4)
	bgt.w loc_034a70
	btst #1,($246,a4)
	beq.w loc_034a84
	bsr.w loc_036618
	jsr loc_02e308
	bra.w loc_034a84

loc_034a70:
	btst #1,($246,a4)
	beq.w loc_034a84
	bsr.w loc_0365c6
	jsr loc_02e308

loc_034a84:
	clr.b ($2f6,a4)
	bra.w loc_0328b0

;--------------------------
loc_034a8c:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_0328b0
	cmpi.w #$40,($340,a4)
	blt.w loc_0328b0
	st ($3c2,a4)
	tst.b ($365,a4)
	beq.w loc_034ab2
	sf ($3c2,a4)

loc_034ab2:
	bsr.w loc_0366a0
	beq.w loc_0328b0
	jsr loc_02e26e
	bgt.w loc_034b30
	blt.w loc_034ad2
	cmpi.w #$24,($36c,a4)
	bgt.w loc_034b30

loc_034ad2:
	move.l #$40004,d0
	jsr loc_02e420
	cmpi.w #$80,($340,a4)
	blt.w loc_034b30
	bset #5,($2f7,a4)
	jsr loc_02e26e
	bne.w loc_034b14
	cmpi.w #$34,($36c,a4)
	bgt.w loc_034b30
	cmpi.w #$34,($36c,a4)
	bgt.w loc_034b14
	move.l #$20004,d0
	bra.b loc_034b1a

loc_034b14:
	move.l #$c0004,d0

loc_034b1a:
	jsr loc_02e420
	bset #5,($2f7,a4)
	jsr loc_02e346
	bra.w loc_034b30

loc_034b30:
	clr.b ($2f6,a4)
	bra.w loc_0328b0

;--------------------------
loc_034b38:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_0328b0
	btst #1,($246,a4)
	beq.w loc_0328b0
	btst #3,($24a,a4)
	bne.w loc_0328b0
	cmpi.w #$c0,($340,a4)
	blt.w loc_0328b0
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$32,($36c,a4)
	bgt.w loc_034bbc
	move.b #2,($2f6,a4)
	bsr.w loc_036a22
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_036972
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_034c44

loc_034bbc:
	bsr.w loc_036800
	jsr loc_02e26e
	bgt.w loc_034bd2
	blt.w loc_034c98
	bra.w loc_034cce

loc_034bd2:
	cmpi.w #$60,($340,a4)
	blt.w loc_034cce
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_034bf4
	btst #1,($362,a4)
	bne.w loc_034c44

loc_034bf4:
	cmpi.w #$40,($340,a4)
	blt.w loc_034cce
	cmpi.w #$c0,($340,a4)
	blt.w loc_034c32
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_034c32
	btst #1,($246,a4)
	beq.w loc_034cce
	bsr.w loc_0365c6
	beq.w loc_034c32
	jsr loc_02e308
	bra.w loc_034cce

loc_034c32:
	st ($3cc,a4)
	bsr.w loc_0366ee
	jsr loc_02e308
	bra.w loc_034cce

loc_034c44:
	cmpi.w #$40,($340,a4)
	blt.w loc_034cce
	bsr.w loc_0367c4
	jsr loc_02e26e
	bgt.w loc_034cc8
	blt.w loc_034c64
	bra.w loc_034cc8

loc_034c64:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_034c8a
	jsr loc_02c78a
	beq.w loc_034c8a
	bsr.w loc_036618
	jsr loc_02e308
	bra.w loc_034cce

loc_034c8a:
	movea.l #loc_034a8c,a0
	bsr.w loc_0328aa
	bra.w loc_034cce

loc_034c98:
	cmpi.w #$c0,($340,a4)
	blt.w loc_034cce
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_034cce
	btst #1,($246,a4)
	beq.w loc_034cce
	bsr.w loc_036618
	jsr loc_02e308
	bra.w loc_034cce

loc_034cc8:
	jsr loc_02e308

loc_034cce:
	clr.b ($2f6,a4)
	bra.w loc_0328b0

;--------------------------
loc_034cd6:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_0328b0
	btst #1,($246,a4)
	beq.w loc_0328b0
	cmpi.w #$70,($340,a4)
	blt.w loc_0328b0
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	tst.b ($365,a4)
	beq.w loc_034d14
	move.b #2,($2f6,a4)

loc_034d14:
	bsr.w loc_036a22
	beq.w loc_0328b0
	jsr loc_02e26e
	beq.w loc_034d5a

loc_034d26:
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_034d82
	clr.b ($2f6,a4)
	tst.b ($365,a4)
	beq.w loc_034d42
	move.b #2,($2f6,a4)

loc_034d42:
	bsr.w loc_036a22
	jsr loc_02e2d0
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_034d82
	bra.b loc_034d26

loc_034d5a:
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_034d66:
	move.w d0,($4d4,a4)
	bsr.w loc_036a22
	jsr loc_02e2d0
	tst.b ($271,a4)
	bne.b loc_034d26
	move.w ($4d4,a4),d0
	dbra d0,loc_034d66

loc_034d82:
	clr.b ($2f6,a4)
	bra.w loc_0328b0

;--------------------------
loc_034d8a:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_0328b0
	btst #1,($246,a4)
	beq.w loc_0328b0
	btst #3,($24a,a4)
	bne.w loc_0328b0
	cmpi.w #$30,($340,a4)
	blt.w loc_0328b0
	clr.b ($2f6,a4)

loc_034db8:
	cmpi.w #$37,($36c,a4)
	bgt.w loc_034dee
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_034dee
	move.b #2,($2f6,a4)
	bsr.w loc_036972
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_034ef0
	bra.b loc_034db8

loc_034dee:
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_034ec0
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_034ece
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_034ea4
	btst #2,($361,a4)
	bne.w loc_034e5a
	cmpi.w #$3c,($36c,a4)
	ble.w loc_034e3e
	bra.w loc_034e5a

loc_034e30:
	cmpi.w #$4b,($36c,a4)
	ble.w loc_034e5a
	bra.w loc_034ef0

loc_034e3e:
	move.b #2,($2f6,a4)
	bsr.w loc_0368a6
	jsr loc_02e26e
	beq.w loc_034ef0
	bgt.w loc_034e88
	bra.w loc_034ea4

loc_034e5a:
	tst.b ($365,a4)
	beq.w loc_034ef0
	cmpi.w #$50,($36c,a4)
	bgt.w loc_034e88
	move.b #$2,($2f6,a4)
	bsr.w loc_036800
	jsr loc_02e26e
	beq.w loc_034ef0
	bgt.w loc_034e88
	bra.w loc_034ef0

loc_034e88:
	cmpi.w #$60,($340,a4)
	blt.w loc_034ef0
	st ($3cc,a4)
	bsr.w loc_0366ee
	jsr loc_02e308
	bra.w loc_034ef0

loc_034ea4:
	cmpi.w #$60,($340,a4)
	blt.w loc_034ef0
	st ($3cc,a4)
	bsr.w loc_036654
	jsr loc_02e308
	bra.w loc_034ef0

loc_034ec0:
	movea.l #loc_033eaa,a0
	bsr.w loc_0328aa
	bra.w loc_034ef0

loc_034ece:
	btst #1,($362,a4)
	bne.w loc_034ee6
	bsr.w loc_0367a6
	jsr loc_02e308
	bra.w loc_034ef0

loc_034ee6:
	bsr.w loc_0367c4
	jsr loc_02e308

loc_034ef0:
	clr.b ($2f6,a4)
	bra.w loc_0328b0

;--------------------------
loc_034ef8:
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_0328b0
	btst #1,($246,a4)
	beq.w loc_0328b0
	cmpi.w #$64,($378,a4)
	bgt.w loc_0328b0
	cmpi.w #$30,($340,a4)
	blt.w loc_0328b0
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_0368a6
	beq.w loc_0328b0
	cmpi.w #7,($2fe,a4)
	beq.w loc_034f78
	jsr loc_02e26e
	beq.w loc_0350b6
	jsr loc_02e496
	jsr loc_02e550
	jsr loc_02e308
	cmpi.w #$64,($378,a4)
	bgt.w loc_0328b0
	bsr.w loc_036800
	jsr loc_02e308
	bra.w loc_0350b6

loc_034f78:
	jsr loc_02e26e
	beq.w loc_0350b6
	jsr loc_02e2d0
	cmpi.w #$40,($340,a4)
	blt.w loc_0350b0
	bsr.w loc_0368a6
	jsr loc_02e26e
	beq.w loc_0350b6
	blt.w loc_035008
	cmpi.w #$40,($340,a4)
	blt.w loc_035038

loc_034fae:
	jsr loc_02e2d0
	btst #1,($362,a4)
	beq.w loc_034fe6
	jsr RandomNumberGod
	lea loc_034fd2(pc),a0
	jsr loc_02decc
	bra.w loc_0350b0

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_034fd2:
	dc.w $0003,$0050
	dc.l loc_0367c4
	dc.w $001e
	dc.l loc_0367e2
	dc.w $000a
	dc.l loc_0367a6

;--------------------------
loc_034fe6:
	jsr RandomNumberGod
	lea loc_034ffa(pc),a0
	jsr loc_02decc
	bra.w loc_0350b0

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_034ffa:
	dc.w $0002,$0014
	dc.l loc_0367c4
	dc.w $0050
	dc.l loc_0367a6


;--------------------------
loc_035008:
	cmpi.w #$40,($340,a4)
	blt.w loc_035038
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_035038
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_036744
	jsr loc_02e308
	bra.w loc_0350b6

loc_035038:
	jsr loc_02e2d0
	bsr.w loc_0368a6
	jsr loc_02e26e
	bgt.w loc_03506c
	blt.w loc_03506c
	bra.w loc_0350b0

loc_035054:
	cmpi.w #$c0,($340,a4)
	blt.w loc_0350b0
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0350b0

loc_03506c:
	jsr loc_02c78a
	beq.w loc_0350b0
	jsr RandomNumberGod
	lea loc_035086(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_035086:
	dc.w $0002,$001e
	dc.l loc_035094
	dc.w $001e
	dc.l loc_0350a2

;--------------------------
loc_035094:
	bsr.w loc_036618
	jsr loc_02e308
	bra.w loc_0350b6

loc_0350a2:
	bsr.w loc_0365c6
	jsr loc_02e308
	bra.w loc_0350b6

loc_0350b0:
	jsr loc_02e308

loc_0350b6:
	clr.b ($2f6,a4)
	bra.w loc_0328b0

;--------------------------
loc_0350be:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0328b0
	btst #1,($246,a4)
	beq.w loc_0328b0
	btst #3,($24a,a4)
	bne.w loc_0328b0
	cmpi.w #$40,($340,a4)
	blt.w loc_0328b0
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$40,($340,a4)
	blt.w loc_035110
	st ($3c5,a4)
	bsr.w loc_036654
	jsr loc_02e308

loc_035110:
	clr.b ($2f6,a4)
	bra.w loc_0328b0

;--------------------------
loc_035118:
	move.l ($4d6,a4),($4e2,a4)
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0328c0
	btst #1,($246,a4)
	beq.w loc_0328b0
	btst #3,($24a,a4)
	bne.w loc_0328b0
	cmpi.w #$60,($340,a4)
	blt.w loc_0328b0
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_033d84,a0
	bsr.w loc_0328d2
	movea.l #loc_033eaa,a0
	bsr.w loc_0328d2

loc_03516c:
	jsr loc_0226b4
	movea.l #loc_0340da,a0
	bsr.w loc_0328aa
	move.l ($4e2,a4),($4d6,a4)
	btst #1,($246,a4)
	beq.b loc_03516c
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_0351a6(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0351a6:
	dc.w $0003,$001e
	dc.l loc_0351c8
	dc.w $001e
	dc.l loc_0351fe
	dc.w $000a
	dc.l loc_0351ba

;--------------------------
loc_0351ba:
	movea.l #loc_034ef8,a0
	bsr.w loc_0328aa
	bra.w loc_0353a6

loc_0351c8:
	cmpi.w #$2c,($36c,a4)
	bgt.w loc_035234
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_035234
	move.b #2,($2f6,a4)
	bsr.w loc_036a22
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_0353a6
	bra.b loc_0351c8

loc_0351fe:
	cmpi.w #$2c,($36c,a4)
	bgt.w loc_0352ee
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0352ee
	move.b #2,($2f6,a4)
	bsr.w loc_036972
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_0353a6
	bra.b loc_0351fe

loc_035234:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_035398
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_0353a6
	move.b #2,($2f6,a4)
	bsr.w loc_0368a6
	jsr loc_02e26e
	bgt.w loc_035298
	blt.w loc_035268
	bra.w loc_0353a6

loc_035268:
	cmpi.w #$60,($340,a4)
	blt.w loc_0353a6
	jsr loc_02c78a
	beq.w loc_03528a
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0352cc

loc_03528a:
	movea.l #loc_034a8c,a0
	bsr.w loc_0328aa
	bra.w loc_0353a6

loc_035298:
	cmpi.w #$60,($340,a4)
	blt.w loc_0353a6
	jsr loc_02c78a
	beq.w loc_0352ba
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0352cc

loc_0352ba:
	st ($3cc,a4)
	bsr.w loc_0366ee
	jsr loc_02e308
	bra.w loc_0353a6

loc_0352cc:
	cmpi.w #$a0,($340,a4)
	blt.w loc_0353a6
	btst #1,($246,a4)
	beq.w loc_0353a6
	bsr.w loc_0365c6
	jsr loc_02e308
	bra.w loc_0353a6

loc_0352ee:
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_0353a6
	move.b #2,($2f6,a4)
	bsr.w loc_0368a6
	jsr loc_02e26e
	bgt.w loc_035342
	blt.w loc_035314
	bra.w loc_0353a6

loc_035314:
	cmpi.w #$60,($340,a4)
	blt.w loc_0353a6
	jsr loc_02c78a
	beq.w loc_035334
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.b loc_0352cc

loc_035334:
	movea.l #loc_034a8c,a0
	bsr.w loc_0328aa
	bra.w loc_0353a6

loc_035342:
	cmpi.w #$60,($340,a4)
	blt.w loc_0353a6
	jsr loc_02c78a
	beq.w loc_035364
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_035376

loc_035364:
	st ($3cc,a4)
	bsr.w loc_0366ee
	jsr loc_02e308
	bra.w loc_0353a6

loc_035376:
	cmpi.w #$a0,($340,a4)
	blt.w loc_0353a6
	btst #1,($246,a4)
	beq.w loc_0353a6
	bsr.w loc_036618
	jsr loc_02e308
	bra.w loc_0353a6

loc_035398:
	movea.l #loc_034d8a,a0
	bsr.w loc_0328aa
	bra.w loc_0353a6

loc_0353a6:
	clr.b ($2f6,a4)
	bra.w loc_0328c0

;--------------------------
loc_0353ae:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0328b0
	btst #1,($246,a4)
	beq.w loc_0328b0
	btst #3,($24a,a4)
	bne.w loc_0328b0
	cmpi.w #$60,($340,a4)
	blt.w loc_0353f0
	movea.l #loc_033eaa,a0
	bsr.w loc_0328d2

loc_0353e2:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_0353e2

loc_0353f0:
	clr.b ($2f6,a4)
	bra.w loc_0328b0

;--------------------------
loc_0353f8:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0328b0
	btst #1,($246,a4)
	beq.w loc_0328b0
	btst #3,($24a,a4)
	bne.w loc_0328b0
	clr.b ($2f6,a4)
	cmpi.w #$64,($378,a4)
	blt.w loc_0328b0
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_033f64,a0
	bsr.w loc_0328d2
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	beq.w loc_035482
	jsr RandomNumberGod
	lea loc_035462(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_035462:
	dc.w $0005,$0014
	dc.l loc_0354d8
	dc.w $0014
	dc.l loc_035508
	dc.w $0014
	dc.l loc_0354b2
	dc.w $0014
	dc.l loc_0354f0
	dc.w $0014
	dc.l loc_0354ca

;--------------------------
loc_035482:
	jsr RandomNumberGod
	lea loc_035492(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_035492:
	dc.w $0005,$0014
	dc.l loc_035508
	dc.w $0014
	dc.l loc_0354d8
	dc.w $0014
	dc.l loc_0354b2
	dc.w $0014
	dc.l loc_0354f0
	dc.w $0014
	dc.l loc_0354ca

;--------------------------
loc_0354b2:
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_036654
	jsr loc_02e308
	bra.w loc_035516

loc_0354ca:
	movea.l #loc_0358da,a0
	bsr.w loc_0328aa
	bra.w loc_035516

loc_0354d8:
	cmpi.w #$46,($378,a4)
	bgt.w loc_035508
	movea.l #loc_034d8a,a0
	bsr.w loc_0328aa
	bra.w loc_035516

loc_0354f0:
	cmpi.w #$32,($378,a4)
	bgt.w loc_035508
	movea.l #loc_034a8c,a0
	bsr.w loc_0328aa
	bra.w loc_035516

loc_035508:
	movea.l #loc_03465e,a0
	bsr.w loc_0328aa
	bra.w loc_035516

loc_035516
	clr.b ($2f6,a4)
	bra.w loc_0328b0

;--------------------------
loc_03551e:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0328b0
	btst #1,($246,a4)
	beq.w loc_0328b0
	btst #3,($24a,a4)
	bne.w loc_0328b0
	cmpi.w #$c0,($340,a4)
	blt.w loc_0328b0
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	beq.w loc_0355e6
	cmpi.w #$64,($378,a4)
	bgt.w loc_0328b0
	bsr.w loc_0367c4
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_0355bc
	blt.w loc_035588
	bra.w loc_03564e

loc_035588:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0355ae
	jsr loc_02c78a
	beq.w loc_0355ae
	bsr.w loc_0365c6
	jsr loc_02e308
	bra.w loc_03564e

loc_0355ae:
	movea.l #loc_034a8c,a0
	bsr.w loc_0328aa
	bra.w loc_03564e

loc_0355bc:
	jsr RandomNumberGod
	cmpi.w #$f000,d0
	bcs.w loc_0355d8
	movea.l #loc_034d8a,a0
	bsr.w loc_0328aa
	bra.w loc_03564e

loc_0355d8:
	movea.l #loc_03465e,a0
	bsr.w loc_0328aa
	bra.w loc_03564e

loc_0355e6:
	cmpi.w #$32,($378,a4)
	bgt.w loc_03564e
	bsr.w loc_0367a6
	jsr loc_02e26e
	bgt.w loc_03564e
	blt.w loc_035606
	bra.w loc_03564e

loc_035606:
	cmpi.w #$28,($36c,a4)
	bgt.w loc_035644
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_035636
	jsr loc_02c78a
	beq.w loc_035636
	bsr.w loc_0365c6
	jsr loc_02e308
	bra.w loc_03564e

loc_035636:
	movea.l #loc_034a8c,a0
	bsr.w loc_0328aa
	bra.w loc_03564e

loc_035644:
	movea.l #loc_034d8a,a0
	bsr.w loc_0328aa

loc_03564e:
	clr.b ($2f6,a4)
	bra.w loc_0328b0

;--------------------------
loc_035656:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0328b0
	btst #1,($246,a4)
	beq.w loc_0328b0
	btst #3,($24a,a4)
	bne.w loc_0328b0
	cmpi.w #$c0,($340,a4)
	blt.w loc_0328b0
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_0356a0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0356a0:
	dc.w $0003,$0014
	dc.l loc_0356b4
	dc.w $0014
	dc.l loc_03570a
	dc.w $0014
	dc.l loc_035742

;--------------------------
loc_0356b4:
	cmpi.w #$1e,($36c,a4)
	bgt.w loc_0328b0
	btst #1,($362,a4)
	beq.w loc_0356e4
	move.b #2,($2f6,a4)
	bsr.w loc_036972
	jsr loc_02e26e
	bgt.w loc_0357b0
	blt.w loc_0357ca
	bra.w loc_035810

;--------------------------
loc_0356e4:
	cmpi.w #$28,($36c,a4)
	bgt.w loc_0328b0
	bsr.w loc_0367a6
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_035780
	blt.w loc_0357d8
	bra.w loc_035810

;--------------------------
loc_03570a:
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$46,($36c,a4)
	bgt.w loc_035810
	move.b #2,($2f6,a4)
	bsr.w loc_036800
	jsr loc_02e26e
	jsr loc_02e26e
	bgt.w loc_035780
	blt.w loc_0357d8
	bra.w loc_035810

;--------------------------
loc_035742:
	cmpi.w #$1e, ($36c,a4)
	bgt.w loc_0328b0
	move.b #2,($2f6,a4)
	bsr.w loc_036972
	jsr loc_02e308
	bsr.w loc_036972
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_03465e,a0
	bsr.w loc_0328aa
	bra.w loc_035810

loc_035780:
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_0367c4
	jsr loc_02e26e
	bgt.w loc_035810
	blt.w loc_0357ca
	bra.w loc_035810

;--------------------------
loc_0357a2:
	movea.l #loc_034a8c,a0
	bsr.w loc_0328aa
	bra.w loc_035810

loc_0357b0:
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_03465e,a0
	bsr.w loc_0328aa
	bra.w loc_035810

loc_0357ca:
	movea.l #loc_0350be,a0
	bsr.w loc_0328aa
	bra.w loc_035810

loc_0357d8:
	jsr loc_02e496
	jsr loc_02e550
	jsr loc_02c78a
	beq.b loc_0357a2
	bsr.w loc_036618
	beq.w loc_0357fe
	jsr loc_02e308
	bra.w loc_035810

loc_0357fe:
	st ($3cc,a4)
	bsr.w loc_0366ee
	jsr loc_02e308
	bra.w loc_035810

loc_035810
	clr.b ($2f6,a4)
	bra.w loc_0328b0

;--------------------------
loc_035818:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0328b0
	btst #1,($246,a4)
	beq.w loc_0328b0
	btst #3,($24a,a4)
	bne.w loc_0328b0
	cmpi.w #$c0,($340,a4)
	blt.w loc_0328b0
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	move.w #1,d0

loc_035856:
	move.w d0,($4d4,a4)
	cmpi.w #$a0,($378,a4)
	bgt.w loc_03586e
	movea.l #loc_033e44,a0
	bsr.w loc_0328d2

loc_03586e:
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_0366ee
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0358bc
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_0366ee
	jsr loc_02e308

loc_0358bc:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_0358d2
	move.w ($4d4,a4),d0
	dbra d0,loc_035856

loc_0358d2:
	clr.b ($2f6,a4)
	bra.w loc_0328c0

;--------------------------
loc_0358da:
	move.b ($361,a4),d0
	andi.b #$61,d0
	bne.w loc_0328b0
	btst #1,($246,a4)
	beq.w loc_0328b0
	btst #3,($24a,a4)
	bne.w loc_0328b0
	cmpi.w #$70,($340,a4)
	blt.w loc_0328b0
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_035924(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_035924:
	dc.w $000d,$000a
	dc.l loc_0359d8
	dc.w $000a
	dc.l loc_035c1c
	dc.w $000a
	dc.l loc_035a82
	dc.w $000a
	dc.l loc_035a20
	dc.w $000a
	dc.l loc_035b86
	dc.w $000a
	dc.l loc_035a4a
	dc.w $000a
	dc.l loc_035aa4
	dc.w $0005
	dc.l loc_035aec
	dc.w $0005
	dc.l loc_035b58
	dc.w $0005
	dc.l loc_0359f4
	dc.w $0005
	dc.l loc_035bca
	dc.w $0005
	dc.l loc_0359c0
	dc.w $0005
	dc.l loc_035974

;--------------------------
loc_035974:
	movea.l #loc_033f88,a0
	bsr.w loc_0328d2
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_036780
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_0365c6
	beq.w loc_0359b2
	jsr loc_02e308
	bra.w loc_035cce

loc_0359b2:
	bsr.w loc_0366a0
	jsr loc_02e308
	bra.w loc_035cce

;--------------------------
loc_0359c0:
	cmpi.w #$a0,($36c,a4)
	bgt.w loc_035cce
	bsr.w loc_036780
	jsr loc_02e308
	bra.w loc_035cce

;--------------------------
loc_0359d8:
	cmpi.w #$28,($36c,a4)
	bgt.w loc_035cce
	sf ($3cc,a4)
	bsr.w loc_036744
	jsr loc_02e308
	bra.w loc_035cce

;--------------------------
loc_0359f4:
	sf ($3cc,a4)
	bsr.w loc_036654
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	sf ($3cc,a4)
	bsr.w loc_036654
	jsr loc_02e308
	bra.w loc_035cce

;--------------------------
loc_035a20:
	movea.l #loc_034092,a0
	bsr.w loc_0328d2
	move.l #$100002,d0
	jsr loc_02e420
	move.b #2,($2f6,a4)
	bsr.w loc_036800
	jsr loc_02e308
	bra.w loc_035cce

;--------------------------
loc_035a4a:
	cmpi.w #$32,($378,a4)
	bgt.w loc_035cce
	jsr loc_02c78a
	beq.w loc_035cce
	movea.l #loc_034092,a0
	bsr.w loc_0328d2
	move.l #$100002,d0
	jsr loc_02e420
	bsr.w loc_0365c6
	jsr loc_02e308
	bra.w loc_035cce

;--------------------------
loc_035a82:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_035cce
	movea.l #loc_034092,a0
	bsr.w loc_0328d2
	bsr.w loc_036800
	jsr loc_02e308
	bra.w loc_035cce

;--------------------------
loc_035aa4:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_035cce
	jsr loc_02c78a
	beq.w loc_035cce
	movea.l #loc_033f88,a0
	bsr.w loc_0328d2
	jsr loc_02e308
	movea.l #loc_0340b6,a0
	bsr.w loc_0328d2
	move.l #$60006,d0
	jsr loc_02e420
	bsr.w loc_0365c6
	jsr loc_02e308
	bra.w loc_035cce

;--------------------------
loc_035aec:
	cmpi.w #$60,($340,a4)
	blt.w loc_035cce
	bsr.w loc_0367e2
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($362,a4)
	beq.w loc_035b16

loc_035b16:
	jsr RandomNumberGod
	lea loc_035b26(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_035b26:
	dc.w $0002,$001e
	dc.l loc_035cc0
	dc.w $001e
	dc.l loc_035c76

;--------------------------
loc_035b34:
	jsr RandomNumberGod
	lea loc_035b44(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_035b44:
	dc.w $0003,$0014
	dc.l loc_035ca4
	dc.w $0014
	dc.l loc_035cc0
	dc.w $0014
	dc.l loc_035c44

;--------------------------
loc_035b58:
	bsr.w loc_036a22
	jsr loc_02e308
	bsr.w loc_036a22
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_0368a6
	jsr loc_02e308
	bra.w loc_035cce

;--------------------------
loc_035b86:
	cmpi.w #$50,($378,a4)
	bgt.w loc_035cce
	bsr.w loc_036800
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_035bb6(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_035bb6:
	dc.w $0003,$0014
	dc.l loc_035c64
	dc.w $0014
	dc.l loc_035c88
	dc.w $0014
	dc.l loc_035c76

;--------------------------
loc_035bca:
	cmpi.w #$64,($378,a4)
	blt.w loc_035cce
	jsr RandomNumberGod
	andi.w #3,d0
	addq.w #1,d0

loc_035be0:
	move.w d0,($4d4,a4)
	move.b #2,($2f6,a4)
	bsr.w loc_036972
	jsr loc_02e2d0
	move.w ($4d4,a4),d0
	dbra d0,loc_035be0
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_034a8c,a0
	bsr.w loc_0328aa
	bra.w loc_035cce

;--------------------------
loc_035c1c:
	sf ($3cc,a4)
	bsr.w loc_0366a0
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_034a8c,a0
	bsr.w loc_0328aa
	bra.w loc_035cce

loc_035c44:
	movea.l #loc_034d8a,a0
	bsr.w loc_0328d2
	bra.w loc_035cce

loc_035c52:
	clr.b ($2f6,a4)
	bsr.w loc_0368a6
	jsr loc_02e308
	bra.w loc_035cce

loc_035c64:
	clr.b ($2f6,a4)
	bsr.w loc_036800
	jsr loc_02e308
	bra.w loc_035cce

loc_035c76:
	clr.b ($2f6,a4)
	movea.l #loc_034a8c,a0
	bsr.w loc_0328aa
	bra.w loc_0329a6

loc_035c88:
	clr.b ($2f6,a4)
	jsr RandomNumberGod
	smi ($3cc,a4)
	bsr.w loc_036654
	jsr loc_02e308
	bra.w loc_035cce

loc_035ca4:
	bsr.w loc_0367c4
	jsr loc_02e308
	bra.w loc_035cce

loc_035cb2:
	bsr.w loc_0367a6
	jsr loc_02e308
	bra.w loc_035cce

loc_035cc0:
	bsr.w loc_0367e2
	jsr loc_02e308
	bra.w loc_035cce

;--------------------------
loc_035cce:
	clr.b ($2f6,a4)
	bra.w loc_0328b0

;-------------------------;
; Character Palette Table ;
;-------------------------;
;ShoPalTableA: ;035cd6
ShoTblPal0:
	dc.l loc_035eaa,loc_035f4a,loc_035e4a,loc_035e2a
	dc.l loc_035fea,loc_03600a,loc_03602a,loc_03604a
	dc.l loc_03606a,loc_03608a,loc_035e6a,loc_035e8a
	dc.l loc_0360aa,loc_0360ca,loc_0360ea,loc_03610a
	dc.l 0

;ShoPalTableB:
loc_035d1a
	dc.l loc_035eca,loc_035f6a,loc_035e4a,loc_035e2a
	dc.l loc_035fea,loc_03600a,loc_03602a,loc_03604a
	dc.l loc_03606a,loc_03608a,loc_035e6a,loc_035e8a
	dc.l loc_0360aa,loc_0360ca,loc_0360ea,loc_03610a
	dc.l 0

;ShoPalTableC:
loc_035d5e:
	dc.l loc_035eea,loc_035f8a,loc_035e4a,loc_035e2a
	dc.l loc_035fea,loc_03600a,loc_03602a,loc_03604a
	dc.l loc_03606a,loc_03608a,loc_035e6a,loc_035e8a
	dc.l loc_0360aa,loc_0360ca,loc_0360ea,loc_03610a
	dc.l 0

;ShoPalTableD:
loc_035da2:
	dc.l loc_035f0a,loc_035fca,loc_035e4a,loc_035e2a
	dc.l loc_035fea,loc_03600a,loc_03602a,loc_03604a
	dc.l loc_03606a,loc_03608a,loc_035e6a,loc_035e8a
	dc.l loc_0360aa,loc_0360ca,loc_0360ea,loc_03610a
	dc.l 0

;JinPalTableA:
loc_035de6:
	dc.l loc_035f2a,loc_035faa,loc_035e4a,loc_035e2a
	dc.l loc_035fea,loc_03600a,loc_03602a,loc_03604a
	dc.l loc_03606a,loc_03608a,loc_035e6a,loc_035e8a
	dc.l loc_0360aa,loc_0360ca,loc_0360ea,loc_03610a
	dc.l 0

ShoPalTBL05:
	dc.l shopalmain05,loc_035fca,loc_035e4a,loc_035e2a
	dc.l loc_035fea,loc_03600a,loc_03602a,loc_03604a
	dc.l loc_03606a,loc_03608a,loc_035e6a,loc_035e8a
	dc.l loc_0360aa,loc_0360ca,loc_0360ea,loc_03610a
	dc.l 0

;=====================;
; Palette start 35e2a ;
;=====================;
shopalmain05:
	incbin "char/00sho/pal05.bin"

;shoblk:	incbin "char/00sho/palette/black.bin" ;example
loc_035e2a:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

loc_035e4a:
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

loc_035e6a:
	dc.w $7111,$700a,$601c,$700f,$112f,$713f,$324f,$526f
	dc.w $337f,$539f,$73af,$34bf,$74df,$75ff,$7aff,$7fff

loc_035e8a:
	dc.w $7888,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_035eaa:
	dc.w $6cba,$4fe0,$0421,$3b53,$7e85,$5fc8,$4feb,$0832
	dc.w $1c41,$3f41,$5f73,$7f85,$0776,$7aa9,$7ddc,$6fff

loc_035eca:
	dc.w $6cba,$4fe0,$4222,$2a43,$6d75,$7fb8,$5feb,$5123
	dc.w $0336,$7447,$2669,$578a,$0776,$7aa9,$7ddc,$6fff

loc_035eea:
	dc.w $6cba,$6fc0,$4321,$0b53,$1e84,$6fb8,$4feb,$5271
	dc.w $3492,$66b4,$69d6,$2cf7,$5665,$5aa9,$5ddc,$5ffe

loc_035f0a:
	dc.w $6cba,$4fe0,$4222,$7a42,$0e85,$5fc8,$4feb,$6138
	dc.w $526c,$038f,$34af,$17cf,$0776,$7aa9,$7ddc,$6fff

loc_035f2a:
	dc.w $6cba,$4f90,$6300,$2721,$5851,$0c85,$6ea7,$5a61
	dc.w $4d90,$6fb0,$4fe2,$5fe5,$6667,$79aa,$5cdd,$1fff

loc_035f4a:
	dc.w $6cba,$0d90,$0100,$7610,$5941,$3b74,$5cb8,$0400
	dc.w $0600,$2900,$2d20,$1d51,$0332,$0665,$7998,$6ccc

loc_035f6a:
	dc.w $6cba,$0d90,$0100,$6700,$5930,$3b63,$2ca8,$7000
	dc.w $7000,$7000,$0333,$4455,$0332,$0665,$7998,$6ccc

loc_035f8a:
	dc.w $6cba,$0d90,$0100,$6610,$5941,$3b74,$5cb8,$0344
	dc.w $4455,$4788,$3aaa,$3ccc,$0332,$0665,$7998,$6ccc

loc_035faa:
	dc.w $6cba,$0d90,$0100,$4200,$6400,$5741,$3b74,$0210
	dc.w $2420,$4750,$4970,$4b90,$0332,$0665,$7998,$6ccc

loc_035fca:
	dc.w $6cba,$4c90,$5000,$4720,$7a41,$1c84,$4cb8,$6004
	dc.w $4026,$0048,$406b,$538b,$3221,$7554,$0998,$5bcb

loc_035fea:
	dc.w $6cba,$7b00,$7f00,$5f50,$7f93,$7fd7,$6ff7,$7d00
	dc.w $5f40,$7f60,$5f80,$4fd1,$5f80,$4fd1,$7fea,$7fff

loc_03600a:
	dc.w $6cba,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_03602a:
	dc.w $6cba,$7fff,$7ccf,$799f,$766f,$733f,$700f,$74ff
	dc.w $53cf,$528f,$714f,$700f,$7fff,$3def,$1adf,$57cf

loc_03604a:
	dc.w $6cba,$700f,$733f,$766f,$799f,$7ccf,$7fff,$700f
	dc.w $714f,$528f,$53cf,$74ff,$57cf,$1adf,$3def,$7fff

loc_03606a:
	dc.w $6cba,$750a,$672d,$394f,$796f,$3b8f,$5ccf,$491c
	dc.w $6a3d,$2c6e,$0d9f,$0ebd,$3b39,$5c5b,$1e6d,$7f7f

loc_03608a:
	dc.w $6cba,$4174,$3384,$54a4,$66b5,$18d5,$69e6,$05a2
	dc.w $06b3,$78c4,$0be6,$7df7,$71a6,$23b8,$04da,$55eb

loc_0360aa:
	dc.w $6111,$2008,$2009,$5019,$501a,$002c,$302c,$325e
	dc.w $237f,$439f,$63af,$24bf,$64df,$65ff,$6aff,$6fff

loc_0360ca:
	dc.w $6cba,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_0360ea:
	dc.w $6111,$650a,$360a,$660b,$270b,$380b,$680c,$390c
	dc.w $2a1d,$0b3d,$5c4d,$6d5e,$4e8f,$2faf,$4fcf,$2fdf

loc_03610a:
	dc.w $1110,$5fc1,$6fe2,$5ff8,$3fec,$501a,$302c,$325e
	dc.w $237f,$439f,$63af,$24bf,$64df,$65ff,$6aff,$6fff

;end of palettes

;===================;
; Sho Program Start ;
;===================;
ShoPRGStart:;3612a
	move.l #loc_036c04,($86,a4)
	move.l #loc_03287e,($56,a4)
	move.l #loc_0361c6,($1b6,a4)
	move.l #loc_0361d2,($1ba,a4)
	move.l #loc_0361d8,($1be,a4)
	move.l #loc_036220,($1c2,a4)
	move.l #loc_032852,($1c6,a4)
	move.l #loc_036b16,($1ce,a4)
	move.l #loc_03638a,($1ca,a4)
	move.l #ShoAttkTbl,($1d2,a4)
	move.l #loc_094764,($1d6,a4);Colbox
	move.l #loc_037c7a,($1da,a4)
	move.l #loc_037d2e,($1de,a4)
	move.l #loc_037c9a,($1e2,a4)
	move.l #loc_037c4a,($1e6,a4)
	move.l #loc_037c2e,($1ea,a4)
	move.l #loc_037d62,($1ee,a4)
	bsr.w loc_032826
	andi.w #$f0ff,($2ee,a4)
	move.l #loc_037f76,($2d0,a4)
	rts

;--------------------------
loc_0361c6:
	clr.w ($550,a4)
	jsr loc_02a9c4
	rts

;--------------------------
loc_0361d2:
	clr.w ($550,a4)
	rts

;--------------------------
loc_0361d8:
	cmpi.w #$15,($252,a4)
	beq.w loc_036202
	cmpi.w #$16,($252,a4)
	beq.w loc_036202
	cmpi.w #$17,($252,a4)
	beq.w loc_036202
	cmpi.w #$1c,($252,a4)
	beq.w loc_036202
	bra.b loc_03620e

loc_036202:
	move.w #8,($2c0,a4)
	bclr #5,($24a,a4)

loc_03620e:
	cmpi.w #$18,($252,a4)
	beq.w loc_03621e
	move.w ($2ba,a3),($2ba,a4)

loc_03621e:
	rts

;--------------------------
;special moves
loc_036220:
	lea ($3d0,a4),a0
	jsr loc_02cbba
	move.b ($3d0,a4),d0
	move.b d0,($3c0,a4)
	move.b ($3d4,a4),d0
	move.b d0,($3c1,a4)

;214
	lea ($3d8,a4),a0
	lea loc_036342(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c2,a4)
	or.b d0,($3c2,a4)
	andi.b #$aa,($3c2,a4)

;
	lea ($3e0,a4),a0
	lea loc_036356(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c3,a4)
	or.b d0,($3c3,a4)
	andi.b #$55,($3c3,a4)

;
	lea ($3e8,a4),a0
	lea loc_03634c(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c4,a4)
	or.b d0,($3c4,a4)
	andi.b #$55,($3c4,a4)
	cmpi.b #2,($2f1,a4)
	bne.b loc_0362a6
	sf ($3e9,a4)

loc_0362a6:
	lea ($3f0,a4),a0
	lea loc_036360(pc),a1
	move.w #3,d7
	jsr loc_02c946
	and.b d1,($3c5,a4)
	or.b d0,($3c5,a4)
	andi.b #$aa,($3c5,a4)

	lea ($3f8,a4),a0
	lea loc_03636a(pc),a1
	move.w #5,d7
	jsr loc_02c946
	and.b d1,($3c6,a4)
	or.b d0,($3c6,a4)
	andi.b #$55,($3c6,a4)

	lea ($404,a4),a0
	lea loc_03637a(pc),a1
	move.w #5,d7
	jsr loc_02c946
	and.b d1,($3c7,a4)
	or.b d0,($3c7,a4)
	andi.b #$aa,($3c7,a4)


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
	andi.b #$60,d0
	seq d0
	or.b d0,($3ca,a4)
	tst.b ($2fc,a4)
	smi d0
	or.b d0,($3cb,a4)
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Special Move Directional Inputs
loc_036342:;214
	dc.w $0202,$0806,$0a08,$0408,$0a00

loc_03634c:
	dc.w $0804,$0a04,$080a,$0804,$0a00

loc_036356:
	dc.w $0202,$080a,$0608,$0804,$0a00

loc_036360:
	dc.w $0202,$080a,$0608,$0804,$0a00

loc_03636a:
	dc.w $0202,$080a,$0608,$0804,$0c02,$020c,$0a06,$0c00

loc_03637a:
	dc.w $0202,$0806,$0a08,$0408,$0c02,$020c,$060a,$0c00

;--------------------------
loc_03638a:
	bsr.w loc_0363f0
	bne.w loc_03639e
	bsr.w loc_0364aa
	bne.w loc_03639e
	bsr.w loc_036528

loc_03639e:
	rts

;--------------------------
loc_0363a0:
	btst #6,($2f7,a4)
	beq.w loc_0363c6
	move.b ($2f6,a4),d0
	cmpi.b #4,d0
	beq.w loc_0363be
	cmpi.b #8,d0
	bne.w loc_0363c6

loc_0363be:
	bsr.w loc_036576
	bne.w loc_0363ee

loc_0363c6:
	btst #7,($2f7,a4)
	bne.w loc_0363da
	btst #6,($2f7,a4)
	beq.w loc_0363ea

loc_0363da:
	move.b ($2f6,a4),d0
	beq.w loc_0363ea
	bsr.w loc_036598
	bne.w loc_0363ee

loc_0363ea:
	clr.w d0
	rts

loc_0363ee:
	rts

;==========================
loc_0363f0:
	tst.b ($3c6,a4)
	beq.b loc_0363fe
	bsr.w loc_0365c6
	bne.w loc_0364a8

loc_0363fe:
	tst.b ($3c7,a4)
	beq.b loc_03640c
	bsr.w loc_036618
	bne.w loc_0364a8

loc_03640c:
	move.b ($3c2,a4),d0
	andi.b #$f0,d0
	beq.b loc_03641e
	bsr.w loc_0366a0
	bne.w loc_0364a8

loc_03641e:
	move.b ($3c4,a4),d0
	andi.b #$f0,d0
	beq.b loc_036430
	bsr.w loc_036744
	bne.w loc_0364a8

loc_036430:
	bsr.w loc_0363a0
	bne.w loc_0364a8
	move.b ($3c3,a4),d0
	andi.b #$f0,d0
	beq.b loc_03644a
	bsr.w loc_0366ee
	bne.w loc_0364a8

loc_03644a:
	move.b ($3c5,a4),d0
	andi.b #$f0,d0
	beq.b loc_03645c
	bsr.w loc_036654
	bne.w loc_0364a8

loc_03645c:
	move.b ($3c2,a4),d0
	andi.b #$f,d0
	beq.b loc_03646e
	bsr.w loc_0366a0
	bne.w loc_0364a8

loc_03646e:
	move.b ($3c3,a4),d0
	andi.b #$f,d0
	beq.b loc_036480
	bsr.w loc_0366ee
	bne.w loc_0364a8

loc_036480:
	move.b ($3c4,a4),d0
	andi.b #$f,d0
	beq.b loc_036492
	bsr.w loc_036744
	bne.w loc_0364a8

loc_036492:
	move.b ($3c5,a4),d0
	andi.b #$f,d0
	beq.b loc_0364a4
	bsr.w loc_036654
	bne.w loc_0364a8

loc_0364a4:
	clr.w d0
	rts

loc_0364a8:
	rts

;==========================
loc_0364aa:
	tst.b ($3c9,a4)
	beq.b loc_0364b8
	bsr.w loc_0367a6
	bne.w loc_036526

loc_0364b8
	tst.b ($3c8,a4)
	beq.b loc_0364c6
	bsr.w loc_0367c4
	bne.w loc_036526

loc_0364c6
	tst.b ($3ca,a4)
	beq.b loc_0364d4
	bsr.w loc_0367e2
	bne.w loc_036526

loc_0364d4
	btst #7,($2f7,a4)
	beq.b loc_0364e4
	bsr.w loc_036800
	bne.w loc_036526

loc_0364e4
	btst #6,($2f7,a4)
	beq.b loc_0364f4
	bsr.w loc_0368a6
	bne.w loc_036526

loc_0364f4
	btst #5,($2f7,a4)
	beq.b loc_036504
	bsr.w loc_036972
	bne.w loc_036526

loc_036504
	btst #4,($2f7,a4)
	beq.b loc_036514
	bsr.w loc_036a22
	bne.w loc_036526

loc_036514
	tst.b ($3cb,a4)
	beq.b loc_036522
	bsr.w loc_036780
	bne.w loc_036526

loc_036522:
	clr.w d0
	rts

loc_036526
	rts

;==========================
loc_036528:
	tst.b ($209,a4)
	bmi.w loc_036550
	tst.b ($3c1,a4)
	beq.b loc_03653e
	bsr.w loc_036ad2
	bne.w loc_036570

loc_03653e:
	tst.b ($3c0,a4)
	beq.b loc_03654c
	bsr.w loc_036af0
	bne.w loc_036570

loc_03654c:
	clr.w d0
	rts

loc_036550:
	tst.b ($3c0,a4)
	beq.b loc_03655e
	bsr.w loc_036ad2
	bne.w loc_036570

loc_03655e:
	tst.b ($3c1,a4)
	beq.b loc_03656c
	bsr.w loc_036af0
	bne.w loc_036570

loc_03656c:
	clr.w d0
	rts

loc_036570:
	rts

loc_036572:
	clr.w d0
	rts

;--------------------------
loc_036576:
	cmpi.w #8,($be,a4)
	bgt.b loc_036572
	cmpi.w #$1e,($226,a4)
	bgt.b loc_036572
	jsr loc_02a4dc
	beq.b loc_036572
	move.w #$28,d0
	move.w d0,($2fe,a4)
	rts

loc_036598:
	btst #0,($24a,a4)
	bne.b loc_036572
	move.w #$2c,d2
	move.w #-$78,d3
	move.w #-$20,d4
	jsr loc_02de6a
	beq.b loc_036572
	jsr loc_02a518
	beq.b loc_036572
	move.w #$29,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0365c6:
	jsr loc_02c78a
	beq.b loc_036572
	btst #5,($24a,a4)
	beq.b loc_0365de
	tst.w ($550,a4)
	bne.b loc_0365de
	bra.b loc_036572

loc_0365de:
	sf ($3f9,a4)
	tst.b (1,a4)
	bpl.b loc_0365f6
	move.b ($3c6,a4),d0
	andi.b #$cc,d0
	sne ($bc,a4)
	bra.b loc_0365fc

loc_0365f6:
	move.b ($3cc,a4),($bc,a4)

loc_0365fc:
	btst #1,($246,a4)
	beq.b loc_03660e
	move.w #$25,d0
	move.w d0,($2fe,a4)
	rts

loc_03660e:
	move.w #$24,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_036618:
	jsr loc_02c78a
	beq.w loc_036572
	btst #5,($24a,a4)
	beq.b loc_036634
	tst.w ($550,a4)
	bne.b loc_036634
	bra.w loc_036572
 
loc_036634:
	sf ($405,a4)
	btst #1,($246,a4)
	beq.b loc_03664a
	move.w #$26,d0
	move.w d0,($2fe,a4)
	rts

loc_03664a:
	move.w #$27,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_036654:
	btst #5,($24a,a4)
	bne.w loc_036572
	btst #1,($246,a4)
	beq.w loc_036572
	tst.b (1,a4)
	bpl.b loc_03667c
	move.b ($3c5,a4),d0
	andi.b #$cc,d0
	sne ($bc,a4)
	bra.b loc_036682

loc_03667c:
	move.b ($3cc,a4),($bc,a4)

loc_036682:
	sf ($3f1,a4)
	tst.b ($bc,a4)
	bne.b loc_036696
	move.w #$22,d0
	move.w d0,($2fe,a4)
	rts

loc_036696:
	move.w #$23,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0366a0:
	btst #5,($24a,a4)
	bne.w loc_036572
	btst #1,($246,a4)
	beq.w loc_036572
	tst.b (1,a4)
	bpl.b loc_0366c8
	move.b ($3c2,a4),d0
	andi.b #$cc,d0
	sne ($bc,a4)
	bra.b loc_0366ce

loc_0366c8:
	move.b ($3cc,a4),($bc,a4)

loc_0366ce:
	sf ($3d9,a4)
	tst.b ($bc,a4)
	bne.b loc_0366e4
	move.w #$20,d0
	move.w d0,($2fe,a4)
	rts

loc_0366e2:
	bra.b loc_0366ee

loc_0366e4:
	move.w #$21,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0366ee:
	btst #5,($24a,a4)
	bne.w loc_036572
	btst #1,($246,a4)
	beq.w loc_036572
	tst.b ($2b2,a4)
	bne.w loc_036572
	tst.b (1,a4)
	bpl.b loc_03671e
	move.b ($3c3,a4),d0
	andi.b #$cc,d0
	sne ($bc,a4)
	bra.b loc_036724

loc_03671e:
	move.b ($3cc,a4),($bc,a4)

loc_036724:
	sf ($3e1,a4)
	tst.b ($bc,a4)
	bne.b loc_03673a
	move.w #$1d,d0
	move.w d0,($2fe,a4)
	rts

loc_036738:
	bra.b loc_036744

loc_03673a:
	move.w #$1e,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_036744:
	btst #5,($24a,a4)
	bne.w loc_036572
	btst #1,($246,a4)
	beq.w loc_036572
	tst.b (1,a4)
	bpl.b loc_03676c
	move.b ($3c3,a4),d0
	andi.b #$cc,d0
	sne ($bc,a4)
	bra.b loc_036772

loc_03676c:
	move.b ($3cc,a4),($bc,a4)

loc_036772:
	sf ($3e9,a4)
	move.w #$1f,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_036780:
	btst #4,($24a,a4)
	bne.w loc_036572
	btst #1,($246,a4)
	beq.w loc_036572
	tst.w ($552,a4)
	bne.w loc_036572
	move.w #$2c,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0367a6:
	btst #4,($24a,a4)
	bne.w loc_036572
	btst #1,($246,a4)
	beq.w loc_036572
	move.w #$16,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0367c4:
	btst #4,($24a,a4)
	bne.w loc_036572
	btst #1,($246,a4)
	beq.w loc_036572
	move.w #$15,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0367e2:
	btst #4,($24a,a4)
	bne.w loc_036572
	btst #1,($246,a4)
	beq.w loc_036572
	move.w #$17,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_036800:
	btst #1,($246,a4)
	bne.w loc_036848
	btst #0,($24a,a4)
	bne.w loc_036572
	btst #1,($2f6,a4)
	bne.w loc_03683e
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_036834
	move.w #$13,d0
	move.w d0,($2fe,a4)
	rts

loc_036834:
	move.w #$14,d0
	move.w d0,($2fe,a4)
	rts

loc_03683e:
	move.w #$1a,d0
	move.w d0,($2fe,a4)
	rts

loc_036848:
	btst #1,($246,a4)
	beq.w loc_036572
	btst #3,($24a,a4)
	beq.w loc_036874
	btst #1,($24a,a4)
	bne.w loc_036572
	cmpi.b #1,($2c6,a4)
	beq.w loc_036874
	bra.w loc_036572

loc_036874:
	btst #1,($2f6,a4)
	bne.w loc_03689c
	cmpi.w #$28,($226,a4)
	bgt.w loc_036892
	move.w #$a,d0
	move.w d0,($2fe,a4)
	rts

loc_036892:
	move.w #$b,d0
	move.w d0,($2fe,a4)
	rts

loc_03689c:
	move.w #$c,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_0368a6:
	btst #1,($246,a4)
	bne.w loc_0368ee
	btst #0,($24a,a4)
	bne.w loc_036572
	btst #0,($2f6,a4)
	bne.w loc_0368e4
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_0368da
	move.w #$11,d0
	move.w d0,($2fe,a4)
	rts

loc_0368da:
	move.w #$12,d0
	move.w d0,($2fe,a4)
	rts

loc_0368e4:
	move.w #$19,d0
	move.w d0,($2fe,a4)
	rts

loc_0368ee:
	btst #1,($246,a4)
	beq.w loc_036572
	btst #3,($24a,a4)
	bne.w loc_036934

loc_036902:
	btst #1,($2f6,a4)
	bne.w loc_03692a
	cmpi.w #$28,($226,a4)
	bgt.w loc_036920
	move.w #7,d0
	move.w d0,($2fe,a4)
	rts

loc_036920:
	move.w #8,d0
	move.w d0,($2fe,a4)
	rts

loc_03692a:
	move.w #9,d0
	move.w d0,($2fe,a4)
	rts

loc_036934:
	btst #1,($24a,a4)
	bne.w loc_036572
	cmpi.b #1,($2c6,a4)
	beq.b loc_036902
	cmpi.b #3,($2c6,a4)
	beq.w loc_03695e
	cmpi.b #4,($2c6,a4)
	beq.w loc_036968
	bra.w loc_036572

loc_03695e:
	move.w #$1b,d0
	move.w d0,($2fe,a4)
	rts

loc_036968:
	move.w #$1c,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_036972:
	btst #1,($246,a4)
	bne.w loc_0369ba
	btst #0,($24a,a4)
	bne.w loc_036572
	btst #1,($2f6,a4)
	bne.w loc_0369b0
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_0369a6
	move.w #$f,d0
	move.w d0,($2fe,a4)
	rts

loc_0369a6:
	move.w #$10,d0
	move.w d0,($2fe,a4)
	rts

loc_0369b0:
	move.w #$18,d0
	move.w d0,($2fe,a4)
	rts

loc_0369ba:
	btst #1,($246,a4)
	beq.w loc_036572
	btst #3,($24a,a4)
	beq.w loc_0369f0
	btst #1,($24a,a4)
	bne.w loc_036572
	cmpi.b #1,($2c6,a4)
	beq.w loc_0369f0
	cmpi.b #1,($2c6,a4)
	beq.w loc_0369f0
	bra.w loc_036572

loc_0369f0:
	btst #1,($2f6,a4)
	bne.w loc_036a18
	cmpi.w #$20,($226,a4)
	bgt.w loc_036a0e
	move.w #4,d0
	move.w d0,($2fe,a4)
	rts

loc_036a0e:
	move.w #5,d0
	move.w d0,($2fe,a4)
	rts

loc_036a18:
	move.w #6,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_036a22:
	btst #1,($246,a4)
	bne.w loc_036a6a
	btst #0,($24a,a4)
	beq.w loc_036a4a
	btst #1,($24a,a4)
	bne.w loc_036572
	cmpi.b #2,($2c6,a4)
	bne.w loc_036572

loc_036a4a:
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_036a60
	move.w #$d,d0
	move.w d0,($2fe,a4)
	rts

loc_036a60:
	move.w #$e,d0
	move.w d0,($2fe,a4)
	rts

loc_036a6a:
	btst #1,($246,a4)
	beq.w loc_036572
	btst #3,($24a,a4)
	beq.w loc_036aa0
	btst #1,($24a,a4)
	bne.w loc_036572
	cmpi.b #1,($2c6,a4)
	beq.w loc_036aa0
	cmpi.b #1,($2c6,a4)
	beq.w loc_036aa0
	bra.w loc_036572

loc_036aa0:
	btst #1,($2f6,a4)
	bne.w loc_036ab4
	move.w #1,d0
	move.w d0,($2fe,a4)
	rts

loc_036ab4:
	cmpi.w #$20,($226,a4)
	bgt.w loc_036ac8
	move.w #2,d0
	move.w d0,($2fe,a4)
	rts

loc_036ac8:
	move.w #3,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_036ad2:
	btst #3,($24a,a4)
	bne.w loc_036572
	btst #1,($246,a4)
	beq.w loc_036572
	move.w #$2b,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
loc_036af0:
	tst.b ($24a,a4)
	bne.w loc_036572
	btst #1,($246,a4)
	beq.w loc_036572
	btst #4,($248,a4)
	bne.w loc_036572
	move.w #$2a,d0
	move.w d0,($2fe,a4)
	rts

;--------------------------
;sho dash
loc_036b16:
	tst.b (-$3dd,a5)
	bne.w loc_036bca
	tst.b ($271,a4)
	beq.w loc_036b2a
	subq.w #5,($be,a4)

loc_036b2a:
	tst.w ($be,a4)
	ble.w loc_036bca
	tst.b ($249,a4)
	bne.w loc_036bca
	move.w ($be,a4),d2
	subq.w #1,($be,a4)
	btst #1,($246,a4)
	beq.w loc_036b98
	btst #3,($24c,a4)
	beq.w loc_036b70
	btst #5,($24c,a4)
	bne.w loc_036bca
	cmpi.w #$c,($be,a4)
	blt.w loc_036b70
	move.w #$c,($be,a4)

loc_036b70:
	cmpi.w #$c,d2
	blt.w loc_036b7c
	move.w #$c,d2

loc_036b7c:
	lea loc_036bd0(pc),a0
	lsl.w #2,d2
	move.l (a0,d2.w),d0
	tst.b ($bd,a4)
	bpl.w loc_036b90
	neg.l d0

loc_036b90:
	add.l d0,($20e,a4)
	bra.w loc_036bce

loc_036b98:
	btst #3,($24c,a4)
	beq.w loc_036bac
	btst #5,($24c,a4)
	bne.w loc_036bca

loc_036bac:
	move.w #1,($be,a4)
	move.l #$18000,d0
	tst.b ($bd,a4)
	bpl.w loc_036bc2
	neg.l d0

loc_036bc2:
	add.l d0,($20e,a4)
	bra.w loc_036bce

loc_036bca:
	clr.w ($be,a4)

loc_036bce:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_036bd0:
	dc.l $00000000,$00008000,$00010000,$00018000
	dc.l $00020000,$00028000,$00030000,$00038000
	dc.l $00040000,$00048000,$00050000,$00058000
	dc.l $00060000

;--------------------------
loc_036c04:
	tst.b (-$3e4,a5)
	bne.w loc_036c32
	cmpi.w #1,(-$f2e,a5)
	bgt.w loc_036c32
	movea.l #loc_037f12,a0
	clr.w d0
	jsr loc_0226f0

loc_036c24:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_036c24

loc_036c32:
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_036c3c:
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),($bd,a4)

loc_036c4e:
	cmpi.w #$c,($be,a4)
	ble.w loc_036cd8
	btst #2,($24a,a4)
	bne.w loc_036c7e
	move.w #2,d1
	move.b ($209,a4),d0
	cmp.b ($208,a4),d0
	beq.w loc_036c76
	move.w #3,d1

loc_036c76:
	btst d1,($2f6,a4)
	bne.w loc_036ca2

loc_036c7e:
	btst #0,($2f6,a4)
	beq.w loc_036c9a
	tst.w ($20c,a4)
	bne.w loc_036c9a
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_036c9a:
	jsr loc_02269c
	bra.b loc_036c4e

loc_036ca2:
	movea.l #loc_03bbdc,a0
	clr.w d0
	jsr loc_0226f0

loc_036cb0:
	btst #0,($2f6,a4)
	beq.w loc_036ccc
	tst.w ($20c,a4)
	bne.w loc_036ccc
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

;--------------------------
loc_036ccc:
	jsr loc_02269c
	tst.w ($be,a4)
	bne.b loc_036cb0

loc_036cd8:
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_036ce2:
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_036cee:
	jsr loc_02269c
	btst #4,($248,a4)
	bne.w loc_036d1a
	btst #0,($2f6,a4)
	beq.w loc_036d1a
	tst.w ($20c,a4)
	bne.w loc_036d1a
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_036d1a:
	btst #$2,($2e1,a4)
	beq.b loc_036cee
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_036d2c:
	jsr loc_0290f8
	ori.b #$df,($24a,a4)
	jsr loc_02269c
	addi.l #$c800,($21a,a4)
	tst.b ($271,a4)
	bne.w loc_036d60
	btst #1,($246,a4)
	beq.b loc_036d2c
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

loc_036d60:
	movea.l #loc_03992e,a0
	clr.w d0
	jsr loc_0226f0
	move.w ($2ba,a3),($2ba,a4)
	btst #2,($246,a4)
	bne.b loc_036dc0
	btst #3,($246,a4)
	bne.b loc_036dc8
	btst #2,($246,a3)
	bne.b loc_036dc0
	btst #3,($246,a3)
	bne.b loc_036dc8
	btst #2,($248,a4)
	bne.b loc_036da6
	move.l #$20000,($216,a4)
	bra.b loc_036dae

loc_036da6:
	move.l #-$20000,($216,a4)

loc_036dae:
	move.l #-$ce400,($21a,a4)
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

loc_036dc0:
	tst.b ($208,a4)
	bpl.b loc_036dec
	bra.b loc_036dce

loc_036dc8:
	tst.b ($208,a4)
	bmi.b loc_036dec

loc_036dce:
	bclr #3,($248,a4)
	bset #2,($248,a4)
	move.l #-$40000,($216,a4)
	move.l #-$ce400,($21a,a4)
	bra.b loc_036e08

loc_036dec:
	bclr #2,($248,a4)
	bset #3,($248,a4)
	move.l #$40000,($216,a4)
	move.l #-$ce400,($21a,a4)

loc_036e08:
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

loc_036e12:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_036e2a:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_036e2a
	sf ($b6,a4)
	tst.b ($bc,a4)
	bne.w loc_036e56
	move.l #$28000,($216,a4)
	move.l #-$48000,($21a,a4)
	bra.w loc_036e66

loc_036e56:
	move.l #$60000,($216,a4)
	move.l #-$68000,($21a,a4)

loc_036e66:
	jsr loc_02269c
	move.l ($216,a4),d0
	lsr.l #3,d0
	sub.l d0,($216,a4)
	addi.l #$4c00,($21a,a4)
	tst.w ($2c2,a4)
	bne.w loc_036e92
	move.b ($2f7,a4),d6
	andi.b #$aa,d6
	bne.w loc_036e9c

loc_036e92:
	tst.l ($21a,a4)
	bmi.b loc_036e66
	bra.w loc_036f7a

loc_036e9c:
	addi.l #$30000,($216,a4)
	addi.l #-$40000,($21a,a4)
	movea.l #loc_03a2ee,a0
	clr.w d0
	jsr loc_0226f0
	moveq #0,d6

loc_036ebc:
	jsr loc_02269c
	move.l ($216,a4),d0
	lsr.l #3,d0
	sub.l d0,($216,a4)
	addi.l #$4000,($21a,a4)
	tst.w ($2c2,a4)
	bne.w loc_036ee8
	move.b ($2f7,a4),d6
	andi.b #$aa,d6
	bne.w loc_036ef2

loc_036ee8:
	tst.l ($21a,a4)
	bmi.b loc_036ebc
	bra.w loc_036f7a

loc_036ef2:
	movea.l #loc_03a3b8,a0
	clr.w d0
	jsr loc_0226f0

loc_036f00:
	jsr loc_02269c
	btst #0,($2e1,a4)
	beq.b loc_036f00
	addi.l #$20000,($216,a4)
	addi.l #-$20000,($21a,a4)
	clr.b ($273,a4)
	move.w #$13,d7

loc_036f26
	jsr loc_02269c
	addi.l #$8000,($21a,a4)
	tst.b ($273,a4)
	bne.w loc_036f58
	move.b ($246,a4),d0
	andi.b #$c,d0
	beq.w loc_036f50
	tst.l ($21a,a4)
	bmi.w loc_036f58

loc_036f50:
	dbra d7,loc_036f26
	bra.w loc_036f7a

loc_036f58:
	movea.l #loc_03a4ae,a0
	clr.w d0
	jsr loc_0226f0
	move.l #-$20000,($216,a4)
	move.l #-$80000,($21a,a4)
	bra.w loc_036f88

loc_036f7a:
	movea.l #loc_03a488,a0
	clr.w d0
	jsr loc_0226f0

loc_036f88:
	jsr loc_02269c
	addi.l #$8000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_036f88
	clr.l ($216,a4)
	clr.l ($21a,a4)
	movea.l #loc_03a4ec,a0
	clr.w d0
	jsr loc_0226f0

loc_036fb4:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_036fb4
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_036fcc:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_036fe4:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.w loc_037012
	sf ($b6,a4)
	movem.l d2,-(a7)
	move.w #$26,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_037012
	move.b ($bc,a4),($66,a0)

loc_037012:
	btst #2,($2e1,a4)
	beq.b loc_036fe4
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_037024:
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.b ($209,a4),($208,a4)

loc_03703c:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_03705a
	sf ($b9,a4)
	move.w #-$14,d2
	move.w #-$5e,d3
	jsr loc_02c7be

loc_03705a:
	tst.b ($b6,a4)
	beq.b loc_03703c
	sf ($b6,a4)
	move.l #-$20000,($216,a4)
	move.l #-$40000,($21a,a4)
	movem.l d2,-(a7)
	move.w #$27,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_037090
	move.b ($bc,a4),($66,a0)

loc_037090:
	jsr loc_02269c
	addi.l #$3200,($21a,a4)
	tst.b ($b7,a4)
	bne.w loc_0370b2
	btst #1,($246,a4)
	beq.b loc_037090
	bra.w loc_0370d8

loc_0370b2:
	move.l ($216,a4),d0
	add.l d0,($216,a4)
	move.l ($21a,a4),d0
	add.l d0,($21a,a4)

loc_0370c2:
	jsr loc_02269c
	addi.l #$c800,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_0370c2

loc_0370d8:
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

loc_0370e2:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	movea.l #loc_03a4ec,a0
	clr.w d0
	jsr loc_0226f0

loc_0370f8:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_0370f8
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_037110:
	jsr loc_02c7ae
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	move.w #$b,d5
	move.w #2,d4

loc_037136:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_037154
	sf ($b9,a4)
	move.w #-$14,d2
	move.w #-$54,d3
	jsr loc_02c7be

loc_037154:
	tst.b ($b6,a4)
	beq.w loc_037192
	subq.w #1,d5
	movem.l d2,-(a7)
	move.w #$28,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.b loc_03718e
	addi.w #$20,($254,a4)
	tst.w d5
	bgt.b loc_037182
	sf ($66,a0)
	bra.b loc_037188

loc_037182:
	move.b ($b6,a4),($66,a0)

loc_037188:
	move.w d4,($68,a0)
	addq.w #1,d4

loc_03718e:
	sf ($b6,a4)

loc_037192:
	tst.b ($b7,a4)
	beq.b loc_0371a2
	sf ($b7,a4)
	tst.w d5
	ble.w loc_0371a4

loc_0371a2:
	bra.b loc_037136

loc_0371a4:
	movea.l #loc_03acee,a0
	clr.w d0
	jsr loc_0226f0

loc_0371b2:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_0371b2
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_0371ca:
	jsr loc_02c7ae
	btst #1,($246,a4)
	beq.b loc_0371e2
	move.b ($209,a4),($208,a4)
	st d6
	bra.b loc_0371e6

loc_0371e2:
	move.b #1,d6

loc_0371e6:
	sf ($273,a4)
	st ($24a,a4)

loc_0371ee:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_0371ee
	sf ($b9,a4)
	move.w #$18,d2
	move.w #-$48,d3
	jsr loc_02c7be
	move.w #$1d,d7

loc_037210:
	jsr loc_02269c
	tst.b d6
	beq.b loc_037234
	bmi.b loc_037228
	move.w #8,d0
	jsr loc_023178
	bra.b loc_037232

loc_037228:
	move.w #$a,d0
	jsr loc_023178

loc_037232:
	sf d6

loc_037234:
	tst.b ($273,a4)
	beq.b loc_037246
	sf ($273,a4)
	tst.b ($249,a3)
	bne.w loc_03726c

loc_037246:
	dbra d7,loc_037210
	movea.l #loc_03af96,a0
	clr.w d0
	jsr loc_0226f0
	move.l #$10000,($216,a4)
	move.l #-$ce400,($21a,a4)
	bra.w loc_0372e4

loc_03726c:
	btst #2,($249,a3)
	beq.b loc_03727e
	move.l #$48000,($216,a4)
	bra.b loc_037286

loc_03727e:
	move.l #$10000,($216,a4)

loc_037286:
	clr.l ($21a,a4)
	movea.l #loc_03aeac,a0
	clr.w d0
	jsr loc_0226f0
	move.w #$e,d5

loc_03729c:
	jsr RandomNumberGod
	andi.w #$1f,d0
	addi.w #$28,d0
	move.w d0,($290,a4)
	jsr RandomNumberGod
	andi.w #$1f,d0
	addi.w #$fff0,d0
	move.w d0,($292,a4)
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_0372d2
	sf ($b6,a4)
	subq.w #1,d5

loc_0372d2:
	tst.w d5
	bgt.b loc_03729c
	movea.l #loc_03aeee,a0
	clr.w d0
	jsr loc_0226f0

loc_0372e4:
	jsr loc_02269c
	addi.l #$c800,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_0372e4
	clr.l ($216,a4)
	clr.l ($21a,a4)
	movea.l #loc_03a4ec,a0
	clr.w d0
	jsr loc_0226f0

loc_037310:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_037310
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_037328:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	sf ($273,a4)
	move.w #$7fff,d5
	clr.w d4
	move.w #$21,d7

loc_03734e:
	jsr loc_02269c
	tst.b ($273,a4)
	beq.b loc_03736c
	sf ($273,a4)
	move.w #2,d5
	addq.w #1,d7
	bsr.w loc_037414
	bsr.w loc_0373a8

loc_03736c
	subq.w #1,d5
	bpl.b loc_03737e
	move.w #$7fff,d5
	addq.w #1,($27a,a4)
	bclr #7,($24c,a4)

loc_03737e:
	dbra d7,loc_03734e
	movea.l #loc_039da0,a0
	clr.w d0
	jsr loc_0226f0

loc_037390:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_037390
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_0373a8:
	btst #2,($249,a3)
	bne.b loc_0373e0
	cmpi.b #$1a,($24e,a4)
	bne.b loc_0373c0
	move.b #$21,($24e,a4)
	bra.b loc_0373e6

loc_0373c0:
	cmpi.b #$20,($24e,a4)
	bne.b loc_0373d0
	move.b #$21,($24e,a4)
	bra.b loc_0373e6

loc_0373d0:
	cmpi.b #$21,($24e,a4)
	bne.b loc_0373de
	move.b #$20,($24e,a4)

loc_0373de:
	bra.b loc_0373e6

loc_0373e0:
	move.b #$f,($24e,a4)

loc_0373e6:
	move.w ($254,a4),d0
	addq.w #1,d0
	asr.w #2,d0
	sub.w d0,($254,a4)
	cmpi.w #$40,($254,a4)
	bgt.b loc_037400
	move.w #$40,($254,a4)

loc_037400:
	move.w ($256,a4),d0
	addq.w #2,d0
	asr.w #3,d0
	sub.w d0,($256,a4)
	move.w #0,($25a,a4)
	rts

;--------------------------
loc_037414:
	cmpi.w #$30,d4
	bcc.b loc_03742e
	lea loc_039eac(pc),a0
	move.w (a0,d4.w),($290,a4)
	move.w (2,a0,d4.w),($292,a4)
	addq.w #4,d4
	bra.b loc_037432

loc_03742e:
	addq.w #8,($290,a4)

loc_037432:
	rts

;--------------------------
loc_037434:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),d5

loc_037450:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_037450
	sf ($b6,a4)

loc_037460:
	tst.b ($273,a4)
	beq.b loc_037474
	sf ($273,a4)
	btst #2,($249,a3)
	bne.w loc_03748c

loc_037474:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_037460
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_03748c:
	move.b d5,($208,a4)
	movea.l #loc_03a146,a0
	clr.w d0
	jsr loc_0226f0
	move.l #$58000,($216,a4)
	move.l #-$8fc00,($21a,a4)

loc_0374ae:
	jsr loc_02269c
	addi.l #$c800,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_0374ae
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

loc_0374ce:
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
	bpl.w loc_037506
	btst #3,($2f6,a4)
	sne ($c4,a4)

loc_037506:
	move.l #$38000,d2
	move.l #-$70000,d3
	jsr loc_02a59c
	lea loc_037560(pc),a0
	jsr loc_02a554

loc_037522:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.w loc_037544
	sf ($b6,a4)
	tst.b ($c4,a4)
	beq.w loc_037544
	not.b ($208,a4)
	not.b ($208,a3)

loc_037544:
	btst #2,($2e1,a4)
	beq.b loc_037522
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_037560:
	dc.l loc_03b1cc,loc_03b234,loc_03b29c,loc_03b30a
	dc.l loc_03b378,loc_03b3e0,loc_03b44e,loc_03b4b6
	dc.l loc_03b524,loc_03b592,loc_03b1cc,loc_03b1cc
	dc.l loc_03b1cc,loc_03b1cc,loc_03b1cc,loc_03b1cc

;--------------------------
loc_0375a0:
	st ($24a,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	move.l #-$60000,d2
	moveq #0,d3
	jsr loc_02a59c
	lea loc_03766e(pc),a0
	jsr loc_02a554
	move.l #-$10000,d2
	sf ($c4,a4)
	tst.b (1,a4)
	bpl.b loc_0375f6
	btst #3,($2f6,a4)
	beq.b loc_0375e4
	move.l #$28000,d2

loc_0375e4:
	btst #2,($2f6,a4)
	beq.b loc_0375f6
	st ($c4,a4)
	move.l #-$40000,d2

loc_0375f6:
	jsr loc_02269c
	addi.l #$c800,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_037610
	clr.l ($216,a4)

loc_037610:
	tst.b ($b6,a4)
	beq.b loc_0375f6
	sf ($b6,a4)
	move.l d2,($216,a4)
	move.l #-$8fc00,($21a,a4)
	move.l ($22a,a4),d0
	asr.l #8,d0
	divu.w #$18,d0
	ext.l d0
	asl.l #8,d0
	add.l d0,($21a,a4)

loc_037638:
	jsr loc_02269c
	addi.l #$c800,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_037638
	clr.l ($216,a4)
	clr.l ($21a,a4)

loc_037656:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_037656
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03766e:
	dc.l loc_03b748,loc_03b7a8,loc_03b808,loc_03b868
	dc.l loc_03b8c8,loc_03b928,loc_03b988,loc_03b9e8
	dc.l loc_03ba48,loc_03baa8,loc_03b748,loc_03b748
	dc.l loc_03b748,loc_03b748,loc_03b748,loc_03b748

;--------------------------
loc_0376ae:
	st ($24a,a4)

loc_0376b2:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_0376b2
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_0376ca:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_037800
	tst.b ($66,a4)
	bne.b loc_0376f2
	move.l #$38000,($36,a4)
	clr.l ($3a,a4)
	bra.b loc_0376fe

loc_0376f2:
	move.l #$60000,($36,a4)
	clr.l ($3a,a4)

loc_0376fe:
	move.l #$300000,d2
	move.l #-$400000,d3
	jsr loc_0282ea
	movea.l #loc_03a792,a0
	clr.w d0
	jsr loc_027e70
	move.l #loc_037806,($9c,a4)

loc_037726:
	tst.b ($9b,a4)
	bne.w loc_037798
	jsr loc_02805e
	bne.w loc_037798
	jsr loc_028112
	bne.w loc_037792
	jsr loc_027e48
	move.w ($2e,a4),d0
	addi.w #$20,d0
	cmp.w (-$45d6,a5),d0
	blt.w loc_037800
	move.w ($2e,a4),d0
	subi.w #$20,d0
	cmp.w (-$45d4,a5),d0
	bge.w loc_037800
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_037726

loc_037792:
	jsr loc_0281fa

loc_037798:
	clr.l ($9c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	movea.l #loc_03a806,a0
	clr.w d0
	jsr loc_027e70

loc_0377cc:
	btst #2,($53,a4)
	bne.w loc_037800
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_0377cc

loc_037800:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_037806:
	dc.w $fff8,$0008,$fff4,$000c

;--------------------------
loc_03780e:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	jsr loc_02816c
	bmi.w loc_0379ec
	tst.b ($66,a4)
	bne.b loc_03783a
	move.l #$60000,($36,a4)
	move.l #$60000,($3a,a4)
	bra.b loc_03784a

loc_03783a:
	move.l #$60000,($36,a4)
	move.l #$60000,($3a,a4)

loc_03784a:
	move.l #$200000,d2
	move.l #-$380000,d3
	jsr loc_0282ea
	movea.l #loc_03a9c4,a0
	clr.w d0
	jsr loc_027e70
	clr.w ($68,a4)
	clr.w ($6a,a4)

loc_037872:
	move.w ($68,a4),d0
	lsl.w #2,d0
	lea loc_037a06(pc),a0
	move.l (a0,d0.w),($9c,a4)

loc_037882:
	tst.b ($9b,a4)
	bne.w loc_037928
	movea.l ($9c,a4),a2
	move.l #loc_037a2a,($9c,a4)
	jsr loc_02805e
	bne.w loc_037928
	move.l a2,($9c,a4)
	tst.w ($6a,a4)
	bgt.b loc_0378bc
	jsr loc_028112
	bne.w loc_037922
	jsr loc_027e48
	bra.b loc_0378c6

loc_0378bc:
	subq.w #1,($6a,a4)
	jsr loc_028112

loc_0378c6:
	move.w ($2e,a4),d0
	addi.w #$20,d0
	cmp.w (-$45d6,a5),d0
	blt.w loc_0379ec
	move.w ($2e,a4),d0
	subi.w #$20,d0
	cmp.w (-$45d4,a5),d0
	bge.w loc_0379ec
	move.w ($32,a4),d0
	addi.w #$20,d0
	cmp.w (-$45de,a5),d0
	bge.w loc_03799c
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.w loc_037882

loc_037922:
	jsr loc_0281fa

loc_037928:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l d7/a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),d7/a3
	sf ($9b,a4)
	addq.w #1,($68,a4)
	cmpi.w #5,($68,a4)
	bge.w loc_03797e
	move.w ($68,a4),d0
	lsl.w #2,d0
	lea loc_0379f2(pc),a0
	movea.l (a0,d0.w),a0
	movea.l a0,a0
	clr.w d0
	jsr loc_027e70
	move.w #6,($6a,a4)
	bra.w loc_037872

loc_03797e:
	move.w #$e9,d0
	jsr loc_02301a
	clr.l ($9c,a4)
	movea.l #loc_03aa82,a0
	clr.w d0
	jsr loc_027e70
	bra.b loc_0379b8

loc_03799c:
	move.w #$e9,d0
	jsr loc_02301a
	clr.l ($9c,a4)
	movea.l #loc_03ab5c,a0
	clr.w d0
	jsr loc_027e70

loc_0379b8:
	btst #2,($53,a4)
	bne.w loc_0379ec
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_0379b8

loc_0379ec:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0379f2:
	dc.l loc_03a9c4,loc_03a9d2,loc_03a9e0,loc_03a9ee
	dc.l loc_03a9fc

loc_037a06:
	dc.l loc_037a1a,loc_037a22,loc_037a22
	dc.l loc_037a22,loc_037a22

loc_037a1a:
	dc.w $fff0,$0010,$fff0,$0010

loc_037a22:
	dc.w $ffe0,$0020,$ffe0,$0020

loc_037a2a:
	dc.w $ffe0,$0020,$ffe0,$0020

;--------------------------
loc_037a32:
	tst.b ($66,a4)
	blt.b loc_037a3c
	bgt.b loc_037a5c
	beq.b loc_037a7c

loc_037a3c:
	movea.l #loc_03ad38,a0
	clr.w d0
	jsr loc_027e70
	jsr loc_02816c
	bmi.w loc_037c18
	move.b #$1d,($89,a4)
	bra.b loc_037a9a

loc_037a5c:
	movea.l #loc_03ad58,a0
	clr.w d0
	jsr loc_027e70
	jsr loc_02816c
	bmi.w loc_037c18
	move.b #$1d,($89,a4)
	bra.b loc_037a9a

loc_037a7c:
	movea.l #loc_03ad58,a0
	clr.w d0
	jsr loc_027e70
	jsr loc_02816c
	bmi.w loc_037c18
	move.b #$28,($89,a4)

loc_037a9a:
	movea.l ($28,a4),a3
	move.w ($2ee,a3),($60,a4)
	move.l #$100000,($36,a4)
	clr.l ($3a,a4)
	move.l #$300000,d2
	move.l #-$500000,d3
	jsr loc_0282ea

loc_037ac2:
	tst.b ($9b,a4)
	bne.w loc_037b62
	move.l #loc_037c26,($9c,a4)
	jsr loc_02805e
	bne.w loc_037b62
	move.l #loc_037c1e,($9c,a4)
	jsr loc_028112
	bne.w loc_037b9a
	move.l #loc_037c26,($9c,a4)
	jsr loc_027e48
	move.w ($2e,a4),d0
	addi.w #$20,d0
	cmp.w (-$45d6,a5),d0
	blt.w loc_037c18
	move.w ($2e,a4),d0
	subi.w #$20,d0
	cmp.w (-$45d4,a5),d0
	bge.w loc_037c18
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	subq.w #1,($68,a4)
	bpl.w loc_037ac2
	clr.l ($9c,a4)
	movea.l #loc_03ad78,a0
	clr.w d0
	jsr loc_027e70
	bra.w loc_037be4

loc_037b62:
	clr.l ($9c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	movea.l #loc_03ad78,a0
	clr.w d0
	jsr loc_027e70
	bra.w loc_037be4

loc_037b9a:
	jsr loc_0281fa
	tst.b ($66,a4)
	bne.b loc_037bb0
	move.w #$e9,d0
	jsr loc_02301a

loc_037bb0:
	clr.l ($9c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	movea.l #loc_03adaa,a0
	clr.w d0
	jsr loc_027e70

loc_037be4:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	btst #2,($53,a4)
	bne.w loc_037c18
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	bra.b loc_037be4

loc_037c18:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_037c1e:
	dc.w $fff8,$000c,$fff0,$000c

loc_037c26:
	dc.w $fff4,$000c,$ffe0,$0010

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_037c2e:
	dc.l $00032000,$fffd4000,$00000000
	dc.l $00034000,$fffcc000,$fff31c00
	dc.l $0000c800

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_037c4a:
	dc.l loc_037c56,loc_037c62,loc_037c6e

loc_037c56:
	dc.w $8039,$fc00,$803b,$d000,$f60a,$0000

loc_037c62:
	dc.w $8039,$fe02,$803b,$e000,$f60a,$0000

loc_037c6e:
	dc.w $8039,$fd01,$803b,$d0ec,$f60a,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_037c7a:
	dc.l loc_0328e8,loc_0328e8,loc_032bca,loc_032fe8
	dc.l loc_03364a,loc_0338ce,loc_033ae0,loc_033bb6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_037c9a:
	dc.l loc_037f76,loc_037fee,loc_038068,loc_0380d0
	dc.l loc_038012,loc_038030,loc_038058,loc_03803a
	dc.l loc_038180,loc_038194,loc_0381c2,loc_038202
	dc.l loc_038242,loc_0381aa,loc_038256,loc_038256
	dc.l loc_038256,loc_03826c,loc_03826c,loc_03826c
	dc.l loc_03827c,loc_03827c,loc_03827c,loc_03828c
	dc.l loc_03828c,loc_03828c,loc_03829c,loc_03829c
	dc.l loc_03829c,loc_0382a6,loc_0382a6,loc_0382a6
	dc.l loc_0382b0,loc_0383a6,loc_0382c0,loc_038424
	dc.l loc_0384be

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_037d2e:
	dc.l loc_028468,loc_028562,loc_02848c,loc_028572
	dc.l loc_02861e,loc_0286fc,loc_0287a6,loc_0287e0
	dc.l loc_02881a,loc_028a02,loc_028958,loc_028a30
	dc.l loc_028ae2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_037d62:
	dc.l loc_0384d8,loc_0384d8,loc_0384d8
	dc.l loc_0384e8,loc_0384e8,loc_0384e8
	dc.l loc_0384f2,loc_0384f2,loc_038516
	dc.l loc_038516,loc_03853a,loc_03853a
	dc.l loc_03857a,loc_03857a,loc_0385ac
	dc.l loc_0385ac,loc_0385d0,loc_0385d0
	dc.l loc_0385f4,loc_0385f4,loc_038634
	dc.l loc_038634,loc_038666,loc_038666
	dc.l loc_03867e,loc_03867e,loc_038696
	dc.l loc_038696,loc_0386be,loc_0386be
	dc.l loc_0386de,loc_03873c,loc_0386de
	dc.l loc_03873c,loc_0387a0,loc_0387e0
	dc.l loc_0387f8,loc_03883a,loc_0387f8
	dc.l loc_03883a,loc_0387f8,loc_03887c
	dc.l loc_03887c,loc_0388a8,loc_0388b2
	dc.l loc_0388f4,loc_038920,loc_038a30
	dc.l loc_038928,loc_038a44,loc_038a44
	dc.l loc_038a44,loc_038aa4,loc_038aa4
	dc.l loc_038aee,loc_038b46,loc_038bb6
	dc.l loc_038bb6,loc_038be0,loc_038be0
	dc.l loc_038c26,loc_038c26,loc_038c88

;/\/\/\/\/\/\/\/\/\/\/\/\/\
ShoAttkTbl:
	dc.l  $00000000,loc_038caa,loc_038d2e,loc_038d8e
	dc.l loc_038dee,loc_038e8c,loc_038f4a,loc_038fae
	dc.l loc_0391b8,loc_039256,loc_0392e2,loc_0393bc
	dc.l loc_039496,loc_0397ae,loc_0397ae,loc_039820
	dc.l loc_03987a,loc_039956,loc_039956,loc_039a82
	dc.l loc_039b40,loc_039518,loc_0395d0,loc_0396ac
	dc.l loc_0398d4,loc_0399e2,loc_039bd6,loc_039038
	dc.l loc_0390d2,loc_03a50a,loc_03a642,loc_039c68
	dc.l loc_03a19a,loc_03a1a8,loc_039edc,loc_039faa
	dc.l loc_03a860,loc_03abd6,loc_03ade0,loc_03ade0
	dc.l loc_03b0c0,loc_03b600,loc_03bb08,loc_03bc14
	dc.l loc_03bcb6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_037f12:
	dc.w $0004,$0008,$0000,$80ff,$0000,$0001,$0000
	dc.w $0005,$01bf,$0000,$80ff,$0000,$0004,$0000
	dc.w $0014,$01bb,$0000,$80ff,$0000,$0004,$0000
	dc.w $0006,$01bc,$0000,$80ff,$0000,$0004,$0000
	dc.w $0003,$01bd,$0000,$80ff,$0000,$0004,$0000
	dc.w $0014,$01be,$0000,$80ff,$0000,$0004,$0000
	dc.w $0006,$01bf,$0000,$80ff,$0000,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_037f76:
	dc.w $0004,$010d,$0001,$80ff,$0000,$0004,$0000
	dc.w $0004,$010e,$0001,$80ff,$0000,$0004,$0000
	dc.w $0004,$010f,$0001,$80ff,$0000,$0004,$0000
	dc.w $0004,$0110,$0001,$80ff,$0000,$0004,$0000
	dc.w $0004,$0111,$0001,$80ff,$0000,$0004,$0000
	dc.w $0004,$0112,$0001,$80ff,$0000,$0004,$0000
	dc.w $0004,$0113,$0001,$80ff,$0000,$0004,$0000
	dc.w $0004,$0114,$0001,$80ff,$0000,$0004,$0000
	dc.w $8000,$0000
	dc.l loc_037f76


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_037fee:
	dc.w $0003,$0150,$0002,$80ff,$0004,$0004,$0001
	dc.w $0003,$0150,$0002,$80ff,$fffc,$0004,$0000
	dc.w $8000,$0000
	dc.l loc_037f76

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038012:
	dc.w $0003,$0111,$0001,$80ff,$0000,$0004,$0000
	dc.w $0003,$0118,$0003,$80ff,$fffe,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038030:
	dc.w $0004,$001d,$0004,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03803a:
	dc.w $0003,$0118,$0003,$80ff,$fffe,$0000,$0000
	dc.w $0003,$0111,$0001,$80ff,$0000,$0004,$0000
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038058:
	dc.w $0006,$0078,$0005,$8000
	dc.w $8000,$0000
	dc.l loc_038030

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038068:
	dc.w $0002,$0163,$0006,$8000
	dc.w $0003,$0164,$0006,$8000
	dc.w $0002,$0165,$0006,$8000
	dc.w $0003,$0166,$0006,$8000
	dc.w $0002,$0167,$0006,$8000
	dc.w $0003,$0168,$0006,$8000
	dc.w $0002,$0169,$0006,$8000
	dc.w $0003,$016a,$0006,$8000
	dc.w $0002,$016b,$0006,$8000
	dc.w $0003,$016c,$0006,$8000
	dc.w $0002,$016d,$0006,$8000
	dc.w $0003,$016e,$0006,$8000
	dc.w $8000,$0000
	dc.l loc_038068

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0380d0:
	dc.w $0003,$0157,$0007,$80ff,$0004,$0000,$0000
	dc.w $0003,$0158,$0007,$80ff,$0004,$0000,$0000
	dc.w $0003,$0159,$0007,$80ff,$0004,$0000,$0000
	dc.w $0003,$015a,$0007,$80ff,$0004,$0000,$0000
	dc.w $0003,$015b,$0007,$80ff,$0004,$0000,$0000
	dc.w $0003,$015c,$0007,$80ff,$0004,$0000,$0000
	dc.w $0003,$015d,$0007,$80ff,$0004,$0000,$0000
	dc.w $0003,$015e,$0007,$80ff,$0004,$0000,$0000
	dc.w $0003,$015f,$0007,$80ff,$0004,$0000,$0000
	dc.w $0003,$0160,$0007,$80ff,$0004,$0000,$0000
	dc.w $0003,$0161,$0007,$80ff,$0004,$0000,$0000
	dc.w $0003,$0162,$0007,$80ff,$0004,$0000,$0000
	dc.w $8000,$0000
	dc.l loc_0380d0

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038180:
	dc.w $8003,$186f
	dc.w $0002,$0028,$0008,$7cff,$fffe,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038194:
	dc.w $0006,$0029,$0009,$7c00
	dc.w $000a,$002a,$000a,$7cff,$fff8,$0000,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0381aa:
	dc.w $000a,$002a,$000a,$7cff,$fff8,$0000,$0000
	dc.w $0006,$0029,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0381c2:
	dc.w $0006,$0029,$0009,$7c00
	dc.w $0004,$003b,$000c,$7c00
	dc.w $0004,$003c,$000d,$7c00
	dc.w $0004,$003d,$000e,$7c00
	dc.w $0004,$003c,$000d,$7cff,$0000,$0088,$0003
	dc.w $0004,$003f,$000f,$7c00
	dc.w $0006,$0029,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038202:
	dc.w $0006,$0029,$0009,$7c00
	dc.w $0004,$003f,$000f,$7c00
	dc.w $0004,$003c,$000d,$7cff,$0000,$0088,$0003
	dc.w $0004,$003d,$000e,$7c00
	dc.w $0004,$003c,$000d,$7c00
	dc.w $0004,$003b,$000c,$7c00
	dc.w $0006,$0029,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038242:
	dc.w $8003,$1870
	dc.w $0003,$0028,$0008,$7cff,$fffe,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038256:
	dc.w $0004,$0019,$0010,$84ff,$0000,$0002,$0000
	dc.w $8000,$0000
	dc.l loc_03826c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03826c:
	dc.w $0004,$00d2,$0010,$84ff,$0000,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03827c:
	dc.w $0004,$0019,$0010,$84ff,$0000,$0002,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03828c:
	dc.w $0004,$0020,$0011,$8400
	dc.w $8000,$0000
	dc.l loc_03829c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03829c:
	dc.w $0004,$00d4,$0011,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0382a6:
	dc.w $0004,$0020,$0011,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0382b0:
	dc.w $003c,$010d,$0001,$80ff,$0000,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0382c0:
	dc.w $0004,$0150,$0000,$80ff,$fffc,$0004,$0000
	dc.w $000c,$0135,$0000,$80ff,$fffc,$0002,$0000
	dc.w $0004,$0136,$0000,$80ff,$fffc,$0002,$0000
	dc.w $0003,$0137,$0000,$80ff,$fffc,$0002,$0000
	dc.w $0003,$0138,$0000,$80ff,$fffc,$0002,$0000
	dc.w $0003,$0137,$0000,$80ff,$fffc,$0002,$0000
	dc.w $0003,$0138,$0000,$80ff,$fffc,$0002,$0000
	dc.w $0003,$0139,$0000,$80ff,$fffc,$0002,$0000
	dc.w $0003,$0138,$0000,$80ff,$fffc,$0002,$0000
	dc.w $0003,$0139,$0000,$80ff,$fffc,$0002,$0000
	dc.w $0003,$0138,$0000,$80ff,$fffc,$0002,$0000
	dc.w $0003,$0139,$0000,$80ff,$fffc,$0002,$0000
	dc.w $0004,$0138,$0000,$80ff,$fffc,$0002,$0000
	dc.w $802b,$1c59
	dc.w $0006,$0139,$0000,$80ff,$fffc,$0002,$0000
	dc.w $0004,$013a,$0000,$80ff,$fffc,$0002,$0000
	dc.w $0014,$019a,$0000,$80ff,$fffc,$0002,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0383a6:
	dc.w $0002,$0028,$0000,$80ff,$fffe,$0001,$0000
	dc.w $804a,$ffff,$8000,$fff7,$0400
	dc.w $802b,$1c55
	dc.w $0004,$0029,$0000,$8000
	dc.w $0003,$003f,$0000,$8000
	dc.w $0003,$003c,$0000,$80ff,$0000,$0088,$0003
	dc.w $0003,$003d,$0000,$8000
	dc.w $0003,$003c,$0000,$8000
	dc.w $0003,$003b,$0000,$8000
	dc.w $0005,$0029,$0000,$8000
	dc.w $0004,$0028,$0000,$80ff,$fffe,$0001,$0000
	dc.w $802b,$1c5a
	dc.w $0004,$007c,$0000,$8000
	dc.w $0008,$014f,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038424:
	dc.w $0002,$0028,$0000,$80ff,$fffe,$0001,$0000
	dc.w $804a,$ffff,$8000,$fff7,$0400
	dc.w $0004,$0029,$0000,$8000
	dc.w $0003,$003f,$0000,$8000
	dc.w $0003,$003c,$0000,$80ff,$0000,$0088,$0003
	dc.w $0003,$003d,$0000,$8000
	dc.w $0003,$003c,$0000,$8000
	dc.w $0003,$003b,$0000,$8000
	dc.w $0005,$0029,$0000,$8000
	dc.w $0004,$0028,$0000,$80ff,$fffe,$0001,$0000
	dc.w $802b,$1c5b
	dc.w $0004,$007c,$0000,$8000
	dc.w $0008,$014f,$0000,$8000
	dc.w $0008,$007f,$0000,$8000
	dc.w $0008,$0080,$0000,$8000
	dc.w $0008,$0081,$0000,$8000
	dc.w $0008,$0082,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0384be:
	dc.w $0008,$01c5,$0000,$8400
	dc.w $0006,$01c6,$0000,$8400
	dc.w $0014,$01c7,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0384d8:
	dc.w $0004,$00d3,$0010,$84ff,$fffe,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0384e8:
	dc.w $0004,$00d5,$0011,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0384f2:
	dc.w $802d,$ffec,$ff98
	dc.w $0006,$00ca,$0012,$84ff,$fffc,$0002,$0000
	dc.w $0006,$00c9,$0013,$84ff,$fffc,$0002,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038516:
	dc.w $802d,$ffec,$ff98
	dc.w $000c,$00ca,$0012,$84ff,$fffc,$0002,$0000
	dc.w $0006,$00c9,$0013,$84ff,$fffc,$0002,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03853a:
	dc.w $802d,$ffe4,$ff98
	dc.w $0002,$00ca,$0012,$84ff,$fffc,$0002,$0000
	dc.w $000a,$00cb,$0012,$84ff,$fffc,$0002,$0000
	dc.w $0006,$00ca,$0012,$84ff,$fffc,$0002,$0000
	dc.w $0006,$00c9,$0013,$84ff,$fffc,$0002,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03857a:
	dc.w $802d,$ffdc,$ff98
	dc.w $0012,$00cb,$0012,$84ff,$fffc,$0002,$0000
	dc.w $0006,$00ca,$0012,$84ff,$fffc,$0002,$0000
	dc.w $0006,$00c9,$0013,$84ff,$fffc,$0002,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0385ac:
	dc.w $802e,$0004,$ffb4
	dc.w $0006,$00cd,$0014,$84ff,$fffc,$0000,$0000
	dc.w $0006,$00cc,$0015,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0385d0:
	dc.w $802e,$0004,$ffb4
	dc.w $000c,$00cd,$0014,$84ff,$fffc,$0000,$0000
	dc.w $0006,$00cc,$0015,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0385f4:
	dc.w $802e,$fffc,$ffb4
	dc.w $0002,$00cd,$0014,$84ff,$fffc,$0000,$0000
	dc.w $000a,$00ce,$0014,$84ff,$fffc,$0000,$0000
	dc.w $0006,$00cd,$0014,$84ff,$fffc,$0000,$0000
	dc.w $0006,$00cc,$0015,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038634:
	dc.w $802e,$fff4,$ffb4
	dc.w $0012,$00ce,$0014,$84ff,$fffc,$0000,$0000
	dc.w $0006,$00cd,$0014,$84ff,$fffc,$0000,$0000
	dc.w $0006,$00cc,$0015,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038666:
	dc.w $802f,$fff2,$ffbe
	dc.w $0006,$00d0,$0016,$8400
	dc.w $0006,$00cf,$0017,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03867e:
	dc.w $802f,$fff2,$ffbe
	dc.w $000c,$00d0,$0016,$8400
	dc.w $0006,$00cf,$0017,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038696:
	dc.w $802f,$ffee,$ffba
	dc.w $0002,$00d0,$0016,$8400
	dc.w $000a,$00d1,$0016,$8400
	dc.w $0006,$00d0,$0016,$8400
	dc.w $0006,$00cf,$0017,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0386be:
	dc.w $802f,$ffda,$ffb8
	dc.w $0012,$00d1,$0016,$8400
	dc.w $0006,$00d0,$0016,$8400
	dc.w $0006,$00cf,$0017,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0386de:
	dc.w $802e,$0004,$ffb4
	dc.w $0006,$018e,$0018,$8400
	dc.w $0003,$011d,$0018,$84ff,$0008,$0000,$0000
	dc.w $0003,$0123,$0018,$84ff,$fff8,$0020,$0000
	dc.w $0003,$003d,$0019,$84ff,$0000,$fff0,$0000
	dc.w $0003,$003c,$0019,$84ff,$0000,$fff0,$0000
	dc.w $0003,$003b,$0019,$84ff,$0000,$fff8,$0000
	dc.w $0003,$0029,$0019,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03873c:
	dc.w $802d,$ffe8,$ff98
	dc.w $0006,$00ca,$0018,$84ff,$fff8,$0000,$0000
	dc.w $0003,$0129,$0018,$84ff,$0008,$0000,$0000
	dc.w $0003,$0123,$0018,$84ff,$fff8,$0020,$0000
	dc.w $0003,$003d,$0019,$84ff,$0000,$fff0,$0000
	dc.w $0003,$003c,$0019,$84ff,$0000,$fff0,$0000
	dc.w $0003,$003b,$0019,$84ff,$0000,$fff8,$0000
	dc.w $0003,$0029,$0019,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0387a0:
	dc.w $802e,$fffe,$ffb4
	dc.w $0004,$018f,$0018,$84ff,$fff8,$0000,$0000
	dc.w $0006,$011d,$0018,$84ff,$0008,$0000,$0000
	dc.w $0004,$011e,$001a,$84ff,$0000,$fff8,$0000
	dc.w $0006,$011f,$001a,$84ff,$0000,$fff8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0387e0:
	dc.w $0004,$0120,$001b,$7cff,$0000,$0008,$0000
	dc.w $0008,$0122,$001b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0387f8:
	dc.w $8030,$fff0,$ffb0
	dc.w $0008,$018f,$0018,$7cff,$fff8,$0000,$0000
	dc.w $0004,$011d,$0018,$7cff,$0008,$0000,$0000
	dc.w $0004,$011e,$001a,$7c00
	dc.w $0004,$011f,$001a,$7c00
	dc.w $0004,$012a,$001a,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03883a:
	dc.w $8030,$fff0,$ffb0
	dc.w $0008,$0129,$0018,$7cff,$0008,$0000,$0000
	dc.w $0004,$011d,$0018,$7cff,$0008,$0000,$0000
	dc.w $0004,$011e,$001a,$7c00
	dc.w $0004,$011f,$001a,$7c00
	dc.w $0004,$012a,$001a,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03887c:
	dc.w $0004,$0120,$001b,$7cff,$0000,$0008,$0000
	dc.w $0008,$0121,$001b,$7cff,$0008,$0008,$0000
	dc.w $0008,$012b,$001b,$7cff,$0000,$fff8,$0000
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0388a8:
	dc.w $0010,$0122,$001b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0388b2:
	dc.w $8030,$0008,$ff98
	dc.w $0013,$0143,$0018,$7cff,$0000,$fff8,$0001
	dc.w $0004,$011d,$0018,$7cff,$0008,$0000,$0000
	dc.w $0004,$011e,$001a,$7c00
	dc.w $0004,$011f,$001a,$7c00
	dc.w $0004,$012a,$001a,$7cff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0388f4:
	dc.w $8030,$fff0,$ffc8
	dc.w $0002,$011d,$0018,$7cff,$0008,$0000,$0000
	dc.w $0002,$011e,$001a,$7c00
	dc.w $0002,$0144,$001a,$7cff,$0010,$fff8,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038920:
	dc.w $8000,$0000
	dc.l loc_0386de

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038928:
	dc.w $8037
	dc.l loc_0376ae

	dc.w $8002,$188d
	dc.w $8024
	dc.w $8043,$0020
	dc.w $8044,$0028
	dc.w $804e,$fff8,$0000,$0001,$0000
	dc.w $0003,$0123,$0000,$7cff,$fff8,$0000,$0000
	dc.w $0003,$0124,$0000,$7cff,$fff8,$0000,$0000
	dc.w $0001,$003d,$0000,$7cff,$0000,$ffd8,$0000
	dc.w $804b,$ffff,$0000,$fff8,$8000,$0000,$c000
	dc.w $0002,$003d,$0000,$7cff,$0000,$ffd8,$0000
	dc.w $0003,$003c,$0000,$7cff,$0000,$ffd8,$0000
	dc.w $0002,$003d,$0000,$7cff,$0000,$0078,$0003
	dc.w $0002,$003c,$0000,$7cff,$0000,$0068,$0003
	dc.w $0002,$003d,$0000,$7cff,$0000,$ffd8,$0000
	dc.w $0002,$003c,$0000,$7cff,$0000,$ffd8,$0000
	dc.w $0002,$003d,$0000,$7cff,$0000,$0078,$0003
	dc.w $0002,$003c,$0000,$7cff,$0000,$0068,$0003
	dc.w $0002,$003d,$0000,$7cff,$0000,$ffd8,$0000
	dc.w $0002,$003c,$0000,$7cff,$0000,$ffd8,$0000
	dc.w $803a,$df00
	dc.w $0002,$002a,$0000,$7cff,$fff8,$fff0,$0000
	dc.w $803a,$0000
	dc.w $0002,$0028,$0000,$7cff,$fffe,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038a30:
	dc.w $8003,$1870
	dc.w $0003,$0028,$0000,$7cff,$fffe,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038a44:
	dc.w $0004,$0123,$0000,$7cff,$fff8,$0000,$0000
	dc.w $0004,$0124,$0000,$7c00
	dc.w $0004,$0125,$0000,$7c00
	dc.w $0004,$0126,$0000,$7cff,$0008,$0000,$0000
	dc.w $0004,$0127,$0000,$7cff,$0000,$fff8,$0000
	dc.w $803a,$df00
	dc.w $0002,$0128,$0000,$7cff,$0000,$0004,$0000
	dc.w $803a,$0000
	dc.w $0002,$0128,$0000,$7cff,$0000,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038aa4:
	dc.w $0004,$0123,$0000,$7cff,$fff8,$0000,$0000
	dc.w $0004,$0124,$0000,$7c00
	dc.w $0004,$0125,$0000,$7c00
	dc.w $0004,$0126,$0000,$7cff,$0008,$0000,$0000
	dc.w $0004,$0127,$0000,$7cff,$0000,$fff8,$0000
	dc.w $0004,$0128,$0000,$7cff,$0004,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038aee:
	dc.w $0006,$019b,$001c,$7c00
	dc.w $0006,$019c,$001c,$7c00
	dc.w $0006,$019d,$001c,$7c00
	dc.w $0006,$019e,$001c,$7c00
	dc.w $0006,$019f,$001c,$7c00
	dc.w $0006,$01a0,$001c,$7c00
	dc.w $0006,$01a1,$001c,$7c00
	dc.w $0006,$01a2,$001c,$7c00
	dc.w $0006,$01a3,$001c,$7c00
	dc.w $0006,$01a4,$001c,$7c00
	dc.w $8000,$0000
	dc.l loc_038aee

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038b46:
	dc.w $802a,$000f
	dc.w $0003,$0183,$0000,$7cff,$0004,$0004,$0000
	dc.w $0005,$01c0,$0000,$7cff,$fffc,$0001,$0000
	dc.w $0003,$01c1,$0000,$7cff,$fff8,$0001,$0000
	dc.w $0002,$01c2,$0000,$7cff,$fff9,$0001,$0000
	dc.w $000b,$01c3,$0000,$7cff,$fff8,$0001,$0000
	dc.w $803a,$df00
	dc.w $0003,$01c4,$0000,$7cff,$fff9,$0001,$0000
	dc.w $803a,$0000
	dc.w $0003,$01c4,$0000,$7cff,$fff9,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038bb6:
	dc.w $8030,$fff0,$ffb8

loc_038bbc:
	dc.w $0003,$00d8,$0018,$7cff,$0000,$0000,$0500
	dc.w $0001,$00d9,$0018,$7cff,$0000,$0000,$0500
	dc.w $8000,$0000
	dc.l loc_038bbc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038be0:
	dc.w $8030,$fff0,$ffb8

loc_038be6:
	dc.w $0002,$0129,$0018,$7cff,$0000,$0000,$0600
	dc.w $0002,$0129,$0018,$7cff,$fffd,$0000,$0200
	dc.w $0002,$0129,$0018,$7cff,$0000,$0000,$0400
	dc.w $0002,$0129,$0018,$7cff,$0003,$0000,$0700
	dc.w $8000,$0000
	dc.l loc_038be6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038c26:
	dc.w $8030,$fff0,$ffb8

loc_038c2c:
	dc.w $0002,$011d,$0018,$7cff,$0000,$0002,$0800
	dc.w $0002,$011d,$0018,$7cff,$0002,$ffff,$0900
	dc.w $0002,$011d,$0018,$7cff,$fffe,$0001,$0800
	dc.w $0002,$011d,$0018,$7cff,$0000,$fffe,$0900
	dc.w $0002,$011d,$0018,$7cff,$0002,$0001,$0800
	dc.w $0002,$011d,$0018,$7cff,$fffe,$ffff,$0900
	dc.w $8000,$0000
	dc.l loc_038c2c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038c88:
	dc.w $0008,$019b,$001c,$8400
	dc.w $0006,$019c,$001c,$8400
	dc.w $000c,$019d,$001c,$8400
	dc.w $0004,$019e,$001c,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Jab
loc_038caa:
	dc.w $8037
	dc.l loc_028fca

	dc.w $8038
	dc.l loc_038cdc

	dc.w $803e,$0821,$0100
	dc.w $803f,$0502,$0301,$0501
	dc.w $8040,$050b,$0306,$07ff
	dc.w $8042,$0401
	dc.w $8041,$0401,$0823

	dc.w $8036
	dc.l loc_037c56

loc_038cdc
	dc.w $8027,$ffec,$001c
	dc.w $8005,$189d
	dc.w $0003,$0008,$001d,$7cff,$0000,$0001,$0000
	dc.w $8027,$ffec,$0024
	dc.w $0006,$0007,$001e,$78ff,$0000,$0001,$0000
	dc.w $8027,$ffec,$001c
	dc.w $0004,$0006,$001f,$7cff,$0000,$0001,$0000
	dc.w $8028
	dc.w $0003,$0019,$0020,$7cff,$0000,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038d2e:
	dc.w $8037
	dc.l loc_028fca

	dc.w $8038
	dc.l loc_038d60

	dc.w $803e,$0821,$0200
	dc.w $803f,$0502,$0301,$0501
	dc.w $8040,$050b,$0306,$07ff
	dc.w $8042,$0401
	dc.w $8041,$0201,$0420

	dc.w $8036
	dc.l loc_037c62

loc_038d60:
	dc.w $8005,$189d
	dc.w $0003,$00e9,$0021,$7c00
	dc.w $8027,$ffec,$001c
	dc.w $0006,$0021,$0022,$7800
	dc.w $8028
	dc.w $0005,$0020,$0004,$7c00
	dc.w $0002,$001d,$0004,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038d8e:
	dc.w $8037
	dc.l loc_028fca
	
	dc.w $8038
	dc.l loc_038dc0
	
	dc.w $803e,$0821,$0200
	dc.w $803f,$0502,$0301,$0501
	dc.w $8040,$050b,$0306,$07ff
	dc.w $8042,$0401
	dc.w $8041,$0201,$0620

	dc.w $8036
	dc.l loc_037c62

loc_038dc0:
	dc.w $8005,$189d
	dc.w $0003,$0020,$0004,$7c00
	dc.w $8027,$ffec,$001c
	dc.w $0006,$001f,$0023,$7800
	dc.w $8028
	dc.w $0005,$001e,$0004,$7c00
	dc.w $0002,$001d,$0004,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038dee:
	dc.w $8037
	dc.l loc_028fca

	dc.w $8038
	dc.l loc_038e20

	dc.w $803e,$086a,$0200
	dc.w $803f,$0804,$0402,$0802
	dc.w $8040,$080c,$0407,$09ff
	dc.w $8042,$0601
	dc.w $8041,$0201,$051d

	dc.w $8036
	dc.l loc_037c56

loc_038e20:
	dc.w $8005,$1897
	dc.w $8027,$fff4,$001c
	dc.w $0002,$0015,$0024,$7cff,$0004,$0000,$0000
	dc.w $8027,$fffc,$0024
	dc.w $0002,$0016,$0025,$78ff,$0004,$0000,$0000
	dc.w $0007,$0101,$0026,$78ff,$0014,$0000,$0000
	dc.w $0003,$0016,$0027,$78ff,$0004,$0000,$0000
	dc.w $8027,$fff4,$001c
	dc.w $0003,$0015,$0024,$7cff,$0004,$0000,$0000
	dc.w $0003,$0019,$0020,$7cff,$0000,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038e8c:
	dc.w $8037
	dc.l loc_028fca

	dc.w $8038
	dc.l loc_038ebe

	dc.w $803e,$084a,$0100
	dc.w $803f,$0804,$0402,$0802
	dc.w $8040,$090c,$0405,$0cff
	dc.w $8042,$0601
	dc.w $8041,$0601,$0f24

	dc.w $8036
	dc.l loc_037c56

loc_038ebe:
	dc.w $8005,$189c
	dc.w $8027,$fff4,$001c
	dc.w $0002,$0011,$0028,$7cff,$0002,$0001,$0000
	dc.w $8027,$fffc,$0024
	dc.w $0002,$0012,$0029,$7cff,$0002,$0001,$0000
	dc.w $8027,$0004,$0034
	dc.w $0005,$0014,$002a,$78ff,$0002,$0001,$0000
	dc.w $803e,$084a,$02ff
	dc.w $0003,$0013,$002b,$78ff,$0002,$0001,$0000
	dc.w $8027,$fffc,$0024
	dc.w $0003,$0012,$002c,$7cff,$0002,$0001,$0000
	dc.w $8027,$fff4,$001c
	dc.w $0003,$0011,$0028,$7cff,$0002,$0001,$0000
	dc.w $0003,$0010,$002d,$7cff,$0000,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038f4a:
	dc.w $8037
	dc.l loc_028fca

	dc.w $8038
	dc.l loc_038f7c

	dc.w $803e,$0a29,$0200
	dc.w $803f,$0502,$0301,$0501
	dc.w $8040,$070a,$0306,$08ff
	dc.w $8042,$0401
	dc.w $8041,$0101,$0221

	dc.w $8036
	dc.l loc_037c62

loc_038f7c:
	dc.w $8005,$189d
	dc.w $0003,$0022,$002e,$7cff,$fff8,$0000,$0000
	dc.w $8027,$ffec,$002c
	dc.w $0006,$0023,$002f,$7800
	dc.w $8028
	dc.w $0008,$0022,$002e,$7cff,$fff8,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_038fae:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_038fe0

	dc.w $803e,$0845,$0100
	dc.w $803f,$1203,$0804,$1203
	dc.w $8040,$0a08,$030a,$12ff
	dc.w $8042,$0403
	dc.w $8041,$0401,$001c

	dc.w $8036
	dc.l loc_037c56

loc_038fe0:
	dc.w $8004,$18a3
	dc.w $0003,$000b,$0030,$7cff,$0000,$0001,$0000
	dc.w $8027,$fff4,$0034
	dc.w $8045,$0003
	dc.w $0004,$000e,$0031,$78ff,$0000,$0001,$0000
	dc.w $8028
	dc.w $0006,$000f,$0032,$78ff,$0000,$0001,$0000
	dc.w $0008,$000a,$0033,$7cff,$0000,$0001,$0000
	dc.w $000a,$0005,$0034,$7cff,$0000,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_039038:
	dc.w $8037
	dc.l loc_028fd0

	dc.w $8038
	dc.l loc_03906a

	dc.w $803e,$0844,$0900
	dc.w $803f,$0803,$0001,$0603
	dc.w $8040,$0a08,$0508,$14ff
	dc.w $8042,$0604
	dc.w $8041,$0201,$0c28

	dc.w $8036
	dc.l loc_037c56

loc_03906a:
	dc.w $8004,$18a3
	dc.w $8008,$0004,$0000,$0000,$0000
	dc.w $0002,$000a,$0033,$7cff,$0000,$0001,$0000
	dc.w $802b,$1c50
	dc.w $0003,$000b,$0030,$78ff,$0000,$0001,$0000
	dc.w $8045,$0001
	dc.w $8023,$8027,$fff4,$002c
	dc.w $0008,$000c,$0035,$78ff,$0000,$0001,$0000
	dc.w $8028
	dc.w $000c,$000b,$0030,$78ff,$0000,$0001,$0000
	dc.w $0008,$0005,$0034,$7cff,$0000,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0390d2:
	dc.w $8037
	dc.l loc_028fd0

	dc.w $8038
	dc.l loc_039100

	dc.w $803e,$0864,$0200
	dc.w $803f,$0a06,$0a03,$0604
	dc.w $8040,$0406,$0804,$1cff
	dc.w $8041,$0801,$0013

	dc.w $8036
	dc.l loc_037c56

loc_039100:
	dc.w $8002,$188a
	dc.w $804e,$0001,$0000,$0001,$0000
	dc.w $0004,$018b,$0036,$7cff,$fff8,$0000,$0000
	dc.w $8011,$001c,$0004,$e800,$0000
	dc.w $8045,$0002

	dc.w $804c
	dc.l $00040000,$fff89400,$ffffd000,$0000c800

	dc.w $8027,$ffec,$0014
	dc.w $8004,$189e
	dc.w $0002,$002f,$0037,$78ff,$fffc,$0000,$0000
	dc.w $802b,$1c51
	dc.w $0002,$0030,$0038,$78ff,$fffc,$0000,$0000
	dc.w $0004,$0108,$0039,$78ff,$fffc,$0010,$0000
	dc.w $0006,$0107,$003a,$78ff,$fffc,$0010,$0000
	dc.w $0006,$010c,$003b,$78ff,$0000,$0008,$0000
	dc.w $8028
	dc.w $0006,$0026,$0005,$7cff,$0000,$0000,$0001
	dc.w $0004,$001d,$0004,$7c00
	dc.w $0006,$0118,$0003,$7cff,$fffe,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0391b8:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0391e6

	dc.w $803e,$0825,$0100
	dc.w $803f,$160a,$0e05,$1606
	dc.w $8040,$0a0a,$0406,$12ff
	dc.w $8041,$0401,$0c28

	dc.w $8036
	dc.l loc_037c56

loc_0391e6:
	dc.w $8004,$18a1
	dc.w $0002,$000a,$0033,$7cff,$ffff,$0001,$0000
	dc.w $8027,$ffec,$001c
	dc.w $8008,$0003,$0000,$0000,$0000
	dc.w $0002,$0196,$001d,$78ff,$fffe,$0001,$0000
	dc.w $8023
	dc.w $8045,$0003
	dc.w $8027,$ffec,$0034
	dc.w $0006,$0009,$003c,$78ff,$fffc,$0001,$0000
	dc.w $8027,$ffec,$001c
	dc.w $000a,$0196,$003d,$78ff,$fffe,$0001,$0000
	dc.w $8028
	dc.w $0008,$0005,$0034,$7cff,$0000,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_039256:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_039284

	dc.w $803e,$0845,$0900
	dc.w $803f,$160a,$0804,$1608
	dc.w $8040,$0a06,$050a,$12ff
	dc.w $8041,$0c01,$081e

	dc.w $8036
	dc.l loc_037c62

loc_039284:
	dc.w $8004,$18a3
	dc.w $0005,$01a5,$003e,$7c00
	dc.w $8045,$0004
	dc.w $802b,$1c54
	dc.w $8027,$ffec,$0024
	dc.w $8039,$fd00
	dc.w $0002,$0100,$003f,$7800
	dc.w $803b,$d800,$f60e
	dc.w $803e,$0845,$01ff
	dc.w $8027,$fff4,$001c
	dc.w $0008,$000d,$0040,$7800
	dc.w $8027,$ffec,$0024
	dc.w $803c,$0004
	dc.w $000a,$0100,$0041,$7800
	dc.w $8028
	dc.w $0008,$0020,$0004,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0392e2:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_039310

	dc.w $803e,$086c,$0800
	dc.w $803f,$0c06,$0002,$0804
	dc.w $8040,$0800,$040a,$12ff
	dc.w $8041,$0602,$022b

	dc.w $8036
	dc.l loc_037c56

loc_039310:
	dc.w $8027,$fff4,$001c
	dc.w $8004,$189e
	dc.w $0002,$0010,$002d,$7cff,$0000,$0001,$0000
	dc.w $0002,$0011,$0028,$7cff,$0002,$0001,$0000
	dc.w $8027,$0004,$002c
	dc.w $8045,$0004
	dc.w $0004,$0016,$0042,$78ff,$0004,$0000,$0000
	dc.w $803e,$086d,$0100
	dc.w $803f,$1206,$1205,$1204
	dc.w $8027,$0004,$0044
	dc.w $0006,$0018,$0043,$78ff,$0004,$0000,$0000
	dc.w $8027,$0004,$0034
	dc.w $0004,$0017,$0044,$78ff,$0004,$0000,$0000
	dc.w $8027,$0004,$002c
	dc.w $0004,$0016,$0027,$78ff,$0004,$0000,$0000
	dc.w $8027,$fff4,$001c
	dc.w $0005,$0011,$0028,$7cff,$0002,$0001,$0000
	dc.w $0005,$0010,$002d,$7cff,$0000,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0393bc:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0393ea

	dc.w $803e,$086d,$0100
	dc.w $803f,$180a,$1006,$1804
	dc.w $8040,$080a,$0806,$16ff
	dc.w $8041,$0401,$0d2b

	dc.w $8036
	dc.l loc_037c56

loc_0393ea:
	dc.w $8004,$189e
	dc.w $0004,$0036,$0045,$80ff,$0000,$fff8,$0000
	dc.w $8008,$0003,$0000,$0000,$0000
	dc.w $803b,$d000,$fa0e
	dc.w $0004,$0035,$0046,$84ff,$fff8,$0000,$0000
	dc.w $8045,$0003
	dc.w $8008,$0001,$0000,$0000,$0000
	dc.w $8027,$0004,$0044
	dc.w $0006,$0018,$0043,$88ff,$0004,$0000,$0000
	dc.w $8008,$0000,$0000,$0000,$0000
	dc.w $8027,$0004,$0034
	dc.w $0006,$0017,$0044,$78ff,$0004,$0000,$0000
	dc.w $8027,$fffc,$0024
	dc.w $803c,$0000
	dc.w $0006,$0012,$002c,$78ff,$0002,$0001,$0000
	dc.w $8027,$fff4,$001c
	dc.w $0006,$0011,$0028,$7cff,$0002,$0001,$0000
	dc.w $0004,$0010,$002d,$7cff,$0000,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_039496:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0394c4

	dc.w $803e,$0a6d,$0b00
	dc.w $803f,$140a,$0805,$1408
	dc.w $8040,$080a,$0606,$16ff
	dc.w $8041,$0101,$0526

	dc.w $8036
	dc.l loc_037c62

loc_0394c4:
	dc.w $8004,$189e
	dc.w $0002,$0020,$0004,$7c00
	dc.w $0004,$0102,$0047,$78ff,$fffc,$0000,$0000
	dc.w $8045,$0003
	dc.w $8027,$ffec,$003c
	dc.w $0006,$0025,$0048,$78ff,$fff8,$0000,$0000
	dc.w $8028
	dc.w $0008,$0026,$0049,$88ff,$fffc,$0000,$0000
	dc.w $0008,$0027,$004a,$8000
	dc.w $0006,$001d,$0004,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_039518:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_039546

	dc.w $803e,$1925,$0200
	dc.w $803f,$1c06,$0c08,$1c08
	dc.w $8040,$0c04,$1508,$1200
	dc.w $8041,$0201,$0c26

	dc.w $8036
	dc.l loc_037c56

loc_039546:
	dc.w $802c
	dc.w $000c,$007e,$004b,$7cff,$fff8,$0000,$0000
	dc.w $8004,$18a1
	dc.w $802b,$1c55
	dc.w $804a,$0003,$0000,$fffd,$4400
	dc.w $8045,$0006
	dc.w $0004,$0109,$004c,$78ff,$fffc,$0000,$0000
	dc.w $0005,$00ba,$004d,$78ff,$fffc,$0000,$0000
	dc.w $804e,$0003,$0000,$ffff,$a000
	dc.w $803b,$d000,$fa0e
	dc.w $8027,$ffec,$003c
	dc.w $0008,$003e,$004e,$78ff,$fffc,$0000,$0000
	dc.w $8028
	dc.w $803c,$0000
	dc.w $0008,$000b,$0030,$78ff,$0000,$0001,$0000
	dc.w $000a,$0005,$0034,$7cff,$0000,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0395d0:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0395fe

	dc.w $803e,$1a4d,$0200
	dc.w $803f,$1406,$0806,$1406
	dc.w $8040,$0a02,$0706,$1200
	dc.w $8041,$0101,$fc22

	dc.w $8036
	dc.l loc_037c56

loc_0395fe:
	dc.w $802c
	dc.w $8004,$18a3
	dc.w $0002,$000b,$0030,$7cff,$0000,$0001,$0000
	dc.w $801a,$0002,$0018
	dc.w $8007,$0008,$0000
	dc.w $803b,$d000,$f206
	dc.w $0002,$001a,$004f,$7cff,$fff8,$0003,$0000
	dc.w $8007,$0008,$0000
	dc.w $803b,$d000,$ee02
	dc.w $0003,$001b,$0050,$7cff,$fffc,$0001,$0000
	dc.w $8045,$0004
	dc.w $802b,$1c53
	dc.w $8027,$ffe4,$002c
	dc.w $0006,$001c,$0051,$78ff,$fffc,$0001,$0000
	dc.w $8028
	dc.w $803b,$d000,$f206
	dc.w $0006,$001b,$0050,$7cff,$fffc,$0001,$0000
	dc.w $8007,$fff8,$0000
	dc.w $803c,$0000
	dc.w $0006,$001a,$004f,$7cff,$fff8,$0003,$0000
	dc.w $8007,$fff8,$0000
	dc.w $0006,$0019,$0020,$7cff,$0000,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0396ac:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_0396da

	dc.w $803e,$184b,$0100
	dc.w $803f,$1206,$0a05,$1204
	dc.w $8040,$0600,$1008,$0a00
	dc.w $8041,$0401,$0218

	dc.w $8036
	dc.l loc_037c56

loc_0396da:
	dc.w $802c
	dc.w $0002,$0028,$0008,$7cff,$fffe,$0001,$0000
	dc.w $804e,$0000,$c000,$0000,$c000
	dc.w $802b,$1c52
	dc.w $0004,$018b,$0036,$7cff,$fff8,$0000,$0000
	dc.w $8045,$0003
	dc.w $8004,$1886
	dc.w $8011,$001c,$0004,$e000,$e000
	dc.w $804b,$0002,$c000,$fff9,$7800,$0000,$b000
	dc.w $8027,$ffe4,$001c
	dc.w $0004,$018c,$0052,$78ff,$fffc,$0000,$0000
	dc.w $8007,$0008,$0000
	dc.w $8027,$fffc,$0024
	dc.w $0006,$002a,$000a,$78ff,$fff8,$0000,$0000
	dc.w $8007,$0008,$0000
	dc.w $8027,$fffc,$002c
	dc.w $0008,$00ff,$0053,$78ff,$0000,$0004,$0000
	dc.w $8028
	dc.w $0002,$0030,$0038,$7cff,$fffc,$0000,$0000
	dc.w $8007,$000a,$0000
	dc.w $8011,$001d,$0005,$e800,$ecec,$ff00
	dc.w $0004,$001a,$004f,$7cff,$fff8,$0003,$0000
	dc.w $0004,$0019,$0020,$7cff,$0000,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0397ae:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_0397e0

	dc.w $803e,$0920,$0800
	dc.w $803f,$0502,$0301,$0501
	dc.w $8040,$0b00,$0308,$00ff
	dc.w $8042,$0402
	dc.w $8041,$0201,$061b

	dc.w $8036
	dc.l loc_037c6e

loc_0397e0:
	dc.w $8005,$189d
	dc.w $0003,$002d,$0054,$78ff,$fffc,$0000,$0000
	dc.w $8027,$ffec,$001c
	dc.w $0008,$002e,$0055,$78ff,$fffc,$fffc,$0000
	dc.w $8028
	dc.w $0006,$002f,$0056,$78ff,$fffc,$0000,$0000
	dc.w $0006,$0029,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_039820:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_03984e

	dc.w $803e,$094a,$0100
	dc.w $803f,$0e04,$0a03,$0e02
	dc.w $8040,$03ff,$03ff,$00ff
	dc.w $8041,$0401,$061f

	dc.w $8036
	dc.l loc_037c6e

loc_03984e:
	dc.w $8004,$1898
	dc.w $0003,$002b,$0057,$78ff,$fffc,$0000,$0000
	dc.w $8045,$0002
	dc.w $8027,$ffec,$0024
	dc.w $0006,$0038,$0058,$78ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03987a:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_0398a8

	dc.w $803e,$096a,$0100
	dc.w $803f,$0c04,$0403,$0c02
	dc.w $8040,$04ff,$04ff,$00ff
	dc.w $8041,$0201,$fd22

	dc.w $8036
	dc.l loc_037c6e

loc_0398a8:
	dc.w $8004,$189f
	dc.w $0004,$0033,$0059,$78ff,$0004,$fffc,$0000
	dc.w $8045,$0002
	dc.w $8027,$ffec,$0034
	dc.w $0006,$0034,$005a,$78ff,$fffc,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0398d4:
	dc.w $8037
	dc.l loc_036d2c
	dc.w $8038
	dc.l loc_039908

	dc.w $803e,$194a,$0200
	dc.w $803f,$0a04,$0402,$0a02
	dc.w $8040,$03ff,$03ff,$00ff
	dc.w $8041,$0101,$f60c

	dc.w $803c,$0008
	dc.w $803b,$d8ec,$f606,$0000

loc_039908:
 	dc.w $8004,$189c
	dc.w $0003,$00fd,$005b,$78ff,$0000,$0008,$0000
	dc.w $8045,$0002
	dc.w $000c,$00fe,$005c,$78ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03992e:
	dc.w $0001,$0199,$005c,$78ff,$0000,$0008,$0000
	dc.w $803d
	dc.w $0008,$010a,$000b,$78ff,$fff8,$0008,$0000
	dc.w $0006,$0029,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_039956:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_039984

	dc.w $803e,$0924,$0200
	dc.w $803f,$1408,$0a05,$1404
	dc.w $8040,$0b03,$0506,$ffff
	dc.w $8041,$0101,$0621

	dc.w $8036
	dc.l loc_037c6e

loc_039984:
	dc.w $8004,$18a1
	dc.w $0003,$00f6,$005d,$78ff,$000c,$fffc,$0000
	dc.w $0002,$00f7,$005e,$78ff,$0008,$fff0,$0000
	dc.w $8045,$0004
	dc.w $8027,$ffec,$002c
	dc.w $0006,$00f1,$005f,$78ff,$0000,$0008,$0000
	dc.w $0004,$002d,$0054,$78ff,$fffc,$0000,$0000
	dc.w $0004,$002f,$0056,$78ff,$fffc,$0000,$0000
	dc.w $0004,$0029,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0399e2:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_039a16

	dc.w $803e,$1864,$0200
	dc.w $803f,$1808,$1008,$1804
	dc.w $8040,$0a05,$0406,$ffff
	dc.w $8041,$0c01,$0016
	dc.w $803c,$0008
	dc.w $803b,$d0ec,$f606,$0000

loc_039a16:
	dc.w $8027,$ffec,$0014
	dc.w $8004,$189e
	dc.w $0002,$002f,$0037,$7cff,$fffc,$0000,$0000
	dc.w $0002,$0030,$0038,$78ff,$fffc,$0000,$0000
	dc.w $8045,$0004
	dc.w $802b,$1c51
	dc.w $0006,$0031,$0061,$78ff,$fffc,$0000,$0000
	dc.w $803c,$0008
	dc.w $0006,$0107,$003a,$78ff,$fffc,$0010,$0000
	dc.w $0006,$010c,$003b,$78ff,$0000,$0008,$0000
	dc.w $0006,$0190,$000b,$7cff,$fffc,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_039a82:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_039ab0

	dc.w $803e,$094c,$2700
	dc.w $803f,$1a08,$1006,$1a08
	dc.w $8040,$0704,$0704,$ffff
	dc.w $8041,$0201,$0024

	dc.w $8036
	dc.l loc_037c6e

loc_039ab0:
	dc.w $8004,$18a3
	dc.w $0002,$00f5,$0062,$78ff,$0000,$0010,$0000
	dc.w $8027,$ffe4,$0014
	dc.w $0002,$00ef,$0063,$78ff,$0008,$0012,$0000
	dc.w $0003,$00f0,$0064,$78ff,$0010,$0010,$0000
	dc.w $8045,$0004
	dc.w $8027,$ffd4,$002c
	dc.w $0004,$012e,$0065,$78ff,$0000,$0018,$0000
	dc.w $8028
	dc.w $0002,$012f,$0066,$78ff,$0008,$0014,$0000
	dc.w $0003,$0193,$0067,$78ff,$0004,$0000,$0000
	dc.w $0005,$0194,$0068,$78ff,$0000,$0008,$0000
	dc.w $0008,$0195,$0069,$78ff,$0000,$0008,$0000
	dc.w $0006,$0029,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_039b40:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_039b6e

	dc.w $803e,$092c,$0200
	dc.w $803f,$1208,$0a04,$1204
	dc.w $8040,$0a05,$0406,$ffff
	dc.w $8041,$0201,$f125

	dc.w $8036
	dc.l loc_037c6e

loc_039b6e:
	dc.w $8004,$18a1
	dc.w $0002,$002d,$0054,$78ff,$fffc,$0000,$0000
	dc.w $0002,$002b,$0057,$78ff,$fffc,$0000,$0000
	dc.w $8045,$0004
	dc.w $8027,$ffe4,$0034
	dc.w $0006,$002c,$006a,$7800
	dc.w $8028
	dc.w $0006,$002b,$0057,$78ff,$fffc,$0000,$0000
	dc.w $0006,$002d,$0054,$78ff,$fffc,$0000,$0000
	dc.w $0006,$002f,$0056,$78ff,$fffc,$0000,$0000
	dc.w $0006,$0029,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_039bd6:
	dc.w $8037
	dc.l loc_02904e
	dc.w $8038
	dc.l loc_039c04

	dc.w $803e,$182c,$0200
	dc.w $803f,$1208,$0a04,$1204
	dc.w $8040,$0fff,$0fff,$00ff
	dc.w $8041,$0101,$f016

	dc.w $8036
	dc.l loc_037c6e

loc_039c04:
	dc.w $8008,$0001,$0000,$fffe,$0000
	dc.w $802b,$1c57
	dc.w $0002,$002d,$0054,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0033,$0059,$78ff,$0004,$fffc,$0000
	dc.w $0002,$0035,$006b,$7800
	dc.w $0002,$0036,$006c,$7800
	dc.w $8045,$0004
	dc.w $8004,$18a1
	dc.w $0007,$0039,$006d,$7800
	dc.w $8008,$0006,$0000,$0008,$0000
	dc.w $8027,$ffec,$0024
	dc.w $0064,$003a,$006e,$7800
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_039c68:
	dc.w $8037
	dc.l loc_037328
	dc.w $8038
	dc.l loc_039caa

	dc.w $803e,$3821,$1a00
	dc.w $803f,$0400,$0005,$0200
	dc.w $8046,$1800
	dc.w $8040,$0000,$0a1e,$1b00
	dc.w $8041,$0401,$0e28
	dc.w $8039,$0000
	dc.w $8048,$0550,$0008
	dc.w $8048,$00be,$0000

	dc.w $8036
	dc.l loc_037c56

loc_039caa:
	dc.w $8047,$02b8,$ffff
	dc.w $802c
	dc.w $0002,$000b,$0030,$78ff,$0000,$0001,$0000
	dc.w $802a,$0002
	dc.w $0003,$0005,$0034,$78ff,$0000,$0001,$0000
	dc.w $0003,$000a,$0033,$78ff,$0000,$0001,$0000
	dc.w $8045,$0008
	dc.w $8027,$ffec,$001c
	dc.w $0002,$0196,$001d,$78ff,$0000,$0001,$0000

	dc.w $800a
	dc.l loc_039e44

loc_039cfe:
	dc.w $8027,$ffec,$003c
	dc.w $0001,$0044,$006f,$78ff,$0000,$0001,$0000
	dc.w $0001,$0043,$006f,$78ff,$0000,$0001,$0000
	dc.w $8005,$189d
	dc.w $0002,$0044,$006f,$78ff,$0000,$0001,$0000
	dc.w $0001,$0045,$006f,$78ff,$0000,$0001,$0000
	dc.w $0001,$0040,$006f,$78ff,$0000,$0001,$0000
	dc.w $0001,$0041,$006f,$78ff,$0000,$0001,$0000
	dc.w $0001,$0040,$006f,$78ff,$0000,$0001,$0000
	dc.w $8005,$189d
	dc.w $0002,$0041,$006f,$78ff,$0000,$0001,$0000
	dc.w $0001,$0042,$006f,$78ff,$0000,$0001,$0000
	dc.w $0001,$0043,$006f,$78ff,$0000,$0001,$0000
	dc.w $8000,$0000
	dc.l loc_039cfe

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_039da0:
	dc.w $8047,$02b8,$0000
	dc.w $803e,$2824,$0f00
	dc.w $8046,$0000
	dc.w $803f,$120c,$0807,$1208
	dc.w $8045,$0004
	dc.w $8004,$18a1
	dc.w $8027,$ffec,$001c
	dc.w $8008,$0003,$0000,$0000,$0000
	dc.w $0002,$0196,$001d,$78ff,$fffe,$0001,$0000
	dc.w $8027,$ffec,$0034
	dc.w $804e,$0003,$0000,$ffff,$8000
	dc.w $0004,$0009,$0070,$78ff,$fffc,$0001,$0000
	dc.w $8027,$ffec,$001c
	dc.w $0006,$0196,$003d,$78ff,$fffe,$0001,$0000
	dc.w $8028
	dc.w $000b,$0005,$0034,$78ff,$0000,$0001,$0000
	dc.w $0005,$000a,$0033,$78ff,$0000,$0001,$0000
	dc.w $8048,$0550,$0005
	dc.w $0005,$000a,$0033,$78ff,$0000,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_039e44:
	dc.w $0001,$009d,$74ff,$ffb8,$005c,$0000
	dc.w $0001,$009e,$74ff,$ffb8,$0058,$0002
	dc.w $0001,$009b,$74ff,$ffb8,$0064,$0000
	dc.w $0001,$009c,$74ff,$ffb8,$0064,$0002
	dc.w $0001,$009f,$74ff,$ffc0,$0038,$0000
	dc.w $0001,$009e,$74ff,$ffb8,$0050,$0000
	dc.w $0001,$009b,$74ff,$ffb8,$0048,$0002
	dc.w $0001,$009c,$74ff,$ffb8,$0044,$0000
	dc.w $8000,$0000
	dc.l loc_039e44

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_039eac:
	dc.w $0038,$fffa,$003e,$fff4,$0041,$ffee,$0043,$ffe8
	dc.w $0041,$ffe2,$003d,$ffe0,$0034,$ffe0,$002f,$ffe2
	dc.w $0030,$ffe8,$0034,$ffec,$0037,$ffee,$0042,$fff0

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_039edc:
	dc.w $8037
	dc.l loc_037434
	dc.w $8038
	dc.l loc_039f1e

	dc.w $8039,$0001
	dc.w $803e,$286c,$1800
	dc.w $8046,$1010
	dc.w $803f,$0c04,$0004,$0c00
	dc.w $8040,$0000,$0f05,$1600
	dc.w $8041,$0401,$0925
	dc.w $8048,$0550,$0002
	dc.w $8048,$00be,$0000
	dc.w $803c,$0000,$0000

loc_039f1e:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $802c
	dc.w $0002,$0128,$0071,$7cff,$0000,$0004,$0000
	dc.w $8011,$001c,$0004,$e800,$f000
	dc.w $804c
	dc.l $00040000,$fffa6000,$ffffe000,$0000c000

	dc.w $8045,$0008
	dc.w $8004,$189e
	dc.w $802b,$1c4e
	dc.w $0004,$0130,$0072,$7cff,$0000,$0008,$0001
	dc.w $0004,$0131,$0073,$7cff,$0000,$000c,$0001
	dc.w $0005,$0132,$0074,$88ff,$0008,$0014,$0001
	dc.w $0003,$0133,$0075,$78ff,$0000,$0010,$0001
	dc.w $803f,$1008,$0604,$0c08
	dc.w $8000,$0000
	dc.l loc_03a070

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_039faa:
	dc.w $8037
	dc.l loc_037434
	dc.w $8038
	dc.l loc_039fec

	dc.w $8039,$0001
	dc.w $803e,$286c,$1800
	dc.w $8046,$1010
	dc.w $803f,$1004,$0005,$1000
	dc.w $8040,$0000,$1107,$1600
	dc.w $8041,$0401,$0925
	dc.w $8048,$0550,$0002
	dc.w $8048,$00be,$0000
	dc.w $803c,$0000,$0000

loc_039fec:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $802c
	dc.w $0002,$0128,$0071,$7cff,$0000,$0004,$0000
	dc.w $8011,$001c,$0004,$e800,$f000
	dc.w $804c
	dc.l $00028000,$fff8e000,$00002000,$0000c000

	dc.w $8045,$000c
	dc.w $8004,$189e
	dc.w $802b,$1c4e
	dc.w $0004,$0130,$0072,$7cff,$0000,$0008,$0001
	dc.w $0005,$0131,$0073,$7cff,$0000,$000c,$0001
	dc.w $0006,$0132,$0074,$88ff,$0008,$0014,$0001
	dc.w $0005,$0133,$0075,$78ff,$0000,$0010,$0001
	dc.w $803f,$1408,$1207,$1408

loc_03a070:
	dc.w $8025
	dc.w $803e,$386c,$1700
	dc.w $8046,$1000
	dc.w $803b,$0000,$f60a
	dc.w $8047,$0273,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $802b,$1c52

	dc.w $800a
	dc.l loc_03a192

	dc.w $0001,$01a6,$0076,$88ff,$0000,$0000,$0000
	dc.w $0001,$01a7,$0076,$88ff,$0000,$0000,$0000
	dc.w $8025
	dc.w $8008,$0003,$0000,$0000,$0000
	dc.w $0002,$0134,$0077,$88ff,$0000,$0000,$0001
	dc.w $8008,$0006,$0000,$0000,$0000
	dc.w $8002,$188a
	dc.w $0002,$003b,$0078,$7cff,$0000,$fff8,$0000
	dc.w $0003,$003c,$0079,$7cff,$0000,$ffd8,$0000
	dc.w $0003,$003d,$0079,$7cff,$0000,$ffd8,$0000
	dc.w $804e,$0006,$0000,$ffff,$4000
	dc.w $0004,$003c,$0079,$7cff,$0000,$0060,$0003
	dc.w $8048,$0550,$0008
	dc.w $0005,$002a,$007a,$7cff,$fff8,$ffe8,$0000
	dc.w $803c,$0000
	dc.w $0003,$0118,$0003,$78ff,$fffe,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03a146:
	dc.w $0002,$0134,$0077,$88ff,$0000,$0000,$0001
	dc.w $0004,$003b,$000c,$7c00
	dc.w $0004,$003c,$000d,$7c00
	dc.w $0004,$003d,$000e,$7c00
	dc.w $8048,$0550,$000e
	dc.w $0004,$003c,$000d,$7cff,$0000,$0088,$0003
	dc.w $0004,$003f,$000f,$7c00
	dc.w $0006,$0029,$000b,$7c00
	dc.w $8001

loc_03a192:
	dc.w $0001,$01a8,$7400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;QCB+K
loc_03a19a:
	dc.w $803f,$0e04,$0003,$0e04
	dc.w $8036
	dc.l loc_03a1b0

loc_03a1a8:
	dc.w $803f,$1404,$0005,$1404

loc_03a1b0:
	dc.w $8037
	dc.l loc_036e12
	dc.w $8038
	dc.l loc_03a1ea

	dc.w $8039,$0001
	dc.w $803e,$386c,$1900
	dc.w $8040,$000c,$0504,$0c00
	dc.w $8043,$0007
	dc.w $8041,$0c07,$071f
	dc.w $8048,$0550,$0005
	dc.w $8048,$00be,$0000
	dc.w $803c,$0000,$0000

loc_03a1ea:
	dc.w $8047,$00b6,$0000
	dc.w $8004,$189e
	dc.w $802c
	dc.w $0001,$01a9,$0000,$78ff,$0008,$0000,$0000
	dc.w $0001,$01aa,$0000,$78ff,$0008,$0000,$0000

	dc.w $800a
	dc.l loc_03a298

	dc.w $0001,$01ab,$0000,$78ff,$0004,$0004,$0000
	dc.w $802a,$0004
	dc.w $8027,$fff4,$001c
	dc.w $0001,$01ac,$007b,$78ff,$fffc,$0000,$0000
	dc.w $0001,$01ad,$007b,$78ff,$fffc,$0000,$0000
	dc.w $8045,$0008
	dc.w $8047,$00b6,$ffff
	dc.w $8027,$fff4,$0034
	dc.w $0004,$01ae,$007c,$78ff,$fffc,$0004,$0000
	dc.w $8028
	dc.w $0006,$01af,$007d,$88ff,$fffc,$0000,$0000
	dc.w $0006,$01b0,$007e,$7cff,$0004,$0004,$0000
	dc.w $0004,$01b1,$007f,$7cff,$fffc,$0008,$0000
	dc.w $8001

loc_03a298:
	dc.w $0001,$01b9,$74ff,$000c,$001c,$0d00
	dc.w $0001,$004e,$74ff,$fff4,$0030,$0d00
	dc.w $0001,$004f,$74ff,$ffec,$0040,$0d00
	dc.w $0004,$0050,$74ff,$ffdc,$005c,$0d00
	dc.w $0006,$0051,$78ff,$ffe4,$0060,$0d00
	dc.w $0006,$0052,$78ff,$0014,$0034,$0d00
	dc.w $005e,$01ba,$78ff,$000c,$0018,$0d00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03a2ee:
	dc.w $803e,$384c,$1a00
	dc.w $8040,$000c,$0304,$0c00
	dc.w $803f,$0a04,$0003,$0a04
	dc.w $8041,$0c07,$061c

	dc.w $8045,$0004
	dc.w $8004,$18a3

	dc.w $800a
	dc.l loc_03a36e

	dc.w $8027,$fff4,$001c
	dc.w $0001,$01b1,$007f,$78ff,$fffc,$0008,$0000
	dc.w $0002,$01b2,$0081,$78ff,$0002,$0008,$0000
	dc.w $8027,$ffec,$0034
	dc.w $0004,$0038,$0080,$78ff,$fffc,$fffc,$0000
	dc.w $8028
	dc.w $0006,$01b3,$0081,$78ff,$0002,$0008,$0000
	dc.w $0006,$01b4,$0082,$7cff,$0002,$0004,$0000
	dc.w $8001

loc_03a36e:
	dc.w $0001,$01ba,$74ff,$000c,$0018,$0d00
	dc.w $0002,$0053,$74ff,$fff2,$0018,$0d00
	dc.w $0002,$0054,$74ff,$ffe4,$0044,$0d00
	dc.w $0002,$00d6,$74ff,$ffd4,$0044,$0d00
	dc.w $0006,$0055,$74ff,$fff2,$0028,$0d00
	dc.w $0060,$004b,$78ff,$0002,$0014,$0d00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03a3b8:
	dc.w $803c,$0008
	dc.w $803e,$382c,$2b00
	dc.w $8040,$0000,$0308,$ff00
	dc.w $803f,$0e08,$0c04,$0a08
	dc.w $8041,$0c07,$0420
	dc.w $8045,$0004
	dc.w $8004,$18a1
	dc.w $802a,$0005

	dc.w $800a
	dc.l loc_03a456

	dc.w $0001,$01b4,$0082,$7cff,$0002,$0004,$0000
	dc.w $0002,$01b5,$0083,$78ff,$0004,$fffe,$0000
	dc.w $8027,$ffec,$0034
	dc.w $0002,$01b6,$0084,$78ff,$fffc,$fffe,$0000
	dc.w $0004,$01b7,$0084,$78ff,$fffc,$fffe,$0000
	dc.w $0002,$01b6,$0084,$78ff,$fffc,$fffe,$0000
	dc.w $8028
	dc.w $0006,$01b5,$0083,$7cff,$0004,$fffe,$0000
	dc.w $0006,$01b4,$0082,$7cff,$0002,$0004,$0000
	dc.w $8001

loc_03a456:
	dc.w $0001,$004b,$78ff,$0002,$0014,$0d00
	dc.w $0002,$004d,$74ff,$ffe4,$003e,$0d00
	dc.w $0008,$004c,$74ff,$ffcc,$003e,$0d00
	dc.w $0004,$004b,$78ff,$ffc0,$003c,$0d01
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03a488:
	dc.w $0004,$002a,$000a,$7cff,$fff8,$0000,$0000
	dc.w $0006,$002a,$000a,$7cff,$fff8,$0000,$0000
	dc.w $0006,$0029,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03a4ae:
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$003f,$000f,$7c00
	dc.w $0004,$003c,$000d,$7cff,$0000,$0088,$0003
	dc.w $0004,$003d,$000e,$7c00
	dc.w $0004,$003c,$000d,$7c00
	dc.w $0004,$003b,$000c,$7c00
	dc.w $0006,$0029,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03a4ec:
	dc.w $803c,$0000
	dc.w $8003,$1870
	dc.w $8048,$0550,$0004
	dc.w $0004,$0028,$0008,$7cff,$fffe,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03a50a:
	dc.w $8037
	dc.l loc_036fcc
	dc.w $8038
	dc.l loc_03a548

	dc.w $803e,$2802,$0f00
	dc.w $803f,$1204,$0406,$1208
	dc.w $8040,$0000,$0900,$2100
	dc.w $8041,$0211,$2020

	dc.w $8039,$0000
	dc.w $8048,$0550,$0008
	dc.w $8048,$00be,$0000
	dc.w $8036
	dc.l loc_037c56

loc_03a548:
	dc.w $8047,$00b6,$0000
	dc.w $802c
	dc.w $0002,$0183,$0085,$7cff,$0004,$0004,$0000
	dc.w $800a
	dc.l loc_03a5ec
	dc.w $0004,$0184,$0086,$7cff,$0000,$0004,$0000
	dc.w $802a,$0003
	dc.w $8027,$ffec,$0024
	dc.w $0002,$0185,$0087,$7cff,$0000,$0004,$0000
	dc.w $8045,$0006
	dc.w $8004,$1884
	dc.w $8027,$ffec,$0034
	dc.w $0001,$0186,$0088,$7cff,$0000,$0004,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $000e,$0186,$0088,$7cff,$0000,$0004,$0000
	dc.w $000a,$0187,$0089,$7cff,$fffa,$0004,$0000
	dc.w $8048,$0550,$0009
	dc.w $0004,$0008,$003d,$7cff,$0000,$0001,$0000
	dc.w $0005,$0019,$0020,$7cff,$0000,$0001,$0000
	dc.w $8001

loc_03a5ec:
	dc.w $0001,$00a2,$78ff,$0028,$004c,$0c00
	dc.w $0001,$00a3,$78ff,$0028,$004c,$0c00
	dc.w $0001,$00a4,$78ff,$0028,$004c,$0e00
	dc.w $0001,$00a4,$78ff,$0028,$004c,$0c00
	dc.w $0001,$00a5,$78ff,$0000,$0054,$0e00
	dc.w $0001,$00a5,$78ff,$0000,$0054,$0c00
	dc.w $0001,$00a9,$78ff,$ffc8,$0048,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03a642:
	dc.w $8037
	dc.l loc_036fcc
	dc.w $8038
	dc.l loc_03a680

	dc.w $803e,$2802,$0f00
	dc.w $803f,$1204,$0406,$1208
	dc.w $8040,$0000,$0b00,$2200
	dc.w $8041,$0211,$2020
	dc.w $8039,$0000
	dc.w $8048,$0550,$0008
	dc.w $8048,$00be,$0000
	dc.w $8036,$0003,$7c56

loc_03a680:
	dc.w $8047,$00b6,$0000
	dc.w $802c
	dc.w $0002,$0183,$0085,$7cff,$0004,$0004,$0000
	dc.w $800a
	dc.l loc_03a724

	dc.w $0006,$0184,$0086,$7cff,$0000,$0004,$0000
	dc.w $802a,$0003
	dc.w $8027,$ffec,$0024
	dc.w $0002,$0185,$0087,$7cff,$0000,$0004,$0000
	dc.w $8045,$0006
	dc.w $8004,$1884
	dc.w $8027,$ffec,$0034
	dc.w $0001,$0186,$0088,$7cff,$0000,$0004,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $000e,$0186,$0088,$7cff,$0000,$0004,$0000
	dc.w $000a,$0187,$0089,$7cff,$fffa,$0004,$0000
	dc.w $8048,$0550,$000a
	dc.w $0004,$0008,$003d,$7cff,$0000,$0001,$0000
	dc.w $0006,$0019,$0020,$7cff,$0000,$0001,$0000
	dc.w $8001

loc_03a724:
	dc.w $0001,$00a2,$78ff,$0028,$004c,$0e00
	dc.w $0001,$00a2,$78ff,$0028,$004c,$0c00
	dc.w $0001,$00a3,$78ff,$0028,$004c,$0e00
	dc.w $0001,$00a3,$78ff,$0028,$004c,$0c00
	dc.w $0001,$00a4,$78ff,$0028,$004c,$0e00
	dc.w $0001,$00a4,$78ff,$0028,$004c,$0c00
	dc.w $0001,$00a5,$78ff,$0000,$0054,$0e00
	dc.w $0001,$00a5,$78ff,$0000,$0054,$0c00
	dc.w $0001,$00a9,$78ff,$ffc8,$0048,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03a792:
	dc.w $0001,$00a6,$40ff,$fff8,$0008,$0c00
	dc.w $0001,$00a6,$40ff,$fff8,$0008,$0e00
	dc.w $0001,$00a7,$40ff,$fff8,$0008,$0c00
	dc.w $0001,$00a7,$40ff,$fff8,$0008,$0e00
	dc.w $0001,$0000,$6000
	dc.w $0001,$00a8,$40ff,$fff8,$0008,$0c00
	dc.w $0001,$00a8,$40ff,$fff8,$0008,$0e00
	dc.w $0001,$00a9,$40ff,$fff8,$0008,$0c00
	dc.w $0001,$00a9,$40ff,$fff8,$0008,$0e00
	dc.w $0001,$0000,$6000
	dc.w $8000,$0000
	dc.l loc_03a792

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03a806:
	dc.w $8002,$1885
	dc.w $0001,$00b3,$40ff,$fff8,$0008,$0c00
	dc.w $0001,$00b4,$40ff,$fff8,$0008,$0e00
	dc.w $0001,$00b5,$40ff,$fff8,$0008,$0c00
	dc.w $0001,$00b6,$40ff,$fff8,$0008,$0e00
	dc.w $0001,$00b7,$40ff,$fff8,$0008,$0c00
	dc.w $0001,$00b8,$40ff,$fffa,$0008,$0e00
	dc.w $0001,$00d7,$40ff,$fffa,$0008,$0c00
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03a860:
	dc.w $8037
	dc.l loc_037024
	dc.w $8038
	dc.l loc_03a8a8

	dc.w $803e,$3882,$1e00
	dc.w $8048,$025c,$00c4
	dc.w $803f,$0c02,$0006,$0a00
	dc.w $8040,$0000,$0900,$ff00
	dc.w $8043,$0009
	dc.w $8041,$0212,$2020
	dc.w $8039,$0001
	dc.w $8048,$0550,$0000
	dc.w $8048,$00be,$0000

	dc.w $8036
	dc.l loc_037c6e

loc_03a8a8:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $8047,$00b9,$0000
	dc.w $0002,$0145,$0000,$7cff,$0000,$0010,$0000
	dc.w $802a,$0007
	dc.w $0002,$0146,$0000,$7cff,$0000,$0008,$0000
	dc.w $8047,$00b9,$ffff

	dc.w $800c
	dc.l loc_03a948

	dc.w $0001,$0147,$0000,$7cff,$0000,$0008,$0000

	dc.w $800a
	dc.l loc_03a992

	dc.w $0001,$0147,$0000,$7cff,$0000,$0008,$0000
	dc.w $0003,$0191,$0000,$7cff,$fffc,$0004,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $0020,$0192,$008a,$7cff,$fff8,$0000,$0000
	dc.w $8047,$00b7,$ffff
	dc.w $0006,$002f,$0056,$78ff,$fffc,$0000,$0000
	dc.w $0006,$0029,$000b,$7c00
	dc.w $8001

loc_03a948:
	dc.w $0004,$00aa,$78ff,$0010,$0060,$0c00
	dc.w $0004,$00ab,$78ff,$0010,$0060,$0e00
	dc.w $0004,$00ac,$78ff,$0010,$0060,$0c00
	dc.w $0004,$00ac,$78ff,$0010,$0060,$0e00
	dc.w $0004,$00ac,$78ff,$0010,$0060,$0c00
	dc.w $0004,$00ac,$78ff,$0010,$0060,$0e00
	dc.w $8001

loc_03a992:
	dc.w $0001,$00ac,$78ff,$0010,$0060,$0e00
	dc.w $0001,$00ad,$70ff,$000c,$005c,$0c00
	dc.w $0001,$00ad,$70ff,$000c,$005c,$0e00
	dc.w $0001,$00ad,$70ff,$000c,$005c,$0c00
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03a9c4:
	dc.w $8013,$0089,$001f
	dc.w $8000,$0000
	dc.l loc_03aa4a

loc_03a9d2:
	dc.w $8013,$0089,$001f
	dc.w $8000,$0000
	dc.l loc_03aa1a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03a9e0:
	dc.w $8013,$0089,$001f
	dc.w $8000,$0000
	dc.l loc_03aa62

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03a9ee:
	dc.w $8013,$0089,$001f
	dc.w $8000,$0000
	dc.l loc_03aa32

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03a9fc:
	dc.w $8013,$0089,$0027
	dc.w $0001,$00ae,$40ff,$0000,$0000,$0c00
	dc.w $0001,$00ae,$40ff,$0000,$0000,$0e00

loc_03aa1a:
	dc.w $0001,$00af,$40ff,$0000,$0000,$0c00
	dc.w $0001,$00af,$40ff,$0000,$0000,$0e00

loc_03aa32:
	dc.w $0001,$00b0,$40ff,$0000,$0000,$0c00
	dc.w $0001,$00b0,$40ff,$0000,$0000,$0e00

loc_03aa4a:
	dc.w $0001,$00b1,$40ff,$0000,$0000,$0c00
	dc.w $0001,$00b1,$40ff,$0000,$0000,$0e00

loc_03aa62:
	dc.w $0001,$00b2,$40ff,$0000,$0000,$0c00
	dc.w $0001,$00b2,$40ff,$0000,$0000,$0e00
	dc.w $8000,$0000
	dc.l loc_03aa4a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03aa82:
	dc.w $0001,$00be,$40ff,$fff8,$fff8,$0c00
	dc.w $0001,$00be,$40ff,$fff8,$fff8,$0c00
	dc.w $0001,$00be,$40ff,$fff8,$fff8,$0e00
	dc.w $0001,$00bf,$40ff,$fff8,$fff8,$0e00
	dc.w $0001,$00bf,$40ff,$fff8,$fff8,$0c00
	dc.w $0001,$00bf,$40ff,$fff8,$fff8,$0c00
	dc.w $0001,$00c0,$40ff,$fff8,$fff8,$0e00
	dc.w $0001,$00c0,$40ff,$fff8,$fff8,$0e00
	dc.w $0001,$00c0,$40ff,$fff8,$fff8,$0c00
	dc.w $0001,$00c1,$40ff,$fff8,$fff8,$0c00
	dc.w $0001,$00c1,$40ff,$fff8,$fff8,$0e00
	dc.w $0001,$00c1,$40ff,$fff8,$fff8,$0e00
	dc.w $0001,$00c2,$40ff,$fff8,$fff8,$0c00
	dc.w $0001,$00c2,$40ff,$fff8,$fff8,$0c00
	dc.w $0001,$00c2,$40ff,$fff8,$fff8,$0e00
	dc.w $0001,$00c3,$40ff,$fff8,$fff8,$0e00
	dc.w $0001,$00c3,$40ff,$fff8,$fff8,$0c00
	dc.w $0001,$00c3,$40ff,$fff8,$fff8,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03ab5c:
	dc.w $0002,$0151,$40ff,$fff8,$fff8,$0c00
	dc.w $0002,$0151,$40ff,$fff8,$fff8,$0e00
	dc.w $0002,$0152,$40ff,$fff8,$fff8,$0c00
	dc.w $0002,$0152,$40ff,$fff8,$fff8,$0e00
	dc.w $0002,$0153,$40ff,$fff8,$fff8,$0c00
	dc.w $0002,$0153,$40ff,$fff8,$fff8,$0e00
	dc.w $0002,$0154,$40ff,$fff8,$fff8,$0c00
	dc.w $0002,$0154,$40ff,$fff8,$fff8,$0e00
	dc.w $0002,$0155,$40ff,$fff8,$fff8,$0c00
	dc.w $0002,$0155,$40ff,$fff8,$fff8,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03abd6:
	dc.w $8037
	dc.l loc_037110
	dc.w $8038
	dc.l loc_03ac18

	dc.w $803e,$3882,$1d00
	dc.w $803f,$0202,$0003,$0500
	dc.w $8040,$0000,$082c,$2600
	dc.w $8043,$0009
	dc.w $8041,$0412,$2020
	dc.w $8039,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$00be,$0000

	dc.w $8036
	dc.l loc_037c56

loc_03ac18:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $8047,$00b9,$0000
	dc.w $802c
	dc.w $0002,$000b,$0000,$78ff,$0000,$0001,$0000
	dc.w $0002,$000a,$0000,$78ff,$fffe,$0001,$0000
	dc.w $802b,$1c55
	dc.w $8047,$00b9,$ffff
	dc.w $0002,$007e,$0000,$78ff,$fff8,$0000,$0000
	dc.w $0002,$000a,$0000,$78ff,$fffe,$0001,$0000
	dc.w $802a,$0009

loc_03ac72:
	dc.w $8027,$ffec,$0024
	dc.w $0001,$0043,$008b,$78ff,$0000,$0001,$0000
	dc.w $8047,$00b6,$0001
	dc.w $8005,$189d
	dc.w $0002,$0044,$008b,$78ff,$0000,$0001,$0000
	dc.w $0001,$0045,$008b,$78ff,$0000,$0001,$0000
	dc.w $8047,$00b7,$ffff
	dc.w $0001,$0040,$008b,$78ff,$0000,$0001,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $8005,$189d
	dc.w $0002,$0041,$008b,$78ff,$0000,$0001,$0000
	dc.w $0001,$0042,$008b,$78ff,$0000,$0001,$0000
	dc.w $8000,$0000
	dc.l loc_03ac72

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03acee:
	dc.w $8028
	dc.w $0006,$0187,$0089,$7cff,$fffa,$0003,$0000
	dc.w $0004,$000b,$0030,$7cff,$0000,$0001,$0000
	dc.w $0004,$0019,$0020,$7cff,$0000,$0001,$0000
	dc.w $0010,$000a,$0033,$7cff,$0000,$0001,$0000
	dc.w $0008,$0005,$0034,$7cff,$0000,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03ad38:
	dc.w $0002,$00c5,$40ff,$fff8,$0008,$0f00
	dc.w $0002,$00c6,$40ff,$fff8,$0008,$0f00
	dc.w $8000,$0000
	dc.l loc_03ad38

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03ad58:
	dc.w $0002,$00c7,$40ff,$fff8,$0008,$0f00
	dc.w $0002,$00c8,$40ff,$fff8,$0008,$0f00
	dc.w $8000,$0000
	dc.l loc_03ad58

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03ad78:
	dc.w $0001,$0060,$40ff,$fff8,$0008,$0c00
	dc.w $0001,$0061,$40ff,$fff8,$0008,$0e00
	dc.w $0001,$0062,$40ff,$fff8,$0008,$0c00
	dc.w $0001,$0063,$40ff,$fff8,$0008,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03adaa:
	dc.w $8004,$1885
	dc.w $0001,$0060,$40ff,$fff8,$0008,$0c00
	dc.w $0001,$0061,$40ff,$fff8,$0008,$0e00
	dc.w $0001,$0062,$40ff,$fff8,$0008,$0c00
	dc.w $0001,$0063,$40ff,$fff8,$0008,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03ade0:
	dc.w $8037
	dc.l loc_0371ca
	dc.w $8038
	dc.l loc_03ae26

	dc.w $8039,$0001
	dc.w $803e,$38aa,$2300
	dc.w $8046,$1c00
	dc.w $803f,$0201,$0001,$0100
	dc.w $8040,$0000,$093c,$ff00
	dc.w $8043,$0009
	dc.w $8041,$0201,$0224
	dc.w $8048,$0550,$0000
	dc.w $8048,$00be,$0000

	dc.w $8036
	dc.l loc_037c6e

loc_03ae26:
	dc.w $8047,$02b8,$0001
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b9,$0000
	dc.w $8004,$1886
	dc.w $8008,$fffe,$0000,$fffa,$0000
	dc.w $802b,$1c57

	dc.w $800a
	dc.l loc_03afa4

	dc.w $0006,$01b4,$0000,$7cff,$0002,$0004,$0000
	dc.w $8047,$00b9,$ffff
	dc.w $0003,$002b,$0000,$7cff,$fffc,$0000,$0000
	dc.w $8004,$189e
	dc.w $804e,$0004,$0000,$0000,$a000
	dc.w $8049,$021a,$0001,$b000

loc_03ae88:
	dc.w $8027,$ffec,$0034
	dc.w $0001,$002c,$0091,$7800
	dc.w $0001,$00bd,$0091,$78ff,$0000,$0008,$0d00
	dc.w $8000,$0000
	dc.l loc_03ae88

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03aeac:
	dc.w $800a
	dc.l loc_03b000

	dc.w $8047,$02b8,$0001

loc_03aeb8:
	dc.w $803e,$38aa,$2300
	dc.w $0001,$002c,$0091,$7800
	dc.w $8047,$00b6,$ffff
	dc.w $803e,$38aa,$2300
	dc.w $0001,$00bd,$0091,$78ff,$0000,$0008,$0d00
	dc.w $8047,$00b6,$ffff

	dc.w $8000,$0000
	dc.l loc_03aeb8

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03aeee:
	dc.w $8009
	dc.l loc_03b08e

	dc.w $803e,$38ec,$2b00
	dc.w $8046,$0000
	dc.w $803f,$1804,$0a0a,$2008
	dc.w $8040,$0000,$0204,$ff00
	dc.w $8008,$ffff,$0000,$fff3,$1c00
	dc.w $802a,$000b
	dc.w $8007,$0010,$0010

	dc.w $800a
	dc.l loc_03b044

	dc.w $0001,$01ac,$007b,$78ff,$fffc,$0000,$0000
	dc.w $0001,$01ad,$007b,$78ff,$fffc,$0000,$0000
	dc.w $8047,$02b8,$0000
	dc.w $8027,$ffec,$0034
	dc.w $0004,$01ae,$007c,$78ff,$fffc,$0004,$0000
	dc.w $8028
	dc.w $8002,$00e9
	dc.w $0006,$01af,$007d,$88ff,$fffc,$0000,$0000
	dc.w $0006,$01b0,$007e,$7cff,$0004,$0004,$0000
	dc.w $0006,$01b1,$007f,$7cff,$fffc,$0008,$0000
	dc.w $8000,$0000
	dc.l loc_0381aa

loc_03af96:
	dc.w $8009
	dc.l loc_03b08e
	dc.w $8000,$0000
	dc.l loc_0381aa

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03afa4:
	dc.w $0006,$004b,$78ff,$0002,$0014,$0d00
	dc.w $0003,$0055,$74ff,$fff0,$0038,$0d00

loc_03afbc:
	dc.w $0001,$01c8,$74ff,$ffe8,$0030,$0d00
	dc.w $0001,$01c9,$74ff,$ffe8,$0030,$0d00
	dc.w $0001,$01ca,$74ff,$ffe8,$0030,$0d00
	dc.w $0001,$01cb,$74ff,$ffe8,$0030,$0d00
	dc.w $0001,$01cc,$74ff,$ffe8,$0030,$0d00
	dc.w $8000,$0000
	dc.l loc_03afbc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b000:
	dc.w $0001,$01c8,$74ff,$ffe8,$0030,$0d00
	dc.w $0001,$01c9,$74ff,$ffe8,$0030,$0d00
	dc.w $0001,$01ca,$74ff,$ffe8,$0030,$0d00
	dc.w $0001,$01cb,$74ff,$ffe8,$0030,$0d00
	dc.w $0001,$01cc,$74ff,$ffe8,$0030,$0d00
	dc.w $8000,$0000
	dc.l loc_03b000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b044:
	dc.w $0001,$004e,$74ff,$fff4,$0030,$0d00
	dc.w $0001,$004f,$74ff,$ffec,$0040,$0d00
	dc.w $0004,$0050,$74ff,$ffdc,$005c,$0d00
	dc.w $0006,$0051,$78ff,$ffe4,$0060,$0d00
	dc.w $0006,$0052,$78ff,$0014,$0034,$0d00
	dc.w $0006,$01ba,$78ff,$000c,$0018,$0d00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b08e:
	dc.w $0002,$01cd,$74ff,$0008,$0030,$0d00
	dc.w $0003,$01ce,$74ff,$0010,$0030,$0d00
	dc.w $0003,$01cf,$74ff,$0018,$0030,$0d00
	dc.w $0002,$01d0,$74ff,$0010,$0040,$0d00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;forward dash
loc_03b0c0:
	dc.w $8037
	dc.l loc_0374ce
	dc.w $8038
	dc.l loc_03b100

	dc.w $8039,$0000
	dc.w $803e,$0807,$2f00
	dc.w $803f,$2008,$000a,$2808
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$00be,$0000
	dc.w $8047,$024b,$ffff,$0000

loc_03b100:
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $8047,$00b6,$0000
	dc.w $801a,$0005,$001a
	dc.w $8047,$00b6,$ffff
	dc.w $803b,$d000,$f61a
	dc.w $0006,$0046,$0000,$78ff,$fff8,$0002,$0000
	dc.w $8011,$001d,$0005,$2000,$10f4,$ff00
	dc.w $802b,$1c4f
	dc.w $804a,$fffc,$0000,$fffa,$2400
	dc.w $803b,$d000,$ee12
	dc.w $8004,$1886
	dc.w $0008,$00f9,$0000,$78ff,$0008,$0000,$0000
	dc.w $0005,$00f2,$0000,$78ff,$fff8,$fff8,$0000
	dc.w $0003,$00f3,$0000,$78ff,$fff8,$fff8,$0000
	dc.w $803b,$d000,$de0a
	dc.w $8011,$001d,$0005,$e000,$f0f4,$ff00
	dc.w $0002,$012c,$0000,$78ff,$fff8,$0004,$0000
	dc.w $801d
	dc.w $803c,$0000
	dc.w $0004,$012d,$0000,$78ff,$fff8,$0004,$0000
	dc.w $0004,$012c,$0000,$78ff,$fff8,$0004,$0000
	dc.w $0004,$004a,$0000,$78ff,$fffe,$0004,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b1cc:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0143,$0000,$80ff,$001a,$fff8,$0001
	dc.w $0008,$017b,$0000,$80ff,$0015,$0010,$0000
	dc.w $0005,$013f,$0000,$80ff,$000d,$002b,$0000
	dc.w $0003,$0182,$0000,$80ff,$0000,$0020,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0002,$0143,$0000,$80ff,$fffe,$0078,$0002
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$011f,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b234:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0224,$0000,$80ff,$0020,$0008,$0000
	dc.w $0008,$0308,$0000,$80ff,$001d,$0004,$0001
	dc.w $0005,$030f,$0000,$80ff,$0005,$003b,$0000
	dc.w $0003,$0310,$0000,$80ff,$fffd,$001a,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0002,$02fc,$0000,$80ff,$fff8,$0000,$0000
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$0225,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b29c:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0414,$0000,$80ff,$0022,$fffc,$0000
	dc.w $0008,$040e,$0000,$80ff,$001b,$0088,$0003
	dc.w $0005,$0409,$0000,$80ff,$0018,$0027,$0000
	dc.w $0003,$040a,$0000,$80ff,$fff0,$0010,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0002,$0414,$0000,$80ff,$fff5,$0070,$0003
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$0458,$0000,$80ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b30a:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0676,$0000,$80ff,$0018,$000c,$0001
	dc.w $0008,$0696,$0000,$80ff,$0020,$0012,$0001
	dc.w $0005,$0670,$0000,$80ff,$0000,$0028,$0000
	dc.w $0003,$06a0,$0000,$80ff,$ffe4,$0028,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0002,$0676,$0000,$80ff,$0000,$0060,$0002
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$0527,$0000,$80ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b378:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0730,$0000,$80ff,$001d,$000d,$0000
	dc.w $0008,$085d,$0000,$80ff,$0017,$008d,$0003
	dc.w $0005,$085c,$0000,$80ff,$0004,$001e,$0001
	dc.w $0003,$085e,$0000,$80ff,$ffeb,$000d,$0001
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0002,$0870,$0000,$80ff,$fff8,$0000,$0000
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$0812,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b3e0:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$09af,$0000,$80ff,$0014,$0000,$0000
	dc.w $0008,$09f8,$0000,$80ff,$001c,$000b,$0001
	dc.w $0005,$0a05,$0000,$80ff,$ffec,$003e,$0000
	dc.w $0003,$0a04,$0000,$80ff,$ffe8,$001c,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0002,$0a06,$0000,$80ff,$fff5,$0078,$0002
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$09d7,$0000,$80ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b44e:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0b55,$0000,$80ff,$0018,$0000,$0000
	dc.w $0008,$0bcb,$0000,$80ff,$001c,$000b,$0001
	dc.w $0005,$0bd6,$0000,$80ff,$0013,$0026,$0000
	dc.w $0003,$0bd5,$0000,$80ff,$fff1,$0029,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0002,$0b99,$0000,$80ff,$ffff,$0070,$0002
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$0b89,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b4b6:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0dd6,$0000,$80ff,$0018,$0010,$0001
	dc.w $0008,$0dbc,$0000,$80ff,$001a,$0022,$0001
	dc.w $0005,$0da9,$0000,$80ff,$0000,$0038,$0000
	dc.w $0003,$0db0,$0000,$80ff,$ffef,$0011,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0002,$0dd6,$0000,$80ff,$0002,$006a,$0002
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$0dc4,$0000,$80ff,$0000,$fff8,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b524:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$0e5a,$0000,$80ff,$0026,$0004,$0000
	dc.w $0008,$0e5b,$0000,$80ff,$0012,$0030,$0000
	dc.w $0005,$0f28,$0000,$80ff,$0005,$0098,$0003
	dc.w $0003,$0e5c,$0000,$80ff,$ffea,$0028,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0002,$0e5d,$0000,$80ff,$fffd,$0004,$0000
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$0e5f,$0000,$80ff,$0000,$0010,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b592:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0006,$1185,$0000,$80ff,$0020,$0019,$0000
	dc.w $0008,$10b7,$0000,$80ff,$0014,$0021,$0000
	dc.w $0005,$10b9,$0000,$80ff,$0006,$0034,$0000
	dc.w $0003,$10c0,$0000,$80ff,$fff2,$002a,$0000
	dc.w $801b,$ffd0,$fff0,$0000
	dc.w $0002,$1185,$0000,$80ff,$fff9,$0059,$0003
	dc.w $801b,$ffb8,$fff0,$0000
	dc.w $0006,$1067,$0000,$80ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b600:
	dc.w $8037
	dc.l loc_0375a0
	dc.w $8038
	dc.l loc_03b63c

	dc.w $803e,$0807,$2f00
	dc.w $803f,$1810,$080c,$2808
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$00be,$0000
	dc.w $8047,$024b,$ffff,$0000

loc_03b63c:
	dc.w $8002,$18e7
	dc.w $802c,$8047,$00b6,$0000
	dc.w $801a,$0001,$0020
	dc.w $803b,$d0ec,$f622
	dc.w $0008,$0148,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8004,$1886
	dc.w $802a,$0001
	dc.w $8047,$00b6,$ffff
	dc.w $803b,$d0ec,$ee22
	dc.w $0004,$0149,$0000,$78ff,$fff8,$0000,$0000
	dc.w $803b,$d0ec,$e622
	dc.w $0004,$014a,$0000,$78ff,$fff0,$0018,$0000
	dc.w $803b,$d0ec,$e21a
	dc.w $0006,$014b,$0000,$78ff,$ffe8,$0018,$0000
	dc.w $000a,$014c,$0000,$78ff,$fff0,$0018,$0000
	dc.w $8026,$0010
	dc.w $803b,$0000,$de1a
	dc.w $8034
	dc.w $8011,$001d,$0005,$2000,$40e0,$0100
	dc.w $8011,$001d,$0005,$e000,$c0e0,$0100
	dc.w $000a,$014d,$0000,$78ff,$fff0,$0008,$0000
	dc.w $803b,$0000,$f60a
	dc.w $801d
	dc.w $804a,$fffd,$0000,$fff7,$0400
	dc.w $0004,$002a,$0000,$88ff,$fff8,$0000,$0000
	dc.w $0003,$003f,$000f,$7c00
	dc.w $0003,$003c,$000d,$7cff,$0000,$0088,$0003
	dc.w $803c,$0008
	dc.w $0003,$003d,$000e,$7c00
	dc.w $0003,$003c,$000d,$7c00
	dc.w $0003,$003b,$000c,$7c00
	dc.w $0005,$0029,$000b,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b748:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$00cd,$0000,$84ff,$002b,$0018,$0001
	dc.w $0004,$017d,$0000,$84ff,$0024,$001c,$0001
	dc.w $0004,$017f,$0000,$84ff,$0008,$0042,$0001
	dc.w $0006,$017a,$0000,$84ff,$fff0,$0018,$0001
	dc.w $000a,$0179,$0000,$84ff,$fff4,$fff6,$0001
	dc.w $8022
	dc.w $000a,$0140,$0000,$84ff,$0000,$ffe8,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b7a8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$02a3,$0000,$84ff,$002a,$0017,$0001
	dc.w $0004,$0315,$0000,$84ff,$0024,$0020,$0001
	dc.w $0004,$0313,$0000,$84ff,$0002,$004f,$0001
	dc.w $0006,$030c,$0000,$84ff,$ffef,$0012,$0000
	dc.w $000a,$030a,$0000,$84ff,$fff6,$fff0,$0000
	dc.w $8022
	dc.w $000a,$0305,$0000,$84ff,$0000,$fff6,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b808:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0442,$0000,$84ff,$0030,$0010,$0001
	dc.w $0004,$040a,$0000,$84ff,$0023,$00ae,$0002
	dc.w $0004,$0409,$0000,$84ff,$0015,$00a3,$0002
	dc.w $0006,$040f,$0000,$84ff,$fff3,$fff6,$0001
	dc.w $000a,$040c,$0000,$84ff,$0000,$0063,$0002
	dc.w $8022
	dc.w $000a,$0411,$0000,$84ff,$0000,$003b,$0002
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b868:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0521,$0000,$84ff,$0025,$0011,$0001
	dc.w $0004,$069c,$0000,$84ff,$0014,$0023,$0001
	dc.w $0004,$069e,$0000,$84ff,$0004,$0045,$0001
	dc.w $0006,$0699,$0000,$84ff,$fff6,$0015,$0000
	dc.w $000a,$0698,$0000,$84ff,$fffc,$fffe,$0000
	dc.w $8022
	dc.w $000a,$0674,$0000,$84ff,$fffc,$fff8,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b8c8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0731,$0000,$84ff,$002d,$0019,$0001
	dc.w $0004,$085e,$0000,$84ff,$001e,$009b,$0003
	dc.w $0004,$0858,$0000,$84ff,$0001,$00a7,$0003
	dc.w $0006,$0861,$0000,$84ff,$fff5,$fffb,$0001
	dc.w $000a,$0857,$0000,$84ff,$0000,$0060,$0002
	dc.w $8022
	dc.w $000a,$0859,$0000,$84ff,$0004,$ffe6,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b928:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$09ec,$0000,$84ff,$002c,$0010,$0001
	dc.w $0004,$0a00,$0000,$84ff,$001b,$0023,$0001
	dc.w $0004,$0a02,$0000,$84ff,$0001,$003a,$0001
	dc.w $0006,$09fb,$0000,$84ff,$ffeb,$fffa,$0000
	dc.w $000a,$09fa,$0000,$84ff,$0005,$ffee,$0000
	dc.w $8022
	dc.w $000a,$09ee,$0000,$84ff,$fff8,$fff8,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b988:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0b56,$0000,$84ff,$002b,$000e,$0001
	dc.w $0004,$0bd1,$0000,$84ff,$0024,$0018,$0001
	dc.w $0004,$0bd3,$0000,$84ff,$000c,$0042,$0001
	dc.w $0006,$0bce,$0000,$84ff,$fff7,$000f,$0000
	dc.w $000a,$0bcd,$0000,$84ff,$fff6,$fff8,$0000
	dc.w $8022
	dc.w $000a,$0b97,$0000,$84ff,$000c,$fff2,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03b9e8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0d6b,$0000,$84ff,$0021,$001d,$0001
	dc.w $0004,$0dab,$0000,$84ff,$001c,$002b,$0001
	dc.w $0004,$0dad,$0000,$84ff,$fffa,$003d,$0001
	dc.w $0006,$0dbf,$0000,$84ff,$ffef,$0007,$0000
	dc.w $000a,$0dbe,$0000,$84ff,$0003,$ffee,$0000
	dc.w $8022
	dc.w $000a,$0db1,$0000,$84ff,$0002,$fffa,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03ba48:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$0edc,$0000,$84ff,$0035,$0019,$0001
	dc.w $0004,$0e5c,$0000,$84ff,$0025,$008f,$0002
	dc.w $0004,$0f28,$0000,$84ff,$0012,$003d,$0001
	dc.w $0006,$0f29,$0000,$84ff,$ffed,$008f,$0002
	dc.w $000a,$0e5e,$0000,$84ff,$fffc,$0058,$0002
	dc.w $8022
	dc.w $000a,$0f2c,$0000,$84ff,$0000,$fff0,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03baa8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0008,$1049,$0000,$84ff,$002f,$0022,$0001
	dc.w $0004,$10bb,$0000,$84ff,$001c,$0024,$0001
	dc.w $0004,$10bd,$0000,$84ff,$000c,$0029,$0001
	dc.w $0006,$10b6,$0000,$84ff,$fff5,$0013,$0001
	dc.w $000a,$10b5,$0000,$84ff,$fffd,$ffea,$0001
	dc.w $8022
	dc.w $000a,$10a9,$0000,$84ff,$000b,$fff5,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03bb08:
	dc.w $8037
	dc.l loc_036c3c
	dc.w $8038
	dc.l loc_03bb34

	dc.w $8039,$0018
	dc.w $803a,$0004
	dc.w $803d
	dc.w $8045,$0002
	dc.w $8048,$0550,$0004
	dc.w $8048,$00be,$0030

	dc.w $8036
	dc.l loc_037c56

loc_03bb34:
	dc.w $8023
	dc.w $8011,$001c,$0004,$e800,$0000
	dc.w $0004,$0188,$008c,$8000
	dc.w $8002,$188c
	dc.w $8011,$001d,$0005,$e000,$f0f4,$ff00
	dc.w $8027,$ffe4,$001c
	dc.w $0008,$0189,$008d,$80ff,$fffc,$0000,$0000
	dc.w $803a,$0000
	dc.w $8002,$188c
	dc.w $0004,$018a,$008c,$80ff,$fff8,$0000,$0000
	dc.w $0004,$018b,$008c,$80ff,$fff8,$0000,$0000
	dc.w $8002,$188c
	dc.w $8011,$001d,$0005,$e000,$f0f4,$ff00
	dc.w $0008,$018c,$008d,$80ff,$fffc,$0000,$0000
	dc.w $8002,$188c
	dc.w $0004,$018d,$008c,$80ff,$fff8,$0000,$0000
	dc.w $8011,$001d,$0005,$e800,$ecec,$ff00
	dc.w $0004,$000b,$0030,$80ff,$0000,$0001,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03bbdc:
	dc.w $803a,$0000
	dc.w $8027,$ffe4,$0014
	dc.w $8048,$00be,$000c
	dc.w $8002,$188a
	dc.w $8011,$001d,$0005,$1800,$14ec,$ff00
	dc.w $0006,$00fc,$008e,$80ff,$0004,$fffe,$0000
	dc.w $0006,$0197,$008f,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03bc14:
	dc.w $8037
	dc.l loc_036ce2
	dc.w $8038
	dc.l loc_03bc44

	dc.w $803a,$00ff
	dc.w $8039,$0014
	dc.w $803d
	dc.w $8045,$0002,$8048,$0550,$0003
	dc.w $8048,$00be,$0000,$8043,$000f
	dc.w $8036,$0003,$7c6e

loc_03bc44:
	dc.w $8023
	dc.w $8002,$188d
	dc.w $0003,$0103,$0000,$8000
	dc.w $8011,$001d,$0005,$1800,$0800,$ff00
	dc.w $804b,$fffc,$0000,$fffa,$4000,$0000,$8000
	dc.w $8027,$ffe4,$001c
	dc.w $000c,$0104,$0000,$80ff,$fffc,$0008,$0000
	dc.w $8028
	dc.w $000c,$0198,$0090,$80ff,$0004,$0008,$0000
	dc.w $803c,$0000
	dc.w $803a,$0004
	dc.w $8039,$0000
	dc.w $8003,$1870
	dc.w $8011,$001d,$0005,$e800,$e8e8,$ff00
	dc.w $0004,$0105,$008f,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03bcb6:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_03bcea

	dc.w $803e,$1843,$0d00
	dc.w $803f,$0000,$0000,$0008
	dc.w $8040,$0402,$0c00,$1c00
	dc.w $8041,$0401,$0810
	dc.w $8048,$0552,$00b4
	dc.w $8036,$0003,$7c56

loc_03bcea:
	dc.w $8017,$0040
	dc.l loc_03bd06
	dc.w $8017,$0055
	dc.l loc_03bd12

	dc.w $802a,$0010
	dc.w $8000,$0000
	dc.l loc_03bd1e

loc_03bd06:
	dc.w $802a,$000f
	dc.w $8000,$0000
	dc.l loc_03bd1e

loc_03bd12:
	dc.w $802a,$0011
	dc.w $8000,$0000
	dc.l loc_03bd1e

loc_03bd1e:
	dc.w $0008,$01c0,$0092,$80ff,$fffc,$0001,$0000
	dc.w $0004,$01c1,$0093,$80ff,$fff8,$0001,$0000
	dc.w $8045,$0002
	dc.w $0003,$01c2,$0093,$80ff,$fff9,$0001,$0000
	dc.w $0003,$01c3,$0093,$80ff,$fff8,$0001,$0000
	dc.w $0003,$01c3,$0093,$80ff,$fff9,$0001,$0000
	dc.w $000d,$01c3,$0093,$80ff,$fff8,$0001,$0000
	dc.w $0006,$01c4,$0094,$80ff,$fff9,$0001,$0000
	dc.w $8001

;ends at 3bd86
