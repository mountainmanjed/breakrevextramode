;--------------------------
;Rila Programming
;--------------------------
loc_0584a8:
	move.w #$f0,($344,a4)
	move.w #$28,($346,a4)
	move.w #5,($348,a4)
	move.w #$a,($34a,a4)
	move.w #$84,($34c,a4)
	move.w #$4c,($34e,a4)
	move.w #$78,($350,a4)
	rts

;--------------------------
loc_0584d4:
	tst.b ($4d4,a4)
	beq.w loc_0584fe
	move.b ($35c,a4),d0
	andi.w #$fffc,d0
	bne.w loc_0584fe
	cmpi.b #$6,($360,a4)
	bne.w loc_0584fe
	sf ($4d4,a4)
	move.l #loc_058818,($56,a4)

loc_0584fe:
	rts

;--------------------------
loc_058500:
	movea.l #loc_059914,a0
	bsr.w loc_058554
	bra.w loc_058610

;--------------------------
loc_05850e:
	bclr #7,($35c,a4)
	bne.w loc_05851e
	jmp loc_02e5c6

;--------------------------
loc_05851e:
	movea.l #loc_0597f8,a0
	bsr.w loc_058554
	bra.w loc_058610

;--------------------------
loc_05852c:
	move.l (a7)+,($4d8,a4)
	jmp (a0)

;--------------------------
loc_058532:
	move.l ($4d8,a4),d0
	beq.b loc_05850e
	clr.l ($4d8,a4)
	movea.l d0,a0
	clr.b d0
	jmp (a0)

;--------------------------
loc_058542:
	move.l ($4d8,a4),d0
	beq.b loc_05850e
	clr.l ($4d8,a4)
	movea.l d0,a0
	move.b #-1,d0
	jmp (a0)

;--------------------------
loc_058554:
	move.l (a7)+,($4dc,a4)
	jmp (a0)

;--------------------------
loc_05855a:
	move.l ($4dc,a4),d0
	beq.w loc_058610
	clr.l ($4dc,a4)
	movea.l d0,a0
	jmp (a0)

;--------------------------
;
;--------------------------
loc_05856a:
	st ($4d4,a4)
	cmpi.w #$a0,($378,a4)
	bgt.w loc_0585d2
	cmpi.w #$3c,($378,a4)
	bgt.w loc_0585ae
	cmpi.w #$1e,($378,a4)
	bgt.w loc_058590
	bra.w loc_058604

