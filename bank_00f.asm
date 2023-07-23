; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    call Call_000_05e9
    di
    call Call_000_04e1
    ld a, [$cf2f]
    ld hl, $1170
    and a
    call nz, Call_000_0f3a
    ld hl, $4547
    ld de, $8000
    ld bc, $0a60
    call memcpy
    ld de, $4fa7
    ld hl, $9800
    call copy_tile_map_20x18
    xor a
    ld [$cf0b], a
    ld [$cf0c], a
    ldh [$bd], a
    ldh [$be], a
    ld a, $8f
    ldh [rWY], a
    ld a, $a6
    ldh [rWX], a
    ld a, $e4
    ld [$cf1b], a
    ld [$cf1c], a
    ld a, [$c2c7]
    ld hl, $cf34
    ld b, $04

jr_00f_4049:
    cp [hl]
    jr nc, jr_00f_4056

    push af
    ld a, $08
    call Call_000_065e
    pop af
    dec b
    jr nz, jr_00f_4049

jr_00f_4056:
    ld a, $04
    sub b
    ld [$d049], a
    cp $04
    jr z, jr_00f_4072

    ld hl, $cf4f
    ld de, $cf57
    ld c, b

jr_00f_4067:
    ld b, $08

jr_00f_4069:
    ld a, [hl-]
    ld [de], a
    dec de
    dec b
    jr nz, jr_00f_4069

    dec c
    jr nz, jr_00f_4067

jr_00f_4072:
    ld a, [$d049]
    ld hl, $cf30
    add a
    add a
    call Call_000_065d
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [$c2ca]
    ld [hl+], a
    ld a, [$c2c7]
    ld [hl+], a
    ld a, [$c2c8]
    ld [hl+], a
    ld a, [$c2c9]
    ld [hl+], a
    xor a
    call Call_00f_4336
    ld a, $01
    call Call_00f_4336
    ld a, $02
    call Call_00f_4336
    ld a, $03
    call Call_00f_4336
    ld a, $04
    call Call_00f_4336
    ld a, [$cf2f]
    ld hl, $4316
    and a
    call nz, Call_000_0f3a
    ld a, $d3
    call set_pal_and_lcd_control
    call Call_000_0369
    call Call_00f_40f9
    ld a, [$d049]
    ld hl, $cf30
    add a
    add a
    call Call_000_065d
    ld a, [$d040]
    inc a
    ld [hl+], a
    ld a, [$d041]
    inc a
    ld [hl+], a
    ld a, [$d042]
    inc a
    ld [hl+], a
    call Call_000_0369
    call Call_000_047e
    ld b, $64

jr_00f_40e0:
    push bc
    call Call_000_0369
    call Call_000_055e
    pop bc
    dec b
    jr nz, jr_00f_40e0

    call Call_000_03b4
    ld a, [$cf2f]
    ld hl, $4326
    and a
    call nz, Call_000_0f3a
    ret


Call_00f_40f9:
    ld [$d048], a
    ld hl, $9862
    ld b, a
    add a
    swap a
    ld e, a
    ld d, $00
    srl e
    rl d
    add hl, de
    xor a
    ld [$d040], a
    ld [$d041], a
    ld [$d042], a
    ld [$d044], a
    ld [$d047], a
    ld a, $10
    ld [$c101], a
    ld a, $a5
    ld [$c102], a
    ld a, $10
    ld [$c103], a
    ld a, [$d049]
    ld b, a
    add a
    add b
    add a
    add a
    add a
    add $28
    ld [$c100], a
    xor a
    call Call_00f_4251

Jump_00f_413c:
jr_00f_413c:
    call Call_000_0369
    call Call_000_055e
    call Call_000_05a1
    call Call_000_047e
    ld a, [$d047]
    inc a
    ld [$d047], a
    and $07
    jr nz, jr_00f_4168

    ld a, [$d047]
    srl a
    srl a
    srl a
    ld hl, $427c
    call Call_000_065e
    ld a, [hl]
    ld [$cf1d], a
    ldh [rOBP1], a

jr_00f_4168:
    ldh a, [$8c]
    and $33
    jr z, jr_00f_413c

    ldh a, [$8c]
    and $30
    jr z, jr_00f_419a

    ld b, a
    ld a, [$d044]
    cp $03
    jr z, jr_00f_419a

    ld hl, $d040
    call Call_000_065e
    ld a, [hl]
    bit 5, b
    jr nz, jr_00f_418f

    inc a
    cp $1a
    jr nz, jr_00f_4196

    xor a
    jr jr_00f_4196

jr_00f_418f:
    dec a
    cp $ff
    jr nz, jr_00f_4196

    ld a, $19

jr_00f_4196:
    ld [hl], a
    call Call_00f_4251

jr_00f_419a:
    ldh a, [$8c]
    and $01
    jr z, jr_00f_41d7

    ld a, [$d044]
    inc a
    ld [$d044], a
    cp $03
    jr nz, jr_00f_41b6

    call Call_00f_424f
    ld a, $28
    ld [$c101], a
    jp Jump_00f_413c


jr_00f_41b6:
    ld a, [$d044]
    cp $04
    call z, Call_00f_4226
    ld hl, $d040
    call Call_000_065e
    xor a
    ld [hl], a
    call Call_00f_4251
    ld a, [$d044]
    add a
    add a
    add a
    add $10
    ld [$c101], a
    jp Jump_00f_413c


jr_00f_41d7:
    ldh a, [$8c]
    and $02
    jp z, Jump_00f_413c

    ld a, [$d044]
    and a
    jp z, Jump_00f_413c

    dec a
    ld [$d044], a
    ld hl, $d040
    call Call_000_065e
    xor a
    ld [hl], a
    call Call_00f_4251
    ld a, [$d049]
    ld hl, $4280
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d044]
    inc a
    call Call_000_065e
    xor a
    ld [$d045], a
    ld [$d046], a
    ld e, l
    ld d, h
    ld hl, $d045
    ld a, $02
    call Call_000_0787
    ld a, [$d044]
    add a
    add a
    add a
    add $10
    ld [$c101], a
    jp Jump_00f_413c


Call_00f_4226:
    ld a, [$d049]
    ld hl, $4280
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $03
    call Call_000_065e
    xor a
    ld [$d045], a
    ld [$d046], a
    ld e, l
    ld d, h
    ld hl, $d045
    ld a, $02
    call Call_000_0787
    ld a, $f0
    ld [$c100], a
    pop af
    ret


Call_00f_424f:
    ld a, $1a

Call_00f_4251:
    ld hl, $4491
    call Call_000_065d
    ld a, [hl+]
    ld [$d045], a
    ld a, [hl]
    ld [$d046], a
    ld a, [$d049]
    ld hl, $4280
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d044]
    call Call_000_065e
    ld e, l
    ld d, h
    ld hl, $d045
    ld a, $02
    call Call_000_0787
    ret


    db $e4
    sub e
    ld c, [hl]
    add hl, sp
    ld h, d
    sbc b
    jp nz, Jump_000_2298

    sbc c
    add d
    sbc c
    ld [c], a
    sbc c
    call Call_000_05e9
    di
    call Call_000_04e1
    ld a, [$cf2f]
    ld hl, $1170
    and a
    call nz, Call_000_0f3a
    ld hl, $4547
    ld de, $8000
    ld bc, $0a60
    call memcpy
    ld de, $4fa7
    ld hl, $9800
    call copy_tile_map_20x18
    xor a
    ld [$cf0b], a
    ld [$cf0c], a
    ldh [$bd], a
    ldh [$be], a
    ld a, $8f
    ldh [rWY], a
    ld a, $a6
    ldh [rWX], a
    ld a, $e4
    ld [$cf1b], a
    ld [$cf1c], a
    xor a
    call Call_00f_4336
    ld a, $01
    call Call_00f_4336
    ld a, $02
    call Call_00f_4336
    ld a, $03
    call Call_00f_4336
    ld a, $04
    call Call_00f_4336
    ld a, [$cf2f]
    ld hl, $4316
    and a
    call nz, Call_000_0f3a
    ld a, $d1
    call set_pal_and_lcd_control
    call Call_000_0369
    ld bc, $0096

jr_00f_42f8:
    call Call_000_0369
    call Call_000_055e
    ldh a, [$8b]
    bit 0, a
    ret nz

    dec bc
    ld a, b
    or c
    jr nz, jr_00f_42f8

    call Call_000_03b4
    ld a, [$cf2f]
    ld hl, $4326
    and a
    call nz, Call_000_0f3a
    ret


    ld d, c
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    jp z, RST_00

    nop
    nop
    nop
    nop
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

Call_00f_4336:
    ldh [$9f], a
    ld hl, $d000
    ld [hl], $14
    inc l
    ld [hl], $02
    inc l
    add a
    add $7b
    ld c, a
    ld a, $44
    adc $00
    ld b, a
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    ld b, $28

jr_00f_4351:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_00f_4351

    ldh a, [$9f]
    add a
    add a
    add a
    add $30
    ld e, a
    ld d, $cf
    ld hl, $d004
    ld a, [de]
    inc de
    add a
    add $8f
    ld c, a
    ld a, $44
    adc $00
    ld b, a
    ld a, [bc]
    ld [hl], a
    inc bc
    ld a, l
    add $14
    ld l, a
    ld a, [bc]
    ld [hl], a
    ld a, l
    add $ed
    ld l, a
    ld a, [de]
    inc de
    add a
    add $8f
    ld c, a
    ld a, $44
    adc $00
    ld b, a
    ld a, [bc]
    ld [hl], a
    inc bc
    ld a, l
    add $14
    ld l, a
    ld a, [bc]
    ld [hl], a
    ld a, l
    add $ed
    ld l, a
    ld a, [de]
    inc de
    add a
    add $8f
    ld c, a
    ld a, $44
    adc $00
    ld b, a
    ld a, [bc]
    ld [hl], a
    inc bc
    ld a, l
    add $14
    ld l, a
    ld a, [bc]
    ld [hl], a
    ld hl, $d008
    ld a, [de]
    inc de
    push de
    add a
    add a
    add a
    add $c7
    ld e, a
    ld a, $44
    adc $00
    ld d, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    ld a, l
    add $11
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    pop de
    ld a, [de]
    inc de
    push de
    ld c, a
    srl a
    srl a
    srl a
    srl a
    and $0f
    add $85
    ld e, a
    ld a, $44
    adc $00
    ld d, a
    ld a, [de]
    ld [$d00d], a
    ld a, c
    and $0f
    add $85
    ld e, a
    ld a, $44
    adc $00
    ld d, a
    ld a, [de]
    ld [$d00e], a
    pop de
    ld a, [de]
    srl a
    srl a
    srl a
    srl a
    and $0f
    jr nz, jr_00f_440f

    xor a
    jr jr_00f_4418

jr_00f_440f:
    add $85
    ld c, a
    ld a, $44
    adc $00
    ld b, a
    ld a, [bc]

jr_00f_4418:
    ld [$d010], a
    ld a, [de]
    and $0f
    add $85
    ld c, a
    ld a, $44
    adc $00
    ld b, a
    ld a, [bc]
    ld [$d011], a
    ld a, $3d
    ld [$d012], a
    inc de
    ld a, [de]
    srl a
    srl a
    srl a
    srl a
    and $0f
    add $85
    ld c, a
    ld a, $44
    adc $00
    ld b, a
    ld a, [bc]
    ld [$d013], a
    ld a, [de]
    and $0f
    add $85
    ld c, a
    ld a, $44
    adc $00
    ld b, a
    ld a, [bc]
    ld [$d014], a
    ld hl, $d000
    ldh a, [$9f]
    ld b, a
    add a
    add b
    add a
    ld d, $00
    sla a
    rl d
    sla a
    rl d
    sla a
    rl d
    sla a
    rl d
    add $60
    ld e, a
    ld a, d
    adc $98
    ld d, a
    jp Jump_000_0683


    db $e3
    ld c, a
    rra
    ld d, b
    ld e, e
    ld d, b
    sub a
    ld d, b
    db $d3
    ld d, b
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_00f_44c5

    ld a, [hl-]
    dec sp
    inc a
    nop
    nop
    ld b, c
    ld c, h
    ld b, d
    ld c, l
    ld b, e
    ld c, [hl]
    ld b, h
    ld c, a
    ld b, l
    ld d, b
    ld b, l
    ld d, c
    ld b, e
    ld d, d
    ld b, [hl]
    ld d, e
    ld b, a
    ld d, h
    ld c, b
    ld d, l
    ld c, c
    ld d, [hl]
    ld c, d
    ld d, a
    ld c, e
    ld e, b
    ld e, c
    ld h, e
    ld e, d
    ld h, h
    ld b, d
    ld h, l
    ld e, d
    ld h, [hl]
    ld b, d
    ld h, a
    ld e, e
    ld l, b
    ld e, h
    ld d, h
    ld e, l
    ld h, h
    ld e, [hl]
    ld l, c
    ld e, a
    ld l, d
    ld h, b
    ld l, e
    ld h, c
    ld l, h
    ld h, d
    ld l, l

jr_00f_44c5:
    and e
    and h
    sub b
    sub c
    ld a, d
    ld a, e
    sbc h
    sbc l
    adc b
    adc c
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    add [hl]
    add a
    adc b
    adc c
    db $76
    ld [hl], a
    ld a, d
    ld a, e
    add h
    add l
    adc b
    adc c
    ld [hl], h
    ld [hl], l
    ld a, d
    ld a, e
    add d
    add e
    adc b
    adc c
    ld [hl], d
    ld [hl], e
    ld a, d
    ld a, e
    add b
    add c
    adc b
    adc c
    ld [hl], b
    ld [hl], c
    ld a, d
    ld a, e
    ld a, [hl]
    ld a, a
    adc b
    adc c
    ld l, [hl]
    ld l, a
    ld a, d
    ld a, e
    ld a, [hl]
    ld a, a
    adc b
    adc c
    nop
    nop
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    adc b
    adc c
    sub b
    sub c
    sub d
    sub e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ld l, [hl]
    ld l, a
    sub d
    sub e
    ld a, [hl]
    ld a, a
    sbc [hl]
    sbc a
    ld [hl], b
    ld [hl], c
    sub d
    sub e
    ld a, [hl]
    ld a, a
    sbc [hl]
    sbc a
    ld [hl], d
    ld [hl], e
    sub d
    sub e
    add b
    add c
    sbc [hl]
    sbc a
    ld [hl], h
    ld [hl], l
    sub d
    sub e
    add d
    add e
    sbc [hl]
    sbc a
    db $76
    ld [hl], a
    sub d
    sub e
    add h
    add l
    sbc [hl]
    sbc a
    ld a, b
    ld a, c
    sub d
    sub e
    add [hl]
    add a
    sbc [hl]
    sbc a
    sub h
    sub l
    sub [hl]
    sub a
    and b
    and c
    sbc c
    and d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    jr jr_00f_457b

    db $10
    db $10
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    sub b
    sub b
    sub b
    sub b
    sub h
    sub h
    nop
    nop
    nop
    nop

jr_00f_457b:
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$1b13], sp
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    dec e
    nop
    nop
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    inc h
    inc h
    and h
    and h
    ld b, h
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3f01
    ccf
    jr nz, jr_00f_45e5

    jr nz, jr_00f_45e7

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    nop
    nop

jr_00f_45e5:
    nop
    nop

