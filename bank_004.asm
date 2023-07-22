; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    ldh a, [$bb]
    cp $01
    jr z, jr_004_4065

    ld hl, $c600
    ld de, $c700
    ld b, $87
    xor a

jr_004_400f:
    ld [hl+], a
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_400f

    ld [$c291], a
    ld [$c292], a
    ld a, $01
    ldh [$bb], a
    ld a, [$c2a6]
    and a
    ret nz

    ld a, [$c2bb]
    ld b, a
    ld a, [$c2b8]
    add b
    daa
    ld [$c2bb], a
    ld a, [$c2bc]
    ld b, a
    ld a, [$c2b9]
    adc b
    daa
    ld [$c2bc], a
    ld a, [$c2bd]
    ld b, a
    ld a, [$c2ba]
    adc b
    daa
    ld [$c2bd], a
    ld a, [$c2be]
    adc $00
    daa
    ld [$c2be], a
    xor a
    ld [$c2b5], a
    ld [$c2b6], a
    ld [$c2b7], a
    ld [$c2b8], a
    ld [$c2b9], a
    ld [$c2ba], a
    ret


Jump_004_4065:
jr_004_4065:
    ld a, [$c269]
    and a
    ret nz

    ld hl, GAME_BOARD
    ld de, $c500
    ld b, $87

jr_004_4072:
    ld a, [hl+]
    swap a
    and $f0
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_4072

jr_004_407c:
    ldh a, [$b6]
    ld hl, $ffb7
    cp [hl]
    jp z, Jump_004_411a

    ld e, [hl]
    inc [hl]
    ld d, $c9
    ld a, [de]
    ld l, a
    ld h, $c5
    ld a, [hl]
    and $f0
    and a
    jr z, jr_004_407c

    ldh [$9f], a
    cp $80
    call nc, Call_004_4198
    inc [hl]
    ld a, [de]
    add a
    add $37
    ld l, a
    ld a, $43
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$9f]
    ld b, a
    ld c, $01
    call jump_to_hl
    call Call_004_4129
    ld b, $02
    ldh a, [$9f]
    bit 7, a
    jr nz, jr_004_40c1

    bit 4, a
    jr z, jr_004_40c1

    ld b, $05

jr_004_40c1:
    ld a, c
    cp b
    jr c, jr_004_4065

    ldh a, [$9f]
    cp $80
    jr c, jr_004_40d6

    ld hl, $c291
    jr z, jr_004_40d1

    inc hl

jr_004_40d1:
    ld a, [hl]
    and a
    jp z, Jump_004_4065

jr_004_40d6:
    call Call_004_41c5
    xor a
    ldh [$a0], a
    ld de, $c586
    ld hl, $c686
    ld b, $87

jr_004_40e4:
    ld a, [de]
    or [hl]
    ld [hl], a
    bit 0, a
    jr z, jr_004_4105

    ldh a, [$a0]
    and a
    jr nz, jr_004_4105

    dec a
    ldh [$a0], a
    ld a, [hl]
    ld c, a
    or $02
    ld [hl], a
    bit 1, c
    jr nz, jr_004_4105

    push hl
    push de
    push bc
    call Call_004_4158
    pop bc
    pop de
    pop hl

jr_004_4105:
    dec hl
    dec de
    dec b
    jr nz, jr_004_40e4

    xor a
    ld [$c28e], a
    inc a
    inc a
    ldh [$ba], a
    ld a, $12
    call Call_000_07ce
    jp Jump_004_4065


Jump_004_411a:
    xor a
    ldh [$bb], a
    ld a, [$de02]
    cp $12
    ret z

    ld a, $0f
    call Call_000_07ce
    ret


Call_004_4129:
jr_004_4129:
    ldh a, [$b8]
    ld hl, $ffb9
    cp [hl]
    ret z

    ld a, [hl]
    inc [hl]
    ld l, a
    ld h, $ca
    ld b, [hl]
    ld l, [hl]
    ld h, $c5
    ld a, [hl]
    and $f0
    jr z, jr_004_4129

    cp $80
    call nc, Call_004_4198
    ld a, b
    add a
    add $37
    ld l, a
    ld a, $43
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$9f]
    ld b, a
    call jump_to_hl
    jr jr_004_4129

Call_004_4158:
    push hl
    ld c, l
    ld de, $0010
    ld hl, $cb00

jr_004_4160:
    ld a, [hl]
    and a
    jr z, jr_004_416e

    inc l
    ld a, [hl-]
    cp c
    jr z, jr_004_416c

    add hl, de
    jr jr_004_4160

jr_004_416c:
    pop hl
    ret


jr_004_416e:
    ld e, l
    ld d, h
    pop hl
    dec a
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    ld a, [hl]
    swap a
    and $0f
    cp $08
    jr nc, jr_004_418f

    inc a
    cp $07
    jr nc, jr_004_4187

    or $80

jr_004_4187:
    ld [de], a
    ld h, $c7
    ld [hl], a
    ld h, $c4
    ld [hl], a
    ret


jr_004_418f:
    sub $08
    ld [de], a
    dec de
    dec de
    ld a, $bf
    ld [de], a
    ret


Call_004_4198:
    push hl
    push de
    push bc
    ld de, $c291
    jr z, jr_004_41a1

    inc de

jr_004_41a1:
    ld a, l
    and $f8
    jr z, jr_004_41c1

    ld a, l
    sub $08
    ld l, a
    ld a, [hl]
    swap a
    and $0f
    ld b, a
    and a
    jr z, jr_004_41c1

    cp $08
    jr nc, jr_004_41c1

    xor a
    scf

jr_004_41b9:
    adc a
    dec b
    jr nz, jr_004_41b9

    ld b, a
    ld a, [de]
    or b
    ld [de], a

jr_004_41c1:
    pop bc
    pop de
    pop hl
    ret


Call_004_41c5:
    ldh a, [$9f]
    swap a
    dec a
    add a
    add $39
    ld l, a
    ld a, $42
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0000
    ld b, l

jr_004_41da:
    ld a, l
    add e
    daa
    ld l, a
    ld a, h
    adc d
    daa
    ld h, a
    ld a, b
    adc $00
    daa
    ld b, a
    dec c
    jr nz, jr_004_41da

    ld a, [$c2b5]
    add l
    daa
    ld [$c2b5], a
    ld a, [$c2b6]
    adc h
    daa
    ld [$c2b6], a
    ld a, [$c2b7]
    adc b
    daa
    ld [$c2b7], a
    ld a, [$c2a6]
    inc a
    ld c, a
    xor a
    ld [$c2b8], a
    ld [$c2b9], a
    ld [$c2ba], a

jr_004_4211:
    ld a, [$c2b5]
    ld b, a
    ld a, [$c2b8]
    add b
    daa
    ld [$c2b8], a
    ld a, [$c2b6]
    ld b, a
    ld a, [$c2b9]
    adc b
    daa
    ld [$c2b9], a
    ld a, [$c2b7]
    ld b, a
    ld a, [$c2ba]
    adc b
    daa
    ld [$c2ba], a
    dec c
    jr nz, jr_004_4211

    ret


    ld bc, $0500
    nop
    stop
    ld d, b
    nop
    nop
    ld bc, $0500
    nop
    db $10
    ld bc, $0200
    nop
    inc bc
    nop
    inc b
    nop
    dec b
    nop
    ld b, $00
    rlca
    nop
    ld [$0900], sp
    nop
    stop
    ld de, $1200
    nop
    inc de
    nop
    inc d
    nop
    dec d
    nop
    ld d, $00
    rla
    nop
    jr jr_004_426b

jr_004_426b:
    add hl, de
    nop
    jr nz, jr_004_426f

jr_004_426f:
    dec b
    nop
    stop
    dec d
    nop
    jr nz, jr_004_4277

jr_004_4277:
    dec h
    nop
    jr nc, jr_004_427b

jr_004_427b:
    dec [hl]
    nop
    ld b, b
    nop
    ld b, l
    nop
    ld d, b
    nop
    ld d, l
    nop
    ld h, b
    nop
    ld h, l
    nop
    ld [hl], b
    nop
    ld [hl], l
    nop
    add b
    nop
    add l
    nop
    sub b
    nop
    sub l
    nop
    nop
    ld bc, $0010
    jr nz, jr_004_429b

jr_004_429b:
    jr nc, jr_004_429d

jr_004_429d:
    ld b, b
    nop
    ld d, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    add b
    nop
    sub b
    nop
    nop
    ld bc, $0110
    jr nz, @+$03

    jr nc, jr_004_42b2

    ld b, b

jr_004_42b2:
    ld bc, $0150
    ld h, b
    ld bc, $0170
    add b
    ld bc, $0190
    nop
    ld [bc], a
    ld d, b
    nop
    nop
    ld bc, $0150
    nop
    ld [bc], a
    ld d, b
    ld [bc], a
    nop
    inc bc
    ld d, b
    inc bc
    nop
    inc b
    ld d, b
    inc b
    nop
    dec b
    ld d, b
    dec b
    nop
    ld b, $50
    ld b, $00
    rlca
    ld d, b
    rlca
    nop
    ld [$0850], sp
    nop
    add hl, bc
    ld d, b
    add hl, bc
    nop
    stop
    ld bc, $0200
    nop
    inc bc
    nop
    inc b
    nop
    dec b
    nop
    ld b, $00
    rlca
    nop
    ld [$0900], sp
    nop
    stop
    ld de, $1200
    nop
    inc de
    nop
    inc d
    nop
    dec d
    nop
    ld d, $00
    rla
    nop
    jr jr_004_430c

jr_004_430c:
    add hl, de
    nop
    jr nz, jr_004_4310

jr_004_4310:
    dec b
    nop
    stop
    dec d
    nop
    jr nz, jr_004_4318

jr_004_4318:
    dec h
    nop
    jr nc, jr_004_431c

jr_004_431c:
    dec [hl]
    nop
    ld b, b
    nop
    ld b, l
    nop
    ld d, b
    nop
    ld d, l
    nop
    ld h, b
    nop
    ld h, l
    nop
    ld [hl], b
    nop
    ld [hl], l
    nop
    add b
    nop
    add l
    nop
    sub b
    nop
    sub l
    nop
    nop
    ld c, c
    ld b, h
    ld a, e
    ld b, h
    push bc
    ld b, h
    rrca
    ld b, l
    ld e, c
    ld b, l
    and e
    ld b, l
    db $ed
    ld b, l
    ld b, a
    ld b, h
    ld hl, $6b46
    ld b, [hl]
    call $2f46
    ld b, a
    sub c
    ld b, a
    di
    ld b, a
    ld d, l
    ld c, b
    ld b, a
    ld b, h
    and c
    ld c, b
    db $eb
    ld c, b
    ld c, l
    ld c, c
    xor a
    ld c, c
    ld de, $734a
    ld c, d
    push de
    ld c, d
    ld b, a
    ld b, h
    ld hl, $6b4b
    ld c, e
    call Call_000_2f4b
    ld c, h
    sub c
    ld c, h
    di
    ld c, h
    ld d, l
    ld c, l
    ld b, a
    ld b, h
    and c
    ld c, l
    db $eb
    ld c, l
    ld c, l
    ld c, [hl]
    xor a
    ld c, [hl]
    ld de, $734f
    ld c, a
    push de
    ld c, a
    ld b, a
    ld b, h
    ld hl, $6b50
    ld d, b
    call $2f50
    ld d, c
    sub c
    ld d, c
    di
    ld d, c
    ld d, l
    ld d, d
    ld b, a
    ld b, h
    and c
    ld d, d
    db $eb
    ld d, d
    ld c, l
    ld d, e
    xor a
    ld d, e
    ld de, $7354
    ld d, h
    push de
    ld d, h
    ld b, a
    ld b, h
    ld hl, $6b55
    ld d, l
    call Call_000_2f55
    ld d, [hl]
    sub c
    ld d, [hl]
    di
    ld d, [hl]
    ld d, l
    ld d, a
    ld b, a
    ld b, h
    and c
    ld d, a
    db $eb
    ld d, a
    ld c, l
    ld e, b
    xor a
    ld e, b
    ld de, $7359
    ld e, c
    push de
    ld e, c
    ld b, a
    ld b, h
    ld hl, $6b5a
    ld e, d
    call Call_000_2f5a
    ld e, e
    sub c
    ld e, e
    di
    ld e, e
    ld d, l
    ld e, h
    ld b, a
    ld b, h
    and c
    ld e, h
    db $eb
    ld e, h
    ld c, l
    ld e, l
    xor a
    ld e, l
    ld de, $735e
    ld e, [hl]
    push de
    ld e, [hl]
    ld b, a
    ld b, h
    ld hl, $6b5f
    ld e, a
    call Call_000_2f5f
    ld h, b
    sub c
    ld h, b
    di
    ld h, b
    ld d, l
    ld h, c
    ld b, a
    ld b, h
    and c
    ld h, c
    db $eb
    ld h, c
    ld c, l
    ld h, d
    xor a
    ld h, d
    ld de, $7363
    ld h, e
    push de
    ld h, e
    ld b, a
    ld b, h
    ld hl, $6b64
    ld h, h
    call $2f64
    ld h, l
    sub c
    ld h, l
    di
    ld h, l
    ld d, l
    ld h, [hl]
    ld b, a
    ld b, h
    and c
    ld h, [hl]
    db $eb
    ld h, [hl]
    ld c, l
    ld h, a
    xor a
    ld h, a
    ld de, $7368
    ld l, b
    push de
    ld l, b
    ld b, a
    ld b, h
    ld hl, $6b69
    ld l, c
    call $2f69
    ld l, d
    sub c
    ld l, d
    di
    ld l, d
    ld d, l
    ld l, e
    ld b, a
    ld b, h
    and c
    ld l, e
    db $d3
    ld l, e
    dec e
    ld l, h
    ld h, a
    ld l, h
    or c
    ld l, h
    ei
    ld l, h
    ld b, l
    ld l, l
    ld b, a
    ld b, h
    nop
    ret


    ld hl, $ffb8
    ld a, [$c708]
    and a
    jr nz, jr_004_4464

    ld a, [$c508]
    cp b
    jr nz, jr_004_4464

    inc a
    ld [$c508], a
    ld e, [hl]
    ld d, $ca
    ld a, $08
    ld [de], a
    inc [hl]
    inc c

jr_004_4464:
    ld a, [$c701]
    and a
    ret nz

    ld a, [$c501]
    cp b
    ret nz

    inc a
    ld [$c501], a
    ld e, [hl]
    ld d, $ca
    ld a, $01
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c700]
    and a
    jr nz, jr_004_4496

    ld a, [$c500]
    cp b
    jr nz, jr_004_4496

    inc a
    ld [$c500], a
    ld e, [hl]
    ld d, $ca
    ld a, $00
    ld [de], a
    inc [hl]
    inc c

jr_004_4496:
    ld a, [$c709]
    and a
    jr nz, jr_004_44ae

    ld a, [$c509]
    cp b
    jr nz, jr_004_44ae

    inc a
    ld [$c509], a
    ld e, [hl]
    ld d, $ca
    ld a, $09
    ld [de], a
    inc [hl]
    inc c

jr_004_44ae:
    ld a, [$c702]
    and a
    ret nz

    ld a, [$c502]
    cp b
    ret nz

    inc a
    ld [$c502], a
    ld e, [hl]
    ld d, $ca
    ld a, $02
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c701]
    and a
    jr nz, jr_004_44e0

    ld a, [$c501]
    cp b
    jr nz, jr_004_44e0

    inc a
    ld [$c501], a
    ld e, [hl]
    ld d, $ca
    ld a, $01
    ld [de], a
    inc [hl]
    inc c

jr_004_44e0:
    ld a, [$c70a]
    and a
    jr nz, jr_004_44f8

    ld a, [$c50a]
    cp b
    jr nz, jr_004_44f8

    inc a
    ld [$c50a], a
    ld e, [hl]
    ld d, $ca
    ld a, $0a
    ld [de], a
    inc [hl]
    inc c

jr_004_44f8:
    ld a, [$c703]
    and a
    ret nz

    ld a, [$c503]
    cp b
    ret nz

    inc a
    ld [$c503], a
    ld e, [hl]
    ld d, $ca
    ld a, $03
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c702]
    and a
    jr nz, jr_004_452a

    ld a, [$c502]
    cp b
    jr nz, jr_004_452a

    inc a
    ld [$c502], a
    ld e, [hl]
    ld d, $ca
    ld a, $02
    ld [de], a
    inc [hl]
    inc c

jr_004_452a:
    ld a, [$c70b]
    and a
    jr nz, jr_004_4542

    ld a, [$c50b]
    cp b
    jr nz, jr_004_4542

    inc a
    ld [$c50b], a
    ld e, [hl]
    ld d, $ca
    ld a, $0b
    ld [de], a
    inc [hl]
    inc c

jr_004_4542:
    ld a, [$c704]
    and a
    ret nz

    ld a, [$c504]
    cp b
    ret nz

    inc a
    ld [$c504], a
    ld e, [hl]
    ld d, $ca
    ld a, $04
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c703]
    and a
    jr nz, jr_004_4574

    ld a, [$c503]
    cp b
    jr nz, jr_004_4574

    inc a
    ld [$c503], a
    ld e, [hl]
    ld d, $ca
    ld a, $03
    ld [de], a
    inc [hl]
    inc c

jr_004_4574:
    ld a, [$c70c]
    and a
    jr nz, jr_004_458c

    ld a, [$c50c]
    cp b
    jr nz, jr_004_458c

    inc a
    ld [$c50c], a
    ld e, [hl]
    ld d, $ca
    ld a, $0c
    ld [de], a
    inc [hl]
    inc c

