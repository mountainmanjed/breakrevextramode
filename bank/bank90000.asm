;--------------------------
;090000
loc_090384:
	clr.w (-$7f84,a5)
	sf (-$53d2,a5)
	jmp loc_017d2c

loc_090392:
	jmp loc_027de6

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_090398:
	dc.b 'Tue May 19 13:26:28 1998',$00,$00


;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0903b2:
	dc.l loc_027a3c,loc_090392,loc_02f762,loc_02f5e6
	dc.l loc_02f96e,loc_02fb4a,loc_02fa22,loc_02fad6
	dc.l loc_02fa7c,loc_02fc6c,loc_02fd3a,loc_02fe08
	dc.l loc_02fed6,loc_02ff60,loc_0302c4,loc_03041e
	dc.l loc_0304c4,loc_030630,loc_03068c,loc_030888
	dc.l loc_0320ac,loc_031fe8,loc_030910,loc_030916
	dc.l loc_031a2e,loc_031a40,loc_031a52,loc_03217c
	dc.l loc_03229c,loc_03231c,loc_0325d8,loc_03149e
	dc.l loc_031582,loc_03165e,loc_03177c,loc_031860
	dc.l loc_031462,loc_03194c,loc_0376ca,loc_03780e
	dc.l loc_037a32,loc_03ff48,loc_04008c,loc_053cb0
	dc.l loc_065724,loc_0659ee,loc_065b8c,loc_065c38
	dc.l loc_06ea90,loc_06ec28,loc_06ee06,loc_06eee6
	dc.l loc_07872c,loc_07891e,loc_078d0a,loc_078e0a
	dc.l loc_081aee,loc_081d34,loc_082070,loc_0824d4
	dc.l loc_08ad34,loc_08afca,loc_08b158,loc_08ae64
	dc.l loc_08b2d4,loc_08b420,loc_08acae

;===================;
;  Stage  Pointers  ;
;===================;
;orig breakers table
;884ee
loc_0904be:
	dc.l TitleSTG,ShoStage,DaoStage,ConStage
	dc.l TiaStage,RilStage,AlsStage,PieStage
	dc.l MahStage,BaiStage,SaiStage,GrdStage

;Animation Scripting function table
loc_0904ee:
	dc.l loc_022864,loc_022854,loc_02e676,loc_02e6f0
	dc.l loc_02e610,loc_02e67e,loc_02e6f8,loc_02e70c
	dc.l loc_02e746,loc_02e762,loc_02e7ce,loc_02e814
	dc.l loc_02e85a,loc_02e8a0,loc_02e8ec,loc_02e932

	dc.l loc_02e94e,loc_02e98c,loc_02e9d2,loc_02ea3a
	dc.l loc_02ea46,loc_02ea50,loc_02ea5a,loc_02ea8c
	dc.l loc_02eac4,loc_02eafc,loc_02eb02,loc_02eb0e
	dc.l loc_02eb1c,loc_02eb2a,loc_02eb36,loc_02eb4c

	dc.l loc_02eb5e,loc_02eb6e,loc_02eb7e,loc_02ebac
	dc.l loc_02ebb6,loc_02ebbc,loc_02ebc2,loc_02ebd0
	dc.l loc_02ebda,loc_02ebe4,loc_02ebf2,loc_02ebfc
	dc.l loc_02ec0c,loc_02f254,loc_02f294,loc_02f2d4

	dc.l loc_02f314,loc_02f354,loc_02f3e2,loc_02a642
	dc.l loc_02a6a0,loc_023384,loc_0233c2,loc_0233c6
	dc.l loc_0233cc,loc_0233e4,loc_0233f2,loc_023400
	dc.l loc_02342a,loc_023444,loc_0234cc,loc_0234f8

	dc.l loc_02352c,loc_02357a,loc_023598,loc_0235a6
	dc.l loc_0235ac,loc_0235b2,loc_0235bc,loc_02ea3a
	dc.l loc_02ea46,loc_02ea50,loc_02ec14,loc_02ec48
	dc.l loc_02ec76,loc_02ecaa,loc_02ecea,loc_02ed18

loc_09062e:
	dc.l loc_027f70,loc_027f60,loc_02e676,loc_02e6f0
	dc.l loc_02e610,loc_02e67e,loc_02e6f8,loc_02e70c
	dc.l loc_02e746,loc_02e762,loc_02e7ce,loc_02e814
	dc.l loc_02e85a,loc_02e8a0,loc_02e8ec,loc_02e932

	dc.l loc_02e94e,loc_02e98c,loc_02e9d2,loc_02ea3a
	dc.l loc_02ea46,loc_02ea50,loc_02ea5a,loc_02ea8c
	dc.l loc_02eac4

;~~~~~~~~~~~~~~~~~~~~~~~~~~
loc_090692:;displayz80musicids
	dc.w $0020,$0021,$0022,$0023,$0024,$0025,$0026,$0027
	dc.w $0028,$0029,$002a,$002b,$002c,$002d,$002e,$002f
	dc.w $0030,$0031,$0032,$0033,$0037,$005f,$007f

loc_0906c0:;displayz80sfxids
	dc.w $00c3,$00cb,$00f4,$00f5,$00f6,$00dd,$00f7,$00f8
	dc.w $00e0,$00e1,$00e2,$00e3,$00e4,$00e9,$00f9,$00fa
	dc.w $00fb,$00ff

loc_0906e4:
	dc.w $18ad,$18ae,$1865,$1866,$18b1,$1867
	dc.w $1868,$18b2,$18b3,$18b4,$1869,$186a
	dc.w $186b,$186c,$186d,$186f,$1870,$188a
	dc.w $188b,$188c,$188d,$188f,$1890,$1875
	dc.w $1891,$1892,$1893,$1894,$1897,$1898
	dc.w $189a,$189c,$187a,$189d,$189e,$189f
	dc.w $18a0,$18a1,$18a3,$18a4,$18a5,$18a7
	dc.w $18a9,$18aa,$1884,$1885,$1886,$18ab
	dc.w $18ac,$18c2,$18c3,$18c4,$18c5,$18c6
	dc.w $18c7,$18b8,$18b9,$18c8,$18ba,$18bb
	dc.w $18bc,$18c9,$18bd,$18ca,$18be,$18bf
	dc.w $18cb,$18c0,$18cc,$18c1,$18cd,$00c4
	dc.w $00c5,$00c6,$00c7,$00cc,$00cd,$18e6
	dc.w $18e7,$18e8,$18eb,$18ec,$18ed,$18ee
	dc.w $1cc8,$00c0,$00c1,$00c2,$00c3,$00c8
	dc.w $00c9,$00ca,$00ce,$00cf,$00d0,$00d1
	dc.w $00d2

loc_0907a6:
	dc.w $1c20,$1c21,$1c22,$1c23,$1c24,$1c25,$1c26,$1c27,$1c28,$1c29,$1c2a
	dc.w $1c2b,$1c2c,$1c2d,$1c2e,$1c2f,$1c30,$1c31,$1c32,$1c33,$1c34,$1c35
	dc.w $1c36,$1c37,$1c38,$1c39,$1c3a,$18ea,$1c3b,$1c3c,$1c3d,$1c3e,$1c3f
	dc.w $1c40,$1c41,$1c42,$1c43,$1c4e,$1c4f,$1c50,$1c51,$1c52,$1c53,$1c54
	dc.w $1a26,$1a27,$1a28,$1a29,$1a2a,$1a2b,$1c55,$1a2c,$1a2d,$1c56,$1a2e
	dc.w $1a2f,$1c57,$1a30,$1a31,$1c58,$1c59,$1c5a,$1c5b,$1a32,$1a33,$1a34
	dc.w $1a35,$1a36,$1cbb,$1cbc,$1cbd,$1cbe,$1cbf,$1cc0,$1cc1,$1a86,$1a87
	dc.w $1cc2,$1cc3,$1a88,$1a89,$1a8a,$1a8b,$1a8c,$1a8d,$1a8e,$1cc4,$1cc5
	dc.w $1a8f,$1a90,$1a91,$1a92,$1c5c,$1a37,$1a38,$1a39,$1a3a,$1c5d,$1c5e
	dc.w $1c5f,$1a3b,$1c61,$1c62,$1c63,$1c64,$1c65,$1a3c,$1c66,$1c67,$1c68
	dc.w $1c69,$1a3d,$1c6a,$1c6b,$1a3e,$1a3f,$1c6c,$1a40,$1a41,$1ca6,$1ca7
	dc.w $1ca8,$1ca9,$1caa,$1cab,$1cac,$1cad,$1cae,$1caf,$1cb0,$1a6e,$1a71
	dc.w $1a73,$1a75,$1a77,$1a79,$1a7a,$1a7b,$1a7c,$1cb1,$1a7d,$1a7e,$1a7f
	dc.w $1a80,$1a81,$1cb2,$1cb3,$1cb4,$1cb5,$1cb6,$1cb7,$1cb8,$1cb9,$1cba
	dc.w $1a82,$1a83,$1a84,$1a85,$1c6d,$1c6e,$1c6f,$1c70,$1a42,$1c71,$1c72
	dc.w $1c73,$1c74,$1a43,$1a44,$1a45,$1a46,$1c75,$1c76,$1c77,$1c78,$1a47
	dc.w $1c79,$1c7a,$1a48,$1c7b,$1a49,$1a4a,$1a4b,$1c7c,$1c7d,$1c7e,$1c7f
	dc.w $1a4c,$1c80,$1a4d,$1a4e,$1c81,$1c82,$1c83,$1a4f,$1a50,$1c84,$1c85
	dc.w $1c86,$1c87,$1a51,$1a52,$1a53,$1a54,$1a55,$1a56,$1c88,$1c89,$1c8a
	dc.w $1c8b,$1c8c,$1c8d,$1c8e,$1c8f,$1a57,$1a58,$1a59,$1c90,$1c91,$1a5a
	dc.w $1a5b,$1c92,$1c93,$1c94,$1a5c,$1a5d,$1a5e,$1a5f,$1a60,$1a61,$1c95
	dc.w $1c96,$1c97,$1a62,$1a63,$1c98,$1a64,$1a65,$1a66,$1c99,$1c9a,$1c9b
	dc.w $1c9c,$1a67,$1c9d,$1a68,$1a69,$1a6a,$1c9e,$1c9f,$1ca0,$1ca1,$1ca2
	dc.w $1ca3,$1ca4,$1a6b,$1a6c,$1a6d,$1c44,$1c45,$1c46,$1c47,$1860,$1c48
	dc.w $1861,$1862,$1863,$1864,$1a20,$1a21,$1a22,$1c49,$1c4a,$1c4b,$1c4c
	dc.w $1c4d,$1a23,$1a24,$1a25,$18ef,$1ca5,$1cc6,$1cc7,$00d3,$00d4,$00d5
	dc.w $00d6,$00d7,$00d8,$00d9,$00da,$00db,$00dc,$00de,$00df,$1cc9,$1cca
	dc.w $1ccb,$00e6,$00e7,$00e8,$00ea,$1ccc,$187d,$00eb,$187f,$00ee,$00ef
	dc.w $00f0,$00f1,$00f2,$00f3,$00f9,$00fa,$00fb,$00fc,$00fd,$00fe,$00ff
	dc.w $186e,$1871,$1872,$1873,$1874,$1cce,$1876,$1877,$1878,$00ec,$00ed
	dc.w $187c

loc_090a3c:
	dc.w $0000,$1a26,$1a27,$1a28,$1a29,$1a2a,$1a2b,$1a2c
	dc.w $1a2d,$1a2e,$1a2f,$1a30,$1a31,$1a32,$1a33,$1a34
	dc.w $1a35,$1a36,$1a37,$1a38,$1a39,$1a3a,$1a3b,$1a3c
	dc.w $1a3d,$1a3e,$1a3f,$1a40,$1a41,$1a42,$1a43,$1a44
	dc.w $1a45,$1a46,$1a47,$1a48,$1a49,$1a4a,$1a4b,$1a4c
	dc.w $1a4d,$1a4e,$1a4f,$1a50,$1a51,$1a52,$1a53,$1a54
	dc.w $1a55,$1a56,$1a57,$1a58,$1a59,$1a5a,$1a5b,$1a5c
	dc.w $1a5d,$1a5e,$1a5f,$1a60,$1a61,$1a62,$1a63,$1a64
	dc.w $1a65,$1a66,$1a67,$1a68,$1a69,$1a6a,$1a6b,$1a6c
	dc.w $1a6d,$1a6e,$1a6f,$1a70,$1a71,$1a72,$1a73,$1a74
	dc.w $1a75,$1a76,$1a77,$1a78,$1a79,$1a7a,$1a7b,$1a7c
	dc.w $1a7d,$1a7e,$1a7f,$1a80,$1a81,$1a82,$1a83,$1a84
	dc.w $1a85,$1a86,$1a87,$1a88,$1a89,$1a8a,$1a8b,$1a8c
	dc.w $1a8d,$1a8e,$1a8f,$1a90,$1a91,$1a92,$1860,$1861
	dc.w $1862,$1863,$1864,$1a20,$1a21,$1a22,$1a23,$1a24
	dc.w $1a25,$187d,$00ee,$00ef,$00f0,$00f1,$00f2,$00f3
	dc.w $00f9,$00fa,$00fb,$00fc,$00fd,$00fe,$00ff,$186e
	dc.w $1871,$1872,$1873,$1874,$1876,$1878,$1877,$00ec
	dc.w $00ed,$0000,$1a93,$1a94,$1a95,$1a96,$1a97,$1a98
	dc.w $1a99,$1a9a,$1a9b,$1a9c,$1a9d,$1a9e,$1a9f,$1aa0
	dc.w $1aa1,$1aa2,$1aa3,$1aa4,$1aa5,$1aa6,$1aa7,$1aa8
	dc.w $1aa9,$1aaa,$1aab,$1aac,$1aad,$1aae,$1aaf,$1ab0
	dc.w $1ab1,$1ab2,$1ab3,$1ab4,$1ab5,$1ab6,$1ab7,$1ab8
	dc.w $1ab9,$1aba,$1abb,$1abc,$1abd,$1abe,$1abf,$1ac0
	dc.w $1ac1,$1ac2,$1ac3,$1ac4,$1ac5,$1ac6,$1ac7,$1ac8
	dc.w $1ac9,$1aca,$1acb,$1acc,$1acd,$1ace,$1acf,$1ad0
	dc.w $1ad1,$1ad2,$1ad3,$1ad4,$1ad5,$1ad6,$1ad7,$1ad8
	dc.w $1ad9,$1ada,$1adb,$1adc,$1add,$1ade,$1adf,$1ae0
	dc.w $1ae1,$1ae2,$1ae3,$1ae4,$1ae5,$1ae6,$1ae7,$1ae8
	dc.w $1ae9,$1aea,$1aeb,$1aec,$1aed,$1aee,$1aef,$1af0
	dc.w $1af1,$1af2,$1af3,$1af4,$1af5,$1af6,$1af7,$1af8
	dc.w $1af9,$1afa,$1afb,$1afc,$1afd,$1afe,$1aff,$1860
	dc.w $1861,$1862,$1863,$1864,$1a20,$1a21,$1a22,$1a23
	dc.w $1a24,$1a25,$1ccd,$1880,$1881,$1882,$1883,$1887
	dc.w $1888,$1889,$188e,$1895,$1896,$1899,$189b,$1ae5
	dc.w $18a2,$18a6,$18a8,$18af,$18b0,$18b5,$18b7,$18b6
	dc.w $1879,$187b

loc_090c80:;Aes Font Menu Palettes
	dc.l loc_096af8,loc_096b18,loc_096b38,loc_096b58
	dc.l loc_096b78,loc_096b98,loc_096bb8,loc_096bd8
	dc.l $00000000

loc_090ca4:
	dc.l loc_096bf8,loc_096c18,loc_096c38,loc_096c58
	dc.l loc_096c78,loc_096c98,$00000000

loc_090cc0:
	dc.l loc_096cb8,loc_096cd8,titlebgpalette,titlebgreverse
	dc.l $00000000

loc_090cd4:
	dc.l loc_096dec,loc_096e0c,loc_096e2c
	dc.l $00000000

loc_090ce4:;Title
	dc.l loc_096e6c,loc_097230,loc_0975f4;addr+4 = ; addr+8 = bg
	dc.l loc_0979b8,loc_097d7c,loc_098140
	dc.l loc_09818c,loc_09833e,loc_0983f6
	dc.l loc_098416,loc_098552,loc_0985e6
	dc.l loc_098638,loc_098690,loc_09871c
	dc.l loc_098756,loc_0987f0,loc_09882a
	dc.l loc_09888e,loc_0988f2,loc_098924
	dc.l loc_098982,loc_0989a2,loc_098a36
	dc.l loc_098a4c,loc_098ad8,loc_098b24

;Visco Logo
loc_090d50:
	dc.l loc_098b5e,loc_098baa,loc_098bde,loc_098c06

;Revenge Logo
loc_090d60:
	dc.l loc_098c3a

;Charaselect items
loc_090d64:
	dc.l loc_098cbc,loc_098cc0,loc_098cf4,loc_098d14
	dc.l loc_098d34,loc_098d54,loc_098d74,loc_098d94
	dc.l loc_098db4,loc_098dd4,loc_098df4,loc_098e14
	dc.l loc_098e34,loc_098e4e,loc_098efa,loc_098f5e
	dc.l loc_098fce,loc_099012,loc_09906a,loc_0990ec
	dc.l loc_0991bc,loc_099580,loc_09959c,loc_0995b8
	dc.l loc_0995e0,loc_099674,loc_0996f0,loc_0997b4
	dc.l loc_099878,loc_09993c,loc_099a00,loc_099a94
	dc.l loc_099b28,loc_099bd4

loc_090dec:
	dc.l loc_099c68,loc_099cae,loc_099cd0
	dc.l loc_099ce0,loc_099ce8,loc_099cf0
	dc.l loc_099cf8,loc_099d00,loc_099d08
	dc.l loc_099d10,loc_099d18,loc_099d20
	dc.l loc_099d28,loc_099d44,loc_099d58
	dc.l loc_099d6c,loc_099d80,loc_099ebc
	dc.l loc_09a040,loc_09a2b4,loc_09a4da
	dc.l loc_09a5f0,loc_09a6b8,loc_09a716
	dc.l loc_09a74a,loc_09a77e,loc_09a79e
	dc.l loc_09a7be,loc_09a7de,loc_09a7fe
	dc.l loc_09a81e,loc_09a83e,loc_09a85e
	dc.l loc_09a87e,loc_09a89e,loc_09a8be
	dc.l loc_09ac82,loc_09b046,loc_09b40a
	dc.l loc_09b7ce,loc_09ba90,loc_09bc44
	dc.l loc_09bd6e,loc_09be44,loc_09bee4
	dc.l loc_09bf60,loc_09bfa0,loc_09bfe0
	dc.l loc_09c062,loc_09c078,loc_09c08e
	dc.l loc_09c0d2,loc_09c116,loc_09c13e
	dc.l loc_09c166,loc_09c18e,loc_09c282
	dc.l loc_09c376,loc_09c42e,loc_09c4c2
	dc.l loc_09c544,loc_09c5b4,loc_09c624
	dc.l loc_09c694,loc_09c716,loc_09c798
	dc.l loc_09c81a,loc_09c89c,loc_09c91e
	dc.l loc_09c9a0,loc_09ca22,loc_09caa4
	dc.l loc_09cc58,loc_09d01c,loc_09d3e0
	dc.l loc_09d6e4,loc_09d958,loc_09da04
	dc.l loc_09dada,loc_09db9e,loc_09dc44
	dc.l loc_09dcd0,loc_09dd34,loc_09dd98
	dc.l loc_09ddfc,loc_09de60,loc_09e224
	dc.l loc_09e5e8,loc_09e8f8,loc_09eb54
	dc.l loc_09ecc0,loc_09ed3c,loc_09ee30
	dc.l loc_09ef24,loc_09f018,loc_09f10c
	dc.l loc_09f1c4,loc_09f27c,loc_09f2ba
	dc.l loc_09f324,loc_09f388,loc_09f40a
	dc.l loc_09f484,loc_09f4fe,loc_09f578
	dc.l loc_09f580,loc_09f588,loc_09f590
	dc.l loc_09f598,loc_09f5a0,loc_09f5a8
	dc.l loc_09f5b0,loc_09f5b8,loc_09f5c0

loc_090fb4:
	dc.l loc_09f5c8,loc_09f950,loc_09fcd8,loc_09fce8
	dc.l loc_09fcf8,loc_09fd08,loc_09fd18,loc_09fd28
	dc.l loc_09fd38,loc_09fd48,loc_09fd58,loc_09fd68

loc_090fe4:
	dc.l loc_09fe28,loc_09fe48,loc_09fe68,loc_09fe88
	dc.l loc_09fea8,loc_09fec8,loc_09fee8,loc_09ff08
	dc.l loc_09ff28,loc_09ff48,loc_09ff68,loc_09ff88
	dc.l loc_09ffa8,loc_09ffc8,loc_09ffe8,loc_0a0008
	dc.l loc_0a0028,loc_0a0048,loc_0a0068,loc_0a0088
	dc.l loc_0a00a8,loc_0a00c8,loc_0a00e8,loc_0a0108
	dc.l loc_0a0128,loc_0a0148,loc_0a0168,loc_0a0188
	dc.l loc_0a01a8,loc_0a01c8,loc_0a01e8,loc_0a0208
	dc.l loc_0a0228,loc_0a0248,loc_0a0268,loc_0a0288
	dc.l loc_0a02a8,loc_0a02c8,loc_0a02e8,loc_0a0308
	dc.l loc_0a0328,loc_0a0348,loc_0a0368,loc_0a0388
	dc.l loc_0a03a8,loc_0a03c8,loc_0a03e8,loc_0a0408
	dc.l loc_0a0428,loc_0a0448,loc_0a0468,loc_0a0488
	dc.l loc_0a04a8,loc_0a04c8,loc_0a04e8,loc_0a0508
	dc.l loc_0a0528,loc_0a0548,loc_0a0568,loc_0a0588
	dc.l loc_0a05a8,loc_0a05c8,loc_0a05e8,loc_0a0608
	dc.l loc_0a0628,loc_0a0648,loc_0a0668,loc_0a0688
	dc.l loc_0a06a8,loc_0a06c8,loc_0a06e8,loc_0a0708
	dc.l loc_0a0728,loc_0a0748,loc_0a0768,loc_0a0788
	dc.l loc_0a07a8
	dc.l $00000000

loc_09111c:
	dc.l loc_0a07c8,loc_0a07e8,loc_0a0808,loc_0a0828
	dc.l loc_0a0848,loc_0a0868,loc_0a0888,loc_0a08a8
	dc.l loc_0a08c8,loc_0a08e8,loc_0a0908,loc_0a0928
	dc.l loc_0a0948,loc_0a0968,loc_0a0988,loc_0a09a8
	dc.l loc_0a09c8,loc_0a09e8,loc_0a0a08,loc_0a0a28
	dc.l loc_0a0a48,loc_0a0a68,loc_0a0a88
	dc.l $00000000

loc_09117c:
	dc.l loc_0a0aa8,loc_0a0ac8,loc_0a0ae8,loc_0a0b08
	dc.l loc_0a0b28,loc_0a0b48,loc_0a0b68,loc_0a0b88
	dc.l loc_0a0ba8,loc_0a0bc8,loc_0a0be8,loc_0a0c08
	dc.l loc_0a0c28,loc_0a0c48,loc_0a0c68,loc_0a0c88
	dc.l loc_0a0ca8,loc_0a0cc8,loc_0a0ce8,loc_0a0d08
	dc.l loc_0a0d28,loc_0a0d48,loc_0a0d68,loc_0a0d88
	dc.l loc_0a0da8,loc_0a0dc8
	dc.l $00000000

loc_0911e8:
	dc.l loc_0a0de8,loc_0a0e08,loc_0a0e28,loc_0a0e48
	dc.l loc_0a0e68,loc_0a0e88,loc_0a0ea8,loc_0a0ec8
	dc.l loc_0a0ee8,loc_0a0f08,loc_0a0f28,loc_0a0f48
	dc.l loc_0a0f68,loc_0a0f88,loc_0a0fa8,loc_0a0fc8
	dc.l loc_0a0fe8,loc_0a1008,loc_0a1028,loc_0a1048
	dc.l loc_0a1068,loc_0a1088,loc_0a10a8,loc_0a10c8
	dc.l loc_0a10e8,loc_0a1108,loc_0a1128,loc_0a1148
	dc.l loc_0a1168,loc_0a1188,loc_0a11a8,loc_0a11c8
	dc.l loc_0a11e8,loc_0a1208,loc_0a1228,loc_0a1248
	dc.l loc_0a1268
	dc.l $00000000

loc_091280:
	dc.l loc_0a1288,loc_0a12a8,loc_0a12c8,loc_0a12e8
	dc.l loc_0a1308,loc_0a1328,loc_0a1348,loc_0a1368
	dc.l loc_0a1388,loc_0a13a8,loc_0a13c8,loc_0a13e8
	dc.l loc_0a1408,loc_0a1428,loc_0a1448,loc_0a1468
	dc.l loc_0a1488,loc_0a14a8,loc_0a14c8,loc_0a14e8
	dc.l loc_0a1508,loc_0a1528,loc_0a1548,loc_0a1568
	dc.l loc_0a1588,loc_0a15a8,loc_0a15c8,loc_0a15e8
	dc.l loc_0a1608,loc_0a1628,loc_0a1648,loc_0a1668
	dc.l loc_0a1688,loc_0a16a8,loc_0a16c8,loc_0a16e8
	dc.l loc_0a1708,loc_0a1728,loc_0a1748,loc_0a1768
	dc.l loc_0a1788,loc_0a17a8,loc_0a17c8,loc_0a17e8
	dc.l loc_0a1808,loc_0a1828,loc_0a1848,loc_0a1868
	dc.l loc_0a1888,loc_0a18a8,loc_0a18c8,loc_0a18e8
	dc.l loc_0a1908,loc_0a1928,loc_0a1948,loc_0a1968
	dc.l loc_0a1988,loc_0a19a8,loc_0a19c8,loc_0a19e8
	dc.l loc_0a1a08,loc_0a1a28,loc_0a1a48,loc_0a1a68
	dc.l loc_0a1a88,loc_0a1aa8,loc_0a1ac8,loc_0a1ae8
	dc.l loc_0a1b08,loc_0a1b28,loc_0a1b48,loc_0a1b68
	dc.l loc_0a1b88
	dc.l $00000000

loc_0913a8:
	dc.l loc_0a1be8,loc_0a1c08,loc_0a1c28,loc_0a1c48
	dc.l loc_0a1c68,loc_0a1c88,loc_0a1ca8,loc_0a1cc8
	dc.l loc_0a1ce8,loc_0a1d08,loc_0a1d28,loc_0a1d48
	dc.l loc_0a1d68,loc_0a1d88,loc_0a1da8,loc_0a1dc8
	dc.l loc_0a1de8,loc_0a1e08,loc_0a1e28,loc_0a1e48
	dc.l loc_0a1e68,loc_0a1e88,loc_0a1ea8,loc_0a1ec8
	dc.l loc_0a1ee8,loc_0a1f08,loc_0a1f28,loc_0a1f48
	dc.l loc_0a1f68,loc_0a1f88
	dc.l $00000000

loc_091424:
	dc.l loc_0a1fa8,loc_0a1fc8,loc_0a1fe8,loc_0a2008
	dc.l loc_0a2028,loc_0a2048,loc_0a2068,loc_0a2088
	dc.l loc_0a20a8,loc_0a20c8,loc_0a20e8,loc_0a2108
	dc.l loc_0a2128,loc_0a2148,loc_0a2168,loc_0a2188
	dc.l loc_0a21a8,loc_0a21c8,loc_0a21e8,loc_0a2208
	dc.l loc_0a2228,loc_0a2248,loc_0a2268,loc_0a2288
	dc.l loc_0a22a8,loc_0a22c8,loc_0a22e8,loc_0a2308
	dc.l loc_0a2328,loc_0a2348,loc_0a2368,loc_0a2388
	dc.l loc_0a23a8,loc_0a23c8,loc_0a23e8,loc_0a2408
	dc.l loc_0a2428,loc_0a2448,loc_0a2468,loc_0a2488
	dc.l loc_0a24a8,loc_0a24c8,loc_0a24e8,loc_0a2508
	dc.l loc_0a2528,loc_0a2548,loc_0a2568,loc_0a2588
	dc.l loc_0a25a8,loc_0a25c8,loc_0a25e8,loc_0a2608
	dc.l loc_0a2628,loc_0a2648,loc_0a2668,loc_0a2688
	dc.l $00000000

loc_091508:
	dc.l loc_0a26a8,loc_0a26c8,loc_0a26e8,loc_0a2708
	dc.l loc_0a2728,loc_0a2748,loc_0a2768,loc_0a2788
	dc.l loc_0a27a8,loc_0a27c8,loc_0a27e8,loc_0a2808
	dc.l loc_0a2828,loc_0a2848,loc_0a2868,loc_0a2888
	dc.l loc_0a28a8,loc_0a28c8,loc_0a28e8,loc_0a2908
	dc.l loc_0a2928,loc_0a2948,loc_0a2968,loc_0a2988
	dc.l loc_0a29a8,loc_0a29c8,loc_0a29e8,loc_0a2a08
	dc.l loc_0a2a28,loc_0a2a48,loc_0a2a68,loc_0a2a88
	dc.l loc_0a2aa8,loc_0a2ac8,loc_0a2ae8,loc_0a2b08
	dc.l loc_0a2b28,loc_0a2b48,loc_0a2b68,loc_0a2b88
	dc.l loc_0a2ba8,loc_0a2bc8,loc_0a2be8,loc_0a2c08
	dc.l loc_0a2c28,loc_0a2c48,loc_0a2c68,loc_0a2c88
	dc.l loc_0a2ca8,loc_0a2cc8,loc_0a2ce8,loc_0a2d08
	dc.l loc_0a2d28,loc_0a2d48,loc_0a2d68
	dc.l $00000000

loc_0915e8:
	dc.l loc_0a2d88,loc_0a2da8,loc_0a2dc8,loc_0a2de8
	dc.l loc_0a2e08,loc_0a2e28,loc_0a2e48,loc_0a2e68
	dc.l loc_0a2e88,loc_0a2ea8,loc_0a2ec8,loc_0a2ee8
	dc.l loc_0a2f08,loc_0a2f28,loc_0a2f48,loc_0a2f68
	dc.l loc_0a2f88,loc_0a2fa8,loc_0a2fc8,loc_0a2fe8
	dc.l loc_0a3008,loc_0a3028,loc_0a3048,loc_0a3068
	dc.l loc_0a3088,loc_0a30a8,loc_0a30c8,loc_0a30e8
	dc.l loc_0a3108,loc_0a3128,loc_0a3148,loc_0a3168
	dc.l loc_0a3188,loc_0a31a8,loc_0a31c8,loc_0a31e8
	dc.l loc_0a3208,loc_0a3228,loc_0a3248,loc_0a3268
	dc.l loc_0a3288,loc_0a32a8,loc_0a32c8,loc_0a32e8
	dc.l loc_0a3308,loc_0a3328,loc_0a3348,loc_0a3368
	dc.l loc_0a3388
	dc.l $00000000

loc_0916b0:
	dc.l loc_0a33a8,loc_0a33c8,loc_0a33e8,loc_0a3408
	dc.l loc_0a3428,loc_0a3448,loc_0a3468,loc_0a3488
	dc.l loc_0a34a8,loc_0a34c8,loc_0a34e8,loc_0a3508
	dc.l loc_0a3528,loc_0a3548,loc_0a3568,loc_0a3588
	dc.l loc_0a35a8,loc_0a35c8,loc_0a35e8,loc_0a3608
	dc.l loc_0a3628,loc_0a3648,loc_0a3668,loc_0a3688
	dc.l loc_0a36a8
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_091718:
	dc.l loc_0a36e8,loc_0a3708,loc_0a3728,loc_0a3748
	dc.l loc_0a3768,loc_0a3788
	dc.l $00000000

loc_091734:
	dc.l loc_0a37a8,loc_0a37c8,loc_0a37e8,loc_0a3808
	dc.l loc_0a3828,loc_0a3848
	dc.l $00000000

loc_091750:
	dc.l loc_0a3868,loc_0a3888,loc_0a38a8,loc_0a38c8
	dc.l loc_0a38e8,loc_0a3908
	dc.l $00000000

loc_09176c:
	dc.l loc_0a3928,loc_0a3948,loc_0a3968,loc_0a3988
	dc.l loc_0a39a8,loc_0a39c8
	dc.l $00000000

loc_091788:
	dc.l loc_0a39e8,loc_0a3a08,loc_0a3a28,loc_0a3a48
	dc.l loc_0a3a68,loc_0a3a88
	dc.l $00000000

loc_0917a4:
	dc.l loc_0a3aa8,loc_0a3ac8,loc_0a3ae8,loc_0a3b08
	dc.l loc_0a3b28,loc_0a3b48
	dc.l $00000000

loc_0917c0:
	dc.l loc_0a3b68,loc_0a3b88,loc_0a3ba8,loc_0a3bc8
	dc.l loc_0a3be8,loc_0a3c08
	dc.l $00000000