jr_00f_45e7:
    nop
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
    add b
    inc bc
    inc bc
    nop
    ld bc, $0000
    nop
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
    jp nz, Jump_000_00c2

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
    inc b
    inc b
    inc b
    inc bc
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
    nop
    nop
    pop bc
    pop bc
    nop
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
    add c
    add c
    ld h, c
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    inc d
    ld a, [bc]
    ld a, [bc]
    ldh a, [$f0]
    db $10
    db $10
    ld de, $1011
    db $10
    ld e, $1e
    db $10
    db $10
    db $10
    db $10
    inc e
    inc e
    jr nc, jr_00f_4695

    db $10
    db $10
    inc e
    inc e
    nop
    nop
    ld hl, sp-$08
    ld [$4808], sp
    ld e, b
    jr nc, jr_00f_46a3

    ld c, b
    ld l, b
    add h
    add h
    ld [hl-], a
    ld [hl-], a
    ld d, c
    ld d, e
    ld de, $1111
    ld de, $1111
    ld de, $1011
    db $10
    inc de
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_00f_46b1

    jr nz, jr_00f_46b3

    jr nz, jr_00f_46b5

jr_00f_4695:
    ld hl, sp-$08
    inc a
    inc a
    ld bc, $3c01
    inc a
    nop
    nop
    inc a
    inc a
    dec h
    dec h

jr_00f_46a3:
    dec h
    dec h
    dec a
    dec a
    and h
    and h
    ld [$2008], sp
    jr nz, @+$12

    db $10
    ld b, h
    ld b, h

jr_00f_46b1:
    ld b, h
    ld b, h

jr_00f_46b3:
    ld b, b
    ld h, b

jr_00f_46b5:
    jr c, jr_00f_46ef

    rrca
    rrca
    ld bc, $0101
    ld bc, $0909
    add hl, bc
    add hl, bc
    dec c
    dec e
    inc de
    scf
    jr nz, jr_00f_46e8

    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    jr @+$1e

    ret nz

jr_00f_46e8:
    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    add b
    ret nz

jr_00f_46ef:
    add b
    add b
    nop
    add b
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $04
    inc b
    ld [$100c], sp
    jr @+$62

    ld [hl], b
    add b
    ret nz

    ld e, $1e
    ld [bc], a
    ld [bc], a
    ld bc, $1f03
    rra
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld h, b
    ld h, b
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $08
    inc c
    jr nc, jr_00f_476d

    ret nz

    ldh [rDIV], a
    ld b, $08
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    ld c, $10
    db $10
    db $10
    db $10
    jr nz, jr_00f_477d

    jr nz, jr_00f_476f

    ld b, b
    ld h, b
    add b
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld c, $0e
    ld e, $1e
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06

jr_00f_476d:
    ld b, $06

jr_00f_476f:
    ld b, $06
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00f_477d:
    nop
    nop
    jr nc, jr_00f_47b1

    or b
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    dec sp
    dec sp
    ld sp, $3131
    ld sp, $0101
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ld b, $06
    inc c
    inc c
    jr jr_00f_47c5

    jr nc, jr_00f_47df

    ccf
    ccf

jr_00f_47b1:
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    or b
    or b
    or b
    nop
    nop

jr_00f_47c5:
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    inc sp
    inc sp
    ld sp, $0131
    ld bc, $0303
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b

jr_00f_47df:
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $3101
    ld sp, $3333
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    or b
    or b
    jr nc, jr_00f_4833

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    dec bc
    dec bc
    dec de
    dec de
    inc de
    inc de
    inc sp
    inc sp
    inc hl
    inc hl
    ccf
    ccf
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    jr nc, jr_00f_4861

    or b
    or b

jr_00f_4833:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    jr nc, jr_00f_486f

    jr nc, jr_00f_4871

    jr nc, jr_00f_4873

    jr nc, jr_00f_4875

    ccf
    ccf
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $3131
    inc sp
    inc sp

jr_00f_4861:
    rra
    rra
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_00f_486f:
    or b
    or b

jr_00f_4871:
    jr nc, jr_00f_48a3

jr_00f_4873:
    nop
    nop

jr_00f_4875:
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    jr jr_00f_48a1

    jr c, jr_00f_48c3

    jr jr_00f_48a5

    jr jr_00f_48a7

    jr jr_00f_48a9

    jr jr_00f_48ab

    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld b, $06
    inc c
    inc c
    jr jr_00f_48b9

jr_00f_48a1:
    jr nc, jr_00f_48d3

jr_00f_48a3:
    ld a, [hl]
    ld a, [hl]

jr_00f_48a5:
    nop
    nop

jr_00f_48a7:
    inc a
    inc a

jr_00f_48a9:
    ld h, [hl]
    ld h, [hl]

jr_00f_48ab:
    ld b, $06
    inc c
    inc c
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    inc c
    inc c

jr_00f_48b9:
    inc e
    inc e
    inc a
    inc a
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld a, [hl]
    ld a, [hl]

jr_00f_48c3:
    inc c
    inc c
    nop
    nop
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ld a, b
    ld a, b
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_00f_48d3:
    ld a, b
    ld a, b
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc c
    inc c
    inc c
    inc c
    jr jr_00f_490b

    jr jr_00f_490d

    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]

jr_00f_490b:
    ld h, [hl]
    ld h, [hl]

jr_00f_490d:
    ld a, $3e
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld b, b
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
    ld [hl], a
    ld [hl], a
    ld d, d
    ld d, d
    ld [hl], d
    ld [hl], d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0d08], sp
    dec c
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    xor c
    xor c
    xor l
    xor l
    xor e
    xor e
    xor c
    xor c
    xor c
    xor c
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    jr c, jr_00f_4988

    jr z, jr_00f_498a

    jr z, @+$2a

    ld l, h
    ld b, h
    ld b, h
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld b, h
    ld b, h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, h
    ld b, h
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    jr c, jr_00f_49b5

    ld b, h
    ld b, h
    add d
    add d
    add d
    add d
    add b
    add b
    add b
    add b
    nop

jr_00f_4988:
    nop
    nop

jr_00f_498a:
    nop
    ld hl, sp-$08
    ld b, h
    ld b, h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    nop
    nop
    nop
    nop
    cp $fe
    ld b, d
    ld b, d
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, b
    ld c, b
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    rst $20
    rst $20
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d

jr_00f_49b5:
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    jr c, jr_00f_49f5

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    inc a
    inc a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    xor $ee
    ld b, h
    ld b, h
    ld b, h
    ld c, h
    ld c, b
    ld c, b
    ld d, b
    ld d, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_00f_49f5:
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    add d
    add d
    add $c6
    add $c6
    xor d
    xor $aa
    xor d
    sub d
    cp d
    ld b, h
    ld b, h
    ld a, h
    cp $82
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, h
    ld b, h
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add d
    add d
    add d
    add d
    ld b, h
    ld b, h
    jr c, jr_00f_4a6b

    nop
    nop
    nop
    nop
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, h
    ld b, h
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, d
    ld b, d
    cp $fe
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ldh [$e0], a
    nop
    nop
    nop
    nop
    add b
    add b
    sbc [hl]
    sbc [hl]

jr_00f_4a6b:
    add h
    add h
    add h
    add h
    ld b, h
    ld b, h
    inc a
    inc a
    nop
    nop
    nop
    nop
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    rst $20
    rst $20
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr c, jr_00f_4acb

    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$8808], sp
    sbc b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    ld d, b
    ld d, b
    ld c, b
    ld c, b
    ld c, b
    ld c, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    xor $ee
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    cp $fe
    nop
    nop
    nop
    nop
    sub d
    sub d
    add d
    add d

jr_00f_4acb:
    add d
    add d
    add d
    add d
    add d
    add d
    add $c6
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    ld b, a
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld d, d
    ld [hl], d
    ld d, d
    ld d, d
    ld c, d
    ld e, d
    nop
    nop
    nop
    nop
    jr c, jr_00f_4b25

    ld b, h
    ld b, h
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    nop
    nop
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    ld b, [hl]
    ld b, [hl]
    add d
    add d
    add b
    add b
    ld b, b
    ld b, b
    jr nc, jr_00f_4b37

    nop
    nop
    nop
    nop
    cp $fe
    sub d
    sub d
    sub d
    sub d
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    add $c6
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d

jr_00f_4b25:
    add d
    add d
    nop
    nop
    nop
    nop
    add $c6
    add d
    add d
    add d
    add d
    add d
    add d
    ld b, h
    add $44
    ld b, h

jr_00f_4b37:
    nop
    nop
    nop
    nop
    add $c6
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    sub d
    sub d
    nop
    nop
    nop
    nop
    add $c6
    add d
    add d
    ld b, h
    ld b, h
    ld b, h
    ld l, h
    jr z, jr_00f_4b7d

    db $10
    stop
    nop
    nop
    nop
    add $c6
    add d
    add d
    add d
    add d
    ld b, h
    add $44
    ld b, h
    jr z, jr_00f_4bd3

    nop
    nop
    nop
    nop
    cp $fe
    add h
    add h
    ld [$080c], sp
    ld [$1810], sp
    db $10
    db $10
    ld c, d
    ld c, d
    ld c, d
    ld c, [hl]
    ld b, [hl]
    ld b, [hl]

jr_00f_4b7d:
    ld b, [hl]
    ld b, [hl]
    ld b, d
    ld b, d
    ld [c], a
    ld [c], a
    nop
    nop
    nop
    nop
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    ld b, h
    ld b, h
    jr c, jr_00f_4bcb

    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ldh [$e0], a
    nop
    nop
    nop
    nop
    add d
    add d
    add d
    add d
    add d
    add d
    cp d
    cp d
    ld b, h
    ld b, h
    jr c, jr_00f_4beb

    ld b, $06
    nop
    nop
    ld c, b
    ld c, h
    ld b, h
    ld b, h
    ld b, h
    ld b, [hl]
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld [c], a
    ld [c], a
    nop
    nop
    nop
    nop
    ld [$0408], sp
    inc b

jr_00f_4bcb:
    ld [bc], a
    ld [bc], a
    add d
    add d
    call nz, $b8c4
    cp b

jr_00f_4bd3:
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    jr z, jr_00f_4c47

    jr z, jr_00f_4c05

    jr z, jr_00f_4c07

    db $10
    jr c, jr_00f_4bf2

    stop
    nop
    nop
    nop
    sub d
    sub d
    xor d
    cp d

jr_00f_4beb:
    xor d
    xor d
    xor d
    xor $44
    ld b, h
    ld b, h

jr_00f_4bf2:
    ld b, h
    nop
    nop
    nop
    nop
    jr z, jr_00f_4c21

    jr z, jr_00f_4c23

    ld b, h
    ld b, h
    ld b, h
    add $82
    add d
    add $c6
    nop
    nop

jr_00f_4c05:
    nop
    nop

jr_00f_4c07:
    jr z, jr_00f_4c31

    db $10
    jr c, jr_00f_4c1c

    db $10
    db $10
    db $10
    db $10
    db $10
    jr c, jr_00f_4c4b

    nop
    nop
    nop
    nop
    jr nz, jr_00f_4c49

    jr nz, jr_00f_4c3b

    ld b, b

jr_00f_4c1c:
    ld h, b
    ld b, b
    ld b, b
    add d
    add d

jr_00f_4c21:
    cp $fe

jr_00f_4c23:
    nop
    nop
    nop
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
    rra

jr_00f_4c31:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00f_4c3b:
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop

jr_00f_4c47:
    nop
    nop

jr_00f_4c49:
    nop
    nop

jr_00f_4c4b:
    nop
    nop
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ld de, $1111
    ld de, $1111
    ld de, $0013
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld bc, $0101
    ld bc, $0101
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $3f3f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
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
    nop
    inc c
    inc e
    ld [hl], b
    ldh a, [$80]
    add b
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    db $10
    db $10
    inc h
    inc h
    jr jr_00f_4d0b

    ld [$1208], sp
    ld [de], a
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    adc b
    adc b
    sub b
    sub b
    sub b
    sub b
    cp b
    cp b
    adc b
    adc b
    ccf
    ccf
    nop
    nop

jr_00f_4d0b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
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
    nop
    nop
    nop
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
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    ld [de], a
    inc d
    inc d
    jr jr_00f_4d65

    db $10
    db $10
    db $10
    db $10
    rra
    rra
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    inc a
    inc a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    db $fc
    db $fc
    nop
    nop

jr_00f_4d65:
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $04
    inc b
    ccf
    ccf
    nop
    nop
    nop
    nop
    jr nz, jr_00f_4d99

    jr nz, jr_00f_4d9b

    jr nz, jr_00f_4d9d

    jr nz, jr_00f_4d9f

    jr nz, @+$22

    db $fc
    db $fc
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$1010], sp
    jr nz, @+$22

    nop
    nop
    nop
    nop
    jr nz, jr_00f_4db9

jr_00f_4d99:
    jr nz, jr_00f_4dbb

jr_00f_4d9b:
    db $10
    db $10

jr_00f_4d9d:
    db $10
    db $10

jr_00f_4d9f:
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop

jr_00f_4db9:
    nop
    nop

jr_00f_4dbb:
    nop
    nop
    nop
    nop
    inc b
    inc b
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld a, $3e
    ld [$2a08], sp
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    add hl, hl
    ld [$0008], sp
    nop
    nop
    nop
    ret z

    ret z

    xor b
    xor b
    sub b
    sub b
    sub b
    sub b
    jr z, jr_00f_4e09

    ld b, h
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop

jr_00f_4e09:
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ccf
    ccf
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ldh [$e0], a
    jr nz, jr_00f_4e45

    jr nz, jr_00f_4e47

    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $3f3f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00f_4e45:
    db $fc
    db $fc

jr_00f_4e47:
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$3e3e], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    nop
    nop
    nop
    nop
    ld b, $06
    jr jr_00f_4e87

    db $10
    db $10
    ld e, $1e
    ld de, $1011
    stop
    nop
    nop
    nop
    ldh a, [$f0]
    sub b
    sub b
    sub b
    sub b
    sub h
    sub h
    inc e
    inc e
    nop
    nop

jr_00f_4e87:
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc c
    ld c, $32
    ld a, [hl-]
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    db $10
    db $10
    jr nz, jr_00f_4ec3

    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00f_4ec3:
    nop
    nop
    add b
    add b
    jr nz, jr_00f_4ee9

    jr nz, jr_00f_4eeb

    db $10
    db $10
    db $10
    db $10
    ld [$0408], sp
    inc b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $04
    inc b
    ld [$1008], sp
    db $10
    jr nz, jr_00f_4f03

    nop
    nop
    nop
    nop
    jr nz, jr_00f_4f09

jr_00f_4ee9:
    jr nz, jr_00f_4f0b

jr_00f_4eeb:
    jr nz, @+$22

    jr nz, @+$22

    inc h
    inc h
    inc e
    inc e
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_00f_4f03:
    nop
    nop
    nop
    nop
    inc e
    inc e

jr_00f_4f09:
    ld a, [hl+]
    ld a, [hl+]

jr_00f_4f0b:
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    nop
    nop
    nop
    inc h
    inc h
    inc h
    ld h, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    add h
    add h
    jr @+$1a

    nop
    nop
    nop
    nop
    ld e, $1e
    db $10
    db $10
    db $10
    db $10
    inc e
    inc e
    jr nc, jr_00f_4f61

    db $10
    stop
    nop
    nop
    nop
    ld hl, sp-$08
    ld [$4808], sp
    ld e, b
    jr nc, jr_00f_4f6f

    ld c, b
    ld l, b
    add h
    add h
    nop
    nop
    nop
    nop
    ld b, $07
    ccf
    ccf
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld [$0808], sp
    ld [$0808], sp

