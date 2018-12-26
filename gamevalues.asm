gameregion = $10006c
;100076

;-a5
DifficultyLvl = -$7f92

StanimaSetting = -$7f8d

DDip0 = -$7f84
DDip1 = -$7f83

;extraflag = -$7f83 ;help debug it

;inputs
p1buttons = -$53d1
p2buttons = -$53d0

p1dir = -$53cd
p2dir = -$53cc


;P1 Start 1
;P1 Sel 2
;P2 Start 4
;P2 Sel 8
;p1sys = -$53cb
;p1sys = -$53ca

GameFlagState = $102c26 ;-53da

;102b4e

;103a1a BG memory start
;1 = stage
;14 x cam
;16 y cam
;1c x zoom
;1d y zoom

BGOBJramstart = $103b6a


BattleCounter = -$f2a

ArcadeProgress = -$f30
;Player Data from a5

p1ma5 = -$ea4;715c
;p1 = -$ea2
p1ida5 = -$e90;7170
p1pala5 = -$e92;7172
p1wincount = -$e88;7178

;Player 2
p2ma5 = -$944;76bc
;p2 -$942
p2ida5 = -$930
p2wincount = -$928

; -$38a

;------------------------------------
;Player data as an address size 560
;------------------------------------
plcpu = $00
;= $02
;= $06
;= $0c
plcharid = $14
plpalid = $16
; = $18
plwincount = $1c
plroundwin = $1e


;= $24 player check
;$25
;$26

;= $56
;= $5a

;= $b6
;= $b7
;= $b8
;= $b9
;= $ba
;= $bb
;= $bc
;= $be
;pnt = $c0
;pnt = $c4
;pnt = $c8
;pnt = $cc
;= $d0
;= $d2
;= $d4



;-2
riskmeter = $1a8
; = $1aa

;-4
;pnt = $1b6
;pnt = $1ba
;pnt = $1be
spcinppnt = $1c2
AIstrtpnt = $1c6

;pnt = $1ca
dshprgpnt = $1ce
atkanipnt = $1d2
hitboxpnt = $1d6
CpuAILpnt = $1da
;pnt = $1de
;pnt = $1e2
;pnt = $1e6
;pnt = $1ea
NtlAnipnt = $1ee

pl_life = $1f2

;$1fc
plmetergain = $202

;= $208
;= $209
plsidetimer = $20a; Timer for how long you were on one side counts to 0x7fff

plxpos = $20e
plypos = $212

plxmovement = $216
plymovement = $21a

;plxunk = $21e
;plyunk = $222

distXaway = $226
distYaway = $22a;air only



;$23a

;flags
Airflags = $246
;$247
;$248
;$249
;flags = $24a
;$24b
;$24c

;$25e
;$25f
;$260
;$266


;$272
;$273
;$274

;$290
;$292

;$29c
;$29e
;$2a0

;$2bc

framecount = $2d4
cellid = $2d8
;$2da
curcolboxpnt = $2dc
;$2e0
;$2e1
;$2e2

; = $2f6
; = $2f7
; = $2f8
; = $2f9
; = $2fa
; = $2fb
; = $2fc
; = $2fd

platkanimid = $2fe

;$30c
;$30e

;$340

;$344
;$346
;$348
;$34a
;$34c
;$34e
;$350
;$35c
;$35d
;$35e

;$360
;$361
;$362
;$363
;$364

;$366

;$368
;$369
;$36a


;$374
;$376
;$378
;$37a
;$37c

;$3c0
;$3c1
;$3c2

;$3c8
;$3c9
;$3ca
;$3cb
;$3cc
;$3cd
;$3ce

;move-start
;$3d8


;$402
;$403
;$404

;$40e
;$40f
;$410

;$4d0
;$4d1
;$4d2
;$4d3
;$4d4
;$4d5
;$4d6

;$4d8
;$4dc
;$4e0
;$4e4

plextcounter00 = $538
plextcounter01 = $539
plextcounter02 = $53a
plextflagcpy00 = $53b
plextflagcpy01 = $53c

;$550
;$552


;---------------------------
StateControl = $27fa ; add to a5

;10fdb6
;10fadc
;10fadf

mem10fd82 = $10fd82
;Region = $10fd83
;10fdb0