loc_0917dc:
	dc.l loc_0a3c28,loc_0a3c48,loc_0a3c68,loc_0a3c88
	dc.l loc_0a3ca8,loc_0a3cc8
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_0917f8:
	dc.l loc_0a3ce8,loc_0a3d08,loc_0a3d28,loc_0a3d48
	dc.l loc_0a3d68,loc_0a3d88,loc_0a3da8,loc_0a3dc8
	dc.l loc_0a3de8,loc_0a3e08,loc_0a3e28,loc_0a3e48
	dc.l loc_0a3e68,loc_0a3e88,loc_0a3ea8,loc_0a3ec8
	dc.l loc_0a3ee8,loc_0a3f08,loc_0a3f28,loc_0a3f48
	dc.l loc_0a3f68,loc_0a3f88,loc_0a3fa8,loc_0a3fc8
	dc.l loc_0a3fe8,loc_0a4008,loc_0a4028,loc_0a4048
	dc.l loc_0a4068,loc_0a4088,loc_0a40a8,loc_0a40c8
	dc.l loc_0a40e8,loc_0a4108,loc_0a4128,loc_0a4148
	dc.l loc_0a4168,loc_0a4188,loc_0a41a8,loc_0a41c8
	dc.l loc_0a41e8,loc_0a4208,loc_0a4228,loc_0a4248
	dc.l loc_0a4268,loc_0a4288,loc_0a42a8,loc_0a42c8
	dc.l loc_0a42e8,loc_0a4308,loc_0a4328,loc_0a4348
	dc.l loc_0a4368,loc_0a4388,loc_0a43a8,loc_0a43c8
	dc.l loc_0a43e8,loc_0a4408,loc_0a4428,loc_0a4448
	dc.l loc_0a4468,loc_0a4488,loc_0a44a8,loc_0a44c8
	dc.l loc_0a44e8,loc_0a4508,loc_0a4528,loc_0a4548
	dc.l loc_0a4568,loc_0a4588,loc_0a45a8,loc_0a45c8
	dc.l loc_0a45e8,loc_0a4608,loc_0a4628,loc_0a4648
	dc.l loc_0a4668,loc_0a4688,loc_0a46a8,loc_0a46c8
	dc.l loc_0a46e8
	dc.l $00000000

loc_091940:
	dc.l loc_0a4708,loc_0a47fc,loc_0a49b0,loc_0a4b3a
	dc.l loc_0a4c82,loc_0a4cc2,loc_0a4db6,loc_0a50ba
	dc.l loc_0a51cc,loc_0a5260,loc_0a5372,loc_0a53fe
	dc.l loc_0a552c,loc_0a55a8,loc_0a560c,loc_0a5640
	dc.l loc_0a5680,loc_0a56e4,loc_0a59e8,loc_0a5a82
	dc.l loc_0a5ad2,loc_0a5b22,loc_0a5bbc,loc_0a5ec0
	dc.l loc_0a5ffc,loc_0a6138,loc_0a624e,loc_0a6364
	dc.l loc_0a6464,loc_0a6564,loc_0a6664,loc_0a6764
	dc.l loc_0a6840,loc_0a68e6,loc_0a698c,loc_0a6a44
	dc.l loc_0a6afc,loc_0a6bb4,loc_0a6cac,loc_0a6da4
	dc.l loc_0a6e80,loc_0a6f5c,loc_0a7038,loc_0a7114
	dc.l loc_0a71f0,loc_0a72b2,loc_0a7374,loc_0a7436
	dc.l loc_0a74f8,loc_0a75ba,loc_0a7696,loc_0a7772
	dc.l loc_0a77f4,loc_0a7876,loc_0a78f8,loc_0a797a
	dc.l loc_0a79fc,loc_0a7a7e,loc_0a7b00,loc_0a7b82
	dc.l loc_0a7c04,loc_0a7c86,loc_0a7d08,loc_0a7d8a
	dc.l loc_0a7e0c,loc_0a7e88,loc_0a7f04,loc_0a7f80
	dc.l loc_0a7ffc,loc_0a8078,loc_0a80f4,loc_0a8170
	dc.l loc_0a81ec,loc_0a8268,loc_0a82e4,loc_0a8360
	dc.l loc_0a83dc,loc_0a8470,loc_0a84ce,loc_0a852c
	dc.l loc_0a858a,loc_0a85e8,loc_0a8646,loc_0a86a4
	dc.l loc_0a8702,loc_0a8760,loc_0a87be,loc_0a881c
	dc.l loc_0a887a,loc_0a88c6,loc_0a8912,loc_0a895e
	dc.l loc_0a89aa,loc_0a89f6,loc_0a8a30,loc_0a8a6a
	dc.l loc_0a8aa4,loc_0a8ade,loc_0a8b18,loc_0a8b52
	dc.l loc_0a8b8c,loc_0a8bc6,loc_0a8c00,loc_0a8c3a
	dc.l loc_0a8ffe,loc_0a9272,loc_0a9366,loc_0a955a
	dc.l loc_0a972c,loc_0a98fe,loc_0a9ad0,loc_0a9cc4
	dc.l loc_0a9d14,loc_0a9d36,loc_0a9d76,loc_0a9d8c
	dc.l loc_0a9ddc,loc_0a9df2,loc_0a9e42,loc_0a9e5e
	dc.l loc_0a9e9e,loc_0a9eb4,loc_0a9eca,loc_0a9ee0
	dc.l loc_0a9ef0

loc_091b34:
	dc.l loc_0a9efa,loc_0aa01e,loc_0aa15a,loc_0aa332
	dc.l loc_0aa546,loc_0aa5da,loc_0aa692,loc_0aa786
	dc.l loc_0aa7de,loc_0aa942,loc_0aa976,loc_0aaa0a
	dc.l loc_0aac72,loc_0aad56,loc_0aadda,loc_0aae6e
	dc.l loc_0ab00a,loc_0ab18a,loc_0ab26a,loc_0ab2aa
	dc.l loc_0ab2de,loc_0ab312,loc_0ab31e,loc_0ab552
	dc.l loc_0ab56e,loc_0ab626,loc_0ab696,loc_0ab99a
	dc.l loc_0aba46,loc_0abbaa,loc_0abc6e,loc_0abd92
	dc.l loc_0abe5a,loc_0abece,loc_0abf7a,loc_0ac4be
	dc.l loc_0aca02,loc_0acf46,loc_0ad48a,loc_0ad9ce
	dc.l loc_0adb3e,loc_0adc5a,loc_0add26,loc_0addea
	dc.l loc_0ade5e,loc_0adec2,loc_0adf8e,loc_0ae00a
	dc.l loc_0ae12e,loc_0ae162,loc_0ae196,loc_0ae2ea
	dc.l loc_0ae34e,loc_0ae392,loc_0ae3de,loc_0ae586
	dc.l loc_0ae602,loc_0ae692,loc_0ae6a6,loc_0ae746
	dc.l loc_0ae88a,loc_0ae8ee,loc_0ae95e,loc_0ae992
	dc.l loc_0aeb3a,loc_0aeb5e,loc_0aec12,loc_0aed4e
	dc.l loc_0aeeba,loc_0af2ba,loc_0af822,loc_0af916
	dc.l loc_0afcaa,loc_0b018e,loc_0b046a,loc_0b0746
	dc.l loc_0b0bfa,loc_0b0e92

loc_091c6c:
	dc.l loc_0b112a,loc_0b114a,loc_0b116a,loc_0b118a
	dc.l loc_0b11aa,loc_0b11ca,loc_0b11ea,loc_0b120a
	dc.l loc_0b122a,loc_0b124a
	dc.l $00000000

loc_091c98:
	dc.l loc_0b128a,loc_0b1432,loc_0b1616,loc_0b19da
	dc.l loc_0b1a26,loc_0b1b0c,loc_0b1c30,loc_0b1caa
	dc.l loc_0b1cee,loc_0b1d9a,loc_0b1e2e,loc_0b1eda
	dc.l loc_0b1f48,loc_0b200c,loc_0b20d0,loc_0b217c
	dc.l loc_0b2252,loc_0b22a8,loc_0b2372,loc_0b241e
	dc.l loc_0b247c,loc_0b24da,loc_0b259c,loc_0b25fa
	dc.l loc_0b2676,loc_0b26c2,loc_0b2744,loc_0b27dc
	dc.l loc_0b283a,loc_0b286e

loc_091d10:
	dc.l loc_0b2926,loc_0b2946
	dc.l $00000000

loc_091d1c:
	dc.l loc_0b2986,loc_0b29ba,loc_0b29d6,loc_0b2a46
	dc.l loc_0b2ac2,loc_0b2b06,loc_0b2ba6,loc_0b2bfe
	dc.l loc_0b2ca8,loc_0b2d6c,loc_0b2dc4,loc_0b2e5e
	dc.l loc_0b2f22,loc_0b2f42,loc_0b2f58,loc_0b2fc8
	dc.l loc_0b2ff0,loc_0b302a,loc_0b308e,loc_0b3122
	dc.l loc_0b31ce,loc_0b327a,loc_0b3356,loc_0b33ea
	dc.l loc_0b34c0,loc_0b3542,loc_0b3562,loc_0b3594
	dc.l loc_0b363a,loc_0b36d4,loc_0b3744,loc_0b37c6
	dc.l loc_0b3842,loc_0b38fa,loc_0b39b2,loc_0b3a20
	dc.l loc_0b3a6c,loc_0b3b48,loc_0b3bf2,loc_0b3c60
	dc.l loc_0b3c6a,loc_0b3c7a,loc_0b3c96,loc_0b3cb8
	dc.l loc_0b3cea,loc_0b3d12,loc_0b3d3a,loc_0b3d6e
	dc.l loc_0b3da2,loc_0b3dd6,loc_0b3e08,loc_0b3e48
	dc.l loc_0b3e88,loc_0b3eb0,loc_0b3ed8,loc_0b3f00
	dc.l loc_0b3f34,loc_0b3f68,loc_0b3f90,loc_0b3fb8
	dc.l loc_0b3fc2,loc_0b3fd0,loc_0b3ff0,loc_0b4010
	dc.l loc_0b4042,loc_0b4082,loc_0b40c2,loc_0b4102
	dc.l loc_0b4142,loc_0b4182,loc_0b41d2,loc_0b4222
	dc.l loc_0b4262,loc_0b42a2,loc_0b42f2,loc_0b4342
	dc.l loc_0b4376,loc_0b43aa,loc_0b43d2,loc_0b4404
	dc.l loc_0b4454,loc_0b44b2,loc_0b4510,loc_0b456e
	dc.l loc_0b45d2,loc_0b45fa,loc_0b4668,loc_0b46a2
	dc.l loc_0b4700,loc_0b474c,loc_0b47ba,loc_0b4806
	dc.l loc_0b4888,loc_0b4964,loc_0b4974,loc_0b49f6
	dc.l loc_0b4a78,loc_0b4afa,loc_0b4b92,loc_0b4bde
	dc.l loc_0b4c7e,loc_0b4ce2,loc_0b4d38,loc_0b4e1e
	dc.l loc_0b4e6a,loc_0b4eae,loc_0b4f94,loc_0b4fe0
	dc.l loc_0b5038,loc_0b511e,loc_0b516a,loc_0b519e
	dc.l loc_0b521a,loc_0b529c,loc_0b52bc,loc_0b5350
	dc.l loc_0b5390,loc_0b53a6,loc_0b53c8,loc_0b5420
	dc.l loc_0b5434,loc_0b544a,loc_0b5472,loc_0b549a
	dc.l loc_0b54c2,loc_0b54de,loc_0b5536,loc_0b5558
	dc.l loc_0b55d4,loc_0b55e4,loc_0b5678,loc_0b5694
	dc.l loc_0b573a,loc_0b575c,loc_0b5802,loc_0b5852
	dc.l loc_0b587a,loc_0b58ba,loc_0b5906,loc_0b593a
	dc.l loc_0b5998,loc_0b59e8,loc_0b5a56,loc_0b5aae
	dc.l loc_0b5b06,loc_0b5b22,loc_0b5be6,loc_0b5c1a
	dc.l loc_0b5c66,loc_0b5c98,loc_0b5d06,loc_0b5d38
	dc.l loc_0b5d60,loc_0b5db8,loc_0b5dda,loc_0b5df0
	dc.l loc_0b5e48,loc_0b5e6a,loc_0b5e7a,loc_0b5eac
	dc.l loc_0b5eda,loc_0b5ee4,loc_0b5f16,loc_0b5f3e
	dc.l loc_0b5f5a,loc_0b5f62,loc_0b5f7e

loc_091fb8:
	dc.l loc_0b5f86,loc_0b5fa6,loc_0b5fc6,loc_0b5fe6
	dc.l loc_0b6006,loc_0b6026,loc_0b6046,loc_0b6066
	dc.l $00000000

loc_091fdc:
	dc.l loc_0b6086

loc_091fe0:
	dc.l loc_0b60a8
	dc.l loc_0b6124

loc_091fe8:
	dc.l loc_0b61a0

loc_091fec:
	dc.l loc_0b64a4,loc_0b6550,loc_0b6566,loc_0b6576
	dc.l loc_0b6596,loc_0b65ac,loc_0b65cc,loc_0b65f4
	dc.l loc_0b660a,loc_0b6620,loc_0b6640,loc_0b6650
	dc.l loc_0b6670,loc_0b667e,loc_0b6694,loc_0b66a4
	dc.l loc_0b66ba,loc_0b66c8,loc_0b66de,loc_0b66ee
	dc.l loc_0b66fe,loc_0b670e,loc_0b671e,loc_0b6726
	dc.l loc_0b6736,loc_0b673e,loc_0b674e,loc_0b6756
	dc.l loc_0b6766,loc_0b676e,loc_0b677e,loc_0b67a0
	dc.l loc_0b67c8,loc_0b67f0,loc_0b6812,loc_0b6834
	dc.l loc_0b6856,loc_0b6878,loc_0b68a4,loc_0b68d8
	dc.l loc_0b690c,loc_0b6946,loc_0b6968,loc_0b69a0
	dc.l loc_0b69c2,loc_0b69ee,loc_0b6a10,loc_0b6a30
	dc.l loc_0b6a58,loc_0b6a80,loc_0b6ab2,loc_0b6ae6
	dc.l loc_0b6b2c,loc_0b6b8a

loc_0920c4:
	dc.l loc_0b6bbe,loc_0b6bde,loc_0b6bfe,loc_0b6c1e
	dc.l loc_0b6c3e,loc_0b6c5e,loc_0b6c7e,loc_0b6c9e
	dc.l loc_0b6cbe,loc_0b6cde
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;check later
loc_0920f0:
	dc.l loc_0b6e4e,loc_0b6e6e,loc_0b6e8e,loc_0b6eae
	dc.l loc_0b6ece
	dc.l $00000000

loc_092108:
	dc.l loc_0b6eee,loc_0b6f0e,loc_0b6f2e,loc_0b6f4e
	dc.l loc_0b6f6e
	dc.l $00000000

loc_092120:
	dc.l loc_0b6f8e,loc_0b6fae,loc_0b6fce,loc_0b6fee
	dc.l loc_0b700e
	dc.l $00000000

loc_092138
	dc.l loc_0b702e,loc_0b704e,loc_0b706e,loc_0b708e
	dc.l loc_0b70ae
	dc.l $00000000

loc_092150:
	dc.l loc_0b70ce,loc_0b70ee,loc_0b710e,loc_0b712e
	dc.l loc_0b714e
	dc.l $00000000

loc_092168:
	dc.l loc_0b716e,loc_0b718e,loc_0b71ae,loc_0b71ce
	dc.l loc_0b71ee
	dc.l $00000000

loc_092180:
	dc.l loc_0b720e,loc_0b722e,loc_0b724e,loc_0b726e
	dc.l loc_0b728e
	dc.l $00000000

loc_092198:
	dc.l loc_0b72ae,loc_0b72ce,loc_0b72ee,loc_0b730e
	dc.l loc_0b732e
	dc.l $00000000

loc_0921b0:
	dc.l loc_0b734e,loc_0b736e,loc_0b738e,loc_0b73ae
	dc.l loc_0b73ce
	dc.l $00000000

loc_0921c8:
	dc.l loc_0b73ee,loc_0b740e,loc_0b742e,loc_0b744e
	dc.l loc_0b746e
	dc.l $00000000

loc_0921e0:
	dc.l loc_0b748e,loc_0b74ae,loc_0b74ce,loc_0b74ee
	dc.l loc_0b750e
	dc.l $00000000

loc_0921f8:
	dc.l loc_0b752e,loc_0b754e,loc_0b756e,loc_0b758e
	dc.l loc_0b75ae
	dc.l $00000000

loc_092210:
	dc.l loc_0b75ce,loc_0b75ee,loc_0b760e,loc_0b762e
	dc.l loc_0b764e
	dc.l $00000000

loc_092228:
	dc.l loc_0b766e,loc_0b768e,loc_0b76ae,loc_0b76ce
	dc.l loc_0b76ee
	dc.l $00000000

loc_092240:
	dc.l loc_0b770e,loc_0b772e,loc_0b774e,loc_0b776e
	dc.l loc_0b778e
	dc.l $00000000

loc_092258:
	dc.l loc_0b77ae,loc_0b77ce,loc_0b77ee,loc_0b780e
	dc.l loc_0b782e
	dc.l $00000000

loc_092270:
	dc.l loc_0b784e,loc_0b786e,loc_0b788e,loc_0b78ae
	dc.l loc_0b78ce
	dc.l $00000000

loc_092288:
	dc.l loc_0b78ee,loc_0b790e,loc_0b792e,loc_0b794e
	dc.l loc_0b796e
	dc.l $00000000

loc_0922a0:
	dc.l loc_0b798e,loc_0b79ae,loc_0b79ce,loc_0b79ee
	dc.l loc_0b7a0e
	dc.l $00000000

loc_0922b8:
	dc.l loc_0b7a2e,loc_0b7a4e,loc_0b7a6e,loc_0b7a8e
	dc.l loc_0b7aae
	dc.l $00000000

loc_0922d0:
	dc.l loc_0b7ace,loc_0b7aee,loc_0b7b0e,loc_0b7b2e
	dc.l loc_0b7b4e
	dc.l $00000000

loc_0922e8:
	dc.l loc_0b7b6e,loc_0b7b8e,loc_0b7bae,loc_0b7bce
	dc.l loc_0b7bee
	dc.l $00000000

loc_092300:
	dc.l loc_0b7c0e,loc_0b7c2e,loc_0b7c4e,loc_0b7c6e
	dc.l loc_0b7c8e
	dc.l $00000000

loc_092318:
	dc.l loc_0b7cae,loc_0b7cce,loc_0b7cee,loc_0b7d0e
	dc.l loc_0b7d2e
	dc.l $00000000

loc_092330:
	dc.l loc_0b7d4e,loc_0b7d6e,loc_0b7d8e,loc_0b7dae
	dc.l loc_0b7dce
	dc.l $00000000

loc_092348:
	dc.l loc_0b7dee,loc_0b7e0e,loc_0b7e2e,loc_0b7e4e
	dc.l loc_0b7e6e
	dc.l $00000000

loc_092360:
	dc.l loc_0b7e8e,loc_0b7eae,loc_0b7ece,loc_0b7eee
	dc.l loc_0b7f0e
	dc.l $00000000

loc_092378:
	dc.l loc_0b7f2e,loc_0b7f4e,loc_0b7f6e,loc_0b7f8e
	dc.l loc_0b7fae
	dc.l $00000000

loc_092390:
	dc.l loc_0b7fce,loc_0b7fee,loc_0b800e,loc_0b802e
	dc.l loc_0b804e
	dc.l $00000000

loc_0923a8:
	dc.l loc_0b806e,loc_0b808e,loc_0b80ae,loc_0b80ce
	dc.l loc_0b80ee
	dc.l $00000000

loc_0923c0:
	dc.l loc_0b810e,loc_0b812e,loc_0b814e,loc_0b816e
	dc.l loc_0b818e
	dc.l $00000000

loc_0923d8:
	dc.l loc_0b81ae,loc_0b81ce,loc_0b81ee,loc_0b820e
	dc.l loc_0b822e
	dc.l $00000000

loc_0923f0:
	dc.l loc_0b824e,loc_0b826e,loc_0b828e,loc_0b82ae
	dc.l loc_0b82ce
	dc.l $00000000

loc_092408:
	dc.l loc_0b82ee,loc_0b830e,loc_0b832e,loc_0b834e
	dc.l loc_0b836e
	dc.l $00000000

loc_092420:
	dc.l loc_0b838e,loc_0b83ae,loc_0b83ce,loc_0b83ee
	dc.l loc_0b840e
	dc.l $00000000

loc_092438:
	dc.l loc_0b842e,loc_0b844e,loc_0b846e,loc_0b848e
	dc.l loc_0b84ae
	dc.l $00000000

loc_092450:
	dc.l loc_0b84ce,loc_0b84ee,loc_0b850e,loc_0b852e
	dc.l loc_0b854e
	dc.l $00000000

loc_092468:
	dc.l loc_0b856e,loc_0b858e,loc_0b85ae,loc_0b85ce
	dc.l loc_0b85ee
	dc.l $00000000

loc_092480:
	dc.l loc_0b860e,loc_0b862e,loc_0b864e,loc_0b866e
	dc.l loc_0b868e
	dc.l $00000000

loc_092498:
	dc.l loc_0b86ae,loc_0b86ce,loc_0b86ee,loc_0b870e
	dc.l loc_0b872e
	dc.l $00000000

loc_0924b0:
	dc.l loc_0b874e,loc_0b876e,loc_0b878e,loc_0b87ae
	dc.l loc_0b87ce
	dc.l $00000000

loc_0924c8:
	dc.l loc_0b87ee,loc_0b880e,loc_0b882e,loc_0b884e
	dc.l loc_0b886e
	dc.l $00000000

loc_0924e0:
	dc.l loc_0b888e,loc_0b88ae,loc_0b88ce,loc_0b88ee
	dc.l loc_0b890e
	dc.l $00000000

loc_0924f8:
	dc.l loc_0b892e,loc_0b894e,loc_0b896e,loc_0b898e
	dc.l loc_0b89ae
	dc.l $00000000

loc_092510:
	dc.l loc_0b89ce,loc_0b89ee,loc_0b8a0e,loc_0b8a2e
	dc.l loc_0b8a4e
	dc.l $00000000

loc_092528:
	dc.l loc_0b8a6e,loc_0b8a8e,loc_0b8aae,loc_0b8ace
	dc.l loc_0b8aee
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_092540:
	dc.l loc_0b8b0e,loc_0b8b2a,loc_0b8b5e,loc_0b8b86
	dc.l loc_0b8ba2,loc_0b8bbe,loc_0b8bf2,loc_0b8c1a
	dc.l loc_0b8c4e,loc_0b8c7c

loc_092568:
	dc.l loc_0b8c80,loc_0b8ccc

loc_092570:
	dc.l loc_0b8d18,loc_0b8d64

loc_092578:
	dc.l loc_0b8db0

loc_09257c:
	dc.l loc_0b8e8c,loc_0b8fba,loc_0b8fbe,loc_0b8fc2
	dc.l loc_0b9386,loc_0b974a,loc_0b9b0e,loc_0b9ed2
	dc.l loc_0ba296,loc_0ba65a,loc_0baa1e,loc_0bade2
	dc.l loc_0bb1a6,loc_0bb32a,loc_0bb4de,loc_0bb632
	dc.l loc_0bb786,loc_0bb87a,loc_0bb99e,loc_0bba62
	dc.l loc_0bbb26,loc_0bbbba,loc_0bbc4e,loc_0bbcb2
	dc.l loc_0bbd16,loc_0bbd20,loc_0bbd2a,loc_0bbd82
	dc.l loc_0bbdce,loc_0bbe4a,loc_0bbec6,loc_0bbf72
	dc.l loc_0bc006,loc_0bc088,loc_0bc0f8,loc_0bc148
	dc.l loc_0bc198,loc_0bc1d8,loc_0bc218,loc_0bc27c
	dc.l loc_0bc2c8,loc_0bc2e4,loc_0bc312,loc_0bc33a
	dc.l loc_0bc362,loc_0bc38a,loc_0bc3b2,loc_0bc3da

loc_09263c:
	dc.l loc_0bc402,loc_0bc41e,loc_0bc452,loc_0bc47a
	dc.l loc_0bc496,loc_0bc4b2,loc_0bc4e6,loc_0bc50e
	dc.l loc_0bc542,loc_0bc570,loc_0bc59e,loc_0bc5ba
	dc.l loc_0bc5e8,loc_0bc610,loc_0bc638,loc_0bc660
	dc.l loc_0bc688,loc_0bc6b0,loc_0bc6d8,loc_0bc706
	dc.l loc_0bc734

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_092690:
	dc.l loc_0926b8,loc_0926cc,loc_0926e0,loc_0926f4
	dc.l loc_092708,loc_09271c,loc_092730,loc_092744
	dc.l loc_092758,loc_09276c

loc_0926b8:
	dc.l loc_0bc75c,loc_0bc878,loc_0bc994,loc_0bcab0
	dc.l loc_0bcbcc

loc_0926cc:
	dc.l loc_0bcce8,loc_0bce04,loc_0bcf20,loc_0bd03c
	dc.l loc_0bd158

loc_0926e0:
	dc.l loc_0bd274,loc_0bd390,loc_0bd4ac,loc_0bd5c8
	dc.l loc_0bd6e4

loc_0926f4:
	dc.l loc_0bd800,loc_0bd91c,loc_0bda38,loc_0bdb54
	dc.l loc_0bdc70

loc_092708:
	dc.l loc_0bdd8c,loc_0bdea8,loc_0bdfc4,loc_0be0e0
	dc.l loc_0be1fc

loc_09271c:
	dc.l loc_0be318,loc_0be434,loc_0be550,loc_0be66c
	dc.l loc_0be788

loc_092730:
	dc.l loc_0be8a4,loc_0be9c0,loc_0beadc,loc_0bebf8
	dc.l loc_0bed14

loc_092744:
	dc.l loc_0bee30,loc_0bef4c,loc_0bf068,loc_0bf184
	dc.l loc_0bf2a0

loc_092758:
	dc.l loc_0bf3bc,loc_0bf4d8,loc_0bf5f4,loc_0bf710
	dc.l loc_0bf82c

loc_09276c:
	dc.l loc_0bf948,loc_0bfa64,loc_0bfb80,loc_0bfc9c
	dc.l loc_0bfdb8

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_092780:
	dc.l loc_0bfed4

loc_092784:
	dc.l loc_0c03d8,loc_0c03e0,loc_0c03ea,loc_0c03f8
	dc.l loc_0c040c,loc_0c0428,loc_0c044e,loc_0c0480
	dc.l loc_0c04c0,loc_0c04e2,loc_0c0522,loc_0c0580
	dc.l loc_0c061a,loc_0c06f0,loc_0c0802,loc_0c096e

loc_0927c4:
	dc.l loc_0c0b52,loc_0c0b6c,loc_0c0b74,loc_0c0b7c
	dc.l loc_0c0b84,loc_0c0bc4,loc_0c0bce,loc_0c0be2
	dc.l loc_0c0bf6,loc_0c0f7e,loc_0c0f86

loc_0927f0:
	dc.l loc_0c0f8e,loc_0c0fae,loc_0c0fce,loc_0c0fee
	dc.l loc_0c100e,loc_0c102e,loc_0c104e,loc_0c106e
	dc.l loc_0c108e,loc_0c10ae,loc_0c10ce,loc_0c10ee
	dc.l loc_0c110e,loc_0c112e,loc_0c114e,loc_0c116e
	dc.l loc_0c118e,loc_0c11ae,loc_0c11ce
	dc.l $00000000

loc_092840:
	dc.l loc_0c11ee,CharSelPalP1Indactor,CharSelPalP2Indactor,CharSelPalCPUIndactor
	dc.l loc_0c126e,loc_0c128e,loc_0c12ae,loc_0c12ce
	dc.l loc_0c12ee,loc_0c130e,loc_0c132e,loc_0c134e
	dc.l loc_0c136e,loc_0c138e,loc_0c13ae,loc_0c13ce
	dc.l loc_0c13ee
	dc.l $00000000

loc_092888:
	dc.l loc_0c1b6e,loc_0c1b8e,loc_0c1bae,loc_0c1bce
	dc.l loc_0c1bee,loc_0c1c0e,loc_0c1c2e,loc_0c1c4e
	dc.l loc_0c1c6e,loc_0c1c8e,loc_0c1cae,loc_0c1cce
	dc.l loc_0c1cee,loc_0c1d0e,loc_0c1d2e,loc_0c1d4e
	dc.l loc_0c1d6e,loc_0c1d8e,loc_0c1dae,loc_0c1dce
	dc.l loc_0c1dee,loc_0c1e0e,loc_0c1e2e,loc_0c1e4e
	dc.l loc_0c1e6e,loc_0c1e8e,loc_0c1eae,loc_0c1ece
	dc.l loc_0c1eee,loc_0c1f0e,loc_0c1f2e,loc_0c1f4e
	dc.l loc_0c1f6e,loc_0c1f8e,loc_0c1fae,loc_0c1fce
	dc.l loc_0c1fee,loc_0c200e,loc_0c202e,loc_0c204e
	dc.l loc_0c206e,loc_0c208e,loc_0c20ae,loc_0c20ce
	dc.l $00000000

loc_09293c:;miniportpalettepnts
	dc.l MiniportBGpalSho,MiniportBGpalPie,MiniportBGpalCon,MiniportBGpalRil
	dc.l MiniportBGpalTia,MiniportBGpalAls,MiniportBGpalMah,MiniportBGpalDao
	dc.l MiniportBGpalSai,MiniportBGpalBai
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_092968:
	dc.l loc_0c2350
	dc.l $00000000

loc_092970
	dc.l loc_0c2370
	dc.l $00000000

loc_092978:
	dc.l loc_0c2390
	dc.l $00000000

loc_092980:
	dc.l loc_0c23b0
	dc.l $00000000

loc_092988:
	dc.l loc_0c23d0
	dc.l $00000000

loc_092990:
	dc.l loc_0c23f0
	dc.l $00000000

loc_092998:
	dc.l loc_0c2410
	dc.l $00000000

loc_0929a0:
	dc.l loc_0c2430
	dc.l $00000000

loc_0929a8:
	dc.l loc_0c2450
	dc.l $00000000

loc_0929b0:
	dc.l loc_0c2470
	dc.l $00000000

loc_0929b8:
	dc.l loc_0c2490
	dc.l $00000000

loc_0929c0:
	dc.l loc_0c24b0
	dc.l $00000000

loc_0929c8:
	dc.l loc_0c24d0
	dc.l $00000000

loc_0929d0:
	dc.l loc_0c24f0
	dc.l $00000000

loc_0929d8:
	dc.l loc_0c2510
	dc.l $00000000

loc_0929e0:
	dc.l loc_0c2530
	dc.l $00000000

loc_0929e8:
	dc.l loc_0c2550
	dc.l $00000000

loc_0929f0:
	dc.l loc_0c2570
	dc.l $00000000

loc_0929f8:
	dc.l loc_0c2590
	dc.l $00000000

loc_092a00:
	dc.l loc_0c25b0
	dc.l $00000000

;/\/\/\/\/\/\/\/\/\/\/\/\/\
;selector
loc_092a08:
	dc.l loc_0c25d0,loc_0c25e6,loc_0c25ee,loc_0c25f6
	dc.l loc_0c25fe,loc_0c2606,loc_0c260e,loc_0c2616
	dc.l loc_0c261e,loc_0c2626,loc_0c262e,loc_0c2636
	dc.l loc_0c263e,loc_0c2646,loc_0c264e,loc_0c2656
	dc.l loc_0c265e,loc_0c2666,loc_0c266e,loc_0c2676
	dc.l loc_0c267e,loc_0c2686,loc_0c268e,loc_0c2696
	dc.l loc_0c269e,loc_0c26a6,loc_0c26ae,loc_0c26b6

loc_092a78:
	dc.l loc_0c26be

loc_092a7c:
	dc.l loc_0c26d4,loc_0c26ea

;origbreakbigport
loc_092a84:
	dc.l loc_0c26ee,loc_0c281e,loc_0c294e,loc_0c2a7e
	dc.l loc_0c2bae,loc_0c2cde,loc_0c2e0e,loc_0c2f3e
	dc.l loc_0c306e,loc_0c3372,loc_0c34a2,loc_0c35d2
	dc.l loc_0c3702,loc_0c3832,loc_0c3962,loc_0c3a92
	dc.l loc_0c3bc2,loc_0c3cf2,loc_0c3e22,loc_0c3f52

;CharSelBGGFX?
loc_092ad4:
	dc.l loc_0c4082,loc_0c4346,loc_0c43b6

loc_092ae0:
	dc.l loc_0c4426,loc_0c4442,loc_0c445e,loc_0c447a
	dc.l loc_0c4496,loc_0c44b2,loc_0c44ce,loc_0c44ea
	dc.l loc_0c4506,loc_0c4522,loc_0c453e

loc_092b0c:
	dc.l loc_0c455a

loc_092b10:
	dc.l loc_0c485e

