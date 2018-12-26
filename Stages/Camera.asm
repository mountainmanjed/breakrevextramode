;Camera program
	btst #$1,(DDip0,a5) ;camera debug dip
	beq loc_0097b4 ;branch if off

	btst #$0,(-$53d1,a5)
	beq.b loc_0096c0
	subq.w #4,($16,a4)		

loc_0096c0:
	btst #$1,(-$53d1,a5)
	beq.b loc_0096cc
	addq.w #4,($16,a4)

loc_0096cc:
	btst #$2,(-$53d1,a5)
	beq.b loc_0096d8
	subq.w #4,($14,a4)

loc_0096d8:
	btst #$3,(-$53d1,a5)
	beq.b loc_0096e4
	addq.w #4,($14,a4)

loc_0096e4:
	btst #$4,(-$53d1,a5)
	beq.b loc_0096fc
	subq.b #4,($1d,a4)
	bcc.b loc_0096f6 	
	clr.b ($1d,a4)

loc_0096f6:
	move.b ($1d,a4),($1c,a4)

loc_0096fc:
	btst #$5,(-$53d1,a5)
	beq.b loc_009716
	addq.b #4,($1d,a4)
	bcc.b loc_009710
	move.b #$fc,($1d,a4)

loc_009710:
	move.b ($1d,a4),($1c,a4)

;Debug Text Rendering
loc_009716:
	bsr loc_009eb6
	movem.l d0/a0/a1,-(a7)
	move.w #$f300,-(a7)
	move.l #loc_0097ac,-(a7)
	clr.w -(a7)
	move.w #$704f,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1
	
;9740
	move.w ($14,a4),d0
	movem.l d0/d1/d2/d3/a0,-(a7)
	move.w #$f300,-(a7)
	move.w #$4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$70ef,-(a7)
	jsr	loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0/d1/d2/d3/a0

;9762
	movem.l d0/a0/a1,-(a7)
	move.w #$f300,-(a7)
	move.l #loc_0097b2,-(a7)
	clr.w -(a7)
	move.w #$716f,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1

;9784
	move.w ($16,a4),d0
	movem.l d0/d1/d2/d3/a0,-(a7)
	move.w #$f300,-(a7)
	move.w #$4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$718f,-(a7)
	jsr	loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0/d1/d2/d3/a0
	rts

loc_0097ac:
	dc.b "cent:",$00

loc_0097b2:
	dc.b $2c,$00

;Real Camera
loc_0097b4:
	move.w (-$54b2,a5),d0
	btst #$3,d0
	beq loc_009aa6
	tst.b (-$3de,a5)
	beq.b loc_0097de
	move.w ($28,a4),($14,a4)
	move.w ($2a,a4),($16,a4)
	clr.w ($18,a4)
	clr.w ($1a,a4)
	bra loc_009aa2

loc_0097de:
	bsr loc_009b82
	move.w ($20e,a1),d6
	move.w ($20e,a2),d7
	cmp.w d6,d7
	sle d5
	tst.b ($24b,a1)
	bne loc_009808
	tst.b ($24b,a2)
	bne loc_009808
	move.w ($236,a1),d6
	move.w ($236,a2),d7
	bra.b loc_009818 

loc_009808:
	bsr loc_009acc
	exg d6,d7
	exg a1,a2
	bsr loc_009acc
	exg d6,d7
	exg a1,a2

loc_009818:
	move.w ($20e,a1),d4
	sub.w ($20e,a2),d4
	bpl.b loc_009824
	neg.w d4

loc_009824:
	clr.w d2
	move.b ($1c,a4),d2
	add.w d2,d2
	lea loc_00a024(pc),a0
	move.w (a0,d2.w),d2
	moveq #$0,d3
	clr.w d1

	btst #$0,($3,a4)
	beq loc_009844
	addq.w #$1,d1	

loc_009844:
	btst #$2,($3,a4)
	beq loc_009850
	addq.w #$2,d1

loc_009850:
	btst #$1,($3,a4)
	beq loc_00985c
	addq.w #$4,d1

loc_00985c:
	btst #$3,($3,a4)
	beq loc_009868
	addq.w #$8,d1

loc_009868:
	lsl.w #2,d1
	movea.l loc_009870(pc,d1.w),a0
	jmp (a0)

