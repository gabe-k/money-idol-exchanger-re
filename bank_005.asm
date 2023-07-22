; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    ld hl, $400c
    ld de, $8000
    ld bc, $0200
    jp memcpy


    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    jr jr_005_4025

    ld hl, $2300
    jr nz, jr_005_405b

    nop
    ld b, c
    nop
    nop
    nop
    nop
    nop
    ldh [rNR41], a
    jr jr_005_402d

jr_005_4025:
    add h
    nop
    add h
    inc b
    add d
    nop
    add d
    nop

jr_005_402d:
    ld b, c
    nop
    ld b, c
    jr nz, jr_005_4073

    nop

jr_005_4033:
    inc hl
    db $10
    jr nz, jr_005_403b

    jr jr_005_4039

jr_005_4039:
    rlca
    nop

jr_005_403b:
    nop
    nop
    add d
    nop
    add d
    inc b
    add d
    nop
    call nz, $0408
    jr nz, jr_005_4060

    nop

jr_005_4049:
    ldh [rP1], a
    nop
    nop
    rst $38
    rlca
    ld hl, sp+$18
    rst $20
    jr nz, jr_005_4033

jr_005_4054:
    ld b, b
    cp b
    ld b, b
    cp e
    add b
    ld a, e
    add b

jr_005_405b:
    ld a, e
    nop
    rst $38
    ldh [$1f], a

jr_005_4060:
    jr jr_005_4049

    inc b
    ei
    ld [bc], a
    dec e
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $80
    ld a, b
    add b
    ld a, a
    add b

jr_005_4071:
    ld a, a
    ld b, b

jr_005_4073:
    cp a
    ld b, b
    cp e
    jr nz, jr_005_4054

    jr @-$17

    rlca
    ld hl, sp+$01
    ld a, $01
    sbc $01
    sbc $02
    db $dd
    ld [bc], a
    db $dd
    inc b
    dec sp
    jr jr_005_4071

    ldh [$1f], a
    nop
    nop
    rlca
    rlca
    jr jr_005_40b1

    jr nz, @+$41

    ld b, b
    ld [hl], e
    ld b, b
    ld [hl], d
    add b
    ld a, [c]

jr_005_409a:
    add b
    ld a, [c]
    nop
    nop
    ldh [$e0], a
    jr jr_005_409a

    inc b
    db $fc
    ld [bc], a
    ld e, $02
    ld l, [hl]
    ld bc, $016f
    ld l, a
    add b
    ei
    add b
    ei
    add b

jr_005_40b1:
    ei
    ld b, b
    ld a, e
    ld b, b
    ld [hl], c
    jr nz, @+$41

    jr jr_005_40d9

    rlca
    rlca
    ld bc, $016f
    ld l, a
    ld bc, $026f
    ld l, [hl]
    ld [bc], a
    ld c, $04
    db $fc
    jr @-$06

    ldh [$e0], a
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$18
    ldh a, [rNR41]
    xor $4e
    ret z

    ld c, b
    adc b

jr_005_40d9:
    adc b
    adc b
    adc b
    rst $38
    nop
    rst $38
    ldh [$1f], a
    jr jr_005_40f2

    inc b
    rst $30
    ld a, [c]
    sub e
    sub d
    sub c
    sub c
    sub c
    sub c
    adc [hl]
    adc [hl]
    add d
    add d
    add d
    add d

jr_005_40f2:
    jp nz, $ee42

    ld c, [hl]
    ldh a, [rNR41]
    ld hl, sp+$18
    rst $38
    rlca
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub e
    sub d
    rst $30
    ld a, [c]
    rrca
    inc b
    rra
    jr @+$01

    ldh [rP1], a
    nop
    rlca
    rlca
    jr jr_005_4131

    jr nz, jr_005_4153

    ld e, e
    ld a, a
    ld e, d
    ld a, a
    sbc d
    rst $38

jr_005_411a:
    sbc d
    rst $38
    nop
    nop
    ldh [$e0], a
    jr jr_005_411a

    inc b
    db $fc
    cp d
    cp $aa
    cp $a9
    rst $38
    xor c
    rst $38
    sbc d
    rst $38
    sbc d
    rst $38
    sbc d

jr_005_4131:
    rst $38
    ld e, d
    ld a, a
    ld e, e
    ld a, a
    jr nz, jr_005_4177

    jr @+$21

    rlca
    rlca
    xor c
    rst $38
    xor c
    rst $38
    xor c
    rst $38

jr_005_4142:
    xor d
    cp $ba
    cp $04
    db $fc
    jr jr_005_4142

    ldh [$e0], a
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rra
    rst $38

jr_005_4153:
    ccf
    ld [c], a
    ld h, d
    xor $6e
    xor $ee
    xor $ee
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    inc hl
    ld [hl+], a
    xor e
    xor d
    xor e
    xor e
    xor e
    xor e
    ld [c], a
    ld [c], a
    ld a, [$fafa]
    ld a, [$7afa]
    ld [c], a
    ld h, d
    rst $38

jr_005_4177:
    ccf
    rst $38
    rra
    rst $38
    rlca
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor d
    inc hl
    ld [hl+], a
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [$3b], a
    dec sp
    ld d, d
    ld l, h
    xor d
    call c, $fa74
    daa
    inc a
    ld a, e
    ld a, d
    ei
    xor d
    sbc a
    pop af
    cp b
    cp b
    sub h
    ld l, h
    xor d
    db $76
    ld e, h
    cp [hl]
    add sp, $78
    cp h
    cp h
    cp [hl]
    xor d
    ld a, [c]
    ld e, $7b
    ld c, h
    ccf
    daa
    jr jr_005_41c2

    ld de, $1c19
    db $10
    dec d
    dec de
    ld c, $0e
    nop
    nop
    cp h
    ld h, h
    ld hl, sp-$38
    jr nc, jr_005_41d2

jr_005_41c2:
    jr jr_005_41fc

    ld [hl], h
    inc d
    ld d, d
    or d
    ldh [$e0], a
    nop
    nop
    nop
    nop
    dec sp
    dec sp
    ld d, d
    ld l, h

jr_005_41d2:
    xor d
    call c, $fa74
    daa
    inc a
    ld e, e
    ld a, d
    ld e, e
    ld l, d
    nop
    nop
    cp b
    cp b
    sub h
    ld l, h
    xor d
    db $76
    ld e, h
    cp [hl]
    add sp, $58
    or h
    cp h
    or h
    xor h
    rra
    jr nc, jr_005_421a

    dec a
    ld e, a
    ld [hl], a
    ld a, b
    ld d, b
    ld sp, $1c39
    db $10
    dec a
    inc hl
    ld a, $3e

jr_005_41fc:
    ldh a, [rNR23]
    xor b
    ld a, b
    db $f4
    call c, $143c
    jr jr_005_423e

    ld [hl], h
    inc d
    ld a, d
    adc d
    ld hl, sp-$08
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    rlca

jr_005_421a:
    dec b
    rlca
    nop
    nop
    ldh a, [$f0]
    rrca
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    sub b
    sbc [hl]
    add e
    or b
    adc a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rIE], a
    nop
    ldh [$3f], a
    nop
    rst $38
    nop
    rst $18
    ccf
    nop
    nop

jr_005_423e:
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$08
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    add b
    ld [hl], b
    ldh a, [$0c]
    cp l
    jp Jump_000_0704


    ld [$090e], sp
    inc c
    rlca
    ld [$130d], sp
    dec de
    ld h, $37
    ld c, [hl]
    dec hl
    ld e, [hl]
    dec c
    add e
    ld e, $0e
    ldh a, [$30]
    ld [hl], b
    ret nz

    ld hl, sp-$80
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    db $e3
    rst $20
    nop
    nop
    nop
    nop
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
    sbc b
    ld hl, sp+$44
    db $fc
    inc hl
    ld a, a

jr_005_4292:
    jr jr_005_42b3

    ld b, $0f
    ld bc, $0003
    ccf
    jr nz, @-$3e

    db $76
    ld a, c
    dec c
    ld c, $03
    inc bc
    add b
    add b
    ld b, b
    ret nz

    ld hl, $03e1
    ld a, [$0718]
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_005_4292

    sub b

jr_005_42b3:
    rst $38
    ld c, b
    ld a, a
    rst $20
    cp h
    rst $30
    inc e
    ei
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    jr jr_005_42ff

    call nz, Call_000_32cc
    ldh a, [$0e]
    nop
    nop
    nop
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
    inc e
    rra
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
    ld a, h
    ld a, a
    add b
    rst $38

jr_005_42ea:
    rlca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld hl, sp-$01
    nop
    rst $38
    rst $38
    rst $38
    ld [hl-], a
    pop bc
    nop
    nop
    nop

jr_005_42ff:
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

jr_005_4308:
    jr nz, jr_005_42ea

    and b
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    ld [bc], a
    inc bc
    inc b
    rlca
    dec b
    rlca
    ld a, [bc]
    ld c, $5b
    cp [hl]
    xor e
    ld l, [hl]
    dec hl
    xor $53
    sbc $93
    sbc [hl]
    sub e
    sbc [hl]
    inc de
    ld e, $13
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    inc c
    dec bc
    jr nc, jr_005_4308

    ld b, b
    scf
    ret nz

    ld l, b
    add a
    ld b, a
    cp b
    ccf
    ret nz

    sbc b
    rlca
    ccf
    nop
    rst $38
    nop
    ldh a, [rIF]
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

jr_005_436c:
    ld sp, hl
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $08
    jr nc, jr_005_436c

    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    dec sp
    rst $38
    ld c, c
    ccf
    push de
    rrca
    rst $38

Call_005_4383:
    ld bc, $01ff
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    cp $e1
    rra
    cp $01
    rst $38
    nop
    rst $38
    ld [c], a
    ld bc, $807c
    ld a, a
    add b
    nop
    nop
    inc bc
    inc bc
    inc c
    adc a
    or b
    cp a
    ld b, b
    rst $38
    ld hl, $4fff
    ld a, $93
    inc c
    ldh [rIE], a
    ld bc, $07ff
    cp $1f
    ld hl, sp+$7f
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    dec sp
    db $fc
    ret c

    ldh [$fc], a
    nop
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld bc, $0100
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0103
    and b
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    inc bc
    inc bc
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    inc b
    dec b
    ld b, $04
    rlca

jr_005_43fa:
    ld [$0a0f], sp
    ld c, $8c
    adc h
    push de
    ld e, l
    ld a, [hl]
    ld a, $58
    ld e, b
    db $ec
    ld c, b
    ld c, e
    db $fc
    add hl, hl
    cp $13
    ld e, $12
    rra
    sub d
    sbc a
    adc e
    adc a
    adc d
    adc a
    adc h
    adc a
    adc b
    adc a
    sub b
    sbc a
    ei
    inc c
    ld a, [c]
    inc a
    ld b, [hl]
    ld sp, hl
    adc l
    ld a, [c]
    dec bc
    db $fc

jr_005_4426:
    rla
    ld hl, sp+$27
    ld hl, sp+$47
    ld hl, sp+$47
    jr c, jr_005_445e

    ret nz

    sbc a
    nop
    rra
    nop
    ccf
    nop
    cp e
    inc b
    or a
    ld [$106f], sp
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
    rst $20
    jr jr_005_43fa

    ld h, b
    ld hl, sp+$07

jr_005_445e:
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    ld b, $f3
    inc c
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
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
    push hl
    ld [bc], a
    ld hl, sp+$01
    db $fc
    nop
    cp $00
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
    ld a, a
    add b
    ccf
    ld b, b
    rra
    jr nz, jr_005_4426

    db $10
    rst $08
    db $10
    rst $00
    ld [$00f8], sp
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    inc bc
    ld bc, $0301
    ld [bc], a
    inc bc
    ld b, $03
    ld b, $03
    ld [bc], a
    rlca
    dec b
    rlca
    dec c
    rlca
    ld b, b
    ret nz

    ld b, b
    ret nz

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
    nop
    nop
    ld [$0b0f], sp
    rrca
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    or $31
    ld sp, $3030
    jr nc, jr_005_4514

    jr nc, @+$32

    jr nc, jr_005_4518

    jr z, jr_005_4522

    jr z, jr_005_4524

    and b
    cp a
    ld b, c
    ld a, a
    ld b, d
    ld a, a
    ld [hl+], a
    ccf
    inc d
    rra
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    ld [de], a
    rra
    add a
    ld hl, sp+$2f
    ldh a, [rVBK]
    ldh a, [$8e]
    ldh a, [$9e]
    pop hl
    ld e, $e1
    dec e
    ld [c], a
    dec e
    ld [c], a
    ld e, [hl]
    ld hl, $4225
    ld c, e
    add h
    inc d
    adc b

jr_005_4514:
    xor b
    ld de, $21d6

jr_005_4518:
    db $dd
    ld [hl+], a
    cp e
    ld b, h
    rst $38
    nop
    db $fc
    inc bc
    ld a, e
    inc b

jr_005_4522:
    ld [hl], a
    adc b

jr_005_4524:
    rst $28
    db $10
    rra
    jr nz, jr_005_4557

    ld b, c
    ld l, $41

jr_005_452c:
    ld a, a
    add b
    ei
    inc b
    rst $30
    ld [$18e7], sp
    xor a
    ld d, b
    ld l, [hl]
    sub c
    sbc $21
    sbc l
    ld h, d
    rst $38
    nop

jr_005_453e:
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    ld l, a
    sub b
    rst $28
    db $10
    rst $28
    db $10
    ld e, a
    jr nz, jr_005_452c

    jr nz, jr_005_453e

    db $10
    rst $28
    db $10
    rst $30
    ld [$04fb], sp
    ei

jr_005_4557:
    inc b
    db $fd
    ld [bc], a
    db $dd
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    db $db
    inc b
    ld [$e704], a
    ld [$04e3], sp
    di
    inc b
    pop af
    ld [bc], a
    ld sp, hl
    ld [bc], a
    cp b
    ld bc, $019c
    inc c
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    dec c
    rlca
    dec b
    rrca
    ld a, [de]
    ld c, $1a
    ld c, $0a
    ld e, $34
    inc e
    inc d
    inc a
    ld l, b
    jr c, jr_005_459d

jr_005_459d:
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    jr z, jr_005_45e6

    inc h
    inc a
    sub h
    sbc h
    ld d, e
    rst $18
    ld d, e
    sbc $89
    adc a
    add hl, de
    rra
    ccf
    daa
    inc d
    rra
    ld h, h
    ld a, a
    db $e4
    cp a
    add sp, $3f

jr_005_45c4:
    ret z

    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ret nc

    rst $38
    add hl, de
    and $1c
    rst $20
    dec d
    rst $28
    rlca
    rst $38
    ld b, $ff
    ld c, $ff
    ld c, $ff
    inc c
    rst $38
    ld a, e
    add h
    ld sp, hl
    adc [hl]
    ld c, b
    cp a
    ld de, $11ff
    rst $38

jr_005_45e6:
    ld [de], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld b, l
    add d
    ld h, c
    add d
    ld a, b
    add [hl]
    ld a, c
    add [hl]
    dec [hl]
    adc $0c
    rst $38
    inc c
    rst $38
    dec c
    rst $38
    cp c
    ld b, d
    xor b
    ld b, d
    jr nz, jr_005_45c4

    ld sp, $79c6
    add $d9
    and $c8
    rst $30
    call nz, $5e7f
    jr nz, jr_005_4665

    jr nz, @+$44

    jr nc, jr_005_4614

    ld [hl-], a

jr_005_4614:
    ret nz

    inc sp
    push de
    dec hl
    rst $10
    add hl, hl
    dec sp
    db $ed
    adc $21
    ld [bc], a
    ld de, $1000
    nop
    ld [$08c0], sp
    ldh [rDIV], a
    ei
    add h
    db $fd
    ld b, d
    ld h, h
    ld [de], a
    and b
    ld [de], a
    nop
    adc c
    ld b, b
    add l
    jr nz, jr_005_467a

    jr nz, jr_005_467a

    db $10
    ld [hl+], a
    jp c, $0621

    nop
    ld [hl+], a
    nop
    jr nc, jr_005_4642

jr_005_4642:
    ld a, b
    nop
    ld e, [hl]
    and b
    ld e, a
    and b
    rra
    ld h, b
    adc a
    jr nc, jr_005_468d

    add b
    ld b, b
    add b
    jr nz, @+$42

    ld hl, $3340
    ld b, c
    ld [de], a
    inc hl
    ld d, $23
    sbc h
    daa
    jr z, jr_005_46d6

    ret nc

    ld [hl], b
    ld d, b
    ldh a, [$a0]
    ldh [rNR41], a