loc_092b14:
	dc.l loc_0c4b62

loc_092b18:
	dc.l loc_0c4e66

loc_092b1c:
	dc.l loc_0c516a

loc_092b20:
	dc.l loc_0c552e

loc_092b24:
	dc.l loc_0c58f2

loc_092b28:
	dc.l loc_0c5cb6,loc_0c603e,loc_0c6402,loc_0c66d6
	dc.l loc_0c69aa


loc_092b3c:
	dc.l loc_0c6c7e

loc_092b40:
	dc.l loc_0c70ba

loc_092b44:
	dc.l loc_0c75be
	
loc_092b48:
	dc.l loc_0c7ac2,loc_0c7b9e,loc_0c8016,loc_0c851a
	dc.l loc_0c8a1e,loc_0c8f22,loc_0c8f6e

loc_092b64:
	dc.l loc_0c8fba,loc_0c8fd6,loc_0c8fec,loc_0c901a
	dc.l loc_0c9048,loc_0c9076,loc_0c90a2,loc_0c90d0
	dc.l loc_0c9102,loc_0c9124,loc_0c9152,loc_0c9186
	dc.l loc_0c91b8,loc_0c91ec,loc_0c921e,loc_0c924a
	dc.l loc_0c9270,loc_0c92a4,loc_0c92d2,loc_0c9304
	dc.l loc_0c9330,loc_0c9364,loc_0c9396,loc_0c93c2
	dc.l loc_0c93f6,loc_0c942a,loc_0c9446,loc_0c9472
	dc.l loc_0c94a6,loc_0c94da,loc_0c950c,loc_0c953e
	dc.l loc_0c956a,loc_0c9590,loc_0c95c2,loc_0c95f4
	dc.l loc_0c961a,loc_0c9652,loc_0c9684,loc_0c96b8
	dc.l loc_0c96ec,loc_0c9720,loc_0c9758,loc_0c9780
	dc.l loc_0c97a2,loc_0c97d6,loc_0c9808,loc_0c9834
	dc.l loc_0c9866,loc_0c9886,loc_0c98b2,loc_0c98d2
	dc.l loc_0c98f4,loc_0c991c

loc_092c3c:
	dc.l loc_0cb146,loc_0cb166,loc_0cb186,loc_0cb1a6
	dc.l loc_0cb1c6,loc_0cb1e6
	dc.l $00000000

;--------------------------
;check later
loc_092c58:
	dc.l loc_0cb3d6,loc_0cb3f6,loc_0cb416
	dc.l $00000000

loc_092c68:
	dc.l loc_0cb436,loc_0cb456,loc_0cb476
	dc.l $00000000

loc_092c78:
	dc.l loc_0cb496,loc_0cb4b6,loc_0cb4d6
	dc.l $00000000

loc_092c88:
	dc.l loc_0cb4f6,loc_0cb516,loc_0cb536
	dc.l $00000000

loc_092c98:
	dc.l loc_0cb556,loc_0cb576,loc_0cb596
	dc.l $00000000

loc_092ca8:
	dc.l loc_0cb5b6,loc_0cb5d6,loc_0cb5f6
	dc.l $00000000

loc_092cb8:
	dc.l loc_0cb616,loc_0cb636,loc_0cb656
	dc.l $00000000

loc_092cc8:
	dc.l loc_0cb676,loc_0cb696,loc_0cb6b6
	dc.l $00000000

loc_092cd8:
	dc.l loc_0cb6d6,loc_0cb6f6,loc_0cb716
	dc.l $00000000

loc_092ce8:
	dc.l loc_0cb736,loc_0cb756,loc_0cb776
	dc.l $00000000

loc_092cf8:
	dc.l loc_0cb796,loc_0cb7b6,loc_0cb7d6
	dc.l $00000000

loc_092d08:
	dc.l loc_0cb7f6,loc_0cb816,loc_0cb836
	dc.l $00000000

loc_092d18:
	dc.l loc_0cb856,loc_0cb876,loc_0cb896
	dc.l $00000000

loc_092d28:
	dc.l loc_0cb8b6,loc_0cb8d6,loc_0cb8f6
	dc.l $00000000

loc_092d38:
	dc.l loc_0cb916,loc_0cb936,loc_0cb956
	dc.l $00000000

loc_092d48:
	dc.l loc_0cb976,loc_0cb996,loc_0cb9b6
	dc.l $00000000

loc_092d58:
	dc.l loc_0cb9d6,loc_0cb9f6,loc_0cba16
	dc.l $00000000

loc_092d68:
	dc.l loc_0cba36,loc_0cba56,loc_0cba76
	dc.l $00000000

loc_092d78:
	dc.l loc_0cba96,loc_0cbab6,loc_0cbad6
	dc.l $00000000

loc_092d88:
	dc.l loc_0cbaf6,loc_0cbb16,loc_0cbb36
	dc.l $00000000

loc_092d98:
	dc.l loc_0cbb56,loc_0cbb76,loc_0cbb96
	dc.l $00000000

loc_092da8:
	dc.l loc_0cbbb6,loc_0cbbd6,loc_0cbbf6
	dc.l $00000000

loc_092db8:
	dc.l loc_0cbc16,loc_0cbc36,loc_0cbc56
	dc.l $00000000

loc_092dc8:
	dc.l loc_0cbc76,loc_0cbc96,loc_0cbcb6
	dc.l $00000000

loc_092dd8:
	dc.l loc_0cbcd6,loc_0cbcf6,loc_0cbd16
	dc.l $00000000

loc_092de8:
	dc.l loc_0cbd36,loc_0cbd56,loc_0cbd76
	dc.l $00000000

loc_092df8:
	dc.l loc_0cbd96,loc_0cbdb6,loc_0cbdd6
	dc.l $00000000

loc_092e08:
	dc.l loc_0cbdf6,loc_0cbe16,loc_0cbe36
	dc.l $00000000

loc_092e18:
	dc.l loc_0cbe56,loc_0cbe76,loc_0cbe96
	dc.l $00000000

loc_092e28:
	dc.l loc_0cbeb6,loc_0cbed6,loc_0cbef6
	dc.l $00000000

loc_092e38:
	dc.l loc_0cbf16,loc_0cbf36,loc_0cbf56
	dc.l $00000000

loc_092e48:
	dc.l loc_0cbf76,loc_0cbf96,loc_0cbfb6
	dc.l $00000000

loc_092e58:
	dc.l loc_0cbfd6,loc_0cbff6,loc_0cc016
	dc.l $00000000

loc_092e68:
	dc.l loc_0cc036,loc_0cc056,loc_0cc076
	dc.l $00000000

loc_092e78:
	dc.l loc_0cc096,loc_0cc0b6,loc_0cc0d6
	dc.l $00000000

loc_092e88:
	dc.l loc_0cc0f6,loc_0cc116,loc_0cc136
	dc.l $00000000

loc_092e98:
	dc.l loc_0cc156,loc_0cc176

;--------------------------
;Portrait Pointers
loc_092ea0:
	dc.l loc_0cc196
	dc.l $00000000

;--------------------------
loc_092ea8:
	dc.l loc_0cc1b6,loc_0cc1d6,loc_0cc1f6
	dc.l $00000000

loc_092eb8:
	dc.l loc_0cc216,loc_0cc236,loc_0cc256
	dc.l $00000000

loc_092ec8:
	dc.l loc_0cc276,loc_0cc296,loc_0cc2b6
	dc.l $00000000

loc_092ed8:
	dc.l loc_0cc2d6,loc_0cc2f6,loc_0cc316
	dc.l $00000000

loc_092ee8:
	dc.l loc_0cc336,loc_0cc356,loc_0cc376
	dc.l $00000000

loc_092ef8:
	dc.l loc_0cc396,loc_0cc3b6,loc_0cc3d6
	dc.l $00000000

loc_092f08:
	dc.l loc_0cc3f6,loc_0cc416,loc_0cc436
	dc.l $00000000

loc_092f18:
	dc.l loc_0cc456,loc_0cc476,loc_0cc496
	dc.l $00000000

loc_092f28:
	dc.l loc_0cc4b6,loc_0cc4d6,loc_0cc4f6
	dc.l $00000000

;--------------------------
loc_092f38:
	dc.l loc_0cc516,loc_0cc5ce,loc_0cc7b2,loc_0cc7f6
	dc.l loc_0cc8e4,loc_0cc966,loc_0cca52,loc_0ccb28
	dc.l loc_0ccc1c,loc_0ccd10,loc_0cce04,loc_0ccef8
	dc.l loc_0ccfec,loc_0cd0e0,loc_0cd1d4,loc_0cd2c8
	dc.l loc_0cd3bc,loc_0cd4b0,loc_0cd5a4,loc_0cd698
	dc.l loc_0cd78c,loc_0cd880,loc_0cd974,loc_0cd9ac
	dc.l loc_0cda88,loc_0cdb9a,loc_0cdcac,loc_0cdd88
	dc.l loc_0cde9a,loc_0cdfac,loc_0ce0be,loc_0ce1d0

loc_092fb8:
	dc.l loc_0ce594

loc_092fbc:
	dc.l loc_0ce8e0,loc_0ceadc,loc_0cecd8,loc_0ceed4
	dc.l loc_0ceed8,loc_0ceedc,loc_0cf110,loc_0cf344
	dc.l loc_0cf578,loc_0cf57c,loc_0cf580,loc_0cf85c
	dc.l loc_0cfb38,loc_0cfe14,loc_0cfe18,loc_0cfe1c
	dc.l loc_0d0050,loc_0d0284,loc_0d04b8,loc_0d04bc
	dc.l loc_0d04c0,loc_0d072c,loc_0d0998,loc_0d0c04
	dc.l loc_0d0c08,loc_0d0c0c,loc_0d0e78,loc_0d10e4
	dc.l loc_0d1350,loc_0d1354,loc_0d1358,loc_0d158c
	dc.l loc_0d17c0,loc_0d19f4,loc_0d19f8,loc_0d19fc
	dc.l loc_0d1d48,loc_0d2094,loc_0d23e0,loc_0d23e4
	dc.l loc_0d23e8,loc_0d268c,loc_0d2930,loc_0d2bd4
	dc.l loc_0d2bd8,loc_0d2bdc,loc_0d2da0,loc_0d2f64
	dc.l loc_0d3128,loc_0d312c

loc_093084:
	dc.l loc_0d3130,loc_0d314a,loc_0d3170,loc_0d3184
	dc.l loc_0d31ac,loc_0d31d2,loc_0d31fa,loc_0d3216
	dc.l loc_0d323c,loc_0d325c,loc_0d3282,loc_0d32aa
	dc.l loc_0d32c6,loc_0d32f4,loc_0d3320,loc_0d3348
	dc.l loc_0d336a,loc_0d3386,loc_0d339c,loc_0d33ca
	dc.l loc_0d33f0,loc_0d3412,loc_0d342e,loc_0d3454
	dc.l loc_0d3480,loc_0d34a2,loc_0d34c4,loc_0d34e6
	dc.l loc_0d3506,loc_0d3528,loc_0d3556,loc_0d3588
	dc.l loc_0d35ba,loc_0d35ec,loc_0d361e,loc_0d364a
	dc.l loc_0d3678,loc_0d36a4,loc_0d36d0,loc_0d36ea
	dc.l loc_0d3716,loc_0d3742,loc_0d3774,loc_0d37a0
	dc.l loc_0d37cc,loc_0d37f2,loc_0d3808,loc_0d382a
	dc.l loc_0d385e,loc_0d3886,loc_0d38ac,loc_0d38ce
	dc.l loc_0d38f4,loc_0d3920,loc_0d3940,loc_0d3968
	dc.l loc_0d3994,loc_0d39ba,loc_0d39e6,loc_0d3a00
	dc.l loc_0d3a22,loc_0d3a44,loc_0d3a60,loc_0d3a88
	dc.l loc_0d3aa4,loc_0d3aba,loc_0d3ada,loc_0d3b00
	dc.l loc_0d3b22,loc_0d3b3c,loc_0d3b68,loc_0d3b96
	dc.l loc_0d3bc4,loc_0d3bf0,loc_0d3c1e,loc_0d3c46
	dc.l loc_0d3c78,loc_0d3ca4,loc_0d3cbe,loc_0d3cec
	dc.l loc_0d3d20,loc_0d3d4c,loc_0d3d78,loc_0d3d92
	dc.l loc_0d3dc4,loc_0d3dec,loc_0d3e18,loc_0d3e40
	dc.l loc_0d3e6e,loc_0d3e88,loc_0d3eba,loc_0d3ed0
	dc.l loc_0d3ef2,loc_0d3f0e,loc_0d3f3c,loc_0d3f5c
	dc.l loc_0d3f8e,loc_0d3fae,loc_0d3fca,loc_0d3ff8
	dc.l loc_0d4018,loc_0d4038,loc_0d4064,loc_0d4090
	dc.l loc_0d40c2,loc_0d40e8,loc_0d4116,loc_0d413c
	dc.l loc_0d4170,loc_0d4192,loc_0d41be,loc_0d41d2
	dc.l loc_0d41fe,loc_0d4218,loc_0d4240,loc_0d426e
	dc.l loc_0d429a,loc_0d42c2,loc_0d42f6,loc_0d4310
	dc.l loc_0d4342,loc_0d4374,loc_0d43a6,loc_0d43d4
	dc.l loc_0d4408,loc_0d443a,loc_0d4462,loc_0d448e
	dc.l loc_0d44a8,loc_0d44ca,loc_0d44f0,loc_0d450c
	dc.l loc_0d4534,loc_0d4550,loc_0d4566,loc_0d4588
	dc.l loc_0d45ae,loc_0d45d4,loc_0d45ee,loc_0d461c
	dc.l loc_0d4632,loc_0d465a,loc_0d466e,loc_0d4694
	dc.l loc_0d46c2,loc_0d46e4,loc_0d46fa,loc_0d4722
	dc.l loc_0d474e,loc_0d477c,loc_0d47a8,loc_0d47ce
	dc.l loc_0d47ea,loc_0d4812,loc_0d4840,loc_0d4872
	dc.l loc_0d4892,loc_0d48be,loc_0d48de,loc_0d490a

loc_093304:
	dc.l loc_0d4938,loc_0d4958,loc_0d4978,loc_0d4998
	dc.l loc_0d49b8,loc_0d49d8,loc_0d49f8,loc_0d4a18
	dc.l loc_0d4a38,loc_0d4a58,loc_0d4a78,loc_0d4a98
	dc.l loc_0d4ab8,loc_0d4ad8,loc_0d4af8,loc_0d4b18
	dc.l loc_0d4b38,loc_0d4b58,loc_0d4b78,loc_0d4b98
	dc.l loc_0d4bb8,loc_0d4bd8,loc_0d4bf8,loc_0d4c18
	dc.l loc_0d4c38,loc_0d4c58,loc_0d4c78,loc_0d4c98
	dc.l loc_0d4cb8,loc_0d4cd8,loc_0d4cf8,loc_0d4d18
	dc.l loc_0d4d38,loc_0d4d58,loc_0d4d78,loc_0d4d98
	dc.l loc_0d4db8,loc_0d4dd8,loc_0d4df8,loc_0d4e18
	dc.l loc_0d4e38,loc_0d4e58,loc_0d4e78,loc_0d4e98
	dc.l loc_0d4eb8,loc_0d4ed8,loc_0d4ef8,loc_0d4f18
	dc.l loc_0d4f38,loc_0d4f58,loc_0d4f78,loc_0d4f98
	dc.l loc_0d4fb8,loc_0d4fd8,loc_0d4ff8,loc_0d5018
	dc.l loc_0d5038,loc_0d5058,loc_0d5078,loc_0d5098
	dc.l loc_0d50b8,loc_0d50d8,loc_0d50f8,loc_0d5118
	dc.l loc_0d5138,loc_0d5158,loc_0d5178,loc_0d5198
	dc.l $00000000

loc_093418:
	dc.l loc_0d51b8

loc_09341c:
	dc.l loc_0d5450,loc_0d54ba,loc_0d54ca,loc_0d54da
	dc.l loc_0d54ea,loc_0d54fa,loc_0d550a,loc_0d551a
	dc.l loc_0d5522,loc_0d552a,loc_0d5532,loc_0d553a
	dc.l loc_0d5542,loc_0d554a,loc_0d5552,loc_0d555a
	dc.l loc_0d5562,loc_0d556a,loc_0d5572,loc_0d557a
	dc.l loc_0d5582,loc_0d558a,loc_0d5592,loc_0d559a
	dc.l loc_0d55a2,loc_0d55aa,loc_0d55b2,loc_0d55ba
	dc.l loc_0d55c2,loc_0d55ca,loc_0d55d2,loc_0d55da
	dc.l loc_0d55e2,loc_0d55ea,loc_0d55f2,loc_0d55fa
	dc.l loc_0d5602,loc_0d560a,loc_0d5612,loc_0d561a
	dc.l loc_0d5622,loc_0d562a,loc_0d5632,loc_0d563a
	dc.l loc_0d5642,loc_0d564a,loc_0d5652,loc_0d565a
	dc.l loc_0d5662,loc_0d566a,loc_0d5672,loc_0d567a
	dc.l loc_0d5682,loc_0d568a

loc_0934f4:
	dc.l loc_0d5692

loc_0934f8:
	dc.l loc_0d569c

loc_0934fc:
	dc.l loc_0d56a6,loc_0d583a,loc_0d5856,loc_0d5872
	dc.l loc_0d588e,loc_0d58aa,loc_0d58c6,loc_0d58e2
	dc.l loc_0d58fe,loc_0d591a,loc_0d5936

;\//\/\/\/\/\/\/\/\
;Ending palette pointer tables
loc_093528:;sho
	dc.l loc_0d5952,loc_0d5972,loc_0d5992,loc_0d59b2
	dc.l 00000000

;dao0
loc_09353c:
	dc.l loc_0d59d2,loc_0d59f2,loc_0d5a12,loc_0d5a32
	dc.l loc_0d5a52,loc_0d5a72,loc_0d5a92,loc_0d5ab2
	dc.l loc_0d5ad2,loc_0d5af2
	dc.l $00000000

;dao1
loc_093568:
	dc.l loc_0d5b12,loc_0d5b32,loc_0d5b52,loc_0d5b72
	dc.l loc_0d5b92,loc_0d5bb2,loc_0d5bd2,loc_0d5bf2
	dc.l loc_0d5c12,loc_0d5c32
	dc.l $00000000

;dao2
loc_093594:
	dc.l loc_0d5c52,loc_0d5c72,loc_0d5c92,loc_0d5cb2
	dc.l loc_0d5cd2,loc_0d5cf2,loc_0d5d12,loc_0d5d32
	dc.l loc_0d5d52,loc_0d5d72
	dc.l $00000000

;dao3
loc_0935c0:
	dc.l loc_0d5d92,loc_0d5db2,loc_0d5dd2,loc_0d5df2
	dc.l loc_0d5e12,loc_0d5e32,loc_0d5e52,loc_0d5e72
	dc.l loc_0d5e92,loc_0d5eb2
	dc.l $00000000

;condor0
loc_0935ec:
	dc.l loc_0d5ed2,loc_0d5ef2,loc_0d5f12,loc_0d5f32
	dc.l loc_0d5f52
	dc.l $00000000

;condor1
loc_093604:
	dc.l loc_0d5f72,loc_0d5f92,loc_0d5fb2,loc_0d5fd2
	dc.l loc_0d5ff2
	dc.l $00000000

;condor2
loc_09361c:
	dc.l loc_0d6012,loc_0d6032,loc_0d6052,loc_0d6072
	dc.l loc_0d6092
	dc.l $00000000

;condor3
loc_093634:
	dc.l loc_0d60b2,loc_0d60d2,loc_0d60f2,loc_0d6112
	dc.l loc_0d6132
	dc.l $00000000

;tia0
loc_09364c:
	dc.l loc_0d6152,loc_0d6172,loc_0d6192,loc_0d61b2
	dc.l $00000000

;tia1
loc_093660:
	dc.l loc_0d61d2,loc_0d61f2,loc_0d6212,loc_0d6232
	dc.l $00000000

;tia2
loc_093674:
	dc.l loc_0d6252,loc_0d6272,loc_0d6292,loc_0d62b2
	dc.l $00000000

;tia3
loc_093688:
	dc.l loc_0d62d2,loc_0d62f2,loc_0d6312,loc_0d6332
	dc.l $00000000

;ril0
loc_09369c:
	dc.l loc_0d6352,loc_0d6372,loc_0d6392,loc_0d63b2
	dc.l loc_0d63d2,loc_0d63f2,loc_0d6412,loc_0d6432
	dc.l loc_0d6452,loc_0d6472,loc_0d6492,loc_0d64b2
	dc.l loc_0d64d2,loc_0d64f2
	dc.l $00000000

;ril1
loc_0936d8:
	dc.l loc_0d6512,loc_0d6532,loc_0d6552,loc_0d6572
	dc.l loc_0d6592,loc_0d65b2,loc_0d65d2,loc_0d65f2
	dc.l loc_0d6612,loc_0d6632,loc_0d6652,loc_0d6672
	dc.l loc_0d6692,loc_0d66b2
	dc.l $00000000

;ril2
loc_093714:
	dc.l loc_0d66d2,loc_0d66f2,loc_0d6712,loc_0d6732
	dc.l loc_0d6752,loc_0d6772,loc_0d6792,loc_0d67b2
	dc.l loc_0d67d2,loc_0d67f2,loc_0d6812,loc_0d6832
	dc.l loc_0d6852,loc_0d6872
	dc.l $00000000

;ril3
loc_093750:
	dc.l loc_0d6892,loc_0d68b2,loc_0d68d2,loc_0d68f2
	dc.l loc_0d6912,loc_0d6932,loc_0d6952,loc_0d6972
	dc.l loc_0d6992,loc_0d69b2,loc_0d69d2,loc_0d69f2
	dc.l loc_0d6a12,loc_0d6a32
	dc.l $00000000

;als0
loc_09378c:
	dc.l loc_0d6a52,loc_0d6a72,loc_0d6a92,loc_0d6ab2
	dc.l loc_0d6ad2,loc_0d6af2,loc_0d6b12,loc_0d6b32
	dc.l loc_0d6b52,loc_0d6b72,loc_0d6b92,loc_0d6bb2
	dc.l $00000000

;als1
loc_0937c0:
	dc.l loc_0d6bd2,loc_0d6bf2,loc_0d6c12,loc_0d6c32
	dc.l loc_0d6c52,loc_0d6c72,loc_0d6c92,loc_0d6cb2
	dc.l loc_0d6cd2,loc_0d6cf2,loc_0d6d12,loc_0d6d32
	dc.l $00000000

;als2
loc_0937f4:
	dc.l loc_0d6d52,loc_0d6d72,loc_0d6d92,loc_0d6db2
	dc.l loc_0d6dd2,loc_0d6df2,loc_0d6e12,loc_0d6e32
	dc.l loc_0d6e52,loc_0d6e72,loc_0d6e92,loc_0d6eb2
	dc.l $00000000

;als3
loc_093828:
	dc.l loc_0d6ed2,loc_0d6ef2,loc_0d6f12,loc_0d6f32
	dc.l loc_0d6f52,loc_0d6f72,loc_0d6f92,loc_0d6fb2
	dc.l loc_0d6fd2,loc_0d6ff2,loc_0d7012,loc_0d7032
	dc.l $00000000

;pie
loc_09385c:
	dc.l loc_0d7052,loc_0d7072,loc_0d7092,loc_0d70b2
	dc.l loc_0d70d2,loc_0d70f2,loc_0d7112,loc_0d7132
	dc.l loc_0d7152,loc_0d7172,loc_0d7192,loc_0d71b2
	dc.l $00000000

;Mah
loc_093890:
	dc.l loc_0d71d2,loc_0d71f2,loc_0d7212
	dc.l $00000000

;Saizo
loc_0938a0:
	dc.l loc_0d7232
	dc.l $00000000

;has to with endings
loc_0938a8:
	dc.l loc_0d7252,loc_0d7272,loc_0d7292,loc_0d72b2
	dc.l loc_0d72d2
	dc.l $00000000

loc_0938c0:
	dc.l loc_0d72f2,loc_0d7312,loc_0d7332,loc_0d7352
	dc.l loc_0d7372
	dc.l $00000000

loc_0938d8:
	dc.l loc_0d7392,loc_0d73b2,loc_0d73d2,loc_0d73f2
	dc.l loc_0d7412
	dc.l $00000000

loc_0938f0:
	dc.l loc_0d7432,loc_0d7452,loc_0d7472,loc_0d7492
	dc.l loc_0d74b2
	dc.l $00000000

loc_093908:
	dc.l loc_0d74d2,loc_0d74f2,loc_0d7512,loc_0d7532
	dc.l loc_0d7552,loc_0d7572,loc_0d7592,loc_0d75b2
	dc.l loc_0d75d2,loc_0d75f2,loc_0d7612,loc_0d7632
	dc.l loc_0d7652,loc_0d7672,loc_0d7692,loc_0d76b2
	dc.l loc_0d76d2
	dc.l $00000000

loc_093950:
	dc.l loc_0d76f2,loc_0d7712,loc_0d7732,loc_0d7752
	dc.l loc_0d7772,loc_0d7792,loc_0d77b2,loc_0d77d2
	dc.l loc_0d77f2,loc_0d7812,loc_0d7832,loc_0d7852
	dc.l loc_0d7872,loc_0d7892,loc_0d78b2,loc_0d78d2
	dc.l loc_0d78f2
	dc.l $00000000

loc_093998:
	dc.l loc_0d7912,loc_0d7932,loc_0d7952,loc_0d7972
	dc.l loc_0d7992,loc_0d79b2,loc_0d79d2,loc_0d79f2
	dc.l loc_0d7a12,loc_0d7a32,loc_0d7a52,loc_0d7a72
	dc.l loc_0d7a92,loc_0d7ab2,loc_0d7ad2,loc_0d7af2
	dc.l loc_0d7b12
	dc.l $00000000

loc_0939e0:
	dc.l loc_0d7b32,loc_0d7b52,loc_0d7b72,loc_0d7b92
	dc.l loc_0d7bb2,loc_0d7bd2,loc_0d7bf2,loc_0d7c12
	dc.l loc_0d7c32,loc_0d7c52,loc_0d7c72,loc_0d7c92
	dc.l loc_0d7cb2,loc_0d7cd2,loc_0d7cf2,loc_0d7d12
	dc.l loc_0d7d32
	dc.l $00000000


loc_093a28:
	dc.l loc_0d7d52,loc_0d7d72,loc_0d7d92,loc_0d7db2
	dc.l loc_0d7dd2,loc_0d7df2,loc_0d7e12,loc_0d7e32
	dc.l loc_0d7e52,loc_0d7e72
	dc.l $00000000

loc_093a54:
	dc.l loc_0d7e92,loc_0d7eb2,loc_0d7ed2,loc_0d7ef2
	dc.l loc_0d7f12,loc_0d7f32,loc_0d7f52,loc_0d7f72
	dc.l loc_0d7f92,loc_0d7fb2
	dc.l $00000000

loc_093a80:
	dc.l loc_0d7fd2,loc_0d7ff2,loc_0d8012,loc_0d8032
	dc.l loc_0d8052,loc_0d8072,loc_0d8092,loc_0d80b2
	dc.l loc_0d80d2,loc_0d80f2
	dc.l $00000000

loc_093aac:
	dc.l loc_0d8112,loc_0d8132,loc_0d8152,loc_0d8172
	dc.l loc_0d8192,loc_0d81b2,loc_0d81d2,loc_0d81f2
	dc.l loc_0d8212,loc_0d8232
	dc.l $00000000

loc_093ad8:
	dc.l loc_0d8252,loc_0d8272,loc_0d8292,loc_0d82b2
	dc.l loc_0d82d2,loc_0d82f2,loc_0d8312,loc_0d8332
	dc.l loc_0d8352
	dc.l $00000000

loc_093b00:
	dc.l loc_0d8372,loc_0d8392,loc_0d83b2,loc_0d83d2
	dc.l loc_0d83f2,loc_0d8412,loc_0d8432,loc_0d8452
	dc.l loc_0d8472
	dc.l $00000000

loc_093b28:
	dc.l loc_0d8492,loc_0d84b2,loc_0d84d2,loc_0d84f2
	dc.l loc_0d8512,loc_0d8532,loc_0d8552,loc_0d8572
	dc.l loc_0d8592
	dc.l $00000000

loc_093b50:
	dc.l loc_0d85b2,loc_0d85d2,loc_0d85f2,loc_0d8612
	dc.l loc_0d8632,loc_0d8652,loc_0d8672,loc_0d8692
	dc.l loc_0d86b2
	dc.l $00000000

loc_093b78:
	dc.l loc_0d86d2,loc_0d86f2,loc_0d8712,loc_0d8732
	dc.l loc_0d8752,loc_0d8772
	dc.l $00000000

loc_093b94:
	dc.l loc_0d8792,loc_0d87b2,loc_0d87d2,loc_0d87f2
	dc.l loc_0d8812,loc_0d8832
	dc.l $00000000

loc_093bb0:
	dc.l loc_0d8852,loc_0d8872,loc_0d8892,loc_0d88b2
	dc.l loc_0d88d2,loc_0d88f2
	dc.l $00000000

loc_093bcc:
	dc.l loc_0d8912,loc_0d8932,loc_0d8952,loc_0d8972
	dc.l loc_0d8992,loc_0d89b2
	dc.l $00000000

loc_093be8:
	dc.l loc_0d8a32,loc_0d8a52,loc_0d8a72,loc_0d8a92
	dc.l loc_0d8ab2
	dc.l $00000000

loc_093c00:
	dc.l loc_0d8ad2,loc_0d8af2,loc_0d8b12,loc_0d8b32
	dc.l loc_0d8b52,loc_0d8b72,loc_0d8b92,loc_0d8bb2
	dc.l loc_0d8bd2,loc_0d8bf2,loc_0d8c12,loc_0d8c32
	dc.l loc_0d8c52,loc_0d8c72,loc_0d8c92,loc_0d8cb2
	dc.l loc_0d8cd2,loc_0d8cf2,loc_0d8d12,loc_0d8d32
	dc.l loc_0d8d52,loc_0d8d72,loc_0d8d92,loc_0d8db2
	dc.l $00000000

loc_093c64:;Pielle end
	dc.l loc_0d8dd2,loc_0d8df2,loc_0d8e12,loc_0d8e32
	dc.l loc_0d8e52,loc_0d8e72,loc_0d8e92,loc_0d8eb2
	dc.l loc_0d8ed2,loc_0d8ef2,loc_0d8f12,loc_0d8f32
	dc.l loc_0d8f52,loc_0d8f72,loc_0d8f92,loc_0d8fb2
	dc.l loc_0d8fd2,loc_0d8ff2,loc_0d9012,loc_0d9032
	dc.l loc_0d9052,loc_0d9072,loc_0d9092,loc_0d90b2
	dc.l loc_0d90d2,loc_0d90f2,loc_0d9112,loc_0d9132
	dc.l loc_0d9152,loc_0d9172,loc_0d9192,loc_0d91b2
	dc.l loc_0d91d2,loc_0d91f2,loc_0d9212,loc_0d9232
	dc.l loc_0d9252,loc_0d9272,loc_0d9292,loc_0d92b2
	dc.l loc_0d92d2,loc_0d92f2,loc_0d9312,loc_0d9332
	dc.l loc_0d9352,loc_0d9372,loc_0d9392,loc_0d93b2
	dc.l loc_0d93d2,loc_0d93f2,loc_0d9412,loc_0d9432
	dc.l loc_0d9452,loc_0d9472
	dc.l $00000000

loc_093d40:
	dc.l loc_0d9492,loc_0d94b2,loc_0d94d2,loc_0d94f2
	dc.l loc_0d9512,loc_0d9532,loc_0d9552,loc_0d9572
	dc.l loc_0d9592,loc_0d95b2,loc_0d95d2,loc_0d95f2
	dc.l loc_0d9612,loc_0d9632,loc_0d9652,loc_0d9672
	dc.l loc_0d9692,loc_0d96b2,loc_0d96d2,loc_0d96f2
	dc.l loc_0d9712,loc_0d9732,loc_0d9752,loc_0d9772
	dc.l loc_0d9792,loc_0d97b2
	dc.l $00000000

loc_093dac:;rila end
	dc.l loc_0d97d2,loc_0d97f2,loc_0d9812,loc_0d9832
	dc.l loc_0d9852,loc_0d9872,loc_0d9892,loc_0d98b2
	dc.l loc_0d98d2,loc_0d98f2,loc_0d9912,loc_0d9932
	dc.l loc_0d9952,loc_0d9972,loc_0d9992,loc_0d99b2
	dc.l loc_0d99d2,loc_0d99f2,loc_0d9a12,loc_0d9a32
	dc.l loc_0d9a52,loc_0d9a72,loc_0d9a92,loc_0d9ab2
	dc.l loc_0d9ad2,loc_0d9af2,loc_0d9b12,loc_0d9b32
	dc.l loc_0d9b52,loc_0d9b72,loc_0d9b92,loc_0d9bb2
	dc.l loc_0d9bd2,loc_0d9bf2,loc_0d9c12,loc_0d9c32
	dc.l loc_0d9c52,loc_0d9c72,loc_0d9c92,loc_0d9cb2
	dc.l loc_0d9cd2,loc_0d9cf2,loc_0d9d12,loc_0d9d32
	dc.l loc_0d9d52,loc_0d9d72
	dc.l $00000000