loc_009870:
	dc.l loc_0099a8,loc_009908,loc_009908,loc_009920	
	dc.l loc_0098b0,loc_0098b0,loc_0098c8,loc_0098c8
	dc.l loc_0098bc,loc_0098e8,loc_0098bc,loc_0098e8
	dc.l loc_009988,loc_009988,loc_009988,loc_009988

loc_0098b0:
	move.w ($20e,a1),d3
	sub.w ($14,a4),d3
	bra loc_0099a8

loc_0098bc:
	move.w ($20e,a2),d3
	sub.w ($14,a4),d3
	bra loc_0099a8

loc_0098c8:
	move.w d7,d1
	tst.b d5
	bpl.b loc_0098d0
	neg.w d1

loc_0098d0:
	add.w ($20e,a2),d1
	sub.w ($20e,a1),d1
	asr.w #2,d1
	add.w ($20e,a1),d1
	move.w d1,d3
	sub.w ($14,a4),d3
	bra loc_0099a8

loc_0098e8:
	move.w d6,d1
	tst.b d5
	bmi.b loc_0098f0
	neg.w d1

loc_0098f0:
	add.w ($20e,a1),d1
	sub.w ($20e,a2),d1
	asr.w #2,d1
	add.w ($20e,a2),d1
	move.w d1,d3
	sub.w ($14,a4),d3
	bra loc_0099a8

loc_009908:
	move.w d2,d0
	asr.w #1,d0
	sub.w d6,d0
	sub.w d7,d0
	cmp.w d0,d4
	blt.b loc_009930
	move.w d2,d0
	asr.w #1,d0
	subi.w #$c,d0
	bra loc_009934

loc_009920:
	move.w d2,d0
	asr.w #1,d0
	sub.w d6,d0
	sub.w d7,d0
	cmp.w d0,d4
	blt.b loc_009930
	bra loc_009988

loc_009930:
	move.w d2,d0
	asr.w #2,d0

loc_009934:
	btst #$0,(3,a4)
	beq loc_00995c
	move.w ($20e,a1),d1
	sub.w ($14,a4),d1
	tst.b d5
	bmi.b loc_009954
	sub.w d6,d1
	add.w d0,d1
	bgt.b loc_00995c
	add.w d1,d3
	bra.b loc_00995c

loc_009954:
	add.w d6,d1
	sub.w d0,d1
	blt.b loc_00995c
	add.w d1,d3

loc_00995c:
	btst #$2,(3,a4)
	beq loc_009984
	move.w ($20e,a2),d1
	sub.w ($14,a4),d1
	tst.b d5
	bpl.b loc_00997c
	sub.w d7,d1
	add.w d0,d1
	bgt.b loc_009984
	add.w d1,d3
	bra.b loc_009984

loc_00997c:
	add.w d7,d1
	sub.w d0,d1
	blt.b loc_009984
	add.w d1,d3

loc_009984:
	bra loc_0099a8

loc_009988:
	move.w ($20e,a1),d0
	move.w ($20e,a2),d1
	tst.b d5
	bpl.b loc_00999a
	add.w d6,d0
	sub.w d7,d1
	bra.b loc_00999e

loc_00999a:
	sub.w d6,d0
	add.w d7,d1

loc_00999e:
	add.w d0,d1
	asr.w #1,d1
	sub.w ($14,a4),d1
	move.w d1,d3

loc_0099a8:
	add.w ($14,a4),d3
	move.w d3,d2
	bsr loc_009d40
	move.w ($16,a4),d3
	clr.w d1
	
	btst #$4,(3,a4)
	beq loc_0099c4
	addq.w #1,d1

loc_0099c4:
	btst #$6,(3,a4)
	beq loc_0099d0
	addq.w #2,d1

loc_0099d0:
	btst #$5,(3,a4)
	beq loc_0099dc
	addq.w #4,d1

loc_0099dc:
	btst #$7,(3,a4)
	beq loc_0099e8
	addq.w #8,d1

loc_0099e8:
	lsl.w #2,d1
	movea.l loc_0099f0(pc,d1.w),a0
	jmp (a0)

