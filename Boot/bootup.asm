;Needs to be cleaned up
loc_000186:
	moveq #$0,d3
	tst.w ($a14,a5)
	bne loc_0001ca
	movea.l ($a04,a5),a0
	move.w ($a08,a5),d7

loc_000198:
	move.b d0,$300001.l

	move.w (a0),d1
	cmpi.b #-$1,d1
	beq.b loc_0001c0

	move.w ($2,a0),d0
	cmp.b ($ace,a5),d0
	bne.b loc_0001c0

	move.w ($4,a0),d0
	cmp.b ($acf,a5),d0
	bne.b loc_0001c0

	cmp.b ($ad0,a5),d1
	beq.b loc_0001c8

loc_0001c0:
	addq.l #8,a0
	dbra d7,loc_000198
	move.w d7,d3

loc_0001c8:
	rts

loc_0001ca:
	movea.l ($a04,a5),a0
	move.w ($a08,a5),d7

loc_0001d2:
	move.w (a0),d1
	lsr.w #8,d1
	cmpi.b #-$1,d1
	beq.b loc_0001f6
	move.w (a0),d0
	cmp.b ($ace,a5),d0
	bne.b loc_0001f6
	move.w ($2,a0),d0
	lsr.w #8,d0
	cmp.b ($acf,a5),d0
	bne.b loc_0001f6
	cmp.b ($ad0,a5),d1
	beq.b loc_0001fe
	
loc_0001f6:
	addq.l #4,a0
	dbra d7,loc_0001d2
	move.w d7,d3

loc_0001fe:
	rts

JPConfig:;0x200
	dc.b "BREAKERS REVENGE"
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$02,$38,$25,$25,$13,$13,$02,$02,$04,$02
	dc.b $c9,$ed,$d2,$ef,$d5,$f4,$f9,"     ",$80,$a7,"  "
	dc.b "        ",$94,$8b,"      "
	dc.b "    ",$94,$ad,$81,$93,$b7,"       "
	dc.b $e9,$dc,$f7,$e8,"-1      ",$e9,$dc,$f7,$e8
	dc.b "-2      ",$e9,$dc,$f7,$e8,"-3  "
	dc.b "    ",$e9,$dc,$f7,$e8,"-4      "
	dc.b $e9,$dc,$f7,$e8,"-5      ",$e9,$dc,$f7,$e8
	dc.b "-6      ",$e9,$dc,$f7,$e8,"-7  "
	dc.b "    ",$e9,$dc,$f7,$e8,"-8      "
	dc.b $cf,$c1,$de,$f9,$20,$8e,$87,$93,$b7,$20,$20,$20,$93,$92,$a2,$84 
	dc.b $8e,$81,$20,$20,$20,$20,$20,$20,$84,$8e,$81,$20,$20,$20,$20,$20;2c0
	dc.b $20,$20,$20,$20,$9b,$91,$82,$20,$20,$20,$20,$20,$20,$20,$20,$20
	dc.b $99,$a3,$81,$20,$20,$20,$20,$20,$20,$20,$20,$20,$93,$92,$a2,$99
	dc.b $a3,$81,$20,$20,$20,$20,$20,$20,$8f,$81,$a7,$b5,$87,$98,$9c,$a7
	dc.b $85,$8f,$20,$20,$93,$92,$a2,$84,$8e,$81,$20,$20,$20,$20,$20,$20
	dc.b $84,$8e,$81,$20,$20,$20,$20,$20,$20,$20,$20,$20,$9b,$91,$82,$20
	dc.b $20,$20,$20,$20,$20,$20,$20,$20,$99,$a3,$81,$20,$20,$20,$20,$20;320
	dc.b $20,$20,$20,$20,$93,$92,$a2,$99,$a3,$81,$20,$20,$20,$20,$20,$20
	dc.b $8b,$b5,$82,$9b,$f7,$8c,$82,$20,$20,$20,$20,$20,$31,$e6,$c2,$ed
	dc.b $d3,$f7,$20,$20,$20,$20,$20,$20,$33,$e6,$c2,$ed,$d3,$f7,$20,$20
	dc.b $20,$20,$20,$20,$35,$e6,$c2,$ed,$d3,$f7,$20,$20,$20,$20,$20,$20;360
	dc.b $8f,$81,$8d,$ad,$20,$8b,$b5,$82,$9b,$f7,$8c,$82,$31,$e6,$c2,$ed	
	dc.b $d3,$f7,$20,$20,$20,$20,$20,$20,$33,$e6,$c2,$ed,$d3,$f7,$20,$20
	dc.b $20,$20,$20,$20,$35,$e6,$c2,$ed,$d3,$f7,$20,$20,$20,$20,$20,$20
	dc.b $d2,$f7,$e2,$20,$ca,$c2,$ed,$d3,$f7,$20,$20,$20,$80,$a7,$20,$20
	dc.b $20,$20,$20,$20,$20,$20,$20,$20,$94,$8b,$20,$20,$20,$20,$20,$20;3b0
	dc.b $20,$20,$20,$20,$80,$8e,$9a,$f7,$85,$8f,$8d,$91,$a1,$81,$20,$20
	dc.b $80,$a7,$20,$20,$20,$20,$20,$13,"NEXT",$94,$8b,$20,$20;3d0
	dc.b $20,$20,$20,$13,"NEXT",$c7,$e9,$cb,$f7,$f6,$d3,$2f,$e9
	dc.b $dc,$f7,$e8,$20,$9a,$b5,$82,$8b,$b7,$20,$80,$a7,$2f,$94,$8b,$20
	dc.b $9a,$b5,$82,$8b,$b7,$20,$80,$a7,$2f,$80,$a7,$20,$9a,$b5,$82,$8b
	dc.b $b7,$20,$94,$8b,$2f,$94,$8b,$20,$9a,$b5,$82,$8b,$b7,$20,$94,$8b
	dc.b $2f,$80,$a7,$20,$90,$20,$9a,$b5,$82,$8b,$b7,$20,$20,$20,$20,$20
	dc.b $80,$a7,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$94,$8b,$20,$20
	dc.b $20,$20,$20,$20,$20,$20,$20,$20
	