loc_093e68:;alsion end
	dc.l loc_0d9d92,loc_0d9db2,loc_0d9dd2,loc_0d9df2
	dc.l loc_0d9e12,loc_0d9e32,loc_0d9e52,loc_0d9e72
	dc.l loc_0d9e92,loc_0d9eb2,loc_0d9ed2,loc_0d9ef2
	dc.l loc_0d9f12
	dc.l $00000000

loc_093ea0:;maherl end
	dc.l loc_0d9f32,loc_0d9f52,loc_0d9f72,loc_0d9f92
	dc.l loc_0d9fb2,loc_0d9fd2,loc_0d9ff2,loc_0da012
	dc.l loc_0da032,loc_0da052
	dc.l $00000000

loc_093ecc:
	dc.l loc_0da072,loc_0da092,loc_0da0b2,loc_0da0d2
	dc.l loc_0da0f2,loc_0da112,loc_0da132,loc_0da152
	dc.l loc_0da172,loc_0da192,loc_0da1b2,loc_0da1d2
	dc.l loc_0da1f2,loc_0da212,loc_0da232,loc_0da252
	dc.l loc_0da272
	dc.l $00000000

loc_093f14:;saizo end
	dc.l loc_0da292
	dc.l $00000000

;--------------------------
;check later maybe unused
loc_093f1c:
	dc.l loc_0da2b2,loc_0da2d2,loc_0da2f2,loc_0da312
	dc.l loc_0da332,loc_0da352,loc_0da372,loc_0da392
	dc.l loc_0da3b2,loc_0da3d2,loc_0da3f2,loc_0da412
	dc.l loc_0da432,loc_0da452,loc_0da472,loc_0da492
	dc.l loc_0da4b2,loc_0da4d2,loc_0da4f2,loc_0da512
	dc.l loc_0da532,loc_0da552,loc_0da572,loc_0da592
	dc.l loc_0da5b2,loc_0da5d2,loc_0da5f2,loc_0da612
	dc.l loc_0da632,loc_0da652,loc_0da672,loc_0da692
	dc.l loc_0da6b2,loc_0da6d2,loc_0da6f2,loc_0da712
	dc.l loc_0da732,loc_0da752,loc_0da772,loc_0da792
	dc.l loc_0da7b2,loc_0da7d2,loc_0da7f2,loc_0da812
	dc.l loc_0da832,loc_0da852,loc_0da872,loc_0da892
	dc.l loc_0da8b2,loc_0da8d2,loc_0da8f2,loc_0da912
	dc.l loc_0da932,loc_0da952,loc_0da972,loc_0da992
	dc.l loc_0da9b2,loc_0da9d2,loc_0da9f2,loc_0daa12
	dc.l loc_0daa32,loc_0daa52,loc_0daa72
	dc.l $00000000

loc_09401c:
	dc.l loc_0daa92,loc_0daab2,loc_0daad2,loc_0daaf2
	dc.l $00000000

loc_094030:
	dc.l loc_0dab12,loc_0dab32,loc_0dab52,loc_0dab72
	dc.l loc_0dab92,loc_0dabb2,loc_0dabd2,loc_0dabf2
	dc.l loc_0dac12,loc_0dac32
	dc.l $00000000

loc_09405c:
	dc.l loc_0dac52,loc_0dac72,loc_0dac92,loc_0dacb2
	dc.l loc_0dacd2
	dc.l $00000000

loc_094074
	dc.l loc_0dacf2,loc_0dad12,loc_0dad32,loc_0dad52
	dc.l $00000000

loc_094088:
	dc.l loc_0dad72,loc_0dad92,loc_0dadb2,loc_0dadd2
	dc.l loc_0dadf2,loc_0dae12,loc_0dae32,loc_0dae52
	dc.l loc_0dae72,loc_0dae92,loc_0daeb2,loc_0daed2
	dc.l loc_0daef2,loc_0daf12
	dc.l $00000000

loc_0940c4:
	dc.l loc_0daf32,loc_0daf52,loc_0daf72,loc_0daf92
	dc.l loc_0dafb2,loc_0dafd2,loc_0daff2,loc_0db012
	dc.l loc_0db032,loc_0db052,loc_0db072,loc_0db092
	dc.l $00000000

loc_0940f8:
	dc.l loc_0db0b2,loc_0db0d2,loc_0db0f2,loc_0db112
	dc.l loc_0db132,loc_0db152,loc_0db172,loc_0db192
	dc.l loc_0db1b2,loc_0db1d2,loc_0db1f2,loc_0db212
	dc.l $00000000

loc_09412c:
	dc.l loc_0db232,loc_0db252,loc_0db272
	dc.l $00000000

loc_09413c:
	dc.l loc_0db2b2,loc_0db2d2,loc_0db2f2,loc_0db312
	dc.l loc_0db332,loc_0db352,loc_0db372,loc_0db392
	dc.l $00000000

loc_094160:
	dc.l loc_0db4b2,loc_0db4c8,loc_0db4de,loc_0db4f4
	dc.l loc_0db50a,loc_0db520,loc_0db536,loc_0db54c
	dc.l loc_0db562,loc_0db578,loc_0db58e,loc_0db5a4
	dc.l loc_0db5ba,loc_0db5d0,loc_0db5e6,loc_0db5fc
	dc.l loc_0db612,loc_0db628,loc_0db63e,loc_0db654
	dc.l loc_0db66a,loc_0db680,loc_0db696,loc_0db6ac
	dc.l loc_0db6c2,loc_0db6d8,loc_0db6ee,loc_0db704
	dc.l loc_0db71a,loc_0db730,loc_0db746,loc_0db75c
	dc.l loc_0db772,loc_0db788,loc_0db79e,loc_0db7b4
	dc.l loc_0db7ca,loc_0db7e0,loc_0db7f6,loc_0db80c
	dc.l loc_0db822,loc_0db838,loc_0db84e,loc_0db864
	dc.l loc_0db87a,loc_0db890,loc_0db8a6,loc_0db8bc
	dc.l loc_0db8d2,loc_0db8e8,loc_0db8fe,loc_0db914
	dc.l loc_0db92a,loc_0db940,loc_0db956,loc_0db96c
	dc.l loc_0db982,loc_0db998,loc_0db9ae,loc_0db9c4
	dc.l loc_0db9da,loc_0db9f0,loc_0dba06,loc_0dba1c
	dc.l loc_0dba32,loc_0dba48,loc_0dba5e,loc_0dba74
	dc.l loc_0dba8a,loc_0dbaa0

;--------------------------
loc_094278:
	dc.l loc_0dbda4

loc_09427c:
	dc.l loc_0dc0a8,loc_0dc2c8,loc_0dc3a4,loc_0dc3d8
	dc.l loc_0dc40c,loc_0dc440,loc_0dc478,loc_0dc4aa
	dc.l loc_0dc4de,loc_0dc512,loc_0dc534

loc_0942a8:
	dc.l loc_0dc6d0,loc_0dc8f0,loc_0dc9a8,loc_0dc9da
	dc.l loc_0dca0e,loc_0dca42,loc_0dca6a,loc_0dca9c
	dc.l loc_0dcad0,loc_0dcb04,loc_0dcb18

loc_0942d4:
	dc.l loc_0dcc9c,loc_0dcebc,loc_0dcf98,loc_0dcfca
	dc.l loc_0dd002,loc_0dd034,loc_0dd066,loc_0dd09a
	dc.l loc_0dd0ce,loc_0dd106,loc_0dd12e

loc_094300:
	dc.l loc_0dd2ca,loc_0dd4ea,loc_0dd5ea,loc_0dd618
	dc.l loc_0dd64c,loc_0dd680,loc_0dd6b4,loc_0dd6e8
	dc.l loc_0dd71a,loc_0dd734,loc_0dd762

;rila end
loc_09432c:
	dc.l loc_0dd8fe,loc_0ddb1e,loc_0ddc42,loc_0ddc74
	dc.l loc_0ddca8,loc_0ddcd6,loc_0ddd08,loc_0ddd3c
	dc.l loc_0ddd70,loc_0ddd8c,loc_0dddc0

;alsion end
loc_094358:
	dc.l loc_0ddf44,loc_0de164,loc_0de288,loc_0de2ba
	dc.l loc_0de2ee,loc_0de322,loc_0de35a,loc_0de386
	dc.l loc_0de3b8,loc_0de3ec,loc_0de420

;Pielle End
loc_094384:
	dc.l loc_0de5bc,loc_0de7dc,loc_0de8dc,loc_0de90e
	dc.l loc_0de93c,loc_0de970,loc_0de9a4,loc_0de9d8
	dc.l loc_0dea06,loc_0dea28,loc_0dea5c

;maherl end
loc_0943b0:
	dc.l loc_0debe0,loc_0dee00,loc_0def00,loc_0def32
	dc.l loc_0def66,loc_0def7a,loc_0defae,loc_0defdc
	dc.l loc_0df00e,loc_0df042,loc_0df06a

;saizo end
loc_0943dc:
	dc.l loc_0df1ee,loc_0df40e,loc_0df5a2,loc_0df5d6
	dc.l loc_0df60a,loc_0df63e,loc_0df672,loc_0df6a6
	dc.l loc_0df6da,loc_0df70e,loc_0df742

loc_094408:
	dc.l loc_0df8de,loc_0df972,loc_0dfa96,loc_0dfb5a
	dc.l loc_0dfbfe

loc_09441c:
	dc.l loc_0dfc8e

loc_094420:
	dc.l loc_0dfdb2,loc_0e01f6

loc_094428:
	dc.l loc_0e063a,loc_0e0a8e,loc_0e0ee2,loc_0e0f64
	dc.l loc_0e1268

loc_09443c:
	dc.l loc_0e135c,loc_0e137c,loc_0e139c,loc_0e13bc
	dc.l loc_0e13dc,loc_0e13fc,loc_0e141c,loc_0e143c
	dc.l loc_0e145c,loc_0e147c,loc_0e149c,loc_0e14bc
	dc.l loc_0e14dc,loc_0e14fc
	dc.l $00000000

;--------------------------
loc_094478:
	dc.l loc_0e15bc,loc_0e17a0,loc_0e1984,loc_0e1de8
	dc.l loc_0e1e7c,loc_0e1e9c,loc_0e1ebc,loc_0e1edc
	dc.l loc_0e1efc,loc_0e1f1c,loc_0e1f3c,loc_0e1f5c
	dc.l loc_0e1f7c,loc_0e1f9c,loc_0e1fbc,loc_0e1fdc
	dc.l loc_0e1ffc,loc_0e201c,loc_0e203c,loc_0e205c
	dc.l loc_0e207c,loc_0e209c,loc_0e20bc,loc_0e20dc
	dc.l loc_0e20fc,loc_0e211c,loc_0e213c,loc_0e215c
	dc.l loc_0e217c,loc_0e219c,loc_0e21bc,loc_0e21dc
	dc.l loc_0e21fc,loc_0e221c,loc_0e223c,loc_0e225c
	dc.l loc_0e227c,loc_0e229c,loc_0e22bc,loc_0e22dc
	dc.l loc_0e22fc,loc_0e231c,loc_0e233c,loc_0e235c
	dc.l loc_0e237c,loc_0e239c,loc_0e23bc,loc_0e23dc
	dc.l loc_0e23fc,loc_0e241c,loc_0e243c,loc_0e245c
	dc.l loc_0e247c,loc_0e249c,loc_0e24bc,loc_0e24dc
	dc.l loc_0e24fc,loc_0e251c,loc_0e253c,loc_0e255c
	dc.l loc_0e257c,loc_0e259c,loc_0e25bc,loc_0e25dc
	dc.l loc_0e25fc,loc_0e261c,loc_0e263c,loc_0e265c
	dc.l loc_0e267c,loc_0e269c,loc_0e26bc,loc_0e26dc
	dc.l loc_0e26fc,loc_0e271c,loc_0e273c,loc_0e275c
	dc.l loc_0e277c,loc_0e279c,loc_0e27bc,loc_0e27dc
	dc.l loc_0e27fc,loc_0e281c,loc_0e283c,loc_0e285c
	dc.l loc_0e287c,loc_0e289c,loc_0e28bc,loc_0e28dc
	dc.l loc_0e28fc,loc_0e291c,loc_0e293c,loc_0e295c
	dc.l $00000000

loc_0945ec:
	dc.l loc_0e297c,loc_0e299c,loc_0e29bc,loc_0e29dc
	dc.l loc_0e29fc,loc_0e2a1c,loc_0e2a3c,loc_0e2a5c
	dc.l loc_0e2a7c,loc_0e2a9c,loc_0e2abc,loc_0e2adc
	dc.l loc_0e2afc,loc_0e2b1c,loc_0e2b3c,loc_0e2b5c
	dc.l loc_0e2b7c,loc_0e2b9c,loc_0e2bbc,loc_0e2bdc
	dc.l loc_0e2bfc,loc_0e2c1c,loc_0e2c3c,loc_0e2c5c
	dc.l loc_0e2c7c,loc_0e2c9c,loc_0e2cbc,loc_0e2cdc
	dc.l loc_0e2cfc,loc_0e2d1c,loc_0e2d3c,loc_0e2d5c
	dc.l loc_0e2d7c,loc_0e2d9c,loc_0e2dbc,loc_0e2ddc
	dc.l loc_0e2dfc,loc_0e2e1c,loc_0e2e3c,loc_0e2e5c
	dc.l loc_0e2e7c,loc_0e2e9c,loc_0e2ebc,loc_0e2edc
	dc.l loc_0e2efc,loc_0e2f1c,loc_0e2f3c,loc_0e2f5c
	dc.l loc_0e2f7c,loc_0e2f9c,loc_0e2fbc,loc_0e2fdc
	dc.l loc_0e2ffc,loc_0e301c,loc_0e303c,loc_0e305c
	dc.l loc_0e307c,loc_0e309c,loc_0e30bc,loc_0e30dc
	dc.l loc_0e30fc,loc_0e311c,loc_0e313c,loc_0e315c
	dc.l loc_0e317c,loc_0e319c,loc_0e31bc,loc_0e31dc
	dc.l loc_0e31fc,loc_0e321c,loc_0e323c,loc_0e325c
	dc.l loc_0e327c,loc_0e329c,loc_0e32bc,loc_0e32dc
	dc.l loc_0e32fc,loc_0e331c,loc_0e333c,loc_0e335c
	dc.l loc_0e337c,loc_0e339c,loc_0e33bc,loc_0e33dc
	dc.l loc_0e33fc,loc_0e341c,loc_0e343c,loc_0e345c
	dc.l $00000000

;--------------------------
loc_094750:
	dc.l loc_0e34bc,loc_0e34fc

;arcade progress in mainloop
loc_094758:
	dc.l loc_0e3544,loc_0e3564
	dc.l $00000000

;||||||||||||||||||||||||||
;Collision box Pointers
	include "char/00Sho/colboxpnts.asm"
	include "char/01Dao/colboxpnts.asm"
	include "char/02Con/colboxpnts.asm"
	include "char/03Tia/colboxpnts.asm"
	include "char/04Ril/colboxpnts.asm"
	include "char/05Als/colboxpnts.asm"
	include "char/06Pie/colboxpnts.asm"
	include "char/07Mah/colboxpnts.asm"
	include "char/08Bai/colboxpnts.asm"
	include "char/09Sai/colboxpnts.asm"

;ShostgpalPNTtable
	include "stages/ShoStage/PalPointerTable.asm"
	include "stages/DaoStage/PalPointerTable.asm"
	include "stages/ConStage/PalPointerTable.asm"
	include "stages/TiaStage/PalPointerTable.asm"
	include "stages/RilStage/PalPointerTable.asm"
	include "stages/AlsStage/PalPointerTable.asm"
	include "stages/PieStage/PalPointerTable.asm"
	include "stages/MahStage/PalPointerTable.asm"
	include "stages/BaiStage/PalPointerTable.asm"
	include "stages/SaiStage/PalPointerTable.asm"


;/\/\/\/\/\/\/\/\/\/\/\/\/\
;fontpalette
loc_096af8:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0444,$0ddd

loc_096b18:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0944,$0f8a

loc_096b38:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0980,$0fd6

loc_096b58:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0386,$08db

loc_096b78:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$046b,$09df

loc_096b98:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0638,$0b8d

loc_096bb8:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0863,$0db8

loc_096bd8:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0333,$0aaa

loc_096bf8:
	dc.w $0000,$0fff,$0eee,$7ccc,$0bbb,$0aaa,$7999,$0888
	dc.w $0777,$0666,$0555,$0444,$0333,$7111,$0111,$7fff

loc_096c18:
	dc.w $0000,$7eee,$0ddd,$0ccc,$7aaa,$7999,$7888,$7777
	dc.w $7666,$7555,$7444,$7333,$7222,$7111,$7000,$7fff

loc_096c38:
	dc.w $0000,$7eee,$0ddd,$0ccc,$7aaa,$7999,$0999,$0888
	dc.w $0777,$7666,$7555,$7444,$0333,$7111,$7000,$7fff

loc_096c58:
	dc.w $0000,$7eee,$7ddd,$7ccc,$0bbb,$7999,$0999,$0888
	dc.w $0777,$7666,$0555,$0444,$7222,$7111,$0111,$7fff

loc_096c78:
	dc.w $0000,$7eee,$7ddd,$0ccc,$7aaa,$0999,$7888,$7777
	dc.w $7666,$0666,$7444,$7333,$7222,$7111,$7000,$7fff

loc_096c98:
	dc.w $0000,$7eee,$7ddd,$0ddd,$7bbb,$7aaa,$0999,$0888
	dc.w $7777,$0666,$7444,$7333,$7222,$7111,$7000,$7fff

loc_096cb8:
	dc.w $0000,$1fea,$3fd7,$1fb5,$6e83,$3e72,$5d72,$6d62
	dc.w $2d52,$5c51,$1c41,$0b31,$7a20,$5920,$2910,$7fff

loc_096cd8:
	dc.w $0000,$4f00,$4e00,$0d00,$0a00,$4800,$0700,$4900
	dc.w $0855,$5632,$4500,$0000,$0000,$0000,$0000,$0000

titlebgpalette:
	incbin "Game/extratitlebg.bin"

;	dc.w $7fff,$5ed9,$7db6,$0c96,$2b85,$5a84,$4974,$2963
;	dc.w $5862,$4752,$6641,$0641,$3530,$5430,$6320,$0320

titlebgreverse:
	dc.w $0000,$4320,$7420,$1530,$0641,$2741,$1851,$6852
	dc.w $6962,$5a72,$6b73,$3c83,$0d94,$2e95,$7ea5,$4fb6

;----------------------------
loc_096d38:
	dc.w $ff80,$0054
	dc.w $0074,$0094
	dc.w $0074,$0054
	dc.w $ff80,$0034
	dc.w $0014,$0034

;----------------------------
loc_096d4c:
	dc.w $0000,$0eda,$3ec7,$3ea5,$5d83,$2d73,$4c73,$7c62
	dc.w $3c52,$4b52,$4b42,$7a31,$0a31,$2921,$5820,$7eee

loc_096d6c:
	dc.w $0000,$6eda,$5ed7,$7ea5,$0e83,$7d72,$1d72,$2d62
	dc.w $6c52,$1c51,$5b41,$4a31,$3a20,$1920,$6810,$0fff

loc_096d8c:
	dc.w $0000,$5fea,$6fd7,$4fb5,$7e82,$0e72,$6d62,$5d61
	dc.w $1d51,$6c41,$2c31,$3b20,$4a20,$6910,$0910,$7fff

loc_096dac
	dc.w $0000,$7fea,$4fe7,$4fb5,$6f82,$5e71,$3e61,$0e61
	dc.w $4d51,$3d40,$5c30,$0b20,$6a10,$4910,$2900,$7fff

loc_096dcc
	dc.w $0000,$6ffb,$6fe7,$7fb4,$7f81,$4f71,$6e61,$5e60
	dc.w $3e40,$4d40,$0d30,$6b10,$0b10,$6900,$0900,$7fff

;----------------------------
loc_096dec:
	dc.w $3438,$1641,$4432,$7322,$7213,$0114,$1004,$0006
	dc.w $1006,$0008,$1008,$1009,$000a,$100b,$100d,$100f

loc_096e0c:
	dc.w $268a,$18bf,$78af,$789f,$199f,$198f,$797f,$597f
	dc.w $1a6f,$3a5f,$5a5f,$5a4f,$3b3f,$3b2f,$5b2f,$0000

loc_096e2c:
	dc.w $0000,$741e,$630b,$4208,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

;Dither menu palette
loc_096e4c:
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0285

loc_096e6c:
	dc.w $1014,$5040
	dc.w $7927,$7933,$793f,$794b,$7957,$7963,$796f,$797b,$7987,$7993,$799f,$79ab
	dc.w $79b7,$79c3,$79cf,$79db,$7928,$7934,$7940,$794c,$7958,$7964,$7970,$797c
	dc.w $7988,$7994,$79a0,$79ac,$79b8,$79c4,$79d0,$79dc,$7929,$7935,$7941,$794d
	dc.w $7959,$7965,$7971,$797d,$7989,$7995,$79a1,$79ad,$79b9,$79c5,$79d1,$79dd
	dc.w $792a,$7936,$7942,$794e,$795a,$7966,$7972,$797e,$798a,$7996,$79a2,$79ae
	dc.w $79ba,$79c6,$79d2,$79de,$792b,$7937,$7943,$794f,$795b,$7967,$7973,$797f
	dc.w $798b,$7997,$79a3,$79af,$79bb,$79c7,$79d3,$79df,$792c,$7938,$7944,$7950
	dc.w $795c,$7968,$7974,$7980,$798c,$7998,$79a4,$79b0,$79bc,$79c8,$79d4,$79e0
	dc.w $792d,$7939,$7945,$7951,$795d,$7969,$7975,$7981,$798d,$7999,$79a5,$79b1
	dc.w $79bd,$79c9,$79d5,$79e1,$792e,$793a,$7946,$7952,$795e,$796a,$7976,$7982
	dc.w $798e,$799a,$79a6,$79b2,$79be,$79ca,$79d6,$79e2,$792f,$793b,$7947,$7953
	dc.w $795f,$796b,$7977,$7983,$798f,$799b,$79a7,$79b3,$79bf,$79cb,$79d7,$79e3
	dc.w $7930,$793c,$7948,$7954,$7960,$796c,$7978,$7984,$7990,$799c,$79a8,$79b4
	dc.w $79c0,$79cc,$79d8,$79e4,$7931,$793d,$7949,$7955,$7961,$796d,$7979,$7985
	dc.w $7991,$799d,$79a9,$79b5,$79c1,$79cd,$79d9,$79e5,$7932,$793e,$794a,$7956
	dc.w $7962,$796e,$797a,$7986,$7992,$799e,$79aa,$79b6,$79c2,$79ce,$79da,$79e6
	dc.w $79e7,$79ef,$79f7,$79ff,$7a07,$7a0f,$7a17,$7a1f,$7a27,$7a2f,$7a37,$7a3f
	dc.w $7a47,$7a4f,$7a57,$7a5f,$79e8,$79f0,$79f8,$7a00,$7a08,$7a10,$7a18,$7a20
	dc.w $7a28,$7a30,$7a38,$7a40,$7a48,$7a50,$7a58,$7a60,$79e9,$79f1,$79f9,$7a01
	dc.w $7a09,$7a11,$7a19,$7a21,$7a29,$7a31,$7a39,$7a41,$7a49,$7a51,$7a59,$7a61
	dc.w $79ea,$79f2,$79fa,$7a02,$7a0a,$7a12,$7a1a,$7a22,$7a2a,$7a32,$7a3a,$7a42
	dc.w $7a4a,$7a52,$7a5a,$7a62,$79eb,$79f3,$79fb,$7a03,$7a0b,$7a13,$7a1b,$7a23
	dc.w $7a2b,$7a33,$7a3b,$7a43,$7a4b,$7a53,$7a5b,$7a63,$79ec,$79f4,$79fc,$7a04
	dc.w $7a0c,$7a14,$7a1c,$7a24,$7a2c,$7a34,$7a3c,$7a44,$7a4c,$7a54,$7a5c,$7a64
	dc.w $79ed,$79f5,$79fd,$7a05,$7a0d,$7a15,$7a1d,$7a25,$7a2d,$7a35,$7a3d,$7a45
	dc.w $7a4d,$7a55,$7a5d,$7a65,$79ee,$79f6,$79fe,$7a06,$7a0e,$7a16,$7a1e,$7a26
	dc.w $7a2e,$7a36,$7a3e,$7a46,$7a4e,$7a56,$7a5e,$7a66,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_097230:
	dc.w $1014,$5040
	dc.w $15bd,$15bd,$15bd,$15bd,$77af,$77bf,$77cf,$77df,$77ef,$77ff,$780f,$781f
	dc.w $15bd,$15bd,$15bd,$15bd,$15bd,$15bd,$15bd,$77a0,$77b0,$77c0,$77d0,$77e0
	dc.w $77f0,$7800,$7810,$7820,$782f,$15bd,$15bd,$15bd,$15bd,$15bd,$15bd,$77a1
	dc.w $77b1,$77c1,$77d1,$77e1,$77f1,$7801,$7811,$7821,$7830,$783e,$15bd,$15bd
	dc.w $7779,$7786,$7793,$77a2,$77b2,$77c2,$77d2,$77e2,$77f2,$7802,$7812,$7822
	dc.w $7831,$783f,$15bd,$15bd,$777a,$7787,$7794,$77a3,$77b3,$77c3,$77d3,$77e3
	dc.w $77f3,$7803,$7813,$7823,$7832,$7840,$15bd,$15bd,$777b,$7788,$7795,$77a4
	dc.w $77b4,$77c4,$77d4,$77e4,$77f4,$7804,$7814,$7824,$7833,$7841,$784c,$7855
	dc.w $777c,$7789,$7796,$77a5,$77b5,$77c5,$77d5,$77e5,$77f5,$7805,$7815,$7825
	dc.w $7834,$7842,$784d,$7856,$777d,$778a,$7797,$77a6,$77b6,$77c6,$77d6,$77e6
	dc.w $77f6,$7806,$7816,$7826,$7835,$7843,$784e,$15bd,$777e,$778b,$7798,$77a7
	dc.w $77b7,$77c7,$77d7,$77e7,$77f7,$7807,$7817,$7827,$7836,$7844,$784f,$7857
	dc.w $777f,$778c,$7799,$77a8,$77b8,$77c8,$77d8,$77e8,$77f8,$7808,$7818,$7828
	dc.w $7837,$7845,$7850,$15bd,$7780,$778d,$779a,$77a9,$77b9,$77c9,$77d9,$77e9
	dc.w $77f9,$7809,$7819,$7829,$7838,$7846,$7851,$15bd,$7781,$778e,$779b,$77aa
	dc.w $77ba,$77ca,$77da,$77ea,$77fa,$780a,$781a,$782a,$7839,$7847,$7852,$7858
	dc.w $7782,$778f,$779c,$77ab,$77bb,$77cb,$77db,$77eb,$77fb,$780b,$781b,$782b
	dc.w $783a,$7848,$15bd,$15bd,$7783,$7790,$779d,$77ac,$77bc,$77cc,$77dc,$77ec
	dc.w $77fc,$780c,$781c,$782c,$783b,$7849,$7853,$7859,$7784,$7791,$779e,$77ad
	dc.w $77bd,$77cd,$77dd,$77ed,$77fd,$780d,$781d,$782d,$783c,$784a,$7854,$15bd
	dc.w $7785,$7792,$779f,$77ae,$77be,$77ce,$77de,$77ee,$77fe,$780e,$781e,$782e
	dc.w $783d,$784b,$15bd,$15bd,$785a,$785b,$785d,$7860,$7866,$786b,$7872,$7879
	dc.w $7880,$7886,$788c,$7892,$7897,$789a,$15bd,$15bd,$15bd,$785c,$785e,$7861
	dc.w $7867,$786c,$7873,$787a,$7881,$7887,$788d,$7893,$7898,$789b,$15bd,$15bd
	dc.w $15bd,$15bd,$785f,$7862,$7868,$786d,$7874,$787b,$7882,$7888,$788e,$7894
	dc.w $15bd,$15bd,$15bd,$15bd,$15bd,$15bd,$15bd,$7863,$15bd,$15bd,$7875,$787c
	dc.w $7883,$7889,$788f,$15bd,$15bd,$15bd,$15bd,$15bd,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010