loc_0099f0:
	dc.l loc_009a9e,loc_009a7c,loc_009a82,loc_009a88
	dc.l loc_009a50,loc_009a50,loc_009a30,loc_009a30
	dc.l loc_009a56,loc_009a40,loc_009a56,loc_009a40
	dc.l loc_009a5c,loc_009a5c,loc_009a5c,loc_009a5c

loc_009a30:
	move.l ($212,a2),d1
	sub.l ($212,a1),d1
	asr.l #3,d1
	add.l ($212,a1),d1
	bra.b loc_009a66
	
loc_009a40:
	move.l ($212,a1),d1
	sub.l ($212,a2),d1
	asr.l #3,d1
	add.l ($212,a2),d1
	bra.b loc_009a66

loc_009a50:
	move.l ($212,a1),d1
	bra.b loc_009a66

loc_009a56:
	move.l ($212,a2),d1
	bra.b loc_009a66

loc_009a5c:
	move.l ($212,a1),d1
	add.l ($212,a2),d1
	asr.l #1,d1

loc_009a66:
	move.l d1,d3
	sub.l ($8,a4),d3
	swap d3
	bsr loc_009aa8
	swap d1
	bsr loc_009dce
	bra loc_009aa2

loc_009a7c:
	move.l ($212,a1),d1
	bra.b loc_009a92

loc_009a82:
	move.l ($212,a2),d1
	bra.b loc_009a92

loc_009a88:
	move.l ($212,a1),d1
	add.l ($212,a2),d1
	asr.l #1,d1

loc_009a92:
	move.l d1,d3
	sub.l ($8,a4),d3
	swap d3
	bsr loc_009aa8

loc_009a9e:
	bsr loc_009d80

loc_009aa2:
	bsr loc_009eb6

loc_009aa6:
	rts


;===================
;
;===================
loc_009aa8:
	asr #1,d3
	move.w d3,d0
	neg d0 
	bmi.b loc_009ac6
	cmpi.w #$80,d0
	ble.b loc_009aba
	move.w #$80,d0

loc_009aba:
	add.w d0,d0
	lea loc_00a53a(pc),a0
	move.w (a0,d0.w),d0
	add.w d0,d3

loc_009ac6:
	add.w ($2a,a4),d3
	rts

;===================
;
;===================
loc_009acc:
	move.w ($23e,a1),d0
	add.w ($23c,a1),d0
	asr.w #1,d0
	add.w ($20e,a1),d0
	cmp.w ($14,a4),d0
	bmi.b loc_009aea
	tst.b ($208,a1)
	bmi.b loc_009af6
	bra.b loc_009af2
	bra.b loc_009af2

loc_009aea:
	tst.b ($208,a1)
	bmi.b loc_009af2
	bra.b loc_009af6

loc_009af2:
	move.w ($23c,a4),d6

loc_009af6:
	move.w ($23e,a4),d6
	rts

;===================
;Shrink Render?
;===================
loc_009afc:
	move.l a0,-(a7)
	clr.w d0
	move.b ($1c,a4),d0
	lsr.b d1,d0
	move.b d0,(8,a0)
	add.w d0,d0
	lea loc_00a024(pc),a0
	move.w (a0,d0.w),d2
	movea.l (a7),a0
	clr.w d0
	move.b ($1d,a4),d0
	lsr.b d1,d0
	move.b d0,($9,a0)
	add.w d0,d0
	lea loc_00a226(pc),a0
	move.w (a0,d0.w),d3
	movea.l (a7)+,a0
;9b2e
	addq.w #1,d2
	lsr.w #1,d2
	addq.w #1,d3
	lsr.w #1,d3
	move.w ($14,a4),d0 
	sub.w ($28,a4),d0

loc_009b3e:
	asr.w d6,d0
	add.w d4,d0
	sub.w d2,d0
	move.w d0,($0,a0)
	move.w ($16,a4),d0
	sub.w ($2a,a4),d0
	add.w ($6,a4),d0
	asr.w d7,d0
	add.w d5,d0
	sub.w d3,d0
	move.w d0,(4,a0)
	rts

;===================;
; Unnamed Zoom Func ;
;===================;
loc_009b60:
	sub.w (-$45e0,a5),d3
	clr.w d0
	move.b ($1c,a4),d0
	not.b d0
	addq.w #1,d0
	muls.w d0,d2
	asl.l #8,d2
	clr.w d0
	move.b ($1d,a4),d0
	not.b d0
	addq.w #1,d0
	muls.w d0,d3
	asl.l #8,d3
	rts