jr_004_458c:
    ld a, [$c705]
    and a
    ret nz

    ld a, [$c505]
    cp b
    ret nz

    inc a
    ld [$c505], a
    ld e, [hl]
    ld d, $ca
    ld a, $05
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c704]
    and a
    jr nz, jr_004_45be

    ld a, [$c504]
    cp b
    jr nz, jr_004_45be

    inc a
    ld [$c504], a
    ld e, [hl]
    ld d, $ca
    ld a, $04
    ld [de], a
    inc [hl]
    inc c

jr_004_45be:
    ld a, [$c70d]
    and a
    jr nz, jr_004_45d6

    ld a, [$c50d]
    cp b
    jr nz, jr_004_45d6

    inc a
    ld [$c50d], a
    ld e, [hl]
    ld d, $ca
    ld a, $0d
    ld [de], a
    inc [hl]
    inc c

jr_004_45d6:
    ld a, [$c706]
    and a
    ret nz

    ld a, [$c506]
    cp b
    ret nz

    inc a
    ld [$c506], a
    ld e, [hl]
    ld d, $ca
    ld a, $06
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c705]
    and a
    jr nz, jr_004_4608

    ld a, [$c505]
    cp b
    jr nz, jr_004_4608

    inc a
    ld [$c505], a
    ld e, [hl]
    ld d, $ca
    ld a, $05
    ld [de], a
    inc [hl]
    inc c

jr_004_4608:
    ld a, [$c70e]
    and a
    jr nz, jr_004_4620

    ld a, [$c50e]
    cp b
    jr nz, jr_004_4620

    inc a
    ld [$c50e], a
    ld e, [hl]
    ld d, $ca
    ld a, $0e
    ld [de], a
    inc [hl]
    inc c

jr_004_4620:
    ret


    ld hl, $ffb8
    ld a, [$c700]
    and a
    jr nz, jr_004_463c

    ld a, [$c500]
    cp b
    jr nz, jr_004_463c

    inc a
    ld [$c500], a
    ld e, [hl]
    ld d, $ca
    ld a, $00
    ld [de], a
    inc [hl]
    inc c

jr_004_463c:
    ld a, [$c710]
    and a
    jr nz, jr_004_4654

    ld a, [$c510]
    cp b
    jr nz, jr_004_4654

    inc a
    ld [$c510], a
    ld e, [hl]
    ld d, $ca
    ld a, $10
    ld [de], a
    inc [hl]
    inc c

jr_004_4654:
    ld a, [$c709]
    and a
    ret nz

    ld a, [$c509]
    cp b
    ret nz

    inc a
    ld [$c509], a
    ld e, [hl]
    ld d, $ca
    ld a, $09
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c708]
    and a
    jr nz, jr_004_4686

    ld a, [$c508]
    cp b
    jr nz, jr_004_4686

    inc a
    ld [$c508], a
    ld e, [hl]
    ld d, $ca
    ld a, $08
    ld [de], a
    inc [hl]
    inc c

jr_004_4686:
    ld a, [$c701]
    and a
    jr nz, jr_004_469e

    ld a, [$c501]
    cp b
    jr nz, jr_004_469e

    inc a
    ld [$c501], a
    ld e, [hl]
    ld d, $ca
    ld a, $01
    ld [de], a
    inc [hl]
    inc c

jr_004_469e:
    ld a, [$c711]
    and a
    jr nz, jr_004_46b6

    ld a, [$c511]
    cp b
    jr nz, jr_004_46b6

    inc a
    ld [$c511], a
    ld e, [hl]
    ld d, $ca
    ld a, $11
    ld [de], a
    inc [hl]
    inc c

jr_004_46b6:
    ld a, [$c70a]
    and a
    ret nz

    ld a, [$c50a]
    cp b
    ret nz

    inc a
    ld [$c50a], a
    ld e, [hl]
    ld d, $ca
    ld a, $0a
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c709]
    and a
    jr nz, jr_004_46e8

    ld a, [$c509]
    cp b
    jr nz, jr_004_46e8

    inc a
    ld [$c509], a
    ld e, [hl]
    ld d, $ca
    ld a, $09
    ld [de], a
    inc [hl]
    inc c

jr_004_46e8:
    ld a, [$c702]
    and a
    jr nz, jr_004_4700

    ld a, [$c502]
    cp b
    jr nz, jr_004_4700

    inc a
    ld [$c502], a
    ld e, [hl]
    ld d, $ca
    ld a, $02
    ld [de], a
    inc [hl]
    inc c

jr_004_4700:
    ld a, [$c712]
    and a
    jr nz, jr_004_4718

    ld a, [$c512]
    cp b
    jr nz, jr_004_4718

    inc a
    ld [$c512], a
    ld e, [hl]
    ld d, $ca
    ld a, $12
    ld [de], a
    inc [hl]
    inc c

jr_004_4718:
    ld a, [$c70b]
    and a
    ret nz

    ld a, [$c50b]
    cp b
    ret nz

    inc a
    ld [$c50b], a
    ld e, [hl]
    ld d, $ca
    ld a, $0b
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c70a]
    and a
    jr nz, jr_004_474a

    ld a, [$c50a]
    cp b
    jr nz, jr_004_474a

    inc a
    ld [$c50a], a
    ld e, [hl]
    ld d, $ca
    ld a, $0a
    ld [de], a
    inc [hl]
    inc c

jr_004_474a:
    ld a, [$c703]
    and a
    jr nz, jr_004_4762

    ld a, [$c503]
    cp b
    jr nz, jr_004_4762

    inc a
    ld [$c503], a
    ld e, [hl]
    ld d, $ca
    ld a, $03
    ld [de], a
    inc [hl]
    inc c

jr_004_4762:
    ld a, [$c713]
    and a
    jr nz, jr_004_477a

    ld a, [$c513]
    cp b
    jr nz, jr_004_477a

    inc a
    ld [$c513], a
    ld e, [hl]
    ld d, $ca
    ld a, $13
    ld [de], a
    inc [hl]
    inc c

jr_004_477a:
    ld a, [$c70c]
    and a
    ret nz

    ld a, [$c50c]
    cp b
    ret nz

    inc a
    ld [$c50c], a
    ld e, [hl]
    ld d, $ca
    ld a, $0c
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c70b]
    and a
    jr nz, jr_004_47ac

    ld a, [$c50b]
    cp b
    jr nz, jr_004_47ac

    inc a
    ld [$c50b], a
    ld e, [hl]
    ld d, $ca
    ld a, $0b
    ld [de], a
    inc [hl]
    inc c

jr_004_47ac:
    ld a, [$c704]
    and a
    jr nz, jr_004_47c4

    ld a, [$c504]
    cp b
    jr nz, jr_004_47c4

    inc a
    ld [$c504], a
    ld e, [hl]
    ld d, $ca
    ld a, $04
    ld [de], a
    inc [hl]
    inc c

jr_004_47c4:
    ld a, [$c714]
    and a
    jr nz, jr_004_47dc

    ld a, [$c514]
    cp b
    jr nz, jr_004_47dc

    inc a
    ld [$c514], a
    ld e, [hl]
    ld d, $ca
    ld a, $14
    ld [de], a
    inc [hl]
    inc c

jr_004_47dc:
    ld a, [$c70d]
    and a
    ret nz

    ld a, [$c50d]
    cp b
    ret nz

    inc a
    ld [$c50d], a
    ld e, [hl]
    ld d, $ca
    ld a, $0d
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c70c]
    and a
    jr nz, jr_004_480e

    ld a, [$c50c]
    cp b
    jr nz, jr_004_480e

    inc a
    ld [$c50c], a
    ld e, [hl]
    ld d, $ca
    ld a, $0c
    ld [de], a
    inc [hl]
    inc c

jr_004_480e:
    ld a, [$c705]
    and a
    jr nz, jr_004_4826

    ld a, [$c505]
    cp b
    jr nz, jr_004_4826

    inc a
    ld [$c505], a
    ld e, [hl]
    ld d, $ca
    ld a, $05
    ld [de], a
    inc [hl]
    inc c

jr_004_4826:
    ld a, [$c715]
    and a
    jr nz, jr_004_483e

    ld a, [$c515]
    cp b
    jr nz, jr_004_483e

    inc a
    ld [$c515], a
    ld e, [hl]
    ld d, $ca
    ld a, $15
    ld [de], a
    inc [hl]
    inc c

jr_004_483e:
    ld a, [$c70e]
    and a
    ret nz

    ld a, [$c50e]
    cp b
    ret nz

    inc a
    ld [$c50e], a
    ld e, [hl]
    ld d, $ca
    ld a, $0e
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c70d]
    and a
    jr nz, jr_004_4870

    ld a, [$c50d]
    cp b
    jr nz, jr_004_4870

    inc a
    ld [$c50d], a
    ld e, [hl]
    ld d, $ca
    ld a, $0d
    ld [de], a
    inc [hl]
    inc c

jr_004_4870:
    ld a, [$c706]
    and a
    jr nz, jr_004_4888

    ld a, [$c506]
    cp b
    jr nz, jr_004_4888

    inc a
    ld [$c506], a
    ld e, [hl]
    ld d, $ca
    ld a, $06
    ld [de], a
    inc [hl]
    inc c

jr_004_4888:
    ld a, [$c716]
    and a
    jr nz, jr_004_48a0

    ld a, [$c516]
    cp b
    jr nz, jr_004_48a0

    inc a
    ld [$c516], a
    ld e, [hl]
    ld d, $ca
    ld a, $16
    ld [de], a
    inc [hl]
    inc c

jr_004_48a0:
    ret


    ld hl, $ffb8
    ld a, [$c708]
    and a
    jr nz, jr_004_48bc

    ld a, [$c508]
    cp b
    jr nz, jr_004_48bc

    inc a
    ld [$c508], a
    ld e, [hl]
    ld d, $ca
    ld a, $08
    ld [de], a
    inc [hl]
    inc c

jr_004_48bc:
    ld a, [$c718]
    and a
    jr nz, jr_004_48d4

    ld a, [$c518]
    cp b
    jr nz, jr_004_48d4

    inc a
    ld [$c518], a
    ld e, [hl]
    ld d, $ca
    ld a, $18
    ld [de], a
    inc [hl]
    inc c

jr_004_48d4:
    ld a, [$c711]
    and a
    ret nz

    ld a, [$c511]
    cp b
    ret nz

    inc a
    ld [$c511], a
    ld e, [hl]
    ld d, $ca
    ld a, $11
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c710]
    and a
    jr nz, jr_004_4906

    ld a, [$c510]
    cp b
    jr nz, jr_004_4906

    inc a
    ld [$c510], a
    ld e, [hl]
    ld d, $ca
    ld a, $10
    ld [de], a
    inc [hl]
    inc c

jr_004_4906:
    ld a, [$c709]
    and a
    jr nz, jr_004_491e

    ld a, [$c509]
    cp b
    jr nz, jr_004_491e

    inc a
    ld [$c509], a
    ld e, [hl]
    ld d, $ca
    ld a, $09
    ld [de], a
    inc [hl]
    inc c

jr_004_491e:
    ld a, [$c719]
    and a
    jr nz, jr_004_4936

    ld a, [$c519]
    cp b
    jr nz, jr_004_4936

    inc a
    ld [$c519], a
    ld e, [hl]
    ld d, $ca
    ld a, $19
    ld [de], a
    inc [hl]
    inc c

jr_004_4936:
    ld a, [$c712]
    and a
    ret nz

    ld a, [$c512]
    cp b
    ret nz

    inc a
    ld [$c512], a
    ld e, [hl]
    ld d, $ca
    ld a, $12
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c711]
    and a
    jr nz, jr_004_4968

    ld a, [$c511]
    cp b
    jr nz, jr_004_4968

    inc a
    ld [$c511], a
    ld e, [hl]
    ld d, $ca
    ld a, $11
    ld [de], a
    inc [hl]
    inc c

jr_004_4968:
    ld a, [$c70a]
    and a
    jr nz, jr_004_4980

    ld a, [$c50a]
    cp b
    jr nz, jr_004_4980

    inc a
    ld [$c50a], a
    ld e, [hl]
    ld d, $ca
    ld a, $0a
    ld [de], a
    inc [hl]
    inc c

jr_004_4980:
    ld a, [$c71a]
    and a
    jr nz, jr_004_4998

    ld a, [$c51a]
    cp b
    jr nz, jr_004_4998

    inc a
    ld [$c51a], a
    ld e, [hl]
    ld d, $ca
    ld a, $1a
    ld [de], a
    inc [hl]
    inc c

jr_004_4998:
    ld a, [$c713]
    and a
    ret nz

    ld a, [$c513]
    cp b
    ret nz

    inc a
    ld [$c513], a
    ld e, [hl]
    ld d, $ca
    ld a, $13
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c712]
    and a
    jr nz, jr_004_49ca

    ld a, [$c512]
    cp b
    jr nz, jr_004_49ca

    inc a
    ld [$c512], a
    ld e, [hl]
    ld d, $ca
    ld a, $12
    ld [de], a
    inc [hl]
    inc c

jr_004_49ca:
    ld a, [$c70b]
    and a
    jr nz, jr_004_49e2

    ld a, [$c50b]
    cp b
    jr nz, jr_004_49e2

    inc a
    ld [$c50b], a
    ld e, [hl]
    ld d, $ca
    ld a, $0b
    ld [de], a
    inc [hl]
    inc c

jr_004_49e2:
    ld a, [$c71b]
    and a
    jr nz, jr_004_49fa

    ld a, [$c51b]
    cp b
    jr nz, jr_004_49fa

    inc a
    ld [$c51b], a
    ld e, [hl]
    ld d, $ca
    ld a, $1b
    ld [de], a
    inc [hl]
    inc c

jr_004_49fa:
    ld a, [$c714]
    and a
    ret nz

    ld a, [$c514]
    cp b
    ret nz

    inc a
    ld [$c514], a
    ld e, [hl]
    ld d, $ca
    ld a, $14
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c713]
    and a
    jr nz, jr_004_4a2c

    ld a, [$c513]
    cp b
    jr nz, jr_004_4a2c

    inc a
    ld [$c513], a
    ld e, [hl]
    ld d, $ca
    ld a, $13
    ld [de], a
    inc [hl]
    inc c

jr_004_4a2c:
    ld a, [$c70c]
    and a
    jr nz, jr_004_4a44

    ld a, [$c50c]
    cp b
    jr nz, jr_004_4a44

    inc a
    ld [$c50c], a
    ld e, [hl]
    ld d, $ca
    ld a, $0c
    ld [de], a
    inc [hl]
    inc c

jr_004_4a44:
    ld a, [$c71c]
    and a
    jr nz, jr_004_4a5c

    ld a, [$c51c]
    cp b
    jr nz, jr_004_4a5c

    inc a
    ld [$c51c], a
    ld e, [hl]
    ld d, $ca
    ld a, $1c
    ld [de], a
    inc [hl]
    inc c

jr_004_4a5c:
    ld a, [$c715]
    and a
    ret nz

    ld a, [$c515]
    cp b
    ret nz

    inc a
    ld [$c515], a
    ld e, [hl]
    ld d, $ca
    ld a, $15
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c714]
    and a
    jr nz, jr_004_4a8e

    ld a, [$c514]
    cp b
    jr nz, jr_004_4a8e

    inc a
    ld [$c514], a
    ld e, [hl]
    ld d, $ca
    ld a, $14
    ld [de], a
    inc [hl]
    inc c

jr_004_4a8e:
    ld a, [$c70d]
    and a
    jr nz, jr_004_4aa6

    ld a, [$c50d]
    cp b
    jr nz, jr_004_4aa6

    inc a
    ld [$c50d], a
    ld e, [hl]
    ld d, $ca
    ld a, $0d
    ld [de], a
    inc [hl]
    inc c

jr_004_4aa6:
    ld a, [$c71d]
    and a
    jr nz, jr_004_4abe

    ld a, [$c51d]
    cp b
    jr nz, jr_004_4abe

    inc a
    ld [$c51d], a
    ld e, [hl]
    ld d, $ca
    ld a, $1d
    ld [de], a
    inc [hl]
    inc c

jr_004_4abe:
    ld a, [$c716]
    and a
    ret nz

    ld a, [$c516]
    cp b
    ret nz

    inc a
    ld [$c516], a
    ld e, [hl]
    ld d, $ca
    ld a, $16
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c715]
    and a
    jr nz, jr_004_4af0

    ld a, [$c515]
    cp b
    jr nz, jr_004_4af0

    inc a
    ld [$c515], a
    ld e, [hl]
    ld d, $ca
    ld a, $15
    ld [de], a
    inc [hl]
    inc c

jr_004_4af0:
    ld a, [$c70e]
    and a
    jr nz, jr_004_4b08

    ld a, [$c50e]
    cp b
    jr nz, jr_004_4b08

    inc a
    ld [$c50e], a
    ld e, [hl]
    ld d, $ca
    ld a, $0e
    ld [de], a
    inc [hl]
    inc c

jr_004_4b08:
    ld a, [$c71e]
    and a
    jr nz, jr_004_4b20

    ld a, [$c51e]
    cp b
    jr nz, jr_004_4b20

    inc a
    ld [$c51e], a
    ld e, [hl]
    ld d, $ca
    ld a, $1e
    ld [de], a
    inc [hl]
    inc c

jr_004_4b20:
    ret


    ld hl, $ffb8
    ld a, [$c710]
    and a
    jr nz, jr_004_4b3c

    ld a, [$c510]
    cp b
    jr nz, jr_004_4b3c

    inc a
    ld [$c510], a
    ld e, [hl]
    ld d, $ca
    ld a, $10
    ld [de], a
    inc [hl]
    inc c

jr_004_4b3c:
    ld a, [$c720]
    and a
    jr nz, jr_004_4b54

    ld a, [$c520]
    cp b
    jr nz, jr_004_4b54

    inc a
    ld [$c520], a
    ld e, [hl]
    ld d, $ca
    ld a, $20
    ld [de], a
    inc [hl]
    inc c