jr_005_4665:
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    ldh [$a0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_467a:
    inc bc
    inc bc
    nop
    nop
    jr jr_005_4698

    dec h
    dec a
    ld b, e
    ld a, a
    ld d, e
    ld l, a
    ld d, e
    ld l, a
    add d
    cp $02
    cp $61

jr_005_468d:
    ld b, b
    jp $8680


    ld bc, $0384
    adc b
    rlca
    sub c
    rrca

jr_005_4698:
    ld [c], a
    sbc a
    ld b, c
    ld a, a
    ret nc

    ld a, a
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    and b
    rst $38
    jr nz, @+$01

    inc c
    rst $38
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    call nz, $c77f
    ld a, a
    dec e
    rst $38
    dec d
    rst $38
    sbc l
    rst $38
    sbc l
    rst $30
    sub l
    rst $38

jr_005_46d6:
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    call nz, $c47f

jr_005_46df:
    ld a, a
    call nz, Call_005_647f
    cp a
    ld [c], a
    cp a
    db $e3
    cp a
    ld [hl], e
    sbc $f1
    sbc a
    add hl, sp
    rst $28
    jr c, jr_005_46df

    inc a
    rst $20
    inc e
    rst $30
    ld e, $f3
    sbc a
    di
    adc a
    ld a, [$79cf]
    jp $e27e


    cp a
    and c
    rst $38
    pop af
    rst $38
    pop af
    rst $18
    ld hl, sp-$41
    db $fc

jr_005_4709:
    rst $38
    ld a, a
    rst $38

jr_005_470c:
    rst $38
    ld de, $907f
    dec de
    db $ec
    ld [$04ff], sp
    rst $38
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    ld c, a
    or b
    and a
    ret c

    sub a
    ld hl, sp-$35
    ld a, h
    ld c, l
    cp $46
    rst $38
    ld b, l
    rst $38
    inc h
    rst $38
    adc c
    rra
    db $d3
    ld e, $d6
    inc e
    jp hl


    ld e, $e8
    rrca
    add sp, $0f
    jr z, jr_005_4709

    add h
    rst $28
    or b
    db $10
    jr jr_005_4748

    inc c
    inc b
    ld b, $02
    add e
    ld bc, $8041

jr_005_4748:
    ld b, b
    add b
    jr nz, jr_005_470c

    nop
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
    ret nz

    ld b, b
    ld h, b
    jr nz, jr_005_4761

    rlca
    ld [$080f], sp

jr_005_4761:
    rrca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld a, a
    jr nz, @+$41

    db $10
    rra
    ld [$080f], sp
    rrca
    inc b
    rlca
    ld b, $07
    dec bc
    rrca
    jr nz, @+$01

    jr nz, @+$01

    jr z, @+$01

    jr z, @+$01

    inc e
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    jr @+$01

    inc a
    rst $20
    ld l, h
    rst $00
    ld a, h
    rst $18
    db $fc
    and a
    and $a3
    ld a, [c]
    and e
    di
    sub c
    rst $20
    ccf
    db $e3
    ccf
    ld a, [c]
    ccf
    rst $30
    ld a, $df
    ld e, $5f
    sbc [hl]
    ld [hl], a
    sbc [hl]
    ld l, e
    adc [hl]
    rst $18
    rst $38
    jp $e337


    inc hl
    and e
    ld h, e
    ld h, e
    ld [hl], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, [hl]
    cp c
    rst $08
    rst $38
    rst $08
    rst $20
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    cp $7b
    adc l
    add e
    add a
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $fffc
    rra
    cp [hl]
    ld e, $1f
    ld e, $1f
    ld e, $bf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    jp nz, Jump_005_7fff

    rst $38
    or $7b
    or [hl]
    ld a, a
    or [hl]

jr_005_4805:
    ld a, a
    ld a, [hl]
    ccf
    db $76
    ccf
    ld [hl], a
    dec a
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl-], a
    rst $38
    ld a, [hl+]
    rst $38
    ld l, $ef
    ld d, $f3
    ld d, $f3
    inc de
    pop af
    call nz, $e477
    ccf
    ld a, [c]
    rra
    ld sp, hl
    rrca
    db $fc
    rlca
    cp $03
    ld a, l
    add c
    ld a, b
    add l
    db $10
    ldh [$08], a
    ldh a, [rDIV]
    ld hl, sp+$02
    db $fc
    pop bc
    cp $b0
    ld a, a
    ld l, c
    sbc a
    sub $ee
    ld h, b
    jr nz, jr_005_486f

    db $10
    jr nc, @+$12

    ld h, b
    jr nz, jr_005_4805

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld hl, $2120
    ld sp, $3121
    ld de, $1018
    inc e
    inc d
    ld a, [de]
    ld d, $19
    ldh a, [$60]
    sbc b
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$68
    ldh a, [$f0]
    ld h, b
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop

jr_005_486f:
    nop
    nop
    nop

jr_005_4872:
    nop
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
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_005_48c1

    jr jr_005_48a3

    dec b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0103
    rlca
    pop af
    sub c
    pop af
    sub c
    reti


    ldh a, [$b9]
    add sp, -$08
    add sp, -$08
    ret c

    add sp, $38
    ld hl, sp+$18
    ld l, d
    adc a
    rst $38
    rst $38
    push af
    rst $38
    push af

jr_005_48a3:
    cp $f5
    cp $fd

jr_005_48a7:
    cp $fd
    cp $bd
    cp $7f
    ld h, h
    add hl, sp
    jr nc, jr_005_48f0

    jr nc, jr_005_4872

    add hl, de
    adc a
    rra
    sub l
    ld a, [bc]
    add b
    nop
    ret nz

    nop
    ret nz

    ret nz

    jp nz, $c7c0

jr_005_48c1:
    ret nz

    rst $00
    add c
    add e
    ld bc, $0000
    nop
    nop
    rlca
    rrca
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$f0], a
    rst $38
    or e
    rst $08
    add d
    rst $38
    add [hl]
    db $fd
    adc $fa
    ld a, h
    ld d, h
    jr z, jr_005_48e9

jr_005_48e9:
    nop
    nop
    nop
    ld a, e
    dec a
    ld a, e
    dec a

jr_005_48f0:
    ld a, e
    ld l, l
    dec de
    ld c, l
    rra
    add hl, de
    ccf
    add hl, de
    scf
    add hl, sp
    ld a, l
    ld sp, $f91b
    dec a
    pop af
    db $dd
    pop af
    sbc a
    pop af
    cp a
    pop hl
    and c
    rst $38
    cp [hl]
    db $e3
    ld a, $e3
    ld a, d
    add h
    ld a, d
    add h
    ld a, l
    add d
    ld a, l
    add d
    dec a
    jp nz, $c13e

    cp [hl]
    ld b, c
    sbc a
    ld h, b
    inc l
    di
    dec de
    db $fc
    ld d, $77
    ld hl, $8061
    jr nz, jr_005_48a7

    jr nz, jr_005_4969

    sub b
    nop
    ret nc

    nop
    nop
    nop
    ldh [$e0], a
    inc e
    inc a
    jp $f8c7


    jr c, @+$41

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
    nop
    add b
    add b
    ld [hl], b
    ldh a, [$0c]
    inc a
    jp nz, $f1ce

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    rrca
    ld [$0c0b], sp
    dec bc
    inc c
    dec b
    ld b, $02
    inc bc
    ld bc, $0001

jr_005_4969:
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$07
    ccf
    ret nz

    jp Jump_000_3cfc


    ccf
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    db $fc
    cp $01
    ld sp, hl
    rlca
    rlca
    cp $ff
    ld hl, sp+$03
    ld e, $07
    ld a, h
    ld c, [hl]
    cp c
    sbc h
    ld [hl], e
    ld a, b
    rst $20
    ldh a, [$8f]
    ldh [$1f], a
    add b
    ld a, a
    ld hl, sp-$78
    ret z

    adc b
    ret z

    adc b
    ld c, b
    ret z

    ld c, c
    ret z

    ld c, c
    ret


    ld d, b
    ret nc

jr_005_49aa:
    ret nz

    add b
    sbc l
    cp $8f
    cp $8a
    rst $38
    adc e
    rst $38
    add l
    rst $38
    call nz, Call_005_62ff
    ccf
    ld [hl-], a
    rra
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ld [hl], b
    add b
    cp h
    ret nz

    xor $f0
    dec sp
    db $fc
    ld e, $ff
    rlca
    rrca

jr_005_49ce:
    ld a, [bc]
    rlca
    nop
    rlca
    inc b
    inc bc
    inc b
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $0180
    jr nz, jr_005_49ce

    nop
    ldh a, [rNR10]
    ldh [rNR10], a
    ldh [rP1], a
    ldh [rNR41], a
    ret nz

    jr nz, jr_005_49aa

    nop
    ret nz

    ld bc, $0300
    inc bc
    inc bc
    ld bc, $0001
    ld [bc], a
    ld bc, $0307
    dec d
    rrca
    ld e, d
    ccf
    db $dd
    pop af
    dec hl
    di
    dec sp
    db $e3
    push de
    rst $20
    push af
    rst $00
    and l
    rst $00
    ld l, d
    adc a
    jp z, Jump_000_3c0f

    rst $20
    ld a, b
    rst $08
    ld a, b
    rst $18
    ld hl, sp-$11
    inc a
    rst $20
    inc l
    rst $30
    ld e, $f3
    ld d, $fb
    sbc a
    ld h, b
    ld e, a
    and b
    ld c, a
    or b
    cpl
    ret nc

    cpl
    ret nc

    scf
    ret z

    rla
    add sp, $1f
    ldh [$50], a
    xor b
    ld l, b
    sub h
    xor h
    ld d, d
    or [hl]
    ld c, c
    db $db
    inc h
    db $ed
    ld [de], a
    xor $11
    rst $30
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR23], a
    ld a, b
    add [hl]
    inc sp
    inc a
    dec c

jr_005_4a4f:
    ld c, $02
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    jr nc, jr_005_4a4f

    ld [$04f8], sp
    ld a, b
    add [hl]
    cp l
    jp Jump_005_635d


    ld e, l
    ld h, e
    ld a, [hl+]
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
    nop
    ld bc, $0201
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    jr nc, jr_005_4ac4

    ld b, b
    ld a, a
    add e
    db $fc
    rlca
    ld hl, sp+$1f
    rra
    pop hl
    cp $07
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld c, $fc
    ld bc, $01ff
    rst $38
    inc bc
    cp $06
    db $fc
    inc a
    ld hl, sp-$18
    ret z

    sbc c
    db $10
    jr nc, jr_005_4acc

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
    add b
    nop
    add hl, de
    rra
    inc a
    rlca
    inc c
    rlca
    rlca
    rlca

jr_005_4ac4:
    ld bc, $0000
    nop
    nop
    nop
    ld b, $02

jr_005_4acc:
    rlca
    rst $38
    adc l
    rst $38
    ld d, b
    rst $38
    jr nz, @+$01

    add b
    rst $38
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, a
    and b
    pop bc
    add sp, -$10
    ld a, d
    db $fc
    ld b, a
    rst $38
    ld c, [hl]
    pop af
    ld [hl], a
    ld hl, sp+$7f
    rst $38
    rst $38
    rst $38
    nop
    ret nz

    add d
    add c
    dec de
    rlca
    ld e, h
    cp a
    or $f9
    rst $38
    ld bc, $fffe
    cp $fc
    db $fd
    ld a, [hl]
    rst $38
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, c
    ld a, a
    ld [hl], d
    ld a, a
    sub $1b
    or $fb
    ld l, $f3
    ld c, [hl]
    di
    ld e, d
    db $e3
    sbc h
    rst $20

jr_005_4b18:
    dec [hl]
    rst $00
    ld [hl], a
    add [hl]
    rrca
    ld sp, hl
    dec bc
    db $fd
    dec b
    cp $1f
    rst $38
    ld a, a
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    rrca
    ldh a, [rIF]
    ldh a, [$9e]
    rst $38
    rst $38
    pop hl
    ldh a, [$60]
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ei
    inc b
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp [hl]
    pop bc
    rst $18

jr_005_4b45:
    ld h, b
    ld l, a
    jr nc, @+$39

    jr jr_005_4b66

    inc c
    ld a, $41
    sbc a
    jr nz, jr_005_4b18

    jr jr_005_4bb6

    adc h
    ld sp, $98c2
    ld h, c
    call z, $e630
    jr jr_005_4b5d

jr_005_4b5d:
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_005_4b45

    db $10

jr_005_4b66:
    ldh a, [$08]
    ld a, b
    add h
    inc a
    ld b, d
    inc l
    inc [hl]
    inc d
    inc e
    jr jr_005_4b8a

    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    rlca
    ld [$0807], sp
    rrca
    ld de, $130e
    ld e, $23
    inc e
    daa

jr_005_4b8a:
    inc e
    daa
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $18ff
    ldh a, [$30]
    ldh [rNR41], a
    ldh [$60], a
    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    nop
    ld h, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    add b
    ret nz

    add b
    add b
    add b

jr_005_4bb6:
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    nop
    jr nz, jr_005_4bc0

jr_005_4bc0:
    jr nz, jr_005_4bc2

jr_005_4bc2:
    jr nz, jr_005_4bc4

jr_005_4bc4:
    jr nc, jr_005_4bc6

jr_005_4bc6:
    jr nc, jr_005_4bc8

jr_005_4bc8:
    jr nc, jr_005_4bca

jr_005_4bca:
    ld h, b
    nop
    ld b, $06
    ld c, $04
    ld c, $08
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ret nz

    ld a, a
    cp [hl]
    pop bc
    ld b, e
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $28
    rst $18
    rst $38
    add b
    ld a, a
    add b
    rst $38
    add b
    cp h
    ret nz

    db $fc
    ld hl, sp-$04
    ld hl, sp-$07
    pop af
    cp $ff
    rst $38
    nop
    add c
    nop
    inc bc
    ld bc, $0307
    call z, $f17f
    ld a, [hl]
    jp $67fc


    ld hl, sp-$03
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $04
    db $ec
    ld [$08cc], sp
    ret c

    db $10
    sbc b
    db $10
    jr nc, jr_005_4bc8

    cp a
    rst $38
    rst $08
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_4c34:
    nop

jr_005_4c35:
    nop
    nop
    nop
    ldh [$c0], a
    jr c, jr_005_4c34

    dec c
    ld b, $07
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    di
    inc c
    ld sp, hl
    ld b, $fc
    inc bc
    cp $01
    ld a, a
    add b
    rst $38

jr_005_4c57:
    add b
    cp a
    ret nz

    rst $18
    ld h, b
    ld e, $21
    adc a
    db $10
    rst $00
    ld [$8463], sp
    ld hl, $b1c2
    ld b, d
    sub b
    ld h, c
    ret c

    ld hl, $0000
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_005_4c35

    jr nz, jr_005_4c57

    db $10
    ldh a, [$08]
    ldh a, [$08]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    dec c
    ld c, $0f
    stop
    nop
    nop
    nop
    nop
    nop
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_005_4cdd

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    rra
    jr nz, jr_005_4cf3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_005_4d03

    ld a, [hl+]
    dec hl
    inc l

jr_005_4cdd:
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    ld l, $2f
    jr nc, jr_005_4d19

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_005_4d29

    nop
    nop
    nop

jr_005_4cf3:
    nop
    nop
    nop
    nop
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_005_4d03:
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_005_4d19:
    nop
    nop
    nop
    nop
    nop
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b

jr_005_4d29:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    nop
    nop
    nop
    nop
    nop
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    nop
    nop
    nop
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    nop
    nop
    nop
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    nop
    nop
    nop
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]

jr_005_4d75:
    sbc a
    and b
    and c
    and d
    and e
    nop
    and h
    and l
    and [hl]
    and a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    dec d
    dec de
    ld l, $31
    ld e, a
    ld h, b
    cp a
    adc $00
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
    ld b, b
    ret nz

    and b
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
    jr nc, jr_005_4ddc

    ld a, a
    ld c, a
    ld b, c
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
    ldh a, [$f0]
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    rlca
    inc b
    dec bc
    dec c
    dec c
    dec bc
    rla
    ld a, [de]
    rst $30
    sbc c
    pop af
    jr nz, jr_005_4d75

    ld h, b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop

jr_005_4ddc:
    nop
    nop
    nop
    nop
    ldh a, [$30]
    add sp, -$70
    ldh a, [rOBP0]
    ld [hl], h
    inc l
    ld b, $1a
    rrca
    add hl, de
    cpl
    inc d
    dec b
    ld h, $00
    nop
    nop
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
    ld b, b
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    dec bc
    inc c
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $c001
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ccf
    rrca
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld a, [de]
    ld d, $ee
    db $f4
    ld [hl], h
    inc l
    call c, $f868
    ld c, b
    xor b
    ret c

    ld hl, sp-$70
    ret nc

    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, e
    ld [hl+], a
    inc bc
    ld b, c
    add e
    ld b, c
    add c
    ld b, b
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    pop bc
    ld b, [hl]
    rst $20
    jr z, @+$5e

    or e
    ei
    sub h
    cp a
    ret z

    rst $30
    ld c, h
    ld e, a
    ld h, h
    ld a, e
    ld h, $c4
    ld [bc], a
    nop
    cp $e2
    ld bc, $00f1
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0781
    add [hl]
    call $de4b
    ld d, [hl]
    ld a, [$1f6c]
    rla
    ld a, e
    ld l, h
    ret c

    or b
    ldh a, [$60]
    and b
    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld b, b
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    and b
    ldh [rSVBK], a
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $3fc0
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
    ld [hl], c
    add c
    rlca
    ld sp, hl
    ld bc, $02ff
    rst $38
    inc bc
    cp $03
    cp $03
    cp $03
    cp $9c
    ld h, b
    and a
    ld a, b
    ldh [rSCX], a
    ldh [rLCDC], a
    ld b, b
    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
    add b
    inc c
    nop
    ldh a, [rP1]
    add b
    nop
    ld h, b
    nop
    jr nz, jr_005_4f2a

