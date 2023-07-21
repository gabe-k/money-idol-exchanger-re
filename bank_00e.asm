; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    nop
    nop
    nop
    nop

Jump_00e_4004:
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00e_400a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_00e_4036

    add b
    ld c, b
    inc bc
    nop

jr_00e_4036:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld b, $00
    jr nz, jr_00e_404b

    nop
    nop
    nop
    nop

jr_00e_404b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld h, b
    nop
    nop
    nop
    ld b, $00
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld h, b
    nop
    nop
    nop
    ld b, $00
    ld h, b
    ld [bc], a
    nop
    ld b, b
    inc b
    nop
    ldh [rNR11], a
    ld bc, $0110
    nop
    ld h, b
    inc b
    nop
    nop
    inc b
    nop
    ldh [rDIV], a
    nop
    nop
    nop
    nop
    ld h, b
    ld b, $00
    ld h, b
    ld b, $00
    ld h, b
    ld b, $00
    nop
    nop
    nop
    ld h, b
    ld b, $00
    nop
    jr nz, jr_00e_40bf

    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00e_40bf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    add hl, bc
    nop
    sub b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    jr nz, jr_00e_40ee

jr_00e_40ee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    add c
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    sub b
    nop

Call_00e_4112:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    inc b
    nop
    jr nz, jr_00e_4150

    nop
    db $10

jr_00e_4150:
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $8820
    inc b
    nop
    jr nz, jr_00e_4162

    nop
    db $10

jr_00e_4162:
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    inc b
    nop
    jr nz, jr_00e_4174

    nop
    db $10

jr_00e_4174:
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$4002], sp
    sub b
    inc b
    nop
    jr nz, jr_00e_4186

    nop
    db $10

jr_00e_4186:
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    inc b
    add b
    sub b
    add hl, bc
    ld bc, $0020
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld b, b
    ld a, [bc]
    ld bc, $6010
    ret z

    inc bc
    ccf
    add b
    ld b, b
    inc b
    nop
    ld b, b
    ld a, a
    ret nz

    nop
    nop
    nop
    ld b, b
    inc b
    nop
    ld hl, sp+$10
    add d
    ld [$0001], sp
    and b
    inc b
    nop
    jr nz, jr_00e_41c0

jr_00e_41c0:
    nop
    nop
    nop
    nop
    ld bc, $1000
    ld [bc], a
    inc e
    jp nz, $4330

    inc b
    ret z

    sub b
    ld a, [bc]
    nop
    ret nz

    ld [$0000], sp
    nop
    ldh a, [$30]
    call nz, $8002
    jr jr_00e_41de

    add b

jr_00e_41de:
    jr jr_00e_41e1

    ld b, b

jr_00e_41e1:
    inc hl
    inc c
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ccf
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld [bc], a
    nop
    ld b, b
    ld [$0001], sp
    jr nz, jr_00e_422a

    nop
    add b
    db $10
    ld [bc], a

jr_00e_422a:
    nop
    ld b, b
    ld [$8000], sp
    inc b
    nop
    jr nz, jr_00e_4234

    nop

jr_00e_4234:
    ld [$4000], sp
    ld [bc], a
    nop
    stop
    add b
    inc b
    nop
    jr nz, jr_00e_4241

    nop

jr_00e_4241:
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld [$0240], sp
    db $10
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    add hl, bc

jr_00e_4253:
    nop
    sub b
    add hl, bc
    nop
    sub b
    add hl, bc
    nop
    sub b
    add hl, bc
    nop
    sub b
    add hl, bc
    nop
    sub b
    add hl, bc
    nop
    sub b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $66
    ld h, [hl]
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc c
    jr nc, jr_00e_4253

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00e_42a1

    nop
    ld h, b
    ld b, $00

jr_00e_42a1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld b, $00
    jr nz, jr_00e_42b5

    nop
    nop
    nop
    nop

jr_00e_42b5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $2420
    inc bc
    ld h, b
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    ld b, $c0
    inc h
    inc b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$06

    nop
    add b
    ld [$0001], sp
    db $10
    ld bc, $1000
    nop
    add b
    ld [$4000], sp
    ld [bc], a
    ld b, b
    ld [bc], a
    nop
    db $10
    ld bc, $0800
    nop
    add b
    ld [$8000], sp
    db $10
    ld bc, $2000
    inc b
    nop
    nop
    jr nz, @+$06

    nop
    add b
    ld [$8000], sp
    ld [$8000], sp
    ld [$8000], sp
    ld [$4000], sp
    ld [bc], a
    ld b, b
    ld [bc], a
    nop
    db $10
    ld bc, $1000
    ld bc, $1000
    ld bc, $1000
    ld bc, $2000
    inc b
    nop
    nop
    ldh [$08], a
    nop
    add b
    ld [$8000], sp
    ld [$8000], sp
    ld [$8000], sp
    ld [$8000], sp
    ld c, $70
    ld bc, $1000
    ld bc, $1000
    ld bc, $1000
    ld bc, $1000
    ld bc, $1000
    rlca
    nop
    nop
    jr nz, jr_00e_4355

    nop
    ld b, b
    inc b
    nop

jr_00e_4355:
    ld b, b
    ld [$8000], sp
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    ld [bc], a
    ld b, b
    ld [bc], a
    nop
    jr nz, @+$04

    nop
    jr nz, jr_00e_4369

    nop

jr_00e_4369:
    db $10
    ld [bc], a
    nop
    jr nz, @+$04

    nop
    jr nz, jr_00e_4375

    nop
    nop
    jr nz, @+$06

jr_00e_4375:
    nop
    ld b, b
    ld [$8000], sp
    db $10
    ld bc, $0800
    nop
    add b
    inc b
    nop
    ld b, b
    ld [bc], a
    ld b, b
    ld [bc], a
    nop
    jr nz, jr_00e_438a

    nop

jr_00e_438a:
    stop
    add b
    ld [$0001], sp
    db $10
    ld [bc], a
    nop
    jr nz, jr_00e_4399

    nop
    nop
    sub b
    ld [de], a

