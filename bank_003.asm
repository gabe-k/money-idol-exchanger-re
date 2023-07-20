; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    push de
    ld d, b
    ld l, b
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    sub d
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, c
    add a
    ld de, $402a
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    add hl, bc
    pop de
    ld b, $07

jr_003_4023:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_4023

    ret


    inc a
    ld b, b
    inc a
    ld b, a
    inc a
    ld c, [hl]
    inc a
    ld d, l
    inc a
    ld e, h
    inc a
    ld h, e
    inc a
    ld l, d
    inc a
    ld [hl], c
    inc a
    ld a, b
    dec b
    ld bc, $0502
    dec b
    inc bc
    inc bc
    add hl, bc
    ld bc, $0604
    inc b
    inc bc
    dec b
    ld bc, $0303
    inc b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [bc], a
    ld bc, $0301
    dec b
    dec b
    ld bc, $0405
    ld b, $01
    inc b
    ld bc, $0302
    inc bc
    inc b
    ld bc, $0303
    ld bc, $0402
    dec b
    ld [$0504], sp
    ld [bc], a
    ld bc, $0206
    ld bc, $0403
    inc bc
    ld [bc], a
    ld bc, $0405
    ld bc, $0503
    ld bc, $0103
    ld [bc], a
    ld bc, $0504
    inc bc
    ld b, $04
    dec b
    inc bc
    ld bc, $0402
    ld [bc], a
    inc bc
    inc bc
    inc b
    dec b
    ld bc, $0303
    dec b
    inc b
    dec b
    ld b, $04
    ld bc, $0802
    inc bc
    ld bc, $0305
    dec b
    ld bc, $0201
    inc bc
    inc b
    dec b
    inc bc
    inc b
    inc bc
    ld bc, $0203
    ld b, $04
    ld bc, $0105
    inc b
    inc bc
    inc bc
    dec b
    inc bc
    ld bc, $0503
    ld [bc], a
    ld bc, $0401
    dec b
    ld b, $04
    add hl, bc
    inc bc
    inc bc
    ld [bc], a
    dec b
    inc b
    ld bc, $0201
    inc bc
    inc b
    ld bc, $0305
    inc bc
    dec b
    ld [bc], a
    ld bc, $0501
    inc bc
    inc b
    ld [bc], a
    ld b, $03
    inc b
    ld bc, $0601
    inc bc
    ld [bc], a
    dec b
    dec b
    inc b
    ld [bc], a
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld bc, $0103
    ld [bc], a
    inc b
    inc bc
    ld bc, $0305
    dec b
    ld b, $01
    inc bc
    ld [bc], a
    ld [$0401], sp
    ld [bc], a
    ld bc, $0405
    inc bc
    inc b
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    dec b
    ld bc, $0101
    dec b
    ld b, $03
    dec b
    ld [bc], a
    inc b
    ld [bc], a
    dec b
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0204
    ld bc, $0503
    ld bc, $0508
    inc bc
    inc bc
    dec b
    dec b
    ld b, $01
    dec b
    ld [bc], a
    inc bc
    inc b
    ld bc, $0302
    ld bc, $0103
    dec b
    ld [bc], a
    ld bc, $0106
    inc bc
    dec b
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0303
    dec b
    dec b
    inc b
    ld bc, $0503
    ld bc, $0302
    ld bc, $0106
    dec b
    inc b
    add hl, bc
    ld [bc], a
    ld bc, $0303
    inc b
    ld [bc], a
    dec b
    dec b
    dec b
    inc b
    ld [bc], a
    ld bc, $0303
    ld bc, $0101
    inc bc
    inc b
    dec b
    ld [bc], a
    ld b, $03
    ld bc, $0302
    dec b
    ld bc, $0302
    inc b
    dec b
    inc bc
    inc b
    ld bc, $0601
    inc bc
    inc b
    ld [bc], a
    dec b
    inc bc
    ld [$0305], sp
    dec b
    inc bc
    ld bc, $0105
    ld bc, $0401
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    inc bc
    ld b, $03
    inc bc
    ld bc, $0204
    dec b
    dec b
    inc bc
    ld bc, $0105
    inc b
    inc bc
    ld [bc], a
    inc b
    dec b
    dec b
    ld bc, $0106
    ld bc, $0302
    ld [$0503], sp
    inc b
    ld bc, $0105
    ld [bc], a
    dec b
    ld bc, $0102
    inc b
    inc bc
    inc b
    inc b
    inc bc
    ld b, $03
    dec b
    dec b
    ld bc, $0103
    inc bc
    dec b
    ld bc, $0304
    inc bc
    dec b
    ld bc, $0103
    ld [bc], a
    dec b
    add hl, bc
    inc b
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld bc, $0201
    inc b
    inc bc
    inc bc
    dec b
    inc b
    ld [bc], a
    inc bc
    dec b
    ld bc, $0601
    dec b
    ld bc, $0403
    dec b
    ld bc, $0205
    inc bc
    inc b
    dec b
    ld bc, $0105
    inc b
    inc bc
    dec b
    dec b
    inc bc
    dec b
    ld b, $01
    ld [bc], a
    inc bc
    ld [$0501], sp
    inc bc
    inc bc
    inc b
    dec b
    inc bc
    ld bc, $0403
    ld bc, $0203
    ld bc, $0504
    dec b
    ld bc, $0304
    ld b, $05
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0302
    dec b
    dec b
    ld bc, $0303
    inc b
    inc b
    inc bc
    dec b
    ld bc, $0308
    ld b, $03
    ld bc, $0504
    ld [bc], a
    ld bc, $0103
    ld [bc], a
    dec b
    ld bc, $0205
    inc bc
    ld bc, $0605
    inc bc
    inc bc
    inc b
    dec b
    dec b
    dec b
    ld bc, $0102
    inc bc
    inc b
    ld [bc], a
    ld bc, $0303
    ld [bc], a
    inc b
    dec b
    inc b
    add hl, bc
    dec b
    inc b
    inc bc
    ld b, $01
    inc bc
    dec b
    ld bc, $0105
    ld bc, HeaderLogo
    ld bc, $0302
    inc b
    dec b
    inc bc
    ld bc, $0403
    ld b, $04
    dec b
    ld [bc], a
    ld bc, $0103
    ld [bc], a
    inc bc
    ld bc, $0401
    inc bc
    dec b
    dec b
    ld [bc], a
    inc bc
    inc bc
    ld b, $01
    ld [bc], a
    dec b
    inc b
    ld [$0303], sp
    ld bc, $0301
    dec b
    inc b
    ld bc, $0502
    dec b
    inc b
    inc bc
    inc bc
    dec b
    ld bc, $0601
    ld [bc], a
    inc bc
    dec b
    inc b
    ld [bc], a
    inc bc
    ld bc, $0501
    inc b
    ld bc, $0504
    inc bc
    ld bc, $0102
    inc bc
    ld bc, $0805
    dec b
    inc b
    ld b, $03
    ld bc, $0401
    inc bc
    dec b
    dec b
    ld bc, $0504
    ld [bc], a
    inc bc
    ld bc, $0105
    ld [bc], a
    ld bc, $0505
    inc bc
    ld bc, $0106
    inc bc
    ld bc, $0303
    inc b
    dec b
    inc bc
    ld [bc], a
    ld bc, $0505
    inc bc
    ld bc, $0101
    dec b
    inc b
    add hl, bc
    ld b, $03
    ld bc, $0103
    ld [bc], a
    inc bc
    dec b
    inc b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc b
    ld [bc], a
    dec b
    inc b
    ld bc, $0601
    inc bc
    dec b
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0304
    ld bc, $0505
    ld [bc], a
    dec b
    inc bc
    inc b
    dec b
    inc bc
    inc b
    ld b, $04
    ld [$0501], sp
    inc bc
    ld bc, $0505
    inc bc
    ld bc, $0301
    inc b
    inc bc
    inc bc
    ld bc, $0304
    dec b
    ld [bc], a
    ld bc, $0603
    dec b
    dec b
    ld [bc], a
    inc bc
    dec b
    inc b
    ld bc, $0401
    ld bc, $0505
    inc bc
    ld bc, $0303
    dec b
    ld bc, $0502
    ld [$0106], sp
    inc bc
    inc bc
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    inc bc
    dec b
    inc b
    ld [bc], a
    inc bc
    ld bc, $0205
    inc b
    inc bc
    dec b
    ld bc, $0604
    inc bc
    inc bc
    ld bc, $0304
    inc bc
    ld [bc], a
    inc b
    dec b
    dec b
    ld [bc], a
    ld bc, $0403
    ld b, $04
    dec b
    add hl, bc
    ld bc, $0305
    ld bc, $0103
    dec b
    dec b
    inc bc
    ld bc, $0302
    ld [bc], a
    inc b
    ld bc, $0301
    ld bc, $0305
    ld bc, $0105
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld b, $05
    inc bc
    ld [bc], a
    ld bc, $0403
    dec b
    dec b
    inc bc
    ld bc, $0303
    ld bc, $0304
    dec b
    ld [bc], a
    ld bc, $0608
    dec b
    dec b
    dec b
    inc bc
    ld [bc], a
    dec b
    inc b
    ld [bc], a
    ld bc, $0501
    dec b
    inc bc
    ld bc, $0301
    ld bc, $0302
    ld b, $05
    inc bc
    ld [bc], a
    ld bc, $0103
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0302
    ld bc, $0801
    inc b
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld b, $03
    ld [bc], a
    inc b
    dec b
    ld bc, $0203
    inc bc
    ld bc, $0305
    inc b
    dec b
    ld bc, HeaderLogo
    inc bc
    inc b
    ld [bc], a
    dec b
    ld bc, $0306
    ld [bc], a
    ld bc, $0305
    inc b
    ld bc, $0101
    dec b
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0406
    dec b
    add hl, bc
    dec b
    inc bc
    ld bc, $0503
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    inc bc
    ld bc, $0501
    inc bc
    inc b
    dec b
    inc b
    dec b
    ld b, $03
    ld bc, $0102
    inc bc
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    dec b
    dec b
    inc bc
    inc b
    ld bc, $0103
    ld [bc], a
    dec b
    inc b
    inc bc
    ld b, $02
    ld [$0103], sp
    ld [bc], a
    dec b
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc bc
    dec b
    inc b
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld bc, $0504
    inc bc
    ld [bc], a
    ld bc, $0501
    inc bc
    inc b
    ld [bc], a
    ld b, $01
    ld [bc], a
    dec b
    inc b
    dec b
    ld bc, $0203
    dec b
    inc bc
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0605
    ld [bc], a
    dec b
    ld [$0204], sp
    inc bc
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0204
    dec b
    dec b
    dec b
    ld bc, $0301
    inc bc
    ld [bc], a
    inc b
    ld b, $03
    dec b
    dec b
    inc bc
    ld bc, $0103
    ld [bc], a
    inc b
    ld bc, $0402
    inc bc
    inc bc
    add hl, bc
    ld bc, $0502
    inc bc
    ld b, $02
    dec b
    ld b, $01
    ld [bc], a
    inc bc
    inc b
    inc bc
    dec b
    dec b
    inc bc
    ld bc, $0102
    inc bc
    ld [bc], a
    dec b
    inc bc
    ld [bc], a
    dec b
    inc bc
    inc b
    ld b, $01
    ld [bc], a
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0305
    ld bc, $0305
    inc b
    ld bc, $0302
    dec b
    inc bc
    ld [bc], a
    ld bc, $0402
    dec b
    ld b, $02
    ld [$0106], sp
    ld bc, $0303
    dec b
    dec b
    ld bc, $0302
    inc b
    inc bc
    dec b
    ld b, $01
    inc bc
    dec b
    dec b
    ld [bc], a
    ld bc, $0203
    inc b
    ld bc, $0601
    dec b
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0204
    inc bc
    inc bc
    dec b
    dec b
    dec b
    ld bc, $0201
    ld b, $03
    ld [$0402], sp
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0203
    dec b
    inc bc
    inc b
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0301
    ld b, $02
    dec b
    ld bc, $0505
    inc bc
    inc b
    ld bc, $0204
    dec b
    inc bc
    ld b, $01
    dec b
    ld bc, $0305
    dec b
    inc bc
    inc b
    ld [bc], a
    inc bc
    add hl, bc
    inc bc
    dec b
    dec b
    inc bc
    inc b
    dec b
    ld bc, $0501
    inc b
    ld bc, $0201
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0503
    inc b
    inc bc
    ld [bc], a
    ld b, $01
    ld [bc], a
    inc bc
    dec b
    dec b
    inc bc
    inc b
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0201
    inc bc
    dec b
    ld [bc], a
    inc bc
    dec b
    ld [$0206], sp
    inc b
    ld bc, $0504
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    ld bc, $0505
    inc b
    inc bc
    dec b
    inc bc
    dec b
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld bc, $0506
    inc b
    ld [bc], a
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0101
    inc bc
    ld bc, $0505
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    add hl, bc
    dec b
    ld b, $02
    inc b
    inc bc
    dec b
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    inc b
    ld bc, $0503
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0502
    dec b
    ld bc, $0501
    ld [bc], a
    inc bc
    inc b
    ld b, $05
    ld bc, $0504
    inc bc
    ld bc, $0102
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    ld b, $03
    ld [bc], a
    ld bc, $0805
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    ld bc, $0105
    inc bc
    dec b
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0306
    inc bc
    dec b
    inc b
    inc bc
    dec b
    ld bc, $0103
    dec b
    inc bc
    inc bc
    inc b
    dec b
    ld [bc], a
    ld bc, $0301
    ld [$0303], sp
    ld bc, $0405
    ld b, $01
    ld [bc], a
    dec b
    inc bc
    dec b
    ld bc, $0103
    ld bc, $0303
    dec b
    inc bc
    ld [bc], a
    inc b
    dec b
    dec b
    ld [bc], a
    ld bc, $0306
    inc bc
    ld bc, $0503
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    inc b
    ld bc, $0401
    ld b, $03
    inc b
    add hl, bc
    ld bc, HeaderLogo
    dec b
    ld bc, $0501
    inc bc
    ld [bc], a
    dec b
    inc b
    ld bc, $0405
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld b, $03
    ld bc, $0305
    inc b
    dec b
    inc bc
    ld bc, $0401
    dec b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0301
    inc bc
    dec b
    ld b, $03
    ld bc, $0302
    dec b
    dec b
    inc b
    dec b
    inc b
    ld [bc], a
    ld bc, $0301
    inc bc
    ld bc, $0302
    inc b
    dec b
    ld b, $01
    ld b, $05
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    ld bc, $0504
    ld bc, $0302
    ld bc, $0302
    inc b
    dec b
    ld bc, $0403
    inc bc
    ld bc, $0605
    inc b
    ld [$0302], sp
    inc b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0504
    dec b
    ld b, $03
    ld bc, $0301
    inc b
    inc bc
    ld [bc], a
    inc b
    ld bc, $0403
    ld [bc], a
    inc bc
    dec b
    ld b, $02
    ld bc, $0501
    dec b
    inc b
    ld bc, $0103
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [bc], a
    inc bc
    dec b
    ld [$0603], sp
    ld [bc], a
    ld bc, $0201
    ld bc, $0505
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld bc, $0302
    inc b
    inc bc
    inc bc
    dec b
    ld bc, $0203
    dec b
    inc bc
    ld bc, $0405
    inc bc
    ld b, $04
    ld [bc], a
    ld bc, $0503
    dec b
    ld bc, $0303
    inc b
    ld bc, $0402
    dec b
    inc b
    dec b
    ld b, $01
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc bc
    inc b
    ld bc, $0505
    inc bc
    ld bc, $0306
    inc bc
    inc bc
    ld bc, $0402
    dec b
    inc bc
    inc b
    ld bc, $0301
    inc bc
    dec b
    dec b
    dec b
    dec b
    inc bc
    ld [bc], a
    ld bc, $0401
    ld b, $01
    ld bc, $0303
    inc b
    add hl, bc
    ld bc, $0203
    dec b
    inc b
    inc bc
    ld bc, $0403
    ld bc, $0503
    dec b
    inc b
    ld bc, $0201
    inc bc
    ld b, $04
    dec b
    inc bc
    inc bc
    inc b
    dec b
    ld [bc], a
    ld bc, $0301
    inc b
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    dec b
    ld [bc], a
    ld b, $08
    inc bc
    ld bc, $0305
    inc bc
    ld bc, HeaderLogo
    inc bc
    inc bc
    ld bc, $0402
    inc bc
    dec b
    ld [bc], a
    ld bc, $0106
    inc bc
    inc b
    dec b
    dec b
    ld [bc], a
    inc bc
    inc b
    dec b
    inc bc
    ld bc, $0305
    dec b
    ld [bc], a
    ld b, $04
    dec b
    ld [bc], a
    ld bc, $0301
    inc b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    ld bc, $0203
    dec b
    ld bc, $0105
    inc b
    ld [bc], a
    ld b, $08
    inc b
    ld [bc], a
    inc bc
    inc bc
    inc b
    ld bc, $0102
    ld bc, $0303
    ld bc, $0504
    inc bc
    ld [bc], a
    inc b
    ld bc, $0302
    inc bc
    dec b
    dec b
    ld b, $01
    inc b
    inc bc
    ld bc, $0402
    ld bc, $0308
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    inc b
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    inc bc
    inc bc
    inc b
    dec b
    inc b
    inc bc
    ld [$0101], sp
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0801
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    inc b
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0403], sp
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0401
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    inc bc
    inc bc
    inc b
    dec b
    inc b
    inc bc
    ld [$0101], sp
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0801
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    inc b
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    inc b
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0102], sp
    ld bc, $0103
    ld bc, $0402
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0301
    ld bc, $0201
    ld [$0402], sp
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0209
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0902
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld [$0502], sp
    inc b
    ld bc, $0502
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0204
    inc b
    ld bc, $0204
    add hl, bc
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld [$0502], sp
    inc b
    ld bc, $0502
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0204
    inc b
    ld bc, $0204
    ld [$0105], sp
    dec b
    inc bc
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    add hl, bc
    ld [bc], a
    dec b
    inc b
    ld bc, $0502
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0204
    inc b
    ld bc, $0204
    ld [$0105], sp
    dec b
    inc bc
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld [$0502], sp
    inc b
    ld bc, $0502
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0204
    inc b
    ld bc, $0204
    add hl, bc
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld [$0502], sp
    inc b
    ld bc, $0502
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0902
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0209
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0902
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0209
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0902
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0209
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0902
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0209
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0902
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0209
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0902
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0209
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0902
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0209
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0902
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0208
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0209
    inc b
    ld bc, $0204
    inc b
    dec b
    ld bc, $0305
    dec b
    ld bc, $0505
    ld bc, $0305
    dec b
    ld bc, $0405
    ld [bc], a
    inc b
    ld bc, $0204
    inc b
    ld bc, $0502
    inc b
    ld bc, $0802
    ld bc, $0503
    inc bc
    ld bc, $0503
    dec b
    inc bc
    ld bc, $0503
    inc bc
    ld bc, $0405
    ld bc, $0502
    inc b
    ld bc, $0401
    dec b
    ld [$0405], sp
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0303
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    add hl, bc
    dec b
    inc b
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    inc bc
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0504
    ld [$0405], sp
    ld bc, $0301
    ld [bc], a
    ld bc, $0302
    ld bc, $0302
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    inc bc
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0108
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0106
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0203
    inc b
    inc bc
    dec b
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0503
    inc b
    ld [$0502], sp
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    inc b
    dec b
    inc bc
    ld bc, $0102
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    dec b
    inc bc
    ld bc, $0108
    inc bc
    dec b
    ld bc, $0305
    inc b
    inc bc
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    dec b
    ld bc, $0503
    inc bc
    ld bc, HeaderLogo
    inc bc
    dec b
    ld bc, $0205
    add hl, bc
    inc b
    dec b
    ld bc, $0203
    inc b
    inc bc
    ld [bc], a
    inc b
    inc bc
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld bc, $0408
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [$0505], sp
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    add hl, bc
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    ld [$0505], sp
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    add hl, bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [$0505], sp
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    add hl, bc
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [$0505], sp
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    add hl, bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    ld [$0505], sp
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    add hl, bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [$0505], sp
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    add hl, bc
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    ld [$0204], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    add hl, bc
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [$0402], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    add hl, bc
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [$0204], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    add hl, bc
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    ld [$0204], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    add hl, bc
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [$0402], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    add hl, bc
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [$0204], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    add hl, bc
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    ld [$0204], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    add hl, bc
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [$0402], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    add hl, bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [$0505], sp
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    add hl, bc
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [$0505], sp
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    add hl, bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    ld [$0505], sp
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    add hl, bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [$0505], sp
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    add hl, bc
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [$0505], sp
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    add hl, bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    ld [$0505], sp
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    add hl, bc
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [$0204], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    add hl, bc
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    ld [$0204], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    add hl, bc
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [$0402], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    add hl, bc
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [$0204], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    add hl, bc
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    ld [$0204], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    add hl, bc
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [$0402], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    add hl, bc
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [$0204], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    add hl, bc
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    ld [$0204], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    add hl, bc
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [$0402], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    add hl, bc
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [$0204], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    add hl, bc
    dec b
    dec b
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    dec b
    dec b
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    inc b
    ld bc, $0105
    inc bc
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0305
    ld [bc], a
    inc b
    inc b
    ld bc, $0103
    dec b
    inc bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0305
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    dec b
    ld bc, $0502
    ld [bc], a
    inc bc
    ld bc, $0503
    ld bc, $0304
    ld bc, $0105
    inc bc
    dec b
    inc bc
    ld bc, $0305
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld bc, $0305
    inc b
    ld bc, $0503
    inc bc
    ld bc, $0205
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0508
    ld bc, $0103
    dec b
    inc bc
    inc b
    ld bc, $0203
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302
    ld bc, $0502
    ld bc, $0403
    dec b
    dec b
    inc b
    ld bc, $0503
    ld [bc], a
    ld bc, $0203
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld bc, $0304
    ld bc, $0504
    ld bc, $0203
    dec b
    dec b
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0403
    inc bc
    dec b
    ld bc, $0302

DS 196, $FF