;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_0975f4: ;Title BG
	dc.w $1014,$5040
	dc.w $15bd,$15bd,$15bd,$15bd,$77af,$786e,$77cf,$77df,$77ef,$77ff,$780f,$781f
	dc.w $15bd,$15bd,$15bd,$15bd,$15bd,$15bd,$15bd,$77a0,$77b0,$786f,$7876,$787d
	dc.w $77f0,$7800,$7810,$7820,$782f,$15bd,$15bd,$15bd,$15bd,$15bd,$15bd,$7864
	dc.w $7869,$7870,$7877,$787e,$7884,$788a,$7890,$7895,$7830,$783e,$15bd,$15bd
	dc.w $7779,$7786,$7793,$7865,$786a,$7871,$7878,$787f,$7885,$788b,$7891,$7896
	dc.w $7899,$783f,$15bd,$15bd,$777a,$7787,$789c,$78a9,$78b7,$78c6,$78d4,$78e2
	dc.w $78f0,$78fe,$790a,$7914,$791e,$7840,$15bd,$15bd,$777b,$7788,$789d,$78aa
	dc.w $78b8,$78c7,$78d5,$78e3,$78f1,$78ff,$790b,$7915,$791f,$7925,$784c,$7855
	dc.w $777c,$7789,$789e,$78ab,$78b9,$78c8,$78d6,$78e4,$78f2,$7900,$790c,$7916
	dc.w $7920,$7842,$784d,$7856,$777d,$778a,$789f,$78ac,$78ba,$78c9,$78d7,$78e5
	dc.w $78f3,$7901,$790d,$7917,$7921,$7843,$7926,$15bd,$777e,$778b,$78a0,$78ad
	dc.w $78bb,$78ca,$78d8,$78e6,$78f4,$7902,$790e,$7827,$7922,$7844,$784f,$7857
	dc.w $777f,$778c,$78a1,$78ae,$78bc,$78cb,$78d9,$78e7,$78f5,$7903,$790f,$7918
	dc.w $7923,$7845,$7850,$15bd,$7780,$778d,$78a2,$78af,$78bd,$78cc,$78da,$78e8
	dc.w $78f6,$7904,$7910,$7919,$7838,$7846,$7851,$15bd,$7781,$778e,$78a3,$78b0
	dc.w $78be,$78cd,$78db,$78e9,$78f7,$7905,$7911,$791a,$7839,$7847,$7852,$7858
	dc.w $7782,$778f,$78a4,$78b1,$78bf,$78ce,$78dc,$78ea,$78f8,$7906,$7912,$791b
	dc.w $783a,$7848,$15bd,$15bd,$7783,$7790,$78a5,$78b2,$78c0,$78cf,$78dd,$78eb
	dc.w $78f9,$7907,$781c,$791c,$7924,$7849,$7853,$7859,$7784,$7791,$78a6,$78b3
	dc.w $78c1,$78d0,$78de,$78ec,$78fa,$7908,$7913,$791d,$783c,$784a,$7854,$15bd
	dc.w $7785,$7792,$78a7,$78b4,$78c2,$78d1,$78df,$78ed,$78fb,$7909,$781e,$782e
	dc.w $783d,$784b,$15bd,$15bd,$785a,$785b,$78a8,$78b5,$78c3,$78d2,$78e0,$78ee
	dc.w $78fc,$7886,$788c,$7892,$7897,$789a,$15bd,$15bd,$15bd,$785c,$785e,$78b6
	dc.w $78c4,$78d3,$78e1,$78ef,$78fd,$7887,$788d,$7893,$7898,$789b,$15bd,$15bd
	dc.w $15bd,$15bd,$785f,$7862,$78c5,$786d,$7874,$787b,$7882,$7888,$788e,$7894
	dc.w $15bd,$15bd,$15bd,$15bd,$15bd,$15bd,$15bd,$7863,$15bd,$15bd,$7875,$787c
	dc.w $7883,$7889,$788f,$15bd,$15bd,$15bd,$15bd,$15bd,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_0979b8:
	dc.w $1014,$5040
	dc.w $7227,$7237,$7247,$7257,$7267,$7277,$7287,$7297,$72a7,$72b7,$72c7,$72d7
	dc.w $72e7,$72f7,$7307,$7317,$7228,$7238,$7248,$7258,$7268,$7278,$7288,$7298
	dc.w $72a8,$72b8,$72c8,$72d8,$72e8,$72f8,$7308,$7318,$7229,$7239,$7249,$7259
	dc.w $7269,$7279,$7289,$7299,$72a9,$72b9,$72c9,$72d9,$72e9,$72f9,$7309,$7319
	dc.w $722a,$723a,$724a,$725a,$726a,$727a,$728a,$729a,$72aa,$72ba,$72ca,$72da
	dc.w $72ea,$72fa,$730a,$731a,$722b,$723b,$724b,$725b,$726b,$727b,$728b,$729b
	dc.w $72ab,$72bb,$72cb,$72db,$72eb,$72fb,$730b,$731b,$722c,$723c,$724c,$725c
	dc.w $726c,$727c,$728c,$729c,$72ac,$72bc,$72cc,$72dc,$72ec,$72fc,$730c,$731c
	dc.w $722d,$723d,$724d,$725d,$726d,$727d,$728d,$729d,$72ad,$72bd,$72cd,$72dd
	dc.w $72ed,$72fd,$730d,$731d,$722e,$723e,$724e,$725e,$726e,$727e,$728e,$729e
	dc.w $72ae,$72be,$72ce,$72de,$72ee,$72fe,$730e,$731e,$722f,$723f,$724f,$725f
	dc.w $726f,$727f,$728f,$729f,$72af,$72bf,$72cf,$72df,$72ef,$72ff,$730f,$731f
	dc.w $7230,$7240,$7250,$7260,$7270,$7280,$7290,$72a0,$72b0,$72c0,$72d0,$72e0
	dc.w $72f0,$7300,$7310,$7320,$7231,$7241,$7251,$7261,$7271,$7281,$7291,$72a1
	dc.w $72b1,$72c1,$72d1,$72e1,$72f1,$7301,$7311,$7321,$7232,$7242,$7252,$7262
	dc.w $7272,$7282,$7292,$72a2,$72b2,$72c2,$72d2,$72e2,$72f2,$7302,$7312,$7322
	dc.w $7233,$7243,$7253,$7263,$7273,$7283,$7293,$72a3,$72b3,$72c3,$72d3,$72e3
	dc.w $72f3,$7303,$7313,$7323,$7234,$7244,$7254,$7264,$7274,$7284,$7294,$72a4
	dc.w $72b4,$72c4,$72d4,$72e4,$72f4,$7304,$7314,$7324,$7235,$7245,$7255,$7265
	dc.w $7275,$7285,$7295,$72a5,$72b5,$72c5,$72d5,$72e5,$72f5,$7305,$7315,$7325
	dc.w $7236,$7246,$7256,$7266,$7276,$7286,$7296,$72a6,$72b6,$72c6,$72d6,$72e6
	dc.w $72f6,$7306,$7316,$7326,$7327,$7336,$7344,$7352,$7361,$7370,$737f,$738e
	dc.w $739e,$73ae,$73be,$73ce,$73de,$73ee,$73fe,$740e,$7328,$7337,$7345,$7353
	dc.w $7362,$7371,$7380,$738f,$739f,$73af,$73bf,$73cf,$73df,$73ef,$73ff,$740f
	dc.w $7329,$15bd,$15bd,$7354,$7363,$7372,$7381,$7390,$73a0,$73b0,$73c0,$73d0
	dc.w $73e0,$73f0,$7400,$7410,$15bd,$15bd,$15bd,$15bd,$15bd,$15bd,$15bd,$7391
	dc.w $73a1,$73b1,$73c1,$73d1,$73e1,$73f1,$7401,$7411,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_097d7c:
	dc.w $1014,$5040
	dc.w $732a,$7338,$7346,$7355,$7364,$7373,$7382,$7392,$73a2,$73b2,$73c2,$73d2
	dc.w $73e2,$73f2,$7402,$7412,$732b,$7339,$7347,$7356,$7365,$7374,$7383,$7393
	dc.w $73a3,$73b3,$73c3,$73d3,$73e3,$73f3,$7403,$7413,$732c,$733a,$7348,$7357
	dc.w $7366,$7375,$7384,$7394,$73a4,$73b4,$73c4,$73d4,$73e4,$73f4,$7404,$7414
	dc.w $732d,$733b,$7349,$7358,$7367,$7376,$7385,$7395,$73a5,$73b5,$73c5,$73d5
	dc.w $73e5,$73f5,$7405,$7415,$732e,$733c,$734a,$7359,$7368,$7377,$7386,$7396
	dc.w $73a6,$73b6,$73c6,$73d6,$73e6,$73f6,$7406,$7416,$732f,$733d,$734b,$735a
	dc.w $7369,$7378,$7387,$7397,$73a7,$73b7,$73c7,$73d7,$73e7,$73f7,$7407,$7417
	dc.w $7330,$733e,$734c,$735b,$736a,$7379,$7388,$7398,$73a8,$73b8,$73c8,$73d8
	dc.w $73e8,$73f8,$7408,$7418,$7331,$733f,$734d,$735c,$736b,$737a,$7389,$7399
	dc.w $73a9,$73b9,$73c9,$73d9,$73e9,$73f9,$7409,$7419,$7332,$7340,$734e,$735d
	dc.w $736c,$737b,$738a,$739a,$73aa,$73ba,$73ca,$73da,$73ea,$73fa,$740a,$741a
	dc.w $7333,$7341,$734f,$735e,$736d,$737c,$738b,$739b,$73ab,$73bb,$73cb,$73db
	dc.w $73eb,$73fb,$740b,$741b,$7334,$7342,$7350,$735f,$736e,$737d,$738c,$739c
	dc.w $73ac,$73bc,$73cc,$73dc,$73ec,$73fc,$740c,$0000,$7335,$7343,$7351,$7360
	dc.w $736f,$737e,$738d,$739d,$73ad,$73bd,$73cd,$73dd,$73ed,$73fd,$740d,$741c
	dc.w $741d,$742c,$743b,$744a,$7459,$7468,$7477,$7487,$7497,$74a7,$74b7,$74c7
	dc.w $74d1,$74d9,$74e1,$74e9,$741e,$742d,$743c,$744b,$745a,$7469,$7478,$7488
	dc.w $7498,$74a8,$74b8,$74c8,$74d2,$74da,$74e2,$74ea,$741f,$742e,$743d,$744c
	dc.w $745b,$746a,$7479,$7489,$7499,$74a9,$74b9,$74c9,$74d3,$74db,$74e3,$74eb
	dc.w $7420,$742f,$743e,$744d,$745c,$746b,$747a,$748a,$749a,$74aa,$74ba,$74ca
	dc.w $74d4,$74dc,$74e4,$74ec,$7421,$7430,$15bd,$15bd,$15bd,$15bd,$747b,$748b
	dc.w $749b,$74ab,$74bb,$74cb,$74d5,$74dd,$74e5,$74ed,$7422,$15bd,$743f,$744e
	dc.w $745d,$746c,$747c,$748c,$749c,$74ac,$74bc,$74cc,$74d6,$74de,$74e6,$74ee
	dc.w $15bd,$7431,$7440,$744f,$745e,$746d,$747d,$748d,$749d,$74ad,$74bd,$74cd
	dc.w $74d7,$74df,$74e7,$0000,$7423,$7432,$7441,$7450,$745f,$746e,$747e,$748e
	dc.w $749e,$74ae,$74be,$74ce,$74d8,$74e0,$74e8,$74ef,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098140:
	dc.w $0c02,$5040
	dc.w $7424,$7433,$7442,$7451,$7460,$746f,$747f,$748f,$749f
	dc.w $74af,$74bf,$74cf,$7425,$7434,$7443,$7452,$7461,$7470
	dc.w $7480,$7490,$74a0,$74b0,$74c0,$74d0,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09818c:
	dc.w $0b0d,$4040
	dc.w $7426,$7435,$7444,$7453,$7462,$7471,$7481,$7491
	dc.w $74a1,$74b1,$74c1,$7427,$7436,$7445,$7454,$7463
	dc.w $7472,$7482,$7492,$74a2,$74b2,$74c2,$7428,$7437
	dc.w $7446,$7455,$7464,$7473,$7483,$7493,$74a3,$74b3
	dc.w $74c3,$7429,$7438,$7447,$7456,$7465,$7474,$7484
	dc.w $7494,$74a4,$74b4,$74c4,$742a,$7439,$7448,$7457
	dc.w $7466,$7475,$7485,$7495,$74a5,$74b5,$74c5,$742b
	dc.w $743a,$7449,$7458,$7467,$7476,$7486,$7496,$74a6
	dc.w $74b6,$74c6,$74f0,$74fc,$750c,$751c,$752c,$753b
	dc.w $754a,$755a,$756a,$757a,$7587,$74f1,$74fd,$750d
	dc.w $751d,$752d,$753c,$754b,$755b,$756b,$757b,$7588
	dc.w $74f2,$74fe,$750e,$751e,$752e,$753d,$754c,$755c
	dc.w $756c,$757c,$7589,$74f3,$74ff,$750f,$751f,$752f
	dc.w $753e,$754d,$755d,$756d,$757d,$758a,$74f4,$7500
	dc.w $7510,$7520,$7530,$753f,$754e,$755e,$756e,$757e
	dc.w $758b,$74f5,$7501,$7511,$7521,$15bd,$743f,$754f
	dc.w $755f,$756f,$757f,$758c,$74f6,$7502,$7512,$7522
	dc.w $7531,$7540,$7550,$7560,$7570,$7580,$758d,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1110,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09833e:
	dc.w $0c05,$d840
	dc.w $74f7,$7503,$7513,$7523,$7532,$7541,$7551,$7561,$7571
	dc.w $7581,$758e,$7593,$74f8,$7504,$7514,$7524,$7533,$7542
	dc.w $7552,$7562,$7572,$7582,$758f,$7594,$74f9,$7505,$7515
	dc.w $7525,$7534,$7543,$7553,$7563,$7573,$7583,$7590,$7595
	dc.w $74fa,$7506,$7516,$7526,$7535,$7544,$7554,$7564,$7574
	dc.w $7584,$7591,$7596,$74fb,$7507,$7517,$7527,$7536,$7545
	dc.w $7555,$7565,$7575,$7585,$7592,$7597,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_0983f6:
	dc.w $0901,$5038
	dc.w $7508,$7518,$7528,$7537,$7546,$7556,$7566
	dc.w $7576,$7586,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098416:
	dc.w $080d,$4838
	dc.w $7509,$7519,$7529,$7538
	dc.w $7547,$7557,$7567,$7577
	dc.w $750a,$751a,$752a,$7539
	dc.w $7548,$7558,$7568,$7578
	dc.w $750b,$751b,$752b,$753a
	dc.w $7549,$7559,$7569,$7579
	dc.w $759a,$75aa,$75ba,$75ca
	dc.w $75da,$75ea,$75fa,$760a
	dc.w $759b,$75ab,$75bb,$75cb
	dc.w $75db,$75eb,$75fb,$760b
	dc.w $759c,$75ac,$75bc,$75cc
	dc.w $75dc,$75ec,$75fc,$760c
	dc.w $759d,$75ad,$75bd,$75cd
	dc.w $75dd,$75ed,$75fd,$760d
	dc.w $759e,$75ae,$75be,$75ce
	dc.w $75de,$75ee,$75fe,$760e
	dc.w $759f,$75af,$75bf,$75cf
	dc.w $75df,$75ef,$75ff,$760f
	dc.w $75a0,$75b0,$75c0,$75d0
	dc.w $75e0,$75f0,$7600,$7610
	dc.w $75a1,$75b1,$75c1,$75d1
	dc.w $75e1,$75f1,$7601,$7611
	dc.w $75a2,$75b2,$75c2,$75d2
	dc.w $75e2,$75f2,$7602,$7612
	dc.w $75a3,$75b3,$75c3,$75d3
	dc.w $75e3,$75f3,$7603,$7613
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098552:
	dc.w $0c04,$e038
	dc.w $75a4,$75b4,$75c4,$75d4,$75e4,$75f4
	dc.w $7604,$7614,$0000,$0000,$7623,$0000
	dc.w $75a5,$75b5,$75c5,$75d5,$75e5,$75f5
	dc.w $7605,$7615,$0000,$761e,$7624,$7629
	dc.w $75a6,$75b6,$75c6,$75d6,$75e6,$75f6
	dc.w $7606,$7616,$761a,$761f,$7625,$762a
	dc.w $75a7,$75b7,$75c7,$75d7,$75e7,$75f7
	dc.w $7607,$7617,$761b,$7620,$7626,$762b
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_0985e6:
	dc.w $0d02,$c040
	dc.w $7598,$75a8,$75b8,$75c8,$75d8,$75e8,$75f8,$7608
	dc.w $7618,$761c,$7621,$7627,$762c,$7599,$75a9,$75b9
	dc.w $75c9,$75d9,$75e9,$75f9,$7609,$7619,$761d,$7622
	dc.w $7628,$762d,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098638:
	dc.w $0704,$5030
	dc.w $762f,$7631,$7641,$7651,$7661,$7671
	dc.w $7681,$0000,$7632,$7642,$7652,$7662
	dc.w $7672,$7682,$0000,$7633,$7643,$7653
	dc.w $7663,$7673,$7683,$0000,$7634,$7644
	dc.w $7654,$7664,$7674,$7684,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098690:
	dc.w $0509,$3028
	dc.w $7635,$7645,$7655,$7665
	dc.w $7675,$7636,$7646,$7656
	dc.w $7666,$7676,$7637,$7647
	dc.w $7657,$7667,$7677,$7638
	dc.w $7648,$7658,$7668,$7678
	dc.w $7639,$7649,$7659,$7669
	dc.w $7679,$763a,$764a,$765a
	dc.w $766a,$767a,$763b,$764b
	dc.w $765b,$766b,$767b,$763c
	dc.w $764c,$765c,$766c,$767c
	dc.w $763d,$764d,$765d,$766d
	dc.w $767d,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09871c:
	dc.w $0902,$e830
	dc.w $0000,$763e,$764e,$765e,$766e,$767e,$7685
	dc.w $7688,$768b,$229a,$763f,$764f,$765f,$766f
	dc.w $767f,$7686,$7689,$768c,$1010,$1010,$1010
	dc.w $1010,$1013,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098756:
	dc.w $0a05,$d840
	dc.w $0000,$762e,$7630,$7640,$7650
	dc.w $7660,$7670,$7680,$7687,$768a
	dc.w $768d,$7690,$7693,$7699,$76a8
	dc.w $76b7,$76c7,$76d6,$76de,$76e2
	dc.w $768e,$7691,$7694,$769a,$76a9
	dc.w $76b8,$76c8,$76d7,$76df,$76e3
	dc.w $768f,$7692,$7695,$769b,$76aa
	dc.w $76b9,$76c9,$76d8,$76e0,$76e4
	dc.w $0000,$0000,$7696,$769c,$76ab
	dc.w $76ba,$76ca,$76d9,$76e1,$229a
	dc.w $1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_0987f0:
	dc.w $0603,$4828
	dc.w $0000,$0000,$0000,$76bb,$76cb,$76da,$7697,$769d,$76ac
	dc.w $76bc,$76cc,$76db,$7698,$769e,$76ad,$76bd,$76cd,$76dc
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09882a:
	dc.w $0408,$3020
	dc.w $769f,$76ae,$76be,$76ce,$76a0,$76af,$76bf,$76cf
	dc.w $76a1,$76b0,$76c0,$76d0,$76a2,$76b1,$76c1,$76d1
	dc.w $76a3,$76b2,$76c2,$76d2,$76a4,$76b3,$76c3,$0000
	dc.w $76a5,$76b4,$76c4,$76d3,$76a6,$76b5,$76c5,$76d4
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09888e:
	dc.w $0804,$f038
	dc.w $0000,$0000,$0000,$76a7,$76b6,$76c6,$76d5,$76dd
	dc.w $0000,$0000,$76e8,$76ee,$76fd,$770c,$771a,$7725
	dc.w $0000,$76e6,$76e9,$76ef,$76fe,$770d,$771b,$7726
	dc.w $76e5,$76e7,$76ea,$76f0,$76ff,$770e,$771c,$7727
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_0988f2:
	dc.w $0503,$d028
	dc.w $76eb,$76f1,$7700,$770f,$771d,$76ec
	dc.w $76f2,$7701,$0000,$0000,$76ed,$0000
	dc.w $0000,$0000,$0000,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098924:
	dc.w $0506,$4020
	dc.w $76f3,$7702,$7710,$771e,$7728,$76f4,$7703,$7711,$771f
	dc.w $229a,$76f5,$7704,$7712,$7720,$0000,$76f6,$7705,$7713
	dc.w $7721,$0000,$76f7,$7706,$7714,$7722,$0000,$76f8,$7707
	dc.w $7715,$7723,$0000,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098982:
	dc.w $0303,$1020
	dc.w $76f9,$7708,$7716,$76fa,$7709,$7717,$76fb
	dc.w $770a,$7718,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_0989a2:
	dc.w $0806,$f838
	dc.w $0000,$0000,$0000,$76fc,$770b,$7719,$7724,$0000
	dc.w $0000,$0000,$0000,$774d,$7753,$7758,$775d,$7762
	dc.w $0000,$0000,$7747,$774e,$7754,$7759,$775e,$7763
	dc.w $0000,$7745,$7748,$774f,$7755,$775a,$775f,$7764
	dc.w $7744,$7746,$7749,$7750,$7756,$775b,$7760,$0000
	dc.w $0000,$0000,$774a,$7751,$7757,$775c,$7761,$0000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098a36:
	dc.w $0302,$c828
	dc.w $774b,$7752,$229a
	dc.w $774c,$0000,$0000
	dc.w $1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098a4c:
	dc.w $0509,$4c20
	dc.w $0000,$772f,$0000,$0000,$0000,$0000,$7730,$7734
	dc.w $0000,$0000,$0000,$7731,$7735,$7739,$0000,$3832
	dc.w $7732,$1e49,$773a,$0000,$7729,$1e49,$1e49,$773b
	dc.w $7741,$772a,$1e49,$1e49,$773c,$0000,$772b,$1e49
	dc.w $1e49,$773d,$0000,$772c,$1e49,$7736,$773e,$0000
	dc.w $772d,$1e49,$7737,$773f,$7742,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1011,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098ad8:
	dc.w $0604,$0428
	dc.w $28d4,$772e,$7733,$7738,$7740,$7743,$7765,$7767,$776d
	dc.w $1e49,$7777,$0000,$7766,$7768,$776e,$1e49,$7778,$0000
	dc.w $0000,$0000,$776f,$7774,$2ff6,$0000,$1210,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1210

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098b24:
	dc.w $0306,$e420
	dc.w $0000,$7770,$7775,$0038,$7771,$7776,$7769,$7772,$0000
	dc.w $776a,$7773,$0000,$776b,$0000,$0000,$776c,$0000,$0000
	dc.w $1010,$1012,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098b5e:
	dc.w $020c,$3010
	dc.w $1459,$1465,$145a,$1466
	dc.w $145b,$1467,$145c,$1468
	dc.w $145d,$1469,$145e,$146a
	dc.w $145f,$146b,$1460,$146c
	dc.w $1461,$146d,$1462,$146e
	dc.w $1463,$146f,$1464,$1470
	dc.w $2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098baa:
	dc.w $0110,$4008
	dc.w $1471,$1472,$1473,$1474,$1475,$1476,$1477,$1478
	dc.w $1479,$147a,$147b,$147c,$147d,$147e,$147f,$1480
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098bde:
	dc.w $0206,$1808
	dc.w $e531,$e537,$e532,$e538,$e533,$e539
	dc.w $e534,$e53a,$e535,$e53b,$e536,$e53c
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098c06:
	dc.w $0208,$2008
	dc.w $e53d,$e545,$e53e,$e546,$e53f,$e547
	dc.w $e540,$e548,$e541,$e549,$e542,$e54a
	dc.w $e543,$e54b,$e544,$e54c,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;Revenge Logo Sprite
loc_098c3a:
	dc.w $030e,$380c
	dc.w $0e71,$0e71,$0e8a,$0e72,$0e7e,$0e8b,$0e73,$0e7f,$0e8c
	dc.w $0e74,$0e80,$0e8d,$0e75,$0e81,$0e71,$0e76,$0e82,$0e71
	dc.w $0e77,$0e83,$0e8e,$0e78,$0e84,$0e71,$0e79,$0e85,$0e71
	dc.w $0e7a,$0e86,$0e8f,$0e7b,$0e87,$0e90,$0e7c,$0e88,$0e91
	dc.w $0e7d,$0e89,$0e92,$0e71,$0e71,$0e93,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098cbc:
	dc.l $00000000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098cc0:
	dc.w $0208,$2800
	dc.w $c663,$c66f,$c664,$c670,$c665,$c671,$c666,$c672
	dc.w $c667,$c673,$c668,$c674,$c669,$c675,$c66a,$c676
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098cf4:
	dc.w $0303,$f008,$8000,$c6ab,$c6b8,$c6a0,$c6f1,$c6fb
	dc.w $c6ea,$c6f2,$c6fc,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098d14:
	dc.w $0303,$f008,$8000,$8000,$c6bb,$c6a2,$c6f3,$c6fd
	dc.w $c6eb,$c6f4,$8000,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098d34:
	dc.w $0303,$f008,$8ee4,$c6af,$c6fe,$c6ec,$c6f5,$c6ff
	dc.w $c6ed,$c6f6,$c700,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098d54:
	dc.w $0303,$f008,$c6a6,$c6b2,$c701,$c6ee,$c6f7,$c702
	dc.w $c6ef,$c6f8,$c703,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098d74:
	dc.w $0303,$f008,$8000,$c6b5,$c704,$c6a9,$c6f9,$c705
	dc.w $c6f0,$c6fa,$c706,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098d94:
	dc.w $0303,$f008,$8000,$c6d0,$c717,$c6c5,$c70d,$c718
	dc.w $c707,$c70e,$c719,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098db4:
	dc.w $0303,$f008,$8000,$c6d3,$c6e1,$c708,$c70f,$c71a
	dc.w $c709,$c710,$c71b,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098dd4:
	dc.w $0303,$f008,$c6c9,$c6d6,$c6e4,$c6ca,$c711,$c71c
	dc.w $c70a,$c712,$8000,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098df4:
	dc.w $0303,$f008,$8000,$c6d9,$c71d,$c6cc,$c713,$c71e
	dc.w $c70b,$c714,$c71f,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098e14:
	dc.w $0303,$f008,$8ee4,$c6dc,$c6e8,$c6ce,$c715,$c720
	dc.w $c70c,$c716,$c721,$1010,$1010,$1010,$1010,$1000


;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098e34:
	dc.w $0107,$1cf0
	dc.w $c677,$c678,$c679,$c67a,$c67b,$c67c,$c67d
	dc.w $1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098e4e:
	dc.w $040e,$3810
	dc.w $8000,$8000,$fa86,$fab6,$fa71,$faa0,$faac
	dc.w $fab7,$fa72,$faa1,$faad,$fab8,$fa73,$faa2
	dc.w $faae,$fab9,$fa74,$faa3,$faaf,$faba,$fa71
	dc.w $faa4,$fab0,$fabb,$fa75,$faa5,$fab1,$fabc
	dc.w $fa76,$faa6,$fab2,$fabd,$fa77,$faa7,$fab3
	dc.w $fabe,$fa78,$faa8,$fab4,$fabf,$fa79,$faa9
	dc.w $fa90,$fac0,$fa9e,$faaa,$fab5,$fac1,$fac6
	dc.w $fac8,$faca,$facb,$fac7,$fac9,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1110,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010