jr_00f_4f61:
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_00f_4f8f

jr_00f_4f6f:
    db $10
    db $10
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    add b
    add b
    add b
    add b
    ldh [$e0], a
    add b
    add b
    and h
    and h
    db $f4
    db $f4
    inc l
    inc l
    inc l
    inc h
    inc h
    inc h
    ld c, $0e

jr_00f_4f8f:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    xor d
    call z, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    stop
    nop
    nop
    nop
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_00f_4fdf

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_00f_4fce

jr_00f_4fce:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00f_4fdf:
    nop
    nop
    nop
    nop
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $27
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_00f_5086

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    ccf
    ld b, b
    nop
    nop
    nop
    nop

jr_00f_5086:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_00f_50d6

jr_00f_50d6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $0032
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00f_5a33:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor c
    ld e, d
    ld l, d
    ld e, e
    inc hl
    ld e, h
    add hl, de
    ld e, l
    jr nz, jr_00f_5a33

    dec e
    add b
    rra
    ld [hl], h
    ld e, $00
    inc de
    ld [bc], a
    ld l, $12
    inc [hl]
    nop
    ld [bc], a
    inc b
    dec b
    rlca
    ld [$140a], sp
    nop
    nop
    ld [bc], a
    inc b
    dec b
    rlca
    ld [$140a], sp
    nop
    ld b, b
    ld [de], a
    ld e, b
    nop
    inc [hl]
    nop
    ld l, $12
    inc de
    inc b
    ld e, b
    ld [de], a
    dec d
    dec b
    dec b
    rlca
    inc de
    ld [bc], a
    adc b
    dec b
    ld b, b
    ld [de], a
    dec b
    ld [$0014], sp
    adc b
    ld bc, $1240
    nop
    dec d
    ld a, [bc]
    ld [$0a88], sp
    ld b, b
    ld [de], a
    inc bc
    rlca
    ld a, [bc]
    adc b
    ld [$1240], sp
    ld a, [bc]
    ld [$b807], sp
    dec b
    ld e, b
    ld [$01e8], sp
    cp b
    inc b
    ld b, b
    ld [de], a
    dec b
    ld e, b
    rlca
    dec b
    ld [$8807], sp
    dec b
    ld b, b
    ld [de], a
    dec b
    ld [$0014], sp
    ld [hl], b
    ld bc, $0340
    ld bc, $1500
    ld a, [bc]
    ld [$0a88], sp
    ld b, b
    ld [de], a
    inc bc
    rlca
    ld a, [bc]
    ld [hl], b
    ld [$4014], sp
    ld bc, $1500
    ld a, [bc]
    ld [$b807], sp
    dec b
    ld e, b
    ld [$0040], sp
    nop
    ld e, b
    nop
    ld [de], a
    ld [de], a
    ld b, b
    dec b
    dec b
    ld e, b
    ld [de], a
    ld [de], a
    ld b, b
    ld [de], a
    add sp, $07
    ld b, b
    ld [de], a
    ld b, b
    dec b
    dec b
    ld e, b
    ld [de], a
    ld [de], a
    ld b, b
    ld [de], a
    adc b
    rlca
    ld b, b
    ld [de], a
    rlca
    ld [$0307], sp
    dec b
    nop
    inc bc
    dec b
    ld [de], a
    ld [de], a
    dec b
    nop
    inc bc
    dec b
    ld e, b
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    inc b
    ld e, b
    ld [de], a
    dec d
    dec b
    dec b
    rlca
    dec h
    ret c

    ld e, d
    dec e
    add b
    rra
    db $76
    ld e, $00
    inc de
    ld [bc], a
    inc [hl]
    nop
    ld [bc], a
    inc b
    dec b
    rlca
    ld [$140a], sp
    nop
    nop
    ld [bc], a
    inc b
    dec b
    rlca
    ld [$140a], sp
    nop
    ld b, b
    ld [de], a
    ld e, b
    nop
    ld b, b
    nop
    inc de
    inc b
    ld e, b
    nop
    dec d
    dec b
    dec b
    rlca
    ld [$0140], sp
    ld [hl], b
    ld [$1258], sp
    ld [de], a
    ld b, b
    rlca
    ld [$080a], sp
    rlca
    dec b
    ld e, b
    rlca
    ld b, b
    nop
    ld [hl], b
    rlca
    ld e, b
    ld [de], a
    ld [de], a
    ld b, b
    dec b
    rlca
    ld [$0507], sp
    inc bc
    cp b
    ld bc, $1258
    ld [de], a
    ld b, b
    ld bc, $0503
    dec b
    inc bc
    ld bc, $00e8
    ld e, b
    ld [de], a
    dec b
    dec b
    rlca
    ld [$0140], sp
    ld [hl], b
    ld [$1258], sp
    ld [de], a
    ld b, b
    rlca
    ld [$080a], sp
    rlca
    dec b
    ld e, b
    rlca
    ld b, b
    nop
    ld [hl], b
    rlca
    ld e, b
    ld [de], a
    ld [de], a
    ld b, b
    dec b
    rlca
    ld [$0507], sp
    inc bc
    add sp, $01
    ld b, b
    nop
    nop
    ld e, b
    nop
    ld b, b
    nop
    rlca
    inc b
    ld [hl], b
    dec b
    ld e, b
    ld [de], a
    ld [de], a
    ld b, b
    ld [de], a
    add sp, $03
    ld b, b
    ld [de], a
    ld b, b
    ld bc, $5801
    ld [de], a
    ld [de], a
    ld b, b
    ld [de], a
    adc b
    inc bc
    ld b, b
    ld [de], a
    rlca
    ld [$0307], sp
    dec b
    nop
    inc bc
    dec b
    ld [de], a
    ld [de], a
    dec b
    nop
    inc bc
    dec b
    ld e, b
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    inc b
    ld e, b
    ld [de], a
    dec d
    dec b
    dec b
    rlca
    dec h
    sub e
    ld e, e
    inc h
    inc c
    inc de
    ld bc, $0040
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld b, b
    nop
    ld [de], a
    ld e, b
    inc d
    nop
    ld b, b
    nop
    ld e, b
    nop
    dec d
    dec b
    dec b
    rlca
    inc de
    nop
    ld b, b
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
    inc bc
    ld [de], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [$1208], sp
    ld [$0808], sp
    ld [$1408], sp
    inc bc
    inc bc
    ld [de], a
    inc bc
    inc bc
    inc bc
    nop
    nop
    dec d
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0708], sp
    rlca
    ld [de], a
    rlca
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    inc d
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    ld e, b
    nop
    ld b, b
    dec d
    rlca
    ld a, [bc]
    ld e, b
    inc d
    nop
    ld b, b
    dec d
    rlca
    ld a, [bc]
    inc d
    nop
    dec d
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc d
    inc bc
    inc bc
    ld [de], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec d
    ld [$1208], sp
    ld [$0808], sp
    ld [$1408], sp
    inc bc
    inc bc
    ld [de], a
    inc bc
    inc bc
    inc bc
    nop
    nop
    dec d
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$1408], sp
    nop
    nop
    ld e, b
    nop
    ld [de], a
    ld [de], a
    ld b, b
    dec d
    dec b
    inc d
    nop
    dec d
    ld a, [bc]
    inc d
    nop
    dec d
    ld [$0014], sp
    dec d
    rlca
    inc d
    nop
    dec d
    dec b
    inc d
    nop
    dec d
    ld a, [bc]
    inc d
    nop
    dec d
    ld [$0014], sp
    dec d
    rlca
    inc d
    nop
    dec d
    dec b
    inc d
    nop
    dec d
    ld a, [bc]
    inc d
    nop
    dec d
    ld [$0014], sp
    dec d
    rlca
    inc d
    nop
    dec d
    dec b
    inc d
    nop
    dec d
    ld a, [bc]
    inc d
    nop
    dec d
    ld [$0014], sp
    dec d
    rlca
    inc d
    nop
    dec d
    dec b
    inc d
    nop
    inc bc
    dec b
    ld [de], a
    ld [de], a
    dec d
    dec b
    inc d
    nop
    inc bc
    dec b
    ld e, b
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    nop
    ld e, b
    ld [de], a
    dec d
    dec b
    dec b
    rlca
    dec h
    dec sp
    ld e, h
    dec e
    ld d, c
    inc [hl]
    ld b, b
    dec b
    ld [hl], b
    dec b
    ld [hl], b
    dec b
    ld b, b
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld e, b
    dec b
    dec b
    dec b
    dec b
    inc [hl]
    jr jr_00f_5d37

    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    dec b
    ld [de], a
    ld [bc], a

jr_00f_5d37:
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    dec b
    ld [de], a
    ld [bc], a
    ld [de], a
    add hl, de

jr_00f_5d41:
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    dec b
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    jr jr_00f_5d58

    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    dec b

jr_00f_5d58:
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    dec b
    ld [de], a
    ld [bc], a
    ld [de], a
    add hl, de
    ld b, b
    dec b
    dec b
    dec b
    ld [de], a
    ld e, b
    ld [de], a
    ld [de], a
    inc [hl]
    jr jr_00f_5d72

    ld [bc], a
    ld [de], a
    ld [bc], a

jr_00f_5d72:
    ld [de], a
    dec b
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    dec b
    ld [de], a
    ld [bc], a
    ld [de], a
    add hl, de
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    dec b
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    ld b, b
    dec b
    dec b
    dec b
    dec b
    ld [de], a
    ld [de], a
    dec b
    dec b
    dec b
    dec b
    ld [de], a
    ld [de], a
    inc [hl]
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    dec b
    ld e, b
    dec b
    dec b
    dec b
    dec b
    dec h
    dec l
    ld e, l
    inc e
    or a
    ld e, l
    ld h, c
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    xor c
    ld e, a
    jr nz, jr_00f_5d41

    dec e
    add b
    rra
    ld [hl], b
    ld e, $00
    inc de
    inc b
    ld b, b
    ld bc, $0001
    inc de
    inc b
    ld b, b
    ld bc, $0315
    ld b, $14
    ld bc, $1500
    ld a, [bc]
    ld [$0806], sp
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec b
    dec b
    inc bc
    ld bc, $0603
    ld a, [bc]
    ld e, b
    ld [$0640], sp
    dec b
    ld [de], a
    ld bc, $0805
    ld a, [bc]
    ld [$080a], sp
    ld [de], a
    dec b
    add hl, bc
    inc d
    nop
    inc bc
    dec b
    inc bc
    nop
    dec d
    ld e, b
    ld a, [bc]
    ld b, b
    inc d
    nop
    ld bc, $1258
    ld [de], a
    dec d
    ld b, $06
    ld b, $40
    ld b, $08
    ld e, b
    ld [de], a
    inc [hl]
    ld a, [bc]
    inc d
    nop
    ld bc, $0003
    ld bc, $0503
    nop
    inc bc
    dec b
    ld b, $13
    ld [bc], a
    ld b, b
    ld [de], a
    ld a, [bc]
    inc d
    ld bc, $0a06
    ld [$080a], sp
    adc b
    ld [de], a
    ld b, b
    ld [de], a
    inc d
    ld bc, $8800
    dec d
    ld [$1240], sp
    ld [de], a
    ld [de], a
    ld b, $05
    ld [de], a
    ld [$140a], sp
    nop
    ld bc, $0100
    inc bc
    ld e, b
    nop
    nop
    ld b, b
    nop
    dec d
    add hl, bc
    ld a, [bc]
    inc d
    nop
    ld e, b
    dec d
    ld a, [bc]
    ld b, b
    inc d
    nop
    ld bc, $1288
    dec d
    ld e, b
    ld b, $06
    ld b, $40
    ld b, $05
    ld [de], a
    dec d
    dec d
    ld a, [bc]
    ld e, b
    ld a, [bc]
    adc b
    ld [de], a
    dec h
    push bc
    ld e, l
    dec e
    add b
    rra
    db $76
    ld e, $00
    inc de
    inc bc
    ld b, b
    ld bc, $0001
    inc de
    ld [bc], a
    ld e, b
    ld a, [bc]
    ld a, [bc]
    ld b, b
    inc d
    nop
    dec d
    ld a, [bc]
    inc d
    nop
    ld e, b
    ld bc, $4015
    ld [$0812], sp
    ld [de], a
    inc d
    ld bc, $0001
    ld e, b
    dec d
    ld a, [bc]
    ld a, [bc]
    inc d
    nop
    ld b, b
    ld a, [bc]
    ld [hl], b
    ld [$1270], sp
    ld b, b
    inc bc
    dec b
    ld b, $58
    dec b
    ld b, $05
    inc bc
    ld bc, $0340
    dec b
    ld [de], a
    ld bc, $0001
    ld e, b
    dec d
    ld a, [bc]
    inc d
    nop
    ld bc, $0540
    inc bc
    adc b
    ld [de], a
    ld b, b
    ld [de], a
    ld bc, $0001
    dec d
    ld e, b
    ld a, [bc]
    ld a, [bc]
    ld b, b
    inc d
    nop
    dec d
    ld a, [bc]
    inc d
    nop
    ld e, b
    ld bc, $1540
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    inc d
    ld bc, $0001
    dec d
    ld e, b
    ld a, [bc]
    ld a, [bc]
    inc d
    nop
    ld b, b
    ld a, [bc]
    ld [hl], b
    ld [$1270], sp
    ld b, b
    inc bc
    dec b
    ld b, $58
    dec b
    ld b, $05
    inc bc
    ld bc, $0340
    dec b
    ld [de], a
    ld bc, $0001
    ld e, b
    dec d
    ld a, [bc]
    inc d
    nop
    ld bc, $0340
    ld bc, $1512
    ld bc, $0158
    ld [de], a
    ld [de], a
    dec h
    ld l, l
    ld e, [hl]
    inc h
    inc c
    ld b, b
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    nop
    ld e, b
    inc bc
    ld b, b
    ld [de], a
    inc bc
    ld e, b
    ld [$1240], sp
    ld [$5814], sp
    ld bc, $1240
    ld bc, $1501
    ld [$0506], sp
    ld e, b
    inc bc
    ld b, b
    ld [de], a
    inc bc
    ld e, b
    ld [$1240], sp
    ld [$5814], sp
    ld bc, $1240
    ld bc, $0158
    ld b, b
    ld [de], a
    ld bc, $5815
    dec b
    ld b, b
    ld [de], a
    dec b
    ld e, b
    add hl, bc
    ld b, b
    ld [de], a
    add hl, bc
    ld e, b
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    ld e, b
    inc bc
    ld b, b
    ld [de], a
    inc bc
    ld e, b
    inc bc
    ld b, b
    ld [de], a
    inc bc
    ld b, b
    ld [$0858], sp
    ld b, b
    ld [de], a
    ld [$1208], sp
    ld [$0358], sp
    ld b, b
    ld [de], a
    inc bc
    ld e, b
    ld [$1240], sp
    ld [$5814], sp
    ld bc, $1240
    ld bc, $1501
    ld [$0506], sp
    ld e, b
    inc bc
    ld b, b
    ld [de], a
    inc bc
    ld e, b
    ld [$1240], sp
    ld [$5814], sp
    ld bc, $1240
    ld bc, $0158
    ld b, b
    ld [de], a
    ld bc, $5815
    dec b
    ld b, b
    ld [de], a
    dec b
    ld e, b
    add hl, bc
    ld b, b
    ld [de], a
    add hl, bc
    ld e, b
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    ld e, b
    inc bc
    ld b, b
    ld [de], a
    inc bc
    ld e, b
    ld [$1240], sp
    ld [$5814], sp
    ld bc, $1240
    ld bc, $0158
    ld [de], a
    dec h
    rst $38
    ld e, [hl]
    dec e
    ld d, c
    ld b, b
    ld [de], a
    ld [de], a
    ld [de], a
    jr jr_00f_5fb4

    inc [hl]
    ld [bc], a
    ld [de], a