WRConfig:;0x448
	dc.b "BREAKERS REVENGE"
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$02,$38,$25,$25,$13,$13,$02,$02,$04,$02
	dc.b "CONTINUE    ON  "
	dc.b "        OFF     "
	dc.b "    DIFFICULTY  "
	dc.b "LEVEL-1     LEVE"
	dc.b "L-2     LEVEL-3 "
	dc.b "    LEVEL-4     " 
	dc.b "LEVEL-5     LEVE"
	dc.b "L-6     LEVEL-7 "
	dc.b "    LEVEL-8     "
	dc.b "TIMER SPEED VERY"
	dc.b " SLOW   SLOW    "
	dc.b "    NORMAL      "
	dc.b "FAST        VERY"
	dc.b " FAST   STAMINA "
	dc.b "    VERY STRONG "
	dc.b "STRONG      NORM"
	dc.b "AL      POOR    "
	dc.b "    VERY POOR   "
	dc.b "BOUT(CPU)   1 RO"
	dc.b "UND     3 ROUNDS"
	dc.b "    5 ROUNDS    "
	dc.b "BOUT(VS)    1 RO"
	dc.b "UND     3 ROUNDS"
	dc.b "    5 ROUNDS    "
	dc.b "DEMO SOUND  ON  "
	dc.b "        OFF     "
	dc.b "    INSTRUCTION "
	dc.b "ON     ",$13,"NEXTOFF "
	dc.b "   ",$13,"NEXTCREDIT/L"
	dc.b "EVELDISP.ON /OFF"
	dc.b "DISP.ON /ON DISP"
	dc.b ".OFF/OFFDISP.OFF"
	dc.b "/ON BLOOD DISP. "
	dc.b "ON          OFF "
	dc.b $20,$20,$20,$20,$20,$20,$20,$20
	
loc_000690:
	rte

USER:;0x692
	jsr loc_0006ea
	moveq #$0,d0
	move.b $10fdae.l,d0
	add.w d0,d0
	add.w d0,d0
	movea.l loc_0006aa(pc,d0.w),a0	
	jmp (a0)

loc_0006aa:
	dc.l loc_0006ba,loc_0006ee,loc_00185e,loc_001892

loc_0006ba:
	bclr #$7, $10fd80.l
	move.b #$0, $10fdaf.l
	lea $100000.l,a0
	move.w #$6b,d0

loc_0006d4:
	clr.b (a0)+
	dbra d0,loc_0006d4
	lea $108000.l,a5
	jsr loc_001bcc(pc)
	jmp $c00444.l

loc_0006ea:
	bra loc_00075a

loc_0006ee:
	movea.l $10e.w,a0
	lea $101800.l,a1
	cmpa.l a1,a0
	bcc.b loc_00070e
	move.w $112.w,d0
	lsr.w #2,d0

loc_000702:
	move.b d0,$300001.l
	move.l (a0)+,(a1)+
	dbra d0,loc_000702

loc_00070e:
	lea loc_00080e(pc),a0
	nop
	lea $100000.l,a1
	move.w #$828,d0

