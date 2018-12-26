loc_01b19c:
	jsr loc_003a16
	jsr loc_005ce8
	jsr loc_0071e0
	move.w #$658,(-$4234,a5)
	movem.l d0/a0-a1,-(a7)
	move.w #$4300,-(a7)
	move.l #loc_01b374,-(a7)
	clr.w -(a7)
	move.w #$7167,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	movem.l d0/a0-a1,-(a7)
	move.w #$2300,-(a7)
	move.l #loc_01b388,-(a7)
	clr.w -(a7)
	move.w #$712f,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	movem.l d0/a0-a1,-(a7)
	move.w #$300,-(a7)
	move.l #loc_01b36e,-(a7)
	clr.w -(a7)
	move.w #$7131,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

loc_01b21a:
	move.w (-$f10,a5),d1
	lsl.w #2,d1
	lea loc_01b422(pc),a0
	movea.l (a0,d1.w),a0
	movem.l d0/a0-a1,-(a7)
	move.w #-$d00,-(a7)
	move.l a0,-(a7)
	clr.w -(a7)
	move.w #$71cf,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1

	move.w (-$f24,a5),d1
	lsl.w #2,d1
	lea loc_01b4fe(pc),a0
	movea.l (a0,d1.w),a0
	movem.l d0/a0-a1,-(a7)
	move.w #-$d00,-(a7)
	move.l a0,-(a7)
	clr.w -(a7)
	move.w #$71d1,-(a7)
	jsr FixTextWrite
	lea ($a,a7),a7
	movem.l (a7)+,d0/a0-a1
	sf d0
	btst #0,(-$f38,a5)
	beq.w loc_01b282
	or.b (-$53cd,a5),d0

loc_01b282:
	btst #1,(-$f38,a5)
	beq.w loc_01b290
	or.b (-$53cc,a5),d0

loc_01b290:
	btst #4,d0
	bne.w loc_01b2f6
	btst #0,d0
	beq.b loc_01b2b0
	subq.w #1,(-$f10,a5)
	cmpi.w #0,(-$f10,a5)
	bge.b loc_01b2b0
	move.w #0,(-$f10,a5)

loc_01b2b0:
	btst #1,d0
	beq.b loc_01b2c8
	addq.w #1,(-$f10,a5)
	cmpi.w #9,(-$f10,a5)
	ble.b loc_01b2c8
	move.w #9,(-$f10,a5)

loc_01b2c8:
	btst #2,d0
	beq.b loc_01b2d8
	subq.w #1,(-$f24,a5)
	bge.b loc_01b2d8
	clr.w (-$f24,a5)

loc_01b2d8:
	btst #3,d0
	beq.b loc_01b2f0
	addq.w #1,(-$f24,a5)
	cmpi.w #9,(-$f24,a5)
	ble.b loc_01b2f0
	move.w #9,(-$f24,a5)

loc_01b2f0:
	trap #5
	bra.w loc_01b21a

loc_01b2f6:
	move.w #$1e,-(a7)
	trap #4
	addq.l #2,a7
	move.w #0,(-$4234,a5)
	rts

;--------------------------
loc_01b306:
	dc.b "     NO BONUS     ",$00
	even

loc_01b31a:
	dc.b $00,$01,$00,$13,$0b,$24,$0b,$2d,$0b,$43,$0b,$24,$0b,$41,$00,$ff
	dc.b $0b,$48,$0b,$2e,$0b,$44,$0b,$41,$00,$ff,$0b,$28,$0b,$2d,$0b,$28
	dc.b $0b,$43,$0b,$28,$0b,$20,$0b,$2b,$0b,$42,$0b,$4a,$0b,$34,$0b,$3d
	dc.b $0b,$53,$0b,$34,$0b,$51,$00,$ff,$0b,$58,$0b,$3e,$0b,$54,$0b,$51
	dc.b $00,$ff,$0b,$38,$0b,$3d,$0b,$38,$0b,$53,$0b,$38,$0b,$30,$0b,$3b
	dc.b $0b,$52,$0b,$5a
	even

loc_01b36e:
	dc.b 'ENEMY',$00
	even

loc_01b374:
	dc.b 'DEBUG SCENE SELECT',00
	even

loc_01b388:
	dc.b 'SCENE',00
	even