jr_005_4f2a:
    stop
    ld de, $1200
    jr nz, jr_005_4f71

    nop
    ld b, b
    nop
    jr nz, jr_005_4f55

    jr nc, jr_005_4f38

jr_005_4f38:
    ld a, h
    nop
    add b
    nop
    inc bc
    nop
    rrca
    nop
    cpl
    inc sp
    inc a
    inc de

jr_005_4f44:
    inc bc
    db $fc
    nop
    inc bc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_005_4f4f:
    nop
    rst $38
    db $fc
    di
    rrca
    add b

jr_005_4f55:
    ld a, a
    rlca
    ld hl, sp-$79
    ld a, b
    add a
    ld a, b
    jp $c13c


    ld a, $b8
    ret nc

    jr nc, jr_005_4f44

    nop
    rst $38
    sbc a
    ld h, b
    pop hl
    ld e, $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop

jr_005_4f71:
    nop
    nop
    nop
    nop
    add b
    add b
    ld a, h
    ld hl, sp+$03
    ld e, $e0
    add a
    ld a, b
    ret


    ld [hl], $70
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    db $10
    ldh a, [$90]
    jr nc, jr_005_4f4f

    jr @+$03

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0000
    nop
    nop

jr_005_4fa0:
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    dec b
    cp $06
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    dec b
    rst $38
    add b
    add b

jr_005_4fc2:
    add c
    add b
    add e
    ld bc, $0386
    inc c
    rlca
    inc b
    rrca
    jr jr_005_4fdd

    jr nc, @+$21

    sub h
    ld b, b
    db $f4
    add b
    ld a, b
    add b
    ld [hl], b
    add c
    jr nc, jr_005_4fa0

    daa
    ret c

    cpl

jr_005_4fdd:
    ret nc

    ld h, l
    jp c, Jump_000_001f

    ld a, h
    inc bc
    ret nz

    inc a
    nop
    ret nz

    nop
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    rst $38
    nop
    inc bc
    db $fc
    rrca
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld [bc], a
    inc c
    nop
    jr jr_005_4fc2

    ld a, $e1
    ld e, $e1
    ld e, $e3
    inc e
    rst $30
    ld [$08f7], sp
    ccf
    nop
    inc e
    jr nz, @+$01

    nop
    db $fd
    ld [bc], a
    cp $01
    rst $18
    nop
    rst $28
    nop
    rst $20
    nop
    ldh a, [rP1]

jr_005_501e:
    ld [hl], b
    nop
    and $09
    pop hl
    ld b, $60
    add c
    or b
    ld b, b
    ret nc

    jr nz, @-$1e

    jr jr_005_501e

    inc b
    ld de, $6002
    add h
    add b
    ld h, e
    nop
    jr @+$08

    adc [hl]
    inc bc
    ld b, a
    jr jr_005_505e

    ld l, $11
    adc a
    stop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    and b
    ret nz

    ret nc

    jr nz, @+$2a

    db $10
    sbc h
    nop
    nop
    nop

jr_005_5053:
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$100f], sp

jr_005_505e:
    rra
    jr nz, @-$7e

    rst $38
    pop bc
    rst $38
    and a
    ld a, [hl]
    call c, $f038
    jr nz, @-$5e

    ld h, b
    ldh [rLCDC], a
    ld b, b
    ret nz

    ld a, l
    rst $38
    cp a
    rst $00
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
    ld h, b
    ccf
    pop hl
    ccf
    jp nz, Jump_005_74ff

    ccf
    inc e
    rrca
    ld b, $03
    inc bc
    ld bc, $0001
    xor a
    call c, $be51
    ld h, b
    cp a
    ld h, b
    cp a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add c
    ld a, a
    add d
    rst $38
    ldh a, [rSC]
    ei
    inc b
    ld h, a
    sbc b
    ld e, $e1
    ld a, l
    jp nz, $fc87

    rrca
    rst $38
    dec e
    rst $38
    db $10
    jr z, jr_005_5053

    ld d, b
    ld e, [hl]
    and c
    db $dd
    ld [hl+], a
    ld a, [$b645]
    ret


    sub l
    ld [$f21d], a
    inc b
    ld h, b
    nop
    call nc, $9400
    inc bc
    or h
    swap h
    db $db
    ld h, h
    db $db
    ld h, h
    rst $18
    db $e4
    stop
    nop
    nop
    nop
    nop
    add b
    nop
    ld sp, hl
    nop
    rst $38
    nop
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    nop
    ld bc, $0100
    ret nz

    nop
    db $fc
    nop
    ld a, [hl]
    add b
    ccf
    ret nz

    adc a
    ld [hl], b
    add a
    ld a, b
    rst $00
    ld [$04f3], sp
    ld a, c
    add d
    dec a
    ld b, d
    inc a
    ld b, c
    ld e, $20
    adc a
    db $10
    rst $08
    db $10
    adc b
    ld c, [hl]
    add l
    ld b, a
    rst $00
    daa
    jp $e533


    inc e
    ld b, h
    or h
    dec b
    call nz, Call_005_4383
    nop
    nop
    ld [hl], b
    ld [hl], b
    ret z

    adc b
    ret z

    ld c, b
    ld hl, sp-$38
    ldh a, [rSVBK]
    and b
    ldh [$80], a
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    dec de
    inc e
    daa
    jr c, jr_005_5131

jr_005_5131:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    add sp, $18
    db $f4
    inc c
    ld hl, sp+$04
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$100f], sp
    ld e, $21
    ld a, $41
    ld a, l
    add e
    ld a, [$f407]
    rrca
    jp hl


    rra
    or c
    ld a, a
    ld hl, $41ff
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    add c
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add d
    rst $38
    add h
    rst $38
    add h
    rst $38
    adc b
    rst $38
    adc c
    rst $38
    sub c
    rst $38
    sub e
    cp $92
    rst $38
    dec hl
    rst $30
    ld d, d
    rst $28
    xor a
    rst $18
    call c, $bebf
    ld a, a
    rst $20
    rst $28
    rst $08
    rst $00
    rst $08
    adc a
    dec e
    or $3c
    rst $38
    add hl, sp
    rst $28
    ld sp, hl
    rst $38
    or d
    ld a, a
    di
    ld a, $df
    inc a
    rst $10
    inc a
    rst $10
    db $ec
    rst $00
    db $fc
    ld c, h
    rst $38
    call $d57f
    ld a, a
    sbc l
    rst $30
    sbc l
    rst $30
    db $dd
    rst $30
    or l
    jp z, $f788

    call nz, $c4ff
    ld a, a
    call nz, $a4ff
    rst $38
    ld h, h
    cp a
    db $e4
    ccf
    add e
    ld a, h
    pop bc
    ld a, $20
    rst $38
    jr nz, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    ld a, [hl+]
    rst $38
    rst $20
    ld [$08f7], sp
    ei
    inc b
    ei
    inc b
    ld a, e
    add h
    ld a, e
    add h

jr_005_51fc:
    dec a
    jp nz, $ca35

    add b
    ld b, b
    add b
    ld b, b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    and b
    and b
    ld d, b
    and b
    ld d, b
    and b
    ret nc

    and b
    ret nc

    ret nz

    sub b
    ret nc

    sub b
    ret nc

    sub b
    ldh a, [$b0]
    ldh [$e0], a
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
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld c, a
    ld [hl], b
    sbc a
    ldh [$dc], a
    and e
    jr c, jr_005_51fc

    or b
    ld c, b
    and b
    ld d, b
    add b
    ld [hl], b
    add b
    ld [hl], b
    ret nz

    jr c, jr_005_5243

jr_005_5243:
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
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc c
    ld c, $11
    jr @+$29

    jr nc, jr_005_52bf

    jr c, @+$49

    ld [hl], c
    adc a
    ld [c], a
    rra
    add h
    ld a, a
    ld [$30ff], sp
    rst $38
    ld b, e
    rst $38
    adc a
    db $fc
    add c
    rst $38
    ld bc, $03ff
    cp $03
    cp $02
    cp $06
    db $fc
    db $ec
    ld hl, sp-$08
    db $10
    ld b, $01
    rlca
    ld bc, $0305
    ld b, $01
    rrca
    nop
    rrca
    nop

jr_005_529c:
    rra
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    cp a
    ldh [rPCM34], a
    ld hl, sp-$11
    jr @-$03

    inc c
    rst $30
    inc c
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_005_52bf:
    nop
    ld [hl], a
    db $fd
    rst $28
    ld e, l
    ld a, l
    ld b, e
    ld a, a
    inc hl
    ccf
    inc de
    sbc a
    dec bc
    rst $18
    dec bc
    rst $38
    inc de
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    cp c
    ld a, a
    rst $00
    ld a, [hl-]
    ld a, d
    add [hl]
    db $fd
    jr jr_005_529c

    db $10
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
    nop
    nop
    rst $38
    scf
    ccf
    ld b, $03
    nop
    dec b
    nop
    inc bc
    ld bc, $0002
    ld b, $02
    rlca
    rlca
    db $f4
    ld a, a
    cp h
    rst $38
    ld a, h
    rst $38
    or h
    cp a
    ld [hl], h
    ccf
    ld h, h
    ld a, a
    ld a, h
    rst $28
    db $fd
    rst $28
    ld a, [hl+]
    rst $38
    ld a, [hl+]

jr_005_5313:
    rst $38
    ld a, [hl+]
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    dec d
    ld [$ea15], a
    dec b
    ld a, [$fa0d]
    dec c
    ld a, [$fa0d]
    dec c
    ld a, [$fa1d]
    and b
    ld d, b
    and b
    ld d, b
    and b

jr_005_5335:
    ld d, b
    and b
    ld d, b
    and b
    ld d, b
    ld h, b
    sub b
    ret nz

    and b
    ldh [$a0], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a

jr_005_5347:
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ret nz

    jr nc, jr_005_5313

    jr nc, jr_005_5335

    jr jr_005_5347

    ld [$0cf0], sp
    ld a, h
    add e
    cp [hl]
    pop bc
    ld e, a
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $04
    ld b, $04
    inc bc
    inc bc
    inc bc
    cp $f6
    inc c
    jr nz, jr_005_5372

jr_005_5372:
    ret nc

    db $e3

jr_005_5374:
    sub e
    inc h
    inc e
    inc hl
    jr @+$29

    sub l
    db $e3
    add $73
    ld a, [$6371]
    sbc a

jr_005_5382:
    add h
    ld a, a
    ld [$30ff], sp
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $1fff
    rst $38
    jr jr_005_5382

    jr nc, jr_005_5374

    ld h, b
    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
    add b
    add b
    nop
    ret nz

    nop
    jr jr_005_53ae

    rrca
    ld b, $03
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_53ae:
    rra
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    ld a, [hl]
    ld b, c
    ld a, l
    inc hl
    cp [hl]
    ld [hl+], a
    db $fd
    ld b, $f7
    rrca
    ret c

    add hl, sp
    and c
    ld h, [hl]
    ld b, e
    call c, $bc83
    rlca
    ld a, b
    rlca
    ld hl, sp-$01
    nop
    sbc a
    ldh [$7f], a
    rst $38
    ret nz

    ld a, [hl+]
    add b
    ld d, l
    inc hl
    sub h
    ld c, c
    or [hl]
    ld [bc], a
    ld c, c
    xor l
    ld [hl], e
    ld a, [hl]
    ld sp, hl
    add a
    db $fc
    jp $813e


    ld a, a
    nop
    rst $38
    ld b, $f9
    inc b
    ld hl, sp-$42
    call z, $f8fc
    ld [hl], b
    and b
    add b
    nop
    add b
    nop
    add b
    add b
    ld b, b
    ld b, b
    ld h, b
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
    rlca
    nop
    ld c, $01
    rrca
    rlca
    rrca
    rlca
    dec bc
    rrca
    inc e
    dec bc
    ld e, $09
    add hl, sp
    rra
    ld a, a
    ld e, $1e
    ld c, $fe
    rst $08
    ld a, l
    sbc $5f
    call c, $9ed7
    or l
    sbc l
    ld a, l
    jr c, jr_005_549b

    ld a, b
    xor [hl]
    ld a, b
    adc c
    rst $38
    sub c
    rst $38

jr_005_5434:
    ld d, d
    rst $38
    ld [c], a
    ld a, a
    ld [c], a
    ccf
    and d
    cp a
    or d
    sbc a
    cp a
    sbc a
    dec e
    ld a, [$fb1d]
    dec e
    rst $38
    ld a, [hl+]
    db $eb
    inc h
    rst $20
    ld b, [hl]
    push hl
    rst $00
    and l
    ld [c], a
    sub d
    ldh [$a0], a
    jr nz, jr_005_5434

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    nop

jr_005_545d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $37

jr_005_5471:
    jr c, jr_005_547f

    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $0601
    rlca
    jr jr_005_549b

jr_005_547f:
    ld h, e
    or $0c
    rst $08
    ccf
    db $f4
    ld hl, sp+$68
    ld [hl], b
    ld [hl], b
    and b
    cp $21
    rra
    rst $38
    ld b, $ff
    ld l, d
    pop af
    xor c
    ld [hl], b
    dec [hl]
    jr jr_005_54fb

    jr c, jr_005_545d

    ld a, b
    add h

jr_005_549b:
    ld hl, sp+$06
    db $fc
    ld b, $fc
    add hl, sp
    ldh [$60], a
    ret nz

    ret nz

    add b
    add b
    nop
    add b
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_005_5471

    nop
    ret nz

    ld b, b
    ld h, b
    ld b, b
    ld h, b
    jr nz, jr_005_54ea

    jr nz, jr_005_54ee

    db $10
    dec de
    db $10
    jr nc, jr_005_54cf

    ccf
    nop
    ld a, a
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

jr_005_54cf:
    nop
    jp c, $fc36

    dec d
    db $f4
    dec e
    db $f4
    dec e
    ld hl, sp+$1b
    add sp, $1b
    ld [$fe19], a
    add hl, bc
    nop
    rst $38
    ld h, b
    add b
    nop
    add c

jr_005_54e6:
    nop
    sbc [hl]

jr_005_54e8:
    inc e
    and b

jr_005_54ea:
    nop
    cp h
    nop
    and d

jr_005_54ee:
    nop
    sbc c
    inc bc
    sbc h

jr_005_54f2:
    nop
    and e
    nop
    ld c, c
    nop
    ld d, l
    ld [$0894], sp

jr_005_54fb:
    sub h
    add hl, bc
    sub h
    dec hl

jr_005_54ff:
    sub h
    nop
    db $fc
    nop
    ld [c], a

jr_005_5504:
    nop
    ret


jr_005_5506:
    ld [$01d5], sp
    sub h
    inc hl
    sub h
    ld h, e
    sub h
    ld h, e
    sub h
    jr nz, jr_005_54f2

    ld [hl], b
    and b
    jr nc, jr_005_54e6

    jr c, jr_005_54e8

    jr c, jr_005_54ea

    jr jr_005_5504

jr_005_551c:
    jr jr_005_5506