jr_00e_4399:
    ld bc, $2420
    ld [bc], a
    ld b, b
    ld c, b
    inc b
    add b
    inc h
    ld [bc], a
    ld b, b
    ld [de], a
    ld bc, $0920
    sub b
    inc b
    add b
    ld c, b
    ld [bc], a
    ld b, b
    inc h
    ld bc, $1220
    ld [bc], a
    ld b, b
    inc h
    inc b
    add b
    ld c, b
    add hl, bc
    nop
    nop
    ldh [$08], a
    nop
    add b
    ld [$8000], sp
    ld [$8000], sp
    ld [$8000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1000
    ld bc, $1000
    ld bc, $1000
    ld bc, $1000
    rlca
    nop
    inc bc
    ldh [rNR43], a
    ld [bc], a
    ldh [$28], a
    ld [bc], a
    add b
    jr z, @+$04

    add b
    jr z, @+$04

    add b
    jr c, jr_00e_43ee

jr_00e_43ee:
    nop
    nop
    nop
    nop
    nop
    inc e
    ld bc, $1440
    ld bc, $1440
    ld bc, $1440
    rlca
    ld b, b
    ld b, h
    rlca
    ret nz

    ld bc, $1ce0
    ld bc, $1880
    ld bc, $1000
    ld bc, $1000
    ld bc, $1880
    ld bc, $1ec0
    ld a, b
    inc bc
    add b
    jr jr_00e_441a

    add b

jr_00e_441a:
    ld [$8000], sp
    ld [$8000], sp
    jr jr_00e_4423

    add b

jr_00e_4423:
    jr c, jr_00e_442c

    add b
    nop
    nop
    nop
    inc b
    nop
    ld b, b

jr_00e_442c:
    inc b
    inc bc
    ld hl, sp+$04
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    inc b
    nop
    ld b, b
    ccf
    add b
    ld b, b
    inc b
    nop
    ld b, b
    nop
    inc bc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0908
    nop
    ld h, b
    ld b, $00
    sub b
    db $10
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld b, $00
    nop
    nop
    inc bc
    db $fc
    nop
    nop
    nop
    ld b, $00
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ret nz

    nop
    nop
    inc bc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    db $10
    ccf
    ret nz

    jr nz, @+$06

    inc bc
    db $fc
    ld [$0001], sp
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    add b
    ld h, b
    jr @+$08

    nop
    jr jr_00e_44af

jr_00e_44af:
    ld h, b
    ld bc, $0680
    nop
    nop
    nop
    nop
    ld b, $00
    jr jr_00e_44bb

jr_00e_44bb:
    ld h, b
    ld bc, $0680
    ld bc, $6080
    jr jr_00e_44ca

    nop
    nop
    nop
    nop
    nop
    nop

jr_00e_44ca:
    nop
    ld bc, $e0c0
    jr nc, jr_00e_44d0

jr_00e_44d0:
    ldh [rSB], a
    ret nz

    nop
    ccf
    ret nz

    nop
    ccf
    ret nz

    nop
    nop
    nop
    nop
    jr c, jr_00e_44df

jr_00e_44df:
    ld [hl], b
    nop
    ret nz

    ld [hl], b
    jr c, jr_00e_44e5

jr_00e_44e5:
    nop
    ccf
    ret nz

    nop
    ccf
    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
    inc c
    ld c, c
    jr z, jr_00e_4556

    add [hl]
    inc d
    sub d
    jr nc, @-$3e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, [hl]
    ld b, $00
    nop
    nop
    nop
    nop

jr_00e_4512:
    ld a, $00
    ld h, b
    ld a, [bc]
    ld bc, $2220
    inc a
    inc b
    ld b, b
    ld b, h
    inc b
    ld b, b
    jr c, jr_00e_4521

jr_00e_4521:
    nop
    nop
    nop
    ldh [rNR11], a
    ld bc, $1110
    nop
    ldh [rDIV], a
    inc bc
    ld hl, sp+$04
    nop
    ld b, b
    inc b
    nop
    ld b, b
    nop
    inc bc
    nop
    ld c, b
    inc b
    add b
    jr nc, jr_00e_453c

jr_00e_453c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld [bc], a
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00e_4556:
    nop
    nop
    ld [de], a
    ld [bc], a
    ld b, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    jr c, jr_00e_4512

    ld b, h
    add d
    ld [$8020], sp
    ld [$8200], sp
    ld [$4420], sp
    inc bc
    add b
    nop
    nop
    ld [bc], a
    ld [$8120], sp
    db $10
    ld a, a
    ret nz

    and b
    inc b
    rlca
    db $fc
    inc b
    nop
    ld b, b
    inc b
    nop
    nop
    inc b
    nop
    ld b, b
    rra
    ld [bc], a
    ld c, b
    inc h
    add c
    ret nz

    rlca
    ld [bc], a
    ld c, b
    inc h
    add c
    ldh a, [rDIV]
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld [$010f], sp
    jr jr_00e_45cc

    ld [bc], a
    jr nz, @+$26

    ld bc, $0f48
    ld bc, $0000
    nop
    ld hl, sp+$10
    ld b, c
    inc b
    stop
    add b
    ld a, a
    nop
    add b
    jr c, jr_00e_45c4

    ld [c], a
    ld sp, $00c0

jr_00e_45c4:
    nop
    inc de
    ld [bc], a
    ld c, b
    ld b, h
    adc b
    ld c, c
    inc bc

jr_00e_45cc:
    jr nz, @+$06

    ret nz

    sub d
    ld de, $1222
    ld b, b
    ret z

    nop
    inc b
    add b
    ld c, b
    inc b
    add e
    cp $09
    nop
    sub b
    add hl, bc
    nop
    sub b
    ld a, a
    pop bc
    jr nz, jr_00e_45f8

    ld bc, $0020
    nop
    ldh [rNR11], a
    ld bc, $0a10
    nop
    ret nz

    ld [de], a
    add d
    db $10
    ld hl, $2802
    inc e

jr_00e_45f8:
    ld b, b
    nop
    nop
    nop

jr_00e_45fc:
    ld b, b
    inc b
    inc b
    ld b, h
    dec [hl]
    add b
    ldh [$0e], a

Jump_00e_4604:
    inc bc

jr_00e_4605:
    ld e, b
    ld b, h
    ld b, b
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    ldh a, [$30]
    jp nz, Jump_00e_4964

    inc h
    sub d
    ld c, c
    inc h
    sub d
    daa
    jp Jump_000_0c00


    nop
    nop
    rlca
    nop
    adc b
    ld [$4080], sp
    rlca
    nop
    adc b
    ld [$7080], sp
    ld bc, $8800
    ld [$7080], sp
    ld b, $00
    ld h, b
    add hl, bc
    nop
    sub b
    ldh a, [$f4]
    ld [bc], a
    jr nc, jr_00e_45fc

    ld [$4226], sp
    sub h
    jr nc, jr_00e_4605

    ld [bc], a
    ld b, $00
    ld h, b
    rrca
    nop
    ldh a, [rIE]
    rst $30
    cp $3f
    pop bc
    ld hl, sp+$3f
    jp Jump_000_309c


    call nz, Call_000_0002
    nop
    ldh a, [$30]
    jp nz, Jump_00e_4004

    inc h
    ld [bc], a
    ld b, b
    inc h
    ld [bc], a
    jr nz, jr_00e_46a5

    inc c
    rrca
    nop
    nop
    nop
    nop
    ldh a, [$3f]
    jp Jump_00e_7ffc


    rst $20
    cp $7f
    rst $20
    cp $3f
    jp $0ffc


    nop
    nop
    nop
    nop
    ldh a, [$30]
    jp nz, Jump_00e_4604

    inc h
    sub d
    ld c, c
    inc h
    ld h, d
    jr nz, @+$45

    inc c
    rrca
    nop
    nop
    ld b, $00
    sub b
    db $10
    add d
    inc b
    ld b, b
    jr z, jr_00e_4694

    add b

jr_00e_4694:
    inc d
    ld [bc], a
    jr nz, jr_00e_46d9

    ld [$0009], sp
    ld h, b
    ld b, $00
    ldh a, [$1f]
    add e
    db $fc
    ld a, a
    rst $28
    rst $38

jr_00e_46a5:
    rst $38
    rst $30
    cp $3f
    pop bc
    ld hl, sp+$0f
    nop
    ld h, b
    nop
    rlca
    cp $40
    inc h
    ld [bc], a
    ld b, b
    inc h
    ld [bc], a
    ld b, b
    inc h
    ld [bc], a
    ld b, b
    inc h
    ld [bc], a
    ld a, a
    ldh [rP1], a
    nop
    rlca
    cp $7f
    rst $20
    cp $7f
    rst $20
    cp $7f
    rst $20
    cp $7f
    rst $20
    cp $7f
    ldh [rP1], a
    nop
    nop
    ld h, b
    ld b, $00
    sub b
    add hl, bc

jr_00e_46d9:
    ld bc, $1008
    add d
    inc b
    jr nz, jr_00e_4727

    cp $00
    nop
    nop
    nop
    nop
    ld h, b
    ld b, $00
    ldh a, [rIF]
    ld bc, $1ff8
    add e
    db $fc
    ccf
    rst $00
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld [c], a
    inc b
    jr nz, jr_00e_473f

    ld [$8010], sp
    sub b
    add hl, bc
    nop
    ld h, b
    ld b, $00
    nop
    nop
    nop
    nop
    ld a, a
    db $e3
    db $fc
    ccf
    pop bc
    ld hl, sp+$1f
    add b
    ldh a, [rIF]
    nop
    ld h, b
    ld b, $00
    nop
    nop
    inc b
    ld h, d
    ld h, $41
    ld [$0609], sp
    ld h, [hl]
    ld h, [hl]
    ld h, b
    sub b
    db $10

jr_00e_4727:
    add d
    ld h, h
    ld b, [hl]
    jr nz, jr_00e_472c

jr_00e_472c:
    nop
    rlca
    db $fc
    nop
    nop
    nop
    ld a, a
    ret nz

    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    nop
    nop

jr_00e_473f:
    nop
    nop
    nop
    nop
    inc b
    nop
    cpl
    rst $38
    nop
    jr nz, jr_00e_474e

    nop
    nop
    nop
    nop

jr_00e_474e:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, b
    rrca
    rst $38
    ld b, b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ldh [$15], a
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    ld bc, $0e50
    nop
    ld b, b
    nop
    nop
    nop
    ld a, a
    rst $20

jr_00e_478b:
    cp $7f
    ldh [rP1], a
    nop
    rlca
    cp $7f
    rst $20
    cp $00
    nop
    nop
    nop
    nop
    nop
    rrca
    pop bc
    nop
    jr nz, jr_00e_47a3

jr_00e_47a0:
    db $fc
    jr nz, jr_00e_47a4

jr_00e_47a3:
    nop

jr_00e_47a4:
    rrca
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld [$4300], sp
    db $fc
    nop
    ld b, b
    ld [$003f], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    pop bc
    nop
    jr nz, @+$04

    nop
    stop
    db $fc
    nop
    inc bc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld [$4000], sp
    inc b
    nop
    add e
    ldh a, [rP1]
    inc bc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    pop bc
    nop
    jr nz, @+$04

    nop
    jr nz, jr_00e_47ec

    nop

jr_00e_47ec:
    rrca
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld [$4000], sp
    inc b
    nop
    ld b, b
    ld [$003f], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00e_478b

    ld [$8220], sp
    ld [$8220], sp
    ld [$0011], sp
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    db $10
    jr nz, jr_00e_47a0

    ld [$8220], sp
    ld [$8220], sp
    ld [$8020], sp
    nop
    nop
    nop
    ld b, b
    inc b
    nop
    and b
    ld a, [bc]
    ld bc, $1110
    ld [bc], a
    ld [$8420], sp
    inc b
    ld b, b
    ld b, b
    nop
    nop
    inc b
    inc b
    ld b, b
    ld b, d
    ld [$8120], sp
    db $10
    ld de, $a000
    ld a, [bc]
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    db $fc
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    inc b
    rst $38
    ldh [rSB], a
    nop
    rra
    cp $00
    ld b, b
    ld [$0000], sp
    nop
    nop
    nop
    nop
    db $10
    add d
    inc b
    ld a, a
    add sp, $01

jr_00e_4879:
    add b
    rla
    cp $20
    ld b, c
    ld [$0000], sp
    nop
    nop
    inc b
    inc b
    ld b, b
    ld b, d
    ld [$813f], sp
    db $10
    ld de, $a000
    ld a, [bc]
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    inc bc
    db $fc
    nop
    ld b, b
    inc b
    nop
    ld b, e
    db $fc
    nop
    ld b, b
    inc b
    nop
    ld b, e
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld [$0001], sp
    jr nz, jr_00e_48b1

    nop
    add b
    db $10
    ld [bc], a

jr_00e_48b1:
    nop
    ld a, a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    rlca
    db $fc
    nop
    nop
    nop
    rra
    add [hl]
    ld b, $80
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [$0880], sp
    nop
    add b
    add sp, $11
    add d
    db $10
    ld hl, $2002
    inc e
    nop
    nop
    nop
    nop
    nop
    ld a, a
    jp $30fc


    ld b, c
    adc b
    jr jr_00e_4879

    ret nc

    dec c
    nop
    ld h, b
    ld b, $00
    nop
    nop
    nop
    nop
    ccf
    ret nz

    nop
    nop
    inc bc
    db $fc
    nop
    nop
    nop
    ccf
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld bc, $1880
    nop
    nop
    ccf
    ret nz

    nop
    nop
    inc bc
    db $fc
    nop
    nop
    jr jr_00e_4923

    add b

jr_00e_4923:
    nop
    nop
    nop
    ld [hl+], a
    inc b

jr_00e_4928:
    ld b, b
    adc b
    ld de, $2002
    ld [hl+], a
    ld bc, $0810
    add b
    ld b, h
    ld [bc], a
    jr nz, jr_00e_4936

jr_00e_4936:
    nop
    ld [bc], a
    jr nz, jr_00e_494b

jr_00e_493a:
    nop
    adc b
    inc b
    ld b, b
    ld [hl+], a
    ld [bc], a
    jr nz, jr_00e_4986

    ld [$1081], sp
    ld [hl+], a
    nop
    nop
    inc bc
    ldh [rNR41], a

jr_00e_494b:
    ld [bc], a
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    inc b
    add b
    xor b
    ld [bc], a
    add b
    db $10
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    inc c
    ld b, c
    jr z, @+$23

    add h

Jump_00e_4964:
    inc d
    add d
    jr nc, jr_00e_4928

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc c
    ld c, c
    jr z, jr_00e_49d5

    add [hl]
    inc b
    sub d
    jr nc, jr_00e_493a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, [hl]
    ld b, $00
    nop

jr_00e_4986:
    nop
    nop
    nop
    nop
    ld b, $00
    ld h, b
    nop
    nop
    nop
    inc b
    nop
    and b
    ld [$8000], sp
    ld [$4000], sp
    inc b
    nop
    jr nz, @+$04

    nop
    jr nz, @+$0c

    nop
    ld b, b
    ld [$5481], sp
    ld de, $1001
    ld de, $8800
    ld [$4480], sp
    inc b
    ld b, b
    ld b, h
    dec d
    ld b, b
    adc b
    ld b, $00
    ld h, b
    nop
    nop
    ld h, b
    ld b, $00
    sub b
    add hl, bc
    ld bc, $1f08
    add d
    inc b
    jr nz, jr_00e_4a05

    nop
    ld bc, $2002
    ld d, d
    dec b
    ld b, b
    ld d, h
    ld [bc], a
    add b
    ld [de], a
    ld b, c
    ld e, d
    dec h
    and d
    ld e, d

jr_00e_49d5:
    ld b, d
    ld b, b
    nop
    db $10
    add c
    ld [$e110], sp
    ld hl, sp+$70
    add c
    ld [$8110], sp
    ld c, $1f
    add a
    ld [$8110], sp
    ld [$0008], sp
    add b
    ld [$8000], sp
    ld [$b000], sp
    inc c
    add b
    adc b
    ld [$9080], sp
    ld a, [bc]
    nop
    ret nz

    ld [bc], a
    nop
    jr nc, @+$04

    add b
    jr z, jr_00e_4a05

    ld b, b
    inc h

jr_00e_4a05:
    ld [bc], a
    nop
    jr nz, @+$04

    nop
    ldh [rNR34], a
    ld bc, $04c0
    nop
    ld b, b
    rra
    nop
    ld b, b
    inc b

jr_00e_4a15:
    nop
    ldh [$0e], a
    nop
    ldh [rDIV], a
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    rra
    nop
    ld b, b
    ld c, $00
    ld b, b
    inc b
    nop
    ldh [rDIV], a
    ld bc, $04f0
    nop
    ld b, b
    rrca
    ld bc, $3cc8
    add e
    ret z

    inc e
    add b
    ret z

    inc b
    add b
    ld c, b
    inc b
    add b
    ld c, b
    inc b
    add b
    ld c, b
    rrca
    inc bc
    inc c
    ld b, b
    inc h
    ld [bc], a
    add b
    jr jr_00e_4a4e

    add b

jr_00e_4a4e:
    jr jr_00e_4a51

    ld b, b

jr_00e_4a51:
    inc h
    ld [bc], a
    jr nc, jr_00e_4a15

    ldh a, [rP1]
    nop
    ldh [rNR11], a
    ld [bc], a
    ld [$8220], sp
    ld [$8220], sp
    ld [$8120], sp
    db $10
    ld c, $00
    nop
    nop
    nop
    ld b, b
    inc c
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    ldh [rNR11], a
    ld [bc], a
    ld [$8000], sp
    db $10
    ld [bc], a
    nop
    ld b, b
    ld [$0001], sp
    ccf
    add b
    nop
    nop
    nop
    ldh [rNR11], a
    ld [bc], a
    ld [$0001], sp
    ldh [rSB], a
    nop
    ld [$8120], sp
    db $10
    ld c, $00
    nop
    nop
    nop
    jr nc, jr_00e_4aa7

    nop
    ld d, b
    add hl, bc
    nop
    sub b

jr_00e_4aa7:
    ld de, $1001
    ccf
    ret nz

    db $10
    ld bc, $0000
    nop
    inc bc
    ld hl, sp+$20
    ld [bc], a
    nop
    ld l, $03
    stop
    add b
    ld [$8120], sp
    db $10
    ld c, $00
    nop
    nop
    nop
    ldh [rNR11], a
    ld [bc], a
    ld [$032e], sp
    db $10
    jr nz, @-$7c

    ld [$8120], sp
    db $10
    ld c, $00
    nop
    nop
    inc bc
    ld hl, sp+$00
    add b
    db $10
    ld bc, $2000
    ld [bc], a
    nop
    jr nz, jr_00e_4ae5

    nop
    ld b, b
    inc b
    nop

jr_00e_4ae5:
    nop
    nop
    nop
    ldh [rNR11], a
    ld [bc], a
    ld [$0011], sp
    ldh [rNR11], a
    ld [bc], a
    ld [$8120], sp
    db $10
    ld c, $00
    nop
    nop
    nop
    ldh [rNR11], a
    ld [bc], a
    ld [$8220], sp
    ld [$8011], sp
    add sp, $20
    add c
    db $10
    ld c, $00
    nop
    nop
    nop
    ld h, b
    ld b, $00
    sub b
    add hl, bc
    nop
    sub b
    db $10
    add c
    ld hl, sp+$10
    add d
    inc b
    jr nz, @+$42

    nop
    nop
    inc bc
    ldh a, [rNR41]
    add d
    inc b
    jr nz, jr_00e_4aa7

    ldh a, [rNR41]
    add d
    inc b
    jr nz, jr_00e_4b6c

    ld [$003f], sp
    nop
    nop
    nop
    ldh a, [rNR10]
    add d
    inc b
    jr nz, @+$04

    nop
    jr nz, @+$04

    nop
    jr nz, @+$43

    ld [$000f], sp
    nop
    nop
    inc bc
    ldh a, [rNR41]
    add d
    inc b
    jr nz, jr_00e_4b8a

    inc b
    jr nz, jr_00e_4b8d

    inc b
    jr nz, jr_00e_4b90

    ld [$003f], sp
    nop
    nop
    inc bc
    db $fc
    jr nz, @+$04

    nop
    jr nz, jr_00e_4b5d

    ld hl, sp+$20
    ld [bc], a

jr_00e_4b5d:
    nop
    jr nz, jr_00e_4b62

    nop
    ccf

jr_00e_4b62:
    ret nz

    nop
    nop
    inc bc
    db $fc
    jr nz, @+$04

    nop
    jr nz, jr_00e_4b6f

jr_00e_4b6c:
    ld hl, sp+$20
    ld [bc], a

jr_00e_4b6f:
    nop
    jr nz, @+$04

    nop
    jr nz, jr_00e_4b75

jr_00e_4b75:
    nop
    nop
    nop
    ldh a, [rNR10]
    add d
    inc b
    jr nz, @+$04

jr_00e_4b7e:
    nop
    ld hl, $04c2
    jr nz, jr_00e_4bc5

    inc c
    rrca
    ld b, b
    nop
    nop
    ld [bc], a

jr_00e_4b8a:
    inc b
    jr nz, jr_00e_4bcf

jr_00e_4b8d:
    inc b
    jr nz, jr_00e_4bd3

jr_00e_4b90:
    db $fc
    jr nz, jr_00e_4bd5

    inc b
    jr nz, jr_00e_4bd8

    inc b
    jr nz, jr_00e_4bd9

    nop
    nop
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    db $10
    ld bc, $1000
    ld bc, $1000
    ld bc, $1000
    ld de, $1001
    ld c, $00
    nop
    nop
    ld [bc], a
    ld [$0221], sp
    jr nz, jr_00e_4be9

jr_00e_4bc5:
    ld [bc], a
    and b
    ld [hl-], a
    ld [bc], a
    db $10
    ld hl, $0802
    jr nz, @-$7e

jr_00e_4bcf:
    nop
    nop
    ld [bc], a
    nop

jr_00e_4bd3:
    jr nz, @+$04

jr_00e_4bd5:
    nop
    jr nz, @+$04

jr_00e_4bd8:
    nop

jr_00e_4bd9:
    jr nz, @+$04

    nop
    jr nz, jr_00e_4be0

    nop
    ccf

jr_00e_4be0:
    ret nz

    nop
    nop
    ld b, $0c
    ld h, b
    push bc
    inc d
    ld d, c

jr_00e_4be9:
    ld b, l
    inc d
    ld c, d
    ld b, h
    and h
    ld c, d
    ld b, h
    ld b, h
    ld b, h
    ld b, b
    nop
    nop
    inc bc
    ld [$8230], sp
    adc b
    jr z, jr_00e_4b7e

    ld c, b
    inc h
    add d
    jr z, jr_00e_4c23

    add d
    jr @+$23

    add b
    nop
    nop
    nop
    ldh a, [rNR10]
    add d
    inc b
    jr nz, jr_00e_4c50

    inc b
    jr nz, jr_00e_4c53

    inc b
    jr nz, @+$43

    ld [$000f], sp
    nop
    nop
    inc bc
    ldh a, [rNR41]
    add d
    inc b
    jr nz, jr_00e_4c62

    ld [$023f], sp

jr_00e_4c23:
    nop
    jr nz, @+$04

    nop
    jr nz, jr_00e_4c29

jr_00e_4c29:
    nop
    nop
    nop
    ldh a, [rNR10]
    add d
    inc b
    jr nz, jr_00e_4c74

    inc b
    jr nz, jr_00e_4c77

    inc b
    ld hl, $0841
    rrca
    ld b, b
    nop
    nop
    inc bc
    ldh a, [rNR41]
    add d
    inc b
    jr nz, jr_00e_4c86

    ld [$023f], sp
    db $10
    jr nz, @-$7c

    ld [$4020], sp
    nop
    nop
    nop

jr_00e_4c50:
    ldh a, [rNR10]
    add d

jr_00e_4c53:
    inc b
    stop
    ldh a, [rP1]
    add b
    inc b
    jr nz, jr_00e_4c9d

    ld [$000f], sp
    nop
    nop
    rlca

jr_00e_4c62:
    db $fc
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    ld [bc], a

jr_00e_4c74:
    inc b
    jr nz, jr_00e_4cb9

jr_00e_4c77:
    inc b
    jr nz, jr_00e_4cbc

    inc b
    jr nz, jr_00e_4cbf

    inc b
    jr nz, jr_00e_4cc1

    ld [$000f], sp
    nop
    nop
    ld [bc], a

jr_00e_4c86:
    inc b
    jr nz, jr_00e_4cca

    ld [$8110], sp
    ld [$0009], sp
    sub b
    add hl, bc
    nop
    ld h, b
    ld b, $00
    nop
    nop
    inc b
    ld h, d
    ld b, [hl]
    inc h
    ld h, d
    add hl, hl

jr_00e_4c9d:
    ld b, d
    sub h
    add hl, hl
    ld b, d
    sbc h
    db $10
    add c
    ld [$8010], sp
    nop
    nop
    ld [bc], a
    inc b
    db $10
    add b
    adc b
    add hl, bc
    nop
    ld h, b
    ld b, $00
    sub b
    add hl, bc
    ld bc, $2008
    ld b, b

jr_00e_4cb9:
    nop
    nop
    ld [bc], a

jr_00e_4cbc:
    ld [$8120], sp

jr_00e_4cbf:
    db $10
    ld a, [bc]

jr_00e_4cc1:
    nop
    and b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b

jr_00e_4cca:
    nop
    nop
    nop
    ld bc, $00fc
    add b
    db $10
    ld bc, $2000
    inc b
    nop
    ld b, b
    ld [$0001], sp
    ccf
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld bc, $0008
    add b
    ld hl, sp+$10
    add c
    jr @+$10

    add b
    nop
    nop
    ld bc, $1000
    ld bc, $1600
    ld bc, $1090
    add c
    ld [$8110], sp
    sub b
    ld d, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    adc b
    db $10
    ld bc, $1000
    nop
    adc b
    rlca
    nop
    nop
    nop
    nop
    ld [$8000], sp
    ld [$8006], sp
    sbc b
    db $10
    add c
    ld [$8010], sp
    sbc b
    ld b, $80
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    sub b
    db $10
    add c
    ld hl, sp+$10
    nop
    adc b
    rlca
    nop
    nop
    nop
    nop
    jr nc, jr_00e_4d40

    nop
    ld b, b
    rra
    nop

jr_00e_4d40:
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $81
    jr @+$12

    add c
    jr @+$10

    add b
    ld [$8010], sp
    ldh a, [rP1]
    ld bc, $1000
    ld bc, $1700
    ld bc, $1088
    add c

jr_00e_4d67:
    ld [$8110], sp
    ld [$8010], sp
    nop
    nop
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    jr nz, jr_00e_4d86

    nop
    nop

jr_00e_4d86:
    nop
    nop
    jr nz, @+$04

    nop
    jr nz, @+$04

    nop
    jr nz, @+$0e

    nop
    nop
    nop
    ld bc, $1000
    ld bc, $1000
    add c
    db $10
    ld d, $01
    and b
    ld de, $1001
    db $10
    add b
    nop
    nop
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec sp
    ld [bc], a
    ld c, b
    inc h
    add d
    ld c, b
    inc h
    add d
    ld c, b
    inc h
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    ld bc, $1088
    add c
    ld [$8110], sp
    ld [$8010], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    db $10
    jr nz, jr_00e_4d67

    ld [$8120], sp
    db $10
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $1960
    ld bc, $1008
    add c
    ld [$0119], sp
    ld h, b
    db $10
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld l, b
    add hl, bc
    add c
    ld [$8110], sp
    ld [$8009], sp
    ld l, b
    nop
    add b
    ld [$0000], sp
    nop
    nop
    nop
    nop
    dec b
    add b
    ld h, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld bc, $1008
    nop
    ldh a, [rP1]
    add c
    ld [$000f], sp
    nop
    nop
    nop
    ld b, b
    inc b
    nop
    ld b, b
    rra
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    add c
    ld [$8110], sp
    ld [$8110], sp
    jr jr_00e_4e64

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    add c
    ld [$0009], sp
    sub b

jr_00e_4e64:
    ld b, $00
    ld h, b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    ld a, [hl+]
    add d
    xor b
    ld de, $1001
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    add b
    sub b
    ld b, $00
    ld h, b
    ld b, $00
    sub b
    db $10
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00e_4e94:
    ld [$8880], sp
    dec b
    nop
    ld d, b
    ld [bc], a
    nop
    jr nz, jr_00e_4ea0

    nop
    ret nz

jr_00e_4ea0:
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    add b
    db $10
    ld [bc], a
    nop
    ld b, b
    ld [$0001], sp
    rra
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ccf
    nop
    add b
    rrca
    ld bc, $2ca8
    add e
    adc b
    inc bc
    nop
    nop
    inc b
    nop
    ld c, h
    ld a, a
    nop
    add b
    rrca
    add c
    sub h
    ld a, [hl+]
    inc h
    and d
    ld c, h
    inc hl

jr_00e_4ed2:
    ld b, h
    ld bc, $0080
    nop
    nop
    nop
    nop

jr_00e_4eda:
    nop
    nop
    nop
    nop
    add b
    ld de, $0801
    db $10
    add c
    ld c, b
    ld [$0000], sp
    nop
    ld bc, $1000
    ld [bc], a
    ld [$4220], sp
    inc b
    jr nz, jr_00e_4f15

    ld [bc], a
    ld [de], a
    ld hl, $0c20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld b, $00
    nop
    rlca
    ld bc, $0088
    add b
    db $10
    ld b, $00
    nop
    ld [$7000], sp
    nop
    nop
    ld [hl], b
    jr c, jr_00e_4e94

    inc b

jr_00e_4f15:
    nop
    ld b, b
    inc b
    nop
    add b
    jr nc, jr_00e_4f28

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    inc bc
    nop
    nop
    rra

jr_00e_4f28:
    nop
    jr nz, @+$08

    nop
    and b
    inc de
    add b
    nop
    ld [$7000], sp
    nop
    nop
    jr c, jr_00e_4f73

    add b
    db $10
    ld [bc], a
    nop
    ld h, b
    add hl, de
    ld [bc], a
    db $10
    ld b, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    add b
    ld [$e483], sp
    ld [$f000], sp
    jr jr_00e_4ed2

    adc b
    dec sp
    nop
    nop
    ld [$8c00], sp
    ld a, a
    jr nz, jr_00e_4eda

    ld [$f800], sp
    jr jr_00e_4fa1

    add d
    ld c, b
    inc h
    add h
    add hl, sp
    add b
    nop
    ld [$8000], sp
    ld [$c807], sp
    ld [de], a
    ld b, c
    inc h
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

jr_00e_4f73:
    dec b
    jr nz, jr_00e_4fc2

    nop
    nop
    ld [$8550], sp
    ld [$c807], sp
    ld [de], a
    ld b, c
    inc h
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_00e_4fd4

    nop
    nop
    nop
    nop
    ld b, b
    inc b
    add e
    or b
    ld [bc], a
    ld b, e
    ret c

    ld bc, $e801
    ld hl, $0082
    rra
    nop
    nop
    nop
    ld d, b
    ld b, l
    inc b
    add e

jr_00e_4fa1:
    or b
    ld [bc], a
    ld b, e
    ret c

    ld bc, $e801
    ld hl, $0082
    rra
    nop
    nop
    nop
    nop
    db $10
    ld [bc], a
    nop
    ld b, b
    ld [$0001], sp
    stop
    ret nz

    ld [bc], a
    nop
    stop
    add b
    nop
    nop
    nop

jr_00e_4fc2:
    db $10
    ld [bc], a
    nop
    ld c, d
    ld [$00a1], sp
    stop
    ret nz

    ld [bc], a
    nop
    stop
    add b
    nop
    nop
    ld [bc], a

jr_00e_4fd4:
    db $10
    ld hl, $fe04
    ld b, b
    add h
    ld [$8440], sp
    ld [$0241], sp
    db $10
    ld [hl+], a
    nop
    nop
    nop
    ld d, d
    dec d
    ld hl, $fe04
    ld b, b
    add h
    ld [$8440], sp
    ld [$0241], sp
    db $10
    ld [hl+], a
    nop
    nop
    nop
    ld bc, $0f08
    nop
    nop
    nop
    nop
    nop
    db $10
    ld [bc], a
    nop
    jr nz, jr_00e_5045

    ld hl, sp+$00
    nop
    nop
    nop
    ld d, c
    dec c
    rrca
    nop
    nop
    nop
    nop
    nop
    db $10
    ld [bc], a
    nop
    jr nz, jr_00e_5057

    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld b, b
    inc b
    jp Jump_000_02f0


    nop
    db $10
    ld e, $82
    db $10
    jr nz, jr_00e_5029

    nop

jr_00e_5029:
    rrca
    nop
    nop
    nop
    ld d, b
    ld b, l
    inc b
    jp Jump_000_02f0


    nop
    db $10
    ld e, $82
    db $10
    jr nz, jr_00e_503b

    nop

jr_00e_503b:
    rrca
    nop
    nop
    nop
    nop
    add b
    ld [$8000], sp
    db $10

jr_00e_5045:
    ld bc, $1000
    ld bc, $1004
    ld b, b
    adc b
    rlca
    nop
    nop
    nop
    nop
    add b
    ld [$8aa0], sp
    db $10

jr_00e_5057:
    ld bc, $1000
    ld bc, $1004
    ld b, b
    adc b
    rlca
    nop
    nop
    ld bc, $1000
    ld a, a
    ldh [rNR10], a
    dec c
    ld bc, $1330
    nop
    ret nc

    ld bc, $2000
    inc c
    nop
    nop
    ld bc, $1550
    ld a, a
    ldh [rNR10], a
    dec c
    ld bc, $1330
    nop
    ret nc

    ld bc, $2000
    inc c
    nop
    nop
    nop
    ld bc, $1008
    add c
    ld [$e713], sp
    ret z

    db $10
    add c
    jr nc, @+$12

    ld bc, $0f00
    ret nz

    nop
    nop
    ld [bc], a
    dec d
    ld hl, $1052
    daa
    rst $08
    sub b

jr_00e_50a1:
    ld hl, $6002
    jr nz, jr_00e_50a8

    nop
    rra

jr_00e_50a8:
    add b
    nop
    nop
    ld bc, $01f8
    nop
    ld h, b
    jr jr_00e_50b9

    db $fc
    inc b
    nop
    add b
    ld [$4000], sp

jr_00e_50b9:
    inc bc
    add b
    nop
    nop
    ld bc, $01f8
    nop
    ld h, l
    jr jr_00e_511b

    db $fc
    inc b
    nop
    add b
    ld [$4000], sp
    inc bc
    add b
    nop
    db $10
    ld bc, $7e00
    ld bc, $1300
    pop bc
    nop
    ld [hl+], a
    ld [bc], a
    ld b, b
    inc h
    inc b
    ld a, $40
    nop
    nop
    db $10
    ld d, c
    dec b
    ld a, [hl]
    ld bc, $1300
    pop bc
    nop
    ld [hl+], a
    ld [bc], a
    ld b, b
    inc h
    inc b
    ld a, $40
    nop
    nop
    nop
    nop
    add b
    add hl, bc
    add a
    ldh [rNR10], a
    ld bc, $3870
    add d
    inc b
    nop
    ld b, b
    ld [$000f], sp
    nop
    nop
    ld d, b
    add l
    add hl, bc
    add a
    ldh [rNR10], a
    ld bc, $3870
    add d
    inc b
    nop
    ld b, b
    ld [$000f], sp
    nop
    nop
    nop
    nop
    nop
    nop

jr_00e_511b:
    nop
    nop
    nop
    ld [hl], b
    jr jr_00e_50a1

    ld [$8000], sp
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    add a
    add h
    nop
    jr nz, @+$04

    nop
    jr nz, jr_00e_5138

    ld bc, $e080
    nop

jr_00e_5138:
    nop
    nop
    nop
    ld d, b
    dec b
    rlca
    add a
    add h
    nop
    jr nz, @+$04

    nop
    jr nz, jr_00e_514a

    ld bc, $e080
    nop

jr_00e_514a:
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $20
    sub b
    ld [bc], a
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    jr nz, jr_00e_515d

    ret nz

jr_00e_515d:
    nop
    nop
    nop
    nop
    rlca
    rst $20
    sub b
    ld [bc], a
    ld d, b
    ld b, l
    inc b
    nop
    ld b, b
    inc b
    nop
    jr nz, jr_00e_516f

    ret nz

jr_00e_516f:
    nop
    nop
    nop
    add b
    ld [$4000], sp
    dec b
    ret nz

    ldh [rNR10], a
    ld [bc], a
    nop
    jr nz, jr_00e_517f

    nop

jr_00e_517f:
    rrca
    ret nz

    nop
    nop
    nop
    adc d
    ld [$40a0], sp
    dec b

jr_00e_5189:
    ret nz

    ldh [rNR10], a
    ld [bc], a
    nop
    jr nz, jr_00e_5191

    nop

jr_00e_5191:
    rrca
    ret nz

    nop
    ld [$8c00], sp
    ld a, [hl]
    ld hl, $1000

jr_00e_519b:
    add d
    ld [$8420], sp
    ld a, b
    ld [$8ac0], sp
    rlca
    nop
    nop
    nop
    ld [bc], a
    nop
    daa
    add h
    nop
    ld b, b
    inc b
    nop
    ld b, h
    inc b
    add b
    ld c, b
    inc b
    ld a, h
    jr nz, jr_00e_51b7

jr_00e_51b7:
    nop
    nop
    nop
    jr nz, jr_00e_51de

    ld [bc], a
    ld hl, sp+$32
    ld b, d
    ld [hl+], a
    ld d, h
    inc h
    jp nz, $a349

    inc h
    ld bc, $00a0
    nop
    ld bc, $1000
    rlca
    cp h
    inc d
    ld hl, $3082
    inc hl
    ld [bc], a
    ld d, e
    and c
    ld b, h
    inc de
    and b
    nop
    nop
    nop

jr_00e_51de:
    nop
    rrca
    add c
    ld b, h
    inc h
    inc h
    ld b, d
    ld b, h
    inc h
    add d
    ld c, b
    ld b, e
    inc c
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [$8420], sp
    cp $40
    add h
    ld [$8440], sp
    ld a, b
    ld c, b
    jp nz, Jump_000_278a

    nop
    nop
    nop
    ld d, d
    dec c
    jr nz, jr_00e_5189

    cp $40
    add h
    ld [$8440], sp
    ld a, b
    ld c, b
    jp nz, Jump_000_278a

    nop
    nop
    nop
    ld [hl-], a
    dec bc
    jr nz, jr_00e_519b

    cp $40
    add h
    ld [$8440], sp
    ld a, b
    ld c, b
    jp nz, Jump_000_278a

    nop
    nop
    nop
    nop
    sub b
    ld [hl], c
    ld bc, $2008
    jp nz, Jump_00e_400a

    add h
    db $10
    ld b, c
    ld [bc], a
    jr nz, @+$1e

    nop
    nop
    nop
    nop
    sub l
    ld [hl], c
    ld d, c
    ld [$c220], sp
    ld a, [bc]
    ld b, b
    add h
    db $10
    ld b, c
    ld [bc], a
    jr nz, jr_00e_5262

    nop
    nop
    nop
    nop
    sub e
    ld [hl], c
    ld sp, $2008

jr_00e_524f:
    jp nz, Jump_00e_400a

    add h
    db $10
    ld b, c
    ld [bc], a
    jr nz, jr_00e_5274

    nop
    nop
    nop
    nop
    add b
    rlca
    nop
    nop
    inc b

jr_00e_5261:
    nop

jr_00e_5262:
    ld c, b
    ld [de], a
    ld b, c
    ld [hl+], a
    ld hl, $9024
    ld b, $00
    nop
    nop
    nop
    add b
    rlca
    ld d, b
    dec b
    inc b

jr_00e_5273:
    nop

jr_00e_5274:
    ld c, b
    ld [de], a
    ld b, c
    ld [hl+], a
    ld hl, $9024
    ld b, $00
    nop
    nop
    nop
    add b
    rlca
    nop
    inc bc
    inc b
    jr nc, @+$4a

    ld [de], a
    ld b, c
    ld [hl+], a
    ld hl, $9024
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $22c0
    inc b
    jr nz, jr_00e_529b

    nop

jr_00e_529b:
    ld [$6000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and c
    jp z, Jump_000_0422

    jr nz, jr_00e_52ad

    nop

jr_00e_52ad:
    ld [$6000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop bc
    call z, Call_000_0422
    jr nz, jr_00e_52bf

    nop

jr_00e_52bf:
    ld [$6000], sp
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, [hl]
    jr nz, jr_00e_524f

    ld [$e44f], sp
    ld [$8440], sp
    ld a, b
    ld c, b
    call nz, Call_000_278a
    nop
    nop
    nop
    ld d, d
    ld a, l
    jr nz, jr_00e_5261

    ld [$e44f], sp
    ld [$8440], sp
    ld a, b
    ld c, b
    call nz, Call_000_278a
    nop
    nop
    nop
    ld [hl-], a
    ld a, a
    jr nz, jr_00e_5273

    ld [$e44f], sp
    ld [$8440], sp
    ld a, b
    ld c, b
    call nz, Call_000_278a
    nop
    nop
    ld [bc], a
    nop
    jr nz, jr_00e_537f

    ldh [rNR41], a
    ccf
    ret nz

    jr nz, @+$04

    ld bc, $23e0
    add d
    inc h
    inc e
    nop
    nop
    nop
    inc bc
    ret nz

    inc b
    nop
    ld c, b
    ld [$e883], sp
    ld c, c
    adc c
    inc c
    sub b
    and [hl]
    db $10
    ld b, $00
    nop
    nop
    ld bc, $1000
    rlca
    call z, $2310
    nop
    ld d, b
    dec b
    nop
    jr nc, @+$43

    inc b
    rrca
    add b
    nop
    nop
    nop
    jr nz, jr_00e_5358

    ld [bc], a
    ld hl, sp+$12
    ld b, e
    ld [hl+], a
    ld c, h
    inc h
    ld b, d
    ld c, b
    inc hl
    inc b
    ld bc, $0080
    nop
    nop
    add b
    ld [$e003], sp
    ld [$8800], sp
    ld a, $41
    inc b
    db $10
    ld b, b
    adc b
    rlca
    nop
    nop
    nop
    nop

jr_00e_5358:
    nop
    nop
    nop
    db $10
    ld de, $b800
    inc e
    ld b, b
    ld e, b
    inc b
    nop
    jr nz, jr_00e_5368

    nop
    nop

jr_00e_5368:
    ld bc, $0802
    inc de
    pop bc
    jp nz, Jump_000_2068

    sbc h
    inc b
    nop
    ld b, b
    ld [bc], a
    nop
    jr nz, jr_00e_537a

    nop
    nop

jr_00e_537a:
    nop
    nop
    nop
    nop
    nop

jr_00e_537f:
    ld b, b
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld a, [hl+]
    add e
    jr z, jr_00e_539e

    nop
    jr nz, jr_00e_538e

    nop
    nop
    ld [bc], a
    ld [bc], a

jr_00e_538e:
    db $10
    inc hl
    call nz, $51d2
    dec h
    ld [de], a
    ld h, c
    ld [hl+], a
    ld a, h
    ld hl, $2000
    inc b
    nop
    nop

jr_00e_539e:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    jr nz, jr_00e_53ab

    add b
    jr nz, @+$10

jr_00e_53ab:
    ld bc, $0e30
    add b
    nop
    nop
    nop
    jr nz, jr_00e_53b6

    nop
    inc a

jr_00e_53b6:
    ld [bc], a
    nop
    jr nz, @+$04

    ld bc, $23e0
    add d
    inc h
    inc e
    nop
    nop
    nop
    nop
    ret nz

    inc bc
    nop
    add b
    db $10
    ld bc, $1878
    ld b, c
    ld [bc], a
    nop
    jr nz, jr_00e_53d5

    rlca
    add b
    nop
    nop

jr_00e_53d5:
    nop
    sub b
    ld [$0881], sp
    db $10
    add c
    ld [$8014], sp
    adc b
    nop
    add b
    db $10
    ld b, $00
    nop
    nop
    ld bc, $01f8
    nop
    jr nz, jr_00e_53f4

    ld bc, $2088
    ld b, b
    call nz, Call_00e_4112

jr_00e_53f4:
    jr @+$11

    nop
    nop
    nop
    ld bc, $1000
    rlca
    cp b
    inc d
    ld b, c
    add h
    db $10
    ld b, e
    ld [$8150], sp
    ld a, [bc]
    db $10
    ld b, b
    nop
    nop
    nop
    nop
    ld a, $00
    ld b, b
    ld [$e001], sp
    ld hl, $0804
    nop
    add b
    db $10
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$8000], sp
    ccf
    nop
    adc b
    jr @-$7c

    adc b
    dec bc
    nop
    nop
    nop
    ld bc, $1000
    rlca
    cp b
    inc d
    ld b, c
    add d
    db $10
    inc hl
    ld [bc], a
    ld d, b
    ld hl, $1104
    add b
    nop
    nop
    ld bc, $02e0
    nop
    ld a, b
    inc e
    ld b, d
    ld b, d
    ld b, h
    inc h
    sbc d
    ld c, d
    ld h, e
    inc h
    ld bc, $0080
    rrca
    nop
    jr nz, jr_00e_545a

    nop
    ldh a, [rNR10]
    add b

jr_00e_545a:
    ld l, b
    add hl, bc
    add b
    ldh a, [rNR10]
    inc bc
    cp h
    ld b, h
    jr nz, jr_00e_5464

jr_00e_5464:
    ld [bc], a
    nop
    jr nz, @+$41

    ret nz

    ld b, b
    ld [$ee01], sp
    inc hl
    nop
    ld d, b
    add hl, bc
    nop
    add b
    rlca
    ret nz

    nop
    nop
    nop
    ld b, b
    inc b
    nop
    add b
    db $10
    ld bc, $22c0
    ld [bc], a
    ld [hl+], a
    ld b, d
    inc h
    inc h
    ld b, c
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    add b
    ld [$0001], sp
    ld h, b
    inc b
    nop
    ld b, b
    ld [$0000], sp
    nop
    nop
    nop
    ld a, a
    ldh [rSC], a
    nop
    ld b, b
    ld e, b
    ld b, $00
    ld b, b
    ld [$8000], sp
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    db $10
    ld b, $01
    and b
    ld [bc], a
    nop
    jr nz, jr_00e_54be

    nop
    nop

jr_00e_54be:
    nop
    nop
    inc b
    nop
    add b
    db $10
    ld b, $01
    and b
    ld h, d
    nop
    jr nz, @+$04

    nop
    jr nz, jr_00e_54d0

    nop
    nop

jr_00e_54d0:
    nop
    nop
    nop
    nop
    nop
    ld b, b
    inc b
    ld bc, $11f0
    ld bc, $0110
    nop
    jr nz, jr_00e_54e4

    nop
    nop
    nop
    nop

jr_00e_54e4:
    ld b, b
    inc b
    inc bc
    db $fc
    jr nz, jr_00e_552c

    inc b
    jr nz, jr_00e_552d

    inc b
    nop
    add b
    db $10
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $04f0
    nop
    ld b, b
    inc b
    inc bc
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld hl, sp+$04
    nop
    ld b, b
    inc b
    nop
    ld b, b
    ld a, a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$04

    inc bc
    ld hl, sp+$06
    nop
    and b
    ld [de], a
    ld [bc], a
    jr nz, @+$08

    nop
    nop
    nop
    nop

jr_00e_552c:
    db $10

jr_00e_552d:
    ld bc, $fe07
    inc bc
    nop
    ld d, b
    dec b
    nop
    sub b
    ld de, $1006
    rlca
    nop
    nop
    nop
    nop
    ld b, b
    inc b
    rlca
    db $fc
    inc b
    ld b, b
    ld b, h
    inc b
    ld b, b
    add h
    ld [$0441], sp
    ld h, c
    add b
    nop
    nop
    ld d, b
    ld b, l
    inc b
    rlca
    db $fc
    inc b
    ld b, b
    ld b, h
    inc b
    ld b, b
    add h
    ld [$0441], sp
    ld h, c
    add b
    nop
    nop
    nop
    ld b, b
    inc b
    inc bc
    db $fc
    inc b
    nop
    ld b, b
    ld a, a
    ldh [rNR41], a
    ld [bc], a
    nop
    jr nz, jr_00e_5572

    nop
    nop

jr_00e_5572:
    nop
    ld d, b
    ld b, l
    inc b
    inc bc
    db $fc
    inc b
    nop
    ld b, b
    ld a, a
    ldh [rNR41], a
    ld [bc], a
    nop
    jr nz, jr_00e_5584

    nop
    nop

jr_00e_5584:
    nop
    nop
    ld b, b
    inc b
    nop
    db $fc
    db $10
    ld b, [hl]
    ld [$8000], sp
    db $10
    ld [bc], a
    nop
    ret nz

    ld [hl], b
    nop
    nop
    nop
    ld d, b
    ld b, l
    inc b
    nop
    db $fc
    db $10
    ld b, [hl]
    ld [$8000], sp
    db $10
    ld [bc], a
    nop
    ret nz

    ld [hl], b
    nop
    nop
    nop
    ld bc, $1000
    ld bc, $21fe
    inc b
    db $10
    ld bc, $1000
    ld [bc], a
    nop
    ld b, b
    jr jr_00e_55b9

jr_00e_55b9:
    nop
    nop
    ld d, c
    dec b
    db $10
    ld bc, $21fe
    inc b
    db $10
    ld bc, $1000
    ld [bc], a
    nop
    ld b, b
    jr jr_00e_55cb

jr_00e_55cb:
    nop
    nop
    nop
    nop
    nop
    rlca
    db $fc
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, a
    db $fc
    nop
    ld b, b
    nop
    nop
    ld d, b
    dec b
    nop
    rlca
    db $fc
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, a
    db $fc
    nop
    ld b, b
    nop
    nop
    ld bc, $1008
    add a
    cp $10
    add c
    ld [$8110], sp
    ld [$0001], sp
    jr nc, @+$0e

    nop
    nop
    nop
    ld d, c
    dec c
    db $10
    add a
    cp $10
    add c
    ld [$8110], sp
    ld [$0001], sp
    jr nc, jr_00e_561e

    nop
    nop
    nop
    ld bc, $0480
    nop
    ld [bc], a
    ld h, b
    ld hl, $0004

jr_00e_561e:
    ld b, b
    ld [$0001], sp
    ld h, b
    jr c, jr_00e_5625

jr_00e_5625:
    nop
    nop
    ld d, c
    add l
    inc b
    nop
    ld [bc], a
    ld h, b
    ld hl, $0004
    ld b, b
    ld [$0001], sp
    ld h, b
    jr c, jr_00e_5637

jr_00e_5637:
    nop
    nop
    nop
    nop
    ccf
    add b
    ld [$8000], sp
    db $10
    ld bc, $2800
    inc b
    ld b, c
    add d
    ld h, b
    jr nz, jr_00e_564a

jr_00e_564a:
    nop
    ld d, b
    dec b
    ccf
    add b
    ld [$8000], sp
    db $10
    ld bc, $2800
    inc b
    ld b, c
    add d
    ld h, b
    jr nz, jr_00e_565c

jr_00e_565c:
    nop
    nop
    add b
    ld [$9e00], sp
    ld c, $27
    add h
    ld [$8840], sp
    ld [$8000], sp
    rlca
    ret nz

    nop
    nop
    ld d, b
    add l
    ld [$9e00], sp
    ld c, $27
    add h
    ld [$8840], sp
    ld [$8000], sp
    rlca
    ret nz

    nop
    nop
    nop
    nop
    jr nz, jr_00e_56c6

    inc b
    db $10
    ld b, b
    inc b
    nop
    add b
    ld [$0001], sp
    ld h, b
    jr c, jr_00e_5691

jr_00e_5691:
    nop
    nop
    and b
    ld a, [bc]
    jr nz, @+$43

    inc b
    db $10
    ld b, b
    inc b
    nop
    add b
    ld [$0001], sp
    ld h, b
    jr c, jr_00e_56a3

jr_00e_56a3:
    nop
    nop
    nop
    ld b, b
    inc b
    nop
    db $fc
    db $10
    ld b, [hl]
    adc b
    inc b
    add b
    jr nc, jr_00e_56b3

    nop
    ret nz

jr_00e_56b3:
    ld [hl], b
    nop
    nop
    nop
    ld d, b
    ld b, l
    inc b
    nop
    db $fc
    db $10
    ld b, [hl]
    adc b
    inc b
    add b
    jr nc, jr_00e_56c5

    nop
    ret nz

jr_00e_56c5:
    ld [hl], b

jr_00e_56c6:
    nop
    nop
    nop
    nop
    inc e
    ld a, $00
    jr nz, @+$04

    rlca
    cp $02
    nop
    jr nz, jr_00e_56d7

    nop
    ld b, b

jr_00e_56d7:
    jr jr_00e_56d9

jr_00e_56d9:
    nop
    nop
    nop
    inc e
    ld a, $00
    dec h
    ld [bc], a
    ld d, a
    cp $02
    nop
    jr nz, jr_00e_56e9

    nop
    ld b, b

jr_00e_56e9:
    jr jr_00e_56eb

jr_00e_56eb:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    inc h
    add c
    ld c, b
    db $10
    add b
    ld [$0001], sp
    jr nz, jr_00e_5708

    nop
    nop
    nop
    nop
    add b
    ld b, h
    ld b, d
    ld b, h
    jr nz, jr_00e_5746

    inc b
    nop

jr_00e_5708:
    add b
    ld [$0001], sp
    ld h, b
    jr jr_00e_570f

jr_00e_570f:
    nop
    nop
    and b
    adc d
    ld b, h
    ld b, d
    ld b, h
    jr nz, jr_00e_5758

    inc b
    nop
    add b
    ld [$0001], sp
    ld h, b
    jr jr_00e_5721

jr_00e_5721:
    nop
    nop
    nop
    nop
    ccf
    ret nz

    nop
    nop
    rlca
    cp $02
    nop
    jr nz, jr_00e_5731

    nop
    ld b, b

jr_00e_5731:
    jr jr_00e_5733

jr_00e_5733:
    nop
    nop
    nop
    dec b
    ccf
    ret nc

    nop
    nop
    rlca
    cp $02
    nop
    jr nz, jr_00e_5743

    nop
    ld b, b

jr_00e_5743:
    jr jr_00e_5745

jr_00e_5745:
    nop

jr_00e_5746:
    nop
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld [hl], b
    inc b
    add b
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    nop

jr_00e_5758:
    nop
    nop
    ld c, d
    inc b
    and b
    ld b, b
    inc b
    nop
    ld [hl], b
    inc b
    add b
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    ld b, b
    inc b
    nop
    ld b, b
    ld a, a
    ldh [rLCDC], a
    inc b
    nop
    ld b, b
    ld [$8000], sp
    jr nc, jr_00e_577b

jr_00e_577b:
    nop
    nop
    nop
    nop
    nop
    inc bc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    cp $00
    nop
    nop
    nop
    inc bc
    db $fc
    nop
    ld b, b
    inc b
    nop
    add c
    adc b
    dec b
    nop
    jr nc, jr_00e_579f

    add c
    add h
    ld h, b
    nop

jr_00e_579f:
    nop
    inc c
    nop
    jr nz, @+$41

    add b
    ld [$0001], sp
    ld h, b
    dec e
    add [hl]
    ld b, h
    inc b
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld [$0001], sp
    db $10
    ld [bc], a
    nop
    ld b, b
    jr jr_00e_57c6

    nop
    nop
    nop
    nop
    nop
    nop

jr_00e_57c6:
    nop
    db $10
    ld bc, $1008
    ld b, c
    inc b
    db $10
    ld [hl+], a
    ld [bc], a
    jr nz, jr_00e_57f4

    ld [bc], a
    ld b, b
    nop
    nop
    nop
    ld d, b
    dec b
    db $10
    ld bc, $1008
    ld b, c
    inc b
    db $10
    ld [hl+], a
    ld [bc], a
    jr nz, jr_00e_5806

    ld [bc], a
    ld b, b
    nop
    nop
    nop
    jr nc, @+$05

    db $10
    ld bc, $1008
    ld b, c
    inc b
    db $10
    ld [hl+], a
    ld [bc], a

jr_00e_57f4:
    jr nz, jr_00e_5818

    ld [bc], a
    ld b, b
    nop
    nop
    nop
    ld [bc], a
    nop
    jr nz, jr_00e_5801

    inc c
    inc hl

jr_00e_5801:
    inc bc
    ret nz

    jr nz, @+$04

    nop

jr_00e_5806:
    jr nz, jr_00e_580a

    nop
    rra

jr_00e_580a:
    ret nz

    nop
    nop
    ld d, d
    dec b
    jr nz, jr_00e_5813

    inc c
    inc hl

jr_00e_5813:
    inc bc
    ret nz

    jr nz, @+$04

    nop

jr_00e_5818:
    jr nz, jr_00e_581c

    nop
    rra

jr_00e_581c:
    ret nz

    nop
    nop
    ld h, d
    ld b, $20
    ld [bc], a
    inc c
    inc hl
    inc bc
    ret nz

    jr nz, @+$04

    nop
    jr nz, jr_00e_582e

    nop
    rra

jr_00e_582e:
    ret nz

    nop
    nop
    nop
    nop
    ld a, a
    ret nz

    inc b
    nop
    ld b, b
    inc b
    nop
    add b
    ld [$0001], sp
    ld h, b
    jr jr_00e_5841

jr_00e_5841:
    nop
    nop
    ld d, b
    dec b
    ld a, a
    ret nz

    inc b
    nop
    ld b, b
    inc b
    nop
    add b
    ld [$0001], sp
    ld h, b
    jr jr_00e_5853

jr_00e_5853:
    nop
    nop
    jr nc, jr_00e_585a

    ld a, a
    ret nz

    inc b

jr_00e_585a:
    nop
    ld b, b
    inc b
    nop
    add b
    ld [$0001], sp
    ld h, b
    jr jr_00e_5865

jr_00e_5865:
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld [de], a
    ld [bc], a
    db $10
    ld b, b
    add b
    inc b
    nop
    jr nz, jr_00e_5875

jr_00e_5875:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    jp z, $0212

    db $10
    ld b, b
    add b
    inc b
    nop
    jr nz, jr_00e_5887

jr_00e_5887:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    add $12
    ld [bc], a
    db $10
    ld b, b
    add b
    inc b
    nop
    jr nz, jr_00e_5899

jr_00e_5899:
    nop
    nop
    nop
    nop
    nop
    ld b, b
    inc b
    rlca
    db $fc
    inc b
    nop
    ld b, b
    inc h
    add d
    ld c, b
    ld b, h
    ld b, h
    ld b, h
    inc c
    nop
    nop
    nop
    and b
    ld c, d
    inc b
    rlca
    db $fc
    inc b
    nop
    ld b, b
    inc h
    add d
    ld c, b
    ld b, h
    ld b, h
    ld b, h
    inc c
    nop
    nop
    nop
    ld h, b
    ld b, [hl]
    inc b
    rlca
    db $fc
    inc b
    nop
    ld b, b
    inc h
    add d
    ld c, b
    ld b, h
    ld b, h
    ld b, h
    inc c
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ret nz

    inc b
    nop
    add b
    db $10
    ld a, [de]
    nop
    ld b, b
    ld [bc], a
    nop
    stop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    ldh [rSB], a
    add b
    nop
    nop
    ld bc, $00f0
    ret nz

    nop
    nop
    nop
    ld b, b
    inc b
    nop
    ld b, b
    ld [$9000], sp
    db $10
    add c
    inc b
    inc hl
    rst $00
    jp nz, $2000

    nop
    nop
    nop
    ld [$8000], sp
    ld [$0019], sp
    ld d, b
    inc bc
    nop
    jr z, jr_00e_5919

    ld b, c
    add b
    ld h, b
    nop

jr_00e_5919:
    nop
    nop
    inc bc
    db $fc
    inc b
    nop
    ld b, b
    inc b
    rlca
    cp $04
    nop
    ld b, b
    inc b
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$b800], sp
    inc a
    add b
    sub b
    inc b
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    add b
    ld [$9e00], sp
    ld c, $27
    ld b, h
    inc b
    add b
    ld b, b
    ld [bc], a
    nop
    jr nz, jr_00e_5950

    nop
    nop

jr_00e_5950:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $02e0
    nop
    jr nz, @+$04

    inc bc
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ldh a, [rSB]
    nop
    db $10
    ld bc, $1000
    ld bc, $fe07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    add b
    ld [$8100], sp
    ld hl, sp+$00
    add b
    ld [$801f], sp
    nop
    nop
    inc bc
    db $fc
    nop
    ld b, b
    inc b
    nop
    ld b, e
    db $fc
    nop
    ld b, b
    inc b
    nop
    ld b, e
    db $fc
    nop
    ld b, b
    nop
    nop
    inc bc
    ld hl, sp+$00
    nop
    nop
    ld a, a
    ret nz

    inc b
    nop
    add b
    ld [$0001], sp
    ld h, b
    jr jr_00e_59a9

jr_00e_59a9:
    nop
    nop
    ld bc, $1008
    add c
    ld [$8110], sp
    ld [$8010], sp
    ld [$8000], sp
    db $10
    ld b, $00
    nop
    nop
    nop
    jr nz, jr_00e_59d2

    ld bc, $1220
    ld bc, $1222
    ld hl, $2224
    add d
    jr nc, jr_00e_5a0c

    nop
    nop
    nop
    ld bc, $1000

jr_00e_59d2:
    ld bc, $1000
    ld bc, $1000
    ld bc, $1004
    add c
    jr nc, jr_00e_59fa

    nop
    nop
    nop
    nop
    nop
    ccf
    jp nz, $2004

    ld b, d
    inc b
    jr nz, jr_00e_5a2d

    inc b
    ccf
    jp nz, Jump_000_0004

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    add c

jr_00e_59fa:
    ld [$8010], sp
    ld [$8000], sp
    db $10
    ld b, $00
    nop
    nop
    inc bc
    db $fc
    jr nz, jr_00e_5a4b

    inc b
    jr nz, jr_00e_5a4c

jr_00e_5a0c:
    inc b
    nop
    add b
    ld [$0001], sp
    jr nz, @+$0e

    nop
    nop
    nop
    nop
    db $10
    ld bc, $fc03
    ld de, $1001
    ld de, $fe07
    ld bc, $1000
    ld bc, $0000
    nop
    nop
    nop
    ccf
    add b

jr_00e_5a2d:
    ld [$0001], sp
    ld h, b
    inc b
    nop
    ld b, b
    inc b
    rlca
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ret nz

    inc b
    nop
    ld b, e
    db $fc
    nop
    add b
    ld [$0001], sp
    jr nz, jr_00e_5a56

    nop

jr_00e_5a4b:
    nop

jr_00e_5a4c:
    nop
    nop
    nop
    jr nc, jr_00e_5a51

jr_00e_5a51:
    add d
    nop
    jr nz, jr_00e_5a57

    nop

jr_00e_5a56:
    ld b, b

jr_00e_5a57:
    inc b
    nop

jr_00e_5a59:
    add b
    jr nc, jr_00e_5a98

    nop
    nop
    nop
    ld d, b
    ld b, l
    inc b
    inc bc
    db $fc
    jr nz, @+$44

    inc b
    jr nz, @+$42

    ld [$8000], sp
    db $10
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    inc b
    ld bc, $04f8
    add b
    ld c, b
    ld [$8880], sp
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld [$fc00], sp
    ld de, $1002
    ld bc, $2000
    inc c
    nop
    nop
    nop
    nop
    ld b, b
    inc b

jr_00e_5a98:
    nop
    and b
    ld a, [bc]
    ld bc, $1110
    inc bc
    ld hl, sp+$20
    add h
    inc b
    ld b, b
    ld b, b
    nop
    nop
    ld bc, $10f8
    ld b, c
    inc b
    db $10
    add c
    ld hl, sp+$10
    ld b, c
    ld [bc], a
    db $10
    ld hl, $1f04
    add b
    nop
    nop
    ld bc, $10fc
    ld b, c
    nop
    db $10
    ld bc, $1000
    ld bc, $1000
    ld bc, $1000
    nop
    nop
    nop
    nop
    ld b, b
    ld a, [bc]
    nop
    and b
    ld de, $0802
    jr nz, jr_00e_5a59

    inc b
    ld b, b
    ld c, b
    ld [bc], a
    rst $38
    ldh [rP1], a
    nop
    inc bc
    db $fc
    jr nz, @+$04

    nop
    jr nz, jr_00e_5ae7

    ldh [rNR41], a
    ld [bc], a

jr_00e_5ae7:
    nop
    jr nz, jr_00e_5aec

    nop
    ccf

jr_00e_5aec:
    ret nz

    nop
    nop
    inc bc
    db $fc
    nop
    add b
    ld [$0001], sp
    jr nz, jr_00e_5afc

    nop
    add b
    db $10
    ld [bc], a

jr_00e_5afc:
    nop
    ld a, a
    ret nz

    nop
    nop
    ld [bc], a
    inc b
    jr nz, jr_00e_5b47

    inc b
    jr nz, jr_00e_5b4b

    db $fc
    jr nz, jr_00e_5b4d

    inc b
    jr nz, @+$44

    inc b
    jr nz, @+$42

    nop
    nop
    nop
    ldh a, [$30]
    jp nz, Jump_00e_4004

    inc h
    ld [bc], a
    ld e, a
    and h
    ld [bc], a
    ld b, b
    ld [hl+], a
    inc b
    jr nc, @-$3e

    ldh a, [rP1]
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    ld [bc], a
    ld [$0221], sp
    jr nz, jr_00e_5b61

    ld [bc], a
    ret nz

    ld [hl-], a
    ld [bc], a
    jr nz, jr_00e_5b64

    ld [bc], a
    ld [$4020], sp

jr_00e_5b47:
    nop
    nop
    nop
    ld b, b

jr_00e_5b4b:
    inc b
    nop

jr_00e_5b4d:
    and b
    ld a, [bc]
    ld bc, $1110
    ld [bc], a
    ld [$8420], sp
    inc b
    ld b, b
    ld b, b
    nop
    nop
    ld b, $0c
    ld h, b
    push bc
    inc d
    ld d, c

jr_00e_5b61:
    ld b, l
    inc d
    ld c, d

jr_00e_5b64:
    ld b, h
    and h
    ld b, h
    ld b, h
    ld b, h
    ld b, b
    ld b, b
    nop
    ld l, e
    ld h, d
    xor a
    ld [$c25c], a
    ld [$c255], a

Jump_00e_5b75:
jr_00e_5b75:
    ld a, [hl+]
    ldh [$97], a
    bit 7, a
    jr nz, jr_00e_5bb7

    cp $05
    ret z

    cp $02
    ret z

    cp $03
    jr nz, jr_00e_5b93

    push hl
    call Call_00e_5c9c
    pop hl
    ld a, [$c255]
    cp $02
    ret z

    jr jr_00e_5b75

jr_00e_5b93:
    push hl
    call Call_00e_5d9a
    ld a, $02
    call Call_00e_5c95
    pop hl
    ld a, [$c255]
    cp $02
    ret z

    push hl
    call Call_00e_5dd1
    ld hl, $c25b
    inc [hl]
    inc [hl]
    ld a, [$c25c]
    add $02
    ld [$c25c], a
    pop hl
    jr jr_00e_5c0d

jr_00e_5bb7:
    cp $a1
    jr c, jr_00e_5bcf

    cp $e0
    jr nc, jr_00e_5bcf

    push hl
    sub $a1
    add a
    ld e, a
    ld d, $00
    ld hl, $5c17
    add hl, de
    ld a, [hl+]
    ld e, [hl]
    ld d, a
    jr jr_00e_5bd3

jr_00e_5bcf:
    ld d, a
    ld e, [hl]
    inc hl
    push hl

jr_00e_5bd3:
    call Call_00e_5f09
    ld a, $03
    call Call_00e_5c95
    pop hl
    ld a, [$c255]
    cp $02
    ret z

    push hl
    ld a, [$c25c]
    rr a
    jr c, jr_00e_5bef

    call Call_00e_5f63
    jr jr_00e_5bf2

jr_00e_5bef:
    call Call_00e_5fdf

jr_00e_5bf2:
    call Call_00e_5e47
    ld a, [$c25c]
    add $03
    ld [$c25c], a
    ld b, $02
    rr a
    jr c, jr_00e_5c05

    ld b, $04

jr_00e_5c05:
    ld a, [$c25b]
    add b
    ld [$c25b], a
    pop hl

jr_00e_5c0d:
    ld a, [hl]
    cp $05
    ret z

    cp $02
    ret z

    jp Jump_00e_5b75


    add c
    ld b, d
    adc a
    ld l, a
    sub b
    ld l, h
    add c
    ld b, c
    adc a
    sub a
    add d
    ldh a, [$82]
    adc $8e
    add h
    add d
    rst $00
    add d
    push bc
    sub h
    sbc $82
    pop hl
    add d
    xor d
    add d
    push hl
    add d
    pop bc
    add a
    ld b, c
    add d
    and b
    add d
    and d
    add d
    and h
    add d
    and [hl]
    add d
    xor b
    add d
    xor c
    add d
    xor e
    add d
    xor l
    add d
    xor a
    add d
    or c
    add d
    or e
    add d
    or l
    add d
    or a
    add d
    cp c
    add d
    cp e
    add d
    cp l
    add d
    cp a
    add d
    jp nz, $c482

    add d
    add $82
    ret z

    add d
    ret


    add d
    jp z, $cb82

    add d
    call z, $cd82
    add d
    ret nc

    add d
    db $d3
    add d
    sub $82
    reti


    add d
    call c, $dd82
    add d
    sbc $82
    rst $18
    add d
    ldh [$82], a
    ld [c], a
    add d
    db $e4
    add d
    and $82
    rst $20
    add d
    add sp, -$7e
    jp hl


    add d
    ld [$eb82], a
    add d
    db $ed
    add d
    pop af
    add d
    cp [hl]
    add a
    ld b, b

Call_00e_5c95:
    ld c, a
    ld a, [$c25c]
    cp $1f
    ret c

Call_00e_5c9c:
    push hl
    ld a, [$c255]
    inc a
    ld [$c255], a
    ld a, [$c25b]
    cp $e2
    jr nc, jr_00e_5cbe

    ld hl, $5cc0

jr_00e_5cae:
    cp [hl]
    jr z, jr_00e_5cb6

    jr c, jr_00e_5cb6

    inc hl
    jr jr_00e_5cae

jr_00e_5cb6:
    ld a, [hl]
    ld [$c25b], a
    xor a
    ld [$c25c], a

jr_00e_5cbe:
    pop hl
    ret


    jp $6be1


    ld h, d
    xor a
    ld [$c25c], a
    ld [$c255], a

Jump_00e_5ccb:
jr_00e_5ccb:
    ld a, [hl+]
    ldh [$97], a
    bit 7, a
    jr nz, jr_00e_5d0d

    cp $05
    ret z

    cp $02
    ret z

    cp $03
    jr nz, jr_00e_5ce9

    push hl
    call Call_00e_5d74
    pop hl
    ld a, [$c255]
    cp $02
    ret z

    jr jr_00e_5ccb

jr_00e_5ce9:
    push hl
    call Call_00e_5d9a
    ld a, $02
    call Call_00e_5d6d
    pop hl
    ld a, [$c255]
    cp $02
    ret z

    push hl
    call Call_00e_5dd1
    ld hl, $c25b
    inc [hl]
    inc [hl]
    ld a, [$c25c]
    add $02
    ld [$c25c], a
    pop hl
    jr jr_00e_5d63

jr_00e_5d0d:
    cp $a1
    jr c, jr_00e_5d25

    cp $e0
    jr nc, jr_00e_5d25

    push hl
    sub $a1
    add a
    ld e, a
    ld d, $00
    ld hl, $5c17
    add hl, de
    ld a, [hl+]
    ld e, [hl]
    ld d, a
    jr jr_00e_5d29

jr_00e_5d25:
    ld d, a
    ld e, [hl]
    inc hl
    push hl

jr_00e_5d29:
    call Call_00e_5f09
    ld a, $03
    call Call_00e_5d6d
    pop hl
    ld a, [$c255]
    cp $02
    ret z

    push hl
    ld a, [$c25c]
    rr a
    jr c, jr_00e_5d45

    call Call_00e_5f63
    jr jr_00e_5d48

jr_00e_5d45:
    call Call_00e_5fdf

jr_00e_5d48:
    call Call_00e_5e47
    ld a, [$c25c]
    add $03
    ld [$c25c], a
    ld b, $02
    rr a
    jr c, jr_00e_5d5b

    ld b, $04

jr_00e_5d5b:
    ld a, [$c25b]
    add b
    ld [$c25b], a
    pop hl

jr_00e_5d63:
    ld a, [hl]
    cp $05
    ret z

    cp $02
    ret z

    jp Jump_00e_5ccb


Call_00e_5d6d:
    ld c, a
    ld a, [$c25c]
    cp $1f
    ret c

Call_00e_5d74:
    push hl
    ld a, [$c255]
    inc a
    ld [$c255], a
    ld a, [$c25b]
    cp $fd
    jr nc, jr_00e_5d96

    ld hl, $5d98

jr_00e_5d86:
    cp [hl]
    jr z, jr_00e_5d8e

    jr c, jr_00e_5d8e

    inc hl
    jr jr_00e_5d86

jr_00e_5d8e:
    ld a, [hl]
    ld [$c25b], a
    xor a
    ld [$c25c], a

jr_00e_5d96:
    pop hl
    ret


    sbc $fc

Call_00e_5d9a:
    ld hl, $60bf
    push hl
    sub $20
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld l, e
    ld h, d
    sla e
    rl d
    add hl, de
    pop de
    add hl, de
    ld b, $0c
    ld de, $c204

jr_00e_5db9:
    ld a, [hl+]
    ld [de], a
    inc de
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_5db9

    ld b, $04
    ld hl, $c200
    ld de, $c21c
    xor a

jr_00e_5dca:
    ld [hl+], a
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_5dca

    ret


Call_00e_5dd1:
    call Call_00e_5ec0
    ld a, [$c25c]
    rr a
    jr nc, jr_00e_5e1b

    ldh a, [$a7]
    ld l, a
    ldh a, [$a8]
    ld h, a
    ld de, $c200
    call Call_00e_5e33
    ldh a, [$a9]
    ld l, a
    ldh a, [$aa]
    ld h, a
    ld de, $c210
    call Call_00e_5e33
    ldh a, [$ab]
    ld l, a
    ldh a, [$ac]
    ld h, a
    ld de, $c200
    call Call_00e_5e08
    ldh a, [$ad]
    ld l, a
    ldh a, [$ae]
    ld h, a
    ld de, $c210

Call_00e_5e08:
    ld b, $10

jr_00e_5e0a:
    ld a, [de]
    rl a
    rl a
    rl a
    rl a
    and $f0
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_00e_5e0a

    ret


jr_00e_5e1b:
    ldh a, [$a7]
    ld l, a
    ldh a, [$a8]
    ld h, a
    ld de, $c200
    call Call_00e_5ead
    ldh a, [$a9]
    ld l, a
    ldh a, [$aa]
    ld h, a
    ld de, $c210
    jp Jump_00e_5ead


Call_00e_5e33:
    ld b, $10

jr_00e_5e35:
    ld a, [de]
    rr a
    rr a
    rr a
    rr a
    and $0f
    inc de
    or [hl]
    ld [hl+], a
    dec b
    jr nz, jr_00e_5e35

    ret


Call_00e_5e47:
    call Call_00e_5ec0
    ld a, [$c25c]
    rr a
    jr nc, jr_00e_5e80

    ldh a, [$a7]
    ld l, a
    ldh a, [$a8]
    ld h, a
    ld de, $c200
    call Call_00e_5eb6
    ldh a, [$a9]
    ld l, a
    ldh a, [$aa]
    ld h, a
    ld de, $c210
    call Call_00e_5eb6
    ldh a, [$ab]
    ld l, a
    ldh a, [$ac]
    ld h, a
    ld de, $c220
    call Call_00e_5ead
    ldh a, [$ad]
    ld l, a
    ldh a, [$ae]
    ld h, a
    ld de, $c230
    jr jr_00e_5ead

jr_00e_5e80:
    ldh a, [$a7]
    ld l, a
    ldh a, [$a8]
    ld h, a
    ld de, $c200
    call Call_00e_5ead
    ldh a, [$a9]
    ld l, a
    ldh a, [$aa]
    ld h, a
    ld de, $c210
    call Call_00e_5ead
    ldh a, [$ab]
    ld l, a
    ldh a, [$ac]
    ld h, a
    ld de, $c220
    call Call_00e_5ead
    ldh a, [$ad]
    ld l, a
    ldh a, [$ae]
    ld h, a
    ld de, $c230

Call_00e_5ead:
Jump_00e_5ead:
jr_00e_5ead:
    ld b, $10

jr_00e_5eaf:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_00e_5eaf

    ret


Call_00e_5eb6:
    ld b, $10

jr_00e_5eb8:
    ld a, [de]
    inc de
    or [hl]
    ld [hl+], a
    dec b
    jr nz, jr_00e_5eb8

    ret


Call_00e_5ec0:
    ld a, [$c25b]
    push af
    call Call_00e_5ef1
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    pop af
    inc a
    push af
    call Call_00e_5ef1
    ld a, l
    ldh [$a9], a
    ld a, h
    ldh [$aa], a
    pop af
    inc a
    push af
    call Call_00e_5ef1
    ld a, l
    ldh [$ab], a
    ld a, h
    ldh [$ac], a
    pop af
    inc a
    call Call_00e_5ef1
    ld a, l
    ldh [$ad], a
    ld a, h
    ldh [$ae], a
    ret


Call_00e_5ef1:
    ld de, $ce00
    ld l, a
    ld h, $00
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    add hl, de
    ret


Call_00e_5f09:
    ld a, d
    cp $98
    jr c, jr_00e_5f13

    ld a, e
    cp $74
    jr nc, jr_00e_5f3d

jr_00e_5f13:
    ld hl, $606f
    ld b, $14

jr_00e_5f18:
    inc hl
    ld a, [hl-]
    cp d
    jr z, jr_00e_5f21

    jr nc, jr_00e_5f36

    jr jr_00e_5f25

jr_00e_5f21:
    ld a, e
    cp [hl]
    jr c, jr_00e_5f36

jr_00e_5f25:
    ld a, e
    sub [hl]
    ld e, a
    inc hl
    ld a, d
    sbc [hl]
    ld d, a
    inc hl
    ld a, e
    add [hl]
    ld e, a
    inc hl
    ld a, d
    adc [hl]
    ld d, a
    jr jr_00e_5f40

jr_00e_5f36:
    inc hl
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_00e_5f18

jr_00e_5f3d:
    xor a
    ld d, a
    ld e, a

jr_00e_5f40:
    sla e
    rl d
    ld l, e
    ld h, d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    add hl, de
    ld de, $4000
    add hl, de
    ld b, $12
    ld de, $c240

jr_00e_5f5c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_5f5c

    ret


Call_00e_5f63:
    ld b, $40
    xor a
    ld hl, $c200

jr_00e_5f69:
    ld [hl+], a
    dec b
    jr nz, jr_00e_5f69

    ld hl, $c240
    ld de, $c204
    ld b, $03

jr_00e_5f75:
    ld a, [hl+]
    ld [de], a
    inc e
    ld [de], a
    inc e
    push de
    ld a, e
    add $1e
    ld e, a
    ld a, [hl]
    and $f0
    ld [de], a
    inc e
    ld [de], a
    inc e
    ld c, [hl]
    inc hl
    ld a, [hl+]
    sla a
    rl c
    sla a
    rl c
    sla a
    rl c
    sla a
    rl c
    and $f0
    ld [de], a
    inc e
    ld [de], a
    pop de
    ld a, c
    ld [de], a
    inc e
    ld [de], a
    inc e
    dec b
    jr nz, jr_00e_5f75

    ld de, $c210
    ld b, $03

jr_00e_5fac:
    ld a, [hl+]
    ld [de], a
    inc e
    ld [de], a
    inc e
    push de
    ld a, e
    add $1e
    ld e, a
    ld a, [hl]
    and $f0
    ld [de], a
    inc e
    ld [de], a
    inc e
    ld c, [hl]
    inc hl
    ld a, [hl+]
    sla a
    rl c
    sla a
    rl c
    sla a
    rl c
    sla a
    rl c
    and $f0
    ld [de], a
    inc e
    ld [de], a
    pop de
    ld a, c
    ld [de], a
    inc e
    ld [de], a
    inc e
    dec b
    jr nz, jr_00e_5fac

    ret


Call_00e_5fdf:
    ld b, $40
    xor a
    ld hl, $c200

jr_00e_5fe5:
    ld [hl+], a
    dec b
    jr nz, jr_00e_5fe5

    ld hl, $c240
    ld de, $c204
    ld b, $03

jr_00e_5ff1:
    ld a, [hl+]
    ld c, [hl]
    srl a
    rr c
    srl a
    rr c
    srl a
    rr c
    srl a
    rr c
    ld [de], a
    inc e
    ld [de], a
    ld a, [hl+]
    and $0f
    inc e
    ld [de], a
    inc e
    ld [de], a
    push de
    ld a, e
    add $1d
    ld e, a
    ld a, c
    ld [de], a
    inc e
    ld [de], a
    ld a, [hl+]
    inc e
    ld [de], a
    inc e
    ld [de], a
    pop de
    inc e
    dec b
    jr nz, jr_00e_5ff1

    ld de, $c210
    ld b, $03

jr_00e_6025:
    ld a, [hl+]
    ld c, [hl]
    srl a
    rr c
    srl a
    rr c
    srl a
    rr c
    srl a
    rr c
    ld [de], a
    inc e
    ld [de], a
    ld a, [hl+]
    and $0f
    inc e
    ld [de], a
    inc e
    ld [de], a
    push de
    ld a, e
    add $1d
    ld e, a
    ld a, c
    ld [de], a
    inc e
    ld [de], a
    ld a, [hl+]
    inc e
    ld [de], a
    inc e
    ld [de], a
    pop de
    inc e
    dec b
    jr nz, jr_00e_6025

    ret


    ld hl, $da00
    ld de, $8c00
    ld bc, $03b0
    jp memcpy


    ld bc, $0400
    ld hl, $da00

jr_00e_6067:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_00e_6067

    ret


    sbc a
    adc b
    db $10
    inc bc
    add l
    add a
    rst $10
    ld [bc], a
    sbc a
    add h
    ld l, e
    rst $38
    add b
    add h
    jp c, Jump_00e_7001

    add h
    rlc c
    ld b, b
    add h
    xor d
    ld bc, $83bf
    sub d
    ld bc, $839f
    ld a, d
    ld bc, $8380
    ld h, e
    ld bc, $8340
    inc h
    ld bc, $829f
    pop de
    nop
    add c
    add d
    or a
    nop
    ld h, b
    add d
    sbc l
    nop
    ld c, a
    add d
    sub e
    nop
    ldh a, [$81]
    adc d
    nop
    jp c, Jump_00e_7b81

    nop
    ret z

    add c
    ld [hl], h
    nop
    cp b
    add c
    ld l, h
    nop
    add b
    add c
    ccf
    nop
    ld b, b
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    jr c, jr_00e_6106

    jr c, jr_00e_6108

    jr c, jr_00e_60e2

    stop
    db $10
    stop
    ld l, h
    ld l, h
    inc h
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00e_60e2:
    nop
    ld l, h
    ld l, h
    inc h
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld a, h
    jp nc, $d0d0

    ld a, b
    ld d, $16
    sub [hl]
    ld a, h
    stop
    nop
    inc b
    ld b, h
    xor b
    ld c, b
    db $10
    db $10
    jr nz, jr_00e_6128

    ld c, d
    ld b, h

jr_00e_6106:
    nop
    nop

jr_00e_6108:
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_00e_6158

    ld c, b
    jr nc, jr_00e_6113

jr_00e_6113:
    ld h, b
    ld h, b
    jr nz, jr_00e_6157

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$3010], sp
    jr nz, jr_00e_6144

    jr nz, jr_00e_6146

    jr nz, jr_00e_6158