jr_004_4b54:
    ld a, [$c719]
    and a
    ret nz

    ld a, [$c519]
    cp b
    ret nz

    inc a
    ld [$c519], a
    ld e, [hl]
    ld d, $ca
    ld a, $19
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c718]
    and a
    jr nz, jr_004_4b86

    ld a, [$c518]
    cp b
    jr nz, jr_004_4b86

    inc a
    ld [$c518], a
    ld e, [hl]
    ld d, $ca
    ld a, $18
    ld [de], a
    inc [hl]
    inc c

jr_004_4b86:
    ld a, [$c711]
    and a
    jr nz, jr_004_4b9e

    ld a, [$c511]
    cp b
    jr nz, jr_004_4b9e

    inc a
    ld [$c511], a
    ld e, [hl]
    ld d, $ca
    ld a, $11
    ld [de], a
    inc [hl]
    inc c

jr_004_4b9e:
    ld a, [$c721]
    and a
    jr nz, jr_004_4bb6

    ld a, [$c521]
    cp b
    jr nz, jr_004_4bb6

    inc a
    ld [$c521], a
    ld e, [hl]
    ld d, $ca
    ld a, $21
    ld [de], a
    inc [hl]
    inc c

jr_004_4bb6:
    ld a, [$c71a]
    and a
    ret nz

    ld a, [$c51a]
    cp b
    ret nz

    inc a
    ld [$c51a], a
    ld e, [hl]
    ld d, $ca
    ld a, $1a
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c719]
    and a
    jr nz, jr_004_4be8

    ld a, [$c519]
    cp b
    jr nz, jr_004_4be8

    inc a
    ld [$c519], a
    ld e, [hl]
    ld d, $ca
    ld a, $19
    ld [de], a
    inc [hl]
    inc c

jr_004_4be8:
    ld a, [$c712]
    and a
    jr nz, jr_004_4c00

    ld a, [$c512]
    cp b
    jr nz, jr_004_4c00

    inc a
    ld [$c512], a
    ld e, [hl]
    ld d, $ca
    ld a, $12
    ld [de], a
    inc [hl]
    inc c

jr_004_4c00:
    ld a, [$c722]
    and a
    jr nz, jr_004_4c18

    ld a, [$c522]
    cp b
    jr nz, jr_004_4c18

    inc a
    ld [$c522], a
    ld e, [hl]
    ld d, $ca
    ld a, $22
    ld [de], a
    inc [hl]
    inc c

jr_004_4c18:
    ld a, [$c71b]
    and a
    ret nz

    ld a, [$c51b]
    cp b
    ret nz

    inc a
    ld [$c51b], a
    ld e, [hl]
    ld d, $ca
    ld a, $1b
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c71a]
    and a
    jr nz, jr_004_4c4a

    ld a, [$c51a]
    cp b
    jr nz, jr_004_4c4a

    inc a
    ld [$c51a], a
    ld e, [hl]
    ld d, $ca
    ld a, $1a
    ld [de], a
    inc [hl]
    inc c

jr_004_4c4a:
    ld a, [$c713]
    and a
    jr nz, jr_004_4c62

    ld a, [$c513]
    cp b
    jr nz, jr_004_4c62

    inc a
    ld [$c513], a
    ld e, [hl]
    ld d, $ca
    ld a, $13
    ld [de], a
    inc [hl]
    inc c

jr_004_4c62:
    ld a, [$c723]
    and a
    jr nz, jr_004_4c7a

    ld a, [$c523]
    cp b
    jr nz, jr_004_4c7a

    inc a
    ld [$c523], a
    ld e, [hl]
    ld d, $ca
    ld a, $23
    ld [de], a
    inc [hl]
    inc c

jr_004_4c7a:
    ld a, [$c71c]
    and a
    ret nz

    ld a, [$c51c]
    cp b
    ret nz

    inc a
    ld [$c51c], a
    ld e, [hl]
    ld d, $ca
    ld a, $1c
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c71b]
    and a
    jr nz, jr_004_4cac

    ld a, [$c51b]
    cp b
    jr nz, jr_004_4cac

    inc a
    ld [$c51b], a
    ld e, [hl]
    ld d, $ca
    ld a, $1b
    ld [de], a
    inc [hl]
    inc c

jr_004_4cac:
    ld a, [$c714]
    and a
    jr nz, jr_004_4cc4

    ld a, [$c514]
    cp b
    jr nz, jr_004_4cc4

    inc a
    ld [$c514], a
    ld e, [hl]
    ld d, $ca
    ld a, $14
    ld [de], a
    inc [hl]
    inc c

jr_004_4cc4:
    ld a, [$c724]
    and a
    jr nz, jr_004_4cdc

    ld a, [$c524]
    cp b
    jr nz, jr_004_4cdc

    inc a
    ld [$c524], a
    ld e, [hl]
    ld d, $ca
    ld a, $24
    ld [de], a
    inc [hl]
    inc c

jr_004_4cdc:
    ld a, [$c71d]
    and a
    ret nz

    ld a, [$c51d]
    cp b
    ret nz

    inc a
    ld [$c51d], a
    ld e, [hl]
    ld d, $ca
    ld a, $1d
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c71c]
    and a
    jr nz, jr_004_4d0e

    ld a, [$c51c]
    cp b
    jr nz, jr_004_4d0e

    inc a
    ld [$c51c], a
    ld e, [hl]
    ld d, $ca
    ld a, $1c
    ld [de], a
    inc [hl]
    inc c

jr_004_4d0e:
    ld a, [$c715]
    and a
    jr nz, jr_004_4d26

    ld a, [$c515]
    cp b
    jr nz, jr_004_4d26

    inc a
    ld [$c515], a
    ld e, [hl]
    ld d, $ca
    ld a, $15
    ld [de], a
    inc [hl]
    inc c

jr_004_4d26:
    ld a, [$c725]
    and a
    jr nz, jr_004_4d3e

    ld a, [$c525]
    cp b
    jr nz, jr_004_4d3e

    inc a
    ld [$c525], a
    ld e, [hl]
    ld d, $ca
    ld a, $25
    ld [de], a
    inc [hl]
    inc c

jr_004_4d3e:
    ld a, [$c71e]
    and a
    ret nz

    ld a, [$c51e]
    cp b
    ret nz

    inc a
    ld [$c51e], a
    ld e, [hl]
    ld d, $ca
    ld a, $1e
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c71d]
    and a
    jr nz, jr_004_4d70

    ld a, [$c51d]
    cp b
    jr nz, jr_004_4d70

    inc a
    ld [$c51d], a
    ld e, [hl]
    ld d, $ca
    ld a, $1d
    ld [de], a
    inc [hl]
    inc c

jr_004_4d70:
    ld a, [$c716]
    and a
    jr nz, jr_004_4d88

    ld a, [$c516]
    cp b
    jr nz, jr_004_4d88

    inc a
    ld [$c516], a
    ld e, [hl]
    ld d, $ca
    ld a, $16
    ld [de], a
    inc [hl]
    inc c

jr_004_4d88:
    ld a, [$c726]
    and a
    jr nz, jr_004_4da0

    ld a, [$c526]
    cp b
    jr nz, jr_004_4da0

    inc a
    ld [$c526], a
    ld e, [hl]
    ld d, $ca
    ld a, $26
    ld [de], a
    inc [hl]
    inc c

jr_004_4da0:
    ret


    ld hl, $ffb8
    ld a, [$c718]
    and a
    jr nz, jr_004_4dbc

    ld a, [$c518]
    cp b
    jr nz, jr_004_4dbc

    inc a
    ld [$c518], a
    ld e, [hl]
    ld d, $ca
    ld a, $18
    ld [de], a
    inc [hl]
    inc c

jr_004_4dbc:
    ld a, [$c728]
    and a
    jr nz, jr_004_4dd4

    ld a, [$c528]
    cp b
    jr nz, jr_004_4dd4

    inc a
    ld [$c528], a
    ld e, [hl]
    ld d, $ca
    ld a, $28
    ld [de], a
    inc [hl]
    inc c

jr_004_4dd4:
    ld a, [$c721]
    and a
    ret nz

    ld a, [$c521]
    cp b
    ret nz

    inc a
    ld [$c521], a
    ld e, [hl]
    ld d, $ca
    ld a, $21
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c720]
    and a
    jr nz, jr_004_4e06

    ld a, [$c520]
    cp b
    jr nz, jr_004_4e06

    inc a
    ld [$c520], a
    ld e, [hl]
    ld d, $ca
    ld a, $20
    ld [de], a
    inc [hl]
    inc c

jr_004_4e06:
    ld a, [$c719]
    and a
    jr nz, jr_004_4e1e

    ld a, [$c519]
    cp b
    jr nz, jr_004_4e1e

    inc a
    ld [$c519], a
    ld e, [hl]
    ld d, $ca
    ld a, $19
    ld [de], a
    inc [hl]
    inc c

jr_004_4e1e:
    ld a, [$c729]
    and a
    jr nz, jr_004_4e36

    ld a, [$c529]
    cp b
    jr nz, jr_004_4e36

    inc a
    ld [$c529], a
    ld e, [hl]
    ld d, $ca
    ld a, $29
    ld [de], a
    inc [hl]
    inc c

jr_004_4e36:
    ld a, [$c722]
    and a
    ret nz

    ld a, [$c522]
    cp b
    ret nz

    inc a
    ld [$c522], a
    ld e, [hl]
    ld d, $ca
    ld a, $22
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c721]
    and a
    jr nz, jr_004_4e68

    ld a, [$c521]
    cp b
    jr nz, jr_004_4e68

    inc a
    ld [$c521], a
    ld e, [hl]
    ld d, $ca
    ld a, $21
    ld [de], a
    inc [hl]
    inc c

jr_004_4e68:
    ld a, [$c71a]
    and a
    jr nz, jr_004_4e80

    ld a, [$c51a]
    cp b
    jr nz, jr_004_4e80

    inc a
    ld [$c51a], a
    ld e, [hl]
    ld d, $ca
    ld a, $1a
    ld [de], a
    inc [hl]
    inc c

jr_004_4e80:
    ld a, [$c72a]
    and a
    jr nz, jr_004_4e98

    ld a, [$c52a]
    cp b
    jr nz, jr_004_4e98

    inc a
    ld [$c52a], a
    ld e, [hl]
    ld d, $ca
    ld a, $2a
    ld [de], a
    inc [hl]
    inc c

jr_004_4e98:
    ld a, [$c723]
    and a
    ret nz

    ld a, [$c523]
    cp b
    ret nz

    inc a
    ld [$c523], a
    ld e, [hl]
    ld d, $ca
    ld a, $23
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c722]
    and a
    jr nz, jr_004_4eca

    ld a, [$c522]
    cp b
    jr nz, jr_004_4eca

    inc a
    ld [$c522], a
    ld e, [hl]
    ld d, $ca
    ld a, $22
    ld [de], a
    inc [hl]
    inc c

jr_004_4eca:
    ld a, [$c71b]
    and a
    jr nz, jr_004_4ee2

    ld a, [$c51b]
    cp b
    jr nz, jr_004_4ee2

    inc a
    ld [$c51b], a
    ld e, [hl]
    ld d, $ca
    ld a, $1b
    ld [de], a
    inc [hl]
    inc c

jr_004_4ee2:
    ld a, [$c72b]
    and a
    jr nz, jr_004_4efa

    ld a, [$c52b]
    cp b
    jr nz, jr_004_4efa

    inc a
    ld [$c52b], a
    ld e, [hl]
    ld d, $ca
    ld a, $2b
    ld [de], a
    inc [hl]
    inc c

jr_004_4efa:
    ld a, [$c724]
    and a
    ret nz

    ld a, [$c524]
    cp b
    ret nz

    inc a
    ld [$c524], a
    ld e, [hl]
    ld d, $ca
    ld a, $24
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c723]
    and a
    jr nz, jr_004_4f2c

    ld a, [$c523]
    cp b
    jr nz, jr_004_4f2c

    inc a
    ld [$c523], a
    ld e, [hl]
    ld d, $ca
    ld a, $23
    ld [de], a
    inc [hl]
    inc c

jr_004_4f2c:
    ld a, [$c71c]
    and a
    jr nz, jr_004_4f44

    ld a, [$c51c]
    cp b
    jr nz, jr_004_4f44

    inc a
    ld [$c51c], a
    ld e, [hl]
    ld d, $ca
    ld a, $1c
    ld [de], a
    inc [hl]
    inc c

jr_004_4f44:
    ld a, [$c72c]
    and a
    jr nz, jr_004_4f5c

    ld a, [$c52c]
    cp b
    jr nz, jr_004_4f5c

    inc a
    ld [$c52c], a
    ld e, [hl]
    ld d, $ca
    ld a, $2c
    ld [de], a
    inc [hl]
    inc c

jr_004_4f5c:
    ld a, [$c725]
    and a
    ret nz

    ld a, [$c525]
    cp b
    ret nz

    inc a
    ld [$c525], a
    ld e, [hl]
    ld d, $ca
    ld a, $25
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c724]
    and a
    jr nz, jr_004_4f8e

    ld a, [$c524]
    cp b
    jr nz, jr_004_4f8e

    inc a
    ld [$c524], a
    ld e, [hl]
    ld d, $ca
    ld a, $24
    ld [de], a
    inc [hl]
    inc c

jr_004_4f8e:
    ld a, [$c71d]
    and a
    jr nz, jr_004_4fa6

    ld a, [$c51d]
    cp b
    jr nz, jr_004_4fa6

    inc a
    ld [$c51d], a
    ld e, [hl]
    ld d, $ca
    ld a, $1d
    ld [de], a
    inc [hl]
    inc c

jr_004_4fa6:
    ld a, [$c72d]
    and a
    jr nz, jr_004_4fbe

    ld a, [$c52d]
    cp b
    jr nz, jr_004_4fbe

    inc a
    ld [$c52d], a
    ld e, [hl]
    ld d, $ca
    ld a, $2d
    ld [de], a
    inc [hl]
    inc c

jr_004_4fbe:
    ld a, [$c726]
    and a
    ret nz

    ld a, [$c526]
    cp b
    ret nz

    inc a
    ld [$c526], a
    ld e, [hl]
    ld d, $ca
    ld a, $26
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c725]
    and a
    jr nz, jr_004_4ff0

    ld a, [$c525]
    cp b
    jr nz, jr_004_4ff0

    inc a
    ld [$c525], a
    ld e, [hl]
    ld d, $ca
    ld a, $25
    ld [de], a
    inc [hl]
    inc c

jr_004_4ff0:
    ld a, [$c71e]
    and a
    jr nz, jr_004_5008

    ld a, [$c51e]
    cp b
    jr nz, jr_004_5008

    inc a
    ld [$c51e], a
    ld e, [hl]
    ld d, $ca
    ld a, $1e
    ld [de], a
    inc [hl]
    inc c

jr_004_5008:
    ld a, [$c72e]
    and a
    jr nz, jr_004_5020

    ld a, [$c52e]
    cp b
    jr nz, jr_004_5020

    inc a
    ld [$c52e], a
    ld e, [hl]
    ld d, $ca
    ld a, $2e
    ld [de], a
    inc [hl]
    inc c

jr_004_5020:
    ret


    ld hl, $ffb8
    ld a, [$c720]
    and a
    jr nz, jr_004_503c

    ld a, [$c520]
    cp b
    jr nz, jr_004_503c

    inc a
    ld [$c520], a
    ld e, [hl]
    ld d, $ca
    ld a, $20
    ld [de], a
    inc [hl]
    inc c

jr_004_503c:
    ld a, [$c730]
    and a
    jr nz, jr_004_5054

    ld a, [$c530]
    cp b
    jr nz, jr_004_5054

    inc a
    ld [$c530], a
    ld e, [hl]
    ld d, $ca
    ld a, $30
    ld [de], a
    inc [hl]
    inc c

jr_004_5054:
    ld a, [$c729]
    and a
    ret nz

    ld a, [$c529]
    cp b
    ret nz

    inc a
    ld [$c529], a
    ld e, [hl]
    ld d, $ca
    ld a, $29
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c728]
    and a
    jr nz, jr_004_5086

    ld a, [$c528]
    cp b
    jr nz, jr_004_5086

    inc a
    ld [$c528], a
    ld e, [hl]
    ld d, $ca
    ld a, $28
    ld [de], a
    inc [hl]
    inc c

jr_004_5086:
    ld a, [$c721]
    and a
    jr nz, jr_004_509e

    ld a, [$c521]
    cp b
    jr nz, jr_004_509e

    inc a
    ld [$c521], a
    ld e, [hl]
    ld d, $ca
    ld a, $21
    ld [de], a
    inc [hl]
    inc c

jr_004_509e:
    ld a, [$c731]
    and a
    jr nz, jr_004_50b6

    ld a, [$c531]
    cp b
    jr nz, jr_004_50b6

    inc a
    ld [$c531], a
    ld e, [hl]
    ld d, $ca
    ld a, $31
    ld [de], a
    inc [hl]
    inc c

jr_004_50b6:
    ld a, [$c72a]
    and a
    ret nz

    ld a, [$c52a]
    cp b
    ret nz

    inc a
    ld [$c52a], a
    ld e, [hl]
    ld d, $ca
    ld a, $2a
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c729]
    and a
    jr nz, jr_004_50e8

    ld a, [$c529]
    cp b
    jr nz, jr_004_50e8

    inc a
    ld [$c529], a
    ld e, [hl]
    ld d, $ca
    ld a, $29
    ld [de], a
    inc [hl]
    inc c

jr_004_50e8:
    ld a, [$c722]
    and a
    jr nz, jr_004_5100

    ld a, [$c522]
    cp b
    jr nz, jr_004_5100

    inc a
    ld [$c522], a
    ld e, [hl]
    ld d, $ca
    ld a, $22
    ld [de], a
    inc [hl]
    inc c