loc_01b38e:
	dc.b $1C,$3B,$00,$26,$1C,$3C,$00,$24,$1C,$3D,$00,$20,$1C,$3E,$00,$16
	dc.b $1C,$3F,$00,$1A,$1C,$40,$00,$28,$1C,$41,$00,$20,$1C,$42,$00,$22
	dc.b $1C,$43,$00,$1E,$1C,$CE,$00,$26,$1C,$3B,$00,$26,$1C,$3B,$00,$26
	dc.b $1C,$3B,$00,$26,$1C,$3B,$00,$26,$1C,$3B,$00,$26,$1C,$3B,$00,$26

loc_01b3ce:
	dc.w $1C22,$1C23,$1C24,$1C25,$1C26,$1C27,$1C28,$1C29,$1C2A,$1C2B

loc_01b3e2:
	dc.w $28,$29,$2a,$2b,$2c,$2d,$2e,$2f
	dc.w $30,$37,$30,$30,$30,$30,$30,$30

;Stage IDs
loc_01b402:
	dc.w $1,$2,$3,$4,$5,$6,$7,$8
	dc.w $9,$a,$a,$a,$a,$a,$a,$a

loc_01b422:;stage names
	dc.l loc_01b44a,loc_01b45c,loc_01b46e,loc_01b480
	dc.l loc_01b492,loc_01b4a4,loc_01b4b6,loc_01b4c8
	dc.l loc_01b4da,loc_01b4ec

loc_01b44a:
	dc.b '1 JAPAN     (SHO)',$00
	even

loc_01b45c:
	dc.b '2 KOREA (DAOLONG)',$00
	even

loc_01b46e:
	dc.b '3 AMERICA(CONDOR)',$00
	even

loc_01b480:
	dc.b '4 TAIWAN    (TIA)',$00
	even

loc_01b492:
	dc.b '5 AMAZON   (RILA)',$00
	even

loc_01b4a4:
	dc.b '6 EJIPT (ALUSION)',$00
	even

loc_01b4b6:
	dc.b '7 FRANS  (PIELLE)',$00
	even

loc_01b4c8:
	dc.b '8 ARAB   (MAHERL)',$00
	even

loc_01b4da:
	dc.b '9 HONGKONG(BAIHU)',$00
	even

loc_01b4ec:
	dc.b '10 JAPAN2 (SAIZO)',$00
	even

;Debug Character Names
loc_01b4fe:
	dc.l loc_01b53e,loc_01b550,loc_01b562,loc_01b574
	dc.l loc_01b586,loc_01b598,loc_01b5aa,loc_01b5bc
	dc.l loc_01b5ce,loc_01b5e0,loc_01b5f2,loc_01b604
	dc.l loc_01b616,loc_01b628,loc_01b63a,loc_01b64c

loc_01b53e:
	dc.b '    SHO KAMUI    ',00

loc_01b550:
	dc.b '    DAO-LONG     ',00

loc_01b562:
	dc.b '  CONDOR HEADS   ',00

loc_01b574:
	dc.b '   TIA LANGRAY   ',00

loc_01b586:
	dc.b '      RILA       ',00

loc_01b598:
	dc.b '   ALSION III    ',00

loc_01b5aa:
	dc.b ' PIELLE MONTARIO ',00

loc_01b5bc:
	dc.b '   SERGE MAHERL  ',00

loc_01b5ce:
	dc.b '      BAI-HU     ',00

loc_01b5e0:
	dc.b '      SAIZO      ',00

loc_01b5f2:
	dc.b '       B. K.     ',00

loc_01b604:
	dc.b '       B. K.     ',00

loc_01b616:
	dc.b '       B. K.     ',00

loc_01b628:
	dc.b '       B. K.     ',00

loc_01b63a:
	dc.b '       B. K.     ',00

loc_01b64c:
	dc.b '       B. K.     ',00

;--------------------------
loc_01b65e:
	dc.b $84,$85,$86,$87,$88,$89,$8a,$8b
	dc.b $8c,$8d,$00,$01,$02,$03,$04,$05

loc_01b66e:
	dc.b $a0,$a1,$a2,$a3,$a4,$a5,$a6,$a7
	dc.b $a8,$a9,$00,$01,$02,$03,$04,$05

loc_01b67e:
	dc.b $06,$07,$08,$09,$0a,$0b,$0c,$0d
	dc.b $0e,$0f,$00,$01,$02,$03,$04,$05