;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098efa:
	dc.w $0408,$2010
	dc.w $e63a,$e649,$e658,$e682,$e66e,$e679,$e680,$e683
	dc.w $e66f,$e67a,$e681,$e684,$e6d9,$e6e6,$e6f5,$e702
	dc.w $e68d,$e699,$e6a5,$e703,$e68e,$e6e7,$e6f6,$e704
	dc.w $e68f,$e6e8,$e6a7,$e705,$e6da,$e6e9,$e6f7,$e706
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098f5e:
	dc.w $0409,$2410
	dc.w $c8d6,$c90f,$8000,$8000,$c8f1,$c910
	dc.w $8000,$8000,$c909,$c911,$c8e8,$c91c
	dc.w $c90a,$c912,$c918,$c91d,$c90b,$c913
	dc.w $c919,$c91e,$c8db,$c914,$c91a,$c91f
	dc.w $c90c,$c915,$c91b,$c920,$c90d,$c916
	dc.w $8000,$8000,$c90e,$c917,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_098fce:
	dc.w $0307,$300c
	dc.w $16e2,$16ed,$16f8,$16e3
	dc.w $16ee,$16f9,$16e4,$16ef
	dc.w $16fa,$16e5,$16f0,$16fb
	dc.w $16e6,$16f1,$16fc,$16e7
	dc.w $16f2,$16fd,$16e8,$16f3
	dc.w $16fe,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099012:
	dc.w $020e,$3808
	dc.w $c89e,$c8ac,$c89f,$c8ad,$c8a0,$c8ae
	dc.w $c8a1,$c8af,$c8a2,$c8b0,$c8a3,$c8b1
	dc.w $c8a4,$c8b2,$c8a5,$c8b3,$c8a6,$c8b4
	dc.w $c8a7,$c8b5,$c8a8,$c8b6,$c8a9,$c8b7
	dc.w $c8aa,$c8b8,$c8ab,$c8b9,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09906a:
	dc.w $030e,$380c
	dc.w $1918,$1926,$1934,$1919,$1927,$1935,$191a
	dc.w $1928,$1936,$191b,$1929,$1937,$191c,$192a
	dc.w $1938,$191d,$192b,$1939,$191e,$192c,$193a
	dc.w $191f,$192d,$1936,$1920,$192e,$193b,$1921
	dc.w $192f,$193c,$1922,$1930,$193d,$1923,$1931
	dc.w $193e,$1924,$1932,$193f,$1925,$1933,$1940
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_0990ec:
	dc.w $0411,$4410
	dc.w $8000,$e8b0,$e8c0,$e8d0,$e8ab,$e8b1
	dc.w $e8c1,$e8d1,$e8ac,$e8b2,$e8c2,$e8d2
	dc.w $e8ad,$e8b3,$e8c3,$e8d3,$8000,$e8b4
	dc.w $e8c4,$e8d4,$8000,$e8b5,$e8c5,$e8d5
	dc.w $8000,$e8b6,$e8c6,$e8d6,$8000,$e8b7
	dc.w $e8c7,$e8d7,$8000,$e8b8,$e8c8,$e8d8
	dc.w $8000,$e8b9,$e8c9,$e8d9,$8000,$e8ba
	dc.w $e8ca,$e8da,$8000,$e8bb,$e8cb,$e8db
	dc.w $8000,$e8bc,$e8cc,$e8dc,$8000,$e8bd
	dc.w $e8cd,$e8dd,$e8ae,$e8be,$e8ce,$e8de
	dc.w $e8af,$e8bf,$e8cf,$e8df,$e911,$e919
	dc.w $8000,$8000,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_0991bc:
	dc.w $1014,$5040
	dc.w $8000,$8000,$8000,$9503,$e9bb,$eaf0,$eb00,$eb10,$eb20,$eb30
	dc.w $eb40,$eb50,$eb60,$eb70,$8000,$8000,$8000,$e98f,$e99d,$e9ac
	dc.w $e9bc,$eaf1,$eb01,$eb11,$eb21,$eb31,$eb41,$eb51,$eb61,$eb71
	dc.w $eb80,$8000,$8000,$e990,$e99e,$e9ad,$e9bd,$eaf2,$eb02,$eb12
	dc.w $eb22,$eb32,$eb42,$eb52,$eb62,$eb72,$eb81,$8000,$e989,$e991
	dc.w $e99f,$e9ae,$e9be,$eaf3,$eb03,$eb13,$eb23,$eb33,$eb43,$eb53
	dc.w $eb63,$eb73,$eb82,$eb8e,$8000,$e992,$e9a0,$e9af,$e9bf,$eaf4
	dc.w $eb04,$eb14,$eb24,$eb34,$eb44,$eb54,$eb64,$eb74,$eb83,$eb8f
	dc.w $8000,$e993,$e9a1,$e9b0,$e9c0,$eaf5,$eb05,$eb15,$eb25,$eb35
	dc.w $eb45,$eb55,$eb65,$eb75,$eb84,$eb90,$e98a,$e994,$e9a2,$e9b1
	dc.w $e9c1,$eaf6,$eb06,$eb16,$eb26,$eb36,$eb46,$eb56,$eb66,$eb76
	dc.w $eb85,$eb91,$e98b,$e995,$e9a3,$e9b2,$e9c2,$eaf7,$eb07,$eb17
	dc.w $eb27,$eb37,$eb47,$eb57,$eb67,$eb77,$eb86,$eb92,$8000,$8000
	dc.w $e9a4,$e9b3,$e9c3,$eaf8,$eb08,$eb18,$eb28,$eb38,$eb48,$eb58
	dc.w $eb68,$eb78,$eb87,$eb93,$9995,$e996,$e9a5,$e9b4,$e9c4,$eaf9
	dc.w $eb09,$eb19,$eb29,$eb39,$eb49,$eb59,$eb69,$eb79,$eb88,$eb94
	dc.w $e98c,$e997,$e9a6,$e9b5,$e9c5,$eafa,$eb0a,$eb1a,$eb2a,$eb3a
	dc.w $eb4a,$eb5a,$eb6a,$eb7a,$eb89,$8000,$8000,$e998,$e9a7,$e9b6
	dc.w $e9c6,$eafb,$eb0b,$eb1b,$eb2b,$eb3b,$eb4b,$eb5b,$eb6b,$eb7b
	dc.w $eb8a,$eb95,$8000,$e999,$e9a8,$e9b7,$eaec,$eafc,$eb0c,$eb1c
	dc.w $eb2c,$eb3c,$eb4c,$eb5c,$eb6c,$eb7c,$eb8b,$eb96,$e98d,$e99a
	dc.w $e9a9,$e9b8,$eaed,$eafd,$eb0d,$eb1d,$eb2d,$eb3d,$eb4d,$eb5d
	dc.w $eb6d,$eb7d,$8000,$8000,$e98e,$e99b,$e9aa,$e9b9,$eaee,$eafe
	dc.w $eb0e,$eb1e,$eb2e,$eb3e,$eb4e,$eb5e,$eb6e,$eb7e,$eb8c,$8000
	dc.w $8000,$e99c,$e9ab,$e9ba,$eaef,$eaff,$eb0f,$eb1f,$eb2f,$eb3f
	dc.w $eb4f,$eb5f,$eb6f,$eb7f,$eb8d,$eb97,$8000,$eb98,$eb9b,$eb9e
	dc.w $eba2,$eba6,$ebaa,$ebae,$ebb2,$ebb6,$ebba,$ebbc,$ebbf,$8000
	dc.w $ebc4,$ebc5,$af77,$eb99,$eb9c,$eb9f,$eba3,$eba7,$ebab,$ebaf
	dc.w $ebb3,$ebb7,$ebbb,$ebbd,$ebc0,$8000,$8000,$8000,$8000,$eb9a
	dc.w $eb9d,$eba0,$eba4,$eba8,$ebac,$ebb0,$ebb4,$ebb8,$8000,$ebbe
	dc.w $ebc1,$ebc2,$8000,$8000,$8000,$8000,$8000,$eba1,$eba5,$eba9
	dc.w $ebad,$ebb1,$ebb5,$ebb9,$8000,$8000,$8000,$ebc3,$8000,$8000
	dc.w $1010,$1011,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1310,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099580:
	dc.w $0204,$1008
	dc.w $167a,$1683,$167b,$1684,$167c,$1685
	dc.w $167d,$1686,$2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09959c:
	dc.w $0204,$1008
	dc.w $168c,$1696,$168d,$1697,$168e,$1698
	dc.w $168f,$1699,$2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_0995b8:
	dc.w $0206,$1808
	dc.w $1690,$169a,$1691,$169b,$1692,$169c
	dc.w $1693,$169d,$1694,$169e,$1695,$169f
	dc.w $2020,$2020,$2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_0995e0:
	dc.w $0806,$1820
	dc.w $8000,$8000,$8000,$e74d,$e756,$e760
	dc.w $e768,$e770,$8000,$e73b,$e744,$e74e
	dc.w $e757,$e761,$e769,$e771,$8000,$e73c
	dc.w $e745,$e74f,$e758,$e762,$e76a,$e772
	dc.w $e735,$e73d,$e746,$e750,$e759,$e763
	dc.w $e76b,$e773,$e736,$e73e,$e747,$e751
	dc.w $e75a,$e764,$e76c,$8000,$e737,$e73f
	dc.w $e748,$e752,$e75b,$e765,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099674:
	dc.w $0805,$1020
	dc.w $8000,$8000,$8000,$8000,$e75c
	dc.w $e766,$e76d,$e774,$8000,$e740
	dc.w $e749,$e753,$e75d,$877d,$e76e
	dc.w $e775,$e738,$e741,$e74a,$e754
	dc.w $e75e,$e767,$e76f,$8000,$e739
	dc.w $e742,$e74b,$e755,$e75f,$8000
	dc.w $8000,$8000,$e73a,$e743,$e74c
	dc.w $8000,$8000,$8000,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_0996f0:
	dc.w $0808,$2020
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$e7bb,$8000
	dc.w $8000,$e77f,$e78c,$8000,$e7a3,$e7ae,$e7bc,$e7c6
	dc.w $8000,$e780,$e78d,$e799,$e7a4,$e7af,$84f0,$e7c7
	dc.w $e776,$e781,$e78e,$e79a,$e7a5,$e7b0,$e7bd,$e7c8
	dc.w $e777,$e782,$e78f,$e79b,$e7a6,$e7b1,$e7be,$e7c9
	dc.w $e778,$e783,$e790,$e79c,$e7a7,$e7b2,$e7bf,$e7ca
	dc.w $e779,$e784,$e791,$e79d,$8000,$e7b3,$8000,$8000
	dc.w $8000,$e785,$e792,$8000,$8000,$8000,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_0997b4:
	dc.w $0808,$2020
	dc.w $8000,$8000,$8000,$8000,$8000,$e7b4,$e7c0,$e7cb
	dc.w $8000,$8000,$8000,$8000,$e7a8,$e7b5,$e7c1,$e7cc
	dc.w $e77a,$e786,$e793,$e79e,$e7a9,$e7b6,$e7c2,$e7cd
	dc.w $e77b,$e787,$e794,$e79f,$e7aa,$e7b7,$e7c3,$e7ce
	dc.w $e77c,$e788,$e795,$e7a0,$e7ab,$e7b8,$e7c4,$e7cf
	dc.w $e77d,$e789,$e796,$e7a1,$e7ac,$e7b9,$e7c5,$8000
	dc.w $e77e,$e78a,$e797,$e7a2,$e7ad,$e7ba,$bd24,$8000
	dc.w $8000,$e78b,$e798,$8000,$8000,$8000,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1210,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099878:
	dc.w $0808,$2020
	dc.w $8000,$8000,$8000,$8000,$e7f9,$e77f,$8000,$8000
	dc.w $8000,$8000,$8000,$e7ed,$e7fa,$e805,$8000,$8000
	dc.w $8000,$8000,$e7e2,$e7ee,$e7fb,$e806,$8000,$8000
	dc.w $8000,$e7d8,$e7e3,$e7ef,$e7fc,$e807,$e811,$e819
	dc.w $8000,$e7d9,$e7e4,$e7f0,$e7fd,$e808,$e812,$e81a
	dc.w $e7d0,$e7da,$e7e5,$e7f1,$e7fe,$e809,$8000,$8000
	dc.w $e7d1,$e7db,$e7e6,$e7f2,$e7ff,$e80a,$8000,$8000
	dc.w $e7d2,$e7dc,$e7e7,$8000,$8000,$8000,$8000,$8000
	dc.w $1010,$1010,$1012,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09993c:
	dc.w $0808,$2020
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$e813,$e81b
	dc.w $8000,$8000,$8000,$e7f3,$bd24,$e80b,$e814,$e81c
	dc.w $8000,$e7dd,$e7e8,$e7f4,$e800,$e80c,$e815,$e81d
	dc.w $e7d3,$e7de,$e7e9,$e7f5,$e801,$e80d,$e816,$e81e
	dc.w $e7d4,$e7df,$e7ea,$e7f6,$e802,$e80e,$e817,$e81f
	dc.w $e7d5,$84f0,$e7eb,$e7f7,$e803,$e80f,$e818,$8000
	dc.w $e7d6,$e7e0,$e7ec,$e7f8,$e804,$e810,$8000,$8000
	dc.w $e7d7,$e7e1,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1310,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099a00:
	dc.w $0806,$1820
	dc.w $8000,$8000,$8000,$e83c,$e844,$e84c,$e855,$e85d
	dc.w $8000,$8000,$e832,$e83d,$e845,$e84d,$e856,$e85e
	dc.w $8000,$e828,$e833,$e83e,$e846,$e84e,$e857,$e85f
	dc.w $e820,$e829,$e834,$e83f,$e847,$e84f,$e858,$e860
	dc.w $e821,$e82a,$e835,$e840,$e848,$e850,$e859,$8000
	dc.w $e822,$e82b,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099a94:
	dc.w $0806,$1820
	dc.w $8000,$e82c,$e836,$8000,$8000,$e851,$e85a,$e861
	dc.w $e823,$e82d,$e837,$8000,$e849,$e852,$e85b,$e862
	dc.w $e824,$e82e,$e838,$e841,$e84a,$e853,$e85c,$e863
	dc.w $e825,$e82f,$e839,$e842,$e84b,$e854,$8000,$8000
	dc.w $e826,$e830,$e83a,$e843,$8000,$8000,$8000,$8000
	dc.w $e827,$e831,$e83b,$8000,$8000,$8000,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099b28:
	dc.w $0807,$1820
	dc.w $8000,$8000,$8000,$8000,$8000,$e895,$e89d
	dc.w $e8a5,$8000,$e86d,$e877,$e882,$e88b,$e896
	dc.w $e89e,$e8a6,$e864,$e86e,$e878,$e883,$e88c
	dc.w $e897,$e89f,$e8a7,$e865,$e86f,$e879,$e884
	dc.w $e88d,$9c1f,$e8a0,$e8a8,$e866,$e870,$e87a
	dc.w $e885,$e88e,$e898,$e8a1,$8000,$e867,$e871
	dc.w $e87b,$8000,$8000,$8000,$8000,$8000,$e868
	dc.w $e872,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099bd4:
	dc.w $0806,$1820
	dc.w $8000,$8000,$e87c,$e886,$e88f,$8000,$bd24,$e8a9
	dc.w $8000,$e873,$e87d,$e887,$e890,$e899,$e8a2,$e8aa
	dc.w $e869,$e874,$e87e,$e888,$e891,$e89a,$e8a3,$e8a8
	dc.w $e86a,$e875,$e87f,$e889,$e892,$e89b,$e8a4,$8000
	dc.w $e86b,$e830,$e880,$9c1f,$e893,$e89c,$8000,$8000
	dc.w $e86c,$e876,$e881,$e88a,$e894,$8000,$8000,$8000
	dc.w $1010,$1010,$1010,$1110,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1013,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099c68:
	dc.w $020b,$2c0c
	dc.w $e6db,$e6ea,$e6dc,$e6eb,$e6dd,$e6ec,$e6de,$e6ed,$e6df,$e6ee,$e6e0
	dc.w $e6ef,$e6e1,$e6f0,$e6e2,$e6f1,$e6e3,$e6f2,$e6e4,$e6f3,$e6e5,$e6f4
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099cae:
	dc.w $010a,$2808
	dc.w $e707,$e708,$e709,$e70a,$e70b
	dc.w $e70c,$e70d,$e70e,$e70f,$e710
	dc.w $1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099cd0:
	dc.w $0104,$1404
	dc.w $e711,$e712,$e713,$e714,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099ce0:
	dc.w $0101,$f404
	dc.w $e71a,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099ce8:
	dc.w $0101,$f404
	dc.w $e71b,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099cf0:
	dc.w $0101,$f404
	dc.w $e71c,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099cf8:
	dc.w $0101,$f404
	dc.w $e71d,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099d00:
	dc.w $0101,$f404
	dc.w $e71e,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099d08:
	dc.w $0101,$f404
	dc.w $e724,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099d10:
	dc.w $0101,$f404
	dc.w $e725,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099d18:
	dc.w $0101,$f404
	dc.w $e726,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099d20:
	dc.w $0101,$f404
	dc.w $e727,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099d28:
	dc.w $0108,$2004
	dc.w $e72d,$e72e,$e72f,$e730
	dc.w $e731,$e732,$e733,$e734
	dc.w $1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099d44:
	dc.w $0105,$2404
	dc.w $e715,$e716,$e717,$e718
	dc.w $e719,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099d58:
	dc.w $0105,$0004
	dc.w $e71f,$e720,$e721,$e722
	dc.w $e723,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099d6c:
	dc.w $0105,$0004
	dc.w $e728,$e729,$e72a,$e72b
	dc.w $e72c,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099d80:
	dc.w $0d08,$f038
	dc.w $8000,$8000,$8000,$8000,$8000,$c552
	dc.w $c559,$c560,$9503,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$c54d
	dc.w $c553,$c55a,$c561,$c56a,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$c548
	dc.w $c54e,$c554,$c55b,$c562,$c56b,$c573
	dc.w $8000,$8000,$8000,$8000,$8000,$c543
	dc.w $c549,$c54f,$c555,$c55c,$c563,$c56c
	dc.w $c574,$8000,$8000,$8000,$8000,$c53d
	dc.w $c544,$9038,$9038,$9038,$9038,$c564
	dc.w $c56d,$c575,$c57b,$8000,$8000,$8000
	dc.w $c53e,$c545,$c54a,$9038,$9038,$9038
	dc.w $9038,$9038,$9038,$c57c,$94d9,$8000
	dc.w $8000,$c53f,$c546,$9038,$9038,$9038
	dc.w $9038,$9038,$9038,$9038,$9038,$c581
	dc.w $8000,$c539,$c540,$9038,$9038,$9038
	dc.w $9038,$9038,$9038,$9038,$9038,$9038
	dc.w $c582,$c586,$1010,$1010,$1010,$1010
	dc.w $1210,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1210,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_099ebc:
	dc.w $1008,$f040
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$c55d,$c565
	dc.w $c56e,$c576,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$c556,$c55e,$c566
	dc.w $c56f,$c577,$c57d,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$c54b,$c550,$c557,$9028,$c567
	dc.w $c570,$c578,$c57e,$93f0,$8000,$8000,$8000,$8000
	dc.w $8000,$c541,$c547,$c54c,$c551,$c558,$c55f,$c568
	dc.w $c571,$c579,$c57f,$c583,$9503,$8000,$8000,$8000
	dc.w $c53a,$c542,$9028,$9028,$9028,$9028,$9028,$c569
	dc.w $c572,$c57a,$c580,$c584,$c587,$8000,$8000,$8000
	dc.w $c53b,$9028,$9028,$9028,$9028,$9028,$9028,$9028
	dc.w $9028,$9028,$9028,$c585,$c588,$8000,$8000,$8000
	dc.w $9028,$9028,$9028,$9028,$9028,$9028,$9028,$9028
	dc.w $9028,$9028,$9028,$9028,$c589,$c58a,$8000,$8000
	dc.w $c53c,$9028,$9028,$9028,$9028,$9028,$9028,$9028
	dc.w $9028,$9028,$9028,$9028,$9028,$9028,$c58b,$9503
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1013,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1210,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1012

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a040:
	dc.w $100d,$5040
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$c5b6,$c5b8,$c5b9
	dc.w $c58c,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$c5a7,$c5ab,$c5ae,$c5b1,$c5b7,$8000,$8000
	dc.w $c58d,$c58f,$c593,$c595,$c597,$c599,$c59c,$c5a0
	dc.w $c5a3,$c5a8,$c5ac,$c5af,$c5b2,$8000,$8000,$8000
	dc.w $8000,$9405,$c594,$c596,$c598,$c59a,$c59d,$c5a1
	dc.w $c5a4,$c5a9,$c5ad,$c5b0,$8000,$8000,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1012,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a2b4:
	dc.w $0e0d,$5038
	dc.w $c58e,$c590,$856a,$856a,$856a,$856a,$856a
	dc.w $856a,$856a,$856a,$856a,$856a,$c5b3,$c58e
	dc.w $8000,$c591,$856a,$856a,$856a,$856a,$c59e
	dc.w $c5a2,$c5a5,$856a,$856a,$856a,$c5b4,$8000
	dc.w $8000,$c592,$856a,$856a,$856a,$c59b,$c59f
	dc.w $8000,$c5a6,$c5aa,$856a,$856a,$c5b5,$8000
	dc.w $8000,$c5bc,$854b,$856a,$856a,$c5d3,$8000
	dc.w $8000,$8000,$c5ff,$856a,$c615,$c61d,$8000
	dc.w $8000,$8000,$c5c1,$856a,$856a,$c5d4,$8000
	dc.w $8000,$c5f2,$c600,$856a,$c616,$8000,$8000
	dc.w $8000,$8000,$c5c2,$856a,$856a,$c5d5,$8000
	dc.w $8000,$c5f3,$c601,$c60d,$c617,$8000,$8000
	dc.w $8000,$8000,$9503,$c5c7,$856a,$c5d6,$c5e0
	dc.w $c5e9,$c5f4,$856a,$c60e,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$c5c8,$c5cd,$856a,$856a
	dc.w $856a,$856a,$c602,$c60f,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$c5ce,$c5d7,$c5e1
	dc.w $c5ea,$c5f5,$c603,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$c5d8,$c5e2
	dc.w $c5eb,$c5f6,$c604,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$c5d9,$c5e3
	dc.w $c5ec,$c5f7,$c605,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$c5da,$c5e4
	dc.w $c5ed,$c5f8,$c606,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$c5e5
	dc.w $c5ee,$c5f9,$8000,$8000,$8000,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1012
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1110,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a4da:
	dc.w $070d,$5018
	dc.w $c5ba,$9042,$9042,$9042,$c5cf,$c5db
	dc.w $c5e6,$c5bb,$c5bd,$9042,$c5c9,$c5d0
	dc.w $c5dc,$c5e7,$8000,$c5be,$c5c3,$c5ca
	dc.w $9453,$94d9,$c5e8,$8000,$8000,$c5c4
	dc.w $c5cb,$c5d1,$c5dd,$8000,$8000,$c5bf
	dc.w $c5c5,$9042,$9042,$c5de,$8000,$8000
	dc.w $c5c0,$c5c6,$c5cc,$c5d2,$c5df,$8000
	dc.w $8000,$c636,$c640,$c64e,$c65c,$c66b
	dc.w $8000,$8000,$c637,$c641,$c64f,$c65d
	dc.w $c66c,$8000,$8000,$8000,$c642,$c650
	dc.w $c65e,$c66d,$8000,$8000,$8000,$c643
	dc.w $c651,$c65f,$c66e,$8000,$8000,$8000
	dc.w $c644,$c652,$c660,$8000,$8000,$8000
	dc.w $8000,$c645,$c653,$c661,$8000,$8000
	dc.w $8000,$8000,$c646,$c654,$c662,$8000
	dc.w $8000,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1311,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a5f0:
	dc.w $050d,$5010
	dc.w $8000,$8000,$c607,$c610,$c618,$c5ef,$c5fa
	dc.w $c608,$82db,$c619,$c5f0,$c5fb,$c609,$c611
	dc.w $c61a,$c5f1,$c5fc,$c60a,$c612,$c61b,$8000
	dc.w $c5fd,$c60b,$c613,$c61c,$8000,$c5fe,$c60c
	dc.w $c614,$8000,$8000,$c67e,$c684,$c68b,$c692
	dc.w $8000,$c67f,$c685,$c68c,$8000,$8000,$c680
	dc.w $c686,$c68d,$8000,$8000,$c681,$c687,$c68e
	dc.w $8000,$8000,$c682,$c688,$c68f,$8000,$8000
	dc.w $c683,$c689,$c690,$8000,$8000,$8000,$c68a
	dc.w $c691,$8000,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a6b8:
	dc.w $030a,$3808
	dc.w $8000,$8000,$c628,$c61e,$c623,$c629,$c61f,$c624,$c62a
	dc.w $c620,$c625,$c62b,$c621,$c626,$c62c,$c622,$c627,$c62d
	dc.w $c693,$c695,$c69a,$8000,$c696,$c69b,$8000,$c697,$c69c
	dc.w $8000,$c698,$c69d,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a716:
	dc.w $0208,$2800
	dc.w $c62e,$c638,$c62f,$c639,$c630,$c63a
	dc.w $c631,$c63b,$c632,$c63c,$c633,$c63d
	dc.w $c634,$c63e,$c635,$c63f,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a74a:
	dc.w $0208,$2800
	dc.w $c647,$c655,$c648,$c656,$c649,$c657
	dc.w $c64a,$c658,$c64b,$c659,$c64c,$c65a
	dc.w $c64d,$c65b,$8000,$8000,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a77e:
	dc.w $0303,$f008,$8000,$c6ab,$c6b8,$c6a0,$c6ac,$c6b9
	dc.w $c6a1,$c6ad,$c6ba,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a79e:
	dc.w $0303,$f008,$8000,$8000,$c6bb,$c6a2,$c6ae,$c6bc
	dc.w $c6a3,$c6a6,$8000,$1010,$1010,$1010,$1013,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a7be:
	dc.w $0303,$f008,$8ee4,$c6af,$c6bd,$c6a4,$c6b0,$c6be
	dc.w $c6a5,$c6b1,$c6bf,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a7de:
	dc.w $0303,$f008,$c6a6,$c6b2,$c6c0,$c6a7,$c6b3,$c6c1
	dc.w $c6a8,$c6b4,$c6c2,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a7fe:
	dc.w $0303,$f008,$8000,$c6b5,$c6c3,$c6a9,$c6b6,$c6c4
	dc.w $c6aa,$c6b7,$a623,$1010,$1010,$1010,$1010,$1200

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a81e:
	dc.w $0303,$f008,$8000,$c6d0,$c6df,$c6c5,$c6d1,$c6e0
	dc.w $c6c6,$c6d2,$c6c2,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a83e:
	dc.w $0303,$f008,$8000,$c6d3,$c6e1,$c6c7,$c6d4,$c6e2
	dc.w $c6c8,$c6d5,$c6e3,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a85e:
	dc.w $0303,$f008,$c6c9,$c6d6,$c6e4,$c6ca,$c6d7,$c6e5
	dc.w $c6cb,$c6d8,$8000,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a87e:
	dc.w $0303,$f008,$8000,$c6d9,$c6e6,$c6cc,$c6da,$c6e7
	dc.w $c6cd,$c6db,$8000,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a89e:
	dc.w $0303,$f008,$8ee4,$c6dc,$c6e8,$c6ce,$c6dd,$c6e9
	dc.w $c6cf,$c6de,$8000,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09a8be:
	dc.w $1014,$5040
	dc.w $f6c7,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f6d5,$f6e3
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f6d6,$f6e4
	dc.w $f6c8,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f6d7,$f6e5
	dc.w $f6c9,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f6d8,$f6e6
	dc.w $f6ca,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f6d9,$f6e7
	dc.w $f6cb,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$f6e8
	dc.w $f6cc,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f6da,$f6e9
	dc.w $f6cd,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f6db,$f6ea
	dc.w $f6ce,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f6dc,$f6eb
	dc.w $f6cf,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f6dd,$f6ec
	dc.w $f6d0,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f6de,$f6ed
	dc.w $f6d1,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f6df,$f6ee
	dc.w $f6d2,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$f6ef
	dc.w $f6d3,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f6e0,$f6f0
	dc.w $f6d4,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f6e1,$8a54
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f6e2,$f6f1
	dc.w $f6f2,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$f6f6,$f6f9,$f6fd
	dc.w $f6f3,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$f6f7,$f6fa,$f6fe
	dc.w $f6f4,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$f6f8,$f6fb,$f6ff
	dc.w $f6f5,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f6fc,$f700
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ac82:
	dc.w $1014,$5040
	dc.w $f701,$f710,$f71e,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$f73b,$f74a,$f759
	dc.w $f702,$f711,$f71f,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$f73c,$f74b,$f75a
	dc.w $f703,$8000,$f720,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f72d,$f73d,$f74c,$f75b
	dc.w $f704,$f712,$f721,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f72e,$f73e,$f74d,$f75c
	dc.w $f705,$f713,$f722,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f72f,$f73f,$f74e,$f75d
	dc.w $f706,$f714,$f723,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f730,$f740,$f74f,$f75e
	dc.w $f707,$f715,$f724,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f731,$f741,$f750,$f75f
	dc.w $f708,$f716,$f725,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f732,$f742,$f751,$f760
	dc.w $f709,$f717,$f726,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f733,$f743,$f752,$f761
	dc.w $f70a,$f718,$f727,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f734,$f744,$f753,$905b
	dc.w $f70b,$f719,$f728,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f735,$f745,$f754,$905b
	dc.w $f70c,$f71a,$f729,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f736,$f746,$f755,$f762
	dc.w $f70d,$f71b,$f72a,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f737,$f747,$f756,$8000
	dc.w $f70e,$f71c,$f72b,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f738,$905b,$f757,$f763
	dc.w $f70f,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f739,$f748,$f758,$f764
	dc.w $8000,$f71d,$f72c,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f73a,$f749,$8000,$8000
	dc.w $f765,$f769,$f76d,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f770,$f773,$f777,$f77b
	dc.w $f766,$f76a,$f76e,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f771,$f774,$f778,$f77c
	dc.w $f767,$f76b,$f76f,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f772,$f775,$f779,$f77d
	dc.w $f768,$f76c,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$f776,$f77a,$f77e
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09b046:
	dc.w $1014,$5040
	dc.w $f77f,$f78d,$f79a,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$f7e2,$f7ef,$f7fd
	dc.w $f780,$8a54,$f79b,$f7a8,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f7d3,$f7e3,$f7f0,$f7fe
	dc.w $f781,$f78e,$f79c,$f7a9,$f7b6,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f7c5,$f7d4,$f7e4,$f7f1,$f7ff
	dc.w $f782,$f78f,$f79d,$f7aa,$f7b7,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f7c6,$f7d5,$f7e5,$f7f2,$f800
	dc.w $f783,$f790,$f79e,$f7ab,$f7b8,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f7c7,$f7d6,$f7e6,$f7f3,$f801
	dc.w $f784,$f791,$f79f,$f7ac,$f7b9,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f7c8,$f7d7,$f7e7,$f7f4,$f802
	dc.w $f785,$f792,$f7a0,$f7ad,$f7ba,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f7c9,$f7d8,$f7e8,$f7f5,$f803
	dc.w $8000,$f793,$f7a1,$f7ae,$f7bb,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f7ca,$f7d9,$f7e9,$9068,$f804
	dc.w $f786,$f794,$f7a2,$f7af,$f7bc,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f7cb,$f7da,$f7ea,$f7f6,$f805
	dc.w $f787,$8a54,$f7a3,$f7b0,$f7bd,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f7cc,$f7db,$9068,$f7f7,$f806
	dc.w $f788,$8a54,$f7a4,$f7b1,$f7be,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f7cd,$f7dc,$9068,$f7f8,$f807
	dc.w $f789,$f795,$f7a5,$f7b2,$f7bf,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f7ce,$f7dd,$f7eb,$f7f9,$f808
	dc.w $f78a,$f796,$f7a6,$f7b3,$f7c0,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f7cf,$f7de,$f7ec,$f7fa,$8000
	dc.w $f78b,$f797,$f78c,$f798,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f7d0,$f7df,$f7ed,$f7fb,$f809
	dc.w $f78c,$f798,$8000,$f7b4,$f7c1,$8000,$8000,$8000
	dc.w $8000,$8000,$f7c3,$f7d1,$f7e0,$8000,$f7fc,$f80a
	dc.w $8000,$f799,$f7a7,$f7b5,$f7c2,$8000,$8000,$8000
	dc.w $8000,$8000,$f7c4,$f7d2,$f7e1,$f7ee,$8000,$8000
	dc.w $f80b,$f80f,$f813,$f816,$f818,$8000,$8000,$8000
	dc.w $8000,$8000,$f819,$f81a,$f81c,$f81f,$f822,$f826
	dc.w $f80c,$f810,$f814,$f817,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f81b,$f81d,$f820,$f823,$f827
	dc.w $f80d,$f811,$f815,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f81e,$f821,$f824,$f828
	dc.w $f80e,$f812,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$bd24,$f825,$f829
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09b40a:
	dc.w $1014,$5040
	dc.w $f82a,$f839,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$f8aa,$f8b9,$8000
	dc.w $f82b,$f83a,$f846,$f855,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f89c,$f8ab,$f8ba,$8000
	dc.w $f82b,$f83b,$f847,$f856,$f864,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f88e,$f89d,$f8ac,$f8bb,$8000
	dc.w $f82c,$f83c,$f848,$f857,$f865,$f872,$8000,$8000
	dc.w $8000,$8000,$f881,$f88f,$f89e,$f8ad,$f8bc,$8000
	dc.w $f82d,$f83d,$f849,$f858,$f866,$f873,$8000,$8000
	dc.w $8000,$8000,$f882,$f890,$f89f,$f8ae,$f8bd,$8000
	dc.w $f82e,$f83e,$f84a,$f859,$f867,$f874,$8000,$8000
	dc.w $8000,$8000,$f883,$f891,$f8a0,$f8af,$f8be,$f8c8
	dc.w $f82f,$82db,$f84b,$f85a,$f868,$f875,$8000,$8000
	dc.w $8000,$8000,$f884,$f892,$f8a1,$f8b0,$f8bf,$f8c9
	dc.w $f830,$82db,$f84c,$f85b,$f869,$f876,$8000,$8000
	dc.w $8000,$8000,$f885,$f893,$f8a2,$f8b1,$f8c0,$8000
	dc.w $f831,$f83f,$f84d,$f85c,$f86a,$f877,$8000,$8000
	dc.w $8000,$8000,$f886,$f894,$f8a3,$f8b2,$f8c1,$8000
	dc.w $f832,$f840,$f84e,$f85d,$f86b,$f878,$8000,$8000
	dc.w $8000,$8000,$f887,$f895,$f8a4,$f8b3,$f8c2,$8000
	dc.w $f833,$f841,$f84f,$f85e,$f86c,$f879,$8000,$8000
	dc.w $8000,$8000,$f888,$f896,$f8a5,$f8b4,$f8c3,$8000
	dc.w $f834,$f842,$f850,$f85f,$f86d,$f87a,$8000,$8000
	dc.w $8000,$8000,$f889,$f897,$f8a6,$f8b5,$f8c4,$8000
	dc.w $f835,$f843,$f851,$f860,$f86e,$f87b,$8000,$8000
	dc.w $8000,$8000,$f88a,$f898,$f8a7,$f8b6,$f8c5,$8000
	dc.w $f836,$82db,$f852,$f861,$f86f,$f87c,$8000,$8000
	dc.w $8000,$8000,$f88b,$f899,$f8a8,$f8b7,$f8c6,$8000
	dc.w $f837,$f844,$f853,$f862,$f870,$f87d,$8000,$8000
	dc.w $8000,$f87f,$f88c,$f89a,$9503,$8000,$8000,$8000
	dc.w $f838,$f845,$f854,$f863,$f871,$f87e,$8000,$8000
	dc.w $8000,$f880,$f88d,$f89b,$f8a9,$f8b8,$f8c7,$8000
	dc.w $f8ca,$f8ce,$f8d2,$f8d5,$f8d7,$f8d8,$8000,$8000
	dc.w $8000,$f8d9,$f8da,$f8db,$f8dd,$f8df,$f8e2,$8000
	dc.w $f8cb,$f8cf,$f8d3,$f8d6,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f8dc,$f8de,$f8e0,$f8e3,$8000
	dc.w $f8cc,$f8d0,$f8d4,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$f8e1,$f8e4,$8000
	dc.w $f8cd,$f8d1,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f8e5,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1210,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09b7ce:
	dc.w $0d12,$4838
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$f959,$8000,$8000,$f8e7,$f8f8,$f906,$8000
	dc.w $8000,$8000,$8000,$8000,$f93d,$f94b,$f95a,$8000,$8000
	dc.w $f8e8,$f8f9,$f907,$f914,$f921,$8000,$8000,$f930,$f93e
	dc.w $f94c,$e77f,$8000,$8000,$f8e9,$f8fa,$f908,$f915,$f922
	dc.w $8000,$8000,$f931,$f93f,$f94d,$f95b,$8000,$8000,$f8ea
	dc.w $f8fb,$f909,$f916,$f923,$8000,$8000,$f932,$f940,$f94e
	dc.w $f95c,$8000,$8000,$f8eb,$f8fc,$f90a,$f917,$f924,$8000
	dc.w $8000,$f933,$f941,$f94f,$f95d,$f967,$8000,$f8ec,$f8fd
	dc.w $f90b,$f918,$f925,$8000,$8000,$f934,$f942,$f950,$f95e
	dc.w $f968,$8000,$f8ed,$f8fe,$f90c,$f919,$f926,$8000,$8000
	dc.w $f935,$f943,$f951,$f95f,$8000,$8000,$f8ee,$f8ff,$f90d
	dc.w $f91a,$f927,$8000,$8000,$f936,$f944,$f952,$f960,$8000
	dc.w $8000,$f8ef,$f900,$f90e,$f91b,$f928,$8000,$8000,$f937
	dc.w $f945,$f953,$f961,$8000,$8000,$f8f0,$f901,$f90f,$f91c
	dc.w $f929,$8000,$8000,$f938,$f946,$f954,$f962,$8000,$8000
	dc.w $f8f1,$f902,$f910,$f91d,$f92a,$8000,$8000,$f939,$f947
	dc.w $f955,$f963,$8000,$8000,$f8f5,$f903,$f911,$f91e,$f92b
	dc.w $8000,$8000,$f93a,$f948,$f956,$f964,$8000,$8000,$f8f6
	dc.w $f904,$f912,$f91f,$f92c,$8000,$f92e,$f93b,$f949,$f957
	dc.w $f965,$8000,$f8e6,$f8f7,$f905,$f913,$f920,$f92d,$8000
	dc.w $f92f,$f93c,$f94a,$f958,$f966,$8000,$f969,$f96c,$f96f
	dc.w $f971,$f973,$8000,$8000,$8000,$f974,$f975,$f976,$f977
	dc.w $8000,$f96a,$f96d,$f970,$f972,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f978,$8000,$f96b,$f96e,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1013,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ba90:
	dc.w $0910,$4028
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$f9c7,$f9d4
	dc.w $8000,$f97b,$f988,$f995,$f9a2,$bd24,$f9bb,$f9c8,$f9d5
	dc.w $8000,$f97c,$f989,$f996,$f9a3,$f9af,$f9bc,$f9c9,$f9d6
	dc.w $8000,$f97d,$f98a,$f997,$f9a4,$f9b0,$f9bd,$f9ca,$f9d7
	dc.w $8000,$f97e,$f98b,$f998,$f9a5,$f9b1,$f9be,$f9cb,$f9d8
	dc.w $8000,$f97f,$f98c,$f999,$f9a6,$f9b2,$f9bf,$f9cc,$f9d9
	dc.w $8000,$f980,$f98d,$f99a,$f9a7,$f9b3,$f9c0,$f9cd,$f9da
	dc.w $8000,$f981,$f98e,$f99b,$f9a8,$f9b4,$f9c1,$f9ce,$f9db
	dc.w $8000,$f982,$f98f,$f99c,$f9a9,$f9b5,$f9c2,$f9cf,$f9dc
	dc.w $8000,$f983,$f990,$f99d,$f9aa,$f9b6,$f9c3,$f9d0,$f9dd
	dc.w $8000,$f984,$f991,$f99e,$f9ab,$f9b7,$f9c4,$f9d1,$f9de
	dc.w $8000,$f985,$f992,$f99f,$f9ac,$f9b8,$8000,$8000,$8000
	dc.w $f979,$f986,$f993,$f9a0,$f9ad,$f9b9,$f9c5,$f9d2,$f9df
	dc.w $f97a,$f987,$f994,$f9a1,$f9ae,$f9ba,$f9c6,$f9d3,$f9e0
	dc.w $f9e1,$f9e3,$f9e5,$c4db,$8000,$8000,$f9e6,$f9e7,$f9e8
	dc.w $f9e2,$f9e4,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1110,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1013,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09bc44:
	dc.w $070e,$3820
	dc.w $8000,$f9eb,$f9f8,$fa05,$fa12,$fa1f,$fa2c
	dc.w $8000,$f9ec,$f9f9,$fa06,$fa13,$fa20,$fa2d
	dc.w $8000,$f9ed,$f9fa,$fa07,$fa14,$fa21,$fa2e
	dc.w $8000,$f9ee,$f9fb,$fa08,$fa15,$fa22,$fa2f
	dc.w $8000,$f9ef,$f9fc,$fa09,$fa16,$fa23,$fa30
	dc.w $8000,$f9f0,$f9fd,$fa0a,$fa17,$fa24,$fa31
	dc.w $8000,$f9f1,$f9fe,$fa0b,$fa18,$fa25,$fa32
	dc.w $8000,$f9f2,$f9ff,$fa0c,$fa19,$fa26,$fa33
	dc.w $8000,$f9f3,$fa00,$fa0d,$fa1a,$fa27,$fa34
	dc.w $8000,$f9f4,$fa01,$fa0e,$fa1b,$fa28,$fa35
	dc.w $8000,$f9f5,$fa02,$fa0f,$fa1c,$fa29,$fa36
	dc.w $f9e9,$f9f6,$fa03,$fa10,$fa1d,$fa2a,$fa37
	dc.w $f9ea,$f9f7,$fa04,$fa11,$fa1e,$fa2b,$fa38
	dc.w $fa39,$fa3a,$fa3b,$8000,$8000,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09bd6e:
	dc.w $050e,$3818
	dc.w $8000,$8000,$fa4a,$fa57,$fa64,$8000,$fa3e
	dc.w $fa4b,$fa58,$fa65,$8000,$fa3f,$fa4c,$fa59
	dc.w $fa66,$8000,$fa40,$fa4d,$fa5a,$fa67,$8000
	dc.w $fa41,$fa4e,$fa5b,$fa68,$8000,$fa42,$fa4f
	dc.w $fa5c,$fa69,$8000,$fa43,$fa50,$fa5d,$fa6a
	dc.w $8000,$fa44,$fa51,$fa5e,$fa6b,$8000,$fa45
	dc.w $fa52,$fa5f,$fa6c,$8000,$fa46,$fa53,$fa60
	dc.w $fa6d,$8000,$fa47,$fa54,$fa61,$fa6e,$fa3c
	dc.w $fa48,$fa55,$fa62,$fa6f,$fa3d,$fa49,$fa56
	dc.w $fa63,$fa70,$fa9f,$faab,$8000,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09be44:
	dc.w $040d,$3810
	dc.w $8000,$8000,$fa86,$fa92,$fa71,$fa7b
	dc.w $fa87,$fa93,$fa72,$fa7c,$fa88,$fa94
	dc.w $fa73,$fa7d,$fa89,$fa95,$fa74,$fa7e
	dc.w $fa8a,$fa96,$fa71,$fa7f,$fa8b,$fa97
	dc.w $fa75,$fa80,$fa8c,$fa98,$fa76,$fa81
	dc.w $fa8d,$fa99,$fa77,$fa82,$fa8e,$fa9a
	dc.w $fa78,$fa83,$fa8f,$fa9b,$fa79,$fa84
	dc.w $fa90,$fa9c,$fa7a,$fa85,$fa91,$fa9d
	dc.w $fac2,$fac3,$fac4,$fac5,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1110,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09bee4:
	dc.w $0214,$5008
	dc.w $c694,$c699,$c694,$c699,$c694,$c699
	dc.w $c694,$c699,$c694,$c699,$c694,$c699
	dc.w $c694,$c699,$c694,$c699,$c694,$c699
	dc.w $c694,$c699,$c694,$c699,$c694,$c699
	dc.w $c694,$c699,$c694,$c699,$c694,$c699
	dc.w $c694,$c699,$c694,$c699,$c694,$c699
	dc.w $c694,$c699,$c694,$c699,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09bf60:
	dc.w $0114,$5004,$c69e,$c69e,$c69e,$c69e,$c69e,$c69e
	dc.w $c69e,$c69e,$c69e,$c69e,$c69e,$c69e,$c69e,$c69e
	dc.w $c69e,$c69e,$c69e,$c69e,$c69e,$c69e,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09bfa0:
	dc.w $0114,$5004,$c69f,$c69f,$c69f,$c69f,$c69f,$c69f
	dc.w $c69f,$c69f,$c69f,$c69f,$c69f,$c69f,$c69f,$c69f
	dc.w $c69f,$c69f,$c69f,$c69f,$c69f,$c69f,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09bfe0:
	dc.w $030e,$380c
	dc.w $18b5,$18bf,$18c9,$18b6,$18c0,$18ca,$1916
	dc.w $1917,$189a,$1880,$188d,$189b,$1881,$188e
	dc.w $189c,$1882,$188f,$189d,$1883,$1890,$189e
	dc.w $1884,$1891,$189a,$1880,$1892,$189f,$1885
	dc.w $1893,$18a0,$1886,$1894,$18a1,$18bc,$18c6
	dc.w $18cf,$18bd,$18c7,$18d0,$18be,$18c8,$18d1
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c062:
	dc.w $0203,$0c08
	dc.w $167e,$1687,$167f
	dc.w $1688,$1680,$1689
	dc.w $2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c078:
	dc.w $0203,$0c08
	dc.w $1681,$168a,$1682
	dc.w $168b,$1680,$1689
	dc.w $2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c08e:
	dc.w $0307,$300c
	dc.w $16a0,$16ab,$16b6,$16a1,$16ac,$16b7,$16a2,$16ad
	dc.w $16b8,$16a3,$16ae,$16b9,$16a4,$16af,$16ba,$16a5
	dc.w $16b0,$16bb,$16a6,$16b1,$16bc,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c0d2:
	dc.w $0307,$300c
	dc.w $16c1,$16cc,$16d7,$16c2,$16cd,$16d8,$16c3,$16ce
	dc.w $16d9,$16c4,$16cf,$16da,$16c5,$16d0,$16db,$16c6
	dc.w $16d1,$16dc,$16c7,$16d2,$16dd,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c116:
	dc.w $0304,$f00c
	dc.w $16a7,$16b2,$16bd,$16a8,$16b3,$16be
	dc.w $16a9,$16b4,$16bf,$16aa,$16b5,$16c0
	dc.w $2020,$2020,$2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c13e:
	dc.w $0304,$f00c
	dc.w $16c8,$16d3,$16de,$16c9,$16d4,$16df
	dc.w $16ca,$16d5,$16e0,$16cb,$16d6,$16e1
	dc.w $2020,$2020,$2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c166:
	dc.w $0304,$f00c
	dc.w $16e9,$16f4,$16ff,$16ea,$16f5,$1700
	dc.w $16eb,$16f6,$1701,$16ec,$16f7,$1702
	dc.w $2020,$2020,$2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c18e:
	dc.w $0510,$4014
	dc.w $8000,$8000,$c7bf,$8000,$8000,$c7ab
	dc.w $c7b1,$c7c0,$c7cf,$c7dd,$c7ac,$c7b2
	dc.w $c7c1,$c7d0,$8000,$8000,$c7b3,$c7c2
	dc.w $c7d1,$8000,$8000,$c7b4,$c7c3,$c7d2
	dc.w $c7de,$c7ad,$c7b5,$c7c4,$c7d3,$8000
	dc.w $8000,$c7b6,$c7c5,$c7d4,$8000,$8000
	dc.w $c7b7,$c7c6,$c7d5,$c7df,$c7ae,$c7b8
	dc.w $c7c7,$c7d6,$8000,$8000,$c7b9,$c7c8
	dc.w $c7d7,$8000,$8000,$c7ba,$c7c9,$c7d8
	dc.w $c7e0,$c7af,$c7bb,$c7ca,$c7d9,$c7e1
	dc.w $8319,$c7bc,$c7cb,$c7da,$8000,$8000
	dc.w $c7bd,$c7cc,$c7db,$c7e2,$c7b0,$c7be
	dc.w $c7cd,$8000,$c7e3,$8000,$9386,$c7ce
	dc.w $c7dc,$8000,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1210,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1310,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c282:
	dc.w $0510,$4014
	dc.w $8000,$8000,$c7f8,$8000,$8000,$8000
	dc.w $c7e9,$c7f9,$c808,$c816,$c7e4,$c7ea
	dc.w $c7fa,$c809,$8000,$8000,$c7eb,$c7fb
	dc.w $c80a,$8000,$8000,$c7ec,$c7fc,$c80b
	dc.w $c817,$c7e5,$c7ed,$c7fd,$c80c,$8000
	dc.w $8000,$c7ee,$c7fe,$c80d,$8000,$8000
	dc.w $c7ef,$c7ff,$c80e,$8000,$c7e6,$c7f0
	dc.w $c800,$c80f,$8000,$8000,$c7f1,$c801
	dc.w $c810,$8000,$8000,$c7f2,$c802,$c811
	dc.w $c818,$c7e7,$c7f3,$c803,$c812,$8000
	dc.w $8000,$c7f4,$c804,$c813,$8000,$8000
	dc.w $c7f5,$c805,$c814,$c819,$c7e8,$c7f6
	dc.w $c806,$8000,$8000,$8000,$c7f7,$c807
	dc.w $c815,$8000,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c376:
	dc.w $040f,$3c10
	dc.w $8000,$8000,$c831,$c840,$c81a,$c823
	dc.w $c832,$c841,$c81b,$c824,$c833,$8000
	dc.w $8000,$c825,$c834,$c842,$c81c,$c826
	dc.w $c835,$c843,$c81d,$c827,$c836,$c844
	dc.w $8000,$c828,$c837,$c845,$c81e,$c829
	dc.w $c838,$c846,$c81f,$c82a,$c839,$8000
	dc.w $8000,$c82b,$c83a,$c847,$c820,$c82c
	dc.w $c83b,$c848,$c821,$c82d,$c83c,$c849
	dc.w $8000,$c82e,$c83d,$c84a,$c822,$c82f
	dc.w $c83e,$c84b,$8000,$c830,$c83f,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010