jr_004_5100:
    ld a, [$c732]
    and a
    jr nz, jr_004_5118

    ld a, [$c532]
    cp b
    jr nz, jr_004_5118

    inc a
    ld [$c532], a
    ld e, [hl]
    ld d, $ca
    ld a, $32
    ld [de], a
    inc [hl]
    inc c

jr_004_5118:
    ld a, [$c72b]
    and a
    ret nz

    ld a, [$c52b]
    cp b
    ret nz

    inc a
    ld [$c52b], a
    ld e, [hl]
    ld d, $ca
    ld a, $2b
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c72a]
    and a
    jr nz, jr_004_514a

    ld a, [$c52a]
    cp b
    jr nz, jr_004_514a

    inc a
    ld [$c52a], a
    ld e, [hl]
    ld d, $ca
    ld a, $2a
    ld [de], a
    inc [hl]
    inc c

jr_004_514a:
    ld a, [$c723]
    and a
    jr nz, jr_004_5162

    ld a, [$c523]
    cp b
    jr nz, jr_004_5162

    inc a
    ld [$c523], a
    ld e, [hl]
    ld d, $ca
    ld a, $23
    ld [de], a
    inc [hl]
    inc c

jr_004_5162:
    ld a, [$c733]
    and a
    jr nz, jr_004_517a

    ld a, [$c533]
    cp b
    jr nz, jr_004_517a

    inc a
    ld [$c533], a
    ld e, [hl]
    ld d, $ca
    ld a, $33
    ld [de], a
    inc [hl]
    inc c

jr_004_517a:
    ld a, [$c72c]
    and a
    ret nz

    ld a, [$c52c]
    cp b
    ret nz

    inc a
    ld [$c52c], a
    ld e, [hl]
    ld d, $ca
    ld a, $2c
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c72b]
    and a
    jr nz, jr_004_51ac

    ld a, [$c52b]
    cp b
    jr nz, jr_004_51ac

    inc a
    ld [$c52b], a
    ld e, [hl]
    ld d, $ca
    ld a, $2b
    ld [de], a
    inc [hl]
    inc c

jr_004_51ac:
    ld a, [$c724]
    and a
    jr nz, jr_004_51c4

    ld a, [$c524]
    cp b
    jr nz, jr_004_51c4

    inc a
    ld [$c524], a
    ld e, [hl]
    ld d, $ca
    ld a, $24
    ld [de], a
    inc [hl]
    inc c

jr_004_51c4:
    ld a, [$c734]
    and a
    jr nz, jr_004_51dc

    ld a, [$c534]
    cp b
    jr nz, jr_004_51dc

    inc a
    ld [$c534], a
    ld e, [hl]
    ld d, $ca
    ld a, $34
    ld [de], a
    inc [hl]
    inc c

jr_004_51dc:
    ld a, [$c72d]
    and a
    ret nz

    ld a, [$c52d]
    cp b
    ret nz

    inc a
    ld [$c52d], a
    ld e, [hl]
    ld d, $ca
    ld a, $2d
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c72c]
    and a
    jr nz, jr_004_520e

    ld a, [$c52c]
    cp b
    jr nz, jr_004_520e

    inc a
    ld [$c52c], a
    ld e, [hl]
    ld d, $ca
    ld a, $2c
    ld [de], a
    inc [hl]
    inc c

jr_004_520e:
    ld a, [$c725]
    and a
    jr nz, jr_004_5226

    ld a, [$c525]
    cp b
    jr nz, jr_004_5226

    inc a
    ld [$c525], a
    ld e, [hl]
    ld d, $ca
    ld a, $25
    ld [de], a
    inc [hl]
    inc c

jr_004_5226:
    ld a, [$c735]
    and a
    jr nz, jr_004_523e

    ld a, [$c535]
    cp b
    jr nz, jr_004_523e

    inc a
    ld [$c535], a
    ld e, [hl]
    ld d, $ca
    ld a, $35
    ld [de], a
    inc [hl]
    inc c

jr_004_523e:
    ld a, [$c72e]
    and a
    ret nz

    ld a, [$c52e]
    cp b
    ret nz

    inc a
    ld [$c52e], a
    ld e, [hl]
    ld d, $ca
    ld a, $2e
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c72d]
    and a
    jr nz, jr_004_5270

    ld a, [$c52d]
    cp b
    jr nz, jr_004_5270

    inc a
    ld [$c52d], a
    ld e, [hl]
    ld d, $ca
    ld a, $2d
    ld [de], a
    inc [hl]
    inc c

jr_004_5270:
    ld a, [$c726]
    and a
    jr nz, jr_004_5288

    ld a, [$c526]
    cp b
    jr nz, jr_004_5288

    inc a
    ld [$c526], a
    ld e, [hl]
    ld d, $ca
    ld a, $26
    ld [de], a
    inc [hl]
    inc c

jr_004_5288:
    ld a, [$c736]
    and a
    jr nz, jr_004_52a0

    ld a, [$c536]
    cp b
    jr nz, jr_004_52a0

    inc a
    ld [$c536], a
    ld e, [hl]
    ld d, $ca
    ld a, $36
    ld [de], a
    inc [hl]
    inc c

jr_004_52a0:
    ret


    ld hl, $ffb8
    ld a, [$c728]
    and a
    jr nz, jr_004_52bc

    ld a, [$c528]
    cp b
    jr nz, jr_004_52bc

    inc a
    ld [$c528], a
    ld e, [hl]
    ld d, $ca
    ld a, $28
    ld [de], a
    inc [hl]
    inc c

jr_004_52bc:
    ld a, [$c738]
    and a
    jr nz, jr_004_52d4

    ld a, [$c538]
    cp b
    jr nz, jr_004_52d4

    inc a
    ld [$c538], a
    ld e, [hl]
    ld d, $ca
    ld a, $38
    ld [de], a
    inc [hl]
    inc c

jr_004_52d4:
    ld a, [$c731]
    and a
    ret nz

    ld a, [$c531]
    cp b
    ret nz

    inc a
    ld [$c531], a
    ld e, [hl]
    ld d, $ca
    ld a, $31
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c730]
    and a
    jr nz, jr_004_5306

    ld a, [$c530]
    cp b
    jr nz, jr_004_5306

    inc a
    ld [$c530], a
    ld e, [hl]
    ld d, $ca
    ld a, $30
    ld [de], a
    inc [hl]
    inc c

jr_004_5306:
    ld a, [$c729]
    and a
    jr nz, jr_004_531e

    ld a, [$c529]
    cp b
    jr nz, jr_004_531e

    inc a
    ld [$c529], a
    ld e, [hl]
    ld d, $ca
    ld a, $29
    ld [de], a
    inc [hl]
    inc c

jr_004_531e:
    ld a, [$c739]
    and a
    jr nz, jr_004_5336

    ld a, [$c539]
    cp b
    jr nz, jr_004_5336

    inc a
    ld [$c539], a
    ld e, [hl]
    ld d, $ca
    ld a, $39
    ld [de], a
    inc [hl]
    inc c

jr_004_5336:
    ld a, [$c732]
    and a
    ret nz

    ld a, [$c532]
    cp b
    ret nz

    inc a
    ld [$c532], a
    ld e, [hl]
    ld d, $ca
    ld a, $32
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c731]
    and a
    jr nz, jr_004_5368

    ld a, [$c531]
    cp b
    jr nz, jr_004_5368

    inc a
    ld [$c531], a
    ld e, [hl]
    ld d, $ca
    ld a, $31
    ld [de], a
    inc [hl]
    inc c

jr_004_5368:
    ld a, [$c72a]
    and a
    jr nz, jr_004_5380

    ld a, [$c52a]
    cp b
    jr nz, jr_004_5380

    inc a
    ld [$c52a], a
    ld e, [hl]
    ld d, $ca
    ld a, $2a
    ld [de], a
    inc [hl]
    inc c

jr_004_5380:
    ld a, [$c73a]
    and a
    jr nz, jr_004_5398

    ld a, [$c53a]
    cp b
    jr nz, jr_004_5398

    inc a
    ld [$c53a], a
    ld e, [hl]
    ld d, $ca
    ld a, $3a
    ld [de], a
    inc [hl]
    inc c

jr_004_5398:
    ld a, [$c733]
    and a
    ret nz

    ld a, [$c533]
    cp b
    ret nz

    inc a
    ld [$c533], a
    ld e, [hl]
    ld d, $ca
    ld a, $33
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c732]
    and a
    jr nz, jr_004_53ca

    ld a, [$c532]
    cp b
    jr nz, jr_004_53ca

    inc a
    ld [$c532], a
    ld e, [hl]
    ld d, $ca
    ld a, $32
    ld [de], a
    inc [hl]
    inc c

jr_004_53ca:
    ld a, [$c72b]
    and a
    jr nz, jr_004_53e2

    ld a, [$c52b]
    cp b
    jr nz, jr_004_53e2

    inc a
    ld [$c52b], a
    ld e, [hl]
    ld d, $ca
    ld a, $2b
    ld [de], a
    inc [hl]
    inc c

jr_004_53e2:
    ld a, [$c73b]
    and a
    jr nz, jr_004_53fa

    ld a, [$c53b]
    cp b
    jr nz, jr_004_53fa

    inc a
    ld [$c53b], a
    ld e, [hl]
    ld d, $ca
    ld a, $3b
    ld [de], a
    inc [hl]
    inc c

jr_004_53fa:
    ld a, [$c734]
    and a
    ret nz

    ld a, [$c534]
    cp b
    ret nz

    inc a
    ld [$c534], a
    ld e, [hl]
    ld d, $ca
    ld a, $34
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c733]
    and a
    jr nz, jr_004_542c

    ld a, [$c533]
    cp b
    jr nz, jr_004_542c

    inc a
    ld [$c533], a
    ld e, [hl]
    ld d, $ca
    ld a, $33
    ld [de], a
    inc [hl]
    inc c

jr_004_542c:
    ld a, [$c72c]
    and a
    jr nz, jr_004_5444

    ld a, [$c52c]
    cp b
    jr nz, jr_004_5444

    inc a
    ld [$c52c], a
    ld e, [hl]
    ld d, $ca
    ld a, $2c
    ld [de], a
    inc [hl]
    inc c

jr_004_5444:
    ld a, [$c73c]
    and a
    jr nz, jr_004_545c

    ld a, [$c53c]
    cp b
    jr nz, jr_004_545c

    inc a
    ld [$c53c], a
    ld e, [hl]
    ld d, $ca
    ld a, $3c
    ld [de], a
    inc [hl]
    inc c

jr_004_545c:
    ld a, [$c735]
    and a
    ret nz

    ld a, [$c535]
    cp b
    ret nz

    inc a
    ld [$c535], a
    ld e, [hl]
    ld d, $ca
    ld a, $35
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c734]
    and a
    jr nz, jr_004_548e

    ld a, [$c534]
    cp b
    jr nz, jr_004_548e

    inc a
    ld [$c534], a
    ld e, [hl]
    ld d, $ca
    ld a, $34
    ld [de], a
    inc [hl]
    inc c

jr_004_548e:
    ld a, [$c72d]
    and a
    jr nz, jr_004_54a6

    ld a, [$c52d]
    cp b
    jr nz, jr_004_54a6

    inc a
    ld [$c52d], a
    ld e, [hl]
    ld d, $ca
    ld a, $2d
    ld [de], a
    inc [hl]
    inc c

jr_004_54a6:
    ld a, [$c73d]
    and a
    jr nz, jr_004_54be

    ld a, [$c53d]
    cp b
    jr nz, jr_004_54be

    inc a
    ld [$c53d], a
    ld e, [hl]
    ld d, $ca
    ld a, $3d
    ld [de], a
    inc [hl]
    inc c

jr_004_54be:
    ld a, [$c736]
    and a
    ret nz

    ld a, [$c536]
    cp b
    ret nz

    inc a
    ld [$c536], a
    ld e, [hl]
    ld d, $ca
    ld a, $36
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c735]
    and a
    jr nz, jr_004_54f0

    ld a, [$c535]
    cp b
    jr nz, jr_004_54f0

    inc a
    ld [$c535], a
    ld e, [hl]
    ld d, $ca
    ld a, $35
    ld [de], a
    inc [hl]
    inc c

jr_004_54f0:
    ld a, [$c72e]
    and a
    jr nz, jr_004_5508

    ld a, [$c52e]
    cp b
    jr nz, jr_004_5508

    inc a
    ld [$c52e], a
    ld e, [hl]
    ld d, $ca
    ld a, $2e
    ld [de], a
    inc [hl]
    inc c

jr_004_5508:
    ld a, [$c73e]
    and a
    jr nz, jr_004_5520

    ld a, [$c53e]
    cp b
    jr nz, jr_004_5520

    inc a
    ld [$c53e], a
    ld e, [hl]
    ld d, $ca
    ld a, $3e
    ld [de], a
    inc [hl]
    inc c

jr_004_5520:
    ret


    ld hl, $ffb8
    ld a, [$c730]
    and a
    jr nz, jr_004_553c

    ld a, [$c530]
    cp b
    jr nz, jr_004_553c

    inc a
    ld [$c530], a
    ld e, [hl]
    ld d, $ca
    ld a, $30
    ld [de], a
    inc [hl]
    inc c

jr_004_553c:
    ld a, [$c740]
    and a
    jr nz, jr_004_5554

    ld a, [$c540]
    cp b
    jr nz, jr_004_5554

    inc a
    ld [$c540], a
    ld e, [hl]
    ld d, $ca
    ld a, $40
    ld [de], a
    inc [hl]
    inc c

jr_004_5554:
    ld a, [$c739]
    and a
    ret nz

    ld a, [$c539]
    cp b
    ret nz

    inc a
    ld [$c539], a
    ld e, [hl]
    ld d, $ca
    ld a, $39
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c738]
    and a
    jr nz, jr_004_5586

    ld a, [$c538]
    cp b
    jr nz, jr_004_5586

    inc a
    ld [$c538], a
    ld e, [hl]
    ld d, $ca
    ld a, $38
    ld [de], a
    inc [hl]
    inc c

jr_004_5586:
    ld a, [$c731]
    and a
    jr nz, jr_004_559e

    ld a, [$c531]
    cp b
    jr nz, jr_004_559e

    inc a
    ld [$c531], a
    ld e, [hl]
    ld d, $ca
    ld a, $31
    ld [de], a
    inc [hl]
    inc c

jr_004_559e:
    ld a, [$c741]
    and a
    jr nz, jr_004_55b6

    ld a, [$c541]
    cp b
    jr nz, jr_004_55b6

    inc a
    ld [$c541], a
    ld e, [hl]
    ld d, $ca
    ld a, $41
    ld [de], a
    inc [hl]
    inc c

jr_004_55b6:
    ld a, [$c73a]
    and a
    ret nz

    ld a, [$c53a]
    cp b
    ret nz

    inc a
    ld [$c53a], a
    ld e, [hl]
    ld d, $ca
    ld a, $3a
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c739]
    and a
    jr nz, jr_004_55e8

    ld a, [$c539]
    cp b
    jr nz, jr_004_55e8

    inc a
    ld [$c539], a
    ld e, [hl]
    ld d, $ca
    ld a, $39
    ld [de], a
    inc [hl]
    inc c

jr_004_55e8:
    ld a, [$c732]
    and a
    jr nz, jr_004_5600

    ld a, [$c532]
    cp b
    jr nz, jr_004_5600

    inc a
    ld [$c532], a
    ld e, [hl]
    ld d, $ca
    ld a, $32
    ld [de], a
    inc [hl]
    inc c

jr_004_5600:
    ld a, [$c742]
    and a
    jr nz, jr_004_5618

    ld a, [$c542]
    cp b
    jr nz, jr_004_5618

    inc a
    ld [$c542], a
    ld e, [hl]
    ld d, $ca
    ld a, $42
    ld [de], a
    inc [hl]
    inc c

jr_004_5618:
    ld a, [$c73b]
    and a
    ret nz

    ld a, [$c53b]
    cp b
    ret nz

    inc a
    ld [$c53b], a
    ld e, [hl]
    ld d, $ca
    ld a, $3b
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c73a]
    and a
    jr nz, jr_004_564a

    ld a, [$c53a]
    cp b
    jr nz, jr_004_564a

    inc a
    ld [$c53a], a
    ld e, [hl]
    ld d, $ca
    ld a, $3a
    ld [de], a
    inc [hl]
    inc c

jr_004_564a:
    ld a, [$c733]
    and a
    jr nz, jr_004_5662

    ld a, [$c533]
    cp b
    jr nz, jr_004_5662

    inc a
    ld [$c533], a
    ld e, [hl]
    ld d, $ca
    ld a, $33
    ld [de], a
    inc [hl]
    inc c

jr_004_5662:
    ld a, [$c743]
    and a
    jr nz, jr_004_567a

    ld a, [$c543]
    cp b
    jr nz, jr_004_567a

    inc a
    ld [$c543], a
    ld e, [hl]
    ld d, $ca
    ld a, $43
    ld [de], a
    inc [hl]
    inc c

jr_004_567a:
    ld a, [$c73c]
    and a
    ret nz

    ld a, [$c53c]
    cp b
    ret nz

    inc a
    ld [$c53c], a
    ld e, [hl]
    ld d, $ca
    ld a, $3c
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c73b]
    and a
    jr nz, jr_004_56ac

    ld a, [$c53b]
    cp b
    jr nz, jr_004_56ac

    inc a
    ld [$c53b], a
    ld e, [hl]
    ld d, $ca
    ld a, $3b
    ld [de], a
    inc [hl]
    inc c