loc_00071e:
	move.b d0,$300001.l
	move.w (a0)+,(a1)+
	dbra d0,loc_00071e
	jsr $100000.l
	movea.l $10e.w,a0
	lea $101800,a1
	cmpa.l a1,a0
	bcc.b loc_00074a
	move.w $112.w,d1
	lsr.w #2,d1

loc_000744:
	move.l (a1)+,(a0)+
	dbra d1,loc_000744

loc_00074a:
	andi.b #$80,d0
	or.b d0,$10fd80.l
	jmp $c00444

loc_00075a:
	cmpi.b #$2,$10fdae.l
	bcc.b loc_000766	
	rts

loc_000766:
	move.b #$1, $320000.l
	jsr $c004c2.l
	lea $108000.l,a5
	tst.b ($7d82,a5)
	bne.b loc_000782
	rts

loc_000782:
	lea $3a0000.l,a1
	cmpi.l #$31737472,($7e80,a5)
	bne.b loc_0007a6
	move.b d0,($1d,a1)
	move.b $d00108.l,$d00058.l
	move.b d0,($d,a1)
	rts

;Load Header Check Code into memory
loc_0007a6:
	lea loc_0007ba(pc),a2
	lea ($7c00,a5),a3

loc_0007ae:
	move.w (a2),(a3)+
	cmpi.w #$4e75,(a2)+
	bne.b loc_0007ae
	jmp ($7c00,a5)

;Header Check this loads is at $10FC00
loc_0007ba:
	move.b d0,($3,a1)
	move.b $d00108.l,d7
	moveq #$0,d0

loc_0007c6:
	move.b d0,($1d,a1)
	move.b d0,$380021
	cmpi.l #"NEO-",$100.w
	bne.b loc_0007ea
	cmpi.w #$240,$108.w ;NGH Number originally given/devs suspected?
	beq.b loc_0007f8
	cmpi.b #$1, $114.w
	beq.b loc_0007f0

loc_0007ea:
	addq.b #1,d0
	cmp.b d0,d7
	bne.b loc_0007c6

loc_0007f0:
	cmpi.w #$1, $108.w
	beq.b  loc_0007ea

loc_0007f8:
	move.b d0,$d00058.l
	move.b d7,$380021.l
	move.b d0,($d,a1)
	move.b d0,($13,a1)
	rts

loc_00080e:
	lea	$108000.l,a5
	move.b ($7d80,a5),($7ceb,a5)
	bclr #$7,($7d80,a5)
	move #$2000,sr
	move.b #$3,$320000.l
	clr.b ($7cea,a5)
	lea ($7ce0,a5),a4
	move.l #$204060,(a4)
	move.l #$80a0c002,($4,a4)
	move.w #$206, ($8,a4)

	lea ($7c00,a5),a4
	move.l #$10008c,(a4)
	move.b #$20,($4,a4)
	move.b #$20,($5,a4)
	move.b #$0,($6,a4)

	lea ($20,a4),a4
	move.l #$100122,(a4)
	move.b #$0,($4,a4)
	move.b #$0,($5,a4)
	move.b #$ff,($6,a4)

loc_000880:
	lea $108000.l,a5
	bsr loc_0010b4
	bsr loc_000fac
	tst.b ($7cea,a5)
	beq.b loc_000880
	move.b ($7ceb,a5),d0
	rts

loc_00089a:
	clr.w ($1c,a4)
	clr.b ($16,a4)
	clr.w ($1e,a4)
	move.l #$1000a0,(a4)
	rts

loc_0008ae
	move.w #$20,d0
	lea $100124.l,a0
	bsr	loc_000fcc
	move.l a4,($8,a1)
	clr.w ($14,a4)
	move.l #$1000bc,(a4)
	tst.b ($7d82,a5)
	bne loc_0008f2
	move.b ($7d97,a5),d0
	or.b ($7d9d,a5),d0
	andi.b #$f0,d0
	bne	loc_00092a
	move.b ($7dad,a5),d0
	andi.b #$5,d0
	bne loc_00092a
	bra loc_00091c

loc_0008f2:
	lea $d00034.l,a0
	cmpi.l #"1str",($7e80,a5)
	bne.b loc_000916
	lea ($7e00,a5),a0
	move.b ($7d97,a5),d0
	or.b ($7d9d,a5),d0
	andi.b #$f0,d0
	bne loc_00092a

loc_000916:
	tst.w (a0)
	bne loc_00092a

loc_00091c:
	tst.w ($14,a4)
	bne loc_00092a
	bsr loc_0010c2
	rts

loc_00092a:
	move.b #$ff,($7cea,a5)
	rts

