;Breakers Revenge Disasm
;By Jed
;
	include "ng.constants.asm"
	include "gamevalues.asm"

VectorTable:
	dc.l	$0010F300, BiosStartup, BusError, AddrsError;	$00
	dc.l	IllInstrct, BasicError, BasicError, BasicError;	$10
	dc.l	PrivViolat, TraceInstr, BasicError, BasicError;	$20
	dc.l	BasicError, BasicError, BasicError, PrepIntrpt;	$30
	dc.l	BasicError, BasicError, BasicError, BasicError;	$40
	dc.l	BasicError, BasicError, BasicError, BasicError;	$50
	dc.l	SpurIntrpt, loc_001f0c, loc_0020ca, loc_0020cc;	$60
	dc.l	BasicError, BasicError, BasicError, BasicError;	$70

	dc.l	loc_000690, loc_001caa, loc_001c5c, loc_001c80;	$80
	dc.l	loc_001d3e, loc_001d74, loc_001dc0, loc_001d96;	$90
	dc.l	loc_001df2, loc_001e36, loc_001e82, loc_001ece;	$A0
	dc.l	loc_001F0A, loc_000690, loc_000690, loc_000690;	$B0

	dc.l	$01F801B2, $06EDB03D, $3230FE32, $34FE3235;	$C0
	dc.l	$FE3E0332, $29FE32B6, $FECD050B, $CD370BCD;	$D0
	dc.l	$1E0B1130, $27CD182B, $110110CD, $182B1100;	$E0
	dc.l	$1CCD182B, $3E24DB08, $3E09DB0A, $2145F311;	$F0


	dc.b "NEO-GEO",$10;000100

GAMEnumber:
    dc.w $0245        ;NGH
    dc.l $00200000    ;P ROM size
    dc.l $00100000    ;debug DIPs pointer
    dc.w $006C        ;size of DIP data
    dc.b $01          ;let the BIOS show the logo
    dc.b $01          ;first tile of the logo
    dc.l JPConfig     ;Japanese config menu pointer
    dc.l WRConfig     ;US config menu pointer
    dc.l WRConfig     ;European config menu pointer

    jmp        USER;loc_000122
    jmp        PLAYER_START
    jmp        DEMO_END
    jmp        COIN_SOUND

loc_00013a:
	dc.w $feb8,$28f5,$21b0,$fe34,$e63f,$5f16,$0021,$4afe
	dc.w $197e,$7232,$3dfe,$32b4,$fecd,$bb01,$fb21,$b4fe
	dc.w $3ab7,$feb7,$200c,$3ab5,$feb7,$2803,$3ab3,$fe86
	dc.w $180a,$3ab3,$feb7,$7e20,$033a,$b7fe,$32b8,$fe32
	dc.w $c0fe,$32d0,$fe32,$e0fe,$0000,$0186

;Neo Geo boot up after bios USER function is in it
BOOTUP:
	include "Boot/bootup.asm"

;Start of the real stuff
loc_00185e:
	bclr #$7,$10fd80.l
	move.b #$1,$10fdaf.l
	move.w #$0,$3c0006.l
	clr.w $10007e.l
	st $102c1e.l
	move.w #$7,$3c000c.l
	move #$2000,sr
	bra loc_0018cc

loc_001892:
	bclr #$7,$10fd80.l
	move.b #$1,$10fec5.l
	move.b #$1,$10fdaf.l
	move.w #$0,$3c0006.l
	move.w #$1,$10007e.l
	st $102c1e.l
	move.w #$7,$3c000c.l
	move #$2000,sr

loc_0018cc:
	lea $108000.l,a5
	jsr loc_001a4a;Attract Mode
	jsr loc_0070f4;initz80
	jsr loc_0071b2
	jsr loc_0039fe
	bset #$7,$10fd80.l
	jmp loc_001c1c
	
PLAYER_START:;18f8
	tst.b $102c1e.l
	beq loc_00190c
	move.b #$0,$10fdb4.l
	rts

loc_00190c:
	tst.b $10fd82.l
	beq loc_001948
	move.b $10fdb4.l,d0
	andi.w #$3,d0
	beq loc_001940
	jsr loc_0019d0(pc)
	tst.b d0
	beq loc_001940
	cmpi.b #$2,$10fdaf.l
	beq.b loc_001940
	move.b #$2,$10fdaf.l

loc_001940:
	move.b d0,$10fdb4.l
	rts

loc_001948:
	move.b $10fdb4.l,d1
	andi.w #$3,d1
	moveq #$0,d0
	btst #$0,d1
	beq loc_001970
	tst.b $100083.l
	bne.b loc_00196c
	tst.w $100084.l
	beq.b loc_001970

loc_00196c:
	ori.b #$1,d0

loc_001970:
	btst #$1,d1
	beq loc_00198c
	tst.b $100083.l
	bne.b loc_001988
	tst.w $100086.l
	beq.b loc_00198c

loc_001988:
	ori.b #$2,d0

loc_00198c:
	tst.b d0
	beq loc_0019c8
	jsr loc_0019d0(pc)
	tst.b $100083.l
	bne.b loc_0019b6
	btst #$0,d0
	beq.b loc_0019aa
	subq.w #1, $100084.l

loc_0019aa:
	btst #$1,d0
	beq.b loc_0019b6
	subq.w #1,$100086.l

loc_0019b6:
	cmpi.b #$2,$10fdaf.l
	beq.b loc_0019c8
	move.b #$2,$10fdaf.l

loc_0019c8:
	move.b d0,$10fdb4.l
	rts

loc_0019d0:
	lea $100080.l,a0
	tst.b $100082.l
	beq loc_0019e8
	bgt loc_0019f8
	bra loc_001a3c

loc_0019e8:
	moveq #$0,d1
	bsr loc_001a22
	addq.w #1,d1
	bsr loc_001a22
	bra loc_001a20
	
loc_0019f8:
	tst.b (a0)
	bne loc_001a3c
	tst.b ($1,a0)
	bne loc_001a3c
	moveq #$0,d1
	bsr loc_001a22
	beq loc_001a16
	andi.w #$1,d0
	bra.b loc_001a20

loc_001a16:
	addq.w #1,d1
	bsr loc_001a22
	beq loc_001a3c

loc_001a20:
	rts

loc_001a22:
	btst d1,d0
	beq.b loc_001a36
	tst.b (a0,d1.w)
	bne loc_001a36
	move.b #$1,(a0,d1.w)
	rts

loc_001a36:
	bclr d1,d0
	cmp.w d0,d0
	rts

loc_001a3c:
	clr.b d0
	rts

DEMO_END:;1a40
	rts

COIN_SOUND:;1a42
	jsr loc_007114
	rts

loc_001a4a:
	clr.w $100080.l
	clr.w $10007c.l
	clr.b $100082.l
	clr.b $100083.l
	clr.w (DDip0,a5)
	tst.w $10fe80.l
	beq loc_001a78
	move.w $100000.l,(DDip0,a5)

loc_001a78:
	move.b $10fd83.l,d0
	beq.b loc_001a9c
	cmpi.b #$1,d0
	beq.b loc_001aa2
	btst #$6,DDip1(a5)
	bne.b loc_001aa8
	move.w $3c0006.l,d0
	btst #$3,d0
	bne.b loc_001aa8
	bra.b loc_001aae

loc_001a9c:
	move.w #$1,d0
	bra.b loc_001ab2

loc_001aa2:
	move.w #$2,d0
	bra.b loc_001ab2

loc_001aa8:
	move.w #$3,d0
	bra.b loc_001ab2

loc_001aae:
	move.w #$4,d0

loc_001ab2:
	move.w d0,(-$7f94,a5)
	move.b $10fd83.l,(-$7f85,a5)
	tst.b $10fd82.l
	beq loc_001b60
	tst.b $10fef8.l
	beq loc_001ad8
	move.b #$1,(-$7f85,a5)

loc_001ad8:
	move.b $10fd8a.l,(-$7f8e,a5)
	move.b $10fd90.l,(-$7f8a,a5)
	move.b $10fd8b.l,d0
	andi.w #$7,d0
	move.w d0,(DifficultyLvl,a5)
	move.b $10fd8c.l,d0
	ext.w d0
	jsr loc_001c08(pc)
	move.w d0,(-$7f90,a5)
	move.b $10fd8d,(StanimaSetting,a5)
	move.b $10fd8e,(-$7f8c,a5)
	move.b $10fd8f,(-$7f8b,a5)
	move.l #$4050607,(-$7f9c,a5)
	move.l #$4050607,(-$7f98,a5)
	btst #$0,$10fd92.l
	seq d0
	neg.b d0
	move.b d0,(-$7f89,a5)
	btst #$1,$10fd92.l
	sne d0
	neg.b d0
	move.b d0,(-$7f88,a5)
	move.b $10fd91.l,(-$7f87,a5)
	move.b $10fd93.l,(-$7f86,a5)
	rts

loc_001b60:
	move.b #$0,(-$7f8e,a5)
	move.b #$0,(-$7f8a,a5)
	moveq #$0,d0
	move.b (-$7fa0,a5),d0
	move.w d0,(DifficultyLvl,a5)
	move.b (-$7f9f,a5),d0
	ext.w d0
	jsr loc_001c08(pc)
	move.w d0,(-$7f90,a5)
	move.b #$2,(StanimaSetting,a5)
	move.b (-$7f9e,a5),(-$7f8c,a5)
	move.b (-$7f9d,a5),(-$7f8b,a5)
	move.b #$1,(-$7f89,a5)
	move.b #$0,(-$7f88,a5)
	move.b #$0,(-$7f87,a5)
	move.b #$0,(-$7f86,a5)
	cmpi.w #$1,(-$7f94,a5)
	beq loc_001bbe
	move.b #$1,(-$7f86,a5)

loc_001bbe:
	move.w #$4,(-$7f7c,a5)
	move.w #$4,(-$7f7a,a5)
	rts
	
loc_001bcc:
	jsr loc_00d6c0
	sf (-$7faa,a5)
	sf (-$7fa9,a5)
	sf (-$7fa8,a5)
	move.b #$3,(-$7fa0,a5)
	move.b #$2,(-$7f9f,a5)
	move.b #$1,(-$7f9e,a5)
	move.b #$1,(-$7f9d,a5)
	move.l #$4050607,(-$7f9c,a5)
	move.l #$4050607,(-$7f98,a5)
	rts

loc_001c08:
	add.w d0,d0
	move loc_001c10(pc,d0.w),d0
	rts	

loc_001c10:
	dc.w $0035,$0029,$0021,$0019,$0013,$000b

loc_001c1c:
	ori #$700,sr
	movem.l loc_0020e2,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4/a5/a6/a7
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4/a5/a6,-(a7)
	clr.w (-$54b2,a5)
	move.b #$ff,(-$54b4,a5)
	move.b #$ff,(-$54b3,a5)
	clr.w (-$54b0,a5)
	move.l #$0,-(a7)
	move.w #$0,-(a7)
	pea loc_008b38;Gameboot
	trap #$1
	lea ($a,a7),a7
	bra loc_002032
	dc.w $40e7

loc_001c5c:
	ori #$700,sr
	movem.l d0/d1,-(a7)
	move.w ($e,a7),d0
	move.w (-$54b0,a5),d1
	bclr d1,d0
	andi.w #$fffe,d0
	not.w d0
	and.w d0,(-$54b2,a5)
	movem.l (a7)+,d0/d1
	rte
	dc.w $40e7

loc_001c80:
	ori #$700,sr
	move.w (-$54b2,a5),d0
	move.w (-$54b0,a5),d1
	beq loc_001c9a
	bclr d1,d0
	move.w d0,(-$54b2,a5)
	bra loc_001f8e

loc_001c9a:
	st (-$53e2,a5)
	andi #$f0ff,sr
	jmp $c00444.l
	dc.w $40e7

loc_001caa:
	ori #$700,sr
	movem.l d6/d7/a0/a1,-(a7)
	lea (-$54b2,a5),a1
	move.w (a1),d6
	move.w ($1a,a7),d0
	bne.b loc_001cce

loc_001cbe:
	btst d0,d6
	beq.b loc_001ce2
	addq.w #1,d0
	cmpi.w #$10,d0
	bcs.b loc_001cbe
	moveq #$0,d0
	bra.b loc_001d36

loc_001cce:
	cmpi.w #$10,d0
	bcs.b loc_001ce2
	moveq #$f,d0

loc_001cd6:
	btst d0,d6
	beq.b loc_001ce2
	dbra d0,loc_001cd6
	moveq #$0,d0
	bra.b loc_001d36

loc_001ce2:
	move.w d0,d7
	bset d7,d6
	beq.b loc_001cec
	moveq #$0,d0
	bra.b loc_001d36
	
loc_001cec:
	move.w d6,(a1)
	add.w d7,d7
	add.w d7,d7
	move.w (-$54b0,a5),d6
	swap d6
	clr.w d6
	move.l d6,($4c,a1,d7.w)
	lea loc_002122(pc),a1
	movea.l (a1,d7.w),a1
	move.l ($1c,a7),-(a1)
	move.l #$00001c80,-(a1)
	move.l ($16,a7),-(a1)
	move.w #$2000,-(a1)
	movem.l a2/a3/a4/a5/a6,-(a1)
	move.l ($c,a7),-(a1)
	move.l ($8,a7),-(a1)
	move.l ($4,a7),-(a1)
	move.l (a7),-(a1)
	movem.l d0/d1/d2/d3/d4/d5,-(a1)
	lea (-$54aa,a5),a0
	move.l a1,(a0,d7.w)

loc_001d36:
	movem.l (a7)+,d6/d7/a0/a1
	rte
	dc.w $40e7

loc_001d3e:
	ori #$700,sr
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4/a5/a6,-(a7)
	movea.l $102b52.l,a6
	move.l a7,(a6)
	move.w (-$54b0,a5),d1
	move.w d1,d0
	ori.w #$a000,d0
	swap d0
	move.w ($42,a7),d0
	movea.l (-$546a,a5),a4
	move.l d0,(a4)
	lea (-$5426,a5),a4
	asl.w #2,d1
	clr.l (a4,d1.w)
	bra	loc_001f8e
	dc.w $40e7

loc_001d74:
	ori #$700,sr
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4/a5/a6,-(a7)
	movea.l $102b52.l,a6
	move.l a7,(a6)
	movea.l (-$546a,a5),a4
	move.w (a4),d0
	andi.w #$1fff,d0
	move.w d0,(a4)
	bra	loc_001f8e
	dc.w $40e7

loc_001d96:
	ori #$700,sr
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4/a5/a6,-(a7)
	movea.l $102b52.l,a6
	move.l a7,(a6)
	move.w (-$54b0,a5),d0
	swap d0
	move.w ($42,a7),d0
	bset #$1e,d0
	movea.l (-$546a,a5),a4
	move.l d0,(a4)
	bra loc_001f8e
	dc.w $40e7
	
loc_001dc0:
	ori #$700,sr
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4/a5/a6,-(a7)
	movea.l $102b52.l,a6
	move.l a7,(a6)
	movea.l (-$546a,a5),a3
	move.w (-$54b0,a5),d0
	move.w ($42,a7),d3
	andi.w #$f,d3
	ori.w #$6000,d0
	swap d0
	clr.w d0
	bset d3,d0
	move.l d0,(a3)
	bra loc_001f8e
	dc.w $40e7

loc_001df2:
	ori #$700,sr
	movem.l d0/d1/d2/a3/a4,-(a7)
	move.w (-$54b0,a5),d2
	move.w ($1a,a7),d0
	bclr d2,d0
	clr.l d1
	bset d2,d1
	bset #$1e,d1
	lea (-$5466,a5),a4

loc_001e10:
	lsr.w #1,d0
	bcs.b loc_001e18
	beq.b loc_001e2e
	bra.b loc_001e2a

loc_001e18:
	move.l (a4),d2
	btst #$1e,d2
	bne.b loc_001e26
	andi.l #$20000000,d2

loc_001e26:
	or.l d1,d2
	move.l d2,(a4)
	
loc_001e2a:
	addq.l #4,a4
	bra.b loc_001e10

loc_001e2e:
	movem.l (a7)+,d0/d1/d2/a3/a4
	rte
	dc.w $40e7

loc_001e36:
	ori #$700,sr
	movem.l d0/d1/d2/d3/a4,-(a7)
	move.w (-$54b0,a5),d2
	move.w ($1a,a7),d3
	andi.w #$f,d3
	lea (-$5426,a5),a4
	add.w d3,d3
	move.w d3,d0
	add.w d0,d0
	move.l (-$40,a4,d0.w),d1
	btst #$1e,d1
	beq.b loc_001e7a
	bclr d2,d1
	beq.b loc_001e7a
	tst.w d1
	bne.b loc_001e76
	swap d1
	andi.w #$2000,d1
	move.b d2,d1
	swap d1
	move.l ($1c,a7),(a4,d0.w)

loc_001e76:
	move.l d1,(-$40,a4,d0.w)

loc_001e7a:
	movem.l (a7)+,d0/d1/d2/d3/a4
	rte
	move sr,-(a7)

loc_001e82:
	ori #$700,sr
	movem.l d0/d1/d2/a4,-(a7)
	move.w (-$54b0,a5),d2
	move.w ($16,a7),d0
	bclr d2,d0
	lea (-$5466,a5),a4

loc_001e98:
	lsr.w #1,d0
	bcs.b loc_001ea0
	beq.b loc_001ec6
	bra.b loc_001ec2

loc_001ea0:
	move.l (a4),d1
	btst #$1e,d1
	beq.b loc_001ec2
	bclr d2,d1
	beq.b loc_001ec2
	tst.w d1
	bne.b loc_001ec0
	btst #$1d,d1
	beq.b loc_001eba
	clr.l ($40,a4)

loc_001eba:
	moveq #$0,d1
	move.w d2,d1
	swap d1

loc_001ec0:
	move.l d1,(a4)
	
loc_001ec2:
	addq.l #4,a4
	bra.b loc_001e98
	
loc_001ec6:
	movem.l (a7)+,d0/d1/d2/a4
	rte
	dc.w $40e7

loc_001ece:
	ori #$700,sr
	movem.l d0/d1/d2/a4,-(a7)
	move.w ($16,a7),d0
	andi.w #$f,d0
	asl.w #2,d0
	lea (-$5466,a5),a4
	move.l (a4,d0.w),d1
	clr.w d1
	swap d1	
	andi.w #$2000,d1
	move.w (-$54b0,a5),d2
	move.b d2,d1
	swap d1
	move.l d1, (a4,d0.w)
	move.l ($18,a7),($40,a4,d0.w)
	movem.l (a7)+,d0/d1/d2/a4
	rte
	dc.w $40e7

loc_001f0a:
	rte

loc_001f0c:
	btst #$7,$10fd80.l
	bne.b loc_001f1c
	jmp $c00438.l

loc_001f1c:
	tst.b $102c1e.l
	beq loc_001f36
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4/a5/a6,-(a7)
	jsr loc_0020a8
	movem.l (a7)+,d0-d7/a0-a6
	rte

loc_001f36:
	ori #$700,sr
	tst.b $10007c.l
	bpl loc_001f4c
	move.w loc_002168(pc),$4001e4.l

loc_001f4c:
	movem.l d0-d7/a0-a6,-(a7)
	movea.l $102b52.l,a6
	move.l a7,(a6)
	lea $108000.l,a5
	move.b (-$54b4,a5),(-$54b3,a5)
	bne.b loc_001f7a
	lea (-$58b8,a5),a7
	jsr loc_002080
	lea (-$54b0,a5),a4
	move.w (a4),d0
	bra loc_001f9e

loc_001f7a:
	clr.b (-$54b4,a5)
	jsr loc_002052
	lea (-$54b0,a5),a4
	clr.w d0
	bra loc_001f9e
	
loc_001f8e:
	lea (-$54b0,a5),a4
	move.w (a4),d0
	addq.w #1,d0
	cmpi.w #$10,d0
	beq loc_00200a
	
loc_001f9e:
	move.w d0,(a4)
	move.w d0,d1
	asl.w #2,d1
	lea ($4a,a4,d1.w),a3
	move.l a3,(-$546a,a5)
	move.l (a3),d2
	move.w (-$54b2,a5),d3
	btst d0,d3
	beq.b loc_001f8e
	btst #$1e,d2
	bne.b loc_001f8e
	btst #$1f,d2
	beq.b loc_001fd4
	subq.w #1,d2
	move.l d2,(a3)
	tst.w d2
	bne.b loc_001f8e
	swap d2
	andi.w #$3fff,d2
	move.w d2,(a3)
	swap d2

loc_001fd4:
	lea ($6,a4,d1.w),a4
	move.l a4,(-$54ae,a5)
	movea.l (a4),a7
	tst.b $10007c.l
	bpl loc_001ff4
	lea loc_00216c(pc),a4
	move.w (a4,d1.w),$4001e4.l

loc_001ff4:
	bclr #$1d,d2
	beq.b loc_002004
	move.l d2,(a3)
	lea (-$5426,a5),a4
	move.l (a4,d1.w),(a7)
	
loc_002004:
	movem.l (a7)+,d0-d7/a0-a6
	rte

loc_00200a:
	move.b #$ff,(-$54b4,a5)
	tst.b $10007c.l
	bpl loc_002022
	move.w loc_0021ac(pc),$4001e4.l
	
loc_002022:
	lea (-$54b8,a5),a6
	move.l a6,(-$54ae,a5)
	movea.l (a6),a7
	movem.l (a7)+,d0-d7/a0-a6
	rte

loc_002032:
	lea (-$54b8,a5),a6
	move.l a7,(a6)
	move.l a6,(-$54ae,a5)
	sf (-$53e2,a5)
	andi #$f0ff,sr

loc_002044:
	sf $102c1e.l
	jsr loc_0038be
	bra.b loc_002044

loc_002052:
	move.w #$4,$3c000c.l
	move.b d0,$300001.l
	jsr loc_00711c
	jsr $c0044a.l
	lea $108000.l,a5
	jsr loc_0038c4
	jsr loc_007030
	rts

loc_002080:
	move.w #$4,$3c000c.l
	move.b d0,$300001.l
	jsr $c0044a.l
	lea $108000.l,a5
	jsr loc_0038c4
	jsr loc_007030
	rts

loc_0020a8:
	move.w #$4,$3c000c.l
	move.b d0,$300001.l
	jsr $c0044a.l
	jsr $c004ce.l
	lea $108000.l,a5
	rts

loc_0020ca:
	rte

loc_0020cc:
	btst #$7,$10fd80.l
	bne.b loc_0020dc
	jmp $c00438.l	

loc_0020dc
	jmp loc_001f1c

loc_0020e2:
	dc.l $00000000,$00000001,$00000002,$00000003,$00000004,$00000005,$00000006,$00000007
	dc.l $00000010,$00000011,$00000012,$00000013,$00000014,$00108000,$00000016,$00102b48

loc_002122:
	dc.l $00102348,$00101f48,$00101b48,$00101748,$00101348,$00100f48,$00100b48,$00100748
	dc.l $00100348,$00100308,$001002c8,$00100288,$00100248,$00100208,$001001c8,$00100188
	dc.l $00100088

	dc.w $03f1

loc_002168:
	dc.l $ffff03f1

loc_00216c:;usage meter colors
	dc.w $f00a,$03f1,$f970,$03f1,$fff0,$03f1,$ff00,$03f1
	dc.w $ffa0,$03f1,$f0f8,$03f1,$f00f,$03f1,$ff99,$03f1
	dc.w $fff7,$03f1,$f999,$03f1,$ff0f,$03f1,$f0f0,$03f1
	dc.w $f0ff,$03f1,$f90f,$03f1,$f9f0,$03f1,$f090,$03f1

loc_0021ac:
	dc.w $0000

;================================================;
;alot various functions mostly used for rendering;
;================================================;
	include "rendering/functions.asm"; loc_0021ae

;actual game boot up
loc_008b38:
	clr.l $10fdb6.l
	clr.b (-$53da,a5)
	clr.w (-$53de,a5)
	clr.w (-$f98,a5)
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	trap #$5
	jsr loc_00791a
	trap #$5
	jsr loc_007960
	trap #$5
	jsr loc_0079a6
	trap #$5
	move.w #$6,-(a7)
	pea loc_003b28;Renderer
	trap #$1
;8b82
	addq.l #6,a7
	move.w #$5,-(a7)
	pea loc_0091b4;Stage Render and camera
	trap #$1
	addq.l #6,a7
	move.w #$7,-(a7)
	pea loc_00726c;vs & winqoute bg
	trap #$1
	addq.l #6,a7
;8ba0
	bsr loc_00914e
	bsr loc_008da2
	bsr loc_008f00
	tst.b $10fd82.l
	beq loc_008bd4
	tst.w $10fe80.l
	beq.b loc_008bc8
	tst.b $10fe1c.l
	beq.b loc_008bd4
	bra.b loc_008bd0

loc_008bc8:
	tst.b soundstop
	beq.b loc_008bd4

loc_008bd0:
	st (-$7f8a,a5)

loc_008bd4:
	tst.w (-$7f80,a5)
	bne loc_008c10
	tst.w (-$7f82,a5)
	beq loc_008bfc
	move.w #$1,-(a7)
	pea loc_017c68; MVS Title Screen
	trap #$1
	addq.l #6,a7
	bset #$7,(-$53da,a5)
	bra loc_008c10
	
loc_008bfc:
	move.w #$1,-(a7)
	pea loc_00d312;attract mode or fight
	trap #$1
	addq.l #6,a7
	bset #$7,(-$53da,a5)

loc_008c10:
	clr.w (-$7f82,a5)

loc_008c14:
	trap #$5
	bsr loc_008cc4
	jsr loc_009160
	bsr loc_008d6c
	bsr loc_008dac
	bsr loc_008f12
	tst.w (-$7f80,a5)
	beq loc_008c42
	btst #$6,(-$53da,a5)
	bne loc_008c42
	bsr loc_008c52

loc_008c42:
	tst.b (-$53da,a5)
	bne.b loc_008c14
	move.w #$ffff,-(a7)
	trap #$2
	addq.l #2,a7
	trap #$3

loc_008c52:
	sf (-$7f8a,a5)
	move.w #$1,d0
	move.w #$1,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #$2
	addq.l #2,a7
	move.w #$1,d0
	move.w #$3,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #$2
	addq.l #2,a7
	move.w #$1,d0
	move.w #$4,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #$2
	addq.l #2,a7

;===================;
;  MVS Title Clear	;
;===================;
;8c86
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	trap #$5
	bsr loc_008cc4
	jsr loc_009160
	bsr loc_008d6c
	move.w #$1,-(a7)
;8cac
	pea loc_017d2c;Game State Start
	trap #$1
	addq.l #6,a7
	bclr #$7,(-$53da,a5)
	bset #$6,(-$53da,a5)
	rts

loc_008cc4:
	tst.b (-$53d2,a5)
	bne loc_008d4a
	tst.b DDip1(a5)
	bpl loc_008d4a
	move.w $10fdb6.l,d0
	movem.l d0/d1/d2/d3/a0,-(a7)
	move.w #$2300,-(a7)
	move.w #$4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$7242,-(a7)
	jsr loc_005e8e
	lea ($c,a7),a7
;8cf8
	movem.l (a7)+,d0/d1/d2/d3/a0
	move.b $10fdaf,d0
	movem.l d0/d1/d2/d3/a0,-(a7)
	move.w #$3300,-(a7)
	move.w #$2,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$7263,-(a7)
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0/d1/d2/d3/a0
	move.b $10fdac.l,d0
	andi.b #$a,d0
	beq loc_008d4a
	move.b (-$7f7e,a5),d5
	st (-$7f7e,a5)

loc_008d3a:
	move.b $10fdad.l,d0
	andi.b #$5,d0
	beq.b loc_008d3a
	move.b d5,(-$7f7e,a5)

loc_008d4a:
	btst #$6,DDip1(a5)
	beq loc_008d6a
	addq.w #1,(-$53c8,a5)
	cmpi.w #$5,(-$53c8,a5)
	bcs loc_008d6a
	clr.w (-$53c8,a5)
	stop #$2000

loc_008d6a:
	rts

loc_008d6c:
	tst.b (-$53d2,a5)
	bne loc_008da0
	tst.b (-$7f83,a5)
	bpl loc_008da0
	move.b (-$53cb,a5),d0
	andi.b #$a,d0
	beq loc_008d94
	andi.b #$fa,(-$53cb,a5)
	andi.b #$fa,(-$53c9,a5)

loc_008d94:
	andi.b #$f5,(-$53cb,a5)
	andi.b #$f5,(-$53c9,a5)

loc_008da0:
	rts

loc_008da2:
	sf (-$53d2,a5)
	clr.w (-$53e0,a5)
	rts

loc_008dac:
	bsr loc_0090ea
	tst.b $10fd82.l
	beq loc_008e4c
	lea $10fe00.l,a1
	tst.w $10fe80.l
	bne.b loc_008dce
	lea credcount,a1
	
loc_008dce:
	cmpi.b #$1,(-$7f85,a5)
	bne.b loc_008df2
	moveq #$3,d1
	moveq #$0,d0
	move.b (a1),d0
	jsr loc_008e80(pc)
	addq.w #1,a1
	moveq #$1c,d1
	moveq #$0,d0
	move.b (a1),d0
	jsr loc_008e80(pc)
;8dec
	subq.w #1,a1
	move.w (a1),d0
	bra.b loc_008e02

loc_008df2:
	moveq #$1c,d1
	moveq #$0,d0
	move.b (a1),d0
	jsr loc_008e80(pc)
	move.b (a1),d0
	lsl.w #8,d0
	move.b (a1),d0	
	
loc_008e02:
	move.w (-$53e0,a5),d1
	eor.w d0,d1
	move.w d1,(-$53de,a5)
	move.w d0,(-$53e0,a5)
	lea $10fdb0.l,a0
	tst.b (-$7f80,a5)
	seq d0
	neg.w d0
	move.b d0,(a0)+
	tst.b (-$7f7f,a5)
;8e24
	seq d0
	neg.w d0
	move.b d0,(a0)+
	move.b #$0,(a0)+
	move.b #$0,(a0)+
	move.l a5,-(a7)
	jsr $c00450.l;Credit Check
	movea.l (a7)+,a5
;8e3c
	lea $10fdb0.l,a0
	move.b (a0)+,(-$53dc,a5)
	move.b (a0)+,(-$53db,a5)
	rts

loc_008e4c:
	move.w (-$7f7c,a5),d0
	moveq #$3,d1
	jsr loc_008e80(pc)
	move.w (-$7f7a,a5),d0
	moveq #$1c,d1
	jsr loc_008e80(pc)
	move.w #$0,(-$53de,a5)
	clr.w (-$53e0,a5)
	move.w (-$7f7c,a5),d0
	lsl.w #8,d0
	move.w (-$7f7a,a5),d1
	andi.w #$ff,d1
	or.w d1,d0
	move.w d0,(-$53dc,a5)
	rts

loc_008e80:
	tst.b (-$7f88,a5)
	bne loc_008eee
	tst.b (-$53d2,a5)
	bne loc_008eee
	ext.l d0
	lea loc_008ef0(pc),a0
	cmpi.w #$1,d0
	ble.b loc_008ea0
	lea loc_008ef8(pc),a0

loc_008ea0:
	movem.l d0/a0/a1,-(a7)
	move.w #$f300,-(a7)
	move.l a0,-(a7)
	move.w #$1b,-(a7)
	move.w d1,-(a7)
	jsr loc_005e50
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1 ;8ec0

	addq.w #7,d1
	movem.l d0/d1/d2/d3/a0,-(a7)
	move.w #$f300,-(a7)
	move.w #$2,-(a7)
	move.l d0,-(a7)
	move.w #$1b,-(a7)
	move.w d1,-(a7)
	jsr loc_005e50
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0/d1/d2/d3/a0

loc_008eee:
	rts

;=================;
; Credit Counters ;
;=================;
loc_008ef0:;Credit
	dc.b $10,$11,$12,$13,$14,$15,$20,$00

loc_008ef8:;Credits
	dc.b $16,$17,$18,$19,$1a,$1b,$20,$00

loc_008f00:
	clr.w (-$53d8,a5)
	move.w #$ffff,(-$53d6,a5)
	move.w #$ffff,(-$53d4,a5)
	rts

loc_008f12:
	btst #$6,(-$53da,a5)
	bne loc_008faa	
	move.w (-$53d6,a5),d0
	cmp.w (-$53d4,a5),d0
	bne loc_008fbc
	tst.w d0
	bmi loc_008fb0
	cmpi.w #$1b,d0
	bgt loc_008fb0
	andi.w #$7f,(-$53d8,a5)
	subq.w #1,(-$53d8,a5)
	bgt.b loc_008f48
	move.w #$4b,(-$53d8,a5)

loc_008f48:
	cmpi.w #$1e,(-$53d8,a5)
	bge loc_008f5a
	lea loc_0090ce(pc),a0
	bra loc_008f82

loc_008f5a:
	lea loc_009042(pc),a0
	tst.w (-$53dc,a5)
	beq loc_008f82
	tst.b (-$53dc,a5)
	beq.b loc_008f7e
	tst.b (-$53db,a5)
	beq.b loc_008f78
;8f72
	lea loc_009096(pc),a0
	bra.b loc_008f82

loc_008f78:
	lea loc_00905e(pc),a0
	bra.b loc_008f82

loc_008f7e:
	lea loc_00907a(pc),a0

loc_008f82:
	movem.l d0/a0/a1,-(a7) 
	move.w #$f300,-(a7)
	move.l a0,-(a7)
	move.w (-$53d6,a5),-(a7)
	move.w #$7,-(a7)
	jsr loc_005e50
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1
	bra.b loc_008fb4

loc_008faa:
	move.w #$ffff,(-$53d6,a5)

loc_008fb0:
	clr.w (-$53d8,a5)

loc_008fb4:
	move.w (-$53d6,a5),(-$53d4,a5)
	rts

loc_008fbc:
	tst.w d0
	bmi loc_009006
	cmpi.w #$1b,d0
	bgt loc_009006
	move.w (-$53d4,a5),d0
	tst.w d0
	bmi.b loc_008f5a
	cmpi.w #$1b,d0
	bgt.b loc_008f5a

;8fd8
	movem.l d0/a0/a1,-(a7)
	move.w #$f300,-(a7)
	move.l #loc_0090ce,-(a7)
	move.w (-$53d4,a5),-(a7)
	move.w #$7,-(a7)
	jsr loc_005e50
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1
	bra loc_008f5a

loc_009006:
	move.w (-$53d4,a5),d0
	tst.w d0
	bmi.b loc_008fb0
	cmpi.w #$1b,d0
	bgt.b loc_008fb0
	movem.l d0/a0/a1,-(a7)
	move.w #$f300,-(a7)
	move.l #loc_0090ce,-(a7)
	move.w (-$53d4,a5),-(a7)
	move.w #$7,-(a7)
	jsr loc_005e50
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1
	bra loc_008fb0

;====================;
; INSERT CREDIT TEXT ;
;====================;
loc_009042:
	dc.b "        INSERT COIN       ",$00,$00

loc_00905e:
	dc.b "   PRESS 1P START BUTTON   ",$00

loc_00907a:
	dc.b "   PRESS 2P START BUTTON   ",$00

loc_009096:
	dc.b "PRESS 1P OR 2P START BUTTON",$00

loc_0090b2:
	dc.b "    PRESS START BUTTON     ",$00

loc_0090ce:
	dc.b "                           ",$00


;==========================;
; Difficulty Level Display ;
;==========================;
loc_0090ea:
	tst.b (-$7f89,a5)
	bne loc_009146
	tst.b (-$53d2,a5)
	bne loc_009146
	movem.l d0/a0/a1,-(a7)
	move.w #$f300,-(a7)
	move.l #loc_009148,-(a7)
	clr.w -(a7)
	move.w #$723d,-(a7)
	jsr FixTextWrite
;9114
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0/a1
	move.w (DifficultyLvl,a5),d0
	addq.w #1,d0
	ext.l d0
	movem.l d0/d1/d2/d3/d4/a0/a1,-(a7)
	move.w #$f300,-(a7)
	move.w #$1,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$72dd,-(a7)
	jsr $5ed4.l
	lea ($c,a7),a7
	movem.l (a7)+,d0/d1/d2/d3/d4/a0/a1

loc_009146:
	rts

loc_009148:;Level Text
	dc.b $0b,$0c,$0d,$0e,$0f,$00

;====================;
;
;====================;
loc_00914e:
	move.b #$ff,d0
	move.b d0,(-$53cb,a5)
	move.b d0,(-$53d1,a5)
	move.b d0,(-$53d0,a5)
	rts

;===================;
;
;===================;
loc_009160:
	move.b (-$53cb,a5),d1
	move.b d1,(-$53ca,a5)
	move.b $10fdac.l,d0
	andi.b #$f,d0
	move.b d0,(-$53cb,a5)
	not.b d1
	and.b d0,d1
	move.b d1,(-$53c9,a5)
	move.b (-$53d1,a5),d2
	move.b d2,(-$53cf,a5)
	move.b $10fd96.l,d0
	move.b d0,(-$53d1,a5)
	not.b d2
	and.b d0,d2
	move.b d2,(-$53cd,a5)
	move.b (-$53d0,a5),d2
	move.b d2,(-$53ce,a5)
	move.b $10fd9c.l,d0
	move.b d0,(-$53d0,a5)
	not.b d2
	and.b d0,d2
	move.b d2,(-$53cc,a5)
	rts

;===================;
;
;===================;
loc_0091b4:
	lea (-$45e6,a5),a4
	lea (-$4576,a5),a3

loc_0091bc:
	move (0,a4),($2c,a4)
	trap #$5
	move.w ($0,a4),d0
	cmp.w ($2c,a4),d0
	bne.b loc_0091d8
	btst #$7,(2,a4)
	beq.b loc_0091d8
	bra.b loc_0091ea

loc_0091d8:
	bsr loc_0092a2
	movem.l a4,-(a7)
	bsr loc_0092d0
	movem.l (a7)+,a4	
	bra.b loc_0091f6

loc_0091ea:
	movem.l a4,-(a7)
	bsr loc_0092d0
	movem.l (a7)+,a4

loc_0091f6:
	btst #$6,($2,a4)
	beq loc_009224
	tst.b (-$42c2,a5)
	beq.b loc_009212
	bsr loc_009fd4
	sf (-$42c2,a5)
	bra.b loc_009224

;9210
	bra.b loc_009216

loc_009212:
	bsr loc_00928a

loc_009216:
	move.w (-$54b2,a5),d0
	btst #$3,d0
	bne.b loc_009224
	bsr loc_00a014

loc_009224:
	bset #$7,(2,a4)
	bra.b loc_0091bc

loc_00922c:
	move.w #$0,(-$4234,a5)
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4,-(a7)
	lea (-$45e6,a5),a4
	lea (-$4576,a5),a3
	movea.l a4,a0
	moveq #$0,d0
	move.w #$6f,d7

loc_009246:
	move.b d0,(a0)+
	dbra d7,loc_009246
	move.w #$0,($0,a4)
	move.w ($0,a4),($2c,a4)
	move.b #$80,($2,a4)
	sf (-$42c2,a5)
	bsr loc_0092a2
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4
	rts

;===================;
;
;===================;
loc_00926c:
	btst #$6,(2,a4)
	beq loc_00927e
	move.w d0,(-$42c0,a5)
	addi.w #$14,d0
	
loc_00927e:
	jmp loc_003f7a

loc_009284:
	jmp loc_003fe8

;===================;
; Clear ____ Memory
;===================;
loc_00928a:
	lea (-$50c6,a5),a0
	move.w (-$42c0,a5),d0
	add d0,d0
	adda.w d0,a0
	move #$13,d7

loc_00929a:
	clr.w (a0)+
	dbra d7,loc_00929a
	rts

;===================;
; Stage Progam Load ;
;===================;
loc_0092a2:
	bsr loc_0092e8
	bsr loc_009304
	lea loc_0904be,a0
	move.w ($0,a4),d0
	lsl.w #2,d0
	movea.l (a0,d0.w),a0
	move.l a0,($30,a4)
	bclr #$6,($2,a4)
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4,($34,a4)
	clr.w (-$42c0,a5)
	rts

;===================;
;
;===================;
loc_0092d0:
	movem.l ($34,a4),d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4
	move.l ($30,a4),-(a7)
	rts

;===================;
;
;===================;
loc_0092dc:
	move.l (a7)+,($30,a4)
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4,($34,a4)
	rts

;===================
;
;===================
loc_0092e8:
	clr.w (-$45e8,a5)
	lea	(-$4496,a5),a0
	move.w #$f,d7

loc_0092f4:
	move.w #$1b,d6

loc_0092f8:
	clr.b (a0)+
	dbra d6,loc_0092f8
	dbra d7,loc_0092f4
	rts

;===================
; 
;===================
loc_009304:
	move.w #$1,d0
	jsr loc_003f7a
	move.w #$17d,d0
	jsr loc_003fe8
	moveq #$0,d0
	lea (-$44f6,a5),a0
	move.w #$1f,d7

loc_009322:
	move.b d0,(a0)+
	dbra d7,loc_009322
	lea (-$44d6,a5),a0
	move.w #$1f,d7

loc_009330:
	move.b d0,(a0)+
	dbra d7,loc_009330
	lea (-$44b6,a5),a0
	move.w #$1f,d7

loc_00933e:
	move.b d0,(a0)+
	dbra d7,loc_00933e
	rts

;===================
;Clear Memory UNK
;===================
loc_009346:
	lea (-$4576,a5),a0
	move #$7,d7
	
loc_00934e:
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	dbra d7,loc_00934e
	rts

;===================
;Determin 
;===================
loc_00935c:
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4,-(a7)
	lea (-$4496,a5),a3
	move.w #$f,d7

loc_009368:
	tst.b ($0,a3)
	beq loc_009390
	bgt loc_00937c
	neg.b ($0,a3)
	clr.w ($16,a3)

loc_00937c:
	tst.b ($1,a3)
	bne.w loc_00938c
	bsr.w loc_00939e
	bra.w loc_009390

loc_00938c:
	bsr.w loc_0093f2

loc_009390:
	lea ($1c,a3),a3
	dbra d7,loc_009368
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4
	rts

;=======================;
;Load BG Sprite address?;
;=======================;
loc_00939e:
	subq.w #1,($16,a3)
	bgt loc_0093f0

loc_0093a6:
	clr.w ($16,a3)
	movea.l ($10,a3),a0
	bsr loc_0094ce
	move.l a0,($10,a3)
	tst.b ($0,a3)
	beq loc_0093f0
	tst.w ($16,a3)
	beq.b loc_0093a6
	lea loc_205098,a1
	moveq #$0,d0
	move.w ($14,a3),d0
	lsl.l #2,d0
	movea.l (a1,d0.l),a0
	move.w ($2,a3),d0
	add.w ($18,a3),d0
	move.w ($1a,a3),d1
	movem.l d7/a3,-(a7)
	jsr loc_006822
	movem.l (a7)+,d7/a3

loc_0093f0:
	rts

;\\\\\\\\\\\\\\\\\\\\;
;BG Sprite Animations;
;\\\\\\\\\\\\\\\\\\\\;
loc_0093f2:
	subq.w #1,($16,a3)
	ble loc_00945a
	tst.w ($e,a3)
	bne loc_009478
	movem.l d7/a3,-(a7)
	lea loc_200000,a1
	moveq #$0,d0
	move.w ($14,a3),d0
	lsl.l #2,d0
	movea.l (a1,d0.l),a0
	move.w ($6,a3),d0
	move.w ($a,a3),d1
	move.w ($1a,a3),d2
	move.w ($e,a3),d3
	move.b ($18,a3),d4
	ext.w d4
	move.b ($19,a3),d5
	ext.w d5
	btst #$0,d2
	beq.b loc_00943c
	neg.w d4
	
loc_00943c:
	btst #$1,d2
	beq.b loc_009444
	neg.w d5

loc_009444:
	move.w (2,a3),d6
	move.w (4,a3),d7
	jsr loc_006a60
	movem.l (a7)+,d7/a3
	bra loc_0094cc

loc_00945a:
	clr.w ($16,a3)
	movea.l ($10,a3),a0
	bsr loc_0094ce
	move.l a0,($10,a3)
	tst.b (0,a3)
	beq loc_0094cc
	tst.w ($16,a3)
	beq.b loc_00945a

loc_009478:
	movem.l d7/a3,-(a7)
	lea loc_200000,a1
	moveq #$0,d0
	move.w ($14,a3),d0
	lsl.l #2,d0
	movea.l (a1,d0.l),a0
	move.w ($6,a3),d0
	move.w ($a,a3),d1
	move.w ($1a,a3),d2
	move.w ($e,a3),d3
	move.b ($18,a3),d4
	ext.w d4
	move.b ($19,a3),d5
	ext.w d5
	btst #$0,d2
	beq.b loc_0094b2
	neg.w d4

loc_0094b2:
	btst #$1,d2
	beq.b loc_0094ba
	neg.w d5

loc_0094ba:
	move.w (2,a3),d6
	move.w (4,a3),d7
	jsr loc_00685e
	movem.l (a7)+,d7/a3

loc_0094cc:
	rts

;///////////////////
;
;///////////////////
loc_0094ce:
	tst.w (a0)
	bmi loc_0094ea
	move.w (a0)+,($16,a3)	
	move.w (a0)+,($14,a3)
	move.w (a0)+,($18,a3)
	move.w (a0)+,($1a,a3)

loc_0094e4:
	sf d0
	bra loc_0094f8

loc_0094ea:
	move.w (a0)+,d0
	movea.l (a0)+,a1
	jsr (a1)
	tst.b (0,a3)
	bpl.b loc_0094e4
	st d0

loc_0094f8:
	rts

;~~~~~~~~~~~~~~~~~~~;
;
;~~~~~~~~~~~~~~~~~~~;
loc_0094fa:
	movea.l (a0)+,a0
	andi.w #$7fff,d0
	beq loc_009512

loc_009504:
	move.l d0,-(a7)

loc_009506:
	bsr.b loc_0094ce
	tst.b d0
	bne.b loc_009506
	move.l (a7)+,d0
	subq.w #1,d0
	bgt.b loc_009504

loc_009512:
	rts

;===================
;
;===================
loc_009514:
	subq.w #6,a0
	sf (0,a3)
	rts

;===================;
;
;===================;
loc_00951c:
	movem.l d0/a0,-(a7)
	move.w ($c,a7),d0
	mulu.w #$1c,d0
	lea BGOBJramstart,a0
	adda.l d0,a0
	st (0,a0)
	sf (1,a0)
	move.w ($12,a7),(2,a0)
	clr.w ($4,a0)
	clr.l ($6,a0)
	clr.l ($a,a0)
	clr.w ($e,a0)
	move.l ($e,a7),($10,a0)
	clr.w ($14,a0)
	clr.w ($16,a0)
	clr.w ($18,a0)
	clr.w ($1a,a0)
	movem.l (a7)+,d0/a0
	rts

;===================;
;
;===================;
loc_00956a:
	movem.l d0/a0,-(a7)
	move.w ($c,a7),d0
	mulu.w #$1c,d0
	lea BGOBJramstart,a0
	adda.l d0,a0
	st (0,a0)
	st (1,a0)
	move.w ($12,a7),($2,a0)
	move.w ($14,a7),($4,a0)
	move.l ($16,a7),($6,a0)
	move.l ($1a,a7),($a,a0)
	move.w ($1e,a7),($e,a0)
	move.l ($e,a7),($10,a0)
	clr.w ($14,a0)
	clr.w ($16,a0)
	clr.w ($18,a0)
	clr.w ($1a,a0)
	movem.l (a7)+,d0/a0
	rts

;===================;
;
;===================;
loc_0095c0:
	movem.l d4/d5,-(a7)
	sf d0
	bsr loc_0095e6
	beq.b loc_0095d0
	ori.b #$1,d0

loc_0095d0:
	exg a1,a2
	bsr loc_0095e6
	beq.b loc_0095dc 
 	ori.b #$2,d0

loc_0095dc:
	exg a1,a2
	movem.l (a7)+,d4/d5
	tst.b d0
	rts

;===================;
;
;===================;
loc_0095e6:
	move.l ($212,a1),d4
	move.l d4,d5
	swap d4
	swap d5
	add.w ($238,a1),d4
	add.w ($23a,a1),d5
	add.w (0,a0),d4
	add.w (2,a0),d5
	swap d4
	swap d5
	cmp.l d4,d3
	blt loc_00964c
	cmp.l d5,d3
	bgt loc_00964c
	move.w ($23c,a1),d4
	move.w ($23e,a1),d5
	tst.b ($208,a1)
	bpl.b loc_009624

;961e
	exg d4,d5
	neg.l d4
	neg.l d5

loc_009624:
	add.w ($4,a0),d4
	add.w ($6,a0),d5
	swap d4
	swap d5
	clr.w d4	
	clr.w d5
	add.l ($20e,a1),d4
	add.l ($20e,a1),d5
	cmp.l d4,d2
	blt loc_00964c
	cmp.l d5,d2
	bgt loc_00964c
	moveq #-$1,d4
	rts

loc_00964c:	
	moveq #$0,d4
	rts

;===================;
;
;===================;
loc_009650:
	movem.l d4/d5,-(a7)
	btst #$0,d0
	beq.b loc_009660
	bsr loc_009680
	bne.b loc_009676

loc_009660:
	btst #$1,d0
	beq.b loc_009672
	exg a1,a2
	bsr loc_009680
	exg a1,a2
	tst.b d4
	bne.b loc_009676

loc_009672:
	sf d0
	bra.b loc_009678

loc_009676:
	st d0

loc_009678:
	movem.l (a7)+,d4/d5
	tst.b d0
	rts

;===================
;
;===================
loc_009680:
	tst.l ($21a,a1)
	bgt loc_0096a0
	move.b ($249,a1),d4
	beq.b loc_0096a0
	btst #$5,d4
	bne.b loc_0096a4
	btst #$1,d4
	bne.b loc_0096a4
	btst #$7,d4
	bne.b loc_0096a4
	
loc_0096a0:
	sf d4
	bra.b loc_0096a6

loc_0096a4:
	st d4

loc_0096a6:
	tst.b d4
	rts

;===================
;Camera
;===================
loc_0096aa:
	include "Stages/Camera.asm"

;===================;
; Stage Programming	;
;===================;
;a63c Attract/Title/Howtoplay/CharSelect;done
	include "Stages/title/stage.asm"

;a6e8 Test Grid Stage;done
	include "Stages/Grid/stage.asm"

;a9c0 Sho Stage;done
	include "Stages/ShoStage/stage.asm"

;ae1c Dao Stage;done
	include "Stages/DaoStage/stage.asm"

;b088 Condor Stage;done
	include "Stages/ConStage/stage.asm"

;b416 Tia Stage;done
	include "Stages/TiaStage/stage.asm"

;b812 Rila Stage;done
	include "Stages/RilStage/stage.asm"

;c042 Alsion Stage;done
	include "Stages/AlsStage/stage.asm"

;c554 Pielle Stage;done
	include "Stages/PieStage/stage.asm"

;c954 Maherl Stage;done
	include "Stages/MahStage/stage.asm"

;cd00 Bai hu Stage;done
	include "Stages/BaiStage/stage.asm"

;d15e Saizo Stage;done
	include "Stages/SaiStage/stage.asm"

;==================;
;Attract mode
;==================;
loc_00d312:
	clr.b (-$7f7e,a5)
	btst #$0,DDip1(a5);AI Battle Test check
	bne loc_00d3b8
	move #$ffff,(-$53d6,a5)
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	jsr loc_00d994
;d33e
	move #$13,(-$53d6,a5)
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	trap #5
	jsr loc_00ddc2
;d35e
	move #$e,(-$53d6,a5)
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	trap #5
	bsr loc_00d4e8
;d37c
	move #$e,(-$53d6,a5)
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	trap #5
	bsr loc_00d6ea
;d39a
	move #$e,(-$53d6,a5)
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	clr.b (-$53da,a5)
	trap #3

;===================;
;AI Battle Test Mode;
;===================;
loc_00d3b8:
	andi.w #$ff,(-$3d0,a5)
	andi.w #$ff,(-$3ce,a5)
	move.b #$0,(-$f38,a5)
	move.b #$0,(-$f37,a5)
	move.w #$0,(-$f32,a5)
	move.w #$1,(-$f30,a5)
	move.w #$1,(-$f2e,a5)
	move.w #$1,BattleCounter(a5)

;Set player addresses
	lea p1ma5(a5),a4
	lea p2ma5(a5),a3
	bsr AICharOver

;d3f4 player 2 set
	move.w (plcharid,a4),-(a7)
	move.w (plpalid,a4),-(a7)
	bsr loc_00d64a
	move.w (a7)+,(plpalid,a4)
	move.w (a7)+,(plcharid,a4)
	exg a3,a4

;$d40a player 1 set
	bsr AICharOver
	move.w (plcharid,a4),-(a7)
	move.w (plpalid,a4),-(a7)
	bsr loc_00d64a
	move.w (a7)+,(plpalid,a4)
	move.w (a7)+,(plcharid,a4)
	exg a3,a4

;$d424
	move #$ffff,(-$53d6,a5)
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	trap #5
	clr.b (-$7f7e,a5)

loc_00d442:
	sf (-$3e4,a5)
	sf (-$3e3,a5)
	jsr loc_01b14a;fixram?
	jsr loc_01b0fa
	jsr loc_01b16a;music
	move.w (-$3d0,a5),-(a7)
	move.w (-$3ce,a5),-(a7)
	trap #5
;$d466
	move.w #3,-(a7)
	pea loc_01ddc4
	trap #1
	addq.l #6,a7
	jsr loc_028358
	jsr loc_027a4a
	move.w #4,-(a7)
	pea loc_02778e
	trap #1
	addq.l #6,a7
	trap #5
	trap #5
	move.w (a7)+,(-$3ce,a5)
	move.w (a7)+,(-$3d0,a5)

loc_00d49a:
	trap #5
	tst.b (-$3e0,a5)
	beq.b loc_00d49a
	move.w #$1e,-(a7)
	trap #4
	addq.l #2,a7
	move.w #$1,d0
	move.w #$3,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	move.w #$1,d0
	move.w #$4,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	bra loc_00d442

;===================================
;Prevent ID overflow in AI Test mode
AICharOver:
	cmpi.w #$a,($14,a4)
	bcs.b AIPalOver
	clr.w ($14,a4)

AIPalOver:
	cmpi.w #$4,($16,a4)
	bcs.b loc_00d4e6
	clr.w ($16,a4)

loc_00d4e6:
	rts

;========================;
; AI Battle Attract Demo ;
;========================;
loc_00d4e8:
	move.b #0,(-$f38,a5)
	move.b #0,(-$f37,a5)
	move.w #0,(-$f32,a5)
	move.w #1,(-$f30,a5)
	move.w #1,(-$f2e,a5)
	move.w #1,BattleCounter(a5)
	clr. (-$3d0,a5)
	jsr RandomNumberGod
	andi.w #$7f,d0
	addi.w #$40,d0
	move.w d0,(-$3ce,a5)
	lea p1ma5(a5),a3
	lea p2ma5(a5),a4
;d52a
	bsr loc_00d64a
	exg a3,a4
	bsr loc_00d64a
	exg a3,a4
	bsr loc_00d68e
	sf (-$3e4,a5)
	sf (-$3e3,a5)
;d542
	jsr loc_01b14a
	jsr loc_01b0fa
	jsr loc_01b16a
	trap #5
	move.w #$3,-(a7)
	pea loc_01ddc4
	trap #1
	addq.l #6,a7
	jsr loc_028358
	jsr loc_027a4a
	move #4,-(a7)
	pea loc_02778e
	trap #1
;d57c
	addq.l #6,a7
	trap #5
	cmpi.w #1,(-$7f94,a5)
	bne loc_00d5a2
	move.w #7,-(a7)
	move.l #loc_024a94,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	bra loc_00d5b6

loc_00d5a2:
	move.w #7,-(a7)
	move.l #loc_024a94,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

loc_00d5b6:
;Demo Mini logo
	trap #5
	cmpi.w #$1,(-$7f94,a5)
	bne loc_00d5e8
	movem.l d0/d1/d2/d3/a0/a1,-(a7)
	move.w #$7000,-(a7)
	move.l #loc_0efbc8,-(a7)
	clr.w -(a7)
	move.w #$72d1,-(a7)
	jsr loc_005f2c
	lea (10,a7),a7
	movem.l (a7)+,d0/d1/d2/d3/a0/a1
	bra loc_00d60a

loc_00d5e8:
	movem.l d0/d1/d2/d3/a0/a1,-(a7)
	move.w #$7000,-(a7)
	move.l #loc_0efbc8,-(a7)
	clr.w -(a7)
	move.w #$72d1,-(a7);this postion is used
	jsr loc_005f2c
	lea (10,a7),a7
	movem.l (a7)+,d0/d1/d2/d3/a0/a1

loc_00d60a:
	move.w #$960,d7
loc_00d60e:
	trap #5
	tst.b (-$3e0,a5)
	beq.b loc_00d618
	clr.w d7	

loc_00d618:
	dbra d7,loc_00d60e
	move.w #1,d0
	move.w #3,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	move.w #1,d0
	move.w #4,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	move.w #$407,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	rts

;==========================;
;Random Characters for Demo;
;==========================;
loc_00d64a:
	jsr RandomNumberGod
	mulu.w #$a,d0
	swap d0
	move.w d0,(plcharid,a4)
	jsr RandomNumberGod
	andi.w #$3,d0
	move.w d0,(plpalid,a4)
	clr.l ($18,a4)
	clr.w ($1c,a4)
	clr.w ($1e,a4)
	clr.l ($20,a4)
	clr.w ($28,a4)
	clr.l ($24,a4)
	move.w #$0,plmetergain(a4)
	move.w #$1,($204,a4)
	rts

;===================
;Demo Bai Hu Check
;===================
loc_00d68e:
	cmpi.w #8,plcharid(a4)
	bne.b loc_00d69c
	move.w #9,plcharid(a4)

loc_00d69c:
	cmpi.w #8,plcharid(a3)
	bne.b loc_00d6aa
	move.w #9,plcharid(a3)

loc_00d6aa:
	move.w plcharid(a4),d0
	cmp.w plcharid(a3),d0
	bne.b loc_00d6be
	addq.w #1,plcharid(a4)
	andi.w #7,plcharid(a4)

loc_00d6be:
	rts

;===================
;
;===================
loc_00d6c0:
	lea (-$7ffe,a5),a0
	lea loc_00d6f4(pc),a1
	move.w #5,d7

loc_00d6cc:
	move.l (a1)+,($0,a0)
	move.w (a1)+,($4,a0)
	move.l (a1)+,($6,a0)
	move.w (a1)+,($a,a0)
	move.w (a1)+,($c,a0)
	lea ($e,a0),a0	
	dbra d7,loc_00d6cc
	rts

;===================;
;
;===================;
loc_00d6ea:
	sf (-$7faa,a5)
	jmp loc_0145aa

;===========================;
; Default Score Score Score ;
;===========================;
loc_00d6f4:
	dc.b $00,$00,$75,$30,$00,$01,"SHO",$00,$00,$00,$00,$01
	dc.b $00,$00,$61,$a8,$00,$01,"DAO",$00,$00,$01,$00,$01
	dc.b $00,$00,$4e,$20,$00,$01,"CON",$00,$00,$02,$00,$01
	dc.b $00,$00,$3a,$98,$00,$01,"TIA",$00,$00,$03,$00,$00
	dc.b $00,$00,$2e,$e0,$00,$01,"RIL",$00,$00,$04,$00,$00
	dc.b $00,$00,$27,$10,$00,$01,"ALS",$00,$00,$05,$00,$00

;===================
;
;===================
loc_00d748:
	movem.l d0,-(a7)
	cmpi.w #$10,d0
	blt.b loc_00d758
	cmpi.w #$f7,d0
	ble.b loc_00d75c
	
loc_00d758:
	move.w #$80,d0

loc_00d75c:
	move.w d0,(-$faa,a5)
	move.w d0,-(a7)
	move.l #loc_090c80,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	movem.l (a7)+,d0
	rts

;///////////////////
;
;///////////////////
loc_00d778:
	movem.l d0,-(a7)
	cmpi.w #$10,d0
	blt.b loc_00d788
	cmpi.w #$f7,d0
	ble.b loc_00d78c
	
loc_00d788:
	move.w #$80,d0

loc_00d78c:
	move.w d0,(-$fa8,a5)
	move.w d0,-(a7)
	move.l #loc_090cc0,-(a7)
	jsr loc_007554
;d7a2
	lea (6,a7),a7
	addq #4,d0
	move.w d0,-(a7)
	move.l #loc_090cd4,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	clr.w (-$fa6,a5)
	movem.l (a7)+,d0
	rts

;\\\\\\\\\\\\\\\\\\\\\\\;
; Title Screen Graphics ;
;///////////////////////;
loc_00d7c0:
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3,-(a7)
	cmpi.w #1,d0
	bne.b loc_00d7ce 
	jsr loc_00d872(pc);Visco Logo

loc_00d7ce:
	move.w #$7d,-(a7)
	move.l #RevengeTitlePalette,-(a7);
	jsr FuncPaletteLoad
	lea (6,a7),a7
	jsr extrasubtitle(pc)
	jsr loc_00d8f6(pc);Draw Revenge
	jsr loc_00d800(pc);Draw Breakers
	jsr loc_00d83a(pc);Sqiggle
	jsr loc_00d89e(pc);Copyright
	jsr loc_00d8ca(pc);Background
	jsr loc_00d91a(pc);Palette Effect
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3
	rts

extrasubtitle:
;	lea extratextpnts,a0
;	move.w (DifficultyLvl,a5),d0
;	lsl.w #2,d0
;	movea.l (a0,d0.w),a0
	lea subextratext(pc),a0
	move.w #$b0,d0;xpos
	move.w #$80,d1;ypos
	move.w #$04,d2;palette
	move.w #$00,d3
	move.w #$00,d4
	jsr loc_005426
	rts

extratextpnts:
	dc.l NoEscape,name02,BirdLand,ComoboHack
	dc.l Badtimes,imagay,subextratext,TakeaBath

Badtimes:
	dc.b "Bad Times",00
	even

name02:
	dc.b "Worse Times",00
	even

NoEscape:
	dc.b "No Escape",00
	even

imagay:
	dc.b "[I'M GAY]",00
	even

ComoboHack:
	dc.b "Not Combohack AI",00
	even

TakeaBath:
	dc.b "Take a bath",00
	even

BirdLand:
	dc.b "FknBirdLand",00
	even

subextratext:
	dc.b "extra! mode",00
	even

;===================;
;Draw Breakers Title;
;===================;
loc_00d800:
	move.w #$a0,d0	
	move.w #$70,d1
	move.w (-$fa8,a5),d2
	addi.w #$0,d2
	lsl.w #8,d2
	moveq #$0,d4
	moveq #$0,d5
	lea loc_090ce4,a1;Title location
	adda.l #$50,a1
	moveq #3,d7

loc_00d824:
	movea.l (a1)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a1,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a1
	dbra d7,loc_00d824
	rts

;====================;
; Draw Title Sqiggle ;
;====================;
loc_00d83a:
	move.w #$a0,d0	
	move.w #$70,d1
	move.w (-$fa8,a5),d2
	addq.w #1,d2
	lsl.w #8,d2
	moveq #$0,d4
	moveq #$0,d5
	lea loc_090ce4,a1;Title data
	adda.l #$60,a1
	moveq #2,d7

loc_00d85c:
	movea.l (a1)+,a0
	movem.l d0/d1/d2/d3/d4/d5/d7/a1,-(a7)
	jsr loc_0041d8
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d7/a1
	dbra d7,loc_00d85c
	rts

;===================;
; Draw Visco Logo
;===================;
loc_00d872:
	move.w #$a0,d0
	move.w #$c0,d1
	move.w (-$fa8,a5),d2
	addq.w #4,d2
	lsl.w #8,d2
	moveq #$0,d3
	moveq #$0,d4
	moveq #$0,d5
	lea loc_090d50,a1
	adda.l #$0,a1
	movea.l (a1),a0
	jsr loc_0041d8
	rts

;===================;
;Draw Copyright
;===================;
loc_00d89e:
	move.w #$a0,d0	
	move.w #$d0,d1
	move.w (-$fa8,a5),d2
	addq.w #5,d2
	lsl.w #8,d2
	moveq #$0,d3
	moveq #$0,d4
	moveq #$0,d5
	lea loc_090d50,a1
	adda.l #$4,a1
	movea.l (a1),a0
	jsr loc_0041d8
	rts

;===================;
;Draw Title BG
;===================;
loc_00d8ca:
	move.w #$a0,d0
	move.w #$70,d1
	move.w (-$fa8,a5),d2
	addq.w #2,d2
	lsl.w #8,d2
	moveq #$0,d3
	moveq #$0,d4
	moveq #$0,d5
	lea loc_090ce4,a1
	adda.l #$8,a1
	movea.l (a1)+,a0
	jsr loc_0041d8
	rts

;===================;
; Draw Revenge Logo ;
;===================;
loc_00d8f6:
	move.w #$9b,d0
	move.w #$6d,d1
	move.w #$7d,d2
	lsl.w #8,d2
	moveq #$0,d3
	moveq #$0,d4
	moveq #$0,d5
	lea loc_090d60,a1
	movea.l (a1)+,a0
	jsr loc_0041d8
	rts

;=========================;
; Palette Effect on Title ;
;=========================;
loc_00d91a:
	addq.w #1,(-$fa6,a5)
	moveq #$0,d0
	move.w (-$fa6,a5),d0
	asr.w #2,d0
	divu.w #$a,d0
	swap d0
	add.w d0,d0
	lea loc_096d38,a0
	move.w (a0,d0.w),d0
	lea (a0,d0.w),a0
	move.w (-$fa8,a5),d0
	move.w d0,-(a7)
	move.l a0,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	rts

;=====================;
;Clear title animation;
;=====================;
loc_00d950:
	clr.w (-$fa6,a5)
	rts

;=======================;
;Another Palette effect?;
;=======================;
loc_00d956:
	movem.l d0/a0,-(a7)
	addq.w #1,(-$fa6,a5)
	moveq #0,d0
	move.w (-$fa6,a5),d0
	asr.w #1,d0
	divu.w #$a,d0
	swap d0
	add.w d0,d0
	lea loc_096d38,a0
	move.w (a0,d0.w),d0
	lea (a0,d0.w),a0
	move.w (-$fa8,a5),d0
	move.w d0,-(a7)
	move.l a0,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	movem.l (a7)+,d0/a0
	rts	

;=======================;
;pal line for game intro;
;=======================;
loc_00d994:
	movem.l d0-d2/d7,-(a7)
	jsr loc_00da02(pc)
	bne.b loc_00d9fc
	move.w #$12b,d7
	move.w #$80,d1
	move.w d1,(-$fa4,a5)
	addq.w #4,d1
	move.w d1,-(a7)
	move.l #loc_00dd52,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	movea.l #$400022,a0
	move.w (a0),d2
	movem.l d2/a0,-(a7)
	move.w #$ff0,(a0)

loc_00d9ce:
	jsr loc_00da46(pc)
	movem.l d7,-(a7)
	jsr loc_00da1a(pc)
	movem.l (a7)+,d7
	trap #5
	dbra d7,loc_00d9ce
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	movem.l (a7)+,d2/a0
	move.w d2,(a0)

loc_00d9fc:
	movem.l (a7)+,d0/d1/d2/d7
	rts

;===================
;
;===================
loc_00da02:
	tst.b $10fd82.l
	beq.b loc_00da16
	cmpi.w #$2,(-$7f94,a5)
	bne.b loc_00da16
	moveq #$0,d0
	bra.b loc_00da18

loc_00da16:
	moveq #-$1,d0

loc_00da18:
	rts

;===================
;
;===================
loc_00da1a:
	move.w #$a0,d0
	move.w #$c0,d1
	move.w (-$fa4,a5),d2
	addq.w #4,d2
	lsl.w #8,d2
	moveq #$0,d3
	moveq #$0,d4
	moveq #$0,d5
	lea loc_090d50,A1
	adda.l #$0,a1
	movea.l (a1),a0
	jsr loc_0041d8
	rts

;======================
; US Violence Advisory
;======================
	include "Boot/USadvise.asm"

RevengeTitlePalette: ;dd32
	dc.w $6031,$0333,$7777,$0eef,$0aab,$6445,$1bbf,$077a
	dc.w $6449,$766e,$7001,$633d,$7004,$000a,$100f,$7fff

loc_00dd52:
	dc.l loc_00dd62,loc_00dd82,loc_00dda2,$00000000

loc_00dd62:
	dc.w $2741,$1641,$4432,$0000,$7213,$0114,$1004,$0006
	dc.w $1006,$0008,$1008,$1009,$000a,$100b,$100d,$100f

loc_00dd82:
	dc.w $268a,$18bf,$78af,$789f,$199f,$198f,$797f,$597f
	dc.w $1a6f,$3a5f,$5a5f,$5a4f,$3b3f,$3b2f,$5b2f,$0000

loc_00dda2:
	dc.w $0000,$741e,$630b,$4208,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

;===================;
;Attract Visuals
;===================;
	include "Game/Attract.asm"

;===================;
;How to Play
;===================;
	include "Game/HowToPlay.asm"

;===================;
;Versus Screen
;===================;
	include "char/versus.asm"

;===================;
;Character Select
;===================;
	include "char/select.asm"

;===================;
;Win Quote Screen
;===================;
	include "char/winquote.asm"

;===================;
;Score Screen
;===================;
	include "Game/Score.asm"

;===================;
;Ending
;===================;
	include "char/endings.asm"

;===================;
;   Title  Screen   ;
;===================;
	include "Game/Title.asm"

;----------------------
;Main loop?
loc_017d2c:
	sf (-$f38,a5)
	sf (-$f37,a5)
	sf (-$7f7d,a5)
	sf (-$f35,a5)
	clr.w (-$f92,a5)
	clr.w (-$3d0,a5)
	clr.w (-$3ce,a5)
	lea (p1ma5,a5), a4
	move.b #0,($2,a4)
	clr.b (3,a4)
	clr.b (4,a4)
	clr.b (5,a4)
	clr.w (6,a4)
	clr.l (8,a4)
	clr.w ($c,a4)
	clr.w ($e,a4)
	clr.w ($10,a4)
	move.w #0,($12,a4)
	clr.w ($16,a4)
	clr.l ($18,a4)
	clr.w ($1c,a4)
	clr.w ($204,a4)
	clr.l ($24,a4)
	clr.w ($28,a4)
	lea (p2ma5,a5),a4
	move.b #0,(2,a4)
	clr.b (3,a4)
	clr.b (4,a4)
	clr.b (5,a4)
	clr.w (6,a4)
	clr.l (8,a4)
	clr.w ($c,a4)
	clr.w ($e,a4)
	clr.w ($10,a4)
	move.w #9,($12,a4)
	clr.w ($16,a4)
	clr.l ($18,a4)
	clr.w ($1c,a4)
	clr.w ($204,a4)
	clr.l ($24,a4)
	clr.w ($28,a4)

    move.w #$407,-(a7)
    jsr loc_006fec
    addq.l #2,a7

    jsr loc_017d02
    bsr.w loc_01a604
    jsr loc_003a16
    jsr loc_005ce8
    jsr loc_0071e0
    move.w #$20,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    tst.b (-$7f87,a5)
    bne.b loc_017e60
    move.w #3,-(a7)
    pea loc_01dc06;How to play
    trap #1
    addq.l #6, a7
    jsr loc_028358
    jsr loc_027a4a
    move.w #4, -(a7)
    pea loc_02778e
    trap #1
    addq.l #6, a7
    
    jsr loc_010cae
    move.w #1,d0
    move.w #3,d1
    lsl.w d1,d0
    move.w d0,-(a7)
    trap #2
    addq.l #2,a7
    move.w #1,d0
    move.w #4,d1
    lsl.w d1, d0
    move.w d0, -(a7)
    trap #2
    addq.l #2,a7

loc_017e60:
    clr.w (-$efc,a5)
    clr.w (-$efa,a5)
    bsr.w loc_01ab3a
    move.w #1,(-$f30,a5)
    clr.w (-$f2c,a5)
    jsr loc_01d092
    tst.b (-$eaa,a5)
    beq.w loc_017ed8
    move.w (-$ec6,a5),d0
    cmpi.w #1,d0
    blt.w loc_017ed8
    cmpi.w #$a,d0
    ble.b loc_017ea4
    cmpi.w #$b,d0
    beq.b loc_017ea0
	bra.w loc_017ed8

loc_017ea0:
    move.w #$a,d0

loc_017ea4:
    move.w d0,(-$f30,a5)
    lea (-$ec4,a5),a0;+$20 before p1
    lea (-$f24,a5),a1;+$20 before p2
    move.w #9,d7

loc_017eb4:
    move.b (a0)+,d0
    ext.w d0
    move.w d0,(a1)+
    dbra d7,loc_017eb4
    lea (-$eba,a5),a0
    lea (-$f10,a5),a1
    move.w #9,d7

loc_017eca:
    move.b (a0)+,d0
    ext.w d0
    move.w d0,(a1)+
    dbra d7,loc_017eca

    st (-$f34,a5)

loc_017ed8:
	move.w #1,BattleCounter(a5)
	cmpi.w #1,(-$7f94,a5)
	bne.w loc_017efe
	move.w #7,-(a7)
	move.l loc_01b8f8(pc),-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	bra.w loc_017f10

loc_017efe:
    move.w #7,-(a7)
    move.l loc_01b918(pc),-(a7)
    jsr FuncPaletteLoad
    lea (6,a7),a7

loc_017f10:
    trap #5
    btst #5,DDip1(a5);Scene Select
    beq.w loc_017f20
    bsr.w loc_01b19c

loc_017f20:
	tst.b (-$f37,a5)
	bne.w loc_0182c6

loc_017f28:
	move.w #$407,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	cmpi.w #$a,(-$f30,a5)
	bgt.w loc_01951c
	bsr.w loc_01a82e
	tst.b (-$f37,a5)
	bne.w loc_0182d6
	bsr.w loc_01aa1e
	tst.b (-$f37,a5)
	bne.w loc_0182d6
	clr.w (-$e86,a5)
	clr.l (-$e84,a5)
	clr.w (-$ca2,a5)
	btst #0,(-$f38,a5)
	beq.b loc_017f76
	clr.w (-$ca0,a5)
	move.l (-$e80,a5),(-$e8c,a5)
	bra.b loc_017f7a

loc_017f76:
	clr.w (-$ca0,a5)

loc_017f7a:
	clr.w (-$926,a5)
	clr.l (-$924,a5)
	clr.w (-$742,a5)
	btst #1,(-$f38,a5)
	beq.b loc_017f9a
	clr.w (-$740,a5)
	move.l (-$920,a5),(-$92c,a5)
	bra.b loc_017f9e

loc_017f9a:
    clr.w (-$740,a5)

loc_017f9e:
	move.w #1,(-$f2e,a5)
	bsr.w loc_01b14a
	sf (-$3e4,a5)
	sf (-$3e3,a5)
	move.w #3,-(a7)
	pea loc_01ddc4
	trap #1
	addq.l #6,a7
	jsr loc_028358
	jsr loc_027a4a
	move.w #4,-(a7)
	pea loc_02778e
	trap #1
	addq.l #6,a7
	bra.b loc_017ff2

loc_017fda:
    move.w #$607,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    move.w #$186b,-(a7)
    jsr loc_006fec
    addq.l #2,a7

loc_017ff2:
	bsr.w loc_01b16a
	tst.b (-$f37,a5)
	beq.w loc_018006
	bsr.w loc_01a364
	bra.w loc_0182c6

loc_018006:
	sf (-$7f7e,a5)
	sf (-$f36,a5)
	jsr loc_028358
	jsr loc_027a4a

loc_01801a:
	trap #5
	bsr.w loc_019d6e
	bsr.w loc_01a5b0
	tst.b (-$f37,a5)
	beq.w loc_018044
	cmpi.w #$a,(-$f30,a5)
	bge.b loc_01803c
	tst.b (-$3dd,a5)
	bne.w loc_018044

loc_01803c:
	bsr.w loc_01a364
	bra.w loc_0182c6

loc_018044:
	tst.b (-$3dd,a5)
	beq.w loc_018050
	st (-$7f7e,a5)

loc_018050:
	tst.b (-$3de,a5)
	bne.b loc_01805e
	tst.b (-$3e0,a5)
	bne.w loc_018064

loc_01805e:
	bsr.w loc_01a28a
	bra.b loc_01801a

loc_018064:
	bsr.w loc_0184d6
	st (-$3df,a5)
	sf (-$3e0,a5)
	st (-$3de,a5)
	bset #0,(-$45e4,a5)
	addq.w #1,(-$f2e,a5)
	addq.w #1,BattleCounter(a5)
	cmpi.w #$63,BattleCounter(a5)
	ble.b loc_018090
	move.w #$63,BattleCounter(a5)

loc_018090:
	cmpi.b #1,(-$f38,a5)
	beq.w loc_0180c0
	cmpi.b #2,(-$f38,a5)
	beq.w loc_0180a8
	bra.w loc_0180d4

loc_0180a8:
	move.w #0,d0
	lea $10715c.l,a0
	lea $1076bc.l,a1
	bsr.w loc_01822a
	bra.w loc_0180d4

loc_0180c0:
	move.w #1,d0
	lea $1076bc.l,a0
	lea $10715c.l,a1
	bsr.w loc_01822a

loc_0180d4:
    move.w (-$ca0,a5),(-$e7c,a5)
    move.w (-$740,a5),(-$91c,a5)
    move.l (-$e8c,a5),(-$e80,a5)
    move.l (-$92c,a5),(-$920,a5)
    move.b (-$f36,a5),d0
    beq.w loc_017fda
    move.w #1,d0
    move.w #3,d1
    lsl.w d1,d0
    move.w d0,-(a7)
    trap #2
    addq.l #2,a7
    move.w #1,d0
    move.w #4,d1
    lsl.w d1,d0
    move.w d0,-(a7)
    trap #2
    addq.l #2,a7

    move.b (-$f36,a5),d0
    not.b d0
    and.b (-$f38,a5),d0
    beq.w loc_01819c
    move.b d0,(-$f38,a5)
    addq.w #1,(-$f30,a5)
    cmpi.w #$a,(-$f30,a5)
    bgt.w loc_01951c
    sf (-$7f7e,a5)
    jsr loc_005ce8
    jsr loc_0071e0
    bsr.w loc_019d6e
    move.w #2,-(a7)
    pea loc_018ef4
    trap #1
    addq.l #6,a7

loc_018156:
	trap #5
	bsr.w loc_01a5b0
	tst.b (-$f37,a5)
	beq.b loc_01816a
	bsr.w loc_01a498
	bra.w loc_0182c6

loc_01816a:
    tst.b (-$f8e,a5)
    beq.b loc_018156
    jsr loc_00922c

loc_018176:
	trap #5
	bsr.w loc_01a5b0
	tst.b (-$f37,a5)
	beq.b loc_01818a
	bsr.w loc_01a498
	bra.w loc_0182c6

loc_01818a:
	move.w (-$54b2,a5),d0
	btst #2,d0
	bne.b loc_018176
	bsr.w loc_01b04c
	bra.w loc_017f28

loc_01819c:
	clr.w (-$f2c,a5)
	st (-$7f7e,a5)
	trap #5
	bsr.w loc_01a5b0
	tst.b (-$f37,a5)
	beq.w loc_0181ea
	cmpi.b #1,(-$f38,a5)
	beq.w loc_0181c6
	cmpi.b #2,(-$f38,a5)
	beq.w loc_0181d4

loc_0181c6:
	bsr.w loc_01959e
	move.b #2,(-$f38,a5)
	bra.w loc_0181de

loc_0181d4:
	bsr.w loc_019626
	move.b #1,(-$f38,a5)

loc_0181de:
	sf (-$f35,a5)
	sf (-$f37,a5)
	bra.w loc_017f28

loc_0181ea:
	jsr loc_005ce8
	jsr loc_0071e0
	bsr.w loc_019d6e
	move.w #2,-(a7)
	pea loc_018ef4
	trap #1
	addq.l #6,a7

loc_018208:
	trap #5
	tst.b (-$f8e,a5)
	beq.b loc_018208
	jsr loc_00922c

loc_018216:
	trap #5
	move.w (-$54b2,a5),d0
	btst #2,d0
	bne.b loc_018216
	bsr.w loc_01a662
	bra.w loc_018f6c

loc_01822a:
    move.w (-$3ce,a5),d2
    btst d0,(-$3dc,a5)
    bne.w loc_01825e
    move.w ($1f2,a1),d1
    bpl.b loc_01823e
    clr.w d1

loc_01823e:
    ext.l d1
    divu.w #$140,d1
    addi.w #-$2,d1
    add.w d1,d2
    move.w ($1e,a1),d1
    sub.w ($1e,a0),d1
    lsl.w #3,d1
    add.w d1,d2
    bpl.b loc_01825a
    clr.w d2

loc_01825a:
	bra.w loc_018278

loc_01825e:
    mulu.w #8,d2
    lsr.l #4,d2
    move.w ($1f2,a0),d1
    bpl.b loc_01826c
    clr.w d1

loc_01826c:
    ext.l d1
    divu.w #$280,d1
    sub.w d1,d2
    bpl.b loc_018278
    clr.w d2

loc_018278:
    btst d0,(-$f36,a5)
    beq.w loc_01829e
    mulu.w #$c,d2
    lsr.l #4,d2
    movem.l d0,-(a7)
    jsr RandomNumberGod
    andi.w #$1f,d0
    subi.w #$f,d0
    add.w d0,d2
    movem.l (a7)+,d0

loc_01829e:
    move.w d2,(-$3ce,a5)
    cmpi.w #$100,(-$3ce,a5)
    ble.b loc_0182b0
    move.w #$100,(-$3ce,a5)

loc_0182b0:
    rts

loc_0182b2:
    bsr.w loc_01822a
    cmpi.w #$100,(-$3ce,a5)
    ble.b loc_0182c4
    move.w #$100,(-$3ce,a5)

loc_0182c4:
	rts

loc_0182c6:
    move.w #$407,-(a7)
    jsr loc_006fec
    addq.l #2,a7
    bsr.w loc_01a82e

loc_0182d6:
	bsr.w loc_01aa0a
	clr.w (-$e86,a5)
	clr.l (-$e84,a5)
	clr.w (-$ca2,a5)
	clr.w (-$ca0,a5)
	clr.w (-$926,a5)
	clr.l (-$924,a5)
	clr.w (-$742,a5)
	clr.w (-$740,a5)

	move.w #1,(-$f2e,a5)
	bsr.w loc_01b14a
	sf (-$3e4,a5)
	sf (-$3e3,a5)
	move.w #3,-(a7)
	pea loc_01ddc4
	trap #1
	addq.l #6,a7
	jsr loc_028358
	jsr loc_027a4a
	move.w #4,-(a7)
	pea loc_02778e
	trap #1
	addq.l #6,a7
	bra.b loc_01834e

loc_018336:
	move.w #$607,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	move.w #$186b,-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_01834e:
    bsr.w loc_01b16a
    sf (-$7f7e,a5)
    sf (-$f36,a5)
    jsr loc_028358
    jsr loc_027a4a

loc_018366:
	trap #5
	bsr.w loc_019d6e
	tst.b (-$3de,a5)
	bne.b loc_01837a
	tst.b (-$3e0,a5)
	bne.w loc_018380

loc_01837a:
	bsr.w loc_01a28a
	bra.b loc_018366

loc_018380:
	bsr.w loc_0184d6
	st (-$3df,a5)
	sf (-$3e0,a5)
	st (-$3de,a5)
	bset #0,(-$45e4,a5)
	addq.w #1,(-$f2e,a5)
	addq.w #1,(-$f2a,a5)
	cmpi.w #$63,(-$f2a,a5)
	ble.b loc_0183ac
	move.w #$63,(-$f2a,a5)

loc_0183ac:
	lea $10715c.l,a0
	lea $1076bc.l,a1
	tst.w ($1c,a0)
	bne.w loc_0183d8
	tst.w ($1c,a1)
	bne.w loc_0183cc
	bra.w loc_0183e2

loc_0183cc:
	move.w #0,d0
	bsr.w loc_0182b2
	bra.w loc_0183e2

loc_0183d8:
	move.w #1,d0
	exg a0,a1
	bsr.w loc_0182b2

loc_0183e2:
	tst.b (-$f36,a5)
	beq.w loc_018336
	move.w #1,d0
	move.w #3,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	move.w #1,d0
	move.w #4,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	bra.w loc_01840e

loc_01840e:
	clr.w (-$f2c,a5)
	move.b (-$f36,a5),d0
	beq.w loc_0184d2
	cmpi.b #1,d0
	beq.w loc_01842e
	cmpi.b #2,d0
	beq.w loc_01844c
	bra.w loc_0184d2

loc_01842e:
    addq.w #1,(p2wincount,a5)
    move.w (p2wincount,a5),d0
    cmpi.w #$63,d0
    bcs.b loc_018444
    move.w #$63,d0
    move.w d0,(p2wincount,a5)

loc_018444:
	bsr.w loc_01959e
	bra.w loc_01846a

loc_01844c:
    addq.w #1,(-$e88,a5)
    move.w (-$e88,a5),d0
    cmpi.w #$63,d0
    bcs.b loc_018462
    move.w #$63,d0
    move.w d0,(-$e88,a5)

loc_018462:
	bsr.w loc_019626
	bra.w loc_01846a

loc_01846a:
    sf (-$f35,a5)
    sf (-$f37,a5)
    jsr loc_005ce8
    jsr loc_0071e0
    move.w #2,-(a7)
    pea loc_018ef4
    trap #1
    addq.l #6,a7

loc_01848c:
	trap #5
	bsr.w loc_01a5b0
	tst.b (-$f37,a5)
	beq.b loc_0184a0
	bsr.w loc_01a498
	bra.w loc_0182c6

loc_0184a0:
	tst.b (-$f8e,a5)
	beq.b loc_01848c
	jsr loc_00922c

loc_0184ac:
	trap #5
	bsr.w loc_01a5b0
	tst.b (-$f37,a5)
	beq.b loc_0184c0
	bsr.w loc_01a498
	bra.w loc_0182c6

loc_0184c0:
	move.w (-$54b2,a5),d0
	btst #2,d0
	bne.b loc_0184ac
	bsr.w loc_01b04c
	bra.w loc_017f28

loc_0184d2:
	bra.w loc_018f58

loc_0184d6:
	move.b (-$3dc,a5),d0
	beq.w loc_01860a
	cmpi.b #1,d0
	beq.w loc_0184f2
	cmpi.b #2,d0
	beq.w loc_01857e
	bra.w loc_01860a


;Round end
loc_0184f2:
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	addq.w #1,(-$e86,a5)
	bset #0,(-$39a,a5)
	move.w (-$e86,a5),d1
	cmpi.w #1,d1
	bne.w loc_01851a
	jsr RandomNumberGod
	move.b d0,(-$e84,a5)

loc_01851a:
	cmpi.w #2,d1
	bne.w loc_01852c
	jsr RandomNumberGod
	move.b d0,(-$e83,a5)

loc_01852c:
	cmpi.w #3,d1
	bne.w loc_01853e
	jsr RandomNumberGod
	move.b d0,(-$e82,a5)

loc_01853e:
	cmp.w (-$f28,a5),d1
	blt.b loc_01854a
	ori.b #2,(-$f36,a5)

loc_01854a:
	cmpi.b #3,(-$f38,a5)
	beq.w loc_018574
	cmpi.b #1,(-$f38,a5)
	bne.w loc_01856c
	sf d0
	bsr.w loc_018ab6
	bsr.w loc_018624
	bra.w loc_018622

loc_01856c:
	bsr.w loc_018b6a
	bra.w loc_018622

loc_018574:
	st d0
	bsr.w loc_01897e
	bra.w loc_018622

loc_01857e:
	lea (p2ma5,a5),a4
	lea (p1ma5,a5),a3
	addq.w #1,(-$926,a5)
	bset #1,(-$39a,a5)
	move.w (-$926,a5),d1
	cmpi.w #1,d1
	bne.w loc_0185a6
	jsr RandomNumberGod
	move.b d0,(-$924,a5)

loc_0185a6:
	cmpi.w #2,d1
	bne.w loc_0185b8
	jsr RandomNumberGod
	move.b d0,(-$923,a5)

loc_0185b8:
	cmpi.w #3,d1
	bne.w loc_0185ca
	jsr RandomNumberGod
	move.b d0,(-$922,a5)

loc_0185ca:
	cmp.w (-$f28,a5),d1
	blt.b loc_0185d6
	ori.b #1,(-$f36,a5)

loc_0185d6:
	cmpi.b #3,(-$f38,a5)
	beq.w loc_018600
	cmpi.b #2,(-$f38,a5)
	bne.w loc_0185f8
	sf d0
	bsr.w loc_018ab6
	bsr.w loc_018624
	bra.w loc_018622

loc_0185f8:
	bsr.w loc_018b6a
	bra.w loc_018622

loc_018600:
	st d0
	bsr.w loc_018a1a
	bra.w loc_018622

loc_01860a:
	move.w (-$f2e,a5), d0
	cmp.w (-$f26,a5), d0
	blt.b loc_01861a
	ori.b #3,(-$f36,a5)

loc_01861a
	bsr.w loc_018bdc
	bra.w loc_018622

loc_018622:
	rts

loc_018624:
	move.w (-$f2e,a5),d0
	cmp.w (-$f26,a5),d0
	bge.w loc_018932
	move.w (pl_life,a4),d5
	asr.w #6,d5
	cmpi.w #$78,d5
	beq.w loc_018646
	mulu.w #$64,d5
	bra.w loc_018654

loc_018646:
	move.w #$2710,d5
	mulu.w (-$f30,a5),d5
	addi.l #$4e20,d5

loc_018654:
	movem.l d0-d4/a1,-(a7)
	move.w #$3300,-(a7)
	move.w #$2,-(a7)
	move.w #0,-(a7)
	move.w #$4,-(a7)
	move.w #$c00,-(a7)
	clr.w -(a7)
	move.w #$716a,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7

	movem.l (a7)+,d0-d4/a1
	movem.l d0-d4/a0-a1,-(a7)
	move.w #$3c00,-(a7)
	move.l #loc_01b67e,-(a7)
	move.w #$7,-(a7)
	move.l d5,-(a7)
	clr.w -(a7)
	move.w #$72ca,-(a7)
	jsr loc_006034
	lea ($10,a7),a7
	
	movem.l (a7)+, d0-d4/a0-a1
	move.w #$1d,d7
	bsr.w loc_018e48
	move.w (-$3da,a5),d6
	lea loc_01b7ee(pc),a0
	add.w d6,d6
	move.w (a0,d6.w),d6
	ext.l d6
	movem.l d0-d4/a1,-(a7)
	move.w #$3300,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #5,-(a7)
	move.w #$c20,-(a7)
	clr.w -(a7)
	move.w #$716d,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7

	movem.l (a7)+,d0-d4/a1
	movem.l d0-d4/a0-a1,-(a7)
	move.w #$3c00,-(a7)
	move.l #loc_01b67e,-(a7)
	move.w #7,-(a7)
	move.l d6,-(a7)
	clr.w -(a7)
	move.w #$72cd,-(a7)
	jsr loc_006034
	lea ($10,a7),a7
	
	movem.l (a7)+,d0-d4/a0-a1
	move.w #$1d,d7
	bsr.w loc_018e48
	clr.l d3
	move.w ($1e,a4),d0
	cmp.w (-$f28,a5),d0
	blt.w loc_01889a
	move.l #$c350,d3
	cmpi.b #3,(-$f38,a5)
	beq.w loc_018748
	move.w (-$f30,a5),d3
	lea loc_01b7ae(pc),a0
	lsl.w #2,d3
	move.l (a0,d3.w),d3

loc_018748:
	move.w (-$f2e,a5),d0
	cmp.w (-$f28,a5),d0
	ble.w loc_0187b8
	
	movem.l d0-d4/a1,-(a7)
	move.w #$3300,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #6,-(a7)
	move.w #$c40,-(a7)
	clr.w -(a7)
	move.w #$7170,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	
	movem.l (a7)+,d0-d4/a1
	movem.l d0-d4/a0-a1,-(a7)
	move.w #$3c00,-(a7)
	move.l #loc_01b67e,-(a7)
	move.w #7,-(a7)
	move.l d3,-(a7)
	clr.w -(a7)
	move.w #$72d0,-(a7)
	jsr loc_006034
	lea ($10,a7),a7

	movem.l (a7)+,d0-d4/a0-a1
	move.w #$1d,d7
	bsr.w loc_018e48
	clr.w (-$f2c,a5)
	bra.w loc_01889a

loc_0187b8:
	lea loc_01b7ae(pc),a0
	move.w (-$f2c,a5),d2
	bpl.b loc_0187c4
	clr.w d2

loc_0187c4:
    cmpi.w #$a,d2
    ble.b loc_0187ce
    move.w #$a,d2

loc_0187ce:
    move.w (-$f30,a5),d3
    sub.w d2,d3
    bpl.b loc_0187da
    clr.w d2
    clr.w d3

loc_0187da:
	lsl.w #2,d3
	adda.w d3,a0
	clr.l d3
	movem.l d0-d4/a1,-(a7)
	move.w #$3300,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #6,-(a7)
	move.w #$c40,-(a7)
	clr.w -(a7)
	move.w #$7170,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7

	movem.l (a7)+,d0-d4/a1

loc_01880c:
	add.l (a0)+,d3
	movem.l d0-d4/a0-a1,-(a7)
	move.w #$3c00,-(a7)
	move.l #loc_01b67e,-(a7)
	move.w #7,-(a7)
	move.l d3,-(a7)
	clr.w -(a7)
	move.w #$72d0,-(a7)
	jsr loc_006034
	lea ($10,a7),a7
	movem.l (a7)+,d0-d4/a0-a1
	move.w #$186a,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	move.w #$1d,d7

	bsr.w loc_018e48
	dbra d2,loc_01880c
	move.l d3,d1
	move.w #8,d2

loc_018854:
	add.l d1,d3
	movem.l d0-d4/a0-a1,-(a7)
	move.w #$3c00,-(a7)
	move.l #loc_01b67e,-(a7)
	move.w #7,-(a7)
	move.l d3,-(a7)
	clr.w -(a7)
	move.w #$72d0,-(a7)
	jsr loc_006034
	lea ($10,a7),a7
	movem.l (a7)+,d0-d4/a0-a1
	move.w #$18b3,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	move.w #5,d7
	bsr.w loc_018e48
	dbra d2,loc_018854
	addq.w #1,(-$f2c,a5)

loc_01889a:
	move.l d5,d4
	add.l d6,d4
	add.l d3,d4
	movem.l d0-d4/a1,-(a7)
	move.w #$1300,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #9,-(a7)
	move.w #$c60,-(a7)
	clr.w -(a7)
	move.w #$7174,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	
	movem.l (a7)+,d0-d4/a1
	movem.l d0-d4/a0-a1,-(a7)
	move.w #$1c00,-(a7)
	move.l #loc_01b67e,-(a7)
	move.w #7,-(a7)
	move.l d4,-(a7)
	clr.w -(a7)
	move.w #$72d4,-(a7)
	jsr loc_006034
	lea ($10,a7),a7

	movem.l (a7)+,d0-d4/a0-a1
	add.l d4,($18,a4)
	bsr.w loc_019d6e

	move.w #$18b4,-(a7)
	jsr loc_006fec
	addq.l #2,a7

	move.w #$95,d7
	bsr.w loc_018e48
	movem.l d0-d1/a0,-(a7)
	
	move.w #$c,-(a7)
	move.w #$12,-(a7)
	clr.w -(a7)
	move.w #$716a,-(a7)
	jsr loc_005f72
	lea ($8,a7),a7

	movem.l (a7)+, d0-d1/a0
	rts


;--------------------------
loc_018932:;No Bonus
	movem.l d0/a0-a1,-(a7)
	move.w #$300,-(a7)
	move.l #loc_01b306,-(a7)
	clr.w -(a7)
	move.w #$7170,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7

	movem.l (a7)+,d0/a0-a1
	move.w #$95,d7
	bsr.w loc_018e48
	movem.l d0-d1/a0,-(a7)
	move.w #1,-(a7)
	move.w #$12,-(a7)
	clr.w -(a7)
	move.w #$7170,-(a7)
	jsr loc_005f72
	lea (8,a7),a7

	movem.l (a7)+,d0-d1/a0
	rts

;--------------------------
loc_01897e:;Player 1 Character Name Voice Win in Versus
	movem.l d2-d7/a0-a4,-(a7)
	ext.w d0
	move.w d0,-(a7)
	sf (-$ef8,a5)
	move.l #loc_018cc8,(-$ef6,a5)
	sf (-$eee,a5)
	move.l #loc_018d08,(-$eec,a5)
	lea loc_01b38e(pc),a0
	move.w (p1ida5,a5),d0
	andi.w #$f,d0
	lsl.w #2,d0
	adda.w d0,a0
	move.w (2,a0),d5
	move.w (a0),-(a7)
	jsr loc_006fec
	addq.l #2,a7
	
	move.w (a7),d0
	bsr.w loc_018b44
	move.w d1,-(a7)

loc_0189c4:
	lea (-$ef8,a5),a0
	jsr loc_02260c
	jsr loc_0225a2

	lea (-$eee,a5),a0
	jsr loc_02260c
	jsr loc_0225a2

	tst.w d5
	bmi.b loc_0189f8
	subq.w #1,d5
	bpl.b loc_0189f8
	move.w #$1c39,-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_0189f8:
	tst.w (a7)
	bne.b loc_018a02
	bsr.w loc_018e38
	bra.b loc_018a06

loc_018a02:
	bsr.w loc_018e0c

loc_018a06:
	dbra d7,loc_0189c4
	move.w (a7)+,d1
	move.w (a7)+,d0
	movem.l (a7)+,d2-d7/a0-a4
	tst.b d1
	bne.w loc_018c26
	rts

;--------------------------
loc_018a1a:;p2 win in versus
	movem.l d2-d7/a0-a4,-(a7)
	ext.w d0
	move.w d0,-(a7)
	sf (-$ef8,a5)
	move.l #loc_018ce8,(-$ef6,a5)
	sf (-$eee,a5)
	move.l #loc_018d08,(-$eec,a5)
	lea loc_01b38e(pc),a0
	move.w (p2ida5,a5),d0
	andi.w #$f,d0
	lsl.w #2,d0
	adda.w d0,a0
	move.w ($2,a0),d5
	move.w (a0),-(a7)
	jsr loc_006fec
	addq.l #2,a7
	move.w (a7),d0
	bsr.w loc_018b44
	move.w d1,-(a7)

loc_018a60:
	lea (-$ef8,a5),a0
	jsr loc_02260c
	jsr loc_0225a2

	lea (-$eee,a5),a0
	jsr loc_02260c
	jsr loc_0225a2

	tst.w d5
	bmi.b loc_018a94
	subq.w #1,d5
	bpl.b loc_018a94
	move.w #$1c39,-(a7)
	jsr loc_006fec.l
	addq.l #2,a7

loc_018a94:
	tst.w (a7)
	bne.b loc_018a9e
	bsr.w loc_018e38
	bra.b loc_018aa2

loc_018a9e:
	bsr.w loc_018e0c

loc_018aa2:
	dbra d7,loc_018a60
	move.w (a7)+,d1
	move.w (a7)+,d0
	movem.l (a7)+,d2-d7/a0-a4
	tst.b d1
	bne.w loc_018c26
	rts

;--------------------------
loc_018ab6:
	movem.l d2-d7/a0-a4,-(a7)
	ext.w d0
	move.w d0,-(a7)
	sf (-$ef8,a5)
	move.l #loc_018c88,(-$ef6,a5)
	sf (-$eee,a5)
	move.l #loc_018ca8,(-$eec,a5)
	move.w #$1c35,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	move.w #$18,d5
	move.w (a7),d0
	bsr.w loc_018b44
	move.w d1,-(a7)

loc_018aee:
	lea (-$ef8,a5),a0
	jsr loc_02260c
	jsr loc_0225a2

	lea (-$eee,a5),a0
	jsr loc_02260c
	jsr loc_0225a2

	tst.w d5
	bmi.b loc_018b22
	subq.w #1,d5
	bpl.b loc_018b22
	move.w #$1c36,-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_018b22:
	tst.w (a7)
	bne.b loc_018b2c
	bsr.w loc_018e38
	bra.b loc_018b30

loc_018b2c:
	bsr.w loc_018e0c

loc_018b30:
	dbra d7,loc_018aee
	move.w (a7)+,d1
	move.w (a7)+,d0
	movem.l (a7)+,d2-d7/a0-a4
	tst.b d1
	bne.w loc_018c26
	rts

;--------------------------
loc_018b44:
	sf d1
	tst.w (pl_life,a3)
	bpl.b loc_018b58
	move.w (pl_life,a4),d1
	asr.w #6,d1
	cmpi.w #$78,d1
	seq d1

loc_018b58:
	move.w #$4f,d7
	tst.b d0
	beq.b loc_018b68
	tst.b d1
	bne.b loc_018b68
	move.w #$b3,d7

loc_018b68:
	rts

;--------------------------
loc_018b6a:
	movem.l d0-d7/a0-a4,-(a7)
	sf (-$ef8,a5)
	move.l #loc_018d28,(-$ef6,a5)
	sf (-$eee,a5)
	move.l #loc_018d34,(-$eec,a5)
	move.w #$1c35,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	move.w #$18,d5
	move.w #$b3,d7

loc_018b9a:
	lea (-$ef8,a5),a0
	jsr loc_02260c
	jsr loc_0225a2

	lea (-$eee,a5),a0
	jsr loc_02260c
	jsr loc_0225a2
	
	tst.w d5
	bmi.b loc_018bce
	subq.w #1,d5
	bpl.b loc_018bce
	move.w #$1c3a,-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_018bce:
	bsr.w loc_018e0c
	dbra d7,loc_018b9a
	movem.l (a7)+,d0-d7/a0-a4
	rts

;--------------------------
loc_018bdc:
	movem.l d0-d7/a0-a4,-(a7)
	sf (-$ef8,a5)
	move.l #loc_018dce,(-$ef6,a5)
	move.w #$a,d5
	move.w #$b3,d7

loc_018bf4:
	lea (-$ef8,a5),a0
	jsr loc_02260c
	jsr loc_0225a2

	tst.w d5
	bmi.b loc_018c18
	subq.w #1,d5
	bpl.b loc_018c18
	move.w #$1c38,-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_018c18:
	bsr.w loc_018e0c
	dbra d7,loc_018bf4
	movem.l (a7)+,d0-d7/a0-a4
	rts

;--------------------------
loc_018c26:
	movem.l d0-d7/a0-a4, -(a7)
	ext.w d0
	move.w d0,-(a7)
	move.w #$4f,d7
	tst.b d0
	beq.b loc_018c3a
	move.w #$b3,d7

loc_018c3a:
	move.w #$1e,d5
	sf (-$ef8,a5)
	move.l #loc_018d40,(-$ef6,a5)

loc_018c4a:
	lea (-$ef8,a5),a0
	jsr loc_02260c
	jsr loc_0225a2

	tst.w d5
	bmi.b loc_018c6e
	subq.w #1,d5
	bpl.b loc_018c6e
	move.w #$18ea,-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_018c6e:
	tst.w (a7)
	bne.b loc_018c78
	bsr.w loc_018e38
	bra.b loc_018c7c

loc_018c78:
	bsr.w loc_018e0c

loc_018c7c:
	dbra d7,loc_018c4a
	move.w (a7)+,d0
	movem.l (a7)+,d0-d7/a0-a4
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_018c88:
	dc.w $0002,$0015,$007c,$0050,$c900
	dc.w $0002,$0015,$007c,$0050,$c800
	dc.w $0032,$0015,$007c,$0050,$e800
	dc.w $0000

loc_018ca8:
	dc.w $0002,$0016,$00c4,$0050,$c900
	dc.w $0002,$0016,$00c4,$0050,$c800
	dc.w $0032,$0016,$00c4,$0050,$e800
	dc.w $0000

loc_018cc8:
	dc.w $0002,$0052,$0080,$0050,$c900
	dc.w $0002,$0052,$0080,$0050,$c800
	dc.w $0032,$0052,$0080,$0050,$e800
	dc.w $0000

loc_018ce8:
	dc.w $0002,$0053,$0080,$0050,$c900
	dc.w $0002,$0053,$0080,$0050,$c800
	dc.w $0032,$0053,$0080,$0050,$e800
	dc.w $0000

loc_018d08:
	dc.w $0002,$0016,$00c0,$0050,$c900
	dc.w $0002,$0016,$00c0,$0050,$c800
	dc.w $0032,$0016,$00c0,$0050,$e800
	dc.w $0000

loc_018d28:
	dc.w $003c,$0015,$0074,$0050,$e800
	dc.w $0000

loc_018d34:
	dc.w $003c,$0017,$00c4,$0050,$e800
	dc.w $0000

loc_018d40:
	dc.w $0004,$0000,$0000,$0000,$0000
	dc.w $0003,$0061,$00a0,$0060,$e700
	dc.w $0002,$0062,$00a0,$0060,$e700
	dc.w $0002,$0063,$00a0,$0060,$e700
	dc.w $0002,$0064,$00a0,$0060,$e700
	dc.w $0002,$0065,$00a0,$0060,$e700
	dc.w $0002,$0066,$00a0,$0060,$e700
	dc.w $0002,$0067,$00a0,$0060,$e700
	dc.w $0002,$0068,$00a0,$0060,$e700
	dc.w $0002,$0061,$00a0,$0060,$e700
	dc.w $0002,$0012,$00a0,$0060,$e700
	dc.w $0004,$0061,$00a0,$0060,$e700
	dc.w $0004,$0051,$00a0,$0060,$e700
	dc.w $0032,$0012,$00a0,$0060,$e700
	dc.w $0000


loc_018dce:
	dc.w $0004,$0059,$00a0,$0068,$e900
	dc.w $0003,$005a,$00a0,$0068,$e900
	dc.w $0003,$005b,$00a0,$0068,$e900
	dc.w $0002,$005c,$00a0,$0068,$e900
	dc.w $0002,$005d,$00a0,$0068,$e900
	dc.w $0032,$0011,$00a0,$0068,$e900
	dc.w $0000

;--------------------------
loc_018e0c:
	bsr.w loc_018e80
	beq.w loc_018e28
	bmi.w loc_018e20
	subq.w #$2,d7
	bpl.b loc_018e1e
	clr.w d7

loc_018e1e:
	bra.b loc_018e28

loc_018e20:
	subi.w #$b,d7
	bpl.b loc_018e28
	clr.w d7

loc_018e28:
	trap #5
	movem.l d0-d7/a0-a4,-(a7)
	bsr.w loc_01a5b0
	movem.l (a7)+,d0-d7/a0-a4
	rts

;--------------------------
loc_018e38:
	trap #5
	movem.l d0-d7/a0-a4,-(a7)
	bsr.w loc_01a5b0
	movem.l (a7)+,d0-d7/a0-a4
	rts

;--------------------------
loc_018e48:
	bsr.w loc_018e80
	beq.w loc_018e64
	bmi.w loc_018e5c
	subq.w #7,d7
	bpl.b loc_018e5a
	clr.w d7

loc_018e5a:
	bra.b loc_018e64

loc_018e5c:
	subi.w #$1f,d7
	bpl.b loc_018e64
	clr.w d7

loc_018e64:
	trap #5
	tst.b (-$f37,a5)
	bne.w loc_018e7a
	movem.l d0-d7/a0-a4,-(a7)
	bsr.w loc_01a5b0
	movem.l (a7)+,d0-d7/a0-a4

loc_018e7a:
	dbra d7, loc_018e48
	rts

;--------------------------
loc_018e80:
	cmpi.b #1,(-$f38,a5)
	beq.w loc_018ea8
	cmpi.b #2,(-$f38,a5)
	beq.w loc_018ebc
	move.b (-$53d1,a5),d0
	or.b (-$53d0,a5),d0
	swap d0
	move.b (-$53cd,a5),d0
	or.b (-$53cc,a5),d0
	bra.b loc_018ed6

loc_018ea8:
	move.b (-$53d1,a5),d0
	swap d0
	move.b (-$53cd,a5),d0
	tst.b (-$f37,a5)

loc_018eb6:
	bne.w loc_018ed0
	bra.b loc_018ed6

loc_018ebc:
	move.b (-$53d0,a5),d0
	swap d0
	move.b (-$53cc,a5),d0
	tst.b (-$f37,a5)
	bne.w loc_018ed0
	bra.b loc_018ed6

loc_018ed0:
	swap d0
	st d0
	swap d0

loc_018ed6:
	andi.b #$f0,d0
	beq.b loc_018ee2
	moveq #-$1,d0
	bra.w loc_018ef2

loc_018ee2:
	swap d0
	andi.b #$f0,d0
	beq.b loc_018ef0
	moveq #1,d0
	bra.w loc_018ef2

loc_018ef0:
	moveq #0,d0

loc_018ef2:
	rts

;--------------------------
loc_018ef4:
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	cmpi.b #1,(-$f36,a5)
	beq.w loc_018f14
	cmpi.b #2,(-$f36,a5)
	beq.w loc_018f16
	bra.w loc_018f52

loc_018f14:
	exg a3,a4

loc_018f16:
	move.w (plcharid,a4),d0
	andi.w #$f,d0
	cmpi.w #9,d0
	ble.b loc_018f26
	clr.w d0

loc_018f26:
	move.w (plpalid,a4),d1
	move.w (-$f32,a5),d2
	move.w (plcharid,a3),d3
	andi.w #$f,d3
	cmpi.w #9,d3
	ble.b loc_018f3e
	clr.w d3

loc_018f3e:
	cmpi.w #$180,(pl_life,a4)
	sle d4
	ext.w d4
	move.b (-$f36,a5),d4
	jmp loc_013e00;winqoute jump

loc_018f52:
	st (-$f8e,a5)
	trap #3

loc_018f58:
	st (-$7f7d,a5)
	bsr.w loc_01a662
	move.w #$407,-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_018f6c:
	tst.b $10fd82.l
	bne.b loc_018f8a
	tst.b (-$7f7d,a5)
	bne.b loc_018f8a
	tst.w (-$53dc,a5)
	bne.b loc_018f8a
	tst.w (-$7f80,a5)
	bne.b loc_018f8a
	bra.w loc_0191dc

loc_018f8a:
	tst.b (-$7f8e,a5)
	bne.w loc_0191dc
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	move.w #$32,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	move.w #$e0,-(a7)
	move.l #loc_0242f0,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	move.w #9,(-$efc,a5)
	move.w #$4f,(-$efa,a5)
	bsr.w loc_0190bc

loc_018fd4:
	move.w (-$efc,a5),d4
	move.w (-$efa,a5),d5
	bsr.w loc_0190f4
	trap #5
	cmpi.w #8,(-$efc,a5)
	bgt.b loc_01900a
	cmpi.w #$47,(-$efa,a5)
	bge.b loc_01900a
	bsr.w loc_018e80
	bpl.b loc_01900a
	subq.w #1,(-$efc,a5)
	move.w #$4f,(-$efa,a5)
	bsr.w loc_0190bc
	bra.w loc_019020

loc_01900a:
	subq.w #1,(-$efa,a5)
	bpl.w loc_019020
	subq.w #1,(-$efc,a5)
	move.w #$4f,(-$efa,a5)
	bsr.w loc_0190bc

loc_019020:
	tst.w (-$7f80,a5)
	bne.b loc_01905e
	tst.w (-$53de,a5)
	beq.w loc_01903e
	move.w #9,(-$efc,a5)
	move.w #$4f,(-$efa,a5)
	bsr.w loc_0190bc

loc_01903e:
	tst.w (-$efc,a5)
	bpl.b loc_018fd4
	st (-$7f7e,a5)
	clr.w d4
	clr.w d5
	bsr.w loc_0190f4
	trap #5
	tst.w (-$7f80,a5)
	bne.w loc_01905e
	bra.w loc_0191dc

loc_01905e:
	st (-$7f7e,a5)
	move.w #$407,-(a7)
	jsr loc_006fec
	addq.l #2,a7

	move.w #$186c,-(a7)
	jsr loc_006fec
	addq.l #2,a7

	lea loc_01b8ce(pc),a0
	move.w #$14,d6
	move.w #$1d,d7

loc_019086:
	move.w (-$efc,a5),d4
	move.w #-1,d5
	bsr.w loc_0190f4
	subq.w #1,d6
	bmi.b loc_01909a
	move.w (a0)+,(-$4234,a5)

loc_01909a
	trap #5
	dbra d7,loc_019086
	bsr.w loc_01a60e
	move.w #9,(-$efc,a5)
	move.w #$4f,(-$efa,a5)
	tst.b (-$f37,a5)
	bne.w loc_0182c6
	bra.w loc_017f28

loc_0190bc:
	movem.l d0/a0,-(a7)
	move.w #$607,-(a7)
	jsr loc_006fec
	addq.l #2,a7

	move.w (-$efc,a5),d0
	bmi.w loc_0190ee
	cmpi.w #9,d0
	bgt.w loc_0190ee
	add.w d0,d0
	lea loc_01b3ce(pc),a0
	move.w (a0,d0.w),-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_0190ee:
	movem.l (a7)+,d0/a0
	rts

;--------------------------
loc_0190f4:
	tst.w d4
	bpl.b loc_0190fa
	clr.w d4

loc_0190fa:
	cmpi.w #9,d4
	ble.b loc_019104
	move.w #9,d4

loc_019104:
	movem.l d0-d6/a0,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	clr.w d3
	move.w #-$1400,d2
	move.w #$4f,d6
	sub.w d5,d6
	cmpi.w #8,d6
	bcc.w loc_019182
	cmpi.w #9,d4
	beq.w loc_019160
	movem.l d0-d4,-(a7)
	move.w #$4f,d6
	sub.w d5,d6
	lsl.w #2,d6
	lea loc_0191bc(pc),a0
	move.w (2,a0,d6.w),d3
	tst.b (1,a0,d6.w)
	beq.b loc_01914a
	eori.w #2,d2

loc_01914a:
	move.b (0,a0,d6.w),d6
	ext.w d6
	add.w d6,d1
	addi.w #$19,d4
	jsr loc_0225a2
	movem.l (a7)+,d0-d4

loc_019160:
	move.w d5,d6
	subi.w #$48,d6
	lsl.w #2,d6
	lea loc_0191bc(pc),a0
	move.w (2,a0,d6.w),d3
	tst.b (1,a0,d6.w)
	beq.b loc_01917a
	eori.w #2,d2

loc_01917a:
	move.b (a0,d6.w),d6
	ext.w d6
	sub.w d6,d1

loc_019182:
	addi.w #$18,d4
	jsr loc_0225a2
	move.w #$a0,d0
	move.w #$70,d1
	move.w #-$1300,d2
	clr.w d3
	move.w #$13,d4
	jsr loc_0225a2
	tst.w d5
	bmi.b loc_0191b6
	move.w #-$1200,d2
	move.w #$77,d4
	jsr loc_0225a2

loc_0191b6:
	movem.l (a7)+,d0-d6/a0

loc_0191ba:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0191bc:
	dc.b $10,$00
	dc.w $0116 
	
	dc.b $1E,$00
	dc.w $0533 
	
	dc.b $2B,$00
	dc.w $0A56 
	
	dc.b $35,$00
	dc.w $117B 
	
	dc.b $3C,$00
	dc.w $1AA3
	
	dc.b $40,$00
	dc.w $22CE
	
	dc.b $41,$00
	dc.w $2BF8
	
	dc.b $40,$FF
	dc.w $33DF

;--------------------------
loc_0191dc:
	bsr.w loc_01a788
	bsr.w loc_0194d8

loc_0191e4:
	cmpi.b #5,(-$ea2,a5)
	beq.w loc_0191fc
	cmpi.b #5,(-$942,a5)
	beq.w loc_0191fc
	bra.w loc_019254

loc_0191fc:
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0

loc_01920e:
	cmpi.b #5,(-$ea2,a5)
	beq.w loc_019226
	cmpi.b #5,(-$942,a5)
	beq.w loc_019226
	bra.w loc_019254

loc_019226:
	bsr.w loc_0194be
	trap #5
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$1000,-(a7)
	move.l #loc_01b31a,-(a7)
	clr.w -(a7)
	move.w #$714f,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1
	bsr.w loc_019502
	bra.b loc_01920e

loc_019254:
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	move.w (-$f30,a5),d0
	cmpi.w #1,d0
	blt.b loc_01927c
	cmpi.w #$a,d0
	ble.b loc_019286
	cmpi.w #$b,d0
	beq.b loc_019282

loc_01927c:
	move.w #1,d0
	bra.b loc_019286

loc_019282:
	move.w #$a,d0

loc_019286:
	move.w d0,(-$ec6,a5)
	lea (-$ec4,a5),a0
	lea (-$f24,a5),a1
	move.w #9,d7

loc_019296:
	move.w (a1)+,d0
	move.b d0,(a0)+
	dbra d7,loc_019296
	lea (-$eba,a5),a0
	lea (-$f10,a5),a1
	move.w #9,d7

loc_0192aa:
	move.w (a1)+,d0
	move.b d0,(a0)+
	dbra d7,loc_0192aa
	jsr loc_01d0f0
	tst.b $10fd83.l
	bne.w loc_0193f4
	cmpi.b #3,(-$f36,a5)
	beq.w loc_0193f4
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	move.w #$f0,-(a7)
	move.l #loc_09fd78,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	clr.w d6
	move.w #$9f,d7
	clr.w (-$ee4,a5)
	clr.w (-$ee2,a5)
	move.w #9,(-$ee0,a5)
	movem.l d0-d2/a0-a1,-(a7)
	move.l (-$ede,a5),d0
	move.w (-$f30,a5),d1
	cmpi.l #$5f5e0ff,d0
	beq.w loc_019348
	cmpi.w #$b,d1
	beq.w loc_019328
	bra.w loc_019358

loc_019328:
	jsr loc_0021ae
	andi.l #$ff,d0
	beq.w loc_019348
	move.w #8,(-$ee4,a5)
	move.w #3,(-$ee2,a5)
	bra.w loc_019380

loc_019348:
	move.w #9,(-$ee4,a5)
	move.w #4,(-$ee2,a5)
	bra.w loc_019380

loc_019358:
	lea loc_01b938,a0

 loc_01935e:
	movea.l a0,a1
	move.w (-$ee0,a5),d2
	lsl.w #3,d2
	adda.w d2,a1
	cmp.w (a1),d1
	bge.w loc_019374
	subq.w #1,(-$ee0,a5)
	bra.b loc_01935e

loc_019374:
	move.w (2,a1),(-$ee4,a5)
	move.w (4,a1),(-$ee2,a5)

loc_019380:
	movem.l (a7)+,d0-d2/a0-a1

loc_019384:
	move.w #$a5,d0
	add.w (-$ee2,a5),d0
	move.w #$5c,d1
	move.w #-$e00,d2
	clr.w d3
	move.w (-$ee4,a5),d4
	addq.w #2,d4
	jsr loc_01949e
	move.w #$a0,d0
	move.w #$70,d1
	move.w #-$f00,d2
	clr.w d3
	move.w #1,d4
	jsr loc_01949e
	move.w #$a0,d0
	move.w #$70,d1
	move.w #-$1000,d2
	clr.w d3
	move.w #0,d4
	jsr loc_01949e
	trap #5
	move.b (-$53cd,a5),d0
	or.b (-$53cc,a5),d0
	andi.b #$f0,d0
	beq.w loc_0193f0
	addq.w #1,d6
	cmpi.w #3,d6
	ble.w loc_0193f0
	clr.w d7

loc_0193f0:
	dbra d7,loc_019384

loc_0193f4:
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	move.w #$407,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	move.w #$33,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	move.w #$1c33,-(a7)
	jsr loc_006fec
	addq.l #2,a7

	move.w #$e0,-(a7)
	move.l #loc_0242f0,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	clr.w d6
	move.w #$9f,d7

loc_019444:
	move.w #$a0,d0
	move.w #$70,d1
	move.w #-$1100,d2
	clr.w d3
	move.w #$14,d4
	jsr loc_0225a2
	trap #5
	move.b (-$53cd,a5),d0
	or.b (-$53cc,a5),d0
	andi.b #$f0,d0
	beq.w loc_01947a
	addq.w #1,d6
	cmpi.w #3,d6
	ble.w loc_01947a
	clr.w d7

loc_01947a:
	dbra d7,loc_019444
	tst.b $10fd82.l
	beq.w loc_01948e
	tst.w (-$53dc,a5)
	bne.b loc_019492

loc_01948e:
	st (-$7faa,a5)

loc_019492:
	clr.w $10fdb6.l
	clr.b (-$53da,a5)
	trap #3

loc_01949e:
	movem.l d0-d7/a0-a2,-(a7)
	lea loc_090fb4,a0
	lsl.w #2,d4
	movea.l (a0,d4.w),a0
	clr.w d4
	clr.w d5
	jsr loc_00431c
	movem.l (a7)+, d0-d7/a0-a2
	rts

;--------------------------
loc_0194be:
	move.w #$a0,d0
	move.w #$70,d1
	clr.w d3
	move.w #-$1200,d2
	move.w #$77,d4
	jsr loc_0225a2
	rts

;--------------------------
loc_0194d8:
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	bsr.w loc_019ca4
	exg a3,a4
	bsr.w loc_019ca4
	exg a3,a4
	move.b (3,a4),d0
	beq.b loc_019500
	move.b (3,a3),d1
	beq.b loc_019500
	cmp.b d1,d0
	blt.b loc_019500
	addq.b #1,(3,a4)

loc_019500:
	rts

;--------------------------
loc_019502:;p1
	cmpi.b #5,(-$ea2,a5)
	bne.b loc_01950e
	bsr.w loc_0196be

loc_01950e:;p2
	cmpi.b #5,(-$942,a5)
	bne.b loc_01951a
	bsr.w loc_0196da

loc_01951a:
	rts

;--------------------------
loc_01951c:
	move.w #$407,-(a7)
	jsr loc_006fec
	addq.l #2,a7

	move.w #$b,(-$f30,a5)
	bsr.w loc_01a788
	bsr.b loc_0194d8
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	st (-$f3b,a5)
	move.w #$2,-(a7)
	pea loc_019596;Ending
	trap #1
	addq.l #6,a7

loc_019558:
	trap #5
	bsr.b loc_019502
	sf (-$f3b,a5)
	cmpi.b #5,(-$ea2,a5)
	bne.b loc_01956c
	st (-$f3b,a5)

loc_01956c:
	cmpi.b #5,(-$942,a5)
	bne.b loc_019578
	st (-$f3b,a5)

loc_019578:
	move.w (-$54b2,a5),d0
	btst #2,d0
	bne.b loc_019558
	move.w #1,d0
	move.w #2,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	bra.w loc_0191e4

loc_019596:
	jsr loc_014bb6;Ending Jump
	trap #3

loc_01959e:
	move.b #3,(-$ea2,a5)
	move.l (-$e8c,a5),(-$e9c,a5)
	move.w (-$f30,a5),(-$e98,a5)
	move.w (p1pala5,a5),(-$e96,a5)
	movem.l d0,-(a7)
	move.w (-$e88,a5),d0
	cmp.w (-$e94,a5),d0
	ble.b loc_0195c8
	move.w d0,(-$e94,a5)

loc_0195c8:
	movem.l (a7)+,d0
	andi.b #-2,(-$f38,a5)
	move.b #0,(-$7f80,a5)
	tst.b (-$7f8e,a5)
	bne.w loc_0195fe
	move.b #2,$10fdb6.l
	move.w #9,(-$efc,a5)
	move.w #$4f,(-$efa,a5)
	sf (-$7f7e,a5)
	st (-$7f7d,a5)
	rts

loc_0195fe:
	move.b #3,$10fdb6.l
	clr.w (-$efc,a5)
	move.w #$4f,(-$efa,a5)
	sf (-$7f7d,a5)
	movem.l a4,-(a7)
	lea (p1ma5,a5),a4
	bsr.w loc_019ca4
	movem.l (a7)+,a4
	rts

loc_019626:
	move.b #3,(-$942,a5)
	move.l (-$92c,a5),(-$93c,a5)
	move.w (-$f30,a5),(-$938,a5)
	move.w (-$932,a5),(-$936,a5)
	movem.l d0,-(a7)
	move.w (p2wincount,a5),d0
	cmp.w (-$934,a5),d0
	ble.b loc_019650
	move.w d0,(-$934,a5)

loc_019650:
	movem.l (a7)+,d0
	andi.b #-3,(-$f38,a5)
	move.b #0,(-$7f7f,a5)
	tst.b (-$7f8e,a5)
	bne.w loc_019686
	move.b #2,$10fdb7.l
	move.w #9,(-$efc,a5)
	move.w #$4f,(-$efa,a5)
	sf (-$7f7e,a5)
	st (-$7f7d,a5)
	rts

loc_019686:
	move.b #3, $10fdb7.l
	clr.w (-$efc,a5)
	move.w #$4f,(-$efa,a5)
	sf (-$7f7d,a5)
	movem.l a4,-(a7)
	lea (p2ma5,a5),a4
	bsr.w loc_019ca4
	movem.l (a7)+,a4
	rts

loc_0196ae:
	moveq #2,d2
	bra.w loc_0197ce

loc_0196b4:
	move.l #$10018,d2
	bra.w loc_0197ce

loc_0196be:
	lea (p1ma5,a5),a4
	lea $10fdb6.l,a0
	moveq #2,d2
	move.b (-$53dc,a5),d3
	move.b (-$53de,a5),d4
	move.b (-$53cd,a5),d5
	bra.w loc_0196fa

loc_0196da:
	lea (p2ma5,a5),a4
	lea $10fdb7.l,a0
	move.l #$10018,d2
	move.b (-$53db,a5),d3
	move.b (-$53dd,a5),d4
	move.b (-$53cc,a5),d5
	bra.w loc_0196fa

loc_0196fa:
	cmpi.b #5,($2,a4)
	beq.w loc_01992e
	tst.b (-$7f7e,a5)
	bne.w loc_0197ce
	subq.w #1,(-$efa,a5)
	bpl.b loc_019718
	move.w #$4f,(-$efa,a5)

loc_019718:
	move.b (a0),d1
	cmpi.b #0,d1
	beq.w loc_019736
	cmpi.b #1,d1
	beq.w loc_0197c6
	cmpi.b #2,d1
	beq.w loc_0197f8
	bra.w loc_019b44

loc_019736:
	move.b #4,($2,a4)
	clr.w (-$efc,a5)
	cmpi.w #$1a,(-$efa,a5)
	bgt.b loc_01974c
	bra.w loc_0197ce

loc_01974c:
	tst.b d3
	beq.b loc_019786
	movem.l d0-d4/a1,-(a7)
	move.w #$2300,-(a7)
	move.w #2,-(a7)
	move.w #2,-(a7)
	move.w #$a,-(a7)
	move.w #$ba0,-(a7)
	move.w #0,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_00613c
	lea ($e,a7),a7

	movem.l (a7)+,d0-d4/a1
	bra.w loc_019b8c

loc_019786:
	tst.b $10fd82.l
	beq.w loc_019b8c
	movem.l d0-d4/a1,-(a7)
	move.w #$3300,-(a7)
	move.w #2,-(a7)
	move.w #2,-(a7)
	move.w #$a,-(a7)
	move.w #$b80,-(a7)
	move.w #0,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_00613c
	lea ($e,a7),a7

	movem.l (a7)+,d0-d4/a1
	bra.w loc_019b8c

loc_0197c6:
	clr.w (-$efc,a5)
	clr.w (-$efa,a5)

loc_0197ce:
	movem.l d0-d1/a0,-(a7)
	move.w #2,-(a7)
	move.w #$e,-(a7)
	move.w #0,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+,d0-d1/a0
	bra.w loc_019b8c

loc_0197f8:
	tst.b $10fd82.l
	bne.b loc_01980e
	tst.b (-$7f7d,a5)
	bne.w loc_01980e
	tst.b d3
	ble.w loc_019910

loc_01980e:
	tst.b (-$7f8e,a5)
	bne.w loc_019910
	move.b #3,(2,a4)
	cmpi.w #8,(-$efc,a5)
	bgt.b loc_01982e
	andi.w #$f0,d5
	beq.b loc_01982e
	clr.w (-$efa,a5)

loc_01982e:
	tst.b d4
	beq.w loc_019840
	move.w #9,(-$efc,a5)
	move.w #$4f,(-$efa,a5)

loc_019840:
	tst.w (-$efa,a5)
	bne.b loc_01984e
	subq.w #1,(-$efc,a5)
	bmi.w loc_019910

loc_01984e:
	movem.l d0-d1/a0,-(a7)
	move.w #2,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_005f72
	lea (8,a7),a7

	movem.l (a7)+,d0-d1/a0
	addq.w #2,d2
	movem.l d0-d4/a1,-(a7)
	move.w #$1300,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #9,-(a7)
	move.w #$bc0,-(a7)
	move.w #0,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_00613c
	lea ($e,a7),a7

	movem.l (a7)+,d0-d4/a1
	addi.w #9,d2
	move.w (-$efc,a5),d0
	ext.l d0
	movem.l d0-d4/a0-a1,-(a7)
	move.w #$1c00,-(a7)
	move.l #loc_01b65e,-(a7)
	move.w #1,-(a7)
	move.l d0,-(a7)
	move.w #0,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_006034
	lea ($10,a7),a7
	
	movem.l (a7)+,d0-d4/a0-a1
	addq.w #1,d2
	movem.l d0-d1/a0,-(a7)
	move.w #2,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_005f72
	lea (8,a7),a7

	movem.l (a7)+,d0-d1/a0
	subi.w #$c,d2
	bra.w loc_019b8c

loc_019910:
	clr.w (-$efc,a5)
	move.w #$4f,(-$efa,a5)
	move.b #3,(a0)
	sf (-$7f7d,a5)
	bsr.w loc_019ca4
	bsr.w loc_0197ce
	bra.w loc_019b8c

loc_01992e:
	move.b (3,a4),d0
	cmpi.b #5,d0
	bgt.w loc_019b2a
	cmpi.b #1,d0
	blt.w loc_019b2a
	cmpi.b #3,(4,a4)
	bcc.w loc_019a72
	ext.w d0
	subq.w #1,d0
	mulu.w #$e,d0
	movem.l a0-a1,-(a7)
	lea (-$7ffe,a5),a0
	adda.w d0,a0
	btst #2,d5
	beq.b loc_019970
	subq.b #1,(5,a4)
	bge.b loc_019970
	move.b #$1c,(5,a4)

loc_019970:
	btst #3,d5
	beq.b loc_019986
	addq.b #1,(5,a4)
	cmpi.b #$1d,(5,a4)
	blt.b loc_019986
	clr.b (5,a4)

loc_019986:
	move.b (5,a4),d0
	ext.w d0
	lea loc_01b734(pc),a1
	move.b (0, a1, d0.w),d0
	move.b (4,a4),d1
	ext.w d1
	move.b d0,(6,a0,d1.w)
	move.b (3,a4),d0
	ext.w d0
	subq.w #1,d0
	lsl.w #1,d0
	lea loc_01b72a(pc),a1
	adda.w d0,a1
	move.w (a1),d0
	addq.w #2,d2
	movem.l d0-d4/a1,-(a7)
	move.w #-$d00,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #3,-(a7)
	move.w d0,-(a7)
	move.w #0,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1
	clr.b (9,a0)
	lea (6,a0),a1
	addq.w #4,d2
	clr.w d1
	move.w (6,a4),d0
	andi.w #4,d0
	bne.b loc_019a00
	move.b (4,a4),d0
	ext.w d0
	bset d0,d1

loc_019a00:
	bsr.w loc_019b8e
	subi.w #$c,d2
	move.b (5,a4),d0
	ext.w d0
	lea loc_01b752(pc),a1
	move.b (a1,d0.w),d0
	move.b (4,a4),d1
	ext.w d1
	move.b d0,(6,a0,d1.w)
	subq.w #1,(6,a4)
	bmi.w loc_019a4a
	move.b d5,d0
	andi.b #$F0,d5
	beq.w loc_019a6a
	cmpi.b #$1c,($5,a4)
	beq.w loc_019a4a
	addq.b #1,(4,a4)
	cmpi.b #3,(4,a4)
	bcs.w loc_019a6a

loc_019a4a:
	cmpi.w #$473,(6,a4)
	bge.w loc_019a5a
	bsr.w loc_019c58
	bra.b loc_019a5e

loc_019a5a:
	bsr.w loc_019c9a

loc_019a5e:
	move.w #$4f,(6,a4)
	move.b #3,(4,a4)

loc_019a6a:
	movem.l (a7)+,a0-a1
	bra.w loc_019b8c

loc_019a72:
	move.b (3,a4),d0
	ext.w d0
	subq.w #1,d0
	mulu.w #$e,d0
	movem.l a0-a1,-(a7)
	lea (-$7ffe,a5),a0
	adda.w d0,a0
	move.w (6,a4),d0
	andi.w #4,d0
	seq d1
	move.b (3,a4),d0
	ext.w d0
	subq.w #1,d0
	lsl.w #1,d0
	lea loc_01b72a(pc),a1
	adda.w d0,a1
	move.w (a1),d0
	addq.w #2,d2
	tst.b d1
	bne.b loc_019adc

	movem.l d0-d4/a1,-(a7)
	move.w #-$d00,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #3,-(a7)
	move.w d0,-(a7)
	move.w #0,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_00613c
	lea ($e,a7),a7

	movem.l (a7)+,d0-d4/a1
	bra.b loc_019b0c

loc_019adc:
	movem.l d0-d4/a1,-(a7)
	move.w #$1300,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #3,-(a7)
	move.w d0,-(a7)
	move.w #0,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_00613c
	lea ($e,a7),a7

	movem.l (a7)+,d0-d4/a1

loc_019b0c:
    clr.b (9,a0)
    lea (6,a0),a1
    addq.w #4,d2
    bsr.w loc_019b8e
    subi.w #$c,d2
    movem.l (a7)+,a0-a1
    subq.w #1,(6,a4)
    bpl.w loc_019b8c

loc_019b2a:
	move.b #4, (2,a4)
	clr.b (3,a4)
	clr.b (4,a4)
	clr.w (6,a4)
	bsr.w loc_0197ce
	bra.w loc_019b8c

loc_019b44:
	tst.w (-$efa,a5)
	bne.b loc_019b56
	move.b #0,(a0)
	bsr.w loc_0197ce
	bra.w loc_019b8c

loc_019b56:
	movem.l d0-d4/a1,-(a7)
	move.w #$300,-(a7)
	move.w #2,-(a7)
	move.w #2,-(a7)
	move.w #$a,-(a7)
	move.w #$be0,-(a7)
	move.w #0,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1
	bra.w loc_019b8c

loc_019b8c:
	rts

;--------------------------
loc_019b8e:
	movem.l a0,-(a7)
	lea loc_01b770(pc),a0
	move.b (a1),d0
	bsr.w loc_019bb2
	move.b (1,a1),d0
	bsr.w loc_019bb2
	move.b (2,a1),d0
	bsr.w loc_019bb2
	movem.l (a7)+,a0
	rts

;--------------------------
loc_019bb2:
	bsr.w loc_019c26
	add.w d0,d0
	move.w (0,a0,d0.w),d0
	lsr.w #1,d1
	bcs.b loc_019bf2
	movem.l d0-d4/a1,-(a7)
	move.w #-$d00,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #2,-(a7)
	move.w d0,-(a7)
	move.w #0,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_00613c
	lea ($e,a7),a7

	movem.l (a7)+,d0-d4/a1
	bra.b loc_019c22

loc_019bf2:
	movem.l d0-d4/a1,-(a7)
	move.w #$1300,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #2,-(a7)
	move.w d0,-(a7)
	move.w #0,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1

loc_019c22:
	addq.w #2,d2
	rts

;--------------------------
loc_019c26:
	andi.w #$ff,d0
	cmpi.w #$5f,d0
	bne.b loc_019c36
	move.w #$1c,d0
	bra.b loc_019c56

loc_019c36:
	cmpi.w #$2e,d0
	bne.b loc_019c42
	move.w #$1b,d0
	bra.b loc_019c56

loc_019c42:
	subi.w #$40,d0
	bmi.w loc_019c52
	cmpi.w #$1a,d0
	ble.w loc_019c56

loc_019c52:
	move.w #$1d,d0

loc_019c56:
	rts

;--------------------------
loc_019c58:
	cmpi.l #$41414100,(6,a0)
	beq.b loc_019c7a
	cmpi.l #$20202000,(6,a0)           
	beq.b loc_019c9a
	cmpi.l #$53455800,(6,a0)
	beq.b loc_019c7a
	bra.w loc_019c98

loc_019c7a:
	move.w ($a,a0),d0
	andi.w #$f, d0
	lsl.w #2,d0
	movem.l a0,-(a7)
	lea loc_01b68e(pc),a0
	move.l (0,a0,d0.w),d0
	movem.l (a7)+,a0
	move.l d0,(6,a0)

loc_019c98:
	rts

loc_019c9a:
	move.l #$56495300,($6,a0)
	rts

;--------------------------
loc_019ca4:
	movem.l d0-d1/d7/a0,-(a7)
	lea (-$7ffe,a5),a0
	move.l (8,a4),d1
	moveq #1,d0
	move.w #5,d7

loc_019cb6:
	cmp.l (0,a0),d1
	bgt.w loc_019cd6
	lea ($e,a0),a0
	addq.w #1,d0
	dbra d7,loc_019cb6
	move.b #4,($2,a4)
	clr.b (3,a4)
	bra.w loc_019d58

loc_019cd6:
	move.b #5,(2,a4)
	move.b d0,(3,a4)
	clr.b (4,a4)
	move.b #1,(5,a4)
	move.w #$4af,(6,a4)
	move.w #$e,d1
	mulu.w #5,d1
	lea (-$7ffe,a5),a0
	adda.l d1,a0
	moveq #6,d7
	sub.w d0,d7
	beq.w loc_019d14
	mulu.w #$e,d7
	subq.w #1,d7

loc_019d0c:
	move.b -(a0),($e,a0)
	dbra d7,loc_019d0c

loc_019d14:
	move.l (8,a4),d0
	cmpi.l #$5f5e0ff,d0
	ble.w loc_019d28
	move.l #$5f5e0ff,d0

loc_019d28:
	move.l d0,(0,a0)
	move.w ($c,a4),(4,a0)
	move.l #$41414100,(6,a0)
	andi.w #$f,($e,a4)
	cmpi.w #9,($e,a4)
	ble.b loc_019d4c
	clr.w ($e,a4)

loc_019d4c:
 	move.w ($e,a4),($a,a0)
 	move.w ($10,a4),($c,a0)

loc_019d58:
	movem.l (a7)+,d0-d1/d7/a0
	clr.l ($8,a4)
	clr.w ($c,a4)
	clr.w ($e,a4)
	clr.w ($10,a4)
	rts

;--------------------------
loc_019d6e:
	move.b (-$f38,a5),d0
	not.b d0
	andi.b #3,d0
	beq.w loc_01a046
	btst #0,(-$f38,a5)
	beq.w loc_019ee0
	move.l (-$e8c,a5),d0
	cmpi.l #$5f5e0ff,d0
	ble.w loc_019d9e
	move.l #$5f5e0ff,d0
	move.l d0,(-$e8c,a5)

loc_019d9e:
	tst.w (-$e88,a5)
	bne.w loc_019dfe
	movem.l d0-d4/a1,-(a7)
	move.w #$5300,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #2,-(a7)
	move.w #$c80,-(a7)
	clr.w -(a7)
	move.w #$7082,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7

	movem.l (a7)+,d0-d4/a1
	movem.l d0-d4/a0-a1,-(a7)
	move.w #$3c00,-(a7)
	move.l #loc_01b65e,-(a7)
	move.w #8,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$70c2,-(a7)
	jsr loc_006034
	lea ($10,a7),a7

	movem.l (a7)+,d0-d4/a0-a1
	bra.w loc_019ee0

loc_019dfe:
	movem.l d0-d4/a1,-(a7)
	move.w #$5300,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #2,-(a7)
	move.w #$c80,-(a7)
	clr.w -(a7)
	move.w #$7042,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1

	movem.l d0-d4/a0-a1,-(a7)
	move.w #$3c00,-(a7)
	move.l #loc_01b65e,-(a7)
	move.w #8,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$7082,-(a7)
	jsr loc_006034
	lea ($10,a7),a7
	movem.l (a7)+,d0-d4/a0-a1

	move.w (-$e88,a5),d0
	ext.l d0

	movem.l d0-d4/a0-a1,-(a7)
	move.w #-$400,-(a7)
	move.l #loc_01b66e,-(a7)
	move.w #2,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$7182,-(a7)
	jsr loc_006034
	lea ($10,a7),a7
	movem.l (a7)+,d0-d4/a0-a1

	cmpi.w #1,d0
	bgt.b loc_019eb4
	movem.l d0-d4/a1,-(a7)
	move.w #$1300,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #2,-(a7)
	move.w #$c8e,-(a7)
	clr.w -(a7)
	move.w #$71c2,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1

	bra.b loc_019ee0

loc_019eb4:
	movem.l d0-d4/a1,-(a7)
	move.w #$1300,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #2,-(a7)
	move.w #$cae,-(a7)
	clr.w -(a7)
	move.w #$71c2,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1

loc_019ee0:
	btst #1,(-$f38,a5)
	beq.w loc_01a044
	move.l (-$92c,a5),d0
	cmpi.l #$5f5e0ff,d0
	ble.w loc_019f02
	move.l #$5f5e0ff,d0
	move.l d0,(-$92c,a5)

loc_019f02:
	tst.w (p2wincount,a5)
	bne.w loc_019f62
	movem.l d0-d4/a1,-(a7)
	move.w #$5300, -(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #2,-(a7)
	move.w #$c82,-(a7)
	clr.w -(a7)
	move.w #$7342,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1

	movem.l d0-d4/a0-a1,-(a7)
	move.w #$3c00,-(a7)
	move.l #loc_01b65e,-(a7)
	move.w #8,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$7382,-(a7)
	jsr loc_006034
	lea ($10,a7),a7
	movem.l (a7)+,d0-d4/a0-a1
	bra.w loc_01a044

loc_019f62:
	movem.l d0-d4/a1,-(a7)
	move.w #$5300,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #2,-(a7)
	move.w #$c82,-(a7)
	clr.w -(a7)
	move.w #$7302,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1

	movem.l d0-d4/a0-a1,-(a7)
	move.w #$3c00,-(a7)
	move.l #loc_01b65e,-(a7)
	move.w #8,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$7342,-(a7)
	jsr loc_006034
	lea ($10,a7),a7
	movem.l (a7)+,d0-d4/a0-a1
	
	move.w (p2wincount,a5),d0
	ext.l d0
	movem.l d0-d4/a0-a1,-(a7)
	move.w #-$400,-(a7)
	move.l #loc_01b66e,-(a7)
	move.w #2,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$7442,-(a7)
	jsr loc_006034
	lea ($10,a7),a7
	movem.l (a7)+,d0-d4/a0-a1

	cmpi.w #1, d0
	bgt.b loc_01a018
	movem.l d0-d4/a1,-(a7)
	move.w #$1300,-(a7)
	move.w #2,-(a7)
	move.w #0, -(a7)
	move.w #2, -(a7)
	move.w #$c8e,-(a7)
	clr.w -(a7)
	move.w #$7482,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1
	bra.b loc_01a044

loc_01a018:
	movem.l d0-d4/a1,-(a7)
	move.w #$1300,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #2,-(a7)
	move.w #$cae,-(a7)
	clr.w -(a7)
	move.w #$7482,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1

loc_01a044:
	rts

;--------------------------
loc_01a046:;18/4/18 ;win counter render
	move.w (p1wincount,a5),d0
	move.w (p2wincount,a5),d1
	move.w d0,d2
	or.w d1,d2
	beq.w loc_01a230
	tst.w d0
	beq.w loc_01a116
	movem.l d0-d4/a1,-(a7)
	move.w #-$d00,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #8,-(a7)
	move.w #$cc0,-(a7)
	clr.w -(a7)
	move.w #$7042,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1

;1a088
	cmpi.w #1,d0
	bgt.b loc_01a0bc
	movem.l d0-d4/a1,-(a7)
	move.w #-$d00,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #3,-(a7)
	move.w #$cc8,-(a7)
	clr.w -(a7)
	move.w #$7182,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1
	bra.b loc_01a0e8

loc_01a0bc:
	movem.l d0-d4/a1,-(a7)
	move.w #-$d00,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #4,-(a7)
	move.w #$ccb,-(a7)
	clr.w -(a7)
	move.w #$7182,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1

loc_01a0e8:
	ext.l d0
	movem.l d0-d4/a0-a1,-(a7)
	move.w #-$400,-(a7)
	move.l #loc_01b66e,-(a7)
	move.w #2,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$7142,-(a7)
	jsr loc_006034
	lea ($10,a7),a7
	movem.l (a7)+,d0-d4/a0-a1
	bra.w loc_01a142

loc_01a116:
	movem.l d0-d4/a1,-(a7)
	move.w #-$d00,-(a7)
	move.w #2,-(a7)
	move.w #2,-(a7)
	move.w #$a,-(a7)
	move.w #$ce0,-(a7)
	clr.w -(a7)
	move.w #$7042,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1

loc_01a142:
	tst.w d1
	beq.w loc_01a202
	movem.l d0-d4/a1,-(a7)
	move.w #-$d00,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #8,-(a7)
	move.w #$cc0,-(a7)
	clr.w -(a7)
	move.w #$7302,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1

	cmpi.w #1,d1
	bgt.b loc_01a1a8
	movem.l d0-d4/a1,-(a7)
	move.w #-$d00,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #3,-(a7)
	move.w #$cc8,-(a7)
	clr.w -(a7)
	move.w #$7442,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1
	bra.b loc_01a1d4

loc_01a1a8:
	movem.l d0-d4/a1,-(a7)
	move.w #-$d00,-(a7)
	move.w #2,-(a7)
	move.w #0,-(a7)
	move.w #4,-(a7)
	move.w #$ccb,-(a7)
	clr.w -(a7)
	move.w #$7442,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1

loc_01a1d4:
	ext.l d1
	movem.l d0-d4/a0-a1,-(a7)
	move.w #-$400,-(a7)
	move.l #loc_01b66e,-(a7)
	move.w #2,-(a7)
	move.l d1,-(a7)
	clr.w -(a7)
	move.w #$7402,-(a7)
	jsr loc_006034
	lea ($10,a7),a7
	movem.l (a7)+,d0-d4/a0-a1
	bra.w loc_01a22e

loc_01a202:
	movem.l d0-d4/a1,-(a7)
	move.w #-$d00,-(a7)
	move.w #2,-(a7)
	move.w #2,-(a7)
	move.w #$a,-(a7)
	move.w #$ce0,-(a7)
	clr.w -(a7)
	move.w #$7302,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1

loc_01a22e:
	rts

;--------------------------
loc_01a230:
	movem.l d0-d4/a1,-(a7)
	move.w #-$d00,-(a7)
	move.w #2,-(a7)
	move.w #2,-(a7)
	move.w #$a,-(a7)
	move.w #$b60,-(a7)
	clr.w -(a7)
	move.w #$7042,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1


	movem.l d0-d4/a1,-(a7)
	move.w #-$d00,-(a7)
	move.w #2,-(a7)
	move.w #2,-(a7)
	move.w #$a,-(a7)
	move.w #$b60,-(a7)
	clr.w -(a7)
	move.w #$7302,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1
	rts

;--------------------------
loc_01a28a:
	move.w #$7c,d0
	bsr.w loc_01a294
	rts

;--------------------------
loc_01a294:
	tst.b $10fd82.l
	bne.w loc_01a362
	tst.b (DDip1,a5)
	bmi.w loc_01a362
	swap d0
	clr.w d1
	move.b (-$f38,a5),d0
	btst #0,d0
	beq.w loc_01a2ba
	ori.w #2,d1

loc_01a2ba:
	btst #1,d0
	beq.w loc_01a2c6
	ori.w #8,d1

loc_01a2c6:
	move.b (-$53c9,a5),d0
	and.w d1,d0
	beq.w loc_01a362
	swap d0
	move.w d0,-(a7)
	trap #8
	addq.l #2,a7
	swap d0
	movem.l d0-d4/a1,-(a7)
	move.w #$2300,-(a7)
	move.w #1,-(a7)
	move.w #0,-(a7)
	move.w #6,-(a7)
	move.w #$bea,-(a7)
	clr.w -(a7)
	move.w #$7230,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1

loc_01a306:
	move.b #0,(-$53cd,a5)
	move.b #0,(-$53cc,a5)
	trap #5
	clr.w d1
	move.b (-$f38,a5),d0
	btst #0,d0
	beq.w loc_01a326
	ori.w #2,d1

loc_01a326:
	btst #1,d0
	beq.w loc_01a332
	ori.w #8,d1

loc_01a332:
	move.b (-$53c9,a5),d0
	and.w d1,d0
	beq.b loc_01a306
	movem.l d0-d1/a0,-(a7)
	move.w #1,-(a7)
	move.w #6,-(a7)
	clr.w -(a7)
	move.w #$7230,-(a7)
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+,d0-d1/a0
	swap d0
	move.w d0,-(a7)
	trap #$a
	addq.l #2,a7

loc_01a362:
	rts

;--------------------------
loc_01a364:
	tst.b (-$3df,a5)
	beq.b loc_01a376
	move.w #8,-(a7)
	trap #4
	addq.l #2,a7
	bra.w loc_01a384

loc_01a376:
	tst.b (-$3de,a5)
	beq.b loc_01a384
	move.w #4,-(a7)
	trap #4
	addq.l #2,a7

loc_01a384:
	move.w #$407,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	
	move.w #$27,-(a7)
	jsr loc_006fec
	addq.l #2,a7

	cmpi.w #1,(-$7f94,a5)
	bne.w loc_01a3e0
	move.w #7,-(a7)
	move.l loc_01b8f8(pc),-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7

	trap #5
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$7000,-(a7)
	move.l #loc_0ef9e4,-(a7)
	clr.w -(a7)
	move.w #$700d,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7

	movem.l (a7)+,d0-d3/a0-a1
	bra.w loc_01a416

loc_01a3e0:
	move.w #7,-(a7)
	move.l loc_01b918(pc),-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	trap #5
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$7000,-(a7)
	move.l #loc_0ef9e4,-(a7)
	clr.w -(a7)
	move.w #$700d,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7

	movem.l (a7)+, d0-d3/a0-a1

loc_01a416:
	move.w (-$54b2,a5),d7
	btst #3,d7
	beq.b loc_01a458
	clr.w d0
	move.w #$4f,d7

loc_01a426:
	move.b #1,(-$3e4,a5)
	st (-$3dd,a5)
	jsr loc_0200fe
	move.w #$7c,-(a7)
	trap #8
	addq.l #2,a7

	trap #5
	bsr.w loc_01a57a
	move.w #$7c,-(a7)
	trap #$a
	addq.l #2,a7
	trap #5
	bsr.w loc_01a57a
	dbra d7,loc_01a426
	bra.b loc_01a466

loc_01a458:
	move.w #$9f,d7

loc_01a45c:
	trap #5
	bsr.w loc_01a57a
	dbra d7,loc_01a45c

loc_01a466:
	move.w #1,d0
	move.w #2,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	move.w #1,d0
	move.w #3,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	move.w #1,d0
	move.w #4,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	rts

loc_01a498:
	move.w #1,d0
	move.w #2,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	move.w #1,d0
	move.w #3,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	move.w #1,d0
	move.w #4,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	move.w #$407,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	move.w #$27,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	move.w #$60,-(a7)
	trap #8
	addq.l #2,a7
	cmpi.w #1,(-$7f94,a5)
	bne.w loc_01a52c
	move.w #7,-(a7)
	move.l loc_01b8f8(pc),-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	trap #5
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$7000,-(a7)
	move.l #loc_0ef9e4,-(a7)
	clr.w -(a7)
	move.w #$700d,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1
	bra.w loc_01a562

loc_01a52c:
	move.w #7,-(a7)
	move.l loc_01b918(pc),-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	trap #5
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$7000,-(a7)
	move.l #loc_0ef9e4,-(a7)
	clr.w -(a7)
	move.w #$700d,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1

loc_01a562:
	move.w #$9f,d7

loc_01a566:
	trap #5
	bsr.w loc_01a57a
	dbra d7,loc_01a566
	move.w #$60,-(a7)
	trap #$a
	addq.l #2,a7
	rts

;--------------------------
loc_01a57a:
	addq.w #1,d0
	movem.l d0,-(a7)
	andi.w #$e,d0
	add.w d0,d0
	cmpi.w #1,(-$7f94,a5)
	bne.b loc_01a594
	lea loc_01b8f8(pc),a0
	bra.b loc_01a598

loc_01a594:
	lea loc_01b918(pc),a0

loc_01a598:
	move.w #7,-(a7)
	move.l (a0,d0.w),-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	movem.l (a7)+,d0
	rts

;--------------------------
loc_01a5b0:
	tst.b (-$f37,a5)
	bne.w loc_01a602
	cmpi.b #1,(-$f38,a5)
	beq.b loc_01a5e4
	cmpi.b #2,(-$f38,a5)
	beq.b loc_01a5cc
	bra.w loc_01a602

loc_01a5cc
	bsr.w loc_0196be
	cmpi.b #1,(-$7f80,a5)
	bne.w loc_01a602
	bsr.w loc_0196ae
	bsr.w loc_01a744
	bra.b loc_01a5fa

loc_01a5e4:
	bsr.w loc_0196da
	cmpi.b #1,(-$7f7f,a5)
	bne.w loc_01a602
	bsr.w loc_0196b4
	bsr.w loc_01a766

loc_01a5fa:
	st (-$f37,a5)
	st (-$f35,a5)

loc_01a602:
	rts

;--------------------------
loc_01a604:
	sf (-$f37,a5)
	bsr.w loc_01a60e
	rts

;--------------------------
loc_01a60e:
	sf (-$f37,a5)
	sf (-$f35,a5)
	clr.b (-$f38,a5)
	lea (-$7f80,a5),a0
	lea $10fdb6.l,a1
	cmpi.b #1,(0,a0)
	bne.w loc_01a638
	bsr.w loc_01a744
	ori.b #1,(-$f38,a5)

loc_01a638:
	cmpi.b #1,(1,a0)
	bne.w loc_01a64c
	bsr.w loc_01a766
	ori.b #2,(-$f38,a5)

loc_01a64c:
	cmpi.b #3,(-$f38,a5)
	bne.b loc_01a65c
	st (-$f37,a5)
	st (-$f35,a5)

loc_01a65c:
	sf (-$7f7e,a5)
	rts

;--------------------------
loc_01a662:
	cmpi.b #5,(-$ea2,a5)
	bne.w loc_01a676
	move.b #4,(-$ea2,a5)
	clr.b (-$ea1,a5)

loc_01a676:
	cmpi.b #5,(-$942,a5)
	bne.w loc_01a68a
	move.b #4,(-$942,a5)
	clr.b (-$941,a5)

loc_01a68a:
	andi.w #$101,(-$7f80,a5)
	lea $10fdb6.l,a1
	cmpi.b #0,(0,a1)
	beq.b loc_01a6ea
	cmpi.b #1,(0,a1)
	beq.b loc_01a6b6
	cmpi.b #2,(0,a1)
	beq.b loc_01a6b6
	move.b #0,(0,a1)
	bra.b loc_01a6ea

loc_01a6b6:
	move.l (-$e8c,a5),(-$e9c,a5)
	move.w (-$f30,a5),(-$e98,a5)
	move.w (p1pala5,a5),(-$e96,a5)
	movem.l d0,-(a7)
	move.w (-$e88,a5),d0
	cmp.w (-$e94,a5),d0
	ble.b loc_01a6da
	move.w d0,(-$e94,a5)

loc_01a6da:
	movem.l (a7)+,d0
	move.b #3,(-$ea2,a5)
	move.b #2,(0,a1)

loc_01a6ea:
	cmpi.b #0,(1,a1)
	beq.b loc_01a73e
	cmpi.b #1,(1,a1)
	beq.b loc_01a70a
	cmpi.b #2,(1,a1)
	beq.b loc_01a70a
	move.b #0,(1,a1)
	bra.b loc_01a73e

loc_01a70a:
	move.l (-$92c,a5),(-$93c,a5)
	move.w (-$f30,a5),(-$938,a5)
	move.w (-$932,a5),(-$936,a5)
	movem.l d0,-(a7)
	move.w (p2wincount,a5),d0
	cmp.w (-$934,a5),d0
	ble.b loc_01a72e
	move.w d0,(-$934,a5)

loc_01a72e:
	movem.l (a7)+,d0
	move.b #3,(-$942,a5)
	move.b #2,(1,a1)

loc_01a73e:
	sf (-$7f7e,a5)
	rts

;--------------------------
loc_01a744:
	move.b #2,(-$7f80,a5)
	move.b #1,($7db6,a5)
	cmpi.b #5,(-$ea2,a5)
	bne.w loc_01a764
	move.b #4,(-$ea2,a5)
	clr.b (-$ea1,a5)

loc_01a764:
	rts

;--------------------------
loc_01a766:
	move.b #2,(-$7f7f,a5)
	move.b #1,($7db7,a5)
	cmpi.b #5,(-$942,a5)
	bne.w loc_01a786
	move.b #4,(-$942,a5)
	clr.b (-$941,a5)

loc_01a786:
	rts

;--------------------------
loc_01a788:
	st (-$7f7e,a5)
	andi.w #$101,(-$7f80,a5)
	lea $10fdb6.l,a1
	cmpi.b #0,(0,a1)
	beq.b loc_01a7dc
	cmpi.b #1,(0,a1)
	bne.b loc_01a7d6
	move.l (-$e8c,a5),(-$e9c,a5)
	move.w (-$f30,a5),(-$e98,a5)
	move.w (p1pala5,a5),(-$e96,a5)
	movem.l d0,-(a7)
	move.w (-$e88,a5),d0
	cmp.w (-$e94,a5),d0
	ble.b loc_01a7cc
	move.w d0,(-$e94,a5)

loc_01a7cc:
	movem.l (a7)+,d0
	move.l (-$e9c,a5),(-$ede,a5)

loc_01a7d6:
	move.b #3,(0,a1)

loc_01a7dc:
	cmpi.b #0,($1,a1)
	beq.b loc_01a820
	cmpi.b #1,($1,a1)
	bne.b loc_01a81a
	move.l (-$92c,a5),(-$93c,a5)
	move.w (-$f30,a5),(-$938,a5)
	move.w (-$932,a5),(-$936,a5)
	movem.l d0,-(a7)
	move.w (p2wincount,a5),d0
	cmp.w (-$934,a5),d0
	ble.b loc_01a810
	move.w d0,(-$934,a5)

loc_01a810:
	movem.l (a7)+,d0
	move.l (-$93c,a5),(-$ede,a5)

loc_01a81a:
	move.b #3,(1,a1)

loc_01a820:
	move.b #0,(-$ea2,a5)
	move.b #0,(-$942,a5)
	rts

;--------------------------
loc_01a82e:
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	tst.b (-$f37,a5)
	beq.w loc_01a84e
	move.b #3,(-$f38,a5)

loc_01a84e:
	st (-$f9a,a5)
	st (-$f99,a5)
	sf (-$f90,a5)
	sf (-$f8f,a5)
	trap #5
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	btst #0,(-$f38,a5)
	bne.b loc_01a87a
	bsr.w loc_01aa84
	sf (-$f9a,a5)
	bra.b loc_01a886

loc_01a87a:
	move.w #0,d2
	bsr.w loc_01aaa2
	move.b d0,(-$f9a,a5)

loc_01a886:
	exg a3,a4
	btst #1,(-$f38,a5)
	bne.b loc_01a89a
	bsr.w loc_01aa84
	sf (-$f99,a5)
	bra.b loc_01a8a6

loc_01a89a:
	move.w #9,d2
	bsr.w loc_01aaa2
	move.b d0,(-$f99,a5)

loc_01a8a6:
	move.b (-$f9a,a5),d5
	move.b (-$f99,a5),d6
	move.w #2,-(a7)
	pea loc_011c7e;CharacterSelect
	trap #1
	addq.l #6,a7
	movem.l d5-d6/a3-a4,-(a7)
	move.w #3,-(a7)
	pea loc_01d91a
	trap #1
	addq.l #6,a7
	jsr loc_028358
	jsr loc_027a4a
	move.w #4,-(a7)
	pea loc_02778e
	trap #1
	addq.l #6,a7
	movem.l (a7)+,d5-d6/a3-a4
	sf d0
	or.b d5,d0
	or.b d6,d0
	beq.w loc_01a958

loc_01a8f6:
	trap #5
	tst.b d5
	beq.b loc_01a908
	move.b (-$f9a,a5),d5
	bne.b loc_01a908
	move.b #2,(-$ea2,a5)

loc_01a908:
	tst.b d6
	beq.b loc_01a918
	move.b (-$f99,a5),d6
	bne.b loc_01a918
	move.b #2,(-$942,a5)

loc_01a918:
	tst.b (-$f37,a5)
	bne.w loc_01a93c
	movem.l d0-d7/a0-a4,-(a7)
	bsr.w loc_01a5b0
	movem.l (a7)+,d0-d7/a0-a4
	tst.b (-$f37,a5)
	beq.w loc_01a93c
	bsr.w loc_01a498
	bra.w loc_01a82e

loc_01a93c:
	sf d0
	or.b d5,d0
	or.b d6,d0
	bne.b loc_01a8f6
	tst.b d5
	beq.b loc_01a94e
	move.b #2,(-$ea2,a5)

loc_01a94e:
	tst.b d6
	beq.b loc_01a958
	move.b #2,(-$942,a5)

loc_01a958:
	bsr.w loc_01ab98
	move.w (-$f30,a5),d0
	subq.w #1,d0
	add.w d0,d0
	movem.l a0,-(a7)
	lea (-$f24,a5),a0
	move.w (a0,d0.w),d0
	movem.l (a7)+,a0
	btst #0,(-$f38,a5)
	bne.b loc_01a980
	move.w d0,(p1ida5,a5)

loc_01a980:
	btst #1,(-$f38,a5)
	bne.b loc_01a98c
	move.w d0,(p2ida5,a5)

loc_01a98c:
	trap #5
	tst.b (-$f37,a5)
	bne.w loc_01a9aa
	bsr.w loc_01a5b0
	tst.b (-$f37,a5)
	beq.w loc_01a9aa
	bsr.w loc_01a498
	bra.w loc_01a82e

loc_01a9aa:
	tst.b (-$f90,a5)
	beq.b loc_01a98c
	move.w #1,d0
	move.w #3,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	move.w #1,d0
	move.w #4,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7

loc_01a9d0:
	trap #5
	tst.b (-$f37,a5)
	bne.w loc_01a9ee
	bsr.w loc_01a5b0
	tst.b (-$f37,a5)
	beq.w loc_01a9ee
	bsr.w loc_01a498
	bra.w loc_01a82e

loc_01a9ee:
	move.w (-$54b2,a5),d0
	btst #2,d0
	bne.b loc_01a9d0
	move.w #1,d0
	move.w #2,d1
	lsl.w d1,d0
	move.w d0,-(a7)
	trap #2
	addq.l #2,a7
	rts

;--------------------------
loc_01aa0a:
	jsr loc_005ce8
	jsr loc_0071e0
	bsr.w loc_01b096
	bra.w loc_01aa2e

loc_01aa1e:
	jsr loc_005ce8
	jsr loc_0071e0
	bsr.w loc_01b114

loc_01aa2e:
	st (-$42c2,a5)
	move.w #$777,(-$4234,a5)
	trap #5

loc_01aa3a:
	move.w #2,-(a7)
	pea loc_011498;Versus Screen
	trap #1
	addq.l #6,a7

loc_01aa48:
	trap #5
	tst.b (-$f9c,a5)
	bne.b loc_01aa54
	st (-$42c2,a5)

loc_01aa54:
	tst.b (-$f37,a5)
	bne.w loc_01aa70
	bsr.w loc_01a5b0
	tst.b (-$f37,a5)
	beq.w loc_01aa70
	bsr.w loc_01a498
	bra.w loc_01a82e

loc_01aa70:
	move.w (-$54b2,a5),d0
	btst #2,d0
	bne.b loc_01aa48
	jsr loc_0071e0
	trap #5
	rts

;--------------------------
loc_01aa84:
	movem.l a0,-(a7)
	lea (-$f24,a5),a0
	move.w (-$f30,a5),d0
	subq.w #1,d0
	add.w d0,d0
	move.w (a0,d0.w),d0
	movem.l (a7)+,a0
	move.w d0,($14,a4)
	rts

;--------------------------
loc_01aaa2:
	sf d0
	cmpi.b #2,(2,a4)
	beq.w loc_01ab26
	st d0
	cmpi.b #0,(2,a4)
	beq.b loc_01aaca
	cmpi.b #4,(2,a4)
	beq.b loc_01aaec
	cmpi.b #3,(2,a4)
	beq.b loc_01ab14
	bra.b loc_01ab26

loc_01aaca:
	move.b #1,(2,a4)
	move.w d2,($12,a4)
	clr.l ($18,a4)
	clr.w ($1c,a4)
	clr.w ($204,a4)
	clr.w ($28,a4)
	move.l ($18,a4),($24,a4)
	bra.b loc_01ab26

loc_01aaec:
	move.b #1,($2,a4)
	move.w d2,($12,a4)
	clr.l ($18,a4)
	addq.l #1,($18,a4)
	clr.w ($1c,a4)
	clr.w ($204,a4)
	clr.w ($28,a4)
	move.l ($18,a4),($24,a4)
	bra.w loc_01ab26

loc_01ab14:
	move.b #1,(2,a4)
	clr.w ($1c,a4)
	addq.l #1,($18,a4)
	addq.l #1,($24,a4)

loc_01ab26:
	clr.w d1
	move.b ($13,a4),d1
	move.w d1,($14,a4)
	move.b ($12,a4),d1
	move.w d1,($16,a4)
	rts

;--------------------------
loc_01ab3a:
	lea (-$f24,a5),a0
	move.w #0,(a0)+
	move.w #1,(a0)+
	move.w #2,(a0)+
	move.w #3,(a0)+
	move.w #4,(a0)+
	move.w #5,(a0)+
	move.w #6,(a0)+
	move.w #7,(a0)+
	move.w #9,(a0)+
	move.w #8,(a0)+
	lea (-$f10,a5),a0
	move.w #0,(a0)+
	move.w #1,(a0)+
	move.w #2,(a0)+
	move.w #3,(a0)+
	move.w #4,(a0)+
	move.w #5,(a0)+
	move.w #6,(a0)+
	move.w #7,(a0)+
	move.w #9,(a0)+
	move.w #8,(a0)+
	sf (-$f34,a5)
	rts

;--------------------------
loc_01ab98:
	movem.l d0-d7/a0-a4,-(a7)
	tst.b (-$f34,a5)
	bmi.w loc_01ac28
	ori.b #1,(-$f34,a5)
	sf d0
	cmpi.b #2,(-$ea2,a5)
	bne.b loc_01abb8
	ori.b #1,d0

loc_01abb8:
	cmpi.b #2,(-$942,a5)
	bne.b loc_01abc4
	ori.b #2,d0

loc_01abc4:
	cmpi.b #1,d0
	beq.b loc_01abda
	cmpi.b #2,d0
	beq.b loc_01abe4
	jsr RandomNumberGod
	bmi.b loc_01abe8
	bra.b loc_01abde

loc_01abda:
	st (-$f34,a5)

loc_01abde:
	lea (p1ma5,a5),a4
	bra.b loc_01abec

loc_01abe4:
	st (-$f34,a5)

loc_01abe8:
	lea (p2ma5,a5),a4

loc_01abec:
	link a6,#-$14
	lea (-$f24,a5),a0
	clr.w d6
	bset #8,d6
	move.w #8,($12,a0)
	lea loc_01ace4(pc),a1
	move.w #8,d7

loc_01ac08:
	move.l (a1)+,d5
	movea.l (a1)+,a2
	bsr.w loc_01ac2e
	dbra d7,loc_01ac08
	unlk a6
	lea (-$f24,a5),a0
	lea (-$f10,a5),a1
	move.w #9,d5

loc_01ac22:
	move.w (a0)+,(a1)+
	dbra d5,loc_01ac22

loc_01ac28:
	movem.l (a7)+,d0-d7/a0-a4
	rts 

;--------------------------
;If CharID is above number of characters
loc_01ac2e:
	move.w (plcharid,a4),d0
	cmpi.w #9,d0
	bls.w loc_01ac3e
	andi.w #7,d0

loc_01ac3e:
	move.w d0,d3
	add.w d3,d3
	lsl.w #3,d0
	add.w d3,d0
	adda.w d0,a2
	clr.w d4
	clr.w d0
	clr.w d3
	movem.l a2,-(a7)
	move.w #9,d2

loc_01ac56:
	move.b (a2)+,d4
	btst d0,d6
	bne.b loc_01ac5e
	add.w d4,d3

loc_01ac5e:
	addq.w #1,d0
	dbra d2,loc_01ac56
	movem.l (a7)+,a2
	tst.w d3
	bgt.b loc_01ac72
	bsr.w loc_01aca4
	bra.b loc_01ac98

loc_01ac72:
	jsr RandomNumberGod
	mulu.w d0,d3
	swap d3
	clr.w d4
	clr.w d0
	move.w #9,d2

loc_01ac84:
	move.b (a2)+,d4
	btst d0,d6
	bne.b loc_01ac90
	sub.w d4,d3
	blt.w loc_01ac98

loc_01ac90:
	addq.w #1,d0
	dbra d2,loc_01ac84
	subq.w #1,d0

loc_01ac98
	bset d0,d6
	subq.w #1,d5
	add.w d5,d5
	move.w d0,(a0,d5.w)
	rts

;--------------------------
loc_01aca4:
	clr.w d3
	clr.w d2
	move.w #9,d7

loc_01acac:
	btst d7,d6
	bne.b loc_01acb8
	move.w d7,(-$14,a6,d2.w)
	addq.w #1,d3
	addq.w #2,d2

loc_01acb8:
	dbra d7,loc_01acac
	tst.w d3
	beq.w loc_01acd6
	moveq #0,d0
	jsr RandomNumberGod
	mulu.w d3,d0
	swap d0
	add.w d0,d0
	move.w (-$14,a6,d0.w),d0
	bra.b loc_01ace2

loc_01acd6:
	jsr RandomNumberGod
	mulu.w #$a,d0
	swap d0

loc_01ace2:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01ace4:
	dc.l $9,loc_01ad2c
	dc.l $4,loc_01ad90
	dc.l $7,loc_01adf4
	dc.l $1,loc_01ae58
	dc.l $6,loc_01aebc
	dc.l $3,loc_01af20
	dc.l $5,loc_01af84
	dc.l $2,loc_01afe8
	dc.l $8,loc_01afe8

loc_01ad2c:
	dc.b $00,$08,$06,$06,$06,$07,$06,$06,$00,$06,$06,$00,$07,$06,$06,$06
	dc.b $08,$06,$00,$06,$06,$06,$00,$06,$06,$07,$06,$08,$00,$06,$08,$06
	dc.b $06,$00,$07,$06,$06,$06,$00,$06,$06,$06,$07,$06,$00,$08,$06,$06
	dc.b $00,$06,$06,$06,$07,$06,$08,$00,$06,$06,$00,$06,$06,$06,$06,$08
	dc.b $06,$07,$00,$06,$00,$06,$06,$06,$08,$06,$06,$07,$06,$00,$00,$06
	dc.b $06,$06,$08,$06,$06,$07,$06,$06,$00,$06,$06,$06,$08,$06,$06,$07
	dc.b $06,$06,$00,$00


loc_01ad90:
	dc.b $09,$02,$02,$02,$02,$02,$02,$02,$00,$02,$02,$09,$02,$02,$02,$02
	dc.b $02,$02,$00,$02,$02,$02,$09,$02,$02,$02,$02,$02,$00,$02,$02,$02
	dc.b $02,$09,$02,$02,$02,$02,$00,$02,$02,$02,$02,$02,$09,$02,$02,$02
	dc.b $00,$02,$02,$02,$02,$02,$02,$09,$02,$02,$00,$02,$02,$02,$02,$02
	dc.b $02,$02,$09,$02,$00,$02,$02,$02,$02,$02,$02,$02,$02,$09,$00,$02
	dc.b $02,$02,$02,$02,$02,$02,$02,$02,$00,$02,$02,$02,$02,$02,$02,$02
	dc.b $02,$02,$00,$09

loc_01adf4:
	dc.b $06,$05,$04,$05,$04,$04,$04,$04,$00,$04,$06,$05,$04,$05,$04,$04
	dc.b $04,$04,$00,$04,$06,$05,$04,$05,$04,$04,$04,$04,$00,$04,$06,$05
	dc.b $04,$05,$04,$04,$04,$04,$00,$04,$06,$05,$04,$05,$04,$04,$04,$04
	dc.b $00,$04,$06,$05,$04,$05,$04,$04,$04,$04,$00,$04,$06,$05,$04,$05
	dc.b $04,$04,$04,$04,$00,$04,$06,$05,$04,$05,$04,$04,$04,$04,$00,$04
	dc.b $06,$05,$04,$05,$04,$04,$04,$04,$00,$04,$06,$05,$04,$05,$04,$04
	dc.b $04,$04,$00,$04

loc_01ae58:
	dc.b $00,$06,$04,$06,$03,$01,$03,$03,$00,$03,$06,$00,$04,$06,$03,$01
	dc.b $03,$03,$00,$03,$06,$06,$00,$06,$03,$01,$03,$03,$00,$03,$06,$06
	dc.b $04,$00,$03,$01,$03,$03,$00,$03,$06,$06,$04,$06,$00,$01,$03,$03
	dc.b $00,$03,$06,$06,$04,$06,$03,$00,$03,$03,$00,$03,$06,$06,$04,$06
	dc.b $03,$01,$00,$03,$00,$03,$06,$06,$04,$06,$03,$01,$03,$00,$00,$03
	dc.b $06,$06,$04,$06,$04,$01,$03,$03,$00,$03,$06,$06,$04,$06,$04,$01
	dc.b $03,$03,$00,$00

loc_01aebc:
	dc.b $04,$04,$05,$04,$05,$06,$04,$05,$00,$04,$04,$04,$05,$04,$05,$06
	dc.b $04,$05,$00,$04,$04,$04,$05,$04,$05,$06,$04,$05,$00,$04,$04,$04
	dc.b $05,$04,$05,$06,$04,$05,$00,$04,$04,$04,$05,$04,$05,$06,$04,$05
	dc.b $00,$04,$04,$04,$05,$04,$05,$06,$04,$05,$00,$04,$04,$04,$05,$04
	dc.b $05,$06,$04,$05,$00,$04,$04,$04,$05,$04,$05,$06,$04,$05,$00,$04
	dc.b $04,$04,$05,$04,$05,$06,$04,$05,$00,$04,$04,$04,$05,$04,$05,$06
	dc.b $04,$05,$00,$04

loc_01af20:
	dc.b $04,$03,$04,$05,$04,$03,$04,$03,$00,$03,$04,$03,$04,$05,$04,$03
	dc.b $04,$03,$00,$03,$04,$03,$04,$05,$04,$03,$04,$03,$00,$03,$04,$03
	dc.b $04,$05,$04,$03,$04,$03,$00,$03,$04,$03,$04,$05,$04,$03,$04,$03
	dc.b $00,$03,$04,$03,$04,$05,$04,$03,$04,$03,$00,$03,$04,$03,$04,$05
	dc.b $04,$03,$04,$03,$00,$03,$04,$03,$04,$05,$04,$03,$04,$03,$00,$03
	dc.b $04,$03,$04,$05,$04,$03,$04,$03,$00,$03,$04,$03,$04,$05,$04,$03
	dc.b $04,$03,$00,$03

loc_01af84:
	dc.b $03,$06,$06,$04,$05,$06,$03,$06,$00,$03,$03,$06,$06,$04,$05,$06
	dc.b $03,$06,$00,$03,$03,$06,$06,$04,$05,$06,$03,$06,$00,$03,$03,$06
	dc.b $06,$04,$05,$06,$03,$06,$00,$03,$03,$06,$06,$04,$05,$06,$03,$06
	dc.b $00,$03,$03,$06,$06,$04,$05,$06,$03,$06,$00,$03,$03,$06,$06,$04
	dc.b $05,$06,$03,$06,$00,$03,$03,$06,$06,$04,$05,$06,$03,$06,$00,$03
	dc.b $03,$06,$06,$04,$05,$06,$03,$06,$00,$03,$03,$06,$06,$04,$05,$06
	dc.b $03,$06,$00,$03

loc_01afe8:
	dc.b $04,$04,$04,$04,$04,$04,$04,$04,$00,$04,$04,$04,$04,$04,$04,$04
	dc.b $04,$04,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$04,$04,$04
	dc.b $04,$04,$04,$04,$04,$04,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04
	dc.b $00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$04,$04,$04,$04,$04
	dc.b $04,$04,$04,$04,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$04
	dc.b $04,$04,$04,$04,$04,$04,$04,$04,$00,$04,$04,$04,$04,$04,$04,$04
	dc.b $04,$04,$00,$04

;--------------------------
loc_01b04c:
	btst #0,(-$f38,a5)
	bne.b loc_01b06a
	jsr RandomNumberGod
	andi.w #3,d0
	move.w (-$92e,a5),d1
	bsr.w loc_01b08a
	move.w d0,(-$e8e,a5)

loc_01b06a:
	btst #1,(-$f38,a5)
	bne.b loc_01b088
	jsr RandomNumberGod
	andi.w #3,d0
	move.w (-$e8e,a5),d1
	bsr.w loc_01b08a
	move.w d0,(-$92e,a5)

loc_01b088:
	rts

loc_01b08a:
	cmp.w d1,d0
	bne.b loc_01b094
	addq.w #1,d0
	andi.w #3,d0

loc_01b094:
	rts

;--------------------------
loc_01b096:
	btst #5,(DDip1,a5)
	bne.w loc_01b114
	move.w (-$e88,a5),d0
	or.w (p2wincount,a5),d0
	bne.w loc_01b0c6
	jsr RandomNumberGod
	bmi.b loc_01b0ba
	move.w (p1ida5,a5),d0
	bra.b loc_01b0be

loc_01b0ba:
	move.w (p2ida5,a5),d0

loc_01b0be:
	move.w d0,(-$f32,a5)
	bra.w loc_01b12a

loc_01b0c6:
	jsr RandomNumberGod
	mulu.w #9,d0
	swap d0
	addi.w #0,d0
	cmp.w (-$f32,a5),d0
	bne.b loc_01b0e8
	addq.w #1,d0
	cmpi.w #9,d0
	ble.b loc_01b0e8
	move.w #0,d0

loc_01b0e8:
	cmpi.w #8,d0
	bne.b loc_01b0f2
	move.w #4,d0
 
loc_01b0f2:
	move.w d0,(-$f32,a5)
	bra.w loc_01b12a

loc_01b0fa:
	jsr RandomNumberGod
	bmi.b loc_01b108
	move.w (p1ida5,a5),d0
	bra.b loc_01b10c

loc_01b108:
	move.w (p2ida5,a5),d0

loc_01b10c:
	move.w d0,(-$f32,a5)
	bra.w loc_01b12a

loc_01b114:
	move.w (-$f30,a5),d0
	subq.w #1,d0
	andi.w #$f,d0
	add.w d0,d0
	lea (-$f10,a5),a0
	move.w (a0, d0.w),(-$f32,a5)

loc_01b12a:
	move.w (-$f32,a5),d0
	andi.w #$f,d0
	add.w d0,d0
	lea loc_01b402,a0
	move.w (a0,d0.w),(-$45e6,a5)
	clr.b (-$45e3,a5)
	sf (-$45e4,a5)
	rts

;--------------------------
loc_01b14a:
	clr.w d0
	tst.b (-$f37,a5)
	bne.b loc_01b158
	move.b (-$7f8c,a5),d0
	bra.b loc_01b15c

loc_01b158:
	move.b (-$7f8b,a5),d0

loc_01b15c:
	addq.w #1,d0
	move.w d0,(-$f28,a5)
	add.w d0,d0
	move.w d0,(-$f26,a5)
	rts

;--------------------------
loc_01b16a:
	move.w #$20,-(a7)
	jsr loc_006fec
	addq.l #2,a7

	tst.b (-$3e4,a5)
	bne.w loc_01b19a
	move.w (-$f32,a5),d0
	andi.w #$f,d0
	add.w d0,d0
	lea loc_01b3e2,a0
	move.w (a0,d0.w),-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_01b19a:
	rts

;==========================;
;Debug StgSel loc_01b19c
;==========================;
	include "debug/stageselect.asm"

;==========================;
; AES Menu loc_01b988
;==========================;
	include "Game/AesMenu.asm"

;==========================;
; MemCard Save/Load 1d092
;==========================;
	include "Game/MemCard.asm"

;--------------------------
;Player Loop CharSel
loc_01d91a:
	clr.w (-$394,a5)
	clr.w (-$392,a5)
	clr.w (-$396,a5)

	sf (-$3e0,a5)
	sf (-$3df,a5)
	st (-$3de,a5)
	sf (-$3dd,a5)
	sf (-$3dc,a5)

	move.w #$c0,-(a7)
	move.l #loc_023d24,-(a7)
	jsr loc_007554
	lea (6,a7),a7

	trap #5
	move.l #$a08000,d0
	movea.l #loc_024bf4,a0
	jsr loc_00a642
	bsr.w loc_01ec90
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	bsr.w loc_020618
	bsr.w loc_020dbe
	movea.l #loc_01f252,a0
	clr.w d0
	jsr loc_0226f0
	clr.b ($b6,a4)
	move.w ($14,a4),($b8,a4)
	move.w ($16,a4),($ba,a4)
	exg a3,a4
	movea.l #loc_01f252,a0
	clr.w d0
	jsr loc_0226f0
	clr.b ($b6,a4)
	move.w ($14,a4),($b8,a4)
	move.w ($16,a4),($ba,a4)
	exg a3,a4

loc_01d9b6:
	trap #5
	tst.b (-$f90,a5)
	bne.w loc_01da02
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3

	bsr.w loc_01f8be
	bsr.w loc_01fec0
	bsr.w loc_01da04
	move.w (-$45be,a5),d0
	swap d0
	clr.w d0
	addi.l #$ffa00000,d0
	move.l d0,($20e,a4)
	move.w (-$45be,a5),d0
	swap d0
	clr.w d0
	addi.l #$600000,d0
	move.l d0,($20e,a3)
	bsr.w loc_020618
	bsr.w loc_020b72
	bra.b loc_01d9b6

loc_01da02:
	trap #3

loc_01da04:
	move.w #0,d4
	bsr.w loc_01da1a
	exg a3,a4
	move.w #1,d4
	bsr.w loc_01da1a
	exg a3,a4
	rts

;==========================
loc_01da1a:
	btst d4,(-$f38,a5)
	beq.w loc_01da76
	move.w ($14,a4),d0
	cmp.w ($b8,a4),d0
	bne.w loc_01da46
	move.w ($16,a4),d0
	cmp.w ($ba,a4),d0
	bne.w loc_01da46
	move.b ($2,a4),d0
	cmp.b ($b6,a4),d0
	beq.w loc_01daba

loc_01da46:
	bsr.w loc_01ed6c
	move.b (2,a4),($b6,a4)
	move.w ($14,a4),($b8,a4)
	move.w ($16,a4),($ba,a4)
	lea loc_024d8a.l,a0
	cmpi.b #2,(2,a4)
	bne.w loc_01da72
	lea loc_024dca,a0

loc_01da72:
	bra.w loc_01daa2

loc_01da76:
	tst.b ($b6,a4)
	bne.w loc_01daba
	tst.b (-$f8f,a5)
	bne.w loc_01da96
	move.w #-1,($22e,a4)
	move.w #-1,($230,a4)
	bra.w loc_01daba

loc_01da96:
	bsr.w loc_01ed6c
	st ($b6,a4)
	lea loc_024e0a(pc),a0

loc_01daa2:
	move.w ($14,a4),d0
	andi.w #$f,d0
	add.w d0,d0
	add.w d0,d0
	movea.l (a0,d0.w),a0
	clr.w d0
	jsr loc_0226f0

loc_01daba:
	rts

;--------------------------
;Player Loop Attract 
loc_01dabc:
	clr.w (-$394,a5)
	clr.w (-$392,a5)
	clr.w (-$396,a5)
	sf (-$3e0,a5)
	sf (-$3df,a5)
	st (-$3de,a5)
	sf (-$3dd,a5)
	sf (-$3dc,a5)
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	move.w #0,(plcharid,a4)
	clr.w (plpalid,a4)
	exg a3,a4
	move.w #1,(plcharid,a4)
	clr.w (plpalid,a4)
	exg a3,a4
	move.l #$c08000,d0
	movea.l #loc_024bf4,a0
	jsr loc_00a642
	bsr.w loc_01ec90
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	bsr.w loc_020618
	bsr.w loc_020dbe
	bsr.w loc_01db86

loc_01db26:
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	bsr.w loc_01f8be
	bsr.w loc_01fec0
	lea (-$360,a5),a0
	bsr.w loc_01dba6
	move.w (-$45be,a5),d0
	swap d0
	clr.w d0
	addi.l #$ffa00000,d0
	move.l d0,($20e,a4)
	move.w (-$45be,a5),d0
	swap d0
	clr.w d0
	addi.l #$600000,d0
	move.l d0,($20e,a3)
	bsr.w loc_020618
	move.w #-1,($22e,a4)
	move.w #-1,($230,a4)
	move.w #-1,($22e,a3)
	move.w #-1,($230,a3)
	bsr.w loc_020b72
	trap #5
	bra.b loc_01db26

loc_01db86:
	sf (-$360,a5)
	cmpi.w #3,(-$7f94,a5)
	beq.b loc_01db9c
	move.l #loc_02602c,(-$35e,a5)
	bra.b loc_01dba4

loc_01db9c:
	move.l #loc_02605e,(-$35e,a5)

loc_01dba4
	rts

;==========================
loc_01dba6:
	movea.l (2,a0),a1
	tst.b (0,a0)
	bmi.w loc_01dbfc
	bgt.w loc_01dbc6
	addq.b #1,(0,a0)
	clr.w (6,a0)
	clr.w (8,a0)
	bra.w loc_01dbda

loc_01dbc6:
	move.w (6,a0),d0
	subq.w #1,d0
	mulu.w #6,d0
	adda.w d0,a1
	tst.w (8,a0)
	bgt.b loc_01dbf6
	addq.w #6,a1

loc_01dbda:
	move.w (0,a1),(8,a0)
	beq.w loc_01dbfc
	movea.l (2,a1),a2
	movem.l d0-d7/a0-a2,-(a7)
	jsr (a2)
	movem.l (a7)+,d0-d7/a0-a2
	addq.w #1,(6,a0)

loc_01dbf6:
	subq.w #1,(8,a0)
	bra.b loc_01dc00

loc_01dbfc:
	st (0,a0)

loc_01dc00:
	tst.b (0,a0)
	rts

;--------------------------
;How to play Charloop
loc_01dc06:
	st (-$3e4,a5)
	sf (-$3e3,a5)
	bsr.w loc_01dfaa
	trap #5
	trap #5
	move.w #$c0,-(a7)
	move.l #loc_023d24,-(a7)
	jsr loc_007554
	lea (6,a7),a7

	trap #5
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3

	move.w #0,(plcharid,a4)
	clr.w ($16,a4)
	clr.w ($1e,a4)
	clr.l ($20,a4)
	move.w #$300,($202,a4)
	move.w #2,($204,a4)
	exg a3,a4

	move.w #1,(plcharid,a4)
	clr.w ($16,a4)
	clr.w ($1e,a4)
	clr.l ($20,a4)
	move.w #$300,($202,a4)
	move.w #2,($204,a4)
	exg a3, a4

	move.l #$b88000,d0
	movea.l #loc_024c14,a0
	jsr loc_00a642
	bsr.w loc_01ec90
	st (1,a4)
	st (1,a3)
	trap #5
	clr.w -(a7)
	move.w #1,-(a7)
	move.w #$f12,-(a7)
	move.w #$ca,-(a7)
	jsr loc_007718
	lea (8,a7),a7
	clr.w -(a7)
	move.w #0,-(a7)
	move.w #$1d1,-(a7)
	move.w #$85,-(a7)
	jsr loc_007718
	lea (8,a7),a7
	clr.w -(a7)
	move.w #0,-(a7)
	move.w #$1d1,-(a7)
	move.w #$a5,-(a7)
	jsr loc_007718
	lea (8,a7),a7
	bsr.w loc_01f280
	bsr.w loc_020618
	bsr.w loc_020dbe

loc_01dce8:
	trap #5
	move.w #$63,(-$3da,a5)
	move.w #$1e00,(pl_life,a4)
	move.w #$1e00,(pl_life,a3)
	move.w #$1000,($1fa,a4)
	move.w #$1000,($1fa,a3)
	bsr.w loc_01f280
	bsr.w loc_01f4ca
	bsr.w loc_01f8be
	bsr.w loc_01fec0
	bsr.w loc_01dd50
	bsr.w loc_02014e
	bsr.w loc_020172
	bsr.w loc_020618
	bsr.w loc_020a12
	bsr.w loc_020dbe
	move.w #$63,(-$3da,a5)
	move.w #$1e00,(pl_life,a4)
	move.w #$1e00,(pl_life,a3)
	move.w #$1000,($1fa,a4)
	move.w #$1000,($1fa,a3)
	bra.b loc_01dce8

loc_01dd50:
	bsr.w loc_01dd5e
	exg a3,a4
	bsr.w loc_01dd5e
	exg a3,a4
	rts

;==========================
loc_01dd5e:;Hurtstun?
	clr.w ($2fe,a4)
	jsr loc_02d964
	movea.l ($1c2,a4),a0
	jsr (a0)
	btst #3,($2e1,a4)
	bne.w loc_01ddc2
	movea.l ($1ca,a4),a0
	jsr (a0)
	move.w ($2fe,a4),d0
	tst.w d0
	ble.w loc_01ddc2
	move.w d0,($252,a4)
	movem.l d0,-(a7)
	clr.w ($2bc,a4)
	bsr.w loc_023444
	movem.l (a7)+,d0
	movea.l ($1d2,a4),a0
	lsl.w #2,d0
	movea.l (a0,d0.w),a0
	jsr loc_023384
	tst.b ($28e,a4)
	beq.w loc_01ddbe
	st ($28f,a4)
	jsr loc_02ed40

loc_01ddbe:
	clr.b ($249,a4)

loc_01ddc2:
	rts

;--------------------------
loc_01ddc4:;fightintro/mainfightloop
	bsr.w loc_01dfaa
	move.w #$c0,-(a7)
	move.l #loc_023d24,-(a7)
	jsr loc_007554
	lea (6,a7),a7
	move.w #$e0,-(a7)
	move.l #loc_0242f0,-(a7)
	jsr loc_007554
	lea (6,a7),a7

	trap #5
	bsr.w loc_01ec90
	trap #5
	clr.w -(a7)
	move.w #1,-(a7)
	move.w #$f12,-(a7)
	move.w #$ca,-(a7)
	jsr loc_007718
	lea (8,a7),a7
	
	clr.w -(a7)
	move.w #0,-(a7)
	move.w #$1d1,-(a7)
	move.w #$85,-(a7)
	jsr loc_007718
	lea (8,a7),a7

	clr.w -(a7)
	move.w #0,-(a7)
	move.w #$1d1,-(a7)
	move.w #$a5,-(a7)
	jsr loc_007718
	lea (8,a7),a7

	bsr.w loc_01f280
	bsr.w loc_020618
	bsr.w loc_020dbe
	move.l #loc_021bbc,(-$3cc,a5)
	movem.l d1-d7,(-$3c8,a5)
	bsr.w loc_01ebea
	bsr.w loc_020196
	bsr.w loc_0203d0
	bsr.w loc_020f50

loc_01de6a
	bsr.w loc_0226d8
	trap #5
	tst.b (-$3df,a5)
	bne.w loc_01ded6

	bsr.w loc_01e460
	tst.b (-$3df,a5)
	bne.w loc_01ded6

	bsr.w loc_01e052
	tst.b (-$3df,a5)
	bne.w loc_01ded6

	bsr.w loc_01e55a
	bsr.w loc_01f280
	bsr.w loc_01f4ca

;Battle Loop
loc_01de9c:
	bsr.w loc_01f8be;Character Movement
	bsr.w loc_01fec0;Character Animations
	bsr.w loc_01ff40;Inputs
	bsr.w loc_02014e

	bsr.w loc_020172;Physics and cancels
	bsr.w loc_0201f8;Combo Counter
	bsr.w loc_02045e;Combo Message
	bsr.w loc_01e828

	bsr.w loc_020618;Pushbox and side switching
	bsr.w loc_020a12;Character render and Meter Palette cycle
	bsr.w loc_01e27c;KO Flash
	bsr.w loc_020dbe

	bsr.w loc_0211a4;Hud Render
	bsr.w loc_021aac;Round Ender
	bra.b loc_01de6a

loc_01ded6:
	bsr.w loc_01dfaa
	move.l (-$736,a5),-(a7)
	move.l (-$c96,a5),-(a7)
	bsr.w loc_01ec90
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	move.l (a7)+,d0
	jsr loc_029196
	exg a3,a4
	move.l (a7)+,d0
	jsr loc_029196
	exg a3,a4
	bsr.w loc_01f280
	bsr.w loc_020618
	bsr.w loc_020dbe
	bsr.w loc_020196
	bsr.w loc_0203d0
	movem.l d0-d1/a0,-(a7)
	move.w #$a,-(a7)
	move.w #$28,-(a7)
	clr.w -(a7)
	move.w #$7002,-(a7)
	jsr loc_005f72
	lea (8,a7),a7

	movem.l (a7)+,d0-d1/a0
	movem.l d0-d1/a0,-(a7)
	move.w #3,-(a7)
	move.w #$28,-(a7)
	clr.w -(a7)
	move.w #$701a,-(a7)
	jsr loc_005f72
	lea (8,a7),a7
	
	movem.l (a7)+,d0-d1/a0
	st (-$42c2,a5)
	move.w #0,(-$4234,a5)
	trap #5
	st (-$42c2,a5)
	move.w #$450,(-$4234,a5)
	trap #5
	st (-$42c2,a5)
	move.w #$84a,(-$4234,a5)
	trap #5
	st (-$42c2,a5)
	move.w #0,(-$4234,a5)
	trap #5
	move.w #0,(-$4234,a5)
	move.l #loc_021bbc,(-$3cc,a5)
	movem.l d1-d7,(-$3c8,a5)
	bsr.w loc_01ebea
	bsr.w loc_020196
	bsr.w loc_020f50
	bra.w loc_01de9c

loc_01dfaa:
	move.w #$64,(-$3d6,a5)
	sf (-$399,a5)
	clr.w (-$398,a5)
	clr.w (-$394,a5)
	clr.w (-$392,a5)
	clr.w (-$396,a5)
	clr.b (-$389,a5)
	clr.b (-$388,a5)
	clr.w (-$386,a5)
	clr.w (-$39c,a5)
	clr.b (-$39a,a5)
	sf (-$3e0,a5)
	sf (-$3df,a5)
	st (-$3de,a5)
	sf (-$3dd,a5)
	sf (-$3dc,a5)

;Nametag Palette write
	move.w #$c,-(a7)
	move.l #NameTagPalette,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

;Timer Palette Write
	move.w #6,-(a7)
	move.l #loc_0245b4,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

;initial lifebar palette write
	move.w #8,-(a7)
	move.l #lifebarPal,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

;initial lifebar palette write
	move.w #9,-(a7)
	move.l #lifebarPal,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	move.w #$e,-(a7)
	move.l #loc_0245f4,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	rts

;--------------------------
loc_01e052:
	move.w (-$394,a5),d0
	beq.w loc_01e12a
	btst #$f,d0
	bne.w loc_01e06e
	bset #7,(-$394,a5)
	move.w #$1b,(-$392,a5)

loc_01e06e:
	tst.b (-$388,a5)
	bne.w loc_01e11c
	cmpi.w #4,(-$392,a5)
	bls.w loc_01e11c
	move.w (-$bba,a5),(-$cfe,a5)
	move.w (-$65a,a5),(-$79e,a5)

loc_01e08c:
	move.w #$1b,d2
	sub.w (-$392,a5),d2
	bsr.w loc_01e1d2
	bsr.w loc_01e13c
	move.w #5,(-$396,a5)

	movem.l d0-d7/a0-a6,-(a7)
	bsr.w loc_0230ae
	bsr.w loc_0232b4
	bsr.w loc_0200fe
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	jsr loc_020a12;Render Character Sprites over Super Flash
	movem.l (a7)+,d0-d7/a0-a6

	st ($27f8,a5)
	trap #5
	tst.b (-$3df,a5)
	bne.w loc_01e11c
	subq.w #1,(-$392,a5)
	cmpi.w #4,(-$392,a5)
	bhi.b loc_01e08c
	move.w (-$cfe,a5),(-$bba,a5)
	move.w (-$79e,a5),(-$65a,a5)
	move.b ($24b,a4),d0
	or.b ($24b,a4),d0
	bne.b loc_01e118
	btst #0,(-$393,a5)
	bne.b loc_01e106
	move.w #4,(-$bea,a5)
	sf ($2b9,a4)

loc_01e106:
	btst #1,(-$393,a5)
	bne.b loc_01e118
	move.w #4,(-$68a,a5)
	sf ($2b9,a4)

loc_01e118:
	bra.w loc_01e12a

loc_01e11c:
	move.w #0,(-$4234,a5)
	clr.w (-$394,a5)
	clr.w (-$392,a5)

loc_01e12a:
	tst.w (-$396,a5)
	beq.b loc_01e13a
	subq.w #1,(-$396,a5)
	bpl.b loc_01e13a
	clr.w (-$396,a5)

loc_01e13a:
	rts

;==========================
loc_01e13c:
	move.w d2,d1
	cmpi.w #$1f,d1
	ble.b loc_01e148
	move.w #$1f,d1

loc_01e148:
	lea loc_01e1b2(pc),a0
	btst #0,(-$393,a5)
	bne.b loc_01e16c
	btst #0,(-$391,a5)
	bne.b loc_01e164
	move.b (-$cfe,a5),(-$bba,a5)
	bra.b loc_01e16a

loc_01e164:
	move.b #3,(-$bba,a5)

loc_01e16a:
	bra.b loc_01e17e

loc_01e16c:
 	move.b (a0,d1.w),d0
 	bne.b loc_01e17a
 	move.b (-$cfe,a5),(-$bba,a5)
 	bra.b loc_01e17e

loc_01e17a:
	move.b d0,(-$bba,a5)

loc_01e17e:
	btst #1,(-$393,a5)
	bne.b loc_01e19e
	btst #0,(-$391,a5)
	bne.b loc_01e196
	move.b (-$79e,a5),(-$65a,a5)
	bra.b loc_01e19c

loc_01e196:
	move.b #3,(-$65a,a5)

loc_01e19c:
	bra.b loc_01e1b0

loc_01e19e:
	move.b (a0,d1.w),d0
	bne.b loc_01e1ac
	move.b (-$79e,a5),(-$65a,a5)
	bra.b loc_01e1b0

loc_01e1ac:
	move.b d0,(-$65a,a5)

loc_01e1b0:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01e1b2:
	dc.b $00,$02,$00,$02,$00,$02,$00,$02,$00,$02,$02,$02,$00,$02,$00,$00
	dc.b $02,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

;==========================
;Super Flash start
loc_01e1d2:
;extra00
;	tst.b (extraflag,a5)
;	beq.b origflashstart
	btst #$5,(-$393,a5);flash check
	bne loc_01e206

origflashstart:
	btst #0,(-$391,a5)
	beq.w loc_01e206
	st (-$42c2,a5)
	lea loc_01e208(pc),a0
	move.w d2,d0
	cmpi.w #$1f,d0
	ble.b loc_01e1f0
	move.w #$1f,d0

loc_01e1f0:
	add.w d0,d0
	andi.w #$7c,d0
	move.w (a0,d0.w),(-$4234,a5)
	tst.w (2,a0,d0.w)
	beq.b loc_01e206
	bsr.w loc_01e248

loc_01e206:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01e208
	dc.w $0000,$0001,$0003,$0000,$0004,$0001,$0005,$0000
	dc.w $0007,$0001,$0fff,$0000,$0a63,$0000,$0720,$0000
	dc.w $0500,$0000,$0300,$0000,$0200,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

;==========================
loc_01e248:
	movem.l d0-d7/a0-a4,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #-$2100,d2
	clr.w d3
	clr.w d4
	clr.w d5
	move.w (-$42c0,a5),d6
	move.w #$14,d7
	lea loc_200000.l,a0
	movea.l ($4850,a0),a0
	jsr loc_006be8
	movem.l (a7)+,d0-d7/a0-a4
	rts

;--------------------------
loc_01e27c:;Jumps to a AI subroutine
	tst.b (-$388,a5)
	beq.w loc_01e3de
	btst #0,(-$388,a5)
	beq.b loc_01e29a
	btst #7,(-$c5b,a5)
	beq.b loc_01e29a
	bclr #0,(-$388,a5)

loc_01e29a:
	btst #1,(-$388,a5)
	beq.b loc_01e2b0
	btst #7,(-$6fb,a5)
	beq.b loc_01e2b0
	bclr #1,(-$388,a5)

loc_01e2b0:
	move.b (-$388,a5),d0
	andi.b #3,d0
	beq.w loc_01e3da
	btst #6,(-$388,a5)
	beq.w loc_01e350
	tst.w (-$386,a5)
	bne.b loc_01e30c
	movem.l d1-d2,-(a7)
	move.w #$d,d2
	move.w #$20,d0
	move.w #6,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_01e2ec
	st ($66,a0)

loc_01e2ec:
	movem.l d1-d2,-(a7)
	move.w #$e,d2
	move.w #$20,d0
	move.w #$6,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_01e30c
	st ($66,a0)

loc_01e30c:
	cmpi.w #$6f,(-$386,a5)
	bhi.w loc_01e3de
	st (-$42c2,a5)
	bsr.w loc_01e3e8
	move.w (-$386,a5),d0
	lea loc_023c74(pc),a0
	move.b (a0,d0.w),d0
	ext.w d0
	lea loc_024248.l, a0
	adda.w d0,a0
	move.w (2,a0),(-$4234,a5)
	move.w #$dc,-(a7)
	move.l a0,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	addq.w #1,(-$386,a5)
	rts

;--------------------------
loc_01e350:
	tst.w (-$386,a5)
	bne.b loc_01e396
	movem.l d1-d2,-(a7)
	move.w #$d,d2
	move.w #$20,d0
	move.w #6,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_01e376
	sf ($66,a0)

loc_01e376:
	movem.l d1-d2,-(a7)
	move.w #$e,d2
	move.w #$20,d0
	move.w #6,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_01e396
	sf ($66,a0)

loc_01e396:
	cmpi.w #$1f,(-$386,a5)
	bhi.w loc_01e3de
	st (-$42c2,a5)
	bsr.w loc_01e424
	move.w (-$386,a5),d0
	lea loc_023ce4(pc),a0
	move.b (a0,d0.w),d0
	ext.w d0
	lea loc_0242c8,a0
	adda.w d0,a0
	move.w ($1a,a0),(-$4234,a5)
	move.w #$dc,-(a7)
	move.l a0,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	addq.w #1,(-$386,a5)
	rts

loc_01e3da:
	clr.b (-$389,a5)

loc_01e3de:
	clr.w (-$386,a5)
	sf (-$388,a5)
	rts

;--------------------------
loc_01e3e8:
	tst.w (-$42c0,a5)
	beq.w loc_01e422
	movem.l d0-d7/a0-a4,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #-$2400,d2
	clr.w d3
	clr.w d4
	clr.w d5
	move.w (-$42c0,a5),d6
	move.w #$14,d7
	lea loc_200000,a0
	movea.l ($4a2c,a0),a0
	jsr loc_006be8
	movem.l (a7)+,d0-d7/a0-a4

loc_01e422:
	rts

;--------------------------
loc_01e424:
	tst.w (-$42c0,a5)
	beq.w loc_01e45e
	movem.l d0-d7/a0-a4,-(a7)
	move.w #$a0,d0
	move.w #$70,d1
	move.w #-$2400,d2
	clr.w d3
	clr.w d4
	clr.w d5
	move.w (-$42c0,a5),d6
	move.w #$14,d7
	lea loc_200000,a0
	movea.l ($4a78,a0),a0
	jsr loc_006be8
	movem.l (a7)+,d0-d7/a0-a4

loc_01e45e:
	rts

;--------------------------
loc_01e460:
	move.b (-$399,a5),d0
	beq.w loc_01e4ac
	cmpi.b #8,d0
	beq.w loc_01e4ae
	cmpi.b #7,d0
	beq.w loc_01e4b6
	cmpi.b #6,d0
	beq.w loc_01e4be
	cmpi.b #5,d0
	beq.w loc_01e4c6
	cmpi.b #4,d0
	beq.w loc_01e4ce
	cmpi.b #3,d0
	beq.w loc_01e4d6
	cmpi.b #2,d0
	beq.w loc_01e4de
	cmpi.b #1,d0
	beq.w loc_01e4e6
	sf (-$399,a5)

loc_01e4ac:
	rts

loc_01e4ae:
	lea loc_024c34(pc),a0
	bra.w loc_01e4ea

loc_01e4b6:
	lea loc_024c72(pc),a0
	bra.w loc_01e4ea

loc_01e4be:
	lea loc_024cce(pc),a0
	bra.w loc_01e4ea

loc_01e4c6:
	lea loc_024d0c(pc),a0
	bra.w loc_01e4ea

loc_01e4ce:
	lea loc_024d4a(pc),a0
	bra.w loc_01e4ea

loc_01e4d6:
	lea loc_024d60(pc),a0
	bra.w loc_01e4ea

loc_01e4de:
	lea loc_024d70(pc),a0
	bra.w loc_01e4ea

loc_01e4e6
	lea loc_024d7c(pc),a0

loc_01e4ea:
	move.w (-$398,a5),d0
	move.b (a0,d0.w),d0
	ext.w d0
	bmi.w loc_01e550
	subq.w #1,d0
	bmi.w loc_01e54a

loc_01e4fe:
	movem.l d0-d7/a0-a6,-(a7)
	bsr.w loc_01e052
	bsr.w loc_0230ae
	bsr.w loc_0232b4
	bsr.w loc_0200fe
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	jsr loc_020a12
	bsr.w loc_01e27c
	bsr.w loc_020dbe
	bsr.w loc_0211a4
	bsr.w loc_021aac
	bsr.w loc_0226d8
	movem.l (a7)+,d0-d7/a0-a6
	st ($27f8,a5)
	trap #5
	tst.b (-$3df,a5)
	bne.w loc_01e550
	dbra d0,loc_01e4fe

loc_01e54a:
	addq.w #1,(-$398,a5)
	rts

loc_01e550:
	sf (-$399,a5)
	clr.w (-$398,a5)
	rts

;--------------------------
loc_01e55a:
	tst.b (-$3dd,a5)
	bne.w loc_01ebe8
	tst.b (-$3e4,a5)
	bne.w loc_01ebe8
	btst #1,(DDip1,a5)
	beq.w loc_01e64e

;DebugCharacterswitch
	movem.l d0/a0-a1,-(a7)
	move.w #$300,-(a7)
	move.l #loc_01e642,-(a7)
	clr.w -(a7)
	move.w #$71fd,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	move.b (-$53d1,a5),d0
	not.b d0
	andi.b #$f0,d0
	bne.w loc_01e5ea
	btst #1,(-$53cd,a5)
	beq.w loc_01e5ea
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	addq.w #1,(plcharid,a4)
	cmpi.w #$a,(plcharid,a4)
	bcs.w loc_01e5d8
	clr.w (plcharid,a4)
	addq.w #1,(plpalid,a4)
	cmpi.w #4,(plpalid,a4)
	bls.b loc_01e5d8
	clr.w (plpalid,a4)

loc_01e5d8:
	move.l ($20e,a4),-(a7)
	bsr.w loc_01ed6c
	move.l (a7)+,($20e,a4)
	move.b #$f0,($2f0,a4)

loc_01e5ea:
	move.b (-$53d0,a5),d0
	not.b d0
	andi.b #$f0,d0
	bne.w loc_01e63e
	btst #1,(-$53cc,a5)
	beq.w loc_01e63e
	lea (p2ma5,a5),a4
	lea (p1ma5,a5),a3
	addq.w #1,(plcharid,a4)
	cmpi.w #$a,(plcharid,a4)
	bcs.w loc_01e62c
	clr.w (plcharid,a4)
	addq.w #1,(plpalid,a4)
	cmpi.w #4,(plpalid,a4)
	bls.b loc_01e62c
	clr.w (plpalid,a4)

loc_01e62c:
 	move.l ($20e,a4),-(a7)
 	bsr.w loc_01ed6c
 	move.l (a7)+,($20e,a4)
 	move.b #$f0,($2f0,a4)

loc_01e63e:
	bra.w loc_01e64e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01e642:
	dc.b 'sel ABCD+',$1f,00
	even

;==========================
loc_01e64e:
	btst #5,(DDip1,a5)
	beq.w loc_01e680
	btst #0,(-$53d1,a5)
	beq.b loc_01e66c
	cmpi.w #$63,(-$3da,a5)
	bge.b loc_01e66c
	addq.w #1,(-$3da,a5)

loc_01e66c:
	btst #1,(-$53d1,a5)
	beq.b loc_01e680
	cmpi.w #1,(-$3da,a5)
	ble.b loc_01e680
	subq.w #1,(-$3da,a5)

loc_01e680:
	btst #4,(-$7f84,a5)
	beq.w loc_01e824
	btst #4,(-$53d1,a5)
	beq.w loc_01e6aa
	move.b (-$53cd,a5),d0
	andi.w #$f,d0
	add.w d0,d0
	lea loc_01e804(pc),a0
	move.w (a0,d0.w),d0
	add.w d0,(-$36c,a5)

loc_01e6aa:
	btst #5,(-$53d1,a5)
	beq.w loc_01e6ca
	move.b (-$53cd,a5),d0
	andi.w #$f,d0
	add.w d0,d0
	lea loc_01e804(pc),a0
	move.w (a0,d0.w),d0
	add.w d0,(-$36a,a5)

loc_01e6ca:
	cmpi.w #-1,(-$36c,a5)
	bge.b loc_01e6d8
	move.w #$72,(-$36c,a5)

loc_01e6d8:
	cmpi.w #$73,(-$36c,a5)
	bcs.b loc_01e6e6
	move.w #-1,(-$36c,a5)

loc_01e6e6:
	cmpi.w #-1,(-$36a,a5)
	bge.b loc_01e6f4
	move.w #$72,(-$36a,a5)

loc_01e6f4:
	cmpi.w #$73,(-$36a,a5)
	bcs.b loc_01e702
	move.w #-1,(-$36a,a5)

loc_01e702:
	movem.l d0/a0-a1,-(a7)
	move.w #$1300,-(a7)
	move.l #loc_01e7f4,-(a7)
	clr.w -(a7)
	move.w #$714a,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	movem.l d0/a0-a1,-(a7)
	move.w #$1300,-(a7)
	move.l #loc_01e7fc,-(a7)
	clr.w -(a7)
	move.w #$714b,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	lea loc_0906c0,a0
	move.w (-$36c,a5),d0
	movem.l d0-d3/a0,-(a7)
	move.w #$1300,-(a7)
	move.w #2,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$720a,-(a7)
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0-d3/a0
	tst.w d0
	bmi.b loc_01e77c
	add.w d0,d0
	move.w (a0,d0.w),d0

loc_01e77c:
	movem.l d0-d3/a0,-(a7)
	move.w #$2300,-(a7)
	move.w #4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$726a,-(a7)
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0-d3/a0

	move.w (-$36a,a5),d0
	movem.l d0-d3/a0,-(a7)
	move.w #$1300,-(a7)
	move.w #2, -(a7)
	move.l d0, -(a7)
	clr.w -(a7)
	move.w #$720b,-(a7)
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0-d3/a0

	tst.w d0
	bmi.b loc_01e7ce
	add.w d0,d0
	move.w (a0,d0.w),d0

loc_01e7ce:
	movem.l d0-d3/a0,-(a7)
	move.w #$2300,-(a7)
	move.w #$4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$726b,-(a7)
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0-d3/a0
	bra.w loc_01e824

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01e7f4:
	dc.b 'SH(A):',00
	even

loc_01e7fc:
	dc.b 'HT(B):',00
	even

loc_01e804:
	dc.w $0000,$fff0,$0010,$0000,$ffff,$ffef,$000f,$ffff
	dc.w $0001,$fff1,$0011,$0001,$0000,$fff0,$0010,$0000

;==========================
loc_01e824:
	bra.w loc_01ebe8

;==========================
;Debug Damage and Distance Stats
loc_01e828:
	tst.b (-$3e4,a5)
	bne.w loc_01ebe8
	btst #0,(DDip1,a5)
	beq.w loc_01ebe8
	move.w (-$c7e,a5),d0
	ext.l d0

	movem.l d0/a0-a1,-(a7)
	move.w #$300,-(a7)
	move.l #loc_01eba4,-(a7)
	clr.w -(a7)
	move.w #$7099,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	movem.l d0-d4/a0-a1,-(a7)
	move.w #$300,-(a7)
	move.w #4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$7119,-(a7)
	jsr loc_005ed4
	lea ($c,a7),a7
	movem.l (a7)+,d0-d4/a0-a1
	move.w (-$71e,a5),d0
	ext.l d0

	movem.l d0/a0-a1,-(a7)
	move.w #$3300,-(a7)
	move.l #loc_01ebaa,-(a7)
	clr.w -(a7)
	move.w #$7399,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	movem.l d0-d4/a0-a1,-(a7)
	move.w #$3300,-(a7)
	move.w #4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$7419,-(a7)
	jsr loc_005ed4
	lea ($c,a7),a7
	movem.l (a7)+,d0-d4/a0-a1

	move.w (-$c82,a5),d0
	ext.l d0
	bmi.w loc_01e920

	movem.l d0/a0-a1,-(a7)
	move.w #$300,-(a7)
	move.l #loc_01ebb0,-(a7)
	clr.w -(a7)
	move.w #$709a,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	movem.l d0-d4/a0-a1,-(a7)
	move.w #$300,-(a7)
	move.w #4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$711a,-(a7)
	jsr loc_005ed4
	lea ($c,a7),a7
	movem.l (a7)+,d0-d4/a0-a1

	bra.w loc_01e966

loc_01e920:
	neg.l d0
	movem.l d0/a0-a1,-(a7)
	move.w #$300,-(a7)
	move.l #loc_01ebbc,-(a7)
	clr.w -(a7)
	move.w #$709a,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	movem.l d0-d4/a0-a1,-(a7)
	move.w #$300,-(a7)
	move.w #4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7) 
	move.w #$711a,-(a7)
	jsr loc_005ed4
	lea ($c,a7),a7
	movem.l (a7)+,d0-d4/a0-a1

loc_01e966:
	move.w (-$722,a5),d0
	ext.l d0
	bmi.w loc_01e9b8

	movem.l d0/a0-a1,-(a7)
	move.w #$3300,-(a7)
	move.l #loc_01ebb6,-(a7)
	clr.w -(a7)
	move.w #$739a,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	movem.l d0-d4/a0-a1,-(a7)
	move.w #$3300,-(a7)
	move.w #4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$741a,-(a7)
	jsr loc_005ed4
	lea ($c,a7),a7
	movem.l (a7)+,d0-d4/a0-a1

	bra.w loc_01e9fe

loc_01e9b8:
	neg.l d0

	movem.l d0/a0-a1,-(a7)
	move.w #$3300,-(a7)
	move.l #loc_01ebc2,-(a7)
	clr.w -(a7)
	move.w #$739a,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	movem.l d0-d4/a0-a1,-(a7)
	move.w #$3300,-(a7)
	move.w #4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$741a,-(a7)
	jsr loc_005ed4
	lea ($c,a7),a7
	movem.l (a7)+,d0-d4/a0-a1

loc_01e9fe:
	btst #2,(-$53d1,a5)
	beq.b loc_01ea1a
	subq.w #2,(-$3d0,a5)
	bge.b loc_01ea1a
	clr.w (-$3d0,a5)
	subq.w #2,(-$3ce,a5)
	bge.b loc_01ea1a
	clr.w (-$3ce,a5)

loc_01ea1a:
	btst #3,(-$53d1,a5)
	beq.b loc_01ea34
	addq.w #2,(-$3d0,a5)
	cmpi.w #$100,(-$3d0,a5)
	ble.b loc_01ea34
	move.w #$100,(-$3d0,a5)

loc_01ea34:
	movem.l d0/a0-a1,-(a7)
	move.w #$300,-(a7)
	move.l #loc_01ebc8,-(a7)
	clr.w -(a7)
	move.w #$7147,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	movem.l d0/a0-a1,-(a7)
	move.w #$3300,-(a7)
	move.l #loc_01ebd0,-(a7)
	clr.w -(a7)
	move.w #$7148,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	move.w (-$b64,a5),d0
	movem.l d0-d3/a0,-(a7)
	move.w #$300,-(a7)
	move.w #3,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$7207,-(a7)
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0-d3/a0

	move.w (-$604,a5),d0
	movem.l d0-d3/a0,-(a7)
	move.w #$3300,-(a7)
	move.w #3,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$7208,-(a7)
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0-d3/a0

	movem.l d0/a0-a1,-(a7)
	move.w #$1300,-(a7)
	move.l #loc_01ebd8,-(a7)
	clr.w -(a7)
	move.w #$7287,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	movem.l d0/a0-a1,-(a7)
	move.w #$1300,-(a7)
	move.l #loc_01ebe0,-(a7)
	clr.w -(a7)
	move.w #$7288,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	move.w (-$3d0,a5),d0
	movem.l d0-d3/a0,-(a7)
	move.w #$1300,-(a7)
	move.w #3,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$7347,-(a7)
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0-d3/a0

	move.w (-$3ce,a5),d0
	movem.l d0-d3/a0,-(a7)
	move.w #$1300,-(a7)
	move.w #3,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$7348,-(a7)
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0-d3/a0

	move.w (-$cfc,a5),d0
	movem.l d0-d3/a0,-(a7)
	move.w #$300,-(a7)
	move.w #4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$7329,-(a7)
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0-d3/a0

	move.w (-$79c,a5),d0
	movem.l d0-d3/a0,-(a7)
	move.w #$3300,-(a7)
	move.w #4,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$732a,-(a7)
	jsr loc_005e8e
	lea ($c,a7),a7
	movem.l (a7)+,d0-d3/a0

	bra.w loc_01ebe8

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01eba4:
	dc.b '1Pb ',00
	even

loc_01ebaa:
	dc.b '2Pb ',00
	even

loc_01ebb0:
	dc.b '1Pv ',00
	even

loc_01ebb6:
	dc.b '2Pv ',00
	even

loc_01ebbc:
	dc.b '1Pv-',00
	even

loc_01ebc2:
	dc.b '2Pv-',00
	even

loc_01ebc8:
	dc.b '1Prnk ',00
	even

loc_01ebd0:
	dc.b '2Prnk ',00
	even

loc_01ebd8:
	dc.b 'BASlv ',00
	even

loc_01ebe0:
	dc.b 'PLYlv ',00
	even

;==========================
loc_01ebe8:
	rts

;--------------------------
loc_01ebea:
	tst.b (-$3e4,a5)
	bne.b loc_01ebe8
	btst #2,(DDip1,a5)
	beq.w loc_01ec3a
	bsr.w loc_01ec0a
	exg a3,a4
	bsr.w loc_01ec0a
	exg a3,a4
	bra.w loc_01ec3a

loc_01ec0a:
	movem.l d1-d2,-(a7)
	move.w #3,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.w loc_01ec38
	move.l #$10005e,($66,a0)
	move.l #loc_01ec8e,($6a,a0)

loc_01ec38:
	rts

loc_01ec3a:
	btst #3,(DDip1,a5)
	beq.w loc_01ec8c
	bsr.w loc_01ec54
	exg a3,a4
	bsr.w loc_01ec54
	exg a3,a4
	bra.w loc_01ec8c

loc_01ec54:
	movem.l d1-d2,-(a7)
	move.w #2,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.w loc_01ec8a
	pea ($2dc,a4)
	move.l (a7)+,($66,a0)
	move.l #$10005e,($6a,a0)
	move.l #loc_01ec8e,($6e,a0)

loc_01ec8a:
	rts

loc_01ec8c:
	rts

loc_01ec8e:
	dc.w $ffff

;--------------------------
loc_01ec90:
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	tst.b (-$3e2,a5)
	smi (-$3e2,a5)
	tst.b (-$3e1,a5)
	smi (-$3e1,a5)
	move.w #$3c,(-$3d2,a5)
	sf (p1ma5,a5)
	st (p2ma5,a5)
	move.w (-$f2e,a5),d0
	cmp.w (-$f26,a5),d0
	blt.w loc_01ecd0
	move.w (-$f28,a5),d0
	subq.w #1,d0
	move.w d0,(-$e86,a5)
	move.w d0,(-$926,a5)

loc_01ecd0:;versus handicap
	bsr.w loc_01ed6c
	exg a3,a4
	bsr.w loc_01ed6c
	exg a3,a4
	tst.w (-$f98,a5)
	beq.w loc_01ed10
	movem.l d0-d1/a0-a1,-(a7)
	lea loc_023842,a0
	lea loc_023842,a1
	move.w (-$f96,a5),d0
	move.w (-$f94,a5),d1
	add.w d0,d0
	adda.w d0,a0
	move.w (a0),($1f2,a4)
	add.w d1,d1
	adda.w d1,a1
	move.w (a1),($1f2,a3)
	movem.l (a7)+, d0-d1/a0-a1

loc_01ed10:
	bsr.w loc_023070
	btst #0,(DDip1,a5)
	beq.w loc_01ed20
	rts

loc_01ed20:
	move.w (-$f30,a5),d0
	lsl.w #3,d0
	add.w (DifficultyLvl,a5),d0
	lea loc_023b7c(pc),a0
	move.b (a0,d0.w),d0
	andi.w #$ff,d0
	tst.b (-$ea3,a5)
	bmi.w loc_01ed4e
	move.w (-$e86,a5),d1
	cmp.w (-$926,a5),d1
	bge.w loc_01ed4e
	addi.w #$18,d0

loc_01ed4e:
	tst.b (-$943,a5)
	bmi.w WriteAIRank
	move.w (-$926,a5),d1
	cmp.w (-$e86,a5),d1
	bge.w WriteAIRank
	addi.w #$18,d0

WriteAIRank:
;	move.w #$fff,(-$3d0,a5);Get fucked
	move.w d0,(-$3d0,a5)
	rts

;--------------------------
loc_01ed6c:
	sf (1,a4)
	cmpa.l #$10715c,a4
	bhi.w loc_01ed8e
	sf (0,a4)
	btst #0,(-$f38,a5)
	beq.w loc_01ed8c
	st (1,a4)

loc_01ed8c:
	bra.b loc_01eda0

loc_01ed8e:
	st (0,a4)
	btst #1,(-$f38,a5)
	beq.w loc_01eda0
	st (1,a4)

loc_01eda0:
	move.w ($14,a4),d0
	andi.w #$f,d0
	add.w d0,d0
	lea loc_02397a(pc),a0
	move.w (a0,d0.w),($14,a4)
	move.w ($16,a4),d0
	andi.w #7,d0
	move.w d0,($16,a4)
	bsr.w loc_01f238
	bsr.w loc_01f240
	bsr.w loc_01f248
	move.w #$100,d0
	lea ($b6,a4),a0
	bsr.w loc_01f25c

	move.l #loc_01f250,($1b6,a4)
	move.l #loc_01f250,($1ba,a4)
	move.l #loc_01f250,($1be,a4)
	move.l #loc_01f250,($1c2,a4)
	move.l #loc_01f250,($1c6,a4)
	move.l #loc_01f250,($1ca,a4)
	move.l #loc_01f250,($1ce,a4)
	move.l #loc_01f25c,($1d2,a4)
	move.l #loc_01f25c,($1d6,a4)
	move.l #loc_01f25c,($1da,a4)
	move.l #loc_01f25c,($1de,a4)
	move.l #loc_01f25c,($1e2,a4)
	move.l #loc_01f25c,($1e6,a4)
	move.l #loc_01f25c,($1ea,a4)
	move.l #loc_01f25c,($1ee,a4)
	move.w #$1e00,($1f2,a4)
	move.w #$1000,d0
	tst.w ($1e,a3)
	beq.w loc_01ee66
	move.w #$2000,d0

loc_01ee66:
	move.w d0,($1f8,a4)
	move.w d0,($1fa,a4)
	bsr.w loc_01f112
	clr.w ($200,a4)
	move.b (0,a4),($208,a4)
	move.b (0,a4),($209,a4)
	clr.w ($20a,a4)
	clr.w ($20c,a4)
	move.l #$ffa00000,d0
	tst.b ($208,a4)
	bpl.b loc_01ee98
	neg.l d0

loc_01ee98:
	swap d0
	add.w (-$45be,a5),d0
	swap d0
	move.l d0,($20e,a4)
	move.l (-$45de,a5),($212,a4)
	lea ($216,a4),a0

;1eeae
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.b (a0)+
;1ef54
	move.l #$80000000,($2a2,a4)
	move.l #$80000000,($2a6,a4)
	move.l #loc_01f252,($2d0,a4)
	move.l #loc_023b3a,($2dc,a4)
	move.b #$80,($2e0,a4)
	move.w #$80,d0
	tst.b (0,a4)
	bpl.w loc_01ef8a
	addi.w #$20,d0

loc_01ef8a:
	lsl.w #8,d0
	ori.w #1,d0
	move.w d0,($2ee,a4)
	move.l ($20e,a4),($30c,a4)
	move.l ($212,a4),($310,a4)
	move.w #$60,d0
	lea ($360,a4),a0
	bsr.w loc_01f25c
	move.w #$10,d0
	lea ($3c0,a4),a0
	bsr.w loc_01f25c
	move.w #$100,d0
	lea ($3d0,a4),a0
	bsr.w loc_01f25c
	move.w #$80,d0
	lea ($4d0,a4),a0
	bsr.w loc_01f25c
	move.w #$10,d0
	lea ($550,a4),a0
	bsr.w loc_01f25c

	lea CharPalIDTBL(pc),a0

	move.w ($16,a4),d0
	cmpi.w #4,d0
	bcs.b loc_01efee
	move.w #4,d0

loc_01efee:
	lsl.w #2,d0
	movea.l (a0,d0.w),a0
	move.w ($14,a4),d0
	lsl.w #2,d0
	adda.w d0,a0
	clr.w d0
	move.b ($2ee,a4),d0
	move.w d0,-(a7)
	move.l (a0),-(a7)
	jsr loc_007554
	lea (6,a7),a7

	bsr.w loc_01fa14
	lea loc_023afa(pc),a0
	move.w ($14,a4),d0
	lsl.w #2,d0
	movea.l (a0,d0.w),a0
	jsr (a0)
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	move.w ($23c,a4),d0
	neg.w d0
	move.w d0,($236,a4)
	tst.b ($208,a4)
	bpl.w loc_01f046
	neg.w d0

loc_01f046:
	add.w d0,($20e,a4)
	tst.b (-$f37,a5)
	beq.w loc_01f08e
	move.w ($1e,a3),d0
	cmp.w ($1e,a4),d0
	beq.b loc_01f06a
	bgt.b loc_01f064
	move.w #-$10,d0
	bra.b loc_01f068

loc_01f064:
	move.w #$18,d0

loc_01f068:
	bra.b loc_01f06e

loc_01f06a:
	move.w #0,d0

loc_01f06e:
	move.w ($1c,a4),d1
	neg.w d1
	add.w ($1c,a3),d1
	cmpi.w #$14,d1
	ble.b loc_01f082
	move.w #$14,d1

loc_01f082:
	asl.w #2,d1
	add.w d1,d0
	bsr.w loc_01f12a
	bra.w loc_01f0d2

loc_01f08e:
	move.w (-$3ce,a5),d0
	ext.l d0
	divu.w #4,d0
	move.w (-$f30,a5),d1
	lsl.w #2,d1
	lea loc_023bd4(pc),a0
	move.w (DifficultyLvl,a5),d2
	lsl.w #2,d2
	lea loc_023c00(pc),a1
	tst.b ($1,a4)
	bpl.b loc_01f0c2
	neg.w d0
	move.w (2,a0,d1.w),d1
	neg.w d1
	move.w (2,a1,d2.w),d2
	neg.w d2
	bra.b loc_01f0ca

loc_01f0c2:
	move.w (a0,d1.w),d1
	move.w (a1,d2.w),d2

loc_01f0ca:
	add.w d1,d0
	add.w d2,d0
	bsr.w loc_01f12a

loc_01f0d2:
	tst.w ($1fc,a4)
	bpl.b loc_01f0dc
	clr.w ($1fc,a4)

loc_01f0dc:
	cmpi.w #$100,($1fc,a4)
	bcs.b loc_01f0ea
	move.w #$100,($1fc,a4)

loc_01f0ea:
	cmpi.w #$100,($1fe,a4)
	bcs.b loc_01f0f8
	move.w #$100,($1fe,a4)

loc_01f0f8:
	btst #5,(-$7f83,a5)
	beq.w loc_01f10a
	clr.w ($1fc,a4)
	clr.w ($1fe,a4)

loc_01f10a:
	jsr loc_02d49e
	rts

loc_01f112:
	lea loc_023b3c(pc),a0
	move.w ($14,a4),d0
	lsl.w #2,d0
	move.w (a0,d0.w),($1fc,a4)
	move.w (2,a0,d0.w),($1fe,a4)
	rts

loc_01f12a:
	tst.w d0
	bmi.w loc_01f15c
	cmpi.w #$a0, d0
	ble.b loc_01f13a
	move.w #$a0, d0

loc_01f13a:
	move.w #$100,d1
	sub.w ($1fc,a4),d1
	muls.w d1,d0
	addi.l #$80,d0
	asr.l #8,d0
	neg.w d1
	add.w d1,d0
	addi.w #$100,d0
	move.w d0,($1fc,a4)
	bra.w loc_01f174

loc_01f15c:
	addi.w #$100,d0
	bpl.b loc_01f164
	clr.w d0

loc_01f164:
	muls.w ($1fc,a4),d0
	addi.l #$80,d0
	asr.l #8,d0
	move.w d0,($1fc,a4)

loc_01f174:
	rts

;=========================
loc_01f176:
	move.l #loc_01f238,($2a,a4)
	move.l #loc_01f240,($56,a4)
	move.l #loc_01f248,($86,a4)
	move.l #loc_01f250,($1b6,a4)
	move.l #loc_01f250,($1ba,a4)
	move.l #loc_01f250,($1be,a4)
	move.l #loc_01f250,($1c2,a4)
	move.l #loc_01f250,($1c6,a4)
	move.l #loc_01f250,($1ca,a4)
	move.l #loc_01f250,($1ce,a4)
	move.l #loc_01f25c,($1d2,a4)
	move.l #loc_01f25c,($1d6,a4)
	move.l #loc_01f25c,($1da,a4)
	move.l #loc_01f25c,($1de,a4)
	move.l #loc_01f25c,($1e2,a4)
	move.l #loc_01f25c,($1e6,a4)
	move.l #loc_01f25c,($1ea,a4)
	move.l #loc_01f25c,($1ee,a4)
	clr.w ($1fc,a4)
	clr.w ($1fe,a4)
	clr.w ($342,a4)
	clr.w ($344,a4)
	clr.w ($346,a4)
	clr.w ($348,a4)
	clr.w ($34a,a4)
	clr.w ($34c,a4)
	clr.w ($34e,a4)
	clr.w ($350,a4)
	move.l #loc_01f252,($2d0,a4)
	rts

;--------------------------
loc_01f238:
	jsr loc_0226cc
	bra.b loc_01f238

loc_01f240
	jsr loc_0226b4
	bra.b loc_01f240

loc_01f248:
	jsr loc_02269c
	bra.b loc_01f248

loc_01f250:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01f252:
	dc.w $000a,$0000,$0000,$8000,$8001

;--------------------------
loc_01f25c:
	ext.l d0
	ror.l #4,d0
	subq.w #1,d0
	bmi.b loc_01f270

loc_01f264:
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	clr.l (a0)+
	dbra d0,loc_01f264

loc_01f270:
	clr.w d0
	rol.l #4,d0
	subq.w #1,d0
	bmi.b loc_01f27e

loc_01f278:
	clr.b (a0)+
	dbra d0,loc_01f278

loc_01f27e:
	rts

;--------------------------
loc_01f280:
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	clr.w ($33c,a4)
	clr.w ($33c,a3)
	btst #6,($249,a4)
	beq.w loc_01f2a4
	addi.w #$20,($33c,a4)
	bra.w loc_01f368

loc_01f2a4:
	btst #6,($249,a3)
	beq.w loc_01f2b8
	addi.w #$20,($33c,a3)
	bra.w loc_01f368

loc_01f2b8:
	move.b ($249,a4),d0
	andi.b #$fb,d0
	bne.w loc_01f304
	move.b ($249,a3),d0
	andi.b #$fb,d0
	bne.w loc_01f31c
	move.w ($1f2,a4),d0
	sub.w ($1f2,a3),d0
	cmpi.w #$a00,d0
	bge.w loc_01f328
	cmpi.w #-$a00,d0
	ble.w loc_01f310
	addq.w #1,(-$3d2,a5)
	cmpi.w #$3c,(-$3d2,a5)
	blt.w loc_01f34c
	move.w #$3c,(-$3d2,a5)
	not.b (-$3e2,a5)
	bra.w loc_01f334

loc_01f304:
	move.b ($249,a3),d0
	andi.b #$fb,d0
	bne.w loc_01f334

loc_01f310:
	clr.w (-$3d2,a5)
	sf (-$3e2,a5)
	bra.w loc_01f34c

loc_01f31c:
	move.b ($249,a4),d0
	andi.b #$fb,d0
	bne.w loc_01f334

loc_01f328:
	clr.w (-$3d2,a5)
	st (-$3e2,a5)
	bra.w loc_01f34c

loc_01f334:
	addi.w #$a,($33c,a4)
	addi.w #$a,($33c,a3)
	bsr.w loc_01f46c
	bsr.w loc_01f4c2
	bra.w loc_01f368

loc_01f34c:
	tst.b (-$3e2,a5)
	bmi.b loc_01f35e
	addi.w #$20,($33c,a4)
	bsr.w loc_01f4c2
	bra.b loc_01f368

loc_01f35e:
	addi.w #$20,($33c,a3)
	bsr.w loc_01f46c

loc_01f368:
	cmpi.w #$1e,(-$3da,a5)
	bgt.b loc_01f37e
	move.w #$24,($33c,a4)
	move.w #$24,($33c,a3)
	bra.b loc_01f39a

loc_01f37e:
	cmpi.w #$a00,($1f2,a4)
	bge.b loc_01f38c
	move.w #$24,($33c,a4)

loc_01f38c:
	cmpi.w #$a00,($1f2,a3)
	bge.b loc_01f39a
	move.w #$24,($33c,a3)

loc_01f39a:
	move.w ($1f2,a4),d0
	asr.w #7,d0
	move.w ($1f2,a3),d1
	asr.w #7,d1
	sub.w d0,d1
	bmi.b loc_01f3ae
	add.w d1,($33c,a4)

loc_01f3ae:
	neg.w d1
	bmi.b loc_01f3b6
	add.w d1,($33c,a3)

loc_01f3b6:
	move.w (-$7fa2,a5),d0
	lsr.w #6,d0
	andi.w #$3e,d0
	lea loc_023c34(pc),a0
	move.w (a0,d0.w),d0
	add.w d0,($33c,a4)
	add.w d0,($33c,a3)
	cmpi.w #2,($204,a4)
	bne.b loc_01f3e0
	addi.w #$20,($33c,a4)
	bra.b loc_01f3ee

loc_01f3e0:
	cmpi.w #3,($204,a4)
	blt.b loc_01f3ee
	addi.w #$50,($33c,a4)

loc_01f3ee:
	cmpi.w #2,($204,a3)
	bne.b loc_01f3fe
	addi.w #$20,($33c,a3)
	bra.b loc_01f40c

loc_01f3fe:
	cmpi.w #3,($204,a3)
	blt.b loc_01f40c
	addi.w #$50,($33c,a3)

loc_01f40c:
	tst.b (-$3e2,a5)
	bpl.w loc_01f416
	exg a3,a4

loc_01f416:
	bsr.w loc_01f42c
	bsr.w loc_01f464
	move.w ($1f2,a4),($1aa,a4)
	move.w ($1f2,a3),($1aa,a3)
	rts

;--------------------------
loc_01f42c:
	btst #1,($249,a4)
	bne.w loc_01f45e
	move.b ($28e,a4),d0
	andi.b #$fb,d0
	beq.w loc_01f462
	btst #3,($2e1,a4)
	bne.w loc_01f462
	subq.w #5,($1a8,a4)
	bpl.b loc_01f456
	clr.w ($1a8,a4)

loc_01f456:
	tst.b ($249,a4)
	bne.w loc_01f462

loc_01f45e:
	clr.w ($1a8,a4)

loc_01f462:
	rts

loc_01f464:
	exg a3,a4
	bsr.b loc_01f42c
	exg a3,a4
	rts

;==========================
loc_01f46c:
	tst.b (-$3dd,a5)
	bne.w loc_01f4c0
	tst.b (-$3de,a5)
	bne.w loc_01f4c0
	tst.b ($249,a4)
	bne.w loc_01f4c0
	tst.b ($249,a3)
	bne.w loc_01f4c0
	cmpi.b #4,(StanimaSetting,a5)
	beq.b loc_01f49e
	move.w #4,d0
	move.w #6,d1
	bra.b loc_01f4a6

loc_01f49e:
	move.w #7,d0
	move.w #$a,d1

loc_01f4a6:
	tst.b (-$f37,a5)
	beq.b loc_01f4ae
	move.w d1,d0

loc_01f4ae:
	add.w d0,($1a8,a4)
	cmpi.w #$18b4,($1a8,a4)
	ble.b loc_01f4c0
	move.w #$18b4,($1a8,a4)

loc_01f4c0:
	rts

loc_01f4c2:
	exg a3,a4
	bsr.b loc_01f46c
	exg a3,a4
	rts

;==========================
loc_01f4ca:
	move.l ($2dc,a4),d0
	beq.w loc_01f4e6
	move.l ($2dc,a3),d0
	beq.w loc_01f4e6
	bsr.w loc_01f68a
	exg a3,a4
	bsr.w loc_01f68a
	exg a3,a4

loc_01f4e6:
	tst.b ($276,a4)
	beq.b loc_01f4f2
	jsr loc_02a7d2

loc_01f4f2:
	exg a3,a4
	tst.b ($276,a4)
	beq.b loc_01f500
	jsr loc_02a7d2

loc_01f500:
	exg a3,a4
	tst.b ($276,a4)
	sne d0
	tst.b ($276,a3)
	sne d1
	and.b d0,d1
	beq.w loc_01f548
	move.b ($25e,a4),d0
	and.b ($25e,a3),d0
	btst #4,d0
	bne.w loc_01f548
	btst #4,($25e,a4)
	beq.w loc_01f534
	jsr loc_02a996

loc_01f534:
	exg a3,a4
	btst #4,($25e,a4)
	beq.w loc_01f546
	jsr loc_02a996

loc_01f546:
	exg a3,a4

loc_01f548:
	tst.b ($276,a4)
	sne d0
	tst.b ($276,a3)
	sne d1
	and.b d0,d1
	beq.b loc_01f574
	clr.w ($290,a4)
	clr.w ($292,a4)
	clr.w ($290,a3)
	clr.w ($292,a3)
	ori.b #8,($249,a3)
	ori.b #8,($249,a4)

loc_01f574:
	bsr.w loc_01f608
	exg a3,a4
	bsr.w loc_01f608

	exg a3,a4
	bsr.w loc_01f5c6
	beq.b loc_01f58c
	jsr loc_02efbc

loc_01f58c:
	exg a3,a4
	bsr.w loc_01f5c6
	beq.b loc_01f59a
	jsr loc_02efbc

loc_01f59a:
	exg a3,a4
	andi.b #$f,($275,a4)
	andi.b #$f,($275,a3)
	bsr.w loc_01f63e
	exg a3,a4
	bsr.w loc_01f63e
	exg a3,a4
	clr.b ($275,a4)
	clr.b ($276,a4)
	clr.b ($275,a3)
	clr.b ($276,a3)
	rts

;==========================
loc_01f5c6:
	move.b ($275,a4),d0
	andi.b #$e0,d0
	beq.w loc_01f604
	tst.b ($276,a4)
	bne.w loc_01f604
	tst.b ($276,a3)
	bne.w loc_01f604
	move.b ($24d,a4),d0
	andi.b #$18,d0
	cmpi.b #$10,d0
	bne.w loc_01f604
	andi.b #$e7,($24d,a4)
	ori.b #$18,($24d,a4)
	move.b #-1,d0
	rts

loc_01f604:
	clr.b d0
	rts

;==========================
loc_01f608:;1fafe
	tst.b ($276,a4);Hurt flag
	beq.w loc_01f63c

;extra01
;	tst.b (extraflag,a5)
;	beq.b notextra01
	cmpi #$5,($286,a4)
	blt.b extrastuff01
	clr.b ($247,a4)
	bclr #1,($246,a4)

extrastuff01:
	btst #0,($248,a4)
	bne.b notextra01
	andi.b #$f3,($248,a4)

notextra01:
	move.b (0,a4),d0
	not.b d0
	move.b d0,(-$3e1,a5)
	move.w ($290,a4),-(a7)
	move.w ($292,a4),-(a7)
	movea.l ($1b6,a4),a0
	jsr (a0)
	move.w (a7)+,($292,a4)
	move.w (a7)+,($290,a4)
	move.b ($276,a4),d0
	or.b d0,($272,a4)
	or.b d0,($274,a4)

;extra02 1fb58
;	tst.b (extraflag,a5)
;	beq.b loc_01f63c
	tst.b ($249,a4)
	beq.b loc_01f63c
	jsr extraroutine00
	addq.b #4,d0
	move.b d0,(plextcounter00,a4)
	move.b ($249,a4),d0
	andi.b #2,d0
	bne ext02clr
	move.b #$a,(plextcounter01,a4)

ext02clr:
	clr.w ($252,a4)

loc_01f63c:
	rts

;==========================
loc_01f63e:
	tst.b ($275,a4)
	beq.w loc_01f688
	tst.b ($2b8,a4)
	beq.w loc_01f676
	btst #7,($28e,a3)
	bne.w loc_01f668
	move.b ($249,a3),d0
	beq.w loc_01f676
	andi.b #$82,d0
	bne.w loc_01f676

loc_01f668:
	clr.w d0
	move.b ($2b8,a4),d0
	bpl.b loc_01f672
	clr.w d0

loc_01f672:
	move.w d0,($2ba,a3)

loc_01f676:
	movea.l ($1be,a4),a0
	jsr (a0)
	move.b ($275,a4),d0
	or.b d0,($271,a4)
	or.b d0,($273,a4)

;extra03 1fbd0
;	tst.b (extraflag,a5)
;	beq.b loc_01f688
	move.b #$a,(plextcounter00,a4)

loc_01f688:
	rts

;==========================
loc_01f68a:
	link a6,#-4
	clr.l (-4,a6)
	tst.b ($276,a3)
	beq.w loc_01f6a6
	move.b ($25e,a3),(-3,a6)
	andi.b #$b,(-3,a6)

loc_01f6a6:
	btst #3,($24c,a4)
	beq.w loc_01f8ba
	btst #7,($24c,a4)
	bne.w loc_01f8ba
	move.b ($249,a3),d0
	beq.w loc_01f6e2
	andi.b #$17,d0
	bne.w loc_01f6e2
	btst #7,($25f,a3)
	bne.w loc_01f6d8
	bra.w loc_01f6e2

loc_01f6d8:
	btst #7,($24d,a4)
	beq.w loc_01f8ba
;	tst (extraflag,a5)
;	bne extra04
;	bra.b extra04

loc_01f6e2:
;	btst #4,($249,a3)
;	bne.w loc_01f8ba

extra04:
	btst #3,($249,a3)
	bne.w loc_01f6fe
	tst.w ($2bc,a3)
	bne.w loc_01f8ba

loc_01f6fe:
	move.w ($20e,a4),d2
	sub.w ($20e,a3),d2
	tst.b ($208,a3)
	bpl.w loc_01f710
	neg.w d2

loc_01f710:
	swap d2
	move.w ($212,a4),d2
	sub.w ($212,a3),d2
	moveq #0,d3
	move.b ($208,a4),d3
	move.b ($208,a3),d0
	eor.b d0,d3
	swap d3
	movea.l ($2dc,a4),a1
	bra.b loc_01f736

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_01f72e:
	dc.b $00,$01,$ef,$ef,$ef,$ef,$ef,$ef

;==========================
loc_01f736:
	clr.w d0
	move.b (a1)+,d0
	beq.w loc_01f8ba
	not.b d0
	or.b ($278,a4),d0
	not.b d0
	andi.b #$e0,d0
	beq.w loc_01f8b4
	or.b d0,($277,a3)
	lsr.b #5,d0
	move.b loc_01f72e(pc,d0.w),d0
	move.b d0,(-2,a6)
	movea.l ($2dc,a3),a0

loc_01f760:
	move.b (a0)+,d1
	beq.w loc_01f8b4
	not.b d1
	or.b ($278,a3),d1
	not.b d1
	and.b d0,d1
	btst #4,($24c,a4)
	beq.w loc_01f784
	move.b d1,d4
	andi.b #$c0,d4
	lsr.b #4,d4
	or.b d4,d1

loc_01f784:
	move.b d1,(-1,a6)
	andi.b #$f,d1
	bne.w loc_01f7d6
	move.b (a0),d4
	ext.w d4
	add.w d4,d4
	move.b (1,a0),d5
	ext.w d5
	add.w d5,d5
	move.b (2,a0),d6
	ext.w d6
	add.w d6,d6
	move.b (3,a0),d7
	ext.w d7
	add.w d7,d7
	bsr.w loc_022a58
	tst.b d0
	beq.w loc_01f8aa
	tst.b (-4,a6)
	bne.w loc_01f7c6
	movem.w d4-d7,($27e,a3)

loc_01f7c6:
	move.b (-1,a6),d1
	andi.b #$e0,d1
	or.b d1,($275,a4)
	bra.w loc_01f8aa

loc_01f7d6:
	move.b (a0),d4
	ext.w d4
	add.w d4,d4
	move.b (1,a0),d5
	ext.w d5
	add.w d5,d5
	move.b (2,a0),d6
	ext.w d6
	add.w d6,d6
	move.b (3,a0),d7
	ext.w d7
	add.w d7,d7
	bsr.w loc_022a58
	tst.b d0
	beq.w loc_01f8aa
	tst.b (-4,a6)
	bne.w loc_01f89a
	st (-4,a6)
	movem.w d4-d7,($27e,a3)
	tst.b ($276,a3)
	beq.w loc_01f824
	move.b ($24e,a4),d0
	cmp.b ($260,a3),d0
	bcs.w loc_01f83e

loc_01f824:
	move.b ($24c,a4),($25e,a3)
	move.b (-3,a6),d4
	or.b d4,($25e,a3)
	move.b ($24d,a4),($25f,a3)
	move.b ($24e,a4),($260,a3)

loc_01f83e:
	bset #7,($24c,a4)
	bclr #6,($25e,a3)
	move.b ($24f,a4),d4
	add.b d4,($261,a3)
	move.b ($250,a4),d4
	add.b d4,($262,a3)
	move.w ($252,a4),($264,a3)
	move.w ($254,a4),d4
	add.w d4,($266,a3)
	move.w ($256,a4),d4
	add.w d4,($268,a3)
	move.w ($258,a4),d4
	add.w d4,($26a,a3)
	move.w ($25a,a4),d4
	add.w d4,($26c,a3)
	move.w ($25c,a4),($26e,a3)
	move.w ($27a,a4),($27c,a3)
	addq.w #1,($286,a3)
	move.b ($208,a4),d4
	not.b d4
	move.b d4,($270,a3)

loc_01f89a:
	move.b (-1,a6),d1
	or.b d1,($275,a4)
	andi.b #$f,d1
	or.b d1,($276,a3)

loc_01f8aa:
	move.b (-2,a6),d0
	addq.w #4,a0
	bra.w loc_01f760

loc_01f8b4:
	addq.w #4,a1
	bra.w loc_01f736

loc_01f8ba:
	unlk a6
	rts

;--------------------------
loc_01f8be:
	bsr.w loc_01f8e4
	exg a3,a4
	bsr.w loc_01f8e4
	exg a3,a4
	bsr.w loc_01fa68
	bsr.w loc_01fb66
	exg a3,a4
	bsr.w loc_01fa68
	bsr.w loc_01fb66
	exg a3,a4
	bsr.w loc_0230ae
	rts

;==========================
loc_01f8e4:
	tst.b ($249,a4)
	beq.w loc_01f8fe
	btst #2,($249,a4)
	bne.w loc_01f928
	clr.w ($200,a4)
	bra.w loc_01f928

loc_01f8fe:
	addq.w #1,($200,a4)
	cmpi.w #$b4,($200,a4)
	blt.w loc_01f928
	clr.w ($200,a4)
	addi.w #$800,($1f8,a4)
	move.w ($1f8,a4),d0
	cmp.w ($1fa,a4),d0
	bls.w loc_01f928
	move.w ($1fa,a4),($1f8,a4)

loc_01f928:
	bsr.w loc_01fa14
	tst.w ($2ba,a4)
	bne.w loc_01fa02

;extra05
;	tst.b (extraflag,a5)
;	beq.b notextra05
	subq.b #1,(plextcounter00,a4)
	bpl.b exsubcounter1
	sf (plextcounter00,a4)

exsubcounter1:
	subq.b #1,(plextcounter01,a4)
	bpl.b exsubcounter2
	sf (plextcounter01,a4)

exsubcounter2:
	subq.b #1,(plextcounter02,a4)
	bpl.b extra05done
	sf (plextcounter02,a4)

extra05done:
	subq.w #1,($2b6,a4)
	bpl.b loc_01f93e
	clr.w ($2b6,a4)

loc_01f93e:
	subq.w #1,($2bc,a4)
	bpl.b loc_01f948
	addq.w #1,($2bc,a4)

loc_01f948:
	subq.w #1,($2be,a4)
	bpl.b loc_01f952
	clr.w ($2be,a4)

loc_01f952:
	subq.w #1,($2c0,a4)
	bpl.b loc_01f962
	clr.w ($2c0,a4)
	sf ($2c7,a4)
	bra.b loc_01f968

loc_01f962:
	bgt.b loc_01f968
	sf ($2c7,a4)

loc_01f968:
	subq.w #1,($2c2,a4)
	bpl.b loc_01f976
	clr.w ($2c2,a4)
	st ($2c7,a4)

loc_01f976:
	subq.w #1,($2c4,a4)
	bpl.b loc_01f980
	clr.w ($2c4,a4)

loc_01f980:
	subq.w #1,($2c8,a4)
	bpl.b loc_01f98a
	clr.w ($2c8,a4)

loc_01f98a:
	subq.w #1,($2ca,a4)
	bpl.b loc_01f994
	clr.w ($2ca,a4)

loc_01f994:
	subq.w #1,($2cc,a4)
	bpl.b loc_01f99e
	clr.w ($2cc,a4)

loc_01f99e:
	lea ($550,a4),a0
	move.w #7,d7

loc_01f9a6:
	subq.w #1,(a0)
	bpl.b loc_01f9ac
	addq.w #1,(a0)

loc_01f9ac:
	addq.w #2,a0
	dbra d7,loc_01f9a6
	move.b ($249,a4),($28e,a4)
	btst #3,($2e1,a4)
	bne.w loc_01f9e2
	move.w #$10,d0
	lea ($3c0,a4),a0
	bsr.w loc_01f25c
	tst.w (-$396,a5)
	bne.b loc_01f9de
	tst.b (1,a4)
	bmi.b loc_01f9de
	clr.b ($2fa,a4)

loc_01f9de:
	clr.b ($2fb,a4)

loc_01f9e2:
	tst.b ($24b,a3)
	bne.w loc_01fa02
	move.l ($216,a4),d0
	tst.b ($208,a4)
	bpl.b loc_01f9f6
	neg.l d0

loc_01f9f6:
	add.l d0,($20e,a4)
	move.l ($21a,a4),d0
	add.l d0,($212,a4)

loc_01fa02:
	bsr.w loc_01fbea
	bsr.w loc_01fc2a
	bsr.w loc_020874
	bsr.w loc_01fe62
	rts

;--------------------------
loc_01fa14:
	move.w (-$3d0,a5),d1
	add.w (-$3ce,a5),d1
	add.w ($33c,a4),d1
	cmpi.w #$ff,d1
	ble.b loc_01fa2a
	move.w #$ff,d1

loc_01fa2a:
	move.w d1,($33e,a4)
	bge.b loc_01fa34
	clr.w ($33e,a4)

loc_01fa34:
	addq.w #6,($340,a4)
	move.w ($340,a4),d0
	cmpi.w #$ff,d0
	bgt.w loc_01fa4e
	subi.w #$40,d0
	cmp.w d1,d0
	ble.w loc_01fa54

loc_01fa4e:
	subi.w #$40,($340,a4)

loc_01fa54:
	move.w ($340,a4),d0
	cmp.w ($33e,a4),d0
	bge.w loc_01fa66
	move.w ($33e,a4),($340,a4)

loc_01fa66:
	rts

;--------------------------
loc_01fa68:
	addq.w #1,($20a,a4)
	bpl.w loc_01fa74
	subq.w #1,($20a,a4)


loc_01fa74:
	tst.b (-$3e3,a5)
	bne.w loc_01fb20
	tst.b ($247,a4)
	bne.w loc_01fa9c
	btst #2,($246,a4)
	bne.w loc_01fb64
	btst #3,($246,a4)
	bne.w loc_01fb64
	bra.w loc_01faba

loc_01fa9c:
	btst #3,($24c,a4)
	bne.w loc_01faba
	btst #2,($246,a4)
	bne.w loc_01fb40
	btst #3,($246,a4)
	bne.w loc_01fb54

loc_01faba:
	move.w ($23c,a4),d0
	move.w ($23e,a4),d1
	tst.b ($208,a4)
	bpl.w loc_01fad0
	neg.w d0
	neg.w d1
	exg d0,d1

loc_01fad0:
	add.w ($20e,a4),d0
	add.w ($20e,a4),d1
	move.w ($23c,a3),d2
	move.w ($23e,a3),d3
	tst.b ($208,a3)
	bpl.w loc_01faee
	neg.w d2
	neg.w d3
	exg d2,d3

loc_01faee:;20072
	add.w ($20e,a3),d2
	add.w ($20e,a3),d3
	sub.w d2,d1
	ble.w loc_01fb40
	sub.w d0,d3
	ble.w loc_01fb54
	cmp.w d3,d1
	bgt.w loc_01fb14
	lsl.w #1,d1
	cmp.w d3,d1
	ble.w loc_01fb40
	bra.w loc_01fb64

loc_01fb14:
	lsl.w #1,d3
	cmp.w d1,d3
	ble.w loc_01fb54
	bra.w loc_01fb64

loc_01fb20:
	tst.b ($208,a4)
	bmi.w loc_01fb34
	btst #2,($2f0,a4)
	beq.b loc_01fb64
	bra.w loc_01fb54

loc_01fb34:
	btst #3,($2f0,a4)
	beq.b loc_01fb64
	bra.w loc_01fb40

loc_01fb40:
	tst.b ($209,a4)
	bpl.w loc_01fb64
	sf ($209,a4)
	clr.w ($20a,a4)
	bra.w loc_01fb64

loc_01fb54:
	tst.b ($209,a4)
	bmi.w loc_01fb64
	st ($209,a4)
	clr.w ($20a,a4)

loc_01fb64:
	rts

;--------------------------
loc_01fb66:;200ec
	move.l ($20e,a3),d0
	sub.l ($20e,a4),d0
	move.l d0, d1
	bmi.b loc_01fb86
	swap d1
	tst.b ($208,a3)
	bmi.b loc_01fb80
	add.w ($23c,a3),d1
	bra.b loc_01fb9a

loc_01fb80:
	sub.w ($23e,a3),d1
	bra.b loc_01fb9a

loc_01fb86:
	neg.l d1
	swap d1
	tst.b ($208,a3)
	bmi.b loc_01fb96
	sub.w ($23e,a3),d1
	bra.b loc_01fb9a

loc_01fb96:
	add.w ($23c,a3),d1

loc_01fb9a:
	swap d1
	tst.l d1
	bpl.w loc_01fba4
	clr.l d1

loc_01fba4:
	btst #3,($249,a3)
	bne.w loc_01fbb8
	btst #2,($249,a3)
	beq.w loc_01fbbe

loc_01fbb8:
	addi.l #$80000,d1

loc_01fbbe:
	move.l d1,($226,a4)
	tst.b ($208,a4)
	bpl.w loc_01fbcc
	neg.l d0

loc_01fbcc:
	move.l d0,($21e,a4)
	move.l ($212,a3),d0
	sub.l ($212,a4),d0
	move.l d0,($222,a4)
	move.l (-$45de,a5),d0
	sub.l ($212,a4),d0
	move.l d0,($22a,a4)
	rts

loc_01fbea:
	sf ($247,a4)
	tst.b ($24b,a3)
	bne.w loc_01fc28
	move.l ($21a,a4),d0
	bmi.b loc_01fc28
	add.l ($212,a4),d0
	move.l (-$45de,a5),d1
	subi.l #$e0000,d1
	cmp.l d1,d0
	blt.b loc_01fc12
	st ($247,a4)

loc_01fc12:
	move.l ($212,a4),d0
	cmp.l (-$45de,a5),d0
	blt.b loc_01fc28
	move.l (-$45de,a5),($212,a4)
	bset #1,($246,a4);safe

loc_01fc28:
	rts

;--------------------------
loc_01fc2a:
	move.w ($236,a4),d2
	swap d2
	clr.w d2
	move.l d2,d3
	tst.b ($24b,a4)
	beq.w loc_01fc56
	move.w ($23c,a4),d2
	neg.w d2
	move.w ($23e,a4),d3
	tst.b ($208,a4)
	bpl.b loc_01fc4e
	exg d2,d3

loc_01fc4e:
	swap d2
	swap d3
	clr.w d2
	clr.w d3

loc_01fc56:
	move.w (-$45c2,a5),d1
	addi.w #$c,d1
	swap d1
	move.w #$8000,d1
	move.l ($20e,a4),d0
	sub.l d2,d0
	sub.l d1,d0
	bgt.b loc_01fc8e
	sub.l d0,($20e,a4)
	bset #2,($246,a4);safe
	tst.b ($24b,a4)
	bne.w loc_01fc86
	tst.b ($24b,a3)
	beq.b loc_01fc8a

loc_01fc86:
	sub.l d0,($20e,a3)

loc_01fc8a:
	bsr.w loc_01fcc8

loc_01fc8e:;20214
	move.w (-$45c0,a5),d1
	subi.w #$c,d1
	swap d1
	move.w #$8000,d1
	move.l ($20e,a4),d0
	add.l d3,d0
	sub.l d1,d0
	blt.b loc_01fcc6
	sub.l d0,($20e,a4)
	bset #3,($246,a4)
	tst.b ($24b,a4)
	bne.w loc_01fcbe
	tst.b ($24b,a3)
	beq.b loc_01fcc2

loc_01fcbe:
	sub.l d0,($20e,a3)

loc_01fcc2:
	bsr.w loc_01fcc8

loc_01fcc6:
	rts

;--------------------------
loc_01fcc8:;2024e
	move.b ($24b,a4),d1
	or.b ($24b,a3),d1
	beq.b loc_01fcda
	sub.l d0,($20e,a3)
	bra.w loc_01fd70

loc_01fcda:
	move.b ($249,a4),d1
	beq.w loc_01fd70
	btst #6,($25e,a4)
	bne.w loc_01fd70
	andi.b #3,d1
	bne.w loc_01fd70
	tst.b ($249,a3)
	bne.w loc_01fd64
	btst #1,($246,a3)
	bne.w loc_01fd1a
	tst.l d0
	bmi.w loc_01fd12
	bsr.w loc_01fd72
	bra.b loc_01fd1a

loc_01fd12:
	neg.l d0
	bsr.w loc_01fd72
	neg.l d0

loc_01fd1a:
	btst #1,($246,a4)
	bne.b loc_01fd24
	asr.l #1,d0

loc_01fd24:
	btst #1,($246,a4)
	bne.w loc_01fd64
	tst.l ($21a,a4)
	bpl.w loc_01fd70
	btst #1,($248,a4)
	bne.w loc_01fd70
	cmpi.w #$60,($226,a4)
	bge.w loc_01fd70
	move.w #$60, d1
	sub.w ($226,a4),d1
	tst.l d0
	bmi.b loc_01fd5c
	bsr.w loc_01fdb8
	bra.b loc_01fd64

loc_01fd5c:
	neg.l d0
	bsr.w loc_01fdb8
	neg.l d0

loc_01fd64:
	st ($1b1,a4)
	move.l d0,($1ac,a4)
	sub.l d0,($20e,a3)

loc_01fd70:
	rts

;--------------------------
loc_01fd72:;202f8
	movea.l ($1ea,a3),a0
	move.l ($14,a0),d4
	tst.l d4
	beq.w loc_01fdb2
	bpl.b loc_01fd84
	neg.l d4

loc_01fd84:
	move.l ($21a,a3),d5
	bpl.b loc_01fd8c
	neg.l d5

loc_01fd8c:
	sub.l d4,d5
	bpl.w loc_01fdb4
	neg.l d5
	lsr.l #8,d5
	lsr.l #8,d4
	tst.w d4
	beq.w loc_01fdb2
	move.l d0,d1
	lsr.l #8,d1
	mulu.w d1,d5
	divu.w d4,d5
	bvs.w loc_01fdb2
	swap d5
	clr.w d5
	lsr.l #8,d5
	move.l d5,d0

loc_01fdb2:
	rts

loc_01fdb4:
	clr.l d0
	rts

;--------------------------
loc_01fdb8:;2033e
	lsr.l #8,d0
	mulu.w d1,d0
	addi.l #$30,d0
	divu.w #$60,d0
	ext.l d0
	lsl.l #8,d0
	rts

;--------------------------
loc_01fdcc:
	move.w ($236,a4),d2
	swap d2
	clr.w d2
	move.l d2,d3
	tst.b ($24b,a4)
	beq.w loc_01fdf8
	move.w ($23c,a4),d2
	neg.w d2
	move.w ($23e,a4),d3
	tst.b ($208,a4)
	bpl.b loc_01fdf0
	exg d2,d3

loc_01fdf0:
	swap d2
	swap d3
	clr.w d2
	clr.w d3

loc_01fdf8:
	move.w (-$45c2,a5),d1
	addi.w #$c,d1
	swap d1
	move.w #$8000,d1
	move.l ($20e,a4),d0
	sub.l d2,d0
	sub.l d1,d0
	bgt.b loc_01fe2c
	sub.l d0,($20e,a4)
	bset #2,($246,a4);safe
	tst.b ($24b,a4)
	bne.w loc_01fe28
	tst.b ($24b,a3)
	beq.b loc_01fe2c

loc_01fe28:;203ae
	sub.l d0,($20e,a3)

loc_01fe2c:
	move.w (-$45c0,a5),d1
	subi.w #$c,d1
	swap d1
	move.w #$8000,d1
	move.l ($20e,a4),d0
	add.l d3,d0
	sub.l d1,d0
	blt.b loc_01fe60
	sub.l d0,($20e,a4)
	bset #3,($246,a4);safe
	tst.b ($24b,a4)
	bne.w loc_01fe5c
	tst.b ($24b,a3)
	beq.b loc_01fe60

loc_01fe5c:
	sub.l d0,($20e,a3)

loc_01fe60:
	rts

;==========================
loc_01fe62:;203e8
	cmpi.b #$11,($245,a4)
	beq.w loc_01fe7a
	cmpi.b #$12,($245,a4)
	beq.w loc_01fe7a
	bra.w loc_01febe

loc_01fe7a:
	tst.w ($2ca,a4)
	beq.w loc_01febe
	tst.b ($2b2,a4)
	bne.w loc_01febe
	addq.b #1,($2b2,a4)
	move.l ($20e,a4),($2a2,a4)
	move.l ($212,a4),($2a6,a4)
	subi.l #$400000,($2a6,a4)
	move.l #$20000,($2aa,a4)
	clr.l ($2ae,a4)
	move.w ($242,a4),d0
	tst.b ($208,a4)
	bpl.b loc_01feba
	neg.w d0

loc_01feba:
	add.w d0,($2a2,a4)

loc_01febe:
	rts

;--------------------------
loc_01fec0:;20446
	moveq #0,d0
	move.w #1,d1
	bsr.w loc_01ff20
	exg a3,a4
	move.w #2,d1
	bsr.w loc_01ff20
	exg a3,a4
	subq.w #1,d0
	bmi.w loc_01ff12
	subq.w #1,d0
	bmi.w loc_01ff04
	subq.w #1,d0
	bmi.w loc_01fef6
	bsr.w loc_022736
	exg a3,a4
	bsr.w loc_022736
	exg a3,a4
	rts

loc_01fef6:
	bsr.w loc_022788
	exg a3,a4
	bsr.w loc_022736
	exg a3,a4
	rts

;==========================
loc_01ff04:;2048a
	bsr.w loc_022736
	exg a3,a4
	bsr.w loc_022788
	exg a3,a4
	rts

;--------------------------
loc_01ff12:
	bsr.w loc_022788
	exg a3,a4
	bsr.w loc_022788
	exg a3,a4
	rts

;--------------------------
loc_01ff20:;204a6
	clr.b ($2e1,a4)
	subq.w #1,($2ba,a4)
	bpl.w loc_01ff38
	clr.b ($2b9,a4)
	clr.w ($2ba,a4)
	or.w d1,d0
	rts

loc_01ff38:
	bset #3,($2e1,a4)
	rts

;--------------------------
;Controls and AI
loc_01ff40:;204c6
	bsr.w Extramodestart
	exg a3,a4
	bsr.w Extramodestart
	exg a3,a4
	rts

	include "extramode.asm"

;--------------------------
loc_020024: ;debugdip01 tst0
	movem.l d0-d7/a0-a4,-(a7)
	lea ($192,a4),a1
	move.w ($378,a4),d0
	tst.b ($209,a4)
	bpl.b loc_020038
	neg.w d0

loc_020038:
	add.w ($20e,a4),d0
	move.w d0,(0,a1)
	move.w ($37a,a4),d0
	add.w ($212,a4),d0
	move.w d0,(4,a1)
	clr.w (8,a1)
	clr.w ($a,a1)
	move.w #-$3100,($c,a1)
	move.b (0,a4),d0
	add.b d0,($c,a1)
	clr.w ($e,a1)
	lea loc_200000,a0
	adda.l #$478c,a0
	move.l (a0),($10,a1)
	movem.l d0/a0/a4,-(a7)
	move.b #0,d0
	movea.l a1,a4
	movea.l #loc_004784,a0
	jsr loc_0040c2
	movem.l (a7)+,d0/a0/a4
	lea ($17e,a4),a1
	move.w ($37c,a4),d0
	tst.b ($208,a4)
	bpl.b loc_0200a0
	neg.w d0

loc_0200a0:
	add.w ($20e,a4),d0
	move.w d0,(0,a1)
	move.w ($37e,a4),d0
	add.w ($212,a4),d0
	move.w d0,(4,a1)
	clr.w (8,a1)
	clr.w ($a,a1)
	move.w #-$3300,($c,a1)
	move.b (0,a4),d0
	add.b d0,($c,a1)
	clr.w ($e,a1)
	lea loc_200000,a0
	adda.l #$4780,a0
	move.l (a0),($10,a1)
	movem.l d0/a0/a4,-(a7)
	move.b #0,d0
	movea.l a1,a4
	movea.l #loc_004784,a0
	jsr loc_0040c2
	movem.l (a7)+,d0/a0/a4
	movem.l (a7)+,d0-d7/a0-a4
	rts

;--------------------------
loc_0200fe:;208fe
	movem.l d0-d7/a0-a4,-(a7)
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	bsr.w loc_02011c
	exg a3,a4
	bsr.w loc_02011c
	exg a3,a4
	movem.l (a7)+,d0-d7/a0-a4
	rts

loc_02011c:
	tst.b (1,a4)
	bmi.w loc_020134
	jsr loc_02d2d0
	movea.l ($1c6,a4),a0
	jsr (a0)
	bra.w loc_02014c

loc_020134:
	move.w #$10,d0
	lea ($3c0,a4),a0
	bsr.w loc_01f25c
	jsr loc_02d7a2
	movea.l ($1c2,a4),a0
	jsr (a0)

loc_02014c:
	rts

;--------------------------
loc_02014e:
	tst.b (-$c59,a5)
	sne d1
	tst.b (-$6f9,a5)
	sne d2
	move.b d1,d3
	eor.b d2,d3
	beq.w loc_020170
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	tst.b d1
	bne.b loc_020170
	exg a3,a4

loc_020170:
	rts

;--------------------------
loc_020172:
	bsr.w loc_020180
	exg a3,a4
	bsr.w loc_020180
	exg a3,a4
	rts

loc_020180:
	btst #3,($2e1,a4)
	bne.w loc_020194
	movea.l ($1ce,a4),a0
	jsr (a0)
	bsr.w loc_022690

loc_020194:
	rts

;--------------------------
loc_020196:
	clr.l (-$3ac,a5)
	clr.w (-$3a8,a5)
	clr.l (-$3a6,a5)
	clr.w (-$3a2,a5)
	movem.l d0-d1/a0,-(a7)
	move.w #2,-(a7)
	move.w #8,-(a7)
	move.w #6,-(a7)
	move.w #3,-(a7)
	jsr loc_005e50
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+,d0-d1/a0
	movem.l d0-d1/a0,-(a7)
	move.w #2,-(a7)
	move.w #8,-(a7)
	move.w #6,-(a7)
	move.w #$1d,-(a7)
	jsr loc_005e50
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+,d0-d1/a0
	rts

;--------------------------
loc_0201f8:
	bsr.w loc_020206
	exg a3,a4
	bsr.w loc_020206
	exg a3,a4
	rts

loc_020206:
	tst.b (-$3e4,a5)
	bne.w loc_0203ce
	tst.b (0,a4)
	bmi.b loc_02021e
	lea (-$3ac,a5),a0
	move.w #$1d,d3
	bra.b loc_020226

loc_02021e:
	lea (-$3a6,a5),a0
	move.w #3,d3

loc_020226:
	move.w ($286,a4),d0
	beq.w loc_02024e
	cmp.w (2,a0),d0
	beq.w loc_02024e
	cmpi.w #1,d0
	ble.b loc_020248
	move.w d0,(2,a0)
	move.w #$3c,(0,a0)
	bra.b loc_02024e

loc_020248:
	bset #7,(2,a0)

loc_02024e:
	tst.w (0,a0)
	beq.w loc_02032e
	subq.w #1,(0,a0)
	bne.w loc_020360
	movem.l d0-d1/a0-a1,-(a7)
	tst.w (-$340,a5)
	bne.w loc_02032a
	tst.w (-$cb2,a5)
	bmi.w loc_02032a
	tst.w (-$752,a5)
	bmi.w loc_02032a
	tst.b ($24b,a3)
	bne.w loc_02032a
	move.w ($286,a4),d0
	cmpi.w #3,d0
	bge.w loc_020292
	bra.w loc_02032a

loc_020292:
	move.w #4,(-$334,a5)
	lea loc_02381a,a0

loc_02029e:
	movea.l a0,a1
	move.w (-$334,a5),d1
	lsl.w #3,d1
	adda.w d1,a1
	cmp.w (a1),d0
	bge.w loc_0202b4
	subq.w #1,(-$334,a5)
	bra.b loc_02029e

loc_0202b4:
	movem.l d0-d1/a0,-(a7)
	move.w #2,-(a7)
	move.w #8,-(a7)
	move.w #6,-(a7)
	move.w #3,-(a7)
	jsr loc_005e50
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+,d0-d1/a0
	movem.l d0-d1/a0,-(a7)
	move.w #2,-(a7)
	move.w #8,-(a7)
	move.w #6,-(a7)
	move.w #$1d,-(a7)
	jsr loc_005e50
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+,d0-d1/a0
	move.w (2,a1),(-$34c,a5)
	move.w (4,a1),(-$348,a5)
	move.w (6,a1),(-$33e,a5)
	move.w #1,(-$340,a5)
	move.w (0,a4),(-$332,a5)
	clr.w (-$34a,a5)
	clr.w (-$346,a5)

loc_02032a:
	movem.l (a7)+,d0-d1/a0-a1

loc_02032e:
	tst.w (-$340,a5)
	bne.w loc_0203ce
	movem.l d0-d1/a0,-(a7)
	move.w #2,-(a7)
	move.w #8,-(a7)
	move.w #6,-(a7)
	move.w d3,-(a7)
	jsr loc_005e50
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+,d0-d1/a0
	bra.w loc_0203ce

loc_020360:
	move.w (2,a0),d0
	andi.w #$7fff,d0
	cmpi.w #$63,d0
	bls.b loc_020372
	move.w #$63,d0

loc_020372:
	ext.l d0
	movem.l d0-d4/a0-a1,-(a7)
	move.w #-$1800,-(a7)
	move.l #loc_02392a,-(a7)
	move.w #2,-(a7)
	move.l d0,-(a7)
	move.w #6,-(a7)
	move.w d3,-(a7)
	jsr loc_005e50
	jsr loc_0060a2
	lea ($10,a7),a7
	movem.l (a7)+,d0-d4/a0-a1
	addq.w #4,d3
	movem.l d0-d3/a0-a1,-(a7)
	move.w #-$2000,-(a7)
	move.l #loc_0f00c4,-(a7)
	move.w #6,-(a7)
	move.w d3,-(a7)
	jsr loc_005e50
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1
	subq.w #4,d3

loc_0203ce:
	rts

;--------------------------
loc_0203d0:
	clr.w (-$34c,a5)
	clr.w (-$34a,a5)
	clr.w (-$348,a5)
	clr.w (-$346,a5)
	clr.w (-$344,a5)
	clr.w (-$342,a5)
	clr.w (-$340,a5)
	move.w #$19,(-$33e,a5)
	clr.l (-$33c,a5)
	clr.w (-$338,a5)
	clr.w (-$32c,a5)
	move.w #5,(-$336,a5)
	clr.w (-$330,a5)
	clr.w (-$32e,a5)
	movem.l d0-d1/a0,-(a7)
	move.w #4,-(a7)
	move.w #$e,-(a7)
	move.w #6,-(a7)
	move.w #3,-(a7)
	jsr loc_005e50
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+,d0-d1/a0
	movem.l d0-d1/a0,-(a7)
	move.w #4,-(a7)
	move.w #$e,-(a7)
	move.w #6,-(a7)
	move.w #$17,-(a7)
	jsr loc_005e50
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+, d0-d1/a0
	rts

;--------------------------
loc_02045e:
	movem.l d0-d4/a1-a3,-(a7)
	tst.w (-$340,a5)
	beq.w loc_020612
	tst.w (-$33e,a5)
	beq.w loc_02059e
	subq.w #1,(-$33e,a5)
	lea loc_0237de,a2
	move.w (-$34c,a5),d0
	lsl.w #2,d0
	adda.w d0,a2
	move.l (a2),(-$33c,a5)
	lea loc_0237f2,a3
	tst.w (-$338,a5)
	beq.w loc_02049a
	bra.w loc_0204ec

loc_02049a:
	tst.w (-$336,a5)
	beq.w loc_0204c6
	move.w (-$348,a5),d1
	addq.w #1,d1
	lsl.w #2,d1
	adda.w d1,a3
	movea.l (a3),a3
	move.w #4,-(a7)
	move.l a3,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	subq.w #1,(-$336,a5)
	bra.w loc_0204ec

loc_0204c6:
	move.w #1,(-$338,a5)
	move.w #1,(-$338,a5)
	move.w (-$348,a5),d1
	lsl.w #2,d1
	adda.w d1,a3
	movea.l (a3),a3
	move.w #4,-(a7)
	move.l a3,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

loc_0204ec:
	tst.b (-$332,a5)
	bmi.w loc_0204f8
	bra.w loc_02051c

loc_0204f8:
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$4000,-(a7)
	move.l (-$33c,a5),-(a7)
	clr.w -(a7)
	move.w #$7068,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1
	bra.w loc_020612

loc_02051c:
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$4000,-(a7)
	move.l (-$33c,a5),-(a7)
	clr.w -(a7)
	move.w #$72e8,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1
	bra.w loc_020612

loc_020540:
	movem.l d0-d1/a0,-(a7)
	move.w #4,-(a7)
	move.w #$e,-(a7)
	move.w #6,-(a7)
	move.w #3,-(a7)
	jsr loc_005e50
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+,d0-d1/a0

	movem.l d0-d1/a0,-(a7)
	move.w #4,-(a7)
	move.w #$e,-(a7)
	move.w #6,-(a7)
	move.w #$17,-(a7)
	jsr loc_005e50
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+,d0-d1/a0

	move.w #0,(-$330,a5)
	addq.w #1,(-$32e,a5)
	bra.w loc_020612

loc_02059e:
	movem.l d0-d1/a0,-(a7)
	move.w #4,-(a7)
	move.w #$e,-(a7)
	move.w #6,-(a7)
	move.w #3,-(a7)
	jsr loc_005e50
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+,d0-d1/a0

	movem.l d0-d1/a0,-(a7)
	move.w #4,-(a7)
	move.w #$e,-(a7)
	move.w #6,-(a7)
	move.w #$17,-(a7)
	jsr loc_005e50
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+,d0-d1/a0

	move.w #0,(-$340,a5)
	move.w #0,(-$338,a5)
	move.w #0,(-$32c,a5)
	move.w #5,(-$336,a5)
	move.w #0,(-$32e,a5)
	move.w #0,(-$330,a5)

loc_020612:
	movem.l (a7)+,d0-d4/a1-a3
	rts

;--------------------------
loc_020618:
	bsr.w loc_020686
	exg a3,a4
	bsr.w loc_020686
	exg a3,a4
	andi.b #$c,($246,a4)
	andi.b #$c,($246,a3)
	bsr.w loc_01fbea
	exg a3,a4
	bsr.w loc_01fbea
	exg a3,a4
	bsr.w loc_0206ec
	andi.b #3,($246,a4)
	andi.b #3,($246,a3)
	bsr.w loc_01fdcc
	exg a3,a4
	bsr.w loc_01fdcc
	exg a3,a4
	bsr.w loc_02090c
	exg a3,a4
	bsr.w loc_02090c
	exg a3,a4
	sf ($1b1,a4)
	sf ($1b1,a3)
	tst.b ($24b,a4)
	smi d0
	move.b d0,($24b,a4)
	tst.b ($24b,a3)
	smi d0
	move.b d0,($24b,a3)
	bsr.w loc_0232b4
	rts

;==========================
loc_020686:
	clr.b ($277,a4)
	clr.b ($28f,a4)
	move.l #$80000000,($2a2,a4)
	move.l #$80000000,($2a6,a4)
	clr.b ($2b2,a4)
	clr.b ($2b3,a4)
	btst #3,($2e1,a4)
	bne.w loc_0206ea
	clr.b ($271,a4)
	clr.b ($272,a4)
	tst.b ($24b,a3)
	beq.w loc_0206d2
	jsr loc_029dd4
	subq.w #1,($2a0,a4)
	bpl.w loc_0206d2
	clr.w ($2a0,a4)

loc_0206d2:
	tst.b ($249,a4)
	bne.w loc_0206ea
	clr.w ($286,a4)
	clr.w ($288,a4)
	clr.w ($28a,a4)

;extra13
;	tst.b extraflag
;	beq clr
	btst #1,($246,a4)
	beq.b loc_0206ea

	clr.w ($28c,a4)

loc_0206ea:
	rts

;==========================
loc_0206ec:
	move.b ($2e1,a4),d0
	and.b ($2e1,a3),d0
	btst #3,d0
	bne.w loc_020872
	move.b ($24b,a4),d0
	or.b ($24b,a3),d0
	bne.w loc_020872
	move.w ($238,a4),d0
	or.w ($23a,a4),d0
	beq.w loc_020872
	move.w ($238,a3),d0
	or.w ($23a,a3),d0
	beq.w loc_020872
	move.l ($212,a3),d0
	sub.l ($212,a4),d0
	swap d0
	move.w d0,d1
	sub.w ($238,a4),d0
	add.w ($23a,a3),d0
	ble.w loc_020872
	add.w ($238,a3),d1
	sub.w ($23a,a4),d1
	bge.w loc_020872
	moveq #0,d0
	moveq #0,d1
	move.w ($23c,a4),d0
	move.w ($23e,a4),d1
	tst.b ($208,a4)
	bpl.w loc_02075e
	neg.w d0
	neg.w d1
	exg d0,d1

loc_02075e:
	swap d0
	swap d1
	add.l ($20e,a4),d0
	add.l ($20e,a4),d1
	moveq #0,d2
	moveq #0,d3
	move.w ($23c,a3),d2
	move.w ($23e,a3),d3
	tst.b ($208,a3)
	bpl.w loc_020784
	neg.w d2
	neg.w d3
	exg d2,d3

loc_020784:
	swap d2
	swap d3
	add.l ($20e,a3),d2
	add.l ($20e,a3),d3
	sub.l d2,d1
	ble.w loc_020872
	sub.l d0,d3
	ble.w loc_020872
	move.b ($246,a4),d0
	and.b ($246,a3),d0
	btst #1,d0
	beq.w loc_0207cc
	andi.b #$c,d0
	bne.w loc_020808
	move.b ($209,a4),d0
	move.b ($209,a3),d2
	eor.b d0,d2
	bpl.w loc_0207cc
	tst.b d0
	bpl.w loc_02080e
	bpl.w loc_020824

loc_0207cc:
	btst #1,($246,a4)
	beq.w loc_0207ea
	btst #2,($246,a4)
	bne.w loc_02083a
	btst #3,($246,a4)
	bne.w loc_020848

loc_0207ea:
	btst #1,($246,a3)
	beq.w loc_020808
	btst #3,($246,a3)
	bne.w loc_020856
	btst #2,($246,a3)
	bne.w loc_020864

loc_020808:
	cmp.l d3,d1
	bgt.w loc_020824

loc_02080e:
	asr.l #2,d1
	sub.l d1,($20e,a4)
	sub.l d1,($30c,a4)
	add.l d1,($20e,a3)
	add.l d1,($30c,a3)
	bra.w loc_020872

loc_020824:
	asr.l #2,d3
	add.l d3,($20e,a4)
	add.l d3,($30c,a4)
	sub.l d3,($20e,a3)
	sub.l d3,($30c,a3)
	bra.w loc_020872

loc_02083a:
	asr.l #1,d1
	add.l d1,($20e,a3)
	add.l d1,($30c,a3)
	bra.w loc_020872

loc_020848:
	asr.l #1,d3
	sub.l d3,($20e,a3)
	sub.l d3,($30c,a3)
	bra.w loc_020872

loc_020856:
	asr.l #1,d1
	sub.l d1,($20e,a4)
	sub.l d1,($30c,a4)
	bra.w loc_020872

loc_020864:
	asr.l #1,d3
	add.l d3,($20e,a4)
	add.l d3,($30c,a4)
	bra.w loc_020872

loc_020872
	rts

;--------------------------
loc_020874:
	tst.b ($24b,a3)
	bne.w loc_02090a
	move.l (-$45de,a5),d3
	sub.l ($212,a4),d3
	cmpi.l #$100000,d3
	bge.w loc_02090a
	sf d1
	move.b ($249,a4),d0
	andi.b #$fc,d0
	bne.b loc_0208b6
	move.b ($249,a3),d0
	andi.b #$fc,d0
	beq.w loc_02090a
	tst.b ($1b1,a3)
	beq.w loc_02090a
	move.l ($1ac,a3),d0
	neg.l d0
	bra.b loc_0208c6

loc_0208b6:
	tst.w ($2bc,a4)
	bne.w loc_02090a
	move.l ($20e,a4),d0
	sub.l ($30c,a4),d0

loc_0208c6:
	tst.b ($208,a4)
	bpl.b loc_0208ce
	neg.l d0

loc_0208ce:
	tst.l d0
	bpl.b loc_0208d6
	st d1
	neg.l d0

loc_0208d6:
	cmpi.l #$10000,d3
	blt.b loc_0208e0
	asr.l #2,d0

loc_0208e0:
	add.l d0,($1b2,a4)
	cmpi.l #$140000,($1b2,a4)
	blt.b loc_02090a
	subi.l #$140000,($1b2,a4)
	cmpi.l #$140000,($1b2,a4)
	blt.b loc_020904
	clr.l ($1b2,a4)

loc_020904:
	jsr loc_02f15a

loc_02090a:
	rts

;--------------------------
loc_02090c:
	btst #3,($2e1,a4)
	bne.w loc_020994
	move.l ($324,a4),d5
	move.l ($31c,a4),d4
	move.l d4,($324,a4)
	move.l ($314,a4),d3
	move.l d3,($31c,a4)
	move.l ($20e,a4),d2
	sub.l ($30c,a4),d2
	move.l d2,($314,a4)
	bsr.w loc_020996
	move.l d0,($32c,a4)
	move.l d1,($334,a4)
	move.l ($328,a4),d5
	move.l ($320,a4),d4
	move.l d4,($328,a4)
	move.l ($318,a4),d3
	move.l d3,($320,a4)
	move.l ($212,a4),d2
	sub.l ($310,a4),d2
	move.l d2,($318,a4)
	btst #1,($246,a4)
	beq.w loc_020978
	clr.l ($330,a4)
	clr.l ($338,a4)
	bra.w loc_020984

loc_020978:
	bsr.w loc_020996
	move.l d0,($330,a4)
	move.l d1,($338,a4)

loc_020984:
	move.l ($20e,a4),($30c,a4)
	move.l ($212,a4),($310,a4)
	bra.w loc_020994

loc_020994:
	rts

loc_020996:
	btst #6,($249,a4)
	beq.w loc_0209a8
	moveq #0,d0
	moveq #0,d1
	bra.w loc_020a10

loc_0209a8:
	cmp.l d3,d2
	bne.b loc_0209b4
	move.l d2,d0
	moveq #0,d1
	bra.w loc_020a10

loc_0209b4:
	move.l d2,d1
	sub.l d3,d1
	move.l d3,d0
	sub.l d4,d0
	cmp.l d0,d1
	bne.b loc_0209c6
	move.l d2,d0
	bra.w loc_020a10

loc_0209c6:
	move.l d4,d0
	sub.l d5,d0
	cmp.l d0,d1
	bne.b loc_0209d4
	move.l d2,d0
	bra.w loc_020a10

loc_0209d4:
	move.l d3,d1
	sub.l d4,d1
	cmp.l d0,d1
	bne.b loc_0209e2
	move.l d2,d0
	bra.w loc_020a10

loc_0209e2:
	clr.w d0
	cmp.l d3,d2
	bne.b loc_0209ea
	addq.w #1,d0

loc_0209ea:
	cmp.l d4,d2
	bne.b loc_0209f0
	addq.w #1,d0

loc_0209f0:
	cmp.l d5,d2
	bne.b loc_0209f6
	addq.w #1,d0

loc_0209f6:
	cmpi.w #2,d0
	blt.b loc_020a04
	move.l d2,d0
	moveq #0,d1
	bra.w loc_020a10

loc_020a04:
	move.l d2,d0
	add.l d3,d0
	add.l d4,d0
	add.l d5,d0
	asr.l #2,d0
	moveq #0,d1

loc_020a10:
	rts

;--------------------------
loc_020a12:
	bsr.w loc_020a24
	exg a3,a4
	bsr.w loc_020a24
	exg a3,a4
	addq.w #1,(-$7fa2,a5)
	rts

loc_020a24:
	cmpi.w #8,($14,a4)
	bne.w loc_020a64
	move.w (-$7fa2,a5),d0
	btst #0,d0
	bne.w loc_020a64
	add.w d0,d0
	andi.w #$1c,d0
	lea loc_023d04(pc),a0
	adda.w d0,a0
	tst.b ($0,a4)
	bmi.b loc_020a52
	move.w #$80,d0
	bra.b loc_020a56

loc_020a52:
	move.w #$a0,d0

loc_020a56:
	move.w d0,-(a7)
	move.l (a0),-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

loc_020a64:
	move.b (0,a4),d0
	tst.b (-$3e1,a5)
	smi d1
	eor.b d0,d1
	smi d0
	neg.b d0
	add.b d0,d0
	add.b ($2e0,a4),d0
	move.b d0,d0
	movea.l #loc_020bba,a0
	jsr loc_0040c2
	tst.b (-$42c2,a5)
	bne.b loc_020aa4
	tst.b ($24b,a3)
	bmi.b loc_020aa4
	move.b #-$70,d0
	movea.l #loc_020c94,a0
	jsr loc_0040c2

loc_020aa4:
	btst #2,(-$7f84,a5)
	beq.w loc_020b3a

;Debug Show Frame ID / 0400
	movem.l d0-d7/a0-a4,-(a7)
	move.w ($2d8,a4),d4
	move.w (-$7fa2,a5),d2
	andi.w #3,d2
	addi.w #$c6,d2
	lsl.w #8,d2
	move.w ($20e,a4),d0
	move.w ($212,a4),d1
	tst.b ($208,a4)
	bmi.b loc_020ad8
	addi.w #$28,d0
	bra.b loc_020adc

loc_020ad8:
	subi.w #$28,d0

loc_020adc:
	subi.w #$20,d1
	lea loc_020b48(pc),a0
	lea loc_020b5c(pc),a1
	move.w #0,d5
	move.w loc_020b46(pc),d7

loc_020af0:
	move.w d4,d3
	sub.w (a0)+,d3
	cmp.w (a1)+,d3
	bcs.w loc_020b04
	addq.w #1,d5
	dbra d7,loc_020af0
	move.w #$1fe,d3

loc_020b04:
	cmp.w ($14,a4),d5
	beq.b loc_020b0e
	move.w #$c100,d2

loc_020b0e:
	movem.l d0-d3/a4,-(a7)
	jsr loc_005378
	movem.l (a7)+,d0-d3/a4
	addi.w #9,d1
	move.w ($2ea,a4),d3
	andi.w #3,d3
	add.w d3,d3
	move.w loc_020b3e(pc,d3.w),d3
	beq.b loc_020b36
	jsr loc_005378

loc_020b36:
	movem.l (a7)+,d0-d7/a0-a4

loc_020b3a:
	bra.w loc_020b70

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_020b3e:
	dc.w $0000,$01f5,$01f6,$01f7

loc_020b46:
	dc.w $0009

loc_020b48:
	dc.w $0001,$01d1,$0366,$04cc,$06d7,$08c0,$0a79,$0c5a
	dc.w $0e0e,$1192

loc_020b5c:
	dc.w $01d0,$0195,$0166,$020b,$01e9,$01b9,$01e1,$01b4
	dc.w $01a5,$00f8

;==========================
loc_020b70:
	rts

;--------------------------
loc_020b72:
	bsr.w loc_020b84
	exg a3,a4
	bsr.w loc_020b84
	exg a3,a4
	addq.w #1,(-$7fa2,a5)
	rts

loc_020b84:
	tst.b (-$3e1,a5)
	smi d1
	tst.b (0,a4)
	bmi.b loc_020b9c
	btst #0,(-$7fa1,a5)
	bne.w loc_020bb6
	bra.b loc_020ba6

loc_020b9c:
	btst #0,(-$7fa1,a5)
	beq.w loc_020bb6

loc_020ba6:
	move.b #$90,d0
	movea.l #loc_020c30,a0
	jsr loc_0040c2

loc_020bb6:
	bra.w loc_020a24

;==========================
loc_020bba:
	move.w ($20e,a4),d0
	move.w ($212,a4),d1
	movea.l ($2e2,a4),a0
	move.w ($2e6,a4),d4
	move.w ($2e8,a4),d5
	tst.b ($2b9,a4)
	beq.b loc_020bee
	move.b ($25f,a4),d7
	andi.b #6,d7
	ext.w d7
	lsr.w #1,d7
	addq.w #1,d7
	btst #0,(-$7fa1,a5)
	beq.b loc_020bec
	neg.w d7

loc_020bec:
	add.w d7,d4

loc_020bee:
	move.w ($2ea,a4),d2
	move.w ($2ec,a4),d3
	move.w ($2ee,a4),d6
	eor.b d6,d2
	clr.b d6
	add.w d6,d2
	btst #0,d2
	beq.b loc_020c08
	neg.w d4

loc_020c08:
	btst #1,d2
	beq.b loc_020c10
	neg.w d5

loc_020c10:
	tst.b ($208,a4)
	bpl.b loc_020c1a
	eori.w #1,d2

loc_020c1a:
	tst.b ($249,a4)
	beq.b loc_020c28
	jsr loc_004150
	bra.b loc_020c2e

loc_020c28:
	jsr loc_004158

loc_020c2e:
	rts

;==========================
loc_020c30:
	move.w ($20e,a4),d0
	move.w ($212,a4),d1
	addq.w #6,d0
	addq.w #2,d1
	movea.l ($2e2,a4),a0
	move.w ($2e6,a4),d4
	move.w ($2e8,a4),d5
	move.w ($2ec,a4),d3
	clr.w d6
	move.b d3,d6
	neg.w d6
	addi.w #$100,d6
	move.w d6,d7
	lsr.w #4,d7
	sub.w d7,d6
	neg.w d6
	addi.w #$100,d6
	move.b d6,d3
	move.w #$5f00,d2
	move.b ($2eb,a4),d2
	move.w ($2ee,a4),d6
	eor.b d6,d2
	btst #0,d2
	beq.b loc_020c7a
	neg.w d4

loc_020c7a:
	btst #1,d2
	beq.b loc_020c82
	neg.w d5

loc_020c82:
	tst.b ($208,a4)
	bpl.b loc_020c8c
	eori.w #1,d2

loc_020c8c:
	jsr loc_004158
	rts

;==========================
loc_020c94:
	tst.b ($247,a4)
	bne.b loc_020cb6
	move.w ($212,a4),d0
	addi.w #$80, d0
	cmp.w (-$45de,a5),d0
	bge.b loc_020cac
	bra.w loc_020d7e

loc_020cac:
	btst #0,(-$7fa1,a5)
	beq.w loc_020d7e

loc_020cb6:
	bsr.w loc_020d80
	ble.w loc_020cc2
	bra.w loc_020d26

loc_020cc2:
	move.w ($22e,a4),d0
	or.w ($230,a4),d0
	beq.w loc_020cee
	move.w ($230,a4),d5
	add.w ($22e,a4),d5
	asr.w #1,d5
	move.w ($22e,a4),d0
	neg.w d0
	add.w ($230,a4),d0
	ble.w loc_020d7e
	addi.w #$10,d0
	bra.w loc_020d26

loc_020cee:
	move.w ($23e,a4),d5
	add.w ($23c,a4),d5
	asr.w #1,d5
	move.w ($23c,a4),d0
	neg.w d0
	add.w ($23e,a4),d0
	ble.w loc_020d7e
	addi.w #$10,d0
	btst #5,($249,a4)
	beq.w loc_020d26
	addi.w #$10,d0
	btst #1,($248,a4)
	beq.w loc_020d26
	addi.w #$10,d0

loc_020d26:
	move.w ($22a,a4),d1
	asr.w #1,d1
	sub.w d1,d0
	ble.w loc_020d7e
	cmpi.w #$80,d0
	ble.b loc_020d3c
	move.w #$80,d0

loc_020d3c:
	subq.w #1,d0
	move.w d0,d3
	andi.w #$7e,d3
	lea loc_0ef5ca,a0
	move.w (a0,d3.w),d3
	andi.w #$7c,d0
	lea loc_0ef64a,a0
	movea.l (a0,d0.w),a0
	move.w d5,d0
	tst.b ($208,a4)
	bpl.b loc_020d66
	neg.w d0

loc_020d66:
	add.w ($20e,a4),d0
	move.w (-$45de,a5),d1
	subq.w #4,d1
	clr.w d4
	clr.w d5
	move.w #$5f00,d2
	jsr loc_004150

loc_020d7e:
	rts

loc_020d80:
	clr.w d0
	clr.w d5
	move.l ($2dc,a4),d1
	beq.w loc_020dba
	movea.l d1,a0
	clr.w d1
	clr.w d5

loc_020d92:
	tst.b (a0)+
	beq.b loc_020daa
	addq.w #2,a0
	move.b (a0)+,d0
	cmp.b d1,d0
	bge.b loc_020da0
	move.b d0,d1

loc_020da0:
	move.b (a0)+,d0
	cmp.b d5,d0
	ble.b loc_020da8
	move.b d0,d5

loc_020da8:
	bra.b loc_020d92

loc_020daa:
	ext.w d5
	add.w d5,d5
	ext.w d1
	add.w d1,d1
	move.w d5,d0
	sub.w d1,d0
	add.w d1,d5
	asr.w #1,d5

loc_020dba:
	tst.w d0
	rts

;--------------------------
loc_020dbe:
	move.b #$55,d4
	tst.w (-$bee,a5)
	bne.b loc_020dcc
	clr.b (-$bf0,a5)

loc_020dcc:
	move.b (-$bf0,a5),d1
	tst.w (-$68e,a5)
	bne.b loc_020dda
	clr.b (-$690,a5)

loc_020dda:
	move.b (-$690,a5),d2
	tst.b (-$3e0,a5)
	bne.w loc_020eda
	tst.b (-$3dd,a5)
	bne.w loc_020e84

loc_020dee:
	btst #6,d1
	beq.w loc_020dfa
	bset #1,d2

loc_020dfa:
	btst #7,d1
	beq.w loc_020e06
	bset #3,d2

loc_020e06:
	btst #6,d2
	beq.w loc_020e12
	bset #1,d1

loc_020e12:
	btst #7,d2
	beq.w loc_020e1e
	bset #3,d1

loc_020e1e:
	btst #0,d1
	beq.w loc_020e2a
	bset #1,d4

loc_020e2a:
	btst #0,d2
	beq.w loc_020e36
	bset #3,d4

loc_020e36:
	btst #1,d1
	beq.w loc_020e42
	bclr #0,d4

loc_020e42:
	btst #1,d2
	beq.w loc_020e4e
	bclr #2,d4

loc_020e4e:
	btst #2,d1
	beq.w loc_020e5a
	bset #5,d4

loc_020e5a:
	btst #2,d2
	beq.w loc_020e66
	bset #7,d4

loc_020e66:
	btst #3,d1
	beq.w loc_020e72
	bclr #4,d4

loc_020e72:
	btst #3,d2
	beq.w loc_020e7e
	bclr #6,d4

loc_020e7e:
	move.b d4,(-$45e3,a5)
	rts

loc_020e84:
	bsr.w loc_020f34
	subq.w #1,d0
	bmi.w loc_020f4c
	subq.w #1,d0
	bmi.w loc_020ebc
	subq.w #1,d0
	bmi.w loc_020e9e
	bra.w loc_020f4c

loc_020e9e:
	ori.b #$30,(-$bf0,a5)
	ori.b #$30,(-$690,a5)
	tst.b (-$6f9,a5)
	bne.w loc_020dee
	clr.w d2
	ori.b #1,d1
	bra.w loc_020dee

loc_020ebc:
	ori.b #$30,(-$bf0,a5)
	ori.b #$30,(-$690,a5)
	tst.b (-$c59,a5)
	bne.w loc_020dee
	clr.w d1
	ori.b #1,d2
	bra.w loc_020dee

loc_020eda:
	bsr.w loc_020f34
	subq.w #1,d0
	bmi.w loc_020f4c
	subq.w #1,d0
	bmi.w loc_020ef4
	subq.w #1,d0
	bmi.w loc_020f14
	bra.w loc_020f4c

loc_020ef4:
	ori.b #$30,(-$bf0,a5)
	ori.b #$30,(-$690,a5)
	ori.w #$a,d2
	tst.b d1
	bne.w loc_020dee
	clr.w d2
	ori.b #$41,d1
	bra.w loc_020dee

loc_020f14:
	ori.b #$30,(-$bf0,a5)
	ori.b #$30,(-$690,a5)
	ori.w #$a,d1
	tst.b d2
	bne.w loc_020dee
	clr.w d1
	ori.b #$41,d2
	bra.w loc_020dee

loc_020f34
	moveq #0,d0
	tst.w (-$cb2,a5)
	bpl.w loc_020f40
	addq.w #2,d0

loc_020f40:
	tst.w (-$752,a5)
	bpl.w loc_020f4a
	addq.w #1,d0

loc_020f4a:
	rts

loc_020f4c:
	bra.w loc_020e7e

;--------------------------
loc_020f50:
	sf (-$38a,a5)
	move.w #$78,(-$cb0,a5)
	move.w #$78,(-$750,a5)
	move.w #$78,(-$cae,a5)
	move.w #$78,(-$74e,a5)
	move.w (-$ca2,a5),d1
	asr.w #3,d1
	move.w d1,(-$c9e,a5)
	move.w (-$742,a5),d1
	asr.w #3,d1
	move.w d1,(-$73e,a5)
	sf (-$38e,a5)
	sf (-$38d,a5)
	sf (-$38c,a5)
	sf (-$38b,a5)
	clr.w (-$3a0,a5)
	clr.w (-$39e,a5)
	sf (-$390,a5)
	sf (-$38f,a5)
	bsr.w loc_0218e2
	bsr.w loc_0218f4
	move.w #$63,(-$3da,a5)
	move.w (-$7f90,a5),(-$3d8,a5)
	subq.w #1,(-$3d8,a5)
	clr.w (-$3d4,a5)
	rts

;==========================
loc_020fbe:
	st (-$38a,a5)
	tst.b (-$3e4,a5)
	bmi.w loc_0211a2

	movem.l d0-d3/a0-a1,-(a7)
	move.w #$6000,-(a7)
	move.l #loc_0efccc,-(a7)
	clr.w -(a7)
	move.w #$7203,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1

	movem.l d0-d3/a0-a1,-(a7)
	move.w #$6000,-(a7)
	move.l #loc_0efce0,-(a7)
	clr.w -(a7)
	move.w #$7224,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1

	movem.l d0-d3/a0-a1,-(a7)
	move.w #$8000,-(a7)
	move.l #loc_0efd60,-(a7)
	clr.w -(a7)
	move.w #$7044,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1

	movem.l d0-d3/a0-a1,-(a7)
	move.w #$9000,-(a7)
	move.l #loc_0efd82,-(a7)
	clr.w -(a7)
	move.w #$72e4,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1

	movem.l d0-d3/a0-a1,-(a7)
	move.w #$8000,-(a7)
	move.l #loc_0efd2c,-(a7)
	clr.w -(a7)
	move.w #$7024,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1

	movem.l d0-d3/a0-a1,-(a7)
	move.w #$9000,-(a7)
	move.l #loc_0efd34,-(a7)
	clr.w -(a7)
	move.w #$74c4,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+, d0-d3/a0-a1

	movem.l d0-d3/a0-a1,-(a7)
	move.w #$8000,-(a7)
	move.l #loc_0efd3c,-(a7)
	clr.w -(a7)
	move.w #$7145,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1

	movem.l d0-d3/a0-a1,-(a7)
	move.w #$9000,-(a7)
	move.l #loc_0efd4e,-(a7)
	clr.w -(a7)
	move.w #$72e5,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1

;Player 1 Name Tag Render
	lea loc_02388a(pc),a0
	move.w (p1ida5,a5),d0
	tst.b (-$ea3,a5)
	bmi.b loc_0210f2
	cmp.w (p2ida5,a5),d0
	bne.b loc_0210f2
	lea loc_0238ca(pc),a0

loc_0210f2:
	lsl.w #2,d0
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$c000,-(a7)
	move.l (a0,d0.w),-(a7)
	clr.w -(a7)
	move.w #$7045,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1

;Player 2 Name Tag Render
	lea loc_02388a(pc),a0
	move.w (p2ida5,a5),d0
	tst.b (-$943,a5)
	bmi.b loc_02112c
	cmp.w (p1ida5,a5),d0
	bne.b loc_02112c
	lea loc_0238ca(pc),a0

loc_02112c:
	lsl.w #2,d0
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$c000,-(a7)
	move.l (a0,d0.w),-(a7)
	clr.w -(a7)
	move.w #$73c5,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1

	sf (-$39a,a5)
	bsr.w loc_021988

;P1 Meter Bottom
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$a000,-(a7)
	move.l #loc_0f0260,-(a7)
	clr.w -(a7)
	move.w #$70bc,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1

;p2 meter bottom
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$b000,-(a7)
	move.l #loc_0f027e,-(a7)
	clr.w -(a7)
	move.w #$72dc,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1
	st (-$390,a5)
	st (-$38f,a5)

loc_0211a2:
	rts

;--------------------------
;Render Hud
loc_0211a4:
	tst.b (-$38a,a5)
	bmi.w loc_0211c6
	bgt.w loc_0211c2
	tst.b (-$3dd,a5)
	bne.w loc_0211c2
	tst.b (-$3de,a5)
	beq.w loc_0211c2
	rts

loc_0211c2:
	bsr.w loc_020fbe;Round Start Hud Render

loc_0211c6:
	tst.b (-$3e4,a5)
	bmi.w loc_0215ae
	bsr.w loc_0215b0;P1 Health
	bsr.w loc_021682;P1 Health Drain
	bsr.w loc_0215c2;P2 Health
	bsr.w loc_0216a4;P2 Health Drain
	bsr.w loc_02184a;It's Free Real Estate
	bra.w loc_0211e6

loc_0211e6:
	btst #4,(-$7f83,a5)
	beq.w loc_021210
	move.w #2,(-$ca0,a5)
	move.w #2,(-$740,a5)
	move.w #$300,(-$ca2,a5)
	move.w #$300,(-$742,a5)
	st (-$390,a5)
	st (-$38f,a5)

loc_021210:
	tst.b (-$390,a5)
	beq.w loc_021226
	sf (-$390,a5)
	move.w #1,(-$3a0,a5)
	bra.w loc_021244

loc_021226:
	cmpi.w #3,(-$ca0,a5)
	bcc.w loc_021294
	cmpi.w #$300,(-$ca2,a5)
	bcs.w loc_021294
	move.w #$28,(-$3a0,a5)
	clr.w (-$c9e,a5)

loc_021244:
	bsr.w loc_0218e2
	tst.b d0
	bne.b loc_021270
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$a000,-(a7)
	move.l #loc_0f029c,-(a7)
	clr.w -(a7)
	move.w #$70ba,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1
	bra.b loc_021292

loc_021270:
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$a000,-(a7)
	move.l #loc_0f0342,-(a7)
	clr.w -(a7)
	move.w #$70ba,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1

loc_021292:
	bra.b loc_021298

loc_021294:
	bsr.w loc_0218e2

loc_021298:
	tst.b d0
	bne.b loc_0212a0
	bsr.w loc_02172a

loc_0212a0:
	lea loc_02375e(pc),a0
	tst.w (-$3a0,a5)
	ble.w loc_0212cc
	movem.l a0,-(a7)
	bsr.w loc_021856
	movem.l (a7)+,a0
	subq.w #1,(-$3a0,a5)
	move.w (-$3a0,a5),d0
	andi.w #4,d0
	beq.w loc_0212cc
	lea loc_02379e(pc),a0

loc_0212cc:
	move.w (-$7fa2,a5),d0
	lsl.w #1,d0
	andi.w #$c,d0
	move.w (-$ca0,a5),d1
	lsl.w #4,d1
	add.w d1,d0
	move.w #$a,-(a7)
	move.l (a0,d0.w),-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7

	tst.b (-$38f,a5)
	beq.w loc_021306
	sf (-$38f,a5)
	move.w #1,(-$39e,a5)
	bra.w loc_021324

loc_021306:
	cmpi.w #3,(-$740,a5)
	bcc.w loc_021374
	cmpi.w #$300,(-$742,a5)
	bcs.w loc_021374
	move.w #$28,(-$39e,a5)
	clr.w (-$73e,a5)

loc_021324:
	bsr.w loc_0218f4
	tst.b d0
	bne.b loc_021350
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$b000,-(a7)
	move.l #loc_0f02d4,-(a7)
	clr.w -(a7)
	move.w #$72da,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1
	bra.b loc_021372

loc_021350:
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$b000,-(a7)
	move.l #loc_0f030a,-(a7)
	clr.w -(a7)
	move.w #$72da,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1

loc_021372:
	bra.b loc_021378

loc_021374:
	bsr.w loc_0218f4

loc_021378:
	tst.b d0
	bne.b loc_021380
	bsr.w loc_0217ba

loc_021380:
	lea loc_02375e(pc),a0
	tst.w (-$39e,a5)
	ble.w loc_0213ac
	movem.l a0,-(a7)
	bsr.w loc_02189c
	movem.l (a7)+,a0
	subq.w #1,(-$39e,a5)
	move.w (-$39e,a5),d0
	andi.w #4,d0
	beq.w loc_0213ac
	lea loc_02379e(pc),a0

loc_0213ac:
	move.w (-$7fa2,a5),d0
	lsl.w #1,d0
	andi.w #$c,d0
	move.w (-$740,a5),d1
	lsl.w #4,d1
	add.w d1,d0
	move.w #$b,-(a7)
	move.l (a0,d0.w),-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	bra.w loc_0213d4

loc_0213d4:
	tst.b (-$3dd,a5)
	bne.w loc_0214b8
	subq.w #1,(-$3d4,a5)
	bpl.b loc_0213e8
	move.w #9,(-$3d4,a5)

loc_0213e8:
	tst.w (-$3d4,a5)
	beq.b loc_0213fa
	cmpi.w #5,(-$3d4,a5)
	beq.b loc_0213fe
	moveq #0,d2
	bra.b loc_021400

loc_0213fa:
	moveq #1,d2
	bra.b loc_021400

loc_0213fe:
 	moveq #-1,d2

loc_021400:
	tst.b d2
	blt.b loc_021426
	bgt.b loc_021408
	bra.b loc_02143a

loc_021408:
	cmpi.w #$a00,(-$cb2,a5)
	bge.b loc_02143a
	move.w #8,-(a7)
	move.l #Redlifepal,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7
	bra.b loc_02143a

loc_021426:;p1 midbattlepal
	move.w #$8,-(a7)
	move.l #lifebarPal,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

loc_02143a:
	tst.b d2
	blt.b loc_021460
	bgt.b loc_021442
	bra.b loc_021474

loc_021442:
	cmpi.w #$a00,(-$752,a5)
	bge.b loc_021474
	move.w #9,-(a7)
	move.l #Redlifepal,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	bra.b loc_021474

loc_021460:;P2 battle lifebarpal
	move.w #$9,-(a7)
	move.l #lifebarPal,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

loc_021474:
	tst.b d2
	blt.w loc_0214a0
	bgt.w loc_021482
	bra.w loc_0214b4

loc_021482:
	cmpi.w #$b,(-$3da,a5)
	bge.b loc_0214b4
	move.w #6,-(a7)
	move.l #loc_0245d4,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7
	bra.b loc_0214b4

loc_0214a0:
	move.w #$6,-(a7)
	move.l #loc_0245b4,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

loc_0214b4:
	bra.w loc_0214f4

loc_0214b8:
	move.w #6,-(a7)
	move.l #loc_0245b4,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

	move.w #8,-(a7)
	move.l #lifebarPal,-(a7)
	jsr FuncPaletteLoad
	lea ($6,a7),a7

	move.w #9,-(a7)
	move.l #lifebarPal,-(a7)
	jsr FuncPaletteLoad
	lea (6,a7),a7

loc_0214f4:
	tst.b (-$3dd,a5)
	bne.w loc_0215ae
	tst.b (-$3de,a5)
	bne.w loc_0215ae
	btst #5,(-$7f83,a5)
	bne.w loc_021534

;Timer Code
	subq.w #1,(-$3d8,a5)
	bpl.w loc_0215ae
	subq.w #1,(-$3da,a5)
	bpl.w loc_02152a
	clr.w (-$3da,a5)
	clr.w (-$3d8,a5)
	bra.w loc_021534

loc_02152a:
	move.w (-$7f90,a5),(-$3d8,a5)
	subq.w #1,(-$3d8,a5)

;Time Render
loc_021534:
	moveq #0,d0
	move.w (-$3da,a5),d0
	jsr loc_0021ae
	move.l d0,d2
	lea loc_02384e(pc),a0
	andi.w #$f0,d2
	lsr.w #3,d2

;10s digit
	movem.l d0-d4/a1,-(a7)
	move.w #$6000,-(a7)
	move.w #3,-(a7)
	move.w #0,-(a7)
	move.w #2,-(a7)
	move.w (a0,d2.w),-(a7)
	clr.w -(a7)
	move.w #$7243,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+, d0-d4/a1

;01s digit
	lea loc_023862(pc),a0
	andi.w #$f,d0
	lsl.w #1,d0
	movem.l d0-d4/a1,-(a7)
	move.w #$6000,-(a7)
	move.w #3,-(a7)
	move.w #0,-(a7)
	move.w #2,-(a7)
	move.w (a0,d0.w),-(a7)
	clr.w -(a7)
	move.w #$7283,-(a7)
	jsr loc_00613c
	lea ($e,a7),a7
	movem.l (a7)+,d0-d4/a1

loc_0215ae:
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;P1 Life Bar Start
loc_0215b0:
	lea (p1ma5,a5),a0
	move.b (-$38e,a5),d6
	bsr.w loc_0215d4
	move.b d6,(-$38e,a5)
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;P2 Life Bar Start
loc_0215c2:
	lea (p2ma5,a5),a0
	move.b (-$38d,a5),d6
	bsr.w loc_0215d4
	move.b d6,(-$38d,a5)
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;Life
loc_0215d4:
	move.b ($249,a0),d0
	andi.b #$93,d0
	bne.w loc_0215e8
	tst.b ($249,a0)
	bne.w loc_02164e

loc_0215e8:
	btst #5,(-$7f83,a5)
	beq.b loc_021606
	move.b ($249,a0),d0
	andi.b #$82,d0
	bne.b loc_021600
	tst.b ($249,a0)
	bne.b loc_021606

loc_021600:
	move.w #$1e00,($1f2,a0)

loc_021606:
	sf d6
	move.w ($1f2,a0),d0
	asr.w #6,d0
	cmp.w ($1f4,a0),d0
	ble.b loc_02161a
	addq.w #1,($1f4,a0)
	bra.b loc_02161e

loc_02161a:
	move.w d0,($1f4,a0)

loc_02161e:
	sub.w ($1f6,a0),d0
	ble.w loc_02162e
	addq.w #1,($1f6,a0)
	bra.w loc_021680

loc_02162e:
	neg.w d0
	cmpi.w #2,d0
	blt.w loc_021640
	subq.w #2,($1f6,a0)
	bra.w loc_021680

loc_021640:
	move.w ($1f2,a0),d0
	asr.w #6,d0
	move.w d0,($1f6,a0)
	bra.w loc_021680

loc_02164e:
	tst.b d6
	bne.w loc_02165a
	move.w ($1f4,a0),($1f6,a0)

loc_02165a:
	st d6
	move.w ($1f2,a0),d0
	asr.w #6,d0
	sub.w ($1f4,a0),d0
	blt.w loc_021676
	addq.w #3,d0
	asr.w #2,d0
	add.w d0,($1f4,a0)
	bra.w loc_021680

loc_021676:
	neg.w d0
	addq.w #3,d0
	asr.w #2,d0
	sub.w d0,($1f4,a0)

loc_021680:
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_021682:
	lea VRAMRW,a0
	lea loc_0235d2(pc),a1
	move.w #$7204,(-2,a0)
	move.w #-$20,(2,a0)
	move.w (-$cb0,a5),d0
	move.w (-$cae,a5),d1
	bra.w loc_0216c6

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_0216a4:
	lea VRAMRW,a0
	lea loc_023664(pc),a1
	move.w #$72e4,(-2,a0)
	move.w #$20,(2,a0)
	move.w (-$750,a5),d0
	move.w (-$74e,a5),d1
	bra.w loc_0216c6

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;Render
loc_0216c6:
	move.w #$e,d7

loc_0216ca:
	tst.w d0
	ble.w loc_021702
	cmpi.w #8, d0
	bge.w loc_0216fc
	tst.w d1
	blt.b loc_0216f6
	cmpi.w #8,d1
	bgt.b loc_0216ec
	move.w d1,d2
	lsl.w #4,d2
	add.w d0,d2
	add.w d0,d2
	bra.b loc_02171c

loc_0216ec:
	move.w #$80,d2
	add.w d0,d2
	add.w d0,d2
	bra.b loc_02171c

loc_0216f6:
	move.w d0,d2
	add.w d0,d2
	bra.b loc_02171c

loc_0216fc:
	move.w #$90,d2
	bra.b loc_02171c

loc_021702:
	tst.w d1
	blt.b loc_021718
	cmpi.w #8,d1
	bgt.b loc_021712
	move.w d1,d2
	lsl.w #4,d2
	bra.b loc_02171c

loc_021712:
	move.w #$80,d2
	bra.b loc_02171c

loc_021718:
	move.w #0,d2

loc_02171c:
	move.w (a1,d2.w),(a0)
	subq.w #8,d0
	subq.w #8,d1
	dbra d7,loc_0216ca
	rts

;==========================
loc_02172a:
	movem.l d0-d1/a0,-(a7)
	move.w #1,-(a7)
	move.w #$c,-(a7)
	clr.w -(a7)
	move.w #$70ba,-(a7)
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+,d0-d1/a0

	lea VRAMRW,a0
	move.w (-$ca2,a5),d1
	asr.w #3,d1
	move.w (-$c9e,a5),d0
	cmp.w d0,d1
	beq.w loc_021768
	blt.b loc_021766
	addq.w #1,d0
	bra.b loc_021768

loc_021766:
	subq.w #1,d0

loc_021768:
	move.w d0,(-$c9e,a5)
	move.w d0,d1
	andi.w #7,d1
	asr.w #3,d0
	cmpi.w #$c,d0
	bcs.b loc_021782
	move.w #$b,d0
	move.w #8,d1

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;P1 Super Meter Render
loc_021782:
	add.w d1,d1
	lea loc_0236f6(pc),a1
	move.w #-$20,(2,a0)
	move.w #$723b,(-2,a0)
	move.w #$b,d2
	sub.w d0,d2
	move.w ($12,a1),(a0)
	subq.w #1,d0
	bmi.b loc_0217aa

loc_0217a2:
	move.w ($10,a1),(a0)
	dbra d0,loc_0217a2

loc_0217aa:
	move.w (a1,d1.w),(a0)
	subq.w #1,d2
	bmi.b loc_0217b8

loc_0217b2:
	move.w (a1),(a0)
	dbra d2,loc_0217b2

loc_0217b8:
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_0217ba:
	movem.l d0-d1/a0,-(a7)
	move.w #1,-(a7)
	move.w #$c,-(a7)
	clr.w -(a7)
	move.w #$72fa,-(a7)
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+,d0-d1/a0
	lea VRAMRW,a0
	move.w (-$742,a5),d1
	asr.w #3,d1
	move.w (-$73e,a5),d0
	cmp.w d0,d1
	beq.w loc_0217f8
	blt.b loc_0217f6
	addq.w #1,d0
	bra.b loc_0217f8

loc_0217f6:
	subq.w #1,d0

loc_0217f8:
	move.w d0,(-$73e,a5)
	move.w d0,d1
	andi.w #7,d1
	asr.w #3,d0
	cmpi.w #$c,d0
	bcs.b loc_021812
	move.w #$b,d0
	move.w #8,d1

;--------------------------
;P2 Super Meter
loc_021812:
	add.w d1,d1
	lea loc_02370a(pc),a1
	move.w #$20,(2,a0)
	move.w #$72db,(-2,a0)
	move.w #$b,d2
	sub.w d0,d2
	move.w ($12,a1),(a0)
	subq.w #1,d0
	bmi.b loc_02183a

loc_021832:
	move.w ($10,a1),(a0)
	dbra d0,loc_021832

loc_02183a:
	move.w (0, a1, d1.w), (a0)
	subq.w #1,d2
	bmi.b loc_021848

loc_021842:
	move.w (a1),(a0)
	dbra d2,loc_021842

loc_021848:
	rts

;-------------------------
;Free Function
loc_02184a:
	rts

;--------------------------
loc_02184c:
	bsr.w loc_021856
	bsr.w loc_02189c
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;P1 Meter Level
loc_021856:
	move.w (-$3a0,a5),d0
	andi.w #4,d0
	bne.b loc_021866
	lea loc_02371e(pc),a0
	bra.b loc_02186a

loc_021866:
	lea loc_02372e(pc),a0

loc_02186a:
	move.w (-$ca0,a5),d0
	cmpi.w #3,d0
	bcs.b loc_021878
	move.w #3,d0

loc_021878:
	lsl.w #2,d0
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$a000,-(a7)
	move.l (a0,d0.w),-(a7)
	clr.w -(a7)
	move.w #$703a,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;P2 Meter Level
loc_02189c:
	move.w (-$39e,a5),d0
	andi.w #4,d0
	bne.b loc_0218ac
	lea loc_02373e(pc),a0
	bra.b loc_0218b0

loc_0218ac:
	lea loc_02374e(pc),a0

loc_0218b0:
	move.w (-$740,a5),d0
	cmpi.w #3,d0
	bcs.b loc_0218be
	move.w #3,d0

loc_0218be:
	lsl.w #2,d0
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$b000,-(a7)
	move.l (a0,d0.w),-(a7)
	clr.w -(a7)
	move.w #$747a,-(a7)
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1
	rts

;==========================
loc_0218e2:
	movem.l a0,-(a7)
	lea (p1ma5,a5),a0
	bsr.w loc_021906
	movem.l (a7)+,a0
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_0218f4:
	movem.l a0,-(a7)
	lea (p2ma5,a5),a0
	bsr.w loc_021906
	movem.l (a7)+,a0
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_021906:
	cmpi.w #3,($204,a0)
	bcc.w loc_021960
	cmpi.w #$300,($202,a0)
	bcs.w loc_021960
	subi.w #$300,($202,a0)
	addq.w #1,($204,a0)
	cmpi.w #3,($204,a0)
	bcc.w loc_021960
	cmpi.w #$300,($202,a0)
	bcs.w loc_021960
	subi.w #$300,($202,a0)
	addq.w #1,($204,a0)
	cmpi.w #3,($204,a0)
	bcc.w loc_021960
	cmpi.w #$300,($202,a0)
	bcs.w loc_021960
	subi.w #$300,($202,a0)
	addq.w #1,($204,a0)

loc_021960:
	cmpi.w #$300,($202,a0)
	bcs.b loc_02196e
	move.w #$300,($202,a0)

loc_02196e:
	cmpi.w #3,($204,a0)
	bcs.b loc_021984
	move.w #3,($204,a0)
	clr.w ($202,a0)
	st d0
	bra.b loc_021986

loc_021984:
	sf d0

loc_021986:
	rts

;==========================
;Winpoints
loc_021988:
	tst.b (-$3e4,a5)
	bmi.w loc_021a00
	tst.b (-$39a,a5)
	ble.b loc_0219a2
	bset #7,(-$39a,a5)
	move.w #$10,(-$39c,a5)

loc_0219a2:
	tst.b (-$39a,a5)
	beq.b loc_0219b8
	subq.w #1,(-$39c,a5)
	bgt.b loc_0219b6
	sf (-$39a,a5)
	clr.w (-$39c,a5)

loc_0219b6:
	bra.b loc_0219bc

loc_0219b8:
	clr.w (-$39c,a5)

loc_0219bc:
	move.w (-$e86,a5),d0
	move.w #$a,d2 ;P1 winpoint X postion $10
	move.w (-$f28,a5),d7
	subq.w #1,d7

loc_0219ca:
	move.w #0,d1
	bsr.w loc_021a0a
	addq.w #3,d2;direction ;subq.w #1,d2
	dbra d7,loc_0219ca
	move.w (-$926,a5),d0
	cmpi.w #3,d0
	bcs.b loc_0219e6
	move.w #3,d0

loc_0219e6:
	move.w #$1e,d2;p2 winpoint X postion $
	move.w (-$f28,a5),d7
	subq.w #1,d7

loc_0219f0:
	subq.w #3,d2;direction addq.w #1,d2
	move.w #1,d1
	bsr.w loc_021a0a
	dbra d7,loc_0219f0
	rts

loc_021a00:
	sf (-$39a,a5)
	clr.w (-$39c,a5)
	rts

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_021a0a:
	subq.w #1,d0
	bmi.w loc_021a82
	bgt.w loc_021a56
	btst d1,(-$39a,a5)
	beq.w loc_021a56
	move.l d0,-(a7)
	move.w (-$39c,a5),d0
	andi.w #$c,d0
	lea loc_023876(pc),a0
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$f000,-(a7)
	move.l (a0,d0.w),-(a7)
	move.w #4,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1

	move.l (a7)+,d0
	bra.w loc_021aaa

loc_021a56:
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$f000,-(a7)
	move.l #loc_0f00b4,-(a7)
	move.w #4,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1
	bra.w loc_021aaa

loc_021a82:
	movem.l d0-d3/a0-a1,-(a7)
	move.w #$f000,-(a7)
	move.l #loc_0f0074,-(a7)
	move.w #4,-(a7)
	move.w d2,-(a7)
	jsr loc_005e50
	jsr loc_005f2c
	lea ($a,a7),a7
	movem.l (a7)+,d0-d3/a0-a1

loc_021aaa:
	rts

;==========================
loc_021aac:
	tst.b (-$3dd,a5)
	bne.w loc_021b1a
	tst.w (-$cb2,a5)
	bpl.b loc_021ac6
	tst.w (-$752,a5)
	bmi.w loc_021afa
	bra.w loc_021aea

loc_021ac6:
	tst.w (-$752,a5)
	bmi.w loc_021aea
	move.w (-$3da,a5),d0
	or.w (-$3d8,a5),d0
	bne.w loc_021b46
	move.l #loc_022186,(-$3cc,a5)
	movem.l d1-d7,(-$3c8,a5)
	bra.b loc_021b1a

loc_021aea:
	move.l #loc_022312,(-$3cc,a5)
	movem.l d1-d7,(-$3c8,a5)
	bra.b loc_021b1a

loc_021afa:
	move.l #loc_0224e6,(-$3cc,a5)
	movem.l d1-d7,(-$3c8,a5)
	cmpi.b #8,(-$399,a5)
	bgt.b loc_021b1a
	move.b #8,(-$399,a5)
	clr.w (-$398,a5)

loc_021b1a
	st (-$3dd,a5)
	move.w (-$3da,a5),d0
	or.w (-$3d8,a5),d0
	beq.w loc_021b32
	bsr.w loc_0225e2
	beq.w loc_021b46

loc_021b32:
	subq.w #1,(-$3d6,a5)
	bpl.w loc_021b46
	tst.b (-$3e0,a5)
	bne.w loc_021b46
	bsr.w loc_021b48

loc_021b46:
	rts

;==========================
loc_021b48:
	st (-$3e0,a5)
	tst.b (-$3e4,a5)
	bne.w loc_021b76

	move.w #$20,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	
	btst #7,(-$53da,a5)
	bne.w loc_021b76
	move.w #$25,-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_021b76:
	move.w (-$cb2,a5),d0
	asr.w #6,d0
	move.w (-$752,a5),d1
	asr.w #6,d1
	cmp.w d1,d0
	blt.w loc_021b9e
	bgt.w loc_021b94
	clr.b (-$3dc,a5)
	bra.w loc_021ba4

loc_021b94:
	move.b #1,(-$3dc,a5)
	bra.w loc_021ba4

loc_021b9e:
	move.b #2,(-$3dc,a5)

loc_021ba4:
	tst.b (-$3e4,a5)
	bne.w loc_021bba
	move.l #loc_022570,(-$3cc,a5)
	movem.l d1-d7,(-$3c8,a5)

loc_021bba:
	rts

;==========================
loc_021bbc:
	st (-$3de,a5)
	tst.b (-$3e4,a5)
	bne.w loc_021e38
	move.w #3,d7
	cmpi.w #1,(-$f2e,a5)
	bne.b loc_021bd8
	move.w #$35,d7

loc_021bd8:
	bsr.w loc_0226e4
	tst.b (-$3dd,a5)
	bne.w loc_021e38
	dbra d7,loc_021bd8
	move.w (-$f2e,a5),d0
	cmp.w (-$f26,a5),d0
	blt.w loc_021c94
	moveq #-1,d7
	move.w #$1c2c,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	sf (-$360,a5)
	move.l #loc_021ef2,(-$35e,a5)
 
loc_021c0e:
	lea (-$360,a5),a0
	jsr loc_02260c
	bmi.w loc_021c32
	bsr.w loc_0225a2
	bsr.w loc_021e5c
	bsr.w loc_0226e4
	tst.b (-$3dd,a5)
	bne.w loc_021e34
	bra.b loc_021c0e

loc_021c32:
	bsr.w loc_0220b4
	move.b #1,(-$38a,a5)
	sf (-$360,a5)
	move.l #loc_021f94,(-$35e,a5)
	sf (-$356,a5)
	move.l #loc_022030,(-$354,a5)

loc_021c54:
	lea (-$356,a5),a0
	jsr loc_02260c
	bmi.b loc_021c6c
	addi.w #0,d0
	addi.w #-4,d1
	bsr.w loc_0225c2

loc_021c6c:
	lea (-$360,a5),a0
	jsr loc_02260c
	bmi.w loc_021d4c
	bsr.w loc_0225a2
	bsr.w loc_021e5c
	bsr.w loc_0226e4
	tst.b (-$3dd,a5)
	bne.w loc_021e34
	bra.b loc_021c54
	bra.w loc_021d4c

loc_021c94:
	moveq #0,d7
	move.w #$1c20,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	bsr.w loc_021e42
	sf (-$360,a5)
	move.l #loc_021e8a,(-$35e,a5)

loc_021cb2:
	lea (-$360,a5),a0
	jsr loc_02260c
	bmi.w loc_021cd6
	bsr.w loc_0225a2
	bsr.w loc_021e5c
	bsr.w loc_0226e4
	tst.b (-$3dd,a5)
	bne.w loc_021e34
	bra.b loc_021cb2

loc_021cd6:
	bsr.w loc_0220b4
	move.b #1,(-$38a,a5)
	sf (-$360,a5)
	move.l #loc_021edc,(-$35e,a5)
	sf (-$356,a5)
	move.l #loc_022030,(-$354,a5)

loc_021cf8:
	lea (-$356,a5),a0
	jsr loc_02260c
	bmi.b loc_021d10
	addi.w #$40,d0
	addi.w #-4,d1
	bsr.w loc_0225c2

loc_021d10:
	lea (-$360,a5),a0
	jsr loc_02260c
	bmi.w loc_021d4c
	bsr.w loc_0225a2
	move.w (-$f2e,a5),d4
	cmpi.w #1,(-$35a,a5)
	beq.b loc_021d32
	addq.w #2,d4
	bra.b loc_021d36

loc_021d32:
	addi.w #$3b,d4

loc_021d36:
	bsr.w loc_0225a2
	bsr.w loc_021e5c
	bsr.w loc_0226e4
	tst.b (-$3dd,a5)
	bne.w loc_021e34
	bra.b loc_021cf8

loc_021d4c:
	sf (-$360,a5)
	move.l #loc_021faa,(-$35e,a5)
	move.w #$10,d7

loc_021d5c:
	lea (-$360,a5),a0
	jsr loc_02260c
	bmi.w loc_021d90
	bsr.w loc_0225a2
	tst.w d7
	bmi.b loc_021d82
	subq.w #1,d7
	bpl.b loc_021d82
	move.w #$1c2f,-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_021d82:
	bsr.w loc_0226e4
	tst.b (-$3dd,a5)
	bne.w loc_021e34
	bra.b loc_021d5c

loc_021d90:
	sf (-$360,a5)
	move.l #loc_02201a,(-$35e,a5)
	st (-$42c2,a5)
	move.w #$7def,(-$4234,a5)
	lea (-$360,a5),a0
	jsr loc_02260c
	bsr.w loc_0225a2
	bsr.w loc_0226e4
	move.w #0,(-$4234,a5)
	lea (-$360,a5),a0
	jsr loc_02260c
	bsr.w loc_0225a2
	bsr.w loc_0226e4
	st (-$42c2,a5)
	move.w #$ace,(-$4234,a5)
	lea (-$360,a5),a0
	jsr loc_02260c
	bsr.w loc_0225a2
	bsr.w loc_0226e4
	move.w #0,(-$4234,a5)
	lea (-$360,a5),a0
	jsr loc_02260c
	bsr.w loc_0225a2
	bsr.w loc_0226e4
	move.w #$13,d7

loc_021e08:
	subq.w #1,d7
	bpl.b loc_021e14
	move.w #$7fff,d7
	sf (-$3de,a5)

loc_021e14:
	lea (-$360,a5),a0
	jsr loc_02260c
	bmi.w loc_021e34
	bsr.w loc_0225a2
	bsr.w loc_0226e4
	tst.b (-$3dd,a5)
	bne.w loc_021e34
	bra.b loc_021e08

;==========================
loc_021e34:
	bsr.w loc_02215a

loc_021e38:
	sf (-$3de,a5)

loc_021e3c:
	bsr.w loc_0226e4
	bra.b loc_021e3c

loc_021e42:
	move.w (-$f2e,a5),d0
	bmi.b loc_021e50
	cmpi.w #9,d0
	ble.b loc_021e50
	clr.w d0

loc_021e50:
	lsl.w #2,d0
	lea loc_023952(pc),a0
	move.w (2,a0,d0.w),d7
	rts

;==========================
loc_021e5c:
	tst.w d7
	bmi.w loc_021e88
	subq.w #1, d7
	bpl.w loc_021e88
	move.w (-$f2e,a5),d0
	bmi.b loc_021e76
	cmpi.w #9,d0
	ble.b loc_021e76
	clr.w d0

loc_021e76
	lsl.w #2,d0
	lea loc_023952(pc),a0
	move.w (a0,d0.w),-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_021e88:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_021e8a:
	dc.w $0002,$0032,$00a0,$0070,$e000
	dc.w $0002,$0033,$00a0,$0070,$e000
	dc.w $0002,$0034,$00a0,$0070,$e000
	dc.w $0002,$0035,$00a0,$0060,$e000
	dc.w $0002,$0036,$00a0,$0060,$e000
	dc.w $0002,$0037,$00a2,$0060,$e000
	dc.w $0002,$0038,$00a4,$0060,$e000
	dc.w $0002,$0039,$00a8,$0060,$e000
	dc.w $0000

loc_021edc:
	dc.w $0002,$003a,$00a8,$0060,$e100
	dc.w $002e,$0001,$00a8,$0060,$e100
	dc.w $0000

loc_021ef2:
	dc.w $0002,$0078,$00a0,$0070,$e000
	dc.w $0002,$0079,$00a0,$0070,$e000
	dc.w $0002,$007a,$00a0,$0070,$e000
	dc.w $0002,$007b,$00a0,$0070,$e000
	dc.w $0002,$007c,$00a0,$0070,$e000
	dc.w $0002,$007d,$00a0,$0070,$e000
	dc.w $0002,$007e,$00a0,$0070,$e000
	dc.w $0002,$007f,$00a0,$0070,$e000
	dc.w $0002,$0080,$00a0,$0070,$e000
	dc.w $0002,$0081,$00a0,$0070,$e000
	dc.w $0002,$0082,$00a0,$0070,$e000
	dc.w $0002,$0083,$00a0,$0070,$e000
	dc.w $0002,$0084,$00a0,$0070,$e000
	dc.w $0002,$0085,$00a0,$0070,$e000
	dc.w $0002,$0086,$00a0,$0070,$e000
	dc.w $0002,$0087,$00a0,$0070,$e000
	dc.w $0000

loc_021f94:
	dc.w $0002,$0088,$00a0,$0070,$e100
	dc.w $0026,$0089,$00a0,$0070,$e100
	dc.w $0000

loc_021faa:
	dc.w $0001,$004e,$00a0,$0070,$e100
	dc.w $0001,$004f,$00a0,$0070,$e100
	dc.w $0002,$0050,$00a0,$0070,$e100
	dc.w $0003,$0045,$00a0,$0070,$e000
	dc.w $0003,$0046,$00a0,$0070,$e000
	dc.w $0002,$0047,$00a0,$0070,$e000
	dc.w $0002,$0048,$00a0,$0070,$e000
	dc.w $0002,$0049,$00a0,$0070,$e000
	dc.w $0002,$004a,$00a0,$0070,$e000
	dc.w $0002,$004b,$00a0,$0070,$e000
	dc.w $0002,$004c,$00a0,$0070,$e000
	dc.w $0000

loc_02201a:
	dc.w $0004,$004d,$00a0,$0068,$e100
	dc.w $0014,$000d,$00a0,$0068,$e200
	dc.w $0000

loc_022030:
	dc.w $0001,$0000,$00a0,$0070,$da00
	dc.w $0001,$1254,$00a0,$0070,$da00
	dc.w $0001,$1255,$00a0,$0070,$da00
	dc.w $0001,$1256,$00a0,$0070,$da00
	dc.w $0001,$1257,$00a0,$0070,$da00
	dc.w $0001,$1258,$00a0,$0070,$da00
	dc.w $0001,$1259,$00a0,$0070,$da00
	dc.w $0001,$125a,$00a0,$0070,$da00
	dc.w $0001,$125b,$00a0,$0070,$da00
	dc.w $0001,$125c,$00a0,$0070,$da00
	dc.w $0001,$125d,$00a0,$0070,$da00
	dc.w $0001,$125e,$00a0,$0070,$da00
	dc.w $0001,$125f,$00a0,$0070,$da00
	dc.w $0000

;==========================
loc_0220b4:
	btst #7,(-$53da,a5)
	bne.w loc_022158
	tst.b (-$f37,a5)
	bne.b loc_02210e
	
	movem.l d0/a0-a1,-(a7)
	move.w #$f300,-(a7)
	move.l #loc_02393a,-(a7)
	clr.w -(a7)
	move.w #$7218,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	move.w (-$f30,a5),d0
	ext.l d0
	movem.l d0-d4/a0-a1,-(a7)
	move.w #$f300,-(a7)
	move.w #2,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$72d8,-(a7)
	jsr loc_005ed4
	lea ($c,a7),a7
	movem.l (a7)+,d0-d4/a0-a1

loc_02210e:
	movem.l d0/a0-a1,-(a7)
	move.w #$f300,-(a7)
	move.l #loc_02394a,-(a7)
	clr.w -(a7)
	move.w #$7219,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	move.w (-$f2a,a5),d0
	ext.l d0

	movem.l d0-d4/a0-a1,-(a7)
	move.w #$f300,-(a7)
	move.w #2,-(a7)
	move.l d0,-(a7)
	clr.w -(a7)
	move.w #$72d9,-(a7)
	jsr loc_005ed4
	lea ($c,a7),a7
	movem.l (a7)+,d0-d4/a0-a1

loc_022158:
	rts

;--------------------------
loc_02215a:
	btst #7,(-$53da,a5)
	bne.w loc_022184

	movem.l d0-d1/a0,-(a7)
	move.w #2,-(a7)
	move.w #8,-(a7)
	clr.w -(a7)
	move.w #$7218,-(a7)
	jsr loc_005f72
	lea (8,a7),a7
	movem.l (a7)+,d0-d1/a0

loc_022184:
	rts

;--------------------------
loc_022186:
	tst.b (-$3e4,a5)
	bne.w loc_0221dc
	move.w #$1c32,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	sf (-$360,a5)
	move.l #loc_0221e2,(-$35e,a5)
	sf (-$356,a5)
	move.l #loc_02227a,(-$354,a5)

loc_0221b2:
	lea (-$360,a5),a0
	jsr loc_02260c
	bmi.w loc_0221dc
	bsr.w loc_0225a2
	lea (-$356,a5),a0
	jsr loc_02260c
	bmi.w loc_0221dc
	bsr.w loc_0225a2
	bsr.w loc_0226e4
	bra.b loc_0221b2

loc_0221dc:
	bsr.w loc_0226e4
	bra.b loc_0221dc

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0221e2:
	dc.w $0001,$0054,$0170,$0050,$e600
	dc.w $0001,$0054,$0148,$0050,$e600
	dc.w $0001,$0054,$0124,$0050,$e600
	dc.w $0001,$0054,$0104,$0050,$e600
	dc.w $0001,$0054,$00e8,$0050,$e600
	dc.w $0001,$0054,$00d0,$0050,$e600
	dc.w $0001,$0054,$00bc,$0050,$e600
	dc.w $0001,$0054,$00ac,$0050,$e600
	dc.w $0001,$0054,$00a0,$0051,$e600
	dc.w $0001,$0054,$0098,$0052,$e600
	dc.w $0001,$0054,$0094,$0054,$e600
	dc.w $0001,$0054,$0094,$0057,$e600
	dc.w $0001,$0054,$0098,$005b,$e600
	dc.w $0002,$0055,$00a0,$0060,$e600
	dc.w $003c,$0010,$00a0,$0060,$e600
	dc.w $0000

loc_02227a:
	dc.w $0001,$0056,$ffd0,$0050,$e600
	dc.w $0001,$0056,$fff8,$0050,$e600
	dc.w $0001,$0056,$001c,$0050,$e600
	dc.w $0001,$0056,$003c,$0050,$e600
	dc.w $0001,$0056,$0058,$0050,$e600
	dc.w $0001,$0056,$0070,$0050,$e600
	dc.w $0001,$0056,$0084,$0050,$e600
	dc.w $0001,$0056,$0094,$0050,$e600
	dc.w $0001,$0056,$00a0,$0051,$e600
	dc.w $0001,$0056,$00a8,$0052,$e600
	dc.w $0001,$0056,$00ac,$0054,$e600
	dc.w $0001,$0056,$00ac,$0057,$e600
	dc.w $0001,$0056,$00a8,$005b,$e600
	dc.w $0002,$0057,$00a0,$0060,$e600
	dc.w $003c,$0058,$00a0,$0060,$e600
	dc.w $0000

;--------------------------
loc_022312:
	tst.b (-$3e4,a5)
	bne.w loc_0223f4

loc_02231a:
	bsr.w loc_0225e2
	bne.b loc_022326
	bsr.w loc_0226e4
	bra.b loc_02231a

loc_022326:
	move.w #$20,-(a7)
	jsr loc_006fec
	addq.l #2, a7

	btst #0,(-$389,a5)
	beq.w loc_02239a
	btst #1,(-$389,a5)
	beq.w loc_022370
	move.w #$36,d0
	bsr.w loc_02301a
	addi.w #$60,(-$3d6,a5)
	sf (-$360,a5)
	move.l #loc_02244e,(-$35e,a5)

	move.w #$4d,d7
	move.w #$1c30,d6
	move.w #$1e,d5
	bra.w loc_0223ba

loc_022370:
	move.w #$34,d0
	bsr.w loc_02301a
	addi.w #$20,(-$3d6,a5)
	sf (-$360,a5)
	move.l #loc_022424,(-$35e,a5)
	move.w #$1f,d7
	move.w #$1c2e,d6
	move.w #0,d5
	bra.w loc_0223ba

loc_02239a:
	move.w #$1866,d0
	bsr.w loc_02301a
	sf (-$360,a5)
	move.l #loc_0223fa,(-$35e,a5)
	move.w #$b,d7
	move.w #$1c2e,d6
	move.w #0,d5

loc_0223ba:
	sf (-$389,a5)
	tst.w d7
	bmi.b loc_0223ca

loc_0223c2:
	bsr.w loc_0226e4
	dbra d7,loc_0223c2

loc_0223ca:
	lea (-$360,a5),a0
	jsr loc_02260c
	bmi.w loc_0223f4
	bsr.w loc_0225a2
	tst.w d5
	bmi.b loc_0223ee
	subq.w #1,d5
	bpl.b loc_0223ee

	move.w d6,-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_0223ee:
	bsr.w loc_0226e4
	bra.b loc_0223ca

loc_0223f4
	bsr.w loc_0226e4
	bra.b loc_0223f4

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0223fa:
	dc.w $0004,$0074,$00a0,$0070,$e400
	dc.w $0002,$0075,$00a0,$0070,$e500
	dc.w $0002,$0076,$00a0,$0070,$e500
	dc.w $003c,$000e,$00a0,$0070,$e500
	dc.w $0000

loc_022424:
	dc.w $0004,$0074,$00a0,$0070,$e400
	dc.w $0002,$0075,$00a0,$0070,$e500
	dc.w $0002,$0076,$00a0,$0070,$e500
	dc.w $003c,$000e,$00a0,$0070,$e500
	dc.w $0000

loc_02244e:
	dc.w $0003,$0069,$00a0,$0070,$e300
	dc.w $0003,$006a,$00a0,$0070,$e300
	dc.w $0003,$006b,$00a0,$0070,$e300
	dc.w $0003,$006c,$00a0,$0070,$e300
	dc.w $0003,$006d,$00a0,$0070,$e300
	dc.w $0003,$006e,$00a0,$0070,$e300
	dc.w $0003,$006f,$00a0,$006f,$e300
	dc.w $0003,$0070,$00a0,$006e,$e300
	dc.w $0003,$0071,$00a0,$006d,$e300
	dc.w $0003,$0072,$00a0,$006c,$e300
	dc.w $0002,$0073,$00a0,$0070,$e300
	dc.w $0004,$0074,$00a0,$0070,$e400
	dc.w $0002,$0075,$00a0,$0070,$e500
	dc.w $0002,$0076,$00a0,$0070,$e500
	dc.w $003c,$000e,$00a0,$0070,$e500
	dc.w $0000

;--------------------------
loc_0224e6:
	tst.b (-$3e4,a5)
	bne.w loc_022540

loc_0224ee:
	bsr.w loc_0225e2
	bne.b loc_0224fa
	bsr.w loc_0226e4
	bra.b loc_0224ee

loc_0224fa:
	move.w #$20,-(a7)
	jsr loc_006fec
	addq.l #2,a7

	clr.w d5
	sf (-$360,a5)
	move.l #loc_022546,(-$35e,a5)

loc_022514:
	lea (-$360,a5),a0
	jsr loc_02260c
	bmi.w loc_022540
	bsr.w loc_0225a2
	tst.w d5
	bmi.b loc_02253a
	subq.w #1,d5
	bpl.b loc_02253a
	move.w #$1c31,-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_02253a:
	bsr.w loc_0226e4
	bra.b loc_022514

loc_022540:
	bsr.w loc_0226e4
	bra.b loc_022540

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_022546:
	dc.w $0002,$005e,$00a0,$0070,$e400
	dc.w $0002,$005f,$00a0,$0070,$e500
	dc.w $0002,$0060,$00a0,$0070,$e500
	dc.w $0050,$000f,$00a0,$0070,$e500
	dc.w $0000

;--------------------------
loc_022570:
	bsr.w loc_021988
	move.w (-$e86,a5),d7
	swap d7
	move.w (-$926,a5),d7

loc_02257e:
	bsr.w loc_0226e4
	move.w (-$e86,a5),d0
	swap d0
	move.w (-$926,a5),d0
	cmp.l d0,d7
	bne.w loc_022598
	tst.w (-$39c,a5)
	beq.b loc_02257e

loc_022598:
	move.l d0,-(a7)
	bsr.w loc_021988
	move.l (a7)+,d7
	bra.b loc_02257e

loc_0225a2:
	movem.l d0-d7/a0-a2,-(a7)
	lea loc_090d64,a0
	lsl.w #2,d4
	movea.l (a0,d4.w),a0
	clr.w d4
	clr.w d5
	jsr loc_00431c
	movem.l (a7)+,d0-d7/a0-a2
	rts

;--------------------------
loc_0225c2:
	movem.l d0-d7/a0-a2,-(a7)
	lea loc_200000,a0
	lsl.w #2,d4
	movea.l (a0, d4.w),a0
	clr.w d4
	clr.w d5
	jsr loc_00431c
	movem.l (a7)+, d0-d7/a0-a2
	rts

;--------------------------
loc_0225e2:
	btst #7,(-$c5b,a5)
	bne.w loc_02260a
	btst #7,(-$6fb,a5)
	bne.w loc_02260a
	btst #7,(-$c5c,a5)
	bne.w loc_02260a
	btst #7,(-$6fc,a5)
	bne.w loc_02260a

loc_02260a:
	rts

;--------------------------
loc_02260c:
	movem.l a0-a1,-(a7)
	movea.l (2,a0),a1
	tst.b (0,a0)
	bmi.w loc_022650
	bne.b loc_02262e
	addq.b #1,(0,a0)
	clr.w (6,a0)
	clr.w (8,a0)
	bra.w loc_02263c

loc_02262e:
	bsr.w loc_02266a
	tst.w (8,a0)
	bgt.b loc_02264a
	adda.w #$a,a1

loc_02263c:
	move.w (0,a1),(8,a0)
	beq.w loc_022650
	addq.w #1,(6,a0)

loc_02264a:
	subq.w #1,(8,a0)
	bra.b loc_022658

loc_022650:
	st (0,a0)
	bsr.w loc_02266a

loc_022658:
	bsr.w loc_02267c
	movem.l (a7)+,a0-a1
	tst.b (0,a0)
	st ($27f9,a5)
	rts

;--------------------------
loc_02266a:
	movea.l (2,a0),a1
	move.w (6,a0),d0
	subq.w #1,d0
	mulu.w #$a,d0
	adda.w d0,a1
	rts

;--------------------------
loc_02267c:
	move.w (2,a1),d4
	move.w (4,a1),d0
	move.w (6,a1),d1
	move.w (8,a1),d2
	clr.w d3
	rts

;--------------------------
loc_022690:
	movem.l ($8a,a4),d0-d7/a0-a2
	move.l ($86,a4),-(a7)
	rts

;--------------------------
loc_02269c:
	move.l (a7)+,($86,a4)
	movem.l d0-d7/a0-a2,($8a,a4)
	rts

;--------------------------
loc_0226a8:
	movem.l ($5a,a4),d0-d7/a0-a2
	move.l ($56,a4),-(a7)
	rts

;--------------------------
loc_0226b4:
	move.l (a7)+,($56,a4)
	movem.l d0-d7/a0-a2,($5a,a4)
	rts

;--------------------------
loc_0226c0:
	movem.l ($2e,a4),d0-d7/a1-a2
	move.l ($2a,a4),-(a7)
	rts

;--------------------------
loc_0226cc:
	move.l (a7)+,($2a,a4)
	movem.l d0-d7/a1-a2,($2e,a4)
	rts

;--------------------------
loc_0226d8:
	movem.l (-$3c8,a5),d1-d7
	move.l (-$3cc,a5),-(a7)
	rts

;--------------------------
loc_0226e4:
	move.l (a7)+,(-$3cc,a5)
	movem.l d1-d7,(-$3c8,a5)
	rts

;--------------------------
loc_0226f0:
	clr.w ($22e,a4)
	clr.w ($230,a4)
	move.l a0,($2d0,a4)
	clr.w ($2d4,a4)
	clr.w ($2d6,a4)
	clr.l ($2a,a4)
	clr.b ($2e1,a4)
	clr.w ($2ec,a4)
	addq.w #1,($2ce,a4)

loc_022714:
	move.l d0,-(a7)
	bsr.w loc_0227e6
	move.l (a7)+,d0
	cmp.w ($2d6,a4),d0
	bgt.b loc_022714
	move.l a0,($2d0,a4)
	tst.w ($2d4,a4)
	beq.b loc_022714
	move.b #-$78,($278,a4)
	bra.w loc_022788

loc_022736:
	move.l ($2a,a4),-(a7)
	move.w ($2da,a4),-(a7)
	subq.w #1,($2d4,a4)
	bgt.w loc_02275c

loc_022746:
	clr.w ($2d4,a4)
	movea.l ($2d0,a4),a0
	bsr.w loc_0227e6
	move.l a0,($2d0,a4)
	tst.w ($2d4,a4)
	beq.b loc_022746

loc_02275c:
	move.w (a7)+,d0
	cmp.w ($2da,a4),d0
	beq.b loc_02276c
	move.b #-$78,($278,a4)
	bra.b loc_022772

loc_02276c:
	move.b #$44,($278,a4)

loc_022772:
	move.l (a7)+,d0
	cmp.l ($2a,a4),d0
	bne.w loc_022788
	tst.l ($2a,a4)
	beq.w loc_022788
	bsr.w loc_0226c0

loc_022788:
	lea loc_200000,a0
	moveq #0,d0
	move.w ($2d8,a4),d0
	lsl.l #2,d0
	movea.l (a0,d0.l),a0
	move.l a0,($2e2,a4)
	movea.l ($1d6,a4),a0
	moveq #0,d0
	move.w ($2da,a4),d0
	lsl.l #2,d0
	movea.l (a0,d0.l),a0
	move.l a0,($2dc,a4)
	rts

;--------------------------
loc_0227b4:
	move.w ($2da,a4),-(a7)

loc_0227b8:
	clr.w ($2d4,a4)
	movea.l ($2d0,a4),a0
	bsr.w loc_0227e6
	move.l a0,($2d0,a4)
	tst.w ($2d4,a4)
	beq.b loc_0227b8
	move.w (a7)+,d0
	cmp.w ($2da,a4),d0
	beq.b loc_0227de
	move.b #-$78,($278,a4)
	bra.b loc_0227e4

loc_0227de:
	move.b #$44,($278,a4)

loc_0227e4:
	bra.b loc_022788

loc_0227e6
	tst.w (a0)
	bmi.w loc_02282a
	move.w (a0)+,($2d4,a4)
	move.w (a0)+,($2d8,a4)
	move.w (a0)+,($2da,a4)
	move.b (a0)+,($2e0,a4)
	tst.b (a0)+
	beq.b loc_02280e
	move.w (a0)+,($2e6,a4)
	move.w (a0)+,($2e8,a4)
	move.w (a0)+,($2ea,a4)
	bra.b loc_02281a

loc_02280e:
	clr.w ($2e6,a4)
	clr.w ($2e8,a4)
	clr.w ($2ea,a4)

loc_02281a:
	addq.w #1,($2d6,a4)
	bset #0,($2e1,a4)
	sf d0
	bra.w loc_022850

loc_02282a:
	movem.l d1-d7/a1-a3,-(a7)
	move.w (a0)+,d0
	andi.w #$7fff,d0
	ext.l d0
	lsl.l #2,d0
	lea loc_0904ee,a1
	movea.l (a1,d0.l),a1
	jsr (a1)
	movem.l (a7)+,d1-d7/a1-a3
	bset #4,($2e1,a4)
	st d0

loc_022850:
	tst.b d0
	rts

;--------------------------
loc_022854:;animation end command
	subq.w #2,a0
	move.w #1,($2d4,a4)
	bset #2,($2e1,a4)
	rts

;--------------------------
loc_022864:
	clr.w ($2d6,a4)
	move.w (a0)+,d0
	movea.l (a0),a0
	tst.w d0
	beq.w loc_022894

loc_022872:
	move.l d0,-(a7)
	bsr.w loc_0227e6
	move.l (a7)+,d0
	btst #1,($2e1,a4)
	bne.w loc_022894
	btst #2,($2e1,a4)
	bne.w loc_022894
	cmp.w ($2d6,a4),d0
	bne.b loc_022872

loc_022894
	bset #1,($2e1,a4)
	rts

;--------------------------
loc_02289c:
	movem.l a1/a3,-(a7)
	subq.w #8,a7
	clr.l (a7)
	clr.l (4,a7)
	lea (p1ma5,a5),a3
	tst.b d0
	bpl.w loc_0228b6
	lea (p2ma5,a5),a3

loc_0228b6:
	moveq #0,d0
	btst #6,($249,a3)
	bne.w loc_0229b0

;extra14
;	tst.b extraflag
;	bne 22f0e
	bra.b extra14skip

	btst #4,($249,a3)
	bne.w loc_0229b0
	tst.b d1
	bpl.w loc_0228dc

extra14skip:
	btst #3,($249,a3)
	bne.w loc_0228e4

loc_0228dc:
	tst.w ($2bc,a3)
	bne.w loc_0229b0

loc_0228e4:
	move.b ($249,a3),d0
	beq.w loc_022938
	andi.b #$17,d0
	bne.w loc_022938
	btst #7,($25f,a3)
	bne.w loc_02290c
	btst #5,($25e,a3)
	bne.w loc_02291a
	bra.w loc_022938

loc_02290c:
	btst #7,($88,a4)
	beq.w loc_0229b0
	bra.w loc_022938

loc_02291a:
	btst #7,($88,a4)
	bne.w loc_022938
	btst #5,($87,a4)
	bne.w loc_022938
	btst #5,($24a,a3)
	beq.w loc_0229b0

loc_022938:
	ori.b #$80,($277,a3)
	swap d2
	swap d3
	move.w ($20e,a3),d0
	sub.w d2,d0
	tst.b d3
	bpl.w loc_022950
	neg.w d0

loc_022950:
	move.w d0,d2
	move.b ($208,a3),d0
	eor.b d0,d3
	swap d2
	swap d3
	move.w ($212,a3),d0
	sub.w d2,d0
	tst.b d3
	bpl.w loc_02296a
	neg.w d0

loc_02296a:
	move.w d0,d2
	tst.l ($2dc,a3)
	beq.w loc_0229b0
	movea.l ($2dc,a3),a1
	moveq #0,d0

loc_02297a:
	move.b (a1)+,d1
	beq.w loc_0229b0
	not.b d1
	or.b ($278,a3),d1
	not.b d1
	beq.w loc_0229ac
	movem.l d0-d1,-(a7)
	movem.w (a0),d4-d7
	bsr.w loc_022a58
	movem.l (a7)+,d0-d1
	beq.w loc_0229ac
	tst.b d0
	bne.w loc_0229aa
	movem.w d4-d7,(a7)

loc_0229aa:
	or.b d1,d0

loc_0229ac:
	addq.w #4,a1
	bra.b loc_02297a

loc_0229b0:
	movem.w (a7)+,d4-d7
	movem.l (a7)+,a1/a3
	tst.b d0
	rts

;--------------------------
;Collison Check?
loc_0229bc:
	move.w (0,a0),d4
	move.w (2,a0),d5
	move.w (4,a0),d6
	move.w (6,a0),d7
	move.w d2,d0
	move.w d2,d1
	tst.b d3
	bmi.b loc_0229de
	add.w (0,a1),d0
	add.w (2,a1),d1
	bra.b loc_0229e6

loc_0229de:
	sub.w (2,a1),d0
	sub.w (0,a1),d1

loc_0229e6:
	cmp.w d5,d0
	bge.w loc_022a54
	cmp.w d4,d1
	ble.w loc_022a54
	cmp.w d0,d4
	bge.w loc_0229fa
	move.w d0,d4

loc_0229fa:
	cmp.w d1,d5
	ble.w loc_022a02
	move.w d1,d5

loc_022a02:
	swap d2
	move.w d2,d0
	move.w d2,d1
	swap d2
	swap d3
	tst.b d3
	bmi.b loc_022a1a
	add.w (4,a1),d0
	add.w (6,a1),d1
	bra.b loc_022a22

loc_022a1a:
	sub.w (6,a1),d0
	sub.w (4,a1),d1

loc_022a22:
	swap d3
	cmp.w d7,d0
	bge.w loc_022a54
	cmp.w d6,d1
	ble.w loc_022a54
	cmp.w d0,d6
	bge.w loc_022a38
	move.w d0,d6

loc_022a38:
	cmp.w d1,d7
	ble.w loc_022a40
	move.w d1,d7

loc_022a40:
	move.w d5,d0
	sub.w d4,d0
	add.w d7,d0
	sub.w d6,d0
	cmpi.w #$10,d0
	blt.w loc_022ae8
	moveq #-1, d0
	rts

loc_022a54:
	moveq #0,d0
	rts

;--------------------------
loc_022a58:
	move.b (0,a1),d0
	ext.w d0
	add.w d0,d0
	move.b (1,a1),d1
	ext.w d1
	add.w d1,d1
	tst.b d3
	bpl.b loc_022a72
	exg d0,d1
	neg.w d0
	neg.w d1

loc_022a72:
	add.w d2,d0
	add.w d2,d1
	cmp.w d5,d0
	bge.w loc_022ae8
	cmp.w d4,d1
	ble.w loc_022ae8
	cmp.w d0,d4
	bge.w loc_022a8a
	move.w d0,d4

loc_022a8a:
	cmp.w d1,d5
	ble.w loc_022a92
	move.w d1,d5

loc_022a92:
	move.b (2,a1),d0
	ext.w d0
	add.w d0,d0
	move.b (3,a1),d1
	ext.w d1
	add.w d1,d1
	swap d3
	tst.b d3
	bpl.b loc_022aae
	exg d0,d1
	neg.w d0
	neg.w d1

loc_022aae:
	swap d3
	swap d2
	add.w d2,d0
	add.w d2,d1
	swap d2
	cmp.w d7,d0
	bge.w loc_022ae8
	cmp.w d6,d1
	ble.w loc_022ae8
	cmp.w d0,d6
	bge.w loc_022acc
	move.w d0,d6

loc_022acc:
	cmp.w d1,d7
	ble.w loc_022ad4
	move.w d1,d7

loc_022ad4:
	move.w d5,d0
	sub.w d4,d0
	add.w d7,d0
	sub.w d6,d0
	cmpi.w #$10,d0
	blt.w loc_022ae8
	moveq #-1,d0
	rts

;--------------------------
loc_022ae8:
	moveq #0,d0
	rts

;--------------------------
;attack
;--------------------------
loc_022aec:
	tst.b (-$3e0,a5)
	bne.w loc_022c0e
	tst.b (1,a4)
	bmi.w loc_022b24
	tst.w (-$3da,a5)
	bgt.w loc_022b30
	move.w ($266,a4),d0
	add.w d0,d0
	add.w d0,($266,a4)
	move.w ($268,a4),d0
	add.w d0,d0
	add.w d0,($268,a4)
	move.w ($26a,a4),d0
	add.w d0,d0
	add.w d0,($26a,a4)
	bra.b loc_022b30

loc_022b24:
	move.w (-$3da,a5),d0
	or.w (-$3d8,a5),d0
	beq.w loc_022c0e

;23170
;extra15
;	tst.b extraflag
;	bne tonewmove
;	code
;
;tonewmove:
	move.w (-$3da,a5),d0
	or.w (-$3d8,a5),d0
	beq.w loc_022c48
	bra.b extra15skip

loc_022b30:
	tst.b (-$3dd,a5)
	bne.w loc_022c48

extra15skip:
	tst.w ($1f2,a4)
	bmi.w loc_022c48
	bsr.w loc_022fa4
	move.w ($28c,a4),d1
	subq.w #1,d1
	ble.w loc_022b58
	addi.w #$10,d1
	ext.l d0
	lsl.l #4,d0
	divu.w d1,d0

loc_022b58:;231a8
	btst #7,($25f,a4)
	bne.w loc_022b96
	btst #6,($25e,a4)
	bne.w loc_022b76
	btst #5,($25e,a4)
	bne.w loc_022b96

loc_022b76:
	cmpi.w #$a00,($1f2,a4)
	bgt.w loc_022b96
	move.w #$a00,d1
	sub.w ($1f2,a4),d1
	mulu.w #$33,d1
	asr.l #8,d1
	sub.w d1,d0
	bgt.b loc_022b96
	move.w #1,d0

loc_022b96:
	bsr.w loc_022f20
	move.w ($1f2,a4),d1
	sub.w d0,($1f2,a4)
	move.w ($1f2,a4),d0
	bmi.w loc_022c18
	btst #7,($25f,a4)
	bne.b loc_022bcc
	asr.w #6,d0
	asr.w #6,d1
	cmp.w d1,d0
	blt.b loc_022bca
	subq.w #1,d1
	bmi.w loc_022c18
	asl.w #6,d1
	addi.w #$20,d1
	move.w d1,($1f2,a4)

loc_022bca:
	bra.b loc_022be2

loc_022bcc:
	cmp.w d1,d0
	blt.b loc_022be2
	move.w d1,d0
	asr.w #6,d0
	ble.w loc_022c18
	subq.w #1,d1
	bmi.w loc_022c18
	move.w d1,($1f2,a4)

loc_022be2:
	move.w ($26a,a4),d0
	move.w #$100,d1
	sub.w ($1fe,a4),d1
	mulu.w d1,d0
	lsr.l #8,d0
	sub.w d0,($1f8,a4)
	bmi.w loc_022bfe
	bra.w loc_022c48

loc_022bfe:
	move.w #-1,($1f8,a4)
	addi.w #$bb8,($26c,a4)
	bra.w loc_022c48

loc_022c0e:
	clr.w ($26c,a4)
	clr.w ($1f8,a4)
	bra.b loc_022c48

loc_022c18:
	btst #7,($25f,a4)
	bne.b loc_022c30
	btst #5,($25e,a4)
	bne.b loc_022c38
	addi.w #$3e8,($26c,a4)
	bra.b loc_022c3e

loc_022c30:
	addi.w #$4e20,($26c,a4)
	bra.b loc_022c3e

loc_022c38:
	addi.w #$2710,($26c,a4)

loc_022c3e:
	clr.w ($1f8,a4)
	move.w #-1,($1f2,a4)

loc_022c48:
	clr.l d0
	move.w ($26c,a4),d0
	tst.b (1,a3)
	bpl.w loc_022c62
	tst.b (1,a4)
	bmi.w loc_022c62
	add.l d0,($18,a3)

loc_022c62:
	tst.b ($249,a4)
	beq.w loc_022c82
	btst #7,($25f,a4)
	beq.w loc_022c82
	clr.w d0
	move.b ($261,a4),d0
	add.w d0,($202,a3)
	bra.w loc_022c8e

loc_022c82:
	clr.w d0
	move.b ($261,a4),d0
	lsl.w #2,d0
	add.w d0,($202,a3)

loc_022c8e:;2330a
	clr.w d0
	move.b ($261,a4),d0

;extra16
;	tst.b extraflag
;	beq btst#5
	lsl.w #2,d0

	btst #5,($25e,a4)
	beq.b loc_022c9e
	addq.w #4,d0

loc_022c9e:;23322
	add.w d0,($202,a4)
	clr.w d0
	move.b ($262,a4),d0
	add.w d0,($28c,a4)
	clr.b ($261,a4)
	clr.b ($262,a4)
	clr.w ($266,a4)
	clr.w ($268,a4)
	clr.w ($26a,a4)
	clr.w ($26c,a4)
	rts

;--------------------------
loc_022cc6:;2334a
	move.w (-$3da,a5),d0
	or.w (-$3d8,a5),d0
	beq.w loc_022c0e

;extra17
;	tst extraflag
;	bne 
	bra.b extra17skip

	tst.b (-$3dd,a5)
	bne.w loc_022c48

extra17skip:
	tst.w ($1f2,a4)
	bmi.w loc_022c48
	bsr.w loc_022fa4
	lsr.w #2,d0
	btst #7,($25f,a4)
	bne.b loc_022cfa
	btst #6,($25e,a4)
	beq.b loc_022cfa
	lsr.w #1,d0

loc_022cfa:
	cmpi.w #$a00,($1f2,a4)
	bgt.w loc_022d38
	btst #7,($25f,a4)
	bne.b loc_022d24
	move.w #$a00,d1
	sub.w ($1f2,a4),d1
	mulu.w #$33,d1
	asr.l #8,d1
	sub.w d1,d0
	bgt.b loc_022d22
	move.w #1,d0

loc_022d22:
 	bra.b loc_022d38

loc_022d24:
	move.w ($1f2,a4),d1
	addi.w #$140,d1
	mulu.w d1,d0
	addi.l #$5a0,d0
	divu.w #$b40,d0

loc_022d38:
	bsr.w loc_022f20
	move.w ($1f2,a4),d1
	sub.w d0,($1f2,a4)
	move.w ($1f2,a4),d0
	bmi.w loc_022c3e
	btst #7,($25f,a4)
	bne.b loc_022d6e
	asr.w #6,d0
	asr.w #6,d1
	cmp.w d1,d0
	blt.b loc_022d6c
	subq.w #1,d1
	bmi.w loc_022c3e
	asl.w #6,d1
	addi.w #$20,d1
	move.w d1,($1f2,a4)

loc_022d6c:
	bra.b loc_022d86

loc_022d6e:
	cmp.w d1,d0
	blt.b loc_022d86
	move.w d1,d0
	asr.w #6,d0
	tst.w d0
	ble.w loc_022c3e
	subq.w #1,d1
	bmi.w loc_022c3e
	move.w d1,($1f2,a4)

loc_022d86:
	tst.b ($249,a4)
	beq.w loc_022da8
	btst #7,($25f,a4)
	beq.w loc_022da8
	clr.w d0
	move.b ($261,a4),d0
	lsr.w #1,d0
	add.w d0,($202,a3)
	bra.w loc_022db4

loc_022da8:;23458
	clr.w d0
	move.b ($261,a4),d0
	add.w d0,d0
	add.w d0,($202,a3)

loc_022db4:
	clr.w d0
	move.b ($261,a4),d0

;extra18
;	lsr.w #1,d0
	lsr.w #2,d0
	btst #5,($25e,a4)
	beq.b loc_022dc6
	addq.w #4,d0

loc_022dc6:
	add.w d0,($202,a4)

loc_022dca:
	clr.b ($261,a4)
	clr.b ($262,a4)
	clr.w ($266,a4)
	clr.w ($268,a4)
	clr.w ($26a,a4)
	clr.w ($26c,a4)
	rts

;--------------------------
loc_022de4:
;extra19
;	tst.b extraflag
;	beq notextra19
	bsr.w loc_022aec
	tst.w ($1f2,a4)
	bmi.w extra19ifminus
	tst.w ($1f8,a4)
	bmi.w extra19ifminus;c

;notextra19
	tst.b (-$3e0,a5)
	bne.w loc_022eee
	tst.b (1,a4)
	bmi.w loc_022e1c
	tst.w (-$3da,a5)
	bgt.w loc_022e28
	move.w ($266,a4),d0
	add.w d0,d0
	add.w d0,($266,a4)
	move.w ($268,a4),d0
	add.w d0,d0
	add.w d0,($268,a4)
	move.w ($26a,a4),d0
	add.w d0,d0
	add.w d0,($26a,a4)
	bra.b loc_022e28

loc_022e1c:
	move.w (-$3da,a5),d0
	or.w (-$3d8,a5),d0
	beq.w loc_022eee

loc_022e28:
;extra20
;	tst.b extraflag
;	bne extraskip20
;	tst.b (-$3dd,a5)
;	bne.w loc_022eee

;extraskip20
	move.w (-$3da,a5),d0
	or.w (-$3d8,a5),d0
	beq.w loc_022c48

	tst.w ($1f2,a4)
	bmi.w loc_022eee
	bsr.w loc_022fa4
	move.w ($28c,a4),d1
	subq.w #1,d1
	ble.w loc_022e50
	addi.w #$10,d1
	ext.l d0
	lsl.l #4,d0
	divu.w d1,d0

loc_022e50:
	btst #7,($25f,a4)
	bne.w loc_022e8e
	btst #6,($25e,a4)
	bne.w loc_022e6e
	btst #5,($25e,a4)
	bne.w loc_022e8e

loc_022e6e:
	cmpi.w #$a00,($1f2,a4)
	bgt.w loc_022e8e
	move.w #$a00,d1
	sub.w ($1f2,a4),d1
	mulu.w #$33,d1
	asr.l #8,d1
	sub.w d1,d0
	bgt.b loc_022e8e
	move.w #1,d0

loc_022e8e:
	bsr.w loc_022f20
	move.w ($1f2,a4),d2
	move.w d2,d1
	sub.w d0,d2
	move.w d2,d0
	bmi.w loc_022f0a
	btst #7,($25f,a4)
	bne.b loc_022ec0
	asr.w #6,d0
	asr.w #6,d1
	cmp.w d1,d0
	blt.b loc_022ebe
	subq.w #1,d1
	bmi.w loc_022f0a
	asl.w #6,d1
	addi.w #$20,d1
	move.w d1,d2

loc_022ebe:
	bra.b loc_022ed4

loc_022ec0:
	cmp.w d1,d0
	blt.b loc_022ed4
	move.w d1,d0
	asr.w #6,d0
	ble.w loc_022f0a
	subq.w #1,d1
	bmi.w loc_022f0a
	move.w d1,d2

loc_022ed4:
	move.w ($1f8,a4),d2
	move.w ($26a,a4),d0
	move.w #$100,d1
	sub.w ($1fe,a4),d1
	mulu.w d1,d0
	lsr.l #8,d0
	sub.w d0,d2
	bmi.w loc_022ef2

loc_022eee:
	clr.w d0
	rts

loc_022ef2:
	move.w #-1,($1f8,a4)
	bsr.w loc_022aec
	tst.w ($1f2,a4)
	bmi.w loc_022f0a
	move.w #-1,d0
	rts

loc_022f0a:
	clr.w ($1f8,a4)
	move.w #-1,($1f2,a4)
	jsr loc_022aec

extra19ifminus:
	move.w #-1,d0
	rts

;--------------------------
;Damage Calc
loc_022f20:
	movem.l d1-d3/a0,-(a7)
	move.w ($1fc,a4),d2
	move.w ($1a8,a4),d1
	subi.w #$b4,d1
	bpl.b loc_022f34
	clr.w d1

loc_022f34:
	btst #7,($25f,a4)
	beq.b loc_022f4c
	subi.w #$80,d2
	asr.w #1,d2
	addi.w #$80,d2
	move.w d1,d3
	lsr.w #2,d3
	sub.w d3,d1

loc_022f4c:
	lsr.w #5,d1
	addi.w #$100,d1
	sub.w d2,d1
	cmpi.w #$100,d1
	ble.b loc_022f5e
	move.w #$100,d1

loc_022f5e:
	move.b (StanimaSetting,a5),d2
	ext.w d2
	add.w d2,d2

;extra21
	lea loc_023c20(pc),a0
	tst.b (-$f37,a5)
	beq.b loc_022f74
	lea loc_023c2a(pc),a0

loc_022f74:
	move.w (a0,d2.w),d2
	mulu.w d2,d1
	muls.w d1,d0
	lsl.l #4,d0
	swap d0
	move.w d0,d1
	bmi.w loc_022f9e
	mulu.w ($1a8,a4),d1
	addi.l #$500,d1
	divu.w #$a00,d1
	sub.w d1,($1a8,a4)
	bpl.b loc_022f9e
	clr.w ($1a8,a4)

loc_022f9e:
	movem.l (a7)+,d1-d3/a0
	rts

;--------------------------
loc_022fa4:
	move.w ($266,a4),d0
	tst.w ($1aa,a3)
	bmi.w loc_022fd0
	cmpi.w #$a00,($1aa,a3)
	bge.b loc_022fd0
	move.w #$a00,d1
	sub.w ($1aa,a3),d1
	mulu.w ($268,a4),d1
	addi.l #$780,d1
	divu.w #$f00,d1
	add.w d1,d0

loc_022fd0:
	rts

;--------------------------
loc_022fd2:
	movem.l a3-a4,-(a7)
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	bsr.w loc_022fee
	dc.w $c94b ;exg a4,a3 snasm error always does exg a3,a4
	bsr.w loc_022fee
	movem.l (a7)+,a3-a4
	rts

loc_022fee:
	tst.b (1,a4)
	bpl.w loc_023002
	tst.b (1,a3)
	bmi.w loc_023002
	add.l d0,($18,a4)

loc_023002:
	rts

;--------------------------
loc_023004:
	tst.b (1,a4)
	bpl.w loc_023018
	tst.b (1,a3)
	bmi.w loc_023018
	add.l d0,($18,a4)

loc_023018:
	rts

;--------------------------
loc_02301a:
	move.w d0,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	rts

loc_023026:
	move.w d0,-(a7)
	bsr.w loc_023056
	cmpi.w #$38,d0
	bgt.w loc_023052
	move.w (a7),d0

	move.w d0,-(a7)
	jsr loc_006fec
	addq.l #2,a7

	addq.w #8,(-$370,a5)
	cmpi.w #$40,(-$370,a5)
	ble.b loc_023052
	move.w #$40,(-$370,a5)

loc_023052:
	move.w (a7)+,d0
	rts

;--------------------------
loc_023056:
	move.w (-$370,a5),d0
	tst.w (-$378,a5)
	beq.b loc_023064
	addi.w #$10,d0

loc_023064:
	tst.w (-$376,a5)
	beq.b loc_02306e
	addi.w #$10,d0

loc_02306e:
	rts

;--------------------------
loc_023070:
	clr.w (-$378,a5)
	clr.w (-$376,a5)
	clr.w (-$374,a5)
	clr.w (-$372,a5)
	clr.w (-$370,a5)
	clr.w (-$368,a5)
	clr.w (-$366,a5)
	clr.w (-$364,a5)
	clr.w (-$362,a5)
	clr.w (-$384,a5)
	clr.w (-$382,a5)
	clr.w (-$380,a5)
	clr.w (-$37e,a5)
	clr.w (-$37c,a5)
	clr.w (-$37a,a5)
	rts

;--------------------------
loc_0230ae:
	subq.w #1,(-$374,a5)
	bpl.b loc_0230bc
	clr.w (-$374,a5)
	clr.w (-$378,a5)

loc_0230bc:
	subq.w #1,(-$372,a5)
	bpl.b loc_0230ca
	clr.w (-$372,a5)
	clr.w (-$376,a5)

loc_0230ca:
	subq.w #1,(-$370,a5)
	bpl.b loc_0230d4
	clr.w (-$370,a5)

loc_0230d4:
	subq.w #1,(-$37c,a5)
	bpl.b loc_0230de
	clr.w (-$37c,a5)

loc_0230de:
	subq.w #1,(-$37a,a5)
	bpl.b loc_0230e8
	clr.w (-$37a,a5)

loc_0230e8:
	movem.l a3-a4,-(a7)
	lea (p1ma5,a5),a4
	lea (p2ma5,a5),a3
	tst.w (-$384,a5)
	beq.w loc_02311e
	btst #3,($2e1,a4)
	bne.w loc_02311e
	tst.w ($2ba,a4)
	bne.w loc_02311e
	bsr.w loc_023294
	move.w (-$384,a5),d0
	bsr.w loc_02301a
	clr.w (-$384,a5)

loc_02311e:
	tst.w (-$380,a5)
	beq.w loc_023132
	move.w (-$380,a5),d0
	bsr.w loc_023178
	clr.w (-$380,a5)

loc_023132:
	exg a3,a4
	tst.w (-$382,a5)
	beq.w loc_02315e
	btst #3,($2e1,a4)
	bne.w loc_02315e
	tst.w ($2ba,a4)
	bne.w loc_02315e
	bsr.w loc_023294
	move.w (-$382,a5),d0
	bsr.w loc_02301a
	clr.w (-$382,a5)

loc_02315e:
	tst.w (-$37e,a5)
	beq.w loc_023172
	move.w (-$37e,a5),d0
	bsr.w loc_023178
	clr.w (-$37e,a5)

loc_023172:
	movem.l (a7)+,a3-a4
	rts

;--------------------------
loc_023178:
	tst.b (0,a4)
	bmi.w loc_0231be
	tst.w (-$378,a5)
	beq.w loc_02318c
	bsr.w loc_0232ee

loc_02318c:
	tst.w d0
	beq.w loc_0231fc
	movem.l a0,-(a7)
	lea loc_090a3c,a0
	add.w d0,d0
	move.w (a0,d0.w),d0
	movem.l (a7)+,a0
	move.w d0,(-$378,a5)
	move.w #$28,(-$374,a5)
	
	move.w d0,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	
	bra.w loc_0231fc

loc_0231be:
	tst.w (-$376,a5)
	beq.w loc_0231ca
	bsr.w loc_023334

loc_0231ca:
	tst.w d0
	beq.w loc_0231fc
	movem.l a0,-(a7)
	lea loc_090a3c,a0
	addi.w #$91,d0
	add.w d0,d0
	move.w (a0,d0.w),d0
	movem.l (a7)+,a0
	move.w d0,(-$376,a5)
	move.w #$28,(-$372,a5)

	move.w d0,-(a7)
	jsr loc_006fec
	addq.l #2,a7

loc_0231fc:
	rts

;---------------------------
extra23724:
	move.w d0,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	rts

;---------------------------
loc_0231fe:
	movem.l d0/a1,-(a7)
	move.b ($249,a4),d0
	andi.b #$82,d0
	bne.w loc_02327e
	lea loc_023284(pc),a1
	move.b ($25f,a4),d0
	andi.w #7,d0
	add.w d0,d0
	adda.w d0,a1
	jsr RandomNumberGod
	andi.w #$7fff,d0
	cmp.w (a1),d0
	bcc.w loc_02327e
	tst.b (0,a4)
	bmi.w loc_02325a
	tst.w (-$37c,a5)
	bne.w loc_02327e
	move.w ($14,a4),d0
	andi.w #$f,d0
	add.w d0,d0
	move.w (a0,d0.w),d0
	move.w d0,(-$380,a5)
	move.w #$10,(-$37c,a5)
	bra.w loc_02327e

loc_02325a:
	tst.w (-$37a,a5)
	bne.w loc_02327e
	move.w ($14,a4),d0
	andi.w #$f,d0
	add.w d0,d0
	move.w (a0,d0.w),d0
	move.w d0,(-$37e,a5)
	move.w #$10,(-$37a,a5)
	bra.w loc_02327e

loc_02327e:
	movem.l (a7)+,d0/a1
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_023284:
	dc.w $1000,$1000,$2000,$3000,$4000,$5000,$6000,$7000

;==========================
loc_023294:
	tst.b (0,a4)
	bmi.w loc_0232a8
	clr.w (-$368,a5)
	clr.w (-$366,a5)
	bra.w loc_0232ee

loc_0232a8:
	clr.w (-$364,a5)
	clr.w (-$362,a5)
	bra.w loc_023334

;--------------------------
loc_0232b4:
	move.w (-$368,a5),d0
	beq.w loc_0232cc
	subq.w #1,(-$366,a5)
	bgt.w loc_0232d0
	bsr.w loc_02301a
	clr.w (-$368,a5)

loc_0232cc:
	clr.w (-$366,a5)

loc_0232d0:
	move.w (-$364,a5),d0
	beq.w loc_0232e8
	subq.w #1,(-$362,a5)
	bgt.w loc_0232ec
	bsr.w loc_02301a
	clr.w (-$364,a5)

loc_0232e8:
	clr.w (-$362,a5)

loc_0232ec:
	rts

;--------------------------
loc_0232ee:
	move.w d0,-(a7)
	move.w (-$378,a5),d0
	cmpi.w #$c0,d0
	bcs.w loc_023330
	cmpi.w #$ff,d0
	bhi.w loc_02330c
	bsr.w loc_02337a
	bra.w loc_02331a

loc_02330c:
	move.w d0,d1
	andi.w #$f0ff,d0
	andi.w #$e00,d1
	lsr.w #1,d1
	or.w d1,d0

loc_02331a:
	move.w d0,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	clr.w (-$378,a5)
	clr.w (-$374,a5)
	clr.w (-$380,a5)

loc_023330:
	move.w (a7)+,d0
	rts

;--------------------------
loc_023334:
	move.w d0,-(a7)
	move.w (-$376,a5),d0
	cmpi.w #$c0,d0
	bcs.w loc_023376
	cmpi.w #$ff,d0
	bhi.w loc_023352
	bsr.w loc_02337a
	bra.w loc_023360

loc_023352:
	move.w d0,d1
	andi.w #$f0ff,d0
	andi.w #$e00,d1
	lsr.w #1,d1
	or.w d1,d0

loc_023360:
	move.w d0,-(a7)
	jsr loc_006fec
	addq.l #2,a7
	clr.w (-$376,a5)
	clr.w (-$372,a5)
	clr.w (-$37e,a5)

loc_023376:
	move.w (a7)+,d0
	rts

loc_02337a:
	subi.w #$c0,d0
	addi.w #$1420,d0
	rts

;--------------------------
loc_023384:
 	movem.l d0-d7/a1-a3,-(a7)

loc_023388:
	move.w (a0),d0
	beq.w loc_0233ba
	bpl.w loc_0233bc
	andi.w #$7fff,d0
	cmpi.w #$36,d0
	bcs.w loc_0233bc
	cmpi.w #$4a,d0
	bcc.w loc_0233bc
	addq.w #2,a0
	ext.l d0
	lsl.l #2,d0
	lea loc_0904ee,a1
	movea.l (a1,d0.l),a1
	jsr (a1)
	bra.b loc_023388

loc_0233ba:
	addq.w #2,a0

loc_0233bc
	movem.l (a7)+,d0-d7/a1-a3
	rts

loc_0233c2
	movea.l (a0)+,a0
	rts

loc_0233c6:
	move.l (a0)+,($86,a4)
	rts

loc_0233cc:
	move.l (a0)+,($2d0,a4)
	movem.l a0,-(a7)
	movea.l ($2d0,a4),a0
	clr.w d0
	bsr.w loc_0226f0
	movem.l (a7)+,a0
	rts

;--------------------------
loc_0233e4:
	move.b (a0)+,d0
	and.b d0,($248,a4)
	move.b (a0)+,d0
	or.b d0,($248,a4)
	rts

;--------------------------
loc_0233f2:
	move.b (a0)+,d0
	and.b d0,($24a,a4)
	move.b (a0)+,d0
	or.b d0,($24a,a4)
	rts

;--------------------------
loc_023400:
	move.b (a0)+,d0
	ext.w d0
	add.w d0,d0
	move.w d0,($238,a4)
	move.b (a0)+,d0
	ext.w d0
	add.w d0,d0
	move.w d0,($23a,a4)
	move.b (a0)+,d0
	ext.w d0
	add.w d0,d0
	move.w d0,($23c,a4)
	move.b (a0)+,d0
	ext.w d0
	add.w d0,d0
	move.w d0,($23e,a4)
	rts

;--------------------------
loc_02342a:
	move.w (a0)+,d0
	movem.l a0,-(a7)
	movea.l ($1e6,a4),a0
	movea.l (a0,d0.w),a0
	jsr loc_023384
	movem.l (a7)+,a0
	rts

;--------------------------
loc_023444:
	clr.b ($24c,a4)
	clr.b ($24d,a4)
	clr.b ($24e,a4)
	clr.b ($24f,a4)
	clr.b ($250,a4)
	clr.w ($254,a4)
	clr.w ($256,a4)
	clr.w ($258,a4)
	clr.w ($25a,a4)
	clr.w ($25c,a4)
	clr.w ($2c0,a4)
	clr.w ($2c2,a4)
	clr.w ($2c8,a4)
	clr.w ($2ca,a4)
	clr.w ($2cc,a4)
	clr.w ($2c4,a4)
	sf ($2c6,a4)
	st ($2c7,a4)
	clr.b ($244,a4)
	clr.b ($245,a4)
	clr.w ($240,a4)
	clr.w ($242,a4)
	clr.w ($2b6,a4)
	clr.b ($2b4,a4)
	move.b #$88,($278,a4)
	clr.b ($2b8,a4)
	clr.b ($24b,a4)
	clr.w ($290,a4)
	clr.w ($292,a4)
	clr.b ($232,a4)
	clr.b ($233,a4)
	clr.b ($234,a4)
	clr.b ($235,a4)
	rts

;--------------------------
loc_0234cc:
	move.b ($24c,a4),d0
	addq.w #1,($27a,a4)
	move.b (a0)+,($24c,a4)
	andi.b #$bf,($24c,a4)
	ori.b #$8,($24c,a4)
	move.b (a0)+,($24d,a4)
	move.b (a0)+,($24e,a4)
	and.b (a0)+,d0
	andi.b #$80,d0
	or.b d0,($24c,a4)
	rts

;--------------------------
loc_0234f8:
	clr.w d0
	move.b (a0)+,d0
	lsl.w #6,d0
	move.w d0,($254,a4)
	clr.w d0
	move.b (a0)+,d0
	lsl.w #6,d0
	move.w d0,($256,a4)
	clr.w d0
	move.b (a0)+,d0
	lsl.w #6,d0
	move.w d0,($258,a4)
	clr.w d0
	move.b (a0)+,d0
	mulu.w #$64,d0
	move.w d0,($25a,a4)
	move.b (a0)+,($24f,a4)
	move.b (a0)+,($250,a4)
	rts

;--------------------------
loc_02352c:
	clr.w d0
	move.b (a0)+,d0
	move.w d0,($2c0,a4)
	move.b (a0)+,d0
	move.w d0,($2c2,a4)
	move.b (a0)+,d0
	move.w d0,($2c8,a4)
	move.b (a0)+,d0
	move.w d0,($2ca,a4)
	move.b (a0)+,d0
	move.w d0,($2cc,a4)
	tst.b (a0)+
	sne d0
	and.b d0,($2c7,a4)
	move.w ($2c8,a4),d0
	add.w ($2ca,a4),d0
	move.w d0,($2ca,a4)
	add.w ($2cc,a4),d0
	move.w d0,($2cc,a4)
	sub.w ($2c2,a4),d0
	move.w d0,($2c2,a4)
	move.w d0,($2c4,a4)
	sf ($2c6,a4)
	rts

;--------------------------
loc_02357a:
	move.b (a0)+,($244,a4)
	move.b (a0)+,($245,a4)
	move.b (a0)+,d0
	ext.w d0
	add.w d0,d0
	move.w d0,($240,a4)
	move.b (a0)+,d0
	ext.w d0
	add.w d0,d0
	move.w d0,($242,a4)
	rts 

;--------------------------
loc_023598:
	clr.w d0
	move.b (a0)+,d0
	move.w d0,($2c4,a4)
	move.b (a0)+,($2c6,a4)
	rts

;--------------------------
loc_0235a6:
	move.w (a0)+,($2bc,a4)
	rts

;--------------------------
loc_0235ac:
	move.w (a0)+,($2be,a4)
	rts

;--------------------------
loc_0235b2:
	move.w (a0)+,d0
	lsl.w #2,d0
	add.w d0,($202,a4)
	rts

;--------------------------
loc_0235bc:
	move.b (a0)+,d0
	ext.w d0
	add.w d0,d0
	move.w d0,($290,a4)
	move.b (a0)+,d0
	ext.w d0
	add.w d0,d0
	move.w d0,($292,a4)
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0235d2:;P1 Lifebar
	dc.w $8403,$8477,$8466,$8455,$8444,$8433,$8422,$8411
	dc.w $8487,$8477,$8466,$8455,$8444,$8433,$8422,$8411
	dc.w $8486,$8476,$8466,$8455,$8444,$8433,$8422,$8411
	dc.w $8485,$8475,$8465,$8455,$8444,$8433,$8422,$8411
	dc.w $8484,$8474,$8464,$8454,$8444,$8433,$8422,$8411
	dc.w $8483,$8473,$8463,$8453,$8443,$8433,$8422,$8411
	dc.w $8482,$8472,$8462,$8452,$8442,$8432,$8422,$8411
	dc.w $8481,$8471,$8461,$8451,$8441,$8431,$8421,$8411
	dc.w $8480,$8470,$8460,$8450,$8440,$8430,$8420,$8410
	dc.w $8401

loc_023664:;P2 Lifebar
	dc.w $940c,$9478,$9469,$945a,$944b,$943c,$942d,$941e
	dc.w $9488,$9478,$9469,$945a,$944b,$943c,$942d,$941e
	dc.w $9489,$9479,$9469,$945a,$944b,$943c,$942d,$941e
	dc.w $948a,$947a,$946a,$945a,$944b,$943c,$942d,$941e
	dc.w $948b,$947b,$946b,$945b,$944b,$943c,$942d,$941e
	dc.w $948c,$947c,$946c,$945c,$944c,$943c,$942d,$941e
	dc.w $948d,$947d,$946d,$945d,$944d,$943d,$942d,$941e
	dc.w $948e,$947e,$946e,$945e,$944e,$943e,$942e,$941e
	dc.w $948f,$947f,$946f,$945f,$944f,$943f,$942f,$941f
	dc.w $940e

loc_0236f6:;Meter GFX p1
	dc.w $ae60,$ae61,$ae62,$ae63,$ae64,$ae65,$ae66,$ae67
	dc.w $ae68,$ae0c

loc_02370a:;Meter GFX p2
	dc.w $be78,$be77,$be76,$be75,$be74,$be73,$be72,$be71
	dc.w $be70,$be20

loc_02371e:
	dc.l loc_0f00d8,loc_0f00f4,loc_0f0110,loc_0f012c

loc_02372e:
	dc.l loc_0f00d8,loc_0f01b8,loc_0f01d4,loc_0f01f0

loc_02373e:
	dc.l loc_0f0148,loc_0f0164,loc_0f0180,loc_0f019c

loc_02374e:
	dc.l loc_0f0148,loc_0f020c,loc_0f0228,loc_0f0244

loc_02375e:
	dc.l loc_024714,loc_024734,loc_024754,loc_024774
	dc.l loc_024794,loc_0247b4,loc_0247d4,loc_0247f4
	dc.l loc_024814,loc_024834,loc_024854,loc_024874
	dc.l loc_024894,loc_0248b4,loc_0248d4,loc_0248f4

loc_02379e:
	dc.l loc_024714,loc_024734,loc_024754,loc_024774
	dc.l loc_024914,loc_024934,loc_024954,loc_024974
	dc.l loc_024994,loc_0249b4,loc_0249d4,loc_0249f4
	dc.l loc_024a14,loc_024a34,loc_024a54,loc_024a74


loc_0237de:
	dc.l loc_0f0442,loc_0f037a,loc_0f0486,loc_0f04ea,loc_0f03ce


loc_0237f2:
	dc.l loc_024b34,loc_024b54,loc_024ab4,loc_024ad4
	dc.l loc_024b74,loc_024b94,loc_024bb4,loc_024bd4
	dc.l loc_024af4,loc_024b14

loc_02381a:
	dc.w $0003,$0000,$0000,$001e
	dc.w $0005,$0001,$0002,$001e
	dc.w $0008,$0002,$0004,$001e
	dc.w $000c,$0003,$0006,$001e
	dc.w $0014,$0004,$0008,$001e

loc_023842:
	dc.w $0f00,$1680,$1e00,$2580,$2d00,$3c00

loc_02384e:;Timer Numbers 10s
	dc.w $0740,$0742,$0744,$0746,$0748,$074a,$074c,$074e
	dc.w $0770,$0772

loc_023862:;Timer Numbers 01s
	dc.w $0774,$0776,$0778,$077a,$077c,$077e,$07a0,$07a2
	dc.w $07a4,$07a6
;
loc_023876:;WinPoint GFX Pointers for animation
	dc.l loc_0f00b4,loc_0f00a4,loc_0f0094,loc_0f0084
	dc.l loc_0f0074

;Life Name Tags
loc_02388a:
	dc.l loc_0efda4,loc_0efdc8,loc_0efdec,loc_0efe10
	dc.l loc_0efe34,loc_0efe58,loc_0efe7c,loc_0efea0
	dc.l loc_0efec4,loc_0efee8,loc_0efda4,loc_0efda4
	dc.l loc_0efda4,loc_0efda4,loc_0efda4,loc_0efda4

;Cpu Mirror Match Life Name Tags
loc_0238ca:
	dc.l loc_0eff0c,loc_0eff30,loc_0eff54,loc_0eff78
	dc.l loc_0eff9c,loc_0effc0,loc_0effe4,loc_0f0008
	dc.l loc_0f002c,loc_0f0050,loc_0eff0c,loc_0eff0c
	dc.l loc_0eff0c,loc_0eff0c,loc_0eff0c,loc_0eff0c

loc_02390a:
	dc.w $0002,$0406,$0820,$2224,$2628,$0001,$0203,$0405
	dc.w $4042,$4446,$4860,$6264,$6668,$0001,$0203,$0405

loc_02392a:
	dc.w $686a,$6c6e,$888a,$8c8e,$a8aa,$0001,$0203,$0405

loc_02393a:
	dc.b 'STAGE ',00
	even

loc_023942:
	dc.b 'ROUND ',00
	even

loc_02394a:
	dc.b 'BATTLE',00
	even

loc_023952:
	dc.w $1c22,$002a,$1c23,$002a,$1c24,$002c,$1c25,$0028
	dc.w $1c26,$002a,$1c27,$0028,$1c28,$0026,$1c29,$0028
	dc.w $1c2a,$002c,$1c2b,$002a


loc_02397a:;CharID
	dc.w $0000,$0001,$0002,$0003,$0004,$0005,$0006,$0007
	dc.w $0008,$0009,$0009,$0009,$0009,$0009,$0009,$0009


CharPalIDTBL:
;Button press colors
	dc.l CharTblPal0,CharTblPal1,CharTblPal2,CharTblPal3
	dc.l CharTblPal4,CharTblPal4,CharTblPal4,CharTblPal4

;character palettes
;palette0
CharTblPal0:
	dc.l ShoTblPal0,DaoTblPal0,loc_0465cc,loc_0522ac
	dc.l loc_05b180,loc_063ff6,loc_06cffe,loc_077064
	dc.l loc_080a2a,loc_0895da
	dc.l ShoTblPal0,ShoTblPal0,ShoTblPal0,ShoTblPal0
	dc.l ShoTblPal0,ShoTblPal0

;palette1
CharTblPal1:
	dc.l loc_035d1a,loc_03ecda,loc_046608,loc_0522f8
	dc.l loc_05b1c4,loc_064046,loc_06d052,loc_0770b8
	dc.l loc_080a2a,loc_08962e
	dc.l loc_035d1a,loc_035d1a,loc_035d1a,loc_035d1a
	dc.l loc_035d1a,loc_035d1a

;palette2
CharTblPal2:
	dc.l loc_035d5e,loc_03ed1a,loc_046644,loc_052344
	dc.l loc_05b208,loc_064096,loc_06d0a6,loc_07710c
	dc.l loc_080a2a,loc_089682
	dc.l loc_035d5e,loc_035d5e,loc_035d5e,loc_035d5e
	dc.l loc_035d5e,loc_035d5e

;palette3
CharTblPal3:
	dc.l loc_035da2,loc_03ed5a,loc_046680,loc_052390
	dc.l loc_05b24c,loc_0640e6,loc_06d0fa,loc_077160
	dc.l loc_080a2a,loc_0896d6
	dc.l loc_035da2,loc_035da2,loc_035da2,loc_035da2
	dc.l loc_035da2,loc_035da2

;palette4
CharTblPal4:
	dc.l loc_035de6,loc_03ed9a,loc_0466bc,loc_0523dc
	dc.l loc_05b290,loc_064136,loc_06d14e,loc_0771b4
	dc.l loc_080a2a,loc_08972a
	dc.l loc_035de6,loc_035de6,loc_035de6,loc_035de6
	dc.l loc_035de6,loc_035de6

loc_023afa:;Character program start Table
	dc.l ShoPRGStart,DaoPRGStart,ConPRGStart,TiaPRGStart
	dc.l RilPRGStart,AlsPRGStart,PiePRGStart,MahPRGStart
	dc.l BaiPRGStart,SaiPRGStart
	dc.l ShoPRGStart,ShoPRGStart,ShoPRGStart,ShoPRGStart
	dc.l ShoPRGStart,ShoPRGStart

loc_023b3a:;dummy shadow
	dc.w $0000

loc_023b3c:
	dc.w $007e,$0020,$0078,$0010,$0084,$0050,$0076,$0020
	dc.w $0076,$0040,$0074,$0000,$0076,$0010,$0082,$0040
	dc.w $0088,$0060,$0080,$0080,$0080,$0080,$0080,$0080
	dc.w $0080,$0080,$0080,$0080,$0080,$0080,$0080,$0080

loc_023b7c:
	dc.w $00,$00,$00,$00,$00,$00,$00,$00,$08,$10,$18,$20,$28,$30,$38,$48
	dc.w $29,$33,$3d,$48,$5b,$68,$90,$a0,$42,$5d,$5a,$68,$85,$98,$a8,$b8
	dc.w $4e,$5c,$6c,$7c,$90,$a0,$b0,$c0,$60,$70,$80,$90,$a0,$b0,$c0,$e0
	dc.w $6c,$7c,$8c,$9c,$ac,$bc,$cc,$ec,$87,$98,$a8,$b8,$c8,$d8,$e8,$f8
	dc.w $94,$a4,$b4,$c4,$d4,$e4,$f4,$ff,$a0,$b0,$c0,$d0,$e0,$f0,$ff,$ff
	dc.w $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

loc_023bd4:
	dc.w $0000,$0000,$ffd8,$fff0,$0000,$0000,$fff0,$0020
	dc.w $fff8,$0010,$0008,$0010,$0000,$0030,$0010,$0018
	dc.w $0008,$0030,$0000,$0000,$0000,$0000

loc_023c00:
	dc.w $fff4,$0000,$fff8,$0000,$fffc,$0000,$0000,$0010
	dc.w $0004,$0016,$0008,$001c,$000c,$0020,$0010,$0020

loc_023c20:
	dc.w $000d,$000e,$000f,$0010,$0011
;	dc.w $000d,$000f,$0011,$0013,$0015

loc_023c2a:
	dc.w $000c,$000d,$000e,$000f,$0010
;	dc.w $000c,$000e,$0010,$0011,$0012

loc_023c34:
	dc.w $ffc0,$ffc8,$ffd8,$ffd0,$ffa0,$ffd0,$0000,$ffe8
	dc.w $ffe8,$ffc8,$ffd8,$ffd0,$ffd0,$ffc0,$ffe8,$ffe0
	dc.w $ffb0,$ffd0,$ffe0,$ffd0,$ffc0,$ffa0,$0008,$0008
	dc.w $ffe0,$ffe8,$fff0,$ffd0,$ffa0,$ffd0,$ffe0,$ffe0

loc_023c74:
	dc.w $e2e2,$e2e2,$e2e2,$e2e2,$e6ea,$ecee,$f0f2,$f4f6
	dc.w $f8fa,$fcfe,$0000,$0202,$0404,$0606,$0608,$0808
	dc.w $0a0a,$0a0a,$0c0c,$0c0c,$0e0e,$0e0e,$1010,$1010
	dc.w $1212,$1212,$1212,$1414,$1414,$1414,$1616,$1616
	dc.w $1616,$1818,$1818,$1818,$181a,$1a1a,$1a1a,$1a1a
	dc.w $1c1a,$1a1a,$1a1a,$1a1a,$1e1e,$1e1e,$1e1e,$1e1e
	dc.w $1e1e,$1e1e,$1e1e,$1e1e,$1e1e,$1e1e,$1e1e,$1e1e

loc_023ce4:
	dc.w $e2e6,$eaec,$eeee,$f0f0,$f2f2,$f4f4,$f6f6,$f8f8
	dc.w $fafa,$fcfc,$fefe,$0000,$0202,$0404,$0606,$0808

loc_023d04:
	dc.l loc_080b2e,loc_080dae,loc_080dce,loc_080dee
	dc.l loc_080e0e,loc_080e2e,loc_080e4e,loc_080e6e

;--------------------------
loc_023d24:;hitsparks
	dc.l loc_023da8,loc_023dc8,loc_023de8,loc_023e08
	dc.l loc_023e28,loc_023e48,loc_023e68,loc_023e88
	dc.l loc_023ea8,loc_023ec8,loc_023ee8,loc_023f08
	dc.l loc_023fa8,loc_023fc8,loc_023fe8,loc_024008
	dc.l loc_024068,loc_024088,loc_0240a8,loc_0240c8
	dc.l loc_0240e8,loc_024108,loc_024128,loc_024148
	dc.l loc_024168,loc_024188,loc_0241a8,loc_0241c8
	dc.l loc_024248,loc_024288,loc_024208,loc_0241e8
	dc.l $00000000

loc_023da8:
	dc.w $0000,$0100,$0200,$0300,$0400,$0500,$0600,$0700
	dc.w $0811,$0932,$0a53,$0b74,$0c95,$0da6,$0ec7,$0fe8

loc_023dc8:
	dc.w $0000,$0300,$0500,$0700,$0900,$0b00,$0d00,$0f00
	dc.w $0f11,$0f22,$0f33,$0f44,$0f55,$0f66,$0f77,$0f88

loc_023de8:
	dc.w $0000,$0030,$0050,$0070,$0090,$00b0,$00d0,$00f0
	dc.w $01f1,$02f2,$03f3,$04f4,$05f5,$06f6,$07f7,$08f8

loc_023e08:
	dc.w $0000,$0003,$0005,$0007,$0009,$000b,$000d,$000f
	dc.w $011f,$022f,$033f,$044f,$055f,$066f,$077f,$088f

loc_023e28:
	dc.w $0000,$0330,$0550,$0770,$0990,$0bb0,$0dd0,$0ff0
	dc.w $0ff1,$0ff2,$0ff3,$0ff4,$0ff5,$0ff6,$0ff7,$0ff8

loc_023e48:
	dc.w $0000,$0033,$0055,$0077,$0099,$00bb,$00dd,$00ff
	dc.w $01ff,$02ff,$03ff,$04ff,$05ff,$06ff,$07ff,$08ff

loc_023e68:
	dc.w $0000,$0303,$0505,$0707,$0909,$0b0b,$0d0d,$0f0f
	dc.w $0f1f,$0f2f,$0f3f,$0f4f,$0f5f,$0f6f,$0f7f,$0f8f

loc_023e88:
	dc.w $0000,$0310,$0520,$0730,$0940,$0b50,$0d60,$0f70
	dc.w $0f81,$0f93,$0fa5,$0fb7,$0fc9,$0fdb,$0fed,$0fff

loc_023ea8:
	dc.w $0000,$0fff,$0fff,$0fff,$0fff,$0fff,$0fff,$0fff
	dc.w $0fff,$0fff,$0fff,$0fff,$0fff,$0fff,$0fff,$0fff

loc_023ec8:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

loc_023ee8:
	dc.w $0000,$0547,$0758,$0869,$097a,$0a8b,$0a9c,$0758
	dc.w $0768,$0879,$0a7a,$0a8a,$076a,$087b,$0a8c,$0a9d

loc_023f08:
	dc.w $3cff,$4900,$4b00,$4f30,$4f84,$1bdf,$1bdf,$1bdf
	dc.w $1bdf,$1bdf,$1bdf,$1bdf,$1bdf,$1bdf,$1bdf,$1bdf

loc_023f28:
	dc.w $0000,$5769,$276b,$577b,$598a,$6a99,$0bb8,$4ac7
	dc.w $1ad6,$49e7,$39e7,$17f7,$75e6,$06e6,$17a5,$4777

loc_023f48:
	dc.w $0000,$3697,$46b7,$37b7,$38a9,$599a,$0b8b,$1c7a
	dc.w $2d6a,$1e79,$6e79,$2f77,$7e65,$0e66,$2a57,$1777

loc_023f68:
	dc.w $0000,$6976,$1b76,$6b77,$6a98,$39a9,$08bb,$27ac
	dc.w $46ad,$279e,$579e,$477f,$765e,$066e,$457a,$2777

loc_023f88:
	dc.w $0000,$3f88,$6fa8,$0fd8,$0df8,$6af8,$58f8,$38fa
	dc.w $08fd,$08df,$38af,$688f,$5a8f,$0d8f,$0f8d,$5f8a

loc_023fa8:
	dc.w $7111,$700a,$601c,$700f,$112f,$713f,$324f,$526f
	dc.w $337f,$539f,$73af,$34bf,$74df,$75ff,$7aff,$7fff

loc_023fc8:
	dc.w $7888,$3400,$7700,$3a00,$3c10,$3d20,$6e30,$6f40
	dc.w $5f70,$6f91,$4fc2,$7fe2,$7fe5,$4ff9,$4ffc,$7fff

loc_023fe8:
	dc.w $0000,$2706,$2918,$2b2a,$5c4b,$7d4c,$5e5d,$7f5e
	dc.w $6f7f,$5f9f,$7faf,$7fbf,$7fcf,$7fdf,$7fef,$7fff

loc_024008:
	dc.w $0474,$7080,$50a0,$50c0,$70d0,$70f0,$63f1,$66f1
	dc.w $79f1,$7bf2,$7df3,$7ff4,$7ff7,$6ffa,$6ffd,$7fff

loc_024028:
	dc.w $0aaa,$4027,$2138,$4159,$226a,$428b,$739b,$14bc
	dc.w $74cd,$15ee,$75ff,$77ff,$79ff,$7bff,$7dff,$7fff

loc_024048:
	dc.w $7111,$6f70,$4f90,$6fa0,$6fc0,$4fe0,$6fe0,$4ff0
	dc.w $6ff0,$6ff2,$7ff4,$7ff6,$6ff9,$6ffb,$7ffd,$7fff

loc_024068:
	dc.w $4ca9,$6ffb,$4ffa,$7fe8,$7fe8,$4fe8,$6fd8,$5fd7
	dc.w $2fc7,$1fc6,$5ec6,$6eb6,$1eb5,$2ea5,$7da4,$2d94

loc_024088:
	dc.w $4ca9,$5f3a,$6ff3,$00c0,$70c1,$01d3,$71d4,$51e5
	dc.w $22e7,$52f8,$23fa,$73fb,$76fc,$79fd,$7cfe,$7fff

loc_0240a8:
	dc.w $4ca9,$4b06,$1c18,$7c1b,$2d2e,$32af,$73bf,$54cf
	dc.w $16df,$57ef,$78ef,$3aff,$7bff,$7cff,$3eff,$7fff

loc_0240c8:
	dc.w $4ca9,$4fa0,$6fa0,$6fb0,$4fc0,$4fd0,$6fd0,$4fe0
	dc.w $6fe0,$6fe0,$4ff0,$6ff0,$6ff4,$7ff7,$7ffb,$7fff

loc_0240e8:
	dc.w $4ca9,$0008,$3019,$003b,$105c,$206e,$10af,$30bf
	dc.w $30cf,$10ef,$30ff,$33ff,$36ff,$79ff,$7cff,$7fff

loc_024108:
	dc.w $4ca9,$3059,$307b,$309d,$61ae,$13ce,$44df,$45df
	dc.w $37df,$38df,$3adf,$7bdf,$5cef,$7def,$5eff,$7fff

loc_024128:
	dc.w $4ca9,$570b,$590d,$4a2e,$3c3e,$2d5f,$5d7f,$5d8f
	dc.w $7d8f,$7d9f,$5daf,$7dbf,$3ecf,$7edf,$3fef,$7fff

loc_024148:
	dc.w $4ca9,$5a0a,$5c0c,$2d1d,$2e2e,$5e4e,$2f5f,$2f6f
	dc.w $0f7f,$7f7f,$5f8f,$7f9f,$5fbf,$7fcf,$5fef,$7fff

loc_024168:
	dc.w $4ca9,$4a07,$5c08,$6d1a,$7e3b,$4f5d,$7f5d,$6f6e
	dc.w $5f7e,$7f7e,$4f8f,$7f9f,$5fbf,$7fcf,$5fef,$7fff

loc_024188:
	dc.w $4ca9,$4b02,$1d02,$2e15,$6e38,$5f5a,$6f5c,$7f6d
	dc.w $4f7e,$6f7f,$5f8f,$7f9f,$5fbf,$7fcf,$5fef,$7fff

loc_0241a8:
	dc.w $4ca9,$7ffc,$5dda,$7ff4,$30ff,$537f,$22e7,$6ff0
	dc.w $3885,$1790,$4682,$7df8,$2bf8,$64e1,$0280,$0000

loc_0241c8:
	dc.w $4ca9,$6f42,$5f61,$7f71,$4f91,$4fb1,$7fc0,$5fe0
	dc.w $6ff0,$6ff2,$7ff4,$7ff6,$6ff9,$6ffb,$7ffd,$7fff

loc_0241e8:
	dc.w $7fff,$0005,$1005,$1006,$0007,$0008,$1008,$0318
	dc.w $3627,$6937,$5c56,$4f66,$7f77,$4f99,$0fbb,$3fcc

loc_024208:
	dc.w $4865,$6d1a,$7e3b,$4f5d,$7f5d,$5f6d,$6f6e,$5f7e
	dc.w $5f8e,$5f9e,$4faf,$4fbf,$6fcf,$6fdf,$7fef,$7fff

loc_024228:
	dc.w $1006,$1006,$1006,$1006,$1006,$1006,$1006,$1006
	dc.w $1006,$1006,$1006,$1006,$1006,$1006,$1006,$1006

loc_024248:
	dc.w $1006,$1006,$1017,$3028,$203a,$204b,$006c,$007d
	dc.w $308e,$309f,$32af,$74bf,$76cf,$39df,$3bef,$7dff

loc_024268:
	dc.w $7eff,$7eff,$7eff,$7eff,$7eff,$7eff,$7eff,$7eff
	dc.w $7eff,$7eff,$7eff,$7eff,$7eff,$7eff,$7eff,$7eff

loc_024288:
	dc.w $0000,$5140,$2351,$3471,$4592,$27a2,$58c2,$49e3
	dc.w $3bf3,$6bf5,$6cf7,$3df8,$7dfa,$2efc,$2ffe,$7fff

loc_0242a8:
	dc.w $7ff8,$6ff8,$7ff7,$6fe7,$7fd6,$6fc6,$7fb5,$6fa5
	dc.w $7f94,$6f84,$7f73,$6f63,$7f52,$6f42,$7f31,$6f21

loc_0242c8:
	dc.w $7f10,$0f00,$0e00,$0d00,$0c00,$4a00,$4900,$4800
	dc.w $4700,$4600,$4500,$4400,$0300,$0200,$0100,$0000

	dc.w $0000,$0000,$0000,$0000

;-------------------------
loc_0242f0:;Battle Intro Palettes
	dc.l loc_024334,loc_024354,loc_024374,loc_024394
	dc.l loc_0243b4,loc_0243d4,loc_0243f4,loc_024414
	dc.l loc_024434,loc_024454,loc_024474,loc_024494
	dc.l loc_0244b4,loc_0244d4,loc_0244f4,loc_024514
	dc.l $00000000

loc_024334:
	dc.w $268a,$6ff4,$4ff4,$5fe3,$7fd3,$5fd3,$2fc3,$6eb3
	dc.w $1eb2,$4da2,$2d92,$7c81,$6b71,$0a61,$1950,$6730

loc_024354:
	dc.w $268a,$7fff,$0000,$30fe,$20fe,$20fd,$30fc,$30fb
	dc.w $20fb,$20fa,$30f8,$30f6,$20f5,$30f3,$30f1,$20f0

loc_024374:
	dc.w $268a,$7fff,$0000,$7fcf,$5fbe,$4fad,$6f8c,$4f7b
	dc.w $6f5a,$7f48,$5f37,$5f26,$5f15,$5f04,$5f03,$5f02

loc_024394:
	dc.w $268a,$4500,$3600,$3700,$4711,$4811,$3911,$3a11
	dc.w $4a22,$3b22,$3c22,$4c33,$4d33,$3e33,$3f33,$4f44

loc_0243b4:
	dc.w $268a,$7fff,$0000,$4fee,$4fed,$6fec,$6feb,$6fea
	dc.w $4ff9,$4ff8,$7ef6,$2ef5,$2ef4,$7df2,$3df1,$6cf0

loc_0243d4:
	dc.w $268a,$7fff,$0000,$7fe5,$6fd5,$7fc4,$6fb4,$7fa3
	dc.w $6f93,$7f82,$6f72,$5f71,$5f61,$4f51,$7f40,$6f30

loc_0243f4:
	dc.w $268a,$7fff,$0000,$302f,$105f,$104f,$103f,$100f
	dc.w $100e,$000d,$000c,$000b,$1009,$1008,$0007,$0006

loc_024414:
	dc.w $268a,$7fff,$5fe0,$6ff0,$6ff4,$6ff8,$7ffb,$5fe6
	dc.w $4fc1,$2ea1,$6c91,$5a80,$3960,$7750,$5640,$0520

loc_024434:
	dc.w $268a,$7fff,$0000,$38df,$57df,$17cf,$16bf,$55af
	dc.w $549f,$148f,$137f,$526f,$714f,$313f,$702f,$102f

loc_024454:
	dc.w $268a,$5faf,$7fcf,$7fff,$2525,$2f7f,$2f7f,$0e7e
	dc.w $2d6d,$0c6c,$2b5b,$0a5a,$2949,$0848,$2737,$0636

loc_024474:
	dc.w $1238,$1003,$33fe,$32fe,$21fe,$30fd,$30fc,$30fb
	dc.w $20fa,$30f9,$30f8,$20f8,$20f7,$30f5,$20f5,$30f3

loc_024494:
	dc.w $7128,$1003,$7fff,$6ffe,$6ffb,$7ff8,$7ff5,$6ff3
	dc.w $5ff2,$7fe2,$6fd2,$5fd1,$6fc1,$4fc1,$5fb0,$6fa0

loc_0244b4:
	dc.w $737b,$76f7,$75f6,$74f5,$73f4,$72f3,$02e3,$22c3
	dc.w $71b2,$41a2,$3181,$1171,$4061,$7040,$0030,$2000

loc_0244d4:
	dc.w $5383,$5f43,$4f33,$5f21,$4f00,$0e00,$0d00,$0b00
	dc.w $4a00,$4800,$0800,$0700,$0600,$0500,$4300,$4200

loc_0244f4:
	dc.w $538b,$0b00,$4a00,$0a00,$4900,$0900,$4800,$0800
	dc.w $4700,$0700,$4600,$0600,$4500,$0500,$4400,$0000

loc_024514:
	dc.w $0000,$7fff,$7eee,$7ddd,$7ccc,$7bbb,$7aaa,$7999
	dc.w $7888,$7777,$7666,$7555,$7444,$7333,$7222,$7111

;--------------------------
lifebarPal:;lifebar
	incbin "Game/extlifebarpal.bin"

;	dc.w $6778,$7fff,$0005,$4d00,$0800,$6f40,$77ff,$34ee
;	dc.w $30dd,$0000,$0000,$0000,$0000,$0000,$0000,$0000

;lifegroovepal2:
;	dc.w $6778,$7fff,$0005,$4d00,$0800,$4f50,$7ff7,$6ff4
;	dc.w $6ff0,$0000,$0000,$0000,$0000,$0000,$0000,$0000
;
;lifegroovepal3:
;	dc.w $6778,$7fff,$0005,$0b00,$0600,$0f00,$0e9f,$6a6c
;	dc.w $095c,$0000,$0000,$0000,$0000,$0000,$0000,$0000

Redlifepal:;Dangerlife
	dc.w $1422,$7fff,$0005,$0600,$0000,$4800,$4f04,$4f00
	dc.w $4d00,$0000,$0000,$0000,$0000,$0000,$0000,$0000

NameTagPalette:;Name Tags
	incbin "Game/extnametag.bin"

;	dc.w $6849,$7fff,$0005,$30ff,$0000,$30af,$30bf,$30cf
;	dc.w $30df,$30ef,$30ff,$0000,$0000,$0000,$0000,$0000

SurviveNamePal:;Survival mode Name tag leftover
	dc.w $6849,$7fff,$0005,$30ff,$0000,$4f20,$6f40,$6f70
	dc.w $4fa0,$4fd0,$6ff0,$0000,$0000,$0000,$0000,$0000

loc_0245b4:;Timer Palette
	dc.w $7555,$7fff,$0050,$133e,$1006,$0000,$30ff,$0050
	dc.w $2161,$25f5,$199f,$38ef,$35df,$12cf,$10af,$7111

;old palette
;	dc.w $7555,$7fff,$0005,$4e33,$7600,$0000,$6ff0,$0005
;	dc.w $1116,$155f,$4f99,$6fe8,$6fd5,$4fc2,$4fa0,$7111

loc_0245d4:
	dc.w $7555,$7fff,$0005,$5fd1,$1740,$0000,$6ff0,$0005
	dc.w $1740,$5fd1,$6ff9,$5f84,$7f63,$5f52,$7f31,$7111

loc_0245f4:
	dc.w $5a67,$0000,$2361,$4e60,$3f60,$4f91,$6fa1,$7fc1
	dc.w $6ff2,$7ff4,$7ff6,$2ffc,$20b0,$44d0,$68e0,$0df0

;Debug Select Font colors
loc_024614:
	dc.w $4400,$7fff,$0000,$3055,$0000,$6fb0,$6a60,$0000
	dc.w $166f,$158f,$53af,$72bf,$31df,$30ff,$35ff,$3aff

loc_024634:
	dc.w $4400,$7fff,$0000,$5f05,$6aa0,$7ffa,$4fc4,$0000
	dc.w $3aff,$166f,$158f,$53af,$72bf,$31df,$30ff,$35ff

loc_024654:
	dc.w $4400,$7fff,$0000,$2090,$4a00,$5fe5,$5d91,$0000
	dc.w $35ff,$3aff,$166f,$158f,$53af,$72bf,$31df,$30ff

loc_024674:
	dc.w $4400,$7fff,$0000,$6ff0,$30aa,$7fd2,$0c70,$0000
	dc.w $30ff,$35ff,$3aff,$166f,$158f,$53af,$72bf,$31df

loc_024694:
	dc.w $4400,$7fff,$0000,$3055,$0000,$6fb0,$6a60,$0000
	dc.w $31df,$30ff,$35ff,$3aff,$166f,$158f,$53af,$72bf

loc_0246b4:
	dc.w $4400,$7fff,$0000,$5f05,$6aa0,$7ffa,$4fc4,$0000
	dc.w $72bf,$31df,$30ff,$35ff,$3aff,$166f,$158f,$53af

loc_0246d4:
	dc.w $4400,$7fff,$0000,$2050,$4a00,$5fe5,$5d91,$0000
	dc.w $53af,$72bf,$31df,$30ff,$35ff,$3aff,$166f,$158f

loc_0246f4:
	dc.w $4400,$7fff,$0000,$6ff0,$30aa,$7fd2,$0c70,$0000
	dc.w $158f,$53af,$72bf,$31df,$30ff,$35ff,$3aff,$166f

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_024714:
	dc.w $2835,$5303,$5e0f,$1e0e,$5d0d,$1d0c,$1c0b,$5b0a
	dc.w $1008,$7fff,$100f,$1009,$10cf,$10df,$30ef,$30ff

loc_024734:
	dc.w $2835,$5303,$5e0f,$1e0e,$5d0d,$1d0c,$1c0b,$5b0a
	dc.w $1008,$7fff,$100f,$1009,$30ff,$10cf,$10df,$30ef

loc_024754:
	dc.w $2835,$5303,$5e0f,$1e0e,$5d0d,$1d0c,$1c0b,$5b0a
	dc.w $1008,$7fff,$100f,$1009,$30ef,$30ff,$10cf,$10df

loc_024774:
	dc.w $2835,$5303,$5e0f,$1e0e,$5d0d,$1d0c,$1c0b,$5b0a
	dc.w $1008,$7fff,$100f,$1009,$10df,$30ef,$30ff,$10cf

loc_024794:
	dc.w $2835,$0036,$52df,$51cf,$40bf,$00ae,$009d,$208c
	dc.w $0040,$7fff,$20c0,$0070,$20d0,$44e0,$48f0,$2df0

loc_0247b4:
	dc.w $2835,$0036,$52df,$51cf,$40bf,$00ae,$009d,$208c
	dc.w $0040,$7fff,$53f3,$2080,$2df0,$20d0,$44f0,$68f0

loc_0247d4:
	dc.w $2835,$0036,$52df,$51cf,$40bf,$00ae,$009d,$208c
	dc.w $0040,$7fff,$27f7,$20a0,$68f0,$2df0,$20d0,$44f0

loc_0247f4:
	dc.w $2835,$0036,$52df,$51cf,$40bf,$00ae,$009d,$208c
	dc.w $0040,$7fff,$53f3,$2080,$44f0,$68f0,$2df0,$20d0

;--------------------------
loc_024814:
	dc.w $2835,$0050,$67fc,$43fa,$30e7,$00e5,$00e2,$20d0
	dc.w $6620,$7fff,$4e90,$0a60,$4fa0,$4fc0,$6fd0,$6ff0

loc_024834:
	dc.w $2835,$0050,$67fc,$43fa,$30e7,$00e5,$00e2,$20d0
	dc.w $6620,$7fff,$2fc0,$6b70,$6ff0,$4fa0,$4fc0,$6fd0

loc_024854:
	dc.w $2835,$0050,$67fc,$43fa,$30e7,$00e5,$00e2,$20d0
	dc.w $6620,$7fff,$2f90,$0b70,$6fd0,$6ff0,$4fa0,$4fc0

loc_024874:
	dc.w $2835,$0050,$67fc,$43fa,$30e7,$00e5,$00e2,$20d0
	dc.w $6620,$7fff,$2fc0,$6b70,$4fc0,$6fd0,$6ff0,$4fa0

loc_024894:
	dc.w $2835,$6420,$6ff8,$6ff0,$6fe0,$4fe0,$4fd0,$4fc0
	dc.w $0a00,$7fff,$4f00,$4a00,$2fa0,$2520,$0000,$6fe0

loc_0248b4:
	dc.w $2835,$6420,$6ff8,$6ff0,$6fe0,$4fe0,$4fd0,$4fc0
	dc.w $0a00,$7fff,$5f04,$0c00,$6fe0,$0c70,$2520,$7fff

loc_0248d4:
	dc.w $2835,$6420,$6ff8,$6ff0,$6fe0,$4fe0,$4fd0,$4fc0
	dc.w $0a00,$7fff,$5f09,$4f00,$7eee,$7aaa,$4f00,$4f90

loc_0248f4:
	dc.w $2835,$6420,$6ff8,$6ff0,$6fe0,$4fe0,$4fd0,$4fc0
	dc.w $0a00,$7fff,$5f04,$0c00,$6fe0,$0c70,$0fff,$4f00

;--------------------------
loc_024914:
	dc.w $2835,$4247,$7fff,$7eff,$7dff,$7cff,$7bff,$7aff
	dc.w $0040,$7fff,$6fd0,$2c90,$4fa0,$4fc0,$6fd0,$6ff0

loc_024934:
	dc.w $2835,$4247,$7fff,$7eff,$7dff,$7cff,$7bff,$7aff
	dc.w $0040,$7fff,$6fd0,$2c90,$6ff0,$4fa0,$4fc0,$6fd0

loc_024954:
	dc.w $2835,$4247,$7fff,$7eff,$7dff,$7cff,$7bff,$7aff
	dc.w $0040,$7fff,$6fd0,$2c90,$6fd0,$6ff0,$4fa0,$4fc0

loc_024974:
	dc.w $2835,$4247,$7fff,$7eff,$7dff,$7cff,$7bff,$7aff
	dc.w $0040,$7fff,$6fd0,$2c90,$4fc0,$6fd0,$6ff0,$4fa0

loc_024994:
	dc.w $2835,$5262,$7fff,$2eff,$7cfe,$3bfd,$69fd,$38fc
	dc.w $6620,$7fff,$6fd0,$2c90,$20d0,$44e0,$48f0,$2df0

loc_0249b4:
	dc.w $2835,$5262,$7fff,$2eff,$7cfe,$3bfd,$69fd,$38fc
	dc.w $6620,$7fff,$6fd0,$2c90,$2df0,$20d0,$44f0,$68f0

loc_0249d4:
	dc.w $2835,$5262,$7fff,$2eff,$7cfe,$3bfd,$69fd,$38fc
	dc.w $6620,$7fff,$6fd0,$2c90,$68f0,$2df0,$20d0,$44f0

loc_0249f4:
	dc.w $2835,$5262,$7fff,$2eff,$7cfe,$3bfd,$69fd,$38fc
	dc.w $6620,$7fff,$6fd0,$2c90,$44f0,$68f0,$2df0,$20d0

;--------------------------
loc_024a14:
	dc.w $2835,$2530,$7fff,$6ffe,$7ffc,$6ffb,$7ff9,$6ff8
	dc.w $0a00,$7fff,$6fd0,$2c90,$2fa0,$2520,$0000,$6fe0

loc_024a34:
	dc.w $2835,$2530,$7fff,$6ffe,$7ffc,$6ffb,$7ff9,$6ff8
	dc.w $0a00,$7fff,$6fd0,$2c90,$6fe0,$0c70,$2520,$7fff

loc_024a54:
	dc.w $2835,$2530,$7fff,$6ffe,$7ffc,$6ffb,$7ff9,$6ff8
	dc.w $0a00,$7fff,$6fd0,$2c90,$7eee,$7aaa,$4f00,$4f90

loc_024a74:
	dc.w $2835,$2530,$7fff,$6ffe,$7ffc,$6ffb,$7ff9,$6ff8
	dc.w $0a00,$7fff,$6fd0,$2c90,$6fe0,$0c70,$0fff,$4f00

loc_024a94:
	dc.w $0080,$4c73,$7dde,$6e83,$7fff,$7004,$7ea5,$7920
	dc.w $4f00,$3e72,$199b,$0568,$011d,$3c51,$6ed9,$0000

loc_024ab4:
	dc.w $3035,$4220,$027e,$3f91,$3740,$0fc2,$4963,$0359
	dc.w $757b,$3987,$169b,$757b,$5db3,$726d,$0359,$4963

loc_024ad4:
	dc.w $0000,$0fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

loc_024af4:
	dc.w $0777,$7031,$22e7,$61a5,$5f53,$2163,$1a31,$0421
	dc.w $3060,$7742,$7610,$3b21,$24b5,$0421,$3e32,$1a31


;--------------------------
loc_024b14:
	dc.w $0777,$0fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

loc_024b34:
	dc.w $0888,$6001,$3127,$2fe4,$614f,$326f,$0551,$6993
	dc.w $1455,$0ab7,$268c,$4b86,$6993,$5de5,$7cc3,$0551

loc_024b54:
	dc.w $142b,$0fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

loc_024b74:
	dc.w $3423,$1413,$22c4,$7f6f,$5f5f,$2202,$7727,$4c7d
	dc.w $2343,$37a8,$198a,$2354,$7939,$4c7d,$5e6e,$7727

loc_024b94:
	dc.w $342b,$0fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

loc_024bb4:
	dc.w $1433,$4200,$3f33,$148f,$4b43,$0711,$0359,$0725
	dc.w $455b,$5948,$2711,$365c,$5624,$626c,$2338,$3911

loc_024bd4:
	dc.w $143b,$0fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

loc_024bf4:
	dc.w $0000,$5012,$5012,$5012,$5012,$5012,$5012,$5012
	dc.w $5012,$5012,$5012,$5012,$5012,$5012,$5012,$5012

loc_024c14:
	dc.w $0000,$3242,$3242,$3242,$3242,$3242,$3242,$3242
	dc.w $3242,$3242,$3242,$3242,$3242,$3242,$3242,$3242

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_024c34:
	dc.w $0303,$0303,$0202,$0202,$0202,$0202,$0202,$0102
	dc.w $0102,$0102,$0101,$0101,$0101,$0101,$0101,$0101
	dc.w $0101,$0101,$0101,$0101,$0101,$0101,$0101,$0101
	dc.w $0101,$0101,$0101,$0101,$0101,$0101,$ff00

loc_024c72:
	dc.w $0202,$0202,$0202,$0202,$0202,$0202,$0202,$0102
	dc.w $0102,$0102,$0101,$0101,$0101,$0101,$0101,$0101
	dc.w $0101,$0101,$0101,$0101,$0101,$0101,$0101,$0101
	dc.w $0101,$0101,$0101,$0101,$0101,$0101,$0001,$0101
	dc.w $0001,$0100,$0100,$0100,$0001,$0000,$0001,$0000
	dc.w $0001,$0000,$0001,$0000,$0001,$ff00

loc_024cce:
	dc.w $0202,$0202,$0201,$0202,$0102,$0101,$0201,$0101
	dc.w $0101,$0101,$0101,$0101,$0101,$0101,$0101,$0101
	dc.w $0101,$0101,$0101,$0101,$0001,$0101,$0001,$0100
	dc.w $0100,$0100,$0001,$0000,$0100,$0001,$ff00

loc_024d0c:
	dc.w $0202,$0101,$0000,$0000,$0000,$0000,$0000,$0101
	dc.w $0202,$0202,$0202,$0102,$0101,$0101,$0101,$0101
	dc.w $0101,$0101,$0101,$0101,$0001,$0101,$0001,$0100
	dc.w $0100,$0100,$0001,$0000,$0100,$0001,$ff00

loc_024d4a:
	dc.w $0101,$0101,$0101,$0101,$0101,$0101,$0101,$0101
	dc.w $0001,$0001,$ff00

loc_024d60:
	dc.w $0101,$0101,$0202,$0202,$0202,$0101,$0101,$ff00

loc_024d70:
	dc.w $0101,$0101,$0101,$0101,$0101,$ff00

loc_024d7c:
	dc.w $0102,$0302,$0202,$0101,$0101,$0001,$ff00

;--------------------------
;Character Select Animations
loc_024d8a:
	dc.l loc_024e4a,loc_02501c,loc_02524a,loc_025374
	dc.l loc_025592,loc_025700,loc_0258ee,loc_025aba
	dc.l loc_025c6a,loc_025e66,loc_024e4a,loc_024e4a
	dc.l loc_024e4a,loc_024e4a,loc_024e4a,loc_024e4a

loc_024dca:
	dc.l loc_024edc,loc_02518e,loc_0252ac,loc_025476
	dc.l loc_025640,loc_025802,loc_025990,loc_025b4c
	dc.l loc_025d1c,loc_025ef8,loc_024edc,loc_024edc
	dc.l loc_024edc,loc_024edc,loc_024edc,loc_024edc

loc_024e0a:
	dc.l loc_024ec2,loc_025174,loc_025292,loc_02545c
	dc.l loc_025626,loc_0257e8,loc_025976,loc_025b32
	dc.l loc_025d02,loc_025ede,loc_024ec2,loc_024ec2
	dc.l loc_024ec2,loc_024ec2,loc_024ec2,loc_024ec2

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;Sho
loc_024e4a:
	dc.w $0004,$010d,$0000,$80ff,$0000,$0004,$0000
	dc.w $0004,$010e,$0000,$80ff,$0000,$0004,$0000
	dc.w $0004,$010f,$0000,$80ff,$0000,$0004,$0000
	dc.w $0004,$0110,$0000,$80ff,$0000,$0004,$0000
	dc.w $0004,$0111,$0000,$80ff,$0000,$0004,$0000
	dc.w $0004,$0112,$0000,$80ff,$0000,$0004,$0000
	dc.w $0004,$0113,$0000,$80ff,$0000,$0004,$0000
	dc.w $0004,$0114,$0000,$80ff,$0000,$0004,$0000
	dc.w $8000,$0000
	dc.l loc_024e4a


loc_024ec2:
	dc.w $8029,$0014,$0000,$0000,$8000
	dc.w $800e
	dc.l loc_025f9a
	dc.w $000c,$0000,$0000,$8000
	dc.w $8028

loc_024edc:
	dc.w $8017,$0080
	dc.l loc_024f3a

	dc.w $0008,$01c0,$0000,$80ff,$fffc,$0001,$0000
	dc.w $0004,$01c1,$0000,$80ff,$fff8,$0001,$0000
	dc.w $0003,$01c2,$0000,$80ff,$fff9,$0001,$0000
	dc.w $0003,$01c3,$0000,$80ff,$fff8,$0001,$0000
	dc.w $0003,$01c3,$0000,$80ff,$fff9,$0001,$0000
	dc.w $000d,$01c3,$0000,$80ff,$fff8,$0001,$0000
	dc.w $8001

loc_024f3a:
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
	dc.w $0006,$0139,$0000,$80ff,$fffc,$0002,$0000
	dc.w $0004,$013a,$0000,$80ff,$fffc,$0002,$0000
	dc.w $0014,$019a,$0000,$80ff,$fffc,$0002,$0000
	dc.w $8001

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;Dao
loc_02501c:
	dc.w $0004,$02de,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02df,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02e0,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02e1,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02e2,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02e3,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02e4,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02e5,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02e6,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02e7,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02e8,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02e9,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02ea,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02eb,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02ec,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02ed,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02ee,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02ef,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02f0,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02f1,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02f2,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02f3,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02f4,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0004,$02f5,$0000,$80ff,$fffc,$0000,$0000
	dc.w $8000,$0000
	dc.l loc_02501c

loc_025174:
	dc.w $8029,$0014,$0000,$0000,$8000
	dc.w $800e
	dc.l loc_025f9a
	dc.w $000c,$0000,$0000,$8000
	dc.w $8028

loc_02518e:
	dc.w $8017,$0080
	dc.l loc_0251fa

	dc.w $0004,$01d2,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0006,$033e,$0000,$8000
	dc.w $0006,$02c6,$0000,$80ff,$0010,$0000,$0000
	dc.w $0006,$01e6,$0000,$8000
	dc.w $0006,$01e0,$0000,$80ff,$0014,$0000,$0000
	dc.w $0005,$0356,$0000,$8000
	dc.w $0005,$0357,$0000,$8000
	dc.w $0005,$0358,$0000,$8000
	dc.w $000c,$0359,$0000,$8000
	dc.w $0024,$035a,$0000,$8000
	dc.w $8001

loc_0251fa:
	dc.w $0008,$01d2,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0005,$0323,$0000,$8000
	dc.w $0008,$023d,$0000,$8000
	dc.w $0003,$023e,$0000,$8000
	dc.w $0004,$0240,$0000,$8000
	dc.w $0004,$023f,$0000,$8000
	dc.w $0004,$023d,$0000,$8000
	dc.w $0003,$023e,$0000,$8000
	dc.w $0008,$0240,$0000,$8000
	dc.w $8001

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;Condor
loc_02524a:
	dc.w $0008,$048e,$0000,$8000
	dc.w $0005,$048f,$0000,$8000
	dc.w $0005,$0490,$0000,$8000
	dc.w $0007,$0491,$0000,$8000
	dc.w $000c,$0492,$0000,$8000
	dc.w $0008,$0493,$0000,$8000
	dc.w $0007,$0494,$0000,$8000
	dc.w $0006,$0495,$0000,$8000
	dc.w $8000,$0000
	dc.l loc_02524a

loc_025292:
	dc.w $8029,$0014,$0000,$0000,$8000
	dc.w $800e
	dc.l loc_025f9a
	dc.w $000c,$0000,$0000,$8000
	dc.w $8028

loc_0252ac:
	dc.w $8017,$0080
	dc.l loc_025324

	dc.w $0006,$03cf,$0000,$8000
	dc.w $0008,$03d0,$0000,$8000
	dc.w $0002,$03d2,$0000,$8000
	dc.w $0002,$03d1,$0000,$8000
	dc.w $0010,$03d2,$0000,$8000
	dc.w $0005,$03d1,$0000,$8000
	dc.w $0007,$03d0,$0000,$8000
	dc.w $0008,$03d3,$0000,$8000
	dc.w $0005,$046d,$0000,$8000
	dc.w $0002,$03d4,$0000,$8000
	dc.w $0002,$03d5,$0000,$8000

loc_02530c:
	dc.w $0003,$03d4,$0000,$8000
	dc.w $0003,$03d5,$0000,$8000
	dc.w $8000,$0000
	dc.l loc_02530c

loc_025324:
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

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;Tia
loc_025374:
	dc.w $0003,$065b,$0000,$80ff,$0004,$0003,$0000
	dc.w $0003,$065c,$0000,$80ff,$0004,$0003,$0000
	dc.w $0003,$065d,$0000,$80ff,$0004,$0003,$0000
	dc.w $0003,$065e,$0000,$80ff,$0004,$0003,$0000
	dc.w $0003,$065f,$0000,$80ff,$0004,$0003,$0000
	dc.w $0003,$0660,$0000,$80ff,$0004,$0003,$0000
	dc.w $0003,$0661,$0000,$80ff,$0004,$0003,$0000
	dc.w $0003,$0662,$0000,$80ff,$0004,$0003,$0000
	dc.w $0003,$0663,$0000,$80ff,$0004,$0003,$0000
	dc.w $0003,$0664,$0000,$80ff,$0004,$0003,$0000
	dc.w $0003,$0665,$0000,$80ff,$0004,$0003,$0000
	dc.w $0003,$0666,$0000,$80ff,$0004,$0003,$0000
	dc.w $0003,$0657,$0000,$80ff,$0004,$0003,$0000
	dc.w $0003,$0658,$0000,$80ff,$0004,$0003,$0000
	dc.w $0003,$0659,$0000,$80ff,$0004,$0003,$0000
	dc.w $0003,$065a,$0000,$80ff,$0004,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_025374

loc_02545c:
	dc.w $8029,$0014,$0000,$0000,$8000
	dc.w $800e
	dc.l loc_025f9a
	dc.w $000c,$0000,$0000,$8000
	dc.w $8028

loc_025476:
	dc.w $8017,$0080
	dc.l loc_02551a
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
	dc.w $8001

loc_02551a:
	dc.w $0006,$051b,$0000,$8000
	dc.w $0006,$056d,$0000,$8000
	dc.w $804b,$0000,$0000,$fffb,$4000,$0000,$8000
	dc.w $0003,$056e,$0000,$8000
	dc.w $0004,$056f,$0000,$8000
	dc.w $0006,$0570,$0000,$8000
	dc.w $0004,$056f,$0000,$8000
	dc.w $0003,$056e,$0000,$8000
	dc.w $0004,$056d,$0000,$8000
	dc.w $0005,$0571,$0000,$8000
	dc.w $0002,$0572,$0000,$8000
	dc.w $000d,$0573,$0000,$8000
	dc.w $0004,$0572,$0000,$8000
	dc.w $0010,$063c,$0000,$8000
	dc.w $8001
	
;~~~~~~~~~~~~~~~~~~~~~~~~~~
;Rila
loc_025592:
	dc.w $0005,$081a,$0000,$80ff,$0000,$0002,$0000
	dc.w $0005,$081b,$0000,$80ff,$0000,$0002,$0000
	dc.w $0005,$081c,$0000,$80ff,$0000,$0002,$0000
	dc.w $0005,$081d,$0000,$80ff,$0000,$0002,$0000
	dc.w $0005,$081e,$0000,$80ff,$0000,$0002,$0000
	dc.w $0005,$081f,$0000,$80ff,$0000,$0002,$0000
	dc.w $0004,$0820,$0000,$80ff,$0000,$0002,$0000
	dc.w $0004,$0821,$0000,$80ff,$0000,$0002,$0000
	dc.w $0004,$0822,$0000,$80ff,$0000,$0002,$0000
	dc.w $0004,$0823,$0000,$80ff,$0000,$0002,$0000
	dc.w $8000,$0000
	dc.l loc_025592

loc_025626:
	dc.w $8029,$0014,$0000,$0000,$8000
	dc.w $800e
	dc.l loc_025f9a
	dc.w $000c,$0000,$0000,$8000
	dc.w $8028

loc_025640:
	dc.w $8017,$0080
	dc.l loc_025692

	dc.w $0004,$076d,$0000,$8000
	dc.w $0004,$0771,$0000,$8000
	dc.w $0004,$076e,$0000,$8000
	dc.w $0004,$076f,$0000,$8000
	dc.w $0004,$0772,$0000,$8000
	dc.w $0004,$0770,$0000,$8000
	dc.w $0008,$0771,$0000,$8000
	dc.w $0003,$0772,$0000,$8000
	dc.w $0005,$0773,$0000,$8000
	dc.w $8001

loc_025692:
	dc.w $0004,$06f5,$0000,$8000
	dc.w $804b,$0000,$0000,$fffa,$0000,$0000,$8000
	dc.w $0003,$06fb,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0004,$06fc,$0000,$8000
	dc.w $0005,$06fd,$0000,$8000
	dc.w $0006,$06fe,$0000,$8000
	dc.w $0007,$06ff,$0000,$8000
	dc.w $0008,$0701,$0000,$8000
	dc.w $0004,$081f,$0000,$8000
	dc.w $0004,$0772,$0000,$8000
	dc.w $000c,$0841,$0000,$8000
	dc.w $0022,$0842,$0000,$8000
	dc.w $8001

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;Pielle
loc_025700:
	dc.w $0004,$09c8,$0000,$80ff,$0000,$0004,$0000
	dc.w $0004,$09c9,$0000,$80ff,$0000,$0004,$0000
	dc.w $0005,$09ca,$0000,$80ff,$0000,$0004,$0000
	dc.w $0006,$09cb,$0000,$80ff,$0000,$0004,$0000
	dc.w $0008,$09cc,$0000,$80ff,$0000,$0004,$0000
	dc.w $0006,$09cd,$0000,$80ff,$0000,$0004,$0000
	dc.w $0005,$09ce,$0000,$80ff,$0000,$0004,$0000
	dc.w $0004,$09cf,$0000,$80ff,$0000,$0004,$0000
	dc.w $0004,$09d0,$0000,$80ff,$0000,$0004,$0000
	dc.w $0004,$09d1,$0000,$80ff,$0000,$0004,$0000
	dc.w $0005,$09d2,$0000,$80ff,$0000,$0004,$0000
	dc.w $0006,$09d3,$0000,$80ff,$0000,$0004,$0000
	dc.w $0008,$09c4,$0000,$80ff,$0000,$0004,$0000
	dc.w $0006,$09c5,$0000,$80ff,$0000,$0004,$0000
	dc.w $0005,$09c6,$0000,$80ff,$0000,$0004,$0000
	dc.w $0004,$09c7,$0000,$80ff,$0000,$0004,$0000
	dc.w $8000,$0000
	dc.l loc_025700

loc_0257e8:
	dc.w $8029,$0014,$0000,$0000,$8000
	dc.w $800e
	dc.l loc_025f9a
	dc.w $000c,$0000,$0000,$8000
	dc.w $8028

loc_025802:
	dc.w $8017,$0080
	dc.l loc_0258a6
	dc.w $0006,$0931,$0000,$80ff,$fff8,$0000,$0000
	dc.w $0006,$0a19,$0000,$80ff,$ffe8,$0000,$0000
	dc.w $0006,$0a18,$0000,$80ff,$ffe8,$0000,$0000
	dc.w $0006,$0a17,$0000,$80ff,$ffe8,$0000,$0000
	dc.w $0006,$0a1c,$0000,$80ff,$ffe8,$0000,$0000
	dc.w $0006,$0a1d,$0000,$80ff,$ffe8,$0000,$0000
	dc.w $0006,$0a1e,$0000,$80ff,$ffe8,$0000,$0000
	dc.w $0006,$0a1f,$0000,$80ff,$ffe8,$0000,$0000
	dc.w $0006,$0a20,$0000,$80ff,$ffe8,$0000,$0000
	dc.w $0006,$0a21,$0000,$80ff,$ffe8,$0000,$0000
	dc.w $003c,$0a22,$0000,$80ff,$ffe8,$0000,$0000
	dc.w $8001

loc_0258a6:
	dc.w $0007,$092d,$0000,$8000
	dc.w $0008,$092c,$0000,$8000
	dc.w $000a,$092b,$0000,$8000
	dc.w $0008,$092c,$0000,$8000
	dc.w $0007,$092d,$0000,$8000
	dc.w $0008,$092e,$0000,$8000
	dc.w $000a,$092f,$0000,$8000
	dc.w $0008,$092e,$0000,$8000
	dc.w $8000,$0000
	dc.l loc_0258a6

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;Alsion
loc_0258ee:
	dc.w $0004,$0b6d,$0000,$8000
	dc.w $0004,$0b6e,$0000,$8000
	dc.w $0004,$0b6f,$0000,$8000
	dc.w $0004,$0b70,$0000,$8000
	dc.w $0004,$0b71,$0000,$8000
	dc.w $0004,$0b72,$0000,$8000
	dc.w $0004,$0b73,$0000,$8000
	dc.w $0004,$0b74,$0000,$8000
	dc.w $0004,$0b75,$0000,$8000
	dc.w $0004,$0b76,$0000,$8000
	dc.w $0004,$0b77,$0000,$8000
	dc.w $0004,$0b78,$0000,$8000
	dc.w $0004,$0b69,$0000,$8000
	dc.w $0004,$0b6a,$0000,$8000
	dc.w $0004,$0b6b,$0000,$8000
	dc.w $0004,$0b6c,$0000,$8000
	dc.w $8000,$0000
	dc.l loc_0258ee

loc_025976:
	dc.w $8029,$0014,$0000,$0000,$8000
	dc.w $800e
	dc.l loc_025f9a
	dc.w $000c,$0000,$0000,$8000
	dc.w $8028

loc_025990:
	dc.w $8017,$0080
	dc.l loc_0259ea
	dc.w $0005,$0ba1,$0000,$8000
	dc.w $0004,$0ba2,$0000,$8000
	dc.w $0003,$0ba3,$0000,$8000
	dc.w $0010,$0ba4,$0000,$8000
	dc.w $0004,$0ba5,$0000,$8000
	dc.w $0005,$0ba6,$0000,$8000
	dc.w $000e,$0ba7,$0000,$8000
	dc.w $0006,$0ba8,$0000,$8000
	dc.w $0008,$0ba9,$0000,$8000
	dc.w $0014,$0baa,$0000,$8000
	dc.w $8001

loc_0259ea:
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
	dc.w $0003,$0c1b,$0000,$8000,$0026,$0aeb,$0000
	dc.w $8000
	dc.w $8001

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;Maherl
loc_025aba:
	dc.w $0006,$0d80,$0000,$80ff,$0004,$0004,$0000
	dc.w $0006,$0d81,$0000,$80ff,$0004,$0004,$0000
	dc.w $0006,$0d82,$0000,$80ff,$0004,$0004,$0000
	dc.w $0006,$0d83,$0000,$80ff,$0004,$0004,$0000
	dc.w $0006,$0d84,$0000,$80ff,$0004,$0004,$0000
	dc.w $0006,$0d85,$0000,$80ff,$0004,$0004,$0000
	dc.w $0006,$0d86,$0000,$80ff,$0004,$0004,$0000
	dc.w $0006,$0d87,$0000,$80ff,$0004,$0004,$0000
	dc.w $8000,$0000
	dc.l loc_025aba

loc_025b32:
	dc.w $8029,$0014,$0000,$0000,$8000
	dc.w $800e
	dc.l loc_025f9a
	dc.w $000c,$0000,$0000,$8000
	dc.w $8028

loc_025b4c:
	dc.w $8017,$0080
	dc.l loc_025c00
	dc.w $0006,$0cfc,$0000,$80ff,$0004,$0004,$0000
	dc.w $0006,$0ceb,$0000,$80ff,$0002,$0004,$0000
	dc.w $0004,$0cef,$0000,$80ff,$0004,$0004,$0000
	dc.w $0002,$0cf0,$0000,$80ff,$0000,$0004,$0000
	dc.w $0002,$0cf1,$0000,$80ff,$fff4,$0004,$0000
	dc.w $0003,$0cf2,$0000,$80ff,$fff4,$0004,$0000
	dc.w $0003,$0cf5,$0000,$80ff,$0004,$0004,$0000
	dc.w $0002,$0cf6,$0000,$80ff,$0000,$0004,$0000
	dc.w $0002,$0cf7,$0000,$80ff,$fffe,$0004,$0000
	dc.w $0003,$0cf8,$0000,$80ff,$0004,$0004,$0000
	dc.w $0003,$0cf9,$0000,$80ff,$0004,$0004,$0000
	dc.w $000c,$0d66,$0000,$8000
	dc.w $000c,$0d67,$0000,$8000
	dc.w $8001

loc_025c00:
	dc.w $0004,$0d84,$0000,$80ff,$0004,$0004,$0000
	dc.w $0006,$0c6d,$0000,$80ff,$fffc,$0000,$0000
	dc.w $0008,$0c5f,$0000,$80ff,$0018,$0002,$0000

loc_025c2a:
	dc.w $0008,$0dc9,$0000,$80ff,$fff4,$0008,$0000
	dc.w $0008,$0dca,$0000,$80ff,$fff4,$0008,$0000
	dc.w $0008,$0dcb,$0000,$80ff,$fff4,$0008,$0000
	dc.w $0008,$0dcc,$0000,$80ff,$fff4,$0008,$0000
	dc.w $8000,$0000
	dc.l loc_025c2a

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;Bai-Hu
loc_025c6a:
	dc.w $0006,$0eeb,$0000,$8000
	dc.w $0006,$0eec,$0000,$8000
	dc.w $0006,$0eed,$0000,$8000
	dc.w $0004,$0eee,$0000,$8000
	dc.w $0004,$0eef,$0000,$8000
	dc.w $0004,$0ef0,$0000,$8000
	dc.w $0003,$0ef1,$0000,$8000
	dc.w $0003,$0ef2,$0000,$8000
	dc.w $0003,$0ef3,$0000,$8000
	dc.w $0003,$0eeb,$0000,$8000
	dc.w $0003,$0eec,$0000,$8000
	dc.w $0003,$0eed,$0000,$8000
	dc.w $0003,$0eee,$0000,$8000
	dc.w $0004,$0eef,$0000,$8000
	dc.w $0004,$0ef0,$0000,$8000
	dc.w $0004,$0ef1,$0000,$8000
	dc.w $0006,$0ef2,$0000,$8000
	dc.w $0006,$0ef3,$0000,$8000
	dc.w $8000,$0000
	dc.l loc_025c6a

loc_025d02:
	dc.w $8029,$0014,$0000,$0000,$8000
	dc.w $800e
	dc.l loc_025f9a
	dc.w $000c,$0000,$0000,$8000
	dc.w $8028

loc_025d1c:
	dc.w $0008,$0f0d,$0000,$8000
	dc.w $0008,$0f0e,$0000,$8000
	dc.w $800a
	dc.l loc_025da4

	dc.w $001c,$0f0f,$0000,$8000
	dc.w $800a
	dc.l loc_025d60
	dc.w $0004,$0f30,$0000,$8000
	dc.w $0004,$0f31,$0000,$8000

loc_025d50:
	dc.w $0028,$0f32,$0000,$8000
	dc.w $8000,$0000
	dc.l loc_025d50

loc_025d60:
	dc.w $0004,$0f3f,$84ff,$0008,$0068,$1601
	dc.w $0004,$0f40,$84ff,$0008,$006a,$1601
	dc.w $0004,$0f41,$84ff,$0008,$0066,$1601
	dc.w $0004,$0f42,$84ff,$0008,$0062,$1601

loc_025d90:
	dc.w $0028,$0f43,$84ff,$0008,$0066,$1601
	dc.w $8000,$0000
	dc.l loc_025d90

loc_025da4:
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

;~~~~~~~~~~~~~~~~~~~~~~~~~~
;Saizo
loc_025e66:
	dc.w $0004,$0fb4,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fb5,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fb6,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fb7,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fb8,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fb9,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fba,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$0fbb,$0000,$80ff,$0000,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_025e66

loc_025ede:
	dc.w $8029,$0014,$0000,$0000,$8000
	dc.w $800e
	dc.l loc_025f9a
	dc.w $000c,$0000,$0000,$8000
	dc.w $8028

loc_025ef8:
	dc.w $0004,$1084,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$1083,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$1097,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$1098,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$1099,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$109a,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$109b,$0000,$80ff,$0000,$0003,$0000

loc_025f5a
	dc.w $0004,$10ce,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$1099,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$109a,$0000,$80ff,$0000,$0003,$0000
	dc.w $0004,$109b,$0000,$80ff,$0000,$0003,$0000
	dc.w $8000,$0000
	dc.l loc_025f5a

;--------------------------
;
loc_025f9a:
	dc.w $0002,$1254,$6fff,$0000,$0040,$1a00
	dc.w $0002,$1255,$6fff,$0000,$0040,$1a00
	dc.w $0002,$1256,$6fff,$0000,$0040,$1a00
	dc.w $0002,$1257,$6fff,$0000,$0040,$1a00
	dc.w $0002,$1258,$6fff,$0000,$0040,$1a00
	dc.w $0002,$1259,$6fff,$0000,$0040,$1a00
	dc.w $0002,$125a,$6fff,$0000,$0040,$1a00
	dc.w $0002,$125b,$6fff,$0000,$0040,$1a00
	dc.w $0002,$125c,$6fff,$0000,$0040,$1a00
	dc.w $0002,$125d,$6fff,$0000,$0040,$1a00
	dc.w $0002,$125e,$6fff,$0000,$0040,$1a00
	dc.w $0002,$125f,$6fff,$0000,$0040,$1a00
	dc.w $8001

;--------------------------
;Character Attract writes
loc_02602c:
	dc.w $0029
	dc.l loc_026090

	dc.w $0029
	dc.l loc_0260d6

	dc.w $002a
	dc.l loc_0260f8

	dc.w $0029
	dc.l loc_02611e

	dc.w $0029
	dc.l loc_026140

	dc.w $0029
	dc.l loc_026166

	dc.w $002a
	dc.l loc_026188

	dc.w $0029
	dc.l loc_0261ae
	dc.w $0000

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_02605e:
	dc.w $0022
	dc.l loc_026090

	dc.w $0023
	dc.l loc_0260d6

	dc.w $0022
	dc.l loc_0260f8

	dc.w $0022
	dc.l loc_02611e

	dc.w $0023
	dc.l loc_026140

	dc.w $0022
	dc.l loc_026166

	dc.w $0022
	dc.l loc_026188

	dc.w $0023
	dc.l loc_0261ae
	dc.w $0000

;--------------------------
loc_026090:
	move.w #0,($14,a4)
	jsr loc_01ed6c
	move.w #0,($2ce,a4)
	movea.l #loc_0261d0,a0
	clr.w d0
	jsr loc_0226f0
	exg a3,a4
	move.w #1,($14,a4)
	jsr loc_01ed6c
	move.w #1,($2ce,a4)
	movea.l #loc_026298,a0
	clr.w d0
	jsr loc_0226f0
	exg a3,a4
	rts

;--------------------------
loc_0260d6:
	move.w #4,($14,a4)
	jsr loc_01ed6c
	move.w #4,($2ce,a4)
	movea.l #loc_02649a,a0
	clr.w d0
	jsr loc_0226f0
	rts

;--------------------------
loc_0260f8:
	exg a3,a4
	move.w #7,($14,a4)
	jsr loc_01ed6c
	move.w #7,($2ce,a4)
	movea.l #loc_0266f4,a0
	clr.w d0
	jsr loc_0226f0
	exg a3,a4
	rts

;--------------------------
loc_02611e:
	move.w #6,($14,a4)
	jsr loc_01ed6c
	move.w #6,($2ce,a4)
	movea.l #loc_0269c4,a0
	clr.w d0
	jsr loc_0226f0
	rts

;--------------------------
loc_026140:
	exg a3,a4
	move.w #5,($14,a4)
	jsr loc_01ed6c
	move.w #5,($2ce,a4)
	movea.l #loc_026d04,a0
	clr.w d0
	jsr loc_0226f0
	exg a3,a4
	rts

;--------------------------
loc_026166:
	move.w #2,($14,a4)
	jsr loc_01ed6c
	move.w #2,($2ce,a4)
	movea.l #loc_026e80,a0
	clr.w d0
	jsr loc_0226f0
	rts

;--------------------------
loc_026188:
	exg a3,a4
	move.w #3,($14,a4)
	jsr loc_01ed6c
	move.w #3,($2ce,a4)
	movea.l #loc_027056,a0
	clr.w d0
	jsr loc_0226f0
	exg a3,a4
	rts 

;--------------------------
loc_0261ae:
	move.w #9,($14,a4)
	jsr loc_01ed6c
	move.w #9,($2ce,a4)
	movea.l #loc_0274c6,a0
	clr.w d0
	jsr loc_0226f0
	rts
;/\/\/\/\/\/\/\/\/\/\/\/\/\
;Sho
loc_0261d0:
	dc.w $0002,$000b,$0000,$7cff,$0000,$0001,$0000
	dc.w $0006,$000e,$0000,$78ff,$0000,$0001,$0000
	dc.w $0002,$000f,$0000,$78ff,$0000,$0001,$0000
	dc.w $0002,$000a,$0000,$7cff,$0000,$0001,$0000
	dc.w $0002,$000b,$0000,$78ff,$0000,$0001,$0000
	dc.w $0006,$000c,$0000,$78ff,$0000,$0001,$0000
	dc.w $0002,$000b,$0000,$78ff,$0000,$0001,$0000
	dc.w $0002,$002f,$0000,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0030,$0000,$78ff,$fffc,$0000,$0000
	dc.w $0006,$0108,$0000,$78ff,$fffc,$0010,$0000
	dc.w $0002,$0107,$0000,$78ff,$fffc,$0010,$0000
	dc.w $0002,$010c,$0000,$78ff,$0000,$0008,$0000
	dc.w $0002,$0026,$0000,$7cff,$0000,$0000,$0001
	dc.w $0002,$0020,$0000,$7c00,$0004,$001f,$0000
	dc.w $7800,$8001

;Dao
loc_026298:
	dc.w $0002,$01d3,$0000,$7800
	dc.w $0003,$01d4,$0000,$7800
	dc.w $0001,$02c9,$0000,$7800
	dc.w $0002,$02c6,$0000,$78ff,$0008,$0000,$0000
	dc.w $0002,$01e1,$0000,$78ff,$0008,$0000,$0000
	dc.w $0003,$01e2,$0000,$78ff,$0010,$0000,$0000
	dc.w $0001,$01e6,$0000,$7800
	dc.w $0002,$02c8,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0002,$01e7,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0003,$01df,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0001,$01de,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0002,$02cf,$0000,$78ff,$fff8,$0000,$0000
	dc.w $0002,$01f6,$0000,$7800
	dc.w $0003,$02b9,$0000,$7800
	dc.w $0001,$02c4,$0000,$7cff,$fff8,$0000,$0001
	dc.w $0002,$02c5,$0000,$88ff,$0010,$0000,$0000
	dc.w $0002,$01f2,$0000,$88ff,$0010,$0000,$0000
	dc.w $0003,$01f3,$0000,$88ff,$0010,$0000,$0000
	dc.w $0001,$01f4,$0000,$78ff,$0010,$0000,$0000
	dc.w $0002,$02ba,$0000,$7800
	dc.w $0002,$01d9,$0000,$78ff,$0000,$0000,$0000
	dc.w $0003,$01da,$0000,$78ff,$0000,$0000,$0000
	dc.w $0001,$021d,$0000,$7800
	dc.w $0002,$021e,$0000,$7800
	dc.w $0002,$021f,$0000,$7800
	dc.w $0003,$0220,$0000,$7800
	dc.w $0001,$02d3,$0000,$88ff,$0000,$fff0,$0000
	dc.w $0002,$02d8,$0000,$88ff,$0000,$ffe8,$0001
	dc.w $0002,$02bb,$0000,$78ff,$0000,$0080,$0002
	dc.w $0002,$020f,$0000,$78ff,$fffc,$0080,$0002
	dc.w $0002,$0211,$0000,$78ff,$fffc,$0080,$0002
	dc.w $0002,$0210,$0000,$78ff,$fffc,$0080,$0002
	dc.w $0002,$0212,$0000,$78ff,$fffc,$0080,$0002
	dc.w $0002,$0215,$0000,$78ff,$fffc,$0080,$0002
	dc.w $0002,$0214,$0000,$78ff,$fffc,$0080,$0002
	dc.w $0002,$024e,$0000,$7cff,$fff8,$0098,$0003
	dc.w $0002,$024e,$0000,$7cff,$fff8,$fff8,$0001
	dc.w $0002,$02dd,$0000,$7cff,$0000,$0000,$0001
	dc.w $0002,$02dc,$0000,$8000

loc_026472:
	dc.w $0002,$023e,$0000,$8000
	dc.w $0002,$0240,$0000,$8000
	dc.w $0002,$023f,$0000,$8000
	dc.w $0002,$023d,$0000,$8000
	dc.w $8000,$0000
	dc.l loc_026472

;Rila
loc_02649a:
	dc.w $0001,$088b,$0000,$7cff,$fffc,$0003,$0200
	dc.w $0001,$088b,$0000,$7cff,$fffc,$0003,$0100
	dc.w $0002,$088c,$0000,$78ff,$fffc,$0002,$0000
	dc.w $800a
	dc.l loc_0265d8

	dc.w $0004,$088d,$0000,$78ff,$fffc,$0002,$0000
	dc.w $0002,$088e,$0000,$78ff,$fff8,$0002,$0000
	dc.w $0002,$0892,$0000,$88ff,$fffc,$0000,$0000
	dc.w $0002,$0893,$0000,$7800
	dc.w $0004,$0894,$0000,$7800
	dc.w $0004,$0895,$0000,$7c00
	dc.w $0002,$06ed,$0000,$7cff,$0002,$0000,$0000
	dc.w $0004,$0742,$0000,$78ff,$fff8,$0000,$0000
	dc.w $0003,$086e,$0000,$78ff,$fff8,$0000,$0000
	dc.w $0008,$086f,$0000,$78ff,$fff8,$0000,$0000
	dc.w $0008,$06ef,$0000,$88ff,$fff0,$0000,$0000
	dc.w $0002,$06f3,$0000,$7cff,$fff4,$0000,$0000
	dc.w $0002,$06ed,$0000,$7c00
	dc.w $0002,$07fd,$0000,$7cff,$0004,$ffda,$0000
	dc.w $0003,$0744,$0000,$7c00
	dc.w $0003,$0745,$0000,$78ff,$fff8,$0000,$0000
	dc.w $0004,$0746,$0000,$78ff,$0000,$fffc,$0000
	dc.w $0008,$0856,$0000,$78ff,$0000,$fff8,$0000
	dc.w $0004,$0712,$0000,$78ff,$fff8,$0088,$0003
	dc.w $0004,$0817,$0000,$7c00
	dc.w $0004,$07e2,$0000,$7c00
	dc.w $0004,$07ee,$0000,$7c00
	dc.w $0004,$070d,$0000,$7c00
	dc.w $8001

loc_0265d8:
	dc.w $0004,$086c,$74ff,$ffd4,$003c,$0a00
	dc.w $0002,$086d,$7cff,$ffcc,$0030,$0a00,$0002,$0000,$6000
	dc.w $0002,$088f,$74ff,$ffd0,$0050,$0a00
	dc.w $0004,$0890,$74ff,$fff0,$0050,$0a00
	dc.w $0004,$0891,$7cff,$fff0,$0060,$0a00,$0006,$0000,$6000
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
	dc.w $0001,$089a,$74ff,$ffb8,$0068,$0d00,$000c,$0000,$6000
	dc.w $0004,$08ab,$74ff,$ffe0,$006c,$0c00
	dc.w $0004,$08ae,$74ff,$ffe0,$0078,$0c00
	dc.w $8001


;Maherl
loc_0266f4:
	dc.w $0001,$0ceb,$0000,$78ff,$0000,$0004,$0200
	dc.w $0001,$0ceb,$0000,$78ff,$0000,$0004,$0100
	dc.w $0002,$0cf4,$0000,$78ff,$0000,$0004,$0000
	dc.w $0004,$0cf5,$0000,$78ff,$0000,$0004,$0000
	dc.w $800a
	dc.l loc_026842

	dc.w $0002,$0cf6,$0000,$88ff,$fffc,$0004,$0000
	dc.w $0002,$0cf7,$0000,$78ff,$0004,$0004,$0000
	dc.w $0002,$0cf8,$0000,$78ff,$0004,$0004,$0000
	dc.w $0003,$0cf9,$0000,$88ff,$0004,$0004,$0000
	dc.w $0003,$0cf5,$0000,$88ff,$0000,$0004,$0000
	dc.w $0002,$0cf6,$0000,$88ff,$fffc,$0004,$0000
	dc.w $0002,$0cf7,$0000,$78ff,$0004,$0004,$0000
	dc.w $0002,$0cf8,$0000,$78ff,$0004,$0004,$0000
	dc.w $0008,$0dfe,$0000,$78ff,$0004,$0004,$0000
	dc.w $0002,$0cef,$0000,$78ff,$0000,$0004,$0000
	dc.w $0002,$0cf0,$0000,$78ff,$0000,$0004,$0000
	dc.w $0003,$0cf1,$0000,$78ff,$fff8,$0004,$0000
	dc.w $0009,$0cf2,$0000,$78ff,$fff8,$0004,$0000
	dc.w $0006,$0cfe,$0000,$7cff,$0004,$0004,$0000
	dc.w $0004,$0cff,$0000,$7cff,$0004,$0004,$0000
	dc.w $0003,$0d00,$0000,$7cff,$0004,$0004,$0000
	dc.w $0004,$0c5f,$0000,$7cff,$0020,$0000,$0000
	dc.w $0005,$0d23,$0000,$7c00
	dc.w $0003,$0d24,$0000,$7c00
	dc.w $0002,$0d25,$0000,$7c00
	dc.w $0006,$0d26,$0000,$7c00
	dc.w $8001

loc_026842:
	dc.w $0001,$0e08,$74ff,$ffcc,$005c,$0d00
	dc.w $0001,$0e09,$74ff,$ffd4,$005c,$0d00
	dc.w $0002,$0e0a,$74ff,$ffdc,$006c,$0d00
	dc.w $0002,$0e0b,$74ff,$ffdc,$0064,$0d00
	dc.w $0006,$0000,$6000
	dc.w $0001,$0e08,$74ff,$ffcc,$005c,$0f00
	dc.w $0001,$0e09,$74ff,$ffd4,$005c,$0f00
	dc.w $0002,$0e0a,$74ff,$ffdc,$006c,$0f00
	dc.w $0002,$0e0b,$74ff,$ffdc,$0064,$0f00
	dc.w $0001,$0cea,$74ff,$0028,$0068,$0001
	dc.w $0001,$0ce9,$74ff,$0028,$0068,$0001
	dc.w $0001,$0cea,$74ff,$0020,$0070,$0001
	dc.w $0001,$0ce9,$74ff,$001c,$006c,$0001
	dc.w $0001,$0cea,$74ff,$0018,$0070,$0000
	dc.w $0001,$0ce9,$74ff,$0014,$006c,$0000
	dc.w $0001,$0cea,$74ff,$0010,$0068,$0000
	dc.w $0001,$0ce9,$74ff,$0008,$0058,$0000
	dc.w $0004,$0000,$6000
	dc.w $0001,$0d75,$74ff,$ffc8,$0054,$0f00
	dc.w $0001,$0d75,$74ff,$ffc8,$0054,$0200
	dc.w $0001,$0d75,$74ff,$ffc8,$0054,$0f00
	dc.w $0001,$0d76,$74ff,$ffc8,$005c,$0e00
	dc.w $0001,$0d76,$74ff,$ffc8,$005c,$0200
	dc.w $0001,$0d76,$74ff,$ffc8,$005c,$0f00
	dc.w $0001,$0d77,$74ff,$ffc8,$0064,$0e00
	dc.w $0001,$0d77,$74ff,$ffc8,$0064,$0300
	dc.w $0001,$0d77,$74ff,$ffc8,$0064,$0f00
	dc.w $0001,$0d78,$74ff,$ffc8,$0064,$0f00
	dc.w $0001,$0d78,$74ff,$ffc8,$0064,$0300
	dc.w $0001,$0d78,$74ff,$ffc8,$0064,$0e00
	dc.w $0002,$0ce9,$74ff,$fff8,$0084,$0000
	dc.w $0002,$0cea,$74ff,$fff8,$0084,$0000
	dc.w $0002,$0ce9,$74ff,$fff0,$007c,$0000
	dc.w $8001

;Pielle
loc_0269c4:
	dc.w $0001,$0b79,$0000,$78ff,$0000,$0000,$0200
	dc.w $0001,$0b79,$0000,$78ff,$0000,$0000,$0100
	dc.w $0004,$0a89,$0000,$78ff,$fff6,$0000,$0000
	dc.w $0002,$0a88,$0000,$7cff,$fff4,$0000,$0000
	dc.w $0002,$0b9c,$0000,$7c00
	dc.w $800a
	dc.l loc_026b46

	dc.w $0002,$0b9d,$0000,$7800
	dc.w $0002,$0b9e,$0000,$7800
	dc.w $0006,$0b9f,$0000,$7800
	dc.w $0002,$0b7c,$0000,$7800
	dc.w $0002,$0adc,$0000,$7800
	dc.w $0002,$0add,$0000,$8800
	dc.w $0006,$0ade,$0000,$78ff,$fffe,$ffff,$0000
	dc.w $0004,$0adf,$0000,$88ff,$0004,$0000,$0000
	dc.w $0006,$0aee,$0000,$78ff,$0004,$0000,$0000
	dc.w $0002,$0ae0,$0000,$78ff,$0003,$0001,$0000
	dc.w $0002,$0ae1,$0000,$84ff,$0004,$0000,$0000
	dc.w $0006,$0ae2,$0000,$78ff,$fffa,$0000,$0000
	dc.w $0002,$0ad5,$0000,$78ff,$0000,$0002,$0000
	dc.w $0002,$0ad4,$0000,$78ff,$fff8,$ffff,$0000
	dc.w $0002,$0ad3,$0000,$78ff,$fffe,$0000,$0000
	dc.w $0002,$0ada,$0000,$78ff,$fffc,$0000,$0000
	dc.w $0002,$0ad9,$0000,$78ff,$0003,$0000,$0000
	dc.w $0002,$0ad8,$0000,$78ff,$0002,$0000,$0000
	dc.w $0002,$0ad7,$0000,$78ff,$0008,$0002,$0000
	dc.w $0002,$0ad6,$0000,$78ff,$0006,$0002,$0000
	dc.w $0002,$0ad5,$0000,$78ff,$0000,$0002,$0000
	dc.w $0002,$0aff,$0000,$80ff,$0002,$0000,$0000
	dc.w $0002,$0b07,$0000,$80ff,$0008,$0000,$0000

loc_026b28:
	dc.w $0002,$0b0a,$0000,$88ff,$0000,$0000,$0e00
	dc.w $0002,$0bd7,$0000,$8800
	dc.w $8000,$0000
	dc.l loc_026b28

loc_026b46:
	dc.w $0002,$0bde,$74ff,$0040,$00a0,$0e00
	dc.w $0002,$0bdf,$74ff,$ffc0,$0080,$0e00
	dc.w $0002,$0be0,$74ff,$ffb0,$0030,$0e00
	dc.w $0002,$0be1,$74ff,$ffb0,$0030,$0e00,$0006,$0000,$6000
	dc.w $0002,$0c45,$80ff,$ffb8,$0050,$0f00
	dc.w $0004,$0c46,$80ff,$ffb8,$0050,$0f00
	dc.w $0002,$0c47,$80ff,$ffb8,$0050,$0f00
	dc.w $0002,$0c48,$80ff,$ffb8,$0050,$0f00
	dc.w $0002,$0c49,$80ff,$ffc0,$0050,$0f00
	dc.w $0004,$0c4a,$80ff,$ffc0,$0050,$0f00
	dc.w $0002,$0c4b,$80ff,$ffc0,$0050,$0f00
	dc.w $0002,$0c4c,$80ff,$ffc0,$0050,$0f00
	dc.w $0002,$0c4d,$80ff,$ffc8,$0050,$0f00
	dc.w $0004,$0c4e,$80ff,$ffc8,$0050,$0f00
	dc.w $0002,$0c4f,$80ff,$ffc8,$0050,$0f00
	dc.w $0001,$0b2c,$74ff,$0000,$0050,$0d01
	dc.w $0001,$0b2d,$74ff,$0000,$0050,$0d01
	dc.w $0001,$0b2e,$74ff,$0000,$0050,$0d01
	dc.w $0001,$0b2f,$74ff,$0000,$0050,$0d01
	dc.w $0001,$0b30,$74ff,$0000,$0050,$0d01
	dc.w $0001,$0b31,$74ff,$0000,$0050,$0d01
	dc.w $0001,$0b32,$74ff,$0000,$0050,$0d01
	dc.w $0001,$0b33,$74ff,$0000,$0050,$0d01
	dc.w $0002,$0b34,$74ff,$0000,$0050,$0d01
	dc.w $0002,$0b35,$74ff,$0000,$0050,$0d01
	dc.w $0002,$0b34,$74ff,$0000,$0050,$0d01
	dc.w $0002,$0b35,$74ff,$0000,$0050,$0d01
	dc.w $0002,$0b34,$74ff,$0000,$0050,$0d01,$0004,$0000,$6000
	dc.w $0001,$0c08,$74ff,$0000,$0080,$0f00
	dc.w $0001,$0c09,$74ff,$0000,$0080,$0e00
	dc.w $0001,$0c0a,$74ff,$0000,$0080,$0f00
	dc.w $0001,$0c0b,$74ff,$0000,$0080,$0e00
	dc.w $0001,$0c08,$74ff,$0000,$0080,$0e00
	dc.w $0001,$0c09,$74ff,$0000,$0080,$0f00
	dc.w $0001,$0c0a,$74ff,$0000,$0080,$0e00
	dc.w $0001,$0c0b,$74ff,$0000,$0080,$0f00
	dc.w $8001

;Alsion
loc_026d04:
	dc.w $0001,$08de,$0000,$88ff,$0020,$0000,$0200
	dc.w $0001,$08de,$0000,$88ff,$0020,$0000,$0100
	dc.w $0004,$08df,$0000,$88ff,$0024,$0000,$0000
	dc.w $0006,$08e0,$0000,$78ff,$0020,$0000,$0000
	dc.w $0002,$0931,$0000,$78ff,$fff8,$0000,$0000
	dc.w $0002,$08cb,$0000,$7c00
	dc.w $0003,$08cc,$0000,$7c00
	dc.w $0002,$08cd,$0000,$78ff,$0010,$0000,$0000
	dc.w $0006,$08ce,$0000,$78ff,$001c,$0000,$0000
	dc.w $0002,$09c0,$0000,$78ff,$0018,$0000,$0000
	dc.w $0003,$08ed,$0000,$78ff,$0018,$0000,$0000
	dc.w $0002,$08f0,$0000,$78ff,$0018,$0000,$0000
	dc.w $0002,$08f1,$0000,$78ff,$0018,$0000,$0000
	dc.w $800d
	dc.l loc_026e5a
	dc.w $ffff

	dc.w $0002,$08f2,$0000,$78ff,$0018,$0000,$0000
	dc.w $0003,$08f3,$0000,$78ff,$0018,$0000,$0000
	dc.w $0006,$08f4,$0000,$78ff,$0018,$0000,$0000
	dc.w $0003,$08f3,$0000,$78ff,$0018,$0000,$0000
	dc.w $0002,$08f2,$0000,$78ff,$0018,$0000,$0000
	dc.w $0003,$08f5,$0000,$78ff,$0018,$0000,$0000
	dc.w $0002,$08ec,$0000,$7cff,$0004,$0000,$0000
	dc.w $0002,$094f,$0000,$7c00
	dc.w $0003,$0950,$0000,$7c00
	dc.w $0004,$0951,$0000,$7c00
	dc.w $0005,$0952,$0000,$7c00
	dc.w $0002,$094f,$0000,$7c00
	dc.w $0002,$0953,$0000,$7c00
	dc.w $0004,$0954,$0000,$7c00
	dc.w $0004,$0a4b,$0000,$7c00
	dc.w $8001

loc_026e5a:
	dc.w $0002,$09a9,$74ff,$0000,$00b0,$0c00
	dc.w $0003,$09aa,$74ff,$ffc0,$0090,$0c00
	dc.w $0006,$09ab,$74ff,$ffa0,$0060,$0c00
	dc.w $8001

;Condor
loc_026e80:
	dc.w $0001,$03df,$0000,$88ff,$000a,$0000,$0200
	dc.w $0001,$03df,$0000,$88ff,$000a,$0000,$0100
	dc.w $0002,$03e0,$0000,$8800
	dc.w $800d
	dc.l loc_027018
	dc.w $ffff

	dc.w $0002,$03e1,$0000,$8800
	dc.w $0006,$03e2,$0000,$88ff,$fffe,$0000,$0000
	dc.w $0002,$03e1,$0000,$8800
	dc.w $0004,$036c,$0000,$8000
	dc.w $0004,$03eb,$0000,$78ff,$0008,$0000,$0000
	dc.w $0004,$03e9,$0000,$7800
	dc.w $0006,$047d,$0000,$78ff,$fff8,$fff8,$0000
	dc.w $0003,$047e,$0000,$78ff,$0008,$fff8,$0000
	dc.w $0003,$047f,$0000,$78ff,$0008,$fff0,$0000
	dc.w $0003,$0480,$0000,$78ff,$0010,$0000,$0000
	dc.w $0003,$0481,$0000,$78ff,$0008,$0000,$0000
	dc.w $0004,$0482,$0000,$78ff,$0010,$fff8,$0000
	dc.w $0006,$0483,$0000,$78ff,$0000,$0000,$0000
	dc.w $0003,$0484,$0000,$78ff,$0000,$0008,$0000
	dc.w $0002,$0485,$0000,$7800
	dc.w $0008,$04c4,$0000,$7800
	dc.w $0003,$03ec,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0003,$03ed,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0004,$03ef,$0000,$78ff,$0000,$0020,$0000
	dc.w $0003,$03f0,$0000,$78ff,$fffc,$001a,$0000

loc_026fa0:
	dc.w $0002,$03f1,$0000,$78ff,$0000,$0010,$0000
	dc.w $0002,$03f2,$0000,$78ff,$0002,$0014,$0000
	dc.w $0002,$03f3,$0000,$78ff,$0000,$0010,$0000
	dc.w $0002,$03f4,$0000,$78ff,$0004,$000e,$0000
	dc.w $0002,$03f5,$0000,$78ff,$0000,$0010,$0000
	dc.w $0002,$0404,$0000,$78ff,$fffe,$000c,$0000
	dc.w $0002,$03ef,$0000,$78ff,$0000,$0010,$0000
	dc.w $0002,$03f0,$0000,$78ff,$fffc,$0012,$0000
	dc.w $8000,$0000
	dc.l loc_026fa0

loc_027018:
	dc.w $0002,$049b,$74ff,$ffd0,$0070,$0c00
	dc.w $0002,$049c,$74ff,$ffde,$0090,$0c00
	dc.w $0002,$049d,$74ff,$ffde,$0090,$0c00
	dc.w $0002,$049e,$74ff,$ffde,$0090,$0c00
	dc.w $0002,$049f,$74ff,$ffde,$0090,$0c00
	dc.w $8001

;Tia
loc_027056:
	dc.w $0001,$054c,$0000,$7cff,$0000,$0000,$0200
	dc.w $0001,$054c,$0000,$7cff,$0000,$0000,$0100
	dc.w $0002,$054d,$0000,$7cff,$0000,$0010,$0000
	dc.w $0002,$054e,$0000,$78ff,$0000,$000c,$0000
	dc.w $0002,$054f,$0000,$78ff,$0000,$0018,$0000
	dc.w $0002,$0550,$0000,$78ff,$0000,$001c,$0000
	dc.w $0002,$0551,$0000,$78ff,$0000,$0010,$0000
	dc.w $0002,$0552,$0000,$78ff,$0000,$0004,$0000
	dc.w $0002,$0667,$0000,$78ff,$0000,$0004,$0000
	dc.w $0002,$06a2,$0000,$7cff,$0008,$0000,$0000
	dc.w $800a
	dc.l loc_027260

	dc.w $0003,$0539,$0000,$80ff,$0008,$0000,$0000
	dc.w $0002,$0544,$0000,$7cff,$fffe,$0000,$0000
	dc.w $0002,$0545,$0000,$7800
	dc.w $0003,$0546,$0000,$7800
	dc.w $0004,$0547,$0000,$7800
	dc.w $0004,$0548,$0000,$7c00
	dc.w $0004,$0549,$0000,$7c00
	dc.w $0002,$0562,$0000,$7cff,$fff8,$0000,$0000
	dc.w $0002,$0563,$0000,$7cff,$fff0,$0000,$0000
	dc.w $0001,$0564,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0001,$0566,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0001,$0650,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0001,$0565,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0001,$0650,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0001,$0564,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0001,$0566,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0001,$0650,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0001,$0565,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0001,$0650,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0002,$0651,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0004,$056c,$0000,$78ff,$fff0,$0000,$0000
	dc.w $0002,$05ec,$0000,$7cff,$0004,$0000,$0000
	dc.w $0002,$05eb,$0000,$7c00
	dc.w $0004,$0641,$0000,$8000
	dc.w $0002,$0642,$0000,$8000
	dc.w $0002,$0643,$0000,$8000
	dc.w $0003,$0644,$0000,$8000
	dc.w $0005,$0645,$0000,$8000
	dc.w $0004,$0646,$0000,$8000
	dc.w $0004,$064b,$0000,$8000
	dc.w $0004,$064c,$0000,$8000
	dc.w $0004,$064d,$0000,$8000
	dc.w $0004,$064e,$0000,$8000
	dc.w $0004,$064f,$0000,$8000
	dc.w $8001

loc_027260:
	dc.w $0003,$06a4,$7cff,$0020,$0050,$0d00
	dc.w $0002,$06a5,$78ff,$fffe,$0030,$0d00
	dc.w $0002,$06a6,$74ff,$ffd0,$0050,$0d00
	dc.w $0003,$06a7,$74ff,$fff0,$0080,$0d00
	dc.w $0004,$06a8,$74ff,$0000,$0090,$0d00
	dc.w $0004,$06a9,$78ff,$0000,$0080,$0d00
	dc.w $0008,$0000,$6000
	dc.w $0001,$0569,$74ff,$ffc8,$0050,$0000
	dc.w $0001,$056a,$74ff,$ffd0,$0060,$0000
	dc.w $0001,$056b,$74ff,$ffd8,$0068,$0000
	dc.w $0001,$0568,$74ff,$ffd0,$0030,$0000
	dc.w $0001,$0567,$74ff,$ffd8,$0018,$0000
	dc.w $0001,$0569,$74ff,$ffc8,$0050,$0000
	dc.w $0001,$056a,$74ff,$ffd0,$0060,$0000
	dc.w $0001,$056b,$74ff,$ffd8,$0068,$0000
	dc.w $0001,$0568,$74ff,$ffd0,$0030,$0000
	dc.w $0001,$0567,$74ff,$ffd8,$0018,$0000
	dc.w $0002,$056b,$74ff,$ffd8,$0068,$0000
	dc.w $8001

	dc.w $0001,$01a9,$0000,$78ff,$0008,$0000,$0200
	dc.w $0001,$01aa,$0000,$78ff,$0008,$0000,$0100
	dc.w $800a
	dc.l loc_02741c
	dc.w $0001,$01ab,$0000,$78ff,$0004,$0004,$0000
	dc.w $0001,$01ac,$0000,$04ff,$0000,$0000,$0000
	dc.w $0002,$01ad,$0000,$78ff,$fffc,$0000,$0000
	dc.w $0004,$01ae,$0000,$78ff,$fffc,$0004,$0000
	dc.w $0003,$01af,$0000,$88ff,$fffc,$0000,$0000
	dc.w $0003,$01b0,$0000,$7cff,$0004,$0004,$0000
	dc.w $0002,$01b1,$0000,$7cff,$fffc,$0008,$0000
	dc.w $0002,$01b2,$0000,$78ff,$0002,$0008,$0000
	dc.w $0005,$0038,$0000,$78ff,$fffc,$fffc,$0000
	dc.w $0003,$01b3,$0000,$78ff,$0002,$0008,$0000
	dc.w $0003,$01b4,$0000,$7cff,$0002,$0004,$0000
	dc.w $0002,$01b5,$0000,$78ff,$0004,$fffe,$0000
	dc.w $0002,$01b6,$0000,$78ff,$fffc,$fffe,$0000
	dc.w $0006,$01b7,$0000,$78ff,$fffc,$fffe,$0000
	dc.w $8001

loc_02741c:
	dc.w $0001,$01b9,$74ff,$000c,$001c,$0d00
	dc.w $0001,$004e,$74ff,$fff4,$0030,$0d00
	dc.w $0002,$004f,$74ff,$ffec,$0040,$0d00
	dc.w $0004,$0050,$74ff,$ffdc,$005c,$0d00
	dc.w $0003,$0051,$78ff,$ffe4,$0060,$0d00
	dc.w $0003,$0052,$78ff,$0014,$0034,$0d00
	dc.w $0002,$01ba,$78ff,$000c,$0018,$0d00
	dc.w $0002,$0053,$74ff,$fff2,$0018,$0d00
	dc.w $0002,$0054,$74ff,$ffe4,$0044,$0d00
	dc.w $0003,$00d6,$74ff,$ffd4,$0044,$0d00
	dc.w $0003,$0055,$74ff,$fff2,$0028,$0d00
	dc.w $0003,$004b,$78ff,$0002,$0014,$0d00
	dc.w $0002,$004d,$74ff,$ffe4,$003e,$0d00
	dc.w $0008,$004c,$74ff,$ffcc,$003e,$0d00
	dc.w $8001

;Saizo
loc_0274c6:
	dc.w $0002,$10e3,$0000,$78ff,$0001,$0003,$0000
	dc.w $0002,$10e3,$0000,$78ff,$0001,$0003,$0000
	dc.w $0002,$10e4,$0000,$78ff,$fff8,$0003,$0000
	dc.w $0002,$10e5,$0000,$78ff,$fff9,$0003,$0000
	dc.w $0002,$10e6,$0000,$78ff,$fff9,$0003,$0000
	dc.w $0002,$10e7,$0000,$78ff,$ffef,$0003,$0000
	dc.w $0002,$10e8,$0000,$78ff,$ffef,$0003,$0000
	dc.w $0002,$10e9,$0000,$78ff,$ffef,$0003,$0000
	dc.w $0002,$10ea,$0000,$78ff,$ffef,$0003,$0000
	dc.w $0002,$10eb,$0000,$78ff,$fff8,$0003,$0000
	dc.w $0002,$10ec,$0000,$78ff,$fff8,$0003,$0000
	dc.w $800a
	dc.l loc_027744

	dc.w $0002,$10e4,$0000,$78ff,$fff8,$0003,$0000
	dc.w $0002,$10e5,$0000,$78ff,$fff9,$0003,$0000
	dc.w $0002,$10e6,$0000,$78ff,$fff9,$0003,$0000
	dc.w $0002,$110e,$0000,$7cff,$ffef,$0003,$0000
	dc.w $0002,$110f,$0000,$7cff,$ffef,$0003,$0000
	dc.w $0002,$1110,$0000,$7cff,$ffef,$0003,$0000
	dc.w $0002,$1111,$0000,$7cff,$fff0,$0003,$0000
	dc.w $0002,$1112,$0000,$7cff,$fff0,$0003,$0000
	dc.w $0002,$1113,$0000,$7cff,$fff0,$0003,$0000
	dc.w $0002,$0ff4,$0000,$7cff,$fff0,$0003,$0000
	dc.w $0002,$0ff6,$0000,$7cff,$ffe7,$0003,$0000
	dc.w $0002,$0ff7,$0000,$7cff,$fff9,$0003,$0000
	dc.w $0002,$10fe,$0000,$7cff,$fff9,$0002,$0000
	dc.w $0002,$10ff,$0000,$7cff,$ffe4,$0003,$0000
	dc.w $0002,$1100,$0000,$78ff,$ffd4,$0003,$0000
	dc.w $0002,$1101,$0000,$78ff,$ffd4,$0003,$0000
	dc.w $0002,$1102,$0000,$7cff,$ffd4,$0003,$0000
	dc.w $0002,$1103,$0000,$7cff,$ffd4,$0003,$0000
	dc.w $0002,$1104,$0000,$7cff,$ffe4,$0003,$0000
	dc.w $0002,$10ee,$0000,$7cff,$0009,$0003,$0000
	dc.w $0002,$10ef,$0000,$7cff,$000a,$0003,$0000
	dc.w $0002,$10f0,$0000,$7cff,$000a,$0003,$0000
	dc.w $0002,$10f1,$0000,$78ff,$000a,$0003,$0000
	dc.w $0002,$10f2,$0000,$7cff,$0009,$0003,$0000
	dc.w $0002,$10f3,$0000,$7cff,$0009,$0003,$0000
	dc.w $0002,$0ff9,$0000,$7cff,$fffc,$0003,$0000
	dc.w $0002,$1084,$0000,$80ff,$0000,$0003,$0000
	dc.w $0002,$1083,$0000,$80ff,$0000,$0003,$0000
	dc.w $0002,$10a3,$0000,$80ff,$ffff,$0003,$0000
	dc.w $0002,$10a4,$0000,$80ff,$ffff,$0003,$0000
	dc.w $0002,$10a5,$0000,$80ff,$ffff,$0003,$0000
	dc.w $0002,$10a6,$0000,$80ff,$ffff,$0003,$0000
	dc.w $0002,$10a7,$0000,$80ff,$ffff,$0003,$0000
	dc.w $0002,$10a8,$0000,$80ff,$ffff,$0003,$0000
	dc.w $8001

loc_027744
	dc.w $0002,$1114,$74ff,$ffc3,$000c,$1100
	dc.w $0002,$1115,$74ff,$ffaf,$004a,$1100
	dc.w $0002,$1116,$74ff,$ffcf,$0052,$1100
	dc.w $0002,$1117,$74ff,$ffcf,$0052,$1100
	dc.w $0002,$1118,$74ff,$ffcf,$0052,$1100
	dc.w $0002,$1119,$74ff,$ffcf,$0052,$1100
	dc.w $8001

;--------------------------
loc_02778e:
	sf ($27f8,a5)
	sf ($27f9,a5)
	trap #5
	move.w (-$54b2,a5),d0
	btst #3,d0
	beq.w loc_0277ac
	tst.b ($27f8,a5)
	bne.w loc_027814

loc_0277ac:
	lea (-$32a,a5),a4
	move.w #$f,d7

loc_0277b4:
	tst.w (a4)
	beq.b loc_0277d8
	sf ($27,a4)
	movem.l d7/a4,-(a7)
	move.l ($2e,a4),-(a7)
	move.l ($32,a4),-(a7)
	bsr.w loc_027a3e
	move.l (a7)+,($42,a4)
	move.l (a7)+,($3e,a4)
	movem.l (a7)+,d7/a4

loc_0277d8:
	lea ($a4,a4),a4
	dbra d7,loc_0277b4
	lea ($716,a5),a4
	move.w #$1f,d7

loc_0277e8:
	tst.w (a4)
	beq.b loc_027808
	move.l ($2e,a4),($3e,a4)
	move.l ($32,a4),($42,a4)
	sf ($27,a4)
	movem.l d7/a4,-(a7)
	bsr.w loc_027a3e
	movem.l (a7)+,d7/a4

loc_027808:
	lea ($86,a4),a4
	dbra d7,loc_0277e8
	bra.w loc_02778e

loc_027814:
	lea (-$32a,a5),a4
	move.w #$f,d7

loc_02781c:
	tst.w (a4)
	beq.b loc_02785a
	tst.b ($27,a4)
	beq.b loc_02785a
	bgt.b loc_027842
	movem.l d7/a4,-(a7)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l (a7)+,d7/a4
	bra.b loc_02785a

loc_027842:
	movem.l d7/a4,-(a7)
	move.b ($52,a4),d0
	movea.l #loc_028006,a0
	jsr loc_0040c2
	movem.l (a7)+,d7/a4

loc_02785a:
	lea ($a4,a4),a4
	dbra d7,loc_02781c
	lea ($716,a5),a4
	move.w #$f,d7

loc_02786a:
	tst.w (a4)
	beq.b loc_0278a8
	tst.b ($27,a4)
	beq.b loc_0278a8
	bgt.b loc_027890
	movem.l d7/a4,-(a7)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l (a7)+,d7/a4
	bra.b loc_0278a8

loc_027890:
	movem.l d7/a4,-(a7)
	move.b ($52,a4),d0
	movea.l #loc_028006,a0
	jsr loc_0040c2
	movem.l (a7)+,d7/a4

loc_0278a8:
	lea ($86,a4),a4
	dbra d7,loc_02786a
	move.w #$f,d7

loc_0278b4:
	tst.w (a4)
	beq.b loc_0278d4
	move.l ($2e,a4),($3e,a4)
	move.l ($32,a4),($42,a4)
	sf ($27,a4)
	movem.l d7/a4,-(a7)
	bsr.w loc_027a3e
	movem.l (a7)+,d7/a4

loc_0278d4:
	lea ($86,a4),a4
	dbra d7,loc_0278b4
	bra.w loc_02778e

loc_0278e0:
	movem.l d0-d7/a0-a4,-(a7)
	tst.b ($25,a4)
	bne.w loc_027a36
	tst.l ($9c,a4)
	beq.w loc_027a36
	tst.b ($24,a4)
	bmi.w loc_027908
	lea (p1ma5,a5),a3
	lea (p2ma5,a5),a2
	bra.w loc_027910

loc_027908:
	lea (p2ma5,a5),a3
	lea (p1ma5,a5),a2

loc_027910
	movea.l ($9c,a4),a0
	move.w (6,a0),d1
	sub.w (4,a0),d1
	cmpi.w #$20,d1
	bgt.w loc_02794a
	move.w (4,a0),d1
	add.w (6,a0),d1
	asr.w #1,d1
	tst.b ($2c,a4)
	bpl.b loc_027936
	neg.w d1

loc_027936
	swap d1
	clr.w d1
	add.l ($2e,a4),d1
	move.l d1,d2
	sub.l ($20e,a2),d1
	bpl.b loc_027948
	neg.l d1

loc_027948
	bra.b loc_027992

loc_02794a:
	move.w (4,a0),d0
	addi.w #$10,d0
	move.w (6,a0),d1
	subi.w #$10,d1
	tst.b ($2c,a4)
	bpl.b loc_027966
	neg.w d0
	neg.w d1
	exg d0,d1

loc_027966:
	swap d0
	swap d1
	clr.w d0
	clr.w d1
	add.l ($2e,a4),d0
	add.l ($2e,a4),d1
	move.l d0,d3
	move.l d1,d2
	sub.l ($20e,a2),d0
	bpl.b loc_027982
	neg.l d0

loc_027982:
	sub.l ($20e,a2),d1
	bpl.b loc_02798a
	neg.l d1

loc_02798a:
	cmp.l d0,d1
	ble.b loc_027992
	dc.w $c340 ;exg d1,d0 snasm error
	exg d2,d3

loc_027992:
	move.w (a0),d3
	add.w (2,a0),d3
	asr.w #1,d3
	swap d3
	clr.w d3
	add.l ($32,a4),d3
	tst.b ($2b2,a3)
	beq.w loc_0279bc
	move.l ($2a2,a3),d0
	sub.l ($20e,a2),d0
	bpl.b loc_0279b6
	neg.l d0

loc_0279b6:
	cmp.l d0,d1
	bge.w loc_027a32

loc_0279bc:
	move.l d2,($2a2,a3)
	move.l d3,($2a6,a3)
	cmpi.l #$80000000,($3e,a4)
	bne.w loc_0279e8
	cmpi.l #$80000000,($42,a4)
	bne.w loc_0279e8
	clr.l ($2aa,a3)
	clr.l ($2ae,a3)
	bra.w loc_027a32

loc_0279e8:
	move.l ($2e,a4),d2
	sub.l ($3e,a4),d2
	move.l d2,($2aa,a3)
	tst.l d2
	bpl.b loc_0279fa
	neg.l d2

loc_0279fa:
	cmpi.l #$100000,d2
	ble.b loc_027a06
	clr.l ($2aa,a3)

loc_027a06:
	move.l ($32,a4),d3
	sub.l ($42,a4),d3
	move.l d3,($2ae,a3)
	tst.l d3
	bpl.b loc_027a18
	neg.l d3

loc_027a18:
	cmpi.l #$100000,d3
	ble.b loc_027a24
	clr.l ($2ae,a3)

loc_027a24:
	move.b ($86,a4),d0
	cmp.b ($2b3,a3),d0
	ble.b loc_027a32
	move.b d0,($2b3,a3)

loc_027a32:
	addq.b #1,($2b2,a3)

loc_027a36:
	movem.l (a7)+,d0-d7/a0-a4

loc_027a3a:
	rts

loc_027a3c:
	rts

loc_027a3e:
	move.l (4,a4),-(a7)
	rts

loc_027a44:
	move.l (a7)+,(4,a4)
	rts

;--------------------------
loc_027a4a:
	movem.l d7/a0,-(a7)
	lea (-$32a,a5),a0
	move.w #$f,d7

loc_027a56:
	clr.w (a0)
	clr.w ($2,a0)
	lea ($a4,a0),a0
	dbra d7,loc_027a56
	lea ($716,a5),a0
	move.w #$1f,d7

loc_027a6c:
	clr.w (a0)
	clr.w (2,a0)
	lea ($86,a0),a0
	dbra d7,loc_027a6c
	movem.l (a7)+,d7/a0
	clr.w ($27f6,a5)
	rts

;--------------------------
loc_027a84:
	movem.l d4/a1,-(a7)
	lea (-$32a,a5),a0
	move.w #$f,d4

loc_027a90:
	tst.w (a0)
	lea ($a4,a0),a0
	dbeq d4,loc_027a90
	bne.w loc_027b6c
	lea (-$a4,a0),a0
	movea.l a0,a1
	move.w #9,d0

loc_027aa8:
	clr.l (a1)+
	clr.l (a1)+
	clr.l (a1)+
	clr.l (a1)+
	dbra d0,loc_027aa8
	clr.w (a1)+
	clr.b (a1)+
	move.w #$f,d0
	sub.w d4,d0
	move.w d2,(0,a0)
	move.l a4,($28,a0)
	addq.w #1,($27f6,a5)
	bne.b loc_027ad0
	addq.w #1,($27f6,a5)

loc_027ad0:
	move.w ($27f6,a5),(2,a0)
	cmpa.l #$10715c,a4
	beq.w loc_027b10
	cmpa.l #$1076bc,a4
	beq.w loc_027b10
	cmpa.l #$107cd6,a4
	bcs.w loc_027b20
	cmpa.l #$1097d6,a4
	bcc.w loc_027b20
	move.b ($24,a4),($24,a0)
	move.b ($25,a4),($25,a0)
	sf ($26,a0)
	bra.b loc_027b2c

loc_027b10:
	move.b (0,a4),($24,a0)
	sf ($25,a0)
	st ($26,a0)
	bra.b loc_027b2c

loc_027b20:
	sf ($24,a0)
	st ($25,a0)
	sf ($26,a0)

loc_027b2c:
	sf ($9b,a0)
	clr.l ($9c,a0)
	move.l #$80000000,($2e,a0)
	move.l #$80000000,($32,a0)
	move.l #$80000000,($3e,a0)
	move.l #$80000000,($42,a0)
	sf ($27,a0)
	moveq #0,d4
	move.w d2,d4
	lsl.l #2,d4
	lea loc_0903b2,a1
	move.l (a1,d4.l),(4,a0)
	bra.b loc_027b70

loc_027b6c:
	move.w #-1,d0

loc_027b70:
	movem.l (a7)+,d4/a1
	tst.w d0
	rts

;--------------------------
loc_027b78:;ai subroutine
	movem.l d4/a1,-(a7)
	lea ($716,a5),a0
	move.l d0,d4
	subi.w #$10,d0
	mulu.w #$86,d0
	adda.l d0,a0
	move.l d4,d0
	move.w d1,d4
	subq.w #1,d4
	bmi.w loc_027c48

loc_027b96:
	addq.w #1,d0
	tst.w (a0)
	lea ($86,a0),a0
	dbeq d4,loc_027b96
	bne.w loc_027c48
	lea (-$86,a0),a0
	subq.w #1,d0
	movea.l a0,a1
	move.w #7,d4

loc_027bb2:
	clr.l (a1)+
	clr.l (a1)+
	clr.l (a1)+
	clr.l (a1)+
	dbra d4,loc_027bb2
	clr.l (a1)+
	clr.b (a1)+
	move.w d2,(0,a0)
	move.l a4,($28,a0)
	addq.w #1,($27f6,a5)
	bne.b loc_027bd4
	addq.w #1,($27f6,a5)

loc_027bd4:
	move.w ($27f6,a5),(2,a0)
	cmpa.l #$10715c,a4
	beq.w loc_027c14
	cmpa.l #$1076bc,a4
	beq.w loc_027c14
	cmpa.l #$107cd6,a4
	bcs.w loc_027c24
	cmpa.l #$1097d6,a4
	bcc.w loc_027c24
	move.b ($24,a4),($24,a0)
	move.b ($25,a4),($25,a0)
	sf ($26,a0)
	bra.b loc_027c30

loc_027c14:
	move.b 0(a4),($24,a0)
	sf ($25,a0)
	st ($26,a0)
	bra.b loc_027c30

loc_027c24:
	sf ($24,a0)
	st ($25,a0)
	sf ($26,a0)

loc_027c30:
	sf ($27,a0)
	moveq #0,d4
	move.w d2,d4
	lsl.l #2,d4
	lea loc_0903b2,a1
	move.l (a1,d4.l),(4,a0)
	bra.b loc_027c4c

loc_027c48:
	move.w #-1,d0

loc_027c4c:
	movem.l (a7)+,d4/a1
	tst.w d0
	rts

;--------------------------
loc_027c54:
	movem.l d4/a1,-(a7)
	lea ($716,a5),a0
	move.l d0,d4
	subi.w #$10,d0
	mulu.w #$86,d0
	adda.l d0,a0
	move.l d4,d0
	tst.w (0,a0)
	beq.b loc_027c86
	tst.l ($62,a0)
	beq.b loc_027c86
	exg a0,a4
	move.l a2,d4
	movea.l ($62,a4),a2
	bsr.w loc_028426
	movea.l d4,a2
	exg a0,a4

loc_027c86:
	movea.l a0,a1
	move.w #7,d4

loc_027c8c:
	clr.l (a1)+
	clr.l (a1)+
	clr.l (a1)+
	clr.l (a1)+
	dbra d4,loc_027c8c
	clr.l (a1)+
	clr.b (a1)+
	move.w d2,(0,a0)
	move.l a4,($28,a0)
	addq.w #1,($27f6,a5)
	bne.b loc_027cae
	addq.w #1,($27f6,a5)

loc_027cae:
	move.w ($27f6,a5),($2,a0)
	cmpa.l #$10715c,a4
	beq.w loc_027cee
	cmpa.l #$1076bc,a4
	beq.w loc_027cee
	cmpa.l #$107cd6,a4
	bcs.w loc_027cfe
	cmpa.l #$1097d6,a4
	bcc.w loc_027cfe
	move.b ($24,a4),($24,a0)
	move.b ($25,a4),($25,a0)
	sf ($26,a0)
	bra.b loc_027d0a

loc_027cee:
	move.b (0,a4),($24,a0)
	sf ($25,a0)
	st ($26,a0)
	bra.b loc_027d0a

loc_027cfe:
	sf ($24,a0)
	st ($25,a0)
	sf ($26,a0)

loc_027d0a:
	sf ($27,a0)
	moveq #0,d4
	move.w d2,d4
	lsl.l #2,d4
	lea loc_0903b2,a1
	move.l (a1,d4.l),($4,a0)
	movem.l (a7)+,d4/a1
	tst.w d0
	rts

;--------------------------
loc_027d28:
	movem.l d4/a1,-(a7)
	lea ($716,a5),a0
	move.l d0,d4
	subi.w #$10,d0
	mulu.w #$86,d0
	adda.l d0,a0
	move.l d4,d0
	move.w (0,a0),d2 
	movem.l (a7)+,d4/a1
	rts

;--------------------------
loc_027d48:
	movem.l d0/a0,-(a7)
	cmpi.w #$10,d0
	bhi.b loc_027d66
	lea (-$32a,a5),a0
	mulu.w #$a4,d0
	adda.l d0,a0
	clr.w (0,a0)
	clr.w (2,a0)
	bra.b loc_027da0

loc_027d66:
	cmpi.w #$30,d0
	bhi.w loc_027da0
	subi.w #$10,d0
	lea ($716,a5),a0
	mulu.w #$86,d0
	adda.l d0,a0
	tst.w (0,a0)
	beq.b loc_027d98
	tst.l ($62,a0)
	beq.b loc_027d98
	exg a0,a4
	move.l a2,d4
	movea.l ($62,a4),a2
	bsr.w loc_028426
	movea.l d4,a2
	exg a0,a4

loc_027d98:
	clr.w (0,a0)
	clr.w (2,a0)

loc_027da0:
	movem.l (a7)+,d0/a0
	rts

;--------------------------
loc_027da6:
	movem.l d4/a1,-(a7)
	lea (-$32a,a5),a0
	move.l d0,-(a7)
	mulu.w #$a4,d0
	adda.l d0,a0
	move.l (a7)+,d0
	move.w d1, d4
	subq.w #1,d4
	bmi.w loc_027dda

loc_027dc0:
	cmpi.w #$10,d0
	bhi.w loc_027dda
	cmp.w (0,a0),d2
	beq.w loc_027dde
	addq.w #1, d0
	lea ($a4,a0),a0
	dbra d4,loc_027dc0

loc_027dda:
	move.w #-1,d0

loc_027dde:
	movem.l (a7)+,d4/a1
	tst.w d0
	rts

;--------------------------
loc_027de6:
	tst.l ($62,a4)
	beq.b loc_027df4
	movea.l ($62,a4),a2
	bsr.w loc_028426

loc_027df4:
	clr.w (a4)
	clr.w (2,a4)

loc_027dfa:
	movem.l d0-d3/a0-a2,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),d0-d3/a0-a2
	bra.b loc_027dfa

loc_027e0e:
	cmpa.l #$108716,a4
	bcc.w loc_027e30
	movem.l d0/a0,-(a7)
	lea ($2c,a4),a0
	move.w #$77,d0

loc_027e24:
	clr.b (a0)+
	dbra d0,loc_027e24
	movem.l (a7)+, d0/a0
	rts

loc_027e30:
	movem.l d0/a0,-(a7)
	lea ($2c,a4),a0
	move.w #$59,d0

loc_027e3c:
	clr.b (a0)+
	dbra d0,loc_027e3c
	movem.l (a7)+,d0/a0
	rts

;--------------------------
loc_027e48:
	move.l ($36,a4),d0
	tst.b ($2c,a4)
	bpl.b loc_027e54
	neg.l d0

loc_027e54:
	add.l d0,($2e,a4)
	move.l ($3a,a4),d0
	tst.b ($2d,a4)
	bpl.b loc_027e64
	neg.l d0

loc_027e64:
	add.l d0,($32,a4)
	bsr.w loc_027e6e
	rts

loc_027e6e:
	rts

;--------------------------
loc_027e70:
	move.l a0,($48,a4)
	clr.w ($4c,a4)
	clr.w ($4e,a4)
	clr.b ($53,a4)
	clr.w ($5e,a4)
	addq.w #1,($46,a4)

loc_027e88:
	move.l d0,-(a7)
	bsr.w loc_027ef6
	move.l (a7)+,d0
	cmp.w ($4e,a4),d0
	bgt.b loc_027e88
	move.l a0,($48,a4)
	tst.w ($4c,a4)
	beq.b loc_027e88
	bra.w loc_027ec6

loc_027ea4:
	clr.b ($53,a4)
	subq.w #1,($4c,a4)
	bgt.w loc_027ec6

loc_027eb0:
	clr.w ($4c,a4)
	movea.l ($48,a4),a0
	bsr.w loc_027ef6
	move.l a0,($48,a4)
	tst.w ($4c,a4)
	beq.b loc_027eb0

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_027ec6:
	lea loc_200000,a1
	moveq #0,d0
	move.w ($50,a4),d0
	lsl.l #2,d0
	movea.l (a1,d0.l),a1
	move.l a1,($54,a4)
	rts

;--------------------------
loc_027ede:
	clr.w ($4c,a4)
	movea.l ($48,a4),a0
	bsr.w loc_027ef6
	move.l a0,($48,a4)
	tst.w ($4c,a4)
	beq.b loc_027ede
	bra.b loc_027ec6

;--------------------------
loc_027ef6:
	tst.w (a0)
	bmi.w loc_027f36
	move.w (a0)+,($4c,a4)
	move.w (a0)+,($50,a4)
	move.b (a0)+,($52,a4)
	tst.b (a0)+
	beq.b loc_027f1a
	move.w (a0)+,($58,a4)
	move.w (a0)+,($5a,a4)
	move.w (a0)+,($5c,a4)
	bra.b loc_027f26

loc_027f1a:
	clr.w ($58,a4)
	clr.w ($5a,a4)
	clr.w ($5c,a4)

loc_027f26:
	addq.w #1,($4e,a4)
	bset #0,($53,a4)
	sf d0
	bra.w loc_027f5c

loc_027f36:
	movem.l d1-d7/a1-a3,-(a7)
	move.w (a0)+,d0
	andi.w #$7fff,d0
	ext.l d0
	lsl.l #2,d0
	lea loc_09062e,a1
	movea.l (a1,d0.l),a1
	jsr (a1)
	movem.l (a7)+,d1-d7/a1-a3
	bset #4,($53,a4)
	st d0

loc_027f5c:
	tst.b d0
	rts

;--------------------------
loc_027f60:
	subq.w #2,a0
	move.w #1,($4c,a4)
	bset #2,($53,a4)
	rts

;--------------------------
loc_027f70:
	clr.w ($4e,a4)
	move.w (a0)+,d0
	movea.l (a0),a0
	tst.w d0
	beq.w loc_027fa0

loc_027f7e:
	move.l d0,-(a7)
	bsr.w loc_027ef6
	move.l (a7)+,d0
	btst #1,($2e1,a4)
	bne.w loc_027fa0
	btst #2,($2e1,a4)
	bne.w loc_027fa0
	cmp.w ($4e,a4),d0
	bne.b loc_027f7e

loc_027fa0
	bset #1,($53,a4)
	rts

;--------------------------
loc_027fa8:
	st ($27,a4)
	movea.l ($54,a4),a0
	move.w ($2e,a4),d0
	move.w ($32,a4),d1
	move.w ($58,a4),d4
	move.w ($5a,a4),d5
	move.w ($5c,a4),d2
	move.w ($5e,a4),d3
	move.w ($60,a4),d6
	eor.b d6,d2
	clr.b d6
	add.w d6,d2
	btst #0,d2
	beq.w loc_027fdc
	neg.w d4

loc_027fdc:
	btst #1,d2
	beq.w loc_027fe6
	neg.w d5

loc_027fe6:
	tst.b ($2c,a4)
	bpl.w loc_027ff2
	eori.w #1,d2

loc_027ff2:
	tst.b ($2d,a4)
	bpl.w loc_027ffe
	eori.w #2,d2

loc_027ffe:
	jsr loc_004158
	rts

;--------------------------
loc_028006:
	move.b #1,($27,a4)
	movea.l ($54,a4),a0
	move.w ($2e,a4),d0
	move.w ($32,a4),d1
	move.w ($58,a4),d4
	move.w ($5a,a4),d5
	move.w ($5c,a4),d2
	move.w ($60,a4),d6
	eor.b d6,d2
	clr.b d6
	add.w d6,d2
	tst.b ($2c,a4)
	bpl.w loc_02803a
	eori.w #1,d2

loc_02803a:
	tst.b ($2d,a4)
	bpl.w loc_028046
	eori.w #2,d2

loc_028046:
	move.w ($5e,a4),d3
	beq.w loc_028056
	jsr loc_00431c
	rts

loc_028056:
	jsr loc_0041d8
	rts

;--------------------------
;Projectile
loc_02805e:
	tst.l ($9c,a4)
	beq.w loc_02810e
	movem.l d1-d7/a0-a2,-(a7)
	movea.l ($9c,a4),a0
	lea (-$32a,a5),a2
	move.b ($24,a4),d2
	moveq #0,d0
	move.w #$f,d1

loc_02807c:
	tst.w (a2)
	beq.w loc_0280fe
	tst.b ($25,a2)
	bne.w loc_0280fe
	cmp.b ($24,a2),d2
	beq.w loc_0280fe
	move.l ($9c,a2),d3
	beq.w loc_0280fe
	movea.l d3,a1
	movem.l d0-d2,-(a7)
	move.w ($2e,a2),d2
	sub.w ($2e,a4),d2
	tst.b ($2c,a4)
	bpl.w loc_0280b2
	neg.w d2

loc_0280b2:
	swap d2
	move.w ($32,a2),d2
	sub.w ($32,a4),d2
	tst.b ($2d,a4)
	bpl.w loc_0280c6
	neg.w d2

loc_0280c6:
	moveq #0,d3
	move.b ($2c,a4),d3
	move.b ($2c,a2),d4
	eor.b d4,d3
	swap d3
	move.b ($2d,a4),d3
	move.b ($2d,a2),d4
	eor.b d4,d3
	jsr loc_0229bc
	movem.l (a7)+,d0-d2
	beq.w loc_0280fe
	st ($9b,a2)
	move.l a4,($a0,a2)
	addq.w #1,d0
	move.b d0,($9b,a4)
	move.l a2,($a0,a4)

loc_0280fe:
	lea ($a4,a2),a2
	dbra d1,loc_02807c
	movem.l (a7)+,d1-d7/a0-a2
	tst.b d0
	rts

loc_02810e:
	clr.b d0
	rts 

;--------------------------
loc_028112:
	bsr.w loc_0278e0
	clr.b ($9a,a4)
	tst.l ($9c,a4)
	beq.w loc_028168
	btst #4,($87,a4)
	sne d1
	movea.l ($9c,a4),a0
	move.b ($24,a4),d0
	not.b d0
	move.w ($2e,a4),d2
	swap d2
	move.w ($32,a4),d2
	moveq #0,d3
	move.b ($2c,a4),d3
	swap d3
	move.b ($2d,a4),d3
	jsr loc_02289c
	move.b d0,($9a,a4)
	andi.b #3,d0
	beq.w loc_028168
	bset #7,($87,a4)
	tst.b ($9a,a4)
	rts

loc_028168:
	clr.b d0
	rts

;--------------------------
loc_02816c:
	movem.l a3,-(a7)
	movea.l ($28,a4),a3
	move.b ($208,a3),($2c,a4)
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.b ($245,a3),($86,a4)
	move.b ($24c,a3),($87,a4)
	bset #6,($87,a4)
	move.b ($24d,a3),($88,a4)
	move.b ($24e,a3),($89,a4)
	move.b ($24f,a3),($8a,a4)
	move.b ($250,a3),($8b,a4)
	move.w ($252,a3),($8c,a4)
	move.w ($254,a3),($8e,a4)
	move.w ($256,a3),($90,a4)
	move.w ($258,a3),($92,a4)
	move.w ($25a,a3),($94,a4)
	move.w ($25c,a3),($96,a4)
	move.w ($27a,a3),($98,a4)
	sf d0
	btst #3,($24c,a3)
	beq.w loc_0281f0
	tst.b ($249,a3)
	bne.w loc_0281f0
	bra.b loc_0281f2

loc_0281f0:
	st d0

loc_0281f2:
	movem.l (a7)+,a3
	tst.b d0
	rts

;--------------------------
loc_0281fa:;Player
	movem.l d0-d1/d4-d7/a3,-(a7)
	tst.b ($24,a4)
	bmi.w loc_02820e
	lea (p2ma5,a5),a3
	bra.w loc_028212

loc_02820e:
	lea (p1ma5,a5),a3

loc_028212:
	tst.b ($2d,a4)
	bpl.w loc_028220
	exg d4,d5
	neg.w d4
	neg.w d5

loc_028220:
	move.b ($208,a3),d0
	move.b ($2c,a4),d1
	eor.b d0,d1
	bpl.w loc_028234
	exg d6,d7
	neg.w d6
	neg.w d7

loc_028234:
	move.w ($2e,a4),d0
	sub.w ($20e,a3),d0
	tst.b ($208,a3)
	bpl.w loc_028246
	neg.w d0

loc_028246:
	add.w d0,d6
	add.w d0,d7
	move.w ($32,a4),d0
	sub.w ($212,a3),d0
	add.w d0,d4
	add.w d0,d5
	movem.w d4-d7,($27e,a3)
	tst.b ($276,a3)
	beq.w loc_028270
	move.b ($89,a4),d0
	cmp.b ($260,a3),d0
	bcs.w loc_02828c

loc_028270:
	move.b ($87,a4),d0
	bset #6,d0
	bclr #4,d0
	move.b d0,($25e,a3)
	move.b ($88,a4),($25f,a3)
	move.b ($89,a4),($260,a3)

loc_02828c:
	move.b ($8a,a4),d0
	add.b d0,($261,a3)
	move.b ($8b,a4),d0
	add.b d0,($262,a3)
	move.w ($8c,a4),($264,a3)
	move.w ($8e,a4),d0
	add.w d0,($266,a3)
	move.w ($90,a4),d0
	add.w d0,($268,a3)
	move.w ($92,a4),d0
	add.w d0,($26a,a3)
	move.w ($94,a4),d0
	add.w d0,($26c,a3)
	move.w ($96,a4),($26e,a3)
	move.w ($98,a4),($27c,a3)
	move.b ($2c,a4),d0
	not.b d0
	move.b d0,($270,a3)
	move.b ($9a,a4),d0
	or.b d0,($276,a3)
	addq.w #1,($286,a3)
	movem.l (a7)+,d0-d1/d4-d7/a3
	rts

;--------------------------
loc_0282ea:
	tst.b ($2c,a4)
	bpl.b loc_028304
	sub.l d2,($2e,a4)
	cmpi.l #$80000000,($3e,a4)
	beq.b loc_028302
	sub.l d2,($3e,a4)

loc_028302:
	bra.b loc_028316

loc_028304:
	add.l d2,($2e,a4)
	cmpi.l #$80000000,($3e,a4)
	beq.b loc_028316
	add.l d2,($3e,a4)

loc_028316:
	tst.b ($2d,a4)
	bpl.b loc_028330
	sub.l d3,($32,a4)
	cmpi.l #$80000000,($42,a4)
	beq.b loc_02832e
	sub.l d3,($42,a4)

loc_02832e:
 	bra.b loc_028342

loc_028330:
	add.l d3,($32,a4)
	cmpi.l #$80000000,($42,a4)
	beq.b loc_028342
	add.l d3,($42,a4)

loc_028342:
	rts

;--------------------------
loc_028344:
	tst.b ($24,a4)
	bmi.w loc_028352
	lea (p2ma5,a5),a3
	rts

loc_028352:
	lea (p1ma5,a5),a3
	rts

;--------------------------
loc_028358:
	lea ($27d6,a5),a0
	move.w #$1f,d7

loc_028360:
	sf (a0)+
	dbra d7,loc_028360
	rts

;--------------------------
loc_028368:
	movem.l d1-d3/d7/a0,-(a7)
	tst.w d0
	ble.w loc_0283e4
	cmpi.w #$1000,d0
	bhi.w loc_0283e4
	addi.w #$7f,d0
	lsr.w #7,d0
	move.w d0,d2
	lea ($27d6,a5),a0
	move.w #$1f,d7

loc_02838a:
	tst.b (a0,d7.w)
	beq.b loc_02839a
	move.w d2, d0
	dbra d7,loc_02838a
	bra.w loc_0283e4

loc_02839a:
	subq.w #1,d0
	dble d7,loc_02838a
	ble.b loc_0283a6
	bra.w loc_0283e4

loc_0283a6:
	lea (a0,d7.w),a0
	lea ($17d6,a5),a2
	lsl.w #7,d7
	lea (a2,d7.w),a2
	jsr loc_02de10
	ble.b loc_0283c8
	tst.l ($62,a4)
	bne.w loc_0283e4
	move.l a2,($62,a4)

loc_0283c8:
	move.w d2,d7
	subq.w #2,d7
	bmi.w loc_0283da
	move.b #$7f,d3

loc_0283d4:
	move.b d3,(a0)+
	dbra d7,loc_0283d4

loc_0283da:
	move.b #$ff,(a0)+
	move.w d2,d0
	lsl.w #$7,d0
	bra.b loc_0283e8

loc_0283e4:
	move.w #-1,d0

loc_0283e8:
	movem.l (a7)+,d1-d3/d7/a0
	tst.w d0
	rts

;--------------------------
loc_0283f0:
	movem.l d0-d1/d7/a0/a2,-(a7)
	move.l a2,d0
	subi.l #$1097d6,d0
	lsr.w #7,d0
	lea ($27d6,a5),a0
	adda.w d0,a0
	move.w #$1f,d7
	sub.w d0,d7

loc_02840a:
	move.b (a0)+,d1
	beq.b loc_028420
	moveq #7,d0

loc_028410:
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	dbra d0,loc_028410
	tst.b d1
	bpl.b loc_02840a

loc_028420:
	movem.l (a7)+,d0-d1/d7/a0/a2
	rts

;--------------------------
loc_028426:
	movem.l d0-d1/d7/a0,-(a7)
	jsr loc_02de10
	ble.b loc_028436
	clr.l ($62,a4)

loc_028436:
	move.l a2,d0
	subi.l #$1097d6,d0
	cmpi.l #$1000,d0
	bcc.w loc_028462
	lsr.w #7,d0
	lea ($27d6,a5),a0
	adda.w d0,a0
	move.w #$1f,d7
	sub.w d0,d7

loc_028456:
	move.b (a0),d1
	beq.b loc_028462
	sf (a0)+
	tst.b d1
	dble d7,loc_028456

loc_028462:
	movem.l (a7)+,d0-d1/d7/a0
	rts

;--------------------------
loc_028468:
	tst.b (-$3dd,a5)
	beq.w loc_028478
	bsr.w loc_02a4ba
	bra.w loc_028dfa

loc_028478:
	movea.l ($1e2,a4),a0
	movea.l (0,a0),a0
	clr.w d0
	jsr loc_0226f0

loc_028488:
	clr.b ($248,a4)

loc_02848c:
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	bsr.w loc_028f2a
	bsr.w loc_028f40
	move.b ($209,a4),d0
	cmp.b ($208,a4),d0
	beq.b loc_0284c4
	clr.b ($248,a4)
	bsr.w loc_028f50
	movea.l ($1e2,a4),a0
	movea.l (4,a0),a0
	clr.w d0
	jsr loc_0226f0

loc_0284c4:
	btst #1,($246,a4)
	bne.b loc_0284d6
	movea.l ($1de,a4),a0
	movea.l ($24,a0),a0
	jmp (a0)

loc_0284d6:
	btst #0,($2f6,a4)
	beq.w loc_0284f2
	tst.w ($20c,a4)
	bne.w loc_0284f2
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_0284f2:
	bsr.w loc_028d7c
	beq.w loc_028504
	movea.l ($1de,a4),a0
	movea.l ($2c,a0),a0
	jmp (a0)

loc_028504:
	btst #1,($2f6,a4)
	beq.w loc_028518
	movea.l ($1de,a4),a0
	movea.l ($10,a0),a0
	jmp (a0)

loc_028518:
	cmpi.b #8,($2f6,a4)
	bne.w loc_02852c
	movea.l ($1de,a4),a0
	movea.l ($18,a0),a0
	jmp (a0)

loc_02852c:
	cmpi.b #4,($2f6,a4)
	bne.w loc_028540
	movea.l ($1de,a4),a0
	movea.l ($1c,a0),a0
	jmp (a0)

loc_028540:
	tst.b ($248,a4)
	beq.w loc_028558
	movea.l ($1e2,a4),a0
	movea.l (0,a0),a0
	clr.w d0
	jsr loc_0226f0

loc_028558:
	jsr loc_02269c
	bra.w loc_028488

;-----------------------
loc_028562:
	movea.l ($1e2,a4),a0
	movea.l ($14,a0),a0
	clr.w d0
	jsr loc_0226f0

loc_028572:
	movea.l ($1e6,a4),a0
	movea.l (4,a0),a0
	jsr loc_023384
	move.b #2,($248,a4)
	bsr.w loc_028f2a
	bsr.w loc_028f40
	move.b ($209,a4),d0
	cmp.b ($208,a4),d0
	beq.b loc_0285ac
	bsr.w loc_028f50
	movea.l ($1e2,a4),a0
	movea.l ($18,a0),a0
	clr.w d0
	jsr loc_0226f0

loc_0285ac:
	btst #1,($246,a4)
	bne.b loc_0285be
	movea.l ($1de,a4),a0
	movea.l ($24,a0),a0
	jmp (a0)

loc_0285be:
	bsr.w loc_028d7c
	beq.w loc_0285d0
	movea.l ($1de,a4),a0
	movea.l ($2c,a0),a0
	jmp (a0)

loc_0285d0:
	btst #1,($2f6,a4)
	bne.w loc_0285e4
	movea.l ($1de,a4),a0
	movea.l ($14,a0),a0
	jmp (a0)

loc_0285e4:
	jsr loc_02269c
	bra.b loc_028572

;--------------------------
loc_0285ec:
	move.w ($2d6,a4),d1
	subq.w #1,d1
	bgt.w loc_028600
	movea.l ($1de,a4),a0
	movea.l (4,a0),a0
	jmp (a0)

loc_028600:
	moveq #2,d0
	subq.w #1,d1
	ble.w loc_02860a
	moveq #0,d0

loc_02860a:
	movea.l ($1e2,a4),a0
	movea.l ($10,a0),a0
	move.w d0,d0
	jsr loc_0226f0
	bra.w loc_02862e

;--------------------------
loc_02861e:
	movea.l ($1e2,a4),a0
	movea.l ($10,a0),a0
	clr.w d0
	jsr loc_0226f0

;--------------------------
loc_02862e:
	move.b #2,($248,a4)
	bsr.w loc_028f2a
	bsr.w loc_028f40

loc_02863c:
	movea.l ($1e6,a4),a0
	movea.l (4,a0),a0
	jsr loc_023384
	move.b ($209,a4),d0
	cmp.b ($208,a4),d0
	beq.b loc_02865e
	movea.l ($1de,a4),a0
	movea.l (4,a0),a0
	jmp (a0)

loc_02865e:
	btst #1,($246,a4)
	bne.b loc_028670
	movea.l ($1de,a4),a0
	movea.l ($24,a0),a0
	jmp (a0)

loc_028670:
	btst #0,($2f6,a4)
	beq.w loc_02868c
	tst.w ($20c,a4)
	bne.w loc_02868c
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_02868c:
	bsr.w loc_028d7c
	beq.w loc_02869e
	movea.l ($1de,a4),a0
	movea.l ($2c,a0),a0
	jmp (a0)

loc_02869e:
	btst #1,($2f6,a4)
	bne.w loc_0286ac
	bra.w loc_0286ca

loc_0286ac:
	btst #2,($2e1,a4)
	beq.w loc_0286c0
	movea.l ($1de,a4),a0
	movea.l (4,a0),a0
	jmp (a0)

loc_0286c0:
	jsr loc_02269c
	bra.w loc_02863c

;--------------------------
loc_0286ca:
	move.w ($2d6,a4),d1
	subq.w #1,d1
	bgt.w loc_0286de
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_0286de:
	moveq #2,d0
	subq.w #1,d1
	ble.w loc_0286e8
	moveq #0,d0

loc_0286e8:
	movea.l ($1e2,a4),a0
	movea.l ($1c,a0),a0
	move.w d0,d0
	jsr loc_0226f0
	bra.w loc_02870c

;--------------------------
loc_0286fc:
	movea.l ($1e2,a4),a0
	movea.l ($1c,a0),a0
	clr.w d0
	jsr loc_0226f0

loc_02870c:
	clr.b ($248,a4)
	bsr.w loc_028f2a
	bsr.w loc_028f40

loc_028718:
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	move.b ($209,a4),d0
	cmp.b ($208,a4),d0
	beq.b loc_02873a
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_02873a:
	btst #1,($246,a4)
	bne.b loc_02874c
	movea.l ($1de,a4),a0
	movea.l ($24,a0),a0
	jmp (a0)

loc_02874c:
	btst #0,($2f6,a4)
	beq.w loc_028768
	tst.w ($20c,a4)
	bne.w loc_028768
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_028768:
	bsr.w loc_028d7c
	beq.w loc_02877a
	movea.l ($1de,a4),a0
	movea.l ($2c,a0),a0
	jmp (a0)

loc_02877a:
	btst #1,($2f6,a4)
	beq.w loc_028788
	bra.w loc_0285ec

;--------------------------
loc_028788:
	btst #2,($2e1,a4)
	beq.w loc_02879c
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_02879c:
	jsr loc_02269c
	bra.w loc_028718

;--------------------------
loc_0287a6:
	andi.b #8,($248,a4)
	bset #3,($248,a4)
	bne.w loc_0287c6
	movea.l ($1e2,a4),a0
	movea.l (8,a0),a0
	clr.w d0
	jsr loc_0226f0

loc_0287c6:
	movea.l ($1ea,a4),a0
	move.l (0,a0),($216,a4)
	jsr loc_02269c
	movea.l ($1de,a4),a0
	movea.l ($8,a0),a0
	jmp (a0)

;--------------------------
loc_0287e0:
	andi.b #4,($248,a4)
	bset #2,($248,a4)
	bne.w loc_028800
	movea.l ($1e2,a4),a0
	movea.l ($c,a0),a0
	clr.w d0
	jsr loc_0226f0

loc_028800:
	movea.l ($1ea,a4),a0
	move.l (4,a0),($216,a4)
	jsr loc_02269c
	movea.l ($1de,a4),a0
	movea.l ($8,a0),a0
	jmp (a0)

;--------------------------
loc_02881a:
	move.b #1,($248,a4)
	bsr.w loc_028f2a
	bsr.w loc_028f40
	bsr.w loc_028f50
	clr.b ($24a,a4)
	bset #2,($24a,a4)
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	movea.l ($1e2,a4),a0
	movea.l ($20,a0),a0
	clr.w d0
	jsr loc_0226f0
	cmpi.b #9,($2f6,a4)
	beq.b loc_02887c
	cmpi.b #5,($2f6,a4)
	beq.b loc_028894
	bclr #3,($248,a4)
	bclr #2,($248,a4)
	movea.l ($1ea,a4),a0
	move.l (8,a0),($216,a4)
	bra.b loc_0288aa

;--------------------------
loc_02887c:
	bset #3,($248,a4)
	bclr #2,($248,a4)
	movea.l ($1ea,a4),a0
	move.l ($c,a0),($216,a4)
	bra.b loc_0288aa

loc_028894:
	bset #2,($248,a4)
	bclr #3,($248,a4)
	movea.l ($1ea,a4),a0
	move.l ($10,a0),($216,a4)

loc_0288aa:
	movea.l ($1ea,a4),a0
	move.l ($14,a0),($21a,a4)

loc_0288b4:
	btst #2,($2e1,a4)
	bne.b loc_0288e4
	jsr loc_02269c
	move.l (-$45de,a5),($212,a4)
	move.l (-$45de,a5),($310,a4)
	move.l ($216,a4),d0
	tst.b ($208,a4)
	bpl.b loc_0288da
	neg.l d0

loc_0288da:
	sub.l d0,($20e,a4)
	sub.l d0,($30c,a4)
	bra.b loc_0288b4

;--------------------------
loc_0288e4:
	move.b #4,($24a,a4)
	btst #3,($248,a4)
	bne.w loc_028912
	btst #2,($248,a4)
	bne.w loc_02892c
	movea.l ($1e2,a4),a0
	movea.l ($24,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028942

loc_028912:
	bset #3,($248,a4)
	movea.l ($1e2,a4),a0
	movea.l ($28,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028942

loc_02892c:
	bset #2,($248,a4)
	movea.l ($1e2,a4),a0
	movea.l ($2c,a0),a0
	clr.w d0
	jsr loc_0226f0

loc_028942:
	movea.l ($1ea,a4),a0
	move.l ($18,a0),d0
	add.l d0,($21a,a4)
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

;--------------------------
loc_028958:
	btst #1,($246,a4)
	beq.w loc_02896a
	tst.l ($21a,a4)
	bpl.w loc_02899e

loc_02896a:
	bset #1,($248,a4)
	move.b #4,($24a,a4)
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384

loc_028984:
	jsr loc_02269c
	movea.l ($1ea,a4),a0
	move.l ($18,a0),d0
	add.l d0,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_028984

loc_02899e:
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	clr.b ($248,a4)
	bsr.w loc_028f2a
	bsr.w loc_028f40
	move.b #4,($24a,a4)
	movea.l ($1e2,a4),a0
	movea.l ($30,a0),a0
	clr.w d0
	jsr loc_0226f0

loc_0289ce:
	btst #0,($2f6,a4)
	beq.w loc_0289ea
	tst.w ($20c,a4)
	bne.w loc_0289ea
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_0289ea:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_0289ce
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_028a02:
	clr.b ($249,a4)
	clr.b ($24c,a4)
	clr.b ($24d,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	movea.l ($1e2,a4),a0
	movea.l ($34,a0),a0
	clr.w d0
	jsr loc_0226f0
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

;--------------------------
loc_028a30:
	btst #1,($248,a4)
	bne.w loc_028a8e
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	bsr.w loc_028f58
	move.w d1,d5
	bgt.b loc_028a7a
	blt.b loc_028a66
	movea.l ($1e2,a4),a0
	movea.l ($3c,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028b8c

loc_028a66:
	movea.l ($1e2,a4),a0
	movea.l ($38,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028b8c

loc_028a7a:
	movea.l ($1e2,a4),a0
	movea.l ($40,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028b8c

loc_028a8e:
	movea.l ($1e6,a4),a0
	movea.l (4,a0),a0
	jsr loc_023384
	bsr.w loc_028f8e
	move.w d1,d5
	bgt.b loc_028ace
	blt.b loc_028aba
	movea.l ($1e2,a4),a0
	movea.l ($60,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028b8c

loc_028aba:
	movea.l ($1e2,a4),a0
	movea.l ($5c,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028b8c

loc_028ace:
	movea.l ($1e2,a4),a0
	movea.l ($64,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028b8c

loc_028ae2:
	btst #1,($248,a4)
	bne.w loc_028b40
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	bsr.w loc_028f58
	move.w d1,d5
	bgt.b loc_028b2c
	blt.b loc_028b18
	movea.l ($1e2,a4),a0
	movea.l ($48,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028b8c

loc_028b18:
	movea.l ($1e2,a4),a0
	movea.l ($44,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028b8c

loc_028b2c:
	movea.l ($1e2,a4),a0
	movea.l ($4c,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028b8c

loc_028b40:
	movea.l ($1e6,a4),a0
	movea.l ($4,a0),a0
	jsr loc_023384
	bsr.w loc_028f8e
	move.w d1,d5
	bgt.b loc_028b7c
	blt.b loc_028b6a
	movea.l ($1e2,a4),a0
	movea.l ($6c,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_028b8c

loc_028b6a:
	movea.l ($1e2,a4),a0
	movea.l ($68,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_028b8c

loc_028b7c:
	movea.l ($1e2,a4),a0
	movea.l ($70,a0),a0
	clr.w d0
	jsr loc_0226f0

loc_028b8c:
	andi.b #2,($248,a4)
	bsr.w loc_028f2a
	bsr.w loc_028f40
	btst #1,($246,a4)
	bne.b loc_028bac
	movea.l ($1de,a4),a0
	movea.l ($24,a0),a0
	jmp (a0)

loc_028bac:
	btst #0,($2f6,a4)
	beq.w loc_028bc8
	tst.w ($20c,a4)
	bne.w loc_028bc8
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_028bc8:
	bsr.w loc_028d7c
	beq.w loc_028cbc
	bsr.w loc_028f50
	btst #1,($2f6,a4)
	bne.w loc_028c4a
	bsr.w loc_028f58
	cmp.w d5,d1
	bne.w loc_028bf2
	bclr #1,($248,a4)
	beq.w loc_028cb2

loc_028bf2:
	move.w d1,d5
	bclr #1,($248,a4)
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	tst.w d5
	bgt.b loc_028c36
	blt.b loc_028c22
	movea.l ($1e2,a4),a0
	movea.l ($48,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028cb2

loc_028c22:
	movea.l ($1e2,a4),a0
	movea.l ($44,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028cb2

loc_028c36:
	movea.l ($1e2,a4),a0
	movea.l ($4c,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028cb2

loc_028c4a:
	bsr.w loc_028f8e
	cmp.w d5,d1
	bne.w loc_028c5e
	bset #1,($248,a4)
	bne.w loc_028cb2

loc_028c5e:
	move.w d1,d5
	bset #1,($248,a4)
	movea.l ($1e6,a4),a0
	movea.l ($4,a0),a0
	jsr loc_023384
	tst.w d5
	bgt.b loc_028ca2
	blt.b loc_028c8e
	movea.l ($1e2,a4),a0
	movea.l ($6c,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028cb2

loc_028c8e:
	movea.l ($1e2,a4),a0
	movea.l ($68,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028cb2

loc_028ca2:
	movea.l ($1e2,a4),a0
	movea.l ($70,a0),a0
	clr.w d0
	jsr loc_0226f0

loc_028cb2:
	jsr loc_02269c
	bra.w loc_028b8c

loc_028cbc:
	andi.b #2,($248,a4)
	bsr.w loc_028f2a
	bsr.w loc_028f40
	btst #1,($248,a4)
	bne.w loc_028d12
	bsr.w loc_028f58
	bgt.b loc_028d00
	blt.b loc_028cee
	movea.l ($1e2,a4),a0
	movea.l ($54,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_028d4e

loc_028cee:
	movea.l ($1e2,a4),a0
	movea.l ($50,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_028d4e

loc_028d00:
	movea.l ($1e2,a4),a0
	movea.l ($58,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_028d4e

loc_028d12:
	bsr.w loc_028f8e
	bgt.b loc_028d3e
	blt.b loc_028d2c
	movea.l ($1e2,a4),a0
	movea.l ($78,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_028d4e

loc_028d2c:
	movea.l ($1e2,a4),a0
	movea.l ($74,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.b loc_028d4e

loc_028d3e:
	movea.l ($1e2,a4),a0
	movea.l ($7c,a0),a0
	clr.w d0
	jsr loc_0226f0

loc_028d4e:
	btst #2,($2e1,a4)
	bne.b loc_028d5e
	jsr loc_02269c
	bra.b loc_028d4e

loc_028d5e:
	btst #1,($248,a4)
	bne.w loc_028d72
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_028d72
	movea.l ($1de,a4),a0
	movea.l (4,a0),a0
	jmp (a0)

;--------------------------
loc_028d7c:
	tst.b ($2fa,a4)
	beq.w loc_028dee
	tst.b ($2b2,a3)
	beq.w loc_028dc8
	move.l ($2a2,a3),d0
	move.l ($20e,a4),d1
	tst.b ($209,a4)
	bmi.w loc_028db2
	cmp.l d1, d0
	blt.w loc_028dc8
	subi.l #$800000,d0
	cmp.l d1,d0
	bgt.w loc_028dc8
	bra.w loc_028df2

loc_028db2:
	cmp.l d1,d0
	bgt.w loc_028dc8
	addi.l #$800000,d0
	cmp.l d1,d0
	blt.w loc_028dc8
	bra.w loc_028df2

loc_028dc8:
	btst #3,($24c,a3)
	beq.w loc_028dee
	move.l ($226,a3),d0
	move.w ($242,a3),d1
	swap d1
	clr.w d1
	addi.l #$400000,d1
	cmp.l d1,d0
	bgt.w loc_028dee
	bra.w loc_028df6

loc_028dee:
	moveq #0,d0
	rts

loc_028df2:
	moveq #-1,d0
	rts

loc_028df6:
	moveq #1,d0
	rts

;--------------------------
loc_028dfa:
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	movea.l ($1e2,a4),a0
	movea.l ($80,a0),a0
	clr.w d0
	jsr loc_0226f0
	move.b #$80,($248,a4)
	bsr.w loc_028f2a
	bsr.w loc_028f40
	bsr.w loc_028f50

loc_028e2a:
	st ($24a,a4)
	jsr loc_02269c
	tst.b (-$3e0,a5)
	beq.b loc_028e2a
	move.w #-1,($2bc,a4)
	tst.b (0,a4)
	bmi.w loc_028e56
	btst #0,(-$3dc,a5)
	bne.w loc_028e64
	bra.w loc_028f08

loc_028e56:
	btst #1,(-$3dc,a5)
	bne.w loc_028e64
	bra.w loc_028f08

loc_028e64:
	move.w ($1f2,a4),d0
	asr.w #6,d0
	cmpi.w #$78,d0
	beq.w loc_028ec0
	cmpi.w #$70,d0
	blt.b loc_028e86
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcs.w loc_028ec0

loc_028e86:
	cmpi.w #$28,d0
	blt.b loc_028e9a
	jsr RandomNumberGod
	cmpi.w #$1000,d0
	bcs.w loc_028ec0

loc_028e9a:
	cmpi.w #3,(-$f26,a5)
	bge.b loc_028eb0
	jsr RandomNumberGod
	bmi.w loc_028ef0
	bra.w loc_028ed8

loc_028eb0:
	move.w ($1e,a4),d0
	cmp.w  (-$f28,a5),d0
	bge.w loc_028ef0
	bra.w loc_028ed8

loc_028ec0:
	bsr.w loc_028f50
	movea.l ($1e2,a4),a0
	movea.l ($84,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028f18

loc_028ed8:
	bsr.w loc_028f50
	movea.l ($1e2,a4),a0
	movea.l ($88,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028f18

loc_028ef0:
	bsr.w loc_028f50
	movea.l ($1e2,a4),a0
	movea.l ($8c,a0),a0
	clr.w d0
	jsr loc_0226f0
	bra.w loc_028f18

loc_028f08:
	movea.l ($1e2,a4),a0
	movea.l ($90,a0),a0
	clr.w d0
	jsr loc_0226f0

loc_028f18:
	jsr loc_02269c
	bra.b loc_028f18

loc_028f20:
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_028f2a:
;extra22
;	tst.b extraflag
;	beq.b notextra22
	clr.w ($252,a4)

;notextra22
	clr.b ($249,a4)
	clr.b ($24a,a4)
	movea.l #loc_02dab8,a0
	jsr loc_023384
	rts

;--------------------------
loc_028f40:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.l (-$45de,a5),($212,a4)
	rts

;--------------------------
loc_028f50:
	move.b ($209,a4),($208,a4)
	rts

;--------------------------
loc_028f58:
	btst #3,($24c,a3)
	beq.w loc_028fba
	btst #0,($24c,a3)
	bne.w loc_028fc4
	btst #1,($24c,a3)
	bne.w loc_028fba
	btst #2,($244,a3)
	bne.w loc_028fc0
	btst #3,($244,a3)
	bne.w loc_028fc0
	bra.w loc_028fba

;--------------------------
loc_028f8e:
	btst #3,($24c,a3)
	beq.w loc_028fc0
	btst #0,($24c,a3)
	bne.w loc_028fc4
	btst #1,($24c,a3)
	bne.w loc_028fba
	btst #0,($244,a3)
	bne.w loc_028fba
	bra.w loc_028fc0

loc_028fba:
	move.w #1,d1
	rts

;-------------------------
loc_028fc0:
	clr.w d1
	rts

;-------------------------
loc_028fc4:
	move.w #-1,d1
	rts

;-------------------------
;Normal attacks
loc_028fca:
	bsr.w loc_028f40;Momentum removal
	bsr.b loc_028f50

loc_028fd0:
	bsr.w loc_0290b8
	jsr loc_02269c

;extra23 2902c
;	tst.b (extraflag,a5)
;	beq.b notextra23
	tst.b (plextcounter00,a4)
	beq.b notextra23
	btst #5,($24c,a4)
	bne.b notextra23
	btst #1,($246,a4)
	beq.b loc_029000
	bra.b extracheck23done

notextra23:;2904e
	btst #3,($24a,a4)
	bne.w loc_029000

extracheck23done:;29058
	btst #0,($2f6,a4)
	beq.w loc_029000
	tst.w ($20c,a4)
	bne.w loc_029000
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_029000:;29074
	btst #2,($2e1,a4)
	beq.b loc_028fd0
	btst #1,($248,a4)
	bne.w loc_02901c
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_02901c:
	movea.l ($1de,a4),a0
	movea.l ($4,a0),a0
	jmp (a0)

;--------------------------
loc_029026:
	bsr.w loc_0290f8
	jsr loc_02269c
	movea.l ($1ea,a4),a0
	move.l ($18,a0),d0
	add.l d0,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_029026
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

;--------------------------
loc_02904e:
	bsr.w loc_0290f8
	jsr loc_02269c
	tst.w ($2cc,a4)
	bne.w loc_02906c
	movea.l ($1ea,a4),a0
	move.l ($18,a0),d0
	add.l d0,($21a,a4)

loc_02906c:
	btst #1,($246,a4)
	beq.b loc_02904e
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

;--------------------------
loc_02907e:
	sf ($273,a4)

loc_029082:
	bsr.w loc_0290f8
	jsr loc_02269c
	movea.l ($1ea,a4),a0
	move.l ($18,a0),d0
	add.l d0,($21a,a4)
	tst.b ($273,a4)
	beq.w loc_0290a6
	bclr #0,($24c,a4)

loc_0290a6:
	btst #1,($246,a4)
	beq.b loc_029082
	movea.l ($1de,a4),a0
	movea.l ($28,a0),a0
	jmp (a0)

;--------------------------
loc_0290b8:
	st ($24a,a4)
	tst.w ($2c0,a4)
	ble.b loc_0290c8
	bclr #5,($24a,a4)

loc_0290c8:
	cmpi.w #1,($2c4,a4)
	bgt.w loc_0290d8
	bclr #1,($24a,a4)

loc_0290d8:
	tst.b ($2c7,a4)
	beq.w loc_0290e6
	bclr #4,($24a,a4)

loc_0290e6:
	cmpi.w #1,($2c2,a4)
	bgt.w loc_0290f6
	move.b #4,($24a,a4)

loc_0290f6:
	rts

;--------------------------
loc_0290f8:
	move.b #$f7,($24a,a4)
	tst.w ($2c0,a4)
	ble.w loc_02910c
	bclr #5,($24a,a4)

loc_02910c:
	cmpi.w #1,($2c4,a4)
	bgt.w loc_02911c
	bclr #1,($24a,a4)

loc_02911c:
	tst.b ($2c7,a4)
	beq.w loc_02912a
	bclr #4,($24a,a4)

loc_02912a:
	cmpi.w #1,($2c2,a4)
	bgt.w loc_02913a
	move.b #5,($24a,a4)

loc_02913a:
	rts

;--------------------------
loc_02913c:
	tst.b (-$3de,a5)
	bne.w loc_029184
	tst.b (-$3dd,a5)
	beq.w loc_029192

;To allow post ko hits
	sf (-$3de,a5);398 = 3de
	tst.b (-$3dd,a5);397 = 3dd
	beq loc_029192
	sf (-$3de,a5)
	tst.b (-$3dd,a5)
	beq loc_029192

;extra24 291ca
;	tst.b (extraflag,a5)
;	beq notextra24

	tst.b (-$3e0,a5);39a = 3e0,Score addup
	beq loc_029192

notextra24:
	move.w #$64,($20c,a4)
	btst #1,($246,a4)
	beq.w loc_029192
	clr.b ($2f6,a4)
	clr.w ($2fe,a4)
	btst #2,($24a,a4)
	bne.w loc_02918c
	btst #7,($248,a4)
	bne.b loc_02918c
	btst #7,($249,a4)
	bne.b loc_02918c
	bsr.w loc_02a4ba
	bra.b loc_02918c

loc_029184:
	clr.b ($2f6,a4)
	clr.w ($2fe,a4)

loc_02918c:
	move.w #-1,d0
	rts

loc_029192:
	clr.w d0
	rts

;--------------------------
loc_029196:
	movea.l #loc_02dad2,a0
	jsr loc_023384
	rts

;--------------------------
loc_0291a4:
	clr.w ($2bc,a4)
	move.b #-5,($24a,a4)
	move.b ($25f,a4),d2
	andi.w #7,d2
	lsl.w #1,d2
	lea loc_02db90(pc),a0
	move.w (a0,d2.w),d7
	subq.w #2,d7
	lea loc_02dba0(pc),a0
	move.b ($260,a4),d0
	cmpi.b #1,d0
	beq.w loc_0291fe
	cmpi.b #2,d0
	beq.w loc_0291fe
	cmpi.b #7,d0
	beq.w loc_0291fe
	cmpi.b #8,d0
	beq.w loc_0291fe
	cmpi.b #5,d0
	beq.w loc_0291fe
	cmpi.b #6,d0
	beq.w loc_0291fe
	lea loc_02db00(pc),a0

loc_0291fe:
	move.w (a0,d2.w),d5
	subq.w #1,d5
	move.l ($294,a4),d6

loc_029208:
	subq.w #1,d5
	bgt.w loc_029214
	move.b #1,($24a,a4)

loc_029214:
	move.w #7,($2be,a4)
	tst.l ($216,a4)
	bpl.b loc_02922e
	add.l d6,($216,a4)
	bmi.b loc_02923a
	clr.l ($216,a4)
	moveq #0,d6
	bra.b loc_02923a

loc_02922e:
	add.l d6,($216,a4)
	bpl.b loc_02923a
	clr.l ($216,a4)
	moveq #0,d6

loc_02923a:
	jsr loc_02269c
	tst.w d5
	bpl.w loc_029274
	btst #0,($2f6,a4)
	beq.w loc_029274
	tst.w ($20c,a4)
	bne.w loc_029274
	clr.l ($216,a4)
	move.w #7,($2be,a4)
	clr.b ($249,a4)
	clr.b ($24a,a4)
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_029274:
	dbra d7,loc_029208
	clr.l ($216,a4)
	move.w #7,($2be,a4)
	clr.b ($249,a4)
	clr.b ($24a,a4)
	movea.l ($1de,a4),a0
	movea.l ($30,a0),a0
	jmp (a0)

;--------------------------
loc_029294:
	st ($24a,a4)
	move.b ($25f,a4),d2
	andi.w #7,d2
	lsl.w #1,d2
	lea loc_02db90(pc),a0
	move.w (a0,d2.w),d7
	subq.w #2,d7
	lea loc_02dba0(pc),a0
	move.w (a0,d2.w),d5
	subq.w #1,d5
	move.l ($294,a4),d6
	bra.w loc_0292e4

loc_0292be:
	st ($24a,a4)
	move.b ($25f,a4),d2
	andi.w #7,d2
	lsl.w #1,d2
	lea loc_02daf0(pc),a0
	move.w (a0,d2.w),d7
	subq.w #2,d7
	lea loc_02db00(pc),a0
	move.w (a0,d2.w),d5
	subq.w #1,d5
	move.l ($294,a4),d6

loc_0292e4:
	subq.w #1,d5
	bgt.w loc_0292f0
	move.b #5,($24a,a4)

loc_0292f0:
	tst.b d7
	bne.b loc_0292fa
	bclr #2,($24a,a4)

loc_0292fa:
	move.w #7,($2be,a4)
	addi.l #$7000,($21a,a4)
	tst.l ($216,a4)
	bpl.b loc_02931c
	add.l d6,($216,a4)
	bmi.b loc_029328
	clr.l ($216,a4)
	moveq #0,d6
	bra.b loc_029328

loc_02931c:
	add.l d6,($216,a4)
	bpl.b loc_029328
	clr.l ($216,a4)
	moveq #0,d6

loc_029328:
	jsr loc_02269c
	tst.w d5
	bpl.w loc_029362
	btst #0,($2f6,a4)
	beq.w loc_029362
	tst.w ($20c,a4)
	bne.w loc_029362
	clr.l ($216,a4)
	move.w #7,($2be,a4)
	clr.b ($249,a4)
	clr.b ($24a,a4)
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_029362:
	dbra d7, loc_0292e4
	clr.l ($216,a4)
	move.w #7,($2be,a4)
	clr.b ($249,a4)
	clr.b ($24a,a4)
	btst #1,($248,a4)
	bne.w loc_02938c
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_02938c:
	movea.l ($1de,a4),a0
	movea.l (4,a0),a0
	jmp (a0)

;--------------------------
loc_029396:
	move.l ($294,a4),d6
	st ($24a,a4)
	move.b ($25f,a4),d2
	andi.w #7,d2
	lsl.w #1,d2
	lea loc_02daf0(pc),a0
	move.w (a0,d2.w),d7
	subq.w #2,d7

loc_0293b2:
	move.w #7,($2be,a4)
	addi.l #$7000,($21a,a4)
	tst.l ($216,a4)
	bpl.b loc_0293d4
	add.l d6,($216,a4)
	bmi.b loc_0293e0
	clr.l ($216,a4)
	moveq #0,d6
	bra.b loc_0293e0

loc_0293d4:
	add.l d6,($216,a4)
	bpl.b loc_0293e0
	clr.l ($216,a4)
	moveq #0,d6

loc_0293e0:
	cmpi.b #$11,($260,a4)
	bne.b loc_0293f0
	lea loc_029462(pc),a0
	bra.w loc_02941a

loc_0293f0:
	cmpi.b #$12,($260,a4)
	bne.b loc_029400
	lea loc_029466(pc),a0
	bra.w loc_02941a

loc_029400:
	cmpi.b #$13,($260,a4)
	bne.b loc_029410
	lea loc_02946a(pc),a0
	bra.w loc_02941a

loc_029410:
	jsr loc_02269c
	bra.w loc_02942e

loc_02941a:
	move.w (-$7fa2,a5),d0
	andi.w #3,d0
	move.b (0,a0,d0.w),($2ea,a4)
	jsr loc_02269c

loc_02942e:
	dbra d7,loc_0293b2

loc_029432:
	clr.l ($216,a4)
	move.w #7,($2be,a4)
	clr.b ($249,a4)
	clr.b ($24a,a4)
	btst #1,($248,a4)
	bne.w loc_029458
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_029458:
	movea.l ($1de,a4),a0
	movea.l (4,a0),a0
	jmp (a0)

;--------------------------
loc_029462:
	dc.b $04,$01,$04,$05
loc_029466:
	dc.b $06,$02,$04,$07
loc_02946a:
	dc.b $08,$08,$09,$09

;--------------------------
loc_02946e:
	st ($24a,a4)

loc_029472:
	tst.b ($247,a4)
	beq.w loc_029480
	bset #4,($249,a4)

loc_029480:
	move.w #-1,($2bc,a4)
	move.w #7,($2be,a4)
	addi.l #$7000,($21a,a4)
	tst.b ($249,a3)
	beq.b loc_0294a6
	move.w #-1,($2bc,a4)
	jsr loc_02c624

loc_0294a6:
	jsr loc_02269c
	btst #1,($246,a4)
	beq.b loc_029472
	bra.w loc_029ad8

;--------------------------
loc_0294b8:
	st ($24a,a4)
	bsr.w loc_02c636
	move.w #-1,($2bc,a4)

loc_0294c6:
	addi.l #$7000,($21a,a4)
	tst.b ($249,a3)
	beq.b loc_0294e0
	move.w #-1,($2bc,a4)
	jsr loc_02c624

loc_0294e0:
	jsr loc_02269c
	btst #1,($246,a4)
	beq.b loc_0294c6
	sf d1
	jsr loc_02edd8
	move.w #$8c,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (4,a0),a0
	jsr loc_023384
	bclr #1,($248,a4)
	jsr loc_028f40
	move.w #$1890,d0
	jsr loc_02301a

loc_029522
	jsr loc_02269c
	bsr.w loc_02a48a
	btst #5,($249,a4)
	beq.w loc_029760
	btst #2,($2e1,a4)
	beq.b loc_029522
	btst #1,($249,a4)
	bne.w loc_029840
	move.w #$cc,d1
	bsr.w loc_02c670
	bra.w loc_0297d8

;--------------------------
loc_029554:
	btst #1,($249,a4)
	beq.w loc_029564
	jsr loc_02eff8

loc_029564:
	st ($24a,a4)
	move.b ($25f,a4),d2
	andi.w #7,d2
	lsl.w #1,d2
	lea loc_02daf0(pc),a0
	move.w (a0,d2.w),d7
	subq.w #2,d7

loc_02957c
	tst.w d7
	bmi.b loc_02958e
	subq.w #1,d7
	bpl.b loc_02958e
	move.w #-1,($2bc,a4)
	bsr.w loc_02c5fa

loc_02958e:
	addi.l #$7000,($21a,a4)
	tst.b ($249,a3)
	beq.b loc_0295a8
	move.w #-1,($2bc,a4)
	jsr loc_02c624

loc_0295a8:
	jsr loc_02269c
	btst #1,($246,a4)
	beq.b loc_02957c

loc_0295b6:
	move.b #1,d1
	jsr loc_02edd8
	move.w #$10,(-$45e2,a5)

loc_0295c6:
	st ($24a,a4)
	ori.b #$28,($249,a4)
	bsr.w loc_02c624
	move.w #-1,($2bc,a4)
	ori.b #$10,($249,a4)
	move.w ($266,a4),d0
	or.w ($268,a4),d0
	beq.w loc_029648
	addq.w #1,($286,a4)
	clr.l ($27e,a4)
	clr.l ($282,a4)
	jsr loc_022aec
	btst #5,($25e,a4)
	beq.b loc_02960e

loc_029606:
	jsr loc_02f01a
	bra.b loc_029614

;--------------------------
loc_02960e:
	jsr loc_02ee3e

loc_029614:
	tst.w ($1f2,a4)
	bmi.w loc_029628
	tst.w ($1f8,a4)
	bmi.w loc_029630
	bra.w loc_02965e

loc_029628:
	bsr.w loc_02c3b4
	bra.w loc_02965e

loc_029630:
	bsr.w loc_02c354
	btst #1,($249,a4)
	beq.w loc_029644
	jsr loc_02eff8

loc_029644:
	bra.w loc_02965e

loc_029648:
	jsr loc_02ee3e
	clr.w ($266,a4)
	clr.w ($268,a4)
	clr.w ($26a,a4)
	clr.w ($26c,a4)

loc_02965e:
	move.w #$1892,d0
	jsr loc_02301a
	movea.l ($1e6,a4),a0
	movea.l (4,a0),a0
	jsr loc_023384
	btst #6,($248,a4)
	beq.b loc_029684
	move.w #$a8,d1
	bra.b loc_029688

loc_029684:
	move.w #$a4,d1

loc_029688:
	bsr.w loc_02c670
	move.l ($216,a4),d0
	asr.l #1,d0
	jsr loc_028f40

loc_029698:
	jsr loc_02269c
	btst #0,($2e1,a4)
	beq.b loc_029698
	move.l d0,($216,a4)
	move.l #-$34800,($21a,a4)

loc_0296b2:
	jsr loc_02269c
	addi.l #$7000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_0296b2

loc_0296c8:
	jsr loc_028f40
	move.w #$ac,d1
	bsr.w loc_02c670
	tst.w ($1f2,a4)
	bmi.w loc_02a47e
	clr.w ($288,a4)
	clr.w ($28a,a4)
	ori.b #$10,($249,a4)
	move.w #$1891,d0
	jsr loc_02301a

loc_0296f6:
	jsr loc_02269c
	bsr.w loc_02a48a
	btst #5,($249,a4)
	beq.w loc_029760
	btst #2,($2e1,a4)
	beq.b loc_0296f6
	bra.w loc_0297b8

loc_029716:
	btst #1,($249,a4)
	beq.w loc_029726
	jsr loc_02eff8

loc_029726:
	st ($24a,a4)

loc_02972a:
	addi.l #$7000,($21a,a4)
	move.l ($216,a4),d0
	asr.l #5,d0
	sub.l d0,($216,a4)
	tst.b ($249,a3)
	beq.b loc_02974e
	move.w #-1,($2bc,a4)
	jsr loc_02c624

loc_02974e:
	jsr loc_02269c
	btst #1,($246,a4)
	beq.b loc_02972a
	bra.w loc_0295b6

loc_029760:
	addi.w #$10,($202,a4)
	bclr #1,($246,a4)
	clr.b ($247,a4)
	jsr loc_023444
	move.b #$11,($249,a4)
	move.w #-1,($2bc,a4)
	move.l #loc_029798,($86,a4)
	move.w #$c0,d1
	bsr.w loc_02c670
	move.l ($86,a4),-(a7)
	rts


;--------------------------
loc_029798:
	move.w #$188d,d0
	jsr loc_02301a
	move.b ($209,a4),($270,a4)
	bsr.w loc_02c282
	clr.b ($249,a4)
	clr.w ($2ba,a4)
	bra.w loc_029aaa

;--------------------------
loc_0297b8:
	btst #1,($249,a4)
	bne.w loc_029840
	btst #6,($248,a4)
	beq.b loc_0297d0
	move.w #$c8,d1
	bra.b loc_0297d4

loc_0297d0:
	move.w #$c4,d1

loc_0297d4:
	bsr.w loc_02c670

;--------------------------
loc_0297d8:
	movea.l ($1e6,a4),a0
	movea.l (4,a0),a0
	jsr loc_023384
	movem.w ($238,a4),d4-d7
	clr.b ($248,a4)
	move.w #-1,($2bc,a4)
	bsr.w loc_02c624
	jsr loc_028f40
	move.b #$11,($249,a4)
	st ($24a,a4)

loc_02980a:
	move.w #-1,($2bc,a4)
	move.w #$e,($2be,a4)
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_02980a
	clr.w ($2bc,a4)
	clr.w ($288,a4)
	move.w #$e,($2be,a4)
	clr.b ($249,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_029840:
	btst #6,($248,a4)
	beq.b loc_02984e
	move.w #$d4,d1
	bra.b loc_029852

loc_02984e:
	move.w #$d0,d1

loc_029852:
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (4,a0),a0
	jsr loc_023384
	movem.w ($238,a4),d4-d7
	clr.b ($248,a4)
	move.w #-1,($2bc,a4)
	move.b #$23,($249,a4)
	jsr loc_028f40
	st ($24a,a4)
	move.w #8,($28c,a4)
	lea loc_02dc70(pc),a0
	jsr RandomNumberGod
	andi.w #7,d0
	add.w d0,d0
	move.w (a0,d0.w),d7
	move.w ($1fe,a4),d0
	mulu.w d7,d0
	lsr.l #8,d0
	add.w d0,d7

loc_0298a8:
	bsr.w loc_02c82a
	sub.w d0,d7
	bpl.w loc_0298b4
	clr.w d7

loc_0298b4:
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_0298a8
	move.w #$d8,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	clr.b ($248,a4)
	clr.w ($2bc,a4)
	clr.w ($288,a4)
	clr.w ($286,a4)
	clr.w ($2be,a4)
	move.b #2,($249,a4)

loc_0298f2:
	bsr.w loc_02c82a
	sub.w d0,d7
	bpl.w loc_0298fe
	clr.w d7

loc_0298fe:
	move.l d0,d1
	swap d1
	add.w d1,d1

loc_029904:
	sub.w d1,d0
	ble.w loc_02991a
	movem.l d0-d1/d7,-(a7)
	jsr loc_022736
	movem.l (a7)+,d0-d1/d7
	bra.b loc_029904

;--------------------------
loc_02991a:
	tst.b (-$3dd,a5)
	bne.w loc_02992c
	jsr loc_02269c
	tst.w d7
	bne.b loc_0298f2

loc_02992c:
	move.w #$dc,d1
	bsr.w loc_02c670
	bsr.w loc_028f50

;extra25 ;299c4
;	tst.b extraflag
;	bne.b extra25prg
;	clr.b ($249,a4)
;	bra.b 2994c

;extra25prg
	move.b #1,($249,a4)
	move.b #$7f,(plextcounter00,a4)

	move.w #-1,($2bc,a4)
	clr.w ($288,a4)
	move.b #$fb,($24a,a4)

loc_02994c:
	move.w #-1,($2bc,a4)
	move.w #$e,($2be,a4)
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_02994c
	clr.w ($2bc,a4)
	move.w #$e,($2be,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_02997a:
	st ($24a,a4)
	move.b ($25f,a4),d2
	andi.w #7,d2
	lsl.w #1,d2
	lea loc_02daf0(pc),a0
	move.w (a0,d2.w),d7
	subq.w #1,d7

loc_029992:
	btst #6,($25e,a4)
	bne.w loc_0299ae
	tst.b ($249,a3)
	beq.w loc_0299ae
	move.w #-1,($2bc,a4)
	bsr.w loc_02c624

loc_0299ae:
	addi.l #$7000,($21a,a4)
	jsr loc_02269c
	subq.w #1,d7
	bpl.b loc_029992
	btst #1,($246,a4)
	beq.b loc_029992
	bra.w loc_0295b6

;--------------------------
loc_0299cc
	st ($24a,a4)
	move.b ($25f,a4),d2
	andi.w #7,d2
	lsl.w #1,d2
	lea loc_02dc40(pc),a0
	move.w (a0,d2.w),d7
	subq.w #1,d7

loc_0299e4:
	tst.b ($247,a4)
	beq.w loc_0299f2
	bset #4,($249,a4)

loc_0299f2:
	tst.w d7
	bmi.b loc_029a04
	subq.w #1,d7
	bpl.b loc_029a04
	move.w #-1,($2bc,a4)
	bsr.w loc_02c636

loc_029a04:
	move.w #7,($2be,a4)
	addi.l #$7000,($21a,a4)
	tst.b ($249,a3)
	beq.b loc_029a24
	move.w #-1,($2bc,a4)
	jsr loc_02c624

loc_029a24:
	jsr loc_02269c
	btst #1,($246,a4)
	beq.b loc_0299e4
	bra.w loc_029ad8

;--------------------------
loc_029a36:
	st ($24a,a4)
	move.b ($25f,a4),d2
	andi.w #7,d2
	lsl.w #1,d2
	lea loc_02dc40(pc),a0
	move.w (a0,d2.w),d7
	subq.w #1,d7

loc_029a4e:
	tst.b ($247,a4)
	beq.w loc_029a5c
	bset #4,($249,a4)

loc_029a5c:
	tst.w d7
	bmi.b loc_029a6e
	subq.w #1,d7
	bpl.b loc_029a6e
	move.w #-1,($2bc,a4)
	bsr.w loc_02c636

loc_029a6e:
	move.w #7,($2be,a4)
	addi.l #$7000,($21a,a4)
	move.l ($216,a4),d0
	asr.l #5,d0
	sub.l d0,($216,a4)
	tst.b ($249,a3)
	beq.b loc_029a98
	move.w #-1,($2bc,a4)
	jsr loc_02c624

loc_029a98:
	jsr loc_02269c
	btst #1,($246,a4)
	beq.b loc_029a4e
	bra.w loc_029ad8

;--------------------------
loc_029aaa:
	move.w #-1,($2bc,a4)
	bsr.w loc_02c624
	st ($24a,a4)

loc_029ab8:
	move.w #$e,($2be,a4)
	addi.l #$7000,($21a,a4)
	jsr loc_02269c
	btst #1,($246,a4)
	beq.b loc_029ab8
	bra.w loc_029ad8

;--------------------------
loc_029ad8:
	move.w #-1,($2bc,a4)
	clr.w ($288,a4)
	ori.b #$10,($249,a4)
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	jsr loc_028f40
	move.w #$bc,d1
	bsr.w loc_02c670
	st d1
	jsr loc_02edd8
	move.b #1,($24a,a4)

loc_029b12:
	btst #0,($2f6,a4)
	beq.w loc_029b38
	tst.w ($20c,a4)
	bne.w loc_029b38
	move.w #1,($2bc,a4)
	clr.b ($249,a4)
	movea.l ($1de,a4),a0
	movea.l ($20,a0),a0
	jmp (a0)

loc_029b38:
	move.w #7,($2be,a4)
	jsr loc_02269c
	btst #2,($2e1,a4)
	beq.b loc_029b12
	clr.w ($2bc,a4)
	move.w #7,($2be,a4)
	clr.b ($249,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_029b64:
	st ($24a,a4)

loc_029b68:
	ori.b #$40,($249,a4)
	move.w #$e,($2be,a4)
	move.b ($208,a4),($270,a4)
	jsr loc_02269c
	tst.b ($24b,a3)
	bne.b loc_029b68
	move.w ($266,a4),d0
	or.w ($268,a4),d0
	beq.w loc_029b96
	bsr.w loc_02a758

loc_029b96:
	bsr.w loc_02a768
	andi.b #$d2,($249,a4)
	ori.b #$28,($249,a4)
	movea.l ($1e6,a4),a0
	movea.l ($8,a0),a0
	jsr loc_023384
	bsr.w loc_02c618
	bsr.w loc_02c5fa
	lea loc_029bc4(pc),a0
	bra.w loc_02c64e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_029bc4:
	dc.w $0001,$002d
	dc.l loc_029c80,loc_029c80,loc_029c80,loc_029c80
	dc.l loc_029c80,loc_029c80,loc_029c80,loc_029c80
	dc.l loc_029c80,loc_029c80,loc_029c88,loc_029d0c
	dc.l loc_029c80,loc_029c80,loc_029c80,loc_029c80
	dc.l loc_029c80,loc_029d80,loc_029d88,loc_029d90
	dc.l loc_029d80,loc_029d88,loc_029d90,loc_029c80
	dc.l loc_029c80,loc_029d44,loc_029d50,loc_029d5c
	dc.l loc_029d68,loc_029d74,loc_029d3c,loc_029d3c
	dc.l loc_029da8,loc_029db0,loc_029db8,loc_029dc0
	dc.l loc_029d14,loc_029d34,loc_029c80,loc_029d3c
	dc.l loc_029d2c,loc_029d98,loc_029da0,loc_029d80
	dc.l loc_029d88,loc_029d90


;--------------------------
loc_029c80:
	bsr.w loc_02c624

;extra26
;	tst extraflag
;	beq tobra
	ori.b #$40,($249,a4)
	move.b #$a,(plextcounter01,a4)
	move.b #$20,(plextcounter00,a4)

	bra.w loc_029554

;--------------------------
loc_029c88:
	jsr loc_022dca
	move.b ($270,a4),($208,a4)
	btst #7,($249,a4)
	beq.w loc_029cb8
	move.w #$94,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	bra.w loc_029554

loc_029cb8:
	btst #1,($249,a4)
	beq.w loc_029cdc
	move.w #$90,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	bra.w loc_029554

loc_029cdc:
	andi.b #$82,($249,a4)
	ori.b #8,($249,a4)

;extra27
;	tst.b extraflag
;	beq notextra27
	ori.b #$40,($249,a4)
	move.b #$a,(plextcounter01,a4)
	move.b #$20,(plextcounter00,a4)

;notextra27
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	move.w #$78,d1
	bsr.w loc_02c670
	move.w #-1,($2bc,a4)
	addq.w #4,($28c,a4)
	bra.w loc_0299cc

;--------------------------
loc_029d0c:
	bsr.w loc_02b54a
	bra.w loc_029dc8

;--------------------------
loc_029d14:
	move.l ($216,a4),-(a7)
	move.l ($21a,a4),-(a7)
	bsr.w loc_02b5a4
	move.l (a7)+,($21a,a4)
	move.l (a7)+,($216,a4)
	bra.w loc_029dc8

;--------------------------
loc_029d2c:
	bsr.w loc_02b734
	bra.w loc_029dc8

;--------------------------
loc_029d34:
	bsr.w loc_02b7b6
	bra.w loc_029dc8

;--------------------------
loc_029d3c:
	bsr.w loc_02b812
	bra.w loc_029dc8

;--------------------------
loc_029d44:
 	move.w #$30,d5
 	bsr.w loc_02b97a
 	bra.w loc_029dc8

;--------------------------
loc_029d50:
	move.w #$50,d5
	bsr.w loc_02b97a
	bra.w loc_029dc8

;--------------------------
loc_029d5c:
	move.w #$80,d5
	bsr.w loc_02b97a
	bra.w loc_029dc8

;--------------------------
loc_029d68:
	move.w #$100,d5
	bsr.w loc_02b97a
	bra.w loc_029dc8

;--------------------------
loc_029d74:
	move.w #$200,d5
	bsr.w loc_02b97a
	bra.w loc_029dc8

;--------------------------
loc_029d80:
	bsr.w loc_02bacc
	bra.w loc_029dc8

;--------------------------
loc_029d88:
	bsr.w loc_02bafe
	bra.w loc_029dc8

;--------------------------
loc_029d90:
	bsr.w loc_02bb30
	bra.w loc_029dc8

;--------------------------
loc_029d98:
	bsr.w loc_02bfde
	bra.w loc_029dc8

;--------------------------
loc_029da0:
	bsr.w loc_02c028
	bra.w loc_029dc8

;--------------------------
loc_029da8:
	bsr.w loc_02bd94
	bra.w loc_029dc8

;--------------------------
loc_029db0:
	bsr.w loc_02bdaa
	bra.w loc_029dc8

;--------------------------
loc_029db8:
	bsr.w loc_02bd7c
	bra.w loc_029dc8

;--------------------------
loc_029dc0:
	bsr.w loc_02bd88
	bra.w loc_029dc8

;--------------------------
loc_029dc8:
;extra28
;	tst.b extraflag
;	bne move2ba
	ori.b #$40,($249,a4)
	move.b #$a,(plextcounter01,a4)
	move.b #$20,(plextcounter00,a4)
	move.w ($2ba,a3),($2ba,a4)
	move.l ($86,a4),-(a7)
	rts

;--------------------------
loc_029dd4:
	move.w ($29c,a4),d0
	tst.b ($208,a3)
	bpl.w loc_029de2
	neg.w d0

loc_029de2:
	swap d0
	clr.w d0
	add.l ($20e,a3),d0
	sub.l ($20e,a4),d0
	tst.w ($2a0,a4)
	ble.w loc_029e00
	asr.l #8,d0
	divs.w ($2a0,a4),d0
	ext.l d0
	asl.l #8,d0

loc_029e00
	add.l d0,($20e,a4)
	move.w ($29e,a4),d0
	swap d0
	clr.w d0
	add.l ($212,a3),d0
	sub.l ($212,a4),d0
	tst.w ($2a0,a4)
	ble.w loc_029e26
	asr.l #8,d0
	divs.w ($2a0,a4),d0
	ext.l d0
	asl.l #8,d0

loc_029e26:
	add.l d0,($212,a4)
	rts

;--------------------------
loc_029e2c:
	st ($24a,a4)
	move.l ($294,a4),d6
	tst.w ($288,a4)
	beq.b loc_029e3e
	st d5
	bra.b loc_029e4a

;--------------------------
loc_029e3e:
	move.w #$80,($2ec,a4)
	sf d5
	clr.l ($21a,a4)

loc_029e4a:
	move.b ($25f,a4),d2
	andi.w #7,d2
	lsl.w #1,d2
	lea loc_02daf0(pc),a0
	move.w (a0,d2.w),d7
	subq.w #2,d7

loc_029e5e:
	move.w #7,($2be,a4)
	btst #1,($246,a4)
	bne.b loc_029e76
	addi.l #$7000,($21a,a4)
	bra.b loc_029eca

;--------------------------
loc_029e76:
	tst.b d5
	bpl.b loc_029eb4
	sf d5
	move.w #$80,($2ec,a4)
	move.w #$10,(-$45e2,a5)
	move.w #$1892,d0
	jsr loc_02301a
	move.b #1,d1
	jsr loc_02edd8
	jsr loc_02ee3e
	move.w d7,d0
	addq.w #8,d0
	mulu.w #$70,d0
	asl.l #7,d0
	neg.l d0
	move.l d0,($21a,a4)
	bra.b loc_029eca

;--------------------------
loc_029eb4:
	sf d5
	tst.l ($21a,a4)
	beq.b loc_029ec6
	move.w #$1891,d0
	jsr loc_02301a

loc_029ec6:
	clr.l ($21a,a4)

loc_029eca:
	clr.w d0
	move.b ($2ed,a4),d0
	addq.w #3,d0
	lsr.w #2,d0
	sub.b d0,($2ed,a4)
	bcc.w loc_029ee0
	clr.b ($2ed,a4)

loc_029ee0:
	tst.l ($216,a4)
	bpl.b loc_029ef4
	add.l d6,($216,a4)
	bmi.b loc_029f00
	clr.l ($216,a4)
	moveq #0,d6
	bra.b loc_029f00

;--------------------------
loc_029ef4:
	add.l d6,($216,a4)
	bpl.b loc_029f00
	clr.l ($216,a4)
	moveq #0,d6

loc_029f00:
	jsr loc_02269c
	dbra d7,loc_029e5e
	tst.w ($288,a4)
	beq.w loc_029432
	st ($24a,a4)
	move.w #-1,($2bc,a4)
	bsr.w loc_02c5fa
	ori.b #$20,($249,a4)
	move.l #-$c000,($216,a4)
	move.w #$b4,d1
	bsr.w loc_02c670
	bset #6,($248,a4)
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384

loc_029f4a:
	jsr loc_02269c
	addi.l #$7000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_029f4a
	bra.w loc_0295c6

;--------------------------
loc_029f64:
	btst #1,($249,a4)
	beq.w loc_029f74
	jsr loc_02eff8

loc_029f74:
	st ($24a,a4)
	st d5
	move.b ($25f,a4),d2
	andi.w #7,d2
	lsl.w #1,d2
	lea loc_02daf0(pc),a0
	move.w (a0,d2.w),d7
	subq.w #2,d7

loc_029f8e:
	move.w #7,($2be,a4)
	btst #1,($246,a4)
	bne.w loc_029fb4
	jsr loc_02269c
	addi.l #$7000,($21a,a4)
	dbra d7,loc_029f8e
	bra.w loc_02a0ae

;--------------------------
loc_029fb4:
	movem.l d7,-(a7)
	move.w ($266,a4),d0
	or.w ($268,a4),d0
	beq.w loc_02a008
	addq.w #1,($286,a4)
	clr.l ($27e,a4)
	clr.l ($282,a4)
	jsr loc_022aec
	tst.w ($1f2,a4)
	bmi.w loc_029fea
	tst.w ($1f8,a4)
	bmi.w loc_029ff2
	bra.w loc_02a018

;--------------------------
loc_029fea:
	bsr.w loc_02c3b4
	bra.w loc_02a018

;--------------------------
loc_029ff2:
	bsr.w loc_02c354
	btst #1,($249,a4)
	beq.b loc_02a004
	jsr loc_02eff8

loc_02a004:
	bra.w loc_02a018


;--------------------------
loc_02a008:
	clr.w ($266,a4)
	clr.w ($268,a4)
	clr.w ($26a,a4)
	clr.w ($26c,a4)

loc_02a018
	move.w #$a4,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (4,a0),a0
	jsr loc_023384
	move.w #$10,(-$45e2,a5)
	move.w #$1892,d0
	jsr loc_02301a
	move.b #1,d1
	jsr loc_02edd8
	jsr loc_02ee3e
	movem.l (a7)+,d7
	move.w d7,d0
	addq.w #4,d0
	mulu.w #$70,d0
	asl.l #7,d0
	neg.l d0
	move.l d0,d3
	move.l ($216,a4),d2
	asr.l #1,d2
	clr.l ($216,a4)
	clr.l ($21a,a4)

loc_02a06e:
	jsr loc_02269c
	btst #0,($2e1,a4)
	beq.b loc_02a06e
	move.l d2,($216,a4)
	move.l d3,($21a,a4)
	sf d5
	tst.w d7
	bmi.w loc_02a0ae

loc_02a08c:
	move.w #7,($2be,a4)
	jsr loc_02269c
	btst #1,($246,a4)
	bne.w loc_02a0ae
	addi.l #$7000,($21a,a4)
	dbra d7,loc_02a08c

loc_02a0ae:
	st ($24a,a4)
	move.w #-1,($2bc,a4)
	bsr.w loc_02c5fa
	ori.b #$20,($249,a4)
	btst #1,($246,a4)
	bne.b loc_02a0e0

loc_02a0ca:
	jsr loc_02269c
	addi.l #$7000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_02a0ca

loc_02a0e0:
	tst.b d5
	bne.w loc_0295c6
	bsr.w loc_02c624
	move.w #-1,($2bc,a4)
	ori.b #$10,($249,a4)
	sf d1
	jsr loc_02edd8
	bra.w loc_0296c8

;--------------------------
loc_02a102:
	btst #1,($249,a4)
	beq.w loc_02a112
	jsr loc_02eff8

loc_02a112:
	st ($24a,a4)
	move.l #-$60000,($216,a4)
	move.l #-$40000,($21a,a4)
	move.w #$b,d7

loc_02a12a:
	jsr loc_02269c
	move.l ($216,a4),d0
	asr.l #4,d0
	sub.l d0,($216,a4)
	dbra d7,loc_02a12a

loc_02a13e:
	jsr loc_02269c
	addi.l #$7000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_02a13e
	bra.w loc_0295b6

loc_02a158:
	btst #1,($249,a4)
	beq.w loc_02a168
	jsr loc_02eff8

loc_02a168:
	st ($24a,a4)
	move.l #-$80000,($216,a4)
	move.l #-$c0000,($21a,a4)
	move.w #$b,d7

loc_02a180:
	jsr loc_02269c
	addi.l #$8000,($216,a4)
	addi.l #$c000,($21a,a4)
	dbra d7,loc_02a180
	clr.l ($216,a4)
	clr.l ($21a,a4)
	move.w #7,d7

loc_02a1a6:
	jsr loc_02269c
	dbra d7,loc_02a1a6

loc_02a1b0:
	jsr loc_02269c
	addi.l #$7000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_02a1b0
	bra.w loc_0295b6

;--------------------------
loc_02a1ca:
	btst #1,($249,a4)
	beq.w loc_02a1da
	jsr loc_02eff8

loc_02a1da:
	st ($24a,a4)
	move.b #$40,d6
	move.w #$1f,d7

loc_02a1e6:
	move.b d6,d0
	move.b d6,d1
	jsr loc_002a72
	exg d0,d1
	jsr loc_002a6e
	neg.w d1
	muls.w #$500,d0
	muls.w #$700,d1
	move.l d0,($216,a4)
	move.l d1,($21a,a4)
	jsr loc_02269c
	addq.b #4,d6
	dbra d7,loc_02a1e6
	clr.l ($216,a4)
	move.l #$70000,($21a,a4)

loc_02a222:
	jsr loc_02269c
	btst #1,($246,a4)
	beq.b loc_02a222
	bra.w loc_0295b6

;--------------------------
loc_02a234:
	st ($24a,a4)
	move.w #$16,d7
	move.w #$11,d6
	move.w #7,d5

loc_02a244:
	subq.w #1,d5
	bgt.b loc_02a256
	move.b #5,($24a,a4)
	move.b #2,($249,a4)
	bra.b loc_02a25c

loc_02a256:
	move.w #7,($2be,a4)

loc_02a25c:
	jsr loc_02269c
	subq.w #1,d6
	bpl.w loc_02a278
	addi.l #$3800,($216,a4)
	bmi.w loc_02a278
	clr.l ($216,a4)

loc_02a278:
	dbra d7,loc_02a244
	clr.l ($216,a4)
	clr.b ($249,a4)
	movea.l ($1de,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

;--------------------------
loc_02a28e:
	st ($24a,a4)
	move.l ($294,a4),d5
	move.l ($298,a4),d6

loc_02a29a:
	tst.b ($249,a3)
	bne.w loc_02a2cc
	tst.w ($2c2,a4)
	ble.b loc_02a2b2
	add.l d5,($216,a4)
	add.l d6,($21a,a4)
	bra.b loc_02a2ba

loc_02a2b2:
	clr.l ($216,a4)
	clr.l ($21a,a4)

loc_02a2ba:
	move.w #7,($2be,a4)
	jsr loc_02269c
	tst.w ($2cc,a4)
	bgt.b loc_02a29a

loc_02a2cc:
	move.w #7,($2be,a4)
	move.w ($266,a4),d0
	or.w ($268,a4),d0
	beq.w loc_02a2e4
	jsr loc_022aec

loc_02a2e4:
	tst.w ($1f2,a4)
	bmi.b loc_02a2f2
	tst.w ($1f8,a4)
	bmi.b loc_02a2fc
	bra.b loc_02a316

loc_02a2f2:
	bsr.w loc_02ae4c
	move.l ($86,a4),-(a7)
	rts

loc_02a2fc:
	bsr.w loc_02ad12
	move.l ($86,a4),-(a7)
	rts

;--------------------------
loc_02a306:
	clr.w ($266,a4)
	clr.w ($268,a4)
	clr.w ($26a,a4)
	clr.w ($26c,a4)

loc_02a316:
	bsr.w loc_02b63a
	clr.w ($2ba,a4)
	move.l ($86,a4),-(a7)
	rts

;--------------------------
loc_02a324:
	btst #1,($249,a4)
	beq.w loc_02a334
	jsr loc_02eff8

loc_02a334:
	st ($24a,a4)

loc_02a338:
	jsr loc_02269c
	addi.l #$7000,($21a,a4)
	tst.b ($208,a4)
	smi d0
	tst.l ($216,a4)
	smi d1
	eor.b d0,d1
	bpl.w loc_02a386
	move.w ($20e,a4),d0
	sub.w ($236,a4),d0
	cmp.w (-$45d6,a5),d0
	ble.b loc_02a372
	btst #2,($246,a4)
	bne.b loc_02a372
	bra.w loc_02a3b4

;--------------------------
loc_02a372:
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	sf d4
	bra.w loc_02a3c2

;--------------------------
loc_02a386:
	move.w ($20e,a4),d0
	add.w ($236,a4),d0
	cmp.w (-$45d4,a5),d0
	bge.b loc_02a3a0
	btst #3,($246,a4)
	bne.b loc_02a3a0
	bra.w loc_02a3b4

;--------------------------
loc_02a3a0:
	movea.l ($1e6,a4),a0
	movea.l ($8,a0),a0
	jsr loc_023384
	st d4
	bra.w loc_02a3c2

;--------------------------
loc_02a3b4:
	btst #1,($246,a4)
	beq.w loc_02a338
	bra.w loc_0295b6

;--------------------------
loc_02a3c2:
	jsr loc_02f03a
	move.w ($266,a4),d0
	or.w ($268,a4),d0
	beq.w loc_02a42c
	addq.w #1,($286,a4)
	move.w ($238,a4),($27e,a4)
	move.w ($23a,a4),($280,a4)
	move.w ($23c,a4),($282,a4)
	clr.w ($284,a4)
	jsr loc_022aec
	jsr loc_02eed2
	tst.w ($1f2,a4)
	bmi.w loc_02a40e
	tst.w ($1f8,a4)
	bmi.w loc_02a416
	bra.w loc_02a42c

;--------------------------
loc_02a40e:
	bsr.w loc_02c3b4
	bra.w loc_02a42c

;--------------------------
loc_02a416:
	bsr.w loc_02c354
	btst #1,($249,a4)
	beq.b loc_02a428
	jsr loc_02eff8

loc_02a428:
	bra.w loc_02a42c

;--------------------------
loc_02a42c:
	move.w #$1892,d0
	jsr loc_02301a
	bset #6,($248,a4)
	tst.l ($216,a4)
	bpl.b loc_02a44c
	move.l #$18000,($216,a4)
	bra.b loc_02a454

;--------------------------
loc_02a44c:
	move.l #-$18000,($216,a4)

loc_02a454:
	addi.l #-$20000,($21a,a4)
	move.w #$a0,d1
	bsr.w loc_02c670

loc_02a464:
	jsr loc_02269c
	addi.l #$7000,($21a,a4)
	btst #1,($246,a4)
	beq.b loc_02a464
	bra.w loc_0295b6

;--------------------------
loc_02a47e:
	st ($24a,a4)
	jsr loc_02269c
	bra.b loc_02a47e

;--------------------------
loc_02a48a:
;extra29
;	tst.b extraflag
;	beq sf
	move.b #0,d0
	rts

extrar2jsr:
	sf d0
	btst #7,($25f,a4)
	bne.w loc_02a4b6
	btst #1,($249,a4)
	bne.w loc_02a4b6
	tst.b (-$3dd,a5)
	bne.w loc_02a4b6
	move.b ($2fb,a4),d0
	beq.w loc_02a4b6
	bclr #5,($249,a4)

loc_02a4b6:
	tst.b d0
	rts

;--------------------------
extra2a886:
	sf d0
	btst #1,($249,a4)
	bne.w extra2a8a8
	tst.b (-$3dd,a5)
	bne.w extra2a8a8
	move.b ($2fb,a4),d0
	beq.w extra2a8a8
	bclr #5,($249,a4)

extra2a8a8:
	tst.b d0
	rts

;--------------------------
loc_02a4ba:
	movea.l #loc_02dac0,a0
	jsr loc_023384
	clr.b ($249,a4)
	clr.w ($286,a4)
	clr.w ($288,a4)
	clr.w ($28a,a4)
	clr.w ($28c,a4)
	rts

;--------------------------
;Throw Check
loc_02a4dc:
	btst #6,($24a,a4)
	bne.b loc_02a512

loc_02a4e4:
	tst.b ($24b,a3);4a2b 024b
	bne.b loc_02a512
	btst #1,($246,a4);air check
	beq.b loc_02a512
	tst.b ($247,a3);combo
	beq.b loc_02a512

;extra30
;	tst.b extra flag
;	bne
;	bra.b extra30grab

;	tst.w ($2be,a3)
;	bne.b loc_02a512
;	tst.w ($2bc,a3)
;	bne.b loc_02a512
;	move.b ($249,a3),d0
;	andi.b #%11111101,d0;%11110101 to combo
;	bne.b loc_02a512
;	bra std0

extra30grab:
	tst.b (plextcounter02,a4)
	bne.b loc_02a512
	move.b ($249,a3),d0
	andi.b #$51,d0
	bne.b loc_02a512

	st d0
	bra.b loc_02a514

loc_02a512:
	sf d0

loc_02a514:
	tst.b d0
	rts

;--------------------------
;Air Grab Throw Check
loc_02a518:
	btst #6,($24a,a4)
	bne.b loc_02a54e

;extra31
;	tst extraflag
;	beq 2a520
	tst.b (plextcounter02,a4)
	bne.b loc_02a54e
	btst #4,($249,a3)
	bne.b loc_02a54e

loc_02a520:
	tst.b ($24b,a3)
	bne.b loc_02a54e
	tst.b ($247,a4)
	bne.b loc_02a54e
	btst #1,($246,a3)
	bne.b loc_02a54e

;extra32
;	tst.b extraflag
;	bne extra32skip
;
;	tst.w ($2be,a3)
;	bne.b loc_02a54e
;	tst.w ($2bc,a3)
;	bne.b loc_02a54e

;extra32skip
	move.b ($249,a3),d0
;	andi.b #$fd,d0
	andi.b #$41,d0
	bne.b loc_02a54e
	st d0
	bra.b loc_02a550

loc_02a54e:
	sf d0

loc_02a550:
	tst.b d0
	rts

;--------------------------
loc_02a554:
	tst.b ($24b,a4)
	beq.w loc_02a57a
	movem.l d0/a0,-(a7)
	exg a3,a4
	move.w ($14,a4),d0
	lsl.w #2,d0
	movea.l (a0,d0.w),a0
	clr.w d0
	jsr loc_0226f0
	exg a3,a4
	movem.l (a7)+,d0/a0

loc_02a57a:
	rts

;--------------------------
loc_02a57c:
	movem.l d0/a0,-(a7)
	exg a3,a4
	move.w ($14,a4),d0
	lsl.w #2,d0
	movea.l (a0,d0.w),a0
	clr.w d0
	jsr loc_0226f0
	exg a3,a4
	movem.l (a7)+,d0/a0
	rts

;--------------------------
loc_02a59c:
	movem.l d0-d7/a0-a2,-(a7)

;extra33 2a9f2
;	tst.b extraflag
;	beq.b notextra33
	btst #1,($249,a3)
	bne.b notextra33
	tst.b ($249,a3)
	beq.b notextra33
	move.b #$a,(plextcounter01,a3)
	move.b #$20,(plextcounter00,a3)

notextra33:
	move.b (0,a4),(-$3e2,a5)
	clr.l ($27e,a3)
	clr.l ($282,a3)
	move.b ($24c,a4),($25e,a3)
	bset #7,($24c,a4)
	bclr #6,($25e,a3)
	move.b ($24d,a4),($25f,a3)
	move.b ($24e,a4),($260,a3)
	move.b ($24f,a4),($261,a3)
	move.b ($250,a4),($262,a3)
	move.w ($252,a4),($264,a3)
	move.w ($254,a4),($266,a3)
	move.w ($256,a4),($268,a3)
	move.w ($258,a4),($26a,a3)
	move.w ($25a,a4),($26c,a3)
	move.w ($25c,a4),($26e,a3)
	move.w ($27a,a4),($27c,a3)
	move.w #-1,($2bc,a4)
	exg a3,a4
	jsr loc_023294
	movea.l ($1ba,a4),a0
	jsr (a0)
	andi.b #$90,($249,a4)
	ori.b #8,($249,a4)
	bclr #6,($248,a4)
	move.l d2,($216,a4)
	move.l d3,($21a,a4)
	move.b ($208,a4),($270,a4)
	bsr.w loc_02c2d4
	exg a3,a4
	movem.l (a7)+,d0-d7/a0-a2
	rts

;--------------------------
loc_02a642:
	movem.l a0-a2,-(a7)
	move.b ($24c,a4),($25e,a3)
	bset #7,($24c,a4)
	bclr #6,($25e,a3)
	move.b ($24d,a4),($25f,a3)
	move.b ($24e,a4),($260,a3)
	move.b ($24f,a4),($261,a3)
	move.b ($250,a4),($262,a3)
	move.w ($252,a4),($264,a3)
	move.w ($254,a4),($266,a3)
	move.w ($256,a4),($268,a3)
	move.w ($258,a4),($26a,a3)
	move.w ($25a,a4),($26c,a3)
	move.w ($25c,a4),($26e,a3)
	move.w ($27a,a4),($27c,a3)
	movem.l (a7)+,a0-a2
	rts

;--------------------
loc_02a6a0:
	movem.l a0-a2,-(a7)
	move.b ($24c,a4),($25e,a3)
	bset #7,($24c,a4)
	bclr #6,($25e,a3)
	move.b ($24d,a4),($25f,a3)
	move.b ($24e,a4),($260,a3)
	move.b ($24f,a4),($261,a3)
	move.b ($250,a4),($262,a3)
	move.w ($252,a4),($264,a3)
	move.w ($254,a4),($266,a3)
	move.w ($256,a4),($268,a3)
	move.w ($258,a4),($26a,a3)
	move.w ($25a,a4),($26c,a3)
	move.w ($25c,a4),($26e,a3)
	move.w ($27a,a4),($27c,a3)
	bsr.w loc_02a702
	movem.l (a7)+,a0-a2
	rts

;--------------------
loc_02a702:
	tst.b ($24b,a4)
	beq.w loc_02a752
	addq.w #1,($286,a3)
	exg a3,a4
	jsr loc_022aec
	move.b ($25f,a4),d0
	andi.b #$60,d0
	bne.w loc_02a74a
	bsr.w loc_02a768
	bmi.w loc_02a750
	movem.l d0/a0,-(a7)
	lea loc_02dce0(pc),a0
	jsr RandomNumberGod
	andi.w #$c,d0
	movea.l (a0,d0.w),a0
	jsr loc_0231fe
	movem.l (a7)+, d0/a0

loc_02a74a:
	exg a3,a4
	sf d0
	bra.b loc_02a754

loc_02a750:
	exg a3,a4

loc_02a752:
	st d0

loc_02a754:
	tst.b d0
	rts

;--------------------
loc_02a758:
	jsr loc_022de4
	beq.w loc_02a766
	addq.w #1,($286,a4)

loc_02a766:
	rts

;--------------------
loc_02a768:
	btst #7,($249,a4)
	bne.w loc_02a7c6
	tst.w ($1f2,a4)
	bpl.w loc_02a79c
	move.l ($86,a4),-(a7)
	bsr.w loc_02c3b4
	move.l (a7)+,($86,a4)
	bclr #3,($2e1,a4)
	move.w ($2ba,a4),($2ba,a3)
	bset #6,($249,a4)
	bra.w loc_02a7cc

loc_02a79c:
	tst.w ($1f8,a4)
	bpl.w loc_02a7c6
	move.l ($86,a4),-(a7)
	bsr.w loc_02c354
	move.l (a7)+,($86,a4)
	bclr #3,($2e1,a4)
	move.w ($2ba,a4),($2ba,a3)
	bset #6,($249,a4)
	bra.w loc_02a7cc

loc_02a7c6:
	move.b #0,d0
	rts

loc_02a7cc:
	move.b #-1,d0
	rts

;--------------------------
extrar2sr:;2a580
	sf d0
	btst #7,($25f,a4)
	bne.w extra2a5ac
	btst #1,($249,a4)
	bne.w extra2a5ac
	tst.b (-$3dd,a5)
	bne.w extra2a5ac
	move.b ($2fb,a4),d0
	beq.w extra2a5ac
	bclr #5,($249,a4)

extra2a5ac:
	tst.b d0
	rts

;--------------------------
extraroutine02:;2a5b0
	tst.b (1,a4)
	bmi.b extra2a5fe
	btst #2,($249,a4)
	beq.b extra2a5dc
	jsr RandomNumberGod
	andi.w #$7ff,d0
	add.w ($358,a4),d0
	add.w ($340,a4),d0
	cmpi.w #$880,d0
	ble.b extra2a5da
	st ($2fb,a4)

extra2a5da:
	bra.b extra2a5fe

extra2a5dc:
	cmpi.w #$aa,($358,a4)
	ble.b extra2a5fe
	jsr RandomNumberGod
	andi.w #$7ff,d0
	move.w ($28c,a4),d1
	addq.w #2,d1
	lsl.w #2,d1
	cmp.w d0,d1
	ble.b extra2a5fe
	st ($2fb,a4)

extra2a5fe:
	btst #2,($249,a4)
	beq.b extra2a612
	bsr.w extrar2sr
	beq.w extra2a650
	bra.w extra2a77e

extra2a612:
	bsr.w loc_02c78a
	beq.w extra2a650
	tst.b ($24b,a3)
	beq.b extra2a62c
	bsr.w extrar2sr
	beq.w extra2a650
	bra.w extra2a7f8

extra2a62c:
	btst #6,($249,a4)
	beq.b extra2a640
	bsr.w extra2a886
	beq.w extra2a650
	bra.w extra2a652

extra2a640:
	bsr.w extrar2sr
	beq.w extra2a650
	tst.b ($272,a4)
	bne.w extra2a652

extra2a650:
	rts

extra2a652:
	clr.w ($2ba,a4)
	move.l ($20e,a4),d0
	cmp.l ($20e,a3),d0
	bne.b extra2a668
	move.b ($209,a4),($208,a4)
	bra.b extra2a674

extra2a668:
	bgt.b extra2a670
	sf ($208,a4)
	bra.b extra2a674

extra2a670:
	st ($208,a4)

extra2a674:
	tst.w ($204,a4)
	bgt.b extra2a680
	clr.w ($202,a4)
	bra.b extra2a6a0

extra2a680:
	subq.w #1,($204,a4)
	cmpi.w #$300,($202,a4)
	blt.b extra2a694
	move.w #$300,($202,a4)
	bra.b extra2a6a0

extra2a694:
	subi.w #$180,($202,a4)
	bpl.b extra2a6a0
	clr.w ($202,a4)
 
extra2a6a0:
	tst.b (0,a4)
	bmi.b extra2a6ac
	st (-$390,a5);maybe -34a
	bra.b extra2a6b0

extra2a6ac:
	st (-$38f,a5);maybe -349

extra2a6b0:
	tst.b (-$3e4,a5);maybe -39e
	bne.w extra2a6d6
	move.w #$20,d0
	tst.b (0,a4)
	bmi.b extra2a6c8
	bset #0,d0
	bra.b extra2a6cc

extra2a6c8:
	bset #1,d0

extra2a6cc:
	or.w d0,(-$394,a5);maybe -34e
	andi.w #$7fff,(-$39e,a5);maybe -34e

extra2a6d6:
	addi.w #$10,($202,a4)
	bclr #1,($246,a4)
	clr.b ($247,a4)
	jsr loc_023444
	move.b #$10,($249,a4)
	move.w #$b8,d1
	bsr.w loc_02c670
	move.l #-$20000,($216,a4)
	move.l #-$88800,($21a,a4)
	movea.l ($1e6,a4),a0
	movea.l ($8,a0),a0
	jsr loc_023384
	movea.l #loc_02da80,a0;gfx
	jsr loc_023384
	move.b #$20,(plextcounter00,a4)
	move.w #-1,($2bc,a4)
	bsr.w loc_02c624
	move.w #$1868,d0
	jsr extra23724
	jsr loc_023294
	move.w (plcharid,a4),d0
	andi.w #$f,d0
	lea BurstGruntSFX(pc),a0
	add.w d0,d0
	move.w (a0,d0.w),d0
	jsr extra23724
	rts

extra2a77e:
	clr.w ($2ba,a4)
	jsr loc_02efbc
	jsr loc_02ed40
	addi.w #$10,($202,a4)
	bclr #1,($246,a4)
	clr.b ($247,a4)
	jsr loc_023444
	move.b #$14,($249,a4)
	move.w #4,d1
	bsr.w loc_02c670
	move.b ($270,a4),($208,a4)
	move.l #-$c8000,($216,a4)
	clr.l ($21a,a4)
	move.l #$a000,($294,a4)
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	movea.l loc_02daaa,a0
	jsr loc_023384
	bclr #6,($25e,a4)
	move.w #-1,($2bc,a4)
	bsr.w loc_02c624
	rts

extra2a7f8:
	exg a3,a4
	jsr loc_023444
	move.b #$10,($249,a4)
	movea.l #loc_02da80,a0;gfx #$2e102
	jsr loc_023384
	bclr #1,($246,a4)
	clr.b ($247,a4)
	move.b ($209,a4),($208,a4)
	move.l #-$38000,($216,a4)
	move.l #-$50800,($21a,a4)
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	move.w #4,d1
	bsr.w loc_02c670
	move.b #$20,(plextcounter00,a4)
	move.w #-1,($2bc,a4)
	bsr.w loc_02c624
	exg a3,a4
	move.b ($209,a3),d0
	not.b d0
	move.b d0,($209,a4)
	move.l ($212,a3),($212,a4)
	move.l ($20e,a3),($20e,a4)
	move.l #-$400000,d0
	tst.b ($209,a4)
	bpl.b extra2a87e
	neg.l d0

extra2a87e:
	add.l d0,($20e,a4)
	bra.w extra2a652

;--------------------------
extraroutine00:;2a8ac
	move.b ($25f,a4),d0
	andi.w #7,d0
	lsl.w #1,d0
	btst #1,($246,a4)
	beq.b exr01table2
	lea loc_02daf0(pc),a0
	bra.b exroutine00done

exr01table2:
	lea loc_02dc40(pc),a0

exroutine00done:
	move.w (a0,d0.w),d0
	rts

;--------------------
BurstGruntSFX:;extra2a75e
	dc.w $1c4e,$1cbb,$1c5f,$1cac
	dc.w $1c70,$1c7d,$1c88,$1ca4
	dc.w $1c48,$00ec
	dc.w $1c4e,$1c4e,$1c4e,$1c4e,$1c4e,$1c4e

;--------------------
loc_02a7d2:
	btst #6,($25e,a4)
	bne.w loc_02a994
	move.b ($276,a4),d0
	andi.b #3,d0
	bne.w loc_02a89c
	move.b ($25f,a4),d0
	move.b ($24d,a4),d1
	btst #3,($24c,a4)
	bne.w loc_02a7fc
	clr.w d1

loc_02a7fc
	btst #4,d0
	bne.w loc_02a876
	btst #4,d1
	bne.w loc_02a85c
	andi.w #$60,d0
	beq.w loc_02a89c
	andi.w #$60,d1
	beq.w loc_02a89c
	cmpi.w #$20,d0
	beq.w loc_02a838
	cmpi.w #$40,d0
	beq.w loc_02a844
	cmpi.w #$60,d0
	beq.w loc_02a850
	bra.w loc_02a89c

loc_02a838:
	cmpi.w #$60,d1
	beq.w loc_02a996
	bra.w loc_02a89c

loc_02a844:
	cmpi.w #$20,d1
	beq.w loc_02a996
	bra.w loc_02a89c

loc_02a850:
 	cmpi.w #$40,d1
 	beq.w loc_02a996
 	bra.w loc_02a89c

loc_02a85c:
	andi.w #$60,d0
	beq.w loc_02a89c
	andi.w #$60,d1
	beq.w loc_02a89c
	cmp.w d1,d0
	beq.w loc_02a996
	bra.w loc_02a89c

loc_02a876:
	btst #4,d1
	bne.w loc_02a898
	andi.w #$60,d0
	beq.w loc_02a89c
	andi.w #$60,d1
	beq.w loc_02a89c
	cmp.w d1,d0
	beq.w loc_02a89c
	bra.w loc_02a996

loc_02a898:
	bra.w loc_02a996

;--------------------------
loc_02a89c:;juggles
;extra34
;	tst.b extraflag
;	bne 2a994 ;to rts
	rts

;notextra34
	tst.w ($2bc,a4)
	beq.w loc_02a994
	tst.w ($288,a4)
	beq.w loc_02a994
	bmi.w loc_02a986
	btst #5,($25e,a4)
	bne.b loc_02a8c8
	move.w ($288,a4),d0
	andi.w #$f,d0
	cmpi.w #$f,d0
	bcc.w loc_02a986

loc_02a8c8:
	move.b ($260,a4),d0
	cmpi.b #9,d0
	beq.w loc_02a948
	cmpi.b #7,d0
	beq.w loc_02a948
	cmpi.b #8,d0
	beq.w loc_02a948
	cmpi.b #$20,d0
	beq.w loc_02a994
	cmpi.b #$21,d0
	beq.w loc_02a994
	cmpi.b #$22,d0
	beq.w loc_02a994
	cmpi.b #$23,d0
	beq.w loc_02a994
	cmpi.b #$1e,d0
	beq.w loc_02a960
	cmpi.b #$19,d0
	beq.w loc_02a94e
	cmpi.b #$1a, d0
	beq.w loc_02a954
	cmpi.b #$1b, d0
	beq.w loc_02a95a
	cmpi.b #$1c, d0
	beq.w loc_02a960
	cmpi.b #$1d, d0
	beq.w loc_02a966
	cmpi.b #$17, d0
	beq.w loc_02a960
	cmpi.b #$18, d0
	beq.w loc_02a960
	clr.w d0
	bra.b loc_02a97c

loc_02a948:
	move.w #5,d0
	bra.b loc_02a96a

loc_02a94e:
	move.w #$30,d0
	bra.b loc_02a96a

loc_02a954:
	move.w #$50,d0
	bra.b loc_02a96a

loc_02a95a:
	move.w #$80,d0
	bra.b loc_02a96a

loc_02a960:
	move.w #$100,d0
	bra.b loc_02a96a

loc_02a966:
	move.w #$200,d0

loc_02a96a:
	cmp.w ($28a,a4),d0
	bcc.b loc_02a974
	move.w ($28a,a4),d0

loc_02a974:
	cmp.w ($288,a4),d0
	bhi.w loc_02a994

loc_02a97c:
	btst #5,($25e,a4)
	bne.w loc_02a994

loc_02a986:
	btst #7,($25f,a4)
	bne.w loc_02a994
	bra.w loc_02a996

loc_02a994:
	rts

;==========================
loc_02a996:
	clr.b ($276,a4)
	andi.b #$e0,($275,a3)
	btst #6,($25e,a4)
	bne.w loc_02a9b0
	bclr #7,($24c,a3)

loc_02a9b0:
	subq.w #1,($286,a4)
	bpl.w loc_02a9bc
	clr.w ($286,a4)

loc_02a9bc:
	jsr loc_022dca
	rts

;--------------------------
;Collision start
loc_02a9c4:
	jsr loc_023294
	bsr.w loc_02c6ac
	clr.w ($2bc,a4)
	tst.b ($1,a4)		;Cpu Check
	bmi.w loc_02aa40

	tst.b (-$3dd,a5)
	bne.w loc_02aa40
	btst #6,($25e,a4)
	beq.b loc_02a9f0
	move.w ($340,a4),d1
	bra.b loc_02aa0c

loc_02a9f0:
	move.w ($340,a4),d1
	subi.w #$c0,d1
	bmi.w loc_02aa40
	tst.b ($2fa,a4)
	bne.b loc_02aa0a
	btst #2,($249,a4)
	beq.b loc_02aa0c

loc_02aa0a:
	lsr.w #1,d1

loc_02aa0c:
	jsr RandomNumberGod
	andi.w #$ff,d0
	cmp.w d1,d0
	bge.w loc_02aa40
	st ($2fa,a4)
	btst #1,($25e,a4)
	beq.w loc_02aa30
	bset #1,($2f6,a4)

loc_02aa30:
	btst #0,($25e,a4)
	beq.w loc_02aa40
	bclr #1,($2f6,a4)


loc_02aa40:
	tst.b ($2fa,a4)
	bne.w loc_02aa7c
	tst.b (1,a4)
	bpl.b loc_02aa64
	jsr RandomNumberGod
	andi.w #$ff,d0
	addi.w #$20,d0
	cmp.w ($340,a4),d0
	bls.w loc_02aa6e

loc_02aa64:
	btst #5,($25e,a4)
	beq.w loc_02aafa

loc_02aa6e:
	btst #2,($249,a4)
	bne.w loc_02aa7c
	bra.w loc_02aafa

loc_02aa7c:;Blocking Checks
	btst #1,($246,a4)
	beq.w loc_02aafa
	btst #2,($24a,a4)
	bne.w loc_02aafa
	btst #1,($2f6,a4)
	bne.w loc_02aaca
	btst #1,($25e,a4)
	beq.w loc_02aaa8
	bra.w loc_02aafa

loc_02aaa8:
	bsr.w loc_028f58
	lsl.w #2,d1
	addq.w #4,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	clr.b ($248,a4)
	bra.w loc_02afc4;Block Sound play

loc_02aaca:
	btst #0,($25e,a4)
	bne.w loc_02aafa
	bsr.w loc_028f8e
	lsl.w #2,d1
	addi.w #$10,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (4,a0),a0
	jsr loc_023384
	move.b #2,($248,a4)
	bra.w loc_02afc4

loc_02aafa:
	clr.b ($275,a4)
	clr.l ($216,a4)
	clr.l ($21a,a4)
	andi.b #$90,($249,a4)
	ori.b #8,($249,a4)
	bclr #6,($248,a4)
	btst #6,($25e,a4)
	beq.b loc_02ab2e
	move.w #8,($2ba,a4)
	st ($2b9,a4)
	bra.w loc_02ab48

loc_02ab2e:
	btst #2,($25f,a4)
	bne.b loc_02ab3e
	move.w #$a,($2ba,a4)
	bra.b loc_02ab44

loc_02ab3e:
	move.w #$c,($2ba,a4)

loc_02ab44:
	st ($2b9,a4)

loc_02ab48:
	jsr loc_022aec
	jsr loc_02ee5a
	tst.w ($1f2,a4)
	bmi.w loc_02ae54
	tst.w ($1f8,a4)
	bmi.w loc_02ad1a
	move.b ($260,a4),d0
	cmpi.b #$3f,d0
	beq.w loc_02c27a
	cmpi.w #$10,($288,a4)
	bcc.w loc_02ac46
	lea loc_02ab82(pc),a0
	bra.w loc_02c64e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_02ab82:
	dc.w $0001,$002f
	dc.l loc_02b17c,loc_02b17c,loc_02b1c4,loc_02b17c
	dc.l loc_02b1c4,loc_02c086,loc_02c0ce,loc_02b9ce
	dc.l loc_02ba0a,loc_02ba46,loc_02b4bc,loc_02b544
	dc.l loc_02b74a,loc_02bdf8,loc_02be44,loc_02c178
	dc.l loc_02c1c4,loc_02bbf6,loc_02bc12,loc_02bc2e
	dc.l loc_02bb62,loc_02bbb6,loc_02bbd6,loc_02befa
	dc.l loc_02bf4a,loc_02b93c,loc_02b944,loc_02b94c
	dc.l loc_02b954,loc_02b95c,loc_02b85a,loc_02b8de
	dc.l loc_02bd94,loc_02bdaa,loc_02bd7c,loc_02bd88
	dc.l loc_02b5a4,loc_02b79c,loc_02b7c2,loc_02b7f8
	dc.l loc_02b71e,loc_02bfc8,loc_02c012,loc_02bacc
	dc.l loc_02bafe,loc_02bb30,loc_02bd34,loc_02c2d0

;--------------------------
loc_02ac46:
	lea loc_02ac4e(pc),a0
	bra.w loc_02c64e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_02ac4e:
	dc.w $0001,$002f
	dc.l loc_02b63a,loc_02b66e,loc_02b63a,loc_02b66e
	dc.l loc_02b63a,loc_02b66e,loc_02b63a,loc_02b66e
	dc.l loc_02b63a,loc_02b63a,loc_02b63a,loc_02b6a2
	dc.l loc_02b71e,loc_02bdf8,loc_02be44,loc_02c178
	dc.l loc_02c1c4,loc_02bbf6,loc_02bc12,loc_02bc2e
	dc.l loc_02bb62,loc_02bbb6,loc_02bbd6,loc_02befa
	dc.l loc_02bf4a,loc_02b93c,loc_02b944,loc_02b94c
	dc.l loc_02b954,loc_02b95c,loc_02b85a,loc_02b8de
	dc.l loc_02bd94,loc_02bdaa,loc_02bd7c,loc_02bd88
	dc.l loc_02b5a4,loc_02b79c,loc_02b7c2,loc_02b7f8
	dc.l loc_02b71e,loc_02bfc8,loc_02c012,loc_02bacc
	dc.l loc_02bafe,loc_02bb30,loc_02b63a,loc_02c2d0

;--------------------------
loc_02ad12:
	bsr.w loc_02c354
	bra.w loc_02ad46

loc_02ad1a:
	cmpi.b #$20,($260,a4)
	beq.w loc_02bd94
	cmpi.b #$21,($260,a4)
	beq.w loc_02bdaa
	cmpi.b #$22,($260,a4)
	beq.w loc_02bd7c
	cmpi.b #$23,($260,a4)
	beq.w loc_02bd88
	bsr.w loc_02c354

loc_02ad46:
	lea loc_02ad4e(pc),a0
	bra.w loc_02c64e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_02ad4e:
	dc.w $0001,$002f
	dc.l loc_02ae12,loc_02ae12,loc_02ae12,loc_02ae12
	dc.l loc_02ae12,loc_02ae12,loc_02ae12,loc_02ae12
	dc.l loc_02ae12,loc_02ae12,loc_02ae12,loc_02ae12
	dc.l loc_02b71e,loc_02b5dc,loc_02b5a4,loc_02b5f8
	dc.l loc_02b5c0,loc_02bacc,loc_02bafe,loc_02bb30
	dc.l loc_02bacc,loc_02bafe,loc_02bb30,loc_02b5dc
	dc.l loc_02b5a4,loc_02b5a4,loc_02b5a4,loc_02b5a4
	dc.l loc_02b5a4,loc_02b5a4,loc_02b7f8,loc_02b7f8
	dc.l loc_02ae12,loc_02ae12,loc_02ae12,loc_02ae12
	dc.l loc_02b5a4,loc_02b79c,loc_02b7c2,loc_02b7f8
	dc.l loc_02b71e,loc_02bfc8,loc_02c012,loc_02bacc
	dc.l loc_02bafe,loc_02bb30,loc_02ae12,loc_02c2d0

;--------------------------
loc_02ae12:
	move.l #-$20000,($216,a4)
	move.l #-$65800,($21a,a4)
	move.w #$90,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	move.b ($208,a4),d0
	move.b ($270,a4),d1
	eor.b d0,d1
	bpl.w loc_02ae4a
	neg.l ($216,a4)

loc_02ae4a:
	rts

;--------------------------
loc_02ae4c:
	bsr.w loc_02c3b4
	bra.w loc_02ae80

;--------------------------
loc_02ae54:
	cmpi.b #$20,($260,a4)
	beq.w loc_02bd94
	cmpi.b #$21,($260,a4)
	beq.w loc_02bdaa
	cmpi.b #$22,($260,a4)
	beq.w loc_02bd7c
	cmpi.b #$23,($260,a4)
	beq.w loc_02bd88
	bsr.w loc_02c3b4

loc_02ae80:
	lea loc_02ae88(pc),a0
	bra.w loc_02c64e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_02ae88:
	dc.w $0001,$002f
	dc.l loc_02af4c,loc_02b66e,loc_02b63a,loc_02b66e
	dc.l loc_02b63a,loc_02af4c,loc_02af4c,loc_02b66e
	dc.l loc_02b63a,loc_02b63a,loc_02b63a,loc_02b6a2
	dc.l loc_02b71e,loc_02b5dc,loc_02b5a4,loc_02b5f8
	dc.l loc_02b5c0,loc_02bacc,loc_02bafe,loc_02bb30
	dc.l loc_02bb62,loc_02bbb6,loc_02bbd6,loc_02befa
	dc.l loc_02bf4a,loc_02b93c,loc_02b944,loc_02b94c
	dc.l loc_02b954,loc_02b95c,loc_02b85a,loc_02b8de
	dc.l loc_02af4c,loc_02af4c,loc_02af4c,loc_02af4c
	dc.l loc_02b5a4,loc_02b79c,loc_02b7c2,loc_02b7f8
	dc.l loc_02b71e,loc_02bfc8,loc_02c012,loc_02bacc
	dc.l loc_02bafe,loc_02bb30,loc_02af4c,loc_02c2d0

;--------------------------
loc_02af4c:
	move.l #-$20000,($216,a4)
	move.l #-$65800,($21a,a4)
	move.w #$94,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	move.b ($208,a4),d0
	move.b ($270,a4),d1
	eor.b d0,d1
	bpl.w loc_02af84
	neg.l ($216,a4)

loc_02af84:
	rts

;--------------------------
loc_02af86:
	move.l #-$20000,($216,a4)
	move.l #-$65800,($21a,a4)
	move.w #$94,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	move.b ($208,a4),d0
	move.b ($270,a4),d1
	eor.b d0,d1
	bpl.w loc_02afbe
	neg.l ($216,a4)

loc_02afbe:
	bsr.w loc_02c4a8
	rts

;--------------------------
loc_02afc4:
	clr.w ($286,a4)
	clr.w ($288,a4)
	clr.w ($28a,a4)
	clr.w ($28c,a4)
	btst #5,($25e,a4)
	beq.w loc_02affe
	jsr loc_02ef78
	jsr loc_022cc6
	tst.w ($1f2,a4)
	bmi.w loc_02ae54
	tst.w ($1f8,a4)
	bmi.w loc_02ad1a
	bra.w loc_02b00a

loc_02affe:
	jsr loc_02ef34
	jsr loc_022d86

loc_02b00a:
	btst #2,($25f,a4)
	bne.b loc_02b01a
	move.w #$a,($2ba,a4)
	bra.b loc_02b020

loc_02b01a:
	move.w #$c,($2ba,a4)

loc_02b020:
	st ($2b9,a4)
	jsr loc_028f40
	clr.l ($294,a4)
	move.b ($260,a4),d0
	cmpi.b #1,d0
	beq.w loc_02b06a
	cmpi.b #2,d0
	beq.w loc_02b06a
	cmpi.b #7,d0
	beq.w loc_02b06a
	cmpi.b #8,d0
	beq.w loc_02b06a
	cmpi.b #5,d0
	beq.w loc_02b06a
	cmpi.b #6,d0
	beq.w loc_02b06a
	move.b ($209,a4),($208,a4)
	bra.b loc_02b070

loc_02b06a:
	move.b ($270,a4),($208,a4)

loc_02b070:
	movea.l #loc_02daaa,a0
	jsr loc_023384
	move.b #4,($249,a4)
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	cmpi.b #$28,($260,a4)
	beq.b loc_02b10a
	cmpi.b #$c,($260,a4)
	beq.b loc_02b10a
	cmpi.b #$2a,($260,a4)
	beq.b loc_02b10a
	cmpi.b #5,($260,a4)
	beq.b loc_02b10a
	cmpi.b #6,($260,a4)
	beq.b loc_02b10a
	cmpi.b #$f,($260,a4)
	beq.b loc_02b10a
	cmpi.b #$10,($260,a4)
	beq.b loc_02b10a
	cmpi.b #$2b,($260,a4)
	beq.b loc_02b10a
	cmpi.b #$2c,($260,a4)
	beq.b loc_02b10a
	cmpi.b #$2d,($260,a4)
	beq.b loc_02b10a
	cmpi.b #$11,($260,a4)
	beq.b loc_02b10a
	cmpi.b #$12,($260,a4)
	beq.b loc_02b10a
	cmpi.b #$13,($260,a4)
	beq.b loc_02b10a

;extra35
;	tst.b (extraflag)
;	bne
	lea extra2dbd0(pc),a0
	move.l (a0,d1.w),($216,a4)
	lea extra2dbb0(pc),a0
	move.l (a0,d1.w),($294,a4)
	bra.b loc_02b11e

loc_02b10a:
;extra36 tables were edited
;	tst.b (extraflag)
;	bne
	lea extra2dc10(pc),a0
	move.l (a0,d1.w),($216,a4)
	lea extra2dbf0(pc),a0
	move.l (a0,d1.w),($294,a4)

loc_02b11e:
	move.b ($208,a4),d0
	cmp.b ($270,a4),d0
	beq.b loc_02b130
	neg.l ($216,a4)
	neg.l ($294,a4)

loc_02b130:
	cmpi.b #3,($260,a4)
	beq.b loc_02b164
	cmpi.b #4,($260,a4)
	beq.b loc_02b164
	cmpi.b #$17,($260,a4)
	beq.b loc_02b152
	cmpi.b #$18,($260,a4)
	beq.b loc_02b152
	bra.b loc_02b17a

loc_02b152:
	bsr.w loc_02c478
	bmi.w loc_02b17a
	move.l ($216,a4),d0
	asr.l #1,d0
	move.l d0,($216,a4)

loc_02b164:
	clr.l ($216,a4)
	clr.l ($294,a4)
	bsr.w loc_02c478
	move.l ($216,a4),d0
	asr.l #1,d0
	move.l d0,($216,a4)

loc_02b17a:
	rts

;--------------------------
loc_02b17c:
	tst.b ($247,a4)
	beq.w loc_02b3de
	tst.w ($288,a4)
	bne.w loc_02b3de

loc_02b18c:
	btst #1,($248,a4)
	bne.w loc_02b20c

loc_02b196:
	lea loc_02dcf0(pc),a0
	jsr loc_0231fe
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$18,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	bra.w loc_02b23a

;--------------------------
loc_02b1c4:
	tst.b ($247,a4)
	beq.w loc_02b3de
	tst.w ($288,a4)
	bne.w loc_02b3de

loc_02b1d4:
	btst #1,($248,a4)
	bne.w loc_02b20c

loc_02b1de:
	lea loc_02dd10(pc),a0
	jsr loc_0231fe
	move.b ($25f,a4),d1
	andi.w #7, d1
	lsl.w #2,d1
	addi.w #$38,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	bra.w loc_02b23a

;--------------------------
loc_02b20c:
	lea loc_02dd30(pc),a0
	jsr loc_0231fe
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$58,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (4,a0),a0
	jsr loc_023384
	bra.w loc_02b23a

loc_02b23a:
	move.b ($270,a4),($208,a4)
	movea.l #loc_02d984,a0
	jsr loc_023384
	move.l (-$45de,a5),($212,a4)
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	lea loc_02db30(pc),a0
	move.l (a0,d1.w),($216,a4)
	lea loc_02db10(pc),a0
	move.l (a0,d1.w),($294,a4)
	cmpi.b #3,($260,a4)
	beq.b loc_02b292
	cmpi.b #4,($260,a4)
	beq.b loc_02b292
	cmpi.b #$17,($260,a4)
	beq.b loc_02b29a
	cmpi.b #$18,($260,a4)
	beq.b loc_02b29a
	bra.b loc_02b29e

loc_02b292:
	clr.l ($216,a4)
	clr.l ($294,a4)

loc_02b29a:
	bsr.w loc_02c478

loc_02b29e:
	rts

;--------------------------
loc_02b2a0:
	tst.b ($247,a4)
	beq.w loc_02b3de
	tst.w ($288,a4)
	bne.w loc_02b3de

loc_02b2b0:
	btst #1,($248,a4)
	bne.w loc_02b330
	lea loc_02dcf0(pc),a0
	jsr loc_0231fe
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$18,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	bra.w loc_02b35e

;--------------------------
loc_02b2e8:
	tst.b ($247,a4)
	beq.w loc_02b3de
	tst.w ($288,a4)
	bne.w loc_02b3de

loc_02b2f8:
	btst #1,($248,a4)
	bne.w loc_02b330
	lea loc_02dd10(pc),a0
	jsr loc_0231fe
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$38,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	bra.w loc_02b35e

loc_02b330:
	lea loc_02dd30(pc),a0
	jsr loc_0231fe
	move.b ($25f,a4),d1
	andi.w #7, d1
	lsl.w #2,d1
	addi.w #$58,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (4,a0),a0
	jsr loc_023384
	bra.w loc_02b35e

loc_02b35e:
	move.b ($270,a4),($208,a4)
	movea.l #loc_02d9a0,a0
	jsr loc_023384
	move.l (-$45de,a5),($212,a4)
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	cmpi.b #$12,($260,a4)
	beq.w loc_02b3a0
	lea loc_02db30(pc),a0
	move.l (a0,d1.w),($216,a4)
	lea loc_02db10(pc),a0
	move.l (a0,d1.w),($294,a4)
	bra.b loc_02b3b4

loc_02b3a0:
	lea loc_02db70(pc),a0
	move.l (a0,d1.w),($216,a4)
	lea loc_02db50(pc),a0
	move.l (a0,d1.w),($294,a4)

loc_02b3b4:
	bsr.w loc_02c478
	rts

;--------------------------
loc_02b3ba:;2b8ee
	addq.w #1,($288,a4)
	move.w #5,d5
	bsr.w loc_02c5ea
	bmi.w loc_02b654

;extra37
	move.l #-$2a000,($216,a4)
	bsr extraroutine01
	bra.w loc_02b3fe

;origcode
;	move.l #-$38000,($216,a4)
;	move.l #-$50800,($21a,a4)


;--------------------------
loc_02b3de:
	addq.w #1,($288,a4)
	move.w #5,d5
	bsr.w loc_02c5ea
	bmi.w loc_02b63a

;extra38
	move.l #-$21000,($216,a4)
	bsr extraroutine01

;	move.l #-$2c000,($216,a4)
;	move.l #-$50800,($21a,a4)

loc_02b3fe:
	btst #0,($25e,a4)
	beq.w loc_02b42c
	cmpi.b #2,($260,a4)
	beq.w loc_02b42c
	cmpi.b #4,($260,a4)
	beq.w loc_02b42c
	lea loc_02dcf0(pc),a0
	jsr loc_0231fe
	move.w #$7c,d1
	bra.b loc_02b43a

loc_02b42c:
	lea loc_02dd10(pc),a0
	jsr loc_0231fe
	move.w #$78,d1

loc_02b43a:
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	move.b ($208,a4),d0
	move.b ($209,a4),d1
	eor.b d0,d1
	bpl.w loc_02b45e
	neg.l ($216,a4)

loc_02b45e:
	move.w #-1,($2bc,a4)
	addq.w #4,($28c,a4)
	bra.w loc_02bab0

loc_02b46c:
	btst #0,($25e,a4)
	beq.w loc_02b49a
	cmpi.b #2,($260,a4)
	beq.w loc_02b49a
	cmpi.b #4,($260,a4)
	beq.w loc_02b49a
	lea loc_02dcf0(pc),a0
	jsr loc_0231fe
	move.w #$7c,d1
	bra.b loc_02b4a8

loc_02b49a:
	lea loc_02dd10(pc),a0
	jsr loc_0231fe
	move.w #$78,d1

loc_02b4a8:;2b0a0
;extra39
	move.l #-$2a000,($216,a4)
	bsr extraroutine01

;	move.l #-$38000,($216,a4)
;	move.l #-$50800,($21a,a4)
	bra.w loc_02b508

;--------------------------
loc_02b4bc:
	btst #0,($25e,a4)
	beq.w loc_02b4ea
	cmpi.b #2,($260,a4)
	beq.w loc_02b4ea
	cmpi.b #4,($260,a4)
	beq.w loc_02b4ea
	lea loc_02dcf0(pc),a0
	jsr loc_0231fe
	move.w #$7c,d1
	bra.b loc_02b4f8

loc_02b4ea:
	lea loc_02dd10(pc),a0
	jsr loc_0231fe
	move.w #$78,d1

loc_02b4f8:
;extra40
	move.l #-$21000,($216,a4)
	bsr extraroutine01

;	move.l #-$2c000,($216,a4)
;	move.l #-$50800,($21a,a4)

;--------------------------
loc_02b508:
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	move.b ($208,a4),d0
	move.b ($209,a4),d1
	eor.b d0,d1
	bpl.w loc_02b52c
	neg.l ($216,a4)

loc_02b52c:
	movea.l #loc_02d9ae,a0
	jsr loc_023384
	move.w #-1,($2bc,a4)
	bsr.w loc_02c636
	rts

;--------------------------
loc_02b544:
	move.b ($270,a4),($208,a4)

;--------------------------
loc_02b54a:
;extra41
	move.l #-$1b000,($216,a4)

;	move.l #-$24000,($216,a4)
	move.l #-$42800,($21a,a4)
	move.b ($208,a4),d0
	move.b ($209,a4),d1
	eor.b d0,d1
	bpl.w loc_02b56c
	neg.l ($216,a4)

loc_02b56c:
	lea loc_02dd50(pc),a0
	jsr loc_0231fe
	move.w #$88,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	ori.b #$20,($249,a4)
	movea.l #loc_02d9bc,a0
	jsr loc_023384
	sf ($2b9,a4)
	rts

;--------------------------
loc_02b5a4:
	move.w #$90,d1
	bsr.w loc_02c670
	move.l #-$20000,($216,a4)
	move.l #-$65800,($21a,a4)
	bra.w loc_02b614

;--------------------------
loc_02b5c0:
	move.w #$90,d1
	bsr.w loc_02c670
	move.l #-$30000,($216,a4)
	move.l #-$65800,($21a,a4)
	bra.w loc_02b614

;--------------------------
loc_02b5dc:
	move.w #$94,d1
	bsr.w loc_02c670
	move.l #-$20000,($216,a4)
	move.l #-$65800,($21a,a4)
	bra.w loc_02b614

;--------------------------
loc_02b5f8:
	move.w #$94,d1
	bsr.w loc_02c670
	move.l #-$30000,($216,a4)
	move.l #-$65800,($21a,a4)
	bra.w loc_02b614

;--------------------------
loc_02b614:
	move.b ($208,a4),d0
	move.b ($209,a4),d1
	eor.b d0,d1
	bpl.b loc_02b624
	neg.l ($216,a4)

loc_02b624:
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	bsr.w loc_02c4a8
	bra.w loc_02b6d2

;--------------------------
loc_02b63a:
	move.w #$90,d1
	bsr.w loc_02c670
	move.l #-$20000,($216,a4)
	move.l #-$65800,($21a,a4)
	bra.b loc_02b6c0

;--------------------------
loc_02b654:
	move.w #$90,d1
	bsr.w loc_02c670
	move.l #-$30000,($216,a4)
	move.l #-$65800,($21a,a4)
	bra.b loc_02b6c0

;--------------------------
loc_02b66e:
	move.w #$94,d1
	bsr.w loc_02c670
	move.l #-$20000,($216,a4)
	move.l #-$65800,($21a,a4)
	bra.b loc_02b6c0

;--------------------------
loc_02b688:
	move.w #$94,d1
	bsr.w loc_02c670
	move.l #-$30000,($216,a4)
	move.l #-$65800,($21a,a4)
	bra.b loc_02b6c0

;--------------------------
loc_02b6a2:
	move.w #$a0,d1
	bsr.w loc_02c670
	bset #6,($248,a4)
	move.l #-$20000,($216,a4)
	move.l #-$65800,($21a,a4)

;--------------------------
loc_02b6c0:
	move.b ($208,a4),d0
	move.b ($209,a4),d1
	eor.b d0,d1
	bpl.w loc_02b6d2
	neg.l ($216,a4)

;--------------------------
loc_02b6d2:
	movea.l #loc_02d9ca,a0
	jsr loc_023384
	bra.b loc_02b6e8

loc_02b6e0:
	bsr.w loc_02c618
	bsr.w loc_02c5fa

loc_02b6e8:
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	clr.w ($238,a4)
	clr.w ($23a,a4)
	move.w #-1,($2bc,a4)
	bsr.w loc_02c5fa
	andi.b #$92,($249,a4)
	bne.b loc_02b716
	move.w #$a,($2ba,a4)

loc_02b716:
	ori.b #$28,($249,a4)
	rts

;--------------------------
loc_02b71e:
	move.b ($270,a4),($208,a4)

;extra43
	move.l #-$60000,($216,a4)
;	move.l #-$80000,($216,a4)
	move.l #-$65800,($21a,a4)

;--------------------------
loc_02b734:
	move.w #$90,d1
	bsr.w loc_02c670
	movea.l #loc_02d9d8,a0
	jsr loc_023384
	bra.b loc_02b6e0

;--------------------------
loc_02b74a:
	addq.w #1,($288,a4)
	move.w #5,d5
	bsr.w loc_02c5e0
	bmi.b loc_02b71e
	move.b ($270,a4),($208,a4)

;extra44
	move.l #-$60000,($216,a4)
;	move.l #-$80000,($216,a4)
	move.l #-$65800,($21a,a4)
	lea loc_02dcf0(pc),a0
	jsr loc_0231fe
	move.w #$7c,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	movea.l #loc_02da02,a0
	jsr loc_023384
	rts

;--------------------------
loc_02b79c:
	move.b ($270,a4),($208,a4)
	move.l #-$e000,($216,a4)
	bsr.w loc_02c4a8
	move.l #-$ab800,($21a,a4)

;--------------------------
loc_02b7b6:
	move.w #$b0,d1
	bsr.w loc_02c670
	bra.w loc_02b6d2

;--------------------------
loc_02b7c2:
	move.b ($270,a4),($208,a4)
	not.b ($208,a4)
	move.l #$e000,($216,a4)
	move.l #-$ab800,($21a,a4)
	bsr.w loc_02c4a8
	move.w #$90,d1
	bsr.w loc_02c670
	bra.w loc_02b6d2

loc_02b7ec:
	move.w #$b0,d1
	bsr.w loc_02c670
	bra.w loc_02bab0

;--------------------------
loc_02b7f8:
	move.b ($270,a4),($208,a4)

;extra45
	move.l #-$30000,($216,a4)
;	move.l #-$38000,($216,a4)
	bsr.w loc_02c4a8
	move.l #$8c000,($21a,a4)

;--------------------------
loc_02b812:
	move.w #$b4,d1
	bsr.w loc_02c670
	bset #6,($248,a4)
	movea.l #loc_02da1e,a0
	jsr loc_023384
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	move.w #-1,($2bc,a4)
	bsr.w loc_02c5fa
	andi.b #$92,($249,a4)
	bne.b loc_02b852
	move.w #$a,($2ba,a4)

loc_02b852:
	ori.b #$28,($249,a4)
	rts

;--------------------------
loc_02b85a:
	tst.w ($288,a4)
	bne.b loc_02b86e
	tst.b ($247,a4)
	beq.b loc_02b86e
	move.l (-$45de,a5),($212,a4)
	bra.b loc_02b880

loc_02b86e:
	addi.w #$10,($288,a4)
	move.w #$100,d5
	bsr.w loc_02c5e0
	bmi.w loc_02b7f8

loc_02b880:
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$38,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	move.l #$8c000,($21a,a4)
	move.b ($270,a4),($208,a4)
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1

;extra46 tables changed
	lea extra2db30(pc),a0
	move.l (a0,d1.w),($216,a4)
	lea extra2db10(pc),a0
	move.l (a0,d1.w),($294,a4)
	bsr.w loc_02c478
	movea.l #loc_02da10,a0
	jsr loc_023384
	rts

;--------------------------
loc_02b8de:
	tst.w ($288,a4)
	bne.b loc_02b8ec
	tst.b ($247,a4)
	bne.w loc_02b85a

loc_02b8ec:
	addi.w #$10,($288,a4)
	move.w #$100,d5
	bsr.w loc_02c5e0
	bmi.w loc_02b7f8
	move.w #$b4,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	move.b ($270,a4),($208,a4)

;extra47
	move.l #-$30000,($216,a4)
;	move.l #-$38000,($216,a4)
	bsr.w loc_02c4a8
	move.l #$8c000,($21a,a4)
	movea.l #loc_02da1e,a0
	jsr loc_023384
	rts

;--------------------------
loc_02b93c:
	move.w #$30,d5
	bra.w loc_02b964

;--------------------------
loc_02b944:
	move.w #$50,d5
	bra.w loc_02b964

;--------------------------
loc_02b94c:
	move.w #$80,d5
	bra.w loc_02b964

;--------------------------
loc_02b954:
	move.w #$100,d5
	bra.w loc_02b964

;--------------------------
loc_02b95c:
	move.w #$200,d5
	bra.w loc_02b964

;--------------------------
loc_02b964:
	move.l #-$1c000,($216,a4)
	move.l #-$65800,($21a,a4)
	move.b ($270,a4),($208,a4)

;--------------------------
loc_02b97a:
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	bsr.w loc_02c4a8
	move.w #$90,d1
	move.w ($288,a4),d0
	btst #4,d0
	bne.w loc_02b9a0
	move.w #$94,d1

loc_02b9a0:
	bsr.w loc_02c670
	addi.w #$10,($288,a4)
	bsr.w loc_02c5e0
	bmi.w loc_02b6d2
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	movea.l #loc_02d9e6,a0
	jsr loc_023384
	rts

;--------------------------
loc_02b9ce:
	tst.b ($247,a4)
	bne.w loc_02b9fc
	addq.w #1,($288,a4)
	move.w #5,d5
	bsr.w loc_02c5e0
	bmi.w loc_02b66e
	lea loc_02dcf0(pc),a0
	jsr loc_0231fe
	move.w #$7c,d1
	bsr.w loc_02c670
	bra.w loc_02ba8e

loc_02b9fc:
	cmpi.w #1,($286,a4)
	ble.w loc_02b18c
	bra.w loc_02b196

;--------------------------
loc_02ba0a:
	tst.b ($247,a4)
	bne.w loc_02ba38
	addq.w #1,($288,a4)
	move.w #5,d5 
	bsr.w loc_02c5e0
	bmi.w loc_02b6a2
	lea loc_02dd10(pc),a0
	jsr loc_0231fe
	move.w #$78,d1
	bsr.w loc_02c670
	bra.w loc_02ba8e

loc_02ba38:
	cmpi.w #1,($286,a4)
	ble.w loc_02b1d4
	bra.w loc_02b1de

;--------------------------
loc_02ba46:
	addq.w #1,($288,a4)
	move.w #5,d5
	bsr.w loc_02c5e0
	bmi.w loc_02b63a
	btst #7,($25f,a4)
	beq.w loc_02ba7c
	move.w ($286,a4),d0
	btst #0,d0
	bne.w loc_02ba7c
	lea loc_02dcf0(pc),a0
	jsr loc_0231fe
	move.w #$7c,d1
	bra.b loc_02ba8a

loc_02ba7c:
	lea loc_02dd10(pc),a0
	jsr loc_0231fe
	move.w #$78,d1

loc_02ba8a:
	bsr.w loc_02c670

loc_02ba8e:
	move.b ($270,a4),($208,a4)
	move.l #-$1c000,($216,a4)
	move.b ($25f,a4),d0
	andi.w #7,d0
	lsl.w #2,d0
	lea loc_02dc50(pc),a0
	move.l (a0,d0.w),($21a,a4)

;--------------------------
loc_02bab0:
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	movea.l #loc_02d9f4,a0
	jsr loc_023384
	rts

;--------------------------
extraroutine01:
	move.l ($22a,a4),d4
	asr #1,d4
	move.w #$18,d1
	bsr loc_02c594
	move.w #$3800,d0
	subq.w #1,d1
	mulu.w d1,d0
	sub.l d0,d4
	move.l d4,($21a,a4)
	rts

;--------------------------
loc_02bacc:
	move.b ($270,a4),($208,a4)
	move.l #-$60000,($216,a4)
	move.l #-$40000,($21a,a4)
	move.w #$e0,d1
	bsr.w loc_02c670
	bsr.w loc_02bc4a
	movea.l #loc_02da2c,a0
	jsr loc_023384
	bra.w loc_02b6e0

;--------------------------
loc_02bafe:
	move.b ($270,a4),($208,a4)
	move.l #-$80000,($216,a4)
	move.l #-$c0000,($21a,a4)
	move.w #$e8,d1
	bsr.w loc_02c670
	bsr.w loc_02bc60
	movea.l #loc_02da3a,a0
	jsr loc_023384
	bra.w loc_02b6e0

;--------------------------
loc_02bb30:
	move.b ($270,a4),($208,a4)
	move.l #0,($216,a4)
	move.l #$70000,($21a,a4)
	move.w #$f0,d1
	bsr.w loc_02c670
	bsr.w loc_02bc76
	movea.l #loc_02da48,a0
	jsr loc_023384
	bra.w loc_02b6e0

;--------------------------
loc_02bb62:
	addi.w #$10,($288,a4)
	move.w #$100,d5
	bsr.w loc_02c5e0
	bmi.w loc_02bacc
	move.w #$e0,d1
	bsr.w loc_02c670
	bsr.w loc_02bc4a

loc_02bb80:
	move.b ($270,a4),($208,a4)
	move.l #-$1c000,($216,a4)
	move.l #-$65800,($21a,a4)
	bsr.w loc_02c4a8
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	movea.l #loc_02d9e6,a0
	jsr loc_023384
	rts

;--------------------------
loc_02bbb6:
	addi.w #$10,($288,a4)
	move.w #$100,d5
	bsr.w loc_02c5e0
	bmi.w loc_02bafe
	move.w #$e8,d1
	bsr.w loc_02c670
	bsr.w loc_02bc60
	bra.b loc_02bb80

;--------------------------
loc_02bbd6:
	addi.w #$10,($288,a4)
	move.w #$100,d5
	bsr.w loc_02c5e0
	bmi.w loc_02bb30
	move.w #$f0,d1
	bsr.w loc_02c670
	bsr.w loc_02bc76
	bra.b loc_02bb80

;--------------------------
loc_02bbf6:
	tst.w ($288,a4)
	bne.w loc_02bc06
	tst.b ($247,a4)
	bne.w loc_02bc0a

loc_02bc06:
	bra.w loc_02bacc

loc_02bc0a:
	bsr.w loc_02b2b0
	bra.w loc_02bc8c

;--------------------------
loc_02bc12:
	tst.w ($288,a4)
	bne.w loc_02bc22
	tst.b ($247,a4)
	bne.w loc_02bc26

loc_02bc22:
	bra.w loc_02bafe

loc_02bc26:
	bsr.w loc_02b2b0
	bra.w loc_02bcc4

;--------------------------
loc_02bc2e:
	tst.w ($288,a4)
	bne.w loc_02bc3e
	tst.b ($247,a4)
	bne.w loc_02bc42

loc_02bc3e:
	bra.w loc_02bb30

loc_02bc42:
	bsr.w loc_02b2f8
	bra.w loc_02bcfc

;--------------------------
loc_02bc4a:
	move.w #-$58,d4
	move.w #-$20,d5
	move.w #-$28,d6
	move.w #$20,d7
	jmp loc_02f17c

;--------------------------
loc_02bc60:
	move.w #-$58,d4
	move.w #-$20,d5
	move.w #-$28,d6
	move.w #$20,d7
	jmp loc_02f1bc

;--------------------------
loc_02bc76:
	move.w #-$50,d4
	move.w #-$20,d5
	move.w #-$30,d6
	move.w #$20,d7
	jmp loc_02f1fc

;--------------------------
loc_02bc8c:
	move.b loc_029462(pc),d0
	move.b d0,($2ea,a4)
	btst #1,($248,a4)
	bne.b loc_02bcae
	move.w #-$60,d4
	move.w #-$30,d5
	move.w #-$20,d6
	move.w #$18,d7
	bra.b loc_02bcbe

;--------------------------
loc_02bcae:
	move.w #-$40,d4
	move.w #-$20,d5
	move.w #-$20,d6
	move.w #$18,d7

loc_02bcbe:
	jmp loc_02f17c

;--------------------------
loc_02bcc4:
	move.b loc_029466(pc),d0
	move.b d0,($2ea,a4)
	btst #1,($248,a4)
	bne.b loc_02bce6
	move.w #-$60,d4
	move.w #-$30,d5
	move.w #-$20,d6
	move.w #$18,d7
	bra.b loc_02bcf6

loc_02bce6:
	move.w #-$40,d4
	move.w #-$20,d5
	move.w #-$20,d6
	move.w #$18,d7

loc_02bcf6:
	jmp loc_02f1bc

;--------------------------
loc_02bcfc:
	move.b loc_02946a(pc),d0
	move.b d0,($2ea,a4)
	btst #1,($248,a4)
	bne.b loc_02bd1e
	move.w #-$58,d4
	move.w #-$28,d5
	move.w #-$20,d6
	move.w #$18,d7
	bra.b loc_02bd2e

loc_02bd1e:
	move.w #-$40,d4
	move.w #-$20,d5
	move.w #-$20,d6
	move.w #$18,d7

loc_02bd2e:
	jmp loc_02f1fc

;--------------------------
loc_02bd34:
	tst.b ($247,a4)
	beq.w loc_02b4bc
	tst.w ($288,a4)
	bne.w loc_02b4bc
	move.w #$f8,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	movea.l #loc_02da56,a0
	jsr loc_023384
	move.b ($270,a4),($208,a4)
	move.l #-$30000,($216,a4)
	move.l (-$45de,a5),($212,a4)
	rts

;--------------------------
loc_02bd7c:
	move.w #$94,d1
	bsr.w loc_02c670
	bra.w loc_02bdbc

;--------------------------
loc_02bd88:
	move.w #$90,d1
	bsr.w loc_02c670
	bra.w loc_02bdbc

;--------------------------
loc_02bd94:
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$18,d1
	bsr.w loc_02c670
	bra.w loc_02bdbc

;--------------------------
loc_02bdaa:
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$38,d1
	bsr.w loc_02c670

loc_02bdbc:
	cmpi.w #$10,($288,a4)
	bgt.b loc_02bdca
	addi.w #$10,($288,a4)

loc_02bdca:
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	clr.w ($238,a4)
	clr.w ($23a,a4)
	move.b ($270,a4),($208,a4)
	movea.l #loc_02da64,a0
	jsr loc_023384
	bsr.w loc_02c4e2
	rts

;--------------------------
loc_02bdf8:
	tst.w ($288,a4)
	bne.w loc_02be08
	tst.b ($247,a4)
	bne.w loc_02be0c

loc_02be08:
	bra.w loc_02b5dc

loc_02be0c:
	btst #1,($248,a4)
	bne.w loc_02be90
	lea loc_02dcf0(pc),a0
	jsr loc_0231fe
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$18,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	bra.w loc_02bebe

;--------------------------
loc_02be44:
	tst.w ($288,a4)
	bne.w loc_02be54
	tst.b ($247,a4)
	bne.w loc_02be58

loc_02be54:
	bra.w loc_02b5a4

loc_02be58:
	btst #1,($248,a4)
	bne.w loc_02be90
	lea loc_02dd10(pc),a0
	jsr loc_0231fe
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$38,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l ($0,a0),a0
	jsr loc_023384
	bra.w loc_02bebe

loc_02be90:
	lea loc_02dd30(pc),a0
	jsr loc_0231fe
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$58,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (4,a0),a0
	jsr loc_023384
	bra.w loc_02bebe

loc_02bebe:
	move.b ($270,a4),($208,a4)
	movea.l #loc_02d992,a0
	jsr loc_023384
	move.l (-$45de,a5),($212,a4)
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1

;extra48
	lea extra2db30(pc),a0
	move.l (0, a0, d1.w),($216,a4)
	lea extra2db10(pc),a0
	move.l (0, a0, d1.w),($294,a4)
	bsr.w loc_02c478
	rts

;--------------------------
loc_02befa:
	tst.w ($288,a4)
	bne.w loc_02bf0a
	tst.b ($247,a4)
	bne.w loc_02b2a0

loc_02bf0a:
	move.l #-$1c000,($216,a4)
	move.l #-$65800,($21a,a4)
	move.b ($208,a4),d0
	move.b ($209,a4),d1
	eor.b d0,d1
	bpl.w loc_02bf2c
	neg.l ($216,a4)

loc_02bf2c:
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	bsr.w loc_02c4a8
	move.w #$94,d1
	bsr.w loc_02c670
	bra.w loc_02bf9a

;--------------------------
loc_02bf4a:
	tst.w ($288,a4)
	bne.w loc_02bf5a
	tst.b ($247,a4)
	bne.w loc_02b2e8

loc_02bf5a:
	move.l #-$1c000,($216,a4)
	move.l #-$65800,($21a,a4)
	move.b ($208,a4),d0
	move.b ($209,a4),d1
	eor.b d0,d1
	bpl.w loc_02bf7c
	neg.l ($216,a4)

loc_02bf7c:
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	bsr.w loc_02c4a8
	move.w #$90,d1
	bsr.w loc_02c670
	bra.w loc_02bf9a

loc_02bf9a:
	addi.w #$10,($288,a4)
	move.w #$100,d5
	bsr.w loc_02c5e0
	bmi.w loc_02b6d2
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	movea.l #loc_02d9e6,a0
	jsr loc_023384
	rts

;--------------------------
loc_02bfc8:
	move.b ($270,a4),($208,a4)
	move.l #-$20000,($216,a4)
	move.l #-$65800,($21a,a4)

loc_02bfde:
	move.w #$a0,d1
	bsr.w loc_02c670
	bset #6,($248,a4)
	move.b ($208,a4),d0
	move.b ($209,a4),d1
	eor.b d0,d1
	bpl.b loc_02bffc
	neg.l ($216,a4)

loc_02bffc:
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	bsr.w loc_02c4a8
	bra.w loc_02b6d2

;--------------------------
loc_02c012:
	move.b ($270,a4),($208,a4)
	move.l #-$80000,($216,a4)
	move.l #-$65800,($21a,a4)

loc_02c028:
	move.w #$90,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	movea.l #loc_02da72,a0
	jsr loc_023384
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	clr.w ($238,a4)
	clr.w ($23a,a4)
	move.w #-1,($2bc,a4)
	bsr.w loc_02c5fa
	andi.b #$92,($249,a4)
	bne.b loc_02c078
	move.w #$a,($2ba,a4)

loc_02c078:
	ori.b #$28,($249,a4)
	move.w #$1e,($2b6,a4)
	rts

;--------------------------
loc_02c086:
	tst.b ($247,a4)
	beq.w loc_02b3ba
	tst.w ($288,a4)
	bne.w loc_02b3ba

loc_02c096:
	btst #1,($248,a4)
	bne.w loc_02c116
	lea loc_02dcf0(pc),a0
	jsr loc_0231fe
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$18,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	bra.w loc_02c140

;--------------------------
loc_02c0ce:
	tst.b ($247,a4)
	beq.w loc_02b3ba
	tst.w ($288,a4)
	bne.w loc_02b3ba

loc_02c0de:
	btst #1,($248,a4)
	bne.w loc_02c116
	lea loc_02dd10(pc),a0
	jsr loc_0231fe
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$38,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	bra.w loc_02c140

loc_02c116:
	lea loc_02dd30(pc),a0
	jsr loc_0231fe
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$58,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (4,a0),a0
	jsr loc_023384

loc_02c140:
	move.b ($270,a4),($208,a4)
	movea.l #loc_02d992,a0
	jsr loc_023384
	move.l (-$45de,a5),($212,a4)
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1

;extra49
	lea extra2db70(pc),a0
	move.l (a0,d1.w),($216,a4)
	lea extra2db50(pc),a0
	move.l (a0,d1.w),($294,a4)
	rts  

;--------------------------
loc_02c178:
	tst.w ($288,a4)
	bne.w loc_02c188
	tst.b ($247,a4)
	bne.w loc_02c18c

loc_02c188:
	bra.w loc_02b5f8

loc_02c18c:
	btst #1,($248,a4)
	bne.w loc_02c210
	lea loc_02dcf0(pc),a0
	jsr loc_0231fe
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$18,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	bra.w loc_02c23e

;--------------------------
loc_02c1c4:
	tst.w ($288,a4)
	bne.w loc_02c1d4
	tst.b ($247,a4)
	bne.w loc_02c1d8

loc_02c1d4:
	bra.w loc_02b5c0

loc_02c1d8:
	btst #1,($248,a4)
	bne.w loc_02c210
	lea loc_02dd10(pc),a0
	jsr loc_0231fe
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$38,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (0,a0),a0
	jsr loc_023384
	bra.w loc_02c23e

loc_02c210:
	lea loc_02dd30(pc),a0
	jsr loc_0231fe
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1
	addi.w #$58,d1
	bsr.w loc_02c670
	movea.l ($1e6,a4),a0
	movea.l (4,a0),a0
	jsr loc_023384
	bra.w loc_02c23e

loc_02c23e:
	move.b ($270,a4),($208,a4)
	movea.l #loc_02d992,a0
	jsr loc_023384
	move.l (-$45de,a5),($212,a4)
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #2,d1

;extra50
	lea extra2db70(pc),a0
	move.l (a0,d1.w),($216,a4)
	lea extra2db50(pc),a0
	move.l (a0,d1.w),($294,a4)
	bsr.w loc_02c478
	rts

;--------------------------
loc_02c27a:
	move.w #$b8,d1
	bsr.w loc_02c670

loc_02c282:
	move.b ($270,a4),($208,a4)
	move.l #-$18000,($216,a4)
	move.l #-$88800,($21a,a4)
	movea.l ($1e6,a4),a0
	movea.l (8,a0),a0
	jsr loc_023384
	movea.l #loc_02da80,a0
	jsr loc_023384
	move.b ($270,a4),($208,a4)
	move.w #-1,($2bc,a4)
	bsr.w loc_02c624
	ori.b #$10,($249,a4)
	move.w #$10,($2ba,a4)
	rts

;--------------------------
loc_02c2d0:
	bra.w loc_02b5a4

;--------------------------
loc_02c2d4:
	st ($24b,a3)
	andi.b #$90,($249,a4)
	ori.b #$50,($249,a4)
	move.w #$e,($2be,a4)
	st ($24a,a4)
	movea.l #loc_02da8e,a0
	jsr loc_023384
	bsr.w loc_02c328
	clr.w ($2ba,a4)
	clr.w ($2ba,a3)
	move.w #-1,($2bc,a4)
	bsr.w loc_02c624
	move.w ($266,a3),d0
	or.w ($268,a3),d0
	beq.w loc_02c326
	exg a3,a4
	jsr loc_022dca
	exg a3,a4

loc_02c326:
	rts

loc_02c328:
	move.l ($20e,a4),d0
	sub.l ($20e,a3),d0
	tst.b ($208,a3)
	bpl.w loc_02c33a
	neg.l d0

loc_02c33a:
	swap d0
	move.w d0,($29c,a4)
	move.l ($212,a4),d0
	sub.l ($212,a3),d0
	swap d0
	move.w d0,($29e,a4)
	clr.w ($2a0,a4)
	rts

;--------------------------
loc_02c354:
	move.w #$1867,d0
	jsr loc_02301a
	addi.w #$1000,($1fa,a4)
	cmpi.w #$7fff,($1fa,a4)
	bls.b loc_02c372
	move.w #$7fff,($1fa,a4)

loc_02c372:
	move.w ($1fa,a4),($1f8,a4)
	cmpi.b #4,(-$399,a5)
	bgt.w loc_02c38c
	move.b #4,(-$399,a5)
	clr.w (-$398,a5)

loc_02c38c:
	st ($2b9,a4)
	move.w #6,($2ba,a4)
	movea.l #loc_02d9ca,a0
	jsr loc_023384
	move.w #-1,($2bc,a4)
	bsr.w loc_02c5fa
	move.b #$2a,($249,a4)
	rts

;--------------------------
loc_02c3b4:
	btst #7,($249,a4)
	bne.w loc_02c44a
	move.w ($14,a4),d0
	andi.w #$f,d0
	add.w d0,d0
	lea loc_02dcc0(pc),a0
	tst.b (0,a4)
	bmi.b loc_02c3da
	move.w (a0,d0.w),(-$384,a5)
	bra.b loc_02c3e0

loc_02c3da:
	move.w (a0,d0.w),(-$382,a5)

loc_02c3e0:
	btst #5, ($25e,a4)
	bne.b loc_02c3f4
	move.b #5,(-$399,a5)
	clr.w (-$398,a5)
	bra.b loc_02c418

loc_02c3f4:
	move.b #6,(-$399,a5)
	clr.w (-$398,a5)
	bset #0,(-$389,a5)
	tst.b (0,a4)
	bmi.b loc_02c412
	bset #1,(-$388,a5)
	bra.b loc_02c418

loc_02c412:
	bset #0,(-$388,a5)

loc_02c418:
	btst #7,($25f,a4)
	beq.b loc_02c44a
	move.b #7,(-$399,a5)
	clr.w (-$398,a5)
	bset #1,(-$389,a5)
	tst.b (0,a4)
	bmi.b loc_02c43e
	bset #1,(-$388,a5)
	bra.b loc_02c444

loc_02c43e:
	bset #0,(-$388,a5)

loc_02c444:
	bset #6,(-$388,a5)

loc_02c44a:
	st ($2b9,a4)
	tst.w ($2ba,a4)
	beq.b loc_02c45a
	move.w #6,($2ba,a4)

loc_02c45a:
	movea.l #loc_02d9ca,a0
	jsr loc_023384
	move.b #-$58,($249,a4)
	bclr #1,($246,a4)
	sf ($247,a4)
	rts

;--------------------------
loc_02c478:
	st d1
	bsr.w loc_02c546
	bmi.w loc_02c4a4
	lea loc_02daf0(pc),a0
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #1,d1
	move.w (a0,d1.w),d1
	move.l d2,d4
	bsr.w loc_02c5b0
	move.l d4,($216,a4)
	move.l d5,($294,a4)
	sf d1

loc_02c4a4:
	tst.b d1
	rts

;--------------------------
loc_02c4a8:
	bsr.w loc_02c546
	bmi.w loc_02c4e0
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #1,d1
	lea loc_02daf0(pc),a0
	move.w (a0,d1.w),d1
	move.l d2,d4
	bsr.w loc_02c594
	move.l d4,($216,a4)
	move.l d3,d4
	bsr.w loc_02c594
	move.w #$3800,d0
	subq.w #1,d1
	mulu.w d1,d0
	sub.l d0,d4
	move.l d4,($21a,a4)

loc_02c4e0:
	rts

;--------------------------
loc_02c4e2:
	move.b ($25f,a4),d1
	andi.w #7,d1
	lsl.w #1,d1
	lea loc_02dc30(pc),a0
	move.w (a0, d1.w),d6
	lea loc_02daf0(pc),a0
	move.w (a0,d1.w),d1
	move.w d1,($2c2,a4)
	subq.w #1,d6
	move.w d6,($2cc,a4)
	bsr.w loc_02c550
	bmi.w loc_02c534
	move.l d2,d4
	bsr.w loc_02c5b0
	movem.l d4-d5,-(a7)
	move.l d3,d4
	bsr.w loc_02c5b0
	move.l d4,($21a,a4)
	move.l d5,($298,a4)
	movem.l (a7)+,d4-d5
	move.l d4,($216,a4)
	move.l d5,($294,a4)
	rts

;--------------------------
loc_02c534:
	clr.l ($216,a4)
	clr.l ($294,a4)
	clr.l ($21a,a4)
	clr.l ($298,a4)
	rts

;--------------------------
loc_02c546:
	btst #6,($25e,a4)
	bne.w loc_02c590

loc_02c550:
	move.w ($290,a3),d0
	or.w ($292,a3),d0
	beq.w loc_02c590
	moveq #0,d2
	moveq #0,d3
	move.w ($290,a3),d2
	move.w ($292,a3),d3
	swap d2
	swap d3
	tst.b ($270,a4)
	bmi.b loc_02c574
	neg.l d2

loc_02c574:
	add.l ($20e,a3),d2
	add.l ($212,a3),d3
	sub.l ($20e,a4),d2
	sub.l ($212,a4),d3
	tst.b ($208,a4)
	bpl.b loc_02c58c
	neg.l d2

loc_02c58c:
	moveq #0,d0
	rts

loc_02c590:
	moveq #-1,d0
	rts

;--------------------------
loc_02c594:
	addq.l #8,d4
	asr.l #4,d4
	divs.w d1,d4
	bvc.b loc_02c5aa
	tst.l d4
	bmi.b loc_02c5a6
	move.w #$7fff,d4
	bra.b loc_02c5aa

loc_02c5a6:
	move.w #$8000,d4

loc_02c5aa:
	ext.l d4
	asl.l #4,d4
	rts

;--------------------------
loc_02c5b0:
	addq.l #8,d4
	asr.l #4,d4
	subq.w #1,d1
	divs.w d1,d4
	bvc.b loc_02c5c8
	tst.l d4
	bmi.b loc_02c5c4
	move.w #$7fff,d4
	bra.b loc_02c5c8

loc_02c5c4:
	move.w #$8000,d4

loc_02c5c8:
	ext.l d4
	move.l d4,d5
	addq.w #1,d1
	divs.w d1,d5
	bvc.b loc_02c5d4
	move.w d4,d5

loc_02c5d4:
	ext.l d5
	asl.l #5,d4
	asl.l #5,d5
	sub.l d5,d4
	neg.l d5
	rts

;--------------------------
loc_02c5e0:
	cmp.w ($28a,a4),d5
	bcs.b loc_02c5ea
	move.w d5,($28a,a4)

loc_02c5ea:
	cmp.w ($288,a4),d5
	bls.b loc_02c5f4
	clr.w d5
	rts

loc_02c5f4:
	move.w #-1,d5
	rts

;--------------------------
loc_02c5fa:
	btst #7,($25f,a4)
	bne.w loc_02c624
	btst #5,($25e,a4)
	bne.w loc_02c636
	cmpi.w #$f,($288,a4)
	bcc.w loc_02c636

loc_02c618:
	clr.w ($28a,a4)
	ori.w #$f,($288,a4)
	rts

loc_02c624:
	bset #4,($249,a4)
	move.w #-1,($288,a4)
	clr.w ($28a,a4)
	rts

loc_02c636:
	cmpi.w #-1,($288,a4)
	bcc.b loc_02c642
	addq.w #8,($28c,a4)

loc_02c642:
	move.w #-1,($288,a4)
	clr.w ($28a,a4)
	rts

;--------------------------
loc_02c64e:
	clr.w d0
	move.b ($260,a4),d0
	sub.w (a0),d0
	blt.w loc_02c66a
	cmp.w (2,a0),d0
	bgt.w loc_02c66a
	lsl.w #2,d0
	movea.l (8,a0,d0.w),a0
	jmp (a0)

loc_02c66a:
	movea.l (4,a0),a0
	jmp (a0)

;--------------------------
loc_02c670:
	clr.w d0
	movea.l ($1ee,a4),a0
	movea.l (a0,d1.w),a0
	jsr loc_0226f0
	rts

;--------------------------
loc_02c682
	jsr loc_022aec
	jsr loc_02ee5a
	tst.w ($1f2,a4)
	bmi.w loc_02c6a0
	tst.w ($1f8,a4)
	bmi.w loc_02c6a6
	rts

loc_02c6a0:
	bsr.w loc_02ae54
	rts

loc_02c6a6:
	bsr.w loc_02ad1a
	rts

;--------------------------
loc_02c6ac:
	tst.b ($249,a4)
	bne.w loc_02c788
	btst #2,($24a,a4)
	beq.w loc_02c788
	clr.w d0
	btst #7,($25f,a4)
	bne.w loc_02c6ea
	lea loc_02dd90(pc),a0
	move.w ($14,a3),d0
	andi.w #$f,d0
	lsl.w #2,d0
	btst #5,($25e,a4)
	bne.b loc_02c6e6
	move.w (a0,d0.w),d0
	bra.b loc_02c6ea

loc_02c6e6:
	move.w (2,a0,d0.w),d0

loc_02c6ea:
	btst #3,($24c,a4)
	beq.w loc_02c718
	move.w d0,-(a7)
	lea loc_02ddd0(pc),a0
	move.w ($14,a4),d0
	andi.w #$f,d0
	lsl.w #2,d0
	btst #5,($24c,a4)
	bne.b loc_02c712
	move.w (a0,d0.w),d0
	bra.b loc_02c716

loc_02c712:
	move.w (2,a0,d0.w),d0

loc_02c716:
	add.w (a7)+,d0

loc_02c718:
	lsl.w #6,d0
	tst.w d0
	beq.w loc_02c788
	btst #1,($246,a4)
	beq.b loc_02c732
	btst #3,($24a,a4)
	bne.b loc_02c73c
	bra.b loc_02c74c

loc_02c732:
	btst #0,($24a,a4)
	bne.b loc_02c73c
	bra.b loc_02c74c

loc_02c73c:
	btst #5,($24c,a4)
	bne.b loc_02c778
	btst #3,($24c,a4)
	bne.b loc_02c75e

loc_02c74c:
	lsr.w #1,d0
	add.w d0,($266,a4)
	addq.w #8,($202,a4)
	addi.w #$64,($26c,a4)
	bra.b loc_02c788

loc_02c75e:
	lsr.w #1,d0
	add.w d0,($266,a4)
	lsr.w #1,d0
	add.w d0,($266,a4)
	addi.w #$c,($202,a4)
	addi.w #$c8,($26c,a4)
	bra.b loc_02c788

loc_02c778:
	add.w d0,($266,a4)
	addi.w #$10,($202,a4)
	addi.w #$12c,($26c,a4)

loc_02c788:
	rts


;--------------------------
loc_02c78a:
	tst.b (-$3dd,a5)
	bne.w loc_02c7aa
	tst.w ($204,a4)
	bgt.w loc_02c7a4
	cmpi.w #$300,($202,a4)
	blt.w loc_02c7aa

loc_02c7a4:
	move.b #-1,d0
	rts

loc_02c7aa:
	clr.b d0
	rts

;--------------------------
loc_02c7ae:
	exg a3,a4
	jsr loc_023294
	exg a3,a4
	jmp loc_02f130

;--------------------------
loc_02c7be:
	movem.l d0/a0,-(a7)
	tst.w ($204,a4)
	bgt.b loc_02c7ce
	clr.w ($202,a4)
	bra.b loc_02c7d2

;--------------------------
loc_02c7ce:
 	subq.w #1,($204,a4)

loc_02c7d2:
	tst.b (0,a4)
	bmi.b loc_02c7de
	st (-$390,a5)
	bra.b loc_02c7e2

loc_02c7de:
	st (-$38f,a5)

loc_02c7e2:
	tst.b (-$3e4,a5)
	bne.w loc_02c818
	jsr loc_02f0f6
	move.w ($14,a4),d0
	add.w d0,d0
	lea loc_02dd70(pc),a0
	move.w (a0,d0.w),d0
	tst.b (0,a4)
	bmi.b loc_02c80a
	bset #0,d0
	bra.b loc_02c80e

loc_02c80a:
	bset #1,d0

loc_02c80e:
	or.w d0,(-$394,a5)
	andi.w #$7fff,(-$394,a5)

loc_02c818:
	move.l #$bb8,d0
	jsr loc_023004
	movem.l (a7)+,d0/a0
	rts

;--------------------------
loc_02c82a:
	movem.l d1-d2/a0,-(a7)
	move.w ($14,a4),d1
	add.w d1,d1
	lea loc_02dc80(pc),a0
	move.w (a0,d1.w),d1
	move.w d1,d0
	tst.b (1,a4)
	beq.w loc_02c892
	clr.w d2
	cmpi.b #4,($2f1,a4)
	beq.b loc_02c858
	cmpi.b #8,($2f1,a4)
	bne.b loc_02c85a

loc_02c858:
	addq.w #1,d2

loc_02c85a:
	tst.b ($2f7,a4)
	bne.w loc_02c86a
	tst.b ($2f8,a4)
	beq.w loc_02c86c

loc_02c86a:
	addq.w #2,d2

loc_02c86c:
	tst.b ($2fb,a4)
	beq.w loc_02c876
	addq.w #4,d2

loc_02c876:
	add.w d2,d2
	move.w loc_02c882(pc,d2.w),d2
	mulu.w d2,d0
	bra.w loc_02c8ac

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_02c882:
	dc.w $0001,$0006,$0004,$000c,$0006,$000e,$0007,$000f

;--------------------------
loc_02c892:
	move.w ($340,a4),d2
	lsr.w #4,d2
	jsr RandomNumberGod
	mulu.w d2,d0
	swap d0
	subq.w #4,d0
	bpl.b loc_02c8a8
	clr.w d0

loc_02c8a8:
	addq.w #1,d0
	mulu.w d1,d0

loc_02c8ac:
	swap d0
	move.w d1,d0
	swap d0
	movem.l (a7)+,d1-d2/a0
	rts

;--------------------------
loc_02c8b8:
	movem.l d1-d2/a0,-(a7)
	move.w ($14,a4),d1
	add.w d1,d1
	lea loc_02dca0(pc),a0
	move.w (a0,d1.w),d1
	move.w d1,d0
	tst.b (1,a4)
	beq.w loc_02c920
	clr.w d2
	cmpi.b #4,($2f1,a4)
	beq.b loc_02c8e6
	cmpi.b #8,($2f1,a4)
	bne.b loc_02c8e8

loc_02c8e6:
	addq.w #1,d2

loc_02c8e8:
	tst.b ($2f7,a4)
	bne.w loc_02c8f8
	tst.b ($2f8,a4)
	beq.w loc_02c8fa

loc_02c8f8:
	addq.w #2,d2

loc_02c8fa:
	tst.b ($2fb,a4)
	beq.w loc_02c904
	addq.w #4,d2

loc_02c904:
	add.w d2,d2
	move.w loc_02c910(pc,d2.w),d2
	mulu.w d2,d0
	bra.w loc_02c93a

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_02c910:
	dc.w $0001,$0003,$0002,$0005,$0003,$0006,$0004,$0007

;==========================
loc_02c920:
	move.w ($340,a4),d2
	lsr.w #5,d2
	jsr RandomNumberGod
	mulu.w d2,d0
	swap d0
	subq.w #2,d0
	bpl.b loc_02c936
	clr.w d0

loc_02c936:
	addq.w #1,d0
	mulu.w d1,d0

loc_02c93a:
	swap d0
	move.w d1,d0
	swap d0
	movem.l (a7)+,d1-d2/a0
	rts

;--------------------------
loc_02c946:
	tst.b (1,a0)
	bne.w loc_02c95c
	move.w d7,d0
	add.w d0,d0
	subq.w #1,d0

loc_02c954:
	clr.b (2,a0,d0.w)
	dbra d0,loc_02c954

loc_02c95c:
	move.b #1,(1,a0) 
	sf (0,a0)
	move.l a1,-(a7)
	move.l a0,-(a7)
	addq.w #2,a0
	move.w d7,d1
	subq.w #1,d1

loc_02c970:
	tst.b (0,a0)
	sne d0
	add.b d0,(0,a0)
	tst.b (1,a0)
	sne d0
	add.b d0,(1,a0)
	addq.w #2,a0
	dbra d1,loc_02c970
	move.w d7,d1
	subq.w #1,d1
	movea.l (a7),a0
	addq.w #2,a0
	move.b ($2f0,a4),d0
	andi.b #$f,d0
	cmp.b (0,a1),d0
	bne.b loc_02c9a6
	move.b (2,a1),(0,a0)

loc_02c9a6:
	cmp.b (1,a1),d0
	bne.b loc_02c9b2
	move.b (2,a1),(1,a0)

loc_02c9b2:
	move.b ($2f1,a4),d0

loc_02c9b6:
	addq.w #2,a0
	addq.w #3,a1
	subq.w #1,d1
	bmi.w loc_02ca06
	tst.b (-2,a0)
	beq.b loc_02c9e2
	cmp.b (0,a1),d0
	bne.b loc_02c9e2
	move.b (2,a1),(0,a0)
	tst.w d1
	bgt.b loc_02c9e2
	tst.b ($209,a4)
	bmi.b loc_02c9e2
	move.w #6,($20c,a4)

loc_02c9e2:
	tst.b (-1,a0)
	beq.b loc_02ca04
	cmp.b (1,a1),d0
	bne.b loc_02ca04
	move.b (2,a1),(1,a0)
	tst.w d1
	bgt.b loc_02ca04
	tst.b ($209,a4)
	bpl.b loc_02ca04
	move.w #6,($20c,a4)

loc_02ca04:
	bra.b loc_02c9b6

;--------------------------
loc_02ca06:
	tst.b ($209,a4)
	bmi.b loc_02ca22
	tst.b (-2,a0)
	bne.b loc_02ca36
	tst.b (-1,a0)
	beq.b loc_02ca4c
	cmpi.w #8,($20a,a4)
	bgt.b loc_02ca4c
	bra.b loc_02ca36

;--------------------------
loc_02ca22:
	tst.b (-1,a0)
	bne.b loc_02ca36
	tst.b (-2,a0)
	beq.b loc_02ca4c
	cmpi.w #8,($20a,a4)
	bgt.b loc_02ca4c

loc_02ca36:
	movea.l (a7),a0
	st (1,a0)
	move.b ($2f8,a4),d0
	lsr.b #4,d0
	or.b ($2f7,a4),d0
	beq.b loc_02ca4c
	move.b d0,(0,a0)

loc_02ca4c:
	movea.l (a7)+,a0
	movea.l (a7)+,a1
	move.b (0,a0),d0
	jmp loc_02d2ae

;--------------------------
loc_02ca5a:
	tst.b (1,a0)
	bne.w loc_02ca70
	move.w d7,d0
	add.w d0,d0
	subq.w #1,d0

loc_02ca68:
	clr.b (4,a0,d0.w)
	dbra d0,loc_02ca68

loc_02ca70:
	st (1,a0)
	sf (0,a0)
	move.l a1,-(a7)
	move.l a0,-(a7)
	addq.w #4,a0
	move.w d7,d1
	subq.w #1,d1

loc_02ca82:
	tst.b (0,a0)
	sne d0
	add.b d0,(0,a0)
	tst.b (1,a0)
	sne d0
	add.b d0,(1,a0)
	addq.w #2,a0
	dbra d1,loc_02ca82
	subq.w #1,d7
	movea.l (a7),a0
	move.b ($2f1,a4),d0
	cmp.b (2,a0),d0
	bne.w loc_02caae
	clr.b d0

loc_02caae:
	move.b d0,(2,a0)
	move.b ($2f7,a4),d0
	cmp.b (3,a0),d0
	bne.w loc_02cac0
	clr.b d0

loc_02cac0:
	move.b d0,(3,a0)
	move.b (2,a0),d0
	or.b (3,a0),d0
	beq.w loc_02cb6a
	move.w d7,d1
	mulu.w #2,d1
	lea (4,a0,d1.w),a0
	move.w d7,d1
	mulu.w #3,d1
	lea (a1,d1.w),a1
	move.w d7,d1

loc_02cae6:
	tst.w d1
	beq.w loc_02cb4a
	cmp.w d7,d1
	beq.w loc_02cafa
	clr.b (0,a0)
	clr.b (1,a0)

loc_02cafa:
	tst.b (-2,a0)
	beq.b loc_02cb1c
	cmp.b (0,a1),d0
	bne.b loc_02cb1c
	move.b (2,a1),(0,a0)
	cmp.w d7,d1
	bne.b loc_02cb1c
	tst.b ($209,a4)
	bmi.b loc_02cb1c
	move.w #6,($20c,a4)

loc_02cb1c:
	tst.b (-1,a0)
	beq.b loc_02cb3e
	cmp.b (1,a1),d0
	bne.b loc_02cb3e
	move.b (2,a1),(1,a0)
	cmp.w d7,d1
	bne.b loc_02cb3e
	tst.b ($209,a4)
	bpl.b loc_02cb3e
	move.w #6,($20c,a4)

loc_02cb3e:
	subq.w #2,a0
	subq.w #3,a1
	dbra d1,loc_02cae6
	bra.w loc_02cb6a

loc_02cb4a:
	clr.b (0,a0)
	clr.b (1,a0)
	cmp.b (0,a1),d0
	bne.b loc_02cb5e
	move.b (2,a1),(0,a0)

loc_02cb5e:
	cmp.b (1,a1),d0
	bne.b loc_02cb6a
	move.b (2,a1),(1,a0)

loc_02cb6a:
	addq.w #1,d7
	movea.l (a7),a0
	move.w d7,d0
	mulu.w #2,d0
	lea (4,a0,d0.w),a0
	tst.b ($209,a4)
	bmi.b loc_02cb94
	tst.b (-2,a0)
	bne.b loc_02cba8
	tst.b (-1,a0)
	beq.b loc_02cbae
	cmpi.w #8,($20a,a4)
	bgt.b loc_02cbae
	bra.b loc_02cba8

loc_02cb94:
	tst.b (-1,a0)
	bne.b loc_02cba8
	tst.b (-2,a0)
	beq.b loc_02cbae
	cmpi.w #8,($20a,a4)
	bgt.b loc_02cbae

loc_02cba8:
	movea.l (a7),a0
	st (0,a0)

loc_02cbae:
	movea.l (a7)+,a0
	movea.l (a7)+,a1
	move.b (0,a0),d0
	sf d1
	rts

;--------------------------
loc_02cbba:
	move.b #8,d1
	bsr.w loc_02cbd2
	addq.w #4,a0
	move.b #4,d1
	bsr.w loc_02cbd2
	subq.w #4,a0
	sf d1
	rts

;--------------------------
loc_02cbd2:
	tst.b (0,a0)
	sne d0
	add.b d0,(0,a0)
	tst.b (1,a0)
	sne d0
	add.b d0,(1,a0)
	tst.b (2,a0)
	sne d0
	add.b d0,(2,a0)
	tst.b (3,a0)
	sne d0
	add.b d0,(3,a0)
	move.b ($2f0,a4),d0
	andi.b #$f,d0
	beq.b loc_02cc10
	cmp.b d1,d0
	bne.b loc_02cc3e
	cmp.b ($2f1,a4),d0
	beq.b loc_02cc24
	bra.b loc_02cc3c

loc_02cc10:
	move.b #8,(3,a0)
	tst.b (2,a0)
	beq.b loc_02cc3c
	move.b #8,(1,a0)
	bra.b loc_02cc3c

loc_02cc24:
	tst.b (3,a0)
	beq.b loc_02cc30
	move.b #8,(2,a0)

loc_02cc30:
	tst.b (1,a0)
	beq.b loc_02cc3c
	move.b #5,(0,a0)

loc_02cc3c:
	rts

loc_02cc3e:
	clr.l (a0)
	rts

;--------------------------
loc_02cc42:
	tst.b (1,a0)
	bne.w loc_02cc5a
	clr.b (2,a0)
	clr.b (3,a0)
	clr.b (4,a0)
	clr.b (5,a0)

loc_02cc5a:
	move.b #1,(1,a0)
	sf (0,a0)
	tst.b (2,a0)
	sne d0
	add.b d0,(2,a0)
	tst.b (5,a0)
	sne d0
	add.b d0,(5,a0)
	move.b ($2f0,a4),d0
	andi.b #$f,d0
	ext.w d0
	move.b loc_02cc8e(pc,d0.w),d0
	beq.w loc_02cd50
	bra.w loc_02cc9e

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_02cc8e:
	dc.b $00,$01,$05,$00,$07,$08,$06,$07
	dc.b $03,$02,$04,$03,$00,$01,$05,$00

loc_02cc9e:
	cmp.b (3,a0),d0
	bne.w loc_02ccb2
	tst.b (2,a0)
	bne.w loc_02cd5c
	bra.w loc_02cd50

loc_02ccb2:
	move.b #6,(2,a0)
	move.b (3,a0),d1
	bne.w loc_02cccc
	clr.b (4,a0)
	move.b d0,(3,a0)
	bra.w loc_02cd5c

loc_02cccc:
	move.b d0,(3,a0)
	sub.b d1,d0
	andi.b #7,d0
	cmpi.b #4,d0
	blt.w loc_02cce6
	bgt.w loc_02cd18
	bra.w loc_02cd5c

loc_02cce6:
	move.b (4,a0),d1
	bpl.w loc_02ccf2
	clr.b (4,a0)

loc_02ccf2:
	add.b d0,(4,a0)
	cmp.b (4,a0),d7
	bgt.w loc_02cd5c
	move.b d7,(4,a0)
	move.b #$c,(5,a0)
	cmp.b d7,d1
	bge.w loc_02cd5c
	move.w #6,($20c,a4)
	bra.w loc_02cd5c

loc_02cd18:
	move.b (4,a0),d1
	bmi.w loc_02cd24
	clr.b (4,a0)

loc_02cd24:
	subq.b #8,d0
	add.b d0,(4,a0)
	move.b d7,d0
	neg.b d0
	cmp.b (4,a0),d0
	blt.w loc_02cd5c
	move.b d0,(4,a0)
	move.b #$c,(5,a0)
	cmp.b d0,d1
	ble.w loc_02cd5c
	move.w #6,($20c,a4)
	bra.w loc_02cd5c

loc_02cd50:
	clr.b (2,a0)
	clr.b (3,a0)
	clr.b (4,a0)

loc_02cd5c:
	tst.b (5,a0)
	beq.w loc_02cd7a
	st (1,a0)
	move.b ($2f8,a4),d0
	lsr.b #4,d0
	or.b ($2f7,a4),d0
	beq.w loc_02cd7a
	move.b d0,(0,a0)

loc_02cd7a:
	move.b (0,a0),d0
	jmp loc_02d2ae

loc_02cd84:
	tst.b (1,a0)
	bne.w loc_02cda8
	clr.b (2,a0)
	clr.b (3,a0)
	clr.b (4,a0)
	clr.b (5,a0)
	clr.b (6,a0)
	clr.b (7,a0)
	clr.b (8,a0)

loc_02cda8:
	move.b #1,(1,a0)
	sf (0,a0)
	tst.b (3,a0)
	sne d0
	add.b d0,(3,a0)
	tst.b (4,a0)
	sne d0
	add.b d0,(4,a0)
	tst.b (6,a0)
	sne d0
	add.b d0,(6,a0)
	tst.b (7,a0)
	sne d0
	add.b d0,(7,a0)
	tst.b (8,a0)
	sne d0
	add.b d0,(8,a0)
	move.b (0,a1),d0
	bsr.w loc_02cf2e
	bne.b loc_02ce26
	addq.b #1,(2,a0)
	scs d0
	add.b d0,(2,a0)
	move.b (2,a0),d0
	cmp.b (2,a1),d0
	bcs.b loc_02ce2a
	move.b (2,a1),(2,a0)
	move.b (3,a1),(3,a0)
	tst.b ($209,a4)
	bmi.w loc_02ce2a
	btst #1,(0,a1)
	beq.b loc_02ce2a
	move.w #6,($20c,a4)
	bra.b loc_02ce2a

loc_02ce26:
	clr.b (2,a0)

loc_02ce2a:
	move.b (0,a1),d0
	bsr.w loc_02cf56
	bsr.w loc_02cf2e
	bne.b loc_02ce70
	addq.b #1,(5,a0)
	scs d0
	add.b d0,(5,a0)
	move.b (5,a0),d0
	cmp.b (2,a1),d0
	bcs.b loc_02ce74
	move.b (2,a1),(5,a0)
	move.b (3,a1),(6,a0)
	tst.b ($209,a4)
	bpl.w loc_02ce74
	btst #1,(0,a1)
	beq.b loc_02ce74
	move.w #6,($20c,a4)
	bra.b loc_02ce74

loc_02ce70:
	clr.b (5,a0)

loc_02ce74:
	tst.b (3,a0)
	bne.b loc_02ce8a
	tst.b (6,a0)
	beq.b loc_02ce9e
	cmpi.w #8,($20a,a4)
	bgt.w loc_02ce9e

loc_02ce8a:
	move.b (1,a1),d0
	bsr.w loc_02cf2e
	bne.b loc_02ce9e
	clr.b (3,a0)
	move.b (4,a1),(4,a0)

loc_02ce9e:
	tst.b (6,a0)
	bne.b loc_02ceb4
	tst.b (3,a0)
	beq.b loc_02cecc
	cmpi.w #8,($20a,a4)
	bgt.w loc_02cecc

loc_02ceb4:
	move.b (1,a1),d0
	bsr.w loc_02cf56
	bsr.w loc_02cf2e
	bne.b loc_02cecc
	clr.b (6,a0)
	move.b (4,a1),(7,a0)

loc_02cecc:
	move.b ($2f7,a4),d0
	beq.b loc_02cedc
	move.b d0,(9,a0)
	move.b (5,a1),(8,a0)

loc_02cedc:
	tst.b ($209,a4)
	bmi.w loc_02cefc
	tst.b (4,a0)
	bne.b loc_02cf12
	tst.b (7,a0)
	beq.b loc_02cf24
	cmpi.w #8,($20a,a4)
	bgt.w loc_02cf24
	bra.b loc_02cf12

loc_02cefc:
	tst.b (7,a0)
	bne.b loc_02cf12
	tst.b (4,a0)
	beq.b loc_02cf24
	cmpi.w #8,($20a,a4)
	bgt.w loc_02cf24

loc_02cf12:
	st (1,a0)
	tst.b (8,a0)
	beq.w loc_02cf24
	move.b (9,a0),(0,a0)

loc_02cf24:
	move.b (0,a0),d0
	jmp loc_02d2ae

;--------------------------
loc_02cf2e:
	move.b ($2f0,a4),d2
	andi.b #$f,d2
	move.b d0,d1
	andi.b #$f,d1
	not.b d1
	or.b d2,d1
	cmpi.b #-1,d1
	bne.b loc_02cf50
	lsr.b #4,d0
	and.b d2,d0
	bne.b loc_02cf50
	clr.b d0
	rts

loc_02cf50:
	move.b #-1,d0
	rts

;--------------------------
loc_02cf56:
	roxr.b #3,d0
	ror.b #1,d0
	roxr.b #3,d0
	ror.b #1,d0
	roxr.b #1,d0
	rts

;--------------------------
loc_02cf62:
	tst.b (1,a0)
	bne.w loc_02cf8e
	clr.b (2,a0)
	clr.b (3,a0)
	clr.b (4,a0)
	clr.b (5,a0)
	clr.b (6,a0)
	clr.b (7,a0)
	clr.b (8,a0)
	clr.b (9,a0)
	clr.b ($a,a0)

loc_02cf8e:
	move.b #1,(1,a0)
	sf (0,a0)
	tst.b (3,a0)
	sne d0
	add.b d0,(3,a0)
	tst.b (5,a0)
	sne d0
	add.b d0,(5,a0)
	tst.b (7,a0)
	sne d0
	add.b d0,(7,a0)
	tst.b (9,a0)
	sne d0
	add.b d0,(9,a0)
	tst.b ($a,a0)
	sne d0
	add.b d0,($a,a0)
	move.b (0,a1),d0
	bsr.w loc_02cf2e
	bne.b loc_02d00c
	addq.b #1,(2,a0)
	scs d0
	add.b d0,(2,a0)
	move.b (2,a0),d0
	cmp.b (4,a1),d0
	bcs.b loc_02d010
	move.b (4,a1),(2,a0)
	move.b (5,a1),(3,a0)
	tst.b ($209,a4)
	bmi.w loc_02d010
	btst #1,(0,a1)
	beq.b loc_02d010
	move.w #6,($20c,a4)
	bra.b loc_02d010

loc_02d00c:
	clr.b (2,a0)

loc_02d010:
	move.b (0,a1),d0
	bsr.w loc_02cf56
	bsr.w loc_02cf2e
	bne.b loc_02d056
	addq.b #1,(6,a0)
	scs d0
	add.b d0,(6,a0)
	move.b (6,a0),d0
	cmp.b (4,a1),d0
	bcs.b loc_02d05a
	move.b (4,a1),(6,a0)
	move.b (5,a1),(7,a0)
	tst.b ($209,a4)
	bpl.w loc_02d05a
	btst #1,(0,a1)
	beq.b loc_02d05a
	move.w #6,($20c,a4)
	bra.b loc_02d05a

loc_02d056:
	clr.b (6,a0)

loc_02d05a:
	tst.b (3,a0)
	bne.b loc_02d066
	clr.b (4,a0)
	bra.b loc_02d0b2

loc_02d066
	cmpi.b #0,(4,a0)
	bne.b loc_02d07c
	move.b (1,a1),d0
	bsr.w loc_02cf2e
	bne.b loc_02d07c
	addq.b #1,(4,a0)

loc_02d07c:
	cmpi.b #1,(4,a0)
	bne.b loc_02d092
	move.b (2,a1),d0
	bsr.w loc_02cf2e
	bne.b loc_02d092
	addq.b #1,(4,a0)

loc_02d092:
	cmpi.b #2,(4,a0)
	bne.b loc_02d0b2
	move.b (3,a1),d0
	bsr.w loc_02cf2e
	bne.b loc_02d0b2
	addq.b #1,(4,a0)
	clr.b (3,a0)
	move.b (6,a1),(5,a0)

loc_02d0b2:
	tst.b (7,a0)
	bne.b loc_02d0bc
	clr.b (8,a0)

loc_02d0bc:
	cmpi.b #0,(8,a0)
	bne.b loc_02d0d6
	move.b (1,a1),d0
	bsr.w loc_02cf56
	bsr.w loc_02cf2e
	bne.b loc_02d0d6
	addq.b #1,(8,a0)

loc_02d0d6:
	cmpi.b #1,(8,a0)
	bne.b loc_02d0f0
	move.b (2,a1),d0
	bsr.w loc_02cf56
	bsr.w loc_02cf2e
	bne.b loc_02d0f0
	addq.b #1,(8,a0)

loc_02d0f0:
	cmpi.b #2,(8,a0)
	bne.b loc_02d114
	move.b (3,a1),d0
	bsr.w loc_02cf56
	bsr.w loc_02cf2e
	bne.b loc_02d114
	addq.b #1,(8,a0)
	clr.b (7,a0)
	move.b (6,a1),(9,a0)

loc_02d114:
	move.b ($2f7,a4),d0
	beq.b loc_02d124
	move.b d0,($b,a0)
	move.b (7,a1),($a,a0)

loc_02d124:
	tst.b ($209,a4)
	bmi.w loc_02d144
	tst.b (5,a0)
	bne.b loc_02d15a
	tst.b (9,a0)
	beq.b loc_02d16c
	cmpi.w #8,($20a,a4)
	bgt.w loc_02d16c
	bra.b loc_02d15a

loc_02d144:
	tst.b (9,a0)
	bne.b loc_02d15a
	tst.b (5,a0)
	beq.b loc_02d16c
	cmpi.w #8,($20a,a4)
	bgt.w loc_02d16c

loc_02d15a:
	st (1,a0)
	tst.b ($a,a0)
	beq.w loc_02d16c
	move.b ($b,a0),(0,a0)

loc_02d16c:
	move.b (0,a0),d0
	jmp loc_02d2ae

;--------------------------
loc_02d176:
	tst.b (1,a0)
	bne.w loc_02d1a6
	clr.b (2,a0)
	clr.b (3,a0)
	clr.b (4,a0)
	clr.b (5,a0)
	clr.b (6,a0)
	clr.b (7,a0)
	clr.b (8,a0)
	clr.b (9,a0)
	clr.b ($a,a0)
	clr.b ($b,a0)

loc_02d1a6:
	st (1,a0)
	sf (0,a0)
	tst.b (2,a0)
	sne d0
	add.b d0,(2,a0)
	tst.b (4,a0)
	sne d0
	add.b d0,(4,a0)
	tst.b (6,a0)
	sne d0
	add.b d0,(6,a0)
	tst.b (8,a0)
	sne d0
	add.b d0,(8,a0)
	move.b ($2f0,a4),d0
	move.b ($b,a0),d1
	move.b d0,($b,a0)
	eor.b d0,d1
	and.b d0,d1
	movem.l d2-d3/a1-a2,-(a7)
	movea.l a0,a2
	move.b #4,d2
	move.b #6,d3
	bsr.w loc_02d262
	addq.w #2,a1
	addq.w #2,a2
	move.b #5,d2
	move.b #7,d3
	bsr.w loc_02d262
	addq.w #2,a1
	addq.w #2,a2
	move.b #6,d2
	move.b #4,d3
	bsr.w loc_02d262
	addq.w #2,a1
	addq.w #2,a2
	move.b #7,d2
	move.b #5,d3
	bsr.w loc_02d262
	movem.l (a7)+,d2-d3/a1-a2
	tst.b (2,a0)
	bne.b loc_02d236
	clr.b (3,a0)

loc_02d236:
	tst.b (4,a0)
	bne.b loc_02d240
	clr.b (5,a0)

loc_02d240:
	tst.b (6,a0)
	bne.b loc_02d24a
	clr.b (7,a0)

loc_02d24a:
	tst.b (8,a0)
	bne.b loc_02d254
	clr.b (9,a0)

loc_02d254:
	move.b (0,a0),d0
	move.b d0,($a,a0)
	jmp loc_02d2ae

loc_02d262:
	btst d2,d1
	beq.b loc_02d290
	tst.b (1,a1)
	beq.b loc_02d290
	tst.b (0,a1)
	beq.b loc_02d290
	move.b (0,a1),(2,a2)
	btst d3,($a,a0)
	bne.b loc_02d28a
	addq.b #1,(3,a2)
	scs d0
	add.b d0,(3,a2)
	bra.b loc_02d290

loc_02d28a:
	move.b (1,a1),(3,a2)

loc_02d290:
	tst.b (2,a2)
	beq.w loc_02d2ac
	move.b (1,a1),d0
	cmp.b (3,a2),d0
	bhi.w loc_02d2ac
	move.b d0,(3,a2)
	bset d2,(0,a0)

loc_02d2ac:
	rts

;--------------------------
loc_02d2ae:
	move.b d0,-(a7)
	andi.w #$f0,d0
	beq.b loc_02d2bc
	lsr.w #4,d0
	move.b loc_02d2c0(pc,d0.w),d1

loc_02d2bc:
	move.b (a7)+,d0
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_02d2c0:
	dc.b $00,$45,$8a,$cf,$15,$05,$9f,$8f,$2a,$6f,$0a,$4f,$3f,$2f,$1f,$0f

;--------------------------
loc_02d2d0:
	sf ($35d,a4)
	tst.b (-$3de,a5)
	bne.w loc_02d300
	btst #2,($249,a4)
	bne.w loc_02d31c
	tst.b ($249,a4)
	bne.w loc_02d300
	btst #2,($249,a3)
	bne.w loc_02d306
	tst.b ($249,a3)
	beq.w loc_02d306

loc_02d300
	clr.w ($352,a4)
	bra.b loc_02d31c

loc_02d306:
	addq.w #1,($352,a4)
	move.w ($352,a4),d0
	cmp.w ($344,a4),d0
	ble.w loc_02d31c
	move.w ($344,a4),($352,a4)

loc_02d31c:
	tst.b ($272,a4)
	beq.w loc_02d328
	clr.b ($35c,a4)

loc_02d328:
	move.l ($56,a4),d4
	move.b ($249,a4),d0
	andi.b #$7a,d0
	beq.w loc_02d35c
	bset #7,($35c,a4)
	bne.w loc_02d35c
	move.l d4,($300,a4)
	movea.l ($1da,a4),a0
	move.l ($1c,a0),($56,a4)
	bclr #5,($35c,a4)
	bclr #6,($35c,a4)

loc_02d35c:
	btst #1,($249,a3)
	beq.w loc_02d384
	bset #6,($35c,a4)
	bne.w loc_02d384
	move.l d4,($300,a4)
	movea.l ($1da,a4),a0
	move.l ($18,a0),($56,a4)
	bclr #5,($35c,a4)

loc_02d384:
	move.w ($352,a4),d0
	cmp.w ($344,a4),d0
	blt.w loc_02d3a8
	bset #5,($35c,a4)
	bne.w loc_02d3a8
	move.l d4,($300,a4)
	movea.l ($1da,a4),a0
	move.l ($14,a0),($56,a4)

loc_02d3a8:
	move.w ($348,a4),d0
	jsr loc_02df18
	swap d3
	move.w d3,($35e,a4)
	move.w ($27a,a3),d0
	cmp.w ($35a,a4),d0
	beq.w loc_02d42a
	move.w d0,($35a,a4)
	bclr #3,($35c,a4)
	bclr #4,($35c,a4)
	cmpi.w #$f0,($33e,a4)
	bge.w loc_02d3e6
	btst #7,($24d,a3)
	bne.b loc_02d404

loc_02d3e6:
	move.w #$ff,d1
	sub.w ($33e,a4),d1
	jsr RandomNumberGod
	mulu.w d1,d0
	swap d0
	neg.w d0
	addi.w #$ff,d0
	move.w d0,($358,a4)
	bra.b loc_02d42a

loc_02d404:
	move.w ($340,a4),d1
	mulu.w #7,d1
	jsr RandomNumberGod
	mulu.w d1,d0
	swap d0
	lsr.w #3,d0
	addi.w #$40,d0
	cmpi.w #$ff,d0
	ble.b loc_02d426
	move.w #$ff,d0

loc_02d426:
	move.w d0,($358,a4)

loc_02d42a:
	tst.b ($247,a3)
	bne.w loc_02d438
	bclr #2,($35c,a4)

loc_02d438:
	move.w ($354,a4),d0
	subi.w #$55,d0
	cmp.w ($340,a4),d0
	ble.w loc_02d458
	subi.w #$28,d0
	move.w d0,($354,a4)
	addq.w #1,($356,a4)
	bra.w loc_02d498

loc_02d458:
	bsr.w loc_02d4b6
	bsr.w loc_02d4ca
	move.w #$aa,d6
	sub.w ($340,a4),d6
	bpl.b loc_02d46c
	clr.w d6

loc_02d46c:
	add.w d6,($354,a4)
	move.w ($354,a4),d0
	cmp.w ($340,a4),d0
	bgt.w loc_02d498
	bsr.w loc_02d4b6
	add.w d6,($354,a4)
	move.w ($354,a4),d0
	cmp.w ($340,a4),d0
	bgt.w loc_02d498
	bsr.w loc_02d4b6
	add.w d6,($354,a4)

loc_02d498:
	clr.w ($356,a4)
	rts

;--------------------------
loc_02d49e:
	bsr.w loc_02d4ca
	bsr.w loc_02d4b6
	bsr.w loc_02d4b6
	move.w #$100,($354,a4)
	clr.w ($356,a4)
	rts

;--------------------------
loc_02d4b6:
	lea ($360,a4),a1
	lea ($380,a4),a0
	move.w #$3f,d7

loc_02d4c2:
	move.b (a0)+,(a1)+
	dbra d7,loc_02d4c2
	rts

;--------------------------
loc_02d4ca:
	move.b ($249,a3),($3a1,a4)
	move.b ($248,a3),($3a2,a4)
	move.w ($226,a4),($3ac,a4)
	move.w ($222,a4),($3ae,a4)
	move.b ($247,a3),($3a5,a4)
	move.b ($246,a3),($3a6,a4)
	move.w ($348,a4),d0
	btst #4,($248,a4)
	bne.w loc_02d518
	btst #1,($246,a4)
	beq.w loc_02d518
	btst #3,($24c,a4)
	bne.w loc_02d518
	jsr loc_02df7e
	bra.b loc_02d51e

loc_02d518:
	jsr loc_02dfc8

loc_02d51e:
	swap d2
	swap d3
	move.w d2,($3b8,a4)
	move.w d3,($3ba,a4)
	move.w ($348,a4),d0
	add.w ($356,a4),d0
	jsr loc_02df42
	swap d3
	addi.w #$e,d3
	cmp.w (-$45de,a5),d3
	sge ($3b7,a4)
	move.b ($2b2,a3),($3a3,a4)
	move.b ($2b3,a3),($3a4,a4)
	clr.w d0
	jsr loc_02e03c
	swap d2
	swap d3
	move.w d2,($3b0,a4)
	move.w d3,($3b2,a4)
	move.w ($348,a4),d0
	add.w ($356,a4),d0
	jsr loc_02e03c
	swap d2
	swap d3
	move.w d2,($3bc,a4)
	move.w d3,($3be,a4)
	btst #3,($24c,a3)
	sne ($3a7,a4)
	sf ($3a8,a4)
	cmpi.b #8,($245,a3)
	beq.w loc_02d5ba
	cmpi.b #9,($245,a3)
	beq.w loc_02d5c2
	btst #1,($24c,a3)
	bne.w loc_02d5ba
	btst #0,($24c,a3)
	bne.w loc_02d5c2
	bra.w loc_02d5c8

loc_02d5ba:
	sne ($3a8,a4)
	bra.w loc_02d5c8

loc_02d5c2:
	move.b #1,($3a8,a4)

loc_02d5c8:
	move.b ($244,a3),($3a9,a4)
	cmpi.b #$11,($245,a3)
	beq.w loc_02d5ec
	cmpi.b #$12,($245,a3)
	beq.w loc_02d5ec
	move.b ($245,a3),($3aa,a4)
	bra.w loc_02d5f2

loc_02d5ec:
	move.b #0,($3aa,a4)

loc_02d5f2:
	move.w (-$7fa2,a5),d0
	andi.w #$3c0,d0
	beq.w loc_02d60e
	cmpi.w #$60,($358,a4)
	bge.b loc_02d61c
	cmpi.w #$30,($358,a4)
	bge.b loc_02d616

loc_02d60e:
	move.b #0,($3aa,a4)
	bra.b loc_02d61c

loc_02d616:
	move.b #6,($3aa,a4)

loc_02d61c:
	move.w ($21e,a4),d0
	bpl.b loc_02d624
	neg.w d0

loc_02d624:
	tst.w ($21e,a3)
	bmi.b loc_02d630
	sub.w ($242,a3),d0
	bra.b loc_02d634

loc_02d630:
	add.w ($240,a3),d0

loc_02d634:
	move.w d0,($3b4,a4)
	move.b #2,($3a0,a4)
	move.b ($249,a3),d0
	beq.w loc_02d660
	btst #5,d0
	beq.w loc_02d660
	andi.b #$96,d0
	bne.w loc_02d660
	move.b #6,($3a0,a4)
	bra.w loc_02d6fc

loc_02d660:
	tst.w ($2bc,a3)
	beq.w loc_02d672
	move.b #5,($3a0,a4)
	bra.w loc_02d6fc

loc_02d672:
	btst #3,($24c,a3)
	beq.w loc_02d6fc
	cmpi.b #0,($245,a3)
	beq.w loc_02d6fc
	cmpi.b #7,($245,a3)
	bne.w loc_02d6a6
	btst #1,($246,a3)
	bne.w loc_02d6de
	tst.w ($21a,a3)
	ble.w loc_02d6de
	bra.w loc_02d6f2

loc_02d6a6:
	tst.w ($2c8,a3)
	beq.w loc_02d6c2
	cmpi.b #6,($245,a3)
	beq.w loc_02d6fc
	move.b #3,($3a0,a4)
	bra.w loc_02d6fc

loc_02d6c2:
	tst.w ($2ca,a3)
	beq.w loc_02d6e8
	btst #7,($24c,a3)
	beq.w loc_02d6de
	cmpi.b #2,($245,a3)
	bne.w loc_02d6e8

loc_02d6de:
	move.b #4,($3a0,a4)
	bra.w loc_02d6fc

loc_02d6e8:
	btst #2,($24a,a3)
	beq.w loc_02d6fc

loc_02d6f2:
	move.b #1,($3a0,a4)
	bra.w loc_02d6fc

loc_02d6fc:
	move.b #2,($3b6,a4)
	cmpi.b #6,($3a0,a4)
	bne.w loc_02d716
	move.b #6,($3b6,a4)
	bra.w loc_02d7a0

loc_02d716:
	move.w ($2bc,a3),d0
	cmp.w ($348,a4),d0
	ble.w loc_02d72c
	move.b #5,($3b6,a4)
	bra.w loc_02d7a0

loc_02d72c:
	btst #3,($24c,a3)
	beq.w loc_02d7a0
	cmpi.b #7,($245,a3)
	bne.w loc_02d74a
	move.b ($3a0,a4),($3b6,a4)
	bra.w loc_02d7a0

loc_02d74a:
	move.w ($2c8,a3),d0
	cmp.w ($348,a4),d0
	ble.w loc_02d760
	move.b #3,($3b6,a4)
	bra.w loc_02d7a0

loc_02d760:
	move.w ($2ca,a3),d0
	cmp.w ($348,a4),d0
	ble.w loc_02d78a
	btst #7,($24c,a3)
	beq.w loc_02d780
	cmpi.b #2,($245,a3)
	bne.w loc_02d78a

loc_02d780:
	move.b #4,($3b6,a4)
	bra.w loc_02d7a0

loc_02d78a:
	move.w ($2cc,a3),d0
	cmp.w ($348,a4),d0
	ble.w loc_02d7a0
	move.b #1,($3b6,a4)
	bra.w loc_02d7a0

loc_02d7a0:
	rts

;--------------------------
loc_02d7a2:
	movem.l d0-d3/a0,-(a7)
	tst.b (0,a4)
	bmi.w loc_02d7b4
	move.b (-$53d1,a5),d3
	bra.b loc_02d7b8

loc_02d7b4:
	move.b (-$53d0,a5),d3

loc_02d7b8:
	tst.b (0,a4)
	bmi.b loc_02d7c4
	lea (-$7f9c,a5),a0
	bra.b loc_02d7c8

loc_02d7c4:
	lea (-$7f98,a5),a0

loc_02d7c8:
	move.b d3,d1
	andi.b #$f,d3
	clr.w d0
	move.b (a0)+,d0
	btst d0,d1
	beq.b loc_02d7da
	bset #4,d3

loc_02d7da:
	move.b (a0)+,d0
	btst d0,d1
	beq.b loc_02d7e4
	bset #5,d3

loc_02d7e4:
	move.b (a0)+,d0
	btst d0,d1
	beq.b loc_02d7ee
	bset #6,d3

loc_02d7ee:
	move.b (a0)+,d0
	btst d0,d1
	beq.b loc_02d7f8
	bset #7,d3

loc_02d7f8:
	bsr.w loc_02d832
	tst.b (0,a4)
	bmi.b loc_02d808
	move.w #0,d0
	bra.b loc_02d80c

loc_02d808:
	move.w #2,d0

loc_02d80c:
	bclr #7,($2fc,a4)
	btst d0,(-$53cb,a5)
	beq.b loc_02d828
	bset #6,($2fc,a4)
	bne.b loc_02d826
	bset #7,($2fc,a4)

loc_02d826:
	bra.b loc_02d82c

loc_02d828:
	sf ($2fc,a4)

loc_02d82c:
	movem.l (a7)+,d0-d3/a0
	rts

;--------------------------
loc_02d832:
	subq.w #1,($20c,a4)
	bpl.w loc_02d83e
	clr.w ($20c,a4)

loc_02d83e:
	move.b d3,d0
	andi.w #$f,d0
	lea loc_02d954(pc),a0
	move.b (a0,d0.w),d0
	andi.b #$f0,d3
	or.b d0,d3
	move.b ($2f0,a4),d1
	move.b d3,($2f0,a4)
	move.b d1,d2
	andi.b #$f,d2
	cmp.b d0,d2
	bne.b loc_02d86a
	clr.b ($2f1,a4)
	bra.b loc_02d882

loc_02d86a:
	btst #1,d0
	beq.b loc_02d87e
	move.w #4,($20c,a4)
	bge.b loc_02d87e
	move.w #4,($20c,a4)

loc_02d87e:
	move.b d0,($2f1,a4)

loc_02d882:
	move.b ($2f4,a4),($2f9,a4)
	move.b ($2f2,a4),($2f4,a4)
	move.b ($2f3,a4),($2f5,a4)
	andi.b #$f0,d3
	andi.b #$f0,d1
	move.b d1,d0
	eor.b d3,d1
	and.b d3,d1
	move.b ($2f2,a4),d2
	btst #3,(-$7f84,a5)
	beq.b loc_02d8b0
	move.b d3,d1

loc_02d8b0
	move.b d1,($2f2,a4)
	eor.b d0,d3
	and.b d0,d3
	move.b d3,($2f3,a4)
	move.b d2,($2f9,a4)
	move.b ($2f2,a4),($2f7,a4)
	move.b ($2f3,a4),($2f8,a4)
	move.b ($2f4,a4),d0
	or.b d0,($2f7,a4)
	move.b ($2f5,a4),d0
	or.b d0,($2f8,a4)
	move.b ($2f7,a4),d0
	or.b d0,($2f9,a4)
	move.b ($2f0,a4),d0
	andi.b #$f,d0
	tst.b ($209,a4)
	bpl.w loc_02d8f8
	bsr.w loc_02d94c

loc_02d8f8:
	move.b d0,($2f6,a4)
	tst.w (-$396,a5)
	bne.w loc_02d928
	sf ($2fa,a4)
	btst #2,($2f6,a4)
	bne.w loc_02d924
	cmpi.w #8,($20a,a4)
	bgt.b loc_02d928
	btst #3,($2f6,a4)
	beq.w loc_02d928

loc_02d924:
	st ($2fa,a4)

loc_02d928:
	move.b ($2f9,a4),d0
	lsr.b #4,d0
	clr.w d1
	move.w #3,d2

loc_02d934:
	btst d2,d0
	beq.w loc_02d93c
	addq.w #1,d1

loc_02d93c:
	dbra d2,loc_02d934
	cmpi.w #3,d1
	sge d0
	or.b d0,($2fb,a4)
	rts

;--------------------------
loc_02d94c:
	roxr.b #3,d0
	ror.b #1,d0
	roxl.b #4,d0
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_02d954:
	dc.b $00,$01,$02,$00,$04,$05,$06,$04
	dc.b $08,$09,$0a,$08,$00,$01,$02,$00

;--------------------------
loc_02d964:
	movem.l d0-d3/a0,-(a7)
	tst.b (0,a4)
	bmi.w loc_02d976
	move.b (-$f9f,a5),d3
	bra.b loc_02d97a

loc_02d976:
	move.b (-$f9e,a5),d3

loc_02d97a:
	bsr.w loc_02d832
	movem.l (a7)+,d0-d3/a0
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_02d984:
	dc.w $8037
	dc.l loc_0292be
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02d992:
	dc.w $8037
	dc.l loc_029294
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02d9a0:
	dc.w $8037
	dc.l loc_029396
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02d9ae:
	dc.w $8037
	dc.l loc_02946e
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02d9bc:
	dc.w $8037
	dc.l loc_0294b8
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02d9ca:
	dc.w $8037
	dc.l loc_029554
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02d9d8:
	dc.w $8037
	dc.l loc_029716
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02d9e6:
	dc.w $8037
	dc.l loc_02997a
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02d9f4:
	dc.w $8037
	dc.l loc_0299cc
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02da02:
	dc.w $8037
	dc.l loc_029a36
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02da10:
	dc.w $8037
	dc.l loc_029e2c
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02da1e:
	dc.w $8037
	dc.l loc_029f64
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02da2c:
	dc.w $8037
	dc.l loc_02a102
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02da3a:
	dc.w $8037
	dc.l loc_02a158
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02da48:
	dc.w $8037
	dc.l loc_02a1ca
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02da56:
	dc.w $8037
	dc.l loc_02a234
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02da64:
	dc.w $8037
	dc.l loc_02a28e
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02da72:
	dc.w $8037
	dc.l loc_02a324
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02da80:
	dc.w $8037
	dc.l loc_029aaa
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02da8e:
	dc.w $8037
	dc.l loc_029b64
	dc.w $8038
	dc.l loc_02daee
	dc.w $8039,$0000
	dc.w $803a,$ffff
	dc.w $803c,$0008
	dc.w $803d,$0000

loc_02daaa:
	dc.w $8037
	dc.l loc_0291a4
	dc.w $803a,$fbfb
	dc.w $803d,$0000

loc_02dab8:
	dc.w $803d
	dc.w $8043,$0000,$0000

loc_02dac0:
	dc.w $8037
	dc.l loc_028dfa
	dc.w $8039,$0080
	dc.w $803a,$ffff
	dc.w $803d,$0000

loc_02dad2:
	dc.w $8037
	dc.l loc_028f20
	dc.w $8038
	dc.l loc_02daee
	dc.w $8039,$0000
	dc.w $803b,$0000,$0000
	dc.w $803a,$ffff,$0000

loc_02daee:
	dc.w $8001

loc_02daf0:
	dc.w $000a,$000c,$000f,$0012,$0014,$0018,$0019,$001e

loc_02db00:
	dc.w $0008,$000a,$000a,$000e,$000c,$0012,$000e,$0016

extra2db10:
	dc.l $000023a0,$000030c0,$00002120,$00002d00
	dc.l $00001ea0,$00002940,$00001c20,$00002580

loc_02db10:
	dc.l $00003900,$00004e00,$00003500,$00004800
	dc.l $00003100,$00004200,$00002d00,$00003c00

extra2db30:
	dc.l $fffee300,$fffe1880,$fffe93a0,$fffd8a00
	dc.l $fffe5340,$fffd1980,$fffe21e0,$fffcc700

loc_02db30:
	dc.l $fffe3800,$fffcf400,$fffdb900,$fffc1000
	dc.l $fffd5200,$fffb5c00,$fffd0300,$fffad800

extra2db50:
	dc.l $00006ae0,$00004920,$00006360,$00004380
	dc.l $00005be0,$00003de0,$00005460,$00003840

loc_02db50:
	dc.l $0000ab00,$00007500,$00009f00,$00006c00
	dc.l $00009300,$00006300,$00008700,$00005a00

extra2db70:
	dc.l $fffca900,$fffd24c0,$fffbbae0,$fffc4f00
	dc.l $fffaf9c0,$fffba640,$fffa65a0,$fffb2a80

loc_02db70:
	dc.l $fffaa800,$fffb6e00,$fff92b00,$fffa1800
	dc.l $fff7f600,$fff90a00,$fff70900,$fff84400

loc_02db90:
	dc.w $000a,$000c,$000f,$0012,$0014,$0018,$0019,$001e

loc_02dba0:
	dc.w $000a,$000b,$000d,$0011,$0010,$0016,$0013,$001b

extra2dbb0:
	dc.l $000024e0,$00003200,$00001fe0,$00002800
	dc.l $00001ae0,$00002260,$000015e0,$00001e00

loc_02dbb0:
	dc.l $00003b00,$00005000,$00003300,$00004000
	dc.l $00002b00,$00003700,$00002300,$00003000

extra2dbd0:
	dc.l $fffed900,$fffe0c00,$fffe8180,$fffda800
	dc.l $fffe5200,$fffd5080,$fffe4a80,$fffd1200

loc_02dbd0:
	dc.l $fffe2800,$fffce000,$fffd9c00,$fffc4000
	dc.l $fffd5000,$fffbb400,$fffd4400,$fffb5000

extra2dbf0:
	dc.l $00009380,$00004b00,$00006f90,$00003c00
	dc.l $000050a0,$00003390,$000036b0,$00002d00

loc_02dbf0:
	dc.l $0000ec00,$00007800,$0000b280,$00006000
	dc.l $00008100,$00005280,$00005780,$00004800

extra2dc10:
	dc.l $fffb6400,$fffd1200,$fffac540,$fffc7c00
	dc.l $fffaf600,$fffbf8c0,$fffbba40,$fffb9b00

loc_02dc10:
	dc.l $fff8a000,$fffb5000,$fff7a200,$fffa6000
	dc.l $fff7f000,$fff98e00,$fff92a00,$fff8f800

loc_02dc30:
	dc.w $001e,$0020,$0023,$0026,$0028,$002c,$002d,$0032

loc_02dc40:
	dc.w $000c,$000c,$0011,$0011,$0016,$0016,$001b,$001b

loc_02dc50:
	dc.l $fffc4800,$fffc4800,$fffaf800,$fffaf800
	dc.l $fff9a800,$fff9a800,$fff85800,$fff85800

loc_02dc70:
	dc.w $0480,$0600,$0700,$0800,$0900,$0a00,$0f00,$1200

loc_02dc80:
	dc.w $0008,$000c,$000f,$0007,$0009,$000a,$0006,$000b
	dc.w $001e,$0006,$0006,$0006,$0006,$0006,$0006,$0006

loc_02dca0:
	dc.w 0001,0001,0001,0001,0001,0001,0001,0001
	dc.w 0001,0001,0001,0001,0001,0001,0001,0001

loc_02dcc0:
	dc.w $1c58,$1cc4,$1c6a,$1cb1,$1c7a,$1c85,$1c95,$1ca2
	dc.w $1c49,$1cc9,$1c58,$1c58,$1c58,$1c58,$1c58,$1c58

loc_02dce0:
	dc.l loc_02dcf0,loc_02dd10,loc_02dd30,loc_02dd50

loc_02dcf0:
	dc.w $000e,$006c,$001b,$005c,$0025,$002e,$003d,$0047
	dc.w $0076,$008c,$000e,$000e,$000e,$000e,$000e,$000e

loc_02dd10:
	dc.w $000d,$006d,$001c,$005b,$0026,$002f,$003e,$0046
	dc.w $0077,$008d,$000d,$000d,$000d,$000d,$000d,$000d

loc_02dd30:
	dc.w $000e,$006c,$001b,$005a,$0025,$002d,$003d,$0047
	dc.w $0076,$008d,$000e,$000e,$000e,$000e,$000e,$000e

loc_02dd50:
	dc.w $000d,$006d,$001c,$0058,$0026,$002d,$003e,$0046
	dc.w $0077,$008c,$000d,$000d,$000d,$000d,$000d,$000d

loc_02dd70:
	dc.w $0010,$0010,$0010,$0010,$0010,$0010,$0010,$0010
	dc.w $0010,$0010,$0010,$0010,$0010,$0010,$0010,$0010

loc_02dd90:
	dc.w $0002,$0006,$0002,$0006,$0003,$0005,$0003,$0005
	dc.w $0004,$0004,$0003,$0005,$0003,$0005,$0004,$0004
	dc.w $0004,$0006,$0003,$0005,$0003,$0005,$0003,$0005
	dc.w $0003,$0005,$0003,$0005,$0003,$0005,$0003,$0005

loc_02ddd0:
	dc.w $0002,$0005,$0002,$0005,$0003,$0004,$0002,$0005
	dc.w $0003,$0006,$0003,$0004,$0003,$0006,$0003,$0006
	dc.w $0005,$0006,$0004,$0006,$0004,$0006,$0004,$0006
	dc.w $0004,$0006,$0004,$0006,$0004,$0006,$0004,$0006

;--------------------------
loc_02de10:
	cmpa.l #$10715c,a4
	beq.b loc_02de58
	cmpa.l #$1076bc,a4
	beq.b loc_02de5e
	cmpa.l #$107cd6,a4
	bcs.b loc_02de64
	cmpa.l #$1097d6,a4
	bcc.b loc_02de64
	move.b #1,d0
	move.b ($24,a4),d1
	cmpa.l #$108716,a4
	bcs.b loc_02de66
	addq.b #1,d0
	cmpa.l #$1097d6,a4
	bcs.b loc_02de66
	addq.b #1,d0
	cmpa.l #$109afa,a4
	bcs.b loc_02de66
	addq.b #1,d0
	bra.b loc_02de66

loc_02de58:
	st d0
	sf d1
	bra.b loc_02de66

loc_02de5e:
	st d0
	st d1
	bra.b loc_02de66

loc_02de64:
	sf d0

loc_02de66:
	tst.b d0
	rts

;--------------------------
loc_02de6a:
	tst.w ($226,a4)
	beq.w loc_02de7e
	move.b ($209,a4),d0
	cmp.b ($208,a4),d0
	bne.w loc_02dec8

loc_02de7e:
	cmp.w ($226,a4),d2
	blt.w loc_02dec8
	sub.w ($222,a4),d3
	sub.w ($222,a4),d4
	move.w ($238,a3),d0
	sub.w ($23a,a3),d0
	beq.w loc_02deae
	sub.w ($238,a3), d3
	bgt.w loc_02dec8
	sub.w ($23a,a3),d4
	blt.w loc_02dec8
	bra.w loc_02dec2

loc_02deae:
	sub.w ($238,a4),d3
	bgt.w loc_02dec8
	sub.w ($23a,a4),d4
	blt.w loc_02dec8
	bra.w loc_02dec2

loc_02dec2:
	move.w #-1,d0
	rts

loc_02dec8:
	clr.w d0
	rts

;--------------------------
loc_02decc:
	movem.l d0-d7,-(a7)
	move.w (a0)+,d4
	subq.w #1,d4
	bpl.w loc_02dedc
	bra.w loc_02df10

loc_02dedc:
	clr.w d1
	clr.w d2
	move.w d4,d7

loc_02dee2:
	add.w (a0,d2.w),d1
	addq.w #6,d2
	dbra d7,loc_02dee2
	mulu.w d0,d1
	swap d1
	clr.w d2
	move.w d4,d7

loc_02def4:
	move.w (a0,d2.w),d0
	sub.w d0,d1
	blt.w loc_02df06
	addq.w #6,d2
	dbra d7,loc_02def4
	subq.w #6,d2

loc_02df06:
	movea.l (2,a0,d2.w),a0
	movem.l (a7)+,d0-d7
	jmp (a0)

loc_02df10:
	movem.l (a7)+,d0-d7
	moveq #-1,d0
	rts

;--------------------------
loc_02df18:
	movem.l d0-d1/d4-d7,-(a7)
	addq.w #1,d0
	move.l ($310,a3),d4
	move.l ($330,a3),d5
	move.l ($338,a3),d6
	bsr.w loc_02e07a
	sub.l (-$45de,a5),d4
	ble.w loc_02df38
	clr.l d4

loc_02df38:
	neg.l d4
	move.l d4,d3
	movem.l (a7)+,d0-d1/d4-d7
	rts

;--------------------------
loc_02df42:
	movem.l d0-d1/d4-d7,-(a7)
	addq.w #1,d0
	move.l ($30c,a3),d4
	move.l ($32c,a3),d5
	move.l ($334,a3),d6
	bsr.w loc_02e07a
	move.l d4,d2
	move.l ($310,a3),d4
	move.l ($330,a3),d5
	move.l ($338,a3),d6
	bsr.w loc_02e07a
	cmp.l (-$45de,a5),d4
	ble.w loc_02df76
	move.l (-$45de,a5),d4

loc_02df76:
	move.l d4,d3
	movem.l (a7)+,d0-d1/d4-d7
	rts

;--------------------------
loc_02df7e:
	bsr.b loc_02df42
	movem.l d0-d1/d4-d7,-(a7)
	addq.w #1,d0
	sub.l ($20e,a4),d2
	bmi.b loc_02dfa0
	swap d2
	tst.b ($208,a3)
	bmi.b loc_02df9a
	add.w ($23c,a3),d2
	bra.b loc_02dfb4

loc_02df9a:
	sub.w ($23e,a3),d2
	bra.b loc_02dfb4

loc_02dfa0:
	neg.l d2
	swap d2
	tst.b ($208,a3)
	bmi.b loc_02dfb0
	sub.w ($23e,a3),d2
	bra.b loc_02dfb4

loc_02dfb0:
	add.w ($23c,a3),d2

loc_02dfb4:
	swap d2
	tst.l d2
	bpl.w loc_02dfbe
	clr.l d2

loc_02dfbe:
	sub.l ($212,a4),d3
	movem.l (a7)+,d0-d1/d4-d7
	rts

;--------------------------
loc_02dfc8:
	bsr.w loc_02df42
	movem.l d0-d1/d4-d7,-(a7)
	addq.w #1,d0
	move.l ($30c,a4),d4
	move.l ($32c,a4),d5
	move.l ($334,a4),d6
	bsr.w loc_02e07a
	sub.l d4,d2
	bmi.b loc_02dffa
	swap d2
	tst.b ($208,a3)
	bmi.b loc_02dff4
	add.w ($23c,a3),d2
	bra.b loc_02e00e

loc_02dff4:
	sub.w ($23e,a3),d2
	bra.b loc_02e00e

loc_02dffa:
	neg.l d2
	swap d2
	tst.b ($208,a3)
	bmi.b loc_02e00a
	sub.w ($23e,a3),d2
	bra.b loc_02e00e

loc_02e00a:
	add.w ($23c,a3),d2

loc_02e00e:
	swap d2
	tst.l d2
	bpl.w loc_02e018
	clr.l d2

loc_02e018:
	move.l ($310,a4),d4
	move.l ($330,a4),d5
	move.l ($338,a4),d6
	bsr.w loc_02e07a
	cmp.l (-$45de,a5),d4
	ble.w loc_02e034
	move.l (-$45de,a5),d4

loc_02e034:
	sub.l d4,d3
	movem.l (a7)+,d0-d1/d4-d7
	rts

;--------------------------
loc_02e03c:
	movem.l d0-d1/d4-d7,-(a7)
	addq.w #1,d0
	move.l ($2a2,a3),d4
	move.l ($2aa,a3),d5
	clr.l d6
	bsr.w loc_02e07a
	move.l d4,d2
	sub.l ($20e,a4),d2
	tst.b ($208,a4)
	bpl.w loc_02e060
	neg.l d2

loc_02e060:
	move.l ($2a6,a3),d4
	move.l ($2ae,a3),d5
	clr.l d6
	bsr.w loc_02e07a
	move.l d4,d3
	sub.l ($212,a4),d3
	movem.l (a7)+,d0-d1/d4-d7
	rts

;--------------------------
loc_02e07a:
	move.w d5,d1
	mulu.w d0,d1
	add.l d1,d4
	swap d5
	muls.w d0,d5
	swap d5
	clr.w d5
	add.l d5,d4
	tst.l d6
	beq.w loc_02e0a8
	move.w d0,d1
	mulu.w d0,d1
	add.w d0,d1
	move.l d6,d5
	mulu.w d1,d6
	swap d5
	muls.w d1,d5
	swap d5
	clr.w d5
	add.l d5,d6
	asr.l #1,d6
	add.l d6,d4

loc_02e0a8:
	rts

;--------------------------
loc_02e0aa:
	move.l (a7)+,($304,a4)
	tst.w ($2fe,a4)
	beq.w loc_02e0bc
	jsr loc_0226b4

loc_02e0bc:
	move.l d1,-(a7)
	move.l d0,-(a7)
	jsr RandomNumberGod
	move.l (a7)+,d1
	swap d1
	mulu.w d1,d0
	swap d0
	swap d1
	add.w d1,d0
	move.l (a7)+,d1
	bsr.w loc_02e20c

loc_02e0d8:
	bsr.w loc_02e456
	subq.w #1,d0
	bmi.w loc_02e0ea
	jsr loc_0226b4
	bra.b loc_02e0d8

loc_02e0ea:
	move.l ($304,a4),-(a7)
	clr.l ($304,a4)
	rts

;--------------------------
loc_02e0f4:
	move.l (a7)+,($304,a4)
	tst.w ($2fe,a4)
	beq.w loc_02e106
	jsr loc_0226b4

loc_02e106:
	move.l d1,-(a7)
	move.l d0,-(a7)
	jsr RandomNumberGod
	move.l (a7)+,d1
	swap d1
	mulu.w d1,d0
	swap d0
	swap d1
	add.w d1,d0
	move.l (a7)+,d1
	bsr.w loc_02e20c
	movem.l d0,-(a7)
	jsr RandomNumberGod
	andi.w #$7f,d0
	addi.w #$20,d0
	cmp.w ($340,a4),d0
	movem.l (a7)+,d0
	bcs.w loc_02e15c
	subq.w #1,d0
	bmi.w loc_02e186

loc_02e146:
	bsr.w loc_02e194
	bne.w loc_02e188
	jsr loc_0226b4
	dbra d0,loc_02e146
	bra.w loc_02e186

loc_02e15c:
	movem.l d0,-(a7)
	bsr.w loc_02e496
	andi.b #$1c,d0
	movem.l (a7)+,d0
	bne.w loc_02e1fc
	subq.w #1,d0
	bmi.w loc_02e186
	bsr.w loc_02e194
	bne.w loc_02e188
	jsr loc_0226b4
	bra.b loc_02e15c

loc_02e186:
	sf d0

loc_02e188:
	move.l ($304,a4),-(a7)
	clr.l ($304,a4)
	tst.b d0
	rts

;--------------------------
loc_02e194:
	tst.w d2
	ble.w loc_02e1a2
	cmp.w ($378,a4),d2
	bge.w loc_02e1f0

loc_02e1a2:
	swap d2
	tst.w d2
	ble.w loc_02e1b2
	cmp.w ($36c,a4),d2
	ble.w loc_02e1ee

loc_02e1b2:
	swap d2
	cmpi.b #4,($2f6,a4)
	bne.w loc_02e1d6
	movem.l d0,-(a7)
	move.b ($246,a4),d0
	andi.b #$c,d0
	movem.l (a7)+,d0
	bne.w loc_02e1f6
	bra.w loc_02e1ea

loc_02e1d6:
	movem.l d0,-(a7)
	move.w ($23e,a4),d0
	cmp.w ($226,a4),d0
	movem.l (a7)+,d0
	bge.w loc_02e1f6

loc_02e1ea:
	cmp.b d0,d0
	rts

loc_02e1ee:
	swap d2

loc_02e1f0:
	st d0
	tst.b d0
	rts

loc_02e1f6:
	move.b #1,d0
	rts

;--------------------------
loc_02e1fc:
	move.l ($304,a4),-(a7)
	clr.l ($304,a4)
	bsr.w loc_02e496
	bra.w loc_02e550

;--------------------------
loc_02e20c:
	movem.l d0,-(a7)
	move.b ($24a,a4),d0
	not.b d0
	andi.b #$fb,d0
	movem.l (a7)+,d0
	beq.w loc_02e22a
	clr.l ($308,a4)
	cmp.b d0,d0
	rts

loc_02e22a:
	move.l (a7)+,($308,a4)

loc_02e22e:
	movem.l d0,-(a7)
	move.b ($24a,a4),d0
	not.b d0
	andi.b #$fb,d0
	movem.l (a7)+,d0
	bne.w loc_02e258
	movem.l d0,-(a7)
	bsr.w loc_02e456
	movem.l (a7)+,d0
	jsr loc_0226b4
	bra.b loc_02e22e

loc_02e258:
	move.l ($308,a4),-(a7)
	clr.l ($308,a4)
	movem.l d0,-(a7)
	move.b #-1, d0
	movem.l (a7)+,d0
	rts

;--------------------------
loc_02e26e:
	move.l (a7)+,($308,a4)
	tst.w ($2fe,a4)
	beq.w loc_02e280

loc_02e27a:
	jsr loc_0226b4

loc_02e280:
	tst.b ($271,a4)
	bne.w loc_02e2b2
	btst #3,($24a,a4)
	dbeq d0,loc_02e27a
	moveq #0,d0
	move.w ($34a,a4),d0
	bsr.w loc_02e3be
	subq.w #1,d0
	bmi.w loc_02e2ac

loc_02e2a2:
	jsr loc_0226b4
	dbra d0,loc_02e2a2

loc_02e2ac:
	sf d0
	bra.w loc_02e2c4

loc_02e2b2:
	btst #2,($249,a3)
	bne.w loc_02e2c0
	st d0
	bra.b loc_02e2c4

loc_02e2c0:
	move.b #1,d0

loc_02e2c4:
	move.l ($308,a4),-(a7)
	clr.l ($308,a4)
	tst.b d0
	rts

;--------------------------
loc_02e2d0:
	move.l (a7)+,($308,a4)
	tst.w ($2fe,a4)
	beq.w loc_02e2e2

loc_02e2dc:
	jsr loc_0226b4

loc_02e2e2
	btst #1,($24a,a4)
	beq.w loc_02e2f4
	btst #1,($24a,a4)
	bne.b loc_02e2dc

loc_02e2f4
	move.l ($308,a4),-(a7)
	clr.l ($308,a4)
	moveq #0,d0
	move.w ($34a,a4),d0
	lsr.w #1,d0
	bra.w loc_02e39c

;--------------------------
loc_02e308:
	move.l (a7)+,($308,a4)
	tst.w ($2fe,a4)
	beq.w loc_02e31a

loc_02e314:
	jsr loc_0226b4

loc_02e31a:
	btst #1,($246,a4)
	beq.b loc_02e32c
	btst #3,($24a,a4)
	bne.b loc_02e314
	bra.b loc_02e334

loc_02e32c:
	btst #0,($24a,a4)
	bne.b loc_02e314

loc_02e334:
	move.l ($308,a4),-(a7)
	clr.l ($308,a4)
	moveq #0,d0
	move.w ($34a,a4),d0
	bra.w loc_02e39c

loc_02e346:
	move.l (a7)+,($308,a4)
	tst.w ($2fe,a4)
	beq.w loc_02e358

loc_02e352:
	jsr loc_0226b4

loc_02e358:
	tst.b ($24a,a4)
	bne.b loc_02e352
	move.l ($308,a4),-(a7)
	clr.l ($308,a4)
	moveq #0,d0
	move.w ($34a,a4),d0
	bra.w loc_02e39c

loc_02e370:
	move.l (a7)+,($308,a4)
	tst.w ($2fe,a4)
	beq.w loc_02e386

loc_02e37c:
	bsr.w loc_02e456
	jsr loc_0226b4

loc_02e386:
	move.b ($24a,a4),d0
	not.b d0
	andi.b #$fb,d0
	beq.b loc_02e37c
	move.l ($308,a4),-(a7)
	clr.l ($308,a4)
	rts

;--------------------------
loc_02e39c:
	bsr.w loc_02e3be
	subq.w #1,d0
	bmi.w loc_02e3b8
	move.l (a7)+,($308,a4)

loc_02e3aa:
	jsr loc_0226b4
	dbra d0,loc_02e3aa
	move.l ($308,a4),-(a7)

loc_02e3b8:
	clr.l ($308,a4)
	rts

;--------------------------
loc_02e3be:
	move.l d1,-(a7)
	move.l d0,-(a7)
	jsr RandomNumberGod
	move.l (a7)+,d1
	swap d1
	mulu.w d1,d0
	swap d0
	swap d1
	add.w d1,d0
	move.w ($340,a4),d1
	move.w d0,-(a7)
	jsr RandomNumberGod
	cmpi.w #$8000,d0
	bcc.b loc_02e3f0
	add.w d1,d1
	subi.w #$20,d1
	bpl.b loc_02e3f0
	clr.w d1

loc_02e3f0:
	move.w (a7)+,d0
	cmpi.w #$40,d1
	bcs.b loc_02e402
	cmpi.w #$c0,d1
	bcs.b loc_02e410
	clr.w d1
	bra.b loc_02e418

loc_02e402:
	subi.w #$40,d1
	neg.w d1
	lsl.w #3,d1
	addi.w #$100,d1
	bra.b loc_02e418

loc_02e410:
	subi.w #$c0,d1
	neg.w d1
	add.w d1,d1

loc_02e418:
	mulu.w d1,d0
	move.l (a7)+,d1
	lsr.w #8,d0
	rts

;--------------------------
loc_02e420:
	move.l d1,-(a7)
	move.l d0,-(a7)
	jsr RandomNumberGod
	move.l (a7)+,d1
	swap d1
	mulu.w d1,d0
	swap d0
	swap d1
	add.w d1,d0
	move.l (a7)+,d1
	subq.w #1,d0
	bmi.w loc_02e450
	move.l (a7)+,($308,a4)

loc_02e442:
	jsr loc_0226b4
	dbra d0,loc_02e442
	move.l ($308,a4),-(a7)

loc_02e450:
	clr.l ($308,a4)
	rts

;--------------------------
loc_02e456:
	cmpi.w #$80,($358,a4)
	blt.w loc_02e478
	cmpi.w #$a0,($358,a4)
	blt.w loc_02e46e
	st ($2fa,a4)

loc_02e46e:
	tst.b ($368,a4)
	bgt.b loc_02e486
	blt.b loc_02e48e
	bra.b loc_02e494

loc_02e478:
	st ($2fa,a4)
	tst.b ($368,a4)
	bgt.b loc_02e48e
	blt.b loc_02e486
	bra.b loc_02e494

loc_02e486:
	bclr #1,($2f6,a4)
	bra.b loc_02e494

loc_02e48e:
	bset #1,($2f6,a4)

loc_02e494:
	rts

;--------------------------
loc_02e496:
	sf d0
	movem.l d1,-(a7)
	cmpi.w #$40,($358,a4)
	blt.w loc_02e4ce
	tst.b ($363,a4)
	beq.w loc_02e4ce
	move.w ($370,a4),d1
	addi.w #$18,d1
	cmp.w ($23c,a4),d1
	blt.w loc_02e4ce
	move.w ($37c,a4),d1
	cmp.w ($34c,a4),d1
	bgt.w loc_02e4ce
	bset #4,d0

loc_02e4ce:
	cmpi.w #$70,($358,a4)
	blt.w loc_02e504
	tst.b ($367,a4)
	beq.w loc_02e504
	cmpi.b #1,($360,a4)
	beq.w loc_02e504
	cmpi.b #0,($36a,a4)
	beq.w loc_02e504
	move.w ($374,a4),d1
	cmp.w ($34e,a4),d1
	bgt.w loc_02e504
	bset #3,d0

loc_02e504:
	cmpi.w #$40,($340,a4)
	blt.w loc_02e548
	tst.b ($365,a4)
	bne.w loc_02e548
	tst.b ($361,a4)
	bne.w loc_02e548
	tst.b ($247,a4)
	beq.b loc_02e538
	cmpi.w #-$20,($36e,a4)
	blt.b loc_02e538
	move.w ($36e,a4),d1
	cmp.w ($37a,a4),d1
	bgt.w loc_02e548

loc_02e538:
	move.w ($378,a4),d1
	cmp.w ($350,a4),d1
	bgt.w loc_02e548
	bset #2,d0

loc_02e548:
	movem.l (a7)+,d1
	tst.b d0
	rts

;--------------------------
loc_02e550:
	move.l (a7)+,($300,a4)
	btst #4,d0
	beq.w loc_02e570
	bset #4,($35c,a4)
	bne.w loc_02e5a8
	movea.l ($1da,a4),a0
	movea.l ($10,a0),a0
	jmp (a0)

loc_02e570:
	btst #3,d0
	beq.w loc_02e58c
	bset #3,($35c,a4)
	bne.w loc_02e5a8
	movea.l ($1da,a4),a0
	movea.l ($c,a0),a0
	jmp (a0)

loc_02e58c:
	btst #2,d0
	beq.w loc_02e5a8
	bset #2,($35c,a4)
	bne.w loc_02e5a8
	movea.l ($1da,a4),a0
	movea.l (8,a0),a0
	jmp (a0)

loc_02e5a8:
	move.l ($300,a4),-(a7)
	clr.l ($300,a4)
	rts

;--------------------------
loc_02e5b2:
	move.l ($300,a4),d0
	beq.w loc_02e5c2
	clr.l ($300,a4)
	move.l d0,-(a7)
	rts

loc_02e5c2:
	bra.w loc_02e5c6

loc_02e5c6:
	clr.l ($300,a4)
	clr.l ($304,a4)
	clr.l ($308,a4)
	clr.b ($35c,a4)
	tst.b ($35d,a4)
	beq.w loc_02e5e4
	jsr loc_0226b4

loc_02e5e4:
	st ($35d,a4)
	cmpi.w #$1e,(-$3da,a5)
	ble.w loc_02e5fc
	cmpi.w #$a00,($1f2,a4)
	blt.w loc_02e606

loc_02e5fc:
	movea.l ($1da,a4),a0
	movea.l (4,a0),a0
	jmp (a0)

loc_02e606:
	movea.l ($1da,a4),a0
	movea.l (0,a0),a0
	jmp (a0)

loc_02e610:
	move.w (a0)+,d0
	btst #4,(-$7f84,a5)
	beq.b loc_02e63a
	cmpi.w #$73,(-$36c,a5)
	bcc.b loc_02e63a
	movem.l a0,-(a7)
	move.w (-$36c,a5),d0
	add.w d0,d0
	lea loc_0906c0,a0
	move.w (a0,d0.w),d0
	movem.l (a7)+,a0

loc_02e63a:
	movem.l d0-d1,-(a7)
	jsr loc_02de10
	movem.l (a7)+,d0-d1
	bgt.b loc_02e656
	tst.b (0,a4)
	bmi.w loc_02e66a
	bra.w loc_02e65e

loc_02e656:
	tst.b ($24,a4)
	bmi.w loc_02e66a

loc_02e65e:
	move.w d0,(-$368,a5)
	move.w #2,(-$366,a5)
	rts

loc_02e66a:
	move.w d0,(-$364,a5)
	move.w #2,(-$362,a5)
	rts

;--------------------------
loc_02e676:
	move.w (a0)+,d0
	jmp loc_02301a

;--------------------------
loc_02e67e:
	move.w (a0)+,d0
	cmpi.w #2,(-$42be,a5)
	bgt.w loc_02e6ee
	btst #4,(-$7f84,a5)
	beq.b loc_02e6b2
	cmpi.w #$73,(-$36c,a5)
	bcc.b loc_02e6b2
	movem.l a0,-(a7)
	move.w (-$36c,a5),d0
	add.w d0,d0
	lea loc_0906c0,a0
	move.w (a0,d0.w),d0
	movem.l (a7)+,a0

loc_02e6b2:
	movem.l d0-d1,-(a7)
	jsr loc_02de10
	movem.l (a7)+,d0-d1
	bgt.b loc_02e6ce
	tst.b (0,a4)
	bmi.w loc_02e6e2
	bra.w loc_02e6d6

loc_02e6ce:
	tst.b ($24,a4)
	bmi.w loc_02e6e2

loc_02e6d6:
	move.w d0,(-$368,a5)
	move.w #2,(-$366,a5)
	rts

loc_02e6e2:
	move.w d0,(-$364,a5)
	move.w #2,(-$362,a5)
	rts

loc_02e6ee:
	rts

;--------------------------
loc_02e6f0:
	move.w (a0)+,d0
	jmp loc_023026

;--------------------------
loc_02e6f8:
	jsr loc_02de10
	bgt.b loc_02e706
	move.w (a0)+,($2ec,a4)
	bra.b loc_02e70a

loc_02e706:
	move.w (a0)+,($5e,a4)

loc_02e70a:
	rts

;--------------------------
loc_02e70c:
	jsr loc_02de10
	bgt.b loc_02e732
	move.w (a0)+,d0
	tst.b ($208,a4)
	bpl.b loc_02e71e
	neg.w d0

loc_02e71e:
	add.w d0,($20e,a4)
	add.w d0,($30c,a4)
	move.w (a0)+,d0
	add.w d0,($212,a4)
	add.w d0,($310,a4)
	bra.b loc_02e744

loc_02e732:
	move.w (a0)+,d2
	move.w (a0)+,d3
	swap d2
	swap d3
	clr.w d2
	clr.w d3
	jsr loc_0282ea

loc_02e744:
	rts

;--------------------------
loc_02e746:
	jsr loc_02de10
	bgt.b loc_02e758
	move.l (a0)+,($216,a4)
	move.l (a0)+,($21a,a4)
	rts

loc_02e758:
	move.l (a0)+,($36,a4)
	move.l (a0)+,($3a,a4)
	rts

;--------------------------
loc_02e762:
	move.l (a0)+,d2
	movem.l a0,-(a7)
	movem.l d1-d2,-(a7)
	move.w #$24,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02e7c0
	move.l d2,($66,a0)
	tst.b ($26,a0)
	beq.b loc_02e7a8
	move.w ($2ee,a4),($60,a0)
	move.l ($20e,a4),($2e,a0)
	move.l ($212,a4),($32,a0)
	move.b ($208,a4),($2c,a0)
	bra.b loc_02e7c0

loc_02e7a8:
	move.w ($60,a4),($60,a0)
	move.l ($2e,a4),($2e,a0)
	move.l ($32,a4),($32,a0)
	move.b ($2c,a4),($2c,a0)

loc_02e7c0:
	clr.l ($36,a0)
	clr.l ($3a,a0)
	movem.l (a7)+,a0
	rts

;--------------------------
loc_02e7ce:
	move.l (a0)+,d2
	movem.l a0,-(a7)
	movem.l d1-d2,-(a7)
	move.w #$1f,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02e80e
	move.l d2,($66,a0)
	tst.b ($26,a0)
	beq.b loc_02e802
	move.w ($2ce,a4),($6a,a0)
	bra.b loc_02e80e

loc_02e802:
	move.w ($46,a4),($6a,a0)
	move.w (2,a4),($6c,a0)

loc_02e80e:
	movem.l (a7)+,a0
	rts

;--------------------------
loc_02e814:
	move.l (a0)+,d2
	movem.l a0,-(a7)
	movem.l d1-d2,-(a7)
	move.w #$20,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02e854
	move.l d2,($66,a0)
	tst.b ($26,a0)
	beq.b loc_02e848
	move.w ($2ce,a4),($6a,a0)
	bra.b loc_02e854

loc_02e848:
	move.w ($46,a4),($6a,a0)
	move.w (2,a4),($6c,a0)

loc_02e854:
	movem.l (a7)+,a0
	rts

;--------------------------
loc_02e85a:
	move.l (a0)+,d2
	movem.l a0,-(a7)
	movem.l d1-d2,-(a7)
	move.w #$23,d2
	move.w #$20,d0
	move.w #6,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02e89a
	move.l d2,($66,a0)
	tst.b ($26,a0)
	beq.b loc_02e88e
	move.w ($2ce,a4),($6a,a0)
	bra.b loc_02e89a

loc_02e88e:
	move.w ($46,a4),($6a,a0)
	move.w (2,a4),($6c,a0)

loc_02e89a:
	movem.l (a7)+,a0
	rts

;--------------------------
loc_02e8a0:
	move.l (a0)+,d2
	move.w (a0)+,d3
	movem.l a0,-(a7)
	movem.l d1-d2,-(a7)
	move.w #$21,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02e8e6
	move.l d2,($66,a0)
	move.w d3,($6e,a0)
	tst.b ($26,a0)
	beq.b loc_02e8da
	move.w ($2ce,a4),($6a,a0)
	bra.b loc_02e8e6

loc_02e8da:
	move.w ($46,a4),($6a,a0)
	move.w (2,a4),($6c,a0)

loc_02e8e6:
	movem.l (a7)+,a0
	rts 

;--------------------------
loc_02e8ec
	move.l (a0)+,d2
	movem.l a0,-(a7)
	movem.l d1-d2,-(a7)
	move.w #$22,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02e92c
	move.l d2,($66,a0)
	tst.b ($26,a0)
	beq.b loc_02e920
	move.w ($2ce,a4),($6a,a0)
	bra.b loc_02e92c

loc_02e920:
	move.w ($46,a4),($6a,a0)
	move.w (2,a4),($6c,a0)

loc_02e92c
	movem.l (a7)+,a0
	rts

;--------------------------
loc_02e932:
	move.w (a0)+,d0
	movem.l a0,-(a7)
	movem.l d2,-(a7)
	move.w d0,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	movem.l (a7)+,a0
	rts 

;--------------------------
loc_02e94e:
	move.w (a0)+,d0
	move.w (a0)+,d1
	movem.l a0,-(a7)
	movea.l a0,a1
	movem.l d2,-(a7)
	move.w d0,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.w loc_02e97e
	move.w d1,d0
	subq.w #1,d0
	bmi.w loc_02e97e
	lea ($66,a0),a0

loc_02e978:
	move.b (a1)+,(a0)+
	dbra d0,loc_02e978

loc_02e97e:
	movem.l (a7)+,a0
	addq.w #1,d1
	lsr.w #1,d1
	add.w d1,d1
	adda.w d1,a0
	rts

;--------------------------
loc_02e98c:
	move.w (a0)+,d0
	move.w (a0)+,d1
	movem.l a0,-(a7)
	movea.l a0,a1
	movem.l d1-d2,-(a7)
	move.w d0,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.w loc_02e9c4
	move.w d1,d0
	subq.w #1,d0
	bmi.w loc_02e9c4
	lea ($66,a0),a0

loc_02e9be:
	move.b (a1)+,(a0)+
	dbra d0,loc_02e9be

loc_02e9c4:
	movem.l (a7)+,a0
	addq.w #1,d1
	lsr.w #1,d1
	add.w d1,d1
	adda.w d1,a0
	rts

;--------------------------
loc_02e9d2:
	move.l (a0)+,d2
	move.w (a0)+,d3
	movem.l a0,-(a7)
	movem.l d2,-(a7)
	move.w #$25,d2
	jsr loc_027a84
	movem.l (a7)+,d2
	bmi.b loc_02ea34
	move.l d2,($9c,a0)
	move.w d3,($66,a0)
	tst.b ($26,a0)
	beq.b loc_02ea16
	move.w ($2ce,a4),($6a,a0)
	move.l ($20e,a4),($2e,a0)
	move.l ($212,a4),($32,a0)
	move.b ($208,a4),($2c,a0)
	bra.b loc_02ea34

loc_02ea16:
	move.w ($46,a4),($6a,a0)
	move.w (2,a4),($6c,a0)
	move.b ($2c,a4),($2c,a0)
	move.l ($2e,a4),($2e,a0)
	move.l ($32,a4),($32,a0)

loc_02ea34:
	movem.l (a7)+,a0
	rts

;--------------------------
loc_02ea3a:
	move.w (a0)+,d1
	addq.w #1,a0
	move.b (a0)+,d0
	move.b d0,(a4,d1.w)
	rts 

;--------------------------
loc_02ea46:
	move.w (a0)+,d1
	move.w (a0)+,d0
	move.w d0,(a4,d1.w)
	rts

;--------------------------
loc_02ea50:
	move.w (a0)+,d1
	move.l (a0)+,d0
	move.l d0,(a4,d1.w)
	rts

;--------------------------
loc_02ea5a:
	move.w (a0)+,d0
	subq.w #1,(a4,d0.w)
	bpl.w loc_02ea88
	jsr loc_02de10
	bgt.b loc_02ea7a
	clr.w ($2d6,a4)
	movea.l (a0),a0
	bset #1,($2e1,a4)
	rts

loc_02ea7a:
	clr.w ($4e,a4)
	movea.l (a0),a0
	bset #1,($53,a4)
	rts

loc_02ea88:
	addq.w #4,a0
	rts

;--------------------------
loc_02ea8c:
	jsr RandomNumberGod
	andi.w #$ff,d0
	cmp.w (a0)+,d0
	bcc.w loc_02eac0
	jsr loc_02de10
	bgt.b loc_02eab2
	clr.w ($2d6,a4)
	movea.l (a0),a0
	bset #1,($2e1,a4)
	rts

loc_02eab2:
	clr.w ($4e,a4)
	movea.l (a0),a0
	bset #1,($53,a4)
	rts

loc_02eac0:
	addq.w #4,a0
	rts

;--------------------------
loc_02eac4:
	movea.l (a0)+,a1
	movem.l a0,-(a7)
	jsr (a1)
	movem.l (a7)+,a0
	bne.w loc_02eaf8
	jsr loc_02de10
	bgt.b loc_02eaea
	clr.w ($2d6,a4)
	movea.l (a0),a0
	bset #1,($2e1,a4)
	rts

loc_02eaea:
	clr.w ($4e,a4)
	movea.l (a0),a0
	bset #1,($53,a4)
	rts

loc_02eaf8
	addq.w #4,a0
	rts

;--------------------------
loc_02eafc:
	clr.l ($2a,a4)
	rts

;--------------------------
loc_02eb02:
	addq.w #1,a0
	move.b (a0)+,($2b4,a4)
	move.w (a0)+,($2b6,a4)
	rts

;--------------------------
loc_02eb0e:
	move.w (a0)+,($29c,a4)
	move.w (a0)+,($29e,a4)
	move.w (a0)+,($2a0,a4)
	rts

;--------------------------
loc_02eb1c:
	move.w (a0)+,($29c,a3)
	move.w (a0)+,($29e,a3)
	move.w (a0)+,($2a0,a3)
	rts

;--------------------------
loc_02eb2a:
	move.b #1,($24b,a4)
	clr.w ($2bc,a4)
	rts

;--------------------------
loc_02eb36:
	move.w (a0)+,d2
	move.w (a0)+,d3
	move.w d2,($282,a4)
	move.w d2,($284,a4)
	move.w d3,($27e,a4)
	move.w d3,($280,a4)
	rts

;--------------------------
loc_02eb4c:
	move.w (a0)+,($27e,a4)
	move.w (a0)+,($280,a4)
	move.w (a0)+,($282,a4)
	move.w (a0)+,($284,a4)
	rts

;--------------------------
loc_02eb5e:
	movem.l a0,-(a7)
	jsr loc_02ee5a
	movem.l (a7)+,a0
	rts

;--------------------------
loc_02eb6e:
	movem.l a0,-(a7)
	jsr loc_02eed2
	movem.l (a7)+,a0
	rts

;--------------------------
loc_02eb7e:
	movem.l a0,-(a7)
	jsr loc_02f01a
	btst #5,($25e,a4)
	bne.b loc_02eb9c
	move.w #$1893,d0
	jsr loc_02301a
	bra.b loc_02eba6

loc_02eb9c:
	move.w #$1894,d0
	jsr loc_02301a

loc_02eba6:
	movem.l (a7)+,a0
	rts

;--------------------------
loc_02ebac:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	rts

;--------------------------
loc_02ebb6:
	jmp loc_028f50

;--------------------------
loc_02ebbc:
	not.b ($208,a4)
	rts

;--------------------------
loc_02ebc2:
	move.w (a0)+,d0
	cmp.w (-$45e2,a5),d0
	ble.b loc_02ebce
	move.w d0,(-$45e2,a5)

loc_02ebce:
	rts

;--------------------------
loc_02ebd0:
	move.w (a0)+,($22e,a4)
	move.w (a0)+,($230,a4)
	rts

;--------------------------
loc_02ebda:
	clr.w ($22e,a4)
	clr.w ($230,a4)
	rts

;--------------------------
loc_02ebe4:
	move.w #-1,($22e,a4)
	move.w #-1,($230,a4)
	rts

;--------------------------
loc_02ebf2:
	move.w (a0)+,d0
	jsr loc_023178
	rts

;--------------------------
loc_02ebfc
	jsr loc_023294
	move.w (a0)+,d0
	jsr loc_02301a
	rts

;--------------------------
loc_02ec0c:
	jsr loc_023294
	rts

;--------------------------
loc_02ec14:
	move.l (a0)+,($216,a4)
	move.l (a0)+,($21a,a4)

loc_02ec1c:
	jsr loc_0226cc
	btst #1,($246,a4)
	bne.w loc_02ec3a
	movea.l ($1ea,a4),a0
	move.l ($18,a0),d0
	add.l d0,($21a,a4)
	bra.b loc_02ec1c

loc_02ec3a:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	clr.l ($2a,a4)
	rts

;--------------------------
loc_02ec48:
	move.l (a0)+,($216,a4)
	move.l (a0)+,($21a,a4)
	move.l (a0)+,d5

loc_02ec52:
	jsr loc_0226cc
	btst #1,($246,a4)
	bne.w loc_02ec68
	add.l d5,($21a,a4)
	bra.b loc_02ec52

loc_02ec68:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	clr.l ($2a,a4)
	rts

;--------------------------
loc_02ec76:
	move.l (a0)+,($216,a4)
	move.l (a0)+,($21a,a4)
	move.l (a0)+,d5
	move.l (a0)+,d6


loc_02ec82:
	jsr loc_0226cc
	btst #1,($246,a4)
	bne.w loc_02ec9c
	add.l d5,($216,a4)
	add.l d6,($21a,a4)
	bra.b loc_02ec82

loc_02ec9c:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	clr.l ($2a,a4)
	rts

;--------------------------
loc_02ecaa:
	move.l (a0)+,d4
	move.l (a0)+,d5
	movea.l (a0)+,a1
	add.l d4,($216,a4)
	add.l d5,($21a,a4)

loc_02ecb8:
	jsr loc_0226cc
	btst #1,($246,a4)
	bne.w loc_02ecd2
	add.l d4,($216,a4)
	add.l d5,($21a,a4)
	bra.b loc_02ecb8

loc_02ecd2:
	clr.l ($216,a4)
	clr.l ($21a,a4)
	clr.l ($2a,a4)
	movea.l a1,a0
	clr.w d0
	jsr loc_0226f0
	rts

;--------------------------
loc_02ecea:
	move.l (a0)+,($216,a4)
	move.l (a0)+,d0

loc_02ecf0:
	jsr loc_0226cc
	tst.l ($216,a4)
	beq.w loc_02ed12
	smi d1
	add.l d0,($216,a4)
	tst.l ($216,a4)
	smi d2
	cmp.b d1,d2
	beq.b loc_02ecf0
	clr.l ($216,a4)

loc_02ed12:
	clr.l ($2a,a4)
	rts

;--------------------------
loc_02ed18:
	move.w (a0)+,d7
	move.w (a0)+,($2ec,a4)
	move.b (a0)+,d2
	move.b (a0)+,d3
	subq.w #1,d7
	bmi.w loc_02ed3a

loc_02ed28:
	jsr loc_0226cc
	add.b d2,($2ec,a4)
	add.b d3,($2ed,a4)
	dbra d7,loc_02ed28

loc_02ed3a:
	clr.l ($2a,a4)
	rts

;--------------------------
loc_02ed40:
	movem.l d2,-(a7)
	tst.b (0,a4)
	smi d0
	ext.w d0
	neg.w d0
	addi.w #$26,d0
	move.w #$11,d2
	jsr loc_027c54
	movem.l (a7)+,d2
	movem.l d1-d2,-(a7)
	move.w #$1d,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02ed9a
	move.w ($236,a4),d0
	move.b d0,($66,a0)
	move.b #0,($67,a0)
	move.b #$28,($68,a0)
	move.b #-$20,($69,a0)
	st ($6a,a0)

loc_02ed9a:
	movem.l d1-d2,-(a7)
	move.w #$1d,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02edd6
	move.w ($236,a4),d0
	neg.w d0
	move.b d0,($66,a0)
	move.b #0,($67,a0)
	move.b #-$28,($68,a0)
	move.b #-$20,($69,a0)
	st ($6a,a0)

loc_02edd6:
	rts

;--------------------------
loc_02edd8:
	movem.l d1-d2,-(a7)
	move.w #$12,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.w loc_02ee0a
	move.l #$40000,($36,a0)
	move.l #-$c000,($3a,a0)
	move.b d1,($66,a0)

loc_02ee0a:
	movem.l d1-d2,-(a7)
	move.w #$12,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.w loc_02ee3c
	move.l #-$40000,($36,a0)
	move.l #-$c000,($3a,a0)
	move.b d1,($66,a0)

loc_02ee3c:
	rts

;--------------------------
loc_02ee3e:
	movem.l d1-d2,-(a7)
	move.w #$15,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	rts

;--------------------------
loc_02ee5a:
	btst #2,($25e,a4)
	bne.w loc_02f4c8
	btst #4,(-$7f84,a5)
	beq.b loc_02ee8c
	move.w (-$36a,a5),d0
	cmpi.w #$73,d0
	bcc.b loc_02ee8c
	add.w d0,d0
	lea loc_0906c0,a0
	move.w (a0,d0.w),d0
	jsr loc_02301a
	bra.w loc_02eece

loc_02ee8c:
	tst.w ($26e,a4)
	beq.b loc_02ee9e
	move.w ($26e,a4),d0
	jsr loc_02301a
	bra.b loc_02eece

loc_02ee9e:
	move.b ($25f,a4),d0
	andi.w #$18,d0
	asr.w #1,d0
	lea loc_02f4f6(pc),a0
	movea.l (a0,d0.w),a0
	move.b ($25f,a4),d0
	andi.w #7,d0
	btst #5,($25e,a4)
	beq.b loc_02eec2
	addq.w #8,d0

loc_02eec2:
	lsl.w #1,d0
	move.w (a0,d0.w),d0
	jsr loc_02301a

loc_02eece:
	bra.w loc_02eed2

;--------------------------
loc_02eed2:
	btst #2,($25e,a4)
	bne.w loc_02f4c8
	btst #4,($25f,a4)
	beq.b loc_02ef12
	bsr.w loc_02f4ca
	bcc.b loc_02ef12
	movem.l d2,-(a7)
	tst.b (0,a4)
	smi d0
	ext.w d0
	neg.w d0
	addi.w #$2a,d0
	move.w #5,d2
	jsr loc_027c54
	movem.l (a7)+,d2
	bmi.w loc_02ef12
	bsr.w loc_02f456

loc_02ef12:
	movem.l d2,-(a7)
	bsr.w loc_02f420
	addi.w #$2e,d0
	move.w #4,d2
	jsr loc_027c54
	movem.l (a7)+,d2
	bmi.w loc_02f4c8
	bra.w loc_02f456

;--------------------------
loc_02ef34:
	lea loc_02f566(pc),a0
	move.b ($25f,a4),d0
	andi.w #7,d0
	lsl.w #1,d0
	move.w (a0,d0.w),d0
	jsr loc_02301a
	btst #2,($25e,a4)
	bne.w loc_02f4c8
	movem.l d2,-(a7)
	bsr.w loc_02f420
	addi.w #$2e,d0
	move.w #6,d2
	jsr loc_027c54
	movem.l (a7)+,d2
	bmi.w loc_02f4c8
	bra.w loc_02f456

;--------------------------
loc_02ef78:
	lea loc_02f576(pc),a0
	move.b ($25f,a4),d0
	andi.w #7,d0
	lsl.w #1,d0
	move.w (a0,d0.w),d0
	jsr loc_02301a
	btst #2,($25e,a4)
	bne.w loc_02f4c8
	movem.l d2,-(a7)
	bsr.w loc_02f420
	addi.w #$2e,d0
	move.w #8,d2
	jsr loc_027c54
	movem.l (a7)+,d2
	bmi.w loc_02f4c8
	bra.w loc_02f456

;--------------------------
loc_02efbc:
	move.w #$e0,d0
	jsr loc_02301a
	btst #2,($25e,a4)
	bne.w loc_02f4c8
	movem.l d2,-(a7)
	tst.b (0,a4)
	smi d0
	ext.w d0
	neg.w d0
	addi.w #$2a,d0
	move.w #7,d2
	jsr loc_027c54
	movem.l (a7)+,d2
	bmi.w loc_02f4c8
	bra.w loc_02f456

;--------------------------
loc_02eff8:
	movem.l d2,-(a7)
	tst.b (0,a4)
	smi d0
	ext.w d0
	neg.w d0
	addi.w #$26,d0
	move.w #$10,d2
	jsr loc_027c54
	movem.l (a7)+,d2
	rts

;--------------------------
loc_02f01a:
	movem.l d1-d2,-(a7)
	move.w #$14,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bsr.w loc_02f456
	rts

;--------------------------
loc_02f03a:
	movem.l d1-d3,-(a7)
	move.w ($238,a4),d3
	add.w ($23a,a4),d3
	swap d3
	asr.l #1,d3
	add.l ($212,a4),d3
	tst.b d4
	bne.b loc_02f062
	move.w (-$45d6,a5),d2
	addi.w #$c,d2
	swap d2
	move.w #$8000,d2
	bra.b loc_02f070

loc_02f062:
	move.w (-$45d4,a5),d2
	subi.w #$c,d2
	swap d2
	move.w #$8000,d2

loc_02f070:
	movem.l d1-d2,-(a7)
	move.w #$13,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02f0b0
	move.b d4,($2c,a0)
	move.l d2,($2e,a0)
	move.l d3,($32,a0)
	addi.l #-$180000,($32,a0)
	move.l #$c000,($36,a0)
	move.l #-$28000,($3a,a0)

loc_02f0b0:
	movem.l d1-d2,-(a7)
	move.w #$13,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02f0f0
	move.b d4,($2c,a0)
	move.l d2,($2e,a0)
	move.l d3,($32,a0)
	addi.l #$180000,($32,a0)
	move.l #$10000,($36,a0)
	move.l #$20000,($3a,a0)

loc_02f0f0:
	movem.l (a7)+,d1-d3
	rts

;--------------------------
loc_02f0f6:
	move.w #$1868,d0
	jsr loc_02301a
	movem.l d2,-(a7)
	tst.b (0,a4)
	smi d0
	ext.w d0
	neg.w d0
	addi.w #$26,d0
	move.w #$f,d2
	jsr loc_027c54
	movem.l (a7)+,d2
	bmi.w loc_02f12c
	move.w d2,($66,a0)
	move.w d3,($68,a0)

loc_02f12c:
	rts
	rts

;--------------------------
loc_02f130:
	movem.l d0/a0,-(a7)
	movem.l d2,-(a7)
	tst.b (0,a4)
	smi d0
	ext.w d0
	neg.w d0
	addi.w #$28,d0
	move.w #$17,d2
	jsr loc_027c54
	movem.l (a7)+,d2
	movem.l (a7)+,d0/a0
	rts

;--------------------------
loc_02f15a:
	movem.l d1-d2,-(a7)
	move.w #$1b,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02f17a
	move.b d1,($66,a0)

loc_02f17a:
	rts

;--------------------------
loc_02f17c:
	tst.b (0,a4)
	smi d0
	ext.w d0
	neg.w d0
	addi.w #$2c,d0
	jsr loc_027d28
	cmpi.w #$18,d2
	beq.w loc_02f24c
	movem.l d2,-(a7)
	tst.b (0,a4)
	smi d0
	ext.w d0
	neg.w d0
	addi.w #$2c,d0
	move.w #$18,d2
	jsr loc_027c54
	movem.l (a7)+,d2
	bra.w loc_02f23c

;--------------------------
loc_02f1bc:
	tst.b (0,a4)
	smi d0
	ext.w d0
	neg.w d0
	addi.w #$2c,d0
	jsr loc_027d28
	cmpi.w #$19,d2
	beq.w loc_02f24c
	movem.l d2,-(a7)
	tst.b (0,a4)
	smi d0
	ext.w d0
	neg.w d0
	addi.w #$2c,d0
	move.w #$19,d2
	jsr loc_027c54
	movem.l (a7)+,d2
	bra.w loc_02f23c

;--------------------------
loc_02f1fc:
	tst.b (0,a4)
	smi d0
	ext.w d0
	neg.w d0
	addi.w #$2c,d0
	jsr loc_027d28
	cmpi.w #$1a,d2
	beq.w loc_02f24c
	movem.l d2,-(a7)
	tst.b (0,a4)
	smi d0
	ext.w d0
	neg.w d0
	addi.w #$2c,d0
	move.w #$1a,d2
	jsr loc_027c54
	movem.l (a7)+,d2
	bra.w loc_02f23c

loc_02f23c:
	move.w d4,($66,a0)
	move.w d5,($68,a0)
	move.w d6,($6a,a0)
	move.w d7,($6c,a0)

loc_02f24c:
	move.w ($2ce,a4),($6e,a0)
	rts

;--------------------------
loc_02f254:
	move.w (a0)+,d2
	move.w (a0)+,d3
	movem.l a0-a1,-(a7)
	bsr.w loc_02f38c
	bne.w loc_02f28e
	movem.l d1-d2,-(a7)
	move.w #9,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02f28e
	move.w d2,($66,a0)
	move.w d3,($68,a0)
	move.w ($2ce,a4),($6a,a0)

loc_02f28e:
	movem.l (a7)+,a0-a1
	rts

;--------------------------
loc_02f294:
	move.w (a0)+,d2
	move.w (a0)+,d3
	movem.l a0-a1,-(a7)
	bsr.w loc_02f38c
	bne.w loc_02f2ce
	movem.l d1-d2,-(a7)
	move.w #$a,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02f2ce
	move.w d2,($66,a0)
	move.w d3,($68,a0)
	move.w ($2ce,a4),($6a,a0)

loc_02f2ce:
	movem.l (a7)+,a0-a1
	rts

;--------------------------
loc_02f2d4:
	move.w (a0)+,d2
	move.w (a0)+,d3
	movem.l a0-a1,-(a7)
	bsr.w loc_02f38c
	bne.w loc_02f30e
	movem.l d1-d2,-(a7)
	move.w #$b,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02f30e
	move.w d2,($66,a0)
	move.w d3,($68,a0)
	move.w ($2ce,a4),($6a,a0)

loc_02f30e:
	movem.l (a7)+,a0-a1
	rts

;--------------------------
loc_02f314:
	move.w (a0)+,d2
	move.w (a0)+,d3
	movem.l a0-a1,-(a7)
	bsr.w loc_02f3be
	bcc.w loc_02f34e
	movem.l d1-d2,-(a7)
	move.w #$c,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02f34e
	move.w d2,($66,a0)
	move.w d3,($68,a0)
	move.w ($2ce,a4),($6a,a0)

loc_02f34e:
	movem.l (a7)+,a0-a1
	rts

;--------------------------
loc_02f354:
	move.w (a0)+,d2
	move.w (a0)+,d3
	movem.l a0-a1,-(a7)
	movem.l d1-d2,-(a7)
	move.w #$c,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02f386
	move.w d2,($66,a0)
	move.w d3,($68,a0)
	move.w ($2ce,a4),($6a,a0)

loc_02f386:
	movem.l (a7)+,a0-a1
	rts

;--------------------------
loc_02f38c:
	btst #4,($25f,a4)
	beq.b loc_02f396
	bra.b loc_02f3a2

loc_02f396:
	bsr.w loc_02f3a8
	bcc.b loc_02f3a2
	sf d0
	tst.b d0
	rts

loc_02f3a2:
	st d0
	tst.b d0
	rts

loc_02f3a8:
	btst #5,($25e,a4)
	bne.b loc_02f3b6
	lea loc_02f5c6(pc),a0
	bra.b loc_02f3ba

loc_02f3b6:
	lea loc_02f5d6(pc),a0

loc_02f3ba:
	bra.w loc_02f4dc

;--------------------------
loc_02f3be:
	btst #6,($249,a4)
	bne.w loc_02f3de
	btst #5,($25e,a4)
	bne.b loc_02f3d6
	lea loc_02f5a6(pc),a0
	bra.b loc_02f3da

loc_02f3d6:
	lea loc_02f5b6(pc),a0

loc_02f3da:
	bra.w loc_02f4dc

loc_02f3de:
	clr.w d0
	rts

;--------------------------
loc_02f3e2:
	move.w (a0)+,d2
	move.w (a0)+,d3
	move.w (a0)+,d4
	movem.l a0-a1,-(a7)
	movem.l d1-d2,-(a7)
	move.w #$1e,d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_02f41a
	move.w d2,($66,a0)
	move.w d3,($68,a0)
	move.w d4,($6a,a0)
	move.w ($2ce,a4),($6c,a0)

loc_02f41a:
	movem.l (a7)+,a0-a1
	rts

;--------------------------
loc_02f420:
	tst.b (-$3dd,a5)
	bne.w loc_02f43e
	addq.w #1,(-$36e,a5)
	cmpi.w #2,(-$36e,a5)
	bcs.b loc_02f438
	clr.w (-$36e,a5)

loc_02f438:
	move.w (-$36e,a5),d0
	rts

loc_02f43e:
	clr.w (-$36e,a5)
	movem.l d0,-(a7)
	move.w #$2f,d0
	jsr loc_027d48
	movem.l (a7)+,d0
	bra.b loc_02f438

;--------------------------
loc_02f456:
	move.w d1,-(a7)
	jsr RandomNumberGod
	andi.w #$7fff,d0
	move.w ($284,a4),d1
	sub.w ($282,a4),d1
	muls.w d1,d0
	add.l d0,d0
	swap d0
	add.w ($282,a4),d0
	tst.b ($208,a4)
	bpl.w loc_02f47e
	neg.w d0

loc_02f47e:
	move.w d0,($2e,a0)
	move.w #$8000,($30,a0)
	jsr RandomNumberGod
	andi.w #$7fff,d0
	move.w ($280,a4),d1
	sub.w ($27e,a4),d1
	muls.w d1,d0
	add.l d0,d0
	swap d0
	add.w ($27e,a4),d0
	move.w d0,($32,a0)
	move.w #$8000,($34,a0)
	move.w (a7)+,d1
	move.b ($270,a4),($2c,a0)
	move.b ($25e,a4),($66,a0)
	move.b ($25f,a4),($67,a0)
	move.w ($286,a4),($68,a0)

loc_02f4c8:
	rts

;--------------------------
loc_02f4ca:
	btst #5,($25e,a4)
	bne.b loc_02f4d8
	lea loc_02f586(pc),a0
	bra.b loc_02f4dc

loc_02f4d8:
	lea loc_02f596(pc),a0

loc_02f4dc:
	move.b ($25f,a4),d0
	andi.w #7,d0
	add.w d0,d0
	adda.w d0,a0
	jsr RandomNumberGod
	andi.w #$7fff,d0
	cmp.w (a0),d0
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_02f4f6:
	dc.l loc_02f506,loc_02f526,loc_02f546,loc_02f546

loc_02f506:
	dc.w $00cc,$00cc,$00cc,$00cc,$00c4,$00c4,$00c4,$00c4
	dc.w $00c4,$00c4,$00c4,$00c4,$00c4,$00c4,$00c4,$00c4

loc_02f526:
	dc.w $00cd,$00cd,$00cd,$00cd,$00c5,$00c5,$00c5,$00c5
	dc.w $00c5,$00c5,$00c5,$00c5,$00c5,$00c5,$00c5,$00c5

loc_02f546:
	dc.w $00dd,$00dd,$00dd,$00dd,$00f7,$00f7,$00f7,$00f7
	dc.w $00f8,$00f8,$00f8,$00f8,$00f8,$00f8,$00f8,$00f8


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_02f566:;Block Sound 1
	dc.w $00c7,$00c7,$00c7,$00c7,$00c7,$00c7,$00c7,$00c7

loc_02f576:;Block Sound 2
	dc.w $00c6,$00c6,$00c6,$00c6,$00c6,$00c6,$00c6,$00c6

loc_02f586:
	dc.w $1c71,$2000,$2492,$2aaa,$3333,$4000,$5555,$8000

loc_02f596:
	dc.w $2492,$2aaa,$3333,$4000,$5555,$8000,$8000,$8000

loc_02f5a6:
	dc.w $2000,$2492,$2aaa,$3333,$4000,$5555,$8000,$8000

loc_02f5b6:
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000

loc_02f5c6:
	dc.w $2000,$2492,$2aaa,$3333,$4000,$5555,$8000,$8000

loc_02f5d6:
	dc.w $36db,$4000,$4ccc,$6000,$6db6,$8000,$8000,$8000

;--------------------------
loc_02f5e6:
	move.w #$64,d0
	jsr loc_028368
	bmi.w loc_02f716

loc_02f5f4:
	movea.l ($6a,a4),a6
	tst.b (a6)
	beq.w loc_02f6e8
	movea.l ($28,a4),a3
	move.w ($238,a3),d4
	move.w ($23a,a3),d5
	move.w ($23c,a3),d6
	move.w ($23e,a3),d7
	tst.b ($208,a3)
	bpl.w loc_02f620
	neg.w d6
	neg.w d7
	exg d6,d7

loc_02f620:
	add.w ($212,a3),d4
	add.w ($212,a3),d5
	add.w ($20e,a3),d6
	add.w ($20e,a3),d7
	movea.l ($66,a4),a6
	move.w (a6),d2
	lsl.w #7,d2
	andi.w #$700,d2
	addi.w #$c000,d2
	lea (a2),a0
	move.w d6,(0,a0)
	move.w d4,(4,a0)
	move.b #0,d2
	bsr.w loc_02f71c
	lea ($14,a2),a0
	move.w d7,(0,a0)
	move.w d4,(4,a0)
	move.b #1,d2
	bsr.w loc_02f71c
	lea ($28,a2),a0
	move.w d6,(0,a0)
	move.w d5,(4,a0)
	move.b #2,d2
	bsr.w loc_02f71c
	lea ($3c,a2),a0
	move.w d7,(0,a0)
	move.w d5,(4,a0)
	move.b #3,d2
	bsr.w loc_02f71c
	lea ($50,a2),a0
	move.w ($20e,a3),(0,a0)
	move.w ($212,a3),(4,a0)
	move.b #0,d2
	move.w d2,($c,a0)
	clr.w ($8,a0)
	clr.w ($a,a0)
	clr.w ($e,a0)
	btst #0,($1,a6)
	beq.b loc_02f6c4
	move.l #loc_0ef91a,($10,a0)
	bra.b loc_02f6cc

loc_02f6c4:
	move.l #loc_0ef92a,($10,a0)

loc_02f6cc:
	move.w (a6),d0
	lsl.w #4,d0
	movem.l d0/a0/a4,-(a7)
	move.b d0,d0
	movea.l a0,a4
	movea.l #loc_004784,a0
	jsr loc_0040c2
	movem.l (a7)+,d0/a0/a4

loc_02f6e8:
	movem.l a2,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a2
	bra.w loc_02f5f4

loc_02f6fe:
	movem.l a2,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a2
	jsr loc_028426

loc_02f716:
	jmp loc_027de6

;--------------------------
loc_02f71c:
	move.w d2,($c,a0)
	clr.w (8,a0)
	clr.w ($a,a0)
	clr.w ($e,a0)
	btst #0,(1,a6)
	beq.b loc_02f73e
	move.l #loc_0ef90a,($10,a0)
	bra.b loc_02f746

loc_02f73e:
	move.l #loc_0ef912,($10,a0)

loc_02f746:
	movem.l d0/a0/a4,-(a7)
	move.b #0,d0
	movea.l a0,a4
	movea.l #loc_004784,a0
	jsr loc_0040c2
	movem.l (a7)+,d0/a0/a4

loc_02f760:
	rts

;--------------------------
loc_02f762:
	move.w #$140,d0
	jsr loc_028368
	bmi.w loc_02f8ee

loc_02f770:
	movea.l ($6e,a4),a6
	tst.b (a6)
	beq.w loc_02f8c0
	movea.l ($28,a4),a3
	movea.l ($66,a4),a6
	move.l (a6),d0
	beq.w loc_02f8c0
	movea.l d0,a0
	movea.l a2,a1
	move.w #7,d7

loc_02f790:
	movea.l ($6a,a4),a6
	move.w (a6),d1
	move.w ($20e,a3),d0
	eor.w d0,d1
	move.w ($212,a3),d0
	eor.w d0,d1
	btst #0,d1
	beq.b loc_02f7b6
	move.w #$80,($e,a1)
	move.w #$88,($22,a1)
	bra.b loc_02f7c2

loc_02f7b6:
	move.w #$88,($e,a1)
	move.w #$80,($22,a1)

loc_02f7c2:
	clr.w d0
	move.b (a0)+,d0
	beq.w loc_02f8c0
	tst.b (-$3e4,a5)
	bne.b loc_02f7de
	not.b d0
	or.b ($278,a3),d0
	not.b d0
	bne.b loc_02f7de
	bra.w loc_02f8b6

loc_02f7de:
	move.b #$18,d6
	move.w #0,d1
	btst d1,d0
	bne.w loc_02f844
	move.b #$1a,d6
	move.w #1,d1
	btst d1,d0
	bne.w loc_02f844
	movea.l ($6a,a4),a6
	btst #0,(1,a6)
	beq.b loc_02f824
	move.b #$1c,d6
	move.w #2,d1
	btst d1,d0
	bne.w loc_02f844
	move.b #$1e,d6
	move.w #3,d1
	btst d1,d0
	bne.w loc_02f844
	bra.b loc_02f840

loc_02f824:
	move.b #$1c,d6
	move.w #3,d1
	btst d1,d0
	bne.w loc_02f844
	move.b #$1e,d6
	move.w #2,d1
	btst d1,d0
	bne.w loc_02f844

loc_02f840:
	bra.w loc_02f848

loc_02f844:
	bsr.w loc_02f8f4

loc_02f848:
	lea ($14,a1),a1
	movea.l ($6a,a4),a6
	btst #0,(1,a6)
	beq.b loc_02f876
	move.b #$18,d6
	move.w #$6,d1
	btst d1,d0
	bne.w loc_02f8b2
	move.b #$1a,d6
	move.w #7,d1
	btst d1,d0
	bne.w loc_02f8b2
	bra.b loc_02f892

loc_02f876:
	move.b #$18,d6
	move.w #7,d1
	btst d1,d0
	bne.w loc_02f8b2
	move.b #$1a,d6
	move.w #6,d1
	btst d1,d0
	bne.w loc_02f8b2

loc_02f892:
	move.b #$1c,d6
	move.w #5,d1
	btst d1,d0
	bne.w loc_02f8b2
	move.b #$1e,d6
	move.w #4,d1
	btst d1,d0
	bne.w loc_02f8b2
	bra.w loc_02f8b6

loc_02f8b2:
	bsr.w loc_02f8f4

loc_02f8b6:
	addq.w #4,a0
	lea ($14,a1),a1
	dbra d7,loc_02f790

loc_02f8c0:
	movem.l a2,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a2
	bra.w loc_02f770

loc_02f8d6:
	movem.l a2,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a2
	jsr loc_028426

loc_02f8ee:
	jmp loc_027de6

;--------------------------
loc_02f8f4
	movem.l d0/d7/a0-a1/a4,-(a7)
	move.w d1,d0
	add.w d0,d0
	lea loc_02f95e(pc),a6
	move.w (a6,d0.w),($c,a1)
	move.b (a0)+,d2
	ext.w d2
	add.w d2,d2
	move.b (a0)+,d3
	ext.w d3
	add.w d3,d3
	sub.w d2,d3
	move.b (a0)+,d4
	ext.w d4
	add.w d4,d4
	move.b (a0)+,d5
	ext.w d5
	add.w d5,d5
	sub.w d4,d5
	tst.b ($208,a3)
	bpl.b loc_02f92c
	neg.w d4
	sub.w d5,d4

loc_02f92c:
	move.l ($20e,a3),(0,a1)
	move.l ($212,a3),(4,a1)
	add.w d4,(0,a1)
	add.w d2,(4,a1)
	move.w d5,(8,a1)
	move.w d3,($a,a1)
	movea.l a1,a4
	move.b d6,d0
	movea.l #loc_004ffa,a0
	jsr loc_0040c2
	movem.l (a7)+,d0/d7/a0-a1/a4
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_02f95e:
	dc.w $c400,$c200,$c500,$c300,$cf00,$c700,$c600,$c100

;--------------------------
loc_02f96e:
	bsr.w loc_030ad0
	btst #5,($66,a4)
	bne.b loc_02f986
	move.b #-$2d,($60,a4)
	lea loc_030b04(pc),a0
	bra.b loc_02f9b8

loc_02f986:
	btst #7,($67,a4)
	bne.b loc_02f99a
	move.b #-$2c,($60,a4)
	lea loc_030b24(pc),a0
	bra.b loc_02f9b8

loc_02f99a:
	lea loc_030af2(pc),a0
	move.w ($68,a4),d0
	subq.w #1,d0
	cmpi.w #9,d0
	bcs.b loc_02f9ae
	move.w #9,d0

loc_02f9ae:
	move.b (a0,d0.w),($60,a4)
	lea loc_030b44(pc),a0

loc_02f9b8:
	move.b ($67,a4),d0
	andi.w #7,d0
	lsl.w #2,d0
	movea.l (a0,d0.w),a0
	clr.w d0
	jsr loc_027e70
	clr.w ($6a,a4)

loc_02f9d2:
	cmpi.w #$14,($68,a4)
	blt.w loc_02f9ea
	lea loc_030afc(pc),a0
	move.w ($6a,a4),d0
	move.b (a0,d0.w),($60,a4)

loc_02f9ea:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027ea4
	btst #2,($53,a4)
	bne.w loc_02fa1c
	addq.w #1,($6a,a4)
	andi.w #7,($6a,a4)
	bra.b loc_02f9d2

loc_02fa1c
	jmp loc_027de6

;--------------------------
loc_02fa22:
	bsr.w loc_030ad0
	move.b #-$2f,($60,a4)
	clr.l ($36,a4)
	clr.l ($3a,a4)
	lea loc_030b84(pc),a0
	move.b ($67,a4),d0
	andi.w #7,d0
	lsl.w #2,d0
	movea.l (a0,d0.w),a0
	clr.w d0
	jsr loc_027e70

loc_02fa4e:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027ea4
	btst #2,($53,a4)
	bne.w loc_02fa76
	bra.b loc_02fa4e

loc_02fa76:
	jmp loc_027de6

loc_02fa7c:
	bsr.w loc_030ad0
	move.b #-$2f,($60,a4)
	clr.l ($36,a4)
	clr.l ($3a,a4)
	lea loc_030b64(pc),a0
	move.b ($67,a4),d0
	andi.w #7,d0
	lsl.w #2,d0
	movea.l (a0,d0.w),a0
	clr.w d0
	jsr loc_027e70

loc_02faa8:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027ea4
	btst #2,($53,a4)
	bne.w loc_02fad0
	bra.b loc_02faa8

loc_02fad0:
	jmp loc_027de6

;--------------------------
loc_02fad6:
	bsr.w loc_030ad0
	clr.l ($36,a4)
	clr.l ($3a,a4)
	clr.w ($6a,a4)
	lea loc_030ba4(pc),a0
	move.b ($67,a4),d0
	andi.w #7,d0
	lsl.w #2,d0
	movea.l (a0,d0.w),a0
	clr.w d0
	jsr loc_027e70

loc_02fb00:
	lea loc_030afc(pc),a0
	move.w ($6a,a4),d0
	andi.w #7,d0
	move.b (a0,d0.w),($60,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027ea4
	btst #2,($53,a4)
	bne.w loc_02fb44
	addq.w #1,($6a,a4)
	andi.w #$f,($6a,a4)
	bra.b loc_02fb00

loc_02fb44:
	jmp loc_027de6

;--------------------------
loc_02fb4a:
	tst.b (-$7f86,a5)
	bne.w loc_02fbd4
	bsr.w loc_030ad0
	movea.l #loc_030f76,a0
	clr.w d0
	jsr loc_027e70
	move.l #$20000,($36,a4)
	move.l #-$10000,($3a,a4)
	clr.w ($6a,a4)
	clr.w ($5e,a4)

loc_02fb7c:
	lea loc_030f72(pc),a0
	move.w ($6a,a4),d0
	move.b (a0,d0.w),($60,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027e48
	jsr loc_027ea4
	btst #2,($53,a4)
	bne.w loc_02fbd4
	move.l ($36,a4),d0
	asr.l #3,d0
	sub.l d0,($36,a4)
	addi.l #$c00,($3a,a4)
	addq.w #1,($6a,a4)
	andi.w #3,($6a,a4)
	bra.b loc_02fb7c

loc_02fbd4:
	jmp loc_027de6

;--------------------------
loc_02fbda:
	movea.l ($28,a4),a3
	move.b ($208,a3),($2c,a4)
	move.w ($2ee,a3),($60,a4)
	move.w ($66,a4),d2
	swap d2
	clr.w d2
	move.w ($68,a4),d3
	swap d3
	clr.w d3
	tst.b ($2c,a4)
	beq.b loc_02fc02
	neg.l d2

loc_02fc02:
	move.l d2,($6c,a4)
	move.l d3,($70,a4)
	add.l ($20e,a3),d2
	move.l d2,($2e,a4)
	add.l ($212,a3),d3
	move.l d3,($32,a4)
	st ($76,a4)
	rts

;--------------------------
loc_02fc20:
	tst.b ($76,a4)
	beq.w loc_02fc64
	tst.b ($249,a3)
	beq.w loc_02fc60
	move.l ($6c,a4),($2e,a4)
	move.l ($70,a4),($32,a4)
	jsr loc_027e48
	move.l ($2e,a4),($6c,a4)
	move.l ($32,a4),($70,a4)
	move.l ($20e,a3),d0
	add.l d0,($2e,a4)
	move.l ($212,a3),d0
	add.l d0,($32,a4)
	rts

loc_02fc60:
	sf ($76,a4)

loc_02fc64:
	jsr loc_027e48
	rts

;--------------------------
loc_02fc6c:
	bsr.w loc_02fbda
	movea.l #loc_030fec,a0
	clr.w d0
	jsr loc_027e70

loc_02fc7e:
	tst.w ($2ba,a3)
	beq.b loc_02fca4
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	move.w ($6a,a4),d0
	cmp.w ($2ce,a3),d0
	bne.w loc_02fd34
	bra.b loc_02fc7e

loc_02fca4:
	lea loc_030fa8(pc),a0
	move.b ($25f,a4),d0
	andi.w #7,d0
	lsl.w #3,d0
	move.l (a0,d0.w),($36,a4)
	move.l (4,a0,d0.w),($3a,a4)
	clr.w ($74,a4)
	clr.w ($5e,a4)

loc_02fcc6:
	lea loc_030fe8(pc),a0
	move.w ($74,a4),d0
	move.b (a0,d0.w),($60,a4)
	bsr.w loc_02fc20
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	move.w ($6a,a4),d0
	cmp.w ($2ce,a3),d0
	bne.w loc_02fd34
	jsr loc_027ea4
	btst #2,($53,a4)
	bne.w loc_02fd34
	move.l ($36,a4),d0
	asr.l #3,d0
	sub.l d0,($36,a4)
	addi.l #$2000,($3a,a4)
	addq.w #1,($74,a4)
	andi.w #3,($74,a4)
	bra.b loc_02fcc6

loc_02fd34:
	jmp loc_027de6

;--------------------------
loc_02fd3a:
	bsr.w loc_02fbda
	movea.l #loc_031086,a0
	clr.w d0
	jsr loc_027e70

loc_02fd4c:
	tst.w ($2ba,a3)
	beq.b loc_02fd72
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	move.w ($6a,a4),d0
	cmp.w ($2ce,a3),d0
	bne.w loc_02fe02
	bra.b loc_02fd4c

loc_02fd72:
	lea loc_031042(pc),a0
	move.b ($25f,a4),d0
	andi.w #7,d0
	lsl.w #3,d0
	move.l (a0,d0.w),($36,a4)
	move.l (4,a0,d0.w),($3a,a4)
	clr.w ($74,a4)
	clr.w ($5e,a4)

loc_02fd94:
	lea loc_031082(pc),a0
	move.w ($74,a4),d0
	move.b (a0,d0.w),($60,a4)
	bsr.w loc_02fc20
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	move.w ($6a,a4),d0
	cmp.w ($2ce,a3),d0
	bne.w loc_02fe02
	jsr loc_027ea4
	btst #2,($53,a4)
	bne.w loc_02fe02
	move.l ($36,a4),d0
	asr.l #3,d0
	sub.l d0,($36,a4)
	addi.l #$2000,($3a,a4)
	addq.w #1,($74,a4)
	andi.w #3,($74,a4)
	bra.b loc_02fd94

loc_02fe02:
	jmp loc_027de6

;--------------------------
loc_02fe08:
	bsr.w loc_02fbda
	movea.l #loc_03112c,a0
	clr.w d0
	jsr loc_027e70

loc_02fe1a:
	tst.w ($2ba,a3)
	beq.b loc_02fe40
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	move.w ($6a,a4),d0
	cmp.w ($2ce,a3),d0
	bne.w loc_02fed0
	bra.b loc_02fe1a

loc_02fe40
	lea loc_0310e8(pc),a0
	move.b ($25f,a4),d0
	andi.w #7,d0
	lsl.w #3,d0
	move.l (a0,d0.w),($36,a4)
	move.l (4,a0,d0.w),($3a,a4)
	clr.w ($74,a4)
	clr.w ($5e,a4)

loc_02fe62:
	lea loc_031128(pc),a0
	move.w ($74,a4),d0
	move.b (a0,d0.w),($60,a4)
	bsr.w loc_02fc20
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	move.w ($6a,a4),d0
	cmp.w ($2ce,a3),d0
	bne.w loc_02fed0
	jsr loc_027ea4
	btst #2,($53,a4)
	bne.w loc_02fed0
	move.l ($36,a4),d0
	asr.l #3,d0
	sub.l d0,($36,a4)
	addi.l #$2000,($3a,a4)
	addq.w #1,($74,a4)
	andi.w #3,($74,a4)
	bra.b loc_02fe62

loc_02fed0:
	jmp loc_027de6

;--------------------------
loc_02fed6:
	bsr.w loc_02fbda
	movea.l #loc_03118e,a0
	clr.w d0
	jsr loc_027e70
	clr.w ($5e,a4)
	move.l #-$40000,($36,a4)
	move.l #-$8000,($3a,a4)
	move.b #-$2e,($60,a4)

loc_02ff02:
	bsr.w loc_02fc20
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	move.w ($6a,a4),d0
	cmp.w ($2ce,a3),d0
	bne.w loc_02ff5a
	jsr loc_027ea4
	btst #2,($53,a4)
	bne.w loc_02ff5a
	move.l ($36,a4),d0
	asr.l #3,d0
	sub.l d0,($36,a4)
	move.l ($3a,a4),d0
	asr.l #3,d0
	sub.l d0,($3a,a4)
	bra.b loc_02ff02

loc_02ff5a:
	jmp loc_027de6

;--------------------------
loc_02ff60:
	tst.b (-$388,a5)
	beq.w loc_02fff6
	move.w #$e0,d0
	jsr loc_028368
	bmi.w loc_02fff6
	jsr RandomNumberGod
	smi d0
	move.b d0,($2c,a4)
	tst.b ($66,a4)
	beq.w loc_02fffc
	move.w #-$2b00,($60,a4)
	move.l #$a00000,($2e,a4);hmmmm
	move.l #$700000,($2e,a4)
	movea.l #loc_031208,a0
	clr.w d0
	jsr loc_027e70
	move.w #7,d7
	movea.l a2,a0

loc_02ffb4:
	bsr.w loc_03006e
	lea ($1c,a0),a0
	dbra d7,loc_02ffb4


loc_02ffc0:
	movea.l a2,a0
	move.w #7,d7


loc_02ffc6:
	bsr.w loc_0300da
	lea ($1c,a0),a0
	dbra d7,loc_02ffc6
	movem.l a2-a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a2-a3
	jsr loc_027ea4
	tst.b (-$388,a5)
	bne.b loc_02ffc0
	jsr loc_028426

loc_02fff6:
	jmp loc_027de6

;--------------------------
loc_02fffc:
	move.w #-$3300,($60,a4)
	move.l #$a00000,($2e,a4)
	move.l #$700000,($2e,a4)
	movea.l #loc_031216,a0
	clr.w d0
	jsr loc_027e70
	move.w #7,d7
	movea.l a2,a0

loc_030026:
	bsr.w loc_030084
	lea ($1c,a0),a0
	dbra d7,loc_030026

loc_030032:
	movea.l a2,a0
	move.w #7,d7

loc_030038:
	bsr.w loc_0301ee
	lea ($1c,a0),a0
	dbra d7,loc_030038
	movem.l a2-a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a2-a3
	jsr loc_027ea4
	tst.b (-$388,a5)
	bne.b loc_030032
	jsr loc_028426
	jmp loc_027de6

;--------------------------
loc_03006e:
	clr.w ($14,a0)
	jsr RandomNumberGod
	andi.w #$7ff,d0
	move.w d0,($16,a0)
	bra.w loc_0300c4

loc_030084:
	jsr RandomNumberGod
	smi d0
	ext.w d0
	move.w d0,($14,a0)
	jsr RandomNumberGod
	andi.w #$3ff,d0
	move.w d0,($16,a0)
	bra.w loc_0300c4

loc_0300a4:
	jsr RandomNumberGod
	andi.w #$f,d0
	move.w d0,($14,a0)
	jsr RandomNumberGod
	andi.w #$ff,d0
	addi.w #$800,d0
	move.w d0,($16,a0)

loc_0300c4:
	jsr RandomNumberGod
	move.w d0,($18,a0)
	jsr RandomNumberGod
	move.w d0,($1a,a0)
	rts

;--------------------------
loc_0300da:
	subi.w #$80,($16,a0)
	bpl.b loc_0300e4
	bsr.b loc_0300a4

loc_0300e4:
	subq.w #1,($14,a0)
	bpl.w loc_0301a4
	clr.w ($14,a0)
	move.w ($16,a0),d0
	addi.w #$100,d0
	move.w ($18,a0),d2
	ext.l d2
	lsl.l #1,d2
	move.w ($1a,a0),d3
	ext.l d3
	lsl.l #1,d3
	divs.w d0,d2
	divs.w d0,d3
	addi.w #$a0,d2
	addi.w #$70,d3
	move.w d2,(0,a0)
	move.w d3,(4,a0)
	move.l #$10000,d1
	divu.w d0,d1
	subi.w #$f8,d1
	bmi.b loc_03012e
	clr.w d1
	bra.b loc_030140

loc_03012e:
	neg.w d1
	cmpi.w #$f0,d1
	bls.b loc_03013a
	move.w #$f0,d1

loc_03013a
	move.w d1,d0
	lsl.w #8,d0
	or.w d0,d1

loc_030140:
	move.w d1,($e,a0)
	clr.w (8,a0)
	clr.w ($a,a0)
	move.w ($60,a4),d0
	move.w ($5c,a4),d1
	eor.w d1,d0
	move.w d0,($c,a0)
	movem.l a0,-(a7)
	move.w (-$7fa2,a5),d0
	andi.w #7,d0
	lea loc_0301a6(pc),a0
	move.b (a0,d0.w),d0
	movem.l (a7)+,a0
	move.b d0, ($c,a0)
	tst.b ($2c,a4)
	beq.b loc_030182
	eori.w #1,($c,a0)

loc_030182:
	move.b ($f,a0),d5
	move.l ($54,a4),($10,a0)
	movem.l d0/a0/a4,-(a7)
	move.b d5,d0
	movea.l a0,a4
	movea.l #loc_0047a4,a0
	jsr loc_0040c2
	movem.l (a7)+,d0/a0/a4

loc_0301a4:
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0301a6:
	dc.b $dd,$d5,$d3,$d5,$c8,$d5,$d9,$d5

;--------------------------
loc_0301ae:
	jsr RandomNumberGod
	smi d0
	ext.w d0
	move.w d0,($14,a0)
	jsr RandomNumberGod
	andi.w #$3ff,d0
	move.w d0,($16,a0)
	jsr RandomNumberGod
	andi.w #$fff,d0
	move.w ($14,a0),d1
	eori.w #$8000,d0
	eor.w d1,d0
	move.w d0,($18,a0)
	jsr RandomNumberGod
	move.w d0,($1a,a0)
	rts

;--------------------------
loc_0301ee:
	tst.w ($14,a0)
	bne.b loc_030200
	addi.w #$c00,($18,a0)
	bvc.b loc_0301fe
	bsr.b loc_0301ae

loc_0301fe:
	bra.b loc_03020a

loc_030200:
	subi.w #$c00,($18,a0)
	bvc.b loc_03020a
	bsr.b loc_0301ae

loc_03020a:
	move.w ($16,a0),d0
	addi.w #$100,d0
	move.w ($18,a0),d2
	ext.l d2
	lsl.l #2,d2
	move.w ($1a,a0),d3
	ext.l d3
	divs.w d0,d2
	divs.w d0,d3
	addi.w #$a0,d2
	addi.w #$70,d3
	move.w d2,(0,a0)
	move.w d3,(4,a0)
	move.l #$10000,d1
	divu.w d0,d1
	subi.w #$f8,d1
	bmi.b loc_030246
	clr.w d1
	bra.b loc_030270

loc_030246:
	neg.w d1
	move.w d1,d0
	cmpi.w #$f0,d0
	bls.b loc_030254
	move.w #$f0,d0

loc_030254:
	lsl.w #8,d0
	subi.w #$100,d1
	neg.w d1
	lsr.w #1,d1
	neg.w d1
	addi.w #$100,d1
	cmpi.w #$f8,d1
	bls.b loc_03026e
	move.w #$f8,d1

loc_03026e:
	or.w d0,d1

loc_030270:
	move.w d1,($e,a0)
	clr.w (8,a0)
	clr.w ($a,a0)
	move.w ($60,a4),d0
	move.w ($5c,a4),d1
	eor.w d1,d0
	move.w d0,($c,a0)
	tst.b ($2c,a4)
	beq.b loc_030296
	eori.w #1,($c,a0)

loc_030296:
	move.b ($f,a0),d5
	addi.b #$20,d5
	bcc.b loc_0302a4
	move.b #-1,d5

loc_0302a4:
	move.l ($54,a4),($10,a0)
	movem.l d0/a0/a4,-(a7)
	move.b d5,d0
	movea.l a0,a4
	movea.l #loc_0047a4,a0
	jsr loc_0040c2
	movem.l (a7)+,d0/a0/a4
	rts

;--------------------------
loc_0302c4:
	tst.b ($26,a4)
	bne.b loc_0302f0
	tst.b ($66,a4)
	beq.b loc_0302e0
	movea.l #loc_031380,a0
	clr.w d0
	jsr loc_027e70
	bra.b loc_0302ee

loc_0302e0:
	movea.l #loc_03129e,a0
	clr.w d0
	jsr loc_027e70

loc_0302ee:
	bra.b loc_030348

loc_0302f0:
	jsr RandomNumberGod
	smi d0
	move.b d0,($2c,a4)
	movem.l d1-d2,-(a7)
	move.w (0,a4),d2
	move.w #$20,d0
	move.w #6,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_030324
	move.b ($66,a4),($66,a0)
	move.b ($2c,a4),($2c,a0)

loc_030324:
	tst.b ($66,a4)
	beq.b loc_03033a
	movea.l #loc_031306,a0
	clr.w d0
	jsr loc_027e70
	bra.b loc_030348

loc_03033a:
	movea.l #loc_031224,a0
	clr.w d0
	jsr loc_027e70

loc_030348:
	tst.b ($66,a4)
	beq.w loc_030394
	move.w #-$2b00,($60,a4)
	move.l #$a00000,($2e,a4)
	move.l #$700000,($32,a4)

loc_030366:
	tst.b (-$388,a5)
	beq.b loc_03037c
	move.b ($52,a4),d0
	movea.l #loc_028006,a0
	jsr loc_0040c2

loc_03037c:
	jsr loc_027a44
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_030366
	bra.w loc_030418

loc_030394:
	move.w #-$2300,($60,a4)
	move.b (-$388,a5),d0
	andi.w #3,d0
	subq.w #1,d0
	bmi.w loc_0303b4
	subq.w #1,d0
	bmi.w loc_0303cc
	subq.w #1,d0
	bmi.w loc_0303d8

loc_0303b4:
	move.l (-$c96,a5),d2
	move.l (-$c92,a5),d3
	add.l (-$736,a5),d2
	add.l (-$732,a5),d3
	asr.l #1,d2
	asr.l #1,d3
	bra.w loc_0303e0

loc_0303cc:
	move.l (-$736,a5),d2
	move.l (-$732,a5),d3
	bra.w loc_0303e0

loc_0303d8:
	move.l (-$c96,a5),d2
	move.l (-$c92,a5),d3

loc_0303e0:
	subi.l #$400000,d3
	move.l d2,($2e,a4)
	move.l d3,($32,a4)

loc_0303ee:
	tst.b (-$388,a5)
	beq.b loc_030404
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2

loc_030404:
	jsr loc_027a44
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_0303ee

loc_030418:
	jmp loc_027de6

loc_03041e:
	movea.l ($28,a4),a3
	move.b ($208,a3),($2c,a4)
	move.w ($2ee,a3),($60,a4)
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.w ($66,a4),d2
	move.w ($68,a4),d3
	swap d2
	swap d3
	clr.w d2
	clr.w d3
	jsr loc_0282ea
	move.b #-$22,($60,a4)
	movea.l #loc_0313e8,a0
	clr.w d0
	jsr loc_027e70

loc_030464:
	tst.b ($249,a3)
	bne.w loc_0304be
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,($8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.w ($66,a4),d2
	move.w ($68,a4),d3
	swap d2
	swap d3
	clr.w d2
	clr.w d3
	jsr loc_0282ea
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_030464

loc_0304be:
	jmp loc_027de6

;--------------------------
loc_0304c4:
	movea.l ($28,a4),a3
	move.w #$42,d0
	jsr loc_028368
	bmi.w loc_03058c
	jsr loc_0283f0
	sf ($68,a4)

loc_0304e0:
	bsr.w loc_030592
	not.b ($68,a4)

loc_0304e8:
	btst #1,($249,a3)
	beq.w loc_030586
	tst.w ($2ba,a3)
	bne.w loc_030514
	move.w #2,d7
	movea.l a2,a0

loc_030500:
	tst.b ($14,a0)
	beq.w loc_03050c
	bsr.w loc_030618

loc_03050c:
	lea ($16,a0),a0
	dbra d7,loc_030500

loc_030514:
	move.w #2,d7
	movea.l a2,a0

loc_03051a:
	tst.b ($14,a0)
	beq.w loc_03054e
	move.b ($67,a4),d0
	add.b ($68,a4),d0
	add.w d7,d0
	btst #0,d0
	beq.w loc_03054e
	movem.l d0/a0/a4,-(a7)
	move.b #-$73,d0
	movea.l a0,a4
	movea.l #loc_004784,a0
	jsr loc_0040c2
	movem.l (a7)+,d0/a0/a4

loc_03054e:
	lea ($16,a0),a0
	dbra d7,loc_03051a
	movem.l a2-a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a2-a3
	tst.w ($2ba,a3)
	bne.w loc_0304e8
	addq.w #1,($66,a4)
	cmpi.w #$a,($66,a4)
	blt.w loc_0304e8
	clr.w ($66,a4)
	bra.w loc_0304e0

loc_030586:
	jsr loc_028426

loc_03058c:
	jmp loc_027de6

;--------------------------
loc_030592:
	lea ($42,a2),a0
	move.w #$2b,d7

loc_03059a:
	move.b (-$17,a0),-(a0)
	dbra d7,loc_03059a
	movea.l a2,a0
	jsr RandomNumberGod
	move.b d0,($15,a0)
	st ($14,a0)
	move.l ($20e,a3),(0,a0)
	move.l ($212,a3),(4,a0)
	move.w ($2e6,a3),(8,a0)
	move.w ($2e8,a3),($a,a0)
	move.w ($2ee,a3),d0
	move.w ($2ea,a3),($c,a0)
	eor.b d0,($d,a0)
	clr.b d0
	add.w ($c,a0),d0
	btst #0,d0
	beq.b loc_0305e8
	neg.w (8,a0)

loc_0305e8:
	btst #1,d0
	beq.b loc_0305f2
	neg.w ($a,a0)

loc_0305f2:
	andi.w #$ff,d0
	addi.w #-$3600,d0
	tst.b ($208,a3)
	bpl.w loc_030606
	eori.w #1,d0

loc_030606:
	move.w d0,($c,a0)
	move.w ($2ec,a3),($e,a0)
	move.l ($2e2,a3),($10,a0)
	rts

loc_030618:
	move.b ($15,a0),d0
	ext.w d0
	muls.w #$100,d0
	add.l d0,(0,a0)
	addi.l #-$18000,(4,a0)
	rts

loc_030630:
	bsr.w loc_030ad0
	movea.l #loc_030672,a0
	clr.w d0
	jsr loc_027e70

loc_030642:
	move.b #-$31,($60,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_030642
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_030672:
	dc.w $0002,$121b,$8c00,$0002,$121c,$8c00
	dc.w $0002,$121d,$8c00,$0002,$121e,$8c00
	dc.w $8001

;--------------------------
loc_03068c:
	bsr.w loc_030ad0
	move.l ($36,a4),d2
	asl.l #2,d2
	move.l ($3a,a4),d3
	asl.l #2,d3
	jsr loc_0282ea
	tst.b ($66,a4)
	bgt.b loc_0306bc
	blt.b loc_0306ce
	movea.l #loc_030794,a0
	clr.w d0
	jsr loc_027e70
	bra.w loc_0306dc

loc_0306bc:
	movea.l #loc_030802,a0
	clr.w d0
	jsr loc_027e70
	bra.w loc_0306dc

loc_0306ce:
	movea.l #loc_030726,a0
	clr.w d0
	jsr loc_027e70

loc_0306dc:
	move.b #-$30,($60,a4)

loc_0306e2:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027e48
	move.l ($36,a4),d0
	asr.l #4,d0
	sub.l d0,($36,a4)
	move.l ($3a,a4),d0
	asr.l #4,d0
	sub.l d0,($3a,a4)
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_0306e2
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_030726:
	dc.w $0002,$1227,$8cff,$0000,$0008,$0000
	dc.w $0002,$1228,$88ff,$0000,$0008,$0000
	dc.w $0002,$1229,$84ff,$0000,$0008,$0000
	dc.w $0002,$122a,$80ff,$0000,$0008,$0000
	dc.w $0002,$122b,$7cff,$0000,$0008,$0000
	dc.w $0003,$122c,$78ff,$0000,$0008,$0000
	dc.w $0003,$122d,$70ff,$0000,$0008,$0000
	dc.w $0003,$122e,$70ff,$0000,$0008,$0000
	dc.w $0003,$122f,$70ff,$0000,$0008,$0000
	dc.w $8001

loc_030794:
	dc.w $0002,$1230,$8cff,$0000,$000c,$0000
	dc.w $0002,$1231,$88ff,$0000,$000c,$0000
	dc.w $0002,$1232,$84ff,$0000,$000c,$0000
	dc.w $0002,$1233,$80ff,$0000,$000c,$0000
	dc.w $0002,$1234,$7cff,$0000,$000c,$0000
	dc.w $0003,$1235,$78ff,$0000,$000c,$0000
	dc.w $0003,$1236,$70ff,$0000,$000c,$0000
	dc.w $0003,$1237,$70ff,$0000,$000c,$0000
	dc.w $0003,$1238,$70ff,$0000,$000c,$0000
	dc.w $8001

loc_030802:
	dc.w $0002,$1239,$88ff,$0000,$000c,$0000
	dc.w $0002,$123a,$84ff,$0000,$000c,$0000
	dc.w $0002,$123b,$80ff,$0000,$000c,$0000
	dc.w $0002,$123c,$7cff,$0000,$000c,$0000
	dc.w $0002,$123d,$78ff,$0000,$000c,$0000
	dc.w $0002,$123e,$70ff,$0000,$000c,$0000
	dc.w $0002,$123f,$70ff,$0000,$000c,$0000
	dc.w $0003,$1240,$70ff,$0000,$000c,$0000
	dc.w $0003,$1241,$70ff,$0000,$000c,$0000
	dc.w $0003,$1242,$70ff,$0000,$000c,$0000
	dc.w $0003,$1243,$70ff,$0000,$000c,$0000
	dc.w $8001

;--------------------------
loc_030888:
	movea.l #loc_0308cc,a0
	clr.w d0
	jsr loc_027e70
	move.w #-$2fff,($60,a4)

loc_03089c:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027e48
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_03089c
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0308cc:
	dc.w $0002,$1244,$3c00
	dc.w $0002,$1245,$3c00
	dc.w $0002,$1246,$3c00
	dc.w $0002,$1247,$3c00
	dc.w $0002,$1248,$3c00
	dc.w $0002,$1249,$3c00
	dc.w $0002,$124a,$3c00
	dc.w $0002,$124b,$3c00
	dc.w $0002,$124c,$3c00
	dc.w $0002,$124d,$3c00
	dc.w $0002,$124e,$3c00
	dc.w $8001

;--------------------------
loc_030910:
	jmp loc_027de6

;--------------------------
loc_030916:
	movea.l ($28,a4),a3
	move.w #$80,d0
	jsr loc_028368
	bmi.w loc_0309a4
	clr.w ($68,a4)
	clr.w ($66,a4)
	bsr.w loc_0309aa

loc_030934:
	tst.b ($249,a3)
	bne.b loc_030948
	btst #7,($24d,a3)
	beq.b loc_030948
	tst.w ($68,a4)
	beq.b loc_030956

loc_030948:
	addq.w #1,($68,a4)
	cmpi.w #7,($68,a4)
	bge.w loc_0309a4

loc_030956:
	move.w ($66,a4),d0
	btst #0,(-$7fa1,a5)
	bne.b loc_030966
	subq.w #3,d0
	bra.b loc_030968

loc_030966:
	subq.w #7,d0

loc_030968:
	andi.w #7,d0
	bsr.w loc_030a90
	tst.b ($27f9,a5)
	bne.b loc_03098c
	tst.b ($232,a3)
	bne.b loc_03098c
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2

loc_03098c:
	bsr.w loc_0309f8
	movem.l a2-a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a2-a3
	bra.b loc_030934

loc_0309a4:
	jmp loc_027de6

;--------------------------
loc_0309aa:
	bsr.w loc_0309f8
	move.w (0,a0),d0
	move.w (2,a0),d1
	move.w (4,a0),d4
	move.w (6,a0),d5
	move.w (8,a0),d2
	move.w ($a,a0),d3
	movea.l ($c,a0),a1
	lea (0,a2),a0
	move.w #7,d7

loc_0309d2:
	move.w d0,(0,a0)
	move.w d1,(2,a0)
	move.w d4,(4,a0)
	move.w d5,(6,a0)
	move.w d2,(8,a0)
	move.w d3,($a,a0)
	move.l a1,($c,a0)
	lea ($10,a0),a0
	dbra d7, loc_0309d2
	rts

;--------------------------
loc_0309f8:
	addq.w #1,($66,a4)
	andi.w #7,($66,a4)
	lea (0,a2),a0
	move.w ($66,a4),d0
	mulu.w #$10,d0
	adda.w d0,a0
	tst.w ($68,a4)
	bne.w loc_030a6e
	move.w ($20e,a3),(0,a0)
	move.w ($212,a3),(2,a0)
	move.w ($2e6,a3),(4,a0)
	move.w ($2e8,a3),(6,a0)
	move.w ($2ee,a3),d0
	move.w ($2ea,a3),(8,a0)
	tst.b (8,a0)
	bne.b loc_030a44
	addq.b #1,(8,a0)

loc_030a44:
	eor.b d0,(9,a0)
	clr.b d0
	add.w (8,a0),d0
	tst.b ($208,a3)
	bpl.b loc_030a5c
	eori.w #1,d0
	neg.w (4,a0)

loc_030a5c:
	move.w d0,(8,a0)
	move.w ($2ec,a3),($a,a0)
	move.l ($2e2,a3),($c,a0)
	rts

loc_030a6e:
	clr.w (0,a0)
	clr.w (2,a0)
	clr.w (4,a0)
	clr.w (6,a0)
	clr.w (8,a0)
	clr.w ($a,a0)
	move.l loc_200000,($c,a0)
	rts

;--------------------------
loc_030a90:
	lea (0,a2),a0
	mulu.w #$10,d0
	adda.w d0,a0
	move.w (0,a0),($2e,a4)
	move.w (2,a0),($32,a4)
	move.w (4,a0),($58,a4)
	move.w (6,a0),($5a,a4)
	move.w (8,a0),($60,a4)
	clr.w ($5c,a4)
	move.w ($a,a0),($5e,a4)
	move.l ($c,a0),($54,a4)
	move.b #-$72,($52,a4)
	rts

;--------------------------
loc_030ad0:
	movea.l ($28,a4),a3
	move.l ($30c,a3),d0
	add.l d0,($2e,a4)
	move.l ($310,a3),d0
	add.l d0,($32,a4)
	move.b ($208,a3),($2c,a4)
	move.w ($2ee,a3),($60,a4)
	rts

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_030af2:
	dc.b $d5,$d5,$d6,$d6,$d7,$d7,$d8,$d8,$d9,$d9

loc_030afc:
	dc.b $d9,$c8,$d5,$d6,$d7,$c9,$d8,$d9

loc_030b04:
	dc.l loc_030bc4,loc_030bc4,loc_030bc4,loc_030bc4
	dc.l loc_030c26,loc_030c26,loc_030c26,loc_030c26

loc_030b24:
	dc.l loc_030c88,loc_030c88,loc_030c88,loc_030c88
	dc.l loc_030d02,loc_030d02,loc_030d02,loc_030d02

loc_030b44:
	dc.l loc_030d7c,loc_030d7c,loc_030d7c,loc_030d7c
	dc.l loc_030df6,loc_030df6,loc_030df6,loc_030df6

loc_030b64:
	dc.l loc_030ef8,loc_030ef8,loc_030ef8,loc_030ef8
	dc.l loc_030ef8,loc_030ef8,loc_030ef8,loc_030ef8

loc_030b84:
	dc.l loc_030e70,loc_030e70,loc_030e70,loc_030e70
	dc.l loc_030eba,loc_030eba,loc_030eba,loc_030eba

loc_030ba4:
	dc.l loc_030ef8,loc_030ef8,loc_030ef8,loc_030ef8
	dc.l loc_030ef8,loc_030ef8,loc_030ef8,loc_030ef8

loc_030bc4:
	dc.w $0002,$119b,$3cff,$fffc,$0000,$0001
	dc.w $0002,$119c,$3cff,$fffc,$0000,$0001
	dc.w $0001,$119d,$3cff,$fffc,$0000,$0001
	dc.w $0001,$119e,$3cff,$fffc,$0000,$0001
	dc.w $0001,$119f,$3cff,$fffc,$0000,$0001
	dc.w $0001,$11a0,$3cff,$fffc,$0000,$0001
	dc.w $0002,$11a1,$3cff,$fffc,$0000,$0001
	dc.w $0002,$11a2,$3cff,$fffc,$0000,$0001
	dc.w $8001

loc_030c26:
	dc.w $0002,$11a3,$3cff,$0000,$0000,$0001
	dc.w $0002,$11a4,$3cff,$0000,$0000,$0001
	dc.w $0002,$11a5,$3cff,$0000,$0000,$0001
	dc.w $0001,$11a6,$3cff,$0000,$0000,$0001
	dc.w $0001,$11a7,$3cff,$0000,$0000,$0001
	dc.w $0002,$11a8,$3cff,$0000,$0000,$0001
	dc.w $0002,$11a9,$3cff,$0000,$0000,$0001
	dc.w $0003,$11aa,$3cff,$0000,$0000,$0001
	dc.w $8001

loc_030c88:
	dc.w $0001,$11ab,$3cff,$0000,$0000,$0001
	dc.w $0002,$11ac,$3cff,$0000,$0000,$0001
	dc.w $0002,$11ad,$3cff,$0000,$0000,$0001
	dc.w $0002,$11ae,$3cff,$0000,$0000,$0001
	dc.w $0001,$11af,$3cff,$0000,$0000,$0001
	dc.w $0001,$11b0,$3cff,$0000,$0000,$0001
	dc.w $0001,$11b1,$3cff,$0000,$0000,$0001
	dc.w $0002,$11b2,$3cff,$0000,$0000,$0001
	dc.w $0002,$11b3,$3cff,$0000,$0000,$0001
	dc.w $0003,$11b4,$3cff,$0000,$0000,$0001
	dc.w $8001

loc_030d02:
	dc.w $0002,$11b5,$3cff,$0000,$0000,$0001
	dc.w $0002,$11b6,$3cff,$0000,$0000,$0001
	dc.w $0002,$11b7,$3cff,$0000,$0000,$0001
	dc.w $0002,$11b8,$3cff,$0000,$0000,$0001
	dc.w $0001,$11b9,$3cff,$0000,$0000,$0001
	dc.w $0001,$11ba,$3cff,$0000,$0000,$0001
	dc.w $0002,$11bb,$3cff,$0000,$0000,$0001
	dc.w $0002,$11bc,$3cff,$0000,$0000,$0001
	dc.w $0003,$11bd,$3cff,$0000,$0000,$0001
	dc.w $0003,$11be,$3cff,$0000,$0000,$0001
	dc.w $8001

loc_030d7c:
	dc.w $0001,$11bf,$3cff,$0000,$0000,$0001
	dc.w $0002,$11c0,$3cff,$0000,$0000,$0001
	dc.w $0002,$11c1,$3cff,$0000,$0000,$0001
	dc.w $0001,$11c2,$3cff,$0000,$0000,$0001
	dc.w $0002,$11c3,$3cff,$0000,$0000,$0001
	dc.w $0001,$11c4,$3cff,$0000,$0000,$0001
	dc.w $0002,$11c5,$3cff,$0000,$0000,$0001
	dc.w $0002,$11c6,$3cff,$0000,$0000,$0001
	dc.w $0003,$11c7,$3cff,$0000,$0000,$0001
	dc.w $0003,$11c8,$3cff,$0000,$0000,$0001
	dc.w $8001

loc_030df6:
	dc.w $0002,$11c9,$3cff,$0000,$0000,$0001
	dc.w $0002,$11ca,$3cff,$0000,$0000,$0001
	dc.w $0002,$11cb,$3cff,$0000,$0000,$0001
	dc.w $0001,$11cc,$3cff,$0000,$0000,$0001
	dc.w $0002,$11cd,$3cff,$0000,$0000,$0001
	dc.w $0001,$11ce,$3cff,$0000,$0000,$0001
	dc.w $0002,$11cf,$3cff,$0000,$0000,$0001
	dc.w $0002,$11d0,$3cff,$0000,$0000,$0001
	dc.w $0003,$11d1,$3cff,$0000,$0000,$0001
	dc.w $0003,$11d2,$3cff,$0000,$0000,$0001
	dc.w $8001

loc_030e70:
	dc.w $0001,$11dd,$3cff,$0000,$fffc,$0000
	dc.w $0001,$11de,$3cff,$0000,$fffc,$0000
	dc.w $0001,$11df,$3c00,$0001,$11e0,$3c00
	dc.w $0001,$11e1,$3c00,$0001,$11e2,$3c00
	dc.w $0002,$11e3,$3c00,$0002,$11e4,$3c00
	dc.w $0002,$11e5,$3c00,$0002,$11e6,$3c00
	dc.w $8001

loc_030eba:
	dc.w $0001,$11e7,$3c00,$0001,$11e8,$3c00
	dc.w $0001,$11e9,$3c00,$0001,$11ea,$3c00
	dc.w $0002,$11eb,$3c00,$0002,$11ec,$3c00
	dc.w $0002,$11ed,$3c00,$0002,$11ee,$3c00
	dc.w $0002,$11ef,$3c00,$0003,$11f0,$3c00
	dc.w $8001

loc_030ef8:
	dc.w $0001,$11d3,$3cff,$0000,$0000,$0001
	dc.w $0001,$11d4,$3cff,$0000,$0000,$0001
	dc.w $0001,$11d5,$3cff,$0000,$0000,$0001
	dc.w $0001,$11d6,$3cff,$0000,$0000,$0001
	dc.w $0002,$11d7,$3cff,$0000,$0000,$0001
	dc.w $0002,$11d8,$3cff,$0000,$0000,$0001
	dc.w $0002,$11d9,$3cff,$0000,$0000,$0001
	dc.w $0002,$11da,$3cff,$0000,$0000,$0001
	dc.w $0002,$11db,$3cff,$0000,$0000,$0001
	dc.w $0003,$11dc,$3cff,$0000,$0000,$0001
	dc.w $8001

loc_030f72:
	dc.b $c8,$c9,$cb,$cb

loc_030f76:
	dc.w $0003,$1193,$8b00,$0003,$1194,$8b00
	dc.w $0003,$1195,$8b00,$0004,$1196,$8b00
	dc.w $0005,$1197,$8b00,$0006,$1198,$8b00
	dc.w $0007,$1199,$8b00,$0004,$119a,$8b00
	dc.w $8001

loc_030fa8:
	dc.l $fffe0000,$ffff0000,$fffe0000,$ffff0000
	dc.l $fffd0000,$fffe8000,$fffd0000,$fffe8000
	dc.l $fffc0000,$fffe0000,$fffc0000,$fffe0000
	dc.l $fffb0000,$fffd8000,$fffb0000,$fffd8000

loc_030fe8:
	dc.b $c8,$da,$c9,$da

loc_030fec:
	dc.w $0002,$11fb,$73ff,$fffa,$fffa,$0000
	dc.w $0003,$11fc,$73ff,$fff8,$fff8,$0000
	dc.w $0003,$11fd,$73ff,$fff6,$fff6,$0000
	dc.w $0003,$11fe,$73ff,$fff4,$fff4,$0000
	dc.w $0003,$11ff,$73ff,$fff2,$fff2,$0000
	dc.w $0003,$1200,$73ff,$fff0,$fff0,$0000
	dc.w $0003,$1201,$73ff,$ffee,$ffee,$0000
	dc.w $8001

loc_031042:
	dc.w $0001,$8000,$ffff,$0000
	dc.w $0001,$8000,$ffff,$0000
	dc.w $0002,$4000,$ffff,$8000
	dc.w $0002,$4000,$ffff,$8000
	dc.w $0003,$0000,$0000,$4000
	dc.w $0003,$0000,$0000,$4000
	dc.w $0003,$c000,$0001,$8000
	dc.w $0003,$c000,$0001,$8000

loc_031082:
	dc.b $c8,$da,$c9,$da

loc_031086:
	dc.w $0002,$1205,$73ff,$0004,$0002,$0003
	dc.w $0002,$1206,$73ff,$0006,$0004,$0003
	dc.w $0002,$1207,$73ff,$0008,$0006,$0003
	dc.w $0002,$1208,$73ff,$000a,$0008,$0003
	dc.w $0003,$1209,$73ff,$000c,$000a,$0003
	dc.w $0003,$120a,$73ff,$000e,$000c,$0003
	dc.w $0003,$120b,$73ff,$0010,$000e,$0003
	dc.w $0003,$120c,$73ff,$0012,$0010,$0003
	dc.w $8001

loc_0310e8:
	dc.w $0001,$0000,$fffe,$0000
	dc.w $0001,$0000,$fffe,$0000
	dc.w $0001,$8000,$fffd,$8000
	dc.w $0001,$8000,$fffd,$8000
	dc.w $0002,$0000,$fffd,$0000
	dc.w $0002,$0000,$fffd,$0000
	dc.w $0002,$8000,$fffc,$8000
	dc.w $0002,$8000,$fffc,$8000

loc_031128:
	dc.b $c8,$da,$c9,$da

loc_03112c:
	dc.w $0002,$1205,$73ff,$0004,$fffe,$0001
	dc.w $0002,$1206,$73ff,$0006,$fffc,$0001
	dc.w $0002,$1207,$73ff,$0008,$fffa,$0001
	dc.w $0002,$1208,$73ff,$000a,$fff8,$0001
	dc.w $0003,$1209,$73ff,$000c,$fff6,$0001
	dc.w $0003,$120a,$73ff,$000e,$fff4,$0001
	dc.w $0003,$120b,$73ff,$0010,$fff2,$0001
	dc.w $0003,$120c,$73ff,$0012,$fff0,$0001
	dc.w $8001

loc_03118e:
	dc.w $0001,$11f1,$8cff,$0000,$0000,$0000
	dc.w $0001,$11f2,$8cff,$0000,$0000,$0000
	dc.w $0001,$11f3,$8cff,$0000,$0000,$0000
	dc.w $0001,$11f4,$8cff,$0000,$0000,$0000
	dc.w $0001,$11f5,$8cff,$0000,$0000,$0000
	dc.w $0001,$11f6,$8cff,$0000,$0000,$0000
	dc.w $0002,$11f7,$8cff,$0000,$0000,$0000
	dc.w $0002,$11f8,$8cff,$0000,$0000,$0000
	dc.w $0002,$11f9,$8cff,$0000,$0000,$0000
	dc.w $0002,$11fa,$8cff,$0000,$0000,$0000
	dc.w $8001

loc_031208:
	dc.w $0063,$129f,$8e00
	dc.w $8000,$0000
	dc.l loc_031208

loc_031216:
	dc.w $0063,$129f,$8e00
	dc.w $8000,$0000
	dc.l loc_031216

loc_031224:
	dc.w $0005,$128c,$8fff,$0000,$0004,$0000
	dc.w $0004,$128d,$8fff,$0000,$0004,$0000
	dc.w $0004,$128e,$8fff,$0000,$0004,$0000
	dc.w $0003,$1290,$8fff,$0000,$0004,$0000
	dc.w $0003,$1292,$8fff,$0000,$0004,$0000
	dc.w $0003,$1294,$8fff,$0000,$0004,$0000
	dc.w $0003,$1296,$8fff,$0000,$0004,$0000
	dc.w $0003,$1298,$8fff,$0000,$0004,$0000
	dc.w $0002,$129a,$8fff,$0000,$0004,$0000
	dc.w $0002,$129c,$8fff,$0000,$0004,$0000
	dc.w $8001

loc_03129e:
	dc.w $0009,$0000,$6000,$0004,$128f,$8fff,$0000,$0004,$0000
	dc.w $0003,$1291,$8fff,$0000,$0004,$0000
	dc.w $0003,$1293,$8fff,$0000,$0004,$0000
	dc.w $0003,$1295,$8fff,$0000,$0004,$0000
	dc.w $0003,$1297,$8fff,$0000,$0004,$0000
	dc.w $0003,$1299,$8fff,$0000,$0004,$0000
	dc.w $0002,$129b,$8fff,$0000,$0004,$0000
	dc.w $0002,$129d,$8fff,$0000,$0004,$0000
	dc.w $8001

loc_031306:
	dc.w $0001,$128c,$91ff,$0000,$0004,$0000
	dc.w $0001,$128d,$91ff,$0000,$0004,$0000
	dc.w $0001,$128e,$91ff,$0000,$0004,$0000
	dc.w $0001,$1290,$91ff,$0000,$0004,$0000
	dc.w $0001,$1292,$91ff,$0000,$0004,$0000
	dc.w $0001,$1294,$91ff,$0000,$0004,$0000
	dc.w $0001,$1296,$91ff,$0000,$0004,$0000
	dc.w $0001,$1298,$91ff,$0000,$0004,$0000
	dc.w $0001,$129a,$91ff,$0000,$0004,$0000
	dc.w $0001,$129c,$91ff,$0000,$0004,$0000
	dc.w $8001

loc_031380:
	dc.w $0002,$0000,$6000
	dc.w $0001,$128f,$91ff,$0000,$0004,$0000
	dc.w $0001,$1291,$91ff,$0000,$0004,$0000
	dc.w $0001,$1293,$91ff,$0000,$0004,$0000
	dc.w $0001,$1295,$91ff,$0000,$0004,$0000
	dc.w $0001,$1297,$91ff,$0000,$0004,$0000
	dc.w $0001,$1299,$91ff,$0000,$0004,$0000
	dc.w $0001,$129b,$91ff,$0000,$0004,$0000
	dc.w $0001,$129d,$91ff,$0000,$0004,$0000
	dc.w $8001

loc_0313e8:
	dc.w $0001,$1276,$3c00,$0001,$1277,$3c00
	dc.w $0002,$1278,$3c00,$0001,$1279,$3c00
	dc.w $0001,$127a,$3c00,$0002,$127b,$3c00
	dc.w $0001,$127c,$3c00,$0001,$127d,$3c00
	dc.w $0002,$127e,$3c00,$0001,$127f,$3c00
	dc.w $0001,$1280,$3c00,$0002,$1281,$3c00
	dc.w $0001,$1282,$3c00,$0001,$1283,$3c00
	dc.w $0002,$1284,$3c00,$0001,$1285,$3c00
	dc.w $0001,$1286,$3c00,$0002,$1287,$3c00
	dc.w $0001,$1288,$3c00,$0001,$1289,$3c00
	dc.w $8001

loc_031462:
	movea.l ($66,a4),a0
	clr.w d0
	jsr loc_027e70

loc_03146e:
	jsr loc_027e48
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_03146e
	jmp loc_027de6

;--------------------------
loc_03149e:
	tst.b ($26,a4)
	beq.w loc_03150e
	movea.l ($66,a4),a0
	clr.w d0
	jsr loc_027e70
	movea.l ($28,a4),a3

loc_0314b6:
	move.w ($6a,a4),d0
	cmp.w ($2ce,a3),d0
	bne.w loc_03157c
	move.w ($2ee,a3),($60,a4)
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.b ($208,a3),($2c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	movea.l ($28,a4),a3
	btst #3,($2e1,a3)
	bne.b loc_0314b6
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_0314b6
	bra.w loc_03157c

loc_03150e:
	movea.l ($66,a4),a0
	clr.w d0
	jsr loc_027e70
	movea.l ($28,a4),a3

loc_03151e:
	move.w ($6c,a4),d0
	cmp.w (2,a3),d0
	bne.b loc_03157c
	move.w ($6a,a4),d0
	cmp.w ($46,a3),d0
	bne.w loc_03157c
	move.w ($60,a3),($60,a4)
	move.l ($2e,a3),($2e,a4)
	move.l ($32,a3),($32,a4)
	move.b ($2c,a3),($2c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_03151e

loc_03157c:
	jmp loc_027de6

;--------------------------
loc_031582:
	tst.b ($26,a4)
	beq.w loc_0315ea
	movea.l ($66,a4),a0
	clr.w d0
	jsr loc_027e70
	movea.l ($28,a4),a3

loc_03159a:
	move.w ($6a,a4),d0
	cmp.w ($2ce,a3),d0
	bne.w loc_031658
	move.w ($2ee,a3),($60,a4)
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.b ($208,a3),($2c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	movea.l ($28,a4),a3
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_03159a
	bra.w loc_031658

loc_0315ea:
	movea.l ($66,a4),a0
	clr.w d0
	jsr loc_027e70
	movea.l ($28,a4),a3

loc_0315fa:
	move.w ($6c,a4),d0
	cmp.w (2,a3),d0
	bne.b loc_031658
	move.w ($6a,a4),d0
	cmp.w ($46,a3),d0
	bne.w loc_031658
	move.w ($60,a3),($60,a4)
	move.l ($2e,a3),($2e,a4)
	move.l ($32,a3),($32,a4)
	move.b ($2c,a3),($2c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_0315fa

loc_031658:
	jmp loc_027de6

;--------------------------
loc_03165e:
	clr.w d6
	tst.b ($26,a4)
	beq.w loc_0316ec
	movea.l ($66,a4),a0
	clr.w d0
	jsr loc_027e70
	movea.l ($28,a4),a3

loc_031678:
	move.w ($6a,a4),d0
	cmp.w ($2ce,a3),d0
	bne.w loc_031776
	move.w ($2ee,a3),($60,a4)
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.b ($208,a3),($2c,a4)
	tst.w d6
	beq.w loc_0316aa
	move.w ($6e,a4),d0
	add.b d0,($60,a4)

loc_0316aa:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l d6,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),d6
	not.b d6
	movea.l ($28,a4),a3
	btst #3,($2e1,a3)
	bne.b loc_031678
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_031678
	bra.w loc_031776

loc_0316ec:
	movea.l ($66,a4),a0
	clr.w d0
	jsr loc_027e70
	movea.l ($28,a4),a3

loc_0316fc:
	move.w ($6c,a4),d0
	cmp.w (2,a3),d0
	bne.b loc_031776
	move.w ($6a,a4),d0
	cmp.w ($46,a3),d0
	bne.w loc_031776
	move.w ($60,a3),($60,a4)
	move.l ($2e,a3),($2e,a4)
	move.l ($32,a3),($32,a4)
	move.b ($2c,a3),($2c,a4)
	cmpi.w #2,d6
	bge.w loc_031746
	add.b d6,($60,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2

loc_031746:
	movem.l d6,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),d6
	addq.w #1,d6
	cmpi.w #2,d6
	ble.w loc_031764
	clr.w d6

loc_031764:
	movea.l ($28,a4),a3
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_0316fc

loc_031776:
	jmp loc_027de6

;--------------------------
loc_03177c:
	tst.b ($26,a4)
	beq.w loc_0317ec
	movea.l ($66,a4),a0
	clr.w d0
	jsr loc_027e70
	movea.l ($28,a4),a3

loc_031794:
	move.w ($6a,a4),d0
	cmp.w ($2ce,a3),d0
	bne.w loc_03185a
	move.w #-$4000,($60,a4)
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.b ($208,a3),($2c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	movea.l ($28,a4),a3
	btst #3,($2e1,a3)
	bne.b loc_031794
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_031794
	bra.w loc_03185a

loc_0317ec:
	movea.l ($66,a4),a0
	clr.w d0
	jsr loc_027e70
	movea.l ($28,a4),a3

loc_0317fc:
	move.w ($6c,a4),d0
	cmp.w (2,a3),d0
	bne.b loc_03185a
	move.w ($6a,a4),d0
	cmp.w ($46,a3),d0
	bne.w loc_03185a
	move.w #-$4000,($60,a4)
	move.l ($2e,a3),($2e,a4)
	move.l ($32,a3),($32,a4)
	move.b ($2c,a3),($2c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_0317fc

loc_03185a:
	jmp loc_027de6

;--------------------------
loc_031860:
	tst.b ($26,a4)
	beq.w loc_0318d0
	movea.l ($66,a4),a0
	clr.w d0
	jsr loc_027e70
	movea.l ($28,a4),a3

loc_031878:
	move.w ($6a,a4),d0
	cmp.w ($2ce,a3),d0
	bne.w loc_031946
	tst.w (-$394,a5)
	beq.w loc_031946
	move.w ($2ee,a3),($60,a4)
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.b ($208,a3),($2c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	movea.l ($28,a4),a3
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_031878
	bra.w loc_031946

loc_0318d0:
	movea.l ($66,a4),a0
	clr.w d0
	jsr loc_027e70
	movea.l ($28,a4),a3

loc_0318e0:
	move.w ($6c,a4),d0
	cmp.w (2,a3),d0
	bne.b loc_031946
	move.w ($6a,a4),d0
	cmp.w ($46,a3),d0
	bne.w loc_031946
	tst.w (-$394,a5)
	beq.w loc_031946
	move.w ($60,a3),($60,a4)
	move.l ($2e,a3),($2e,a4)
	move.l ($32,a3),($32,a4)
	move.b ($2c,a3),($2c,a4)
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_0318e0

loc_031946:
	jmp loc_027de6


;--------------------------
;Projectile
loc_03194c:
	tst.b ($26,a4)
	beq.w loc_0319b4
	movea.l ($28,a4),a3

loc_031958:
	move.w ($6a,a4),d0
	cmp.w ($2ce,a3),d0
	bne.w loc_031a24
	tst.b ($249,a3)
	bne.w loc_031a24
	tst.b ($9b,a4)
	bne.w loc_031a24
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.b ($208,a3),($2c,a4)
	jsr loc_02805e
	bne.w loc_031a24
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	btst #3,($2e1,a3)
	bne.b loc_0319b2
	subq.w #1,($66,a4)
	ble.w loc_031a24

loc_0319b2:
	bra.b loc_031958

loc_0319b4:
	movea.l ($28,a4),a3
	exg a3,a4
	bsr.w loc_02de10
	exg a3,a4
	cmpi.b #1,d0
	sne ($6e,a4)

loc_0319c8:
	move.w ($6c,a4),d0
	cmp.w (2,a3),d0
	bne.b loc_031a24
	move.w ($6a,a4),d0
	cmp.w ($46,a3),d0
	bne.b loc_031a24
	tst.b ($6e,a4)
	bne.b loc_0319e8
	tst.b ($9b,a3)
	bne.b loc_031a24

loc_0319e8:
	tst.b ($9b,a4)
	bne.w loc_031a24
	move.l ($2e,a3),($2e,a4)
	move.l ($32,a3),($32,a4)
	move.b ($2c,a3),($2c,a4)
	jsr loc_02805e
	bne.b loc_031a24
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a3
	subq.w #1,($66,a4)
	ble.b loc_031a24
	bra.b loc_0319c8

loc_031a24:
	clr.l ($9c,a4)
	jmp loc_027de6

;--------------------------
loc_031a2e:
	move.w #$e1,d0
	jsr loc_02301a
	lea loc_031ca8(pc),a1
	bra.w loc_031a64

loc_031a40:
	move.w #$e2,d0
	jsr loc_02301a
	lea loc_031e1c(pc),a1
	bra.w loc_031a64

loc_031a52:
	move.w #$e3,d0
	jsr loc_02301a
	lea loc_031f2c(pc),a1
	bra.w loc_031a64

loc_031a64:
	tst.b ($26,a4)
	bne.w loc_031a80
	movea.l ($48,a4),a0
	clr.w d0
	jsr loc_027e70
	movea.l ($78,a4),a3
	bra.w loc_031b18

loc_031a80:
	movea.l ($28,a4),a3
	move.l a3,($78,a4)
	clr.w ($70,a4)
	move.l a1,-(a7)
	movea.l (4,a1),a0
	clr.w d0
	jsr loc_027e70
	movea.l (a7)+,a1
	move.w (2,a1),d7
	subq.w #2,d7
	bmi.w loc_031b18
	lea (8,a1),a2

loc_031aaa:
	movem.l d7/a3,-(a7)
	move.l a1,-(a7)
	movem.l d1-d2,-(a7)
	move.w (0,a4),d2
	move.w #$10,d0
	move.w #$10,d1
	jsr loc_027b78
	movem.l (a7)+,d1-d2
	bmi.b loc_031b0e
	movea.l (a7),a1
	move.w ($66,a4),($66,a0)
	move.w ($68,a4),($68,a0)
	move.w ($6a,a4),($6a,a0)
	move.w ($6c,a4),($6c,a0)
	move.w ($6e,a4),($6e,a0)
	move.l (a2),($48,a0)
	addq.w #4,a2
	move.w (0,a1),d0
	move.w (2,a1),d1
	subq.w #1,d1
	sub.w d7,d1
	mulu.w d1,d0
	move.w d0,($70,a0)
	move.w (2,a4),($76,a0)
	move.l a3,($78,a0)

loc_031b0e:
	movea.l (a7)+,a1
	movem.l (a7)+,d7/a3
	dbra d7,loc_031aaa

loc_031b18:
	move.b ($208,a3),($2c,a4)
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	sf ($7e,a4)
	sf ($7c,a4)
	move.b #-$78,($7d,a4)
	clr.w ($60,a4)
	clr.l ($36,a4)
	clr.l ($3a,a4)

loc_031b44:
	bsr.w loc_031c80
	bne.w loc_031c5c
	tst.w ($70,a4)
	ble.b loc_031b72
	bsr.w loc_031c62
	bne.w loc_031c4c
	subq.w #1,($70,a4)
	movem.l a1/a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a1/a3
	bra.b loc_031b44

loc_031b72:
	tst.b ($7c,a4)
	bne.w loc_031bd4
	bsr.w loc_031c62
	bne.w loc_031c4c
	move.w ($6c,a4),d1
	sub.w ($6a,a4),d1
	jsr RandomNumberGod
	mulu.w d1,d0
	swap d0
	add.w ($6a,a4),d0
	move.w d0,($72,a4)
	move.w ($68,a4),d1
	sub.w ($66,a4),d1
	jsr RandomNumberGod
	mulu.w d1,d0
	swap d0
	add.w ($66,a4),d0
	move.w d0,($74,a4)
	jsr RandomNumberGod
	cmpi.w #-$4000,d0
	bcs.b loc_031bca
	move.b #-$78,($7d,a4)
	bra.b loc_031bd0

loc_031bca:
	move.b #$78,($7d,a4)

loc_031bd0:
	st ($7c,a4)

loc_031bd4:
	tst.b ($7c,a4)
	bgt.w loc_031c04
	move.b ($208,a3),($2c,a4)
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.w ($72,a4),d2
	move.w ($74,a4),d3
	swap d2
	swap d3
	clr.w d2
	clr.w d3
	jsr loc_0282ea

loc_031c04:
	move.b ($7d,a4),($52,a4)
	jsr loc_027e48

loc_031c10:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a1/a3,(8,a4)
	jsr loc_027a44
	movem.l (8,a4),a1/a3
	tst.b ($27f8,a5)
	beq.b loc_031c42
	bsr.w loc_031c80
	bne.w loc_031c5c
	bra.b loc_031c10

loc_031c42:
	jsr loc_027ea4
	bra.w loc_031b44

loc_031c4c:
	tst.b ($26,a4)
	beq.b loc_031c5c
	st ($7e,a4)
	jsr loc_027a44

loc_031c5c:
	jmp loc_027de6

;--------------------------
loc_031c62:
	tst.b ($26,a4)
	bne.b loc_031c76
	movea.l ($28,a4),a0
	move.w ($6e,a0),d0
	cmp.w ($2ce,a3),d0
	bra.b loc_031c7e

loc_031c76:
	move.w ($6e,a4),d0
	cmp.w ($2ce,a3),d0

loc_031c7e:
	rts

;--------------------------
loc_031c80:
	tst.b ($26,a4)
	bne.w loc_031ca4
	tst.b ($7e,a4)
	bne.w loc_031ca4
	movea.l ($28,a4),a0
	move.b ($7e,a0),($7e,a4)
	move.w ($76,a4),d0
	cmp.w (2,a0),d0
	rts

loc_031ca4:
	clr.w d0
	rts

;--------------------------
loc_031ca8:
	dc.w $0009,$0003
	dc.l loc_031cb8,loc_031cb8,loc_031cb8

loc_031cb8:
	dc.w $0001,$0d47,$80ff,$0002,$0010,$cd01
	dc.w $0001,$0d47,$80ff,$fffe,$0010,$cd01
	dc.w $0001,$0d4e,$80ff,$0002,$0014,$cd00
	dc.w $0001,$0d4e,$80ff,$fffe,$0014,$cd00
	dc.w $0001,$0d47,$80ff,$0002,$0010,$cd00
	dc.w $0001,$0d47,$80ff,$fffe,$0010,$cd00
	dc.w $0001,$0d48,$80ff,$0002,$000c,$cd00
	dc.w $0001,$0d48,$80ff,$fffe,$000c,$cd00
	dc.w $0001,$0d47,$80ff,$0002,$0014,$cd01
	dc.w $0001,$0d47,$80ff,$fffe,$0014,$cd01
	dc.w $0001,$0d48,$80ff,$0002,$0010,$cd01
	dc.w $0001,$0d48,$80ff,$fffe,$0010,$cd01
	dc.w $8013,$007c,$0001
	dc.w $0001,$0d57,$80ff,$0000,$0008,$cd01
	dc.w $0001,$0d57,$80ff,$fffe,$000c,$cd01
	dc.w $0001,$0d56,$80ff,$fffe,$000c,$cd00
	dc.w $0001,$0d56,$80ff,$0000,$0010,$cd00
	dc.w $0001,$0d57,$80ff,$0002,$001c,$cd00
	dc.w $0001,$0d57,$80ff,$0002,$0020,$cd00
	dc.w $0001,$0d58,$80ff,$0000,$0024,$cd00
	dc.w $0001,$0d58,$80ff,$fffe,$0028,$cd00
	dc.w $0001,$0d57,$80ff,$fffe,$0032,$cd01
	dc.w $0001,$0d57,$80ff,$0000,$0036,$cd01
	dc.w $0001,$0d58,$80ff,$0002,$003a,$cd01
	dc.w $0001,$0d58,$80ff,$0002,$003e,$cd01
	dc.w $0001,$0d59,$80ff,$0000,$0040,$cd01
	dc.w $0001,$0d59,$80ff,$fffe,$0046,$cd01
	dc.w $0001,$0d5a,$80ff,$fffe,$0048,$cd01
	dc.w $0001,$0d5a,$80ff,$0000,$004c,$cd01
	dc.w $8013,$007c,$0000,$8000,$0000
	dc.l loc_031cb8

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_031e1c:
	dc.w $000a,$0002
	dc.l loc_031e28,loc_031e28

loc_031e28:
	dc.w $0001,$0875,$80ff,$0008,$0010,$cc01
	dc.w $0001,$0878,$80ff,$0000,$0008,$cc00
	dc.w $0001,$0879,$80ff,$0008,$0000,$cc02
	dc.w $0001,$087a,$80ff,$0008,$0008,$cc01
	dc.w $0001,$087b,$80ff,$0000,$0008,$cc00
	dc.w $0001,$0873,$80ff,$0000,$0008,$cc03
	dc.w $0001,$0876,$80ff,$fff8,$0008,$cc00
	dc.w $0001,$0872,$80ff,$0000,$0008,$cc00
	dc.w $0001,$0874,$80ff,$0000,$fff8,$cc03
	dc.w $0001,$0877,$80ff,$0000,$fff8,$cc03
	dc.w $8013,$007c,$0001
	dc.w $0001,$0882,$80ff,$0008,$0008,$cc00
	dc.w $0001,$0881,$80ff,$fff8,$0008,$cc00
	dc.w $0001,$0880,$80ff,$0000,$0000,$cc03
	dc.w $0001,$087d,$80ff,$0000,$0000,$cc00
	dc.w $0001,$087f,$80ff,$fff8,$0000,$cc00
	dc.w $0001,$0883,$80ff,$0008,$0008,$cc00
	dc.w $0001,$087c,$80ff,$0000,$0000,$cc00
	dc.w $0001,$0884,$80ff,$0000,$0000,$cc00
	dc.w $0001,$0885,$80ff,$0008,$0008,$cc00
	dc.w $0001,$087e,$80ff,$0008,$0000,$cc00
	dc.w $8013,$007c,$0000
	dc.w $8000,$0000
	dc.l loc_031e28

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_031f2c:
	dc.w $0006,$0002
	dc.l loc_031f38,loc_031f38

loc_031f38:
	dc.w $0001,$0a4e,$80ff,$0000,$0000,$ce00
	dc.w $0001,$0a4f,$80ff,$0000,$0000,$ce00
	dc.w $0001,$0a50,$80ff,$0000,$0000,$ce00
	dc.w $0001,$0a51,$80ff,$0000,$0000,$ce00
	dc.w $0001,$0a52,$80ff,$0000,$0000,$ce00
	dc.w $0001,$0a53,$80ff,$0000,$0000,$ce00
	dc.w $0001,$0a54,$80ff,$0000,$0000,$ce00
	dc.w $0001,$0a55,$80ff,$0000,$0000,$ce00
	dc.w $8013,$007c,$0001
	dc.w $0001,$0a56,$80ff,$0000,$0004,$ce00
	dc.w $0001,$0a57,$80ff,$0000,$0008,$ce00
	dc.w $0001,$0a58,$80ff,$0000,$000c,$ce00
	dc.w $0001,$0a59,$80ff,$0000,$0010,$ce00
	dc.w $0001,$0a5a,$80ff,$0000,$0014,$ce00
	dc.w $8013,$007c,$0000
	dc.w $8000,$0000
	dc.l loc_031f38

;--------------------------
loc_031fe8:
	clr.l ($2e,a4)
	clr.l ($32,a4)
	bsr.w loc_030ad0
	move.b #-$2c,($60,a4)
	movea.l #loc_032032,a0
	clr.w d0
	jsr loc_027e70

loc_032008:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_032008
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_032032:
	dc.w $0001,$1215,$8cff,$0000,$fffc,$0000
	dc.w $0001,$1216,$8cff,$0000,$fffc,$0000
	dc.w $0001,$1217,$8cff,$0000,$fffc,$0000
	dc.w $0001,$1218,$8cff,$0000,$fffc,$0000
	dc.w $0001,$1219,$8cff,$0000,$fffc,$0000
	dc.w $0001,$121a,$8cff,$0000,$fffc,$0000
	dc.w $0001,$121b,$8cff,$0000,$fffc,$0000
	dc.w $0002,$121c,$8cff,$0000,$fffc,$0000
	dc.w $0002,$121d,$8cff,$0000,$fffc,$0000
	dc.w $0003,$121e,$8cff,$0000,$fffc,$0000
	dc.w $8001

;--------------------------
loc_0320ac:
	bsr.w loc_030ad0
	move.b #-$25,($60,a4)
	movea.l #loc_0320ee,a0
	clr.w d0
	jsr loc_027e70

loc_0320c4:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_0320c4
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0320ee:
	dc.w $800a
	dc.l loc_032138

loc_0320f4:
	dc.w $0001,$1260,$7000
	dc.w $0001,$1261,$7000
	dc.w $0002,$1262,$7000
	dc.w $0002,$1263,$7000
	dc.w $0002,$1264,$7000
	dc.w $0003,$1265,$7000
	dc.w $0002,$1266,$7000
	dc.w $0002,$1267,$7000
	dc.w $0003,$1268,$7000
	dc.w $0003,$1269,$7000
	dc.w $0003,$126a,$7000
	dc.w $8001

loc_032138:
	dc.w $0001,$126b,$8c00
	dc.w $0001,$126c,$8c00
	dc.w $0002,$126d,$8c00
	dc.w $0002,$126e,$8c00
	dc.w $0002,$126f,$8c00
	dc.w $0003,$1270,$8c00
	dc.w $0002,$1271,$8c00
	dc.w $0002,$1272,$8c00
	dc.w $0003,$1273,$8c00
	dc.w $0003,$1274,$8c00
	dc.w $0003,$1275,$8c00
	dc.w $8001

;--------------------------
loc_03217c:
	movea.l ($28,a4),a3
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.w ($2ee,a3),($60,a4)
	move.b #-$30,($60,a4)
	clr.l ($36,a4)
	clr.l ($3a,a4)
	tst.b ($66,a4)
	beq.b loc_0321aa
	neg.l ($36,a4)

loc_0321aa:
	jsr RandomNumberGod
	move.w ($23e,a3),d1
	sub.w ($23c,a3),d1
	mulu.w d1,d0
	swap d0
	add.w ($23c,a3),d0
	swap d0
	move.l d0,d2
	clr.l d3
	jsr loc_0282ea
	movea.l #loc_03220a,a0
	clr.w d0
	jsr loc_027e70

loc_0321da:
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027e48
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_0321da
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_03220a:
	dc.w $0002,$1230,$8cff,$0000,$000c,$0000
	dc.w $0002,$1231,$88ff,$0000,$000c,$0000
	dc.w $0001,$1232,$84ff,$0000,$000c,$0000,$0001,$0000,$6000
	dc.w $0001,$1233,$80ff,$0000,$000c,$0000,$0001,$0000,$6000
	dc.w $0001,$1234,$7cff,$0000,$000c,$0000,$0001,$0000,$6000
	dc.w $0001,$1235,$78ff,$0000,$000c,$0000,$0002,$0000,$6000
	dc.w $0001,$1236,$70ff,$0000,$000c,$0000,$0002,$0000,$6000
	dc.w $0001,$1237,$70ff,$0000,$000c,$0000,$0002,$0000,$6000
	dc.w $0001,$1238,$70ff,$0000,$000c,$0000
	dc.w $8001

;--------------------------
loc_03229c:
	bsr.w loc_03252c
	tst.l ($36,a4)
	ble.b loc_0322ae
	neg.l ($36,a4)
	not.b ($2c,a4)

loc_0322ae:
	movea.l #loc_0322c6,a0
	clr.w d0
	jsr loc_027e70
	move.b #-$30,($60,a4)
	bra.w loc_032588

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0322c6:
	dc.w $0002,$121f,$7cff,$fff8,$0006,$0001
	dc.w $0002,$1220,$7cff,$fffa,$0006,$0001
	dc.w $0002,$1221,$7cff,$fffc,$0006,$0001
	dc.w $0003,$1222,$7cff,$fffc,$0006,$0001
	dc.w $0003,$1223,$7cff,$fffc,$0006,$0001
	dc.w $0004,$1224,$7cff,$fffc,$0006,$0001
	dc.w $0004,$1225,$7cff,$fffc,$0006,$0001
	dc.w $8001

;--------------------------
loc_03231c:
	bsr.w loc_03252c
	move.b #-$30,($60,a4)
	tst.b ($6a,a4)
	bgt.b loc_032340
	blt.b loc_032352
	movea.l #loc_0323f0,a0
	clr.w d0
	jsr loc_027e70
	bra.w loc_032588

loc_032340:
	movea.l #loc_03247c,a0
	clr.w d0
	jsr loc_027e70
	bra.w loc_032588

loc_032352:
	movea.l #loc_032364,a0
	clr.w d0
	jsr loc_027e70
	bra.w loc_032588

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_032364
	dc.w $0002,$1227,$80ff,$0000,$0008,$0000
	dc.w $0002,$1228,$7cff,$0000,$0008,$0000
	dc.w $0002,$1229,$78ff,$0000,$0008,$0000
	dc.w $0002,$122a,$78ff,$0000,$0008,$0000,$0001,$0000,$6000
	dc.w $0002,$122b,$78ff,$0000,$0008,$0000,$0001,$0000,$6000
	dc.w $0002,$122c,$78ff,$0000,$0008,$0000,$0001,$0000,$6000
	dc.w $0002,$122d,$78ff,$0000,$0008,$0000,$0001,$0000,$6000
	dc.w $0002,$122e,$78ff,$0000,$0008,$0000,$0002,$0000,$6000
	dc.w $0001,$122f,$78ff,$0000,$0008,$0000
	dc.w $8001

loc_0323f0:
	dc.w $0003,$1230,$80ff,$0000,$000c,$0000
	dc.w $0003,$1231,$7cff,$0000,$000c,$0000
	dc.w $0003,$1232,$78ff,$0000,$000c,$0000
	dc.w $0003,$1233,$78ff,$0000,$000c,$0000,$0001,$0000,$6000
	dc.w $0003,$1234,$78ff,$0000,$000c,$0000,$0001,$0000,$6000
	dc.w $0002,$1235,$78ff,$0000,$000c,$0000,$0001,$0000,$6000
	dc.w $0002,$1236,$78ff,$0000,$000c,$0000,$0001,$0000,$6000
	dc.w $0002,$1237,$78ff,$0000,$000c,$0000,$0002,$0000,$6000
	dc.w $0001,$1238,$78ff,$0000,$000c,$0000
	dc.w $8001

loc_03247c:
	dc.w $0002,$1239,$80ff,$0000,$000c,$0000
	dc.w $0002,$123a,$7cff,$0000,$000c,$0000
	dc.w $0002,$123b,$78ff,$0000,$000c,$0000
	dc.w $0002,$123c,$78ff,$0000,$000c,$0000,$0001,$0000,$6000
	dc.w $0002,$123d,$74ff,$0000,$000c,$0000,$0001,$0000,$6000
	dc.w $0002,$123e,$74ff,$0000,$000c,$0000,$0001,$0000,$6000
	dc.w $0002,$123f,$74ff,$0000,$000c,$0000,$0001,$0000,$6000
	dc.w $0003,$1240,$74ff,$0000,$000c,$0000,$0001,$0000,$6000
	dc.w $0003,$1241,$74ff,$0000,$000c,$0000,$0002,$0000,$6000
	dc.w $0002,$1242,$74ff,$0000,$000c,$0000,$0002,$0000,$6000
	dc.w $0002,$1243,$74ff,$0000,$000c,$0000
	dc.w $8001

;--------------------------
loc_03252c:
	movea.l ($28,a4),a3
	move.b ($208,a3),($2c,a4)
	move.l ($20e,a3),($2e,a4)
	move.l ($212,a3),($32,a4)
	move.w ($2ee,a3),($60,a4)
	movea.l ($28,a4),a3
	moveq #0,d2
	moveq #0,d3
	move.b ($66,a4),d2
	ext.w d2
	swap d2
	move.b ($67,a4),d3
	ext.w d3
	swap d3
	jsr loc_0282ea
	moveq #0,d2
	moveq #0,d3
	move.b ($68,a4),d2
	move.b ($69,a4),d3
	ext.w d2
	ext.w d3
	swap d2
	swap d3
	asr.l #4,d2
	asr.l #4,d3
	move.l d2,($36,a4)
	move.l d3,($3a,a4)
	rts

;--------------------------
loc_032588:
	movea.l ($28,a4),a3
	tst.b ($249,a3)
	bne.w loc_0325d2
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027e48
	move.l ($36,a4),d0
	asr.l #3,d0
	sub.l d0,($36,a4)
	move.l ($3a,a4),d0
	asr.l #3,d0
	sub.l d0,($3a,a4)
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_032588

loc_0325d2:
	jmp loc_027de6

;--------------------------
loc_0325d8:
	movea.l #loc_0326c6,a0
	clr.w d0
	jsr loc_027e70
	movea.l ($28,a4),a3
	clr.w ($6e,a4)
	move.w ($2ee,a3),($60,a4)
	move.b ($6a,a4),d0
	add.b d0,($60,a4)
	move.w ($6a,a4),d0
	andi.w #$f,d0
	eor.b d0,($61,a4)

loc_032608:
	move.w ($6c,a4),d0
	cmp.w ($2ce,a3),d0
	bne.w loc_03267e
	tst.w ($66,a4)
	bmi.b loc_032622
	subq.w #1,($66,a4)
	bmi.w loc_032678

loc_032622:
	move.b ($208,a3),($2c,a4)
	move.l ($20e,a3),($2e,a4)
	move.l (-$45de,a5),($32,a4)
	move.w ($68,a4),d2
	swap d2
	clr.w d2
	moveq #0,d3
	jsr loc_0282ea
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	movem.l a3,(8,a4)
	jsr loc_027a44
	movem.l ($8,a4),a3
	jsr loc_027ea4
	addq.w #1,($6e,a4)
	btst #2,($53,a4)
	beq.b loc_032608

loc_032678:
	move.w #$7fff,($6e,a4)

loc_03267e:
	cmpi.w #1,($6e,a4)
	ble.w loc_0326c0
	movea.l #loc_0327be,a0
	clr.w d0
	jsr loc_027e70

loc_032696:
	jsr loc_027e48
	move.b ($52,a4),d0
	movea.l #loc_027fa8,a0
	jsr loc_0040c2
	jsr loc_027a44
	jsr loc_027ea4
	btst #2,($53,a4)
	beq.b loc_032696

loc_0326c0:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0326c6:
	dc.w $0002,$08b5,$74ff,$0000,$fff8,$0000,$0001,$0000,$6000
	dc.w $0001,$08b6,$74ff,$0000,$fff8,$0000
	dc.w $0001,$08b7,$74ff,$0000,$fff8,$0000,$0001,$0000,$6000
	dc.w $0002,$08b8,$74ff,$0000,$fff8,$0000,$0001,$0000,$6000
	dc.w $0001,$08b9,$74ff,$0000,$fff8,$0000
	dc.w $0001,$08b5,$74ff,$0000,$fff8,$0000,$0001,$0000,$6000
	dc.w $0002,$08b6,$74ff,$0000,$fff8,$0000,$0001,$0000,$6000
	dc.w $0001,$08b7,$74ff,$0000,$fff8,$0000
	dc.w $0001,$08b8,$74ff,$0000,$fff8,$0000,$0001,$0000,$6000
	dc.w $0002,$08b9,$74ff,$0000,$fff8,$0000,$0001,$0000,$6000
	dc.w $0001,$08b5,$74ff,$0000,$fff8,$0000
	dc.w $0001,$08b6,$74ff,$0000,$fff8,$0000,$0001,$0000,$6000
	dc.w $0002,$08b7,$74ff,$0000,$fff8,$0000,$0001,$0000,$6000
	dc.w $0001,$08b8,$74ff,$0000,$fff8,$0000
	dc.w $0001,$08b9,$74ff,$0000,$fff8,$0000,$0001,$0000,$6000
	dc.w $8000,$0000
	dc.l loc_0326c6

loc_0327be:
	dc.w $0002,$08ba,$74ff,$0000,$fff8,$0000,$0001,$0000,$6000
	dc.w $0002,$08bb,$74ff,$0000,$fff8,$0000,$0001,$0000,$6000
	dc.w $0002,$08bc,$74ff,$0000,$fff8,$0000,$0001,$0000,$6000
	dc.w $0002,$08bd,$74ff,$0000,$fff8,$0000,$0001,$0000,$6000
	dc.w $0002,$08be,$74ff,$0000,$0008,$0000,$0001,$0000,$6000
	dc.w $0002,$08bf,$74ff,$0000,$0008,$0000
	dc.w $8001

;===================;
;  Character  Data  ;
;===================;
;Sho 032826
	include "char/00Sho/char.asm"

;Dao 03bd86
	include "char/01Dao/char.asm"

;Condor 0436a8
	include "char/02Con/char.asm"

;Tia 04f3c8
	include "char/03Tia/char.asm"

;Rila 0584a8
	include "char/04Ril/char.asm"

;Alsion 060b08
	include "char/05Als/char.asm"

;Pielle 069e5c
	include "char/06Pie/char.asm"

;Maherl 074210
	include "char/07Mah/char.asm"

;Bai-hu 07da22
	include "char/08Bai/char.asm"

;Saizo 08612c
	include "char/09Sai/char.asm"

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;banks
;i don't care if this isn't the right name
;it looked better than locc0000.asm

	include "bank/bank90000.asm"
	include "bank/banka0000.asm"
	include "bank/bankb0000.asm"
	include "bank/bankc0000.asm"
	include "bank/bankd0000.asm"
	include "bank/banke0000.asm"
	include "bank/bankf0000.asm"


;	dcb.b $100000,$ff

;||||||||||||||||||||||||||
;Character GFX
	org $200000
loc_200000:

	org $205098
loc_205098:

;Stagedata
;--------------------------
;Blank
	org $28815e
loc_28815e:

;--------------------------
;Sho
	org $28816a
loc_28816a:
	org $28818a
loc_28818a:

;--------------------------
;Dao
	org $28819a
loc_28819a:
	org $2881ba
loc_2881ba:

;--------------------------
;Condor
	org $2881ca
loc_2881ca:
	org $2881ea
loc_2881ea:

;--------------------------
;Tia
	org $2881fa
loc_2881fa:
	org $28821a
loc_28821a:

;--------------------------
;Rila
	org $28822a
loc_28822a:
	org $288256
loc_288256:
	org $2882de
loc_2882de:

;--------------------------
;Alsion3
	org $288326
loc_288326:

;--------------------------
;Pielle
	org $288346
loc_288346:
	org $288366
loc_288366:

;--------------------------
;Maherl
	org $288376
loc_288376:
	org $288396
loc_288396:

;--------------------------
;Baihu
	org $2883a6
loc_2883a6:
	org $2883c6
loc_2883c6:

;--------------------------
;Saizo
	org $2883de
loc_2883de:
	org $2883f2
loc_2883f2:
	org $288412
loc_288412:

;--------------------------
loc_29f05c:
;	dcb.b $300000-loc_29f05c,$22