jr_004_56ac:
    ld a, [$c734]
    and a
    jr nz, jr_004_56c4

    ld a, [$c534]
    cp b
    jr nz, jr_004_56c4

    inc a
    ld [$c534], a
    ld e, [hl]
    ld d, $ca
    ld a, $34
    ld [de], a
    inc [hl]
    inc c

jr_004_56c4:
    ld a, [$c744]
    and a
    jr nz, jr_004_56dc

    ld a, [$c544]
    cp b
    jr nz, jr_004_56dc

    inc a
    ld [$c544], a
    ld e, [hl]
    ld d, $ca
    ld a, $44
    ld [de], a
    inc [hl]
    inc c

jr_004_56dc:
    ld a, [$c73d]
    and a
    ret nz

    ld a, [$c53d]
    cp b
    ret nz

    inc a
    ld [$c53d], a
    ld e, [hl]
    ld d, $ca
    ld a, $3d
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c73c]
    and a
    jr nz, jr_004_570e

    ld a, [$c53c]
    cp b
    jr nz, jr_004_570e

    inc a
    ld [$c53c], a
    ld e, [hl]
    ld d, $ca
    ld a, $3c
    ld [de], a
    inc [hl]
    inc c

jr_004_570e:
    ld a, [$c735]
    and a
    jr nz, jr_004_5726

    ld a, [$c535]
    cp b
    jr nz, jr_004_5726

    inc a
    ld [$c535], a
    ld e, [hl]
    ld d, $ca
    ld a, $35
    ld [de], a
    inc [hl]
    inc c

jr_004_5726:
    ld a, [$c745]
    and a
    jr nz, jr_004_573e

    ld a, [$c545]
    cp b
    jr nz, jr_004_573e

    inc a
    ld [$c545], a
    ld e, [hl]
    ld d, $ca
    ld a, $45
    ld [de], a
    inc [hl]
    inc c

jr_004_573e:
    ld a, [$c73e]
    and a
    ret nz

    ld a, [$c53e]
    cp b
    ret nz

    inc a
    ld [$c53e], a
    ld e, [hl]
    ld d, $ca
    ld a, $3e
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c73d]
    and a
    jr nz, jr_004_5770

    ld a, [$c53d]
    cp b
    jr nz, jr_004_5770

    inc a
    ld [$c53d], a
    ld e, [hl]
    ld d, $ca
    ld a, $3d
    ld [de], a
    inc [hl]
    inc c

jr_004_5770:
    ld a, [$c736]
    and a
    jr nz, jr_004_5788

    ld a, [$c536]
    cp b
    jr nz, jr_004_5788

    inc a
    ld [$c536], a
    ld e, [hl]
    ld d, $ca
    ld a, $36
    ld [de], a
    inc [hl]
    inc c

jr_004_5788:
    ld a, [$c746]
    and a
    jr nz, jr_004_57a0

    ld a, [$c546]
    cp b
    jr nz, jr_004_57a0

    inc a
    ld [$c546], a
    ld e, [hl]
    ld d, $ca
    ld a, $46
    ld [de], a
    inc [hl]
    inc c

jr_004_57a0:
    ret


    ld hl, $ffb8
    ld a, [$c738]
    and a
    jr nz, jr_004_57bc

    ld a, [$c538]
    cp b
    jr nz, jr_004_57bc

    inc a
    ld [$c538], a
    ld e, [hl]
    ld d, $ca
    ld a, $38
    ld [de], a
    inc [hl]
    inc c

jr_004_57bc:
    ld a, [$c748]
    and a
    jr nz, jr_004_57d4

    ld a, [$c548]
    cp b
    jr nz, jr_004_57d4

    inc a
    ld [$c548], a
    ld e, [hl]
    ld d, $ca
    ld a, $48
    ld [de], a
    inc [hl]
    inc c

jr_004_57d4:
    ld a, [$c741]
    and a
    ret nz

    ld a, [$c541]
    cp b
    ret nz

    inc a
    ld [$c541], a
    ld e, [hl]
    ld d, $ca
    ld a, $41
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c740]
    and a
    jr nz, jr_004_5806

    ld a, [$c540]
    cp b
    jr nz, jr_004_5806

    inc a
    ld [$c540], a
    ld e, [hl]
    ld d, $ca
    ld a, $40
    ld [de], a
    inc [hl]
    inc c

jr_004_5806:
    ld a, [$c739]
    and a
    jr nz, jr_004_581e

    ld a, [$c539]
    cp b
    jr nz, jr_004_581e

    inc a
    ld [$c539], a
    ld e, [hl]
    ld d, $ca
    ld a, $39
    ld [de], a
    inc [hl]
    inc c

jr_004_581e:
    ld a, [$c749]
    and a
    jr nz, jr_004_5836

    ld a, [$c549]
    cp b
    jr nz, jr_004_5836

    inc a
    ld [$c549], a
    ld e, [hl]
    ld d, $ca
    ld a, $49
    ld [de], a
    inc [hl]
    inc c

jr_004_5836:
    ld a, [$c742]
    and a
    ret nz

    ld a, [$c542]
    cp b
    ret nz

    inc a
    ld [$c542], a
    ld e, [hl]
    ld d, $ca
    ld a, $42
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c741]
    and a
    jr nz, jr_004_5868

    ld a, [$c541]
    cp b
    jr nz, jr_004_5868

    inc a
    ld [$c541], a
    ld e, [hl]
    ld d, $ca
    ld a, $41
    ld [de], a
    inc [hl]
    inc c

jr_004_5868:
    ld a, [$c73a]
    and a
    jr nz, jr_004_5880

    ld a, [$c53a]
    cp b
    jr nz, jr_004_5880

    inc a
    ld [$c53a], a
    ld e, [hl]
    ld d, $ca
    ld a, $3a
    ld [de], a
    inc [hl]
    inc c

jr_004_5880:
    ld a, [$c74a]
    and a
    jr nz, jr_004_5898

    ld a, [$c54a]
    cp b
    jr nz, jr_004_5898

    inc a
    ld [$c54a], a
    ld e, [hl]
    ld d, $ca
    ld a, $4a
    ld [de], a
    inc [hl]
    inc c

jr_004_5898:
    ld a, [$c743]
    and a
    ret nz

    ld a, [$c543]
    cp b
    ret nz

    inc a
    ld [$c543], a
    ld e, [hl]
    ld d, $ca
    ld a, $43
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c742]
    and a
    jr nz, jr_004_58ca

    ld a, [$c542]
    cp b
    jr nz, jr_004_58ca

    inc a
    ld [$c542], a
    ld e, [hl]
    ld d, $ca
    ld a, $42
    ld [de], a
    inc [hl]
    inc c

jr_004_58ca:
    ld a, [$c73b]
    and a
    jr nz, jr_004_58e2

    ld a, [$c53b]
    cp b
    jr nz, jr_004_58e2

    inc a
    ld [$c53b], a
    ld e, [hl]
    ld d, $ca
    ld a, $3b
    ld [de], a
    inc [hl]
    inc c

jr_004_58e2:
    ld a, [$c74b]
    and a
    jr nz, jr_004_58fa

    ld a, [$c54b]
    cp b
    jr nz, jr_004_58fa

    inc a
    ld [$c54b], a
    ld e, [hl]
    ld d, $ca
    ld a, $4b
    ld [de], a
    inc [hl]
    inc c

jr_004_58fa:
    ld a, [$c744]
    and a
    ret nz

    ld a, [$c544]
    cp b
    ret nz

    inc a
    ld [$c544], a
    ld e, [hl]
    ld d, $ca
    ld a, $44
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c743]
    and a
    jr nz, jr_004_592c

    ld a, [$c543]
    cp b
    jr nz, jr_004_592c

    inc a
    ld [$c543], a
    ld e, [hl]
    ld d, $ca
    ld a, $43
    ld [de], a
    inc [hl]
    inc c

jr_004_592c:
    ld a, [$c73c]
    and a
    jr nz, jr_004_5944

    ld a, [$c53c]
    cp b
    jr nz, jr_004_5944

    inc a
    ld [$c53c], a
    ld e, [hl]
    ld d, $ca
    ld a, $3c
    ld [de], a
    inc [hl]
    inc c

jr_004_5944:
    ld a, [$c74c]
    and a
    jr nz, jr_004_595c

    ld a, [$c54c]
    cp b
    jr nz, jr_004_595c

    inc a
    ld [$c54c], a
    ld e, [hl]
    ld d, $ca
    ld a, $4c
    ld [de], a
    inc [hl]
    inc c

jr_004_595c:
    ld a, [$c745]
    and a
    ret nz

    ld a, [$c545]
    cp b
    ret nz

    inc a
    ld [$c545], a
    ld e, [hl]
    ld d, $ca
    ld a, $45
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c744]
    and a
    jr nz, jr_004_598e

    ld a, [$c544]
    cp b
    jr nz, jr_004_598e

    inc a
    ld [$c544], a
    ld e, [hl]
    ld d, $ca
    ld a, $44
    ld [de], a
    inc [hl]
    inc c

jr_004_598e:
    ld a, [$c73d]
    and a
    jr nz, jr_004_59a6

    ld a, [$c53d]
    cp b
    jr nz, jr_004_59a6

    inc a
    ld [$c53d], a
    ld e, [hl]
    ld d, $ca
    ld a, $3d
    ld [de], a
    inc [hl]
    inc c

jr_004_59a6:
    ld a, [$c74d]
    and a
    jr nz, jr_004_59be

    ld a, [$c54d]
    cp b
    jr nz, jr_004_59be

    inc a
    ld [$c54d], a
    ld e, [hl]
    ld d, $ca
    ld a, $4d
    ld [de], a
    inc [hl]
    inc c

jr_004_59be:
    ld a, [$c746]
    and a
    ret nz

    ld a, [$c546]
    cp b
    ret nz

    inc a
    ld [$c546], a
    ld e, [hl]
    ld d, $ca
    ld a, $46
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c745]
    and a
    jr nz, jr_004_59f0

    ld a, [$c545]
    cp b
    jr nz, jr_004_59f0

    inc a
    ld [$c545], a
    ld e, [hl]
    ld d, $ca
    ld a, $45
    ld [de], a
    inc [hl]
    inc c

jr_004_59f0:
    ld a, [$c73e]
    and a
    jr nz, jr_004_5a08

    ld a, [$c53e]
    cp b
    jr nz, jr_004_5a08

    inc a
    ld [$c53e], a
    ld e, [hl]
    ld d, $ca
    ld a, $3e
    ld [de], a
    inc [hl]
    inc c

jr_004_5a08:
    ld a, [$c74e]
    and a
    jr nz, jr_004_5a20

    ld a, [$c54e]
    cp b
    jr nz, jr_004_5a20

    inc a
    ld [$c54e], a
    ld e, [hl]
    ld d, $ca
    ld a, $4e
    ld [de], a
    inc [hl]
    inc c

jr_004_5a20:
    ret


    ld hl, $ffb8
    ld a, [$c740]
    and a
    jr nz, jr_004_5a3c

    ld a, [$c540]
    cp b
    jr nz, jr_004_5a3c

    inc a
    ld [$c540], a
    ld e, [hl]
    ld d, $ca
    ld a, $40
    ld [de], a
    inc [hl]
    inc c

jr_004_5a3c:
    ld a, [$c750]
    and a
    jr nz, jr_004_5a54

    ld a, [$c550]
    cp b
    jr nz, jr_004_5a54

    inc a
    ld [$c550], a
    ld e, [hl]
    ld d, $ca
    ld a, $50
    ld [de], a
    inc [hl]
    inc c

jr_004_5a54:
    ld a, [$c749]
    and a
    ret nz

    ld a, [$c549]
    cp b
    ret nz

    inc a
    ld [$c549], a
    ld e, [hl]
    ld d, $ca
    ld a, $49
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c748]
    and a
    jr nz, jr_004_5a86

    ld a, [$c548]
    cp b
    jr nz, jr_004_5a86

    inc a
    ld [$c548], a
    ld e, [hl]
    ld d, $ca
    ld a, $48
    ld [de], a
    inc [hl]
    inc c

jr_004_5a86:
    ld a, [$c741]
    and a
    jr nz, jr_004_5a9e

    ld a, [$c541]
    cp b
    jr nz, jr_004_5a9e

    inc a
    ld [$c541], a
    ld e, [hl]
    ld d, $ca
    ld a, $41
    ld [de], a
    inc [hl]
    inc c

jr_004_5a9e:
    ld a, [$c751]
    and a
    jr nz, jr_004_5ab6

    ld a, [$c551]
    cp b
    jr nz, jr_004_5ab6

    inc a
    ld [$c551], a
    ld e, [hl]
    ld d, $ca
    ld a, $51
    ld [de], a
    inc [hl]
    inc c

jr_004_5ab6:
    ld a, [$c74a]
    and a
    ret nz

    ld a, [$c54a]
    cp b
    ret nz

    inc a
    ld [$c54a], a
    ld e, [hl]
    ld d, $ca
    ld a, $4a
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c749]
    and a
    jr nz, jr_004_5ae8

    ld a, [$c549]
    cp b
    jr nz, jr_004_5ae8

    inc a
    ld [$c549], a
    ld e, [hl]
    ld d, $ca
    ld a, $49
    ld [de], a
    inc [hl]
    inc c

jr_004_5ae8:
    ld a, [$c742]
    and a
    jr nz, jr_004_5b00

    ld a, [$c542]
    cp b
    jr nz, jr_004_5b00

    inc a
    ld [$c542], a
    ld e, [hl]
    ld d, $ca
    ld a, $42
    ld [de], a
    inc [hl]
    inc c

jr_004_5b00:
    ld a, [$c752]
    and a
    jr nz, jr_004_5b18

    ld a, [$c552]
    cp b
    jr nz, jr_004_5b18

    inc a
    ld [$c552], a
    ld e, [hl]
    ld d, $ca
    ld a, $52
    ld [de], a
    inc [hl]
    inc c

jr_004_5b18:
    ld a, [$c74b]
    and a
    ret nz

    ld a, [$c54b]
    cp b
    ret nz

    inc a
    ld [$c54b], a
    ld e, [hl]
    ld d, $ca
    ld a, $4b
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c74a]
    and a
    jr nz, jr_004_5b4a

    ld a, [$c54a]
    cp b
    jr nz, jr_004_5b4a

    inc a
    ld [$c54a], a
    ld e, [hl]
    ld d, $ca
    ld a, $4a
    ld [de], a
    inc [hl]
    inc c

jr_004_5b4a:
    ld a, [$c743]
    and a
    jr nz, jr_004_5b62

    ld a, [$c543]
    cp b
    jr nz, jr_004_5b62

    inc a
    ld [$c543], a
    ld e, [hl]
    ld d, $ca
    ld a, $43
    ld [de], a
    inc [hl]
    inc c

jr_004_5b62:
    ld a, [$c753]
    and a
    jr nz, jr_004_5b7a

    ld a, [$c553]
    cp b
    jr nz, jr_004_5b7a

    inc a
    ld [$c553], a
    ld e, [hl]
    ld d, $ca
    ld a, $53
    ld [de], a
    inc [hl]
    inc c

jr_004_5b7a:
    ld a, [$c74c]
    and a
    ret nz

    ld a, [$c54c]
    cp b
    ret nz

    inc a
    ld [$c54c], a
    ld e, [hl]
    ld d, $ca
    ld a, $4c
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c74b]
    and a
    jr nz, jr_004_5bac

    ld a, [$c54b]
    cp b
    jr nz, jr_004_5bac

    inc a
    ld [$c54b], a
    ld e, [hl]
    ld d, $ca
    ld a, $4b
    ld [de], a
    inc [hl]
    inc c

jr_004_5bac:
    ld a, [$c744]
    and a
    jr nz, jr_004_5bc4

    ld a, [$c544]
    cp b
    jr nz, jr_004_5bc4

    inc a
    ld [$c544], a
    ld e, [hl]
    ld d, $ca
    ld a, $44
    ld [de], a
    inc [hl]
    inc c

jr_004_5bc4:
    ld a, [$c754]
    and a
    jr nz, jr_004_5bdc

    ld a, [$c554]
    cp b
    jr nz, jr_004_5bdc

    inc a
    ld [$c554], a
    ld e, [hl]
    ld d, $ca
    ld a, $54
    ld [de], a
    inc [hl]
    inc c

jr_004_5bdc:
    ld a, [$c74d]
    and a
    ret nz

    ld a, [$c54d]
    cp b
    ret nz

    inc a
    ld [$c54d], a
    ld e, [hl]
    ld d, $ca
    ld a, $4d
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c74c]
    and a
    jr nz, jr_004_5c0e

    ld a, [$c54c]
    cp b
    jr nz, jr_004_5c0e

    inc a
    ld [$c54c], a
    ld e, [hl]
    ld d, $ca
    ld a, $4c
    ld [de], a
    inc [hl]
    inc c

jr_004_5c0e:
    ld a, [$c745]
    and a
    jr nz, jr_004_5c26

    ld a, [$c545]
    cp b
    jr nz, jr_004_5c26

    inc a
    ld [$c545], a
    ld e, [hl]
    ld d, $ca
    ld a, $45
    ld [de], a
    inc [hl]
    inc c

jr_004_5c26:
    ld a, [$c755]
    and a
    jr nz, jr_004_5c3e

    ld a, [$c555]
    cp b
    jr nz, jr_004_5c3e

    inc a
    ld [$c555], a
    ld e, [hl]
    ld d, $ca
    ld a, $55
    ld [de], a
    inc [hl]
    inc c

jr_004_5c3e:
    ld a, [$c74e]
    and a
    ret nz

    ld a, [$c54e]
    cp b
    ret nz

    inc a
    ld [$c54e], a
    ld e, [hl]
    ld d, $ca
    ld a, $4e
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c74d]
    and a
    jr nz, jr_004_5c70

    ld a, [$c54d]
    cp b
    jr nz, jr_004_5c70

    inc a
    ld [$c54d], a
    ld e, [hl]
    ld d, $ca
    ld a, $4d
    ld [de], a
    inc [hl]
    inc c