;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c42e:
	dc.w $0310,$400c
	dc.w $8000,$8000,$8000,$8000,$c859,$c868
	dc.w $c84c,$c85a,$c869,$c84d,$c85b,$c86a
	dc.w $c84e,$c85c,$c86b,$c84f,$c85d,$c86c
	dc.w $c850,$c85e,$c86d,$c851,$c85f,$c86e
	dc.w $c852,$c860,$c86f,$c853,$c861,$c870
	dc.w $c854,$c862,$c871,$c855,$c863,$c872
	dc.w $c856,$c864,$c873,$c857,$c865,$c874
	dc.w $c858,$c866,$c875,$8000,$c867,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c4c2:
	dc.w $030e,$380c
	dc.w $c876,$c883,$c891,$c877,$c884,$c892,$c878
	dc.w $c885,$c893,$c879,$c886,$c894,$c87a,$c887
	dc.w $c895,$c87b,$c888,$c896,$c87c,$c889,$c897
	dc.w $c87d,$c88a,$8244,$c87e,$c88b,$c898,$8321
	dc.w $c88c,$c899,$c87f,$c88d,$c89a,$c880,$c88e
	dc.w $c89b,$c881,$c88f,$c89c,$c882,$c890,$c89d
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1013
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c544:
	dc.w $0409,$2410
	dc.w $c8ba,$c8c3,$8000,$8000,$c8bb,$c8c4
	dc.w $8000,$8000,$c8bc,$c8c5,$c8cc,$c8d1
	dc.w $c8bd,$c8c6,$c8cd,$c8d2,$c8be,$c8c7
	dc.w $c8ce,$c8d3,$c8bf,$c8c8,$c8cf,$c8d4
	dc.w $c8c0,$c8c9,$c8d0,$c8d5,$c8c1,$c8ca
	dc.w $8000,$8000,$c8c2,$c8cb,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c5b4:
	dc.w $0409,$2410
	dc.w $c8d6,$c8df,$8000,$8000,$c8d7,$c8e0
	dc.w $8000,$8000,$c8d8,$c8e1,$c8e8,$c8ec
	dc.w $c8d9,$c8e2,$c8e9,$c8ed,$c8da,$c8e3
	dc.w $c8ce,$c8ee,$c8db,$c8e4,$c8ea,$c8ef
	dc.w $c8dc,$c8e5,$c8eb,$c8f0,$c8dd,$c8e6
	dc.w $8000,$8000,$c8de,$c8e7,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c624:
	dc.w $0409,$2410
	dc.w $c8d6,$c8f7,$8000,$8000,$c8f1,$c8f8
	dc.w $8000,$8000,$c8f2,$c8f9,$c8e8,$c904
	dc.w $c8d9,$c8fa,$c900,$c905,$c8f3,$c8fb
	dc.w $c901,$c906,$c8db,$c8fc,$c902,$c907
	dc.w $c8f4,$c8fd,$c903,$c908,$c8f5,$c8fe
	dc.w $8000,$8000,$c8f6,$c8ff,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c694:
	dc.w $030e,$380c
	dc.w $187d,$188a,$1898,$187e,$188b,$1899,$187f
	dc.w $188c,$189a,$1880,$188d,$189b,$1881,$188e
	dc.w $189c,$1882,$188f,$189d,$1883,$1890,$189e
	dc.w $1884,$1891,$189a,$1880,$1892,$189f,$1885
	dc.w $1893,$18a0,$1886,$1894,$18a1,$1887,$1895
	dc.w $18a2,$1888,$1896,$18a3,$1889,$1897,$1525
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2021

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c716:
	dc.w $030e,$380c
	dc.w $18a4,$18aa,$18b0,$18a5,$18ab,$18b1,$18a6
	dc.w $18ac,$189a,$1880,$188d,$189b,$1881,$188e
	dc.w $189c,$1882,$188f,$189d,$1883,$1890,$189e
	dc.w $1884,$1891,$189a,$1880,$1892,$189f,$1885
	dc.w $1893,$18a0,$1886,$1894,$18a1,$18a7,$18ad
	dc.w $18b2,$18a8,$18ae,$18b3,$18a9,$18af,$18b4
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c798:
	dc.w $030e,$380c
	dc.w $18b5,$18bf,$18c9,$18b6,$18c0,$18ca,$18b7
	dc.w $18c1,$18cb,$18b8,$18c2,$18cc,$18b9,$188e
	dc.w $189c,$1882,$188f,$189d,$1883,$1890,$189e
	dc.w $1884,$1891,$189a,$1880,$18c3,$189f,$18ba
	dc.w $18c4,$18cd,$18bb,$18c5,$18ce,$18bc,$18c6
	dc.w $18cf,$18bd,$18c7,$18d0,$18be,$18c8,$18d1
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c81a:
	dc.w $030e,$380c
	dc.w $187d,$188a,$1898,$187e,$188b,$1899,$18d2
	dc.w $18d9,$18e1,$18d3,$18da,$18e2,$18d4,$18db
	dc.w $18e3,$18d5,$18dc,$18e4,$1883,$1890,$189e
	dc.w $18d6,$18dd,$18cb,$18b8,$18de,$18e5,$18d7
	dc.w $18df,$18e6,$18d8,$18e0,$18e7,$1887,$1895
	dc.w $18a2,$1888,$1896,$18a3,$1889,$1897,$1525
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2021

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c89c:
	dc.w $030e,$380c
	dc.w $187d,$188a,$1898,$187e,$188b,$1899,$187f
	dc.w $188c,$189a,$1880,$18ed,$18f3,$18e8,$18ee
	dc.w $18f4,$18e9,$18ef,$18f5,$18ea,$18f0,$18f6
	dc.w $18eb,$18f1,$18e1,$18d3,$18f2,$18f7,$18ec
	dc.w $1893,$18a0,$1886,$1894,$18a1,$1887,$1895
	dc.w $18a2,$1888,$1896,$18a3,$1889,$1897,$1525
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2021

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c91e:
	dc.w $030e,$380c
	dc.w $187d,$188a,$1898,$187e,$188b,$1899,$187f
	dc.w $188c,$189a,$1880,$18fc,$1901,$18f8,$18db
	dc.w $18e3,$18d5,$18fd,$1902,$18f9,$18fe,$1903
	dc.w $18fa,$18ff,$18cb,$18b8,$1900,$18e5,$18fb
	dc.w $1893,$18a0,$1886,$1894,$18a1,$1887,$1895
	dc.w $18a2,$1888,$1896,$18a3,$1889,$1897,$1525
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2021

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09c9a0:
	dc.w $030e,$380c
	dc.w $187d,$188a,$1898,$187e,$188b,$1899,$1904
	dc.w $1908,$18cb,$18b8,$1909,$190d,$1905,$18ee
	dc.w $18f4,$18e9,$190a,$190e,$1883,$1890,$189e
	dc.w $1906,$190b,$18e1,$18d3,$190c,$18f7,$1907
	dc.w $18c4,$18cd,$18bb,$18c5,$18ce,$1887,$1895
	dc.w $18a2,$1888,$1896,$18a3,$1889,$1897,$1525
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2021

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ca22:
	dc.w $030e,$380c
	dc.w $18a4,$18aa,$18b0,$18a5,$18ab,$18b1,$190f
	dc.w $1912,$18e1,$18d3,$1913,$1915,$1910,$188e
	dc.w $189c,$1882,$188f,$189d,$1883,$1890,$189e
	dc.w $1884,$1891,$189a,$1880,$1914,$189f,$1911
	dc.w $18df,$18e6,$18d8,$18e0,$18e7,$18a7,$18ad
	dc.w $18b2,$18a8,$18ae,$18b3,$18a9,$18af,$18b4
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09caa4:
	dc.w $1009,$5040
	dc.w $8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$c9e8
	dc.w $c9c5,$c9c9,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $8a0d,$c9dc,$c9df,$c9e3,$c9e4,$c9e5,$c9e6,$c9e9
	dc.w $8000,$c9ca,$c9cc,$c9ce,$c9d1,$c9d4,$c9d6,$c9d8
	dc.w $c9da,$c9dd,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09cc58:
	dc.w $1014,$5040
	dc.w $c9c6,$c9c6,$c9cd,$c9cf,$c9d2,$c9d2,$c9d2,$c9d2
	dc.w $c9d2,$c9d2,$c9e0,$c9c6,$c9c6,$c9c6,$c9c6,$c9ea
	dc.w $c9c6,$c9c6,$c9c6,$c9d0,$c9d2,$c9d2,$c9d2,$c9d2
	dc.w $c9d2,$c9d2,$c9e1,$c9c6,$c9c6,$c9c6,$c9c6,$c9eb
	dc.w $c9c6,$c9c6,$c9c6,$c9c6,$c9d3,$c9d5,$c9d7,$c9d9
	dc.w $c9db,$c9de,$c9e2,$c9c6,$c9c6,$c9c6,$c9c6,$c9ec
	dc.w $c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6
	dc.w $c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9ed
	dc.w $c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6
	dc.w $c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9ee
	dc.w $c9c7,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6
	dc.w $c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9ef
	dc.w $c9c8,$c9cb,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6
	dc.w $c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$c9e7,$c9f0
	dc.w $c9f1,$c9f2,$c9f4,$c9c6,$c9c6,$c9c6,$c9c6,$c9c6
	dc.w $c9c6,$c9c6,$c9c6,$c9c6,$c9c6,$ca0d,$ca13,$ca18
	dc.w $8000,$c9f3,$c9f5,$c9f6,$c9f7,$c9f9,$c9fb,$c9c6
	dc.w $c9fe,$ca00,$ca03,$ca07,$ca0a,$ca0e,$ca14,$ca19
	dc.w $8000,$8000,$8000,$8000,$c9f8,$c9fa,$c9fc,$c9fd
	dc.w $c9ff,$ca01,$ca04,$8000,$8000,$ca0f,$8a0d,$8a0d
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$ca10,$8a0d,$8a0d
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$ca11,$ca15,$8a0d
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8c2b,$ca1a
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$ca1b
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$ca16,$ca1c
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$ca0b,$ca12,$ca17,$8a0d
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$ca08,$ca0c,$8a0d,$8a0d,$8a0d
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$ca05,$ca09,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$ca02,$ca06,$8a0d,$8a0d,$8a0d,$8a0d,$8a0d
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09d01c:
	dc.w $1014,$5040
	dc.w $8000,$8000,$ca2c,$ca34,$c9d2,$c9d2,$c9d2,$c9d2
	dc.w $c9d2,$ca58,$ca60,$ca66,$ca70,$8000,$8000,$8000
	dc.w $8000,$ca23,$ca2d,$c9d2,$c9d2,$c9d2,$c9d2,$c9d2
	dc.w $c9d2,$c9d2,$c9d2,$ca67,$ca71,$8000,$8000,$8000
	dc.w $8000,$ca24,$c9d2,$c9d2,$ca3c,$ca40,$ca47,$ca4c
	dc.w $ca52,$ca59,$c9d2,$c9d2,$ca72,$ca7e,$8000,$8000
	dc.w $ca1d,$ca25,$c9d2,$ca35,$ca3d,$ca41,$ca48,$ca4d
	dc.w $ca53,$ca5a,$ca61,$ca68,$c9d2,$ca7f,$8000,$8000
	dc.w $ca1e,$ca26,$ca2e,$ca36,$ca3e,$ca42,$ca49,$ca4e
	dc.w $ca54,$ca5b,$ca62,$ca69,$ca73,$c9d2,$ca89,$8000
	dc.w $8000,$ca27,$ca2f,$ca37,$ca37,$ca43,$c9d2,$c9d2
	dc.w $c9d2,$ca5c,$ca37,$ca37,$ca74,$c9d2,$ca8a,$8000
	dc.w $8000,$ca28,$ca30,$ca37,$ca37,$ca44,$ca4a,$ca4f
	dc.w $ca55,$ca5d,$ca37,$ca37,$ca75,$ca80,$ca8b,$8000
	dc.w $8000,$8000,$ca31,$ca38,$ca37,$ca37,$ca37,$ca37
	dc.w $ca37,$ca37,$ca37,$ca37,$ca76,$ca81,$8000,$8000
	dc.w $8000,$8000,$8000,$ca39,$ca3f,$ca45,$ca37,$ca37
	dc.w $ca37,$ca37,$ca37,$ca6a,$ca77,$ca82,$ca8c,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$ca46,$ca4b,$ca50
	dc.w $ca56,$ca5e,$ca63,$ca6b,$ca78,$ca83,$ca8d,$ca91
	dc.w $ca1f,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$ca6c,$ca79,$ca84,$c9d2,$ca92
	dc.w $ca20,$ca29,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$ca7a,$ca85,$ca8e,$ca93
	dc.w $9086,$ca2a,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$ca6d,$ca7b,$ca86,$ca8f,$ca94
	dc.w $9086,$ca2b,$ca32,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$ca64,$ca6e,$9086,$ca87,$ca90,$ca95
	dc.w $ca21,$9086,$ca33,$ca3a,$8000,$8000,$8000,$8000
	dc.w $a34b,$ca5f,$ca65,$9086,$ca7c,$ca88,$ca37,$ca96
	dc.w $ca22,$9086,$9086,$ca3b,$8000,$8000,$8000,$ca51
	dc.w $ca57,$9086,$9086,$ca6f,$ca7d,$ca37,$ca37,$ca97
	dc.w $ca98,$ca9e,$9086,$caaf,$caba,$8000,$cacd,$cad8
	dc.w $9086,$caef,$cafa,$ca37,$ca37,$ca37,$ca37,$cb25
	dc.w $ca99,$ca9f,$9086,$9086,$cabb,$cac3,$cace,$9086
	dc.w $cae3,$caf0,$ca37,$ca37,$ca37,$ca37,$cb1f,$cb26
	dc.w $c9d2,$caa0,$caa7,$9086,$9086,$9086,$9086,$cad9
	dc.w $cae4,$ca37,$ca37,$ca37,$ca37,$cb18,$cb20,$c9d2
	dc.w $c9d2,$caa1,$caa8,$cab0,$9086,$9086,$cacf,$ca7d
	dc.w $ca37,$ca37,$ca37,$ca37,$cb10,$cb19,$c9d2,$c9d2
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09d3e0:
	dc.w $1010,$3040
	dc.w $8000,$8000,$8000,$8000,$8000,$cac4,$cad0,$cada
	dc.w $cae5,$caf1,$cafb,$cb06,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$cab1,$cabc,$cac5,$cad1,$cadb
	dc.w $cae6,$cae6,$cafc,$cb07,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$cab2,$caa4,$cac6,$cad2,$cadc
	dc.w $cae7,$caf2,$cafd,$cb08,$cb11,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$cab3,$cabd,$cac7,$cad3,$cadd
	dc.w $cae8,$caf3,$cafe,$cb09,$cb12,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$cabe,$cac8,$cad4,$cade
	dc.w $cae9,$caf4,$caae,$cb0a,$cb13,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$cac9,$cad5,$cadf
	dc.w $caea,$caf5,$caff,$cb0b,$cb14,$cb1a,$8000,$8000
	dc.w $8000,$caa2,$caa9,$cab4,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$cb00,$cb0c,$cb15,$cb1b,$8000,$8000
	dc.w $ca9a,$caa3,$caaa,$cab5,$cabf,$8000,$8000,$8000
	dc.w $8000,$caf6,$cb01,$cb0d,$cb16,$cb1c,$8000,$8000
	dc.w $ca9b,$caa4,$caab,$cab6,$cac0,$caca,$8000,$cae0
	dc.w $caeb,$caf7,$cb02,$cb0e,$caae,$cb1d,$cb21,$8000
	dc.w $ca9c,$caa4,$caac,$cab7,$9038,$cacb,$cad6,$cae1
	dc.w $caec,$caf8,$cb03,$caae,$cb17,$cb1e,$cb22,$8000
	dc.w $ca9d,$caa5,$caad,$cab8,$cac1,$9038,$9038,$cae2
	dc.w $caed,$caae,$cb04,$cb0f,$caa4,$caa4,$cb23,$8000
	dc.w $9038,$caa6,$caae,$cab9,$cac2,$cacc,$cad7,$caae
	dc.w $caee,$caf9,$cb05,$caa4,$caa4,$caa4,$cb24,$8000
	dc.w $9038,$cb2e,$cb35,$caae,$caae,$caae,$caae,$caae
	dc.w $cb5b,$cb63,$cb6d,$cb78,$cb82,$cb89,$8000,$8000
	dc.w $cb27,$9038,$cb36,$cb3e,$caae,$caae,$caae,$caae
	dc.w $caae,$caae,$caae,$cb79,$cb83,$cb8a,$cb8f,$cb93
	dc.w $caae,$cb2f,$cb37,$cb3f,$caae,$caae,$caae,$caae
	dc.w $caae,$caae,$cb6e,$cb7a,$9038,$9038,$9038,$cb94
	dc.w $cb28,$cb30,$cb38,$caae,$caae,$caae,$caae,$caae
	dc.w $caae,$cb64,$cb6f,$9038,$9038,$9038,$9038,$9038
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1013,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09d6e4:
	dc.w $100d,$1840
	dc.w $8000,$8000,$8000,$8000,$8000,$cb4b,$cb51,$cb56
	dc.w $cb5c,$cb65,$cb70,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$cb45,$cb2c,$cb52,$cb57
	dc.w $cb5d,$cb66,$cb71,$cb7b,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8ee4,$8ee4,$cb4c,$cb53,$cb58
	dc.w $cb5e,$cb67,$cb72,$cb7c,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$cb39,$cb40,$cb46,$cb4d,$cb54,$cb59
	dc.w $cb5f,$cb68,$cb73,$cb7d,$cb84,$8000,$8000,$8000
	dc.w $cb29,$cb31,$cb3a,$cb41,$cb47,$cb4e,$905b,$905b
	dc.w $cb60,$cb69,$cb74,$cb7e,$cb85,$cb8b,$8000,$8000
	dc.w $cb2a,$cb32,$cb3b,$cb42,$cb48,$cb4f,$cb55,$cb5a
	dc.w $cb61,$cb6a,$cb75,$cb7f,$cb86,$cb8c,$cb90,$8000
	dc.w $cb2b,$cb33,$cb3c,$cb43,$cb49,$cb2c,$cb2c,$cb2c
	dc.w $cb2c,$cb6b,$cb76,$cb80,$cb87,$cb8d,$cb91,$cb95
	dc.w $cb2c,$cb2c,$cb2c,$cb2c,$cb2c,$cb2c,$cb2c,$cb2c
	dc.w $cb62,$cb6c,$cb77,$cb81,$8000,$8000,$8000,$8000
	dc.w $cb2c,$cb2c,$cb2c,$cb2c,$cb2c,$cb2c,$cb2c,$cb2c
	dc.w $cb2c,$cb2c,$cb2c,$cb2c,$cb88,$cb8e,$cb92,$cb96
	dc.w $cb2d,$cb34,$cb3d,$cb2c,$cb2c,$cb2c,$cb2c,$cb2c
	dc.w $cb2c,$cb2c,$cb2c,$cb2c,$cb2c,$cb2c,$cb2c,$cb97
	dc.w $8000,$8000,$825f,$cb44,$cb4a,$cb50,$cb3d,$cb2c
	dc.w $cb2c,$cb2c,$cb2c,$cb2c,$cb2c,$cb2c,$cb2c,$cb98
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$825f,$cb44
	dc.w $cb4a,$cb50,$cb3d,$cb2c,$cb2c,$cb2c,$cb2c,$cb2c
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$825f,$cb44,$cb4a,$cb50,$cb3d,$cb2c
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1210,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1110,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1110,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1110,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09d958:
	dc.w $0e04,$0838
	dc.w $8000,$cb9d,$cba8,$cbb5,$cbc3,$cbd1,$cbdf
	dc.w $cbee,$cbfa,$cc03,$cc09,$cc0d,$cc11,$8000
	dc.w $8000,$cb9e,$cba9,$cbb6,$cbc4,$cbd2,$cbe0
	dc.w $cbef,$cbfb,$cc04,$cc0a,$cc0e,$8000,$8000
	dc.w $8000,$cb9f,$cbaa,$cbb7,$cbc5,$cbd3,$cbe1
	dc.w $cbf0,$cbfc,$cc05,$cc0b,$cc0f,$8000,$8000
	dc.w $cb99,$cba0,$cbab,$cbb8,$cbc6,$cbd4,$cbe2
	dc.w $cbf1,$cbfd,$cc06,$cc0c,$cc10,$cc12,$cc13
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09da04:
	dc.w $0a07,$2028
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$cbe3
	dc.w $cbf2,$cbfe,$8000,$8000,$cba1,$cbac,$cbb9
	dc.w $cbc7,$cbd5,$cbe4,$9038,$cbff,$8000,$8000
	dc.w $cba2,$cbad,$cbba,$cbc8,$cbd6,$cbe5,$cbf3
	dc.w $cc00,$cc07,$cb9a,$cba3,$cbae,$cbbb,$cbc9
	dc.w $cbd7,$cbe6,$cbf4,$cc01,$cc08,$8000,$cba4
	dc.w $cbaf,$cbbc,$cbca,$cbd8,$cbe7,$cbf5,$cc02
	dc.w $8000,$8000,$8000,$cbb0,$cbbd,$cbcb,$cbd9
	dc.w $cbe8,$cbf6,$8000,$8000,$8000,$8000,$8000
	dc.w $cbbe,$cbcc,$cbda,$cbe9,$cbf7,$8000,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09dada:
	dc.w $0808,$2420
	dc.w $8000,$8000,$cbb1,$cbbf,$cbcd,$cbdb,$cbea,$cbf8
	dc.w $cb9b,$cba5,$cbb2,$cbc0,$cbce,$cbdc,$cbeb,$cbf9
	dc.w $cb9c,$cba6,$cbb3,$cbc1,$cbcf,$cbdd,$cbec,$8000
	dc.w $8000,$cba7,$cbb4,$cbc2,$cbd0,$cbde,$cbed,$8000
	dc.w $8000,$e603,$e60f,$e61e,$e62d,$e63d,$e64c,$8000
	dc.w $8000,$8000,$e610,$e61f,$e62e,$e63e,$e64d,$8000
	dc.w $8000,$8000,$e611,$e620,$e62f,$e63f,$e64e,$8000
	dc.w $8000,$8000,$e612,$e621,$e630,$e640,$e64f,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09db9e:
	dc.w $0609,$2818
	dc.w $8000,$8000,$e613,$e622,$e631,$e641,$cc14,$e604,$e614
	dc.w $e623,$e632,$e642,$cc15,$e605,$e615,$e624,$e633,$e643
	dc.w $cc16,$e606,$e616,$e625,$e634,$e644,$cc17,$e607,$8ee4
	dc.w $e626,$e635,$e645,$8000,$e608,$e617,$c9c6,$e636,$e646
	dc.w $8000,$e609,$e618,$e627,$e637,$e647,$8000,$e60a,$e619
	dc.w $e628,$e638,$e648,$8000,$e60b,$e61a,$e629,$e639,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09dc44:
	dc.w $0509,$2810
	dc.w $8000,$8000,$e665,$e670
	dc.w $e67b,$e650,$e65b,$e666
	dc.w $e671,$e67c,$e651,$e65c
	dc.w $e667,$e672,$8000,$e652
	dc.w $e65d,$e668,$e673,$e67d
	dc.w $e653,$8ee4,$e669,$e674
	dc.w $e67e,$e654,$e65e,$e66a
	dc.w $e675,$8000,$e655,$e65f
	dc.w $e66b,$e676,$e67f,$e656
	dc.w $e660,$e66c,$e677,$8000
	dc.w $e657,$e661,$e66d,$e678
	dc.w $8000,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1013
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09dcd0:
	dc.w $0408,$2010
	dc.w $cc18,$e60c,$e61b,$e62a,$cc19,$e60d,$e61c,$e62b
	dc.w $cc1a,$e60e,$e61d,$e62c,$e685,$e691,$e69d,$e6a9
	dc.w $e686,$e692,$e69e,$e6aa,$e687,$e693,$e69f,$e6ab
	dc.w $e688,$e694,$e6a0,$e6ac,$e689,$e695,$e6a1,$e6ad
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09dd34:
	dc.w $0408,$2010
	dc.w $e63a,$e649,$e658,$e6ae,$e68a,$e696,$e6a2,$e6af
	dc.w $e68b,$e697,$e6a3,$e6b0,$e68c,$e698,$e6a4,$e6b1
	dc.w $e68d,$e699,$e6a5,$e6b2,$e68e,$e69a,$e6a6,$e6b3
	dc.w $e68f,$e69b,$e6a7,$e6b4,$e690,$e69c,$e6a8,$e6b5
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09dd98:
	dc.w $0408,$2010
	dc.w $e63a,$e649,$e658,$e662,$e63b,$e64a,$e659,$e663
	dc.w $e63c,$e64b,$e65a,$e664,$e6b6,$e698,$e6c4,$e6cc
	dc.w $e68d,$e699,$e6a5,$e6cd,$e68e,$e6bc,$e6c5,$e6ce
	dc.w $e68f,$e6bd,$e6a7,$e6cf,$e6b7,$e6be,$e6c6,$e6d0
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ddfc:
	dc.w $0408,$2010
	dc.w $e63a,$e649,$e658,$e6d1,$e6b8,$e679,$e6c7,$e6d2
	dc.w $e6b9,$e6bf,$e6c8,$e6d3,$e6ba,$e6c0,$e6c9,$e6d4
	dc.w $e68d,$e699,$e6a5,$e6d5,$e68e,$e6c1,$e6ca,$e6d6
	dc.w $e68f,$e6c2,$e6a7,$e6d7,$e6bb,$e6c3,$e6cb,$e6d8
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010