loc_000932:
	jsr $c004c8.l
	jsr	$c004c2.l
	move.l #$100138,(a4)
	rts

loc_000946
	tst.b ($7d82,a5)
	bpl.b loc_000954
	tst.b $d00046.l
	bne.b loc_00095c

loc_000954:
	move.b #$2,$320000.l

loc_00095c:
	moveq #$0,d0
	move.l d0,d1
	move.l d0,d2
	move.l d0,d3
	move.b d0,$3a000f.l
	move.w #$7f,d7
	lea $402000.l,a0

loc_000974:
	movem.l d0/d1/d2/d3,-(a0)
	movem.l d0/d1/d2/d3,-(a0)
	movem.l d0/d1/d2/d3,-(a0)
	movem.l d0/d1/d2/d3,-(a0)	
	dbra d7,loc_000974
	move.b d0,$3a001f
	move.w #$7f,d7
	lea $402000.l,a0

loc_000998:
	movem.l d0/d1/d2/d3,-(a0)
	movem.l d0/d1/d2/d3,-(a0)
	movem.l d0/d1/d2/d3,-(a0)
	movem.l d0/d1/d2/d3,-(a0)	
	dbra d7,loc_000998
	move.l #$eee0000, $4001a2.l
	lea $100c78.l,a0
	lea $4001e2.l,a1
	move.l (a0)+,(a1)+	
	move.l (a0)+,(a1)+	
	move.l (a0)+,(a1)+	
	move.w (a0),$401ffe
	lea $10094c,a0
	move.w #$40,d0
	move.b $115.w, d2
	lsl.w #8,d2
	move.w #$f01,d1
	bsr loc_000f70
	lea $100994.l,a0
	move.w #$4c0,d0
	move.w #$f00,d1
	bsr loc_000f70
	move.w #$0,(-$2,a1)
	move.w #$2,($2,a1) 
	moveq #$1f,d6

loc_000a06: 
	move.w d2,(a1)
	dbra d6,loc_000a06
	move.w #$8001,(-$2,a1)
	move.w #$1,($2,a1)
	move.w #$0,d0
	move.w #$11,d1

loc_000a20
	move.w d0,(a1)
	dbra d1,loc_000a20
	move.w #$f08,d0
	move.w #$11,d1
	
loc_000a2e:
	move.w d0,(a1)
	dbra d1,loc_000a2e
	move.w #$40,d0
	move.w #$8201,(-$2,a1)
	move.w #$23,d1

loc_000a42:
	move.w d0,(a1)
	dbra d1,loc_000a42
	move.l #$82010004,(-$2,a1)
	move.l #$82130004,(-$2,a1)
	lea	loc_00122a(pc),a0
	move.w #$71f6,d0
	swap d0
	move.w #$f200,d0
	moveq #$2,d7

loc_000a68:
	move.l d0,d1
	moveq #$9,d6

loc_000a6c:
	move.b (a0)+,d1
	move.l d1,(-$2,a1)
	addi.l #$200000,d1
	dbra d6,loc_000a6c
	addi.l #$10000,d0
	dbra d7,loc_000a68
	move.l #$100280,(a4)
	rts

loc_000a8e:
	lea ($7c00,a5),a1
	move.w #$0,($1e,a1)
	move.w #$40,d0
	lea $100576.l,a0
	bsr loc_000fcc
	move.l a4,($8,a1)
	clr.w ($14,a4)
	move.l #$1002a6,(a4)
	tst.b ($14,a4)
	bne.w loc_000ae0
	tst.b ($15,a4)
	beq.w loc_000ade
	lea ($7c00,a5),a1
	move.b ($1e,a1),d0
	cmpi.b #$20,d0
	bcc loc_000ade
	bsr loc_0010fe
	addi.w #$90,($1e,a1)

loc_000ade:
	rts

loc_000ae0:
	move.b #$f,($10,a4)
	move.l #$1002de,(a4)
	subi.b #$1,($10,a4)
	bcs loc_000af8
	rts

loc_000af8:
	lea loc_001248(pc),a0
	lea VRAMRW,a1
	move.w #$710d,d0
	swap d0
	move.w #$e000,d0
	moveq #$1,d7

loc_000b0e:
	move.l d0,d1
	moveq #$17,d6

loc_000b12:
	move.b (a0)+,d1
	move.l d1,(-$2,a1)
	addi.l #$200000,d1
	dbra d6,loc_000b12
	addi.l #$10000,d0
	dbra d7,loc_000b0e
	
	lea loc_001278(pc),a0
	move.w #$71cf,d0
	swap d0
	moveq #$1,d7

