;============================;
; Parental Advisory Graphics ;
;============================;
loc_00da46:
	movem.l d0/a0/a1,-(a7)
	move.w #$1000,-(a7)
	move.l #loc_00dcd2,-(a7)
	clr.w -(a7)
	move.w #$70ab,-(a7)
	jsr FixTextWrite
	lea (10,a7),a7
	movem.l (a7)+,d0/a0/a1
;da68
	movem.l d0/a0/a1,-(a7)
	move.w #$1000,-(a7)
	move.l #loc_00dcf2,-(a7)
	clr.w -(a7)
	move.w #$70ae,-(a7)
	jsr FixTextWrite
	lea (10,a7),a7
	movem.l (a7)+,d0/a0/a1
;da8a
	movem.l d0/a0/a1,-(a7)
	move.w #$1100,-(a7)
	move.l #loc_00dd12,-(a7)
	clr.w -(a7)
	move.w #$70b0,-(a7)
	jsr FixTextWrite
	lea (10,a7),a7
	movem.l (a7)+,d0/a0/a1
;daac
	movem.l d0/a0/a1,-(a7)
	move.w #$1200,-(a7)
	move.l #loc_00dd12,-(a7)
	clr.w -(a7)
	move.w #$70b1,-(a7)
	jsr FixTextWrite
	lea (10,a7),a7
	movem.l (a7)+,d0/a0/a1
;0xdace
	rts

;/\/\/\/\/\/\/\/\/\/;
;Data Data Data Data;
;/\/\/\/\/\/\/\/\/\/;
loc_00dad0:
	dc.w $0000,$0021,$0001,$0116,$0116,$0116,$0116,$0116
	dc.w $0116,$0116,$0116,$0116,$0116,$0116,$0116,$0116
	dc.w $0116,$0116,$0116,$0116,$0116,$0116,$0116,$0116
	dc.w $0116,$0116,$0116,$0116,$0116,$0116,$0116,$0116
	dc.w $0116,$0116,$0116,$0002


loc_00db18:
	dc.w $0000,$0021,$0003,$0117,$0117,$0117,$0117,$0117
	dc.w $0117,$0117,$0117,$0117,$0117,$0117,$0117,$0117
	dc.w $0117,$0117,$0117,$0117,$0117,$0117,$0117,$0117
	dc.w $0117,$0117,$0117,$0117,$0117,$0117,$0117,$0117
	dc.w $0117,$0117,$0117,$0004

loc_00db60:
	dc.w $000d,$0000,$0114,$0114,$0114,$0114,$0114,$0114
	dc.w $0114,$0114,$0114,$0114,$0114,$0114,$0114,$0114

loc_00db80:
	dc.w $000d,$0000,$0115,$0115,$0115,$0115,$0115,$0115
	dc.w $0115,$0115,$0115,$0115,$0115,$0115,$0115,$0115

loc_00dba0:
	dc.b " ANIMATED VIOLENCE - STRONG     ",$00
	even

loc_00dbc2:
	dc.b "   Contains scenes of strong    ",$00
	even

loc_00dbe4:
	dc.b " violence involving cartoon-like",$00
	even

loc_00dc06:
	dc.b " characters in fantasy or life- ",$00
	even
	
loc_00dc28:
	dc.b " like settings such as martial  ",$00
	even

loc_00dc4a:
	dc.b " arts or sports activities.     ",$00
	even

loc_00dc6c:
	dc.b " LANGUAGE - MILD                ",$00
	even

loc_00dc8e:
	dc.b "   Contains commonly used four- ",$00
	even

loc_00dcb0:
	dc.b " letter words.                  ",$00
	even

loc_00dcd2:
	dc.b "   PARENTAL ADVISORY WARNING   ",$00
	even

loc_00dcf2:
	dc.b "    This game is classified    ",$00
	even

loc_00dd12:
	dc.b "   ANIMATED VIOLENCE - MILD    ",$00
	even

