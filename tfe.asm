//Standard imports


//Potential screen buffer locations
.label SCREEN_BUFFER_0 = $0400

 // *=$1001
    //BasicUpstart(L_1000)

//Start of disassembled code
* = $1000 "Base Address"
   

    L_1000:
        jsr L_18ff
        jsr L_1100
    L_1006:
        jsr L_106c
        jsr L_1942
        jsr L_107c
 
        nop 
        nop 
        nop 
        jsr L_106c
        jsr L_1062
    L_1018:
        jsr L_11b0
        jsr L_1470
        jsr L_1566
        jsr L_164a
        jsr L_179b
        jsr L_17bd
        jsr L_1857
        jsr L_10b0
        jsr L_18b9
        jsr L_1075
        lda $0208
        beq L_1043
        ldx #$01
        jsr L_1217
        jmp L_1018
    L_1043:
        jsr L_1100
        ldx #$03
        sec 
    L_1049:
        lda $0200,x
        sbc $0204,x
        dex 
        bpl L_1049
        bcs L_1006
        ldx #$03
    L_1056:
        lda $0204,x
        sta $0200,x
        dex 
        bpl L_1056
        jmp L_1006
    L_1062:
        jsr L_1916
        jsr L_1100
        jsr L_11de
        rts 


    L_106c:
        ldx #$03
        stx $0208
        jsr L_11b0
        rts 


    L_1075:
        jsr L_18cf
        jsr L_158b
        rts 


    L_107c:
        lda #$00
        sta $900a
        sta $900b
        sta $900c
        sta $900d
        jsr $1970
        rts 


    L_108e:
        lda #$06
        sta $9658,x
        lda #$04
        rts 


    L_1096:
        jsr $ffe4
        cmp #$03
        beq L_109e
        rts 


    L_109e:
        lda #$19
        sta $900f
    L_10a3:
        jsr $ffe4
        cmp #$03
        bne L_10a3
        lda #$08
        sta $900f
        rts 


    L_10b0:
        jsr L_188f
        jsr L_1096
        rts 


    L_10b7:
        jsr $ffe4
        cmp #$85
        beq L_10bf
        rts 


    L_10bf:
        ldx #$00
    L_10c1:
        lda $0200,x
        sta $19ed,x
        inx 
        cpx #$04
        bne L_10c1
        lda #$01
        ldx #$01
        ldy #$ff
        jsr L_12aa
        lda #$00
        jsr $ffbd
        ldx #$e5
        ldy #$19
        stx $61
        sty $62
        lda #$61
        ldx #$f0
        stx $9005
        ldx #$f5
        ldy #$19
        jsr $ffd8
        jsr L_19f8
        ldy #$01
        rts 


        inx 
    L_10f7:
        dex 
        bmi L_10fd
        jmp L_11b2
    L_10fd:
        jmp L_19dc
    L_1100:
        lda #$ff
        sta $9005
        lda #$08
        sta $900f
        lda #$02
        sta $911e
        lda #$80
        sta $0291
        ldx #$00
    L_1116:
        lda #$20
        sta L_1dfb + $5,x
        sta L_1e71 + $8f,x
        lda #$07
    L_1120:
        sta $9600,x
        sta $9700,x
        inx 
        bne L_1116
        lda #$0c
    L_112b:
        sta L_1dfb + $7,x
        clc 
        adc #$01
        inx 
        cpx #$07
        bne L_112b
    L_1136:
        sta L_1dfb + $7,x
        tay 
        lda #$03
        sta $9602,x
        tya 
        clc 
        adc #$01
        inx 
        cpx #$0c
        bne L_1136
        inx 
        lda #$18
        sta L_1dfb + $7,x
        lda #$05
        sta $9602,x
        inx 
        lda #$19
        sta L_1dfb + $8,x
        lda #$1a
        sta L_1e04,x
        lda #$01
        sta $9603,x
        sta $9604,x
        lda #$1b
        sta L_1e16 + $3,x
        lda #$1c
        sta L_1e16 + $4,x
        lda #$21
        sta L_1e2e
        lda #$22
        sta L_1e2e + $1
        lda #$23
        sta L_1e30
        lda #$04
        sta $962e
        sta $962f
        sta $9630
        ldx #$00
        lda #$27
    L_118e:
        sta L_1e71 + $173,x
        tay 
        lda #$01
        sta $97e4,x
        tya 
        clc 
        adc #$01
        inx 
        cpx #$08
        bne L_118e
        lda #$24
        sta $1e37
        lda #$25
        sta $1e38
        lda #$26
        sta L_1e39
        rts 


    L_11b0:
        ldx #$03
    L_11b2:
        lda $0200,x
        clc 
        adc #$b0
        sta L_1e39 + $1,x
        lda $0204,x
        clc 
        adc #$b0
        sta $1e31,x
        jmp L_10f7
        lda #$16
        sec 
        sbc $0208
        tax 
    L_11ce:
        lda #$03
        sta L_1e71 + $173,x
        lda #$05
        sta $97e4,x
        inx 
        cpx #$16
        bne L_11ce
        rts 


    L_11de:
        ldx #$00
        ldy #$00
    L_11e2:
        lda #$04
    L_11e4:
        sta $1e58,x
        jsr L_108e
        inx 
        inx 
        iny 
        iny 
        cpy #$16
        bne L_11e4
        txa 
        clc 
        adc #$16
        tax 
        ldy #$00
        bcc L_11e2
        rts 


    L_11fc:
        ldy #$07
    L_11fe:
        lda L_1c18,y
        sta L_1d78,y
        lda #$00
    L_1206:
        sta L_1d80,y
        dey 
        bpl L_11fe
        iny 
        sty $0209
        sty $020a
        sty $020b
        rts 


    L_1217:
        ldy #$00
    L_1219:
        iny 
        bne L_1219
        dex 
        bne L_1217
        rts 


    L_1220:
        txa 
        sta $00
        lda #$1e
        sta $01
        cpy #$00
    L_1229:
        beq L_123c
        clc 
        lda $00
        adc #$16
        sta $00
        lda $01
        adc #$00
        sta $01
        dey 
        jmp L_1229
    L_123c:
        rts 


    L_123d:
        pha 
        jsr L_1220
        pla 
        sta ($00),y
        lda $01
        clc 
        adc #$78
        sta $01
        lda $0286
        sta ($00),y
        rts 


    L_1251:
        lda #$20
        jmp L_123d
    L_1256:
        jsr L_1220
        lda ($00),y
        rts 


    L_125c:
        ldx #$00
        ldy #$00
        lda $028d
        beq L_1267
        ldy #$01
    L_1267:
        lda $9121
        cmp #$fb
        beq L_127d
        cmp #$f9
        beq L_127d
        cmp #$f7
        beq L_1282
        cmp #$f5
        beq L_1282
        jmp L_1284
    L_127d:
        ldx #$01
        jmp L_1284
    L_1282:
        ldx #$02
    L_1284:
        lda #$00
        sta $9113
        lda #$7f
        sta $9122
        lda $9120
        and #$80
        bne L_1297
        ldx #$02
    L_1297:
        lda $9111
        and #$20
        bne L_12a0
        ldy #$01
    L_12a0:
        lda $9111
        and #$10
        bne L_12a9
        ldx #$01
    L_12a9:
        rts 


    L_12aa:
        jsr $ffba
        lda #$93
        jsr $ffd2
        rts 


        nop 
        nop 
    L_12b5:
        ldx #$03
    L_12b7:
        clc 
        adc $0204,x
        tay 
        sec 
        sbc #$0a
        bpl L_12c6
        tya 
        sta $0204,x
        rts 


    L_12c6:
        sta $0204,x
        lda #$01
        dex 
        bpl L_12b7
        rts 


    L_12cf:
        ldx #$07
    L_12d1:
        asl L_1d78,x
        asl L_1d80,x
        bcs L_12dd
    L_12d9:
        dex 
        bpl L_12d1
        rts 


    L_12dd:
        lda L_1d78,x
        ora #$01
        sta L_1d78,x
        jmp L_12d9
    L_12e8:
        ldx #$07
    L_12ea:
        lsr L_1d80,x
        lsr L_1d78,x
        bcs L_12f6
    L_12f2:
        dex 
        bpl L_12ea
        rts 


    L_12f6:
        lda L_1d80,x
        ora #$80
        sta L_1d80,x
        jmp L_12f2
    L_1301:
        lda #$03
        sta $0286
        ldx $020a
        ldy #$14
        lda #$2f
        jsr L_123d
        ldx $020a
        inx 
        ldy #$14
        lda #$30
        jsr L_123d
        ldx $020a
        ldy #$14
        dex 
        jsr L_1251
        ldx $020a
        ldy #$14
        inx 
        inx 
        jmp L_1251
    L_132e:
        jsr L_125c
        cpx #$02
        beq L_133a
        cpx #$01
        beq L_1372
        rts 


    L_133a:
        inc $0209
        ldx $0209
        cpx #$08
        beq L_1347
        jmp L_12e8
    L_1347:
        inc $020a
        ldx $020a
        cpx #$15
        beq L_1367
        ldx #$00
        stx $0209
        ldx #$07
    L_1358:
        lda L_1c18,x
        sta L_1d78,x
        lda #$00
        sta L_1d80,x
        dex 
        bpl L_1358
        rts 


    L_1367:
        lda #$07
        sta $0209
        lda #$14
        sta $020a
        rts 


    L_1372:
        dec $0209
        bmi L_137a
        jmp L_12cf
    L_137a:
        dec $020a
        bmi L_1397
        ldx #$07
        stx $0209
        ldx #$07
    L_1386:
        lda L_1c18,x
        sta L_1d80,x
        lda #$00
        sta L_1d78,x
        dex 
        bpl L_1386
        jmp L_12cf
    L_1397:
        inc $0209
        inc $020a
        rts 


    L_139e:
        ldy $020b
        beq L_13a4
    L_13a3:
        rts 


    L_13a4:
        jsr L_125c
        cpy #$01
        bne L_13a3
        ldy $0209
        lda $020a
        sta $020d
        lda #$14
        sta $020c
        lda #$10
    L_13bb:
        cpy #$00
        beq L_13ce
        lsr 
        bcs L_13c6
    L_13c2:
        dey 
        jmp L_13bb
    L_13c6:
        lda #$80
        inc $020d
        jmp L_13c2
    L_13ce:
        ldy #$07
    L_13d0:
        sta L_1d88,y
        dey 
        bpl L_13d0
        lda #$01
        sta $020b
        lda #$fe
        sta $900a
        rts 


    L_13e1:
        lda #$01
        sta $0286
        lda #$31
        ldy $020c
        ldx $020d
        jmp L_123d
    L_13f1:
        ldx $020d
        ldy $020c
        jmp L_1251
    L_13fa:
        ldy $020c
        dey 
        cpy #$02
        beq L_1406
        sty $020c
        rts 


    L_1406:
        ldy #$00
        sty $020b
        rts 


    L_140c:
        ldx $020d
        ldy $020c
        jsr L_1256
        cmp #$05
        beq L_142d
        jmp L_14b6
    L_141c:
        lda #$00
        jmp L_1434
        rts 


    L_1422:
        lda #$00
        sta $020b
        lda #$01
        sta $900a
        rts 


    L_142d:
        lda $020f
        bmi L_141c
        lda #$80
    L_1434:
        sta $020f
        jmp L_1422
    L_143a:
        jsr L_18e5
        ldx #$1f
    L_143f:
        lda $0210,x
        bne L_1448
    L_1444:
        dex 
        bpl L_143f
        rts 


    L_1448:
        lda $0340,x
        cmp $020d
        bne L_1444
        lda $0360,x
        cmp $020c
        bne L_1444
        lda #$ff
        sta $02a1
        lda #$00
        sta $0210,x
        lda #$1d
        ldx $020d
        ldy $020c
        jsr L_123d
        jmp L_1422
    L_1470:
        jsr L_139e
        dec $900a
        bne L_147b
        inc $900a
    L_147b:
        ldx $02a2
        inx 
        inc $02a2
        cpx #$0a
        beq L_1487
        rts 


    L_1487:
        ldx #$00
        stx $02a2
        lda $020b
        bne L_1492
    L_1491:
        rts 


    L_1492:
        jsr L_140c
        lda $020b
        beq L_1491
        jsr L_13f1
        jsr L_13fa
        lda $020b
        beq L_1491
        jsr L_140c
        lda $020b
        beq L_1491
        jsr L_13e1
        lda #$0f
        sta $900e
    L_14b5:
        rts 


    L_14b6:
        cmp #$20
        beq L_14b5
        cmp #$31
        beq L_14b5
        cmp #$2f
        beq L_14b5
        cmp #$30
        beq L_14b5
        cmp #$04
        beq L_14cd
    L_14ca:
        jmp L_17ea
    L_14cd:
        lda $01
        clc 
        adc #$78
        sta $01
        ldy #$00
        lda ($00),y
        and #$0f
        tax 
        inx 
        cpx #$08
        beq L_14e6
        txa 
    L_14e1:
        sta ($00),y
        jmp L_1422
    L_14e6:
        lda #$01
        jmp L_14e1
    L_14eb:
        ldy #$14
        ldx $020a
        jsr L_1256
        cmp #$20
        beq L_1502
        cmp #$2f
        beq L_1502
        cmp #$30
        beq L_1502
        jmp L_1520
    L_1502:
        ldx $0209
        beq L_151f
        ldy #$14
        ldx $020a
        inx 
        jsr L_1256
        cmp #$20
        beq L_151f
        cmp #$2f
        beq L_151f
        cmp #$30
        beq L_151f
        jmp L_1520
    L_151f:
        rts 


    L_1520:
        dec $0208
        lda #$00
        tax 
    L_1526:
        sta $900a,x
        inx 
        cpx #$04
        bne L_1526
        lda #$0f
        sta $900e
        lda #$e0
        sta $900d
    L_1538:
        ldx $9004
        stx $900f
        inc $9000
        jsr L_1217
        dec $9000
        ldx $9004
        stx $900f
        jsr L_1217
        dec $900e
        bne L_1538
        lda #$08
        sta $900f
        jsr L_1100
        jsr L_11de
        jsr L_11b0
        jmp L_17f5
    L_1566:
        ldx $02a3
        inx 
        inc $02a3
        cpx #$03
        beq L_1574
        jmp L_14eb
    L_1574:
        ldx #$00
        stx $02a3
        jsr L_14eb
        jsr L_132e
        jsr L_14eb
        jmp L_1301
        sta $02a4
        jmp L_14ca
    L_158b:
        lda $02a5
        bne L_1596
        lda $02a4
        bne L_15cf
    L_1595:
        rts 


    L_1596:
        cmp #$06
        beq L_15b4
        cmp #$08
        beq L_15ba
        lda $9004
        ora #$80
        sta $900b
        inc $02a6
        bne L_1595
    L_15ab:
        lda #$00
        sta $900b
        sta $02a5
    L_15b3:
        rts 


    L_15b4:
        inc $900c
        beq L_15ab
        rts 


    L_15ba:
        inc $900f
        dec $900d
        bne L_15b3
        lda #$08
        sta $900f
        lda #$00
        sta $900d
        jmp L_15ab
    L_15cf:
        sta $02a5
        ldx #$0f
        stx $900e
        ldx #$00
        stx $02a6
        stx $02a4
        cmp #$06
        beq L_15e8
        cmp #$0b
        beq L_15ee
        rts 


    L_15e8:
        lda #$81
        sta $900c
        rts 


    L_15ee:
        lda #$fe
        sta $900d
        rts 


    L_15f4:
        ldx $020e
        nop 
        ldy #$03
        jsr L_1251
        ldx $020e
        beq L_1609
        cpx #$15
        beq L_1611
        jmp L_1616
    L_1609:
        lda #$00
        sta $020f
        jmp L_1616
    L_1611:
        lda #$80
        sta $020f
    L_1616:
        lda $020f
        bmi L_161f
        inx 
        jmp L_1620
    L_161f:
        dex 
    L_1620:
        cpx #$00
        beq L_162b
        cpx #$15
        beq L_1631
        jmp L_1636
    L_162b:
        stx $020f
        jmp L_1636
    L_1631:
        ldy #$80
        sty $020f
    L_1636:
        lda $9004
        and #$07
        beq L_1636
        sta $0286
        ldy #$03
        lda #$05
        stx $020e
        jmp L_123d
    L_164a:
        inc $02a7
        ldx $02a7
        cpx #$20
        beq L_1655
        rts 


    L_1655:
        ldx #$00
        stx $02a7
        jmp L_15f4
    L_165d:
        sty $01
        tay 
        stx $00
        ldx #$00
    L_1664:
        lda L_19ff + $1,x
        cmp $00
        beq L_166f
    L_166b:
        inx 
        bne L_1664
        rts 


    L_166f:
        lda L_1b00,x
        cmp $01
        beq L_1679
        jmp L_166b
    L_1679:
        stx $02
        ldx #$1f
    L_167d:
        lda $0210,x
        beq L_1686
        dex 
        bpl L_167d
        rts 


    L_1686:
        lda $02
        sta $0230,x
        tya 
        jmp L_17e1
        rts 


    L_1690:
        ldx #$1f
    L_1692:
        lda $0210,x
        bne L_169b
    L_1697:
        dex 
        bpl L_1692
        rts 


    L_169b:
        jmp L_178b
    L_169e:
        tay 
        lda L_19ff + $1,y
        sta $0340,x
        lda L_1b00,y
        sta $0360,x
        jmp L_1697
    L_16ae:
        ldx #$1f
    L_16b0:
        lda $0210,x
        bne L_16b9
    L_16b5:
        dex 
        bpl L_16b0
        rts 


    L_16b9:
        stx $02
        lda $0360,x
        tay 
        lda $0340,x
        tax 
        jsr L_1251
        ldx $02
        jmp L_16b5
    L_16cb:
        ldx #$1f
    L_16cd:
        lda $0210,x
        bne L_16d6
    L_16d2:
        dex 
        bpl L_16cd
        rts 


    L_16d6:
        stx $02
        lda $0360,x
        tay 
        lda $02b0,x
        sec 
        sbc #$05
        sta $0286
        lda $02b0,x
        pha 
        lda $0340,x
        tax 
        pla 
        jsr L_123d
        ldx $02
        jmp L_16d2
    L_16f6:
        ldx #$1f
    L_16f8:
        lda $0210,x
        bne L_1701
    L_16fd:
        dex 
        bpl L_16f8
        rts 


    L_1701:
        lda $02b0,x
        cmp #$06
        beq L_1710
        cmp #$08
        beq L_1716
        cmp #$07
        beq L_1728
    L_1710:
        inc $0230,x
        jmp L_16fd
    L_1716:
        inc $0360,x
        lda $0360,x
        cmp #$16
        bne L_16fd
        lda #$00
        sta $0210,x
        jmp L_16fd
    L_1728:
        inc $0360,x
        lda $0360,x
        cmp #$16
        bne L_173a
        lda #$00
        sta $0210,x
        jmp L_16fd
    L_173a:
        lda $0210,x
        cmp #$01
        beq L_16fd
        cmp #$02
        beq L_1757
        inc $0340,x
        lda $0340,x
        cmp #$16
        bne L_16fd
    L_174f:
        lda #$00
        sta $0210,x
        jmp L_16fd
    L_1757:
        dec $0340,x
        bpl L_16fd
        jmp L_174f
    L_175f:
        ldx #$1f
    L_1761:
        lda $0210,x
        bne L_176a
    L_1766:
        dex 
        bpl L_1761
        rts 


    L_176a:
        lda $02b0,x
        cmp #$06
        beq L_1774
        jmp L_1766
    L_1774:
        lda $0360,x
        cmp #$0e
        beq L_177e
        jmp L_1766
    L_177e:
        lda #$08
        sta $02b0,x
        lda #$01
        sta $0210,x
        jmp L_1766
    L_178b:
        lda $02b0,x
        cmp #$06
        beq L_1795
        jmp L_1697
    L_1795:
        lda $0230,x
        jmp L_169e
    L_179b:
        inc $02a8
        ldx $02a8
        cpx $61
        beq L_17a6
        rts 


    L_17a6:
        ldx #$00
        stx $02a8
        jsr L_1690
        jsr L_16ae
        jsr L_16f6
        jsr L_175f
        jsr L_1690
        jmp L_16cb
    L_17bd:
        inc $02a9
        ldx $02a9
        cpx $69
        beq L_17c8
        rts 


    L_17c8:
        ldx #$00
        stx $02a9
        lda $9004
        and #$0f
        cmp #$08
        beq L_17d7
        rts 


    L_17d7:
        ldx $020e
        ldy #$04
        lda #$06
        jmp L_165d
    L_17e1:
        sta $02b0,x
        lda #$01
        sta $0210,x
        rts 


    L_17ea:
        cmp #$1d
        beq L_17f4
        sta $02a4
        jmp L_143a
    L_17f4:
        rts 


    L_17f5:
        lda #$00
        sta $900d
        jmp L_1301
    L_17fd:
        ldx #$1f
    L_17ff:
        lda $0210,x
        bne L_1808
    L_1804:
        dex 
        bpl L_17ff
        rts 


    L_1808:
        lda $02b0,x
        cmp #$08
        beq L_1812
        jmp L_1804
    L_1812:
        lda $9004
        and #$03
        cmp #$01
        beq L_181e
        jmp L_1804
    L_181e:
        lda #$00
        sta $0210,x
        lda $0360,x
        tay 
        lda $0340,x
        stx $66
        tax 
        lda #$07
        stx $64
        sty $65
        jsr L_1862
        lda #$07
        ldx $64
        ldy $65
        jsr L_1862
        lda #$02
        sta $0210,x
        lda #$07
        ldx $64
        ldy $65
        jsr L_1862
        lda #$03
        sta $0210,x
        ldx $66
        jmp L_1804
    L_1857:
        inc $02aa
        ldx $02aa
        cpx $61
        beq L_1887
        rts 


    L_1862:
        stx $00
        sta $01
        ldx #$1f
    L_1868:
        lda $0210,x
        beq L_1873
        dex 
        bpl L_1868
        pla 
        pla 
        rts 


    L_1873:
        lda #$01
        sta $0210,x
        tya 
        sta $0360,x
        lda $01
        sta $02b0,x
        lda $00
        sta $0340,x
        rts 


    L_1887:
        lda #$00
        sta $02aa
        jmp L_17fd
    L_188f:
        inc $02ab
        beq L_1895
        rts 


    L_1895:
        ldx #$00
    L_1897:
        lda L_1dfb + $5,x
        cmp #$1d
        beq L_18a9
        lda L_1e71 + $8f,x
        cmp #$1d
        beq L_18b1
    L_18a5:
        inx 
        bne L_1897
        rts 


    L_18a9:
        lda #$20
        sta L_1dfb + $5,x
        jmp L_18a5
    L_18b1:
        lda #$20
        sta L_1e71 + $8f,x
        jmp L_18a5
    L_18b9:
        rts 


    L_18ba:
        stx $02af
        dec $61
        dec $62
        ldx $61
        cpx #$06
        beq L_18c8
        rts 


    L_18c8:
        inc $61
        inc $62
        rts 


        adc ($60,x)
    L_18cf:
        lda $0205
        cmp #$05
        beq L_18d7
    L_18d6:
        rts 


    L_18d7:
        lda $02ae
        bne L_18d6
        lda #$01
        sta $02ae
        inc $0208
        rts 


    L_18e5:
        jsr L_12b5
        inc $02af
        ldx $02af
        cpx #$20
        beq L_18f3
        rts 


    L_18f3:
        dec $69
        bne L_18f9
        inc $69
    L_18f9:
        ldx #$00
        jmp L_18ba
        rts 


    L_18ff:
        ldx #$00
        lda #$00
    L_1903:
        sta $0200,x
        inx 
        cpx #$30
        bne L_1903
        ldx #$00
    L_190d:
        sta $02a1,x
        inx 
        cpx #$20
        bne L_190d
        rts 


    L_1916:
        lda #$00
        tax 
    L_1919:
        sta $0204,x
        inx 
        cpx #$40
        bne L_1919
        jsr L_11fc
        lda #$03
        sta $0208
        lda #$18
        sta $61
        sta $62
        lda #$08
        sta $69
        lda #$00
        sta $02ac
        sta $02ab
        sta $02ae
        sta $02af
        rts 


    L_1942:
        ldx #$00
    L_1944:
        lda L_1957,x
        sta L_1e6f,x
        inx 
        cpx #$13
        bne L_1944
    L_194f:
        jsr $19d0
        cpy #$01
        bne L_194f
        rts 



    L_1957:
         .byte $90,$92,$85,$93,$93
        .byte $20,$86,$89,$92,$85,$20,$94,$8f,$20,$93,$94,$81,$92,$94,$2b,$d8
        .byte $70,$00

    L_196e:
        cld 
        inc.a $00a2
        stx $00
        lda #$0f
        sta $900e
    L_1979:
        lda L_19a5 + $2,x
        bne L_1984
        lda #$00
        sta $900c
        rts 


    L_1984:
        sta $900c
        lda #$0f
        sta $900e
        lda L_19a8,x
        sta $01
        stx $00
        tax 
    L_1994:
        jsr L_1217
        ldx $01
        dec $900e
        bne L_1994
        ldx $00
        inx 
        inx 
        jmp L_1979

    L_19a5:
         .byte $d1,$10,$87

    L_19a8:
        php 

        .byte $9f,$08,$af,$08,$c3,$08,$cf,$08,$d7,$08,$e1,$08,$e7,$08,$eb,$08
        .byte $f0,$08,$ef,$04,$ed,$04,$eb,$04,$e8,$04,$e7,$04,$e4,$04,$e1,$04
        .byte $d7,$08,$cf,$08,$c3,$20,$00,$20,$5c,$12,$c0,$00,$f0,$01,$60

    L_19d8:
        jsr L_10b7
        rts 


    L_19dc:
        lda #$b0
        sta L_1e3b + $3
        sta $1e35
        rts 



        .byte $04,$06,$08,$1a,$0a,$10,$0c,$11,$00,$00,$ab,$ff,$00,$00,$03,$02
        .byte $ff,$a0,$31

    L_19f8:
        jsr L_1100
        jsr L_11b0
        rts 



    L_19ff:
         .byte $05,$01,$01,$02,$03,$03,$03,$04
        .byte $05,$05,$05,$05,$05,$04,$03,$03,$03,$03,$03,$03,$04,$05,$06,$07
        .byte $07,$07,$07,$07,$07,$07,$07,$07,$08,$09,$09,$05,$05,$05,$05,$05
        .byte $05,$05,$05,$05,$05,$04,$03,$02,$01,$01,$07,$08,$09,$09,$09,$0a
        .byte $0b,$0b,$0b,$0c,$0d,$0d,$0d,$0e,$0f,$0f,$0f,$0f,$09,$09,$0a,$0b
        .byte $0b,$0b,$0a,$09,$09,$09,$08,$07,$07,$07,$07,$07,$07,$0b,$0b,$0a
        .byte $09,$09,$09,$09,$09,$09,$09,$09,$09,$08,$07,$06,$05,$05,$0d,$0d
        .byte $0c,$0b,$0b,$0b,$0c,$0d,$0d,$0d,$0c,$0b,$0b,$0b,$0b,$0b,$0b,$0f
        .byte $0f,$10,$11,$11,$11,$10,$0f,$0f,$0f,$10,$11,$11,$11,$11,$11,$10
        .byte $0f,$0e,$0d,$0d

    L_1a8b:
        ora ($11),y
    L_1a8d:
        ora ($11),y

        .byte $12,$13,$13,$13,$12,$11,$11,$11,$12,$13,$14,$15,$15,$15,$14,$13
        .byte $12,$11,$11,$13,$13,$12,$11,$10,$0f,$0e,$0d,$0c,$0b,$0a,$09,$08
        .byte $07,$06,$05,$04,$03,$03,$03,$03,$03,$03,$03,$02,$01,$01,$01,$02
        .byte $03,$03,$03,$02,$01,$01,$01,$01,$01,$01,$01,$02,$03,$04,$05,$06
        .byte $07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$12,$13,$13,$15,$15
        .byte $14,$13,$13,$13,$14,$15,$15,$15,$15,$15,$15,$15,$15
        .fill $13, $1
        .byte $93

    L_1b00:
        .byte $04
        .byte $05,$05,$05,$06,$07,$07,$07,$08,$09,$0a,$0b,$0b,$0b,$0c,$0d,$0e
        .byte $04,$05,$05,$05,$05,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0d,$0d
        .byte $0e,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0d,$0d,$0d,$0d,$0e
        .byte $04,$05,$05,$06,$07,$07,$07,$08,$09,$09,$09,$0a,$0b,$0b,$0b,$0c
        .byte $0d,$0e,$04,$05,$05,$05,$06,$07,$07,$07,$08,$09,$09,$09,$0a,$0b
        .byte $0c,$0d,$0e,$04,$05,$05,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0d
        .byte $0d,$0d,$0d,$0e,$04,$05,$05,$05,$06,$07,$07,$07,$08,$09,$09,$09
        .byte $0a,$0b,$0c,$0d,$0e,$04,$05,$05,$05,$06,$07,$07,$07,$08,$09,$09
        .byte $09,$0a,$0b,$0c,$0d,$0d,$0d,$0d,$0d,$0e,$04,$05,$06,$07,$07,$07
        .byte $08,$09,$09,$09,$0a,$0b,$0b,$0b,$0b,$0b,$0c,$0d,$0d,$0d,$0d,$0d
        .byte $0e,$04
        .fill $11, $5
        .byte $06,$07,$08,$09,$0a,$0b,$0b,$0b,$0a,$09,$09,$09,$08,$07,$07,$07
        .byte $08,$09,$0a,$0b,$0c
        .fill $13, $d
        .byte $0e,$04,$05,$05,$05,$06,$07,$07,$07,$08,$09,$0a,$0b,$0c,$0d,$0e
        .fill $13, $5
        .byte $2a,$ff,$81,$81,$81,$81,$81,$81,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
        .byte $ff,$18,$18,$00,$e7,$e7,$00,$18,$18

    L_1c18:
        .byte $92
        .byte $ba,$54,$38,$10,$54,$6c,$44,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$7e
        .byte $bd,$ff,$7e,$24,$18,$3c,$c3,$c3,$24,$18,$18,$bd,$5a,$3c,$18,$00
        .byte $30,$10,$7a,$5e,$08,$0c,$00,$00,$42,$3c,$3c,$3c,$18,$18,$18,$81
        .byte $5a,$24,$18,$24,$24,$5a,$00,$7e,$24,$18,$7e,$5a,$7e,$42,$bd,$24
        .byte $42,$a5,$3c,$3c,$a5,$42,$24,$fe,$fe,$30,$30,$30,$30,$30,$30,$c6
        .byte $c6,$c6,$fe,$fe,$c6,$c6,$c6,$c6,$c6,$c6,$c6,$c6,$c6,$fe,$fe,$f6
        .byte $f6,$f6,$d6,$d6,$de,$de,$de,$fe,$fe,$66,$66,$66,$66,$fe,$fe,$fe
        .byte $fe,$c0,$f8,$f8,$c0,$fe,$fe,$fe,$fe,$c6,$fe,$fe,$fe,$c8,$c6,$fe
        .byte $fe,$c0,$c0,$f8,$f8,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$fe,$fe,$fe
        .byte $fe,$c6,$c6,$fe,$fe,$c6,$c6,$fe,$fe,$c0,$fe,$fe,$06,$fe,$fe,$c6
        .byte $c6,$c6,$fe,$fe,$c6,$c6,$c6,$00,$75,$55,$77,$51,$77,$00,$00,$7e
        .byte $22,$22,$22,$22,$22,$7e,$00,$00,$00,$00,$ee,$aa,$aa,$ea,$00,$00
        .byte $06,$19,$60,$80,$80,$00,$00,$00,$01,$82,$64,$18,$00,$00,$00,$95
        .byte $42,$24,$00,$81,$24,$42,$89,$00,$00,$00,$00,$00,$00,$00,$00,$7f
        .byte $37,$fc,$57,$7d,$71,$f0,$77,$00,$00,$00,$00,$00,$00,$00,$00,$00
        .byte $77,$44,$74,$14,$77,$00,$00,$00,$77,$55,$57,$56,$75

    L_1d16:
        .byte $00,$00,$00,$64,$42,$6f,$42,$64,$00,$00,$00
        .byte $55,$55,$75,$55,$55,$00,$00,$00,$d4,$14,$1d,$54,$d4,$00,$00,$00
        .byte $40,$20,$f0,$20,$40,$00,$00,$00,$7c,$82,$ba,$a2,$ba,$82,$7c,$00
        .byte $ff,$20,$2d,$29,$2d,$29,$2d,$00,$00,$00,$b7,$55,$57,$14,$14,$00
        .byte $00,$00,$77,$25,$27,$25,$25,$00,$00,$00,$75,$25,$25,$25,$25,$00
        .byte $00,$00,$dc,$54,$54,$54,$d4,$00,$00,$00,$2e,$2a,$2e,$22,$2e,$00
        .byte $00,$00,$ee,$a2,$ee,$a2,$ee

    L_1d78:
        ora ($01,x)

        .byte $00,$00,$00,$00,$00,$00

    L_1d80:
        bit $74
        tay 

        .byte $70,$20,$a8,$d8,$88

    L_1d88:
        .byte $20,$20,$20,$20,$20,$20
        .byte $20,$20,$43

    L_1d91:
        ora L_1d16 + $a
        jsr $919d
        ora ($9d),y
        sta $9191,x
        sta ($91),y
        sta ($20),y
        ora L_1120,x
        sta $201d,x
        ora L_1d16 + $7,x
        ora $919d,x
        jsr $9d91
        sta ($20),y
        ora L_1d16 + $7,x
        jsr $119d
        jsr $919d
        sta $9d9d,x
        sta $2011,x
        ora $2011,x
        sta $2011,x
        sta $2011,x
        sta $2011,x
        ora ($11),y
        sta $2091,x
        sta ($9d),y
        sta $2091,x
        sta $119d,x
        jsr $9191
        ora $111d,x
        jsr $2011
        ora ($9d),y
        sta ($9d),y
        sta $9d9d,x
        sta $2011,x
        sta $2011,x
        sta $2091,x
        ora L_1d91,x
        ora $119d,x
        jsr $911d

    L_1dfb:
         .byte $1d,$20,$9d,$11,$58,$8e,$b1,$e4,$7a

    L_1e04:
        clv 
        cli 

        .byte $ef,$fe,$20,$02,$01,$13,$09,$03,$20,$16,$32,$20,$2a,$2a,$2a,$2a

    L_1e16:
        .fill $15, $20
        .byte $20,$33,$35

    L_1e2e:
        .byte $38,$33

    L_1e30:
        jsr $1902

        .byte $14,$05,$13,$20,$06,$12

    L_1e39:
        .byte $05,$05

    L_1e3b:
        .fill $1b, $20
        .byte $20,$20,$12,$05,$01,$04,$19,$2e,$20,$20,$20,$20,$20,$20,$20,$20
        .byte $20,$20,$20,$20,$20,$20,$20,$20,$12

    L_1e6f:
        ora $0e,x

    L_1e71:


         .fill $189, $20