jr_00f_5fb4:
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    jr jr_00f_5fd8

    inc [hl]
    ld [bc], a
    ld [de], a

jr_00f_5fd8:
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    inc bc
    inc bc
    ld [de], a
    inc bc
    inc b
    inc b
    ld [de], a
    inc b
    dec b
    ld [de], a
    dec b
    dec b
    jr jr_00f_5ffc

    inc [hl]
    ld [bc], a
    ld [de], a

jr_00f_5ffc:
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    jr jr_00f_6020

    inc [hl]
    ld [bc], a
    ld [de], a

jr_00f_6020:
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [de], a
    dec b
    ld [bc], a
    dec b
    ld [de], a

jr_00f_6035:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec h
    xor a
    ld e, a
    inc e
    ld c, e
    ld h, b
    ld l, [hl]
    ld h, b
    sub [hl]
    ld h, b
    and a
    ld h, b
    jr nz, jr_00f_60b3

    dec e
    add b
    rra
    db $76
    ld e, $00
    inc h
    inc c
    ld b, b
    ld [de], a
    ld [de], a
    inc de
    ld [bc], a
    ld e, b
    rlca
    dec b
    inc bc
    cp b
    ld [bc], a
    ld e, b
    nop
    ld [bc], a
    inc bc
    cp b
    nop
    inc [hl]
    nop
    ld b, b
    dec b
    cp b
    inc d
    ld [bc], a
    inc e
    dec e
    add b
    rra
    ld a, b
    ld e, $00
    inc h
    inc c
    inc de
    inc bc
    ld b, b
    nop
    ld [bc], a
    ld e, b
    inc bc
    ld [bc], a
    dec d
    ld a, [bc]
    adc b
    rlca
    inc d
    ld b, b
    nop
    ld [bc], a
    ld e, b
    inc bc
    ld [bc], a
    dec d
    ld a, [bc]
    adc b
    dec b
    ld e, b
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    inc d
    cp b
    ld [$241c], sp
    inc c
    ld b, b
    ld [de], a
    ld [de], a
    inc de
    ld bc, $00b8
    dec d
    ld a, [bc]
    ld [$e805], sp
    inc d
    nop
    inc e
    dec e
    ld d, c
    inc e
    inc e
    or e
    ld h, b
    add [hl]
    ld h, d
    ld c, e
    ld h, h
    ret


    ld h, [hl]

jr_00f_60b3:
    jr nz, jr_00f_6035

    dec e
    add b
    rra
    ld h, [hl]
    ld e, $00
    inc de
    ld [bc], a
    inc [hl]
    ld [de], a
    add hl, bc
    inc d
    ld [bc], a
    ld b, $15
    ld [de], a
    add hl, bc
    inc d
    ld [bc], a
    ld b, $15
    ld [de], a
    add hl, bc
    inc d
    inc b
    ld [$1215], sp
    add hl, bc
    inc d
    inc b
    ld [$0112], sp
    ld b, $09
    ld [de], a
    ld bc, $0906
    ld [de], a
    ld bc, $0906
    ld [de], a
    ld bc, $0906
    dec d
    ld [de], a
    add hl, bc
    inc d
    ld [bc], a
    ld b, $15
    ld [de], a
    add hl, bc
    inc d
    ld [bc], a
    ld b, $15
    ld [de], a
    add hl, bc
    inc d
    inc b
    ld [$1215], sp
    add hl, bc
    inc d
    inc b
    ld [$0112], sp
    ld b, $09
    ld [de], a
    ld bc, $0906
    ld [de], a
    ld bc, $0906
    ld [de], a
    ld bc, $0906
    inc de
    ld [bc], a
    inc [hl]
    ld [de], a
    ld [de], a
    ld bc, $1201
    ld bc, $0140
    ld [bc], a
    inc b
    ld [de], a
    add sp, $01
    ld b, b
    ld [de], a
    inc [hl]
    ld [de], a
    ld [de], a
    ld bc, $1201
    ld bc, $0140
    ld [bc], a
    inc b
    ld [de], a
    adc b
    ld b, $40
    ld [de], a
    inc [hl]
    inc d
    ld bc, $0140
    inc [hl]
    ld bc, $0112
    ld b, b
    ld bc, $1534
    ld [de], a
    ld [de], a
    ld bc, $1201
    ld bc, $0140
    ld [bc], a
    inc b
    ld [de], a
    add sp, $01
    ld b, b
    ld [de], a
    inc [hl]
    ld [de], a
    ld [de], a
    ld bc, $1201
    ld bc, $0140
    ld [bc], a
    inc b
    ld [de], a
    adc b
    ld b, $40
    ld [de], a
    inc d
    inc b
    ld b, $15
    add hl, bc
    dec bc
    inc d
    inc [hl]
    ld [de], a
    ld b, $09
    inc d
    ld bc, $1215
    ld b, $09
    inc d
    ld bc, $1215
    ld b, $09
    inc d
    ld bc, $1215
    ld b, $09
    inc d
    ld bc, $0218
    dec d
    ld [de], a
    ld b, $09
    inc d
    ld bc, $1215
    ld b, $09
    inc d
    ld bc, $1215
    ld b, $09
    inc d
    ld bc, $1215
    ld b, $09
    inc d
    ld bc, $1519
    ld [de], a
    ld b, $09
    inc d
    ld bc, $1215
    ld b, $09
    inc d
    ld bc, $1515
    dec bc
    inc d
    ld b, $09
    inc d
    ld bc, $0115
    ld b, $09
    inc d
    ld bc, $0418
    dec d
    ld [de], a
    ld b, $09
    inc d
    ld bc, $1215
    ld b, $09
    inc d
    ld bc, $1215
    ld b, $09
    inc d
    ld bc, $1215
    ld b, $09
    inc d
    ld bc, $4019
    dec d
    ld b, $06
    ld b, $0b
    ld [de], a
    ld [hl], b
    inc d
    ld bc, $1540
    ld b, $06
    ld b, $0b
    ld [de], a
    ld [hl], b
    inc d
    ld bc, $01e8
    ld b, b
    dec d
    add hl, bc
    inc d
    ld bc, $0b15
    inc d
    ld bc, $0915
    inc d
    ld bc, $0815
    inc d
    ld bc, $1588
    ld b, $40
    ld [de], a
    add hl, bc
    ld [$8804], sp
    ld b, $40
    ld [de], a
    add hl, bc
    ld [$5806], sp
    ld [$0440], sp
    ld b, $12
    ld [$0b09], sp
    dec d
    dec b
    dec b
    ld e, b
    dec b
    ld [de], a
    ld [de], a
    ld b, b
    ld b, $05
    ld [$1206], sp
    ld [de], a
    ld b, $04
    ld [bc], a
    ld bc, $1212
    ld b, $05
    ld b, $08
    ld e, b
    add hl, bc
    ld b, b
    ld [$0458], sp
    ld b, b
    ld bc, $1558
    dec bc
    inc d
    inc d
    ld b, b
    ld [de], a
    dec bc
    inc d
    ld bc, $0b15
    inc d
    inc b
    ld [bc], a
    ld bc, $0b15
    dec d
    ld b, $05
    ld [$1206], sp
    ld [de], a
    ld b, $05
    ld [$1206], sp
    ld [de], a
    ld e, b
    ld b, $40
    inc b
    ld [bc], a
    add sp, $01
    ld e, b
    inc d
    ld [$4008], sp
    ld [de], a
    ld [$0858], sp
    dec d
    adc b
    ld [bc], a
    inc b
    ld b, $58
    ld b, $04
    ld [hl], b
    ld [bc], a
    ld e, b
    dec bc
    ld b, b
    add hl, bc
    cp b
    ld [$0658], sp
    inc b
    adc b
    ld [bc], a
    inc b
    ld b, $58
    add hl, bc
    ld [$0406], sp
    ld [bc], a
    inc b
    add sp, $01
    inc d
    ld b, b
    inc b
    inc b
    ld e, b
    inc b
    ld b, b
    ld [de], a
    inc b
    ld e, b
    inc b
    dec h
    dec c
    ld h, c
    dec e
    add b
    rra
    db $76
    ld e, $00
    inc de
    ld [bc], a
    inc [hl]
    ld [de], a
    add hl, bc
    inc d
    ld [bc], a
    ld b, $15
    ld [de], a
    add hl, bc
    inc d
    ld [bc], a
    ld b, $15
    ld [de], a
    add hl, bc
    inc d
    inc b
    ld [$1215], sp
    add hl, bc
    inc d
    inc b
    ld [$0112], sp
    ld b, $09
    ld [de], a
    ld bc, $0906
    ld [de], a
    ld bc, $0906
    ld [de], a
    ld bc, $0906
    dec d
    ld [de], a
    add hl, bc
    inc d
    ld [bc], a
    ld b, $15
    ld [de], a
    add hl, bc
    inc d
    ld [bc], a
    ld b, $15
    ld [de], a
    add hl, bc
    inc d
    inc b
    ld [$1215], sp
    add hl, bc
    inc d
    inc b
    ld [$0112], sp
    ld b, $09
    ld [de], a
    ld bc, $0906
    ld [de], a
    ld bc, $0906
    ld [de], a
    ld bc, $0906
    inc de
    inc bc
    inc [hl]
    ld [de], a
    ld [de], a
    ld b, $06
    ld [de], a
    ld b, $40
    ld b, $08
    add hl, bc
    ld [de], a
    add sp, $06
    ld b, b
    ld [de], a
    inc [hl]
    ld [de], a
    ld [de], a
    ld b, $06
    ld [de], a
    ld b, $40
    ld b, $08
    add hl, bc
    ld [de], a
    adc b
    inc d
    ld bc, $1240
    dec d
    inc [hl]
    ld b, $40
    ld b, $34
    ld b, $12
    ld b, $40
    ld b, $34
    ld [de], a
    ld [de], a
    ld b, $06
    ld [de], a
    ld b, $40
    ld b, $08
    add hl, bc
    ld [de], a
    add sp, $06
    ld b, b
    ld [de], a
    inc [hl]
    ld [de], a
    ld [de], a
    ld b, $06
    ld [de], a
    ld b, $40
    ld b, $08
    add hl, bc
    ld [de], a
    adc b
    inc d
    ld bc, $1240
    dec d
    add hl, bc
    dec bc
    inc b
    ld b, $15
    ld b, b
    add hl, bc
    add hl, bc
    ld [$1206], sp
    inc b
    ld e, b
    ld b, $40
    add hl, bc
    add hl, bc
    ld [$1206], sp
    inc b
    ld e, b
    ld b, $40
    add hl, bc
    add hl, bc
    ld [$1206], sp
    inc b
    ld [de], a
    ld bc, $0458
    ld b, b
    ld b, $01
    ld e, b
    inc d
    inc b
    ld b, $15
    ld b, b
    add hl, bc
    add hl, bc
    ld [$1206], sp
    inc b
    ld e, b
    ld b, $40
    add hl, bc
    add hl, bc
    ld [$1206], sp
    inc b
    ld e, b
    ld b, $40
    add hl, bc
    add hl, bc
    ld [$1206], sp
    inc b
    ld [de], a
    ld bc, $0458
    ld b, b
    ld b, $88
    ld bc, $1240
    ld b, b
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld [$7012], sp
    inc b
    ld b, b
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld [$7012], sp
    ld b, $58
    ld b, $40
    ld b, $06
    add hl, bc
    dec bc
    ld [de], a
    add sp, $06
    ld b, b
    ld [de], a
    ld b, b
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld [$7012], sp
    inc b
    ld b, b
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld [$7012], sp
    ld b, $40
    inc b
    inc b
    ld [$1209], sp
    dec bc
    ld l, $12
    inc d
    ld bc, $0403
    ld b, $08
    add hl, bc
    inc d
    nop
    dec d
    ld b, b
    ld bc, $1501
    dec bc
    ld [$1288], sp
    inc d
    ld b, b
    add hl, bc
    ld [$090b], sp
    ld [de], a
    ld [de], a
    add hl, bc
    ld [$090b], sp
    ld [de], a
    ld [de], a
    add hl, bc
    ld [$0b09], sp
    ld e, b
    inc d
    ld bc, $4015
    dec bc
    ld e, b
    ld [$0640], sp
    ld e, b
    inc b
    add sp, $12
    ld b, b
    add hl, bc
    ld [$090b], sp
    ld [de], a
    ld [de], a
    add hl, bc
    ld [$090b], sp
    ld [de], a
    ld [de], a
    ld e, b
    add hl, bc
    ld b, b
    dec bc
    inc d
    ld bc, $e815
    inc b
    inc d
    ld e, b
    inc b
    inc b
    ld b, b
    ld [de], a
    inc b
    ld e, b
    inc b
    inc de
    ld [bc], a
    ld b, b
    add hl, bc
    ld [$090b], sp
    ld [de], a
    ld [de], a
    add hl, bc
    ld [$090b], sp
    ld [de], a
    ld [de], a
    add hl, bc
    ld [$0b09], sp
    inc d
    ld e, b
    ld bc, $4015
    dec bc
    ld e, b
    ld [$0640], sp
    add sp, $04
    ld e, b
    ld [de], a
    ld b, b
    add hl, bc
    ld [$0b0b], sp
    ld [de], a
    ld [de], a
    dec bc
    inc d
    ld bc, $0402
    ld [de], a
    adc b
    ld bc, $1240
    ld [bc], a
    ld bc, $0202
    ld [de], a
    inc b
    dec d
    add hl, bc
    ld [$09e8], sp
    ld b, b
    dec bc
    dec bc
    ld e, b
    dec bc
    ld b, b
    ld [de], a
    dec bc
    ld e, b
    dec bc
    dec h
    sbc $62
    inc h
    inc c
    ld d, $66
    ld h, [hl]
    ld d, $66
    ld h, [hl]
    ld d, $66
    ld h, [hl]
    ld d, $4c
    ld h, [hl]
    inc [hl]
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    ld b, b
    dec d
    add hl, bc
    inc d
    add hl, bc
    dec d
    add hl, bc
    inc d
    add hl, bc
    ld d, $4c
    ld h, [hl]
    inc [hl]
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    ld b, b
    dec d
    ld b, $14
    ld b, $15
    ld bc, $0114
    inc [hl]
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    jr jr_00f_64ed

    dec d
    ld [bc], a