jr_004_5c70:
    ld a, [$c746]
    and a
    jr nz, jr_004_5c88

    ld a, [$c546]
    cp b
    jr nz, jr_004_5c88

    inc a
    ld [$c546], a
    ld e, [hl]
    ld d, $ca
    ld a, $46
    ld [de], a
    inc [hl]
    inc c

jr_004_5c88:
    ld a, [$c756]
    and a
    jr nz, jr_004_5ca0

    ld a, [$c556]
    cp b
    jr nz, jr_004_5ca0

    inc a
    ld [$c556], a
    ld e, [hl]
    ld d, $ca
    ld a, $56
    ld [de], a
    inc [hl]
    inc c

jr_004_5ca0:
    ret


    ld hl, $ffb8
    ld a, [$c748]
    and a
    jr nz, jr_004_5cbc

    ld a, [$c548]
    cp b
    jr nz, jr_004_5cbc

    inc a
    ld [$c548], a
    ld e, [hl]
    ld d, $ca
    ld a, $48
    ld [de], a
    inc [hl]
    inc c

jr_004_5cbc:
    ld a, [$c758]
    and a
    jr nz, jr_004_5cd4

    ld a, [$c558]
    cp b
    jr nz, jr_004_5cd4

    inc a
    ld [$c558], a
    ld e, [hl]
    ld d, $ca
    ld a, $58
    ld [de], a
    inc [hl]
    inc c

jr_004_5cd4:
    ld a, [$c751]
    and a
    ret nz

    ld a, [$c551]
    cp b
    ret nz

    inc a
    ld [$c551], a
    ld e, [hl]
    ld d, $ca
    ld a, $51
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c750]
    and a
    jr nz, jr_004_5d06

    ld a, [$c550]
    cp b
    jr nz, jr_004_5d06

    inc a
    ld [$c550], a
    ld e, [hl]
    ld d, $ca
    ld a, $50
    ld [de], a
    inc [hl]
    inc c

jr_004_5d06:
    ld a, [$c749]
    and a
    jr nz, jr_004_5d1e

    ld a, [$c549]
    cp b
    jr nz, jr_004_5d1e

    inc a
    ld [$c549], a
    ld e, [hl]
    ld d, $ca
    ld a, $49
    ld [de], a
    inc [hl]
    inc c

jr_004_5d1e:
    ld a, [$c759]
    and a
    jr nz, jr_004_5d36

    ld a, [$c559]
    cp b
    jr nz, jr_004_5d36

    inc a
    ld [$c559], a
    ld e, [hl]
    ld d, $ca
    ld a, $59
    ld [de], a
    inc [hl]
    inc c

jr_004_5d36:
    ld a, [$c752]
    and a
    ret nz

    ld a, [$c552]
    cp b
    ret nz

    inc a
    ld [$c552], a
    ld e, [hl]
    ld d, $ca
    ld a, $52
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c751]
    and a
    jr nz, jr_004_5d68

    ld a, [$c551]
    cp b
    jr nz, jr_004_5d68

    inc a
    ld [$c551], a
    ld e, [hl]
    ld d, $ca
    ld a, $51
    ld [de], a
    inc [hl]
    inc c

jr_004_5d68:
    ld a, [$c74a]
    and a
    jr nz, jr_004_5d80

    ld a, [$c54a]
    cp b
    jr nz, jr_004_5d80

    inc a
    ld [$c54a], a
    ld e, [hl]
    ld d, $ca
    ld a, $4a
    ld [de], a
    inc [hl]
    inc c

jr_004_5d80:
    ld a, [$c75a]
    and a
    jr nz, jr_004_5d98

    ld a, [$c55a]
    cp b
    jr nz, jr_004_5d98

    inc a
    ld [$c55a], a
    ld e, [hl]
    ld d, $ca
    ld a, $5a
    ld [de], a
    inc [hl]
    inc c

jr_004_5d98:
    ld a, [$c753]
    and a
    ret nz

    ld a, [$c553]
    cp b
    ret nz

    inc a
    ld [$c553], a
    ld e, [hl]
    ld d, $ca
    ld a, $53
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c752]
    and a
    jr nz, jr_004_5dca

    ld a, [$c552]
    cp b
    jr nz, jr_004_5dca

    inc a
    ld [$c552], a
    ld e, [hl]
    ld d, $ca
    ld a, $52
    ld [de], a
    inc [hl]
    inc c

jr_004_5dca:
    ld a, [$c74b]
    and a
    jr nz, jr_004_5de2

    ld a, [$c54b]
    cp b
    jr nz, jr_004_5de2

    inc a
    ld [$c54b], a
    ld e, [hl]
    ld d, $ca
    ld a, $4b
    ld [de], a
    inc [hl]
    inc c

jr_004_5de2:
    ld a, [$c75b]
    and a
    jr nz, jr_004_5dfa

    ld a, [$c55b]
    cp b
    jr nz, jr_004_5dfa

    inc a
    ld [$c55b], a
    ld e, [hl]
    ld d, $ca
    ld a, $5b
    ld [de], a
    inc [hl]
    inc c

jr_004_5dfa:
    ld a, [$c754]
    and a
    ret nz

    ld a, [$c554]
    cp b
    ret nz

    inc a
    ld [$c554], a
    ld e, [hl]
    ld d, $ca
    ld a, $54
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c753]
    and a
    jr nz, jr_004_5e2c

    ld a, [$c553]
    cp b
    jr nz, jr_004_5e2c

    inc a
    ld [$c553], a
    ld e, [hl]
    ld d, $ca
    ld a, $53
    ld [de], a
    inc [hl]
    inc c

jr_004_5e2c:
    ld a, [$c74c]
    and a
    jr nz, jr_004_5e44

    ld a, [$c54c]
    cp b
    jr nz, jr_004_5e44

    inc a
    ld [$c54c], a
    ld e, [hl]
    ld d, $ca
    ld a, $4c
    ld [de], a
    inc [hl]
    inc c

jr_004_5e44:
    ld a, [$c75c]
    and a
    jr nz, jr_004_5e5c

    ld a, [$c55c]
    cp b
    jr nz, jr_004_5e5c

    inc a
    ld [$c55c], a
    ld e, [hl]
    ld d, $ca
    ld a, $5c
    ld [de], a
    inc [hl]
    inc c

jr_004_5e5c:
    ld a, [$c755]
    and a
    ret nz

    ld a, [$c555]
    cp b
    ret nz

    inc a
    ld [$c555], a
    ld e, [hl]
    ld d, $ca
    ld a, $55
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c754]
    and a
    jr nz, jr_004_5e8e

    ld a, [$c554]
    cp b
    jr nz, jr_004_5e8e

    inc a
    ld [$c554], a
    ld e, [hl]
    ld d, $ca
    ld a, $54
    ld [de], a
    inc [hl]
    inc c

jr_004_5e8e:
    ld a, [$c74d]
    and a
    jr nz, jr_004_5ea6

    ld a, [$c54d]
    cp b
    jr nz, jr_004_5ea6

    inc a
    ld [$c54d], a
    ld e, [hl]
    ld d, $ca
    ld a, $4d
    ld [de], a
    inc [hl]
    inc c

jr_004_5ea6:
    ld a, [$c75d]
    and a
    jr nz, jr_004_5ebe

    ld a, [$c55d]
    cp b
    jr nz, jr_004_5ebe

    inc a
    ld [$c55d], a
    ld e, [hl]
    ld d, $ca
    ld a, $5d
    ld [de], a
    inc [hl]
    inc c

jr_004_5ebe:
    ld a, [$c756]
    and a
    ret nz

    ld a, [$c556]
    cp b
    ret nz

    inc a
    ld [$c556], a
    ld e, [hl]
    ld d, $ca
    ld a, $56
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c755]
    and a
    jr nz, jr_004_5ef0

    ld a, [$c555]
    cp b
    jr nz, jr_004_5ef0

    inc a
    ld [$c555], a
    ld e, [hl]
    ld d, $ca
    ld a, $55
    ld [de], a
    inc [hl]
    inc c

jr_004_5ef0:
    ld a, [$c74e]
    and a
    jr nz, jr_004_5f08

    ld a, [$c54e]
    cp b
    jr nz, jr_004_5f08

    inc a
    ld [$c54e], a
    ld e, [hl]
    ld d, $ca
    ld a, $4e
    ld [de], a
    inc [hl]
    inc c

jr_004_5f08:
    ld a, [$c75e]
    and a
    jr nz, jr_004_5f20

    ld a, [$c55e]
    cp b
    jr nz, jr_004_5f20

    inc a
    ld [$c55e], a
    ld e, [hl]
    ld d, $ca
    ld a, $5e
    ld [de], a
    inc [hl]
    inc c

jr_004_5f20:
    ret


    ld hl, $ffb8
    ld a, [$c750]
    and a
    jr nz, jr_004_5f3c

    ld a, [$c550]
    cp b
    jr nz, jr_004_5f3c

    inc a
    ld [$c550], a
    ld e, [hl]
    ld d, $ca
    ld a, $50
    ld [de], a
    inc [hl]
    inc c

jr_004_5f3c:
    ld a, [$c760]
    and a
    jr nz, jr_004_5f54

    ld a, [$c560]
    cp b
    jr nz, jr_004_5f54

    inc a
    ld [$c560], a
    ld e, [hl]
    ld d, $ca
    ld a, $60
    ld [de], a
    inc [hl]
    inc c

jr_004_5f54:
    ld a, [$c759]
    and a
    ret nz

    ld a, [$c559]
    cp b
    ret nz

    inc a
    ld [$c559], a
    ld e, [hl]
    ld d, $ca
    ld a, $59
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c758]
    and a
    jr nz, jr_004_5f86

    ld a, [$c558]
    cp b
    jr nz, jr_004_5f86

    inc a
    ld [$c558], a
    ld e, [hl]
    ld d, $ca
    ld a, $58
    ld [de], a
    inc [hl]
    inc c

jr_004_5f86:
    ld a, [$c751]
    and a
    jr nz, jr_004_5f9e

    ld a, [$c551]
    cp b
    jr nz, jr_004_5f9e

    inc a
    ld [$c551], a
    ld e, [hl]
    ld d, $ca
    ld a, $51
    ld [de], a
    inc [hl]
    inc c

jr_004_5f9e:
    ld a, [$c761]
    and a
    jr nz, jr_004_5fb6

    ld a, [$c561]
    cp b
    jr nz, jr_004_5fb6

    inc a
    ld [$c561], a
    ld e, [hl]
    ld d, $ca
    ld a, $61
    ld [de], a
    inc [hl]
    inc c

jr_004_5fb6:
    ld a, [$c75a]
    and a
    ret nz

    ld a, [$c55a]
    cp b
    ret nz

    inc a
    ld [$c55a], a
    ld e, [hl]
    ld d, $ca
    ld a, $5a
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c759]
    and a
    jr nz, jr_004_5fe8

    ld a, [$c559]
    cp b
    jr nz, jr_004_5fe8

    inc a
    ld [$c559], a
    ld e, [hl]
    ld d, $ca
    ld a, $59
    ld [de], a
    inc [hl]
    inc c

jr_004_5fe8:
    ld a, [$c752]
    and a
    jr nz, jr_004_6000

    ld a, [$c552]
    cp b
    jr nz, jr_004_6000

    inc a
    ld [$c552], a
    ld e, [hl]
    ld d, $ca
    ld a, $52
    ld [de], a
    inc [hl]
    inc c

jr_004_6000:
    ld a, [$c762]
    and a
    jr nz, jr_004_6018

    ld a, [$c562]
    cp b
    jr nz, jr_004_6018

    inc a
    ld [$c562], a
    ld e, [hl]
    ld d, $ca
    ld a, $62
    ld [de], a
    inc [hl]
    inc c

jr_004_6018:
    ld a, [$c75b]
    and a
    ret nz

    ld a, [$c55b]
    cp b
    ret nz

    inc a
    ld [$c55b], a
    ld e, [hl]
    ld d, $ca
    ld a, $5b
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c75a]
    and a
    jr nz, jr_004_604a

    ld a, [$c55a]
    cp b
    jr nz, jr_004_604a

    inc a
    ld [$c55a], a
    ld e, [hl]
    ld d, $ca
    ld a, $5a
    ld [de], a
    inc [hl]
    inc c

jr_004_604a:
    ld a, [$c753]
    and a
    jr nz, jr_004_6062

    ld a, [$c553]
    cp b
    jr nz, jr_004_6062

    inc a
    ld [$c553], a
    ld e, [hl]
    ld d, $ca
    ld a, $53
    ld [de], a
    inc [hl]
    inc c

jr_004_6062:
    ld a, [$c763]
    and a
    jr nz, jr_004_607a

    ld a, [$c563]
    cp b
    jr nz, jr_004_607a

    inc a
    ld [$c563], a
    ld e, [hl]
    ld d, $ca
    ld a, $63
    ld [de], a
    inc [hl]
    inc c

jr_004_607a:
    ld a, [$c75c]
    and a
    ret nz

    ld a, [$c55c]
    cp b
    ret nz

    inc a
    ld [$c55c], a
    ld e, [hl]
    ld d, $ca
    ld a, $5c
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c75b]
    and a
    jr nz, jr_004_60ac

    ld a, [$c55b]
    cp b
    jr nz, jr_004_60ac

    inc a
    ld [$c55b], a
    ld e, [hl]
    ld d, $ca
    ld a, $5b
    ld [de], a
    inc [hl]
    inc c

jr_004_60ac:
    ld a, [$c754]
    and a
    jr nz, jr_004_60c4

    ld a, [$c554]
    cp b
    jr nz, jr_004_60c4

    inc a
    ld [$c554], a
    ld e, [hl]
    ld d, $ca
    ld a, $54
    ld [de], a
    inc [hl]
    inc c

jr_004_60c4:
    ld a, [$c764]
    and a
    jr nz, jr_004_60dc

    ld a, [$c564]
    cp b
    jr nz, jr_004_60dc

    inc a
    ld [$c564], a
    ld e, [hl]
    ld d, $ca
    ld a, $64
    ld [de], a
    inc [hl]
    inc c

jr_004_60dc:
    ld a, [$c75d]
    and a
    ret nz

    ld a, [$c55d]
    cp b
    ret nz

    inc a
    ld [$c55d], a
    ld e, [hl]
    ld d, $ca
    ld a, $5d
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c75c]
    and a
    jr nz, jr_004_610e

    ld a, [$c55c]
    cp b
    jr nz, jr_004_610e

    inc a
    ld [$c55c], a
    ld e, [hl]
    ld d, $ca
    ld a, $5c
    ld [de], a
    inc [hl]
    inc c

jr_004_610e:
    ld a, [$c755]
    and a
    jr nz, jr_004_6126

    ld a, [$c555]
    cp b
    jr nz, jr_004_6126

    inc a
    ld [$c555], a
    ld e, [hl]
    ld d, $ca
    ld a, $55
    ld [de], a
    inc [hl]
    inc c

jr_004_6126:
    ld a, [$c765]
    and a
    jr nz, jr_004_613e

    ld a, [$c565]
    cp b
    jr nz, jr_004_613e

    inc a
    ld [$c565], a
    ld e, [hl]
    ld d, $ca
    ld a, $65
    ld [de], a
    inc [hl]
    inc c

jr_004_613e:
    ld a, [$c75e]
    and a
    ret nz

    ld a, [$c55e]
    cp b
    ret nz

    inc a
    ld [$c55e], a
    ld e, [hl]
    ld d, $ca
    ld a, $5e
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c75d]
    and a
    jr nz, jr_004_6170

    ld a, [$c55d]
    cp b
    jr nz, jr_004_6170

    inc a
    ld [$c55d], a
    ld e, [hl]
    ld d, $ca
    ld a, $5d
    ld [de], a
    inc [hl]
    inc c

jr_004_6170:
    ld a, [$c756]
    and a
    jr nz, jr_004_6188

    ld a, [$c556]
    cp b
    jr nz, jr_004_6188

    inc a
    ld [$c556], a
    ld e, [hl]
    ld d, $ca
    ld a, $56
    ld [de], a
    inc [hl]
    inc c

jr_004_6188:
    ld a, [$c766]
    and a
    jr nz, jr_004_61a0

    ld a, [$c566]
    cp b
    jr nz, jr_004_61a0

    inc a
    ld [$c566], a
    ld e, [hl]
    ld d, $ca
    ld a, $66
    ld [de], a
    inc [hl]
    inc c

jr_004_61a0:
    ret


    ld hl, $ffb8
    ld a, [$c758]
    and a
    jr nz, jr_004_61bc

    ld a, [$c558]
    cp b
    jr nz, jr_004_61bc

    inc a
    ld [$c558], a
    ld e, [hl]
    ld d, $ca
    ld a, $58
    ld [de], a
    inc [hl]
    inc c

jr_004_61bc:
    ld a, [$c768]
    and a
    jr nz, jr_004_61d4

    ld a, [$c568]
    cp b
    jr nz, jr_004_61d4

    inc a
    ld [$c568], a
    ld e, [hl]
    ld d, $ca
    ld a, $68
    ld [de], a
    inc [hl]
    inc c

jr_004_61d4:
    ld a, [$c761]
    and a
    ret nz

    ld a, [$c561]
    cp b
    ret nz

    inc a
    ld [$c561], a
    ld e, [hl]
    ld d, $ca
    ld a, $61
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c760]
    and a
    jr nz, jr_004_6206

    ld a, [$c560]
    cp b
    jr nz, jr_004_6206

    inc a
    ld [$c560], a
    ld e, [hl]
    ld d, $ca
    ld a, $60
    ld [de], a
    inc [hl]
    inc c