jr_005_551e:
    inc e
    add sp, $07
    ld bc, $0003
    ld hl, sp+$70
    adc $7c
    ld [hl], e
    rst $08
    cp e
    add $b6
    call z, $f88c
    add [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    ld bc, $070b
    cp l
    ld a, [hl]
    ld a, $28
    ld a, $28
    ld a, $28
    ld a, [hl]
    jr z, jr_005_54ff

    ld l, b
    call z, $1df0
    ldh [$fb], a
    ld bc, $bfe0
    ret nz

    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ret nz

    ld a, a
    add b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    ldh [$90], a
    jr nc, @-$36

    jr nc, @-$36

    jr @-$1a

    jr @-$1a

    inc l
    jp nc, $ca34

    ld [hl], $c9
    ld c, $11
    ld bc, $0008
    ld [$0600], sp
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_005_55c7

    jr nz, jr_005_55e9

    db $10
    jr nz, jr_005_551c

    jr nc, jr_005_551e

    jr nc, @-$6e

    nop
    ld bc, $0201
    inc bc
    inc e
    inc e
    ld h, e
    ld [hl], b
    rrca
    ld h, b
    rra
    nop
    ld a, a
    nop
    ld a, a
    ld [hl], b
    adc a
    ret nz

    ccf
    nop
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    jr @+$01

    jr nz, @+$01

    ret nz

    rst $38
    jr @+$01

    ld h, b
    rst $38
    add b
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
    ld b, $fc
    ld b, $fc
    ld b, $fc
    inc b

jr_005_55c7:
    ld hl, sp+$0c
    ld hl, sp+$18
    ldh a, [$28]
    ldh [rNR41], a
    ldh [rP1], a
    rra
    nop
    nop
    nop
    ld bc, $0200
    inc b
    nop
    ld bc, $0704
    ld [$0807], sp
    rrca
    ld hl, sp+$0f
    call nz, Call_000_0407
    ld a, a
    ld [bc], a
    rst $38

jr_005_55e9:
    ld [bc], a
    cp $03
    cp $03
    db $fd
    inc bc
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

jr_005_55fd:
    nop
    rst $38
    nop
    cp $09
    cp $09
    rst $28
    jr jr_005_55fd

    inc e
    db $f4
    inc e
    rst $38
    inc d
    rst $18
    inc [hl]
    db $eb
    ld [hl], $11
    and h
    inc sp
    call nz, Call_000_04f3
    di
    inc b
    or e
    ld c, h
    ld [hl], e
    adc h
    ld b, d
    or h
    add b
    ld e, c
    ld h, e
    sbc h
    ld h, e
    sbc h
    ld h, e
    sbc h
    ld h, e
    sbc h
    ld h, d
    sbc h
    ld b, b
    sbc h
    nop
    db $dd
    add b
    ld c, c
    ld h, e
    sub h
    ld h, e
    sub h
    ld h, d
    sub h
    ld c, b
    sub h
    ld [$0894], sp
    sub h
    nop
    db $dd
    nop
    ld c, c
    inc e
    xor $1b
    rst $28
    ld e, $e9
    rra
    rst $28
    inc a
    rst $10
    ld d, $d3
    inc sp
    db $e3
    inc hl
    and c
    ld e, l
    di

jr_005_5652:
    and [hl]
    ld a, a

jr_005_5654:
    ei

jr_005_5655:
    db $fc
    rst $38
    di
    ld e, $f4
    inc h
    db $fc
    ld hl, sp-$08
    add [hl]
    ld b, $df
    rst $20
    rst $38
    jr c, jr_005_5655

    ret nz

    add b

jr_005_5667:
    nop
    nop
    nop
    nop

jr_005_566b:
    nop
    nop
    nop
    nop
    nop
    ld a, [c]
    inc bc
    ld [c], a
    add a
    adc h
    rst $00
    ret z

    ld c, a
    ld c, b
    ld e, a
    ld [hl], b
    ccf
    ld h, b
    ccf
    jr c, jr_005_569f

    jr nz, @+$01

    ld de, $11fe
    cp $11
    cp $09
    cp $0b
    db $fc
    rlca
    db $fc
    dec b
    cp $f8
    dec b
    ld sp, hl
    inc b
    db $fc
    ld [bc], a
    rst $38
    ld [bc], a
    rst $30
    add hl, bc
    push af
    ld [$04fa], sp
    db $fc

jr_005_569f:
    ld [bc], a
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_005_566b

    sub b
    ld h, b
    call z, $73a8
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0002
    rlca
    ld bc, $0f1e
    pop af
    jr nc, jr_005_5652

    jr nc, jr_005_5654

    ld h, b
    jr nz, jr_005_5667

    ld h, b
    ld b, b
    ret nz

    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    ld bc, $027f
    ld a, a
    inc b
    ld a, a
    ld [$107f], sp
    ld a, a
    jr nz, jr_005_575b

    nop
    ld a, a
    nop
    ld a, a
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
    ld bc, $00ff
    rst $38
    nop
    cp $06
    rst $38
    jr @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld de, $0f8e
    ld [hl], c
    ld a, [hl]
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rlca
    ld [$8847], sp
    add a
    add sp, -$69
    add sp, $63
    call nc, Call_005_74cb
    or e
    ld l, h
    jp hl


    ld [hl], $ff
    ld bc, $01ff
    cp $01
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
    ld a, [hl]
    add c
    ei
    add a
    sbc l
    cp $e7
    ld hl, sp-$01
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ld h, d
    db $fd
    jp $817e


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $a201
    ld bc, $839c
    ret nz

    ld b, e
    ldh [$a6], a
    ld sp, hl
    ret c

jr_005_575b:
    cp a
    rst $30
    adc a
    ld l, d
    sbc l
    add b
    ld h, d
    add d
    ld a, h
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$00
    rst $38
    db $fc

jr_005_576d:
    nop
    rst $38
    rst $38
    nop
    inc hl
    jr nz, jr_005_5792

    ld hl, $231d
    dec de
    rlca
    and $1e
    jr jr_005_576d

    ldh [$c0], a
    nop
    ld a, a
    ld b, d
    cp $82
    cp $04
    db $fc
    add $fc
    ld a, $1e
    dec c
    ld c, $05
    ld b, $05
    dec h
    add hl, de

jr_005_5792:
    ld e, e
    inc h
    add l
    ld b, d
    ld b, c
    adc d
    ld a, [hl+]
    push de
    ret z

    dec [hl]
    ld [hl], e
    adc h
    cp h
    ld b, e
    nop
    nop
    sbc h
    add b
    ld [hl], h
    ret z

    ld l, l
    ret nc

    add hl, sp
    ldh [$33], a
    and b

jr_005_57ac:
    ld h, e
    and b
    and a
    jr nz, jr_005_5825

    rla
    cp $1b
    rst $38
    rla
    add sp, $18
    add sp, $18
    ld hl, sp+$08
    ld sp, hl
    ld [$09fb], sp
    dec b
    cp $03

jr_005_57c3:
    cp $83
    cp $43
    ld a, [hl]
    ld b, d
    ld a, a
    jp nz, $e17f

    cp a
    and c
    ccf
    db $fd
    ld [bc], a
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld e, d
    inc a
    and a
    rla
    ld d, b
    adc b
    jr z, jr_005_57ac

    call nc, $ba62
    ld h, c
    db $ed
    jr nc, jr_005_57c3

    jr c, jr_005_582f

    ld b, $f8
    ld hl, sp+$00
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
    ld b, b
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_005_5825:
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

jr_005_582f:
    rst $38
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld e, a
    ldh [$5f], a
    ldh [$3f], a
    ldh [$d9], a
    ld [hl], $f5
    ld a, [de]
    db $ed
    ld a, [de]
    ld a, [$f60d]
    dec c
    db $fd
    ld b, $fb
    rlca
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $03fd
    cp $03
    ei
    ld b, $75
    adc [hl]
    ld a, e
    db $fc
    rst $38
    add b
    rst $38
    add b
    ld a, a
    add b
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
    db $fd
    inc bc
    cp $03
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ei
    ld b, $fd
    ld b, $ff
    inc b
    rst $38
    nop
    rst $10
    jr c, @+$01

    ld h, b
    cp a
    ret nz

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
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    rlca
    ld [bc], a
    ld b, $03

jr_005_58a4:
    rlca
    inc bc
    rlca
    ld [bc], a
    ld b, $04
    inc c
    inc b
    inc e
    ld [$3038], sp
    db $dd
    ld [hl+], a
    rst $28
    db $10
    ld [hl], c
    adc [hl]
    cp [hl]
    pop bc
    db $ed
    ld [hl], e
    ld e, [hl]
    ld a, a
    ld a, [hl]
    ld b, b
    ld a, [hl]
    ld b, b
    daa
    jr nz, @+$81

    jr nz, jr_005_58a4

    ld h, b
    ld a, a
    ret nz

    rst $38
    add b
    add e
    ld bc, $0001
    nop
    nop
    cp $0e
    db $fc
    ld [$08f8], sp
    add sp, $18
    inc a
    ld hl, sp-$28
    db $ec
    or h
    call z, Call_005_64dc
    ld sp, $111f
    rra
    add hl, de
    rrca
    jr jr_005_58f7

    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld a, a
    add b
    sbc a
    ld b, b
    sbc a
    ld b, b
    sbc a

jr_005_58f7:
    ret nz

    rst $08
    and b
    rst $00
    and b
    daa
    ret nc

    and e
    ld d, b
    xor $18
    ld [$e71c], a
    inc d
    push hl
    ld d, $e3
    ld [de], a
    di
    ld a, [bc]
    di
    ld a, [bc]
    di
    ld a, [bc]
    nop
    ld b, b
    ld b, b
    jr nz, jr_005_5915

jr_005_5915:
    jr nz, jr_005_5917

jr_005_5917:
    jr nz, jr_005_5939

    db $10
    and b
    db $10
    add b
    db $10
    add b
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
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_5939:
    nop
    nop
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    ld a, [bc]
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
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    jr jr_005_597e

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_005_598e

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
    inc h
    dec h
    ld h, $27
    jr z, jr_005_59a7

jr_005_597e:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_005_59bf

jr_005_598e:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_005_59cf

    ld a, [hl-]
    nop
    nop
    dec sp
    inc a
    nop
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_005_59a7:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    nop
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
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
    nop

jr_005_59bf:
    nop
    ld e, l
    ld e, [hl]
    ld e, a
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

jr_005_59cf:
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    nop
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    nop
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    nop
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    adc b
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    nop
    ld [$1608], sp
    ld e, $21
    inc sp
    jr nz, @+$32

    jr nz, @+$35

    jr nz, jr_005_5a6f

    inc hl
    ccf
    inc e
    dec e
    jr jr_005_5a8e

    ld h, [hl]
    ld a, [hl]
    and c
    db $e3
    ld b, e
    pop hl
    inc bc
    ld b, c
    adc a
    pop af
    add d
    cp $42
    ld a, [hl]
    nop
    ld [$0800], sp
    nop
    inc b
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_005_5a57

jr_005_5a57:
    ld d, b
    nop
    adc b
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0100], sp
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

jr_005_5a6f:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    inc [hl]
    inc a
    ld [$0008], sp
    nop
    nop
    nop
    nop
    jr c, jr_005_5a7f

jr_005_5a7f:
    ld b, h
    nop
    ld b, d
    nop
    ld b, d
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

jr_005_5a8e:
    ld [$1117], sp
    inc h
    inc b
    jr z, jr_005_5a95

jr_005_5a95:
    ld [$0800], sp
    nop
    ld a, b
    ld h, b
    sbc a
    inc c
    inc de
    db $e3
    inc e
    ld [$60f0], sp
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    and b
    add b
    ld h, b
    ld b, b
    jr nz, jr_005_5ab5

jr_005_5ab5:
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0e01
    rrca
    inc [hl]
    jr c, jr_005_5ac5

jr_005_5ac5:
    ld [hl-], a
    nop
    ld [bc], a
    nop
    add h
    nop
    ld a, b
    rra
    rra
    ldh a, [$e0]
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld a, [$40fc]
    add b

jr_005_5ade:
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
    ret nc

    ldh [rP1], a
    nop
    nop
    ld bc, $0e00
    ld [$4070], sp
    add b
    ld a, a
    ld a, a
    and c
    ret nz

    nop
    nop

jr_005_5afa:
    nop
    rra
    jr jr_005_5ade

    nop
    nop
    nop
    nop
    nop
    nop
    pop hl
    ret z

    ld l, a
    ret nc

    rst $28
    ld d, b
    rlca
    ld hl, sp+$18
    rlca
    nop
    nop
    rra
    nop
    ld a, a
    nop
    db $ec
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_005_5afa

    jr nz, jr_005_5b7c

    and b
    sbc a
    ld h, b
    adc h
    ld d, e
    and e
    ld e, h
    jr nz, jr_005_5b36

    nop
    db $10
    sub b
    ld [$0fd7], sp
    db $fc
    ld [$7f80], sp
    ld bc, $fefe
    ld bc, $0000

jr_005_5b36:
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, b
    add b
    add [hl]
    ld a, b
    ld a, b
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [c], a
    cp $07
    ld h, c
    nop
    add b
    ret nz

    nop
    nop
    nop
    nop
    rlca
    nop
    ld a, b
    nop
    add b
    nop
    nop
    ld hl, sp-$08
    rra
    rlca
    ld bc, $0000
    nop
    nop
    ldh [rP1], a
    jr jr_005_5b6b

jr_005_5b6b:
    inc b
    nop
    ld [bc], a
    nop
    ld bc, $f9c0
    or b
    ld [hl], c
    ldh a, [$c0]
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b

jr_005_5b7c:
    ld b, e
    ld b, b
    ld a, b
    ld b, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    nop
    nop
    nop
    nop
    inc bc
    nop
    jr nc, @+$11

    nop
    rst $38
    rlca
    rst $38
    jr @+$01

    ld h, d
    db $fc
    nop
    ld bc, $020d
    add d
    ld a, l
    ld sp, $c8fe
    ldh a, [rNR41]
    ret nz

    add c
    ld b, $04
    jr @-$7e

    inc bc
    ld [bc], a
    inc a
    jr nz, @-$3e

    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    ld a, a
    nop
    ld b, b
    add b
    inc bc
    nop
    rrca
    nop
    rra
    nop
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and c

jr_005_5bd5:
    ld e, [hl]
    and b
    ld e, a
    ld h, b
    sbc a

jr_005_5bda:
    ld h, b
    sbc a
    and b
    ld e, a
    and b
    ld e, a
    pop hl
    ld e, $e3
    inc e
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, e
    add h
    dec sp
    call nz, $02fd
    db $fc
    inc bc

jr_005_5bf2:
    adc $31
    sbc [hl]
    ld h, c
    rst $20
    jr jr_005_5bf2

    ld b, $fe
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    inc a
    jp $f00c


    add c
    ld a, [hl]
    ldh [$1f], a
    ldh a, [rIF]
    jr c, jr_005_5bd5

    call Call_005_7633
    adc c
    ei
    inc b
    nop
    nop
    add b
    nop
    jr nc, jr_005_5bda

    inc b
    ld hl, sp+$01
    cp $80
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    inc a
    ld c, [hl]
    ld bc, $0043
    inc a
    nop
    nop
    nop
    nop
    ld b, b
    add b
    jr nz, jr_005_5bf2

    ld [$00f0], sp
    nop
    add b
    add b
    ldh [$60], a
    jr nc, jr_005_5c4c

    jr jr_005_5c46

    inc c
    inc b
    inc c
    inc b
    inc b
    inc c
    nop
    nop

jr_005_5c46:
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_5c4c:
    inc bc
    inc bc
    inc b
    rlca
    jr jr_005_5c71

    ld h, b
    ld a, a
    inc hl
    ccf
    inc l
    ccf
    ld [hl], b
    ld a, a
    ret nz

    rst $38
    ld bc, $06ff
    rst $38
    dec de
    db $fc
    ld l, [hl]
    pop af
    add h
    ld hl, sp+$08
    ldh a, [rNR12]
    pop hl
    ld h, b
    add $84
    ret z

    ld c, b
    sub b
    ld d, b

jr_005_5c71:
    and b
    ret nz

    jr nz, jr_005_5c86

    ld h, b
    ld b, e
    add b
    rlca
    nop
    rrca
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop

jr_005_5c86:
    rst $38
    nop
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38
    nop
    ld a, h
    nop
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
    pop af
    nop

jr_005_5ca6:
    add e
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    rst $20
    jr jr_005_5ca6

    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ldh a, [rP1]
    rst $30
    ld [$0cf3], sp
    ld sp, hl
    ld b, $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    add c
    ld a, [hl]
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld sp, hl
    ld b, $fa
    inc b
    ld a, [c]
    inc c
    or $08
    db $fd
    ld [bc], a
    ld e, $e1
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    sbc b
    ld a, a
    call nz, Call_005_633f
    sbc a
    and b
    ld c, a
    and b
    ld c, a
    add b
    daa
    add b
    inc de
    add c
    dec bc
    ld [bc], a
    db $fc
    ld bc, $00fe
    rst $38
    ret nz

    rst $38
    jr c, @+$01

    ld b, $ff
    ld bc, $f8ff
    rst $38
    ld [$1808], sp
    ld [$1808], sp
    sub b
    db $10
    jr nc, @-$6e

    ld d, b
    or b
    ldh [$a0], a
    ld h, b
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
    ld bc, $0601
    rlca
    jr jr_005_5d53

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    jr nc, @+$41

    ld b, c
    ld a, a
    add [hl]
    rst $38
    dec de
    db $fc
    ld l, b
    ldh a, [$81]
    rst $38
    ld b, $ff
    dec de
    db $fc
    ld l, a
    ldh a, [$bf]
    ret nz

    rst $38
    nop
    rst $38
    nop
    ccf

jr_005_5d53:
    nop
    cp l
    jp nz, $02fd

    ei
    inc b
    ld a, [$f905]
    ld b, $f9
    ld b, $fb
    inc b
    di
    inc c
    and b
    ld b, b
    ld b, b
    add b
    nop
    add b
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0001
    rra
    nop
    db $fc
    inc bc
    ldh a, [$0c]
    ldh [rNR10], a
    pop bc
    jr nz, jr_005_5dc0

    ret nz

    ld a, a
    add b
    add b
    inc a
    nop
    ret nz

    nop
    nop
    inc bc
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, [$f704]
    ld [$10ef], sp
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
    inc b
    add b
    add hl, bc
    db $ed
    ld [de], a
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

jr_005_5dc0:
    nop
    ld b, b
    add b
    ld d, b
    cp $01
    ld a, [hl-]
    ld bc, $0110
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_005_5dd4