;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09de60:
	dc.w $1014,$5040
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$e901
	dc.w $e909,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$e8f3,$e8fa,$e902
	dc.w $e90a,$e912,$9086,$e920,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$e8e7,$e8ed,$e8f4,$e8fb,$e903
	dc.w $e90b,$e913,$e91a,$e921,$e927,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$e8e8,$e8ee,$e8f5,$e8fc,$e904
	dc.w $e90c,$e914,$e91b,$e922,$e928,$e92d,$9086,$9086
	dc.w $9086,$9086,$e8e3,$e8e9,$e8ef,$e8f6,$e8fd,$e905
	dc.w $e90d,$e915,$e91c,$e923,$e929,$e92e,$9086,$9086
	dc.w $9086,$e8e0,$e8e4,$e8ea,$e8f0,$e8f7,$e8fe,$e906
	dc.w $e90e,$e916,$e91d,$e924,$e92a,$e92f,$9086,$9086
	dc.w $9086,$e8e1,$e8e5,$e8eb,$e8f1,$e8f8,$e8ff,$e907
	dc.w $e90f,$e917,$e91e,$e925,$e92b,$e930,$e932,$9086
	dc.w $9086,$e8e2,$e8e6,$e8ec,$e8f2,$e8f9,$e900,$e908
	dc.w $e910,$e918,$e91f,$e926,$e92c,$e931,$e933,$9086
	dc.w $e934,$e935,$e939,$e93e,$e944,$e94a,$e950,$e957
	dc.w $e95e,$e966,$e96d,$e974,$e97a,$e980,$e986,$9086
	dc.w $9086,$e936,$e93a,$e93f,$e945,$e94b,$e951,$e958
	dc.w $e95f,$e967,$e96e,$e975,$e97b,$e981,$e987,$9086
	dc.w $9086,$e937,$e93b,$e940,$e946,$e94c,$e952,$e959
	dc.w $e960,$e968,$e96f,$e976,$e97c,$e982,$e988,$9086
	dc.w $9086,$e938,$e93c,$e941,$e947,$e94d,$e953,$e95a
	dc.w $e961,$e969,$e970,$e977,$e97d,$e983,$9086,$9086
	dc.w $9086,$9086,$e93d,$e942,$e948,$e94e,$e954,$e95b
	dc.w $e962,$e96a,$e971,$e978,$e97e,$e984,$9086,$9086
	dc.w $9086,$9086,$9086,$e943,$e949,$e94f,$e955,$e95c
	dc.w $e963,$e96b,$e972,$9086,$e97f,$e985,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$e956,$e95d
	dc.w $e964,$e96c,$e973,$e979,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$c0c3
	dc.w $e965,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $9086,$9086,$9086,$9086,$9086,$9086,$9086,$9086
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1011,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09e224:
	dc.w $1014,$5040
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$f347,$f348
	dc.w $f349,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $8000,$8000,$8000,$f343,$f345,$f346,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $f33f,$f341,$f342,$f344,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $f340,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$f34c,$f34f
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$f34a,$f34b,$f34d,$f350
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$f34e,$f351
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $f352,$f355,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $8000,$f356,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $8000,$f357,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $877d,$877d,$877d,$877d,$877d,$877d,$877d,$877d
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09e5e8:
	dc.w $0d14,$5040,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$f368,$f36e,$f377,$f381,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$f368
	dc.w $f36f,$f378,$f381,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f368,$f370,$f379,$f381
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$f369,$f371,$f37a,$f382,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$9503
	dc.w $f37b,$f383,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f384,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$f35e,$f363,$f36a,$f372,$f37c
	dc.w $f385,$8000,$f353,$f358,$f359,$f35a,$f35b,$f35c
	dc.w $f35f,$f364,$f36b,$f373,$f37d,$f386,$8000,$f354
	dc.w $8e81,$8e81,$8e81,$8e81,$8e81,$f360,$f365,$f36c
	dc.w $f374,$f37e,$f387,$8000,$8e81,$8e81,$8e81,$8e81
	dc.w $8e81,$8e81,$f361,$f366,$f36d,$f375,$f37f,$9503
	dc.w $8000,$8e81,$8e81,$8e81,$8e81,$8e81,$f35d,$f362
	dc.w $f367,$9068,$f376,$f380,$f388,$8000,$8e81,$8e81
	dc.w $8e81,$8e81,$f39a,$f3a1,$f3a9,$f3b4,$9068,$f3cd
	dc.w $f3d8,$f3dd,$f3e1,$8e81,$8e81,$f392,$f396,$f39b
	dc.w $8000,$f3aa,$9068,$f3bf,$f3ce,$9068,$9068,$f3e2
	dc.w $f389,$f38d,$f393,$8000,$8000,$8000,$f3ab,$f3b5
	dc.w $f3c0,$f3cf,$f3d9,$f3de,$f3e3,$f38a,$f38e,$8000
	dc.w $8000,$8000,$f3a2,$f3ac,$f3b6,$f3c1,$f3d0,$f3da
	dc.w $f3df,$8000,$8a0d,$f38f,$f394,$f397,$f39c,$f3a3
	dc.w $f3ad,$f3b7,$f3c2,$8000,$8000,$8000,$8000,$f38b
	dc.w $f390,$8a0d,$8a0d,$f39d,$f3a4,$f3ae,$f3b8,$f3c3
	dc.w $8000,$8000,$8000,$8000,$f38c,$f391,$f395,$f398
	dc.w $f39e,$f3a5,$f3af,$f3b9,$f3c4,$f3d1,$f3db,$8000
	dc.w $8000,$9068,$9068,$9068,$9068,$f39f,$f3a6,$f3b0
	dc.w $f3ba,$f3c5,$f3d2,$f3dc,$f3e0,$8000,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1011,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1013,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09e8f8:
	dc.w $0a14,$5040
	dc.w $8000,$8000,$8000,$f399,$f3a0,$f3a7
	dc.w $f3b1,$f3bb,$f3c6,$f3d3,$8000,$8000
	dc.w $8000,$8000,$9503,$f3a8,$f3b2,$f3bc
	dc.w $f3c7,$f3d4,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$f3b3,$f3bd,$f3c8,$f3d5
	dc.w $8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$f3be,$f3c9,$f3d6,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000
	dc.w $f3ca,$f3d6,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$f3cb,$f3d6
	dc.w $8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$f3cc,$f3d7,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$8000,$8000,$8000,$8000
	dc.w $8000,$8000,$f433,$f441,$f44f,$f45c
	dc.w $8000,$8000,$f40d,$f414,$f41f,$f42b
	dc.w $f434,$9042,$9042,$f45d,$f3f8,$f402
	dc.w $f40e,$8a54,$f420,$f42c,$f435,$9042
	dc.w $f450,$f45e,$8a54,$8a54,$8a54,$8a54
	dc.w $f421,$f42d,$f436,$f442,$9042,$f45f
	dc.w $8a54,$8a54,$8a54,$f415,$f422,$f42e
	dc.w $f437,$f443,$f451,$f460,$8a54,$8a54
	dc.w $f40f,$f416,$f423,$8000,$f438,$f444
	dc.w $f452,$f461,$8a54,$f403,$f410,$f417
	dc.w $f424,$f42f,$f439,$f445,$f453,$8000
	dc.w $f3f9,$f404,$f411,$f418,$f425,$9042
	dc.w $9042,$f446,$f454,$f462,$f3fa,$f405
	dc.w $f412,$f419,$9042,$9042,$9042,$f447
	dc.w $f455,$f463,$f3fb,$f406,$f413,$9042
	dc.w $9042,$9042,$f43a,$f448,$9042,$f464
	dc.w $f3fc,$f407,$9042,$9042,$9042,$f430
	dc.w $f43b,$f449,$f456,$f465,$f3fd,$f408
	dc.w $9042,$f41a,$f426,$f431,$f43c,$f44a
	dc.w $f457,$f466,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1110,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09eb54:
	dc.w $0614,$5028
	dc.w $8000,$8000,$f3e4,$f3e7,$f3eb,$f3f0
	dc.w $8000,$8000,$f3e5,$f3e8,$8a0d,$f3f1
	dc.w $8000,$8000,$f3e6,$f3e9,$8a0d,$f3f2
	dc.w $8000,$8000,$8000,$f3ea,$8a0d,$f3f3
	dc.w $8000,$8000,$8000,$9503,$f3ec,$f3f4
	dc.w $8000,$8000,$8000,$8000,$f3ed,$f3f5
	dc.w $8000,$8000,$8000,$8000,$f3ee,$f3f6
	dc.w $8000,$8000,$8000,$8000,$f3ef,$f3f7
	dc.w $8000,$8000,$8000,$8000,$f48d,$f499
	dc.w $8000,$8000,$8000,$f483,$f48e,$f49a
	dc.w $8000,$f470,$f47a,$f484,$f48f,$f49b
	dc.w $f46a,$f471,$8a0d,$8a0d,$f490,$f49c
	dc.w $f46b,$f472,$8a0d,$8a0d,$f491,$f49d
	dc.w $8000,$f473,$f47b,$8a0d,$f492,$f49e
	dc.w $8000,$f474,$f47c,$8a0d,$f493,$f49f
	dc.w $8000,$f475,$f47d,$8a0d,$f494,$f4a0
	dc.w $8000,$8000,$f47e,$f485,$f495,$f4a1
	dc.w $8000,$8000,$8000,$f486,$f496,$f4a2
	dc.w $8000,$8000,$8000,$f487,$f497,$f4a3
	dc.w $8000,$8000,$8000,$f488,$f498,$f4a4
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1011,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ecc0:
	dc.w $0214,$5008
	dc.w $f3fe,$f409,$f3ff,$f40a,$f400,$f40b
	dc.w $f401,$f40c,$f4a5,$f4b4,$f4a6,$f4b5
	dc.w $f4a7,$8000,$f4a8,$8000,$dfaa,$8000
	dc.w $f4a9,$f4b6,$f4aa,$f4b7,$f4ab,$f4b8
	dc.w $f4ac,$f4b9,$f4ad,$f4ba,$f4ae,$f4bb
	dc.w $f4af,$f4bc,$f4b0,$f4bd,$f4b1,$f4be
	dc.w $f4b2,$f4bf,$f4b3,$f4c0,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ed3c:
	dc.w $0414,$5010
	dc.w $8000,$f41b,$f427,$8000,$8000,$f41c,$f428,$8000
	dc.w $8000,$f41d,$f429,$8000,$8000,$f41e,$f42a,$f432
	dc.w $8000,$f4c3,$f4d3,$f4e1,$8000,$f4c4,$f4d4,$f4e2
	dc.w $8000,$f4c5,$f4d5,$f4e3,$8000,$f4c6,$8000,$8000
	dc.w $8000,$f4c7,$8000,$8000,$8000,$f4c8,$f4d6,$8000
	dc.w $f4c1,$f4c9,$f4d7,$f4e4,$f4c2,$f4ca,$f4d8,$f4e5
	dc.w $8000,$f4cb,$f4d9,$f4e6,$8000,$f4cc,$f4da,$8000
	dc.w $8000,$f4cd,$f4db,$8000,$8000,$f4ce,$f4dc,$f4e7
	dc.w $8000,$f4cf,$f4dd,$f4e8,$8000,$f4d0,$f4de,$f4e9
	dc.w $8000,$f4d1,$f4df,$8000,$8000,$f4d2,$f4e0,$f4ea
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ee30:
	dc.w $0414,$5010
	dc.w $f43d,$f44b,$f458,$f467,$f43e,$f44c,$f459,$f468
	dc.w $f43f,$f44d,$f45a,$f469,$f440,$f44e,$f45b,$8000
	dc.w $f4eb,$f4fb,$f50b,$f51a,$f4ec,$f4fc,$f50c,$f51b
	dc.w $f4ed,$f4fd,$f50d,$f51c,$f4ee,$f4fe,$f50e,$f51d
	dc.w $f4ef,$f4ff,$8000,$8000,$f4f0,$f500,$f50f,$8000
	dc.w $f4f1,$f501,$f510,$f51e,$f4f2,$f502,$f511,$f51f
	dc.w $f4f3,$f503,$f512,$f520,$f4f4,$f504,$f513,$9503
	dc.w $f4f5,$f505,$f514,$f521,$f4f6,$f506,$f515,$f522
	dc.w $f4f7,$f507,$f516,$bd24,$f4f8,$f508,$f517,$f523
	dc.w $f4f9,$f509,$f518,$f524,$f4fa,$f50a,$f519,$f525
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1012,$1010,$1010,$1010,$1010
	dc.w $1010,$1013,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ef24:
	dc.w $0414,$5010
	dc.w $f46c,$f476,$f47f,$f489,$f46d,$f477,$f480,$f48a
	dc.w $f46e,$f478,$f481,$f48b,$f46f,$f479,$f482,$f48c
	dc.w $f526,$f536,$f546,$f555,$f527,$f537,$f547,$8000
	dc.w $f528,$f538,$f548,$f556,$f529,$f539,$f549,$f557
	dc.w $f52a,$f53a,$8000,$8000,$f52b,$f53b,$f54a,$8000
	dc.w $f52c,$f53c,$f54b,$f558,$f52d,$f53d,$f54c,$f559
	dc.w $f52e,$f53e,$f54d,$8000,$f52f,$f53f,$f54e,$f55a
	dc.w $f530,$f540,$f54f,$f55b,$f531,$f541,$f550,$f55c
	dc.w $f532,$f542,$f551,$f55d,$f533,$f543,$f552,$f55e
	dc.w $f534,$f544,$f553,$f55f,$f535,$f545,$f554,$f560
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f018:
	dc.w $0414,$5010
	dc.w $f561,$f571,$f581,$f591,$f562,$f572,$f582,$f592
	dc.w $f563,$f573,$f583,$f593,$f564,$f574,$f584,$8000
	dc.w $f565,$f575,$f585,$8000,$f566,$f576,$f586,$8000
	dc.w $f567,$f577,$f587,$8000,$f568,$f578,$f588,$8000
	dc.w $f569,$f579,$f589,$8000,$f56a,$f57a,$f58a,$8000
	dc.w $f56b,$f57b,$f58b,$f594,$f56c,$f57c,$f58c,$f595
	dc.w $f56d,$f57d,$f58d,$8000,$f56e,$f57e,$f58e,$8000
	dc.w $f56f,$f57f,$f58f,$8000,$f570,$f580,$f590,$8000
	dc.w $f636,$f63a,$f64a,$8000,$f637,$f63b,$f64b,$8000
	dc.w $f638,$f63c,$f64c,$8000,$f639,$f63d,$f64d,$8000
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f10c:
	dc.w $0314,$5010
	dc.w $f596,$f5a6,$8000,$f597,$f5a7,$f5b6,$f598,$f5a8,$f5b7
	dc.w $f599,$f5a9,$f5b8,$f59a,$f5aa,$f5b9,$f59b,$f5ab,$f5ba
	dc.w $f59c,$f5ac,$f5bb,$f59d,$f5ad,$f5bc,$f59e,$f5ae,$f5bd
	dc.w $f59f,$f5af,$f5be,$f5a0,$f5b0,$f5bf,$f5a1,$f5b1,$f5c0
	dc.w $f5a2,$f5b2,$f5c1,$f5a3,$f5b3,$f5c2,$f5a4,$f5b4,$f5c3
	dc.w $f5a5,$f5b5,$f5c4,$f65d,$f66d,$f67d,$f65e,$f66e,$f67e
	dc.w $f65f,$f66f,$f67f,$f660,$f670,$f680,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f1c4:
	dc.w $0314,$5010
	dc.w $f5c5,$f5c8,$8000,$8000,$f5c9,$8000,$8000,$f5ca,$f5d8
	dc.w $8000,$f5cb,$f5d9,$8000,$f5cc,$f5da,$8000,$f5cd,$f5db
	dc.w $8000,$f5ce,$f5dc,$8000,$f5cf,$f5dd,$8000,$f5d0,$f5de
	dc.w $8000,$f5d1,$f5df,$f5c6,$f5d2,$f5e0,$f5c7,$f5d3,$f5e1
	dc.w $8000,$f5d4,$f5e2,$8000,$f5d5,$f5e3,$8000,$f5d6,$f5e4
	dc.w $8000,$f5d7,$f5e5,$8000,$f68f,$f69f,$8000,$f690,$f6a0
	dc.w $8000,$f691,$8000,$8000,$f692,$8000,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f27c:
	dc.w $0113,$5008,$f5e6,$f5e7,$f5e8,$f5e9,$f5ea,$f5eb
	dc.w $f5ec,$f5ed,$f5ee,$f5ef,$f5f0,$f5f1,$f5f2,$f5f3
	dc.w $f5f4,$f5f5,$f6a1,$f6a2,$f6a3,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f2ba:
	dc.w $0211,$4808,$f5f6,$f606,$f5f7,$f607,$f5f8,$f608,$f5f9
	dc.w $f609,$f5fa,$f60a,$f5fb,$f60b,$f5fc,$f60c,$f5fd,$f60d
	dc.w $f5fe,$f60e,$f5ff,$f60f,$f600,$f610,$f601,$f611,$f602
	dc.w $f612,$f603,$f613,$f604,$f614,$f605,$f615,$f6af,$f6bc
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f324:
	dc.w $0210,$4008
	dc.w $f616,$f626,$f617,$f627,$f618,$f628,$f619,$f629
	dc.w $f61a,$f62a,$f61b,$f62b,$f61c,$f62c,$f61d,$f62d
	dc.w $f61e,$f62e,$f61f,$f62f,$f620,$f630,$f621,$f631
	dc.w $f622,$f632,$f623,$f633,$f624,$f634,$f625,$f635
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f388:
	dc.w $030e,$3810
	dc.w $8000,$f63e,$f64e,$9ab5,$f63f,$f64f,$9a77
	dc.w $f640,$f650,$8000,$f641,$f651,$8000,$f642
	dc.w $f652,$8000,$f643,$f653,$8000,$f644,$f654
	dc.w $9afa,$f645,$f655,$8000,$f646,$f656,$8000
	dc.w $f647,$f657,$8000,$f648,$f658,$8000,$f649
	dc.w $f659,$8000,$f6bd,$f6bf,$8000,$f6be,$f6c0
	dc.w $1010,$1012,$1010,$1310,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f40a:
	dc.w $030d,$3410
	dc.w $8000,$f661,$f671,$f65a,$f662,$f672,$f65b,$f663,$f673,$8000
	dc.w $f664,$f674,$8000,$f665,$f675,$8000,$f666,$f676,$f65c,$f667
	dc.w $f677,$8000,$f668,$f678,$8000,$f669,$f679,$8000,$f66a,$f67a
	dc.w $8000,$f66b,$f67b,$8000,$f66c,$f67c,$8000,$f6c1,$f6c2,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f484:
	dc.w $030d,$3410
	dc.w $8ee4,$f683,$f693,$f681,$f684,$f694,$f682,$f685,$f695,$8000
	dc.w $f686,$f696,$8000,$f687,$f697,$8000,$f688,$f698,$d150,$f689
	dc.w $f699,$8000,$f68a,$f69a,$8000,$f68b,$f69b,$8000,$f68c,$f69c
	dc.w $8000,$f68d,$f69d,$8000,$f68e,$f69e,$8000,$f6c3,$f6c4,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1210,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f4fe:
	dc.w $030d,$3410
	dc.w $8ee4,$f683,$f6b0,$f681,$f6a4,$f6b1,$f682,$f6a5,$f6b2,$8000
	dc.w $f6a6,$f6b3,$8000,$f6a7,$f6b4,$8000,$f6a8,$f6b5,$d150,$f6a9
	dc.w $f6b6,$8000,$f6aa,$f6b7,$8000,$f6ab,$f6b8,$8000,$f6ac,$f6b9
	dc.w $8000,$f6ad,$f6ba,$8000,$f6ae,$f6bb,$8000,$f6c5,$f6c6,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1210,$1010
	dc.w $1010,$1010,$1010,$1010,$1010,$1010,$1010,$1010,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f578:
	dc.w $0101,$f404,$e71a,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f580:
	dc.w $0101,$f404,$e71b,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f588:
	dc.w $0101,$f404,$e71c,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f590:
	dc.w $0101,$f404,$e71d,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f598:
	dc.w $0101,$f404,$e71e,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f5a0:
	dc.w $0101,$f404,$e724,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f5a8:
	dc.w $0101,$f404,$e725,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f5b0:
	dc.w $0101,$f404,$e726,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f5b8:
	dc.w $0101,$f404,$e727,$1000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f5c0:
	dc.w $0101,$f404,$1cc1,$2000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f5c8:
	dc.w $0f14,$503c
	dc.w $0615,$061a,$0619,$0619,$0619,$0619,$0619,$0619,$0619,$0619
	dc.w $0619,$0619,$0619,$067e,$0619,$0616,$061b,$0619,$0619,$0619
	dc.w $0619,$0619,$0619,$0619,$0619,$0619,$0671,$067c,$067f,$0619
	dc.w $0617,$061c,$0619,$0619,$0619,$0619,$0619,$0619,$0619,$0619
	dc.w $0619,$0672,$067d,$0680,$0619,$0618,$061d,$0619,$0619,$0619
	dc.w $0619,$0619,$0619,$0619,$0619,$0619,$0619,$0619,$0681,$0619
	dc.w $0619,$061e,$0619,$0619,$0619,$0619,$0619,$0619,$0619,$0619
	dc.w $0619,$0619,$0619,$0682,$0619,$0619,$061f,$0619,$0619,$062c
	dc.w $0636,$0640,$064a,$0654,$0619,$0667,$0619,$0619,$0683,$0619
	dc.w $0619,$0620,$0619,$0626,$062d,$0637,$0641,$064b,$0655,$065e
	dc.w $0668,$0673,$0619,$0684,$0619,$0619,$0621,$0619,$0627,$062e
	dc.w $0638,$0642,$064c,$0656,$065f,$0669,$0674,$0619,$0685,$0619
	dc.w $0619,$0622,$0619,$0619,$062f,$0639,$0643,$064d,$0657,$0660
	dc.w $066a,$0675,$0619,$0686,$0619,$0619,$0620,$0619,$0628,$0630
	dc.w $063a,$0644,$064e,$0658,$0661,$066b,$0676,$0619,$0684,$0619
	dc.w $0619,$0623,$0619,$0629,$0631,$063b,$0645,$064f,$0659,$0662
	dc.w $066c,$0677,$0619,$0687,$0619,$0619,$0622,$0619,$0619,$0632
	dc.w $063c,$0646,$0650,$065a,$0663,$066d,$0678,$0619,$0685,$0619
	dc.w $0619,$0621,$0619,$062a,$0633,$063d,$0647,$0651,$065b,$0664
	dc.w $066e,$0679,$0619,$0684,$0619,$0619,$0620,$0619,$062b,$0634
	dc.w $063e,$0648,$0652,$065c,$0665,$066f,$067a,$0619,$0686,$0619
	dc.w $0619,$0624,$0619,$0619,$0635,$063f,$0649,$0653,$065d,$0666
	dc.w $0670,$067b,$0619,$0688,$0619,$0619,$0625,$0619,$0619,$0619
	dc.w $0619,$0619,$0619,$0619,$0619,$0619,$0619,$0619,$0689,$0619
	dc.w $068a,$068e,$0619,$0619,$0619,$0619,$0619,$0619,$0619,$0619
	dc.w $0619,$0619,$0619,$0692,$0619,$068b,$068f,$0619,$0619,$0619
	dc.w $0619,$0619,$0619,$0619,$0619,$0619,$0619,$0619,$0693,$0619
	dc.w $068c,$0690,$0619,$0619,$0619,$0619,$0619,$0619,$0619,$0619
	dc.w $0619,$0619,$0619,$0694,$0619,$068d,$0691,$0619,$0619,$0619
	dc.w $0619,$0619,$0619,$0619,$0619,$0619,$0619,$0619,$0695,$0619
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2120,$2020,$2020,$2020,$2020,$2020,$2120
	dc.w $2021,$2020,$2020,$2020,$2020,$2020,$2021,$2020,$2120,$2020
	dc.w $2020,$2020,$2020,$2020,$2120,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09f950:
	dc.w $0f14,$503c
	dc.w $0697,$0697,$0697,$0697,$0697,$0697,$0697,$0697,$0697,$0697
	dc.w $0697,$0697,$0697,$0697,$0697,$0697,$0697,$0697,$06a6,$06af
	dc.w $06b8,$06c0,$06c8,$06d5,$06e1,$06e9,$06f1,$06f8,$06ff,$0697
	dc.w $0697,$0697,$0697,$06a7,$06b0,$06b9,$06c1,$06c9,$06d6,$06e2
	dc.w $06ea,$06f2,$06f9,$0700,$0697,$0697,$0697,$0697,$0697,$0697
	dc.w $0697,$0697,$06ca,$06d7,$06e3,$06eb,$0697,$06fa,$0697,$0697
	dc.w $0697,$0697,$0697,$0697,$0697,$0697,$0697,$0697,$0697,$0697
	dc.w $0697,$0697,$0697,$0697,$0697,$0697,$0698,$069f,$06a8,$06b1
	dc.w $06ba,$06c2,$06cb,$06d8,$0697,$0697,$0697,$0697,$0697,$0697
	dc.w $0697,$0699,$06a0,$06a9,$06b2,$06bb,$06c3,$06cc,$06d9,$06e4
	dc.w $06ec,$06f3,$06fb,$0697,$0697,$0697,$069a,$06a1,$06aa,$06b3
	dc.w $06bc,$06c4,$06cd,$06da,$06e5,$06ed,$06f4,$06fc,$0701,$0697
	dc.w $0697,$0697,$0697,$0697,$06b4,$0697,$0697,$06ce,$0697,$0697
	dc.w $0697,$0697,$0697,$0697,$0697,$0697,$0697,$0697,$0697,$0697
	dc.w $0697,$0697,$06cf,$06db,$0697,$0697,$0697,$0697,$0697,$0697
	dc.w $0697,$0697,$0697,$0697,$0697,$0697,$0697,$06d0,$06dc,$0697
	dc.w $0697,$0697,$0697,$0697,$0697,$0697,$0697,$0697,$0697,$0697
	dc.w $0697,$0697,$06d1,$06dd,$0697,$0697,$0697,$0697,$0697,$0697
	dc.w $0697,$069b,$06a2,$06ab,$0697,$0697,$0697,$0697,$0697,$0697
	dc.w $0697,$0697,$0697,$0697,$0697,$0697,$069c,$06a3,$06ac,$06b5
	dc.w $06bd,$06c5,$06d2,$06de,$06e6,$06ee,$06f5,$06fd,$0697,$0697
	dc.w $0697,$069d,$06a4,$06ad,$06b6,$06be,$06c6,$06d3,$06df,$06e7
	dc.w $06ef,$06f6,$0697,$0697,$0697,$0697,$069e,$06a5,$06ae,$06b7
	dc.w $06bf,$06c7,$06d4,$06e0,$06e8,$06f0,$06f7,$06fe,$0702,$0697
	dc.w $0697,$0697,$0703,$0706,$070a,$070d,$0711,$0715,$0718,$071c
	dc.w $0720,$0722,$0697,$0697,$0697,$0697,$0697,$0704,$0707,$070b
	dc.w $070e,$0712,$0716,$0719,$071d,$0697,$0697,$0697,$0697,$0697
	dc.w $0697,$0697,$0705,$0708,$070c,$070f,$0713,$0717,$071a,$071e
	dc.w $0721,$0697,$0697,$0697,$0697,$0697,$0697,$0697,$0709,$0697
	dc.w $0710,$0714,$0697,$071b,$071f,$0697,$0697,$0697,$0697,$0697
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020
	dc.w $2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fcd8:
	dc.w $0202,$0808,$0725,$0735,$0726,$0736,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fce8:
	dc.w $0202,$0808,$0727,$0737,$0728,$0738,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fcf8:
	dc.w $0202,$0808,$0729,$0739,$072a,$073a,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fd08:
	dc.w $0202,$0808,$072b,$073b,$072c,$073c,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fd18:
	dc.w $0202,$0808,$072d,$073d,$072e,$073e,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fd28:
	dc.w $0202,$0808,$072f,$073f,$0730,$0740,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fd38:
	dc.w $0202,$0808,$0731,$0741,$0732,$0742,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fd48:
	dc.w $0202,$0808,$0733,$0743,$0734,$0744,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fd58:
	dc.w $0202,$0808,$0745,$0749,$0746,$074a,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fd68:
	dc.w $0202,$0808,$0747,$074b,$0748,$074c,$2020,$2020

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fd78:
	dc.l loc_09fd88,loc_09fda8,loc_09fdc8
	dc.l $00000000

loc_09fd88:
	dc.w $20f0,$0ebb,$3c44,$0c33,$2fde,$7f46,$6f57,$5f56
	dc.w $7f13,$1a01,$4d02,$4701,$5b01,$7f67,$6f89,$7fff

loc_09fda8:
	dc.w $29f9,$0111,$0222,$0333,$0444,$0555,$0666,$0777
	dc.w $7888,$7999,$7aaa,$7bbb,$7ccc,$7ddd,$7eee,$0000

loc_09fdc8:
	dc.w $20f0,$0000,$7bbb,$7777,$0444,$0222,$7ddd,$7999
	dc.w $0050,$0030,$7888,$0666,$7999,$7eee,$0111,$7ddd

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fde8:
	dc.w $0000,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff
	dc.w $7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff,$7fff

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fe08:
	dc.w $0000,$7000,$7000,$7000,$7000,$7000,$7000,$7000
	dc.w $7000,$7000,$7000,$7000,$7000,$7000,$7000,$7000

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fe28:
	dc.w $3ddd,$5210,$7410,$1620,$1720,$2821,$4931,$6a31
	dc.w $2e41,$2f71,$7fa2,$7fd6,$6015,$5179,$73ac,$26ef

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fe48:
	dc.w $0555,$0a43,$4b43,$7d32,$3f32,$1f65,$6f88,$5d31
	dc.w $5faa,$6fcc,$0350,$4472,$6684,$28a6,$08c7,$48e8

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fe68:
	dc.w $3a74,$1d91,$1510,$4621,$0832,$2a43,$5b64,$7d75
	dc.w $0f97,$4fa8,$6fb9,$2fa2,$5fe6,$5621,$1921,$2c22

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fe88:
	dc.w $738b,$0211,$7300,$1510,$4621,$0832,$2a43,$5b64
	dc.w $7d75,$0f97,$4fa8,$6fb9,$6fca,$6fdb,$6fec,$6ccc

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fea8:
	dc.w $5393,$3411,$5621,$1921,$2c22,$4e32,$4f53,$6f74
	dc.w $2fa2,$5fe6,$5b64,$0f97,$6fb9,$20f0,$20f0,$20f0

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fec8:
	dc.w $539b,$5321,$7443,$0776,$1998,$6bbb,$1eed,$7fff
	dc.w $2742,$2952,$5b71,$1d91,$2fa2,$5fd1,$5fe6,$7ffb

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09fee8:
	dc.w $7393,$2742,$5b71,$2fa2,$5fd1,$5fe6,$7ffb,$0832
	dc.w $2a43,$5b64,$7d75,$0f97,$4fa8,$6fb9,$6fca,$6fdb

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ff08:
	dc.w $739b,$2742,$2952,$5b71,$1d91,$2fa2,$5fd1,$5fe6
	dc.w $0832,$2a43,$5b64,$7d75,$0f97,$4fa8,$6fb9,$0fea

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ff28:
	dc.w $53a3,$0211,$4621,$0832,$2a43,$5b71,$5b71,$1d91
	dc.w $2fa2,$7d75,$0f97,$4fa8,$6fb9,$6fca,$20f0,$20f0

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ff48:
	dc.w $53ab,$2742,$2952,$5b71,$2fa2,$5fe6,$7ffb,$0832
	dc.w $2a43,$5b64,$7d75,$0f97,$4fa8,$6fb9,$6fca,$0211

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ff68:
	dc.w $73a3,$2742,$2952,$5b71,$1d91,$2fa2,$5fd1,$5fe6
	dc.w $7ffb,$3411,$5621,$1921,$2c22,$4e32,$4f53,$6f74

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ff88:
	dc.w $73ab,$2c22,$4621,$0832,$2a43,$2fa2,$5fe6,$7ffb
	dc.w $7d75,$0f97,$4fa8,$6fb9,$6fca,$5b64,$4e32,$5b64

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ffa8:
	dc.w $53b3,$2a43,$5b64,$7d75,$0f97,$4fa8,$6fb9,$6fca
	dc.w $6fdb,$2c22,$4e32,$4f53,$6f74,$2fa2,$5fe6,$7ffb

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ffc8:
	dc.w $53bb,$1921,$2c22,$4e32,$1d91,$0211,$4621,$0832
	dc.w $2a43,$5b64,$7d75,$4fa8,$6fca,$0f97,$4f53,$20f0

;AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
loc_09ffe8:
	dc.w $734f,$6fdb,$7443,$0776,$1998,$6bbb,$1eed,$7fff
	dc.w $0832,$2a43,$5b64,$7d75,$0f97,$4fa8,$6fb9,$7000