loc_058590
	jsr RandomNumberGod
	lea loc_0585a0(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0585a0:
	dc.w $0002

	dc.w $001e
	dc.l loc_0585f0

	dc.w $001e
	dc.l loc_058604

;--------------------------
loc_0585ae
	jsr RandomNumberGod
	lea loc_0585be(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0585be:
	dc.w $0003

	dc.w $005a
	dc.l loc_0585fa

	dc.w $001e
	dc.l loc_0585f0

	dc.w $001e
	dc.l loc_058604

;--------------------------
loc_0585d2
	jsr RandomNumberGod
	lea loc_0585e2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0585e2:
	dc.w $0002

	dc.w $005a
	dc.l loc_0585fa

	dc.w $001e
	dc.l loc_0585f0

;--------------------------
loc_0585f0:
	movea.l #loc_0597f8,a0
	bra.w loc_05860a


loc_0585fa:
	movea.l #loc_0598a6,a0
	bra.w loc_05860a


loc_058604:
	movea.l #loc_059914,a0

loc_05860a:
	movea.l a0,a0
	bsr.w loc_058554

loc_058610:
	clr.l ($4d8,a4)
	clr.l ($4dc,a4)
	clr.l ($4e0,a4)
	tst.b ($35d,a4)
	beq.w loc_05862c
	jsr loc_0226b4
	bra.b loc_058610

loc_05862c:
	st ($35d,a4)
	cmpi.b #6,($360,a4)
	beq.w loc_058818
	tst.b ($247,a4)
	beq.w loc_05880a
	cmpi.w #$a0,($378,a4)
	bgt.w loc_0587c8
	cmpi.w #$3c,($378,a4)
	bgt.w loc_058750
	cmpi.w #$1e,($378,a4)
	bgt.w loc_0586cc
	jsr RandomNumberGod
	lea loc_058670(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_058670:
	dc.w $000f

	dc.w $000a
	dc.l loc_059a94
	
	dc.w $0005
	dc.l loc_059914
	
	dc.w $0005
	dc.l loc_059a6e
	
	dc.w $0014
	dc.l loc_05a48c
	
	dc.w $0014
	dc.l loc_05a692
	
	dc.w $0014
	dc.l loc_05a546
	
	dc.w $0014
	dc.l loc_05a1e4
	
	dc.w $0014
	dc.l loc_05a36a
	
	dc.w $0014
	dc.l loc_05a144
	
	dc.w $0014
	dc.l loc_05a7fa
	
	dc.w $000f
	dc.l loc_05a93c
	
	dc.w $000a
	dc.l loc_05aa0c
	
	dc.w $000a
	dc.l loc_05ab62
	
	dc.w $0032
	dc.l loc_05a996
	
	dc.w $001e
	dc.l loc_059eda

;--------------------------
loc_0586cc:
	jsr RandomNumberGod
	lea loc_0586dc(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0586dc:
	dc.w $0013

	dc.w $000a
	dc.l loc_059a94

	dc.w $0005
	dc.l loc_059914

	dc.w $0005
	dc.l loc_059a6e

	dc.w $000a
	dc.l loc_05998e

	dc.w $0032
	dc.l loc_05a996

	dc.w $001e
	dc.l loc_05a48c

	dc.w $001e
	dc.l loc_05a144

	dc.w $0014
	dc.l loc_05a546

	dc.w $0014
	dc.l loc_05a692

	dc.w $001e
	dc.l loc_05a7fa

	dc.w $000f
	dc.l loc_05a1e4

	dc.w $000f
	dc.l loc_05a36a

	dc.w $0005
	dc.l loc_05ac04

	dc.w $000f
	dc.l loc_05a93c

	dc.w $000a
	dc.l loc_05aa0c

	dc.w $0014
	dc.l loc_05aa66

	dc.w $000a
	dc.l loc_05ab62

	dc.w $0005
	dc.l loc_059f6e

	dc.w $001e
	dc.l loc_059eda

;--------------------------
loc_058750:
	jsr RandomNumberGod
	lea loc_058760(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_058760:
	dc.w $0011

	dc.w $001e
	dc.l loc_0598a6

	dc.w $000a
	dc.l loc_059a48

	dc.w $0010
	dc.l loc_059914

	dc.w $0014
	dc.l loc_059a94

	dc.w $000a
	dc.l loc_05998e

	dc.w $0032
	dc.l loc_05a996

	dc.w $0028
	dc.l loc_05aa66

	dc.w $0028
	dc.l loc_05ab62

	dc.w $0014
	dc.l loc_05a7fa

	dc.w $001e
	dc.l loc_05a48c

	dc.w $0014
	dc.l loc_05a144

	dc.w $001e
	dc.l loc_05ac62

	dc.w $0014
	dc.l loc_05a546

	dc.w $0014
	dc.l loc_05a692

	dc.w $000a
	dc.l loc_05a93c

	dc.w $0005
	dc.l loc_05ac04

	dc.w $0005
	dc.l loc_059f6e

;--------------------------
loc_0587c8:
	jsr RandomNumberGod
	lea loc_0587d8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0587d8:
	dc.w $0008

	dc.w $0014
	dc.l loc_0598a6

	dc.w $0014
	dc.l loc_05998e

	dc.w $0014
	dc.l loc_059a48

	dc.w $0014
	dc.l loc_05aa66

	dc.w $0014
	dc.l loc_05ab62

	dc.w $000a
	dc.l loc_059f6e

	dc.w $000a
	dc.l loc_05ac62

	dc.w $0032
	dc.l loc_05a996

;--------------------------
loc_05880a:
	movea.l #loc_059b92,a0
	bsr.w loc_05852c
	bra.w loc_058610

;--------------------------
loc_058818:
	clr.b ($2f6,a4)
	move.l #$100010,d0
	jsr loc_02e420
	jsr RandomNumberGod
	lea loc_058838(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_058838:
	dc.w $0004

	dc.w $0050
	dc.l loc_058852

	dc.w $000a
	dc.l loc_05887c

	dc.w $000a
	dc.l loc_058860

	dc.w $000a
	dc.l loc_05886e

;--------------------------
loc_058852:
	movea.l #loc_059a94,a0
	bsr.w loc_058554
	bra.w loc_058610

loc_058860:
	movea.l #loc_059914,a0
	bsr.w loc_058554
	bra.w loc_058610

loc_05886e:
	movea.l #loc_059a6e,a0
	bsr.w loc_058554
	bra.w loc_058610

loc_05887c:
	movea.l #loc_05998e,a0
	bsr.w loc_058554
	bra.w loc_058610

;--------------------------
loc_05888a:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_05889e(pc,d0.w),d0
	jmp loc_05889e(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05889e:
	dc.w loc_0588be-loc_05889e
	dc.w loc_0588be-loc_05889e
	dc.w loc_0588be-loc_05889e
	dc.w loc_0588be-loc_05889e

	dc.w loc_0588c2-loc_05889e
	dc.w loc_0588d4-loc_05889e
	dc.w loc_0588e6-loc_05889e
	dc.w loc_0588f8-loc_05889e

	dc.w loc_05890a-loc_05889e
	dc.w loc_05891c-loc_05889e
	dc.w loc_05892e-loc_05889e
	dc.w loc_058940-loc_05889e

	dc.w loc_058952-loc_05889e
	dc.w loc_058952-loc_05889e
	dc.w loc_058952-loc_05889e
	dc.w loc_058952-loc_05889e


;--------------------------
loc_0588be:
	bra.w loc_058956

;==========================
loc_0588c2:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_058956
	bra.w loc_058964

;==========================
loc_0588d4:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_058956
	bra.w loc_058964

;==========================
loc_0588e6:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_058956
	bra.w loc_058964

;==========================
loc_0588f8:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_058956
	bra.w loc_058964

;==========================
loc_05890a:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_058956
	bra.w loc_058964

;==========================
loc_05891c:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_058956
	bra.w loc_058964

;==========================
loc_05892e:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_058956
	bra.w loc_058964

;==========================
loc_058940:
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_058956
	bra.w loc_058964

;==========================
loc_058952:
	bra loc_058964

;==========================
loc_058956:
	movea.l #loc_059a94,a0
	bsr.w loc_058554
	bra.w loc_058610

;==========================
loc_058964:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	scs ($4d3,a4)

loc_058972:
	tst.b ($365,a4)
	bne.w loc_058c96
	clr.b ($2f6,a4)
	tst.b ($4d3,a4)
	bpl.w loc_0589ac
	cmpi.b #3,($360,a4)
	beq.w loc_0589ac
	cmpi.b #4,($360,a4)
	beq.w loc_0589ac
	tst.b ($367,a4)
	beq.w loc_0589b0
	cmpi.b #1,($360,a4)
	beq.w loc_0589b0

loc_0589ac:
	bra.w loc_0589ee

loc_0589b0:
	cmpi.w #$40,($340,a4)
	blt.w loc_0589ee
	cmpi.w #$8c,($378,a4)
	bgt.w loc_0589ee
	cmpi.w #$14,($378,a4)
	blt.w loc_0589ee
	cmpi.w #$ff88,($37a,a4)
	bgt.w loc_0589ee
	tst.b ($24a,a4)
	bne.w loc_0589ee
	movea.l #loc_05998e,a0
	bsr.w loc_058554
	bra.w loc_058c90

loc_0589ee:
	cmpi.b #3,($376,a4)
	beq.w loc_058a3a
	cmpi.b #3,($360,a4)
	beq.w loc_058a2c
	cmpi.b #4,($360,a4)
	beq.w loc_058a2c
	tst.b ($367,a4)
	beq.w loc_058a2c
	cmpi.b #1,($360,a4)
	beq.w loc_058a3a
	cmpi.b #2,($360,a4)
	beq.w loc_058a3a
	bra.w loc_058c7a

loc_058a2c:
	jsr RandomNumberGod
	cmpi.w #$f800,d0
	bcs.w loc_058c7a

loc_058a3a:
	cmpi.w #$40,($340,a4)
	blt.w loc_058a6e
	btst #7,($35c,a4)
	bne.w loc_058a6e
	cmpi.w #$30,($378,a4)
	bgt.w loc_058a6e
	cmpi.w #-$32,($37a,a4)
	blt.w loc_058a6e
	sf ($3c9,a4)
	bsr.w loc_05ba80
	bne.w loc_058c90

loc_058a6e:
	btst #7,($35c,a4)
	bne.w loc_058a98
	cmpi.w #$30,($36c,a4)
	bgt.w loc_058a98
	cmpi.w #-$50,($37a,a4)
	blt.w loc_058a98
	clr.b ($2f6,a4)
	bsr.w loc_05bc1e
	bne.w loc_058c90

loc_058a98:
	btst #7,($35c,a4)
	bne.w loc_058ac2
	cmpi.w #$28,($36c,a4)
	bgt.w loc_058ac2
	cmpi.w #$ff7e,($37a,a4)
	blt.w loc_058bb6
	clr.b ($2f6,a4)
	bsr.w loc_05bb8c
	bne.w loc_058c90

loc_058ac2:
	cmpi.w #$60,($340,a4)
	blt.w loc_058afc
	btst #7,($35c,a4)
	bne.w loc_058afc
	cmpi.w #$32,($378,a4)
	bgt.w loc_058afc
	cmpi.w #$ff7e,($37a,a4)
	blt.w loc_058afc
	movea.l #loc_059b4a,a0
	bsr.w loc_058554
	bsr.w loc_05bb8c
	bne.w loc_058c90

loc_058afc:
	btst #7,($35c,a4)
	bne.w loc_058b28
	cmpi.w #$46,($378,a4)
	bgt.w loc_058b28
	cmpi.w #$ffe2,($37a,a4)
	blt.w loc_058b28
	move.b #2,($2f6,a4)
	bsr.w loc_05bc1e
	bne.w loc_058c90

loc_058b28:
	cmpi.w #$60,($340,a4)
	blt.w loc_058b62
	btst #7,($35c,a4)
	bne.w loc_058b62
	cmpi.w #$46,($378,a4)
	bgt.w loc_058b62
	cmpi.w #-$82,($37a,a4)
	blt.w loc_058b62
	movea.l #loc_059b6e,a0
	bsr.w loc_058554
	bsr.w loc_05bc1e
	bne.w loc_058c90

loc_058b62:
	btst #7,($35c,a4)
	bne.w loc_058b8c
	cmpi.w #$5a,($378,a4)
	bgt.w loc_058b8c
	cmpi.w #$ffb0,($37a,a4)
	blt.w loc_058b8c
	clr.b ($2f6,a4)
	bsr.w loc_05bc98
	bne.w loc_058c90

loc_058b8c:
	btst #7,($35c,a4)
	bne.w loc_058bb6
	cmpi.w #$5a,($378,a4)
	bgt.w loc_058bb6
	cmpi.w #$ff7e,($37a,a4)
	blt.w loc_058bb6
	clr.b ($2f6,a4)
	bsr.w loc_05bb8c
	bne.w loc_058c90

loc_058bb6:
	btst #7,($35c,a4)
	bne.w loc_058be2
	cmpi.w #$64,($378,a4)
	bgt.w loc_058be2
	cmpi.w #-$a,($37a,a4)
	blt.w loc_058be2
	move.b #2,($2f6,a4)
	bsr.w loc_05bb8c
	bne.w loc_058c90

loc_058be2:
	btst #7,($35c,a4)
	bne.w loc_058c0e
	cmpi.w #$64,($378,a4)
	bgt.w loc_058c0e
	cmpi.w #$ffe2,($37a,a4)
	blt.w loc_058c0e
	move.b #2,($2f6,a4)
	bsr.w loc_05bc1e
	bne.w loc_058c90

loc_058c0e:
	btst #7,($35c,a4)
	bne.w loc_058c38
	cmpi.w #$64,($378,a4)
	bgt.w loc_058c38
	cmpi.w #$ffc4,($37a,a4)
	blt.w loc_058c38
	clr.b ($2f6,a4)
	bsr.w loc_05bc1e
	bne.w loc_058c90

loc_058c38:
	cmpi.w #$40,($340,a4)
	blt.w loc_058c7a
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_058c7a
	btst #7,($35c,a4)
	beq.w loc_058c7a
	cmpi.w #$44,($378,a4)
	bgt.w loc_058c7a
	cmpi.w #-$32,($37a,a4)
	bgt.w loc_058c7a
	sf ($3c9,a4)
	bsr.w loc_05ba80
	bne.w loc_058c90

loc_058c7a:
	jsr loc_02e456
	jsr loc_0226b4
	jsr loc_02e370
	bra.w loc_058972

loc_058c90:
	jsr loc_02e308

loc_058c96:
	clr.b ($2f6,a4)
	bclr #2,($35c,a4)
	bra.w loc_058610

;--------------------------
loc_058ca4:
	cmpi.w #$a0,($340,a4)
	bge.w loc_058cc2
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($358,a4),d0
	bcs.w loc_058cc2
	bra.w loc_058d8e

loc_058cc2:
	move.w #$11,($4d6,a4)

loc_058cc8:
	cmpi.b #1,($36a,a4)
	bne.w loc_058cdc
	btst #0,($362,a4)
	bne.w loc_058964

loc_058cdc:
	tst.b ($367,a4)
	beq.w loc_058d7e
	cmpi.b #3,($36a,a4)
	beq.w loc_058d72
	cmpi.b #6,($36a,a4)
	beq.w loc_058d36
	cmpi.b #5,($360,a4)
	beq.w loc_058d20
	cmpi.b #1,($36a,a4)
	bne.w loc_058d16
	cmpi.w #$1c,($374,a4)
	bgt.w loc_058d72

loc_058d16:
	cmpi.b #1,($360,a4)
	beq.w loc_058d50

loc_058d20:
	jsr loc_02e456
	jsr loc_0226b4
	subq.w #1,($4d6,a4)
	bge.b loc_058cc8
	bra.w loc_058d7e

loc_058d36:
	cmpi.b #4,($376,a4)
	beq.b loc_058d20
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_058d8e
	bra.w loc_059a94

loc_058d50:
	cmpi.b #4,($36a,a4)
	beq.w loc_058d72
	cmpi.w #$a0,($358,a4)
	blt.w loc_058d7e
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_058d7e

loc_058d72:
	btst #3,($24a,a4)
	bne.b loc_058d20
	bra.w loc_058da0

loc_058d7e:
	btst #7,($35c,a4)
	bne.w loc_058d9c
	jsr loc_02e456

loc_058d8e:
	jsr loc_0226b4
	moveq #4,d0
	jsr loc_02e39c

loc_058d9c:
	bra.w loc_058610

loc_058da0:
	tst.b ($247,a4)
	beq.w loc_059b92

loc_058da8:
	btst #1,($246,a4)
	bne.w loc_058dba
	jsr loc_0226b4
	bra.b loc_058da8

loc_058dba:
	btst #3,($24a,a4)
	bne.w loc_059260
	cmpi.b #5,($36a,a4)
	beq.w loc_059260
	cmpi.b #5,($360,a4)
	beq.w loc_059260
	tst.b ($365,a4)
	beq.w loc_058964
	cmpi.b #1,($360,a4)
	beq.w loc_058e16
	cmpi.b #2,($360,a4)
	bne.w loc_058e0c
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_059252
	sf d3
	move.w ($378,a4),d2
	bra.w loc_058e22

loc_058e0c:
	st d3
	move.w ($374,a4),d2
	bra.w loc_058e22

loc_058e16:
	sf d3
	move.w ($374,a4),d2
	add.w ($378,a4),d2
	asr.w #1,d2

loc_058e22:
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_058e36
	bra.w loc_059038

loc_058e36:
	btst #7,($35c,a4)
	beq.w loc_059038
	cmpi.w #$1e,($36c,a4)
	bge.w loc_058e74
	jsr RandomNumberGod
	lea loc_058e5a(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_058e5a:
	dc.w $0004

	dc.w $0014
	dc.l loc_058f3a

	dc.w $0014
	dc.l loc_058f64

	dc.w $0014
	dc.l loc_058fd6

	dc.w $0014
	dc.l loc_058f8a

;--------------------------
loc_058e74:
	cmpi.w #$3c,($36c,a4)
	bge.w loc_058eae
	jsr RandomNumberGod
	lea loc_058e8e(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_058e8e:
	dc.w $0005

	dc.w $0014
	dc.l loc_058f3a

	dc.w $0014
	dc.l loc_058ffc

	dc.w $0014
	dc.l loc_058f64

	dc.w $0014
	dc.l loc_058f8a

	dc.w $0014
	dc.l loc_058fb0

;--------------------------
loc_058eae:
	cmpi.w #$78,($36c,a4)
	bge.w loc_058eee
	jsr RandomNumberGod
	lea loc_058ec8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_058ec8:
	dc.w $0006

	dc.w $0032
	dc.l loc_058f2c

	dc.w $0014
	dc.l loc_058f1e

	dc.w $0014
	dc.l loc_058ffc

	dc.w $0014
	dc.l loc_058f8a

	dc.w $0014
	dc.l loc_058fb0

	dc.w $000a
	dc.l loc_058f48

;--------------------------
loc_058eee:
	jsr RandomNumberGod
	lea loc_058efe(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_058efe:
	dc.w $0005

	dc.w $0028
	dc.l loc_058f2c

	dc.w $0014
	dc.l loc_058f1e

	dc.w $0014
	dc.l loc_058f8a

	dc.w $0014
	dc.l loc_058fb0

	dc.w $000a
	dc.l loc_058f48

;--------------------------
loc_058f1e:
	movea.l #loc_059914,a0
	bsr.w loc_058554
	bra.w loc_059236

;--------------------------
loc_058f2c:
	movea.l #loc_0598a6,a0
	bsr.w loc_058554
	bra.w loc_059236

;--------------------------
loc_058f3a:
	movea.l #loc_059eda,a0
	bsr.w loc_05852c
	bra.w loc_059236

;--------------------------
loc_058f48:
	movea.l #loc_059a48,a0
	bsr.w loc_058554
	bra.w loc_059236

;--------------------------
loc_058f56:
	movea.l #loc_059a6e,a0
	bsr.w loc_058554
	bra.w loc_059236

;--------------------------
loc_058f64:
	cmpi.w #$40,($340,a4)
	blt.w loc_059236
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05ba80
	beq.w loc_059260
	jsr loc_02e308
	bra.w loc_059236

;--------------------------
loc_058f8a:
	cmpi.w #$40,($340,a4)
	blt.w loc_059236
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05ba32
	beq.w loc_059260
	jsr loc_02e308
	bra.w loc_059236

;--------------------------
loc_058fb0:
	cmpi.w #$40,($340,a4)
	blt.w loc_059236
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bace
	beq.w loc_059260
	jsr loc_02e308
	bra.w loc_059236

;--------------------------
loc_058fd6:
	cmpi.w #$40,($340,a4)
	blt.w loc_059236
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bb1c
	beq.w loc_059260
	jsr loc_02e308
	bra.w loc_059236

;--------------------------
loc_058ffc:
	cmpi.w #$60,($340,a4)
	blt.w loc_059038
	jsr loc_02c78a
	beq.w loc_059022
	bsr.w loc_05ba04
	beq.w loc_059022
	jsr loc_02e308
	bra.w loc_059236

loc_059022:
	st ($3c9,a4)
	bsr.w loc_05bace
	beq.w loc_059260
	jsr loc_02e308
	bra.w loc_059236

;--------------------------
loc_059038:
	jsr RandomNumberGod
	andi.w #$1f,d0
	subi.w #$10,d0
	add.w d0,d2
	btst #0,($369,a4)
	bne.w loc_059074
	btst #2,($369,a4)
	bne.w loc_0590dc
	btst #1,($369,a4)
	bne.w loc_0590b0
	btst #3,($369,a4)
	bne.w loc_0590dc
	bra.w loc_059260

loc_059074:
	cmpi.w #$1e,d2
	ble.w loc_059228
	cmpi.w #$22,d2
	ble.w loc_059136
	cmpi.w #$2e,d2
	ble.w loc_059122
	cmpi.w #$32,d2
	ble.w loc_059160
	cmpi.w #$38,d2
	ble.w loc_059190
	cmpi.w #$42,d2
	ble.w loc_059110
	cmpi.w #$4c,d2
	ble.w loc_0591c0
	bra.w loc_059260

loc_0590b0:
	cmpi.w #$24,d2
	ble.w loc_059122
	cmpi.w #$34,d2
	ble.w loc_059110
	cmpi.w #$38,d2
	ble.w loc_059190
	cmpi.w #$3e,d2
	ble.w loc_059160
	cmpi.w #$4c,d2
	ble.w loc_0591f0
	bra.w loc_059260

loc_0590dc:
	cmpi.w #$26,d2
	ble.w loc_059204
	cmpi.w #$2a,d2
	ble.w loc_059216
	cmpi.w #$32,d2
	ble.w loc_059122
	cmpi.w #$3c,d2
	ble.w loc_059110
	cmpi.w #$46,d2
	ble.w loc_0591de
	cmpi.w #$50,d2
	ble.w loc_059190
	bra.w loc_059260

loc_059110:
	clr.b ($2f6,a4)
	bsr.w loc_05bb8c
	jsr loc_02e308
	bra.w loc_059236

loc_059122:
	move.b #2,($2f6,a4)
	bsr.w loc_05bb8c
	jsr loc_02e308
	bra.w loc_059236

loc_059136:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_059236
	movea.l #loc_059a6e,a0
	bsr.w loc_058554
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_059228
	bra.w loc_059236

loc_059160:
	cmpi.w #$40,($340,a4)
	blt.w loc_059236
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_059236
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bace
	jsr loc_02e308
	bra.w loc_059236

loc_059190:
	cmpi.w #$40,($340,a4)
	blt.w loc_059236
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_059236
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05ba32
	jsr loc_02e308
	bra.w loc_059236

loc_0591c0:
	cmpi.w #$40,($340,a4)
	blt.w loc_059236
	move.b #8,($2f6,a4)
	bsr.w loc_05bb8c
	jsr loc_02e308
	bra.w loc_059236

loc_0591de:
	clr.b ($2f6,a4)
	bsr.w loc_05bc1e
	jsr loc_02e308
	bra.w loc_059236

loc_0591f0:
	move.b #2,($2f6,a4)
	bsr.w loc_05bc1e
	jsr loc_02e308
	bra.w loc_059236

loc_059204:
	clr.b ($2f6,a4)
	bsr.w loc_05bd12
	jsr loc_02e308
	bra.w loc_059236

loc_059216:
	clr.b ($2f6,a4)
	bsr.w loc_05bc98
	jsr loc_02e308
	bra.w loc_059236

loc_059228:
	movea.l #loc_05998e,a0
	bsr.w loc_05852c
	bra.w loc_058610

;--------------------------
loc_059236:
	jsr loc_0226b4
	btst #7,($35c,a4)
	bne.w loc_05924e
	moveq #6,d0
	jsr loc_02e39c

loc_05924e:
	bra.w loc_05850e

;--------------------------
loc_059252:
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_059a94

loc_059260:
	jsr loc_02e456
	jsr loc_0226b4
	bclr #3,($35c,a4)
	bra.w loc_05850e

;--------------------------
loc_059276:
	move.w ($340,a4),d0
	andi.w #$f0,d0
	lsr.w #4,d0
	add.w d0,d0
	move.w loc_05928a(pc,d0.w),d0
	jmp loc_05928a(pc,d0.w)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05928a:
	dc.w loc_0592aa-loc_05928a
	dc.w loc_0592aa-loc_05928a
	dc.w loc_0592b0-loc_05928a
	dc.w loc_0592c4-loc_05928a

	dc.w loc_0592d8-loc_05928a
	dc.w loc_0592ec-loc_05928a
	dc.w loc_059300-loc_05928a
	dc.w loc_059314-loc_05928a

	dc.w loc_059328-loc_05928a
	dc.w loc_059328-loc_05928a
	dc.w loc_059328-loc_05928a
	dc.w loc_059328-loc_05928a

	dc.w loc_059328-loc_05928a
	dc.w loc_059328-loc_05928a
	dc.w loc_059328-loc_05928a
	dc.w loc_059328-loc_05928a

;--------------------------
loc_0592aa:
	jmp loc_02e5b2

loc_0592b0:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.w loc_05932c
	jmp loc_02e5b2

loc_0592c4:
	jsr RandomNumberGod
	cmpi.w #$6000,d0
	bcs.w loc_05932c
	jmp loc_02e5b2

loc_0592d8:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_05932c
	jmp loc_02e5b2

loc_0592ec:
	jsr RandomNumberGod
	cmpi.w #$a000,d0
	bcs.w loc_05932c
	jmp loc_02e5b2

loc_059300:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_05932c
	jmp loc_02e5b2

loc_059314:
	jsr RandomNumberGod
	cmpi.w #$e000,d0
	bcs.w loc_05932c
	jmp loc_02e5b2

loc_059328:
	bra.w loc_05932c

;--------------------------
loc_05932c:
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcc.b loc_059340
	move.b #1,($4d0,a4)
	bra.b loc_059350

loc_059340:
	cmpi.w #$c000,d0
	bcc.b loc_05934c
	sf ($4d0,a4)
	bra.b loc_059350

loc_05934c:
	st ($4d0,a4)

loc_059350:
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	scs ($4d1,a4)

loc_05935e:
	tst.b ($367,a4)
	beq.w loc_059374
	cmpi.w #$24,($374,a4)
	bge.w loc_059374
	bra.w loc_05945e

loc_059374:
	tst.b ($363,a4)
	beq.w loc_05946e
	cmpi.w #-$34,($370,a4)
	ble.w loc_05946e
	cmpi.w #$34,($370,a4)
	ble.w loc_05945e
	tst.b ($4d1,a4)
	beq.w loc_0593da
	cmpi.w #$f0,($37c,a4)
	bgt.w loc_0593da
	cmpi.w #$94,($37c,a4)
	ble.w loc_0593da
	cmpi.b #$12,($364,a4)
	beq.w loc_0593da
	cmpi.w #$c0,($340,a4)
	blt.w loc_0593da
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_0593da
	bsr.w loc_05ba04
	beq.w loc_0593da
	bra.w loc_05946e

loc_0593da:
	tst.b ($4d0,a4)
	beq.w loc_05940a
	bgt.w loc_0593ea
	bra.w loc_05945e

loc_0593ea:
	cmpi.w #$46,($37c,a4)
	bgt.w loc_05945e
	tst.b ($24a,a4)
	bne.w loc_05945e
	movea.l #loc_059b26,a0
	bsr.w loc_058554
	bra.w loc_05946e

loc_05940a:
	cmpi.w #$30,($37c,a4)
	bgt.w loc_05945e
	cmpi.b #$12,($364,a4)
	beq.w loc_05945e
	tst.b ($24a,a4)
	bne.w loc_05945e
	cmpi.w #$80,($340,a4)
	blt.w loc_059450
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_059450
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bace
	beq.w loc_059450

loc_059450:
	movea.l #loc_059b6e,a0
	bsr.w loc_058554
	bra.w loc_05946e

loc_05945e:
	jsr loc_02e456
	jsr loc_0226b4
	bra.w loc_05935e

loc_05946e:
	clr.b ($2f6,a4)
	bra.w loc_058610

loc_059476:
	clr.b ($2f6,a4)
	cmpi.w #$40,($340,a4)
	bge.w loc_059488
	bra.w loc_058610

loc_059488:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_0594c2
	jsr RandomNumberGod
	lea loc_0594a2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0594a2:
	dc.w $0005

	dc.w $0032
	dc.l loc_059680
	dc.w $0032
	dc.l loc_0595bc
	dc.w $000a
	dc.l loc_059650
	dc.w $000a
	dc.l loc_05960c
	dc.w $000a
	dc.l loc_059672

;--------------------------
loc_0594c2:
	cmpi.w #$3c,($378,a4)
	bgt.w loc_0594fc
	jsr RandomNumberGod
	lea loc_0594dc(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0594dc:
	dc.w $0005

	dc.w $0032
	dc.l loc_0595bc

	dc.w $000a
	dc.l loc_059680

	dc.w $000a
	dc.l loc_05960c

	dc.w $000a
	dc.l loc_05962e

	dc.w $000a
	dc.l loc_059672

;--------------------------
loc_0594fc:
	cmpi.w #$78,($378,a4)
	bgt.w loc_059548
	jsr RandomNumberGod
	lea loc_059516(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_059516:
	dc.w $0008

	dc.w $0032
	dc.l loc_0595bc

	dc.w $0032
	dc.l loc_059680

	dc.w $000a
	dc.l loc_059592

	dc.w $000a
	dc.l loc_0595a0

	dc.w $000a
	dc.l loc_059672

	dc.w $000a
	dc.l loc_05962e

	dc.w $000a
	dc.l loc_05960c

	dc.w $000a
	dc.l loc_0595ae

;--------------------------
loc_059548:
	jsr RandomNumberGod
	lea loc_059558(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_059558:
	dc.w $0007

	dc.w $0032
	dc.l loc_0595bc

	dc.w $000a
	dc.l loc_059592

	dc.w $000a
	dc.l loc_0595a0

	dc.w $000a
	dc.l loc_05960c

	dc.w $000a
	dc.l loc_05962e

	dc.w $000a
	dc.l loc_0595ae

	dc.w $000a
	dc.l loc_059584

;--------------------------
loc_059584:
	bsr.w loc_05bb66
	jsr loc_02e308
	bra.w loc_05850e

;--------------------------
loc_059592:
	movea.l #loc_0598a6,a0
	bsr.w loc_058554
	bra.w loc_05850e

;--------------------------
loc_0595a0:
	movea.l #loc_059914,a0
	bsr.w loc_058554
	bra.w loc_05850e

;--------------------------
loc_0595ae:
	movea.l #loc_05ac62,a0
	bsr.w loc_05852c
	bra.w loc_05850e

;--------------------------
loc_0595bc:
	jsr loc_02c78a
	beq.w loc_059680
	movea.l #loc_05a996,a0
	bsr.w loc_05852c
	bra.w loc_058610

;--------------------------
loc_0595d4
	cmpi.w #$60,($340,a4)
	blt.w loc_058610
	jsr loc_02c78a
	beq.w loc_0595fa
	bsr.w loc_05ba04
	beq.w loc_0595fa
	jsr loc_02e308
	bra.w loc_058610

;--------------------------
loc_0595fa:
	st ($3c9,a4)
	bsr.w loc_05bace
	jsr loc_02e308
	bra.w loc_058610

;--------------------------
loc_05960c:
	cmpi.w #$40,($340,a4)
	blt.w loc_058610
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05ba32
	jsr loc_02e308
	bra.w loc_058610

;--------------------------
loc_05962e:
	cmpi.w #$40,($340,a4)
	blt.w loc_058610
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bace
	jsr loc_02e308
	bra.w loc_058610

;--------------------------
loc_059650:
	cmpi.w #$40,($340,a4)
	blt.w loc_058610
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bb1c
	jsr loc_02e308
	bra.w loc_058610

;--------------------------
loc_059672:
	movea.l #loc_05998e,a0
	bsr.w loc_058554
	bra.w loc_058610

;--------------------------
loc_059680:
	movea.l #loc_059eda,a0
	bsr.w loc_05852c
	bra.w loc_058610

;--------------------------
loc_05968e:
	clr.b ($2f6,a4)
	cmpi.w #$24,($36c,a4)
	bge.w loc_0596a2
	move.b #4,($2f6,a4)

loc_0596a2:
	cmpi.w #$64,($36c,a4)
	ble.w loc_0596b2
	move.b #8,($2f6,a4)

loc_0596b2:
	clr.b ($2f6,a4)
	btst #5,($361,a4)
	beq.w loc_0596c8
	jsr loc_0226b4
	bra.b loc_05968e

loc_0596c8:
	clr.b ($2f6,a4)
	moveq #6,d0
	jsr loc_02e420
	cmpi.w #$40,($340,a4)
	bge.w loc_0596ec
	movea.l #loc_0597f8,a0
	bsr.w loc_058554
	bra.w loc_058610

loc_0596ec:
	jsr RandomNumberGod
	lea loc_0596fc(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0596fc:
	dc.w $0003
	dc.w $0028
	dc.l loc_05971e
	dc.w $001e
	dc.l loc_059710
	dc.w $0014
	dc.l loc_05972c

loc_059710:
	movea.l #loc_059f6e,a0
	bsr.w loc_058554
	bra.w loc_058610

loc_05971e:
	movea.l #loc_059eda,a0
	bsr.w loc_05852c
	bra.w loc_058610

loc_05972c:
	cmpi.w #$60,($340,a4)
	blt.w loc_059740
	bsr.w loc_05b9d6
	jsr loc_02e308

loc_059740:
	bra.w loc_058610

loc_059744:
	andi.b #2,($2f6,a4)

loc_05974a:
	btst #5,($249,a4)
	beq.w loc_059780
	cmpi.w #$80,($340,a4)
	blt.w loc_059770
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_059770
	st ($2fb,a4)

loc_059770:
	moveq #8,d0
	jsr loc_02e39c
	jsr loc_0226b4
	bra.b loc_05974a

loc_059780:
	jsr loc_02e370
	move.l #$80004,d0
	jsr loc_02e39c
	jsr RandomNumberGod
	lsr.w #8,d0
	cmp.w ($340,a4),d0
	bcs.w loc_0597a6
	bra.w loc_05850e

loc_0597a6:
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$3c,($378,a4)
	bgt.w loc_0597f4

loc_0597bc:
	tst.b ($249,a4)
	beq.w loc_0597f4
	jsr RandomNumberGod
	lea loc_0597d8(pc),a0
	jsr loc_02decc
	bra.w loc_0597ec

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0597d8:
	dc.w $0003

	dc.w $0050
	dc.l loc_059eda

	dc.w $000a
	dc.l loc_05a996

	dc.w $000a
	dc.l loc_05a93c

;--------------------------
loc_0597ec:
	jsr loc_0226b4
	bra.b loc_0597bc

loc_0597f4:
	bra.w loc_058ca4

;--------------------------
loc_0597f8:
	cmpi.w #$80,($340,a4)
	bge.w loc_059828
	andi.b #2,($2f6,a4)
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$44,d2
	jsr loc_02e0f4
	bra.w loc_05855a

loc_059828:
	jsr loc_02e496
	jsr loc_02e550
	bra.w loc_05855a

;--------------------------
loc_059838:
	jsr loc_02e370
	jsr RandomNumberGod
	cmpi.w #$4000,d0
	bcs.b loc_0597f8
	cmpi.w #$a0,($358,a4)
	blt.w loc_059870
	jsr RandomNumberGod
	cmpi.w #$3000,d0
	bcs.w loc_059914
	jsr RandomNumberGod
	cmpi.w #$2000,d0
	bcs.w loc_0598a6

loc_059870:
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4), d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$44,d2
	jsr loc_02e0aa
	jsr loc_02e496
	jsr loc_02e550
	bra.w loc_05855a

;--------------------------
loc_05989c:
	move.l #$40004,d0
	bra.w loc_0598c4

;--------------------------
loc_0598a6:
	cmpi.w #$20,($340,a4)
	bge.w loc_0598be
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0597f8

loc_0598be:
	move.l #$100018,d0

loc_0598c4:
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$64,d2
	jsr loc_02e0f4
	cmpi.w #$20,($340,a4)
	bge.w loc_059902
	clr.b ($2f6,a4)
	move.w #$f,d0
	swap d0
	move.w #$ff,d0
	sub.w ($33e,a4),d0
	lsr.w #2,d0
	moveq #0,d2
	move.w #$44,d2
	swap d2
	jsr loc_02e0f4

loc_059902:
	clr.b ($2f6,a4)
	bra.w loc_05855a

;--------------------------
loc_05990a:
	move.l #$40004,d0
	bra.w loc_059932

;--------------------------
loc_059914:
	cmpi.w #$30,($340,a4)
	bge.w loc_05992c
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_0597f8

loc_05992c:
	move.l #$100020,d0

loc_059932:
	move.w #$a0,d2
	swap d2
	move.w #$50,d2
	move.b #4,($2f6,a4)
	jsr loc_02e0f4
	bmi.w loc_0597f8
	cmpi.w #$50,($378,a4)
	ble.w loc_059986
	cmpi.w #$20,($340,a4)
	bge.w loc_059986
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

loc_059986:
	clr.b ($2f6,a4)
	bra.w loc_05855a

;--------------------------
loc_05998e:
	cmpi.w #$20,($340,a4)
	blt.w loc_05855a
	cmpi.w #$32,($36c,a4)
	bgt.w loc_0599b4
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_059a24
	bra.w loc_059a1a

loc_0599b4:
	cmpi.w #$46,($36c,a4)
	bgt.w loc_0599da
	move.l #$80008,d0
	move.l #$5a0000,d2
	move.b #4,($2f6,a4)
	jsr loc_02e0f4
	bra.w loc_0599f8

loc_0599da:
	cmpi.w #$5a,($36c,a4)
	blt.w loc_0599f8
	move.l #$80008,d0
	moveq #$46,d2
	move.b #8,($2f6,a4)
	jsr loc_02e0f4

loc_0599f8:
	cmpi.w #$1e,($378,a4)
	bgt.w loc_059a24
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_059a1a
	move.b #5,($2f6,a4)
	bra.w loc_059a2a

loc_059a1a:
	move.b #1,($2f6,a4)
	bra.w loc_059a2a

loc_059a24:
	move.b #9,($2f6,a4)

loc_059a2a:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_059a2a
	clr.b ($2f6,a4)
	moveq #4,d0
	jsr loc_02e39c
	bra.w loc_05855a

;--------------------------
loc_059a48:
	cmpi.w #$40,($340,a4)
	blt.w loc_0598a6
	clr.b ($2f6,a4)
	bsr.w loc_05bdaa
	jsr loc_0226b4
	move.w #8,d0
	jsr loc_02e39c
	bra.w loc_05855a

;--------------------------
loc_059a6e:
	cmpi.w #$40,($340,a4)
	blt.w loc_059914
	clr.b ($2f6,a4)
	bsr.w loc_05bd8c
	jsr loc_0226b4
	move.w #8,d0
	jsr loc_02e39c
	bra.w loc_05855a

;--------------------------
loc_059a94:
	cmpi.w #$20,($340,a4)
	blt.w loc_059b1e
	cmpi.w #$1e,($36c,a4)
	blt.w loc_059ac0
	cmpi.w #$50,($36c,a4)
	blt.w loc_059ae8
	cmpi.w #$a0,($36c,a4)
	bgt.w loc_059b06
	bra.w loc_0597f8

loc_059ac0:
	bra.w loc_059ae8

;--------------------------
loc_059ac4:
	move.b ($246,a4),d0
	andi.b #$c,d0
	bne.w loc_059ade
	movea.l #loc_059a6e,a0
	bsr.w loc_058554
	bra.w loc_059b1e

loc_059ade:
	move.b #9,($2f6,a4)
	bra.w loc_059a2a

;--------------------------
loc_059ae8:
	move.l #$100010,d0
	move.b #4,($2f6,a4)
	move.w #$a0,d2
	swap d2
	clr.w d2
	jsr loc_02e0f4
	bra.w loc_059b1e

;--------------------------
loc_059b06:
	move.l #$100010,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$50,d2
	jsr loc_02e0f4

loc_059b1e:
	clr.b ($2f6,a4)
	bra.w loc_05855a

;--------------------------
loc_059b26:
	move.b #9,($2f6,a4)

loc_059b2c:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_059b2c
	clr.b ($2f6,a4)
	moveq #2,d0
	jsr loc_02e420
	bra.w loc_05855a

;--------------------------
loc_059b4a:
	move.b #5,($2f6,a4)

loc_059b50:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_059b50
	clr.b ($2f6,a4)
	moveq #2,d0
	jsr loc_02e420
	bra.w loc_05855a

;--------------------------
loc_059b6e:
	move.b #1,($2f6,a4)

loc_059b74:
	jsr loc_0226b4
	btst #1,($246,a4)
	bne.b loc_059b74
	clr.b ($2f6,a4)
	moveq #2,d0
	jsr loc_02e420
	bra.w loc_05855a

;--------------------------
loc_059b92:
	btst #0,($24a,a4)
	bne.w loc_058532
	tst.b ($247,a4)
	bne.w loc_058532
	cmpi.w #$30,($340,a4)
	blt.w loc_058532

loc_059bae:
	clr.b ($2f6,a4)
	btst #1,($246,a4)
	bne.w loc_059ecc
	move.b ($361,a4),d0
	andi.b #$f8,d0
	beq.w loc_059bd2
	cmpi.b #5,($360,a4)
	beq.w loc_059ec2

loc_059bd2:
	tst.b ($365,a4)
	bne.w loc_059d84
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_059d62
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_059caa
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_059c26
	cmpi.w #$24,($378,a4)
	bgt.w loc_059c26
	cmpi.w #$30,($37a,a4)
	bgt.w loc_059c26
	cmpi.w #-$30,($37a,a4)
	blt.w loc_059c26
	bsr.w loc_05bd12
	bra.w loc_059ecc

loc_059c26:
	cmpi.w #$34,($378,a4)
	bgt.w loc_059c4c
	cmpi.w #$30,($37a,a4)
	bgt.w loc_059c4c
	cmpi.w #-$30,($37a,a4)
	blt.w loc_059c4c
	bsr.w loc_05bc1e
	bra.w loc_059ecc

loc_059c4c:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_059c80
	cmpi.w #$44,($378,a4)
	bgt.w loc_059c80
	cmpi.w #$20,($37a,a4)
	bgt.w loc_059c80
	cmpi.w #-$20,($37a,a4)
	blt.w loc_059c80
	bsr.w loc_05bc98
	bra.w loc_059ecc

loc_059c80:
	cmpi.w #$44,($378,a4)
	bgt.w loc_059ca6
	cmpi.w #$40,($37a,a4)
	bgt.w loc_059ca6
	cmpi.w #-$20,($37a,a4)
	blt.w loc_059ca6
	bsr.w loc_05bb8c
	bra.w loc_059ecc

loc_059ca6:
	bra.w loc_059ec2

loc_059caa:
	cmpi.w #$34,($378,a4)
	bgt.w loc_059cd0
	cmpi.w #$30,($37a,a4)
	bgt.w loc_059cd0
	cmpi.w #-$30,($37a,a4)
	blt.w loc_059cd0
	bsr.w loc_05bc1e
	bra.w loc_059ecc

loc_059cd0:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_059d04
	cmpi.w #$44,($378,a4)
	bgt.w loc_059d04
	cmpi.w #$10,($37a,a4)
	bgt.w loc_059d04
	cmpi.w #-$20,($37a,a4)
	blt.w loc_059d04
	bsr.w loc_05bd12
	bra.w loc_059ecc

loc_059d04
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_059d38
	cmpi.w #$44,($378,a4)
	bgt.w loc_059d38
	cmpi.w #$30,($37a,a4)
	bgt.w loc_059d38
	cmpi.w #$10,($37a,a4)
	blt.w loc_059d38
	bsr.w loc_05bc98
	bra.w loc_059ecc

loc_059d38:
	cmpi.w #$54,($378,a4)
	bgt.w loc_059d5e
	cmpi.w #$20,($37a,a4)
	bgt.w loc_059d5e
	cmpi.w #-$20,($37a,a4)
	blt.w loc_059d5e
	bsr.w loc_05bb8c
	bra.w loc_059ecc

loc_059d5e:
	bra.w loc_059ec2

;--------------------------
loc_059d62:
	cmpi.w #$20,($378,a4)
	bge.w loc_059ec2
	cmpi.w #$20,($37a,a4)
	bgt.w loc_059ec2
	cmpi.w #-$20,($37a,a4)
	blt.w loc_059ec2
	bra.w loc_059ecc

;--------------------------
loc_059d84:
	tst.w ($21a,a4)
	blt.w loc_059ec2
	cmpi.l #$627000,($22a,a4)
	bgt.w loc_059ec2
	cmpi.l #$7f8000,($22a,a4)
	ble.w loc_059da8
	bra.w loc_059ec2

;--------------------------
loc_059da8:
	move.b ($208,a4),d0
	cmp.b ($209,a4),d0
	bne.w loc_059eb0
	cmpi.w #$14,($378,a4)
	bgt.w loc_059dc6
	bsr.w loc_05bc98
	bra.w loc_059ecc

loc_059dc6:
	move.b ($248,a4),d0
	andi.b #$c,d0
	beq.w loc_059e3a
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_059df2
	cmpi.w #$24,($378,a4)
	bgt.w loc_059df2
	bsr.w loc_05bd12
	bra.w loc_059ecc

loc_059df2:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_059e12
	cmpi.w #$34,($378,a4)
	bgt.w loc_059e12
	bsr.w loc_05bc1e
	bra.w loc_059ecc

loc_059e12:
	cmpi.w #$34,($378,a4)
	bgt.w loc_059e24
	bsr.w loc_05bc98
	bra.w loc_059ecc

loc_059e24:
	cmpi.w #$44,($378,a4)
	bgt.w loc_059e36
	bsr.w loc_05bb8c
	bra.w loc_059ecc

loc_059e36:
	bra.w loc_059ec2

loc_059e3a:
	cmpi.w #$34,($378,a4)
	bgt.w loc_059e4c
	bsr.w loc_05bc1e
	bra.w loc_059ecc

loc_059e4c:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_059e6c
	cmpi.w #$44,($378,a4)
	bgt.w loc_059e6c
	bsr.w loc_05bc98
	bra.w loc_059ecc

loc_059e6c:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_059e8c
	cmpi.w #$44,($378,a4)
	bgt.w loc_059e8c
	bsr.w loc_05bd12
	bra.w loc_059ecc

loc_059e8c
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_059eac
	cmpi.w #$54,($378,a4)
	bgt.w loc_059eac
	bsr.w loc_05bb8c
	bra.w loc_059ecc

loc_059eac:
	bra.w loc_059ec2

;--------------------------
loc_059eb0:
	btst #3,($248,a4)
	beq.w loc_059ec2
	bsr.w loc_05bc98
	bra.w loc_059ecc

;--------------------------
loc_059ec2:
	jsr loc_0226b4
	bra.w loc_059bae

;--------------------------
loc_059ecc:
	jsr loc_02e308
	clr.b ($2f6,a4)
	bra.w loc_058532

;--------------------------
loc_059eda:
	cmpi.w #$40,($340,a4)
	blt.w loc_058532
	move.w #7,d0

loc_059ee8:
	move.w d0,($4d6,a4)
	move.b ($361,a4),d0
	andi.b #$31,d0
	bne.w loc_058532
	btst #6,($24a,a4)
	bne.w loc_058532
	jsr loc_02e308
	cmpi.w #$20,($36c,a4)
	ble.w loc_059f2e
	move.l #$100010,d0
	move.b #8,($2f6,a4)
	moveq #0,d2
	move.w #$20,d2
	jsr loc_02e0f4
	bra.w loc_059f36

loc_059f2e:
	bsr.w loc_05b9bc
	bne.w loc_059f52

loc_059f36:
	move.l #$20002,d0
	jsr loc_02e420
	move.w ($4d6,a4),d0
	dbra d0,loc_059ee8
	clr.b ($2f6,a4)
	bra.w loc_058532

loc_059f52:
	jsr loc_02e308
	clr.b ($2f6,a4)
	movea.l #loc_059a94,a0
	bsr.w loc_058554
	clr.b ($2f6,a4)
	bra.w loc_058532

;--------------------------
loc_059f6e:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_058542
	move.l ($4d8,a4),($4e4,a4)
	btst #1,($246,a4)
	beq.w loc_058532
	btst #3,($24a,a4)
	bne.w loc_058532
	cmpi.w #$60,($340,a4)
	blt.w loc_058532
	clr.b ($2f6,a4)

loc_059fa2:
	cmpi.w #$50,($36c,a4)
	ble.w loc_059fcc
	jsr loc_0226b4
	move.l #$100010,d0
	moveq #0,d2
	move.w #$54,d2
	move.b #8,($2f6,a4)
	jsr loc_02e0f4
	bra.b loc_059fa2

loc_059fcc:
	movea.l #loc_05998e,a0
	bsr.w loc_058554

loc_059fd6:
	jsr loc_0226b4
	movea.l #loc_059b92,a0
	bsr.w loc_05852c
	move.l ($4e4,a4),($4d8,a4)
	btst #1,($246,a4)
	beq.b loc_059fd6
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_05a010(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05a010:
	dc.w $0003

	dc.w $001e
	dc.l loc_05a078
	dc.w $001e
	dc.l loc_05a024
	dc.w $001e
	dc.l loc_05a048

;--------------------------
loc_05a024:
	jsr RandomNumberGod
	lea loc_05a034(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\
loc_05a034:
	dc.w $0003

	dc.w $0014
	dc.l loc_05a11a
	dc.w $0014
	dc.l loc_05a0fe
	dc.w $0014
	dc.l loc_05a0c6

;--------------------------
loc_05a048:
	bsr.w loc_05bd12
	jsr loc_02e26e
	beq.w loc_05a13c
	btst #1,($248,a4)
	bne.w loc_05a064
	bra.w loc_05a06a

loc_05a064:
	move.b #2,($2f6,a4)

loc_05a06a:
	bsr.w loc_05bc1e
	jsr loc_02e308
	bra.w loc_05a13c


loc_05a078:
	cmpi.w #$30,($36c,a4)
	bge.w loc_05a098
	bsr.w loc_05bc1e
	jsr loc_02e26e
	bgt.w loc_05a098
	blt.w loc_05a098
	bra.w loc_05a136

loc_05a098:
	cmpi.w #$60,($340,a4)
	blt.w loc_05a136
	jsr RandomNumberGod
	lea loc_05a0b2(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05a0b2:
	dc.w $0003

	dc.w $0014
	dc.l loc_05a0c6
	dc.w $0014
	dc.l loc_05a0e2
	dc.w $0014
	dc.l loc_05a11a

;--------------------------
loc_05a0c6:
	cmpi.w #$40,($340,a4)
	blt.w loc_05a136
	st ($3c9,a4)
	bsr.w loc_05ba32
	jsr loc_02e308
	bra.w loc_05a13c

;--------------------------
loc_05a0e2:
	cmpi.w #$40,($340,a4)
	blt.w loc_05a136
	st ($3c9,a4)
	bsr.w loc_05bace
	jsr loc_02e308
	bra.w loc_05a13c

;--------------------------
loc_05a0fe:
	cmpi.w #$40,($340,a4)
	blt.w loc_05a136
	st ($3c9,a4)
	bsr.w loc_05bb1c
	jsr loc_02e308
	bra.w loc_05a13c

;--------------------------
loc_05a11a:
	cmpi.w #$40,($340,a4)
	blt.w loc_05a136
	sf ($3c9,a4)
	bsr.w loc_05ba80
	jsr loc_02e308
	bra.w loc_05a13c

;--------------------------
loc_05a136:
	jsr loc_02e308

loc_05a13c:
	clr.b ($2f6,a4)
	bra.w loc_058542

;--------------------------
loc_05a144:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_058542
	btst #1,($246,a4)
	beq.w loc_058532
	btst #3,($24a,a4)
	bne.w loc_058532
	cmpi.w #$30,($340,a4)
	blt.w loc_058532
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_05a1c2

loc_05a18c:
	cmpi.w #$28,($36c,a4)
	bgt.w loc_05a1c2
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_05a1c2
	move.b #2,($2f6,a4)
	bsr.w loc_05bd12
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_05a1dc
	bra.b loc_05a18c

loc_05a1c2:
	cmpi.w #$6e,($378,a4)
	bgt.w loc_05a1dc
	move.b #2,($2f6,a4)
	bsr.w loc_05bc1e
	jsr loc_02e308

loc_05a1dc:
	clr.b ($2f6,a4)
	bra.w loc_058532

;--------------------------
loc_05a1e4:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_058532
	btst #1,($246,a4)
	beq.w loc_058532
	btst #3,($24a,a4)
	bne.w loc_058532
	cmpi.w #$3c,($36c,a4)
	bgt.w loc_058532
	cmpi.w #$30,($340,a4)
	blt.w loc_058532
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_05a23c
	move.b #2,($2f6,a4)

loc_05a23c:
	bsr.w loc_05bd12
	jsr loc_02e26e
	bgt.w loc_05a252
	blt.w loc_05a252
	bra.w loc_05a35c

loc_05a252:
	cmpi.w #$60,($340,a4)
	blt.w loc_05a35c
	jsr RandomNumberGod
	lea loc_05a26c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05a26c:
	dc.w $0004

	dc.w $0014
	dc.l loc_05a29e
	dc.w $0014
	dc.l loc_05a2c4
	dc.w $0014
	dc.l loc_05a2dc
	dc.w $0014
	dc.l loc_05a286

;--------------------------
loc_05a286:
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05ba80
	jsr loc_02e308
	bra.w loc_05a362

;--------------------------
loc_05a29e:
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05ba32
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_05a302
	bra.w loc_05a362

;--------------------------
loc_05a2c4:
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bb1c
	jsr loc_02e308
	bra.w loc_05a362

;--------------------------
loc_05a2dc:
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bace
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$c000,d0
	bcs.w loc_05a302
	bra.w loc_05a362

;--------------------------
loc_05a302:
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$c0,($340,a4)
	blt.w loc_05a362
	movea.l #loc_059a6e,a0
	bsr.w loc_058554
	btst #1,($248,a4)
	bne.w loc_05a344
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05ba32
	jsr loc_02e308
	bra.w loc_05a362

;--------------------------
loc_05a344:
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bace
	jsr loc_02e308
	bra.w loc_05a362

;--------------------------
loc_05a35c:
	jsr loc_02e308

loc_05a362:
	clr.b ($2f6,a4)
	bra.w loc_058532

;--------------------------
loc_05a36a:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_058532
	btst #1,($246,a4)
	beq.w loc_058532
	btst #3,($24a,a4)
	bne.w loc_058532
	cmpi.w #$30,($340,a4)
	blt.w loc_058532
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	move.b #2,($2f6,a4)
	bsr.w loc_05bc98
	jsr loc_02e26e
	bgt.w loc_05a3c0
	blt.w loc_05a3c0
	bra.w loc_05a47e

loc_05a3c0:
	cmpi.w #$60,($340,a4)
	blt.w loc_05a47e
	jsr RandomNumberGod
	lea loc_05a3da(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05a3da:
	dc.w $0004
	dc.w $0014
	dc.l loc_05a3f4
	dc.w $0014
	dc.l loc_05a41a
	dc.w $0014
	dc.l loc_05a440
	dc.w $0014
	dc.l loc_05a458

;--------------------------
loc_05a3f4:
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bace
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_05a470
	bra.w loc_05a484

;--------------------------
loc_05a41a:
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05ba32
	jsr loc_02e308
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_05a470
	bra.w loc_05a484

;--------------------------
loc_05a440:
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05ba80
	jsr loc_02e308
	bra.w loc_05a484

;--------------------------
loc_05a458:
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bb1c
	jsr loc_02e308
	bra.w loc_05a484

;--------------------------
loc_05a470:
	movea.l #loc_059a48,a0
	bsr.w loc_058554
	bra.w loc_05a484

loc_05a47e:
	jsr loc_02e308

loc_05a484:
	clr.b ($2f6,a4)
	bra.w loc_058532

;--------------------------
loc_05a48c:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_058532
	btst #1,($246,a4)
	beq.w loc_058532
	btst #3,($24a,a4)
	bne.w loc_058532
	cmpi.w #$30,($340,a4)
	blt.w loc_058532
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550

;--------------------------
loc_05a4c6:
	cmpi.w #$28,($36c,a4)
	bgt.w loc_05a4fc
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_05a4fc
	move.b #2,($2f6,a4)
	bsr.w loc_05bc98
	jsr loc_02e308
	move.b ($361,a4),d0
	andi.b #$92,d0
	bne.w loc_05a53e
	bra.b loc_05a4c6

;--------------------------
loc_05a4fc:
	cmpi.w #$5a,($378,a4)
	bgt.w loc_05a51a
	move.b #2,($2f6,a4)
	bsr.w loc_05bb8c
	jsr loc_02e308
	bra.w loc_05a53e

;--------------------------
loc_05a51a:
	cmpi.w #$40,($340,a4)
	blt.w loc_05a53e
	move.b #8,($2f6,a4)
	bsr.w loc_05bb8c
	jsr loc_02e308
	bra.w loc_05a53e

;--------------------------
loc_05a538:
	jsr loc_02e308

loc_05a53e:
	clr.b ($2f6,a4)
	bra.w loc_058532

;--------------------------
loc_05a546:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_058532
	btst #1,($246,a4)
	beq.w loc_058532
	btst #3,($24a,a4)
	bne.w loc_058532
	cmpi.w #$64,($378,a4)
	bgt.w loc_058532
	cmpi.w #$30,($340,a4)
	blt.w loc_058532
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_05bc1e
	beq.w loc_058532
	cmpi.w #7,($2fe,a4)
	beq.w loc_05a5b4
	jsr loc_02e26e
	beq.w loc_05a68a
	cmpi.w #$6e,($378,a4)
	bgt.w loc_058532
	bra.w loc_05a660

;--------------------------
loc_05a5b4:
	jsr loc_02e26e
	beq.w loc_05a68a
	cmpi.w #$60,($340,a4)
	blt.w loc_05a684
	jsr RandomNumberGod
	lea loc_05a5d8(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05a5d8:
	dc.w $0004

	dc.w $0014
	dc.l loc_05a5f2
	dc.w $0014
	dc.l loc_05a618
	dc.w $0014
	dc.l loc_05a630
	dc.w $0014
	dc.l loc_05a648

;--------------------------
loc_05a5f2:
	jsr loc_02c78a
	beq.w loc_05a618
	cmpi.w #$c0,($340,a4)
	blt.w loc_05a618
	bsr.w loc_05ba04
	beq.w loc_05a618
	jsr loc_02e308
	bra.w loc_05a68a

;--------------------------
loc_05a618:
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05ba32
	jsr loc_02e308
	bra.w loc_05a68a

;--------------------------
loc_05a630:
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bace
	jsr loc_02e308
	bra.w loc_05a68a

;--------------------------
loc_05a648:
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05ba80
	jsr loc_02e308
	bra.w loc_05a68a

;--------------------------
loc_05a660:
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$6e,($378,a4)
	bge.w loc_05a68a
	bsr.w loc_05bc1e
	jsr loc_02e308
	bra.w loc_05a68a

;--------------------------
loc_05a684:
	jsr loc_02e308

loc_05a68a:
	clr.b ($2f6,a4)
	bra.w loc_058532

;--------------------------
loc_05a692:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_058542
	btst #1,($246,a4)
	beq.w loc_058532
	btst #3,($24a,a4)
	bne.w loc_058532
	cmpi.w #$64,($378,a4)
	bgt.w loc_058532
	cmpi.w #$30,($340,a4)
	blt.w loc_058532
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_05bb8c
	beq.w loc_058532
	cmpi.w #$a,($2fe,a4)
	beq.w loc_05a712
	jsr loc_02e308
	cmpi.w #$6e,($378,a4)
	bge.w loc_05a7f2
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_05bb8c
	jsr loc_02e308
	bra.w loc_05a7f2

loc_05a712:
	jsr loc_02e26e
	beq.w loc_05a7f2
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	btst #1,($248,a4)
	bne.w loc_05a75c
	jsr RandomNumberGod
	lea loc_05a748(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05a748:
	dc.w $0003

	dc.w $0014
	dc.l loc_05a7bc
	dc.w $0014
	dc.l loc_05a79e
	dc.w $0014
	dc.l loc_05a7ca

;--------------------------
loc_05a75c:
	jsr RandomNumberGod
	lea loc_05a76c(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05a76c:
	dc.w $0003

	dc.w $0014
	dc.l loc_05a78e
	dc.w $0014
	dc.l loc_05a7ac
	dc.w $0014
	dc.l loc_05a780

;--------------------------
loc_05a780:
	movea.l #loc_05998e,a0
	bsr.w loc_058554
	bra.w loc_05a7f2

;--------------------------
loc_05a78e:
	cmpi.w #$50,($378,a4)
	bge.w loc_05a7f2
	move.b #2,($2f6,a4)

loc_05a79e:
	bsr.w loc_05bb8c
	jsr loc_02e308
	bra.w loc_05a7f2

;--------------------------
loc_05a7ac:
	cmpi.w #$50,($378,a4)
	bge.w loc_05a7f2
	move.b #2,($2f6,a4)

loc_05a7bc:
	bsr.w loc_05bc1e
	jsr loc_02e308
	bra.w loc_05a7f2

;--------------------------
loc_05a7ca:
	cmpi.w #$40,($340,a4)
	blt.w loc_05a7f2
	cmpi.w #$82,($378,a4)
	bge.w loc_05a7f2
	move.b #8,($2f6,a4)
	bsr.w loc_05bb8c
	jsr loc_02e308
	bra.w loc_05a7f2

loc_05a7f2:
	clr.b ($2f6,a4)
	bra.w loc_058532

;--------------------------
loc_05a7fa:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_058532
	btst #1,($246,a4)
	beq.w loc_058532
	btst #3,($24a,a4)
	bne.w loc_058532
	cmpi.w #$64,($378,a4)
	bgt.w loc_058532
	cmpi.w #$30,($340,a4)
	blt.w loc_058532
	clr.b ($2f6,a4)
	movea.l #loc_059a6e,a0
	bsr.w loc_058554
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_05a858(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05a858:
	dc.w $0006
	dc.w $0014
	dc.l loc_05a918
	dc.w $0014
	dc.l loc_05a8c2
	dc.w $0014
	dc.l loc_05a8de
	dc.w $0014
	dc.l loc_05a8a0
	dc.w $0014
	dc.l loc_05a87e
	dc.w $0014
	dc.l loc_05a8fc

;--------------------------
loc_05a87e:
	jsr loc_02c78a
	beq.w loc_05a8c2
	cmpi.w #$60,($340,a4)
	blt.w loc_05a8c2
	bsr.w loc_05b9d6
	jsr loc_02e308
	bra.w loc_05a934

;--------------------------
loc_05a8a0:
	jsr loc_02c78a
	beq.w loc_05a8c2
	cmpi.w #$60,($340,a4)
	blt.w loc_05a8c2
	bsr.w loc_05ba04
	jsr loc_02e308
	bra.w loc_05a934

;--------------------------
loc_05a8c2:
	cmpi.w #$40,($340,a4)
	blt.w loc_05a934
	st ($3c9,a4)
	bsr.w loc_05bace
	jsr loc_02e308
	bra.w loc_05a934

;--------------------------
loc_05a8de:
	cmpi.w #$40,($340,a4)
	blt.w loc_05a934
	move.b #8,($2f6,a4)
	bsr.w loc_05bb8c
	jsr loc_02e308
	bra.w loc_05a934

;--------------------------
loc_05a8fc:
	cmpi.w #$40,($340,a4)
	blt.w loc_05a934
	st ($3c9,a4)
	bsr.w loc_05bb1c
	jsr loc_02e308
	bra.w loc_05a934


;--------------------------
loc_05a918:
	cmpi.w #$40,($340,a4)
	blt.w loc_05a934
	st ($3c9,a4)
	bsr.w loc_05ba32
	jsr loc_02e308
	bra.w loc_05a934

;--------------------------
loc_05a934:
	clr.b ($2f6,a4)
	bra.w loc_058532

;--------------------------
loc_05a93c:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_058542
	btst #1,($246,a4)
	beq.w loc_058532
	btst #3,($24a,a4)
	bne.w loc_058532
	cmpi.w #$40,($340,a4)
	blt.w loc_058532
	clr.b ($2f6,a4)
	cmpi.w #$46,($36c,a4)
	bge.w loc_05a98e
	st ($3c9,a4)
	tst.b ($365,a4)
	beq.w loc_05a984
	sf ($3c9,a4)

loc_05a984:
	bsr.w loc_05ba80
	jsr loc_02e308

loc_05a98e:
	clr.b ($2f6,a4)
	bra.w loc_058532

;--------------------------
loc_05a996:
	btst #1,($246,a4)
	beq.w loc_058532
	btst #3,($24a,a4)
	bne.w loc_058532
	jsr loc_02c78a
	beq.w loc_058532
	cmpi.w #$60,($340,a4)
	blt.w loc_058532
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_05a9de(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05a9de:
	dc.w $0002
	dc.w $001e
	dc.l loc_05a9ec
	dc.w $001e
	dc.l loc_05a9fa

;--------------------------
loc_05a9ec:
	bsr.w loc_05ba04
	jsr loc_02e308
	bra.w loc_05aa04

;--------------------------
loc_05a9fa:
	bsr.w loc_05b9d6
	jsr loc_02e308

loc_05aa04:
	clr.b ($2f6,a4)
	bra.w loc_058532

;--------------------------
loc_05aa0c:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_058542
	btst #1,($246,a4)
	beq.w loc_058532
	btst #3,($24a,a4)
	bne.w loc_058532
	cmpi.w #$40,($340,a4)
	blt.w loc_058532
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bb1c
	jsr loc_02e308
	bra.w loc_05aa5e

loc_05aa5e:
	clr.b ($2f6,a4)
	bra.w loc_058532

;--------------------------
loc_05aa66:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_058542
	btst #1,($246,a4)
	beq.w loc_058532
	cmpi.w #$30,($340,a4)
	blt.w loc_058532
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	cmpi.w #$40,($340,a4)
	blt.w loc_05ab54
	cmpi.w #$b4,($378,a4)
	bgt.w loc_05ab5a
	sf ($3c9,a4)
	bsr.w loc_05ba32
	jsr loc_02e26e
	bgt.w loc_05aac4
	blt.w loc_05ab54
	bra.w loc_05ab54

loc_05aac4:
	jsr loc_02e308
	jsr RandomNumberGod
	lea loc_05aada(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05aada:
	dc.w $0004

	dc.w $0014
	dc.l loc_05ab0c
	dc.w $0014
	dc.l loc_05ab1e
	dc.w $0014
	dc.l loc_05ab36
	dc.w $000a
	dc.l loc_05aaf4

;--------------------------
loc_05aaf4:
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bb1c
	jsr loc_02e308
	bra.w loc_05ab5a

;--------------------------
loc_05ab0c:
	st ($3c9,a4)
	bsr.w loc_05ba32
	jsr loc_02e308
	bra.w loc_05ab5a

;--------------------------
loc_05ab1e:
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bace
	jsr loc_02e308
	bra.w loc_05ab5a

;--------------------------
loc_05ab36:
	cmpi.w #$40,($340,a4)
	blt.w loc_05ab5a
	move.b #8,($2f6,a4)
	bsr.w loc_05bb8c
	jsr loc_02e308
	bra.w loc_05ab5a

;--------------------------
loc_05ab54:
	jsr loc_02e308

loc_05ab5a:
	clr.b ($2f6,a4)
	bra.w loc_058542

;--------------------------
loc_05ab62:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_058532
	btst #1,($246,a4)
	beq.w loc_058532
	btst #3,($24a,a4)
	bne.w loc_058532
	cmpi.w #$40,($340,a4)
	blt.w loc_058532
	clr.b ($2f6,a4)
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bace
	jsr loc_02e26e
	bgt.w loc_05abd8
	blt.w loc_05abb0
	bra.w loc_05abf6

loc_05abb0:
	jsr loc_02e308
	cmpi.w #$c0,($340,a4)
	blt.w loc_05abfc
	jsr loc_02c78a
	beq.w loc_05abfc
	bsr.w loc_05ba04
	jsr loc_02e308
	bra.w loc_05abfc

loc_05abd8:
	jsr loc_02e308
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bace
	jsr loc_02e308
	bra.w loc_05abfc

loc_05abf6:
	jsr loc_02e308

loc_05abfc:
	clr.b ($2f6,a4)
	bra.w loc_058532

;--------------------------
loc_05ac04:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_058542
	btst #1,($246,a4)
	beq.w loc_058532
	cmpi.w #$30,($340,a4)
	blt.w loc_058532
	clr.b ($2f6,a4)
	move.w #2,d0

loc_05ac2c:
	move.w d0,($4d6,a4)
	movea.l #loc_059b26,a0
	bsr.w loc_058554

loc_05ac3a:
	jsr loc_0226b4
	movea.l #loc_059b92,a0
	bsr.w loc_05852c
	btst #1,($246,a4)
	beq.b loc_05ac3a
	move.w ($4d6,a4),d0
	dbra d0,loc_05ac2c
	clr.b ($2f6,a4)
	bra.w loc_058532

;--------------------------
loc_05ac62:
	move.b ($361,a4),d0
	andi.b #$60,d0
	bne.w loc_058532
	btst #1,($246,a4)
	beq.w loc_058532
	btst #3,($24a,a4)
	bne.w loc_058532
	cmpi.w #$70,($340,a4)
	blt.w loc_058532
	clr.b ($2f6,a4)
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_05acac(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05acac:
	dc.w $000f
	dc.w $000a
	dc.l loc_05ad60
	dc.w $000a
	dc.l loc_05af6a
	dc.w $000a
	dc.l loc_05ae52
	dc.w $000a
	dc.l loc_05afac
	dc.w $000a
	dc.l loc_05af0e
	dc.w $000a
	dc.l loc_05aebe
	dc.w $000a
	dc.l loc_05ae80
	dc.w $000a
	dc.l loc_05adba
	dc.w $000a
	dc.l loc_05adee
	dc.w $000a
	dc.l loc_05ad8e
	dc.w $000a
	dc.l loc_05afea
	dc.w $000a
	dc.l loc_05b018
	dc.w $000a
	dc.l loc_05b046
	dc.w $000a
	dc.l loc_05ad48
	dc.w $000a
	dc.l loc_05ad08

;--------------------------
loc_05ad08:
	movea.l #loc_059a6e,a0
	bsr.w loc_058554
	jsr loc_02e496
	jsr loc_02e550
	move.l #$200030,d0
	move.b #2,($2f6,a4)
	moveq #0,d2
	move.w #$54,d2
	jsr loc_02e0f4
	bsr.w loc_05ba04
	beq.w loc_05ad48
	jsr loc_02e308
	bra.w loc_05b178

;--------------------------
loc_05ad48:
	cmpi.w #$b4,($36c,a4)
	blt.w loc_05b178
	bsr.w loc_05bb66
	jsr loc_02e308
	bra.w loc_05b178

;--------------------------
loc_05ad60:
	cmpi.w #$64,($378,a4)
	bgt.w loc_05b178
	movea.l #loc_059a6e,a0
	bsr.w loc_058554
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_059b4a,a0
	bsr.w loc_058554
	bra.w loc_05b178

;--------------------------
loc_05ad8e:
	sf ($3c9,a4)
	bsr.w loc_05bace
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	st ($3c9,a4)
	bsr.w loc_05bace
	jsr loc_02e308
	bra.w loc_05b178

;--------------------------
loc_05adba:
	cmpi.w #$b4,($378,a4)
	blt.w loc_05b178
	movea.l #loc_059a48,a0
	bsr.w loc_058554
	jsr loc_02e496
	jsr loc_02e550
	move.b #8,($2f6,a4)
	bsr.w loc_05bb8c
	jsr loc_02e308
	bra.w loc_05b178

;--------------------------
loc_05adee:
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_05ae2c
	cmpi.w #$a0,($378,a4)
	bgt.w loc_05b178
	movea.l #loc_059b6e,a0
	bsr.w loc_058554

loc_05ae10:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_05ae10
	movea.l #loc_059b6e,a0
	bsr.w loc_058554
	bra.w loc_05b178

loc_05ae2c:
	movea.l #loc_059b4a,a0
	bsr.w loc_058554

loc_05ae36:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_05ae36
	movea.l #loc_059b4a,a0
	bsr.w loc_058554
	bra.w loc_05b178

;--------------------------
loc_05ae52:
	cmpi.w #$50,($378,a4)
	blt.w loc_05b178
	bsr.w loc_05bb8c
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_05bb8c
	jsr loc_02e308
	bra.w loc_05b178

;--------------------------
loc_05ae80:
	cmpi.w #$8c,($378,a4)
	bgt.w loc_05b178
	movea.l #loc_059a48,a0
	bsr.w loc_058554
	movea.l #loc_059a6e,a0
	bsr.w loc_058554
	jsr loc_02e496
	jsr loc_02e550
	move.b #8,($2f6,a4)
	bsr.w loc_05bb8c
	jsr loc_02e308
	bra.w loc_05b178

;--------------------------
loc_05aebe:
	movea.l #loc_059b4a,a0
	bsr.w loc_058554

loc_05aec8:
	jsr loc_0226b4
	btst #1,($246,a4)
	beq.b loc_05aec8
	jsr loc_02e496
	jsr loc_02e550
	sf ($3c9,a4)
	bsr.w loc_05ba80
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	st ($3c9,a4)
	bsr.w loc_05ba80
	jsr loc_02e308
	bra.w loc_05b178

;--------------------------
loc_05af0e:
	movea.l #loc_059a48,a0
	bsr.w loc_058554
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_059a6e,a0
	bsr.w loc_058554
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_059a48,a0
	bsr.w loc_058554
	jsr loc_02e496
	jsr loc_02e550
	movea.l #loc_059a6e,a0
	bsr.w loc_058554
	jsr loc_02e496
	jsr loc_02e550
	bra.w loc_05b178

;--------------------------
loc_05af6a:
	movea.l #loc_059a6e,a0
	bsr.w loc_058554
	jsr loc_02e496
	jsr loc_02e550
	sf ($3c9,a4)
	bsr.w loc_05bb1c
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	st ($3c9,a4)
	bsr.w loc_05bb1c
	jsr loc_02e308
	bra.w loc_05b178

;--------------------------
loc_05afac:
	cmpi.w #$64,($378,a4)
	blt.w loc_05b178
	bsr.w loc_05bb8c
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_05afdc(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05afdc:
	dc.w $0002
	dc.w $0014
	dc.l loc_05b146
	dc.w $0014
	dc.l loc_05b09a

;--------------------------
loc_05afea:
	cmpi.w #$78,($378,a4)
	bgt.w loc_05b178
	bsr.w loc_05bc1e
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_05bc1e
	jsr loc_02e308
	bra.w loc_05b178

;--------------------------
loc_05b018:
	cmpi.w #$6e,($378,a4)
	bgt.w loc_05b178
	bsr.w loc_05bd12
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	bsr.w loc_05bc1e
	jsr loc_02e308
	bra.w loc_05b178

;--------------------------
loc_05b046:
	cmpi.w #$8c,($378,a4)
	bgt.w loc_05b178
	move.b #2,($2f6,a4)
	bsr.w loc_05bc98
	jsr loc_02e308
	bsr.w loc_05bc98
	jsr loc_02e308
	jsr loc_02e496
	jsr loc_02e550
	jsr RandomNumberGod
	lea loc_05b086(pc),a0
	jmp loc_02decc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05b086:
	dc.w $0003
	dc.w $0014
	dc.l loc_05b0c2
	dc.w $0014
	dc.l loc_05b0ee
	dc.w $0014
	dc.l loc_05b15e

;--------------------------
loc_05b09a:
	cmpi.w #$60,($340,a4)
	blt.w loc_05b178
	cmpi.w #$8c,($378,a4)
	bgt.w loc_05b178
	move.b #8,($2f6,a4)
	bsr.w loc_05bb8c
	jsr loc_02e308
	bra.w loc_05b178

;--------------------------
loc_05b0c2:
	cmpi.w #$40,($340,a4)
	blt.w loc_05b178
	cmpi.w #$8c,($378,a4)
	bgt.w loc_05b178
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05bace
	jsr loc_02e308
	bra.w loc_05b178

;--------------------------
loc_05b0ee:
	cmpi.w #$40,($340,a4)
	blt.w loc_05b178
	cmpi.w #$50,($378,a4)
	bgt.w loc_05b178
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05ba80
	jsr loc_02e308
	bra.w loc_05b178

;--------------------------
loc_05b11a:;unused?
	cmpi.w #$40,($340,a4)
	blt.w loc_05b178
	cmpi.w #$78,($378,a4)
	bgt.w loc_05b178
	jsr RandomNumberGod
	smi ($3c9,a4)
	bsr.w loc_05ba32
	jsr loc_02e308
	bra.w loc_05b178

;--------------------------
loc_05b146:
	cmpi.w #$78,($378,a4)
	bgt.w loc_05b178
	bsr.w loc_05bb8c
	jsr loc_02e308
	bra.w loc_05b178

;--------------------------
loc_05b15e:
	cmpi.w #$50,($378,a4)
	bgt.w loc_05b178
	move.b #2,($2f6,a4)
	bsr.w loc_05bb8c
	jsr loc_02e308

loc_05b178:
	clr.b ($2f6,a4)
	bra.w loc_058542

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Palette A
loc_05b180:
	dc.l loc_05b354,loc_05b3f4,loc_05b2f4,loc_05b2d4
	dc.l loc_05b494,loc_05b4b4,loc_05b4d4,loc_05b4f4
	dc.l loc_05b514,loc_05b534,loc_05b314,loc_05b334
	dc.l loc_05b554,loc_05b5d4,loc_05b5f4,loc_05b614
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Palette B
loc_05b1c4:
	dc.l loc_05b374,loc_05b414,loc_05b2f4,loc_05b2d4
	dc.l loc_05b494,loc_05b4b4,loc_05b4d4,loc_05b4f4
	dc.l loc_05b514,loc_05b534,loc_05b314,loc_05b334
	dc.l loc_05b574,loc_05b5d4,loc_05b5f4,loc_05b614
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Palette C
loc_05b208:
	dc.l loc_05b394,loc_05b434,loc_05b2f4,loc_05b2d4
	dc.l loc_05b494,loc_05b4b4,loc_05b4d4,loc_05b4f4
	dc.l loc_05b514,loc_05b534,loc_05b314,loc_05b334
	dc.l loc_05b594,loc_05b5d4,loc_05b5f4,loc_05b614
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Palette D
loc_05b24c:
	dc.l loc_05b3b4,loc_05b454,loc_05b2f4,loc_05b2d4
	dc.l loc_05b494,loc_05b4b4,loc_05b4d4,loc_05b4f4
	dc.l loc_05b514,loc_05b534,loc_05b314,loc_05b334
	dc.l loc_05b5b4,loc_05b5d4,loc_05b5f4,loc_05b614
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Palette 05
loc_05b290:
	dc.l loc_05b3d4,loc_05b474,loc_05b2f4,loc_05b2d4
	dc.l loc_05b494,loc_05b4b4,loc_05b4d4,loc_05b4f4
	dc.l loc_05b514,loc_05b534,loc_05b314,loc_05b334
	dc.l loc_05b574,loc_05b5d4,loc_05b5f4,loc_05b614
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Palettes
loc_05b2d4:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

loc_05b2f4:
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

loc_05b314:
	dc.w $7111,$700a,$601c,$700f,$112f,$713f,$324f,$526f
	dc.w $337f,$539f,$73af,$34bf,$74df,$75ff,$7aff,$7fff

loc_05b334:
	dc.w $7888,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_05b354:
	dc.w $0999,$7fff,$0841,$4b63,$0e85,$5fb6,$6fd9,$4ffc
	dc.w $1334,$1667,$788a,$4f72,$756a,$18bf,$7def,$0e21

loc_05b374:
	dc.w $0999,$7fff,$2931,$4c63,$0f85,$6fb8,$4feb,$5ffc
	dc.w $4821,$4d20,$7f51,$348f,$0777,$7bbb,$7eee,$335f

loc_05b394:
	dc.w $0999,$7fff,$2931,$6c63,$2f85,$4fc8,$5fea,$4ffc
	dc.w $3625,$1a47,$1d6b,$4f48,$6b50,$5fc2,$6ff7,$3d12

loc_05b3b4:
	dc.w $0999,$7fff,$5841,$7b63,$5e94,$0fc7,$6fea,$4ffc
	dc.w $0222,$1554,$5776,$3fb0,$3471,$18c6,$7cfb,$5d81

loc_05b3d4:
	dc.w $0999,$7fff,$0841,$4b63,$0e85,$0fb7,$6fd9,$4ffd
	dc.w $7316,$565c,$397e,$0fbe,$0b50,$2fa0,$7fe6,$6e8d

loc_05b3f4:
	dc.w $0999,$7ccc,$6300,$0630,$2953,$0a84,$2b97,$2cba
	dc.w $0001,$0334,$7556,$0c31,$7136,$537a,$47bc,$0900

loc_05b414:
	dc.w $0999,$7ccc,$0510,$0730,$1951,$5b84,$7cb7,$7cca
	dc.w $4500,$7a00,$4c40,$305a,$7222,$0777,$7bbb,$301a

loc_05b434:
	dc.w $0999,$7ccc,$4410,$0730,$1951,$5b84,$7cb7,$1cc9
	dc.w $3201,$1603,$1927,$2c05,$6600,$4b70,$6cc4,$0800

loc_05b454:
	dc.w $0999,$7ccc,$0510,$5620,$4840,$1a73,$6b97,$2cba
	dc.w $7000,$4011,$2333,$0b90,$0330,$6774,$7cc9,$0b50

loc_05b474:
	dc.w $0999,$7ccc,$0400,$4720,$0a41,$5c83,$4cb6,$7cc9
	dc.w $7002,$5228,$154a,$3c9b,$4610,$5b70,$6cc4,$1b6a

loc_05b494:
	dc.w $7bbb,$7fff,$3d00,$7f00,$5f60,$7f90,$6ff1,$6ffa
	dc.w $7a00,$7f00,$7f90,$5f60,$7f60,$5f80,$7fa0,$7f00

loc_05b4b4:
	dc.w $0777,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_05b4d4:
	dc.w $0666,$7fff,$100f,$106f,$308f,$10cf,$36ff,$5eff
	dc.w $303f,$308f,$10df,$10cf,$106f,$30ef,$5eff,$105f

loc_05b4f4:
	dc.w $0bbb,$7fff,$5eff,$36ff,$10cf,$308f,$106f,$100f
	dc.w $30bf,$308f,$104f,$109f,$73ff,$30bf,$106f,$30ef

loc_05b514:
	dc.w $2b99,$0409,$750a,$672d,$394f,$796f,$5b9f,$7dbf
	dc.w $393b,$3b5c,$0d9f,$7dbf,$3b39,$5c5b,$1e6d,$3b7f

loc_05b534:
	dc.w $7888,$7afb,$4174,$4283,$54a4,$66c5,$57f5,$6df6
	dc.w $2080,$75b2,$0be6,$2af3,$2080,$23b8,$24fa,$20c0

loc_05b554:
	dc.w $537b,$1a00,$5c00,$1e20,$4f00,$7f60,$7f81,$5fb2
	dc.w $5fd3,$4fe4,$7ff4,$7ffb,$7fff,$6cde,$1abb,$4578

loc_05b574:
	dc.w $0aaa,$000a,$000c,$104f,$106f,$108f,$10af,$10cf
	dc.w $14df,$79ef,$7bef,$5eff,$7fff,$6cde,$1abb,$4578

loc_05b594:
	dc.w $5886,$0050,$2060,$2080,$40b0,$21c0,$24d0,$6af0
	dc.w $6ff0,$6ff6,$7ffb,$6ffe,$7fff,$6cde,$1abb,$4578

loc_05b5b4:
	dc.w $0333,$0409,$0409,$672d,$394f,$796f,$5b9f,$7caf
	dc.w $3dbf,$1edf,$5eef,$7fef,$7fff,$6cde,$1abb,$4578

loc_05b5d4:
	dc.w $0888,$700a,$601c,$700f,$112f,$713f,$324f,$526f
	dc.w $337f,$539f,$73af,$34bf,$74df,$75ff,$7aff,$7fff

loc_05b5f4:
	dc.w $34fb,$0000,$7777,$7fff,$4fff,$4ffe,$1fcb,$4b86
	dc.w $2943,$0620,$4a00,$4e00,$5f74,$4b00,$1259,$2710

loc_05b614:
	dc.w $7ccc,$2c84,$7c94,$5db5,$5ec7,$5ec6,$0fd9,$7fd9
	dc.w $7feb,$4ffd,$6fff,$43c9,$53c9,$43ca,$53ca,$43cb

;--------------------------
RilPRGStart:;5b634
	move.l #loc_05bdd4,($86,a4)
	move.l #loc_058500,($56,a4)
	move.l #loc_05b6d0,($1b6,a4)
	move.l #loc_05b6e8,($1ba,a4)
	move.l #loc_05b6f2,($1be,a4)
	move.l #loc_05b6fa,($1c2,a4)
	move.l #loc_0584d4,($1c6,a4)
	move.l #loc_05bdd2,($1ce,a4)
	move.l #loc_05b81e,($1ca,a4)
	move.l #loc_05cd08,($1d2,a4)
	move.l #loc_0950a8,($1d6,a4);hitboxes
	move.l #loc_05cb24,($1da,a4)
	move.l #loc_05cbd8,($1de,a4)
	move.l #loc_05cb44,($1e2,a4)
	move.l #loc_05caf4,($1e6,a4)
	move.l #loc_05cad8,($1ea,a4)
	move.l #loc_05cc0c,($1ee,a4)
	bsr.w loc_0584a8
	andi.w #$f0ff,($2ee,a4)
	move.l #loc_05ce24,($2d0,a4)
	rts

;--------------------------
loc_05b6d0:
	clr.w ($550,a4)
	jsr loc_02a9c4
	btst #3,($249,a4)
	beq.b loc_05b6e6
	sf ($3f7,a4)

loc_05b6e6:
	rts

;--------------------------
loc_05b6e8:
	clr.w ($550,a4)
	sf ($3f7,a4)
	rts

;--------------------------
loc_05b6f2:
	move.w ($2ba,a3),($2ba,a4)
	rts

;--------------------------
loc_05b6fa:
	lea ($3d0,a4),a0
	jsr loc_02cbba
	move.b ($3d0,a4),d0
	move.b d0,($3c0,a4)
	move.b ($3d4,a4),d0
	move.b d0,($3c1,a4)
	tst.w ($20a,a4)
	bne.w loc_05b734
	tst.b ($3d9,a4)
	bmi.w loc_05b728
	sf ($3d9,a4)

loc_05b728:
	tst.b ($3ed,a4)
	bmi.w loc_05b734
	sf ($3ed,a4)

loc_05b734:
	lea ($3d8,a4),a0
	lea loc_05b7f4(pc),a1
	jsr loc_02cd84
	and.b d1,($3c2,a4)
	or.b d0,($3c2,a4)
	andi.b #$55,($3c2,a4)

	lea ($3e2,a4),a0
	lea loc_05b7fa(pc),a1
	jsr loc_02cd84
	and.b d1,($3c3,a4)
	or.b d0,($3c3,a4)
	andi.b #$aa,($3c3,a4)

	lea ($3ec,a4),a0
	lea loc_05b800(pc),a1
	jsr loc_02cd84
	and.b d1,($3c4,a4)
	or.b d0,($3c4,a4)
	andi.b #$aa,($3c4,a4)

	lea ($3f6,a4),a0
	lea loc_05b806(pc),a1
	jsr loc_02d176
	and.b d1,($3c5,a4)
	or.b d0,($3c5,a4)
	andi.b #$55,($3c5,a4)

	btst #1,($249,a4)
	beq.b loc_05b7b0
	sf ($3f7,a4)

loc_05b7b0:
	lea ($402,a4),a0
	lea loc_05b80e(pc),a1
	jsr loc_02cf62
	and.b d1,($3c6,a4)
	or.b d0,($3c6,a4)
	andi.b #$55,($3c6,a4)

	lea ($40e,a4),a0
	lea loc_05b816(pc),a1
	jsr loc_02cf62
	and.b d1,($3c7,a4)
	or.b d0,($3c7,a4)
	andi.b #$aa,($3c7,a4)
	tst.b ($2fc,a4)
	smi d0
	or.b d0,($3c8,a4)
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;special inputs
loc_05b7f4:
	dc.w $0418,$2007,$0904

loc_05b7fa:
	dc.w $0201,$2008,$0a04

loc_05b800:
	dc.w $045a,$2008,$0804

loc_05b806:
	dc.w $0a05,$0000,$0a05,$0000

loc_05b80e:
	dc.w $0408,$0478,$1e18,$0a07

loc_05b816:
	dc.w $0618,$1401,$1e18,$0a07

;---------------------------
loc_05b81e:
	bsr.w loc_05b834
	bne.w loc_05b832
	bsr.w loc_05b91a
	bne.w loc_05b832
	bsr.w loc_05b96e

loc_05b832:
	rts

;---------------------------
loc_05b834:
	tst.b ($3c7,a4)
	beq.b loc_05b842
	bsr.w loc_05ba04
	bne.w loc_05b8ec

loc_05b842:
	tst.b ($3c6,a4)
	beq.b loc_05b850
	bsr.w loc_05b9d6
	bne.w loc_05b8ec

loc_05b850:
	move.b ($3c3,a4),d0
	andi.b #$f0,d0
	beq.b loc_05b862
	bsr.w loc_05ba80
	bne.w loc_05b8ec

loc_05b862:
	move.b ($3c4,a4),d0
	andi.b #$f0,d0
	beq.b loc_05b874
	bsr.w loc_05bace
	bne.w loc_05b8ec

loc_05b874:
	move.b ($3c2,a4),d0
	andi.b #$f0,d0
	beq.b loc_05b886
	bsr.w loc_05ba32
	bne.w loc_05b8ec

loc_05b886:
	move.b ($3c5,a4),d0
	andi.b #$f0,d0
	beq.b loc_05b898
	bsr.w loc_05bb1c
	bne.w loc_05b8ec

loc_05b898:
	bsr.w loc_05b8ee
	bne.w loc_05b8ec
	move.b ($3c3,a4),d0
	andi.b #$f,d0
	beq.b loc_05b8b2
	bsr.w loc_05ba80
	bne.w loc_05b8ec

loc_05b8b2:
	move.b ($3c4,a4),d0
	andi.b #$f,d0
	beq.b loc_05b8c4
	bsr.w loc_05bace
	bne.w loc_05b8ec

loc_05b8c4:
	move.b ($3c2,a4),d0
	andi.b #$f,d0
	beq.b loc_05b8d6
	bsr.w loc_05ba32
	bne.w loc_05b8ec

loc_05b8d6:
	move.b ($3c5,a4),d0
	andi.b #$f,d0
	beq.b loc_05b8e8
	bsr.w loc_05bb1c
	bne.w loc_05b8ec

loc_05b8e8:
	clr.w d0
	rts

loc_05b8ec:
	rts

loc_05b8ee:
	btst #6,($2f7,a4)
	beq.w loc_05b914
	move.b ($2f6,a4),d0
	cmpi.b #4,d0
	beq.w loc_05b90c
	cmpi.b #8,d0
	bne.w loc_05b914

loc_05b90c:
	bsr.w loc_05b9bc
	bne.w loc_05b918

loc_05b914:
	clr.w d0
	rts

loc_05b918:
	rts

;---------------------------
loc_05b91a:
	btst #7,($2f7,a4)
	beq.b loc_05b92a
	bsr.w loc_05bb8c
	bne.w loc_05b96c

loc_05b92a:
	btst #6,($2f7,a4)
	beq.b loc_05b93a
	bsr.w loc_05bc1e
	bne.w loc_05b96c

loc_05b93a:
	btst #5,($2f7,a4)
	beq.b loc_05b94a
	bsr.w loc_05bc98
	bne.w loc_05b96c

loc_05b94a:
	btst #4,($2f7,a4)
	beq.b loc_05b95a
	bsr.w loc_05bd12
	bne.w loc_05b96c

loc_05b95a:
	tst.b ($3c8,a4)
	beq.b loc_05b968
	bsr.w loc_05bb66
	bne.w loc_05b96c

loc_05b968:
	clr.w d0
	rts

loc_05b96c:
	rts

;---------------------------
loc_05b96e:
	tst.b ($209,a4)
	bmi.w loc_05b996
	tst.b ($3c1,a4)
	beq.b loc_05b984
	bsr.w loc_05bd8c
	bne.w loc_05b9b6

loc_05b984:
	tst.b ($3c0,a4)
	beq.b loc_05b992
	bsr.w loc_05bdaa
	bne.w loc_05b9b6

loc_05b992:
	clr.w d0
	rts

loc_05b996:
	tst.b ($3c0,a4)
	beq.b loc_05b9a4
	bsr.w loc_05bd8c
	bne.w loc_05b9b6

loc_05b9a4:
	tst.b ($3c1,a4)
	beq.b loc_05b9b2
	bsr.w loc_05bdaa
	bne.w loc_05b9b6

loc_05b9b2:
	clr.w d0
	rts

loc_05b9b6:
	rts

;--------------------------
loc_05b9b8:
	clr.w d0
	rts

;---------------------------
loc_05b9bc:;grab
	cmpi.w #$20,($226,a4)
	bgt.b loc_05b9b8
	jsr loc_02a4dc
	beq.b loc_05b9b8
	move.w #$16,d0
	move.w d0,($2fe,a4)
	rts

;---------------------------
loc_05b9d6:
	jsr loc_02c78a
	beq.b loc_05b9b8
	btst #1,($246,a4)
	beq.b loc_05b9b8
	btst #5,($24a,a4)
	beq.b loc_05b9f6
	tst.w ($550,a4)
	bne.b loc_05b9f6
	bra.b loc_05b9b8

loc_05b9f6:
	sf ($403,a4)
	move.w #$22,d0
	move.w d0,($2fe,a4)
	rts

;---------------------------
loc_05ba04:
	jsr loc_02c78a
	beq.b loc_05b9b8
	btst #1,($246,a4)
	beq.b loc_05b9b8
	btst #5,($24a,a4)
	beq.b loc_05ba24
	tst.w ($550,a4)
	bne.b loc_05ba24
	bra.b loc_05b9b8

loc_05ba24:
	sf ($40f,a4)
	move.w #$21,d0
	move.w d0,($2fe,a4)
	rts

;---------------------------
loc_05ba32:
	btst #5,($24a,a4)
	bne.w loc_05b9b8
	btst #1,($246,a4)
	beq.w loc_05b9b8
	tst.b (1,a4)
	bpl.b loc_05ba5a
	move.b ($3c2,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_05ba60

loc_05ba5a:
	move.b ($3c9,a4),($ba,a4)

loc_05ba60:
	sf ($3d9,a4)
	tst.b ($ba,a4)
	bne.w loc_05ba76
	move.w #$19,d0
	move.w d0,($2fe,a4)
	rts

loc_05ba76:
	move.w #$1a,d0
	move.w d0,($2fe,a4)
	rts

;---------------------------
loc_05ba80:
	btst #5,($24a,a4)
	bne.w loc_05b9b8
	btst #1,($246,a4)
	beq.w loc_05b9b8
	tst.b (1,a4)
	bpl.b loc_05baa8
	move.b ($3c3,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_05baae

loc_05baa8:
	move.b ($3c9,a4),($ba,a4)

loc_05baae:
	sf ($3e3,a4)
	tst.b ($ba,a4)
	bne.w loc_05bac4
	move.w #$1b,d0
	move.w d0,($2fe,a4)
	rts

loc_05bac4:
	move.w #$1c,d0
	move.w d0,($2fe,a4)
	rts

;---------------------------
loc_05bace:
	btst #5,($24a,a4)
	bne.w loc_05b9b8
	btst #1,($246,a4)
	beq.w loc_05b9b8
	tst.b (1,a4)
	bpl.b loc_05baf6
	move.b ($3c4,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_05bafc

loc_05baf6:
	move.b ($3c9,a4),($ba,a4)

loc_05bafc:
	sf ($3ed,a4)
	tst.b ($ba,a4)
	bne.w loc_05bb12
	move.w #$1d,d0
	move.w d0,($2fe,a4)
	rts

loc_05bb12:
	move.w #$1e,d0
	move.w d0,($2fe,a4)
	rts

;---------------------------
loc_05bb1c:
	btst #5,($24a,a4)
	bne.w loc_05b9b8
	btst #1,($246,a4)
	beq.w loc_05b9b8
	tst.b (1,a4)
	bpl.b loc_05bb44
	move.b ($3c5,a4),d0
	andi.b #$cc,d0
	sne ($ba,a4)
	bra.b loc_05bb4a

loc_05bb44:
	move.b ($3c9,a4),($ba,a4)

loc_05bb4a:
	tst.b ($ba,a4)
	bne.w loc_05bb5c
	move.w #$1f,d0
	move.w d0,($2fe,a4)
	rts

loc_05bb5c:
	move.w #$20,d0
	move.w d0,($2fe,a4)
	rts

;---------------------------
loc_05bb66:
	btst #4,($24a,a4)
	bne.w loc_05b9b8
	btst #1,($246,a4)
	beq.w loc_05b9b8
	tst.w ($552,a4)
	bne.w loc_05b9b8
	move.w #$23,d0
	move.w d0,($2fe,a4)
	rts

;---------------------------
loc_05bb8c:;HK
	btst #1,($246,a4)
	bne.w loc_05bbc0
	btst #0,($24a,a4)
	bne.w loc_05b9b8
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_05bbb6
	move.w #$14,d0
	move.w d0,($2fe,a4)
	rts

loc_05bbb6:
	move.w #$15,d0
	move.w d0,($2fe,a4)
	rts

loc_05bbc0:
	btst #1,($246,a4)
	beq.w loc_05b9b8
	btst #3,($24a,a4)
	bne.w loc_05b9b8
	btst #1,($2f6,a4)
	bne.w loc_05bc0a
	cmpi.w #$28,($226,a4)
	ble.w loc_05bbf6
	btst #3,($2f6,a4)
	bne.w loc_05bc14
	bra.w loc_05bc00

loc_05bbf6:
	move.w #$a,d0
	move.w d0,($2fe,a4)
	rts

loc_05bc00:
	move.w #$b,d0
	move.w d0,($2fe,a4)
	rts

loc_05bc0a:
	move.w #$d,d0
	move.w d0,($2fe,a4)
	rts

loc_05bc14:
	move.w #$c,d0
	move.w d0,($2fe,a4)
	rts

;---------------------------
loc_05bc1e:;HP
	btst #1,($246,a4)
	bne.w loc_05bc52
	btst #0,($24a,a4)
	bne.w loc_05b9b8
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_05bc48
	move.w #$12,d0
	move.w d0,($2fe,a4)
	rts

loc_05bc48:
	move.w #$13,d0
	move.w d0,($2fe,a4)
	rts

loc_05bc52:
	btst #1,($246,a4)
	beq.w loc_05b9b8
	btst #3,($24a,a4)
	bne.w loc_05b9b8
	btst #1,($2f6,a4)
	bne.w loc_05bc8e
	cmpi.w #$30,($226,a4)
	bgt.w loc_05bc84
	move.w #7,d0
	move.w d0,($2fe,a4)
	rts

loc_05bc84:
	move.w #8,d0
	move.w d0,($2fe,a4)
	rts

loc_05bc8e:
	move.w #9,d0
	move.w d0,($2fe,a4)
	rts

;---------------------------
loc_05bc98:;LK
	btst #1,($246,a4)
	bne.w loc_05bccc
	btst #0,($24a,a4)
	bne.w loc_05b9b8
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_05bcc2
	move.w #$10,d0
	move.w d0,($2fe,a4)
	rts

loc_05bcc2:
	move.w #$11,d0
	move.w d0,($2fe,a4)
	rts

loc_05bccc
	btst #1,($246,a4)
	beq.w loc_05b9b8
	btst #3,($24a,a4)
	bne.w loc_05b9b8
	btst #1,($2f6,a4)
	bne.w loc_05bd08
	cmpi.w #$24,($226,a4)
	bgt.w loc_05bcfe
	move.w #4,d0
	move.w d0,($2fe,a4)
	rts

loc_05bcfe:
	move.w #5,d0
	move.w d0,($2fe,a4)
	rts

loc_05bd08:
	move.w #6,d0
	move.w d0,($2fe,a4)
	rts

;---------------------------
loc_05bd12:;LP
	btst #1,($246,a4)
	bne.w loc_05bd46
	btst #0,($24a,a4)
	bne.w loc_05b9b8
	move.b ($248,a4),d0
	andi.b #$c,d0
	bne.w loc_05bd3c
	move.w #$e,d0
	move.w d0,($2fe,a4)
	rts

loc_05bd3c:
	move.w #$f,d0
	move.w d0,($2fe,a4)
	rts

loc_05bd46:
	btst #1,($246,a4)
	beq.w loc_05b9b8
	btst #3,($24a,a4)
	bne.w loc_05b9b8
	btst #1,($2f6,a4)
	bne.w loc_05bd82
	cmpi.w #$28,($226,a4)
	bgt.w loc_05bd78
	move.w #2,d0
	move.w d0,($2fe,a4)
	rts

loc_05bd78:
	move.w #1,d0
	move.w d0,($2fe,a4)
	rts

loc_05bd82:
	move.w #3,d0
	move.w d0,($2fe,a4)
	rts

;---------------------------
loc_05bd8c:
	btst #3,($24a,a4)
	bne.w loc_05b9b8
	btst #1,($246,a4)
	beq.w loc_05b9b8
	move.w #$18,d0
	move.w d0,($2fe,a4)
	rts

;---------------------------
loc_05bdaa:
	btst #3,($24a,a4)
	bne.w loc_05b9b8
	btst #1,($246,a4)
	beq.w loc_05b9b8
	btst #4,($248,a4)
	bne.w loc_05b9b8
	move.w #$17,d0
	move.w d0,($2fe,a4)
	rts

;---------------------------
loc_05bdd2:
	rts

;--------------------------
loc_05bdd4:
	tst.b (-$3e4,a5)
	bne.w loc_05be02
	cmpi.w #1,(-$f2e,a5)
	bgt.w loc_05be02
	movea.l #loc_05cd98,a0
	clr.w d0
	jsr loc_0226f0

loc_05bdf4:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_05bdf4

loc_05be02:
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_05be0c:
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_05be18:
	jsr loc_02269c
	btst #4,($248,a4)
	bne.w loc_05be44
	btst #0,($2f6,a4)
	beq.w loc_05be44
	tst.w ($20c,a4)
	bne.w loc_05be44
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_05be44:
	btst #2,($2e1,a4)
	beq.b loc_05be18
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_05be56:
	move.b ($209,a4),($208,a4)
	move.b ($208,a4),d0
	not.b d0
	move.b d0,($208,a3)
	sf ($be,a4)
	tst.b (1,a4)
	bpl.w loc_05be7c
	btst #3,($2f6,a4)
	sne ($be,a4)

loc_05be7c:
	move.l #$20000,d2
	move.l #-$60000,d3
	jsr loc_02a59c
	lea loc_05bee8(pc),a0
	jsr loc_02a554
	clr.l ($216,a4)
	clr.l ($21a,a4)
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)

loc_05beaa:
	jsr loc_02269c
	tst.b ($b7,a4)
	beq.w loc_05becc
	sf ($b7,a4)
	tst.b ($be,a4)
	beq.w loc_05becc
	not.b ($208,a4)
	not.b ($208,a3)

loc_05becc:
	btst #2,($2e1,a4)
	beq.b loc_05beaa
	move.b ($209,a4),($208,a4)
	clr.w ($2bc,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05bee8:
	dc.l loc_0602aa,loc_060334,loc_0603be,loc_060448
	dc.l loc_0604cc,loc_060550,loc_0605da,loc_06065e
	dc.l loc_0606e8,loc_060772,loc_0602aa,loc_0602aa
	dc.l loc_0602aa,loc_0602aa,loc_0602aa,loc_0602aa

;--------------------------
loc_05bf28:
	st ($24a,a4)

loc_05bf2c:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_05bf2c
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_05bf44:
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_05bf54:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_05bf54
	cmpi.w #$40,($226,a4)
	ble.w loc_05bf74
	tst.w ($2c8,a4)
	beq.w loc_05bf74
	bra.b loc_05bf54

loc_05bf74:
	movea.l #loc_05e81a,a0
	clr.w d0
	jsr loc_0226f0
	sf ($273,a4)

loc_05bf86:
	jsr loc_02269c
	tst.b ($273,a4)
	bne.w loc_05bfa6
	btst #2,($2e1,a4)
	beq.b loc_05bf86
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_05bfa6:
	movea.l #loc_05e71c,a0
	clr.w d0
	jsr loc_0226f0
	move.l #-$18000,($216,a4)
	move.l #-$a5000,($21a,a4)

loc_05bfc4:
	jsr loc_02269c
	addi.l #$f000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_05bfc4
	movea.l #loc_05e75a,a0
	clr.w d0
	jsr loc_0226f0

loc_05bfe8:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_05bfe8
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_05c000:
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_05c010:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_05c010
	cmpi.w #$48,($226,a4)
	ble.w loc_05c030
	tst.w ($2c8,a4)
	beq.w loc_05c030
	bra.b loc_05c010

loc_05c030:
	tst.b ($ba,a4)
	bne.b loc_05c046
	movea.l #loc_05e81a,a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_05c054

loc_05c046:
	movea.l #loc_05e98a,a0
	clr.w d0
	jsr loc_0226f0

loc_05c054:
	sf ($273,a4)

loc_05c058:
	jsr loc_02269c
	tst.b ($273,a4)
	bne.w loc_05c078
	btst #2,($2e1,a4)
	beq.b loc_05c058
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_05c078:
	jmp loc_028fd0

;--------------------------
loc_05c07e:
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)

loc_05c08e:
	jsr loc_02269c
	tst.b ($b7,a4)
	beq.b loc_05c08e

loc_05c09a:
	jsr loc_02269c
	tst.b ($b6,a4)
	bne.w loc_05c0be
	move.l ($216,a4),d0
	asr.l #3,d0
	sub.l d0,($216,a4)
	cmpi.l #-$10000,($21a,a4)
	blt.w loc_05c0ca

loc_05c0be:
	addi.l #$a000,($21a,a4)
	bra.w loc_05c0d2

loc_05c0ca:
	addi.l #$6000,($21a,a4)

loc_05c0d2:
	btst #1,($246,a4)
	beq.b loc_05c09a
	movea.l #loc_05e75a,a0
	clr.w d0
	jsr loc_0226f0

loc_05c0e8:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_05c0e8
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_05c100:
	st ($24a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	sf ($273,a4)

loc_05c114:
	jsr loc_02269c
	tst.b ($273,a4)
	beq.b loc_05c12c
	sf ($273,a4)
	tst.b ($249,a3)
	bne.w loc_05c13e

loc_05c12c:
	btst #2,($2e1,a4)
	beq.b loc_05c114
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_05c13e:
	tst.b ($ba,a4)
	bne.b loc_05c154
	movea.l #loc_05ef08,a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_05c162

loc_05c154:
	movea.l #loc_05f096,a0
	clr.w d0
	jsr loc_0226f0

loc_05c162:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_05c162
	sf ($273,a4)

loc_05c172:
	jsr loc_02269c
	tst.b ($ba,a4)
	bne.b loc_05c190
	tst.b ($273,a4)
	beq.b loc_05c190
	sf ($273,a4)
	tst.b ($249,a3)
	bne.w loc_05c1ce

loc_05c190:
	btst #2,($2e1,a4)
	beq.b loc_05c172

loc_05c198:
	btst #1,($246,a4)
	bne.b loc_05c1a8
	jsr loc_02269c
	bra.b loc_05c198

loc_05c1a8
	movea.l #loc_05f07a,a0
	clr.w d0
	jsr loc_0226f0

loc_05c1b6:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_05c1b6
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_05c1ce:
	movea.l #loc_05e71c,a0
	clr.w d0
	jsr loc_0226f0
	move.l #-$18000,($216,a4)
	move.l #-$4c000,($21a,a4)

loc_05c1ec:
	jsr loc_02269c
	addi.l #$8000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_05c1ec
	movea.l #loc_05e75a,a0
	clr.w d0
	jsr loc_0226f0

loc_05c210:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_05c210
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_05c228:
	st ($24a,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	move.b ($209,a4),($208,a4)
	clr.w ($c4,a4)
	move.w ($2ea,a4),($c0,a4)
	move.b ($208,a4),($bf,a4)
	tst.b (1,a4)
	bpl.b loc_05c26c
	tst.b ($ba,a4)
	bne.b loc_05c264
	move.w #1,($c2,a4)
	bra.b loc_05c26a

loc_05c264:
	move.w #2,($c2,a4)

loc_05c26a:
	bra.b loc_05c27c

loc_05c26c:
	jsr RandomNumberGod
	andi.w #7,d0
	addq.w #2,d0
	move.w d0,($c2,a4)

loc_05c27c:
	tst.b ($ba,a4)
	beq.b loc_05c28a
	move.l #$38000,d2
	bra.b loc_05c290

loc_05c28a:
	move.l #$20000,d2

loc_05c290:
	move.b ($ba,a4),d6
	sf ($273,a4)
	move.w #$7fff,d5
	bra.w loc_05c2a4

loc_05c2a0:
	bsr.w loc_05c52e

loc_05c2a4:
	bsr.w loc_05c414
	jsr loc_02269c
	bsr.w loc_05c492
	bsr.w loc_05c3d6
	tst.b ($273,a4)
	beq.b loc_05c2d2
	sf ($273,a4)
	move.w #$10,d5
	move.b ($249,a3),d0
	beq.b loc_05c2d2
	andi.b #4,d0
	beq.w loc_05c2e8

loc_05c2d2:
	bsr.w loc_05c51a
	btst #2,($2e1,a4)
	beq.b loc_05c2a4
	subq.w #1,($c2,a4)
	bpl.b loc_05c2a0
	bra.w loc_05c3a2

loc_05c2e8:
	sf ($273,a4)
	move.w #4,d5
	movea.l #loc_05f440,a0
	jsr loc_023384
	move.w #9,d7
	move.w #7,d3
	btst #2,($2e1,a4)
	beq.b loc_05c31c
	bra.b loc_05c318

loc_05c30e:
	tst.b d6
	bne.b loc_05c316
	subq.w #2,d3
	bra.b loc_05c318

loc_05c316:
	subq.w #1,d3

loc_05c318:
	bsr.w loc_05c52e

loc_05c31c:
	tst.w d3
	bpl.b loc_05c330
	move.w d3,d7
	movea.l #loc_05f44e,a0
	jsr loc_023384
	clr.w d3

loc_05c330:
	bsr.w loc_05c414
	jsr loc_02269c
	bsr.w loc_05c492
	bsr.w loc_05c3d6
	tst.b ($273,a4)
	beq.b loc_05c390
	sf ($273,a4)
	jsr RandomNumberGod
	andi.w #$3f,d0
	subi.w #$20,d0
	move.w d0,($290,a4)
	move.w #2,($292,a4)
	subq.w #1,d7
	ble.b loc_05c384
	move.w #4,d5
	cmpi.b #$20,($24e,a4)
	beq.b loc_05c37c
	move.b #$20,($24e,a4)
	bra.b loc_05c382

loc_05c37c:
	move.b #$21,($24e,a4)

loc_05c382:
	bra.b loc_05c390

loc_05c384:
	movea.l #loc_05f44e,a0
	jsr loc_023384

loc_05c390:
	bsr.w loc_05c51a
	btst #2,($2e1,a4)
	beq.b loc_05c31c
	tst.w d7
	bpl.w loc_05c30e

loc_05c3a2:
	movea.l #loc_05f416,a0
	clr.w d0
	jsr loc_0226f0
	move.b ($bf,a4),($208,a4)
	sf ($3f7,a4)
	clr.l ($216,a4)

loc_05c3be:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_05c3be
	movea.l ($1de,a4),a0
	movea.l (4,a0),a0
	jmp (a0)

;--------------------------
loc_05c3d6:
	tst.b (-$3dd,a5)
	bne.w loc_05c40c
	tst.b (1,a4)
	bpl.w loc_05c406
	tst.w ($c2,a4)
	bgt.w loc_05c406
	bmi.w loc_05c40c
	move.b ($3c5,a4),d0
	beq.w loc_05c40c
	andi.b #$cc,d0
	sne d6
	move.w #1,($c2,a4)

loc_05c406:
	tst.w ($c2,a4)
	rts

loc_05c40c:
	move.w #-1,($c2,a4)
	rts

;--------------------------
loc_05c414:
	btst #0,($2e1,a4)
	beq.b loc_05c422
	move.w ($2ea,a4),($c0,a4)

loc_05c422:
	move.b ($209,a4),d0
	cmp.b ($208,a4),d0
	beq.b loc_05c430
	not.b ($208,a4)

loc_05c430:
	move.b ($208,a4),d0
	cmp.b ($bf,a4),d0
	beq.b loc_05c450
	move.l d2,($216,a4)
	neg.l ($216,a4)
	move.w ($c0,a4),($2ea,a4)
	eori.w #1,($2ea,a4)
	bra.b loc_05c454

loc_05c450
	move.l d2,($216,a4)

loc_05c454:
	tst.w ($2c8,a4)
	beq.b loc_05c460
	clr.l ($216,a4)
	bra.b loc_05c490

loc_05c460:
	tst.b ($ba,a4)
	beq.b loc_05c47c
	subi.l #$2000,d2
	cmpi.l #$10000,d2
	bge.b loc_05c47a
	move.l #$10000,d2

loc_05c47a:
	bra.b loc_05c490

loc_05c47c:
	subi.l #$2000,d2
	cmpi.l #$8000,d2
	bge.b loc_05c490
	move.l #$8000,d2

loc_05c490:
	rts

;--------------------------
loc_05c492:
	tst.w ($2c8,a4)
	bne.w loc_05c4b6
	subq.w #1,($254,a4)
	cmpi.w #$40,($254,a4)
	bgt.b loc_05c4ac
	move.w #$40,($254,a4)

loc_05c4ac:
	subq.w #1,($256,a4)
	bgt.b loc_05c4b6
	clr.w ($256,a4)

loc_05c4b6:
	subq.w #1,($c4,a4)
	bmi.b loc_05c4ea
	cmpi.w #5,($c4,a4)
	beq.b loc_05c4e4
	cmpi.w #$b,($c4,a4)
	beq.b loc_05c4de
	cmpi.w #$11,($c4,a4)
	beq.b loc_05c4d8
	bra.w loc_05c518

loc_05c4d8:
	lea loc_05f46a(pc),a1
	bra.b loc_05c4f4

loc_05c4de:
	lea loc_05f470(pc),a1
	bra.b loc_05c4f4

loc_05c4e4:
	lea loc_05f476(pc),a1
	bra.b loc_05c4f4

loc_05c4ea:
	lea loc_05f47c(pc),a1
	move.w #$17,($c4,a4)

loc_05c4f4:
	movem.l d1-d2,-(a7)
	move.w #$1d,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_05c518
	move.l (a1)+,($66,a0)
	move.b (a1)+,($6a,a0)

loc_05c518:
	rts

;--------------------------
loc_05c51a:
	subq.w #1,d5
	bpl.b loc_05c52c
	move.w #$7fff,d5
	addq.w #1,($27a,a4)
	bclr #7,($24c,a4)

loc_05c52c:
	rts

;--------------------------
loc_05c52e:
	move.b d6,($ba,a4)
	tst.b ($ba,a4)
	bne.b loc_05c548
	movea.l #loc_05f23c,a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_05c556

loc_05c548:
	movea.l #loc_05f39c,a0
	clr.w d0
	jsr loc_0226f0

loc_05c556:
	rts

;--------------------------
loc_05c558:
	jsr loc_02c7ae
	st ($24a,a4)
	move.b ($209,a4),($208,a4)
	btst #1,($246,a4)
	beq.b loc_05c576
	move.l (-$45de,a5),($212,a4)

loc_05c576:
	move.l ($20e,a3),d0
	sub.l ($20e,a4),d0
	tst.b ($208,a4)
	bpl.b loc_05c586
	neg.l d0

loc_05c586:
	asr.l #8,d0
	divs.w #$18,d0
	ext.l d0
	asl.l #8,d0
	move.l d0,($216,a4)
	move.l ($22a,a4),d0
	asr.l #8,d0
	divu.w #$18,d0
	ext.l d0
	asl.l #8,d0
	addi.l #-$b8000,d0
	move.l d0,($21a,a4)
	sf ($273,a4)

loc_05c5b0:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_05c5ce
	sf ($b9,a4)
	move.w #$16,d2
	move.w #-$46,d3
	jsr loc_02c7be

loc_05c5ce:
	tst.b ($273,a4)
	bne.w loc_05c602
	btst #1,($246,a4)
	beq.b loc_05c5e8
	clr.l ($216,a4)
	clr.l ($21a,a4)
	bra.b loc_05c5f0

loc_05c5e8:
	addi.l #$10000,($21a,a4)

loc_05c5f0:
	btst #2,($2e1,a4)
	beq.b loc_05c5b0
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_05c602:
	tst.b ($249,a3)
	beq.w loc_05c614
	btst #2,($249,a3)
	beq.w loc_05c66e

loc_05c614:
	movea.l #loc_05e71c,a0
	clr.w d0
	jsr loc_0226f0
	move.l #-$18000,($216,a4)
	move.l #-$d9800,($21a,a4)

loc_05c632:
	jsr loc_02269c
	addi.l #$f000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_05c632
	movea.l #loc_05e75a,a0
	clr.w d0
	jsr loc_0226f0

loc_05c656:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_05c656
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_05c66e:
	move.w #4,($c6,a4)
	move.w #$16,($c8,a4)
	move.w #$40,($ca,a4)
	move.b ($208,a4), d0
	not.b d0
	move.b d0,($208,a3)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	movea.l #loc_05f542,a0
	clr.w d0
	jsr loc_0226f0
	lea loc_05c94c(pc),a0
	move.w ($14,a3),d0
	lsl.w #2,d0
	movea.l (a0,d0.w),a0
	move.w (a0),d2
	move.w (2,a0), d3
	tst.b ($208,a4)
	bpl.b loc_05c6bc
	neg.w d2

loc_05c6bc:
	move.w d2,d4
	move.w d3,d5
	swap d2
	swap d3
	clr.w d2
	clr.w d3
	add.l ($20e,a3),d2
	add.l ($212,a3),d3
	move.l d2,($20e,a4)
	move.l d3,($212,a4)
	movem.l d4-d5,-(a7)
	move.l #-$30000,d2
	move.l #-$70000,d3
	jsr loc_02a59c
	lea loc_05c88c(pc),a0
	jsr loc_02a554
	movem.l (a7)+,d4-d5
	neg.w d4
	move.w d5,($27e,a3)
	move.w d5,($280,a3)
	move.w d4,($282,a3)
	move.w d4,($284,a3)
	addi.w #$ffa8,($27e,a3)
	addi.w #$ffc8,($280,a3)
	addi.w #$ffd8,($282,a3)
	addi.w #0,($284,a3)
	jsr loc_02c8b8
	swap d0
	mulu.w ($ca,a4),d0
	move.w d0,($ca,a4)
	mulu.w ($c6,a4),d0
	move.w d0,($ce,a4)

loc_05c73e:
	bsr.w loc_05c81e
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_05c73e


loc_05c750:
	move.w ($ca,a4),($cc,a4)
	move.w ($c8,a4),d6
	subq.w #1,d6
	subq.w #1,($c6,a4)
	movea.l #loc_05f56c,a0
	clr.w d0
	jsr loc_0226f0
	lea loc_05c8cc(pc),a0
	jsr loc_02a554

loc_05c778:
	bsr.w loc_05c81e
	jsr loc_02269c
	bsr.w loc_05c864
	subq.w #1,d6
	bpl.b loc_05c778
	clr.w d6
	tst.b (-$3dd,a5)
	bne.w loc_05c7ac
	tst.w ($1f2,a3)
	bmi.w loc_05c7ac
	tst.w ($c6,a4)
	ble.w loc_05c7ac
	tst.w ($cc,a4)
	bgt.b loc_05c778
	bra.b loc_05c750

loc_05c7ac:
	movea.l #loc_05f5f0,a0
	clr.w d0
	jsr loc_0226f0
	lea loc_05c90c(pc),a0
	jsr loc_02a554

loc_05c7c4:
	tst.b ($24b,a4)
	beq.b loc_05c7d2
	jsr loc_02269c
	bra.b loc_05c7c4

loc_05c7d2:
	move.l #-$2c000,($216,a4)
	move.l #-$ac800,($21a,a4)

loc_05c7e2:
	jsr loc_02269c
	addi.l #$f000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_05c7e2
	movea.l #loc_05e75a,a0
	clr.w d0
	jsr loc_0226f0

loc_05c806:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_05c806
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_05c81e:
	lea loc_05c94c(pc),a0
	move.w ($14,a3),d0
	lsl.w #2,d0
	movea.l (a0,d0.w),a0
	move.w (2,a0),d3
	move.l ($212,a4),d0
	swap d0
	sub.w d3,d0
	swap d0
	sub.l (-$45de,a5),d0
	bge.w loc_05c85a
	addi.l #$f000,($21a,a4)
	move.l ($21a,a4),d1
	neg.l d1
	cmp.l d0,d1
	ble.w loc_05c85a
	bra.w loc_05c862

loc_05c85a:
	sub.l d0,($212,a4)
	clr.l ($21a,a4)

loc_05c862:
	rts

;--------------------------
loc_05c864:
	jsr loc_02c8b8
	sub.w d0,($cc,a4)
	exg a3,a4
	jsr loc_02c8b8
	exg a3,a4
	move.w d0,d1
	add.w d1,d1
	swap d0
	sub.w d0,d1
	sub.w d1,($ce,a4)
	bpl.b loc_05c88a
	clr.w ($c6,a4)

loc_05c88a:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05c88c:
	dc.l loc_05f67e,loc_05f74a,loc_05f7ce,loc_05f876
	dc.l loc_05f900,loc_05f990,loc_05fa0e,loc_05fa92
	dc.l loc_05fb16,loc_05fbd6,loc_05f67e,loc_05f67e
	dc.l loc_05f67e,loc_05f67e,loc_05f67e,loc_05f67e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05c8cc:
	dc.l loc_05f69c,loc_05f75c,loc_05f7e0,loc_05f888
	dc.l loc_05f912,loc_05f9a2,loc_05fa20,loc_05faa4
	dc.l loc_05fb34,loc_05fbf4,loc_05f69c,loc_05f69c
	dc.l loc_05f69c,loc_05f69c,loc_05f69c,loc_05f69c

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05c90c:
	dc.l loc_05f70a,loc_05f7a0,loc_05f842,loc_05f8d8
	dc.l loc_05f962,loc_05f9e6,loc_05fa64,loc_05fae8
	dc.l loc_05fb96,loc_05fc62,loc_05f70a,loc_05f70a
	dc.l loc_05f70a,loc_05f70a,loc_05f70a,loc_05f70a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05c94c:
	dc.l loc_05f67a,loc_05f746,loc_05f7ca,loc_05f872
	dc.l loc_05f8fc,loc_05f98c,loc_05fa0a,loc_05fa8e
	dc.l loc_05fb12,loc_05fbd2,loc_05f676,loc_05f676
	dc.l loc_05f676,loc_05f676,loc_05f676,loc_05f676

;--------------------------
loc_05c98c:
	jsr loc_02c7ae
	st ($24a,a4)
	move.b ($209,a4),($208,a4)
	move.l (-$45de,a5),($212,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)

loc_05c9aa:
	jsr loc_02269c
	tst.b ($b9,a4)
	beq.b loc_05c9aa
	sf ($b9,a4)
	move.w #$2c,d2
	move.w #-$18,d3
	jsr loc_02c7be
	sf ($273,a4)

loc_05c9cc:
	jsr loc_02269c
	tst.b ($b6,a4)
	beq.b loc_05c9cc
	move.w #$b3,d7

loc_05c9dc:
	jsr loc_02269c
	tst.b ($273,a4)
	beq.b loc_05c9f8
	move.b ($249,a3),d0
	beq.w loc_05c9f8
	andi.b #$84,d0
	beq.w loc_05ca2a

loc_05c9f8:
	tst.b (1,a4)
	bpl.b loc_05ca0c
	move.b ($2f0,a4),d0
	andi.b #$50,d0
	beq.w loc_05ca2a
	bra.b loc_05ca1a

loc_05ca0c:
	jsr RandomNumberGod
	cmpi.b #$1a,d0
	bcs.w loc_05ca2a

loc_05ca1a:
	tst.b (-$3dd,a5)
	bne.w loc_05cab2
	dbra d7,loc_05c9dc
	bra.w loc_05cab2

loc_05ca2a:
	sf ($273,a4)
	movea.l #loc_05fe68,a0
	clr.w d0
	jsr loc_0226f0

loc_05ca3c:
	jsr loc_02269c
	tst.b ($b7,a4)
	beq.b loc_05ca60
	sf ($b7,a4)
	tst.b ($273,a4)
	beq.w loc_05ca78
	tst.b ($249,a3)
	beq.w loc_05ca78
	sf ($273,a4)

loc_05ca60:
	btst #2,($2e1,a4)
	beq.b loc_05ca3c
	clr.l ($216,a4)
	move.l #-$50000,($21a,a4)
	bra.w loc_05ca84

loc_05ca78:
	clr.l ($216,a4)
	move.l #-$80000,($21a,a4)

loc_05ca84:
	movea.l #loc_06007a,a0
	clr.w d0
	jsr loc_0226f0

loc_05ca92:
	jsr loc_02269c
	addi.l #$8000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_05ca92
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

loc_05cab2:
	movea.l #loc_060088,a0
	clr.w d0
	jsr loc_0226f0

loc_05cac0:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_05cac0
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05cad8:
	dc.l $00030000,$fffda000,$00000000
	dc.l $00032000,$fffce000,$fff26800
	dc.l $0000f000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05caf4:
	dc.l loc_05cb00,loc_05cb0c,loc_05cb18

loc_05cb00:
	dc.w $8039,$fc00
	dc.w $803b,$d800,$f60a,$0000

loc_05cb0c:
	dc.w $8039,$fe02
	dc.w $803b,$e000,$f408,$0000

loc_05cb18:
	dc.w $8039,$fd01
	dc.w $803b,$d0ec,$f60a,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05cb24:
	dc.l loc_05856a,loc_05856a,loc_05888a,loc_058ca4
	dc.l loc_059276,loc_059476,loc_05968e,loc_059744

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05cb44:
	dc.l loc_05ce24,loc_05ceb8,loc_05cf2e,loc_05cf98
	dc.l loc_05cedc,loc_05ceee,loc_05cf0a,loc_05cef8
	dc.l loc_05cfd8,loc_05cfe6,loc_05d034,loc_05d06c
	dc.l loc_05d0a4,loc_05d014,loc_05d0b2,loc_05d0b2
	dc.l loc_05d0b2,loc_05d0c2,loc_05d0c2,loc_05d0c2
	dc.l loc_05d0cc,loc_05d0cc,loc_05d0cc,loc_05d0d6
	dc.l loc_05d0d6,loc_05d0d6,loc_05d0e0,loc_05d0e0
	dc.l loc_05d0e0,loc_05d0ea,loc_05d0ea,loc_05d0ea
	dc.l loc_05d0f4,loc_05d104,loc_05d314,loc_05d1b8
	dc.l loc_05d3a0

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05cbd8:
	dc.l loc_028468,loc_028562,loc_02848c,loc_028572
	dc.l loc_02861e,loc_0286fc,loc_0287a6,loc_0287e0
	dc.l loc_02881a,loc_028a02,loc_028958,loc_028a30
	dc.l loc_028ae2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05cc0c:
	dc.l loc_05d3d4,loc_05d3d4,loc_05d3d4,loc_05d3de
	dc.l loc_05d3de,loc_05d3de,loc_05d3e8,loc_05d3e8
	dc.l loc_05d400,loc_05d400,loc_05d418,loc_05d418
	dc.l loc_05d446,loc_05d446,loc_05d46c,loc_05d46c
	dc.l loc_05d48a,loc_05d48a,loc_05d4a8,loc_05d4a8
	dc.l loc_05d4dc,loc_05d4dc,loc_05d502,loc_05d502
	dc.l loc_05d51a,loc_05d51a,loc_05d532,loc_05d532
	dc.l loc_05d55a,loc_05d55a,loc_05d57a,loc_05d5ec
	dc.l loc_05d57a,loc_05d5ec,loc_05d65e,loc_05d692
	dc.l loc_05d6a4,loc_05d6ec,loc_05d6a4,loc_05d6ec
	dc.l loc_05d6a4,loc_05d734,loc_05d734,loc_05d746
	dc.l loc_05d750,loc_05d78a,loc_05d7b0,loc_05d8b8
	dc.l loc_05d7b8,loc_05d8c6,loc_05d8c6,loc_05d8c6
	dc.l loc_05d960,loc_05d960,loc_05d9f2,loc_05dace
	dc.l loc_05db1a,loc_05db1a,loc_05db44,loc_05db44
	dc.l loc_05db8a,loc_05db8a,loc_05dbec

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05cd08:;attacks
	dc.l  $00000000,loc_05dcb0,loc_05dc14,loc_05dd14
	dc.l loc_05dd9e,loc_05de1e,loc_05deb6,loc_05df12
	dc.l loc_05dfb6,loc_05e046,loc_05e0c2,loc_05e180
	dc.l loc_05e24a,loc_05e2fa,loc_05e35a,loc_05e3ca
	dc.l loc_05e436,loc_05e49c,loc_05e50a,loc_05e5c4
	dc.l loc_05e648,loc_05e6b8,loc_060170,loc_0607fc
	dc.l loc_0608b0,loc_05e772,loc_05e8ec,loc_05eac4
	dc.l loc_05ebfe,loc_05ee2e,loc_05ef60,loc_05f156
	dc.l loc_05f2b6,loc_05f482,loc_05fc9e,loc_060960

;--------------------------
loc_05cd98:
	dc.w $801a,$001a,$0013
	dc.w $8007,$ff94,$0000
	dc.w $0001,$0700,$0000,$8000
	dc.w $804a,$0006,$0000,$fff8,$0800
	dc.w $0004,$07fc,$0000,$8000
	dc.w $0003,$07fd,$0000,$8000
	dc.w $0003,$07fe,$0000,$8000
	dc.w $0003,$07ff,$0000,$8000
	dc.w $0005,$0800,$0000,$8000
	dc.w $0004,$0700,$0000,$8000
	dc.w $000c,$0701,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0004,$0892,$0000,$8000
	dc.w $0004,$0842,$0000,$8000
	dc.w $0016,$0841,$0000,$8000
	dc.w $0008,$0842,$0000,$80ff,$0000,$0000,$0001
	dc.w $0004,$0700,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05ce24:
	dc.w $0005,$081a,$0001,$80ff,$0000,$0002,$0000
	dc.w $0005,$081b,$0001,$80ff,$0000,$0002,$0000
	dc.w $0005,$081c,$0001,$80ff,$0000,$0002,$0000
	dc.w $0005,$081d,$0001,$80ff,$0000,$0002,$0000
	dc.w $0005,$081e,$0001,$80ff,$0000,$0002,$0000
	dc.w $0005,$081f,$0001,$80ff,$0000,$0002,$0000
	dc.w $0004,$0820,$0001,$80ff,$0000,$0002,$0000
	dc.w $0004,$0821,$0001,$80ff,$0000,$0002,$0000
	dc.w $0004,$0822,$0001,$80ff,$0000,$0002,$0000
	dc.w $0004,$0823,$0001,$80ff,$0000,$0002,$0000
	dc.w $8000,$0000
	dc.l loc_05ce24

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05ceb8:
	dc.w $0003,$072a,$0002,$80ff,$0002,$0000,$0001
	dc.w $0003,$072a,$0002,$80ff,$fffe,$0000,$0000
	dc.w $8000,$0000
	dc.l loc_05ce24

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05cedc:
	dc.w $0002,$081f,$0003,$8000
	dc.w $0002,$0700,$0004,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05ceee:
	dc.w $0002,$0701,$0005,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05cef8:
	dc.w $0002,$0700,$0004,$8000
	dc.w $0002,$081f,$0003,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05cf0a:
	dc.w $0003,$0729,$0006,$80ff,$0002,$0000,$0001
	dc.w $0003,$0729,$0006,$80ff,$fffe,$0000,$0000
	dc.w $8000,$0000
	dc.l loc_05ceee

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05cf2e:
	dc.w $0005,$0832,$0007,$80ff,$fffc,$0002,$0000
	dc.w $0005,$0833,$0007,$80ff,$fffc,$0002,$0000
	dc.w $0005,$0834,$0007,$80ff,$fffc,$0002,$0000
	dc.w $0005,$0835,$0007,$80ff,$fffc,$0002,$0000
	dc.w $0005,$0836,$0007,$80ff,$fffc,$0002,$0000
	dc.w $0005,$0837,$0007,$80ff,$fffc,$0002,$0000
	dc.w $0005,$0838,$0007,$80ff,$fffc,$0002,$0000
	dc.w $8000,$0000
	dc.l loc_05cf2e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05cf98:
	dc.w $0006,$0839,$0008,$8000
	dc.w $0006,$083a,$0008,$8000
	dc.w $0006,$083b,$0008,$8000
	dc.w $0006,$083c,$0008,$8000
	dc.w $0006,$083d,$0008,$8000
	dc.w $0006,$083e,$0008,$8000
	dc.w $0006,$083f,$0008,$8000
	dc.w $8000,$0000
	dc.l loc_05cf98

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05cfd8:
	dc.w $8003,$186f
	dc.w $0002,$0700,$0004,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05cfe6:
	dc.w $0004,$07eb,$0009,$7c00
	dc.w $0005,$07ec,$000a,$7c00
	dc.w $000c,$07ed,$000b,$7c00
	dc.w $0005,$07ee,$000c,$7c00
	dc.w $0004,$070d,$000d,$7cff,$fffc,$0000,$0000

;==========================
loc_05d014:
	dc.w $0006,$07ed,$000b,$7c00
	dc.w $0005,$07ee,$000c,$7c00
	dc.w $0004,$070d,$000d,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d034:
	dc.w $0006,$07fc,$000e,$7c00
	dc.w $0004,$07fd,$000f,$7c00
	dc.w $0004,$07fe,$000f,$7c00
	dc.w $0004,$07ff,$000f,$7c00
	dc.w $0006,$0800,$0010,$7c00
	dc.w $0006,$070d,$000d,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d06c:
	dc.w $0006,$0800,$0011,$7c00
	dc.w $0004,$0801,$0012,$7c00
	dc.w $0004,$0802,$0012,$7c00
	dc.w $0004,$0803,$0012,$7c00
	dc.w $0006,$0804,$0013,$7c00
	dc.w $0006,$070d,$000d,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d0a4:
	dc.w $8003,$1870
	dc.w $0003,$070c,$0014,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d0b2:
	dc.w $0004,$07be,$0015,$8400
	dc.w $8000,$0000
	dc.l loc_05d0c2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d0c2:
	dc.w $0004,$07bf,$0015,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d0cc:
	dc.w $0004,$07be,$0015,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d0d6:
	dc.w $0004,$07c0,$0016,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d0e0:
	dc.w $0004,$07c1,$0016,$8400
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d0ea:
	dc.w $0004,$07c0,$0016,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d0f4:
	dc.w $000a,$081a,$0001,$80ff,$0000,$0002,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d104:
	dc.w $8018
	dc.l loc_05d19c
	dc.l loc_05d1b8

	dc.w $0008,$076d,$0000,$8000
	dc.w $0008,$0771,$0000,$8000
	dc.w $8002,$18c8
	dc.w $0008,$076e,$0000,$8000
	dc.w $0008,$076f,$0000,$8000
	dc.w $0008,$0772,$0000,$8000
	dc.w $8002,$18c8
	dc.w $0008,$0770,$0000,$8000
	dc.w $0008,$076d,$0000,$8000
	dc.w $0008,$0771,$0000,$8000
	dc.w $8002,$18c8
	dc.w $0008,$076e,$0000,$8000
	dc.w $0008,$076f,$0000,$8000
	dc.w $0008,$0772,$0000,$8000
	dc.w $8002,$18c8
	dc.w $0008,$0770,$0000,$8000
	dc.w $0010,$0771,$0000,$8000
	dc.w $0006,$0772,$0000,$8000
	dc.w $802b,$1c7b
	dc.w $000a,$0773,$0000,$8000
	dc.w $8001

;--------------------------
loc_05d19c:
	tst.b ($1,a4)
	bmi.w loc_05d1b4
	move.w ($14,a4),d0
	cmp.w ($14,a3),d0
	bne.w loc_05d1b4
	moveq #0,d0
	rts

loc_05d1b4:
	moveq #-1,d0
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d1b8:
	dc.w $8017,$0004
	dc.l loc_05d264

	dc.w $0008,$076d,$0000,$8000
	dc.w $0008,$0771,$0000,$8000
	dc.w $8002,$18c8
	dc.w $0008,$076e,$0000,$8000
	dc.w $0008,$076f,$0000,$8000
	dc.w $0008,$0772,$0000,$8000
	dc.w $8002,$18c8
	dc.w $0008,$0770,$0000,$8000
	dc.w $0008,$076d,$0000,$8000
	dc.w $0008,$0771,$0000,$8000
	dc.w $8002,$18c8
	dc.w $0008,$076e,$0000,$8000
	dc.w $0008,$076f,$0000,$8000
	dc.w $0008,$0772,$0000,$8000
	dc.w $8002,$18c8
	dc.w $0008,$0770,$0000,$8000
	dc.w $0010,$0771,$0000,$8000
	dc.w $0006,$0772,$0000,$8000
	dc.w $8017,$0040
	dc.l loc_05d256

	dc.w $802a,$0023
	dc.w $000a,$0773,$0000,$8000
	dc.w $8001

loc_05d256:
	dc.w $802a,$0024
	dc.w $000a,$0773,$0000,$8000
	dc.w $8001

loc_05d264:
	dc.w $0004,$06f5,$0000,$8000
	dc.w $804a,$fffd,$0000,$fff4,$c000
	dc.w $0003,$06fb,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0004,$06fc,$0000,$8000
	dc.w $0005,$06fd,$0000,$8000
	dc.w $0006,$06fe,$0000,$8000
	dc.w $0007,$06ff,$0000,$8000
	dc.w $001e,$0701,$0000,$8000
	dc.w $0004,$0843,$0000,$78ff,$0000,$0000,$0c00
	dc.w $0004,$0844,$0000,$78ff,$0000,$0000,$0c00
	dc.w $8002,$18b9
	dc.w $0008,$0845,$0000,$78ff,$0000,$0000,$0e00
	dc.w $0008,$0846,$0000,$78ff,$0000,$0000,$0e00
	dc.w $0008,$0847,$0000,$78ff,$0000,$0000,$0e00
	dc.w $0008,$0848,$0000,$78ff,$0000,$0000,$0e00
	dc.w $0008,$0849,$0000,$78ff,$0000,$0000,$0e00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d314:
	dc.w $0004,$06f5,$0000,$8000
	dc.w $804a,$fffd,$0000,$fff4,$c000
	dc.w $0003,$06fb,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0004,$06fc,$0000,$8000
	dc.w $0005,$06fd,$0000,$8000
	dc.w $0006,$06fe,$0000,$8000
	dc.w $0007,$06ff,$0000,$8000
	dc.w $001e,$0701,$0000,$8000
	dc.w $0004,$081f,$0000,$8000
	dc.w $0004,$0772,$0000,$8000
	dc.w $8017,$0060
	dc.l loc_05d38a

	dc.w $802b,$1c71
	dc.w $000c,$0841,$0000,$8000
	dc.w $0022,$0842,$0000,$8000
	dc.w $8001

loc_05d38a:
	dc.w $8002,$18b9
	dc.w $000c,$0841,$0000,$8000
	dc.w $0022,$0842,$0000,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d3a0:
	dc.w $000f,$084e,$0000,$8400
	dc.w $0004,$084f,$0000,$84ff,$0000,$0000,$0001
	dc.w $0004,$0850,$0000,$84ff,$0000,$0000,$0001
	dc.w $000f,$0851,$0000,$84ff,$0000,$0000,$0001
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d3d4:
	dc.w $0008,$072b,$0015,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d3de:
	dc.w $0008,$072c,$0016,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d3e8:
	dc.w $802d,$fff0,$ff9c
	dc.w $0006,$07b6,$0017,$8400
	dc.w $0006,$07b5,$0018,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d400:
	dc.w $802d,$fff0,$ff9c
	dc.w $000c,$07b6,$0017,$8400
	dc.w $0006,$07b5,$0018,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d418:
	dc.w $802d,$ffe4,$ff9c
	dc.w $0002,$07b6,$0017,$8400
	dc.w $000a,$07b7,$0017,$84ff,$fffc,$0000,$0000
	dc.w $0006,$07b6,$0017,$8400
	dc.w $0006,$07b5,$0018,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d446:
	dc.w $802d,$ffd8,$ff9c
	dc.w $0012,$07b7,$0017,$84ff,$fffc,$0000,$0000
	dc.w $0006,$07b6,$0017,$8400
	dc.w $0006,$07b5,$0018,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d46c:
	dc.w $802e,$0008,$ffb4
	dc.w $0006,$0731,$0019,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0730,$001a,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d48a:
	dc.w $802e,$0008,$ffb4
	dc.w $000c,$0731,$0019,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0730,$001a,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d4a8:
	dc.w $802e,$0004,$ffb6
	dc.w $0002,$0731,$0019,$84ff,$fff8,$0000,$0000
	dc.w $000a,$07ba,$0019,$8400
	dc.w $0006,$0731,$0019,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0730,$001a,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d4dc:
	dc.w $802e,$fffc,$ffb6
	dc.w $0012,$07ba,$0019,$8400
	dc.w $0006,$0731,$0019,$84ff,$fff8,$0000,$0000
	dc.w $0006,$0730,$001a,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d502:
	dc.w $802f,$fffa,$ffc2
	dc.w $0006,$07bc,$001b,$8400
	dc.w $0006,$07bb,$001c,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d51a:
	dc.w $802f,$fffa,$ffc2
	dc.w $000c,$07bc,$001b,$8400
	dc.w $0006,$07bb,$001c,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d532:
	dc.w $802f,$fff4,$ffc0
	dc.w $0002,$07bc,$001b,$8400
	dc.w $000a,$07bd,$001b,$8400
	dc.w $0006,$07bc,$001b,$8400
	dc.w $0006,$07bb,$001c,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d55a:
	dc.w $802f,$ffde,$ffbc
	dc.w $0012,$07bd,$001b,$8400
	dc.w $0006,$07bc,$001b,$8400
	dc.w $0006,$07bb,$001c,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d57a:
	dc.w $802e,$000a,$ffac
	dc.w $0006,$0731,$001d,$84ff,$fff8,$0008,$0000
	dc.w $0003,$0810,$001d,$84ff,$0000,$0008,$0000
	dc.w $0003,$082b,$001d,$84ff,$fff0,$0000,$0000
	dc.w $0002,$0817,$001e,$84ff,$0000,$fff8,$0000
	dc.w $0002,$0818,$001e,$84ff,$0000,$fff8,$0000
	dc.w $0002,$0819,$001e,$8400
	dc.w $0003,$07ee,$001e,$84ff,$0000,$fff8,$0000
	dc.w $0003,$070d,$001e,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d5ec:
	dc.w $802d,$fff0,$ff90
	dc.w $0006,$07b6,$001d,$84ff,$fff8,$0008,$0000
	dc.w $0003,$0810,$001d,$84ff,$0000,$0008,$0000
	dc.w $0003,$082b,$001d,$84ff,$fff0,$0000,$0000
	dc.w $0002,$0817,$001e,$84ff,$0000,$fff8,$0000
	dc.w $0002,$0818,$001e,$84ff,$0000,$fff8,$0000
	dc.w $0002,$0819,$001e,$8400
	dc.w $0003,$07ee,$001e,$84ff,$0000,$fff8,$0000
	dc.w $0003,$070d,$001e,$84ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d65e:
	dc.w $802e,$000a,$ffae
	dc.w $0004,$07ba,$001d,$84ff,$fff0,$0008,$0000
	dc.w $0004,$0810,$001d,$8400
	dc.w $0006,$082b,$001f,$84ff,$fff0,$fff0,$0000
	dc.w $0006,$0812,$001f,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d692:
	dc.w $0003,$0813,$0020,$7c00
	dc.w $0009,$0815,$0020,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d6a4:
	dc.w $8030,$fff0,$ffb0
	dc.w $0004,$07ba,$001d,$7cff,$fff8,$0008,$0000
	dc.w $0004,$0731,$001d,$7cff,$fff8,$0000,$0000
	dc.w $0006,$0810,$001d,$7c00
	dc.w $0006,$0811,$001f,$7cff,$fff8,$fff0,$0000
	dc.w $0006,$0812,$001f,$7cff,$0000,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d6ec:
	dc.w $8030,$fff0,$ffb0
	dc.w $0004,$07b7,$001d,$7cff,$fff0,$0008,$0000
	dc.w $0004,$07b6,$001d,$7cff,$fff8,$0000,$0000
	dc.w $0006,$0810,$001d,$7c00
	dc.w $0006,$0811,$001f,$7cff,$fff8,$fff0,$0000
	dc.w $0006,$0812,$001f,$7cff,$0000,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d734:
	dc.w $0004,$0813,$0020,$7c00
	dc.w $0010,$0814,$0020,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d746:
	dc.w $0010,$0815,$0020,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d750:
	dc.w $8030,$0000,$ff98
	dc.w $0013,$0870,$001d,$7cff,$0000,$0070,$0003
	dc.w $0006,$0810,$001d,$7c00
	dc.w $0006,$0811,$001f,$7cff,$fff8,$fff0,$0000
	dc.w $0006,$0812,$001f,$7cff,$0000,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d78a:
	dc.w $8030,$fff8,$ffc8
	dc.w $0002,$0810,$001d,$7c00
	dc.w $0002,$082b,$001f,$7cff,$fff0,$fff0,$0000
	dc.w $0002,$0812,$001f,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d7b0:
	dc.w $8000,$0000
	dc.l loc_05d57a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d7b8:
	dc.w $8037
	dc.l loc_05bf28

	dc.w $8002,$188d
	dc.w $8024
	dc.w $8043,$0020
	dc.w $8044,$0028
	dc.w $804e,$fff9,$0000,$0000,$8000
	dc.w $0002,$06ff,$0000,$7cff,$0000,$0060,$0003
	dc.w $0002,$0802,$0000,$7cff,$0000,$ffe0,$0000
	dc.w $0002,$0803,$0000,$7cff,$0000,$ffe0,$0000
	dc.w $0002,$0802,$0000,$7cff,$0000,$0068,$0003

	dc.w $804c
	dc.l $fffd0000,$fff82000,$00002000,$0000c000

	dc.w $0002,$0801,$0000,$7cff,$0000,$ffe0,$0000
	dc.w $0002,$0802,$0000,$7cff,$0000,$ffe0,$0000
	dc.w $0002,$0803,$0000,$7cff,$0000,$ffe0,$0000
	dc.w $0002,$0802,$0000,$7cff,$0000,$0068,$0003
	dc.w $0002,$0801,$0000,$7cff,$0000,$ffe0,$0000
	dc.w $0002,$0802,$0000,$7cff,$0000,$ffe0,$0000
	dc.w $0003,$0803,$0000,$7cff,$0000,$ffe0,$0000
	dc.w $0003,$0802,$0000,$7cff,$0000,$0068,$0003
	dc.w $0004,$07ed,$0000,$7cff,$0000,$ffd8,$0000
	dc.w $803a,$df00
	dc.w $0001,$070c,$0000,$7c00
	dc.w $803a,$0000
	dc.w $0001,$070c,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d8b8:
	dc.w $8003,$1870
	dc.w $0003,$070c,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d8c6:
	dc.w $0002,$0816,$0000,$7c00
	dc.w $0002,$0814,$0000,$7c00
	dc.w $0002,$0817,$0000,$7cff,$0000,$fff8,$0000
	dc.w $0002,$0817,$0000,$7cff,$0000,$0002,$0000
	dc.w $0002,$0818,$0000,$7cff,$0000,$0004,$0000
	dc.w $0002,$0818,$0000,$7cff,$0000,$0008,$0000
	dc.w $0002,$0819,$0000,$7cff,$0000,$0008,$0000
	dc.w $0002,$0819,$0000,$7cff,$0000,$0004,$0000
	dc.w $0002,$07ec,$0000,$7cff,$0000,$fff8,$0000
	dc.w $0002,$07ec,$0000,$7cff,$0000,$fff0,$0000
	dc.w $803a,$df00
	dc.w $0002,$0700,$0000,$7c00
	dc.w $803a,$0000
	dc.w $0002,$0700,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d960:
	dc.w $0002,$0816,$0000,$7c00
	dc.w $0002,$0814,$0000,$7c00
	dc.w $0002,$0817,$0000,$7cff,$0000,$fff8,$0000
	dc.w $0002,$0817,$0000,$7cff,$0000,$0002,$0000
	dc.w $0002,$0818,$0000,$7cff,$0000,$0004,$0000
	dc.w $0002,$0818,$0000,$7cff,$0000,$0008,$0000
	dc.w $0002,$0819,$0000,$7cff,$0000,$0008,$0000
	dc.w $0002,$0819,$0000,$7cff,$0000,$0004,$0000
	dc.w $0002,$07ec,$0000,$7cff,$0000,$fff8,$0000
	dc.w $0002,$07ec,$0000,$7cff,$0000,$fff0,$0000
	dc.w $0002,$0700,$0000,$7c00
	dc.w $0002,$0700,$0000,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05d9f2:
	dc.w $0007,$0850,$0022,$7cff,$0000,$0000,$0001
	dc.w $0005,$084f,$0021,$7cff,$0000,$0000,$0001
	dc.w $0003,$084e,$0021,$7cff,$0001,$0000,$0000
	dc.w $0003,$084e,$0021,$7cff,$ffff,$0000,$0000
	dc.w $0003,$084e,$0021,$7cff,$0001,$0000,$0000
	dc.w $0003,$084e,$0021,$7cff,$ffff,$0000,$0000
	dc.w $0003,$084e,$0021,$7cff,$0001,$0000,$0000
	dc.w $0003,$084e,$0021,$7cff,$ffff,$0000,$0000
	dc.w $0007,$084f,$0021,$7c00
	dc.w $0005,$0850,$0022,$7c00
	dc.w $0003,$0851,$0022,$7cff,$0001,$0000,$0000
	dc.w $0003,$0851,$0022,$7cff,$ffff,$0000,$0000
	dc.w $0003,$0851,$0022,$7cff,$0001,$0000,$0000
	dc.w $0003,$0851,$0022,$7cff,$ffff,$0000,$0000
	dc.w $0003,$0851,$0022,$7cff,$0001,$0000,$0000
	dc.w $0003,$0851,$0022,$7cff,$ffff,$0000,$0000
	dc.w $8000,$0000
	dc.l loc_05d9f2

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05dace:
	dc.w $0002,$0700,$0000,$7800
	dc.w $804a,$0000,$0000,$fff8,$f800
	dc.w $0004,$0801,$0000,$7800
	dc.w $0004,$0802,$0000,$7800
	dc.w $0004,$0803,$0000,$7800
	dc.w $0004,$0819,$0000,$7800
	dc.w $803a,$df00
	dc.w $0003,$0700,$0000,$7800
	dc.w $803a,$0000
	dc.w $0003,$081f,$0000,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05db1a:
	dc.w $8030,$fff0,$ffb8

loc_05db20:
	dc.w $0003,$07c2,$001d,$7cff,$0000,$0000,$0500
	dc.w $0001,$07c3,$001d,$7cff,$0000,$0000,$0500
	dc.w $8000,$0000
	dc.l loc_05db20

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05db44:
	dc.w $8030,$fff0,$ffb8

loc_05db4a:
	dc.w $0002,$08aa,$001d,$7cff,$0000,$0000,$0600
	dc.w $0002,$08aa,$001d,$7cff,$fffd,$0000,$0200
	dc.w $0002,$08aa,$001d,$7cff,$0000,$0000,$0400
	dc.w $0002,$08aa,$001d,$7cff,$0003,$0000,$0700
	dc.w $8000,$0000
	dc.l loc_05db4a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05db8a:
	dc.w $8030,$fff0,$ffc8

loc_05db90:
	dc.w $0002,$0810,$001d,$7cff,$0000,$0002,$0800
	dc.w $0002,$0810,$001d,$7cff,$0002,$ffff,$0900
	dc.w $0002,$0810,$001d,$7cff,$fffe,$0001,$0800
	dc.w $0002,$0810,$001d,$7cff,$0000,$fffe,$0900
	dc.w $0002,$0810,$001d,$7cff,$0002,$0001,$0800
	dc.w $0002,$0810,$001d,$7cff,$fffe,$ffff,$0900
	dc.w $8000,$0000
	dc.l loc_05db90

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05dbec:
	dc.w $0008,$07b5,$0022,$8400
	dc.w $0008,$0730,$0022,$8400
	dc.w $0008,$07b6,$0022,$8400
	dc.w $0008,$0731,$0022,$84ff,$fff0,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05dc14:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05dc48

	dc.w $803e,$085b,$0600
	dc.w $8048,$025c,$00f4
	dc.w $803f,$1004,$0c04,$1003
	dc.w $8040,$0a02,$0406,$08ff
	dc.w $8041,$0601,$0a24

	dc.w $8036
	dc.l loc_05cb00

loc_05dc48:
	dc.w $8004,$1898
	dc.w $802b,$1c73
	dc.w $0002,$088b,$0023,$7cff,$fffc,$0003,$0000
	dc.w $0002,$088c,$0024,$78ff,$fffc,$0002,$0000
	dc.w $8045,$0002

	dc.w $800d
	dc.l loc_05dc96
	dc.w $0001

	dc.w $0006,$088d,$0025,$78ff,$fffc,$0002,$0000
	dc.w $0008,$088e,$0026,$78ff,$fff8,$0002,$0000
	dc.w $8001

loc_05dc96:
	dc.w $0006,$086c,$74ff,$ffd4,$003c,$0a00
	dc.w $0004,$086d,$7cff,$ffcc,$0030,$0a00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05dcb0:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05dcde

	dc.w $803e,$0823,$0500
	dc.w $803f,$0e04,$0603,$0e03
	dc.w $8040,$0a02,$0308,$06ff
	dc.w $8041,$0401,$0c28

	dc.w $8036
	dc.l loc_05cb00

loc_05dcde:
	dc.w $8004,$187a
	dc.w $0003,$06e9,$0027,$7800
	dc.w $8045,$0001
	dc.w $0008,$06ea,$0028,$78ff,$0002,$0000,$0000
	dc.w $0003,$06ec,$0029,$78ff,$0002,$0000,$0000
	dc.w $0003,$06ed,$002a,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05dd14:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05dd48

	dc.w $803e,$085b,$0600
	dc.w $8048,$025c,$00f4
	dc.w $803f,$0c04,$0603,$0c03
	dc.w $8040,$0a02,$0406,$08ff
	dc.w $8041,$0101,$0c26

	dc.w $8036
	dc.l loc_05cb0c

loc_05dd48:
	dc.w $8004,$1898
	dc.w $0004,$07d6,$002b,$7cff,$0000,$0002,$0000
	dc.w $8045,$0001

	dc.w $800d
	dc.l loc_05dd84
	dc.w $0001

	dc.w $0006,$07d7,$002c,$78ff,$0000,$0002,$0000
	dc.w $0008,$07d8,$002d,$7cff,$0000,$0002,$0000
	dc.w $8001

loc_05dd84:
	dc.w $0006,$07d9,$74ff,$ffb0,$0000,$0a00
	dc.w $0004,$07da,$74ff,$ffb0,$0000,$0a00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05dd9e:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05ddcc

	dc.w $803e,$086b,$0600
	dc.w $803f,$1004,$0c04,$1003
	dc.w $8040,$0a04,$0606,$08ff
	dc.w $8041,$0201,$0023

	dc.w $8036
	dc.l loc_05cb00

loc_05ddcc
	dc.w $8004,$189f
	dc.w $0002,$06f7,$002e,$8400
	dc.w $0002,$06f8,$002f,$84ff,$0010,$0000,$0000
	dc.w $0002,$071f,$0030,$84ff,$0008,$0000,$0001
	dc.w $8045,$0002
	dc.w $0006,$06f6,$0031,$88ff,$0018,$0000,$0000
	dc.w $0004,$06f4,$0032,$78ff,$0008,$0000,$0000
	dc.w $0004,$06f3,$0033,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05de1e:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05de4c

	dc.w $803e,$084b,$0500
	dc.w $803f,$0e04,$0603,$0e03
	dc.w $8040,$0703,$0708,$0aff
	dc.w $8041,$0401,$0520

	dc.w $8036
	dc.l loc_05cb00

loc_05de4c:
	dc.w $8004,$1898
	dc.w $0003,$0785,$0034,$7c00
	dc.w $8007,$0010,$0000
	dc.w $801a,$0002,$000c
	dc.w $802b,$1c6d
	dc.w $0002,$06f3,$0035,$78ff,$fffc,$0000,$0000
	dc.w $0002,$06f4,$0036,$78ff,$fffc,$0000,$0000
	dc.w $8045,$0001
	dc.w $0008,$071a,$0037,$7800
	dc.w $8007,$fff0,$0000
	dc.w $0004,$0786,$0038,$7cff,$fff8,$0000,$0000
	dc.w $0003,$06f7,$002e,$7c00
	dc.w $0003,$0787,$0039,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05deb6:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05dee4

	dc.w $803e,$0a2b,$0600
	dc.w $803f,$0c04,$0603,$0c03
	dc.w $8040,$0a05,$0507,$0aff
	dc.w $8041,$0101,$0425

	dc.w $8036
	dc.l loc_05cb0c

loc_05dee4:
	dc.w $0002,$070c,$0014,$7c00
	dc.w $0003,$0740,$003a,$7800
	dc.w $8045,$0001
	dc.w $0007,$07e5,$003b,$7800
	dc.w $0005,$0740,$003a,$7800
	dc.w $0005,$070c,$0014,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05df12:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05df46

	dc.w $803e,$085d,$0500
	dc.w $8048,$025c,$00f5
	dc.w $803f,$1a0a,$1206,$1a06
	dc.w $8040,$0803,$0408,$11ff
	dc.w $8041,$0401,$0426

	dc.w $8036
	dc.l loc_05cb00

loc_05df46:
	dc.w $8004,$18a3
	dc.w $802b,$1c70
	dc.w $0004,$0892,$003c,$88ff,$fffc,$0000,$0000

	dc.w $800d
	dc.l loc_05df90
	dc.w $0001

	dc.w $8045,$0004
	dc.w $0003,$0893,$003d,$7800
	dc.w $0005,$0894,$003e,$7800
	dc.w $0007,$0895,$003f,$7c00
	dc.w $0007,$06ed,$002a,$7cff,$0002,$0000,$0000
	dc.w $8001

loc_05df90:
	dc.w $0003,$088f,$74ff,$ffd0,$0050,$0a00
	dc.w $0005,$0890,$74ff,$fff0,$0050,$0a00
	dc.w $0004,$0891,$7cff,$fff0,$0060,$0a00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05dfb6:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05dfe4

	dc.w $803e,$0825,$0100
	dc.w $803f,$180a,$1006,$1806
	dc.w $8040,$0502,$0505,$11ff
	dc.w $8041,$0401,$1232

	dc.w $8036
	dc.l loc_05cb00

loc_05dfe4:
	dc.w $8004,$18a1
	dc.w $0002,$06ed,$002a,$7c00
	dc.w $803b,$d800,$fa12
	dc.w $0003,$0785,$0034,$7800
	dc.w $8045,$0004
	dc.w $0005,$06ee,$0040,$78ff,$fffc,$0000,$0000
	dc.w $0006,$0725,$0041,$78ff,$fffc,$0000,$0000
	dc.w $8007,$0004,$0000
	dc.w $0006,$0785,$0034,$7800
	dc.w $8007,$000c,$0000
	dc.w $803c,$0000
	dc.w $0005,$06ed,$002a,$7cff,$0002,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e046:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05e074

	dc.w $803e,$0825,$0200
	dc.w $803f,$180a,$0806,$1806
	dc.w $8040,$0603,$0608,$10ff
	dc.w $8041,$0201,$1231

	dc.w $8036
	dc.l loc_05cb0c

loc_05e074:
	dc.w $8004,$18a1
	dc.w $802b,$1c77
	dc.w $0003,$07d3,$0042,$7800
	dc.w $0001,$07f2,$0043,$7800
	dc.w $803b,$e000,$fc10
	dc.w $0002,$07d4,$0044,$7800
	dc.w $8045,$0004
	dc.w $0008,$07d5,$0045,$7800
	dc.w $0008,$07d4,$0044,$7800
	dc.w $8007,$0008,$0000
	dc.w $803c,$0004
	dc.w $0008,$07f3,$0046,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e0c2:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05e0f0

	dc.w $803e,$084d,$0600
	dc.w $803f,$200a,$1208,$2008
	dc.w $8040,$0203,$0808,$0eff
	dc.w $8041,$0601,$e823

	dc.w $8036
	dc.l loc_05cb00

loc_05e0f0:
	dc.w $0002,$0700,$0004,$7c00
	dc.w $8045,$0004
	dc.w $8011,$001d,$0005,$e800,$e8e8,$ff00
	dc.w $804a,$0000,$0000,$fff9,$e800
	dc.w $8004,$18a3
	dc.w $802b,$1c75
	dc.w $803c,$0008
	dc.w $0002,$06ff,$0047,$7800
	dc.w $0002,$0715,$0048,$78ff,$0000,$0080,$0003
	dc.w $0002,$071d,$0049,$78ff,$0000,$0008,$0000
	dc.w $0004,$071c,$004a,$78ff,$0000,$0008,$0000
	dc.w $0004,$07e4,$004b,$7800
	dc.w $803c,$0004
	dc.w $8011,$001d,$0005,$1000,$18e8,$ff00
	dc.w $0008,$07f2,$0043,$7c00
	dc.w $8048,$02c0,$0006
	dc.w $0006,$070c,$0014,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e180:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05e1ae

	dc.w $803e,$084d,$0200
	dc.w $803f,$180a,$0c06,$1806
	dc.w $8040,$0604,$0609,$13ff
	dc.w $8041,$0601,$e62e

	dc.w $8036
	dc.l loc_05cb00

loc_05e1ae:
	dc.w $8004,$18a3
	dc.w $0003,$06f3,$0033,$7800
	dc.w $8007,$0008,$0000
	dc.w $0003,$06f5,$004c,$7800
	dc.w $8045,$0004
	dc.w $8007,$0008,$0000
	dc.w $0003,$06fb,$004d,$7800
	dc.w $804a,$0001,$0000,$fffd,$a800
	dc.w $803e,$084d,$05ff
	dc.w $8011,$001d,$0005,$1000,$18f0,$ff00
	dc.w $0003,$071a,$004e,$7800
	dc.w $0003,$06fc,$004f,$7800
	dc.w $8011,$001d,$0005,$0000,$00f4,$ff00
	dc.w $0004,$06fd,$0050,$7800
	dc.w $804a,$0000,$0000,$fffb,$c800
	dc.w $0005,$06fe,$0051,$7800
	dc.w $0005,$06ff,$0047,$7800
	dc.w $8011,$001d,$0005,$e800,$f0f4,$ff00
	dc.w $0005,$0700,$0004,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e24a:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05e278

	dc.w $803e,$082d,$0c00
	dc.w $803f,$1c0a,$0e07,$1c06
	dc.w $8040,$0202,$1004,$10ff
	dc.w $8041,$0201,$0927

	dc.w $8036
	dc.l loc_05cb00

loc_05e278:
	dc.w $0002,$06f4,$0036,$7800
	dc.w $8011,$001c,$0004,$f000,$d000

	dc.w $804c
	dc.l $0005c000,$fffe6000,$ffffc800,$00004000

	dc.w $8045,$0004
	dc.w $8004,$18a1
	dc.w $0003,$07fc,$000e,$7800
	dc.w $0003,$07ec,$000a,$7800
	dc.w $802b,$1c74
	dc.w $0003,$07ed,$000b,$7800
	dc.w $0005,$0719,$0052,$7800
	dc.w $8011,$001d,$0005,$f800,$f0f4,$ff00
	dc.w $0004,$07e3,$0053,$7800
	dc.w $8007,$0010,$0000
	dc.w $000c,$06f7,$002e,$7800
	dc.w $8048,$02c0,$0004
	dc.w $0004,$072a,$0002,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e2fa:
	dc.w $8037
	dc.l loc_028fca
	dc.w $8038
	dc.l loc_05e328

	dc.w $803e,$0a2d,$0b00
	dc.w $803f,$140a,$0805,$1408
	dc.w $8040,$0604,$0606,$12ff
	dc.w $8041,$0101,$0028

	dc.w $8036
	dc.l loc_05cb0c

loc_05e328:
	dc.w $8004,$18a1
	dc.w $0003,$07db,$0054,$7c00
	dc.w $0003,$07dc,$0055,$7800
	dc.w $8045,$0004
	dc.w $0006,$080e,$0056,$7800
	dc.w $000a,$07dc,$0055,$7800
	dc.w $0008,$07db,$0054,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e35a:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_05e38e

	dc.w $803e,$095a,$0200
	dc.w $8048,$025c,$00f4
	dc.w $803f,$1004,$0a04,$1002
	dc.w $8040,$0cff,$0408,$ffff
	dc.w $8041,$0201,$0726

	dc.w $8036
	dc.l loc_05cb18

loc_05e38e:
	dc.w $8004,$1898
	dc.w $802b,$1c6f
	dc.w $0004,$07ef,$0057,$7800
	dc.w $8045,$0002
	dc.w $0008,$07f0,$0058,$7800
	dc.w $0006,$07f1,$0059,$7800
	dc.w $0004,$07ee,$000c,$7c00
	dc.w $0004,$070d,$000d,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e3ca:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_05e3fe

	dc.w $803e,$093a,$0200
	dc.w $8048,$025c,$00f4
	dc.w $803f,$0e04,$0803,$0e02
	dc.w $8040,$0dff,$030a,$ffff
	dc.w $8041,$0101,$001f

	dc.w $8036
	dc.l loc_05cb18

loc_05e3fe:
	dc.w $8004,$187a
	dc.w $0003,$07f4,$005a,$8800
	dc.w $8045,$0002
	dc.w $000a,$07f5,$005b,$7800
	dc.w $0006,$07f4,$005a,$8800
	dc.w $0004,$07ee,$000c,$7c00
	dc.w $0004,$070d,$000d,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e436:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_05e464

	dc.w $803e,$092a,$0100
	dc.w $803f,$1004,$0804,$1002
	dc.w $8040,$0cff,$0408,$ffff
	dc.w $8041,$0101,$f424

	dc.w $8036
	dc.l loc_05cb18

loc_05e464:
	dc.w $8004,$187a
	dc.w $0002,$07e6,$005c,$7c00
	dc.w $0002,$07e7,$005d,$7c00
	dc.w $8045,$0002
	dc.w $0008,$07e8,$005e,$7800
	dc.w $0004,$07ee,$000c,$7c00
	dc.w $0004,$070d,$000d,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e49c:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_05e4ca

	dc.w $803e,$092a,$0200
	dc.w $803f,$0e04,$0603,$0e02
	dc.w $8040,$0dff,$0508,$ffff
	dc.w $8041,$0101,$f020

	dc.w $8036
	dc.l loc_05cb18

loc_05e4ca:
	dc.w $8004,$187a
	dc.w $0002,$07ed,$000b,$7c00
	dc.w $0003,$07e9,$005f,$7800
	dc.w $8045,$0002
	dc.w $0008,$07ea,$0060,$7800
	dc.w $0004,$07e9,$005f,$7800
	dc.w $0004,$07ee,$000c,$7c00
	dc.w $0004,$070d,$000d,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e50a:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_05e53e

	dc.w $803e,$095c,$0200
	dc.w $8048,$025c,$00f5
	dc.w $803f,$1608,$1005,$1604
	dc.w $8040,$08ff,$0305,$ffff
	dc.w $8041,$0701,$f622

	dc.w $8036
	dc.l loc_05cb18

loc_05e53e:
	dc.w $8004,$18a3
	dc.w $0003,$07de,$0061,$7800
	dc.w $802a,$001f

	dc.w $800d
	dc.l loc_05e592
	dc.w $0001

	dc.w $8045,$0004
	dc.w $0002,$07df,$0062,$7800
	dc.w $0003,$07e0,$0063,$7800
	dc.w $0005,$07e1,$0064,$8800
	dc.w $0004,$07e2,$0065,$7c00
	dc.w $0004,$07ee,$000c,$7c00
	dc.w $0004,$070d,$000d,$7cff,$fffc,$0000,$0000
	dc.w $8001

loc_05e592:
	dc.w $0002,$0824,$74ff,$fff0,$0048,$0a00
	dc.w $0003,$0825,$74ff,$fff0,$0048,$0a00
	dc.w $0003,$0826,$74ff,$ffe8,$0048,$0a00
	dc.w $0002,$0827,$74ff,$ffd8,$0048,$0a00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e5c4:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_05e5f2

	dc.w $803e,$0964,$0100
	dc.w $803f,$1408,$0c05,$1404
	dc.w $8040,$0aff,$0604,$ffff
	dc.w $8041,$0101,$0426

	dc.w $8036
	dc.l loc_05cb18

loc_05e5f2:
	dc.w $8004,$189e
	dc.w $0002,$07f6,$0066,$7c00
	dc.w $0002,$07f7,$0067,$7800
	dc.w $0002,$07f8,$0068,$7800
	dc.w $8045,$0004
	dc.w $0004,$07f9,$0069,$7800
	dc.w $0005,$07fa,$006a,$8800
	dc.w $0004,$07f3,$006b,$7cff,$0000,$0020,$0000
	dc.w $0004,$07ee,$000c,$7c00
	dc.w $0004,$070d,$000d,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e648:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_05e676

	dc.w $803e,$096c,$0500
	dc.w $803f,$1608,$1005,$1604
	dc.w $8040,$09ff,$0603,$ffff
	dc.w $8041,$0401,$042a

	dc.w $8036
	dc.l loc_05cb18

loc_05e676:
	dc.w $8004,$189e
	dc.w $802b,$1c74
	dc.w $0003,$071f,$006c,$8400
	dc.w $0003,$0720,$006d,$84ff,$0000,$fff8,$0000
	dc.w $8045,$0004
	dc.w $0003,$0721,$006e,$7800
	dc.w $0004,$07ee,$000c,$7c00
	dc.w $0004,$070d,$000d,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e6b8:
	dc.w $8037
	dc.l loc_029026
	dc.w $8038
	dc.l loc_05e6e6

	dc.w $803e,$092c,$0100
	dc.w $803f,$1408,$0a05,$1404
	dc.w $8040,$0aff,$0604,$ffff
	dc.w $8041,$0101,$fe26

	dc.w $8036
	dc.l loc_05cb18

loc_05e6e6:
	dc.w $8004,$18a1
	dc.w $0003,$0716,$006f,$7c00
	dc.w $802b,$1c6d
	dc.w $0003,$0719,$0070,$7800
	dc.w $8045,$0004
	dc.w $0004,$07fb,$0071,$7800
	dc.w $0004,$0719,$0070,$7800
	dc.w $0004,$0716,$006f,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e71c:
	dc.w $803d
	dc.w $8040,$0000,$0000,$ff00
	dc.w $803c,$0008
	dc.w $0004,$0801,$0012,$7c00
	dc.w $0004,$0802,$0012,$7c00
	dc.w $0004,$0803,$0012,$7c00
	dc.w $0006,$0804,$0013,$7c00
	dc.w $0006,$070d,$000d,$7cff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e75a:
	dc.w $803c,$0000
	dc.w $8003,$1870
	dc.w $8048,$0550,$0003
	dc.w $0003,$070c,$0014,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e772:
	dc.w $8037
	dc.l loc_05bf44
	dc.w $8038
	dc.l loc_05e7b8

	dc.w $8039,$0018
	dc.w $803e,$285d,$1000
	dc.w $8048,$025c,$00f6
	dc.w $803f,$180c,$0c09,$1808
	dc.w $8040,$0000,$1800,$ff00
	dc.w $8041,$0301,$1022
	dc.w $8048,$0550,$0004
	dc.w $8048,$00bc,$0000
	dc.w $803b,$d800,$f612,$0000

loc_05e7b8:
	dc.w $8047,$00b6,$0000
	dc.w $802c
	dc.w $8023
	dc.w $804e,$0001,$c000,$0002,$5555
	dc.w $8004,$1885
	dc.w $8032,$0064,$fff0,$0f00
	dc.w $0003,$080f,$0072,$88ff,$fff8,$fff8,$0000
	dc.w $8045,$000a,$8047,$00b6,$ffff
	dc.w $8019
	dc.w $8008,$0007,$0000,$0000,$0000
	dc.w $0003,$080f,$0072,$88ff,$fff8,$fff8,$0000

	dc.w $800b
	dc.l loc_05e8a0

	dc.w $0064,$082a,$0073,$8800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e81a:
	dc.w $804e
	dc.l $00070000,$ffff2000

	dc.w $8040,$0000,$0304,$1800
	dc.w $802a,$0021

	dc.w $800b
	dc.l loc_05e8ae

	dc.w $0001,$082a,$0073,$8800
	dc.w $0002,$084a,$0074,$88ff,$fff8,$fff8,$0000
	dc.w $8004,$18a3
	dc.w $0004,$07f1,$0075,$78ff,$0000,$fff8,$0000
	dc.w $0006,$07f1,$0076,$78ff,$0000,$fff8,$0000
	dc.w $803c,$0000
	dc.w $8011,$001d,$0005,$f800,$00f0,$ff00
	dc.w $0009,$0716,$0077,$7cff,$fff8,$fff0,$0000
	dc.w $8011,$001d,$0005,$1800,$20f0,$ff00
	dc.w $0009,$06ed,$002a,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e8a0:
	dc.w $0064,$0886,$78ff,$ffd0,$0070,$0d00
	dc.w $8001

loc_05e8ae:
	dc.w $0001,$0886,$78ff,$ffd0,$0070,$0d00
	dc.w $0002,$0887,$78ff,$ffb7,$0040,$0d00
	dc.w $0004,$0888,$74ff,$ffe0,$0040,$0d00
	dc.w $0004,$0889,$74ff,$fff0,$0030,$0d00
	dc.w $0004,$088a,$74ff,$fff0,$0030,$0d00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e8ec:
	dc.w $8037
	dc.l loc_05c000
	dc.w $8038
	dc.l loc_05e932

	dc.w $8039,$0018
	dc.w $803e,$287d,$2b00
	dc.w $8048,$025c,$00f6
	dc.w $803f,$240c,$080c,$2408
	dc.w $8040,$0000,$1400,$ff00
	dc.w $8041,$0601,$102c
	dc.w $8048,$0550,$0004
	dc.w $8048,$00bc,$0000
	dc.w $803b,$e000,$f612,$0000

loc_05e932:
	dc.w $8047,$00b6,$0000
	dc.w $802c
	dc.w $8023
	dc.w $804e,$0000,$e000,$0001,$c000
	dc.w $8004,$1885
	dc.w $802b,$1c71
	dc.w $8032,$0064,$0000,$0f00
	dc.w $0004,$0742,$0078,$78ff,$fff8,$0000,$0000
	dc.w $8045,$000c
	dc.w $8047,$00b6,$ffff
	dc.w $8019
	dc.w $8008,$0007,$0000,$0000,$0000
	dc.w $0064,$0742,$0078,$78ff,$fff8,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05e98a:
	dc.w $804e
	dc.l $00070000,$ffff9000

	dc.w $8040,$0000,$0304,$1a00

	dc.w $800b
	dc.l loc_05ea0e

	dc.w $0003,$086e,$0079,$78ff,$fff8,$0000,$0000
	dc.w $8004,$189e
	dc.w $0004,$086f,$007a,$78ff,$fff8,$0000,$0000
	dc.w $0004,$086f,$007b,$78ff,$fff8,$0000,$0000
	dc.w $0008,$06ef,$007c,$88ff,$fff0,$0000,$0000
	dc.w $8011,$001d,$0005,$f800,$00f0,$ff00
	dc.w $0007,$06f3,$007d,$7cff,$fff4,$0000,$0000
	dc.w $8011,$001d,$0005,$1800,$20f0,$ff00
	dc.w $0007,$06ed,$002a,$7c00
	dc.w $8001

loc_05ea0e:
	dc.w $0001,$0896,$74ff,$ffd8,$0030,$0b00
	dc.w $0001,$0896,$74ff,$ffd8,$0030,$0200
	dc.w $0001,$0896,$74ff,$ffd8,$0030,$0d00
	dc.w $0002,$0897,$74ff,$ffb8,$0070,$0b00
	dc.w $0001,$0897,$74ff,$ffb8,$0070,$0200
	dc.w $0001,$0897,$74ff,$ffb8,$0070,$0d00
	dc.w $0002,$0898,$74ff,$ffc8,$0070,$0b00
	dc.w $0001,$0898,$74ff,$ffc8,$0070,$0300
	dc.w $0001,$0898,$74ff,$ffc8,$0070,$0d00
	dc.w $0002,$0899,$74ff,$ffc8,$0070,$0b00
	dc.w $0001,$0899,$74ff,$ffc8,$0070,$0300
	dc.w $0001,$0899,$74ff,$ffc8,$0070,$0d00
	dc.w $0002,$089a,$74ff,$ffb8,$0068,$0b00
	dc.w $0001,$089a,$74ff,$ffb8,$0068,$0300
	dc.w $0001,$089a,$74ff,$ffb8,$0068,$0d00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05eac4:
	dc.w $8037
	dc.l loc_05c07e
	dc.w $8038
	dc.l loc_05eb08

	dc.w $8039,$0011
	dc.w $803e,$382c,$2800
	dc.w $803f,$1c0c,$080a,$1c08
	dc.w $8040,$0000,$080c,$ff00
	dc.w $8043,$0009
	dc.w $8041,$0607,$f418
	dc.w $8048,$0550,$0006
	dc.w $8048,$00bc,$0000
	dc.w $803b,$e000,$f408,$0000

loc_05eb08:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $802c
	dc.w $8008,$0003,$0000,$0000,$0000
	dc.w $0002,$07fd,$0000,$7cff,$0004,$ffda,$0000
	dc.w $8011,$001d,$0005,$1800,$20f4,$ff00
	dc.w $8004,$18c6
	dc.w $802b,$1c72
	dc.w $0003,$0744,$0000,$7c00
	dc.w $803c,$0000
	dc.w $8011,$001c,$0004,$0800,$e000
	dc.w $0003,$0745,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8045,$000c
	dc.w $8047,$00b7,$ffff
	dc.w $8008,$0005,$0000,$fff8,$0000

	dc.w $800a
	dc.l loc_05ebe4

	dc.w $0004,$0746,$007e,$78ff,$0000,$fffc,$0000
	dc.w $803f,$100c,$0205,$1008
	dc.w $0008,$0856,$007f,$78ff,$0000,$fff8,$0000
	dc.w $803c,$0008
	dc.w $0004,$0712,$0080,$78ff,$fff8,$0088,$0003
	dc.w $0004,$0817,$0081,$7c00
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$07e2,$0065,$7c00
	dc.w $0004,$07ee,$000c,$7c00
	dc.w $0004,$070d,$000d,$7cff,$fffc,$0000,$0000
	dc.w $8001

loc_05ebe4:
	dc.w $0004,$08ab,$74ff,$ffe0,$006c,$0c00
	dc.w $0004,$08ae,$74ff,$ffe0,$0078,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05ebfe:
	dc.w $8037
	dc.l loc_05c07e
	dc.w $8038
	dc.l loc_05ec42

	dc.w $8039,$0011
	dc.w $803e,$384a,$1800
	dc.w $803f,$1401,$0006,$1004
	dc.w $8040,$0000,$0c14,$ff00
	dc.w $8043,$000a
	dc.w $8041,$0607,$fb18
	dc.w $8048,$0550,$0006
	dc.w $8048,$00bc,$0000
	dc.w $803b,$e000,$f408,$0000

loc_05ec42:
	dc.w $8047,$02b8,$0008
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $802c
	dc.w $8004,$188a
	dc.w $804a,$0003,$8000,$fffb,$c800
	dc.w $0002,$07fd,$0000,$7cff,$0004,$ffda,$0000
	dc.w $0002,$07fe,$0000,$7cff,$fffe,$ffdc,$0000
	dc.w $0002,$07ff,$0000,$7cff,$fffc,$ffd6,$0000
	dc.w $0002,$07fe,$0000,$7cff,$0002,$0060,$0003
	dc.w $0002,$07fd,$0000,$7cff,$0004,$ffda,$0000
	dc.w $804e
	dc.l $00038000,$0000e000

	dc.w $8045,$0010
	dc.w $8004,$18c6
	dc.w $802a,$001d
	dc.w $803e,$382c,$1b00
	dc.w $803f,$1401,$0006,$1004
	dc.w $8011,$001d,$0005,$1800,$20f4,$ff00
	dc.w $0002,$0744,$0082,$7c00
	dc.w $803c,$0000
	dc.w $8011,$001c,$0004,$0800,$e000
	dc.w $0002,$0745,$0083,$78ff,$fff8,$0000,$0000
	dc.w $8047,$00b7,$ffff
	dc.w $8019

	dc.w $8008
	dc.l $00070000,$fff70000

	dc.w $803e,$382c,$1b00
	dc.w $803f,$0a01,$0004,$0900

	dc.w $800a
	dc.l loc_05ede4

	dc.w $0002,$0746,$0084,$78ff,$0000,$fffc,$0000
	dc.w $8047,$02b8,$0004
	dc.w $803e,$382c,$1b00
	dc.w $803f,$0302,$0001,$0300
	dc.w $0002,$0856,$007f,$78ff,$0000,$fff8,$0000
	dc.w $803e,$382c,$1b00
	dc.w $0002,$0856,$007f,$78ff,$0000,$fff8,$0000
	dc.w $803e,$382c,$1b00
	dc.w $0002,$0856,$007f,$78ff,$0000,$fff8,$0000
	dc.w $803e,$382c,$1b00
	dc.w $0002,$0856,$007f,$78ff,$0000,$fff8,$0000
	dc.w $803e,$382c,$2800
	dc.w $0008,$0856,$007f,$78ff,$0000,$fff8,$0000
	dc.w $803c,$0008
	dc.w $0004,$0712,$0080,$78ff,$fff8,$0088,$0003
	dc.w $0004,$0817,$0081,$7c00
	dc.w $0004,$07e2,$0065,$7c00
	dc.w $8047,$00b6,$ffff
	dc.w $0004,$07ee,$000c,$7c00
	dc.w $0004,$070d,$000d,$7cff,$fffc,$0000,$0000
	dc.w $8001

loc_05ede4:
	dc.w $0002,$08ab,$74ff,$ffe0,$006c,$0c00
	dc.w $0002,$08ac,$74ff,$ffe0,$0078,$0c00
	dc.w $0002,$08ad,$74ff,$ffe0,$0078,$0c00
	dc.w $0002,$08ac,$74ff,$ffe0,$0078,$0b00
	dc.w $0002,$08ad,$74ff,$ffe0,$0078,$0b00
	dc.w $0002,$08ae,$74ff,$ffe0,$0078,$0c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05ee2e:
	dc.w $8037
	dc.l loc_05c100
	dc.w $8038
	dc.l loc_05ee70

	dc.w $803e,$282a,$1800
	dc.w $803f,$0d04,$0804,$0c02
	dc.w $8040,$0000,$1306,$0e00
	dc.w $8043,$0007
	dc.w $8041,$0101,$fe18
	dc.w $8048,$0550,$0003
	dc.w $8048,$00bc,$0000
	dc.w $803c,$0000
	dc.w $8039,$0019,$0000

loc_05ee70:
	dc.w $8047,$00b6,$0000
	dc.w $8047,$02b8,$0008
	dc.w $802c
	dc.w $0003,$0700,$0000,$7c00
	dc.w $8011,$001c,$0004,$0000,$e0f8
	dc.w $8045,$0008

	dc.w $804b
	dc.l $00040000,$fff8d000,$0000a000

	dc.w $8005,$188d
	dc.w $0004,$07eb,$0009,$7800
	dc.w $0004,$07ec,$000a,$7800
	dc.w $0004,$07ed,$000b,$7800
	dc.w $8005,$18a1
	dc.w $0004,$07e9,$005f,$7800
	dc.w $0006,$0853,$0085,$78ff,$fffc,$0004,$0000
	dc.w $0002,$07ee,$000c,$7800
	dc.w $8011,$001d,$0005,$0800,$10f4,$ff00
	dc.w $8003,$1870
	dc.w $0006,$070c,$0014,$7c00
	dc.w $8048,$0550,$0006
	dc.w $0006,$0700,$0004,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05ef08:
	dc.w $8040,$0000,$0406,$ff00
	dc.w $803e,$282b,$1000
	dc.w $803f,$0d04,$0805,$0c08

	dc.w $804b
	dc.l $00040000,$fffc9000,$0000a000

	dc.w $8005,$18a1,$802a,$0020
	dc.w $0004,$0854,$0086,$78ff,$fffc,$0000,$0000
	dc.w $8047,$00b6,$ffff
	dc.w $0006,$0855,$0087,$78ff,$fff8,$fffc,$0000
	dc.w $0002,$07ee,$000c,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05ef60:
	dc.w $8037
	dc.l loc_05c100
	dc.w $8038
	dc.l loc_05ef90

	dc.w $803d
	dc.w $8040,$0000,$1703,$0f00
	dc.w $8043,$0007
	dc.w $8048,$0550,$0003
	dc.w $8048,$00bc,$0000
	dc.w $803c,$0000
	dc.w $8039,$0019,$0000

loc_05ef90:
	dc.w $8047,$00b6,$0000
	dc.w $802c
	dc.w $0003,$0700,$0000,$7c00
	dc.w $8011,$001c,$0004,$0000,$c0f8
	dc.w $8045,$000c

	dc.w $804c
	dc.l $00010000,$fff51000,$00007000,$0000e000

	dc.w $8005,$1886
	dc.w $0003,$07fd,$000f,$78ff,$0004,$0002,$0000
	dc.w $0003,$07fe,$000f,$78ff,$fffe,$0004,$0000
	dc.w $0003,$07ff,$000f,$78ff,$fffc,$fffe,$0000
	dc.w $0003,$07fe,$000f,$78ff,$0002,$0088,$0003
	dc.w $803e,$282a,$1800
	dc.w $803f,$0f04,$0004,$0e02
	dc.w $8040,$0000,$0a06,$0e00
	dc.w $8041,$0101,$fe18

	dc.w $8047,$02b8,$0008
	dc.w $802a,$0020
	dc.w $0002,$07fd,$000f,$78ff,$0004,$0002,$0000
	dc.w $0002,$07fe,$000f,$78ff,$fffe,$0004,$0000

	dc.w $804b
	dc.l $00080000,$0008c000,$00000000

	dc.w $8005,$18a1
	dc.w $0004,$07e9,$005f,$7800
	dc.w $0003,$0853,$0088,$78ff,$fffc,$0004,$0000
	dc.w $0001,$07ee,$000c,$7800
	dc.w $8011,$001d,$0005,$0800,$10f4,$ff00

;==========================
loc_05f07a:
	dc.w $8003,$1870
	dc.w $0007,$070c,$0014,$7c00
	dc.w $8048,$0550,$0005
	dc.w $0005,$0700,$0004,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05f096:
	dc.w $8040,$0000,$030b,$ff00

	dc.w $804b
	dc.l $00018000,$fffea000,$00004000

	dc.w $803e,$282a,$1b00
	dc.w $803f,$0f04,$0004,$0e02
	dc.w $8005,$18a1
	dc.w $802b,$1c6e
	dc.w $0003,$0854,$0086,$78ff,$fffc,$0000,$0000
	dc.w $0003,$0855,$0087,$78ff,$fff8,$fffc,$0000
	dc.w $8005,$189e
	dc.w $0002,$071f,$006c,$8400
	dc.w $802b,$1c76
	dc.w $0002,$0720,$006d,$84ff,$0000,$fff8,$0000
	dc.w $803e,$286b,$0f00
	dc.w $803f,$0f04,$0806,$0c02
	dc.w $8047,$00b6,$ffff
	dc.w $8047,$02b8,$0000

	dc.w $800a
	dc.l loc_05f13c

	dc.w $0004,$0721,$006e,$7800
	dc.w $0004,$07ee,$000c,$7c00
	dc.w $0002,$070d,$000d,$7cff,$fffc,$0000,$0000
	dc.w $8001

loc_05f13c:
	dc.w $0001,$08a8,$74ff,$ffb8,$0040,$0000
	dc.w $0002,$08a9,$74ff,$ffb8,$0040,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05f156:
	dc.w $8037
	dc.l loc_05c228
	dc.w $8038
	dc.l loc_05f1a0

	dc.w $8039,$0002
	dc.w $803e,$387d,$1900
	dc.w $8048,$025c,$00f6
	dc.w $8046,$0010
	dc.w $803f,$0300,$0001,$0200
	dc.w $8040,$0000,$0520,$ff00
	dc.w $8041,$0201,$e020
	dc.w $803b,$0000,$f40c
	dc.w $8048,$0550,$0008
	dc.w $8048,$00bc,$0000,$0000

loc_05f1a0:
	dc.w $8047,$02b8,$0008
	dc.w $802c
	dc.w $0003,$0740,$0089,$78ff,$fffc,$0000,$0000
	dc.w $8011,$001c,$0004,$f000,$e000
	dc.w $8011,$001c,$0004,$1000,$2000
	dc.w $802a,$001e
	dc.w $0002,$0865,$0089,$78ff,$fffc,$0000,$0000
	dc.w $8045,$0010
	dc.w $8005,$18ba
	dc.w $0002,$0866,$008a,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0867,$008b,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0868,$008a,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0869,$008c,$78ff,$fffc,$0000,$0000
	dc.w $8005,$18ba
	dc.w $0002,$086a,$008a,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0863,$008b,$78ff,$fffc,$0000,$0000

;==========================
loc_05f23c:
	dc.w $0002,$0864,$008a,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0865,$008c,$78ff,$fffc,$0000,$0000
	dc.w $8005,$18ba
	dc.w $0002,$0866,$008a,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0867,$008b,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0868,$008a,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0869,$008c,$78ff,$fffc,$0000,$0000
	dc.w $8005,$18ba
	dc.w $0002,$086a,$008a,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0863,$008b,$78ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05f2b6:
	dc.w $8037
	dc.l loc_05c228
	dc.w $8038
	dc.l loc_05f300

	dc.w $8039,$0002
	dc.w $803e,$387d,$1900
	dc.w $8048,$025c,$00f6
	dc.w $8046,$0010
	dc.w $803f,$0300,$0001,$0200
	dc.w $8040,$0000,$0820,$ff00
	dc.w $8041,$0201,$e020
	dc.w $803b,$0000,$f40c
	dc.w $8048,$0550,$0008
	dc.w $8048,$00bc,$0000,$0000

loc_05f300:
	dc.w $8047,$02b8,$0008
	dc.w $802c
	dc.w $0006,$0740,$0089,$78ff,$fffc,$0000,$0000
	dc.w $802a,$001e
	dc.w $8011,$001c,$0004,$f000,$e000
	dc.w $8011,$001c,$0004,$1000,$2000
	dc.w $0002,$0865,$0089,$78ff,$fffc,$0000,$0000
	dc.w $8045,$0010
	dc.w $8005,$18ba
	dc.w $0001,$0866,$008a,$78ff,$fffc,$0000,$0000
	dc.w $0001,$0867,$008b,$78ff,$fffc,$0000,$0000
	dc.w $0001,$0868,$008a,$78ff,$fffc,$0000,$0000
	dc.w $0001,$0869,$008c,$78ff,$fffc,$0000,$0000
	dc.w $8005,$18ba
	dc.w $0001,$086a,$008a,$78ff,$fffc,$0000,$0000
	dc.w $0001,$0863,$008b,$78ff,$fffc,$0000,$0000

;==========================
loc_05f39c:
	dc.w $0001,$0864,$008a,$78ff,$fffc,$0000,$0000
	dc.w $0001,$0865,$008c,$78ff,$fffc,$0000,$0000
	dc.w $8005,$18ba
	dc.w $0001,$0866,$008a,$78ff,$fffc,$0000,$0000
	dc.w $0001,$0867,$008b,$78ff,$fffc,$0000,$0000
	dc.w $0001,$0868,$008a,$78ff,$fffc,$0000,$0000
	dc.w $0001,$0869,$008c,$78ff,$fffc,$0000,$0000
	dc.w $8005,$18ba
	dc.w $0001,$086a,$008a,$78ff,$fffc,$0000,$0000
	dc.w $0001,$0863,$008b,$78ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05f416:
	dc.w $803c,$0004
	dc.w $8040,$0000,$0000,$ff00
	dc.w $000a,$0740,$0089,$7cff,$fffc,$0000,$0000
	dc.w $8048,$0550,$0004
	dc.w $0004,$070c,$0014,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05f440:
	dc.w $8047,$02b8,$ffff
	dc.w $803e,$2878,$2000,$0000

;==========================
loc_05f44e:
	dc.w $803e,$287c,$2800
	dc.w $8046,$0000
	dc.w $8040,$0000,$0002,$ff00
	dc.w $803f,$0a0c,$1004,$0a08,$0000


loc_05f46a:
	dc.w $0800,$30f0,$0000

loc_05f470:
	dc.w $f800,$e0f0,$ff00

loc_05f476:
	dc.w $0800,$20f0,$ff00

loc_05f47c:
	dc.w $f800,$d0f0,$0000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05f482:
	dc.w $8037
	dc.l loc_05c558
	dc.w $8038
	dc.l loc_05f4ca

	dc.w $803e,$38ba,$0d00
	dc.w $8048,$025c,$1c71
	dc.w $803f,$0c02,$000a,$0c00
	dc.w $8040,$0000,$1008,$1400
	dc.w $8043,$0008
	dc.w $8041,$0406,$f520
	dc.w $8039,$0018
	dc.w $8048,$0550,$0000
	dc.w $8048,$00bc,$0000

	dc.w $8036
	dc.l loc_05cb18

loc_05f4ca:
	dc.w $8047,$02b8,$ffff
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b9,$0000
	dc.w $802c
	dc.w $8011,$001c,$0004,$f000,$c0f8
	dc.w $8004,$1884
	dc.w $0004,$07de,$0000,$7800

	dc.w $8017,$000d
	dc.l loc_05f508

	dc.w $802a,$0022
	dc.w $8000,$0000
	dc.l loc_05f50c

loc_05f508:
	dc.w $802b,$1c79

loc_05f50c:
	dc.w $8047,$00b9,$ffff
	dc.w $000c,$07df,$008d,$8800
	dc.w $0008,$07f5,$008e,$7800
	dc.w $8047,$00b6,$0000
	dc.w $8003,$1870
	dc.w $803c,$0004
	dc.w $0010,$070c,$0014,$7c00
	dc.w $0004,$0700,$0004,$7c00
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05f542:
	dc.w $803b,$0000,$f60a
	dc.w $803e,$38ba,$2400
	dc.w $803b,$d0ec,$f418
	dc.w $801a,$0001,$7fff
	dc.w $0008,$080d,$0000,$7800
	dc.w $000a,$0808,$0000,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05f56c:
	dc.w $803f,$0402,$0002,$0200
	dc.w $0002,$0808,$0000,$7800
	dc.w $0002,$0809,$0000,$7800
	dc.w $8048,$025c,$00f5
	dc.w $8033
	dc.w $8034
	dc.w $803f,$0200,$0001,$0200
	dc.w $0008,$080a,$0000,$7800
	dc.w $8048,$025c,$00f4
	dc.w $8033
	dc.w $8034
	dc.w $0004,$080b,$0000,$7800
	dc.w $8048,$025c,$00f5
	dc.w $8033
	dc.w $8034
	dc.w $0004,$080c,$0000,$7800
	dc.w $8048,$025c,$00f6
	dc.w $8033
	dc.w $8034
	dc.w $0004,$080b,$0000,$7800
	dc.w $8048,$025c,$18b9
	dc.w $8033
	dc.w $8034
	dc.w $0004,$080c,$0000,$7800
	dc.w $0024,$080d,$0000,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05f5f0:
	dc.w $803e,$389e,$2400
	dc.w $8046,$0808
	dc.w $8048,$025c,$00f6
	dc.w $803f,$0c02,$0008,$0c00
	dc.w $000c,$0808,$0000,$7800
	dc.w $0002,$0809,$0000,$7800
	dc.w $0002,$080a,$0000,$7800
	dc.w $8033
	dc.w $8034
	dc.w $0010,$080c,$0000,$7800
	dc.w $801a,$0000,$0000
	dc.w $801d
	dc.w $8002,$00e9
	dc.w $803c,$0008
	dc.w $0003,$0805,$0000,$78ff,$0000,$0010,$0000
	dc.w $0005,$0806,$0000,$8000
	dc.w $802b,$1c7c
	dc.w $0008,$07ed,$000b,$8000
	dc.w $0004,$07ee,$000c,$8000
	dc.w $0004,$070d,$000d,$80ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05f676:
	dc.w $fff4,$ffec

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Sho
loc_05f67a:
	dc.w $fff4,$ffec

loc_05f67e:
	dc.w $0008,$00c9,$0000,$78ff,$fffc,$0002,$0000
	dc.w $000a,$00c9,$0000,$78ff,$fffc,$0002,$0000
	dc.w $8001

loc_05f69c:
	dc.w $0004,$00c9,$0000,$78ff,$fffc,$0002,$0000
	dc.w $8020
	dc.w $0008,$00ca,$0000,$78ff,$fffc,$0002,$0000
	dc.w $8020
	dc.w $0004,$00cd,$0000,$78ff,$fffc,$0000,$0000
	dc.w $8020
	dc.w $0004,$00ca,$0000,$78ff,$fffc,$0002,$0000
	dc.w $8020
	dc.w $0004,$00cd,$0000,$78ff,$fffc,$0000,$0000
	dc.w $8020
	dc.w $0004,$00ca,$0000,$78ff,$fffc,$0002,$0000
	dc.w $0024,$00c9,$0000,$78ff,$fffc,$0002,$0000
	dc.w $8001

loc_05f70a:
	dc.w $000c,$00c9,$0000,$78ff,$fffc,$0002,$0000
	dc.w $0002,$00c9,$0000,$78ff,$fffc,$0002,$0000
	dc.w $0002,$00ca,$0000,$78ff,$fffc,$0002,$0000
	dc.w $8020
	dc.w $0010,$00cb,$0000,$78ff,$fffc,$0002,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Dao
loc_05f746:
	dc.w $fff8,$fff0

loc_05f74a:
	dc.w $0008,$029f,$0000,$7800
	dc.w $000a,$029f,$0000,$7800
	dc.w $8001

loc_05f75c:
	dc.w $0004,$029f,$0000,$7800
	dc.w $8020
	dc.w $0008,$02a0,$0000,$7800
	dc.w $8020
	dc.w $0004,$02a3,$0000,$7800
	dc.w $8020
	dc.w $0004,$02a0,$0000,$7800
	dc.w $8020
	dc.w $0004,$02a3,$0000,$7800
	dc.w $8020
	dc.w $0004,$02a0,$0000,$7800
	dc.w $0024,$029f,$0000,$7800
	dc.w $8001

loc_05f7a0:
	dc.w $000c,$029f,$0000,$7800
	dc.w $0002,$029f,$0000,$7800
	dc.w $0002,$02a0,$0000,$7800
	dc.w $8020
	dc.w $0010,$02a1,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Condor
loc_05f7ca:
	dc.w $0004,$ffe0

loc_05f7ce:
	dc.w $0008,$043e,$0000,$7800
	dc.w $000a,$043e,$0000,$7800
	dc.w $8001

loc_05f7e0:
	dc.w $0004,$043e,$0000,$7800
	dc.w $8020
	dc.w $0008,$043f,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8020
	dc.w $0004,$0443,$0000,$78ff,$fff4,$0000,$0000
	dc.w $8020
	dc.w $0004,$043f,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8020
	dc.w $0004,$0443,$0000,$78ff,$fff4,$0000,$0000
	dc.w $8020
	dc.w $0004,$043f,$0000,$78ff,$fff8,$0000,$0000
	dc.w $0024,$043e,$0000,$7800
	dc.w $8001

loc_05f842:
	dc.w $000c,$043e,$0000,$7800
	dc.w $0002,$043e,$0000,$7800
	dc.w $0002,$043f,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8020
	dc.w $0010,$0440,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Tia
loc_05f872:
	dc.w $fff4,$fff4

loc_05f876:
	dc.w $0008,$05c2,$0000,$7800
	dc.w $000a,$05c2,$0000,$7800
	dc.w $8001

loc_05f888:
	dc.w $0004,$05c2,$0000,$7800,$8020
	dc.w $0008,$05c3,$0000,$7800,$8020
	dc.w $0004,$05c5,$0000,$78ff,$0000,$0004,$0000
	dc.w $8020
	dc.w $0004,$05c3,$0000,$7800,$8020
	dc.w $0004,$05c5,$0000,$78ff,$0000,$0004,$0000
	dc.w $8020
	dc.w $0004,$05c3,$0000,$7800
	dc.w $0024,$05c2,$0000,$7800
	dc.w $8001

loc_05f8d8:
	dc.w $000c,$05c2,$0000,$7800
	dc.w $0002,$05c2,$0000,$7800
	dc.w $0002,$05c3,$0000,$7800
	dc.w $8020
	dc.w $0010,$05c4,$0000,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Rila
loc_05f8fc:
	dc.w $fff4,$fff0

loc_05f900:
	dc.w $0008,$07b5,$0000,$7800
	dc.w $000a,$07b5,$0000,$7800
	dc.w $8001

loc_05f912:
	dc.w $0004,$07b5,$0000,$7800
	dc.w $8020
	dc.w $0008,$07b6,$0000,$7800
	dc.w $8020
	dc.w $0004,$0731,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8020
	dc.w $0004,$07b6,$0000,$7800
	dc.w $8020
	dc.w $0004,$0731,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8020
	dc.w $0004,$07b6,$0000,$7800
	dc.w $0024,$07b5,$0000,$7800
	dc.w $8001

loc_05f962:
	dc.w $000c,$07b5,$0000,$7800
	dc.w $0002,$07b5,$0000,$7800
	dc.w $0002,$07b6,$0000,$7800
	dc.w $8020
	dc.w $0010,$07b7,$0000,$78ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Alsion
loc_05f98c:
	dc.w $fff8,$ffec

loc_05f990:
	dc.w $0008,$09ac,$0000,$7800
	dc.w $000a,$09ac,$0000,$7800
	dc.w $8001

loc_05f9a2:
	dc.w $0004,$09ac,$0000,$7800
	dc.w $8020
	dc.w $0008,$09ad,$0000,$7800
	dc.w $8020
	dc.w $0004,$09af,$0000,$7800
	dc.w $8020
	dc.w $0004,$09ad,$0000,$7800
	dc.w $8020
	dc.w $0004,$09af,$0000,$7800
	dc.w $8020
	dc.w $0004,$09ad,$0000,$7800
	dc.w $0024,$09ac,$0000,$7800
	dc.w $8001

loc_05f9e6:
	dc.w $000c,$09ac,$0000,$7800
	dc.w $0002,$09ac,$0000,$7800
	dc.w $0002,$09ad,$0000,$7800
	dc.w $8020
	dc.w $0010,$09ae,$0000,$7800
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Pielle
loc_05fa0a:
	dc.w $0000,$ffec

loc_05fa0e:
	dc.w $0008,$0b52,$0000,$7800
	dc.w $000a,$0b52,$0000,$7800
	dc.w $8001

loc_05fa20:
	dc.w $0004,$0b52,$0000,$7800
	dc.w $8020
	dc.w $0008,$0b53,$0000,$7800
	dc.w $8020
	dc.w $0004,$0b55,$0000,$7800
	dc.w $8020
	dc.w $0004,$0b53,$0000,$7800
	dc.w $8020
	dc.w $0004,$0b55,$0000,$7800
	dc.w $8020
	dc.w $0004,$0b53,$0000,$7800
	dc.w $0024,$0b52,$0000,$7800
	dc.w $8001

loc_05fa64:
	dc.w $000c,$0b52,$0000,$7800
	dc.w $0002,$0b52,$0000,$7800
	dc.w $0002,$0b53,$0000,$7800
	dc.w $8020
	dc.w $0010,$0b54,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Maherl
loc_05fa8e:
	dc.w $fff0,$fff8

loc_05fa92:
	dc.w $0008,$0d68,$0000,$7800
	dc.w $000a,$0d68,$0000,$7800
	dc.w $8001

loc_05faa4:
	dc.w $0004,$0d68,$0000,$7800
	dc.w $8020
	dc.w $0008,$0d69,$0000,$7800
	dc.w $8020
	dc.w $0004,$0d6b,$0000,$7800
	dc.w $8020
	dc.w $0004,$0d69,$0000,$7800
	dc.w $8020
	dc.w $0004,$0d6b,$0000,$7800
	dc.w $8020
	dc.w $0004,$0d69,$0000,$7800
	dc.w $0024,$0d68,$0000,$7800
	dc.w $8001

loc_05fae8:
	dc.w $000c,$0d68,$0000,$7800
	dc.w $0002,$0d68,$0000,$7800
	dc.w $0002,$0d69,$0000,$7800
	dc.w $8020
	dc.w $0010,$0d6a,$0000,$78ff,$0004,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Bai-Hu
loc_05fb12:
	dc.w $fff8,$ffe8

loc_05fb16:
	dc.w $0008,$0f37,$0000,$78ff,$fffc,$0000,$0000
	dc.w $000a,$0f37,$0000,$78ff,$fffc,$0000,$0000
	dc.w $8001

loc_05fb34:
	dc.w $0004,$0f37,$0000,$78ff,$fffc,$0000,$0000
	dc.w $8020
	dc.w $0008,$0f38,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8020
	dc.w $0004,$0f35,$0000,$7800
	dc.w $8020
	dc.w $0004,$0f38,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8020
	dc.w $0004,$0f35,$0000,$7800
	dc.w $8020
	dc.w $0004,$0f38,$0000,$78ff,$fff8,$0000,$0000
	dc.w $0024,$0f37,$0000,$78ff,$fffc,$0000,$0000
	dc.w $8001

loc_05fb96:
	dc.w $000c,$0f37,$0000,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0f37,$0000,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0f38,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8020
	dc.w $0010,$0f39,$0000,$78ff,$fff8,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Saizo
loc_05fbd2:
	dc.w $fff4,$ffec

loc_05fbd6:
	dc.w $0008,$104d,$0000,$78ff,$0003,$000a,$0000
	dc.w $000a,$104d,$0000,$78ff,$0003,$000a,$0000
	dc.w $8001

loc_05fbf4:
	dc.w $0004,$104d,$0000,$78ff,$0003,$000a,$0000
	dc.w $8020
	dc.w $0008,$104e,$0000,$78ff,$fffc,$000c,$0000
	dc.w $8020
	dc.w $0004,$1051,$0000,$78ff,$0000,$000c,$0000
	dc.w $8020
	dc.w $0004,$104e,$0000,$78ff,$fffc,$000c,$0000
	dc.w $8020
	dc.w $0004,$1051,$0000,$78ff,$0000,$000c,$0000
	dc.w $8020
	dc.w $0004,$104e,$0000,$78ff,$fffc,$000c,$0000
	dc.w $0024,$104d,$0000,$78ff,$0003,$000a,$0000
	dc.w $8001

loc_05fc62:
	dc.w $000c,$104d,$0000,$78ff,$0003,$000a,$0000
	dc.w $0002,$104d,$0000,$78ff,$0003,$000a,$0000
	dc.w $0002,$104e,$0000,$78ff,$fffc,$000c,$0000
	dc.w $8020
	dc.w $0010,$104f,$0000,$78ff,$fff1,$000a,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05fc9e:
	dc.w $8037
	dc.l loc_05c98c
	dc.w $8038
	dc.l loc_05fcec

	dc.w $803e,$289c,$1d00
	dc.w $8048,$025c,$00c4
	dc.w $8046,$30f8
	dc.w $803f,$0c05,$0008,$0a04
	dc.w $8040,$0000,$1e02,$ff00
	dc.w $8043,$001f
	dc.w $8041,$0106,$ec18
	dc.w $8039,$0018
	dc.w $8048,$0550,$0000
	dc.w $8048,$00bc,$0000
	dc.w $803b,$0000,$f60a,$0000

loc_05fcec:
	dc.w $8047,$02b8,$ffff
	dc.w $8047,$00b6,$0000
	dc.w $8047,$00b7,$0000
	dc.w $8047,$00b9,$0000
	dc.w $802c

	dc.w $8008
	dc.l $fffe0000,$00000000

	dc.w $8002,$18b8
	dc.w $0002,$081f,$0000,$78ff,$0000,$0002,$0400
	dc.w $0002,$0822,$0000,$78ff,$0000,$0002,$0400
	dc.w $0002,$081a,$0000,$78ff,$0000,$0002,$0400
	dc.w $802b,$1c78
	dc.w $8032,$0012,$0000,$0f00
	dc.w $0002,$08a7,$0000,$78ff,$0000,$0002,$0c00
	dc.w $0002,$075d,$0000,$78ff,$0000,$0002,$0c00
	dc.w $0002,$075e,$0000,$78ff,$0000,$0002,$0c00
	dc.w $0002,$075f,$0000,$78ff,$0000,$0000,$0c00
	dc.w $0002,$0760,$0000,$78ff,$0002,$0000,$0c00
	dc.w $8007,$0010,$0000
	dc.w $0002,$07a3,$0000,$78ff,$fffc,$0004,$0c00
	dc.w $0002,$07a4,$0000,$78ff,$fffe,$0002,$0c00
	dc.w $0002,$07a5,$0000,$78ff,$fffc,$0004,$0c00
	dc.w $0002,$07a6,$0000,$78ff,$0000,$0002,$0c00
	dc.w $0002,$089b,$0000,$78ff,$0000,$0000,$0c00
	dc.w $0002,$089c,$0000,$78ff,$0000,$0000,$0c00
	dc.w $0002,$089d,$0000,$78ff,$0000,$0000,$0c00
	dc.w $8047,$00b9,$ffff
	dc.w $8023
	dc.w $8041,$0107,$ec30
	dc.w $0004,$089e,$008f,$78ff,$0000,$0000,$0c00
	dc.w $0002,$089f,$008f,$78ff,$0000,$0000,$0c00
	dc.w $8047,$00b6,$ffff

loc_05fe28:
	dc.w $0006,$089f,$008f,$78ff,$0000,$0000,$0c00
	dc.w $0006,$08a0,$008f,$78ff,$0000,$0000,$0c00
	dc.w $0006,$08a1,$008f,$78ff,$0000,$0000,$0c00
	dc.w $0006,$08a0,$008f,$78ff,$0000,$0000,$0c00
	dc.w $8000,$0000
	dc.l loc_05fe28

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_05fe68:
	dc.w $8032,$0006,$0000,$0f00
	dc.w $8008,$0020,$0000,$fffa,$0000
	dc.w $8004,$1884
	dc.w $803e,$38bc,$1d00
	dc.w $8048,$025c,$00f6
	dc.w $8046,$f0f8
	dc.w $803f,$0a03,$0005,$0800
	dc.w $8011,$001c
	dc.w $0004,$f000,$80e8
	dc.w $0001,$08a4,$0090,$78ff,$0000,$fff8,$0c00
	dc.w $0005,$08a3,$0090,$78ff,$0000,$fff8,$0c00
	dc.w $8023
	dc.w $8047,$00b7,$ffff
	dc.w $0002,$08a5,$0091,$78ff,$0000,$0000,$0c00
	dc.w $0002,$08a6,$0091,$78ff,$0000,$0000,$0c00
	dc.w $8025
	dc.w $8008,$0020,$0000,$fffa,$0000
	dc.w $8004,$1884
	dc.w $803e,$38bc,$1d00
	dc.w $8048,$025c,$00f4
	dc.w $8046,$f0f8
	dc.w $803f,$0a03,$0005,$0800
	dc.w $8011,$001c,$0004,$f000,$80e8
	dc.w $0001,$08a4,$0090,$78ff,$0000,$fff8,$0c00
	dc.w $0005,$08a3,$0090,$78ff,$0000,$fff8,$0c00
	dc.w $8023
	dc.w $0002,$08a5,$0091,$78ff,$0000,$0000,$0c00
	dc.w $0002,$08a6,$0091,$78ff,$0000,$0000,$0c00
	dc.w $8025
	dc.w $8008,$0020,$0000,$fffa,$0000
	dc.w $8004,$1884
	dc.w $803e,$38bc,$1d00
	dc.w $8048,$025c,$00f5
	dc.w $8046,$f0f8
	dc.w $803f,$0a03,$0005,$0800
	dc.w $8011,$001c,$0004,$f000,$80e8
	dc.w $0001,$08a4,$0090,$78ff,$0000,$fff8,$0c00
	dc.w $0005,$08a3,$0090,$78ff,$0000,$fff8,$0c00
	dc.w $8023
	dc.w $0002,$08a5,$0091,$78ff,$0000,$0000,$0c00
	dc.w $0002,$08a6,$0091,$78ff,$0000,$0000,$0c00
	dc.w $8025
	dc.w $8008,$0020,$0000,$fffa,$0000
	dc.w $8004,$1884
	dc.w $803e,$38bc,$1d00
	dc.w $8048,$025c,$00f4
	dc.w $8046,$f0f8
	dc.w $803f,$0a03,$0005,$0800
	dc.w $8011,$001c,$0004,$f000,$80e8
	dc.w $0001,$08a4,$0090,$78ff,$0000,$fff8,$0c00
	dc.w $0005,$08a3,$0090,$78ff,$0000,$fff8,$0c00
	dc.w $8023
	dc.w $0002,$08a5,$0091,$78ff,$0000,$0000,$0c00
	dc.w $0002,$08a6,$0091,$78ff,$0000,$0000,$0c00
	dc.w $8025
	dc.w $8008,$0020,$0000,$fffa,$0000
	dc.w $8004,$1884
	dc.w $803e,$38bc,$2400
	dc.w $8048,$025c,$00f6
	dc.w $8046,$e0f8
	dc.w $803f,$0a03,$0005,$0800
	dc.w $8011,$001c,$0004,$f000,$80e8
	dc.w $0001,$08a4,$0090,$78ff,$0000,$fff8,$0c00
	dc.w $0005,$08a3,$0090,$78ff,$0000,$fff8,$0c00
	dc.w $8023
	dc.w $8002,$00e9
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_06007a:
	dc.w 0004,$08a2,$0092,$78ff,$0000,$fff8,$0c00

loc_060088:
	dc.w $0004,$08a1,$0093,$78ff,$0000,$0000,$0c00
	dc.w $0002,$089e,$0093,$78ff,$0000,$0000,$0c00
	dc.w $0002,$089d,$0093,$78ff,$0000,$0000,$0c00
	dc.w $0002,$089c,$0093,$78ff,$0000,$0000,$0c00
	dc.w $0002,$089b,$0093,$78ff,$0000,$0000,$0c00
	dc.w $0002,$07a6,$0093,$78ff,$0000,$0002,$0c00
	dc.w $0002,$07a5,$0093,$78ff,$fffc,$0004,$0c00
	dc.w $0002,$07a4,$0093,$78ff,$fffe,$0002,$0c00
	dc.w $0002,$07a3,$0093,$78ff,$fffc,$0004,$0c00
	dc.w $8007,$fff0,$0000
	dc.w $0002,$0760,$0094,$78ff,$0002,$0000,$0c00
	dc.w $0002,$075f,$0094,$78ff,$0000,$0000,$0c00
	dc.w $0002,$075e,$0094,$78ff,$0000,$0002,$0c00
	dc.w $0002,$075d,$0094,$78ff,$0000,$0002,$0c00
	dc.w $0002,$08a7,$0001,$78ff,$0000,$0002,$0c00
	dc.w $0002,$081a,$0001,$78ff,$0000,$0002,$0400
	dc.w $0002,$070d,$000d,$78ff,$fffc,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_060170:
	dc.w $8037
	dc.l loc_05be56
	dc.w $8038
	dc.l loc_0601b0

	dc.w $8039,$0000
	dc.w $803e,$0807,$2f00
	dc.w $803f,$2008,$000a,$2808
	dc.w $8040,$0000,$0000,$0000
	dc.w $8041,$0000,$0000
	dc.w $8048,$0550,$0000
	dc.w $8048,$00bc,$0000
	dc.w $8047,$024b,$ffff,$0000

loc_0601b0:
	dc.w $8002,$18e7
	dc.w $802c
	dc.w $8047,$00b7,$0000
	dc.w $0004,$0785,$0000,$78ff,$0012,$0000,$0000
	dc.w $8047,$00b7,$ffff
	dc.w $803b,$d800,$f01c
	dc.w $0006,$0725,$0000,$78ff,$0010,$0000,$0000
	dc.w $804a,$fffe,$0000,$fff7,$1800
	dc.w $8004,$1886
	dc.w $8011,$001d,$0005,$2000,$10f4,$ff00
	dc.w $0005,$06ef,$0000,$78ff,$fff8,$0000,$0000
	dc.w $802b,$1c74
	dc.w $0005,$0726,$0000,$78ff,$fff0,$0000,$0000
	dc.w $803b,$d800,$ec14
	dc.w $000a,$0727,$0000,$78ff,$ffe0,$0000,$0000
	dc.w $8026,$0010
	dc.w $8034
	dc.w $8011,$001d,$0005,$e000,$20f0,$0000
	dc.w $8011,$001d,$0005,$b000,$c0e0,$0100
	dc.w $803b,$d800,$e410
	dc.w $0008,$0728,$0000,$78ff,$ffe0,$0010,$0000
	dc.w $801d
	dc.w $803c,$0000
	dc.w $0001,$0716,$0000,$78ff,$0000,$fff8,$0001
	dc.w $803b,$0000,$f60a
	dc.w $804a,$0002,$0000,$fff8,$f800
	dc.w $0010,$0716,$0000,$78ff,$0000,$fff8,$0001
	dc.w $803c,$0004
	dc.w $0004,$0740,$0000,$78ff,$0004,$0000,$0001
	dc.w $8001

;-=-=-=-=-=-=-=-=-=-=-=-=-=
;Throw Start
;-=-=-=-=-=-=-=-=-=-=-=-=-=
;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Sho
loc_0602aa:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$00ce,$0000,$84ff,$0028,$0000,$0000
	dc.w $0006,$0143,$0000,$84ff,$0034,$fff8,$0001
	dc.w $0005,$013f,$0000,$84ff,$0030,$0018,$0000
	dc.w $0005,$017c,$0000,$84ff,$0020,$0028,$0000
	dc.w $000a,$0179,$0000,$84ff,$0010,$0030,$0000
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0008,$00ce,$0000,$84ff,$0028,$0060,$0003
	dc.w $000c,$0144,$0000,$84ff,$0010,$0000,$0001
	dc.w $000c,$012a,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Dao
loc_060334:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$02a3,$0000,$84ff,$0030,$0000,$0000
	dc.w $0006,$02a4,$0000,$84ff,$0024,$fff8,$0000
	dc.w $0005,$030e,$0000,$84ff,$0018,$fff8,$0000
	dc.w $0005,$0309,$0000,$84ff,$0020,$0018,$0001
	dc.w $000a,$030a,$0000,$84ff,$0008,$0020,$0001
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0008,$02a4,$0000,$84ff,$0028,$0058,$0003
	dc.w $000c,$02fa,$0000,$84ff,$0018,$0068,$0002
	dc.w $000c,$022b,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Condor
loc_0603be:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$0441,$0000,$84ff,$0030,$0000,$0000
	dc.w $0006,$0414,$0000,$84ff,$0028,$fffc,$0000
	dc.w $0005,$0408,$0000,$84ff,$0018,$0008,$0000
	dc.w $0005,$040d,$0000,$84ff,$0018,$0080,$0003
	dc.w $000a,$040c,$0000,$84ff,$0008,$0098,$0003
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0008,$0443,$0000,$84ff,$0038,$0074,$0003
	dc.w $000c,$0414,$0000,$84ff,$0020,$0070,$0003
	dc.w $000c,$0458,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Tia
loc_060448:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$05c5,$0000,$84ff,$0028,$0000,$0000
	dc.w $0006,$0676,$0000,$84ff,$0038,$0004,$0001
	dc.w $0005,$0670,$0000,$84ff,$0028,$0010,$0000
	dc.w $0005,$0697,$0000,$84ff,$0010,$0030,$0001
	dc.w $000a,$0698,$0000,$84ff,$fff8,$0030,$0001
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0008,$05c7,$0000,$84ff,$0028,$0048,$0003
	dc.w $000c,$0677,$0000,$84ff,$0010,$0000,$0001
	dc.w $000c,$0639,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Rila
loc_0604cc:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$0730,$0000,$84ff,$0030,$0000,$0000
	dc.w $0006,$0870,$0000,$84ff,$0038,$0070,$0003
	dc.w $0005,$0858,$0000,$84ff,$0028,$0008,$0001
	dc.w $0005,$085a,$0000,$84ff,$0020,$0078,$0003
	dc.w $000a,$0857,$0000,$84ff,$0000,$0098,$0003
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0008,$07ec,$0000,$84ff,$0020,$0058,$0003
	dc.w $000c,$0870,$0000,$84ff,$0018,$fff8,$0000
	dc.w $000c,$0812,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Alsion
loc_060550:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$09af,$0000,$84ff,$0028,$0000,$0000
	dc.w $0006,$09b0,$0000,$84ff,$0028,$fffc,$0000
	dc.w $0005,$09fe,$0000,$84ff,$0020,$0018,$0000
	dc.w $0005,$09f9,$0000,$84ff,$0018,$0028,$0001
	dc.w $000a,$09fa,$0000,$84ff,$0000,$0030,$0001
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0008,$09b1,$0000,$84ff,$0030,$0070,$0003
	dc.w $000c,$0a08,$0000,$84ff,$0008,$0000,$0001
	dc.w $000c,$09d7,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Pielle
loc_0605da:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$0b55,$0000,$84ff,$0028,$0000,$0000
	dc.w $0006,$0b56,$0000,$84ff,$0028,$fffc,$0000
	dc.w $0005,$0b94,$0000,$84ff,$0030,$0008,$0000
	dc.w $0005,$0bcc,$0000,$84ff,$0020,$0038,$0001
	dc.w $000a,$0bcd,$0000,$84ff,$0008,$0038,$0001
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0008,$0b99,$0000,$84ff,$0018,$0078,$0002
	dc.w $000c,$0b99,$0000,$84ff,$0018,$0078,$0002
	dc.w $000c,$0b89,$0000,$8400
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Maherl
loc_06065e:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$0d6b,$0000,$84ff,$0030,$0000,$0000
	dc.w $0006,$0d6c,$0000,$84ff,$0030,$0000,$0000
	dc.w $0005,$0da9,$0000,$84ff,$0030,$0020,$0000
	dc.w $0005,$0dbd,$0000,$84ff,$0018,$0038,$0001
	dc.w $000a,$0dbe,$0000,$84ff,$0000,$0028,$0001
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0008,$0d6d,$0000,$84ff,$0028,$0064,$0003
	dc.w $000c,$0dd8,$0000,$84ff,$0010,$fff8,$0001
	dc.w $000c,$0dde,$0000,$84ff,$0008,$0000,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Baihu
loc_0606e8:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$0f35,$0000,$84ff,$0028,$0000,$0000
	dc.w $0006,$0e5a,$0000,$84ff,$0040,$0004,$0000
	dc.w $0005,$0e5b,$0000,$84ff,$0028,$0010,$0000
	dc.w $0005,$0f2b,$0000,$84ff,$0018,$0078,$0003
	dc.w $000a,$0e5e,$0000,$84ff,$0008,$0090,$0003
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0008,$0f36,$0000,$84ff,$0020,$006c,$0003
	dc.w $000c,$0e5d,$0000,$84ff,$0018,$0000,$0000
	dc.w $000c,$0e5f,$0000,$84ff,$0000,$0008,$0000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Saizo
loc_060772:
	dc.w $801b,$0000,$0000,$0000
	dc.w $0004,$1049,$0000,$84ff,$002d,$0009,$0000
	dc.w $0006,$1185,$0000,$84ff,$003a,$0018,$0000
	dc.w $0005,$10b9,$0000,$84ff,$0029,$0020,$0000
	dc.w $0005,$10b8,$0000,$84ff,$0014,$0029,$0000
	dc.w $000a,$10b5,$0000,$84ff,$0008,$0021,$0000
	dc.w $801b,$ffc8,$0000,$0000
	dc.w $801e,$fff0,$0000
	dc.w $8020
	dc.w $0008,$1049,$0000,$84ff,$0022,$0055,$0003
	dc.w $000c,$1186,$0000,$84ff,$0002,$0005,$0000
	dc.w $000c,$1067,$0000,$84ff,$0010,$fffd,$0000
	dc.w $8001


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0607fc:
	dc.w $8037
	dc.l loc_05be0c
	dc.w $8038
	dc.l loc_06082c

	dc.w $803a,$00ff
	dc.w $8039,$0018
	dc.w $803d
	dc.w $8045,$0002
	dc.w $8048,$0550,$0004
	dc.w $8048,$00bc,$0000
	dc.w $8043,$0004

	dc.w $8036
	dc.l loc_05cb00

loc_06082c:
	dc.w $8023
	dc.w $0004,$0722,$0000,$8000
	dc.w $8011,$001d,$0005,$f000,$d0e8,$ff00
	dc.w $8002,$188d

	dc.w $804c
	dc.l $00060000,$fffe3800,$ffffd000,$00003000

	dc.w $0004,$0723,$0095,$8000
	dc.w $0008,$07ed,$000b,$8000
	dc.w $0004,$07ee,$000c,$8000
	dc.w $0004,$070d,$000d,$80ff,$fffc,$0000,$0000
	dc.w $8003,$1870
	dc.w $803c,$0000
	dc.w $803a,$0004
	dc.w $8039,$0000
	dc.w $8011,$001d,$0005,$0000,$1010,$ff00
	dc.w $0004,$070c,$0014,$8000
	dc.w $803a,$0000
	dc.w $0004,$0700,$0004,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0608b0:
	dc.w $8037
	dc.l loc_05be0c
	dc.w $8038
	dc.l loc_0608e0

	dc.w $803a,$00ff
	dc.w $8039,$0014
	dc.w $803d
	dc.w $8045,$0002
	dc.w $8048,$0550,$0002
	dc.w $8048,$00bc,$0000
	dc.w $8043,$000a

	dc.w $8036
	dc.l loc_05cb18

loc_0608e0:
	dc.w $8023
	dc.w $0004,$0805,$0000,$8000
	dc.w $8011,$001d,$0005,$1000,$3018,$ff00
	dc.w $8002,$188d

	dc.w $804c
	dc.l $fffa0000,$fffe3800,$00003000,$00003000

	dc.w $0006,$0806,$0000,$8400
	dc.w $0006,$0807,$000b,$8000
	dc.w $0004,$07ee,$000c,$8000
	dc.w $0004,$070d,$000d,$80ff,$fffc,$0000,$0000
	dc.w $8003,$1870
	dc.w $803c,$0000
	dc.w $803a,$0000
	dc.w $8039,$0000
	dc.w $8011,$001d,$0005,$0000,$1010,$ff00
	dc.w $0002,$070c,$0014,$8000
	dc.w $0002,$0700,$0004,$8000
	dc.w $8001

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_060960:
	dc.w $8037
	dc.l loc_028fca

	dc.w $803d

	dc.w $8038
	dc.l loc_06097a

	dc.w $8048,$0552,$00b4
	dc.w $8036
	dc.l loc_05cb00

loc_06097a:
	dc.w $8040,$0404,$0a0a,$2200

	dc.w $8017,$0080
	dc.l loc_060a46

	dc.w $802c
	dc.w $0003,$08af,$0001,$80ff,$0000,$0002,$0000
	dc.w $0003,$08b0,$0096,$80ff,$0000,$0002,$0000
	dc.w $0004,$08b1,$0096,$80ff,$0000,$0002,$0000
	dc.w $802a,$001d
	dc.w $8045,$0002
	dc.w $0004,$08b2,$0096,$80ff,$0000,$0002,$0000
	dc.w $0006,$08b4,$0096,$80ff,$0000,$0002,$0000
	dc.w $0005,$08b3,$0096,$80ff,$0000,$0002,$0000
	dc.w $0005,$08b0,$0096,$80ff,$0000,$0002,$0000
	dc.w $0004,$08b1,$0096,$80ff,$0000,$0002,$0000
	dc.w $802a,$0020
	dc.w $8045,$0002
	dc.w $0008,$08b2,$0096,$80ff,$0000,$0002,$0000
	dc.w $0004,$08b1,$0096,$80ff,$0000,$0002,$0000
	dc.w $0004,$08b0,$0096,$80ff,$0000,$0002,$0000
	dc.w $0004,$08af,$0001,$80ff,$0000,$0002,$0000
	dc.w $8001

loc_060a46:
	dc.w $8040,$0404,$1012,$2400
	dc.w $0004,$0703,$0097,$80ff,$0000,$0002,$0000
	dc.w $000c,$0704,$0098,$80ff,$0000,$0002,$0000

	dc.w $800a
	dc.l loc_060ae2

	dc.w $0006,$0706,$0098,$80ff,$0000,$0002,$0000
	dc.w $0006,$0707,$0098,$80ff,$0000,$0002,$0000
	dc.w $0006,$0706,$0098,$80ff,$0000,$0002,$0000
	dc.w $0006,$06f9,$0098,$80ff,$0000,$0002,$0000
	dc.w $0006,$070e,$0098,$80ff,$0000,$0002,$0000
	dc.w $0006,$06f9,$0098,$80ff,$0000,$0002,$0000
	dc.w $000c,$06fa,$0098,$80ff,$0000,$0002,$0000
	dc.w $0006,$0703,$0097,$80ff,$0000,$0002,$0000
	dc.w $8001

loc_060ae2:
	dc.w $0006,$073f,$7cff,$0010,$0052,$0f00
	dc.w $0006,$0741,$7cff,$0010,$0052,$0f00
	dc.w $0006,$074b,$7cff,$0010,$0052,$0f00
	dc.w $8001


;end at 060b08