jr_005_5dd4:
    and $18
    adc $10
    adc d
    stop
    stop
    stop
    nop
    nop
    nop
    nop
    ld [$001f], sp
    rrca
    nop
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

jr_005_5df2:
    jr jr_005_5df4

jr_005_5df4:
    nop
    add hl, bc
    nop
    dec b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    inc b
    ld bc, $010e
    rrca
    nop
    or $0f
    db $fd
    inc bc
    ld a, a
    add b
    ld a, a
    add b

jr_005_5e0c:
    ccf
    ld b, b
    ccf
    ld b, b
    rst $18
    jr nz, jr_005_5df2

    jr nz, jr_005_5e25

    ldh a, [$8c]
    db $fc
    ld h, e
    rst $38
    ret nc

    ccf
    db $ec
    rra
    ei
    rlca
    cp $01
    ldh [rP1], a
    nop

jr_005_5e25:
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp-$3c
    db $fc
    or e
    ld a, a
    pop hl
    rst $38
    ld b, [hl]
    ld a, a
    ld sp, $0e3f
    rrca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    and b
    ret nz

    add b
    nop
    ret nz

    add b
    ld l, b
    ldh a, [$9a]
    db $fc

jr_005_5e4e:
    ld [hl], a
    ld a, a
    inc c
    rrca
    inc bc
    inc bc
    rrca
    nop

jr_005_5e56:
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    ret nc

    ldh [$3d], a
    cp $f1
    ld c, $f8
    rlca
    ld hl, sp+$07
    ld a, $03
    ld c, $03
    ld b, $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [c], a
    rra
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    rst $20
    jr jr_005_5e4e

    jr c, jr_005_5e0c

    ld a, h
    ld bc, $00fe
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    rst $18
    jr nz, jr_005_5e56

    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    add l
    ld [hl], a
    adc l
    ld a, [hl+]
    rst $18
    jp z, $d3ff

    inc l
    add e
    ld a, h
    jp nz, $807d

    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    db $ed
    ld [de], a
    dec de
    and $37
    adc $0b
    cp $8a
    rst $38
    ld a, [bc]
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    and b
    ld d, b
    xor h
    ld d, b
    xor a
    ld d, b
    xor [hl]
    ld d, c
    db $76
    ret


    ld [hl], h
    db $eb
    xor b
    rst $38
    or h
    rst $38
    ld a, b
    nop
    ld a, a
    nop
    rst $30
    ld [$08f7], sp
    ldh [$1f], a
    ld h, b
    sbc a
    ld [hl+], a
    rst $18
    ld [bc], a
    rst $38
    nop
    inc b
    nop
    ld [bc], a

jr_005_5ee8:
    sbc $01
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [rSB]
    cp $00
    rst $38
    inc e
    nop
    ld e, $00
    rra
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    jr nc, jr_005_5ee8

    ld e, b
    db $e3
    sbc h
    dec de

jr_005_5f05:
    inc b
    dec de
    inc b
    cp l
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    cp $01
    or $09
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    call nc, $d428
    jr z, jr_005_5f05

    inc d
    ld [$f414], a
    ld a, [bc]
    ld [hl], h
    adc d
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
    nop
    nop
    ld [bc], a
    ld bc, $070f
    jr @+$11

    ld b, $07
    inc bc
    ld bc, $0000
    nop
    nop
    dec b
    inc bc
    rst $38
    rst $38
    ccf
    rst $38
    ldh [$e0], a
    inc e
    db $fc
    add e
    rst $38
    ldh [$7f], a
    ld e, b
    ccf
    ldh [rIE], a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    jp Jump_000_38ff


    ccf
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
    nop
    ld bc, $c3e2
    ld [hl], $fb
    adc [hl]
    rst $38
    ld [hl], d
    ld a, a
    ld e, $2f
    rlca
    ld c, e
    dec c
    sub e
    dec de
    dec h
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$34ff], sp
    rst $38
    inc e
    rst $38
    ld d, $ff
    dec h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    daa
    rst $38
    dec a
    cp $02
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    add h

jr_005_5fbb:
    rst $38
    ret z

    rst $38
    add sp, -$01
    cp b
    rst $38
    inc e
    rrca
    inc e
    rst $30
    inc l
    rst $30
    inc h
    rst $38
    jr c, jr_005_5fbb

    ld e, b
    rst $28
    ld e, b
    rst $28
    ld a, b
    rst $08
    ld a, b
    rst $08
    or h
    rst $38
    or h
    rst $38
    or [hl]
    rst $38
    or [hl]
    rst $38
    or a
    rst $38
    cp e
    rst $28
    cp e
    rst $28
    cp e
    xor $41
    rst $38
    ld hl, $20ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    add hl, bc
    rst $38
    dec bc
    rst $38
    adc [hl]
    db $fc
    ld bc, $06ff
    rst $38
    adc b
    rst $38
    or b
    rst $38
    db $fc
    rst $38
    adc [hl]
    rst $38
    adc e
    rlca
    inc bc
    ld bc, $ce31
    db $10
    rst $28
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    ei
    inc b
    db $fd
    ld [bc], a
    ld a, [hl]
    add c
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld [hl], l
    adc d
    cp d
    ld b, l
    cp d
    ld b, l
    dec a
    jp nz, Jump_000_32cd

    jp nc, $dc2d

    inc hl
    rst $28
    db $10
    ld a, e
    rra
    db $ec
    ld a, h
    ldh a, [$f8]
    ld [hl], b
    adc b
    ld a, b
    add h
    cp b
    ld b, h
    cp h
    ld b, d
    inc a
    jp nz, $c0c0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_005_6057

jr_005_6057:
    jr jr_005_6059

jr_005_6059:
    ld b, $00
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
    nop
    nop
    nop
    add b
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    cp $00
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc b
    nop
    add hl, de
    ld bc, $0362
    add h
    rlca
    ld [$300f], sp
    ld a, $41
    dec sp
    ld b, h
    ld [hl], l
    adc e
    push af
    dec bc
    db $ed
    inc de
    reti


    daa
    cp d
    ld b, a
    ld [hl], d
    adc a
    db $f4
    rrca
    sub b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    sub b
    rst $38
    ld [hl], b
    rst $38
    ld [$08ff], sp
    rst $38
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    ld de, $11ff
    rst $38
    ld de, $13ff
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    ld a, b
    ldh a, [$e0]
    ret nz

    add b
    ret nz

    add b
    add b
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    rlca
    inc bc
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
    nop
    ld e, b
    rst $28
    add sp, -$01
    ld [hl], a
    ccf
    inc e
    rrca
    scf
    ld d, $37
    daa
    dec h
    daa
    cpl
    inc h
    cp e
    xor $bd
    rst $20
    db $fd
    rst $20
    ld l, a
    sub a
    db $ed
    inc de
    ei
    rla
    push af
    sbc a
    dec sp
    db $dd
    adc h
    ld hl, sp-$28
    ld [hl], b
    ldh a, [$60]
    ret nz

    add b
    ldh [rLCDC], a
    ld h, b
    jr nz, @+$22

    jr nz, jr_005_6173

    jr nz, jr_005_6116

    nop

jr_005_6116:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp nz, $e1ff

    ld a, a
    ld [hl], c
    ccf
    ld de, $383f
    rra
    jr @+$21

    ld [$1a1f], sp
    rrca
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ld [hl], a
    adc b
    dec sp
    call nz, $e41b
    dec e
    ld [c], a
    dec c
    ld a, [c]
    ld b, $f9
    and b
    ld e, a
    or h
    ld c, e
    db $db
    inc h
    db $db
    inc h
    db $ed
    ld [de], a
    xor $11
    rst $30
    ld [$0000], sp
    nop
    nop
    nop
    ldh [rP1], a
    sbc a
    nop
    ret nz

    add b
    ld b, b
    add b
    ld h, b
    ret nz

jr_005_6173:
    jr nz, jr_005_6175

jr_005_6175:
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    nop
    inc c
    nop
    jr nc, jr_005_618b

jr_005_618b:
    ret nz

jr_005_618c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_61aa:
    nop
    ld bc, $0e00
    nop
    jr c, jr_005_61b4

    ret nz

    ccf
    nop

jr_005_61b4:
    nop
    inc bc
    inc bc
    inc c
    rlca
    jr nc, @+$11

    ret nz

    ld de, $0200
    ld bc, $02c5
    ret nz

    inc c
    ld a, l
    add d
    ei
    inc b
    rst $20
    jr jr_005_61aa

    jr nz, jr_005_618c

    ld b, b
    db $76
    add c

jr_005_61d0:
    inc b
    inc bc
    ld [$e807], sp
    rra
    ret z

    ccf
    sub b
    ld a, a
    sub a
    ld a, a
    dec sp
    db $fc
    jr z, jr_005_61d0

    ld h, b
    ret nz

    ret nz

    add b
    dec bc
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    sub c
    rst $38
    di
    ld a, [hl]
    ld a, $1c
    rrca
    ld b, $03
    ld bc, $ff09
    ret


    rst $38
    jp hl


    rst $38
    ld sp, hl
    cp a
    and l
    cp a
    and d
    cp a
    and d
    cp a
    and d
    cp a
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    ret nz

    add b
    ret nz

    nop
    daa
    inc l
    ccf
    inc l
    cpl
    inc a
    inc a
    inc a
    ld a, $3c
    inc h
    inc l
    inc l
    inc h
    inc a

jr_005_6223:
    inc h
    rst $38
    ld bc, $01df
    dec c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2001
    ld h, b
    ldh [$60], a
    ld h, b
    ldh [$e0], a
    ldh [$e0], a
    ldh [rNR41], a
    ld h, b
    ld h, b
    jr nz, jr_005_6223

    jr nz, @+$1c

    rrca
    ld a, [de]
    rrca
    ld a, [de]
    rra
    dec de
    rra
    ld a, [de]
    ld a, $3b
    ld a, $2a
    ccf
    ld l, $3f
    add b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    sub b
    rst $38
    cp b
    ld a, a
    jr c, jr_005_628f

    cp h
    ld l, a

jr_005_6262:
    ld a, h
    rst $10
    ld b, $f9
    ld b, $f9
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $30
    ld [$04fb], sp
    ld a, e
    add h
    ld a, l
    add d
    cp l
    ld b, d
    cp [hl]
    ld b, c
    rst $18
    jr nz, jr_005_6262

    jr nz, @-$1e

    db $10
    ldh [rNR10], a
    ldh a, [$08]
    ldh [$08], a
    ldh [rDIV], a
    db $e4

jr_005_628f:
    ld [bc], a
    ld [hl], b
    add d
    ld [hl], b
    add c
    nop
    inc c
    ld bc, $0710
    jr nz, jr_005_62aa

    ld b, b
    rra

jr_005_629d:
    nop
    ccf
    nop
    ld a, $01
    ld a, l
    ld [bc], a
    ld a, a
    nop
    rst $38
    nop
    db $fc
    inc bc

jr_005_62aa:
    di
    inc c
    rst $28
    db $10
    sbc a
    ld h, b
    ld a, a
    add b
    rst $38
    nop
    add b
    jr nc, jr_005_62b7

jr_005_62b7:
    ret nz

    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld bc, $02fd
    ld hl, sp+$06
    db $10
    rrca
    add hl, hl
    rla
    ld b, c
    cpl
    add c
    ld c, a
    ld de, $038f
    rra
    ld [bc], a
    rra
    inc h
    rra
    add b
    add b
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add e
    add b
    rst $00
    add b
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
    ldh [rP1], a
    db $fc
    nop
    ld [c], a
    cp a
    push hl
    ld a, [hl]
    ld l, e
    inc a
    jr c, jr_005_631b

    dec de
    inc c
    rrca

Call_005_62ff:
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $00f0
    adc $31
    add hl, sp
    add $e4
    jr jr_005_629d

    ld h, b
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    nop
    ld a, a
    add b
    nop
    nop
    nop

jr_005_631b:
    nop
    inc b
    inc bc
    ld h, d
    inc e
    sbc a
    ld h, [hl]
    ccf
    add hl, de
    inc [hl]
    inc l
    inc a
    db $fc
    nop
    nop
    add b
    ld [hl], b
    ld b, b
    add e
    db $10
    inc c
    ccf
    ld a, a
    db $fc
    ccf
    ld bc, $0101
    ld bc, $1801
    add b
    ld h, b
    rrca
    rra
    ld a, l

Call_005_633f:
    di
    sbc e
    pop af
    inc de
    pop af
    and b
    ld h, b
    db $e4
    ld hl, sp-$01
    nop
    nop
    nop
    nop
    add c
    ret nz

    add d
    ret nz

    add h
    ret nz

    adc b
    nop
    nop
    ld bc, $fe00
    nop
    nop
    nop
    inc c

Jump_005_635d:
    nop
    db $10
    ld [$1000], sp
    jr nz, jr_005_6364

jr_005_6364:
    ld d, b
    ccf
    or b
    rra
    jr nz, jr_005_63a9

    ld hl, $133f
    ld a, $2e
    inc e
    inc e
    ld [$0c04], sp
    ld a, a
    rst $18
    ld [hl], h
    ld hl, sp+$50

jr_005_6379:
    ldh [$c0], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rIE], a
    ld a, h
    rra
    rlca
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_6393:
    nop
    ld l, a
    sub b
    ld l, a
    sub b
    rst $30
    adc b
    db $76
    ret z

    ld a, e
    inc h
    dec sp
    inc d
    dec e
    ld a, [bc]
    dec c
    ld b, $b1
    ld b, b
    ret nc

    jr nz, jr_005_6379

jr_005_63a9:
    jr nz, jr_005_6393

    db $10
    ld [hl], h
    ld [$041a], sp
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $8000
    add b
    ld b, b
    ld b, b
    jr nz, jr_005_63db

    jr jr_005_63c5

    inc b
    inc b
    inc bc
    ld bc, $0000
    nop
    nop

jr_005_63c5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld b, b
    jr nz, @+$7d

    inc b
    ld [hl], a
    ld [$106f], sp
    ld e, a

jr_005_63db:
    jr nz, jr_005_641c

    ld b, b
    ccf
    ld b, b
    ld a, a
    nop
    ld a, a
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    di
    inc c
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    ld bc, $06ff
    rst $38
    ld [$30ff], sp
    rst $38
    dec b
    ccf
    ld b, [hl]
    ccf
    jr jr_005_6489

    ldh [$7f], a
    add b
    rst $38
    ld bc, $06ff
    rst $38
    dec de
    db $fd
    rst $20
    ret nz

    scf
    ldh [$1f], a
    ldh a, [$3b]
    db $fc

jr_005_641c:
    ld a, a
    and $e3
    pop bc
    pop bc
    add b
    add b
    nop
    cp $00
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
    cp a
    ret nz

    rst $38
    ld h, b
    ld bc, $8000

jr_005_6437:
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    ldh a, [$80]
    ld [hl], b
    ret nz

    pop de
    ld h, b
    ld a, e
    ld hl, $336a
    dec sp
    ld d, $35
    ld e, $1f
    inc c
    ld [hl], c
    jr nz, jr_005_6437

    ld b, b
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nc

    cp a
    ret nc

    cp a
    ldh a, [$5f]
    ldh a, [$5f]
    ld l, b
    ld e, a
    ld a, b
    ld c, a
    ld [hl], h
    ld c, a
    db $fc
    ld b, a
    ld bc, $02f3
    ei
    ld b, $fb
    inc b
    rst $38
    nop
    rst $38
    nop

Call_005_647f:
    rst $38
    ld bc, $01ff
    rst $38
    ret nz

    add b
    ret nz

    add b
    ret nz

jr_005_6489:
    add b
    ret nz

    add b
    res 0, a
    rst $28
    sbc h
    ld [hl], h
    cp b
    ld e, a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    cp $0f
    inc bc
    ld bc, $c000
    nop
    inc c
    inc b
    inc c
    inc b
    inc b
    inc c
    dec c
    jr jr_005_6508

    jr nc, jr_005_652e

    ldh [rIE], a
    sub b
    rst $18
    ld c, b
    nop
    nop
    ccf
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
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101

Call_005_64dc:
    nop
    ld bc, $0001
    add c
    nop
    add b
    nop
    add c
    nop
    rst $08
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [$8f]
    ld hl, sp-$35
    db $fc
    and a
    db $fc
    db $e3
    cp [hl]
    ld b, c
    add b
    cp a
    ld b, b
    rst $18
    jr nz, @-$0f

    db $10
    rst $30
    ld [$04fb], sp
    db $fd
    ld [bc], a
    cp $01
    ldh [rNR23], a
    ld hl, sp+$04

jr_005_6508:
    db $fc
    ld [bc], a
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, [hl]
    ld bc, $077b
    ld l, h
    rra
    jr nc, jr_005_6563

    ld hl, sp+$07
    di
    rrca
    db $ec
    rra
    or b
    ld a, a
    ret nz

    rst $38