jr_00e_6128:
    db $10
    ld [$2000], sp
    db $10
    jr jr_00e_6137

    ld [$0808], sp
    ld [$1018], sp
    jr nz, jr_00e_6137

jr_00e_6137:
    nop
    nop
    db $10
    ld d, h

jr_00e_613b:
    jr c, jr_00e_613b

    jr c, jr_00e_6193

    stop
    nop
    nop
    nop

jr_00e_6144:
    nop
    db $10

jr_00e_6146:
    db $10
    db $10
    cp $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b

jr_00e_6157:
    ld h, b

jr_00e_6158:
    jr nz, jr_00e_619a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    nop
    nop
    ld [bc], a
    inc b
    inc b
    ld [$1010], sp
    jr nz, @+$42

    ld b, b
    add b
    nop
    ld a, h
    add $ce
    adc $d6
    sub $d6
    and $e6
    add $7c
    nop
    jr jr_00e_61c5

    jr c, jr_00e_61a7

    jr @+$1a

    jr @+$1a

jr_00e_6193:
    jr jr_00e_61ad

    jr jr_00e_6197

jr_00e_6197:
    ld a, h
    add $06

jr_00e_619a:
    ld b, $06
    inc e
    ld h, b
    ret nz

    ret nz

    ret nz

    cp $00
    ld a, h
    add [hl]
    ld b, $0e