;===================
;
;===================
loc_009b82:
	btst #$4,($2b4,a1)
	bne loc_009bae

	btst #$5,($2b4,a2)
	bne loc_009bae

	btst #$4,($2b4,a2)
	bne loc_009bc6

	btst #$5,($2b4,a1)
	bne loc_009bc6
	bra loc_009c72

loc_009bae:
	btst #$4,($2b4,a2)
	bne loc_009d3e
	btst #$5,($2b4,a1)
	bne loc_009d3e
	bra loc_009c1c

loc_009bc6:
	st d3
	move.w ($20e,a1),d2
	sub.w (-$45d2,a5),d2
	bpl loc_009bd8
	neg.w d2
	sf d3

loc_009bd8:
	add.w ($236,a1),d2
	move.w d2,d1
	addi.w #$18,d1
	sub.w loc_00a024(pc),d1
	blt loc_009d3e
	asr.w #1,d0
	addq.w #1,d0
	tst.b d3
	bmi loc_009c08
	bset #$2,($246,a1)
	add.w d0,($20e,a1)
	move.w #$8000,($210,a1)
	bra loc_009c18

loc_009c08:
	bset #$3,($246,a1)
	sub.w d0,($20e,a1)
	move.w #$8000,($210,a1)

loc_009c18:
	bra loc_009d3e

loc_009c1c:
	move.w ($20e,a2),d2
	sub.w (-$45d2,a5),d2
	st d3
	bpl loc_009c2e
	neg.w d2
	sf d3

loc_009c2e:
	add.w ($236,a2),d2
	move.w d2,d1
	addi.w #$18,d1
	sub.w loc_00a024(pc),d1
	blt loc_009d3e
	asr.w #1,d0
	addq.w #1,d0
	tst.b d3
	bmi loc_009c5e
	bset #$2,($246,a2)
	add.w d0,($20e,a2)
	move.w #$8000,($210,a2)
	bra loc_009c6e

loc_009c5e:
	bset #$3,($246,a2)
	sub.w d0,($20e,a2)
	move.w #$8000,($210,a2)

loc_009c6e:
	bra loc_009d3e

loc_009c72:
	move.w ($20e,a1),d2
	sub.w (-$45d2,a5),d2
	move.w ($20e,a2),d3
	sub.w (-$45d2,a5),d3
	cmp.w d2,d3
	bgt loc_009c98
	add.w ($236,a1),d2
	sub.w ($236,a2),d3
	move.w d2,d1
	sub.w d3,d1
	bra loc_009ca4

loc_009c98:
	sub.w ($236,a1),d2
	add.w ($236,a2),d3
	move.w d3,d1
	sub.w d2,d1

loc_009ca4:
	addi.w #$18,d1
	sub.w loc_00a024(pc),d1
	blt loc_009d3e
	move.w loc_00a024(pc),d0
	subi.w #$18,d0
	asr.w #1,d0
	addq.w #1,d0
	cmp.w d2,d3
	bge loc_009cfc
	bset #$3,($246,a1)
	bset #$2,($246,a2)
	move.w #$8000,($210,a1)
	move.w #$8000,($210,a2)
	sub.w d0,d2
	blt loc_009cee
	add.w d0,d3
	ble loc_009d36
	sub.w d1,($20e,a1)
	bra loc_009d3e

loc_009cee:
	add.w d0,d3
	bgt loc_009d3e
	add.w d1,($20e,a2)
	bra loc_009d3e

loc_009cfc:
	bset #$2,($246,a1)
	bset #$3,($246,a2)
	move.w #$8000,($210,a1)
	move.w #$8000,($210,a2)
	add.w d0,d2
	bgt loc_009d28
	sub.w d0,d3
	bge loc_009d36
	add.w d1,($20e,a1)
	bra loc_009d3e

loc_009d28:
	sub.w d0,d3
	blt loc_009d3e
	sub.w d1,($20e,a2)
	bra loc_009d3e

loc_009d36:
	sub.w d2,($20e,a1)
	sub.w d3,($20e,a2)

loc_009d3e:
	rts