jr_005_652e:
    ld bc, $06ff
    rst $38
    ccf
    ld hl, sp-$40
    rst $38
    ld bc, $06ff
    rst $38
    dec de
    db $fc
    ld l, a
    ldh a, [$bf]
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld l, l
    di
    cp a
    jp nz, $867b

    rst $38
    inc b
    rst $38
    inc b
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_005_6563:
    nop
    ld e, a
    jr nc, jr_005_6586

    ld [$040f], sp
    rlca
    ld [bc], a
    add e
    ld bc, $0f9f
    rst $30
    ld a, b
    cp a
    ret nz

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
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rra
    inc c

jr_005_6586:
    adc a
    inc b
    rst $00
    inc b
    call nz, $e400
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    pop hl
    nop
    pop bc
    ld bc, $0181
    inc bc
    ld bc, $0103
    ld bc, $0101
    nop
    ld bc, $fc00
    rst $38
    ld [hl], d
    rst $18
    ld a, $ef
    cp a
    pop hl
    ld e, a
    pop af
    cpl
    ld hl, sp-$69
    rst $38
    adc b
    ld hl, sp+$01
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add h
    rst $38
    ld b, h
    ld a, a
    ld a, a
    ret nz

    rst $38
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld l, a
    jr z, jr_005_6656

    jr z, jr_005_6618

    jr z, jr_005_65fa

    jr z, jr_005_65fc

    ld [$080f], sp
    rrca
    ld [$080f], sp
    add b
    nop
    ret nz

    nop
    ret nz

    nop

jr_005_65fa:
    pop bc
    nop

jr_005_65fc:
    pop bc
    nop
    pop bc
    ld bc, $01c1
    add e
    ld bc, $bfd1
    add sp, -$61
    or $8f
    db $fd
    add e
    cp $81
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b

jr_005_6618:
    ld a, a
    ret nz

    ccf
    ldh [$9f], a
    ldh a, [rVBK]
    db $fc
    and e
    ld a, [hl]
    pop de
    ccf
    ld a, $c0
    sbc $20
    xor $10
    or $08
    ld a, [$fa04]
    inc b
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    inc bc
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
    nop
    dec b
    ld b, $00
    nop
    nop
    rlca
    ld [$0009], sp
    nop

jr_005_6656:
    nop
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
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_005_6691

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_005_66b7

    ld a, [hl+]
    dec hl
    inc l

jr_005_6691:
    dec l
    ld l, $2f
    jr nc, jr_005_6696

jr_005_6696:
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_005_66db

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    nop
    nop
    nop
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_005_66b7:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    nop
    nop
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    nop
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d

jr_005_66db:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    nop
    add b
    add c
    add d
    nop
    add e
    add h
    add l
    add [hl]
    add a
    nop
    nop
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    dec de
    dec de
    cp [hl]
    cp a
    ret nz

    pop bc
    nop
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
    ld bc, $0203
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh [rNR41], a
    jr nc, @+$12

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
    nop
    nop
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ldh [$a0], a
    jr nc, jr_005_6786

    db $10
    db $10
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101

jr_005_6786:
    ld bc, $1801
    ld [$0808], sp
    ld [$0c08], sp
    inc b
    inc b
    inc b
    ld b, $02
    ld [bc], a
    ld [bc], a
    add d
    ld [bc], a
    ld b, $04
    inc b
    inc b
    inc c
    ld [$0808], sp
    ld [$1808], sp
    db $10
    db $10
    db $10
    jr nc, jr_005_67c8

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nc, jr_005_67c2

    jr nz, jr_005_67d4

    ld h, b
    jr nz, jr_005_6817

    ld h, b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop

jr_005_67c2:
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_67c8:
    add e
    ld bc, $8181
    pop bc
    add b
    ret nz

    ld b, b
    ldh [$c0], a
    ldh [$a0], a

jr_005_67d4:
    ldh a, [$a0]
    ldh a, [$90]
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
    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld h, b
    jr nz, jr_005_67e9

jr_005_67e9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $2001
    jr nz, jr_005_681b

    jr nz, jr_005_685d

    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld b, c
    pop bc
    add c
    add e
    add c
    add e
    ld [bc], a
    ldh [$60], a
    ldh [$a0], a
    and b
    and b
    and b
    and b
    and b
    jr nz, jr_005_6873

    jr nz, jr_005_6855

    ld b, b
    ld b, b

jr_005_6817:
    ld b, b
    ret c

    sub b
    ld e, b

jr_005_681b:
    ld c, b
    ld c, h
    ld c, b
    ld l, h
    ld b, h
    ld h, h
    ld b, h
    ld h, $24
    ld h, $22
    inc sp
    ld [hl+], a
    jr nz, jr_005_684a

    jr nz, jr_005_684c

    jr nc, jr_005_683e

    db $10
    db $10
    jr jr_005_683a

    ld [$0808], sp
    ld [$040c], sp
    nop
    nop

jr_005_683a:
    nop
    nop
    nop
    nop

jr_005_683e:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    inc b
    ld [$0000], sp

jr_005_684a:
    nop
    nop

jr_005_684c:
    nop
    rlca
    ld b, $18
    db $10
    ld h, b
    ld b, e
    add b
    rrca

jr_005_6855:
    nop
    ccf
    nop
    nop
    nop
    nop
    rra
    inc de

jr_005_685d:
    ldh [rIF], a
    nop
    ld a, a
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
    ldh [$e0], a
    rra
    db $fc
    nop
    rst $38

jr_005_6873:
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
    ld hl, sp+$08
    rlca
    ld bc, $f000
    nop
    db $fc
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
    ret nz

    ld b, b
    jr nc, jr_005_68a5

    ld [$0408], sp
    ld bc, $0101
    ld bc, $0203
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $06

jr_005_68a5:
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld b, $04
    inc b
    inc b
    inc c
    inc b
    dec c
    ld [$0909], sp
    add hl, de
    add hl, bc
    ld b, b
    ld b, b
    ret nz

    ld b, b
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
    nop
    nop
    inc sp
    ld hl, $1111
    ld de, $1810
    db $10
    jr @+$12

    ld [$0c08], sp
    ld [$080c], sp
    inc b
    inc b
    add h
    inc b
    add [hl]
    add d
    add d
    add d
    jp $c181


    ld b, c
    ld h, c
    ld b, c
    ld [hl], c
    jr nz, jr_005_68e9

jr_005_68e9:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    nop
    ld [bc], a
    nop
    inc b
    add h
    adc b
    ld [$2130], sp
    ld b, b
    ld b, a
    add b
    adc a
    nop
    inc e
    nop
    ld bc, $0300
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
    add h
    ld [bc], a
    ld [c], a
    ld bc, $00f1
    db $fc
    nop
    cp $00
    cp $00
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, @+$22

    stop
    jr jr_005_6947

    ld [$0c08], sp
    ld c, $08
    ld d, $18
    ld e, $10
    ld e, $10
    cpl
    jr nc, @+$41

    jr nz, jr_005_6986

jr_005_6947:
    jr nz, jr_005_6962

    ld de, $1133
    ld [hl-], a
    ld [de], a
    ld [hl-], a
    ld [hl+], a
    ld h, d
    ld [hl+], a
    ld h, $62
    db $e4
    ld b, h
    ld b, h
    call nz, Call_000_0404
    ld b, $04
    ld b, $04
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a

jr_005_6962:
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $2038
    inc a
    db $10
    inc e
    db $10
    ld e, $08
    rrca
    ld [$040f], sp

jr_005_6974:
    rlca
    inc b
    add l
    ld b, $80
    adc b
    ret z

    ld d, b
    ld b, b
    ld d, b
    ld [hl], b
    inc hl
    dec sp
    inc l
    or a
    jr c, jr_005_6974

    ld [hl], b

jr_005_6986:
    ld a, a
    ldh [rP1], a
    nop
    nop
    nop
    add b
    nop
    add c
    nop
    sub b
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ccf
    nop
    inc a
    nop
    jr nc, jr_005_69a6

jr_005_69a6:
    jr nz, jr_005_69a8

jr_005_69a8:
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
    rrca
    nop
    rrca
    nop
    ld bc, $ff00
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
    ld e, $ed
    inc sp
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
    db $db
    nop
    ret z

    nop
    nop
    nop
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    inc a
    nop
    ld [$0004], sp
    inc b
    inc b
    ld [bc], a
    db $10
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    inc bc
    dec c
    inc hl
    rra
    ld hl, $605f
    ld a, a
    ld b, b
    cp [hl]
    pop bc
    rst $38
    add c
    db $fd
    add e
    ld a, a
    add d
    cp $02
    ld a, [$cc06]
    add h
    adc b
    adc b
    adc b
    adc b
    sbc b
    ld [$1010], sp
    jr nc, jr_005_6a24

    jr nz, @+$22

    jr nz, @+$22

    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_6a24:
    nop
    nop
    nop
    nop
    add a
    ld [bc], a
    add d
    add e
    add e
    add c
    pop bc
    add c
    ld b, c
    ld b, b
    ld h, c
    ld b, c
    ld hl, $3121
    ld hl, $e05f
    cp $c1
    cp h
    jp $82ff


    db $fd
    add [hl]
    ld a, a
    add h
    ei
    inc c
    rst $38
    ld [$8060], sp
    and $00
    rst $38
    nop
    cp $01
    cp $01
    cp d
    ld b, l
    or [hl]
    ld c, e
    rst $38
    adc d
    ld b, c
    nop
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    cp l
    ld l, $d3
    ld a, a
    ld a, a
    rst $38
    or d
    db $fc
    sbc h
    ldh a, [$28]
    ldh a, [rSVBK]
    and b
    ld [hl], b
    and b
    rst $18
    ld h, c
    ld a, [hl]
    call $fff3
    ld c, $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add h
    add b
    sbc h
    and b
    sbc $a0
    db $fd
    and d
    ld e, l
    ld a, [c]
    rst $38
    ld d, c
    rst $38
    ld d, c
    nop
    nop
    nop
    stop
    ld de, $09e0
    pop af
    ld [$08f1], sp
    ei
    inc b
    rst $38
    inc b
    rrca
    ld de, $1916
    rst $38
    ld [$8c7b], sp
    rst $30
    adc h
    cp a
    call nz, $c47f
    rst $18
    ld h, h
    ld a, [hl]
    add h
    db $fc
    add h
    db $f4
    adc h
    db $fc
    adc b
    jp hl


    sbc b
    ld sp, hl
    sub c
    or e

jr_005_6ac5:
    pop de
    ld d, d
    ld a, [c]
    ld h, b
    jr nz, jr_005_6b0b

    ld b, b
    ret nz

    ld b, b
    add b
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
    inc b
    nop
    ld b, $06
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_005_6af3

jr_005_6af3:
    ld [hl], b
    jr nz, jr_005_6b4e

    jr nc, jr_005_6ac5

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_005_6b05

jr_005_6b05:
    ldh [rLCDC], a
    and b
    ld de, $1911

jr_005_6b0b:
    ld de, $0909
    dec c
    add hl, bc
    dec b
    dec b

jr_005_6b12:
    ld b, $04
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    rst $28
    jr jr_005_6b12

    add hl, de
    rst $38
    ld de, $11ff
    ld a, a
    sub c
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    sub c
    rst $30
    sbc d
    ld a, a
    sub d
    cp $13
    rst $38
    inc de
    db $fd
    inc de
    rst $38
    ld de, $15fa
    ld [hl], l
    sbc [hl]
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ld a, e
    add a
    cp e
    rst $00
    ld e, [hl]
    db $e3
    or l
    ei
    sbc [hl]
    rst $38
    ld [hl], b
    and b
    ld [hl], b
    and b
    ld d, b
    or b

jr_005_6b4e:
    ldh a, [$90]
    ldh a, [$90]
    ld hl, sp-$30
    ld l, b
    sbc b
    db $fc
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000

jr_005_6b65:
    ld bc, $0101
    rst $38
    ld d, c
    db $fd
    ld d, e
    ld a, a
    db $d3
    cp a
    db $d3
    db $db
    or a
    rst $30
    cp a
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $30
    inc c
    ei
    inc c
    rst $28
    jr jr_005_6b65

    add hl, sp
    cp l
    ld h, [hl]
    ei
    ld h, $ff
    ld [hl+], a
    ld a, a
    and d
    ld l, a
    or d
    db $db
    or [hl]
    db $dd
    or [hl]
    rst $38
    sub h
    or $62
    db $e4
    ld h, h
    db $ec
    ld b, h
    ret c

    ld c, b
    ld d, b
    ret nc

    ldh a, [$90]
    and b
    and b
    ldh [$a0], a
    nop
    nop
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
    inc b
    dec bc
    ld b, $09
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    nop
    ld [hl], a
    inc hl
    call c, $8877
    nop
    nop
    nop

jr_005_6bcb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    ld bc, $030e
    inc c
    inc bc
    inc b
    rlca
    jr jr_005_6bfa

    db $10
    rrca
    jr nc, @+$21

    jr nz, jr_005_6c10

    and b
    rra
    ldh [$9f], a
    ld h, b
    rst $18
    jr nz, jr_005_6c76

    add d

jr_005_6bfa:
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ld [hl], b
    nop
    jr nc, jr_005_6c06

jr_005_6c06:
    nop
    nop
    ret nz

    jr nz, jr_005_6bcb

    ld a, $f8
    ld b, $e8
    inc b

jr_005_6c10:
    nop
    inc c
    nop
    ld [$0810], sp
    nop
    db $10
    or $99
    xor [hl]
    reti


    ld l, e
    ld e, h
    ld d, a
    ld l, l
    ld h, a
    ld a, l
    ld a, a
    ld a, [hl]
    sbc $97
    sbc l
    sub a
    xor $9f
    cp e
    rst $08
    ld d, [hl]
    rst $28
    xor e
    ld [hl], a
    rst $18
    ccf
    push af
    sbc a
    cp e
    call $e75d
    cp a
    rst $38
    rst $38
    rst $28
    db $dd
    res 7, c
    sub c
    or c
    sub c
    cp c
    inc sp
    ccf
    ccf
    ccf
    ccf
    ld a, [$b884]
    ret nz

    ld hl, sp-$40
    ret nz

    ldh [$c0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$03], a
    ld bc, $0302
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
    ld a, a
    cp a
    cp [hl]
    ld a, a
    rst $38
    ld l, [hl]
    ld l, a
    rst $00
    ld b, a
    rst $00
    rst $20
    rst $08
    rst $38
    rst $38

jr_005_6c76:
    rst $38
    rst $38
    ld [hl], a
    ld sp, hl
    rst $18
    pop af
    rst $38
    ld [hl], c
    dec a
    ld [hl], e
    cp [hl]
    scf
    cp a
    sbc [hl]
    sub a
    sbc l
    sbc [hl]
    sbc a
    ld a, [hl]
    sub l
    rst $30
    dec e
    ld sp, hl
    rra
    rst $18
    ccf
    rst $38
    add hl, hl
    ld a, [$7aaa]
    or d
    push hl
    ld b, l
    ret nz

    ret nz

    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [rNR41], a
    inc bc
    inc c
    rrca
    jr nc, @+$09

    jr @+$04

    inc c
    ld bc, $0006
    ld bc, $0000
    nop
    nop
    ld a, a
    add b
    ei
    nop
    ld sp, hl
    nop
    ld c, c
    nop
    ld bc, $8000
    nop
    ld b, b

jr_005_6cc5:
    add b
    ld b, b
    add b
    ldh [$1f], a
    ld a, [$fe05]
    ld bc, $00ff
    rst $18
    nop
    rra
    nop
    rra
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ld b, b
    ret nz

    jr nc, jr_005_6cc5

    db $10
    ret nz

    jr nz, jr_005_6d02

    ld e, $0b
    inc c
    rlca
    inc b
    dec b
    ld b, $02
    inc bc
    add hl, sp
    add hl, sp
    rla
    rra
    dec bc
    inc c
    ld a, [$f800]
    nop
    ret nc

    nop
    ldh [rP1], a
    ldh a, [rP1]

jr_005_6d02:
    ret


    nop
    ld h, h
    add b
    di
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nz, @+$12

    ld b, b
    jr nz, jr_005_6d5d

    jr nz, jr_005_6d1f

jr_005_6d1f:
    ld b, b
    add b
    ld b, b
    nop
    add b
    nop
    add b
    nop
    add b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    rra
    dec bc
    dec de
    ld a, [bc]
    ld a, [bc]
    dec bc
    add l
    dec c
    sbc l
    dec b
    db $fd
    add l
    cp d
    add $5e
    ld h, d
    dec a
    rst $38
    rst $18
    cp a
    ld l, a
    db $dd
    rst $10
    ld l, l
    db $fc
    ccf
    ld [hl], a
    adc [hl]
    rst $38
    add [hl]
    cp e
    add $3f
    ccf
    scf
    ccf
    cp e

jr_005_6d5d:
    rla
    sub a
    sbc b
    ret c

    rst $08
    rst $28
    rlca
    ld hl, sp+$00

jr_005_6d66:
    ldh a, [rP1]
    ldh [$e0], a
    and b
    ldh [$a0], a
    ld h, b
    ld h, b
    ret nz

    add d
    ret nz

    add e
    nop
    rlca
    nop
    ld b, $01
    nop
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
    nop
    nop
    add b
    add b
    add b
    rst $38
    rst $38
    cp l
    rst $38
    cp e
    db $dd
    db $dd
    ld h, e
    inc hl