jr_00f_64ed:
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    ld b, b
    dec d
    dec b
    dec b
    dec b
    dec b
    ld [de], a
    ld [de], a
    inc [hl]
    dec b
    dec b
    dec b
    ld [de], a
    ld d, $eb
    ld h, l
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    add hl, bc
    ld [de], a
    inc d
    add hl, bc
    add hl, bc
    dec d
    add hl, bc
    ld [de], a
    inc d
    add hl, bc
    add hl, bc
    dec d
    add hl, bc
    ld [de], a
    inc d
    add hl, bc
    add hl, bc
    dec d
    add hl, bc
    ld [de], a
    inc d
    add hl, bc
    add hl, bc
    ld e, b
    dec d
    inc b
    inc b
    inc b
    inc b
    ld d, $eb
    ld h, l
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    dec bc
    ld [de], a
    inc d
    dec bc
    dec bc
    dec d
    add hl, bc
    ld [de], a
    inc d
    add hl, bc
    add hl, bc
    dec d
    ld [$1412], sp
    ld [$1508], sp
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, b
    inc b
    inc b
    ld e, b
    inc b
    ld b, b
    ld [de], a
    inc b
    ld e, b
    inc b
    dec h
    ld d, b
    ld h, h
    inc [hl]
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    dec d
    dec bc
    ld [de], a
    inc d
    dec bc
    dec bc
    dec d
    dec bc
    ld [de], a
    inc d
    dec bc
    dec bc
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    rla
    jr @+$05

    inc [hl]
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    ld b, b
    dec d
    add hl, bc
    inc d
    add hl, bc
    dec d
    add hl, bc
    inc d
    add hl, bc
    add hl, de
    rla
    inc de
    nop
    inc [hl]
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld [bc], a
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    inc b
    ld [de], a
    inc d
    inc b
    inc b
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    dec d
    ld b, $12
    inc d
    ld b, $06
    rla
    dec e
    ld d, c
    ld d, $47
    ld h, a
    ld d, $5c
    ld h, a
    ld d, $47
    ld h, a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [de], a
    dec b
    dec b
    dec b
    dec b
    ld [de], a
    ld d, $47
    ld h, a
    ld d, $5c
    ld h, a
    ld d, $47
    ld h, a
    ld d, $5c
    ld h, a
    ld d, $47
    ld h, a
    ld d, $5c
    ld h, a
    ld d, $47

jr_00f_66f8:
    ld h, a
    ld d, $5c
    ld h, a
    ld d, $47
    ld h, a
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    dec b
    dec b
    dec b
    ld [de], a
    ld d, $47
    ld h, a
    ld d, $5c
    ld h, a
    ld d, $47
    ld h, a
    dec b
    ld [de], a
    ld [de], a
    ld [de], a
    dec b
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    ld [de], a
    ld [de], a
    ld d, $47
    ld h, a
    ld d, $5c
    ld h, a
    ld d, $47
    ld h, a
    ld d, $5c
    ld h, a
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec b
    dec b
    dec h
    pop de
    ld h, [hl]
    jr jr_00f_674c

    inc [hl]
    ld [bc], a
    ld [de], a

jr_00f_674c:
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    add hl, de
    rla
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    dec b
    dec b
    dec b
    ld [de], a
    dec b
    dec b
    rla
    inc e
    db $76
    ld h, a
    ld e, [hl]
    ld l, c
    rst $20
    ld l, d
    db $ec
    ld l, h
    jr nz, jr_00f_66f8

    dec e
    add b
    rra
    ld [hl], d
    ld e, $00
    inc de
    ld bc, $0534
    ld [de], a
    ld a, [bc]
    dec b
    dec b
    ld a, [bc]
    ld [de], a
    dec b
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld b, b
    ld a, [bc]
    dec bc
    inc d
    adc b
    nop
    ld [de], a
    dec d
    inc [hl]
    dec b
    ld [de], a
    ld a, [bc]
    dec b
    dec b
    ld a, [bc]
    ld [de], a
    dec b
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld b, b
    ld a, [bc]
    add hl, bc
    adc b
    rlca
    ld [de], a
    inc [hl]
    dec b
    ld [de], a
    ld a, [bc]
    dec b
    dec b
    ld a, [bc]
    ld [de], a
    dec b
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld b, b
    ld a, [bc]
    dec bc
    inc d
    adc b
    nop
    ld [de], a
    dec d
    inc [hl]
    dec b
    ld [de], a
    ld a, [bc]
    dec b
    dec b
    ld a, [bc]
    ld [de], a
    dec b
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld b, b
    ld a, [bc]
    rlca
    ld b, b
    ld [de], a
    ld a, [bc]
    ld [de], a
    inc d
    nop
    inc [hl]
    nop
    nop
    ld [de], a
    nop
    ld e, b
    nop
    ld c, h
    ld bc, $3414
    ld bc, $4015
    ld bc, $1201
    ld bc, $1458
    ld bc, $4c15
    ld bc, $1434
    ld bc, $4015
    ld bc, $1201
    ld [$1458], sp
    ld bc, $4c15
    ld bc, $1434
    ld bc, $4015
    ld bc, $1201
    ld bc, $5814
    ld bc, $4c15
    ld bc, $1434
    ld bc, $4015
    ld bc, $1201
    ld bc, $5814
    ld bc, $4c15
    ld bc, $1434
    ld bc, $4015
    ld bc, $1201
    ld bc, $5814
    ld bc, $4c15
    ld bc, $1434
    ld bc, $4015
    ld bc, $1201
    ld [$5814], sp
    ld bc, $4c15
    ld bc, $1434
    ld bc, $4015
    ld bc, $1201
    ld bc, $5814
    ld bc, $4c15
    ld bc, $1434
    ld bc, $4015
    ld bc, $1201
    ld bc, $5814
    ld bc, $7015
    ld [bc], a
    dec d
    dec b
    ld b, b
    inc d
    ld [bc], a
    nop
    ld c, h
    dec d
    ld a, [bc]
    inc d
    inc [hl]
    ld a, [bc]
    ld [de], a
    inc d
    nop
    ld b, b
    ld [bc], a
    inc [hl]
    inc bc
    inc bc
    ld [de], a
    ld [bc], a
    ld [de], a
    inc bc
    ld b, b
    dec b
    ld e, b
    rlca
    ld b, b
    ld [de], a
    ld [hl], b
    dec d
    inc bc
    ld e, b
    nop
    dec d
    ld e, b
    ld [$1414], sp
    inc [hl]
    ld a, [bc]
    ld [$0712], sp
    ld a, [bc]
    rlca
    ld [de], a
    dec b
    rlca
    dec b
    ld [de], a
    inc bc
    dec d
    ld [hl], b
    dec b
    adc b
    ld [$1240], sp
    dec d
    ld b, b
    rlca
    ld e, b
    rlca
    ld b, b
    rlca
    rlca
    ld e, b
    rlca
    ld b, b
    rlca
    inc de
    inc bc
    ld b, b
    inc b
    inc b
    ld c, h
    dec d
    add hl, bc
    inc d
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    add hl, bc
    ld b, b
    add hl, bc
    ld [de], a
    ld b, b
    inc d
    inc b
    inc b
    ld c, h
    dec d
    add hl, bc
    inc d
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    add hl, bc
    ld b, b
    add hl, bc
    ld [de], a
    ld b, b
    inc d
    inc b
    inc b
    ld c, h
    dec d
    add hl, bc
    inc d
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    add hl, bc
    ld b, b
    add hl, bc
    ld [de], a
    ld b, b
    inc d
    inc b
    inc b
    ld c, h
    dec d
    add hl, bc
    inc d
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    add hl, bc
    ld b, b
    add hl, bc
    ld [de], a
    inc de
    ld [bc], a
    ld c, h
    inc bc
    inc d
    inc [hl]
    inc bc
    dec d
    ld b, b
    inc bc
    inc bc
    ld [de], a
    inc bc
    inc d
    ld e, b
    inc bc
    dec d
    ld c, h
    inc bc
    inc d
    inc [hl]
    inc bc
    dec d
    ld b, b
    inc bc
    inc bc
    ld [de], a
    inc bc
    inc d
    ld e, b
    inc bc
    dec d
    ld c, h
    inc bc
    inc d
    inc [hl]
    inc bc
    dec d
    ld b, b
    inc bc
    inc bc
    ld [de], a
    inc bc
    inc d
    ld e, b
    inc bc
    dec d
    ld c, h
    inc bc
    inc d
    inc [hl]
    inc bc
    dec d
    ld b, b
    inc bc
    inc bc
    ld [de], a
    inc bc
    inc d
    ld e, b
    inc bc
    dec d
    ld c, h
    inc bc
    inc d
    inc [hl]
    inc bc
    dec d
    ld b, b
    inc bc
    inc bc
    ld [de], a
    inc bc
    inc d
    ld e, b
    inc bc
    dec d
    ld c, h
    inc bc
    inc d
    inc [hl]
    inc bc
    dec d
    ld b, b
    inc bc
    inc bc
    ld [de], a
    inc bc
    inc d
    ld e, b
    inc bc
    dec d
    ld c, h
    inc bc
    inc d
    inc [hl]
    inc bc
    dec d
    ld b, b
    inc bc
    inc bc
    ld [de], a
    inc bc
    inc d
    ld e, b
    inc bc
    dec d
    ld c, h
    inc bc
    inc d
    inc [hl]
    inc bc
    dec d
    ld b, b
    inc bc
    inc bc
    ld [de], a
    inc bc
    ld e, b
    rlca
    dec de
    dec e
    add b
    rra
    db $76
    ld e, $00
    inc de
    ld [bc], a
    ld b, b
    ld [de], a
    ld [bc], a
    inc [hl]
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld b, b
    ld [bc], a
    inc [hl]
    ld [bc], a
    ld b, b
    ld [bc], a
    inc bc
    adc b
    inc b
    ld [de], a
    ld b, b
    ld [de], a
    ld [bc], a
    inc [hl]
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld b, b
    ld [bc], a
    inc [hl]
    ld [bc], a
    ld b, b
    ld [bc], a
    dec b
    adc b
    inc b
    ld [de], a
    ld b, b
    ld [de], a
    ld [bc], a
    inc [hl]
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld b, b
    ld [bc], a
    inc [hl]
    ld [bc], a
    ld b, b
    ld [bc], a
    inc bc
    adc b
    inc b
    ld [de], a
    ld b, b
    ld [de], a
    ld [bc], a
    inc [hl]
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld b, b
    ld [bc], a
    inc [hl]
    ld [bc], a
    ld b, b
    ld [bc], a
    nop
    ld [de], a
    ld e, b
    ld [bc], a
    ld b, b
    inc bc
    inc [hl]
    inc b
    inc b
    ld [de], a
    inc [hl]
    inc b
    ld e, b
    inc b
    ld b, b
    rlca
    ld [$0712], sp
    ld e, b
    ld [$0540], sp
    ld bc, $0434
    dec b
    inc b
    dec b
    ld b, b
    inc b
    inc bc
    inc bc
    ld bc, $0158
    ld b, b
    rlca
    ld [$0712], sp
    ld e, b
    ld [$0540], sp
    inc [hl]
    ld bc, $0503
    rlca
    ld [$400a], sp
    ld [$0305], sp
    ld a, [bc]
    ld e, b
    ld [$0740], sp
    ld [$0712], sp
    ld e, b
    ld [$3405], sp
    inc b
    dec b
    inc b
    dec b
    ld b, b
    inc b
    inc bc
    inc bc
    ld bc, $0158
    ld b, b
    rlca
    ld [$0712], sp
    ld e, b
    ld [$0540], sp
    inc [hl]
    ld bc, $3403
    dec b
    rlca
    ld [$400a], sp
    ld [$0305], sp
    ld a, [bc]
    ld e, b
    ld [$0570], sp
    dec d
    ld a, [bc]
    inc d
    ld b, b
    dec b
    ld [$07b8], sp
    ld e, b
    ld a, [bc]
    ld [hl], b
    ld a, [bc]
    rlca
    ld e, b
    inc bc
    cp b
    nop
    ld e, b
    ld [de], a
    ld [hl], b
    ld bc, $0588
    ld b, b
    ld [de], a
    inc d
    inc bc
    ld e, b
    ld bc, $0040
    ld bc, $0058
    ld b, b
    dec d
    ld a, [bc]
    inc de
    ld bc, $0440
    inc b
    ld c, h
    dec d
    add hl, bc
    inc d
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    add hl, bc
    ld b, b
    add hl, bc
    ld [de], a
    ld b, b
    inc d
    inc b
    inc b
    ld c, h
    dec d
    add hl, bc
    inc d
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    add hl, bc
    ld b, b
    add hl, bc
    ld [de], a
    ld b, b
    inc d
    inc b
    inc b
    ld c, h
    dec d
    add hl, bc
    inc d
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    add hl, bc
    ld b, b
    add hl, bc
    ld [de], a
    ld b, b
    inc d
    inc b
    inc b
    ld c, h
    dec d
    add hl, bc
    inc d
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    add hl, bc
    ld b, b
    add hl, bc
    ld [de], a
    inc de
    ld [bc], a
    ld b, b
    add hl, bc
    ld a, [bc]
    ld [de], a
    add hl, bc
    ld e, b
    ld a, [bc]
    ld b, b
    rlca
    inc bc
    inc [hl]
    ld b, $07
    ld b, $07
    ld b, b
    ld b, $05
    dec b
    inc bc
    ld e, b
    inc bc
    ld b, b
    add hl, bc
    ld a, [bc]
    ld [de], a
    add hl, bc
    ld e, b
    ld a, [bc]
    ld b, b
    rlca
    inc [hl]
    inc bc
    dec b
    rlca
    add hl, bc
    ld a, [bc]
    inc d
    nop
    dec d
    ld b, b
    ld a, [bc]
    rlca
    dec b
    inc d
    nop
    dec d
    ld e, b
    ld a, [bc]
    ld b, b
    add hl, bc
    ld a, [bc]
    ld [de], a
    add hl, bc
    ld e, b
    ld a, [bc]
    rlca
    inc [hl]
    ld b, $07
    ld b, $07
    ld b, b
    ld b, $05
    dec b
    inc bc
    ld e, b
    inc bc
    ld b, b
    add hl, bc
    ld a, [bc]
    ld [de], a
    add hl, bc
    ld e, b
    ld a, [bc]
    ld b, b
    rlca
    inc [hl]
    inc bc
    dec b
    rlca
    add hl, bc
    ld a, [bc]
    inc d
    nop
    ld b, b
    dec d
    ld a, [bc]
    rlca
    dec b
    inc d
    nop
    ld e, b
    inc bc
    dec de
    inc h
    inc c
    inc de
    nop
    ld e, b
    dec b
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    inc bc
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    ld c, h
    add hl, bc
    inc d
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    add hl, bc
    add hl, bc
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    nop
    ld e, b
    dec b
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    inc bc
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    ld c, h
    add hl, bc
    inc d
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    add hl, bc
    add hl, bc
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    nop
    ld e, b
    dec b
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    inc bc
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    ld c, h
    add hl, bc
    inc d
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    add hl, bc
    add hl, bc
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    nop
    ld e, b
    dec b
    ld [de], a
    ld [de], a
    ld [de], a
    inc d
    ld b, b
    ld [de], a
    ld e, b
    ld [bc], a
    ld b, b
    nop
    inc [hl]
    nop
    nop
    ld [de], a
    nop
    ld e, b
    nop
    ld c, h
    ld bc, $3415
    ld [$1240], sp
    ld a, [bc]
    inc d
    ld c, h
    ld bc, $3415
    ld [$1240], sp
    ld [$4c14], sp
    ld bc, $1534
    ld [$1240], sp
    ld [$0806], sp
    ld e, b
    ld [$4c14], sp
    ld bc, $1534
    ld [$1240], sp
    ld [$144c], sp
    ld bc, $3415
    ld [$1240], sp
    ld [$4c14], sp
    ld bc, $1534
    ld [$1240], sp
    ld [$0806], sp
    ld e, b
    ld [$4c14], sp
    ld bc, $1534
    ld [$1240], sp
    ld [$4c14], sp
    ld bc, $3415
    ld [$1240], sp
    ld [$4c14], sp
    ld bc, $1534
    ld [$1240], sp
    ld [$0806], sp
    ld e, b
    ld [$4c14], sp
    ld bc, $1534
    ld [$1240], sp
    ld [$4c14], sp
    ld bc, $3415
    ld [$1240], sp
    ld [$4c14], sp
    ld bc, $1534
    ld [$1240], sp
    ld [$0806], sp
    ld e, b
    ld [$0a58], sp
    ld c, h
    dec b
    inc [hl]
    dec b
    ld e, b
    ld a, [bc]
    ld b, b
    dec b
    inc b
    ld e, b
    inc bc
    ld c, h
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    inc d
    ld e, b
    inc bc
    dec d
    ld b, b
    ld a, [bc]
    add hl, bc
    ld e, b
    ld [$4c14], sp
    inc bc
    inc [hl]
    inc bc
    dec d
    ld e, b
    ld [$4c14], sp
    inc bc
    inc [hl]
    inc bc
    dec d
    ld e, b
    ld [$4c14], sp
    inc bc
    inc [hl]
    inc bc
    ld e, b
    ld [$0340], sp
    inc [hl]
    ld bc, $1500
    ld c, h
    ld a, [bc]
    inc [hl]
    dec b
    ld e, b
    dec b
    ld a, [bc]
    ld b, b
    dec b
    ld a, [bc]
    ld c, h
    inc bc
    inc [hl]
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld c, h
    inc bc
    inc [hl]
    ld a, [bc]
    ld e, b
    ld a, [bc]
    inc de
    ld bc, $0434
    ld [de], a
    inc b
    ld [de], a
    ld c, h
    dec d
    add hl, bc
    inc d
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    add hl, bc
    ld e, b
    add hl, bc
    inc [hl]
    inc d
    inc b
    ld [de], a
    inc b
    ld [de], a
    ld c, h
    dec d
    add hl, bc
    inc d
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    add hl, bc
    ld e, b
    add hl, bc
    inc [hl]
    inc d
    inc b
    ld [de], a
    inc b
    ld [de], a
    ld c, h
    dec d
    add hl, bc
    inc d
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    add hl, bc
    ld e, b
    add hl, bc
    inc [hl]
    inc d
    inc b
    ld [de], a
    inc b
    ld [de], a
    ld c, h
    dec d
    add hl, bc
    inc d
    inc [hl]
    inc b
    ld [de], a
    inc b
    ld [de], a
    dec d
    add hl, bc
    ld e, b
    add hl, bc
    inc de
    ld bc, $034c
    dec d
    inc [hl]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    inc d
    ld c, h
    inc bc
    dec d
    inc [hl]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    inc d
    ld c, h
    inc bc
    dec d
    inc [hl]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    ld b, b
    ld [$580a], sp
    ld a, [bc]
    inc d
    ld c, h
    inc bc
    dec d
    inc [hl]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    inc d
    ld c, h
    inc bc
    dec d
    inc [hl]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    inc d
    ld c, h
    inc bc
    dec d
    inc [hl]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    ld b, b
    ld [$580a], sp
    ld a, [bc]
    inc d
    ld c, h
    inc bc
    dec d
    inc [hl]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    inc d
    ld c, h
    inc bc
    dec d
    inc [hl]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    inc d
    ld c, h
    inc bc
    dec d
    inc [hl]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    ld b, b
    ld [$580a], sp
    ld a, [bc]
    inc d
    ld c, h
    inc bc
    dec d
    inc [hl]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    inc d
    ld c, h
    inc bc
    dec d
    inc [hl]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    inc d
    ld c, h
    inc bc
    dec d
    inc [hl]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, [bc]
    ld b, b
    ld [$580a], sp
    inc bc
    dec de
    dec e
    ld d, c
    ld d, $2f
    ld l, l
    ld d, $41
    ld l, l
    ld d, $2f
    ld l, l
    ld d, $41
    ld l, l
    ld d, $2f
    ld l, l
    ld d, $41
    ld l, l
    ld d, $2f
    ld l, l
    dec b
    ld [de], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    dec b
    ld [de], a
    dec b
    dec b
    ld [de], a
    dec b
    dec b
    ld d, $53
    ld l, l