loc_000b38:
	move.l d0,d1
	moveq #$b,d6

loc_000b3c:
	move.w (a0)+,d1
	move.l d1,(-$2,a1)
	addi.l #$200000,d1
	dbra d6,loc_000b3c
	addi.l #$10000,d0
	dbra d7,loc_000b38

	lea ($7c00,a5),a1
	clr.w ($1e,a1)
	move.b #$1,($16,a1)
	move.l #$10035c,(a4)
	
	lea ($7c00,a5),a1
	move.b ($1e,a1),d0
	cmpi.b #$10,d0
	bcc loc_000b86
	bsr loc_00112c
	addi.w #$80,($1e,a1)
	rts

loc_000b86:
	move.b #$19,($10,a4)
	move.l #$100384,(a4)
	subi.b #$1,($10,a4)
	bcs loc_000b9e
	
loc_000b9c:
	rts

loc_000b9e:
	move.l #$1003a2,(a4)
	move.w #$22,($14,a4)
	move.b #$c,($16,a4)
	lea $1009de.l,a0
	moveq #$0,d0
	move.w ($14,a4),d0
	lea $400000.l,a1
	lea (a1,d0.w),a1
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	move.w (a0),(a1)
	addi.w #$20,($14,a4)
	move.b #$5,($10,a4)
	move.l #$1003d2,(a4)
	subi.b #$1,($10,a4)
	bcs.b loc_000bea
	rts

loc_000bea:
	subi.b #$1,($16,a4)
	bcs.b loc_000bfa
	move.l #$1003a2,(a4)
	rts

loc_000bfa:
	move.b #$19,($10,a4)
	move.l #$1003f8,(a4)
	subi.b #$1,($10,a4)
	bcs loc_000c12
	rts

loc_000c12:
	lea ($7c00,a5),a1
	move.w #$2000,($1e,a1)
	move.b #$0,($16,a1)
	move.l #$10041a,(a4)

loc_000c28:
	lea ($7c00,a5),a1
	move.b ($1e,a1),d0	
	cmpi.b #$30,d0
	bcc loc_000c44
	bsr loc_0010fe
	addi.w #$60,($1e,a1)
	rts

loc_000c44:
	move.b #$87,($10,a4)
	move.l #$100442,(a4)
	subi.b #$1,($10,a4)
	bcs loc_000c5c
	rts

loc_000c5c:
	bsr loc_000d68
	move.l #$10045a,(a4)
	rts

loc_000c68:
	tst.b ($7d83,a5)
	bne loc_000ca0
	move.w #$fff,$400002.l
	movea.l ($7dbe,a5),a0
	move.l #$100b42,(a0)
	lea ($4,a0),a0
	move.l a0,($7dbe,a5)
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4/a5/a6,-(a7)
	jsr $c004ce.l
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4/a5/a6
	move.l #$100528,(a4)
	rts

loc_000ca0:
	tst.b ($7d82,a5)
	beq loc_000d5a
	cmpi.b #$1,($7d83,a5)
	bne loc_000d5a
	moveq #$0,d0
	moveq #$7,d1
	lea $400020.l,a1