jr_00e_61a7:
    inc a
    ld c, $06
    ld b, $06
    adc [hl]

jr_00e_61ad:
    ld a, h
    nop
    inc e
    inc e
    inc a
    inc l
    ld l, h
    ld c, h
    call z, $0cfe
    inc c
    inc c
    nop
    cp $c0
    ret nz

    ret nz

    db $fc
    ld b, $06
    ld b, $06
    add [hl]

jr_00e_61c5:
    ld a, h
    nop
    ld a, h
    jp nz, $c0c0

    db $fc
    add $c6
    add $c6
    add $7c
    nop
    cp $06
    ld c, $0c
    inc e
    jr @+$3a

    jr nc, @+$32

    jr nc, jr_00e_620e

    nop
    ld a, h
    add $c6
    add $38
    add $c6
    add $c6
    add $7c
    nop
    ld a, h
    add $c6
    add $c6
    add $7e
    ld b, $06
    add [hl]
    ld a, h
    nop
    jr @+$1a

    nop
    nop
    nop
    nop
    nop
    jr jr_00e_6218

    nop
    nop
    nop
    jr jr_00e_621d

    nop
    nop
    nop
    nop
    jr jr_00e_6223

    ld [$0010], sp

jr_00e_620e:
    nop
    inc b
    ld [$2010], sp
    ld b, b
    add b
    ld b, b
    jr nz, jr_00e_6228