jr_005_6d91:
    ld a, [hl]
    ld a, $1c
    nop
    nop
    nop
    nop
    sbc a
    sbc [hl]
    sbc h
    sbc a
    cp l
    rra
    dec hl
    ld a, $6d

jr_005_6da1:
    ld a, [hl]
    rst $38
    inc d
    ld a, e
    inc e
    ccf
    jr jr_005_6df6

    push bc
    res 1, d
    sbc d
    ld a, [bc]
    or $14
    db $f4
    inc d
    db $ec
    jr z, jr_005_6da1

    jr z, jr_005_6d66

    ld l, b
    jr nz, jr_005_6dda

    jr nz, @+$22

    jr nz, jr_005_6dde

    jr nz, jr_005_6de0

    jr nz, jr_005_6de2

    ld b, b
    ld b, b
    ret nz

    ld b, b
    add b
    add b
    jr nz, jr_005_6e0a

    inc h

jr_005_6dcb:
    ld b, b
    inc d
    jr nz, @+$21

    jr nz, @+$21

    jr nz, jr_005_6e12

    ld b, b
    ccf

jr_005_6dd5:
    ld b, b
    ccf
    ld b, b
    rlca
    nop

jr_005_6dda:
    ld bc, $0300
    nop

jr_005_6dde:
    rlca
    nop

jr_005_6de0:
    add hl, de
    nop

jr_005_6de2:
    rst $20
    nop
    cp $01
    db $fd
    inc bc
    ret nz

    jr nz, jr_005_6dcb

    jr jr_005_6dd5

    jr @-$2e

    jr nc, jr_005_6d91

    ld h, b
    ld b, b
    ret nz

    add b
    add b

jr_005_6df6:
    nop
    nop
    dec b
    ld b, $02
    inc bc
    ld bc, $0001
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

jr_005_6e0a:
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    ld h, a
    ld a, b

jr_005_6e12:
    add hl, de
    ld e, $07
    ld b, $01
    ld bc, $01fe
    cp $01
    cp $01
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $01fc
    ld a, [hl]
    add c
    nop
    add b
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
    ld [hl], b
    db $10
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$2f

    inc sp
    dec de
    dec e
    ld b, $07
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    ld a, a
    ld b, d
    ld e, a
    ld h, d
    xor [hl]
    or e
    rst $38
    rst $38
    dec b
    inc hl
    dec c
    ld b, e
    ld c, $41
    rra
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00

jr_005_6e70:
    db $fc

jr_005_6e71:
    nop
    ld a, [hl]
    add b
    rst $18
    ldh [$b7], a
    cp b
    rlca
    ld bc, $0102
    nop
    nop
    rlca
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    add b
    nop
    add b
    add b
    add b
    add b
    nop
    nop
    jr nc, jr_005_6e70

    and b
    ld b, b
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $070b
    ccf
    jr jr_005_6ee2

    jr jr_005_6ecb

    ccf
    dec h
    add hl, sp
    ld a, h
    jr nz, jr_005_6e71

    ld h, b
    rst $18
    ldh [$3f], a
    jr nz, @-$28

    ld e, c
    ld e, l
    db $d3
    and [hl]
    cp [hl]
    ld hl, sp-$08
    add b
    ld c, h
    inc b
    inc sp
    pop hl
    nop
    ld hl, sp+$00
    add b
    add b
    nop

jr_005_6ecb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    sub d
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c

jr_005_6ee2:
    dec c
    ld [hl-], a
    inc hl
    ld b, b
    rlca
    add b
    ccf
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    rlca
    rst $38
    nop
    rst $38
    nop
    cp $01

jr_005_6efe:
    db $fd
    inc bc
    ld a, [$ec06]
    inc e
    or b
    ld [hl], b
    ret nz

    ret nz

    ldh [$e0], a
    ld b, b
    ret nz

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
    sbc a
    ldh [rPCM34], a
    ld a, b
    dec c
    ld c, $02
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld [$07f8], sp
    rst $38
    nop
    cp $01
    ld l, a
    sbc a
    pop af
    pop af
    sbc h
    adc h
    add a
    add e
    jr z, jr_005_6efe

    add b
    inc b

jr_005_6f3c:
    db $fc
    inc bc
    ld a, [$f507]
    dec c
    ld e, b
    cp b
    ldh [$e0], a
    add b
    add b
    inc h
    ld b, d
    ld b, d
    add c
    rst $38
    nop
    db $fd
    inc bc
    ld [hl], d
    adc [hl]
    rst $38
    db $fd
    dec b
    dec b
    dec c
    ld [$813e], sp
    rst $38
    ld bc, $07f9
    db $76
    adc [hl]
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    add b
    add b
    adc l
    adc [hl]
    inc bc
    inc bc
    nop
    nop
    nop
    nop
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
    jr nc, jr_005_6f3c

    db $ec
    ldh a, [$5b]
    ld a, h

jr_005_6f80:
    ld d, [hl]
    ld l, a
    ld e, l
    ld h, e
    ld h, a
    ld a, b
    ld e, a
    ld a, a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $071b
    db $ed
    ld e, $f7
    ld hl, sp-$02
    ld bc, $ffff
    inc l
    inc e
    or b
    ld [hl], b
    ldh [$e0], a
    jr nz, jr_005_6f80

    and b
    ld h, b
    and b
    ld h, b
    ld h, b
    ldh [$a0], a
    ldh [$27], a
    jr c, jr_005_6fca

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
    nop
    nop
    rst $38
    nop
    cp a
    ret nz

    ld e, [hl]
    ld h, c
    dec l
    inc sp
    ld e, $1e
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    pop hl
    nop

jr_005_6fca:
    rst $38
    nop
    cp [hl]
    pop bc
    ld e, l
    ld h, e
    ld a, $3e
    nop
    nop
    ret nz

    ret nz

    ret nz

    ld b, b
    rst $38
    nop
    rst $38
    nop
    db $dd
    db $e3
    inc sp
    ccf
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    cp $80
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
    ret nz

    add b
    ld b, b
    ld b, b
    ld h, b
    ld b, b
    jr nc, jr_005_7020

    jr jr_005_7012

    inc c
    ld [$0404], sp
    ld b, $04
    ldh [$60], a
    jr c, jr_005_7024

    ld c, $06
    inc bc
    ld bc, $0000

jr_005_7012:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    sbc b
    sub b

jr_005_7020:
    ldh a, [rSVBK]
    jr nc, @+$12

jr_005_7024:
    stop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld h, b
    jr nz, @+$3a

    jr c, @+$10

    ld b, $03
    ld bc, $0706
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    jr jr_005_7061

    ld h, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    rst $08
    ld a, [c]
    ld c, [hl]
    ld a, [c]
    ld c, [hl]
    di
    db $ed
    di
    rst $18
    rst $38
    cp $c1
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    xor b

jr_005_705a:
    rrca
    ld [$180f], sp
    ld d, a
    cp b
    rst $38

jr_005_7061:
    rst $38
    ld [$f0f0], sp
    nop

jr_005_7066:
    ldh a, [rP1]
    jr nc, jr_005_705a

    jr z, @-$06

    jr z, jr_005_7066

    ld h, h
    db $fc
    and h
    db $fc
    ld h, e
    ccf
    ld [hl], b
    ccf
    ld h, b
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $04
    inc b
    inc b
    call z, Call_000_38c8
    ld hl, sp+$06
    inc b
    inc e
    jr jr_005_70fd

    ld h, b
    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld b, b
    add b
    add b
    add a
    add a
    cp $f8
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ldh a, [$c0]
    nop
    nop
    nop
    nop
    ld bc, $0601
    ld [bc], a
    inc c
    inc b
    nop
    nop
    ld hl, sp-$08
    ld [$3008], sp
    db $10
    ldh [$60], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
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
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
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
    rlca
    ld [$0000], sp
    nop
    nop
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_70fd:
    nop
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    stop
    ld de, $1312
    inc d
    dec d
    ld d, $00
    rla
    jr jr_005_712e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1e
    ld e, $1e
    rra
    jr nz, jr_005_7148

    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_712e:
    nop
    nop
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_005_7160

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_005_7178

    ld [hl-], a

jr_005_7148:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_005_7188

    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_005_7160:
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    nop
    nop
    nop
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    cpl
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

jr_005_7178:
    ld e, c
    ld e, d
    ld e, e
    nop
    nop
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]

jr_005_7188:
    ld h, a
    ld l, b
    ld l, c
    nop
    ld l, d
    ld l, e
    ld l, h
    nop
    nop
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    nop
    nop
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
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld a, b
    ld a, b
    adc $86
    add e
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    ret nz

    ld b, b
    nop
    nop
    nop

jr_005_71ff:
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
    ld bc, $0000
    jr c, jr_005_7248

    ld h, h
    ld b, h
    ld h, h
    ld b, h
    jp nz, $c282

    add d
    add d
    ld [bc], a
    add c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [$60]
    sbc b
    ldh a, [$ac]
    ret c

    cp h
    ret z

    cp [hl]
    call nz, $c6bb
    rst $38
    ld b, d
    ld h, b
    jr nz, jr_005_726f

    db $10
    db $10
    db $10
    jr jr_005_724c

    ld [$0c08], sp
    inc b

jr_005_7248:
    inc b
    inc b
    ld b, $02

jr_005_724c:
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $04
    ld b, $04
    ld a, [bc]
    inc c
    rrca
    ld [$080f], sp
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld a, a
    ld b, c
    ld e, [hl]

jr_005_726f:
    ld h, c
    ld a, a
    jr nz, jr_005_72b2

    jr nz, @+$41

    jr nz, jr_005_72a6

    jr nc, jr_005_72b8

    db $10
    rla
    jr jr_005_71ff

    ld [bc], a
    jp $c181


    add c
    pop hl

jr_005_7283:
    ld b, b
    or b
    ld h, b
    ldh a, [rNR41]
    ret c

    jr nc, jr_005_7283

    stop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld h, b
    jr nz, jr_005_729d

jr_005_729d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_72a6:
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    nop
    nop
    nop
    ld bc, $0601

jr_005_72b2:
    rlca
    ld [$100f], sp
    nop
    rst $38

jr_005_72b8:
    db $fc
    inc bc
    cp $01
    nop
    ccf
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [rP1]
    ret nz

    ret nz

    ccf
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$06
    di
    ld [$13ec], sp
    nop
    nop
    nop
    rlca
    nop
    ld hl, sp+$00
    ret nz

    nop
    rlca
    ld b, [hl]
    jr c, jr_005_7328

    ret nz

    rst $38
    nop
    nop
    nop
    nop
    db $fc
    nop
    inc bc
    nop
    ld a, a
    nop
    add b
    nop
    nop
    db $fc
    nop
    ld hl, sp+$07
    rla
    jr @+$21

    db $10
    cpl
    jr nc, jr_005_7342

    ldh [$1f], a
    ld h, b
    rrca
    db $10
    rlca
    ld [$e403], sp
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    db $10
    db $10
    db $10
    db $10
    jr nz, @+$22

    jr nz, jr_005_733c

    rra
    ld [$0c0b], sp
    rrca
    inc b
    dec b
    ld b, $07
    ld [bc], a
    ld [bc], a
    inc bc

jr_005_7328:
    inc bc
    ld bc, $0101
    db $ec
    jr @-$02

    ld [$0cf6], sp
    cp $04
    ei
    ld b, $ff
    ld [bc], a
    rst $38
    ld bc, $817e

jr_005_733c:
    jr nz, @+$22

    jr nc, jr_005_7350

    db $10
    db $10

jr_005_7342:
    jr @+$0a

    ld [$0c08], sp
    inc b
    adc h
    inc b
    call nz, $0084
    nop
    nop
    nop

jr_005_7350:
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rrca
    rrca
    jr nc, jr_005_739e

    ld b, b
    ld a, a
    add b
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
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
    ld a, a
    add b
    rlca
    ld hl, sp-$7d
    ld a, h
    jp $e33c


    inc e
    di
    inc c
    ei
    inc b
    rst $38
    nop
    pop af
    ld c, $c3
    inc a
    jp $8c3c


    ld [hl], e
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    db $fd
    ld [bc], a
    or $09
    rst $38
    nop

jr_005_739e:
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $08
    jr nc, jr_005_739e

    ld [$04f0], sp
    add b
    ld [bc], a
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rst $10
    jr z, jr_005_7426

    inc d

jr_005_73bc:
    ld bc, $811a
    ld b, $e0
    ld bc, $0070
    sbc b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    add b
    add b
    nop
    add b
    nop
    ld b, b

jr_005_73d6:
    nop
    jr nz, jr_005_73d9

jr_005_73d9:
    stop
    db $10
    rst $38
    add b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ccf
    jr nz, jr_005_7414

    jr nc, jr_005_7406

    db $10
    rla
    jr @+$11

    ld [$82e6], sp
    db $76
    jp nz, $41fb

    cp c
    ld h, c
    db $ed
    jr nc, jr_005_73d6

    jr nc, @-$07

    jr @-$0f

    jr jr_005_73fd

jr_005_73fd:
    rra

jr_005_73fe:
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    add b
    rst $38

jr_005_7406:
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_005_7414:
    nop
    rst $38
    nop
    rst $38
    nop
    cp $02
    db $fc
    ld a, a
    add b
    inc a
    jp $cc32


    ld [$00f0], sp
    ret nz

jr_005_7426:
    nop
    nop
    nop
    nop
    nop
    nop
    db $e3
    db $10
    rst $00
    jr nz, jr_005_73fe

    jr nz, jr_005_73bc

    ld b, b
    adc b
    ld b, c
    nop
    add c
    nop
    add c
    nop
    add c
    ldh [rNR34], a
    ret nz

    ccf
    ld h, [hl]
    rst $38
    jr c, @+$01

    ret nc

    ldh [$60], a
    add b

jr_005_7448:
    ret nz

    nop
    add b
    nop
    nop
    add c
    nop
    ld b, c
    nop
    jr nz, jr_005_7454

    sub b

jr_005_7454:
    rlca
    ret c

    and a
    ld e, b
    ld b, e
    inc a
    ld b, e
    inc a
    inc b
    ld a, [bc]
    nop
    dec b
    nop
    add h
    nop
    add d
    ld b, b
    and d
    ld l, [hl]
    sub c
    ld l, $d1
    ld l, $d1
    nop
    ld [bc], a
    nop
    ld bc, $8100
    nop
    add b
    nop
    ld b, b
    ld d, b
    jr nz, jr_005_74a5

    db $10
    xor [hl]
    db $10
    db $10
    ld [$0890], sp
    ld e, b
    add h
    jr c, jr_005_7448

    sbc b
    ld h, h
    adc h
    ld [hl], d
    adc h
    ld [hl], d
    call nz, Call_000_003a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $003c
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_74a4:
    nop

jr_005_74a5:
    nop
    nop
    rst $00
    push bc
    jr c, jr_005_74a4

    nop
    dec bc
    inc c
    rlca
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $f801
    ldh [rNR10], a
    ldh [rNR10], a
    rst $30
    inc c
    db $fd
    ld b, $fb
    ld b, $fe
    inc bc
    db $fd
    inc bc
    rst $38
    add c
    cp [hl]
    pop bc
    rst $38

Call_005_74cb:
    ld b, b
    and b
    ld a, a
    ldh [$3f], a
    ret nc

    ccf
    ldh a, [$1f]
    add sp, $1f
    ld a, b
    adc a
    db $f4
    adc a
    cp h
    rst $00
    ld [bc], a
    db $fc
    ld c, $f8
    dec bc
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    ld [hl+], a
    db $fd
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl-], a
    ld [de], a
    ei
    ld [de], a
    rst $38
    ld [de], a
    ld a, [hl]
    sub e
    ld a, [hl]
    and e
    ld a, $e3
    ld h, $fb
    ld [hl+], a
    rst $38
    ld hl, $3583

Jump_005_74ff:
    add e
    ld a, l
    add e
    cp l
    jp DMA_COPY_HIGH_RAM


    ret nz

    rst $38
    ret nz

    rst $38
    and c
    rst $38
    add b

jr_005_750d:
    nop
    add b
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    ret nz

    dec c
    ld a, $32
    ccf
    dec sp
    scf
    dec h
    ccf
    dec sp
    cpl
    cpl
    dec de
    rrca
    rra
    ld e, $17
    sub $e9
    cp $e9
    ld [hl], $fd
    add $fd
    or $fd
    cp $9f
    db $dd
    adc a
    push hl
    ld c, a
    sub a
    ld [$8c53], sp
    ld c, e
    add h
    ld c, c
    add [hl]
    jr z, jr_005_750d

    inc h
    jp $c324


    inc h
    jp Jump_000_3ac4


    call nz, $ec3b
    inc de

jr_005_7552:
    db $ec
    inc de
    add sp, $15
    add sp, $15
    ld [hl], b
    adc l
    ld [hl], b
    adc l
    nop
    ld [$0c00], sp
    nop