;===================
;
;===================
loc_009d40:
	sub.w ($14,a4),d2
	bmi loc_009d5e
	move.w d2,d4
	move.w ($18,a4),d5
	move.w #$20,d7
	bsr loc_009e46
	move.w d5,($18,a4)
	bra loc_009d76

loc_009d5e:
	move.w d2,d4
	neg.w d4
	move.w ($18,a4),d5
	neg.w d5
	move.w #$20,d7
	bsr loc_009e46
	neg.w d5
	move.w d5,($18,a4)

loc_009d76:
	move.w ($18,a4),d0
	add.w d0,($14,a4)
	rts

;===================
;
;===================
loc_009d80:
	sub.w ($16,a4),d3
	bmi loc_009d9e
	move.w d3,d4
	move.w ($1a,a4),d5
	move.w #$10,d7
	bsr loc_009e46
	move.w d5,($1a,a4)
	bra loc_009db6

loc_009d9e:
	move.w d3,d4
	neg.w d4
	move.w ($1a,a4),d5
	neg.w d5
	move.w #$10,d7
	bsr loc_009e46
	neg.w d5
	move.w d5,($1a,a4)

loc_009db6:
	move.w ($1a,a4),d0
	add.w d0,($16,a4)	
	move.w ($16,a4),d0
	sub.w ($2a,a4),d0
	ble.b loc_009dcc
	sub.w d0,($16,a4)

loc_009dcc:
	rts

;===================
;
;===================
loc_009dce:
	move.w d1,-(a7)
	sub.w ($16,a4),d3
	bmi loc_009dee
	move.w d3,d4
	move.w ($1a,a4),d5
	move.w #$10,d7
	bsr loc_009e46
	move.w d5,($1a,a4)
	bra loc_009e06

loc_009dee:
	move.w d3,d4
	neg.w d4
	move.w ($1a,a4),d5
	neg.w d5
	move.w #$10,d7
	bsr loc_009e46
	neg.w d5
	move.w d5,($1a,a4)
	
loc_009e06:
	move.w (a7)+,d1
	move.w ($1a,a4),d0
	add.w d0,($16,a4)
	move.w ($16,a4),d0
	sub.w ($2a,a4),d0
	ble.b loc_009e22
	sub.w d0,($16,a4)
	bra loc_009e44

loc_009e22:
	move.w ($16,a4),d0
	addi.w #$68,d0
	sub.w d1,d0
	bge.b loc_009e36
	sub.w d0,($16,a4)
	bra loc_009e44

loc_009e36:
	move.w ($16,a4),d0
	addq.w #8,d0
	sub.w d1,d0
	ble.b loc_009e44
	sub.w d0,($16,a4)

loc_009e44:
	rts

;===================
;
;===================
loc_009e46:
	cmpi.w #$1,d4
	ble loc_009eae
	tst.w d5
	bmi loc_009e96
	move.w d5,d0
	move.w d0,d1
	addq.w #1,d0
	muls.w d1,d0
	asr.l #1,d0
	cmp.w d4,d0
;9e60
	blt loc_009e82
	subq.w #1,d0
	cmp.w d4,d0
	ble loc_009eac
	addq.w #1,d0	
	asr.l #1,d0
	cmp.w d4,d0
	bge loc_009e7c
	subq.w #1,d5
	bra loc_009eac

loc_009e7c:
	subq.w #2,d5	
	bra loc_009eac

loc_009e82:
	addq.w #1,d0
	cmp.w d4,d0
	bge loc_009eac
	subq.w #1,d0
	add.w d0,d0
	cmp.w d4,d0
	ble.b loc_009ea2
	addq.w #1,d5
	bra.b loc_009ea4
	
loc_009e96:
	addq.w #2,d5
	cmp.w d4,d5
	ble loc_009ea4
	move.w d4,d5
	bra.b loc_009ea4

loc_009ea2:
	addq.w #1,d5

loc_009ea4:
	cmp.w d7,d5
	ble loc_009eac
	move.w d7,d5

loc_009eac:
	rts

loc_009eae:
	move d4,d5
	rts

;\/\/\/\/\/\/\/\/\/
;Is this even used?
loc_009eb2:
	clr.w d5
	rts