jr_00e_6218:
    ld [$0004], sp
    nop
    nop

jr_00e_621d:
    nop
    nop
    db $fc
    nop
    nop
    db $fc

jr_00e_6223:
    nop
    nop
    nop
    nop
    add b

jr_00e_6228:
    ld b, b
    jr nz, jr_00e_623b

    ld [$0804], sp
    db $10
    jr nz, jr_00e_6271

    add b
    nop
    ld a, h
    add $06
    ld b, $06
    inc e
    jr nc, jr_00e_626b

jr_00e_623b:
    nop
    jr nc, jr_00e_626e

    nop
    nop
    nop
    nop
    nop
    jr nc, jr_00e_6275

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    add $c6
    add $c6
    cp $c6
    add $c6
    add $c6
    nop
    db $fc
    add $c6
    add $c6
    db $fc
    add $c6
    add $c6
    db $fc
    nop
    ld a, h
    add $c0
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

jr_00e_626b:
    ret nz

    add $7c

jr_00e_626e:
    nop
    ld hl, sp-$34

jr_00e_6271:
    add $c6
    add $c6

jr_00e_6275:
    add $c6
    add $cc
    ld hl, sp+$00
    cp $c0
    ret nz

    ret nz

    ret nz

    db $fc
    ret nz

    ret nz

    ret nz

    ret nz

    cp $00
    db $fc
    ret nz

    ret nz

    ret nz

    ret nz

    db $fc
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    ld a, h
    jp nz, $c0c0

    ret nz

    adc $c6
    add $c6
    add $7c
    nop
    add $c6
    add $c6
    add $fe
    add $c6
    add $c6
    add $00
    ld a, b
    jr nc, jr_00e_62de

    jr nc, jr_00e_62e0

    jr nc, jr_00e_62e2

    jr nc, jr_00e_62e4

    jr nc, jr_00e_632e

    nop
    ld b, $06
    ld b, $06
    ld b, $06
    add $c6
    add $c6
    ld a, h
    nop
    jp nz, $ccc6

    ret c

    ldh a, [$f8]
    ret c

    call z, $c6cc
    add $00
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    cp $00
    add d
    add $ee