jr_004_6206:
    ld a, [$c759]
    and a
    jr nz, jr_004_621e

    ld a, [$c559]
    cp b
    jr nz, jr_004_621e

    inc a
    ld [$c559], a
    ld e, [hl]
    ld d, $ca
    ld a, $59
    ld [de], a
    inc [hl]
    inc c

jr_004_621e:
    ld a, [$c769]
    and a
    jr nz, jr_004_6236

    ld a, [$c569]
    cp b
    jr nz, jr_004_6236

    inc a
    ld [$c569], a
    ld e, [hl]
    ld d, $ca
    ld a, $69
    ld [de], a
    inc [hl]
    inc c

jr_004_6236:
    ld a, [$c762]
    and a
    ret nz

    ld a, [$c562]
    cp b
    ret nz

    inc a
    ld [$c562], a
    ld e, [hl]
    ld d, $ca
    ld a, $62
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c761]
    and a
    jr nz, jr_004_6268

    ld a, [$c561]
    cp b
    jr nz, jr_004_6268

    inc a
    ld [$c561], a
    ld e, [hl]
    ld d, $ca
    ld a, $61
    ld [de], a
    inc [hl]
    inc c

jr_004_6268:
    ld a, [$c75a]
    and a
    jr nz, jr_004_6280

    ld a, [$c55a]
    cp b
    jr nz, jr_004_6280

    inc a
    ld [$c55a], a
    ld e, [hl]
    ld d, $ca
    ld a, $5a
    ld [de], a
    inc [hl]
    inc c

jr_004_6280:
    ld a, [$c76a]
    and a
    jr nz, jr_004_6298

    ld a, [$c56a]
    cp b
    jr nz, jr_004_6298

    inc a
    ld [$c56a], a
    ld e, [hl]
    ld d, $ca
    ld a, $6a
    ld [de], a
    inc [hl]
    inc c

jr_004_6298:
    ld a, [$c763]
    and a
    ret nz

    ld a, [$c563]
    cp b
    ret nz

    inc a
    ld [$c563], a
    ld e, [hl]
    ld d, $ca
    ld a, $63
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c762]
    and a
    jr nz, jr_004_62ca

    ld a, [$c562]
    cp b
    jr nz, jr_004_62ca

    inc a
    ld [$c562], a
    ld e, [hl]
    ld d, $ca
    ld a, $62
    ld [de], a
    inc [hl]
    inc c

jr_004_62ca:
    ld a, [$c75b]
    and a
    jr nz, jr_004_62e2

    ld a, [$c55b]
    cp b
    jr nz, jr_004_62e2

    inc a
    ld [$c55b], a
    ld e, [hl]
    ld d, $ca
    ld a, $5b
    ld [de], a
    inc [hl]
    inc c

jr_004_62e2:
    ld a, [$c76b]
    and a
    jr nz, jr_004_62fa

    ld a, [$c56b]
    cp b
    jr nz, jr_004_62fa

    inc a
    ld [$c56b], a
    ld e, [hl]
    ld d, $ca
    ld a, $6b
    ld [de], a
    inc [hl]
    inc c

jr_004_62fa:
    ld a, [$c764]
    and a
    ret nz

    ld a, [$c564]
    cp b
    ret nz

    inc a
    ld [$c564], a
    ld e, [hl]
    ld d, $ca
    ld a, $64
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c763]
    and a
    jr nz, jr_004_632c

    ld a, [$c563]
    cp b
    jr nz, jr_004_632c

    inc a
    ld [$c563], a
    ld e, [hl]
    ld d, $ca
    ld a, $63
    ld [de], a
    inc [hl]
    inc c

jr_004_632c:
    ld a, [$c75c]
    and a
    jr nz, jr_004_6344

    ld a, [$c55c]
    cp b
    jr nz, jr_004_6344

    inc a
    ld [$c55c], a
    ld e, [hl]
    ld d, $ca
    ld a, $5c
    ld [de], a
    inc [hl]
    inc c

jr_004_6344:
    ld a, [$c76c]
    and a
    jr nz, jr_004_635c

    ld a, [$c56c]
    cp b
    jr nz, jr_004_635c

    inc a
    ld [$c56c], a
    ld e, [hl]
    ld d, $ca
    ld a, $6c
    ld [de], a
    inc [hl]
    inc c

jr_004_635c:
    ld a, [$c765]
    and a
    ret nz

    ld a, [$c565]
    cp b
    ret nz

    inc a
    ld [$c565], a
    ld e, [hl]
    ld d, $ca
    ld a, $65
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c764]
    and a
    jr nz, jr_004_638e

    ld a, [$c564]
    cp b
    jr nz, jr_004_638e

    inc a
    ld [$c564], a
    ld e, [hl]
    ld d, $ca
    ld a, $64
    ld [de], a
    inc [hl]
    inc c

jr_004_638e:
    ld a, [$c75d]
    and a
    jr nz, jr_004_63a6

    ld a, [$c55d]
    cp b
    jr nz, jr_004_63a6

    inc a
    ld [$c55d], a
    ld e, [hl]
    ld d, $ca
    ld a, $5d
    ld [de], a
    inc [hl]
    inc c

jr_004_63a6:
    ld a, [$c76d]
    and a
    jr nz, jr_004_63be

    ld a, [$c56d]
    cp b
    jr nz, jr_004_63be

    inc a
    ld [$c56d], a
    ld e, [hl]
    ld d, $ca
    ld a, $6d
    ld [de], a
    inc [hl]
    inc c

jr_004_63be:
    ld a, [$c766]
    and a
    ret nz

    ld a, [$c566]
    cp b
    ret nz

    inc a
    ld [$c566], a
    ld e, [hl]
    ld d, $ca
    ld a, $66
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c765]
    and a
    jr nz, jr_004_63f0

    ld a, [$c565]
    cp b
    jr nz, jr_004_63f0

    inc a
    ld [$c565], a
    ld e, [hl]
    ld d, $ca
    ld a, $65
    ld [de], a
    inc [hl]
    inc c

jr_004_63f0:
    ld a, [$c75e]
    and a
    jr nz, jr_004_6408

    ld a, [$c55e]
    cp b
    jr nz, jr_004_6408

    inc a
    ld [$c55e], a
    ld e, [hl]
    ld d, $ca
    ld a, $5e
    ld [de], a
    inc [hl]
    inc c

jr_004_6408:
    ld a, [$c76e]
    and a
    jr nz, jr_004_6420

    ld a, [$c56e]
    cp b
    jr nz, jr_004_6420

    inc a
    ld [$c56e], a
    ld e, [hl]
    ld d, $ca
    ld a, $6e
    ld [de], a
    inc [hl]
    inc c

jr_004_6420:
    ret


    ld hl, $ffb8
    ld a, [$c760]
    and a
    jr nz, jr_004_643c

    ld a, [$c560]
    cp b
    jr nz, jr_004_643c

    inc a
    ld [$c560], a
    ld e, [hl]
    ld d, $ca
    ld a, $60
    ld [de], a
    inc [hl]
    inc c

jr_004_643c:
    ld a, [$c770]
    and a
    jr nz, jr_004_6454

    ld a, [$c570]
    cp b
    jr nz, jr_004_6454

    inc a
    ld [$c570], a
    ld e, [hl]
    ld d, $ca
    ld a, $70
    ld [de], a
    inc [hl]
    inc c

jr_004_6454:
    ld a, [$c769]
    and a
    ret nz

    ld a, [$c569]
    cp b
    ret nz

    inc a
    ld [$c569], a
    ld e, [hl]
    ld d, $ca
    ld a, $69
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c768]
    and a
    jr nz, jr_004_6486

    ld a, [$c568]
    cp b
    jr nz, jr_004_6486

    inc a
    ld [$c568], a
    ld e, [hl]
    ld d, $ca
    ld a, $68
    ld [de], a
    inc [hl]
    inc c

jr_004_6486:
    ld a, [$c761]
    and a
    jr nz, jr_004_649e

    ld a, [$c561]
    cp b
    jr nz, jr_004_649e

    inc a
    ld [$c561], a
    ld e, [hl]
    ld d, $ca
    ld a, $61
    ld [de], a
    inc [hl]
    inc c

jr_004_649e:
    ld a, [$c771]
    and a
    jr nz, jr_004_64b6

    ld a, [$c571]
    cp b
    jr nz, jr_004_64b6

    inc a
    ld [$c571], a
    ld e, [hl]
    ld d, $ca
    ld a, $71
    ld [de], a
    inc [hl]
    inc c

jr_004_64b6:
    ld a, [$c76a]
    and a
    ret nz

    ld a, [$c56a]
    cp b
    ret nz

    inc a
    ld [$c56a], a
    ld e, [hl]
    ld d, $ca
    ld a, $6a
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c769]
    and a
    jr nz, jr_004_64e8

    ld a, [$c569]
    cp b
    jr nz, jr_004_64e8

    inc a
    ld [$c569], a
    ld e, [hl]
    ld d, $ca
    ld a, $69
    ld [de], a
    inc [hl]
    inc c

jr_004_64e8:
    ld a, [$c762]
    and a
    jr nz, jr_004_6500

    ld a, [$c562]
    cp b
    jr nz, jr_004_6500

    inc a
    ld [$c562], a
    ld e, [hl]
    ld d, $ca
    ld a, $62
    ld [de], a
    inc [hl]
    inc c

jr_004_6500:
    ld a, [$c772]
    and a
    jr nz, jr_004_6518

    ld a, [$c572]
    cp b
    jr nz, jr_004_6518

    inc a
    ld [$c572], a
    ld e, [hl]
    ld d, $ca
    ld a, $72
    ld [de], a
    inc [hl]
    inc c

jr_004_6518:
    ld a, [$c76b]
    and a
    ret nz

    ld a, [$c56b]
    cp b
    ret nz

    inc a
    ld [$c56b], a
    ld e, [hl]
    ld d, $ca
    ld a, $6b
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c76a]
    and a
    jr nz, jr_004_654a

    ld a, [$c56a]
    cp b
    jr nz, jr_004_654a

    inc a
    ld [$c56a], a
    ld e, [hl]
    ld d, $ca
    ld a, $6a
    ld [de], a
    inc [hl]
    inc c

jr_004_654a:
    ld a, [$c763]
    and a
    jr nz, jr_004_6562

    ld a, [$c563]
    cp b
    jr nz, jr_004_6562

    inc a
    ld [$c563], a
    ld e, [hl]
    ld d, $ca
    ld a, $63
    ld [de], a
    inc [hl]
    inc c

jr_004_6562:
    ld a, [$c773]
    and a
    jr nz, jr_004_657a

    ld a, [$c573]
    cp b
    jr nz, jr_004_657a

    inc a
    ld [$c573], a
    ld e, [hl]
    ld d, $ca
    ld a, $73
    ld [de], a
    inc [hl]
    inc c

jr_004_657a:
    ld a, [$c76c]
    and a
    ret nz

    ld a, [$c56c]
    cp b
    ret nz

    inc a
    ld [$c56c], a
    ld e, [hl]
    ld d, $ca
    ld a, $6c
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c76b]
    and a
    jr nz, jr_004_65ac

    ld a, [$c56b]
    cp b
    jr nz, jr_004_65ac

    inc a
    ld [$c56b], a
    ld e, [hl]
    ld d, $ca
    ld a, $6b
    ld [de], a
    inc [hl]
    inc c

jr_004_65ac:
    ld a, [$c764]
    and a
    jr nz, jr_004_65c4

    ld a, [$c564]
    cp b
    jr nz, jr_004_65c4

    inc a
    ld [$c564], a
    ld e, [hl]
    ld d, $ca
    ld a, $64
    ld [de], a
    inc [hl]
    inc c

jr_004_65c4:
    ld a, [$c774]
    and a
    jr nz, jr_004_65dc

    ld a, [$c574]
    cp b
    jr nz, jr_004_65dc

    inc a
    ld [$c574], a
    ld e, [hl]
    ld d, $ca
    ld a, $74
    ld [de], a
    inc [hl]
    inc c

jr_004_65dc:
    ld a, [$c76d]
    and a
    ret nz

    ld a, [$c56d]
    cp b
    ret nz

    inc a
    ld [$c56d], a
    ld e, [hl]
    ld d, $ca
    ld a, $6d
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c76c]
    and a
    jr nz, jr_004_660e

    ld a, [$c56c]
    cp b
    jr nz, jr_004_660e

    inc a
    ld [$c56c], a
    ld e, [hl]
    ld d, $ca
    ld a, $6c
    ld [de], a
    inc [hl]
    inc c

jr_004_660e:
    ld a, [$c765]
    and a
    jr nz, jr_004_6626

    ld a, [$c565]
    cp b
    jr nz, jr_004_6626

    inc a
    ld [$c565], a
    ld e, [hl]
    ld d, $ca
    ld a, $65
    ld [de], a
    inc [hl]
    inc c

jr_004_6626:
    ld a, [$c775]
    and a
    jr nz, jr_004_663e

    ld a, [$c575]
    cp b
    jr nz, jr_004_663e

    inc a
    ld [$c575], a
    ld e, [hl]
    ld d, $ca
    ld a, $75
    ld [de], a
    inc [hl]
    inc c

jr_004_663e:
    ld a, [$c76e]
    and a
    ret nz

    ld a, [$c56e]
    cp b
    ret nz

    inc a
    ld [$c56e], a
    ld e, [hl]
    ld d, $ca
    ld a, $6e
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c76d]
    and a
    jr nz, jr_004_6670

    ld a, [$c56d]
    cp b
    jr nz, jr_004_6670

    inc a
    ld [$c56d], a
    ld e, [hl]
    ld d, $ca
    ld a, $6d
    ld [de], a
    inc [hl]
    inc c

jr_004_6670:
    ld a, [$c766]
    and a
    jr nz, jr_004_6688

    ld a, [$c566]
    cp b
    jr nz, jr_004_6688

    inc a
    ld [$c566], a
    ld e, [hl]
    ld d, $ca
    ld a, $66
    ld [de], a
    inc [hl]
    inc c

jr_004_6688:
    ld a, [$c776]
    and a
    jr nz, jr_004_66a0

    ld a, [$c576]
    cp b
    jr nz, jr_004_66a0

    inc a
    ld [$c576], a
    ld e, [hl]
    ld d, $ca
    ld a, $76
    ld [de], a
    inc [hl]
    inc c

jr_004_66a0:
    ret


    ld hl, $ffb8
    ld a, [$c768]
    and a
    jr nz, jr_004_66bc

    ld a, [$c568]
    cp b
    jr nz, jr_004_66bc

    inc a
    ld [$c568], a
    ld e, [hl]
    ld d, $ca
    ld a, $68
    ld [de], a
    inc [hl]
    inc c

jr_004_66bc:
    ld a, [$c778]
    and a
    jr nz, jr_004_66d4

    ld a, [$c578]
    cp b
    jr nz, jr_004_66d4

    inc a
    ld [$c578], a
    ld e, [hl]
    ld d, $ca
    ld a, $78
    ld [de], a
    inc [hl]
    inc c

jr_004_66d4:
    ld a, [$c771]
    and a
    ret nz

    ld a, [$c571]
    cp b
    ret nz

    inc a
    ld [$c571], a
    ld e, [hl]
    ld d, $ca
    ld a, $71
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c770]
    and a
    jr nz, jr_004_6706

    ld a, [$c570]
    cp b
    jr nz, jr_004_6706

    inc a
    ld [$c570], a
    ld e, [hl]
    ld d, $ca
    ld a, $70
    ld [de], a
    inc [hl]
    inc c

jr_004_6706:
    ld a, [$c769]
    and a
    jr nz, jr_004_671e

    ld a, [$c569]
    cp b
    jr nz, jr_004_671e

    inc a
    ld [$c569], a
    ld e, [hl]
    ld d, $ca
    ld a, $69
    ld [de], a
    inc [hl]
    inc c

jr_004_671e:
    ld a, [$c779]
    and a
    jr nz, jr_004_6736

    ld a, [$c579]
    cp b
    jr nz, jr_004_6736

    inc a
    ld [$c579], a
    ld e, [hl]
    ld d, $ca
    ld a, $79
    ld [de], a
    inc [hl]
    inc c

jr_004_6736:
    ld a, [$c772]
    and a
    ret nz

    ld a, [$c572]
    cp b
    ret nz

    inc a
    ld [$c572], a
    ld e, [hl]
    ld d, $ca
    ld a, $72
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c771]
    and a
    jr nz, jr_004_6768

    ld a, [$c571]
    cp b
    jr nz, jr_004_6768

    inc a
    ld [$c571], a
    ld e, [hl]
    ld d, $ca
    ld a, $71
    ld [de], a
    inc [hl]
    inc c

jr_004_6768:
    ld a, [$c76a]
    and a
    jr nz, jr_004_6780

    ld a, [$c56a]
    cp b
    jr nz, jr_004_6780

    inc a
    ld [$c56a], a
    ld e, [hl]
    ld d, $ca
    ld a, $6a
    ld [de], a
    inc [hl]
    inc c

jr_004_6780:
    ld a, [$c77a]
    and a
    jr nz, jr_004_6798

    ld a, [$c57a]
    cp b
    jr nz, jr_004_6798

    inc a
    ld [$c57a], a
    ld e, [hl]
    ld d, $ca
    ld a, $7a
    ld [de], a
    inc [hl]
    inc c

jr_004_6798:
    ld a, [$c773]
    and a
    ret nz

    ld a, [$c573]
    cp b
    ret nz

    inc a
    ld [$c573], a
    ld e, [hl]
    ld d, $ca
    ld a, $73
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c772]
    and a
    jr nz, jr_004_67ca

    ld a, [$c572]
    cp b
    jr nz, jr_004_67ca

    inc a
    ld [$c572], a
    ld e, [hl]
    ld d, $ca
    ld a, $72
    ld [de], a
    inc [hl]
    inc c