;===================
;Camera Restriction
;===================
loc_009eb6:
	clr.w d2
	move.b ($1c,a4),d2
	add.w d2,d2
	lea loc_00a024(pc),a0
	move.w (a0,d2.w),d2
 	move.w ($14,a4),d1
	btst #$1,(DDip0,a5)
	bne loc_009ee2
	move.w ($26,a4),d0
	sub.w ($24,a4),d0
	cmp.w d0,d2
	ble loc_009ef2

loc_009ee2:
	move.w d2,d0
	lsr.w #1,d0
	neg.w d0
	add.w d1,d0
	move.w d0,d3
	add.w d2,d3
	bra loc_009f1e

loc_009ef2:
	move.w d2,d0
	addq.w #1,d0
	asr.w #1,d0
	add.w d1,d0
	cmp.w ($26,a4),d0
	ble.b loc_009f08
	sub.w d0,d1
	move.w ($26,a4),d0
	add.w d0,d1

loc_009f08:
	move.w d0,d3
	sub.w d2,d0
	cmp.w ($24,a4),d0
	bge.b loc_009f1e
	sub.w d0,d3
	sub.w d0,d1
	move.w ($24,a4),d0
	add.w d0,d3
	add.w d0,d1
	
loc_009f1e:
	move.w d1,($14,a4)
	move.w d0,($10,a4)
	move.w d3,($12,a4)
	move.w d0,(-$44f6,a5)
	clr.w d2
	move.b ($1d,a4),d2
	add.w d2,d2
	lea loc_00a226(pc),a0
	move.w (a0,d2.w),d2
	move.w ($16,a4),d1
	btst #$1,(DDip0,a5)
	bne loc_009f5a
	move.w ($22,a4),d0
	sub.w ($20,a4),d0
	cmp.w d0,d2
	ble loc_009f6a

loc_009f5a:
	move.w d2,d0
	lsr.w #1,d0
	neg.w d0
	add.w d1,d0
	move.w d0,d3
	add.w d2,d3
	bra loc_009f96

loc_009f6a:
	move.w d2,d0
	addq.w #1,d0 
	asr.w #1,d0
	add.w d1,d0
	cmp.w ($22,a4),d0
	ble.b loc_009f80
	sub.w d0,d1
	move.w ($22,a4),d0
	add.w d0,d1

loc_009f80:
	move.w d0,d3
	sub.w d2,d0
	cmp.w ($20,a4),d0
	bge.b loc_009f96
	sub.w d0,d1
	sub.w d0,d3
	move.w ($20,a4),d0
	add.w d0,d3
	add.w d0,d1
	
loc_009f96:
	move.w ($4,a4),d2
	beq.b loc_009fac
	subq.w #1,($4,a4)
	cmpi.w #$8,d2
	blt.b loc_009fac
	andi.w #$3,d2
	addq.w #8,d2	

loc_009fac:
	lea loc_00a52a(pc),a0
	move.b (a0,d2.w),d2
	ext.w d2
	move.w d2,($6,a4)
	move.w d1,($16,a4)	
	move.w d0,($c,a4)
	move.w d3,($e,a4)
	add.w d2,d0
	move.w d0,(-$44f2,a5)
	move.w ($1c,a4),(-$44ee,a5)
	rts

;===================
;
;===================
loc_009fd4:
	movem.l d0/a0/a4,-(a7)
	tst.w (-$42c0,a5)
	bne.b loc_009fe6
	jsr loc_004058
	bra.b loc_00a00e

loc_009fe6:
	movem.l d0/d7/a0,-(a7)
	move.w (-$42c0,a5),d0
	move.w d0,d7
	subq.w #2,d7
	bmi.b loc_00a004
	lea (-$50c6,a5),a0
	adda.w d0,a0
	adda.w d0,a0
	moveq #$0,d0

loc_009ffe:
	move.w d0,-(a0)
	dbra d7,loc_009ffe

loc_00a004:
	movem.l (a7)+,d0/d7/a0
	jsr loc_00409a

loc_00a00e:	
	movem.l (a7)+,d0/a0/a4
	rts

;===================;
loc_00a014:
	movem.l d0/a0/a4,-(a7)
	jsr loc_00409a
	movem.l (a7)+,d0/a0/a4
	rts