loc_01b68e:
	dc.b 'SHO',$00,'DAO',$00,'CON',$00,'TIA',$00,'RIL',$00,'ALS',$00
	dc.b 'PIE',$00,'MAH',$00,'BAI',$00,'SAI',$00,'AAA',$00,'AAA',$00
	dc.b 'AAA',$00,'AAA',$00,'AAA',$00,'AAA',$00
	
loc_01b6ce:
	dc.b '  CONGRATULATIONS ! ',00
	even

loc_01b6e4:
	dc.b 'KAKUTO GAME ZENMEN CLEAR DA !',00
	even

loc_01b702:
	dc.b "----  STAFF ROLL  ----",00
	even

loc_01b71a:
	dc.b 'DOMO ARIGATO ..'
	even

loc_01b72a:
	dc.w $08c0,$08c3,$08c6,$08c9,$08cc

loc_01b734:
	dc.b '_ABCDEFGHIJKLMNOPQRSTUVWXYZ.@',00
	even

loc_01b752:
	dc.b ' ABCDEFGHIJKLMNOPQRSTUVWXYZ. ',00
	even

loc_01b770:
	dc.w $09C8,$0960,$0962,$0964,$0966,$0968,$096A,$096C
	dc.w $096E,$0980,$0982,$0984,$0986,$0988,$098A,$098C
	dc.w $098E,$09A0,$09A2,$09A4,$09A6,$09A8,$09AA,$09AC
	dc.w $09AE,$09C0,$09C2,$09C4,$09CA,$09CC,$09C6

loc_01b7ae:
	dc.l $00BB8,$02710,$04E20,$07530
	dc.l $09C40,$0C350,$0EA60,$11170
	dc.l $13880,$15F90,$1863C,$1863C
	dc.l $1863C,$1863C,$1863C,$1863C

loc_01b7ee:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0064,$0064,$0064,$0064,$0064,$0064
	dc.w $0064,$0064,$0064,$0064,$00C8,$00C8,$00C8,$00C8
	dc.w $00C8,$00C8,$00C8,$00C8,$00C8,$00C8,$012C,$012C
	dc.w $012C,$012C,$012C,$012C,$012C,$012C,$012C,$012C
	dc.w $0190,$0190,$0190,$0190,$0190,$01F4,$0258,$02BC
	dc.w $0320,$0384,$03E8,$044C,$04B0,$0514,$0578,$05DC
	dc.w $0640,$06A4,$0708,$076C,$07D0,$0898,$0960,$0A8C
	dc.w $0BB8,$0CE4,$0E10,$0F3C,$1068,$1194,$1388,$157C
	dc.w $1770,$1964,$1B58,$1D4C,$1F40,$2134,$2328,$251C
	dc.w $2710,$2AF8,$2EE0,$32C8,$36B0,$3A98,$3E80,$4268
	dc.w $4650,$4A38,$4E20,$4E20,$4E20,$4E20,$4E20,$4E20
	dc.w $4E20,$4E20,$4E20,$4E20,$0755,$0865,$0A75,$7FFF
	dc.w $066E,$0558,$0444,$0333,$0222,$0111,$0000,$0000

loc_01b8ce:
	dc.w $0FFF,$0F80,$0F08,$0000
	dc.w $0FFF,$0F80,$0F08,$0000
	dc.w $0FFF,$0F80,$0F08,$0000
	dc.w $0FFF,$0F80,$0F08,$0000
	dc.w $0000,$0000,$0000,$0000
	dc.w $0000

loc_01b8f8:
	dc.l loc_024614,loc_024634,loc_024654,loc_024674
	dc.l loc_024694,loc_0246b4,loc_0246d4,loc_0246f4

loc_01b918:
	dc.l loc_024614,loc_024634,loc_024654,loc_024674
	dc.l loc_024694,loc_0246b4,loc_0246d4,loc_0246f4

loc_01b938:
	dc.w $0001,$0000,$0001,$0000,$0002,$0001,$0005,$0000
	dc.w $0003,$0001,$0005,$0000,$0004,$0002,$0004,$0000
	dc.w $0005,$0003,$0003,$0000,$0006,$0004,$0003,$0000
	dc.w $0007,$0005,$0004,$0000,$0008,$0006,$0004,$0000
	dc.w $0009,$0007,$0005,$0000,$000A,$0007,$0005,$0000