loc_000cbc:
	move.l d0,(a1)+
	dbra d1,loc_000cbc
	movea.l ($7dbe,a5),a0
	move.l #$100a9a,(a0)
	lea ($4,a0),a0
	move.l a0,($7dbe,a5)
	movem.l d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4/a5/a6,-(a7)
	jsr $c004ce.l
	movem.l (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4/a5/a6
	move.l #$1004dc,(a4)
	rts

loc_000cea:
	move.b d0,$3a0003.l
	move.b d0,$3a000b.l
	lea $1009fc.l,a0
	lea $400020.l,a1
	moveq #$7,d0

loc_000d04:
	move.l (a0)+,(a1)+
	dbra d0,loc_000d04
	move.b #$b4,($10,a4)
	move.l #$100508,(a4)
	subi.b #$1,($10,a4)
	bcs loc_000d22
	rts

loc_000d22:
	bsr loc_000d68
	move.b d0,$3a001b.l
	move.b d0,$3a0013.l
	bra loc_000d5a

loc_000d36:
	move.b #$b4,($10,a4)
	move.l #$100534,(a4)
	subi.b #$1,($10,a4)
	bcs loc_000d4e
	rts

loc_000d4e:
	bsr loc_000d68
	move.l #$10054c,(a4)
	rts

loc_000d5a:
	movea.l ($8,a4),a0
	move.w #$ffff,($14,a0)
	bra loc_001076

loc_000d68:
	move.w #$500,d7
	move.l #$70000020,d0

loc_000d72:
	move.l d0,$3c0000.l
	addi.l #$10000,d0
	dbra d7,loc_000d72
	rts

loc_000d84:
	lea VRAMRW,a6
	move.w #$97,($18,a4)
	move.w #$28,($1a,a4)
	move.w #$ff,($14,a4)
	move.l #$80010000,d0
	move.w ($14,a4),d0
	move.l d0,(-$2,a6)
	move.l #$82010000,d0
	move.w ($1a,a4),d0
	bsr loc_000f5c
	move.l d0,(-$2,a6)
	move.l #$84010000, d0
	move.w 0x18(a4), d0
	bsr.w loc_000f58
	move.l d0,(-$2,a6)
	move.l #$1005c6,(a4)
	lea VRAMRW,a6
	move.l #$84010000,d0
	move.w ($18,a4),d0
	bsr loc_000f58
	move.l d0,(-$2,a6)
	move.w #$8001,(-$2,a6)
	move.w #$1,($2,a6)
	move.w #$11,d7

loc_000dfc:
	move.w ($14,a4),(a6)
	nop;0xE00
	dbra d7,loc_000dfc

	move.b #$1,($10,a4)
	move.l #$100604,(a4)
	subq.b #1,($10,a4)
	bcc.b loc_000e36

	move.l #$1005c6,(a4)
	move.b ($14,a4),d0
	addi.b #$1,d0
	cmpi.b #$10,d0
	bcc.b loc_000e38
	move.b d0,($14,a4)
	subi.w #$9,($18,a4)

loc_000e36:
	rts

loc_000e38:
	move.b #$c,($10,a4)
	move.l #$100636,(a4)
	subi.b #$1,($10,a4)
	bcs.b loc_000e4e
	rts

loc_000e4e:
	movea.l ($8,a4),a0
	move.b #$ff,($15,a0)
	lea VRAMRW,a6
	move.l #$82010000,d0
	move.w ($1a,a4),d0
	bsr loc_000f5c
	
	move.l d0,(-$2,a6)
	move.l #$80010000,d0
	move.w ($14,a4),d0
	move.l d0,(-$2,a6)
	move.b #$0,($10,a4)
	move.l #$10067c,(a4)
	subq.b #1,($10,a4)
	bcc.b loc_000ea6
	addi.w #$1,($1a,a4)
	subi.b #$8,($15,a4)
	bcs loc_000ea8
	move.l #$100640,(a4)
	
loc_000ea6:
	rts

loc_000ea8:
	addi.b #$8,($15,a4)
	lea VRAMRW,a6
	move.l #$82010000,(-$2,a6)
	move.l #$80130000,d0
	move.w ($14,a4),d0
	move.l d0,(-$2,a6)
	move.l #$82130000,d0
	move.w ($1a,a4),d0

	bsr loc_000f5c;0xed4
	move.l d0,(-$2,a6)
	move.l #$84130000,d0
	move.w ($18,a4),d0

	bsr loc_000f58
	move.l d0,(-$2,a6)
	move.l #$1006e6,(a4)
	lea VRAMRW,a6
	move.l #$82130000,d0
	move.w ($1a,a4),d0
	
	bsr loc_000f5c;f04
	move.l d0,(-$2,a6)
	move.l #$80130000,d0
	move.w ($14,a4),d0
	move.l d0,(-$2,a6)
	move.b #$0,($10,a4)
	move.l #$100718,(a4)
	subq.b #1,($10,a4)
	bcc.b loc_000f48
	
	subi.w #$1,($1a,a4)
	move.b ($15,a4),d0
	addi.b #$8,d0
	bcs loc_000f4a
	
	move.b d0,($15,a4);0xf3e
	move.l #$1006e6,(a4)
	
loc_000f48:
	rts

loc_000f4a:
	movea.l ($8,a4),a0
	move.b #$ff,($14,a0)
	bra loc_001076

loc_000f58:
	asl.w #7,d0
	rts

loc_000f5c:
	move.w d1,-(a7)
	move.w #$1ff,d1
	sub.w d0,d1
	asl.w #7,d1
	move.w d1,d0
	ori.w #$4,d0
	move.w (a7)+,d1
	rts

loc_000f70:
	lea VRAMRW,a1
	move.w #$1,($2,a1)
	moveq #$11,d7

loc_000f7e:
	move.w d0,(-$2,a1)
	moveq #$3,d6

loc_000f84:
	move.b (a0)+,d2
	move.w d2,(a1) 
	nop
	move.w d1,(a1)
	dbra d6,loc_000f84

	moveq #$1b,d6
	move.b #$ff,d2

loc_000f96:
	move.w d2,(a1)
	nop
	move.w #$0,(a1)
	dbra d6,loc_000f96
	addi.w #$40,d0
	dbra d7,loc_000f7e
	rts

loc_000fac:
	lea ($7c00,a5),a4
	lea	$108000.l,a5

loc_000fb6:
	movea.l (a4),a0
	jsr (a0)
	move.b ($5,a4),d0
	beq loc_000fca
	move.l a4,d1
	move.b d0,d1
	movea.l d1,a4
	bra.b loc_000fb6

loc_000fca:
	rts

loc_000fcc:
	tst.b ($7ce9,a5)
	bne.b loc_000fd4
	rts

loc_000fd4:
	movem.l d1/d2/d3/a2,-(a7)
	move.l #$10fc00,d1
	movea.l a4,a2
	move.l a4,d1
	cmp.b ($6,a2),d0
	bcc loc_001022

loc_000fea:
	move.b ($4,a2),d1
	movea.l d1,a2
	cmp.b ($6,a2),d0
	bcs.b loc_000fea
	lea ($7ce0,a5),a1
	moveq #$0,d2
	move.b ($7ce7,a5),d2
	move.b (a1,d2.w),d1
	movea.l d1,a1
	move.w a2,d3
	move.b d3,($4,a1)
	move.b ($5,a2),d1
	move.b d1,($5,a1)
	move.w a1,d3
	move.b d3,($5,a2)
	movea.l d1,a2
	move.b d3,($4,a2)
	bra.b loc_001058

loc_001022:
	move.b ($5,a2),d1
	movea.l d1,a2
	cmp.b ($6,a2),d0
	bcc.b loc_001022
	
	lea ($7ce0,a5),a1
	moveq #$0,d2
	move.b ($7ce7,a5),d2
	move.b (a1,d2.w),d1
	movea.l d1,a1
	move.w a2,d3
	move.b d3,($5,a1)
	move.b ($4,a2),d1
	move.b d1,($4,a1)
	move.w a1,d3		;0x104c
	move.b d3,($4,a2)
	movea.l d1,a2
	move.b d3,($5,a2)		

loc_001058:
	move.b d0,($6,a1)
	move.l a0,(a1)
	addq.b #1,d2
	cmpi.w #$7,d2
	bcs.b loc_001068
	clr.b d2

loc_001068:
	move.b d2,($7ce7,a5)
	subq.b #1,($7ce9,a5)
	movem.l (a7)+,d1/d2/d3/a2
	rts

loc_001076:
	movem.l d0/a0/a1,-(a7)
	move.l #$10fc00,d0
	move.b ($4,a4),d0
	movea.l d0,a0
	move.b ($5,a4),d0
	movea.l d0,a1
	move.b ($5,a4),($5,a0)
	move.b ($4,a4),($4,a1)
	addq.b #1,($7ce9,a5)
	move.b ($7ce8,a5),d0
	addq.b #1,d0
	cmpi.b #$7,d0
	bne.b loc_0010aa
	moveq #$0,d0

loc_0010aa:
	move.b d0,($7ce8,a5)
	movem.l (a7)+,d0/a0/a1
	rts

loc_0010b4:
	move.b #$1,($7e8c,a5)

loc_0010ba:
	tst.b ($7e8c,a5)
	bne.b loc_0010ba
	rts

loc_0010c2:
	movea.l ($18,a4),a0
	tst.w ($1c,a4)
	bne.b loc_0010ce
	rts

loc_0010ce:
	clr.w ($1c,a4)
	tst.b ($16,a4)
	bne loc_0010ee
	lea $4001e2.l,a1
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	move.w (a0),$401ffe.l
	rts

loc_0010ee:
	lea $4001ce.l,a1
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	move.l (a0),(a1)
	rts

loc_0010fe:
	lea ($7c00,a5),a1
	moveq #$0,d1
	move.b ($1e,a1),d1
	lea $100c48,a0
	moveq #$0,d0
	move.b (a0,d1.w),d0
	move.w #$e,d1
	mulu.w d1,d0
	addi.l #$100c78,d0
	move.l d0,($18,a1)
	move.w #$1,($1c,a1)
	rts

loc_00112c:
	lea ($7c00,a5),a1
	moveq #$0,d1
	move.b ($1e,a1),d1
	lea $100c48.l,a0
	moveq #$0,d0
	move.b (a0,d1.w),d0
	move.w #$10,d1
	mulu.w d1,d0
	addi.l #$100f18,d0
	move.l d0,($18,a1)
	move.w #$1,($1c,a1)
	rts

loc_00115a:
	dc.w $ffff,$ffff,$ff1c,$2bff,$0d1b,$2a39,$0c1a
	dc.w $2938,$0b19,$2837,$0a18,$2736,$0917,$2635
	dc.w $0816,$2534,$0715,$2433,$0614,$2332,$0513
	dc.w $2231,$0412,$2130,$0311,$202f,$0210,$1f2e
	dc.w $010f,$1e2d,$000e,$1d2c,$ffff,$ffff,$ffff
	dc.w $ffff,$ffff,$ffff,$ffff,$ffff,$000e,$1d2c
	dc.w $010f,$1e2d,$0210,$1f2e,$0311,$202f,$0412
	dc.w $2130,$0513,$2231,$0614,$2332,$0715,$2433
	dc.w $0816,$2534,$0917,$2635,$0a18,$2736,$0b19
	dc.w $2837,$0c1a,$2938,$0d1b,$2a39,$ff1c,$2bff
	dc.w $ffff,$ffff,$0000,$7fff,$2bbc,$5787,$5344
	dc.w $3066,$203d,$7ddd,$7bcc,$1aab,$1889,$1667
	dc.w $7445,$5233,$7111,$0000,$0000,$0fe0,$0fc0
	dc.w $0da0,$0b80,$0950,$0eef,$0999,$0666,$0d00
	dc.w $0b00,$05c0,$0080,$002e,$000a,$0000


loc_00122a:
	dc.b $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f
	dc.b $14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f,$40,$5e

loc_001248:
	dc.b $05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$14
	dc.b $15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f,$40

loc_001260:
	dc.b $05,$06,$60
	dc.b $7c,$7d,$7e,$7f
	dc.b $99,$9a,$9b,$9c,$9d,$9e,$9f
	dc.b $ba,$bb,$bc,$bd,$be,$bf
	dc.b $d9,$da,$db,$dc

loc_001278:
	dc.w $10dd,$20de,$30df,$40fa

;0x1280
	dc.w $50fb,$60fc,$70fd,$8100,$9101,$a102,$b103,$c104
	dc.w $1105,$2106,$3107,$41bf,$527c,$627d,$727e,$827f
	dc.w $92bc,$a2bd,$b2be,$c2bf,$2002,$0003,$7267,$010d
	dc.w $1b01,$0005,$ffa1,$070d,$1b02,$0005,$0001,$070d
	dc.w $1b09,$0005,$ffe1,$090d,$1b10,$0005,$0001,$090d
	dc.w $1b19,$0005,$0001,$090d,$1b22,$0005,$0001,$090d
	dc.w $1b2b,$0005,$0001,$090d,$1b34,$0005,$0021,$070d
	dc.w $1b3d,$0005,$0001,$070d,$1b44,$0005,$0061,$010d

;0x1300
	dc.w $1b4b,$0001,$1bff,$0003,$70f6,$0007,$4c4d,$4e4f
	dc.w $4f50,$5157,$0052,$534f,$5455,$0056,$5750,$0052
	dc.w $5156,$5857,$59ff,$0005,$ffa2,$0007,$5a5b,$5c5d
	dc.w $5e5f,$6057,$6157,$5057,$5762,$534f,$5763,$5262
	dc.w $5150,$6455,$5351,$6365,$6667,$6800,$ff00,$0000 
	dc.w $0003,$7204,$0108

loc_001356:
	dc.b "WARNING",$ff

loc_00135e:
	dc.w $0003,$7068,$0108
	dc.b "THIS GAME IS FOR USE IN JAPAN ONLY",$2e,$ff

loc_001388:
	dc.w $0005,$0002,$0108
	dc.b "SALES,EXPORTS,OR OPERATION OUTSIDE",$ff,$00

	dc.w $0005,$0002,$0108
	dc.b "THIS TERRITORY MAY VIOLATE",$ff,$00

	dc.w $0005,$0002,$0108
	dc.b "INTERNATIONAL COPYRIGHT AND",$ff
	
	dc.w $0005,$0002,$0108
	dc.b "TRADEMARK LAW AND SUBJECT",$ff

	dc.w $0005,$0002,$0108
	dc.b "THE VIOLATOR TO SEVERE PENALTIES",$2e,$ff

	dc.w $0005,$0263,$0108
	dc.b "SNK CORPORATION",$ff
	dc.w $0000

loc_001456:
	dc.b $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f
	dc.b $10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f
	dc.b $20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$2a,$2b,$2c,$2d,$2e,$2f

loc_001486:
	incbin "boot/startuppal.bin"

loc_0014a0:
	incbin "boot/bootpal.bin"


;above needs to be cleaned up