;///////////////////////////////////////;
;Data Data Data Data Data Data Data Data;
;///////////////////////////////////////;
loc_00a024:
	dc.w $0140,$0141,$0143,$0144,$0145,$0146,$0148,$0149
	dc.w $014a,$014c,$014d,$014e,$0150,$0151,$0153,$0154
	dc.w $0155,$0157,$0158,$015a,$015b,$015d,$015e,$0160
	dc.w $0161,$0163,$0164,$0166,$0167,$0169,$016a,$016c
	dc.w $016e,$016f,$0171,$0173,$0174,$0176,$0178,$017a
	dc.w $017b,$017d,$017f,$0181,$0182,$0184,$0186,$0188
	dc.w $018a,$018c,$018e,$0190,$0192,$0194,$0196,$0198
	dc.w $019a,$019c,$019e,$01a0,$01a2,$01a4,$01a6,$01a8
	dc.w $01ab,$01ad,$01af,$01b1,$01b4,$01b6,$01b8,$01bb
	dc.w $01bd,$01c0,$01c2,$01c5,$01c7,$01ca,$01cc,$01cf
	dc.w $01d1,$01d4,$01d7,$01da,$01dc,$01df,$01e2,$01e5
	dc.w $01e8,$01eb,$01ed,$01f0,$01f4,$01f7,$01fa,$01fd
	dc.w $0200,$0203,$0206,$020a,$020d,$0211,$0214,$0217
	dc.w $021b,$021f,$0222,$0226,$022a,$022d,$0231,$0235
	dc.w $0239,$023d,$0241,$0245,$0249,$024d,$0252,$0256
	dc.w $025a,$025f,$0263,$0268,$026d,$0271,$0276,$027b
;a124
	dc.w $0280,$0285,$028a,$028f,$0295,$029a,$029f,$02a5
	dc.w $02ab,$02b0,$02b6,$02bc,$02c2,$02c8,$02cf,$02d5
	dc.w $02db,$02e2,$02e9,$02f0,$02f7,$02fe,$0305,$030c
	dc.w $0314,$031b,$0323,$032b,$0333,$033b,$0344,$034d
	dc.w $0355,$035e,$0367,$0371,$037a,$0384,$038e,$0398
	dc.w $03a3,$03ae,$03b9,$03c4,$03cf,$03db,$03e7,$03f3
	dc.w $0400,$040d,$041a,$0428,$0436,$0444,$0453,$0462
	dc.w $0472,$0482,$0492,$04a3,$04b5,$04c7,$04d9,$04ec
	dc.w $0500,$0514,$0529,$053f,$0555,$056c,$0584,$059d
	dc.w $05b7,$05d1,$05ed,$060a,$0627,$0646,$0666,$0688
	dc.w $06ab,$06cf,$06f5,$071c,$0746,$0771,$079e,$07ce
	dc.w $0800,$0835,$086c,$08a6,$08e4,$0925,$0969,$09b2
	dc.w $0a00,$0a53,$0aab,$0b09,$0b6e,$0bda,$0c4f,$0ccd
	dc.w $0d55,$0dea,$0e8c,$0f3d,$1000,$10d8,$11c7,$12d3
	dc.w $1400,$1555,$16db,$189e,$1aab,$1d17,$2000,$238e
	dc.w $2800,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff

loc_00a226:
	dc.w $00e0,$00e1,$00e2,$00e3,$00e4,$00e4,$00e5,$00e6
	dc.w $00e7,$00e8,$00e9,$00ea,$00eb,$00ec,$00ed,$00ee
	dc.w $00ef,$00f0,$00f1,$00f2,$00f3,$00f4,$00f5,$00f6
	dc.w $00f7,$00f8,$00f9,$00fa,$00fc,$00fd,$00fe,$00ff
	dc.w $0100,$0101,$0102,$0103,$0105,$0106,$0107,$0108
	dc.w $0109,$010b,$010c,$010d,$010e,$0110,$0111,$0112
	dc.w $0114,$0115,$0116,$0118,$0119,$011a,$011c,$011d
	dc.w $011f,$0120,$0122,$0123,$0125,$0126,$0128,$0129
	dc.w $012b,$012c,$012e,$012f,$0131,$0133,$0134,$0136
	dc.w $0138,$0139,$013b,$013d,$013f,$0140,$0142,$0144
	dc.w $0146,$0148,$014a,$014b,$014d,$014f,$0151,$0153
	dc.w $0155,$0157,$0159,$015c,$015e,$0160,$0162,$0164
	dc.w $0166,$0169,$016b,$016d,$0170,$0172,$0174,$0177
	dc.w $0179,$017c,$017e,$0181,$0183,$0186,$0189,$018b
	dc.w $018e,$0191,$0194,$0197,$019a,$019d,$01a0,$01a3
	dc.w $01a6,$01a9,$01ac,$01af,$01b2,$01b6,$01b9,$01bd
	dc.w $01c0,$01c4,$01c7,$01cb,$01ce,$01d2,$01d6,$01da
	dc.w $01de,$01e2,$01e6,$01ea,$01ee,$01f3,$01f7,$01fb
	dc.w $0200,$0205,$0209,$020e,$0213,$0218,$021d,$0222
	dc.w $0227,$022d,$0232,$0238,$023d,$0243,$0249,$024f
	dc.w $0255,$025c,$0262,$0269,$026f,$0276,$027d,$0284
	dc.w $028c,$0293,$029b,$02a3,$02ab,$02b3,$02bb,$02c4
	dc.w $02cd,$02d6,$02df,$02e9,$02f3,$02fd,$0307,$0312
	dc.w $031c,$0328,$0333,$033f,$034b,$0358,$0365,$0372
	dc.w $0380,$038e,$039d,$03ac,$03bc,$03cc,$03dd,$03ee
	dc.w $0400,$0413,$0426,$043a,$044f,$0464,$047b,$0492
	dc.w $04ab,$04c4,$04df,$04fa,$0517,$0536,$0555,$0577
	dc.w $059a,$05be,$05e5,$060e,$0639,$0666,$0697,$06ca
	dc.w $0700,$073a,$0777,$07b9,$0800,$084c,$089e,$08f6
	dc.w $0955,$09bd,$0a2f,$0aab,$0b33,$0bca,$0c72,$0d2d
	dc.w $0e00,$0eef,$1000,$113b,$12ab,$145d,$1666,$18e4
	dc.w $1c00,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff

loc_00a428:
	dc.b $01,$01,$02,$02,$02,$02,$02,$02,$03,$03,$03,$03,$03,$03,$03,$03
	dc.b $03,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
	dc.b $04,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$01,$01,$01,$01,$01,$01
;a468
	dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
;a4a8
	dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
;a4e8
	dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	dc.b $01,$00


loc_00a52a:
	dc.b $00,$01,$00,$fe,$ff,$03,$02,$fe,$fe,$03,$03,$fe,$fe,$03,$03,$fe

loc_00a53a:
	dc.w $0000,$0001,$0002,$0003,$0003,$0004,$0005,$0006
	dc.w $0006,$0007,$0008,$0009,$0009,$000a,$000b,$000c
	dc.w $000c,$000d,$000e,$000f,$000f,$0010,$0011,$0011
	dc.w $0012,$0013,$0013,$0014,$0015,$0015,$0016,$0017
;a57a
	dc.w $0017,$0018,$0019,$0019,$001a,$001b,$001b,$001c
	dc.w $001d,$001d,$001e,$001e,$001f,$0020,$0020,$0021
	dc.w $0021,$0022,$0022,$0023,$0024,$0024,$0025,$0025
	dc.w $0026,$0026,$0027,$0027,$0028,$0028,$0029,$0029
;a5ba
	dc.w $002a,$002a,$002b,$002b,$002c,$002c,$002d,$002d
	dc.w $002e,$002e,$002f,$002f,$0030,$0030,$0031,$0031
	dc.w $0031,$0032,$0032,$0033,$0033,$0033,$0034,$0034
	dc.w $0034,$0035,$0035,$0035,$0036,$0036,$0036,$0037
;a5fa
	dc.w $0037,$0037,$0038,$0038,$0038,$0039,$0039,$0039
	dc.w $003a,$003a,$003a,$003b,$003b,$003b,$003c,$003c
	dc.w $003c,$003c,$003d,$003d,$003d,$003d,$003e,$003e
	dc.w $003e,$003e,$003f,$003f,$003f,$003f,$0040,$0040

	dc.w $0040

;a63c
