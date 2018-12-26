;===============================================;
;												;
;												;
;												;
;												;
;===============================================;


BIOS_CARD_COMMAND = $10FDC4
BIOS_CARD_ANSWER = $10FDC6
BIOS_CARD_START = $10FDC8
BIOS_CARD_SIZE = $10FDCC
BIOS_CARD_FCB = $10FDCE
BIOS_CARD_SUB = $10FDD0


BiosStartup = $C00402
BusError = $C00408
AddrsError = $C0040E
IllInstrct = $C00414
BasicError = $C00426
PrivViolat = $C0041A
TraceInstr = $C00420
PrepIntrpt = $C0042C
SpurIntrpt = $C00432
VBlankBios = $C00438
TimerIntrp = $C0043E


CARD = $C00468
CARD_ERROR = $C0046E

credcount = $D00034
soundstop = $D00046

soundreg = $320000

VRAMADDR = $3c0000
VRAMRW = $3c0002
VRAMMOD = $3c0004

palramaddr = $400000
palramend = $401ffe