jr_00e_62de:
    cp $ba

jr_00e_62e0:
    sub d
    add d

jr_00e_62e2:
    add d
    add d

jr_00e_62e4:
    add d
    add d
    nop
    jp nz, $e2e2

    or d
    or d
    sbc d
    sbc d
    adc [hl]
    adc [hl]
    add [hl]
    add [hl]
    nop
    ld a, h
    add $c6
    add $c6
    add $c6
    add $c6
    add $7c
    nop
    db $fc
    add $c6
    add $c6
    db $fc
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    ld a, h
    add $c6
    add $c6
    add $c6
    or $ce
    ld a, h
    ld c, $00
    db $fc
    add $c6
    add $c6
    db $fc
    add $c6
    add $c6
    add $00
    ld a, h
    jp nz, $c0c0

    ld a, b
    inc a
    ld b, $06
    ld b, $86
    ld a, h

jr_00e_632e:
    nop
    db $fc
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    nop
    add $c6
    add $c6
    add $c6
    add $c6
    add $c6
    ld a, h
    nop
    add $c6
    add $c6
    add $c6
    ld l, h
    ld l, h
    jr z, jr_00e_6379

    stop
    add $c6
    add $d6
    sub $d6
    sub $d6
    sub $fe
    ld l, h
    nop
    add $c6
    add $6c
    jr z, @+$12

    jr z, @+$6e

    add $c6
    add $00
    add $c6
    add $6c
    jr z, jr_00e_63a9

    db $10
    db $10
    db $10
    jr c, jr_00e_63ae

    nop
    cp $06