jr_004_67ca:
    ld a, [$c76b]
    and a
    jr nz, jr_004_67e2

    ld a, [$c56b]
    cp b
    jr nz, jr_004_67e2

    inc a
    ld [$c56b], a
    ld e, [hl]
    ld d, $ca
    ld a, $6b
    ld [de], a
    inc [hl]
    inc c

jr_004_67e2:
    ld a, [$c77b]
    and a
    jr nz, jr_004_67fa

    ld a, [$c57b]
    cp b
    jr nz, jr_004_67fa

    inc a
    ld [$c57b], a
    ld e, [hl]
    ld d, $ca
    ld a, $7b
    ld [de], a
    inc [hl]
    inc c

jr_004_67fa:
    ld a, [$c774]
    and a
    ret nz

    ld a, [$c574]
    cp b
    ret nz

    inc a
    ld [$c574], a
    ld e, [hl]
    ld d, $ca
    ld a, $74
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c773]
    and a
    jr nz, jr_004_682c

    ld a, [$c573]
    cp b
    jr nz, jr_004_682c

    inc a
    ld [$c573], a
    ld e, [hl]
    ld d, $ca
    ld a, $73
    ld [de], a
    inc [hl]
    inc c

jr_004_682c:
    ld a, [$c76c]
    and a
    jr nz, jr_004_6844

    ld a, [$c56c]
    cp b
    jr nz, jr_004_6844

    inc a
    ld [$c56c], a
    ld e, [hl]
    ld d, $ca
    ld a, $6c
    ld [de], a
    inc [hl]
    inc c

jr_004_6844:
    ld a, [$c77c]
    and a
    jr nz, jr_004_685c

    ld a, [$c57c]
    cp b
    jr nz, jr_004_685c

    inc a
    ld [$c57c], a
    ld e, [hl]
    ld d, $ca
    ld a, $7c
    ld [de], a
    inc [hl]
    inc c

jr_004_685c:
    ld a, [$c775]
    and a
    ret nz

    ld a, [$c575]
    cp b
    ret nz

    inc a
    ld [$c575], a
    ld e, [hl]
    ld d, $ca
    ld a, $75
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c774]
    and a
    jr nz, jr_004_688e

    ld a, [$c574]
    cp b
    jr nz, jr_004_688e

    inc a
    ld [$c574], a
    ld e, [hl]
    ld d, $ca
    ld a, $74
    ld [de], a
    inc [hl]
    inc c

jr_004_688e:
    ld a, [$c76d]
    and a
    jr nz, jr_004_68a6

    ld a, [$c56d]
    cp b
    jr nz, jr_004_68a6

    inc a
    ld [$c56d], a
    ld e, [hl]
    ld d, $ca
    ld a, $6d
    ld [de], a
    inc [hl]
    inc c

jr_004_68a6:
    ld a, [$c77d]
    and a
    jr nz, jr_004_68be

    ld a, [$c57d]
    cp b
    jr nz, jr_004_68be

    inc a
    ld [$c57d], a
    ld e, [hl]
    ld d, $ca
    ld a, $7d
    ld [de], a
    inc [hl]
    inc c

jr_004_68be:
    ld a, [$c776]
    and a
    ret nz

    ld a, [$c576]
    cp b
    ret nz

    inc a
    ld [$c576], a
    ld e, [hl]
    ld d, $ca
    ld a, $76
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c775]
    and a
    jr nz, jr_004_68f0

    ld a, [$c575]
    cp b
    jr nz, jr_004_68f0

    inc a
    ld [$c575], a
    ld e, [hl]
    ld d, $ca
    ld a, $75
    ld [de], a
    inc [hl]
    inc c

jr_004_68f0:
    ld a, [$c76e]
    and a
    jr nz, jr_004_6908

    ld a, [$c56e]
    cp b
    jr nz, jr_004_6908

    inc a
    ld [$c56e], a
    ld e, [hl]
    ld d, $ca
    ld a, $6e
    ld [de], a
    inc [hl]
    inc c

jr_004_6908:
    ld a, [$c77e]
    and a
    jr nz, jr_004_6920

    ld a, [$c57e]
    cp b
    jr nz, jr_004_6920

    inc a
    ld [$c57e], a
    ld e, [hl]
    ld d, $ca
    ld a, $7e
    ld [de], a
    inc [hl]
    inc c

jr_004_6920:
    ret


    ld hl, $ffb8
    ld a, [$c770]
    and a
    jr nz, jr_004_693c

    ld a, [$c570]
    cp b
    jr nz, jr_004_693c

    inc a
    ld [$c570], a
    ld e, [hl]
    ld d, $ca
    ld a, $70
    ld [de], a
    inc [hl]
    inc c

jr_004_693c:
    ld a, [$c780]
    and a
    jr nz, jr_004_6954

    ld a, [$c580]
    cp b
    jr nz, jr_004_6954

    inc a
    ld [$c580], a
    ld e, [hl]
    ld d, $ca
    ld a, $80
    ld [de], a
    inc [hl]
    inc c

jr_004_6954:
    ld a, [$c779]
    and a
    ret nz

    ld a, [$c579]
    cp b
    ret nz

    inc a
    ld [$c579], a
    ld e, [hl]
    ld d, $ca
    ld a, $79
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c778]
    and a
    jr nz, jr_004_6986

    ld a, [$c578]
    cp b
    jr nz, jr_004_6986

    inc a
    ld [$c578], a
    ld e, [hl]
    ld d, $ca
    ld a, $78
    ld [de], a
    inc [hl]
    inc c

jr_004_6986:
    ld a, [$c771]
    and a
    jr nz, jr_004_699e

    ld a, [$c571]
    cp b
    jr nz, jr_004_699e

    inc a
    ld [$c571], a
    ld e, [hl]
    ld d, $ca
    ld a, $71
    ld [de], a
    inc [hl]
    inc c

jr_004_699e:
    ld a, [$c781]
    and a
    jr nz, jr_004_69b6

    ld a, [$c581]
    cp b
    jr nz, jr_004_69b6

    inc a
    ld [$c581], a
    ld e, [hl]
    ld d, $ca
    ld a, $81
    ld [de], a
    inc [hl]
    inc c

jr_004_69b6:
    ld a, [$c77a]
    and a
    ret nz

    ld a, [$c57a]
    cp b
    ret nz

    inc a
    ld [$c57a], a
    ld e, [hl]
    ld d, $ca
    ld a, $7a
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c779]
    and a
    jr nz, jr_004_69e8

    ld a, [$c579]
    cp b
    jr nz, jr_004_69e8

    inc a
    ld [$c579], a
    ld e, [hl]
    ld d, $ca
    ld a, $79
    ld [de], a
    inc [hl]
    inc c

jr_004_69e8:
    ld a, [$c772]
    and a
    jr nz, jr_004_6a00

    ld a, [$c572]
    cp b
    jr nz, jr_004_6a00

    inc a
    ld [$c572], a
    ld e, [hl]
    ld d, $ca
    ld a, $72
    ld [de], a
    inc [hl]
    inc c

jr_004_6a00:
    ld a, [$c782]
    and a
    jr nz, jr_004_6a18

    ld a, [$c582]
    cp b
    jr nz, jr_004_6a18

    inc a
    ld [$c582], a
    ld e, [hl]
    ld d, $ca
    ld a, $82
    ld [de], a
    inc [hl]
    inc c

jr_004_6a18:
    ld a, [$c77b]
    and a
    ret nz

    ld a, [$c57b]
    cp b
    ret nz

    inc a
    ld [$c57b], a
    ld e, [hl]
    ld d, $ca
    ld a, $7b
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c77a]
    and a
    jr nz, jr_004_6a4a

    ld a, [$c57a]
    cp b
    jr nz, jr_004_6a4a

    inc a
    ld [$c57a], a
    ld e, [hl]
    ld d, $ca
    ld a, $7a
    ld [de], a
    inc [hl]
    inc c

jr_004_6a4a:
    ld a, [$c773]
    and a
    jr nz, jr_004_6a62

    ld a, [$c573]
    cp b
    jr nz, jr_004_6a62

    inc a
    ld [$c573], a
    ld e, [hl]
    ld d, $ca
    ld a, $73
    ld [de], a
    inc [hl]
    inc c

jr_004_6a62:
    ld a, [$c783]
    and a
    jr nz, jr_004_6a7a

    ld a, [$c583]
    cp b
    jr nz, jr_004_6a7a

    inc a
    ld [$c583], a
    ld e, [hl]
    ld d, $ca
    ld a, $83
    ld [de], a
    inc [hl]
    inc c

jr_004_6a7a:
    ld a, [$c77c]
    and a
    ret nz

    ld a, [$c57c]
    cp b
    ret nz

    inc a
    ld [$c57c], a
    ld e, [hl]
    ld d, $ca
    ld a, $7c
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c77b]
    and a
    jr nz, jr_004_6aac

    ld a, [$c57b]
    cp b
    jr nz, jr_004_6aac

    inc a
    ld [$c57b], a
    ld e, [hl]
    ld d, $ca
    ld a, $7b
    ld [de], a
    inc [hl]
    inc c

jr_004_6aac:
    ld a, [$c774]
    and a
    jr nz, jr_004_6ac4

    ld a, [$c574]
    cp b
    jr nz, jr_004_6ac4

    inc a
    ld [$c574], a
    ld e, [hl]
    ld d, $ca
    ld a, $74
    ld [de], a
    inc [hl]
    inc c

jr_004_6ac4:
    ld a, [$c784]
    and a
    jr nz, jr_004_6adc

    ld a, [$c584]
    cp b
    jr nz, jr_004_6adc

    inc a
    ld [$c584], a
    ld e, [hl]
    ld d, $ca
    ld a, $84
    ld [de], a
    inc [hl]
    inc c

jr_004_6adc:
    ld a, [$c77d]
    and a
    ret nz

    ld a, [$c57d]
    cp b
    ret nz

    inc a
    ld [$c57d], a
    ld e, [hl]
    ld d, $ca
    ld a, $7d
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c77c]
    and a
    jr nz, jr_004_6b0e

    ld a, [$c57c]
    cp b
    jr nz, jr_004_6b0e

    inc a
    ld [$c57c], a
    ld e, [hl]
    ld d, $ca
    ld a, $7c
    ld [de], a
    inc [hl]
    inc c

jr_004_6b0e:
    ld a, [$c775]
    and a
    jr nz, jr_004_6b26

    ld a, [$c575]
    cp b
    jr nz, jr_004_6b26

    inc a
    ld [$c575], a
    ld e, [hl]
    ld d, $ca
    ld a, $75
    ld [de], a
    inc [hl]
    inc c

jr_004_6b26:
    ld a, [$c785]
    and a
    jr nz, jr_004_6b3e

    ld a, [$c585]
    cp b
    jr nz, jr_004_6b3e

    inc a
    ld [$c585], a
    ld e, [hl]
    ld d, $ca
    ld a, $85
    ld [de], a
    inc [hl]
    inc c

jr_004_6b3e:
    ld a, [$c77e]
    and a
    ret nz

    ld a, [$c57e]
    cp b
    ret nz

    inc a
    ld [$c57e], a
    ld e, [hl]
    ld d, $ca
    ld a, $7e
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c77d]
    and a
    jr nz, jr_004_6b70

    ld a, [$c57d]
    cp b
    jr nz, jr_004_6b70

    inc a
    ld [$c57d], a
    ld e, [hl]
    ld d, $ca
    ld a, $7d
    ld [de], a
    inc [hl]
    inc c

jr_004_6b70:
    ld a, [$c776]
    and a
    jr nz, jr_004_6b88

    ld a, [$c576]
    cp b
    jr nz, jr_004_6b88

    inc a
    ld [$c576], a
    ld e, [hl]
    ld d, $ca
    ld a, $76
    ld [de], a
    inc [hl]
    inc c

jr_004_6b88:
    ld a, [$c786]
    and a
    jr nz, jr_004_6ba0

    ld a, [$c586]
    cp b
    jr nz, jr_004_6ba0

    inc a
    ld [$c586], a
    ld e, [hl]
    ld d, $ca
    ld a, $86
    ld [de], a
    inc [hl]
    inc c

jr_004_6ba0:
    ret


    ld hl, $ffb8
    ld a, [$c778]
    and a
    jr nz, jr_004_6bbc

    ld a, [$c578]
    cp b
    jr nz, jr_004_6bbc

    inc a
    ld [$c578], a
    ld e, [hl]
    ld d, $ca
    ld a, $78
    ld [de], a
    inc [hl]
    inc c

jr_004_6bbc:
    ld a, [$c781]
    and a
    ret nz

    ld a, [$c581]
    cp b
    ret nz

    inc a
    ld [$c581], a
    ld e, [hl]
    ld d, $ca
    ld a, $81
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c780]
    and a
    jr nz, jr_004_6bee

    ld a, [$c580]
    cp b
    jr nz, jr_004_6bee

    inc a
    ld [$c580], a
    ld e, [hl]
    ld d, $ca
    ld a, $80
    ld [de], a
    inc [hl]
    inc c

jr_004_6bee:
    ld a, [$c779]
    and a
    jr nz, jr_004_6c06

    ld a, [$c579]
    cp b
    jr nz, jr_004_6c06

    inc a
    ld [$c579], a
    ld e, [hl]
    ld d, $ca
    ld a, $79
    ld [de], a
    inc [hl]
    inc c

jr_004_6c06:
    ld a, [$c782]
    and a
    ret nz

    ld a, [$c582]
    cp b
    ret nz

    inc a
    ld [$c582], a
    ld e, [hl]
    ld d, $ca
    ld a, $82
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c781]
    and a
    jr nz, jr_004_6c38

    ld a, [$c581]
    cp b
    jr nz, jr_004_6c38

    inc a
    ld [$c581], a
    ld e, [hl]
    ld d, $ca
    ld a, $81
    ld [de], a
    inc [hl]
    inc c

jr_004_6c38:
    ld a, [$c77a]
    and a
    jr nz, jr_004_6c50

    ld a, [$c57a]
    cp b
    jr nz, jr_004_6c50

    inc a
    ld [$c57a], a
    ld e, [hl]
    ld d, $ca
    ld a, $7a
    ld [de], a
    inc [hl]
    inc c

jr_004_6c50:
    ld a, [$c783]
    and a
    ret nz

    ld a, [$c583]
    cp b
    ret nz

    inc a
    ld [$c583], a
    ld e, [hl]
    ld d, $ca
    ld a, $83
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c782]
    and a
    jr nz, jr_004_6c82

    ld a, [$c582]
    cp b
    jr nz, jr_004_6c82

    inc a
    ld [$c582], a
    ld e, [hl]
    ld d, $ca
    ld a, $82
    ld [de], a
    inc [hl]
    inc c

jr_004_6c82:
    ld a, [$c77b]
    and a
    jr nz, jr_004_6c9a

    ld a, [$c57b]
    cp b
    jr nz, jr_004_6c9a

    inc a
    ld [$c57b], a
    ld e, [hl]
    ld d, $ca
    ld a, $7b
    ld [de], a
    inc [hl]
    inc c

jr_004_6c9a:
    ld a, [$c784]
    and a
    ret nz

    ld a, [$c584]
    cp b
    ret nz

    inc a
    ld [$c584], a
    ld e, [hl]
    ld d, $ca
    ld a, $84
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c783]
    and a
    jr nz, jr_004_6ccc

    ld a, [$c583]
    cp b
    jr nz, jr_004_6ccc

    inc a
    ld [$c583], a
    ld e, [hl]
    ld d, $ca
    ld a, $83
    ld [de], a
    inc [hl]
    inc c

jr_004_6ccc:
    ld a, [$c77c]
    and a
    jr nz, jr_004_6ce4

    ld a, [$c57c]
    cp b
    jr nz, jr_004_6ce4

    inc a
    ld [$c57c], a
    ld e, [hl]
    ld d, $ca
    ld a, $7c
    ld [de], a
    inc [hl]
    inc c

jr_004_6ce4:
    ld a, [$c785]
    and a
    ret nz

    ld a, [$c585]
    cp b
    ret nz

    inc a
    ld [$c585], a
    ld e, [hl]
    ld d, $ca
    ld a, $85
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c784]
    and a
    jr nz, jr_004_6d16

    ld a, [$c584]
    cp b
    jr nz, jr_004_6d16

    inc a
    ld [$c584], a
    ld e, [hl]
    ld d, $ca
    ld a, $84
    ld [de], a
    inc [hl]
    inc c

jr_004_6d16:
    ld a, [$c77d]
    and a
    jr nz, jr_004_6d2e

    ld a, [$c57d]
    cp b
    jr nz, jr_004_6d2e

    inc a
    ld [$c57d], a
    ld e, [hl]
    ld d, $ca
    ld a, $7d
    ld [de], a
    inc [hl]
    inc c

jr_004_6d2e:
    ld a, [$c786]
    and a
    ret nz

    ld a, [$c586]
    cp b
    ret nz

    inc a
    ld [$c586], a
    ld e, [hl]
    ld d, $ca
    ld a, $86
    ld [de], a
    inc [hl]
    inc c
    ret


    ld hl, $ffb8
    ld a, [$c785]
    and a
    jr nz, jr_004_6d60

    ld a, [$c585]
    cp b
    jr nz, jr_004_6d60

    inc a
    ld [$c585], a
    ld e, [hl]
    ld d, $ca
    ld a, $85
    ld [de], a
    inc [hl]
    inc c

jr_004_6d60:
    ld a, [$c77e]
    and a
    jr nz, jr_004_6d78

    ld a, [$c57e]
    cp b
    jr nz, jr_004_6d78

    inc a
    ld [$c57e], a
    ld e, [hl]
    ld d, $ca
    ld a, $7e
    ld [de], a
    inc [hl]
    inc c

jr_004_6d78:
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