jr_005_7561:
    sbc h
    add h
    ld e, d
    add $39
    rst $00
    jr c, @-$17

    jr jr_005_7552

    jr jr_005_756d

jr_005_756d:
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, $04
    ld a, d
    ld a, h
    add d
    cp $01
    ld a, a
    nop
    nop
    nop
    nop

jr_005_757f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_005_7589

jr_005_7589:
    ld h, b
    ld b, b
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld hl, $4140
    add b
    ld b, b
    add b
    nop
    add b
    nop
    add b
    add b
    nop
    sub b
    nop
    ret nc

    nop
    pop af
    nop
    pop af
    nop
    pop hl
    nop
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
    ret nz

    jr nz, jr_005_757f

    jr c, jr_005_7561

    stop
    stop
    jr nz, jr_005_7607

    jr nz, jr_005_75c9

jr_005_75c9:
    ld b, b
    nop
    ld b, b
    ld a, a
    jr nz, jr_005_760e

    jr nz, jr_005_7610

    db $10
    rra
    ld [$0c0b], sp
    dec b
    ld b, $03
    inc bc
    ld bc, $7a00
    rst $00
    sbc $63
    cp l
    ld h, e
    xor a
    ld [hl], c
    cp $71
    rst $18
    ld [hl], b
    ld [hl], a
    ret c

    rst $28
    ret c

    ld b, d
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld [hl+], a
    rst $38
    ld hl, $21ff
    rst $38
    jr nc, @+$01

    jr c, @+$01

    inc [hl]

jr_005_7607:
    rst $38
    inc sp
    rst $38
    ld a, [hl+]
    rst $38
    sub c
    rst $38

jr_005_760e:
    ld l, c
    rst $18

jr_005_7610:
    ld e, h
    rst $38
    db $eb
    rst $30
    or c
    ldh [rSVBK], a
    ret nc

    ld b, b
    ret nz

    jp nz, $e0c5

    ld b, b
    jr nz, @-$1e

    and b
    ldh [$e0], a
    ret nz

    ld hl, sp-$10
    nop
    nop
    nop

jr_005_7629:
    nop
    nop
    nop
    ld e, $16
    ld e, $16
    ld c, $07
    rrca

Call_005_7633:
jr_005_7633:
    rlca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    rlca
    ld h, a

jr_005_763d:
    daa
    ld [hl], l
    daa
    scf
    ld h, e
    ld d, a
    di
    rst $10
    di
    rst $10
    di
    rst $30
    db $d3
    scf
    push de
    inc d
    db $e3
    inc d
    db $e3
    inc d
    db $e3
    inc e
    db $e3
    jr jr_005_763d

    db $10
    rst $28
    jr nc, jr_005_7629

    jr nz, jr_005_7633

    ld [hl], h
    adc a
    inc [hl]
    ld c, a
    inc [hl]
    ld c, a
    inc [hl]
    ld c, a
    inc h
    ld d, a
    inc h
    ld d, a
    ld [hl+], a
    ld d, e
    ld [bc], a
    ld h, e
    rst $20
    jr jr_005_76e4

    adc b
    ld [hl], l
    adc b
    ld [hl], l
    adc b
    ld a, l
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    scf
    nop
    rla
    nop
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_005_768c

jr_005_768c:
    add b
    jr nz, jr_005_768f

jr_005_768f:
    jr nz, jr_005_7691

jr_005_7691:
    jr nz, jr_005_76d3

    jr nz, jr_005_7695

jr_005_7695:
    ld b, b
    nop
    ld e, b
    db $10
    ld l, b
    ret nz

    db $10
    inc l
    ccf
    jr nz, jr_005_76df

    jr nz, jr_005_76e1

    jr nz, jr_005_76e3

    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    ld c, b
    add b
    inc c
    ret nz

    ld h, $c0
    inc de
    ldh [rTIMA], a
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld hl, $2300
    nop
    ld [hl], a
    nop
    ld a, a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    nop
    ld d, b
    nop
    and b
    nop
    ldh [rP1], a

jr_005_76d3:
    ldh [$80], a
    ld b, b
    add b
    ld b, b
    rrca
    adc a
    ccf
    or b
    nop
    nop
    nop

jr_005_76df:
    nop
    nop

jr_005_76e1:
    nop
    nop

jr_005_76e3:
    nop

jr_005_76e4:
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    or $f4
    ei
    call z, $fefd
    rst $28
    jp $81c3


    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    ld a, a
    ret nc

    ld a, a
    ld [hl], b
    rst $38
    jp nc, $f2bf

    rst $18
    jp nc, $727f

    ccf
    ld [hl], d
    ccf
    dec l
    cp $2b
    db $fc
    rla
    db $fc
    dec d
    cp $0b
    cp $0a
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    add a
    cpl

jr_005_771e:
    rra
    rra
    cpl

jr_005_7721:
    ccf
    ld e, e
    ld a, h
    db $f4
    ld a, b
    and b
    ldh a, [rLCDC]
    ldh [$c0], a
    ret nz

    add b
    ld b, b
    add b
    add b
    ret nz

    add b
    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_773b:
    ld b, b
    ld b, $03
    ld bc, $0103
    nop
    nop
    nop
    ld b, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nc

    jr nc, jr_005_771e

    dec [hl]
    ld sp, $e1f1
    pop hl
    nop
    ld a, [bc]
    ld bc, $1024
    nop
    nop
    nop
    nop
    nop
    and b
    sub $d0
    or [hl]
    ld l, b
    db $fc
    ret c

    ld l, h
    jr c, jr_005_77ce

    ld a, b
    jr z, jr_005_77d1

    jr c, jr_005_773b

    ld [hl], b
    ld [bc], a
    inc hl
    ld [bc], a
    inc hl
    ld [bc], a
    ld h, e
    ld [bc], a
    ld b, e
    ld [bc], a
    ld b, e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld c, $0f
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$a0], a
    nop
    xor h
    nop
    db $fc
    nop
    db $fd
    nop
    ld a, [$fc01]
    ld [bc], a
    ld hl, sp+$04
    ldh [rNR23], a
    and b
    db $10
    ld b, b
    jr nz, jr_005_7721

    ld b, b
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
    db $10
    rra
    ld [$080f], sp
    rrca
    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
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
    jp Jump_000_1fff


    pop hl

jr_005_77ce:
    rrca
    pop af
    rrca

jr_005_77d1:
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $c0fe
    rst $38
    jr c, jr_005_781b

    jr nc, jr_005_77fe

    ld hl, sp-$20
    ret c

    jr nc, @-$06

    db $10
    ld hl, sp+$10
    inc a
    ret z

    inc c
    ld hl, sp+$06
    db $fc
    xor $1c
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_77fe:
    add b
    nop
    rst $18
    add b
    rst $38
    ld h, b
    ld a, e
    inc e
    rra
    rlca
    rst $38
    rst $38
    ldh [rLCDC], a
    ld [hl-], a
    rra
    inc sp
    rra
    dec de
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    db $fd
    rlca
    cp $c7
    rst $30

jr_005_781b:
    dec a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $80ff
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    sbc a
    rst $38
    sub b
    rst $38
    add b
    pop bc
    ret nz

    add h
    ld [hl], b
    add d
    cp b
    ret nz

    ld e, h
    ldh [$7e], a
    ldh [$9f], a
    ldh [$6f], a
    ldh a, [rNR41]
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
    ld b, b
    add b
    ret c

    jr c, jr_005_78b0

    db $10
    inc bc
    ld bc, $020f
    dec a
    ccf
    ld e, l
    inc sp
    ld e, $0e
    inc c
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0306
    inc c
    rlca
    dec bc
    rrca
    dec e
    ld c, $36
    jr @+$62

    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    inc sp
    di
    db $f4
    rst $10
    xor b
    ccf
    ld hl, $4e3f
    ld a, a
    rla
    rra
    dec hl
    inc a
    ld c, h
    ld a, b
    sub $f8
    rra
    rst $38
    push af
    ld hl, sp+$24
    ld hl, sp+$42
    db $fc
    rra
    ldh [$d8], a
    rst $20
    ld [hl], b
    jr c, jr_005_78ab

    ld [$88c8], sp
    db $fc
    ld h, h
    ld a, h
    inc e
    ld b, $02
    add b
    ld h, b
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

jr_005_78ab:
    nop
    inc a
    inc a
    nop
    nop

jr_005_78b0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0401
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    inc bc
    inc bc
    rra
    inc e
    ld a, h
    ld h, b
    ldh [$80], a
    ld b, $fc
    inc bc
    cp $87
    rst $38
    ld a, c
    ld a, c
    ldh a, [$f0]
    rst $38
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ldh [$80], a
    ret nc

    ldh [$f8], a
    ld [hl], b
    ld a, b
    jr jr_005_794d

    jr nz, jr_005_790f

    jr nz, jr_005_7921

    jr nz, jr_005_7923

    db $10
    rra
    db $10
    rla
    jr jr_005_7918

    ld [$0c1b], sp
    ccf
    inc c
    dec bc
    rlca
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    db $fc
    nop
    call c, $ff7f

jr_005_790f:
    ccf
    ld hl, sp-$01
    cp h
    ld a, a
    jr c, jr_005_7935

    dec b
    rrca

jr_005_7918:
    inc bc
    ld b, $06
    ld [bc], a
    ld e, $ff
    dec c
    cp $f7

jr_005_7921:
    ld hl, sp+$01

jr_005_7923:
    cp $ff
    rst $38
    ld c, e
    cp h
    jr c, jr_005_793a

    jr nz, jr_005_792c

jr_005_792c:
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    ret nz

jr_005_7935:
    rst $38
    cp [hl]
    ld a, a
    dec b
    inc bc

jr_005_793a:
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    pop bc
    nop
    dec a
    jp $fffe


    rrca
    ldh a, [$be]
    ret nz

    ld l, [hl]

jr_005_794d:
    jr nc, @-$22

    ld h, b
    ld a, c
    ret nz

    or b
    ret nz

    ld h, b
    add b
    pop bc
    nop
    add a
    inc bc
    dec c
    ld b, $fc
    ld [hl], a
    db $e4
    rst $00
    inc b
    add a
    inc e
    rlca
    db $fc
    ld a, a
    or h
    rst $08
    ld a, [$8507]
    inc bc
    add a
    rst $38
    adc d
    db $fc
    sub d
    db $fc
    and c
    cp $c7
    rst $38
    ret


    cp $50
    rst $38
    ld d, b
    rst $38
    ld a, [$7ee2]
    ld e, $0a
    ld b, $02
    ld [bc], a
    di
    di
    dec de
    ld a, [bc]
    adc e
    add hl, bc
    adc c
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    jr nz, @-$5e

    jr nz, jr_005_79a4

    ld b, $1c
    jr jr_005_79d1

    jr nz, jr_005_7a03

    ld b, b

jr_005_79a4:
    jr nc, @+$22

    jr jr_005_79b8

    ld c, $0c
    inc bc
    ld [bc], a
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

jr_005_79b8:
    nop
    nop
    add b
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0103
    ld bc, $0603
    inc bc
    dec [hl]
    ld e, $62
    ccf
    pop bc

jr_005_79d1:
    ld a, a
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $feff
    nop
    rst $38
    nop
    cp a
    ret nz

    ld l, a
    ldh a, [$3b]
    db $fc
    ld d, b
    ldh [$c0], a
    add b
    add b
    nop
    ld b, $02
    ld b, $02
    add h
    ld b, $c6
    inc b
    ld b, $04
    inc b
    ld b, $0d
    ld b, $0c
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_7a03:
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ret nz

    nop
    add sp, $70
    ld e, b
    jr nc, jr_005_7a3d

    ld [$0f0f], sp
    inc c
    dec b
    cpl
    rlca
    ld a, d
    cpl
    di
    ld a, [hl]
    rra
    ld [$103c], sp
    ld a, b
    jr nz, @-$0e

    ret nz

    ldh [$80], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    rlca

jr_005_7a3d:
    ld bc, $0102
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    rst $38
    and b
    rst $38
    ld d, c
    rst $38
    adc $7f
    xor b
    ld a, a
    ldh [$3f], a
    ld d, b
    ccf
    ld [hl], b
    rra
    pop hl
    pop bc
    and e
    pop bc
    add e
    pop bc
    ld b, [hl]
    add d
    ld b, d
    add [hl]
    adc h
    inc b
    add [hl]
    ld c, $1f
    add hl, bc
    ret nz

    ld b, b
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    ld [hl], b
    ld b, b
    inc a
    jr nc, jr_005_7ab2

    inc e
    ld [hl], b
    ld h, b
    and b
    ret nz

    ret nz

    add b
    ld h, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $070a
    inc e
    rrca
    ld [bc], a
    rlca
    ld d, $0f
    inc a
    rra

jr_005_7ab2:
    ld h, h
    ccf
    ld c, b
    rst $38
    adc b
    rst $38
    ld [$10ff], sp
    rst $38
    inc bc
    rst $38
    nop
    rst $38

jr_005_7ac0:
    nop

jr_005_7ac1:
    rst $38
    nop
    rst $38
    jr nz, @+$01

    inc l
    di
    cpl
    ldh a, [rNR24]
    ldh a, [$ef]
    ldh a, [rNR31]
    db $fc
    ld d, $ff
    ld de, $10ff
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $fc
    rlca
    db $fc
    rlca
    ld a, [$3a07]
    rst $00
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    inc bc
    add b
    ld c, h
    add e
    jr nc, jr_005_7ac1

    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ret c

    cp a
    nop
    ret nz

    jr nz, jr_005_7ac0

    nop
    ldh [rNR10], a
    ldh [$08], a
    ldh a, [rDIV]
    ld hl, sp+$02
    db $fc
    ld bc, $79fe
    cpl
    ld a, l
    daa
    cpl
    inc hl
    scf
    ld de, $193b
    ccf
    dec h
    ld h, a
    ld [hl+], a
    db $e3
    ld b, d
    ret nz

    nop
    ld h, b
    add b
    pop de
    ldh [$ab], a
    ld [hl], b
    rst $30
    add hl, de
    ld a, [hl-]
    rrca
    sbc a
    adc h
    cp $88
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    add b
    ret nz

    add b
    nop
    rlca
    nop
    rra
    nop
    add hl, hl
    ld e, $39
    ld c, $15
    ld c, $1f
    ld b, $1f
    dec b
    ld e, $04
    inc e
    inc b
    call c, $1904
    ld de, $3011
    ld [hl], c
    jr nz, @-$1e

    ld b, b
    ret nz

    add b
    nop
    nop
    ld bc, $0100
    ld bc, $0000
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    add b
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
    ld bc, $3001
    jr nz, jr_005_7b9b

    db $10
    ld c, $0d
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    ld h, b
    ld a, a
    add b
    rst $38
    ld d, b
    ccf
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$10ff], sp

jr_005_7b9b:
    rst $38
    db $10
    rst $38

jr_005_7b9e:
    db $10
    rst $38
    jr nz, @+$01

    ld hl, $41ff
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    add [hl]
    rst $38
    jr jr_005_7b9e

    sbc b
    ldh a, [$98]
    ldh a, [$98]
    ldh a, [rNR10]
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp-$20
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    add c
    rst $38
    add e
    cp $86
    db $fc
    add h
    db $fc
    adc h
    ld hl, sp+$5c
    add sp, $7c
    ret z

    ld l, [hl]
    call nz, $1fbe
    jr jr_005_7bff

    rra
    rlca
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $02ff
    rst $38
    db $ed
    rst $38
    add $ff
    cp d
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    jp nz, $43c3

jr_005_7bff:
    pop bc
    jp $8181


    ld bc, $0101
    inc bc
    ld bc, $0306
    dec c
    ld b, $f7
    ld c, h
    ei
    ld b, [hl]
    ld a, [$fd47]
    ld b, a
    ld a, [$ef4d]
    ld e, b
    rst $38
    ld [hl], b
    rst $18
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $18
    ldh [$b7], a
    ld a, b
    db $ed
    ld e, $fb
    rlca
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    rst $30
    rrca
    xor $18
    ret c

    jr nc, @+$03

    ld bc, $0001
    ld bc, $0700
    inc bc
    ld c, $07
    db $fc
    rst $38
    inc c
    rlca
    ld b, $03
    nop
    nop
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    nop
    nop
    ld bc, $0302
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    nop
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_005_7cb8

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_005_7cc8

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
    inc h
    dec h
    ld h, $27
    jr z, jr_005_7ce1

jr_005_7cb8:
    ld a, [hl+]
    dec hl
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    ld l, $2f
    jr nc, jr_005_7cf8

    ld [hl-], a

jr_005_7cc8:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_005_7d08

    ld a, [hl-]
    dec sp
    inc a
    nop
    nop
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_005_7ce1:
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    nop
    nop
    nop
    ld c, [hl]
    ld c, a
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

jr_005_7cf8:
    ld e, l
    ld e, [hl]
    nop
    nop
    nop
    ld e, a
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

jr_005_7d08:
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    nop
    nop
    nop
    nop
    nop
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    nop
    nop
    nop
    nop
    nop
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
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

Jump_005_7fff:
    rst $38