jr_00f_6d16:
    ld d, $53
    ld l, l
    ld d, $53
    ld l, l
    ld d, $2f
    ld l, l
    ld d, $68
    ld l, l
    jr jr_00f_6d28

    ld d, $41
    ld l, l
    add hl, de

jr_00f_6d28:
    ld d, $53
    ld l, l
    ld d, $53
    ld l, l
    dec de
    inc [hl]
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    rla
    inc [hl]
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    rla
    jr jr_00f_6d59

    inc [hl]
    ld [bc], a
    ld [de], a
    ld [bc], a

jr_00f_6d59:
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    add hl, de
    rla
    inc [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    ld [de], a
    dec b
    rla
    inc e
    add e
    ld l, l
    adc b
    ld l, a
    ld a, c
    ld [hl], c
    ld b, c
    ld [hl], h
    jr nz, jr_00f_6d16

    dec e
    add b
    rra
    db $76
    ld e, $00
    inc de
    ld [bc], a
    ld e, b
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld [$0812], sp
    ld e, b
    ld [de], a
    ld [$1208], sp
    ld a, [bc]
    ld a, [bc]
    ld b, b
    ld [de], a
    inc d
    ld bc, $0112
    ld e, b
    ld [de], a
    ld a, [bc]
    ld b, b
    ld a, [bc]
    inc d
    nop
    dec d
    dec d
    ld e, b
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld [$0812], sp
    ld e, b
    ld [de], a
    ld [$1208], sp
    ld a, [bc]
    ld a, [bc]
    ld b, b
    ld [de], a
    inc d
    ld bc, $0112
    ld e, b
    ld [de], a
    ld a, [bc]
    ld b, b
    ld a, [bc]
    inc d
    nop
    dec d
    dec d
    ld e, b
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld [$0812], sp
    ld e, b
    ld [de], a
    ld [$1208], sp
    ld a, [bc]
    ld a, [bc]
    ld b, b
    ld [de], a
    inc d
    ld bc, $0112
    ld e, b
    ld [de], a
    ld a, [bc]
    ld b, b
    ld a, [bc]
    inc d
    nop
    dec d
    dec d
    ld e, b
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld [$0812], sp
    ld e, b
    ld [de], a
    ld [$1208], sp
    ld a, [bc]
    ld a, [bc]
    ld b, b
    ld [de], a
    ld e, b
    ld [$0a58], sp
    ld b, b
    inc d
    nop
    ld e, b
    dec b
    inc bc
    ld l, $12
    dec d
    ld e, b
    ld [bc], a
    ld b, b
    ld a, [bc]
    ld [hl], b
    dec b
    inc [hl]
    ld [de], a
    dec b
    ld b, $07
    ld e, b
    ld [$0740], sp
    dec b
    ld [de], a
    inc bc
    ld [de], a
    inc [hl]
    ld [bc], a
    ld l, $12
    ld b, b
    inc d
    ld [bc], a
    inc bc
    inc b
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [$0807], sp
    rlca
    dec b
    inc bc
    ld [de], a
    dec b
    inc bc
    ld [bc], a
    dec d
    ld e, b
    dec b
    inc d
    ld b, b
    ld [bc], a
    dec d
    ld [hl], b
    ld a, [bc]
    inc [hl]
    ld [de], a
    ld a, [bc]
    inc d
    nop
    ld bc, $0258
    ld b, b
    nop
    dec d
    ld a, [bc]
    ld [de], a
    ld [$0a12], sp
    inc d
    ld [bc], a
    inc bc
    dec b
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    inc d
    nop
    ld [bc], a
    nop
    dec d
    ld a, [bc]
    dec b
    ld [de], a
    ld a, [bc]
    ld [$1206], sp
    ld b, $0a
    inc d
    ld bc, $1512
    ld b, $0a
    inc d
    ld bc, $1512
    ld [$0014], sp
    inc bc
    ld [de], a
    dec d
    ld [$0014], sp
    inc bc
    dec d
    ld [de], a
    ld b, $0a
    inc d
    ld bc, $1515
    ld e, b
    ld a, [bc]
    inc d
    ld bc, $0088
    ld e, b
    dec d
    ld [$0834], sp
    ld [de], a
    ld [$1408], sp
    ld b, b
    ld [de], a
    ld b, $0a
    inc d
    ld bc, $1512
    ld b, $0a
    inc d
    ld bc, $4015
    ld [de], a
    ld [$0014], sp
    inc bc
    ld [de], a
    dec d
    ld [$0014], sp
    inc bc
    ld e, b
    ld bc, $1588
    ld a, [bc]
    ld b, b
    inc d
    nop
    ld bc, $0358
    ld b, b
    inc bc
    nop
    adc b
    ld [de], a
    ld l, $12
    inc de
    ld [bc], a
    ld e, b
    ld [bc], a
    ld b, b
    ld a, [bc]
    ld [hl], b
    dec b
    inc [hl]
    ld [de], a
    dec b
    ld b, $07
    ld e, b
    ld [$0740], sp
    dec b
    ld [de], a
    inc bc
    ld [de], a
    inc [hl]
    ld [bc], a
    ld l, $12
    ld b, b
    inc d
    ld [bc], a
    inc bc
    inc b
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [$0807], sp
    rlca
    dec b
    inc bc
    ld [de], a
    dec b
    inc bc
    ld [bc], a
    dec d
    ld e, b
    dec b
    inc d
    ld b, b
    ld [bc], a
    dec d
    ld [hl], b
    ld a, [bc]
    inc [hl]
    ld [de], a
    ld a, [bc]
    inc d
    nop
    ld bc, $0258
    ld b, b
    nop
    dec d
    ld a, [bc]
    ld [de], a
    ld [$0a12], sp
    inc d
    ld b, b
    ld [bc], a
    inc bc
    dec b
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    inc d
    nop
    ld [bc], a
    nop
    dec d
    ld a, [bc]
    dec b
    ld [de], a
    ld a, [bc]
    add hl, bc
    ld [$0612], sp
    ld a, [bc]
    inc d
    ld bc, $1512
    ld b, $0a
    inc d
    ld bc, $1512
    ld [$0014], sp
    inc bc
    dec d
    ld [de], a
    ld [$0014], sp
    inc bc
    dec d
    ld [de], a
    ld b, $0a
    inc d
    ld bc, $1558
    ld a, [bc]
    inc d
    ld bc, $0188
    dec d
    ld e, b
    ld [$0834], sp
    ld [de], a
    ld [$1508], sp
    ld b, b
    ld [de], a
    ld b, $06
    dec b
    dec b
    inc bc
    ld [de], a
    ld b, $08
    ld a, [bc]
    ld [$1206], sp
    dec b
    ld [de], a
    ld b, $12
    ld bc, $0606
    ld bc, $0606
    ld [$0308], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    inc bc
    adc b
    ld bc, $0003
    ld bc, $0305
    ld b, b
    ld bc, $1414
    ld bc, $0103
    dec b
    inc bc
    ld [de], a
    ld [de], a
    inc de
    ld [bc], a
    adc b
    ld bc, $5803
    dec b
    nop
    ld bc, $0340
    dec b
    ld e, b
    ld [$0840], sp
    adc b
    ld b, $88
    dec b
    ld b, b
    ld [de], a
    adc b
    ld [de], a
    dec de
    dec e
    add b
    rra
    ld a, b
    ld e, $00
    inc de
    inc bc
    ld e, b
    ld [de], a
    inc bc
    ld [bc], a
    ld b, b
    ld [de], a
    ld bc, $0112
    ld e, b
    ld [de], a
    nop
    nop
    ld [de], a
    inc bc
    ld [bc], a
    ld b, b
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld e, b
    inc d
    ld [de], a
    inc bc
    ld b, b
    inc bc
    dec b
    dec d
    ld e, b
    ld [de], a
    inc bc
    ld [bc], a
    ld b, b
    ld [de], a
    ld bc, $0112
    ld e, b
    ld [de], a
    nop
    nop
    ld [de], a
    inc bc
    ld [bc], a
    ld b, b
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld e, b
    inc d
    ld [de], a
    inc bc
    ld b, b
    inc bc
    dec b
    dec d
    ld e, b
    ld [de], a
    inc bc
    ld [bc], a
    ld b, b
    ld [de], a
    ld bc, $0112
    ld e, b
    ld [de], a
    nop
    nop
    ld [de], a
    inc bc
    ld [bc], a
    ld b, b
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld e, b
    inc d
    ld [de], a
    inc bc
    ld b, b
    inc bc
    dec b
    dec d
    ld e, b
    ld [de], a
    inc bc
    ld [bc], a
    ld b, b
    ld [de], a
    ld bc, $0112
    ld e, b
    ld [de], a
    nop
    nop
    ld [de], a
    inc bc
    ld [bc], a
    ld b, b
    ld [de], a
    ld e, b
    ld bc, $0358
    ld b, b
    inc b
    ld e, b
    ld a, [bc]
    ld [de], a
    dec d
    ld e, b
    ld [bc], a
    ld b, b
    ld a, [bc]
    ld [hl], b
    dec b
    inc [hl]
    ld [de], a
    dec b
    ld b, $07
    ld e, b
    ld [$0740], sp
    dec b
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    inc d
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    dec b
    adc b
    ld [de], a
    ld b, b
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    dec b
    adc b
    ld [de], a
    dec d
    ld e, b
    ld [bc], a
    ld b, b
    ld a, [bc]
    ld [hl], b
    dec b
    inc [hl]
    ld [de], a
    dec b
    ld b, $07
    ld e, b
    ld [$0740], sp
    dec b
    ld [de], a
    inc bc
    ld [de], a
    dec b
    inc d
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    dec b
    adc b
    ld [de], a
    ld b, b
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    dec b
    adc b
    ld [de], a
    ld b, b
    dec d
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld [$0608], sp
    ld [de], a
    ld a, [bc]
    inc d
    nop
    ld bc, $1500
    ld a, [bc]
    ld [de], a
    ld [$0a12], sp
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld [$0608], sp
    ld b, $05
    dec b
    inc bc
    adc b
    inc bc
    ld e, b
    ld [de], a
    ld b, b
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld [$0608], sp
    ld [de], a
    ld a, [bc]
    inc d
    nop
    ld bc, $1500
    ld a, [bc]
    ld [de], a
    ld [$0a12], sp
    ld [de], a
    ld b, $0a
    inc d
    ld bc, $0615
    ld a, [bc]
    ld a, [bc]
    inc d
    ld bc, $0534
    dec b
    inc bc
    inc bc
    nop
    nop
    dec d
    ld a, [bc]
    ld a, [bc]
    ld [$0708], sp
    rlca
    dec b
    dec b
    inc bc
    inc bc
    ld e, b
    ld [bc], a
    ld b, b
    ld a, [bc]
    ld [hl], b
    dec b
    inc [hl]
    ld [de], a
    dec b
    ld b, $07
    ld e, b
    ld [$0740], sp
    dec b
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    inc d
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    dec b
    adc b
    ld [de], a
    ld b, b
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    dec b
    adc b
    ld [de], a
    dec d
    ld e, b
    ld [bc], a
    ld b, b
    ld a, [bc]
    ld [hl], b
    dec b
    inc [hl]
    ld [de], a
    dec b
    ld b, $07
    ld e, b
    ld [$0740], sp
    dec b
    ld [de], a
    inc bc
    ld [de], a
    dec b
    inc d
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    dec b
    adc b
    ld [de], a
    ld b, b
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    dec b
    adc b
    ld [de], a
    dec d
    ld b, b
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld [$0608], sp
    ld [de], a
    ld a, [bc]
    inc d
    nop
    ld bc, $0003
    ld [de], a
    dec d
    ld [$0812], sp
    inc d
    dec b
    dec b
    dec b
    inc bc
    inc bc
    ld bc, $0001
    dec d
    ld a, [bc]
    ld [$0758], sp
    ld [de], a
    ld [de], a
    ld b, b
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld [$0608], sp
    ld [de], a
    ld a, [bc]
    inc d
    nop
    ld bc, $1500
    ld a, [bc]
    ld [de], a
    ld [$0a12], sp
    ld [de], a
    ld b, $0a
    inc d
    ld bc, $0615
    ld a, [bc]
    ld a, [bc]
    inc d
    ld bc, $1500
    ld [$0014], sp
    inc bc
    dec b
    inc bc
    nop
    dec d
    add hl, bc
    ld e, b
    ld a, [bc]
    ld b, b
    ld a, [bc]
    inc d
    nop
    ld [de], a
    dec d
    ld [$1212], sp
    ld a, [bc]
    inc d
    nop
    ld bc, $1503
    ld e, b
    ld [$1240], sp
    ld a, [bc]
    inc d
    nop
    ld bc, $0001
    ld [de], a
    dec d
    ld [$880a], sp
    dec b
    ld b, b
    ld [de], a
    ld [de], a
    ld [de], a
    dec b
    ld [$0a58], sp
    ld b, b
    ld a, [bc]
    ld [$1412], sp
    inc bc
    ld [de], a
    ld bc, $1500
    ld a, [bc]
    inc d
    nop
    inc bc
    ld [de], a
    ld bc, $0100
    ld e, b
    dec b
    ld b, b
    dec b
    ld e, b
    nop
    dec d
    ld b, b
    ld a, [bc]
    inc d
    nop
    adc b
    ld [bc], a
    ld b, b
    ld [de], a
    adc b
    ld [de], a
    dec de
    inc h
    inc c
    inc de
    rst $38
    ld b, b
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld [$0808], sp
    ld [$0a15], sp
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    ld bc, $0114
    dec d
    ld bc, $0114
    inc bc
    inc d
    inc bc
    dec d
    inc bc
    dec b
    inc de
    rst $38
    ld b, b
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld [$0808], sp
    ld [$0a15], sp
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    ld bc, $0114
    dec d
    ld bc, $0114
    inc bc
    inc d
    inc bc
    dec d
    inc bc
    dec b
    inc de
    rst $38
    ld b, b
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld [$0808], sp
    ld [$0a15], sp
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    ld bc, $0114
    dec d
    ld bc, $0114
    inc bc
    inc d
    inc bc
    dec d
    inc bc
    dec b
    inc de
    rst $38
    ld b, b
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld [$0808], sp
    ld [$0a15], sp
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc bc
    inc d
    inc bc
    dec d
    inc bc
    inc d
    inc bc
    dec d
    dec b
    inc d
    dec b
    dec d
    dec b
    inc d
    dec b
    dec d
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld [$0808], sp
    ld [$0808], sp
    ld [$0834], sp
    ld [$0640], sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $08
    ld [$0808], sp
    ld [$0808], sp
    inc [hl]
    ld [$4008], sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld [$0808], sp
    ld [$0808], sp
    ld [$0834], sp
    ld [$0640], sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $08
    ld [$0808], sp
    dec b
    dec b
    dec b
    dec b
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    ld b, b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld [$0808], sp
    ld [$0808], sp
    ld [$0834], sp
    ld [$0640], sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $08
    ld [$0808], sp
    ld [$0808], sp
    inc [hl]
    ld [$4008], sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld [$0808], sp
    ld [$0808], sp
    ld [$0834], sp
    ld [$0640], sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $08
    ld [$0808], sp
    dec b
    dec b
    dec b
    inc [hl]
    dec b
    dec b
    ld b, b
    ld b, $06
    ld b, $06
    ld [$0808], sp
    ld [$0505], sp
    dec b
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld b, $06
    ld [$0808], sp
    ld [$0505], sp
    dec b
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld b, $06
    ld [$0808], sp
    ld [$0505], sp
    dec b
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld b, $06
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec de
    dec e
    ld d, c
    inc [hl]
    ld d, $5a
    ld [hl], h
    ld d, $5a
    ld [hl], h
    ld d, $5a
    ld [hl], h
    ld d, $5a
    ld [hl], h
    ld d, $5a
    ld [hl], h
    ld d, $5a
    ld [hl], h
    ld d, $5a
    ld [hl], h
    dec de
    jr jr_00f_7463

    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    dec b
    ld [de], a
    ld [bc], a

jr_00f_7463:
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    dec b
    ld [de], a
    ld [bc], a
    ld [de], a
    add hl, de
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    dec b
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    rla
    inc e
    add a
    ld [hl], h
    inc h
    ld a, b
    ld b, b
    ld a, d
    ld a, [hl-]
    ld a, e
    jr nz, @-$76

    dec e
    add b
    rra
    ld [hl], d
    ld e, $00
    inc de
    inc bc
    ld l, $12
    ld b, b
    ld [de], a
    ld bc, $0a15
    inc d
    dec b
    inc bc
    ld bc, $5815
    add hl, bc
    inc de
    ld bc, $0a58
    ld a, [bc]
    inc de
    inc bc
    ld l, $03
    inc b
    dec b
    ld b, $07
    add hl, bc
    dec bc
    inc d
    ld bc, $0102
    dec d
    dec bc
    add hl, bc
    ld a, [bc]
    rlca
    ld b, $05
    dec d
    ld b, b
    inc b
    inc d
    dec b
    nop
    dec d
    ld [$140a], sp
    nop
    ld e, b
    ld [$0113], sp
    ld e, b
    inc bc
    inc bc
    inc bc
    inc bc
    inc de
    ld [bc], a
    ld b, b
    dec b
    inc bc
    dec d
    ld a, [bc]
    inc d
    dec b
    inc bc
    dec d
    ld a, [bc]
    ld c, h
    ld [de], a
    ld l, $12
    inc de
    ld [bc], a
    ld e, b
    ld [de], a
    ld [de], a
    ld a, [bc]
    inc d
    nop
    ld b, b
    ld [de], a
    dec b
    inc bc
    dec d
    ld a, [bc]
    inc d
    ld bc, $5803
    ld [$4015], sp
    ld a, [bc]
    ld e, b
    add hl, bc
    ld b, b
    ld [$0748], sp
    ld b, $05
    ld b, b
    ld [de], a
    inc d
    ld bc, HeaderMaskROMVersion
    inc [hl]
    dec d
    ld b, $12
    ld c, h
    ld b, $40
    ld [$700a], sp
    ld [$0a88], sp
    ld b, b
    ld [de], a
    ld b, b
    ld [de], a
    inc d
    ld bc, HeaderMaskROMVersion
    inc [hl]
    dec d
    ld b, $12
    ld c, h
    ld b, $40
    ld [$700a], sp
    ld [$0570], sp
    ld e, b
    ld [de], a
    ld b, b
    ld [de], a
    inc d
    ld bc, HeaderMaskROMVersion
    inc [hl]
    dec d
    ld b, $12
    ld c, h
    ld b, $40
    ld [$700a], sp
    ld [$0a88], sp
    ld b, b
    ld [de], a
    ld b, b
    ld [de], a
    inc d
    ld bc, HeaderMaskROMVersion
    inc [hl]
    dec d
    ld b, $12
    ld c, h
    ld b, $40
    ld [$700a], sp
    ld [$580a], sp
    ld a, [bc]
    ld b, b
    ld [de], a
    inc d
    ld bc, HeaderMaskROMVersion
    inc [hl]
    dec d
    ld b, $12
    ld c, h
    ld b, $40
    ld [$700a], sp
    ld [$0a88], sp
    ld b, b
    ld [de], a
    ld b, b
    ld [de], a
    inc d
    ld bc, HeaderMaskROMVersion
    inc [hl]
    dec d
    ld b, $12
    ld c, h
    ld b, $40
    ld [$700a], sp
    ld [$0570], sp
    ld e, b
    ld [de], a
    ld b, b
    ld [de], a
    inc d
    ld bc, HeaderMaskROMVersion
    inc [hl]
    dec d
    ld b, $12
    ld c, h
    ld b, $40
    ld [$700a], sp
    ld [$0a88], sp
    ld b, b
    ld [de], a
    ld b, b
    ld [de], a
    inc d
    ld bc, HeaderMaskROMVersion
    inc [hl]
    dec d
    ld b, $12
    ld c, h
    ld b, $40
    ld [$700a], sp
    ld [$580a], sp
    ld a, [bc]
    ld l, $12
    inc de
    ld [bc], a
    inc [hl]
    ld a, [bc]
    inc d
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld bc, $1500
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld bc, $1500
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld l, $0a
    inc de
    ld bc, $0a34
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    inc de
    ld bc, $1634
    and l
    ld [hl], a
    dec d
    dec d
    ld d, $a5
    ld [hl], a
    dec de
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    dec d
    ld bc, $0114
    rla
    dec e
    add b
    rra
    db $76
    ld e, $00
    inc de
    inc bc
    ld b, b
    ld [de], a
    ld bc, $0a15
    inc d
    dec b
    inc bc
    ld bc, $5815
    add hl, bc
    inc de
    ld bc, $0a58
    ld a, [bc]
    inc de
    inc bc
    ld l, $03
    inc b
    dec b
    ld b, $07
    add hl, bc
    dec bc
    inc d
    ld bc, $0102
    dec d
    dec bc
    add hl, bc
    ld a, [bc]
    rlca
    ld b, $05
    dec d
    ld b, b
    inc b
    inc d
    dec b
    nop
    dec d
    ld [$140a], sp
    nop
    ld e, b
    ld [$0113], sp
    ld e, b
    inc bc
    inc bc
    inc bc
    inc bc
    inc de
    ld [bc], a
    ld b, b
    dec b
    inc bc
    dec d
    ld a, [bc]
    inc d
    dec b
    inc bc
    dec d
    ld a, [bc]
    ld e, b
    ld a, [bc]
    dec b
    ld a, [bc]
    inc d
    inc bc
    add sp, $05
    ld e, b
    ld [de], a
    ld b, b
    dec b
    ld e, b
    inc b
    ld b, b
    inc bc
    ld c, b
    ld [bc], a
    ld bc, $4000
    ld [de], a
    dec b
    ld c, h
    dec b
    inc [hl]
    dec d
    ld a, [bc]
    ld [de], a
    ld c, h
    ld a, [bc]
    ld b, b
    inc d
    nop
    ld bc, $0070
    adc b
    ld bc, $1240
    ld [de], a
    rlca
    ld c, h
    rlca
    inc [hl]
    dec d
    ld a, [bc]
    ld [de], a
    ld c, h
    ld a, [bc]
    ld b, b
    inc d
    nop
    ld bc, $0070
    ld [hl], b
    dec d
    dec bc
    ld e, b
    ld [de], a
    inc d
    ld b, b
    ld [de], a
    dec b
    ld c, h
    dec b
    inc [hl]
    dec d
    ld a, [bc]
    ld [de], a
    ld c, h
    ld a, [bc]
    ld b, b
    inc d
    nop
    ld bc, $0070
    adc b
    ld bc, $1240
    ld [de], a
    rlca
    ld c, h
    rlca
    inc [hl]
    dec d
    ld a, [bc]
    ld [de], a
    ld c, h
    ld a, [bc]
    ld b, b
    inc d
    nop
    ld bc, $0070
    inc bc
    ld e, b
    ld bc, $1240
    dec b
    ld c, h
    dec b
    inc [hl]
    dec d
    ld a, [bc]
    ld [de], a
    ld c, h
    ld a, [bc]
    ld b, b
    inc d
    nop
    ld bc, $0070
    adc b
    ld bc, $1240
    ld [de], a
    rlca
    ld c, h
    rlca
    inc [hl]
    dec d
    ld a, [bc]
    ld [de], a
    ld c, h
    ld a, [bc]
    ld b, b
    inc d
    nop
    ld bc, $0070
    ld [hl], b
    dec d
    dec bc
    ld e, b
    ld [de], a
    inc d
    ld b, b
    ld [de], a
    dec b
    ld c, h
    dec b
    inc [hl]
    dec d
    ld a, [bc]
    ld [de], a
    ld c, h
    ld a, [bc]
    ld b, b
    inc d
    nop
    ld bc, $0070
    adc b
    ld bc, $1240
    ld [de], a
    rlca
    ld c, h
    rlca
    inc [hl]
    dec d
    ld a, [bc]
    ld [de], a
    ld c, h
    ld a, [bc]
    ld b, b
    inc d
    nop
    ld bc, $0070
    inc bc
    ld e, b
    ld bc, $0213
    inc [hl]
    ld a, [bc]
    inc d
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld bc, $1500
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld bc, $1500
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld bc, $1503
    ld a, [bc]
    dec d
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc de
    inc bc
    add sp, $01
    adc b
    ld bc, $0803
    dec b
    add sp, $0a
    dec b
    dec b
    adc b
    ld [$e805], sp
    ld bc, $8801
    ld [de], a
    dec b
    add sp, $08
    ld a, [bc]
    dec b
    dec b
    adc b
    ld [$e805], sp
    ld a, [bc]
    dec de
    inc h
    inc c
    inc de
    nop
    ld b, b
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    inc bc
    ld [de], a
    inc bc
    ld [de], a
    inc bc
    ld [de], a
    inc bc
    ld [de], a
    inc bc
    ld [de], a
    inc bc
    ld [de], a
    inc bc
    ld [de], a
    inc bc
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec b
    ld [de], a
    dec b
    inc b
    ld [de], a
    inc bc
    ld c, b
    ld [bc], a
    ld bc, $1800
    ld [bc], a
    inc de
    nop
    ld b, b
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    inc d
    nop
    ld [de], a
    nop
    ld [de], a
    dec d
    ld [$0812], sp
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    inc d
    nop
    ld [de], a
    nop
    ld [de], a
    dec d
    ld [$0812], sp
    ld [de], a
    inc d
    ld bc, $0112
    ld [de], a
    dec d
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    inc d
    nop
    ld [de], a
    nop
    ld [de], a
    dec d
    ld [$0812], sp
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    inc d
    nop
    ld [de], a
    nop
    ld [de], a
    dec d
    ld [$0812], sp
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    add hl, de
    jr jr_00f_7af3

    inc de
    nop
    ld b, b
    ld a, [bc]
    inc d
    ld a, [bc]
    add hl, de
    inc de
    nop
    inc bc
    inc d
    inc bc
    dec d
    inc bc
    inc d
    inc bc
    dec d
    inc bc
    inc d
    inc bc
    dec d
    inc bc
    inc d
    inc bc
    dec d
    ld e, b
    ld a, [bc]
    ld [de], a

jr_00f_7af3:
    ld b, $12
    ld [$1412], sp
    ld bc, $1500
    ld a, [bc]
    ld [de], a
    ld b, $12
    ld [$0a12], sp
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld b, $12
    ld [$1412], sp
    ld bc, $1500
    ld a, [bc]
    ld [de], a
    ld b, $12
    ld [$0a12], sp
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld b, $12
    ld [$1412], sp
    ld bc, $1500
    ld a, [bc]
    ld [de], a
    ld b, $12
    ld [$0a12], sp
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld b, $12
    ld [$1412], sp
    ld bc, $1500
    ld a, [bc]
    ld [de], a
    ld b, $12
    ld [$0a12], sp
    ld [de], a
    dec de
    dec e
    ld d, c
    ld d, $9a
    ld a, e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    ld [de], a
    inc b
    dec b
    dec b
    ld [de], a
    dec b
    ld d, $9a
    ld a, e
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld c, b
    ld b, $06
    ld b, $16

jr_00f_7b5f:
    xor a
    ld a, e
    ld d, $af
    ld a, e
    ld d, $9a
    ld a, e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    ld [de], a
    inc b
    dec b
    dec b
    ld [de], a
    dec b
    ld d, $af
    ld a, e
    ld d, $af
    ld a, e
    ld d, $af
    ld a, e
    ld d, $af
    ld a, e
    ld d, $af
    ld a, e
    ld d, $9a
    ld a, e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    ld [de], a
    inc b
    dec b
    dec b
    ld [de], a
    dec b
    dec de
    jr jr_00f_7b9f

    inc [hl]
    ld [bc], a
    ld [de], a

jr_00f_7b9f:
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    add hl, de
    rla
    jr jr_00f_7bb4

    inc [hl]
    ld [bc], a
    ld [de], a

jr_00f_7bb4:
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    rla
    inc e
    db $dd
    ld a, e
    reti


    ld a, h
    ret c

    ld a, l
    dec sp
    ld a, a
    jr nz, jr_00f_7b5f

    dec e
    add b
    rra
    ld [hl], b
    ld e, $00
    ld d, $c2
    ld a, h
    inc de
    inc bc
    ld e, b
    ld bc, $0815
    ld b, b
    ld [de], a
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc d
    inc bc
    inc d
    inc bc
    ld bc, $0358
    dec d
    dec d
    adc b
    ld b, $40
    ld [$140a], sp
    nop
    ld bc, $0058
    dec d
    ld a, [bc]
    ld [$0806], sp
    ld [$1240], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc d
    inc bc
    inc d
    inc bc
    ld bc, $0358
    dec d
    dec d
    adc b
    ld b, $40
    ld [$140a], sp
    nop
    ld bc, $0058
    dec d
    ld a, [bc]
    ld [$1806], sp
    inc b
    inc [hl]
    dec b
    dec d
    ld b, $0a
    inc d
    ld bc, $0519
    dec d
    ld b, $0a
    inc d
    ld bc, $1414
    ld e, b
    nop
    inc bc
    ld a, [bc]
    ld e, b
    ld a, [bc]
    dec d
    dec d
    jr jr_00f_7c4d

    inc [hl]
    inc bc
    dec d

jr_00f_7c4d:
    dec b
    ld a, [bc]
    inc d
    nop
    add hl, de
    ld e, b
    ld [de], a
    inc d
    inc d
    dec b
    inc bc
    nop
    ld c, h
    ld bc, $1515
    inc [hl]
    ld a, [bc]
    ld [de], a
    ld [hl], b
    ld a, [bc]
    inc [hl]
    ld [de], a
    ld [de], a
    ld [de], a
    ld a, [bc]
    inc d
    nop
    ld c, h
    ld bc, $3415
    ld [$1240], sp
    ld b, $0a
    add hl, bc
    inc [hl]
    ld a, [bc]
    inc d
    ld b, b
    rlca
    inc [hl]
    dec b
    dec d
    ld b, b
    ld a, [bc]
    add hl, bc
    inc [hl]
    ld a, [bc]
    inc d
    ld b, b
    rlca
    inc [hl]
    dec b
    adc b
    ld [de], a
    dec d
    ld b, b
    ld a, [bc]
    add hl, bc
    inc [hl]
    ld a, [bc]
    ld b, b
    inc d
    rlca
    ld e, b
    dec b
    inc [hl]
    ld [de], a
    ld e, b
    rlca
    ld e, b
    rlca
    ld [hl], b
    inc bc
    ld b, b
    nop
    inc bc
    rlca
    ld a, [bc]
    inc d
    nop
    ld [de], a
    dec d
    add hl, bc
    adc b
    ld [de], a
    ld e, b
    dec d
    ld a, [bc]
    add hl, bc
    rlca
    add hl, bc
    ld a, [bc]
    add hl, bc
    rlca
    add hl, bc
    ld a, [bc]
    ld [hl], b
    ld a, [bc]
    ld b, b
    inc d
    nop
    inc bc
    rlca
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    add hl, bc
    ld e, b
    rlca
    add hl, bc
    dec h
    add sp, $7b
    jr jr_00f_7ccc

    inc de
    ld [bc], a
    inc [hl]
    ld a, [bc]
    ld [de], a
    add hl, bc
    ld [de], a
    ld a, [bc]

jr_00f_7ccc:
    ld [de], a
    ld a, [bc]
    add hl, bc
    ld [de], a
    ld a, [bc]
    ld [de], a
    add hl, bc
    add hl, bc
    ld [de], a
    ld a, [bc]
    ld [de], a
    add hl, de
    rla
    dec e
    add b
    rra
    db $76
    ld e, $00
    inc de
    ld [bc], a
    ld e, b
    ld [de], a
    dec b
    ld a, [bc]
    inc d
    nop
    ld [bc], a
    nop
    dec d
    ld a, [bc]
    add hl, bc
    add sp, $07
    adc b
    ld b, $14
    inc bc
    dec d
    ld e, b
    ld [de], a
    dec b
    ld a, [bc]
    inc d
    nop
    ld [bc], a
    nop
    dec d
    ld a, [bc]
    add hl, bc
    add sp, $07
    adc b
    add hl, bc
    inc d
    inc bc
    inc de
    inc bc
    ld e, b
    ld [$4001], sp
    ld [de], a
    ld bc, $0101
    inc bc
    ld bc, $7003
    ld [$1240], sp
    ld [$3406], sp
    ld [$4006], sp
    ld [de], a
    ld [$0506], sp
    inc bc
    dec b
    add sp, $03
    ld e, b
    ld [$4001], sp
    ld [de], a
    ld bc, $0101
    inc bc
    ld bc, $7003
    ld [$1240], sp
    ld [$3406], sp
    ld [$4006], sp
    ld [de], a
    ld [$0506], sp
    inc bc
    dec b
    cp b
    inc bc
    ld b, b
    ld [de], a
    inc bc
    ld c, h
    nop
    ld bc, $0340
    ld c, h
    nop
    ld bc, $0340
    dec b
    ld e, b
    inc bc
    ld b, b
    ld bc, $0070
    ld b, b
    inc bc
    ld c, h
    nop
    ld bc, $0340
    ld c, h
    nop
    ld bc, $0340
    ld bc, $0058
    ld b, b
    ld bc, $5815
    ld a, [bc]
    ld b, b
    ld [de], a
    inc [hl]
    ld a, [bc]
    ld [$064c], sp
    inc d
    inc [hl]
    ld bc, $7012
    ld bc, $1234
    ld [de], a
    ld [de], a
    ld bc, $4c03
    dec b
    inc [hl]
    ld b, $40
    ld [de], a
    inc bc
    ld a, [bc]
    add hl, bc
    inc [hl]
    ld a, [bc]
    inc d
    ld b, b
    rlca
    adc b
    dec b
    inc [hl]
    ld [de], a
    ld b, b
    dec d
    ld a, [bc]
    add hl, bc
    inc [hl]
    ld a, [bc]
    inc d
    ld b, b
    rlca
    adc b
    dec b
    inc [hl]
    ld [de], a
    ld e, b
    ld [de], a
    inc bc
    ld [bc], a
    dec d
    ld [hl], b
    rlca
    ld b, b
    inc bc
    rlca
    ld a, [bc]
    inc d
    ld [bc], a
    inc bc
    ld [de], a
    nop
    dec d
    ld a, [bc]
    add hl, bc
    inc [hl]
    ld a, [bc]
    inc d
    ld b, b
    rlca
    adc b
    dec b
    inc [hl]
    ld [de], a
    ld b, b
    dec d
    ld a, [bc]
    add hl, bc
    inc [hl]
    ld a, [bc]
    inc d
    ld b, b
    rlca
    adc b
    dec b
    inc [hl]
    ld [de], a
    ld e, b
    ld [de], a
    inc bc
    ld [bc], a
    dec d
    ld [hl], b
    rlca
    ld b, b
    inc bc
    rlca
    ld a, [bc]
    inc d
    ld [bc], a
    inc bc
    ld [de], a
    nop
    adc b
    ld [de], a
    dec h
    inc b
    ld a, l
    inc h
    inc c
    jr jr_00f_7dde

    inc de
    nop

jr_00f_7dde:
    ld b, b
    ld a, [bc]
    dec b
    ld a, [bc]
    inc [hl]
    dec b
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld b, b
    dec b
    ld a, [bc]
    add hl, bc
    rlca
    ld [bc], a
    ld c, h
    rlca
    inc [hl]
    rlca
    ld [de], a
    ld b, b
    rlca
    inc [hl]
    rlca
    ld b, b
    rlca
    inc [hl]
    add hl, bc
    ld a, [bc]
    ld b, b
    inc d
    nop
    nop
    ld c, h
    nop
    inc [hl]
    nop
    ld [de], a
    ld b, b
    nop
    inc [hl]
    nop
    ld b, b
    nop
    nop
    dec d
    ld b, b
    dec b
    dec b
    ld c, h
    dec b
    inc [hl]
    dec b
    ld [de], a
    ld b, b
    dec b
    inc [hl]
    dec b
    ld b, b
    dec b
    dec b
    add hl, de
    inc de
    ld bc, $0158
    dec d
    ld [$4c14], sp
    ld bc, $3415
    ld [$0812], sp
    inc d
    ld bc, $0815
    ld e, b
    ld a, [bc]
    dec b
    ld c, h
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    inc d
    nop
    ld bc, $0358
    dec d
    ld c, h
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    inc d
    ld c, h
    inc bc
    inc [hl]
    inc bc
    ld [de], a
    dec d
    inc bc
    dec b
    ld b, $58
    ld [$4c03], sp
    ld [$0834], sp
    ld [de], a
    ld b, $05
    inc bc
    ld e, b
    ld bc, $1408
    ld c, h
    ld bc, HeaderTitle
    ld [de], a
    dec d
    ld [$0114], sp
    dec d
    ld [$0a58], sp
    dec b
    ld c, h
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    inc d
    nop
    ld bc, $0358
    dec d
    ld c, h
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    inc d
    ld c, h
    inc bc
    inc [hl]
    inc bc
    ld [de], a
    dec d
    inc bc
    dec b
    ld b, $58
    ld [$4c03], sp
    ld [$0834], sp
    ld [de], a
    ld b, $05
    inc bc
    jr jr_00f_7e92

    ld b, b
    ld b, $06

jr_00f_7e92:
    ld c, h
    ld b, $34
    ld b, $12
    ld b, $40
    ld b, $06
    ld b, $19
    ld b, b
    ld a, [bc]
    ld a, [bc]
    ld c, h
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld b, b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, b
    inc bc
    inc bc
    ld c, h
    inc bc
    inc [hl]
    inc bc
    ld [de], a
    inc bc
    ld b, b
    inc bc
    inc bc
    inc bc
    ld c, h
    ld [$0834], sp
    ld b, b
    ld [de], a
    ld [$1288], sp
    ld b, b
    ld a, [bc]
    dec b
    ld a, [bc]
    inc [hl]
    dec b
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld b, b
    dec b
    ld a, [bc]
    dec b
    rlca
    ld [bc], a
    ld c, h
    rlca
    inc [hl]
    rlca
    ld [de], a
    ld b, b
    rlca
    inc [hl]
    rlca
    rlca
    dec b
    inc b
    ld [bc], a
    ld b, b
    nop
    nop
    ld c, h
    nop
    inc [hl]
    nop
    ld [de], a
    ld b, b
    nop
    inc [hl]
    nop
    ld b, b
    nop
    inc [hl]
    ld [bc], a
    inc bc
    ld b, b
    dec b
    dec b
    ld c, h
    dec b
    inc [hl]
    dec b
    ld [de], a
    ld b, b
    dec b
    inc [hl]
    dec b
    ld b, b
    dec b
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    inc [hl]
    dec b
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld b, b
    dec b
    ld a, [bc]
    add hl, bc
    rlca
    ld [bc], a
    ld c, h
    rlca
    inc [hl]
    rlca
    ld [de], a
    ld b, b
    rlca
    inc [hl]
    rlca
    rlca
    dec b
    inc b
    ld [bc], a
    ld b, b
    nop
    nop
    ld c, h
    nop
    inc [hl]
    nop
    ld [de], a
    ld b, b
    nop
    inc [hl]
    nop
    ld b, b
    nop
    inc [hl]
    ld [bc], a
    inc bc
    ld b, b
    dec b
    dec b
    ld c, h
    dec b
    inc [hl]
    dec b
    ld [de], a
    ld b, b
    dec b
    inc [hl]
    dec b
    ld [de], a
    dec b
    rlca
    dec b
    dec h
    inc e
    ld a, [hl]
    dec e
    ld d, c
    ld d, $79
    ld a, a
    ld d, $79
    ld a, a
    ld d, $79
    ld a, a
    ld d, $79
    ld a, a
    ld d, $79
    ld a, a
    ld d, $9e
    ld a, a
    inc [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [de], a
    adc b
    ld [de], a
    ld d, $9e
    ld a, a
    ld d, $9e
    ld a, a
    ld d, $79
    ld a, a
    ld d, $9e
    ld a, a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec h
    ld b, e
    ld a, a
    jr jr_00f_7f7e

    inc [hl]
    ld [bc], a
    ld [bc], a

jr_00f_7f7e:
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    rla
    inc [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    rla
    inc e
    cp c
    ld a, a
    ret nc

    ld a, a
    push hl
    ld a, a
    db $f4
    ld a, a
    jr nz, @+$68

    dec e
    add b
    rra
    db $76
    ld e, $00
    inc h
    inc c
    inc de
    ld [bc], a
    inc [hl]
    dec b
    nop
    inc bc
    dec b
    ld [de], a
    dec b
    nop
    inc bc
    dec b
    inc e
    dec e
    add b
    rra
    ld a, b
    ld e, $00
    inc h
    inc c
    inc de
    inc bc
    inc [hl]
    dec b
    nop
    inc bc
    dec b
    ld [de], a
    dec b
    nop
    inc bc
    dec b
    inc e
    inc h
    inc c
    inc de
    ld bc, $0534
    nop
    inc bc
    dec b
    ld [de], a
    dec b
    nop
    inc bc
    dec b
    inc e
    dec e
    ld d, c
    inc [hl]
    dec b
    dec b
    dec b
    ld [de], a
    dec b
    dec b
    dec b
    inc e
    inc e