jr_00e_6379:
    ld b, $0e
    inc e
    jr c, jr_00e_63ee

    ldh [$c0], a
    ret nz

    cp $00
    jr c, @+$22

    jr nz, jr_00e_63a7

    jr nz, jr_00e_63a9

    jr nz, jr_00e_63ab

    jr nz, @+$22

    jr c, jr_00e_638f

jr_00e_638f:
    add $c6
    ld l, h
    db $10
    ld a, h
    db $10
    ld a, h
    db $10
    db $10
    jr c, jr_00e_63d2

    nop
    jr c, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$3808], sp
    nop

jr_00e_63a7:
    nop
    nop

jr_00e_63a9:
    nop
    db $10

jr_00e_63ab:
    ld [$08fc], sp

jr_00e_63ae:
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld d, h
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    adc $06
    ld a, [hl]

jr_00e_63d2:
    add $c6
    add $7e
    nop
    ret nz

    ret nz

    ret nz

    db $fc
    adc $c6
    add $c6
    add $ce
    db $fc
    nop
    nop
    nop
    nop
    ld a, h
    ld [c], a
    ret nz

    ret nz

    ret nz

    ret nz

    ld [c], a
    ld a, h

jr_00e_63ee:
    nop
    ld b, $06
    ld b, $7e
    and $c6
    add $c6
    add $e6
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld a, h
    add $c6
    cp $c0
    ret nz

    ld [c], a
    ld a, h
    nop
    inc e
    jr nc, jr_00e_643a

    ld a, b
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_00e_6441

    jr nc, jr_00e_6413

jr_00e_6413:
    nop
    nop
    nop
    ld a, [hl]
    add $c6
    add $7e
    ld b, $86
    ld a, h
    nop
    ret nz

    ret nz

    ret nz

    db $fc
    adc $c6
    add $c6
    add $c6
    add $00
    jr nc, jr_00e_645d

    nop
    nop
    jr nc, jr_00e_6461

    jr nc, jr_00e_6463

    jr nc, jr_00e_6465

    jr nc, jr_00e_6437

jr_00e_6437:
    ld b, $06
    nop

jr_00e_643a:
    ld b, $06
    ld b, $06
    ld b, $06
    add [hl]

jr_00e_6441:
    ld a, h
    nop
    ret nz

    ret nz

    ret nz

    add $cc
    ret c

    ldh a, [$f0]
    ret c

    call z, $00c6
    jr c, jr_00e_6469

    jr jr_00e_646b

    jr jr_00e_646d

    jr jr_00e_646f

    jr jr_00e_6471

    jr jr_00e_645b

jr_00e_645b:
    nop
    nop

jr_00e_645d:
    nop
    db $ec
    sub $d6

jr_00e_6461:
    sub $d6

jr_00e_6463:
    sub $d6

jr_00e_6465:
    sub $00
    nop
    nop

jr_00e_6469:
    nop
    db $fc

jr_00e_646b:
    adc $c6

jr_00e_646d:
    add $c6

jr_00e_646f:
    add $c6

jr_00e_6471:
    add $00
    nop
    nop
    nop
    ld a, h
    add $c6
    add $c6
    add $c6
    ld a, h
    nop
    nop
    nop
    nop
    db $fc
    add $c6
    add $fc
    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld a, [hl]
    add $c6
    add $7e
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    sbc $f0
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld a, h
    jp nz, $f8c0

    ld a, $06
    add [hl]
    ld a, h
    nop

jr_00e_64af:
    jr nc, jr_00e_64e1

    jr nc, jr_00e_64af

    jr nc, jr_00e_64e5

    jr nc, jr_00e_64e7

    jr nc, jr_00e_64e9

    jr c, jr_00e_64bb

jr_00e_64bb:
    nop
    nop
    nop
    add $c6
    add $c6
    add $c6
    add $7e
    nop
    nop
    nop
    nop
    add $c6
    add $c6
    add $6c
    jr c, jr_00e_64e2

    nop
    nop
    nop
    nop
    sub $d6
    sub $d6
    sub $d6
    ld a, h
    jr z, jr_00e_64df

jr_00e_64df:
    nop
    nop

jr_00e_64e1:
    nop

jr_00e_64e2:
    add $c6
    ld l, h

jr_00e_64e5:
    jr c, @+$6e

jr_00e_64e7:
    add $c6

jr_00e_64e9:
    add $00
    nop
    nop
    nop
    add $c6
    add $c6
    ld a, [hl]
    ld b, $86
    ld a, h
    nop
    nop
    nop
    nop
    cp $06
    inc c
    jr jr_00e_652f

    ld h, b
    ret nz

    cp $00
    ld hl, sp-$80
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld d, h
    sbc b

jr_00e_652f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    call Call_000_063d
    di
    call Call_000_04e1
    ld a, $ff
    ldh [$9f], a
    ld hl, $65da
    ld de, $8000
    ld bc, $0800
    call memcpy
    ld de, $6cda
    ld hl, $9800
    call Call_000_0502
    ld hl, $6e42
    ld a, [$cf5e]
    add a
    ld b, a
    add a
    add b
    call Call_000_065e
    ld de, $99c9
    call Call_000_0683
    ld a, [$cf2f]
    ld hl, $65ca
    and a
    call nz, Call_000_0f3a
    ld a, $e4
    ld [$cf1b], a
    ld [$cf1c], a
    call Call_000_04e1
    call Call_000_047e
    ld a, $d1
    call Call_000_03da

jr_00e_6591:
    call Call_000_0369
    call Call_000_055e
    ldh a, [$8c]
    and $c5
    jr z, jr_00e_6591

    and $c0
    jr z, jr_00e_65ba

    ld hl, $6e7e
    ldh a, [$9f]
    xor $ff
    ldh [$9f], a
    jr nz, jr_00e_65af

    ld hl, $6e8b

jr_00e_65af:
    ld de, $98a4
    call Call_000_06a5
    ld a, $03
    call Call_000_07ce

jr_00e_65ba:
    ldh a, [$8c]
    and $05
    jr z, jr_00e_6591

    call Call_000_03b4
    call Call_000_05e9
    ldh a, [$9f]
    ld b, a
    ret


    ld d, c
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    scf
    ret z

    scf
    ret z

    inc l
    db $d3
    cpl
    ret nc

    cpl
    ret nc

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    call c, $dc23
    inc hl
    inc b
    ei
    call c, $dc23
    inc hl
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    dec sp
    call nz, $c43b
    scf
    ret z

    scf
    ret z

    scf
    ret z

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    call c, $ec23
    inc de
    db $ec
    inc de
    nop
    rst $38
    nop
    rst $38
    dec a
    jp nz, $c13e

    ccf
    ret nz

    ccf
    ret nz

    jr nc, @-$2f

    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    inc a
    jp $03fc


    inc e
    db $e3
    call c, $bc23
    ld b, e
    cpl
    ret nc

    ld l, $d1
    dec l
    jp nc, $ca35

    ld [hl], $c9
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    call c, $1c23
    db $e3
    call z, $d433
    dec hl
    inc a
    jp $03fc


    nop
    rst $38
    nop
    rst $38
    scf
    ret z

    scf
    ret z

    dec sp
    call nz, $c43b
    inc a
    jp $c03f


    nop
    rst $38
    nop
    rst $38
    db $f4
    dec bc
    db $f4
    dec bc
    ld [hl], h
    adc e
    ld a, h
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld a, $c1
    add hl, sp
    add $37
    ret z

    cpl
    ret nc

    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    ld a, h
    add e
    ld a, h
    add e
    cp h
    ld b, e
    cp h
    ld b, e
    call nz, $fc3b
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld a, $c1
    ld a, $c1
    inc a
    jp $c43b


    daa
    ret c

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    inc c
    di
    db $ec
    inc de
    call c, Call_000_0023
    rst $38
    nop
    rst $38
    ccf
    ret nz

    dec sp
    call nz, $c43b
    dec sp
    call nz, $c43b
    dec sp
    call nz, $ff00
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    add hl, sp
    add $3e
    pop bc
    ccf
    ret nz

    daa
    ret c

    dec sp
    call nz, $ff00
    nop
    rst $38
    add sp, $17
    add sp, $17
    db $fc
    inc bc
    db $f4
    dec bc
    db $f4
    dec bc
    db $ec
    inc de
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    dec a
    jp nz, $c936

    ld a, [hl-]
    push bc
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    call c, $dc23
    inc hl
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    inc a
    jp $ff00


    nop
    rst $38
    dec a
    jp nz, $c13e

    ccf
    ret nz

    ld a, $c1
    ld sp, $3fce
    ret nz

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    inc a
    jp $03fc


    inc a
    jp $23dc


    db $ec
    inc de
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    inc a
    jp $c43b


    scf
    ret z

    dec sp
    call nz, $c33c
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ld a, h
    add e
    cp h
    ld b, e
    call c, $bc23
    ld b, e
    ld a, h
    add e
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    inc a
    jp $c43b


    scf
    ret z

    scf
    ret z

    scf
    ret z

    nop

jr_00e_67cb:
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ld a, h
    add e
    cp h
    ld b, e
    call c, $dc23
    inc hl
    call c, Call_000_3f23
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    inc a
    jp $dc23


    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    call c, $bc23
    ld b, e
    ld a, h
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    dec sp
    call nz, $c43b
    dec sp
    call nz, $c43b
    jr c, jr_00e_67cb

    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $ec
    inc de
    call c, Call_000_3c23
    jp $03fc


    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, $c1
    ld sp, $3fce
    ret nz

    nop
    rst $38
    nop
    rst $38
    db $ec
    inc de
    call c, $bc23
    ld b, e
    ld a, h
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    dec sp
    call nz, $c03f
    ccf
    ret nz

    ccf
    ret nz

    inc a
    jp $c03f


    nop
    rst $38
    nop
    rst $38
    call c, $dc23
    inc hl
    cp h
    ld b, e
    ld a, h
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    call c, $fc23
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    inc a
    jp $c03f


    nop
    rst $38
    nop
    rst $38
    db $ec
    inc de
    db $ec
    inc de
    call c, Call_000_3c23
    jp $03fc


    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    dec sp
    call nz, $c837
    scf
    ret z

    dec sp
    call nz, $c33c
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    cp h
    ld b, e
    call c, $dc23
    inc hl
    cp h
    ld b, e
    ld a, h
    add e
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    dec sp
    call nz, $c33c
    scf
    ret z

    dec sp
    call nz, $c33c
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    sbc h
    ld h, e
    ld e, h
    and e
    call c, $bc23
    ld b, e
    ld a, h
    add e
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    inc a
    jp $c43b


    scf
    ret z

    scf
    ret z

    scf
    ret z

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ld a, h
    add e
    cp h
    ld b, e
    call c, $dc23
    inc hl
    call c, Call_000_0023
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld a, $c1
    inc a
    jp $c13e


    ld a, $c1
    ld a, $c1
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    inc a
    jp $c43b


    scf
    ret z

    ccf
    ret nz

    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ld a, h
    add e
    cp h
    ld b, e
    call c, $dc23
    inc hl
    cp h
    ld b, e
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    inc a
    jp $c43b


    scf
    ret z

    ccf
    ret nz

    inc a
    jp $ff00


    nop
    rst $38
    db $fc
    inc bc
    ld a, h

jr_00e_6951:
    add e
    cp h
    ld b, e
    call c, $bc23
    ld b, e
    ld a, h
    add e
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ld a, $c1
    ld a, $c1
    dec a
    jp nz, $c23d

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    inc a
    jp $43bc


    cp h
    ld b, e
    cp h
    ld b, e
    cp h
    ld b, e
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    jr nc, jr_00e_6951

    scf
    ret z

    scf
    ret z

    inc [hl]
    swap e
    call z, $ff00
    nop
    rst $38
    db $fc
    inc bc
    inc e

jr_00e_6991:
    db $e3
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, h
    add e
    cp h
    ld b, e
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    inc a
    jp $c43b


    scf
    ret z

    inc [hl]
    swap e
    call z, $ff00
    nop
    rst $38
    db $fc
    inc bc
    ld a, h
    add e
    cp h
    ld b, e
    call c, Call_00e_7c23
    add e
    cp h
    ld b, e
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    jr nc, jr_00e_6991

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    inc e
    db $e3
    call c, $bc23
    ld b, e
    cp h
    ld b, e
    ld a, h
    add e
    scf
    ret z

    scf
    ret z

    scf
    ret z

    dec sp
    call nz, $c33c
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    call c, $dc23
    inc hl
    call c, $bc23
    ld b, e
    ld a, h

jr_00e_69f3:
    add e
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld a, $c1
    dec a
    jp nz, $c43b

    jr nc, jr_00e_69f3

    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    ld a, h
    add e
    db $fc
    inc bc
    db $fc

jr_00e_6a2f:
    inc bc
    db $fc
    inc bc
    inc e
    db $e3
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    scf
    ret z

    dec sp
    call nz, $c33c
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    cp h
    ld b, e
    call c, $dc23
    inc hl
    cp h
    ld b, e
    ld a, h
    add e
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    dec sp
    call nz, $c43b
    jr nc, jr_00e_6a2f

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    cp h
    ld b, e
    cp h
    ld b, e
    inc c
    di
    cp h
    ld b, e
    cp h
    ld b, e
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    scf
    ret z

    dec sp
    call nz, $c33c
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    call c, $dc23
    inc hl
    call c, $bc23
    ld b, e
    ld a, h
    add e
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    scf
    ret z

    scf
    ret z

    scf
    ret z

    dec sp
    call nz, $c33c
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    call c, $dc23
    inc hl
    call c, $bc23
    ld b, e
    ld a, h
    add e
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ld a, $c1
    ld a, $c1
    ld a, $c1
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    ld a, h
    add e
    ld a, h
    add e
    db $fc
    inc bc
    db $fc

jr_00e_6ad1:
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    dec sp
    call nz, $c33c
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    call c, Call_000_3c23
    jp $03fc


    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld a, $c1
    ld a, $c1
    dec a
    jp nz, $c43b

    jr c, jr_00e_6ad1

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ld a, $c1
    ld hl, $3fde
    ret nz

    ld a, $c1
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    inc b
    ei
    cp h
    ld b, e
    ld a, h
    add e
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    dec a
    jp nz, $ff00

    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    scf
    ret z

    ld [hl], $c9
    cpl
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    inc e
    db $e3
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, $c1
    ccf
    ret nz

    ld [hl], $c9
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, h
    add e
    inc a
    jp $ff00


    nop
    rst $38
    dec a
    jp nz, $c13e

    ccf
    ret nz

    ld a, $c1
    ld sp, $3fce

jr_00e_6ba9:
    ret nz

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    inc a
    jp $03fc


    inc a
    jp $23dc


    db $ec
    inc de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, $e1
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    add a
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    dec sp
    call nz, $c837
    scf
    ret z

    jr c, jr_00e_6ba9

    ccf
    ret nz

    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $ec
    inc de
    inc e
    db $e3
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    scf
    ret z

    scf
    ret z

    cpl
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    ld a, h
    add e
    ld [hl], h
    adc e
    ld [hl], h
    adc e
    ld l, h
    sub e
    sbc h
    ld h, e
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, h
    add e
    adc h
    ld [hl], e
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    dec sp
    call nz, $c43b
    dec sp
    call nz, $c53a
    dec a
    jp nz, $c03f

    nop
    rst $38
    nop
    rst $38
    cp h
    ld b, e
    call c, $dc23
    inc hl
    call c, $fc23
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ld l, $d1
    dec l
    jp nc, $d22d

    ld l, $d1
    scf
    ret z

    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    inc c
    di
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    dec [hl]
    jp z, $cc33

    ld a, [hl-]
    push bc
    ccf
    ret nz

    ld a, $c1
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    ld e, h
    and e
    ld e, h
    and e
    inc a
    jp $837c


    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    inc a
    jp $c03f


    nop
    rst $38
    nop
    rst $38
    db $ec
    inc de
    db $ec
    inc de
    call c, Call_000_3c23
    jp $03fc


    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld e, a
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    ld l, a
    nop
    ld [$0a09], sp
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_00e_6df2

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00e_6e06

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_00e_6e16

    nop
    nop
    nop
    nop
    nop

jr_00e_6df2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00e_6e06:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00e_6e16:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    jr nc, jr_00e_6e77

    ld b, b
    ld b, c
    ld [bc], a
    ld [bc], a
    ld [hl-], a
    inc sp
    ld b, d
    ld b, e
    ld [bc], a
    ld [bc], a
    inc [hl]
    dec [hl]
    ld b, h
    ld b, l
    ld [bc], a
    ld [bc], a
    ld [hl], $37
    ld b, [hl]
    ld b, a
    ld [bc], a
    ld [bc], a
    jr c, jr_00e_6e97

    ld c, b
    ld c, c
    ld [bc], a
    ld [bc], a
    ld a, [hl-]
    dec sp
    ld c, d
    ld c, e
    ld [bc], a
    ld [bc], a
    inc a
    dec a
    ld c, h
    ld c, l
    ld [bc], a
    ld [bc], a
    ld a, $3f
    ld c, [hl]
    ld c, a
    ld [bc], a
    ld [bc], a
    inc e
    dec e
    inc l

jr_00e_6e77:
    dec l
    ld [bc], a
    ld [bc], a
    ld e, $1f
    ld l, $2f
    ld a, [bc]
    ld [bc], a
    dec b
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld e, a
    ld l, [hl]

jr_00e_6e97:
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00e_7001:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00e_7b81:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00e_7c23:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00e_7ffc:
    rst $38
    rst $38
    rst $38
    rst $38
