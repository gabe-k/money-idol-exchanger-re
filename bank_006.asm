; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

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
    ld [bc], a
    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    nop

jr_006_4018:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0601
    inc b
    ld [$3008], sp
    inc de
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ccf
    jr nz, jr_006_4018

    nop
    nop
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
    di
    inc bc
    inc c
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    inc b
    nop
    inc b
    inc b
    rst $38
    add h
    inc b
    ret nz

    inc b
    ei
    inc b
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
    ld b, $02
    ld bc, $0080
    ldh a, [rP1]
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
    add c
    add b
    ld b, [hl]
    ld b, b
    jr z, jr_006_40af

    jr nc, jr_006_40a1

jr_006_40a1:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    add b
    nop
    nop
    nop
    nop
    nop

jr_006_40af:
    nop
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
    nop
    nop
    nop
    nop
    inc bc
    rrca
    inc c
    inc a
    jr nz, jr_006_4126

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
    rst $38
    rst $38
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $04
    dec c
    ld [$171b], sp
    ccf
    ld a, $ef
    ret nc

    or e
    db $fc
    sbc l
    ld c, $3e
    rlca
    ld b, a
    jr c, jr_006_415b

    ldh [$c1], a
    add b
    ld b, $00
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
    and b
    rra
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
    ld a, a
    add b
    sbc a
    ld h, b
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
    cp $00
    rst $38
    nop
    rst $38
    nop

jr_006_4126:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    db $10
    ld [$0408], sp
    add [hl]
    inc bc
    adc $01
    pop af
    nop
    ldh a, [rP1]
    ld a, b
    nop
    jr c, jr_006_4140

jr_006_4140:
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    rrca
    nop
    add b
    add b
    ld b, b
    nop
    ld b, b
    ld b, b
    jr nz, jr_006_4151

jr_006_4151:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a

jr_006_415b:
    jr jr_006_415d

jr_006_415d:
    ld b, $00
    ld bc, $0000
    ld bc, $0201
    ld [bc], a
    dec b
    inc b
    dec bc
    dec bc
    dec e
    dec d
    add hl, sp
    add hl, hl
    ld [hl-], a
    inc sp
    ld [hl], h
    ld l, b
    ld hl, sp-$70
    xor b
    ld [hl], b
    db $d3
    ldh [$bf], a
    ret nz

    ld a, [hl]
    add b
    ld hl, sp+$04
    rst $30
    ld [$0008], sp
    stop
    pop hl
    nop
    add e
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    add b
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, e
    nop
    ld [hl], d
    ld bc, $0243
    inc bc
    inc bc
    jp nz, $e13d

    ld e, $e3
    inc e
    rst $20
    jr @-$03

    rlca
    ld a, h
    add a
    rst $30
    db $fc
    ld l, a
    sbc a
    rlca
    ld hl, sp-$07
    ld b, $fd
    ld [bc], a
    sbc $01
    ld b, [hl]
    add c
    and e
    ret nz

    ld b, b
    ldh [$e0], a
    ldh [$e7], a
    nop
    di
    nop
    ldh a, [rP1]
    or b
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_006_41d0

jr_006_41d0:
    adc b
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
    add b
    nop
    nop
    jr nz, jr_006_4203

    stop
    stop
    db $10
    db $10
    ld [$0800], sp
    nop
    ld [$0448], sp
    nop
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
    ld h, e
    ld h, d
    ld b, l

jr_006_4203:
    ld b, [hl]
    rst $00
    call nz, $8487
    adc e
    adc h
    ld c, $09
    rrca
    add hl, bc
    dec c
    dec bc
    xor $10
    ei
    inc h
    or a
    ld l, b
    ld l, a
    ret nc

    sbc a
    ldh a, [rIE]
    and b
    ccf
    ldh [rIE], a
    ld b, b
    nop
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    db $fd
    ld [bc], a
    db $eb
    inc d
    ei
    inc d
    rst $18
    inc [hl]
    ld [bc], a
    inc bc
    ld b, h
    ld b, $c6
    inc b
    ld h, [hl]
    add h
    ld a, [hl]
    add h
    ld a, [hl]
    add h
    cp $84
    cp $84
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
    nop
    ld h, b
    nop
    and b
    ld h, b
    ld [hl], b
    jr nz, jr_006_4280

    jr nc, jr_006_4294

    ld [de], a
    scf
    ld a, [de]
    scf
    ld a, [de]
    ccf
    ld a, [de]

jr_006_425e:
    ccf
    ld a, [de]
    nop
    jr nz, jr_006_426b

    db $10
    adc [hl]
    db $10
    rst $20
    jr jr_006_425e

    ld a, [bc]
    db $fd

jr_006_426b:
    ld a, [bc]
    ld a, [$ff0d]
    dec c
    ret nz

    nop
    ld [hl], c
    add b
    cp e
    ld b, b
    rst $18
    jr nz, @-$0f

    db $10
    rst $30
    ld [$08f7], sp
    ld a, e

jr_006_427f:
    add h

jr_006_4280:
    ld b, b
    inc b
    ld b, b
    inc b
    ret nz

    inc b
    db $e4
    ld [bc], a
    db $e4
    ld [bc], a
    ldh [rSC], a
    ldh [rSC], a
    ldh a, [rSC]
    nop
    nop
    nop
    nop

jr_006_4294:
    nop
    nop
    nop
    nop
    nop
    stop
    stop
    add hl, de
    add hl, bc
    ld d, $00
    nop
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
    ld c, a
    rst $08
    jr nc, jr_006_42b1

jr_006_42b1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$c0]
    jr nz, jr_006_427f

    jr nz, jr_006_42c1

jr_006_42c1:
    nop
    nop
    jr c, jr_006_42cd

    rla
    rrca
    db $10
    rrca
    db $10
    rlca
    jr jr_006_42d4

jr_006_42cd:
    ld [$0806], sp
    nop
    inc b
    inc b
    ld a, [bc]

jr_006_42d4:
    inc b
    ld a, [bc]
    inc b
    ld sp, hl
    db $fc
    ld bc, $00f0
    pop bc
    nop
    add e
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
    dec c
    adc [hl]
    scf
    cp b
    db $dd
    db $e3
    ld c, $0b
    rrca
    ld a, [bc]
    dec sp
    ld a, $dd
    and $77
    adc h
    rst $18
    inc a
    ld h, a
    db $fc

jr_006_42fe:
    cp [hl]
    push bc
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $18
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, jr_006_42fe

    jr nc, @+$01

    inc [hl]
    cp l
    db $76
    rst $18
    db $76
    or $5f
    db $ed
    ld e, a
    db $fd
    ld c, a
    push af
    ld c, [hl]
    db $dd
    ld h, [hl]
    ei
    add [hl]
    cp e
    add $ff
    jp $e3df


    xor l
    di
    or $99
    ei
    call c, Call_006_7fbf
    ldh [rLCDC], a
    ldh [$c0], a
    add b
    ret nz

    ld h, b
    add b
    ldh [rP1], a
    ldh a, [$80]
    ld [hl], b
    ret nz

    ldh [$c0], a
    ccf
    ld a, [de]
    ei
    ld e, $77
    ld e, [hl]
    scf
    ld a, [hl]
    ld e, [hl]
    ccf
    ld [hl], a
    cpl
    rst $38
    daa
    or a
    ld l, a
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    ld a, a
    adc l
    jp hl


    sbc a
    db $db
    cp a
    cp a
    rst $38
    rst $10
    rst $28
    rst $38
    add h
    ld a, e
    add $ff
    ld b, d
    or $4b
    cp l
    ld l, e
    rst $38
    add hl, hl
    ld a, a
    xor c
    cp a
    jp hl


    ldh a, [rSC]
    di
    inc bc
    or $0c
    db $eb
    inc e
    rst $10
    add hl, sp
    or a
    ld a, c
    ei
    ld e, l
    ld a, a
    rst $00
    ld hl, sp-$08
    adc [hl]
    ld b, $03
    ld bc, $0080
    ret nc

    ldh [rIE], a
    ccf
    ld a, [c]
    ld bc, $c038
    rrca
    db $10
    rlca
    ld [$c8c7], sp
    ld a, a
    jr c, jr_006_43a8

    rlca
    di
    ret nz

    cp a
    rst $38
    sbc $60
    rst $38
    nop
    cp l
    nop
    jr jr_006_43a6

jr_006_43a6:
    nop
    nop

jr_006_43a8:
    nop
    nop
    ldh a, [$f0]
    cp $fe
    ccf
    rrca
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld a, h
    db $fc
    inc bc
    dec c
    inc bc
    ld a, [hl-]
    ld b, $74
    inc c
    add sp, -$28
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    ld a, b
    ccf
    ld b, b
    rra
    jr nz, jr_006_43f3

    inc de
    rlca
    rrca
    jr jr_006_4408

    ld h, a
    ld a, a
    ld a, [$0ffc]
    inc bc
    cp h

jr_006_43f3:
    inc c
    or e
    ld [hl], e
    call z, Call_000_37cf
    jr c, @+$01

    ret nz

    rst $38
    nop
    ccf
    nop
    sbc [hl]
    rrca
    rst $30
    ld a, b
    sbc a
    ldh [rIE], a
    nop

jr_006_4408:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    dec b

jr_006_4414:
    rst $38
    dec b
    ei
    rlca
    rst $38
    inc bc
    db $fd
    inc bc
    rst $30
    rrca
    ret c

    jr c, @+$01

    db $10
    rst $30
    jr jr_006_4414

    jr jr_006_44a2

    adc h
    push af
    adc [hl]
    cp d
    rst $00
    ld a, l
    ld b, e
    ld e, a
    ld h, b
    cp l
    ld h, [hl]
    cp h
    ld h, a
    db $ed
    scf
    jp c, $ef37

    dec de
    or $0f
    cp l
    rst $00
    ld a, h
    rst $38
    db $fd
    ld a, e

jr_006_4442:
    ld sp, hl
    pop af
    db $d3
    ld sp, hl
    ld sp, hl
    rst $18
    rst $18
    sbc a
    rst $18
    sbc a
    rst $10
    sbc a
    sub e
    sbc a
    ret nz

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
    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ld e, a
    ld l, a
    dec sp
    ld c, a
    inc de
    dec bc
    dec bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $cf03
    rst $00
    rst $08
    rst $00
    and $cf
    rst $28
    cp $ff
    cp $f6
    cp $66
    cp $96
    ld l, h
    xor $f9
    cp [hl]
    ld sp, hl
    rst $38
    cp b
    rst $38
    ld hl, sp-$31
    ld hl, sp+$77
    ret c

    cp $51
    rst $18
    ld [hl], c
    rst $20
    add c
    jp nz, $c282

    add d
    push bc
    add l
    push bc
    add l
    jp z, $ca8a

    adc d
    ld d, h
    sub h
    ldh a, [$fc]

jr_006_44a2:
    rst $18
    rst $28
    rst $30
    cp b
    ld l, a
    inc l
    ld [hl-], a
    inc de
    ld sp, $1811
    ld [$0808], sp
    rst $28
    ld [hl], b
    cp a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ret nz

    ld l, a
    ld [hl], b
    inc e
    jr jr_006_4442

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$78
    ld c, $0e
    rlca
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
    ret nz

    ret nz

    ld hl, sp+$38
    rra
    rlca
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
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    jr nc, jr_006_4510

    rlca
    rlca
    dec e
    ld e, $28
    jr nc, jr_006_4567

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld h, b
    ld b, b
    jr c, jr_006_4530

jr_006_4510:
    and b
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
    rlca
    ld bc, $0e3e
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    dec de
    rlca
    ld a, [hl]
    rra
    pop hl
    pop hl
    nop
    nop

jr_006_4530:
    rst $38
    nop
    db $fd
    inc bc
    xor $1e
    ld [hl], h
    ld a, [$c2bc]
    call Call_000_3632
    ld sp, hl
    rst $38
    add sp, $61
    pop hl
    jp $76c2


    inc [hl]
    inc e
    inc c
    inc b
    ld h, b
    ld b, b
    or e
    di
    inc c
    ei
    inc b
    xor a
    or b
    rst $18
    ld d, b
    ld h, c
    jr z, jr_006_458b

    add hl, de
    add hl, de
    sub $dd
    inc hl
    rst $30
    rrca
    db $ed
    ld e, $a7
    ld a, a
    ld a, [$d527]
    dec sp
    rst $38

jr_006_4567:
    rst $38
    ld b, e
    rst $20
    ldh a, [$f9]
    rrca
    rst $38
    inc c
    inc bc
    sbc h
    adc e
    res 1, h
    call z, $67c7
    jp $8ce2


    cp b
    ret nz

    ld e, c
    ldh [rIE], a
    rst $38
    ret nz

    ld b, b
    ld b, b
    ret nz

    ret z

    add h
    sub h
    jr z, jr_006_459d

    ld c, b
    ld a, [hl+]

jr_006_458b:
    sub [hl]
    ld [hl+], a
    ld d, $20
    nop
    ld bc, $0101
    nop
    nop
    ld b, c
    pop bc
    ld [bc], a
    inc b
    add d
    add b
    inc b
    nop

jr_006_459d:
    nop
    nop
    nop
    ld [hl], l
    adc h
    adc h
    ld sp, hl
    ld a, c
    ldh a, [rP1]
    ld [$0008], sp
    ld b, $21
    ld hl, $0043
    ld b, b
    rst $28
    pop af
    cp l
    db $e3
    cp d
    rst $20
    push af
    ld l, [hl]
    ld e, e
    db $fc
    rst $30
    ld hl, sp-$51
    ldh a, [$bf]
    ld h, c
    db $f4
    inc d
    add sp, $28
    xor $28
    rst $18
    ld d, b
    rst $18
    ld d, b
    xor a
    or b
    cp l
    and e
    ld d, a
    ld l, [hl]
    ld [$0f08], sp
    rrca
    jr jr_006_45de

    or b
    db $10
    and b
    ld h, b
    ld b, b
    ldh [$e0], a
    sub e

jr_006_45de:
    di
    inc c
    rlca
    rlca
    db $fc
    rst $38
    ld bc, $0002
    ld bc, $0000
    nop
    db $e3
    pop hl
    ld d, $f7
    ld [$00c0], sp
    ld hl, sp-$20
    sbc a
    ld a, h
    di
    rrca
    ld a, [hl]
    add c
    inc e
    ldh [$f8], a
    nop
    jr jr_006_4600

jr_006_4600:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld hl, sp-$79
    add a
    ret nz

    ld b, b
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $ff00
    ld bc, $fefe
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$12

    ld h, b
    jr nz, @-$3e

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
    rra
    jr jr_006_463a

    rlca
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_463a:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ldh a, [$80]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    dec hl
    inc l
    dec l
    ld h, $36
    inc hl
    inc de
    ld de, $1019
    ld [$fc08], sp
    ld hl, sp-$80
    add b
    rst $38
    nop
    db $ed
    ld e, $df
    inc sp
    ldh a, [$e0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $b13c

    ld a, a
    ld a, [c]
    rst $18
    dec h
    ld a, $69
    ld a, $50
    ld a, a
    pop hl
    ld a, a
    and [hl]
    rst $38
    nop
    nop
    rst $38
    rst $38
    add e
    ld bc, $071e
    ld a, c
    ld e, $64
    ld hl, sp-$7b
    ld hl, sp+$05
    ei
    or d
    ld a, l
    cp $ff
    db $dd
    db $e3
    ld b, l
    add e
    ld d, $0f
    ld e, d
    inc a
    ld l, b
    ldh a, [$84]
    ld hl, sp-$80
    add b
    ld a, h
    ei
    ld d, a
    adc h
    add d
    ld b, $07
    ld [bc], a
    ld bc, $0303
    ld bc, $0101
    nop
    nop
    ld b, b
    add b
    pop hl
    ld b, b

jr_006_46c6:
    nop
    ld bc, $0000
    nop
    nop
    inc bc
    ld bc, $0f96
    ld bc, $c200
    ld bc, $0325
    ld [hl], $0f
    ld a, [hl-]
    rst $18
    push hl
    ld a, a
    adc a
    rst $38
    ccf
    or $41
    rst $38
    rst $38
    rst $38
    jr c, jr_006_46c6

    ld h, b
    ret nz

    ret nz

    add b
    add b
    nop
    nop

jr_006_46ed:
    nop
    nop
    nop
    ld a, a
    ld a, e
    pop hl
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    jr c, jr_006_472e

    ld l, $3c
    rst $38
    inc b
    rst $38
    jp nz, Jump_000_3f7f

    rra
    add hl, bc
    rrca
    inc b
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    ld c, $00
    inc c
    nop
    ld hl, sp+$10
    db $fc
    inc l
    db $e3
    db $e3
    ldh a, [rNR41]
    ldh [$30], a
    ld a, c
    db $10
    rrca
    ld bc, $1e1e
    ld l, h
    ld h, h
    sbc b
    adc b
    jr nc, jr_006_473a

    ld h, b
    jr nz, jr_006_46ed

    ld b, b

jr_006_472e:
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

jr_006_473a:
    nop
    nop
    ld bc, $0601
    rlca
    ret nz

    add b
    ld h, b
    ld b, b
    jr nc, jr_006_4766

    jr @+$12

    inc e
    jr jr_006_47c1

    ld l, h
    cp e
    add $fd
    inc bc
    ld bc, $1900
    ld bc, $0125
    dec b
    ld hl, $1801
    ld bc, $0000
    nop
    add b
    nop
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38

jr_006_4766:
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld [bc], a
    rst $38
    inc c
    rst $38
    jr c, @+$01

    ld c, b
    rst $38
    ld de, $11ff
    rst $38
    dec c
    rst $38
    ld b, $ff
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR10], a
    ldh [$08], a
    ldh a, [rP1]
    ld hl, sp+$04
    ld hl, sp-$80
    db $fc
    nop
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $fffc
    rst $30
    rst $20
    add l
    add [hl]
    call z, $d887
    adc a
    rst $38
    rst $38
    cp e
    rst $00
    cp [hl]
    call c, $e4ce
    ld d, b
    add h
    inc [hl]
    jr c, jr_006_481f

    ldh a, [rIE]
    cp [hl]
    di
    pop bc
    add b
    nop
    nop
    nop
    nop

jr_006_47c1:
    nop
    nop
    nop
    inc b
    nop
    inc b
    inc b
    inc c
    ld [$88d8], sp
    ld hl, sp+$50
    ld [hl], b
    jr nc, @+$3d

    rla
    ld a, $13
    ld e, $13
    dec d
    dec de
    rra
    add hl, bc
    rra
    add hl, bc
    rrca
    add hl, bc
    dec bc
    dec c
    add $82
    cp $7a
    or $0e
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, h
    add b
    ld a, [hl]
    add b
    dec hl
    add hl, de
    ld e, $0a
    inc b
    inc c
    inc c
    inc b
    ld b, $02
    ld b, $02
    inc bc
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $04
    dec bc
    inc c
    rra
    db $10
    ccf
    jr nz, jr_006_4896

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_006_481f:
    ld bc, $01fe
    db $fd
    inc bc
    rst $38
    ld b, $fc
    ld [$10f8], sp
    or b
    ld h, b
    ldh [$c0], a
    add b
    nop
    ret nz

    add b
    add a
    inc bc
    rrca
    inc c
    rra
    db $10
    rla
    jr jr_006_484a

    ld [$0c0b], sp
    ld b, $05
    ret nz

    ld a, a
    ldh [rIE], a
    and b
    ld a, a
    ret nc

    ccf
    ret nc

    ccf

jr_006_484a:
    ld hl, sp+$7f
    call z, $8687
    add e
    dec b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    add d
    db $fc
    add b
    cp $81
    cp $40
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    and [hl]
    ld a, a
    ld a, [$011f]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0181
    ld b, e
    add c
    dec h
    jp $fe67


    ld hl, sp-$20
    or b
    db $10
    jr c, jr_006_4896

    inc e
    jr jr_006_4898

    inc b
    add a
    ld [bc], a
    add a
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_4896:
    nop
    nop

jr_006_4898:
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    jr nc, jr_006_48c2

    jr jr_006_48b4

    rra
    rra
    inc de
    inc e
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    ld c, $05
    rst $38
    ld a, h

jr_006_48b4:
    sbc a
    ldh [rIE], a
    nop
    db $fd
    nop
    db $ec
    db $10
    ld a, h
    db $10
    ld a, b
    db $10
    cp $80

jr_006_48c2:
    sbc a
    add b
    add a
    add b
    pop bc
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
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
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld h, b
    jr nz, jr_006_494d

    jr nz, jr_006_494f

    jr nz, jr_006_48f1

jr_006_48f1:
    nop
    nop
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
    ld bc, $080c
    jr @+$12

    jr nc, jr_006_4926

    ld h, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    add b
    add c
    nop
    inc bc
    ld bc, $03ff
    db $fd
    ld b, $ff
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $28
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_006_4926:
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
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $03fd
    db $fd
    inc bc
    ld a, [$fd07]
    ld b, $fb
    inc c
    add d
    inc bc
    rrca
    ld bc, $030c
    ld e, a
    add b
    rst $38
    ret nz

    cp a
    ld h, b
    rst $28

jr_006_494d:
    jr nc, @+$01

jr_006_494f:
    jr nc, @+$05

    cp $07
    cp $ff
    ld a, [$4eb5]
    rst $38
    rlca
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $30
    add hl, bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    ld a, [hl]
    ret nz

    call c, $bc60
    ret c

    ld [hl], b
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld bc, $0301
    ld bc, $0207
    ld b, $06
    jr jr_006_4998

    inc e
    ld [$103f], sp
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop

jr_006_4998:
    ld a, h
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    ld a, $10
    ld a, $10
    ld a, $20
    dec a
    ld hl, $217d
    ld a, c
    ld hl, $427b
    ld a, e
    ld b, d
    ld e, b
    db $10
    ret c

    sub b
    sbc b
    sub b
    sbc b
    db $10
    sbc b
    db $10
    sbc b
    db $10
    jr jr_006_49ce

    add hl, de
    db $10
    ret nz

    ld b, b
    ld h, b
    ld b, b
    ld h, b
    ld b, b
    inc hl
    ld b, b
    ld [hl], h
    jr nz, jr_006_4a3f

    jr nz, jr_006_49fd

    inc h

jr_006_49ce:
    jr nc, @+$25

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
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    jr nc, jr_006_49f2

    jr nc, jr_006_49f4

    jr nc, @+$12

    jr nc, jr_006_49f8

    jr jr_006_49f2

    jr jr_006_49f4

    jr @+$0a

    inc e
    inc b
    inc bc
    ld [bc], a

jr_006_49f2:
    ld b, $04

jr_006_49f4:
    inc c
    ld [$0808], sp

jr_006_49f8:
    jr @+$12

    jr nc, jr_006_4a1c

    ld h, c

jr_006_49fd:
    ld b, b
    ld b, e
    ld b, c
    rlca
    ld [bc], a
    ld c, $04
    inc e
    ld [$1038], sp
    ld [hl], b
    jr nz, @-$1e

    ld b, b
    ret nz

    add b
    add b
    nop
    add a
    nop
    rlca
    nop

jr_006_4a14:
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop

jr_006_4a1c:
    rra
    nop
    rra
    nop
    rst $38
    nop

jr_006_4a22:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $30
    jr jr_006_4a22

    jr nc, jr_006_4a14

    ld h, b
    ld a, a
    ret nz

    rst $38
    add b
    rst $30
    nop
    rst $20
    nop
    rst $00

jr_006_4a3f:
    nop
    or a
    ld a, b
    db $db
    ld l, h
    rst $38
    ld b, [hl]
    ld a, a
    push bc
    cp a
    call nz, $84ff
    rst $38
    add h
    rst $38
    add h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    xor $f1
    rst $38
    ccf
    rst $10
    ld e, b
    rst $18
    ld c, b
    xor $30
    cp a
    ld a, h
    rst $10
    ld l, a
    ld a, l
    add $bb
    add $fe
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $0103
    ld c, $0f
    rst $30
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_006_4a7e:
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld h, b
    rst $18
    jr nc, jr_006_4a7e

    jr @+$01

    ld [$0ccb], sp
    rst $08
    inc b
    add l
    ld b, $c0
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld sp, hl
    nop
    db $fd
    nop
    rst $38
    ld bc, $01ff
    rst $30
    ld b, h
    or $44
    or $84
    rst $28
    adc e
    db $ec
    adc h
    ret c

    sbc b
    ldh [$a0], a
    ld b, b
    ld b, b
    add hl, de
    db $10
    add hl, de
    db $10
    add hl, de
    db $10
    reti


    ret nc

    reti


    ret nc

    ld sp, hl
    ldh a, [$f9]
    sub b
    db $fd
    sub b
    jr z, jr_006_4af2

    jr z, jr_006_4af4

    jr jr_006_4af6

    jr c, jr_006_4ad8

    inc a
    jr jr_006_4b07

    jr jr_006_4b09

    jr jr_006_4b0b

    jr @+$0e

    inc b
    inc c
    inc b
    ld c, $02
    ld b, $02

jr_006_4ad8:
    ld b, $02
    rlca
    ld bc, $0107
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
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop

jr_006_4af2:
    nop
    nop

jr_006_4af4:
    nop
    nop

jr_006_4af6:
    nop
    nop
    nop
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    nop
    nop
    nop
    nop

jr_006_4b07:
    nop
    nop

jr_006_4b09:
    nop
    nop

jr_006_4b0b:
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
    nop
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_006_4b57

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_006_4b67

    nop
    ld a, [hl+]
    dec hl
    inc l
    nop
    nop
    nop
    nop
    dec l
    ld l, $2f
    jr nc, jr_006_4b7c

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_006_4b8c

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_006_4b57:
    nop
    nop
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
    ld c, c
    ld c, d
    ld c, e

jr_006_4b67:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    nop
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
    ld e, [hl]
    ld e, a

jr_006_4b7c:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    nop
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
    ld l, [hl]

jr_006_4b8c:
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    xor [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    db $10
    db $e3
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    add hl, bc
    ld c, $37
    jr c, @+$51

    ld [hl], b
    rrca

jr_006_4c45:
    rrca
    jr nc, jr_006_4c87

    rst $08

jr_006_4c49:
    ldh a, [$3f]

jr_006_4c4b:
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    add b
    ld [hl], b
    di
    sbc e
    ld a, h
    db $ec
    jr jr_006_4c45

    jr @-$16

    jr jr_006_4c49

    jr jr_006_4c4b

    jr jr_006_4c69

    jr jr_006_4c79

    db $ec
    nop

jr_006_4c69:
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
    add b
    ld b, b
    ld b, b
    inc hl
    ld [hl+], a

jr_006_4c79:
    inc d
    inc d
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    rst $20
    adc e

jr_006_4c87:
    ld c, h
    rla
    ld hl, sp+$77
    jr jr_006_4cc4

    jr jr_006_4cc6

    jr jr_006_4cc0

    jr nc, @+$31

    jr nc, jr_006_4cad

    ld hl, sp-$1c
    inc e
    ld a, [$fd06]

jr_006_4c9b:
    inc bc
    cp $01
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
    ret nz

jr_006_4cad:
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_006_4c9b

    jr jr_006_4cb5

jr_006_4cb5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_4cc0:
    ld bc, $0201
    inc bc

jr_006_4cc4:
    nop
    nop

jr_006_4cc6:
    inc bc
    inc bc
    inc b
    rlca
    jr jr_006_4ceb

    jr nz, jr_006_4d0d

    ret nz

    rst $38
    nop
    rst $38
    nop

jr_006_4cd3:
    rst $38
    cp a
    ret nz

    ld a, a
    add b
    rra
    ldh [rTAC], a
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

jr_006_4ceb:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add sp, $18
    add sp, $18
    add sp, $18
    add sp, $18
    add sp, $18
    add sp, $18
    ret nc

    jr nc, jr_006_4cd3

    jr nc, jr_006_4d34

    jr nc, jr_006_4d36

    jr nc, jr_006_4d38

    jr nc, jr_006_4d3a

    jr nc, jr_006_4d3c

jr_006_4d0d:
    jr nc, @+$31

    jr nc, jr_006_4d39

    scf
    jr nz, jr_006_4d53

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
    ret nz

    db $f4
    inc c
    ld a, [$fd06]

jr_006_4d29:
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_006_4d34:
    nop
    nop

jr_006_4d36:
    nop

jr_006_4d37:
    nop

jr_006_4d38:
    nop

jr_006_4d39:
    nop

jr_006_4d3a:
    add b
    add b

jr_006_4d3c:
    ld h, b
    ldh [$d0], a
    jr nc, jr_006_4d29

    jr jr_006_4d37

    inc c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop

jr_006_4d53:
    nop
    nop
    rst $38
    nop

jr_006_4d57:
    rst $38
    nop

jr_006_4d59:
    rst $38
    nop

jr_006_4d5b:
    rst $38
    nop

jr_006_4d5d:
    rst $38
    nop

jr_006_4d5f:
    rst $38
    add b
    rst $38
    ld b, b
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    ld bc, $d0fe
    jr nc, jr_006_4d57

    jr nc, jr_006_4d59

    jr nc, jr_006_4d5b

    jr nc, jr_006_4d5d

    jr nc, jr_006_4d5f

    ld sp, $31d2
    pop de
    ld [hl-], a
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld [bc], a
    nop
    ld [bc], a
    jr nz, @+$41

    jr nz, jr_006_4df7

    jr nz, jr_006_4df9

    jr nz, jr_006_4dfb

    jr nz, @+$41

    jr nz, jr_006_4dff

    jr nz, @+$41

    jr nc, jr_006_4de3

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    nop

jr_006_4de3:
    rst $38
    ld a, [$fa06]
    ld b, $fd
    inc bc
    db $fd
    inc bc

jr_006_4dec:
    db $fd
    inc bc
    ld a, [hl-]
    add $04
    db $fc
    jr jr_006_4dec

    jr nz, jr_006_4e35

    inc e

jr_006_4df7:
    rra
    inc bc

jr_006_4df9:
    inc bc
    nop

jr_006_4dfb:
    ld bc, $0100
    nop

jr_006_4dff:
    inc bc
    ld bc, $0002
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rra
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld hl, sp+$7f
    rra
    rlca
    nop
    add b
    nop
    add b
    push de
    ld [hl-], a
    ld [hl+], a
    db $e4
    ld [hl+], a
    db $e4
    ld [hl+], a
    db $e4
    ld b, e
    call nz, $8483
    ld b, l
    add d
    ld b, b
    add e
    nop

jr_006_4e35:
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
    ldh a, [rP1]
    ld e, $e0
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    ld [bc], a
    dec b
    inc bc
    inc b
    dec bc
    inc b
    ld a, [bc]
    dec b
    ld a, [de]
    dec b
    db $10
    rra
    sbc b
    rrca
    adc h
    rlca
    add a
    dec bc
    ld b, c
    adc b
    ld d, b
    adc b
    sub b
    ld [$08b0], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $0000
    nop
    nop
    stop
    rst $38
    ld bc, $1eff
    rst $38
    ldh a, [$e3]
    ld b, d
    add c
    nop
    add c
    add c
    ld b, b
    nop
    ld b, b
    ld h, b
    ldh [$80], a
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ld b, $01
    ld b, $00
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0180
    nop
    add e
    ld bc, $0082
    add d
    nop
    add d
    add b
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    db $10
    ld h, b
    inc e
    ld h, b
    rrca
    ld [hl], b
    ld b, a
    jr c, jr_006_4f0c

    scf
    db $eb
    rla
    and [hl]
    ld b, c
    cp a
    ld b, b
    ld e, [hl]
    ld hl, $1f27
    rst $18
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    pop hl
    ld e, $3e
    pop bc
    pop bc

jr_006_4ed9:
    cp $fc
    db $e3
    cp h
    jp $c6f9


    cp a
    ld b, b
    add a
    ret nz

    ld sp, $c30e
    inc a
    ld bc, $25ff
    db $db
    ld a, [hl]
    add c
    rst $38
    ld bc, $03ed
    dec b
    ld [bc], a
    jr z, @+$52

    ld l, h
    sub b
    sbc h
    ldh [$ef], a
    ldh a, [$fb]
    db $fc
    cp $ff
    rst $38
    rst $08
    rst $08
    add a
    jr nz, jr_006_4f16

    ld d, b
    jr nz, jr_006_4ed9

    add hl, hl
    or l
    ld c, d

jr_006_4f0c:
    ld l, l
    sub d
    dec de
    db $e4
    and [hl]
    reti


    inc c
    di
    jr nz, jr_006_4f56

jr_006_4f16:
    nop
    ld h, b
    nop
    ld h, b
    ld de, $2060
    sub c
    ld [bc], a
    sub c
    add b
    ld [de], a
    inc b
    ld [de], a
    nop
    ret nz

    add b
    ld b, b
    add b
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$020f], sp
    ld bc, $0100
    add b
    ld bc, $c100
    ld b, c
    ld h, d
    pop hl
    db $e4
    ld hl, $91e4
    db $f4
    rst $38
    rrca

jr_006_4f56:
    scf
    rst $08
    rst $08
    ccf
    or $1f
    ld e, a
    cp [hl]
    cp $fe
    sbc $ba
    cp $98
    rst $08
    add a
    add h
    add a
    adc [hl]
    adc h
    db $fc
    db $fc
    sbc h
    cp $88
    rst $38
    add d
    sbc l
    adc l
    sub e
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    add b
    ld b, b
    nop
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld b, b
    nop
    add a
    add a
    adc [hl]
    adc a
    ld a, [hl]
    db $fc
    inc a
    db $fc
    sbc b
    ld a, [hl]
    ret nz

    ccf
    add a
    ld c, c
    add l
    set 6, d
    db $fd
    db $fd
    ld a, [$fa75]
    cp [hl]
    ld [hl], a
    rst $38
    or l
    cp a
    or l
    cp a
    cp c
    ccf
    add hl, sp
    nop
    ld e, $08
    inc de
    and b
    inc de
    sub b
    inc hl
    ret nz

    inc hl
    and h
    ld b, e
    ld l, b
    add [hl]
    rst $18
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
    nop
    nop
    ld a, b
    ld a, b
    xor b
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld b, $07
    ld b, $07
    db $10
    rra
    jr nz, jr_006_5027

    ld b, b
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
    ld l, c
    db $fc
    ld d, $fe
    add hl, bc
    rst $38
    inc b
    rst $38
    ld b, $ff
    add hl, bc
    rst $38
    dec [hl]
    ei
    ld e, d
    rst $20
    rst $38
    ld e, b
    db $fc
    ld e, b
    db $ec
    sbc b
    ld c, [hl]
    ld hl, sp+$3f
    ld hl, sp-$61
    ld hl, sp+$7b
    db $fc
    dec sp
    db $fc
    xor e
    ld [hl], a
    ld e, h
    inc a
    rra
    nop
    jr nz, jr_006_503b

    add e
    ld a, h
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    add b
    nop
    add e

jr_006_5027:
    nop
    add l
    inc bc
    rlca
    add c
    nop
    nop
    rrca
    rrca
    inc c
    rrca
    rlca
    inc c
    ld b, b
    nop
    nop
    nop
    add b
    nop

jr_006_503a:
    add b

jr_006_503b:
    nop
    nop
    nop
    ld hl, sp-$08
    jr jr_006_503a

    ldh a, [rNR23]
    ret


    or $36
    inc a
    jr c, jr_006_504a

jr_006_504a:
    add b
    ld a, a
    ld h, c
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    cp a
    add hl, de
    ld a, [hl]
    inc de
    ld a, l
    ld d, $ba
    dec e
    scf
    dec de
    ccf
    rra
    inc de
    ccf
    ld a, h
    ccf
    cp e
    inc a
    db $ed
    ld [hl], e
    ld l, [hl]
    rst $38
    rst $30
    ld hl, sp-$42
    pop bc

jr_006_506e:
    ld a, l
    add e

jr_006_5070:
    ld a, [c]
    rst $38

jr_006_5072:
    rrca
    rst $38

jr_006_5074:
    db $f4
    inc c
    rst $38
    rst $38
    ret c

    ccf
    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    jr nz, jr_006_506e

    jr nz, jr_006_5070

    jr nz, jr_006_5072

    jr nz, jr_006_5074

    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    dec b
    rlca
    dec b
    rlca
    rra
    rra
    jr nz, jr_006_50e1

    rst $08
    ldh a, [rP1]
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    cp $07
    db $fc
    adc e
    db $fc
    ld c, a
    ld hl, sp-$51
    ld a, b
    or h
    rst $08
    ld a, b
    adc a
    add sp, $1f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ret nc

    ccf
    ret nc

    ccf
    dec e
    cp $06
    rst $38
    inc bc
    rst $38
    inc bc

jr_006_50cb:
    rst $38
    ld b, $ff
    ld a, [bc]
    rst $38
    ld d, $fb
    ld e, $f3
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, b
    add b
    call c, Call_000_3be0
    db $fc
    rlca
    rst $38
    nop

jr_006_50e1:
    rst $38
    nop
    rst $38
    dec bc
    inc b
    rlca
    inc b
    dec b
    ld b, $0d
    ld b, $1a
    rlca
    rst $28
    rra
    ldh a, [rIE]
    jr nz, @+$01

    add sp, $10
    ldh a, [rNR10]
    ret nc

    jr nc, jr_006_50cb

    jr nc, jr_006_511d

    ldh a, [$fd]
    di
    ld c, $ff
    inc b
    rst $38
    nop
    nop
    ld [bc], a
    ld bc, $070b
    inc l
    rra
    or b
    ld a, a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    or b
    ld a, a
    ldh [rIE], a
    db $10
    rst $38
    jr @+$01

    inc d

jr_006_511d:
    rst $38
    ld a, [hl+]
    rst $30
    dec a
    db $e3
    ld e, a
    pop hl
    ld b, $ff

jr_006_5126:
    ld bc, $01ff
    rst $38

jr_006_512a:
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    rst $38
    inc bc
    cp $b8
    ld a, a
    or $0f
    db $fd
    inc bc
    cp $01
    rst $38
    ld bc, $01ff
    db $fd
    inc bc

jr_006_5142:
    rst $38
    inc bc
    jr nz, jr_006_5126

    jr nz, @-$1e

    jr nz, jr_006_512a

    and b
    ldh [rNR41], a
    ldh [$3f], a
    rst $38
    ldh [rIE], a
    rra
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
    ret nz

    ret nz

    jr nz, jr_006_5142

    sub b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    ld [$080f], sp
    rrca
    db $10
    rra
    inc bc
    inc bc
    inc c
    rrca
    inc sp
    inc a
    rst $00
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
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
    cp $01
    cp $01
    sbc a
    ld a, b
    sbc e
    ld a, h
    add l
    ld a, [hl]
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    ret nc

    ccf
    ldh a, [$1f]
    ldh a, [$1f]
    ret nc

    ccf
    pop af
    rst $38
    ld de, $d2ff
    ccf
    rst $28
    ld e, $2d
    di
    ld e, a
    pop hl
    cp a
    pop bc
    cp $81
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld b, d
    rst $38
    jp $a57e


    ld a, [hl]
    ld h, b
    rst $38
    ld d, b
    rst $38
    or b
    rst $18
    ld l, b
    sbc a
    ld hl, sp+$0f
    db $f4
    rrca
    ld a, [$fd07]
    inc bc
    ld b, $ff
    add hl, bc
    rst $38
    ld c, $f9
    rla
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$2f]
    ldh a, [$3f]
    ldh [rP1], a
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    and d
    ld a, a
    db $e3
    ld a, $d5
    ld a, $f7
    inc e
    ld a, [hl]
    pop bc
    cp a
    ret nz

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
    add l
    cp $8b
    db $fc
    ld c, a
    ld hl, sp-$29
    ld a, b
    ld l, a
    ldh a, [$be]
    pop hl
    db $db
    rst $20
    cp h
    rst $00
    cp $03
    cp $03
    ei
    rlca
    call c, $a33f
    ld a, h
    rst $18
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    call c, $d23c
    ld a, $e9
    rra
    db $f4
    dec bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_006_5253:
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
    ret nc

    jr nc, jr_006_5253

    db $10
    db $10
    rra
    jr nz, jr_006_52a7

    jr nz, jr_006_52a9

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [$3f], a
    ret nz

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

    ld a, a
    add b
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
    rst $38
    nop
    rrca
    ldh a, [$3f]
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
    rst $38
    nop
    ld a, [c]
    rrca
    ei

jr_006_52a7:
    rlca
    ei

jr_006_52a9:
    ld b, $fb
    ld b, $fd
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    pop af
    rrca
    rst $38
    nop
    ld a, a
    add b
    rst $28
    ldh a, [$7f]
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    inc a
    push de
    ld a, $7f
    rst $28
    ldh [$80], a
    ld bc, $0300
    ld bc, $0306
    dec b
    rlca
    rst $38
    ld bc, $03fd
    rst $38
    rst $38
    db $e3
    ld a, a
    sbc h
    rst $38
    ld h, b
    rst $38

jr_006_52e0:
    add b
    rst $38
    nop
    rst $38
    ld e, a
    ldh [$df], a
    ldh [$eb], a
    rst $30
    rst $38
    rst $38
    inc e
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $db
    inc a
    cp a
    ld [hl], a
    db $e3
    ret nz

    add b
    nop
    ldh [$c0], a
    jr nc, jr_006_52e0

    sub b
    ldh a, [$58]
    ldh a, [$fe]
    ld bc, $877b
    rst $38
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
    push af
    adc [hl]
    ld l, b
    sbc a
    ld hl, sp-$01
    jr jr_006_532b

    jr jr_006_532d

    jr jr_006_532f

    jr c, @+$21

    ld h, b
    ccf
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf

jr_006_532b:
    ret nz

    rra

jr_006_532d:
    ldh [rIF], a

jr_006_532f:
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp-$18
    jr jr_006_532f

    ld [$0cf4], sp
    db $fc
    inc b
    ld a, [$fd06]
    inc bc
    cp $01
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
    add b
    add b
    add b
    add b
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    db $10
    rra
    db $10
    rra
    db $10
    rra
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
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
    jp $823e


    ld a, [hl]
    ld b, $fc
    ld b, $fc
    ld [bc], a
    cp $83
    ld a, [hl]
    pop bc
    ccf
    db $fc
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
    add b
    nop
    add b
    add b
    dec c
    rlca
    ld a, [bc]
    rrca
    ld a, [de]
    rrca
    ld [de], a
    rra
    inc d
    rra
    inc d
    rra
    inc d
    rra
    inc d
    rra
    jr c, @+$01

    jr z, @+$01

    jr z, @+$01

    add hl, hl
    rst $38
    add hl, hl
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    ld a, $ff
    ld b, e
    rst $38
    cp b
    rst $38
    ld b, h
    rst $38
    ld b, d
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld c, b
    ld hl, sp+$2c
    ld hl, sp-$5c
    db $fc
    and h
    db $fc
    ld d, h
    db $fc
    ld d, h
    db $fc
    ld d, h
    db $fc
    ld d, h
    db $fc
    ld bc, $0300
    ld bc, $0302
    ld [bc], a
    inc bc
    ld b, $03
    ld b, $03
    dec b
    ld b, $05
    ld b, $df
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
    sbc a
    ld h, b
    rrca

jr_006_5401:
    ldh a, [rIF]
    ldh a, [rLCDC]
    ret nz

    ret nz

    ld b, b
    and b
    ld h, b
    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    jr nc, jr_006_5401

    db $10
    ldh a, [rNR10]
    jr nz, jr_006_5455

    jr nz, jr_006_5457

    jr nz, jr_006_5459

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$fe]
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    ret nz

    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
    add b
    add b
    add b
    inc d

jr_006_5455:
    rra
    inc d

jr_006_5457:
    rra
    inc d

jr_006_5459:
    rra
    inc d
    rra
    ld a, [de]
    rrca
    ld a, [bc]
    rrca
    dec c
    rlca
    inc b
    rlca
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    jr z, @+$01

    db $10
    rst $38
    nop
    rst $38
    add b
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld b, d
    rst $38
    inc a
    rst $38
    add c
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, h
    db $fc
    ld d, h
    db $fc
    sub h
    db $fc
    sub h
    db $fc
    inc l
    ld hl, sp+$28
    ld hl, sp+$58
    ldh a, [$90]
    ldh a, [rTIMA]
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $06
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    inc c
    rst $38
    ldh a, [rIE]
    ld h, b
    ccf
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$f0]
    db $10
    add sp, $18
    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
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
    ld b, $07
    ld [$0a09], sp
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
    ld c, $0f
    db $10
    ld de, $0012
    nop
    inc de
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    nop
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
    jr z, @+$2b

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
    inc l
    dec l
    ld l, $2f
    jr nc, jr_006_5574

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $37
    jr c, jr_006_558e

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
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
    ld b, c
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
    nop
    nop
    nop
    nop

jr_006_5574:
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_006_558e:
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
    nop
    nop
    nop
    ld c, $69
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
    ld de, $7611
    ld [hl], a
    nop
    nop
    ld a, b
    add hl, de
    ld a, c
    ld de, $7a11
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    ld de, $1111
    add e
    nop
    nop
    add h
    add l
    ld de, $1111
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    ld de, $1111
    adc a
    nop
    nop
    nop
    ld a, h
    ld a, h
    ld a, e
    rlca
    ld a, [hl]
    ld bc, $007f
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18
    db $f4
    inc c
    rst $38
    inc bc
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
    rra
    ld h, b
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
    rst $38
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    db $ec
    inc e
    ld a, [$fd06]
    inc bc
    cp $01
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
    ret nz

    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_006_5639

jr_006_5639:
    nop
    rrca
    rrca
    inc e
    rra
    inc de
    rra
    db $10
    rra
    ld [$080f], sp
    rrca
    ld [$000f], sp
    nop
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld hl, sp-$08
    rlca
    rst $38
    nop
    rst $38
    ldh a, [rIE]

jr_006_5662:
    rrca
    rst $38
    ld [hl], b
    adc a
    ld a, a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_006_5662

    ld [$86f8], sp
    cp $61
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
    inc bc
    ld [bc], a
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
    ld a, l
    ld b, h
    add e
    ld a, h

jr_006_5697:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, Call_000_33cc
    ld h, e
    sbc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_56c3:
    nop
    ld bc, $0601
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e01
    rrca
    ld [hl], b
    ld a, a
    add e
    rst $38
    inc c
    rst $38
    ld bc, $0601
    rlca
    jr c, jr_006_571d

    rst $08
    rst $38
    ld sp, $c7fe
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$f0], a
    ldh a, [$08]
    ld hl, sp-$18
    ld hl, sp+$18
    ld hl, sp-$18
    jr jr_006_56c3

    jr nc, @-$2e

    jr nc, jr_006_5697

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
    rrca
    db $10
    rra
    jr nz, jr_006_5747

    ld c, $0e
    jr nc, jr_006_574a

    ld b, b
    ld a, [hl]
    add b
    cp $00
    cp $02
    db $fc
    ld b, $f8
    ld e, $e0
    rrca
    ld [hl], b
    rlca
    ld a, b
    inc bc

jr_006_571d:
    ld a, h
    ld bc, $007e
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
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
    ret nz

    rra
    ldh [rIE], a
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

jr_006_5747:
    nop
    add sp, $18

jr_006_574a:
    db $f4
    inc c
    ld a, [$fd06]
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$040f], sp
    rlca
    inc b
    rlca
    inc b
    rlca
    add h
    add a
    ld b, d
    jp $63a2


    jp nc, Jump_000_0033

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
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $f0fe
    rrca
    sub b
    ld a, a
    add sp, $1f
    or $0f
    ld sp, hl
    rlca
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc b
    or a
    ld b, a
    ld hl, sp+$37
    ldh [rNR31], a
    ldh a, [$8d]
    ld hl, sp+$46
    db $fc
    and d
    ld a, a
    call nc, $c73c
    nop
    ldh a, [rP1]
    add c
    nop
    rst $20
    nop
    jp $0800


    ldh a, [rSB]
    nop
    rst $08
    nop
    dec sp
    ld b, h
    sbc l
    ld [hl+], a
    rst $38
    nop
    rst $30
    nop
    ei
    nop
    ld a, b
    nop
    db $fc
    nop
    db $fd
    nop
    inc b
    sbc b
    sub a
    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    sbc a
    nop
    jr nc, jr_006_57d4

jr_006_57d4:
    add e
    nop
    rst $00
    nop
    nop
    ldh a, [$90]
    inc c
    rst $38
    inc bc
    ld a, [$f407]
    rrca
    add sp, $1f
    rst $30
    rra
    ret c

    ccf
    jr jr_006_5809

    ld h, b
    ld a, a
    add e
    rst $38
    inc c
    rst $38
    jr nc, @+$01

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

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
    ld bc, $03fe
    db $fc
    rra

jr_006_5809:
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ld a, [hl]
    add c
    cp $01
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, [$a006]
    ld h, b
    ld b, b
    ret nz

    ld b, b
    ret nz

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
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_006_5875

    ld b, b
    ld a, a
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]

jr_006_5845:
    ldh [$3f], a
    ret nz

    ld a, $c0
    ld a, [hl]
    add b
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
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
    rrca
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe

jr_006_5875:
    cp $00
    rst $38

jr_006_5878:
    jp hl


    add hl, de
    push af
    dec c
    push af
    dec c
    ld a, [$fd06]
    inc bc
    db $fd
    inc bc
    cp $01
    rst $38
    nop
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
    ld b, b
    ld a, a
    ret nz

    rst $38
    ld h, b
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$01
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    pop hl
    ld e, $c4
    jr c, jr_006_5845

    ld h, b
    jr nz, jr_006_5878

    db $eb
    jr @-$7b

    ld a, h
    inc de
    ldh [rVBK], a
    add b
    ccf
    nop
    ccf
    nop
    ld h, b
    nop
    nop
    nop
    rst $30
    nop
    rst $30
    nop
    rst $08
    db $10
    sbc $20
    sbc b
    jr nz, jr_006_5913

    jr nz, @+$22

    ld b, b
    and b

jr_006_58d7:
    ld b, b
    rra
    nop
    adc a
    nop
    cp a
    nop
    db $fd
    nop
    ld sp, hl
    nop
    ret nz

    nop
    nop
    nop
    nop
    inc b
    pop hl
    nop
    rst $18
    nop
    cp a
    nop
    di
    ld [$04f9], sp
    push af
    ld [bc], a
    call nz, $0402
    ld [bc], a
    and b
    ld a, a
    ldh [$1f], a
    ret z

    rlca
    ld a, [c]
    ld bc, $00f8
    add sp, $00
    ret nc

jr_006_5905:
    nop
    ld d, c
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b

jr_006_5913:
    ccf
    ld [hl], b
    rrca
    jr c, jr_006_591f

    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f

jr_006_591f:
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$7f], a
    add b
    rst $38
    nop
    ld a, [$f406]
    inc c
    db $f4
    inc c
    add sp, $18
    add sp, $18
    ret nc

    jr nc, jr_006_5905

    jr nc, jr_006_58d7

    ld h, b
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    db $10
    rra
    jr nz, jr_006_5987

    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$7f]
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
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_006_5a01

    jr nz, jr_006_59c3

    db $10
    ccf
    db $10

jr_006_5987:
    rra
    ld a, a
    add b
    ld a, a

jr_006_598b:
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
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

jr_006_59a6:
    cp $01
    ld d, b
    rst $18

jr_006_59aa:
    or b
    ld a, a
    cp b
    ld a, a
    ret c

    ccf
    call c, $d437
    scf
    or [hl]
    ld h, e
    inc hl
    pop hl
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03

jr_006_59c3:
    db $fc
    ld [bc], a
    db $fd
    ld bc, $40fe
    add b
    add b
    nop
    ld a, [bc]
    inc b
    inc h
    jr jr_006_5a21

    jr nz, @+$23

    ret nz

    add l
    ld [bc], a
    ld [de], a
    dec c
    ld bc, $0200
    ld bc, $0709
    cpl
    rra
    cp e
    ld a, a
    ld l, a
    rst $38
    ei
    call c, $b0f8
    jr nz, jr_006_59aa

    and b
    ret nz

    and e
    ret nz

    sub h
    db $e3
    ld e, d
    and h
    call nz, Call_006_68f8
    ldh a, [$e9]
    jr nc, @+$26

    jr jr_006_598b

    ld h, b
    ld b, b
    add b
    add b
    nop
    inc bc

jr_006_5a01:
    nop
    jr @+$09

    ld h, a
    jr jr_006_59a6

    ld h, b
    ld [bc], a
    inc b
    ld [$1404], sp
    ld [$1864], sp
    rst $08
    jr nc, jr_006_5a33

    rst $18
    rst $18
    ccf
    rst $30
    jr c, jr_006_5a1a

    db $10

jr_006_5a1a:
    add hl, bc
    db $10
    jr nz, jr_006_5a37

    ld d, h
    add hl, hl
    cp b

jr_006_5a21:
    ld [hl], l
    ld e, d
    cp l
    reti


    xor $70
    xor $9c
    inc bc
    call c, $ee03
    ld bc, $21d4
    ld l, c
    db $10
    ld d, h

jr_006_5a33:
    jr z, jr_006_5a3f

    inc h
    inc c

jr_006_5a37:
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, [hl]

jr_006_5a3f:
    add c
    dec a
    jp Jump_006_639d


    ld a, [de]
    ld h, [hl]
    ld c, d
    ld [hl], $a0
    ld h, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    add c
    add c
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $07
    rrca
    dec bc
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    pop af
    sbc $93
    rra
    rra
    ldh [$3f], a
    ret nz

    ccf
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
    ld [$081f], sp
    rrca
    inc b
    rrca
    inc b
    rlca
    ld [bc], a
    rlca
    ld bc, $0103
    ld bc, $0100
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
    add b
    rst $38
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
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
    ld a, [hl]
    add c
    db $fd
    inc bc
    ld a, [$fa06]
    ld b, $fa
    ld b, $fa
    ld b, $9a
    ld h, [hl]
    ld h, d
    cp $fa
    sbc [hl]
    pop hl
    ldh [$60], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    add d
    db $fc

jr_006_5ada:
    add h
    ld hl, sp-$38
    ld [hl], b
    add sp, $70
    ret


    ld [hl], b
    sbc b
    pop af
    ld a, [hl]
    pop af
    db $ed
    ld a, [de]
    jr z, jr_006_5afb

    db $10
    ld hl, $204f
    ld d, b
    and b
    ld b, b
    and b
    and b
    nop
    and b
    nop
    stop
    ldh a, [$60]
    ret nz

jr_006_5afb:
    ldh [$c0], a
    ld h, b
    ld h, b
    jr nz, jr_006_5b21

    ld [bc], a
    ld [hl+], a
    inc b
    jr nz, @+$06

    ld c, b
    nop
    ld h, d
    ld de, $1205
    ld a, [bc]
    dec d
    ld a, [bc]
    dec d
    inc b
    jr jr_006_5b63

    ld [$4b15], sp
    dec bc
    ld b, c
    jr c, jr_006_5ada

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop

jr_006_5b21:
    nop
    nop
    nop
    db $fc
    cp $06
    db $fc
    jr z, jr_006_5b9a

    ld [hl], b
    ld h, b
    ldh [rLCDC], a
    nop
    nop
    ld a, [bc]
    db $10
    db $10
    ld [hl+], a
    jr nz, jr_006_5b78

    ld b, b
    add d
    xor d
    ld [hl], h
    ld a, b
    inc [hl]
    ld d, b
    dec sp
    inc hl
    inc d
    inc b
    jr z, jr_006_5b8b

    jr nc, jr_006_5b6d

    ld d, b
    jr z, jr_006_5b98

    ld c, l
    ld [hl+], a
    adc $21
    ld h, $c1
    rst $00
    nop
    ld a, d
    nop
    daa
    jr @+$1c

    dec h
    ld c, l
    inc sp
    inc [hl]
    inc e
    rrca
    rra
    or d
    rra
    ld h, e
    cp [hl]
    ld b, e
    cp $42

jr_006_5b63:
    rst $38
    add e
    rst $38
    inc bc
    cp $18
    ld [de], a
    ret nc

    ret nc

    or b

jr_006_5b6d:
    ld h, b
    ldh [rLCDC], a
    ld b, b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop

jr_006_5b78:
    rra
    dec c
    dec c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    rst $38
    nop
    rst $38

jr_006_5b8b:
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
    rst $38
    add b

jr_006_5b98:
    add b
    rst $38

jr_006_5b9a:
    ld b, b
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_006_5c1f

    jr nz, jr_006_5be1

    jr nz, jr_006_5be3

    db $10
    ccf
    db $10
    rra
    ld a, l
    add e
    dec a
    jp $c33d


    dec de
    and $1a
    and $1a
    and $16
    db $ec
    inc c
    ld hl, sp-$72
    inc b
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
    ld bc, $0101
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
    ld a, l
    adc d
    push af
    adc [hl]
    cp $84
    or $8c
    cp [hl]

jr_006_5be1:
    ret c

    db $dd

jr_006_5be3:
    ld a, d
    xor $7b
    ld l, l
    ccf
    ld [$0707], sp
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rla
    ld [bc], a
    rla
    ld [bc], a
    cp a
    ld [bc], a
    ld a, a
    add d
    ret z

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld bc, $4141
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $fc04
    inc b
    db $fc
    inc b
    db $fc
    inc [hl]

jr_006_5c1f:
    call z, $8c74
    ld [hl], h
    adc h
    ld [hl], h
    adc h
    ld [hl], h
    adc h
    nop
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
    nop
    nop
    nop
    inc d
    ld h, b
    ld [bc], a
    ld hl, $0021
    ld [$0407], sp
    inc bc
    ld [bc], a
    ld bc, $0201
    nop
    ld [bc], a
    adc [hl]
    ld [hl], e
    ld a, [bc]
    rst $10
    dec b
    rst $18
    ld c, c
    sbc a
    xor c
    rra
    ld d, c
    ccf
    ld hl, $c27f
    ld a, a
    ld [bc], a
    cp $86
    db $fc
    ld b, h
    db $fc
    call z, $c878
    ld a, b
    ld e, b
    ldh a, [$90]
    ldh a, [$b0]
    ldh [$9d], a
    cp $f7
    ld h, d
    ld [bc], a
    inc bc
    ld bc, $0001
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
    add b
    rst $38
    ld b, b
    ld e, a
    ld h, b
    ld a, a
    jr nz, jr_006_5cc6

jr_006_5c87:
    jr nz, jr_006_5c87

    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00

jr_006_5c94:
    db $fc
    ld [bc], a
    cp $02
    db $10
    rra
    ld [$081f], sp
    rrca
    inc b
    rrca
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld [$18f8], sp
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [$28]
    ldh a, [$2c]
    ldh a, [$3c]
    ldh [rIF], a
    nop
    stop
    jr nz, jr_006_5cbe

jr_006_5cbe:
    jr nz, jr_006_5cc0

jr_006_5cc0:
    nop
    jr nz, jr_006_5cc3

jr_006_5cc3:
    jr nz, jr_006_5cc5

jr_006_5cc5:
    db $10

jr_006_5cc6:
    ld bc, $690e
    ccf
    and c
    ccf
    ld h, d
    ccf
    ld h, l
    ld a, $6b
    inc a
    ld [hl], a
    jr jr_006_5c94

    db $10
    cpl
    jr nc, @-$40

    jp $f7ea


    sub c
    rst $38
    adc l
    rst $38
    add e
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld [hl], b
    add b
    ld hl, sp-$80
    ld hl, sp-$80
    cp h
    ret nz

    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0001
    ld bc, $0100
    nop
    ld [hl], h
    adc h
    ld [hl], h
    adc h
    ld [hl], h
    adc h
    ld [hl], h
    adc h
    ld hl, sp-$74
    db $fc

jr_006_5d13:
    adc b
    ld hl, sp-$78
    ld hl, sp-$78
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0700
    ld a, [c]
    ld d, $0b
    rlca
    dec bc
    sub [hl]
    dec bc
    ld a, [bc]
    rst $30
    rla
    ld c, $59
    ld a, $61
    rst $38
    ld b, e
    cp $82
    rst $38
    add e
    rst $38
    ld a, e
    rst $38
    rst $30
    rrca
    dec e
    inc hl
    ld e, [hl]
    ld hl, $c03f
    and b
    ldh [$e0], a
    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b

jr_006_5d51:
    nop
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    ccf
    jr nz, @+$41

    jr nz, @+$41

    jr nz, @+$41

    jr nz, @+$41

    jr nz, @+$39

    jr jr_006_5d84

    ld e, $03
    ld bc, $04fc
    db $f4
    inc c
    add sp, $18
    ret nc

    jr nc, jr_006_5d51

    jr nz, jr_006_5d13

    ld h, b
    ld b, b
    ret nz

    ret nz

    ret nz

    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a

jr_006_5d84:
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add [hl]
    rst $38
    adc e
    db $fd
    sub a
    ld hl, sp-$21
    ld [hl], b
    rst $38
    ld h, b
    inc a
    ldh [$3c], a
    ldh [$3c], a
    ldh [$5c], a
    ldh [$bc], a
    ret nz

    ld a, h
    add b
    db $fc
    nop
    cp $00
    ccf
    jr nz, jr_006_5dea

    jr nz, jr_006_5dec

    jr nz, jr_006_5dee

    jr nz, jr_006_5de0

    jr nc, @+$41

    db $10
    rla
    jr jr_006_5dd6

    ld [$ff80], sp
    add b
    rst $38
    add c
    rst $38
    add c
    rst $38
    add e
    rst $38
    add e
    rst $38
    add l
    rst $38
    ld b, a
    db $fd
    ld e, h
    ldh [$ee], a
    ldh a, [$3b]
    db $fc
    dec d
    cp $13
    rst $38
    ld c, $f9
    dec bc
    db $fc

jr_006_5dd6:
    rlca
    db $fc
    ld bc, $0100
    nop
    ld bc, $0100
    nop

jr_006_5de0:
    ld b, c
    add b
    and c
    ret nz

    ld h, c
    ldh a, [$d3]
    ccf
    ld hl, sp-$78

jr_006_5dea:
    ld hl, sp-$78

jr_006_5dec:
    ld hl, sp-$78

jr_006_5dee:
    ld hl, sp-$78
    adc h
    ld hl, sp-$41
    cp $c1
    rst $38
    nop
    rst $38
    inc bc
    ld bc, $0306
    inc c
    rlca
    jr jr_006_5e0f

    jr c, @+$21

    and h
    ld a, a
    rst $10
    rst $28
    sbc d
    rst $38
    add c
    rst $38
    ld bc, $02ff
    rst $38
    inc bc

jr_006_5e0f:
    cp $03
    cp $03
    cp $85
    cp $67
    db $fc
    cp $01
    rst $38
    ld bc, $03fd
    rst $38
    ld [bc], a
    ld a, [$f606]
    inc c
    db $fc
    ld [$18e8], sp
    add b
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    inc bc
    nop
    inc b
    nop
    ld [$0800], sp
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
    stop
    ld [$0800], sp
    nop
    ld bc, $0000
    ld bc, $0103
    ld bc, $0603
    ld [bc], a
    ld b, $02
    inc c
    inc b
    inc c
    inc b
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    ld a, a
    add b
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    dec bc
    inc c
    rrca
    inc b
    dec c
    ld b, $07
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    bit 7, l
    rst $08
    ld a, c
    rst $10
    ld a, c
    ccf
    pop af
    xor $f1
    rst $38
    jr nz, jr_006_5ee4

    jr nz, @+$41

    jr nz, jr_006_5eae

    cp $03

jr_006_5eab:
    cp $02
    rst $38

jr_006_5eae:
    ld bc, $82ff
    rst $38
    add h
    rst $38
    add d
    rst $38
    add [hl]
    rst $38
    db $ec
    rra
    or b
    ld a, a
    ld b, b
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
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    db $e3
    cp $03
    cp $03
    cp $05
    cp $07
    db $fc
    dec bc
    db $fc

jr_006_5ee4:
    rrca
    ld hl, sp+$17
    ld hl, sp-$29
    inc a
    db $eb
    inc e
    rst $28
    jr jr_006_5ee4

    dec de
    db $d3
    ld a, $be
    ld l, h
    ld h, b
    ret nz

    ret nz

    add b
    ret c

    jr nc, jr_006_5eab

    ld h, b
    ld h, b
    ret nz

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
    ld [$0800], sp
    nop
    nop
    ld [$0800], sp
    nop
    inc b
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    stop
    jr nz, jr_006_5ee4

    nop
    nop
    nop
    nop
    jr jr_006_5f32

    jr @+$0a

    jr nc, jr_006_5f3e

    jr nc, jr_006_5f40

    jr nz, jr_006_5f52

jr_006_5f32:
    ld h, b
    jr nz, jr_006_5f75

    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b

jr_006_5f3e:
    ld e, a
    ld h, b

jr_006_5f40:
    ccf
    jr nz, @+$31

    jr nc, @+$21

    db $10
    rla

jr_006_5f47:
    jr jr_006_5f47

    nop
    cp $00
    cp $00
    cp $00
    cp $00

jr_006_5f52:
    cp $00
    rst $38
    nop
    rst $38
    nop
    ccf
    jr nz, jr_006_5f8a

    jr nc, @+$1d

    inc e
    ld b, $07
    rlca
    nop
    ld [$0000], sp
    ld [$0601], sp
    add l
    rst $38
    adc d
    db $fd
    adc a
    ld hl, sp-$69
    ld hl, sp-$61
    ldh a, [$af]
    ld [hl], b
    rst $30

jr_006_5f75:
    ld a, b
    dec a
    ld c, $00
    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    and c
    ld a, a
    ld [c], a
    ccf
    push de
    ld a, $ef
    inc e
    db $fd
    ld c, $4c
    rst $38

jr_006_5f8a:
    cp d
    rst $00
    ld a, l
    add e
    rst $38
    nop
    cp $01
    ei
    rlca
    xor $1c
    cp h
    ld [hl], b
    ld e, $f1
    dec l
    di
    cp e
    and $4e
    db $fc
    ld hl, sp-$10
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0202
    ld b, $02
    inc b
    inc b
    inc c
    inc b
    ld [$0f08], sp
    ld [$0c0b], sp
    dec bc
    inc c
    rlca
    inc b
    rlca
    inc b
    dec b
    ld b, $05
    ld b, $03
    ld [bc], a
    rrca
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0300

jr_006_5fe3:
    ld bc, $0306
    inc b
    rlca
    ld l, a
    sbc e
    rst $38
    di
    inc a
    rra
    pop hl
    ld a, a
    adc [hl]
    rst $38
    jr nc, @+$01

    ld c, a
    rst $38
    adc c
    rst $38
    ldh a, [$c0]
    rst $38
    cp $01
    rst $38
    db $fc
    rst $38

jr_006_6000:
    inc bc
    rst $38
    rlca
    rst $38
    ld [$10ff], sp
    rst $38
    nop
    nop
    add b
    nop
    ldh [$c0], a
    jr c, jr_006_6000

    adc h
    ld hl, sp-$1a
    db $fc
    inc sp
    cp $19
    rst $38
    jr @+$0a

    db $10
    db $10
    jr nc, @+$12

    jr nz, jr_006_6040

    ld h, b
    jr nz, jr_006_5fe3

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
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
    ld a, a
    add b
    rst $38
    add b

jr_006_6040:
    rst $38
    add b
    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    and b
    inc c
    rlca
    add hl, bc
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    ld [$910f], sp
    rst $38
    ld [de], a
    rst $38
    ld [hl+], a
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld c, b
    rst $38
    ret z

    rst $38
    inc hl
    rst $38
    inc h
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld b, h
    rst $38
    ld b, e
    rst $38
    jr nz, @+$01

    adc c
    rst $38
    ld c, h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    ld c, h
    rst $38
    adc h
    rst $38
    jr @+$01

    add b
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld bc, $0100
    ld bc, $0103
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    inc b
    inc b
    inc b
    inc b
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
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    rrca
    db $10
    ld de, $0012
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_006_610e

    ld a, [hl+]
    rla
    rla
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_006_6120

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_006_6130

    ld a, [hl-]
    dec sp
    ld a, [de]
    inc a
    rla

Jump_006_60fc:
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
    ld c, c
    ld c, d
    rla
    ld a, [hl-]
    ld c, e
    ld c, h

jr_006_610e:
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
    rla
    ld a, [hl-]

jr_006_6120:
    nop
    ld e, l
    ld a, [de]
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
    nop

jr_006_6130:
    nop
    ld l, d
    ld l, e
    ld l, h
    nop
    ld l, l
    ld a, [de]
    ld l, [hl]
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
    nop
    nop
    nop
    ld a, c
    ld a, d
    nop
    ld a, e
    ld a, h
    ld a, l
    nop
    nop
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    nop
    nop
    adc b
    adc c
    nop
    adc d
    adc e
    ld a, [hl-]
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
    nop
    nop
    sub [hl]
    nop
    nop
    nop
    sub a
    sbc b
    nop
    nop
    nop
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    nop
    nop
    nop
    nop
    sbc a
    adc c
    nop
    nop
    nop
    and b
    rla
    nop
    nop
    nop
    nop
    and c
    and d
    and e
    and h
    nop
    nop
    nop
    nop
    nop
    and l
    nop
    nop
    nop
    nop
    and [hl]
    and a
    nop
    nop
    nop
    nop
    xor b
    xor c
    xor d
    xor e
    xor h
    nop
    nop
    nop

jr_006_61a8:
    xor l
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [bc]
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1e01
    jr jr_006_61a8

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    ldh a, [$c0]
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
    sbc h
    inc e
    db $e3
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    db $10
    inc l
    inc c
    jp nc, Jump_000_39c2

    ld [de], a
    add hl, bc
    nop
    add hl, bc
    ld a, [bc]
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
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr nz, jr_006_6255

    jr nc, jr_006_623f

    ld b, b
    nop
    add b
    nop
    nop
    inc bc
    ld bc, $070e
    add hl, sp
    ld e, $e7
    ld a, b
    nop
    nop
    ld c, $04
    dec sp
    rra
    db $e3
    ld a, [hl]
    sbc e
    and $76
    adc h
    or $0c
    db $f4
    inc c
    ld [bc], a
    nop
    ld [bc], a

jr_006_623f:
    nop
    nop
    nop
    nop
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
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_006_6255:
    nop
    ld a, $3c
    ld b, e
    ld a, a
    ld e, h
    ld h, e
    nop
    nop
    nop
    ret nz

    ld b, b
    jr nz, jr_006_6283

    db $10
    db $10
    ld [$0608], sp
    add d
    ld bc, $80c1
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_6283:
    nop
    nop
    ld bc, $0201
    ld bc, $0203

jr_006_628b:
    inc bc
    inc bc

jr_006_628d:
    ld hl, $4726
    ld e, c
    adc [hl]
    ld [hl], a
    cp b
    rst $08
    ld [hl], b
    cp a
    ret nz

    ld a, a

jr_006_6299:
    add b
    rst $38

jr_006_629b:
    nop
    sbc a
    ldh [$7f], a
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
    db $ec
    jr jr_006_629b

    jr jr_006_6299

    jr jr_006_628b

    jr nc, jr_006_628d

    jr nc, @-$2e

    jr nc, @-$2e

    jr nc, @-$4e

    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a

jr_006_62c9:
    ld h, b
    ld e, a
    ld h, b
    ld [hl], b
    db $e3
    sbc b
    ld [hl], b
    db $ec
    jr jr_006_62c9

    inc c
    ld a, [$fb06]
    ld b, $fd
    inc bc
    cp $01
    nop
    rst $00
    ld b, b
    jr nz, jr_006_62e1

jr_006_62e1:
    jr nz, jr_006_6303

    stop
    db $10
    db $10
    ld [$0880], sp
    ret z

    add h
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_006_62f3

jr_006_62f3:
    ld [$0400], sp
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $05
    ld b, $0b
    inc c
    dec bc

jr_006_6303:
    inc c
    rla
    jr jr_006_631e

    jr jr_006_6338

    jr nc, jr_006_633a

    jr nc, @+$01

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
    or b
    ld h, b

jr_006_631e:
    and b
    ld h, b
    and b
    ld h, b
    and b

jr_006_6323:
    ld h, b
    and b
    ld h, b
    ld h, b
    ret nz

    ld h, b
    ret nz

    ld b, b
    jp nz, RST_00

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

jr_006_6338:
    nop
    inc b

jr_006_633a:
    nop
    inc b
    ld l, b
    call nz, Call_006_64b0
    call c, $ec32
    ld a, [de]
    db $f4
    ld c, $fa
    ld b, $fa
    ld b, $fd
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
    nop
    ld bc, $5f01
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    cp a
    ret nz

    cp a
    ret nz

jr_006_6366:
    cp a
    ret nz

    cp a
    ret nz

    ld a, h
    add e
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
    ld bc, $00fe
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
    cp $01
    ld b, d
    call z, $d048
    ld d, b
    ldh [$60], a
    ret nz

    ld b, d
    pop bc
    ld b, l
    jp nz, $c44a

    add h
    adc b
    nop

Jump_006_639d:
    db $10
    jr nz, jr_006_63b0

    ld b, b
    jr nz, jr_006_6323

    ld h, b
    jr nz, jr_006_6366

    add b
    ld b, b
    ld b, b
    add b
    nop
    add b
    nop
    inc b
    inc b
    ld [bc], a

jr_006_63b0:
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $fe02
    ld bc, $00ff
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
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    ld [hl], b
    adc a
    ld b, b
    cp a
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
    nop
    rst $38
    nop

Jump_006_63ff:
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
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    sub h
    adc c
    adc b
    sub c
    jp hl


    sub d
    db $ed
    sub d
    db $ed
    sub d
    rst $28
    sub h
    rst $38
    adc h
    rst $18
    cp h
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
    or b
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld c, b
    nop
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    add b
    ld c, b
    ld b, b
    adc b
    ld b, b
    adc b
    nop
    adc b
    ld bc, $010a
    ld a, [bc]
    ld b, $09
    ld a, [bc]
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    dec b
    inc bc
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    cp a
    ret nz

    adc a
    ldh a, [$83]
    db $fc
    add c
    cp $80
    rst $38
    add b
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
    cp $01
    cp $01
    and b
    ld h, b
    and b
    ld h, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    add b
    rst $38
    ld b, b
    rst $38

Call_006_64b0:
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    ld d, b
    rst $38
    ld a, b
    rst $18
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld c, $f1
    rst $38
    db $fc
    push af
    ld a, [$bdda]
    sbc a
    cp h
    xor l
    and [hl]
    rst $38
    xor d
    db $fd
    ld a, [$f8eb]
    cp $01
    or $09
    or $09
    ld d, $e9
    push hl
    ld a, [de]
    push af
    ld a, [bc]
    ld a, [$9c05]
    inc bc
    add a
    ld [$14eb], sp
    rst $28
    inc e
    db $ed
    ld e, $67
    sbc a
    ld l, e
    sub a
    xor a
    ld d, e
    ld e, a
    and [hl]
    ld bc, $8d03
    inc bc
    rst $38
    ld bc, $03fe
    cp $03
    cp [hl]
    jp $f7ea


    ld a, h
    rst $38
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, [$fa07]
    rlca
    push af
    ld c, $eb
    inc e
    rst $28
    rra
    rst $10
    jr c, jr_006_652d

jr_006_652d:
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_006_65af

    ld hl, sp-$4c
    call z, $fc7c
    inc b
    rlca
    inc b
    rlca
    dec b
    rlca
    dec b
    rlca
    ld b, $07
    rlca
    ld b, $05
    ld b, $07
    inc b
    cp b
    rst $18
    ld hl, sp-$61
    ld [hl], h
    sbc a
    db $f4
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    pop af
    rra
    pop af
    rra
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ret z

    add sp, -$38
    ret c

    db $fc
    ldh a, [$c4]
    add b
    adc b
    add b
    ldh [$90], a
    sbc b
    ldh [rIE], a
    add b
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rLCDC], a
    cp $04
    db $fc
    inc b
    add l
    inc b
    dec b
    rlca
    rlca
    rlca
    inc c
    ld b, $0f
    rlca
    rlca
    ld bc, $7f3c
    xor h
    ld a, a
    db $f4
    rst $20
    ld [hl], h
    rst $20
    call nc, $acff
    ld e, a
    ld b, h
    adc a
    ld hl, sp-$01
    inc bc
    db $fc
    inc bc

jr_006_65af:
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$06
    ld sp, hl
    dec c
    di
    dec c
    di
    ld a, [bc]
    rst $30
    cp a
    ld a, a
    cp e
    ld [hl], a
    ld d, h
    rst $28
    ld l, b
    rst $18
    ret nc

    cp a
    jr nz, @+$01

    ret nz

    ld a, a
    ld b, b
    rst $38
    add h
    db $fc
    call nz, Call_000_24fc
    db $fc
    inc d
    db $fc
    inc d
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    ld b, h
    db $fc
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
    dec b
    ld b, $0b
    inc c
    rla
    jr @+$09

    inc b
    rra
    inc e
    ld h, a
    ld a, h
    cp a
    call nz, Call_000_06fb
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    pop af
    rra
    jp hl


    rra
    ld a, [$fb0f]
    adc [hl]
    cp l
    adc $80
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    and b
    ld a, a
    ldh [$3f], a
    ret nc

    ccf
    ldh a, [$1f]
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, [$bd87]
    jp nz, $e1de

    or [hl]
    ld hl, sp-$23
    cp $e0
    ret nz

    ld b, b
    add b
    add b
    nop
    db $10
    ldh [rDIV], a
    jr jr_006_6675

    call nz, $1c66
    jr jr_006_664c

jr_006_664c:
    inc b
    nop
    inc de
    inc c
    inc b
    inc bc
    nop
    nop
    inc c
    nop
    ld [de], a
    nop
    ld hl, $2100
    nop
    ld [$080f], sp
    rrca
    ld hl, sp+$0f
    ld [$080f], sp
    rrca
    jr jr_006_6677

    ld d, b
    ccf
    ldh a, [$7f]
    ld a, [bc]
    rst $30
    rla
    rst $28
    ld [$08ff], sp
    rst $38
    db $10

jr_006_6675:
    rst $38
    db $10

jr_006_6677:
    rst $38
    ld hl, $42ff
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    rst $38
    add c
    rst $38
    jp nz, $c4ff

    rst $38
    ld c, b
    rst $38
    ret z

    ld a, a
    ld b, h
    db $fc
    add h
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    inc d
    db $fc
    inc l
    db $f4
    ld e, h
    db $e4
    nop
    nop
    nop
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
    ld bc, $302f
    ccf
    jr nz, jr_006_6710

    ld h, b
    ld a, a
    ld b, b
    cp a
    ret nz

    rst $38
    add b
    ld a, a
    add b
    rst $38
    nop
    ld e, a
    db $ec
    xor a
    ld a, h
    rst $18
    inc a
    db $fd
    ld c, $fa
    rlca
    adc l
    inc bc
    rlca
    nop
    ld bc, $f002
    rra
    add sp, $1f
    ld hl, sp+$0f
    rst $30
    rrca
    add sp, $1f
    ld hl, sp-$01
    ret z

    ccf
    ld hl, sp+$0f
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    rlca
    ld hl, sp+$3f
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$93], a
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    add sp, $1f
    push af
    rrca
    or $0f
    push af
    ld c, $f7
    inc c
    ld b, b
    add b
    ret nc

    ldh [$37], a
    ld hl, sp+$0f
    rst $38
    push af
    ei
    cp $01
    rst $30
    nop
    db $e3
    nop
    ld [de], a
    ld bc, $077b

jr_006_6710:
    ld a, a
    rst $38
    add [hl]
    rst $38
    add hl, bc
    cp $b7
    ld hl, sp-$31
    ldh a, [$8f]
    ldh a, [$d0]
    rst $38
    jr nc, @+$01

    cp $ff
    ld bc, $feff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $81ff
    rst $38
    ld h, d
    rst $38
    sub d
    ld a, a
    db $ec
    rra
    push af
    rrca
    ld b, l
    cp $8b
    db $fc
    rla
    ld hl, sp+$2f
    ldh a, [$5f]
    ldh [$bf], a
    ret nz

    cp $81
    ld a, e
    add a
    ret nc

    ld a, a
    db $e3
    ld a, a
    push hl
    ld a, [hl]
    bit 7, h
    rst $30
    ld a, b
    ld e, a
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    cp h
    call nz, $827e
    di
    ld bc, $01e1
    pop bc
    nop
    ret nz

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
    add b
    add b
    ret nz

    ld b, b
    ld h, b
    jr nz, jr_006_679b

    jr nz, jr_006_677f

    inc bc
    dec b

jr_006_677f:
    ld b, $0b
    inc c

jr_006_6782:
    rrca
    ld [$1b15], sp
    ld e, $1f
    jr nc, jr_006_67c9

    ld b, b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    rra
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop

jr_006_679b:
    rst $38
    rst $38
    nop
    rst $38
    nop
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
    ld b, l
    add d
    cp e
    ld b, h
    rst $00
    jr c, jr_006_6782

    ldh a, [$3f]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$0f
    add sp, $1f
    ld hl, sp+$1f
    ret c

    ccf
    db $e4
    rst $38
    jr nz, @+$01

    ld [bc], a

jr_006_67c9:
    db $fd
    inc bc
    db $fc
    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    push af
    ld c, $ce
    ccf
    pop af
    rrca
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $d3
    inc h
    and $19
    cp l
    jp $ff5e


    and c
    ld a, a
    and b
    ld a, a
    rst $18
    ccf
    pop de
    ccf
    add e
    db $fc
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    rla
    ld hl, sp-$01
    ldh [rIE], a
    nop
    rst $38
    nop
    ei
    nop
    pop af
    nop
    jp hl


    ld [de], a
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or $0f
    ld a, [$fb07]
    rlca
    ld a, [$fb07]
    ld b, $fb
    ld b, $fa
    rlca
    ei
    rlca
    push af
    ld c, $db
    inc a
    rst $28
    ldh a, [rIE]
    nop
    rst $28
    rra
    ld [hl], b
    rst $38
    adc a
    ldh a, [$7f]
    add b
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld h, b
    add b
    rst $38
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
    nop
    nop
    ret nz

    nop
    rst $38
    rst $38
    nop
    rst $38
    jr nc, @+$12

    jr jr_006_6868

    inc c
    inc b
    inc b
    inc b
    ld b, $02
    ld [bc], a
    ld [bc], a

jr_006_6868:
    add e
    ld bc, $c1e1
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    inc c
    rrca
    ld [$800f], sp
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
    inc bc
    db $fc
    ld bc, $01fe
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
    add e
    ld a, h
    pop bc
    ld a, $c1
    ld a, $e0
    rra
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, [hl]
    add c
    ld [hl], e
    adc h
    pop de
    ccf
    db $d3
    ld a, $ab
    ld a, [hl]
    xor d
    ld a, a
    jp c, $db3f

    ccf
    jp c, $ea3f

    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    add e
    db $fc
    rst $00
    ld hl, sp-$0a
    rrca
    push af
    ld c, $f3
    inc c
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, hl
    ldh a, [$dd]
    ld a, $e3
    rra
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_006_68eb:
    nop
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [$b0], a
    ld [hl], b

Call_006_68f8:
    ret nc

    jr nc, jr_006_68eb

    db $10
    db $10
    rra
    jr nz, @+$41

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_006_6945

    ld h, b
    ld a, a
    ld d, b
    ld a, a
    ldh a, [$9f]
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
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld de, $19ee
    and $ff
    nop
    rst $38

jr_006_6945:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, sp
    add $3c
    jp $41be


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
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$ef], a
    db $10
    rst $38
    nop
    rst $38
    nop
    db $eb
    rra
    or $0f
    db $f4
    rrca
    db $f4
    rrca
    db $f4
    rrca
    db $f4
    rrca
    db $f4
    rrca
    db $f4
    rrca
    adc a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$04
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    nop
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
    rra
    ldh [rP1], a
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
    ld a, a
    add b
    rlca
    ld hl, sp-$01
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
    ldh a, [rIF]
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
    rra
    ldh [$f0], a
    db $10
    add sp, $18
    add sp, $18
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
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
    rlca
    ld [$0009], sp
    nop
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
    ld c, $0f
    db $10
    ld de, $0000
    nop
    ld [de], a
    inc de
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
    nop
    ld d, $17
    rla
    jr jr_006_6a32

jr_006_6a32:
    nop
    add hl, de
    ld [de], a
    rla
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_006_6a47

jr_006_6a47:
    ld hl, $1712
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
    inc h
    dec h
    ld h, $27
    jr z, jr_006_6a83

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_006_6a9b

    ld h, $32
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $26
    scf
    jr c, jr_006_6aad

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    dec sp
    ld h, $3c
    dec a
    ld a, $3f

jr_006_6a83:
    ld b, b
    ld h, $41
    ld b, d
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld h, $4d
    ld c, [hl]

jr_006_6a9b:
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, c
    ld l, $52
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_006_6aad:
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    nop
    nop
    nop
    nop
    nop
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
    ld l, h
    nop
    nop
    nop
    nop
    ld l, l
    ld l, [hl]
    ld h, $26
    ld h, $6f
    ld [hl], b
    rla
    ld [hl], c
    ld [hl], d
    rla
    ld [hl], e
    rla
    rla
    rla
    ld [hl], h
    ld [hl], l
    nop
    nop
    nop
    db $76
    ld h, $77
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
    rla
    add h
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $fc
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
    add b
    nop
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
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
    add b
    rst $38
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    cp $00
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
    rst $38
    ld b, $f8
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
    ldh [$60], a
    ld e, $42
    add c
    nop
    nop
    nop

jr_006_6b73:
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    ld bc, $0001
    ld b, $06
    add hl, de
    inc d
    inc hl
    jr z, jr_006_6be1

    ld d, b
    adc a
    and b
    rra
    ld b, b
    ccf
    ld b, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    ld c, d
    db $fd
    dec h
    cp $12
    rst $38
    add hl, bc
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, @-$5f

    or b
    rst $08
    nop
    rst $38
    inc c
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr z, @+$01

    inc d
    rst $38
    ld b, b

jr_006_6be1:
    jr nc, jr_006_6b73

    ld [$c428], sp
    db $10
    ld [c], a
    ld [$05f1], sp
    ld hl, sp+$02
    db $fc
    nop
    cp $00
    nop
    nop
    nop
    nop

jr_006_6bf5:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    add b
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    inc b
    nop
    inc b
    dec b
    ld [$0900], sp
    nop
    add hl, bc
    ld a, [bc]
    ld de, $1300
    nop
    ld a, a
    add b
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
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, b
    rst $20
    inc h
    di
    ld [de], a
    ld sp, hl
    dec c
    ld hl, sp-$78
    db $fc
    ld b, h
    cp $43
    cp $22
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_006_6c48:
    sub b
    ld l, a
    ld e, b
    daa
    inc [hl]
    inc bc
    ld de, $0b00
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    dec b
    ei
    ld bc, $80fe
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    sub b
    rst $38
    adc b
    rst $38
    ld c, b
    rst $38
    nop
    ld b, b
    ld b, b
    jr nz, jr_006_6bf5

    jr nz, jr_006_6c97

    sub b
    nop
    sub b
    ld b, b
    sub b
    db $10
    ret z

    jr nz, jr_006_6c48

    nop
    inc de
    inc d
    inc hl
    inc b
    inc hl
    nop
    daa
    jr z, jr_006_6cd1

    ld [$4047], sp
    adc a
    db $10
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc

jr_006_6c97:
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
    rst $38
    ldh a, [rIE]
    inc c
    rst $38
    ld a, [de]
    rst $38
    ld h, b
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld hl, $11ff
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ccf
    rst $38
    call c, $00e0
    nop
    adc b
    nop
    inc l
    add b
    add [hl]
    and h
    push de
    and [hl]
    adc h
    rst $30
    call z, $c4f7
    ld a, a
    ld b, h
    ld a, a
    add e

jr_006_6cd1:
    ld a, c
    jr nz, @+$1b

    add hl, de
    ld [$084a], sp
    add hl, hl
    ld c, d
    sbc h
    ld l, e
    adc h

jr_006_6cdd:
    ld a, e
    ld [$44ff], sp
    rst $38
    and h
    rst $38
    and d
    rst $38
    ld d, d
    rst $38
    ld d, c
    rst $38
    add hl, sp
    rst $28
    jr z, jr_006_6cdd

    inc d
    rst $30
    ld [$03e4], sp
    rst $20
    inc de
    db $e4
    inc b
    ld a, [c]
    ld bc, $0af2
    pop af
    add b
    ld sp, hl
    add l
    ld hl, sp+$00
    nop
    nop
    nop
    ret nz

    ret nz

    ld [hl], b
    jr nc, jr_006_6d25

    inc c
    add [hl]
    ld [bc], a
    add e
    ld bc, $8143
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
    nop
    nop
    ld b, $07
    ld c, $09
    add hl, sp

jr_006_6d25:
    ld [hl-], a
    db $e4
    jp nz, Jump_000_0482

    adc b
    inc b
    add h
    adc b
    pop de
    adc b
    add b
    rra
    jr nz, jr_006_6d53

    nop
    ccf
    ld d, b
    cpl
    nop
    ld l, a
    and b
    ld c, a
    nop
    rst $08
    ld c, b
    add a
    ld [bc], a
    rst $38
    inc bc
    cp $05
    cp $07
    db $fc
    rlca
    db $fc
    dec bc
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp-$40
    nop
    add b

jr_006_6d53:
    nop
    add b
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
    inc h
    ld a, a
    ld h, h
    ccf
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf
    inc d
    ccf
    inc [hl]
    rra
    jr c, jr_006_6d8f

    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    jr @+$01

    jr @+$01

    add hl, de
    rst $38
    add hl, hl
    rst $38
    inc d
    rst $30
    inc e
    rst $30
    ld [de], a
    rst $38
    sub e
    cp $8a
    cp $8a
    cp $ca
    cp $d9

jr_006_6d8f:
    rst $38
    add b
    db $fc
    add b
    db $fc
    ld b, d
    db $fc
    ld b, b
    cp $61
    cp $60
    ld a, a
    ld h, b
    ld a, a
    ld [hl], d
    ld a, l
    ld h, c
    add e
    ld [hl], d
    add d
    cp d
    ld b, d
    ld a, $42
    ld e, [hl]
    ld [hl+], a
    ld e, $22
    xor [hl]
    ld [de], a
    ld c, $92
    ld c, b
    ld d, c
    ld h, d
    ld d, c
    ld de, $0422
    ld [hl+], a
    daa
    ld b, b
    ld a, [bc]
    ld b, c
    ld c, b
    add a
    db $10
    adc a
    nop
    add a
    and b
    rlca
    ld d, l
    inc hl
    add l
    ld [hl], e
    ld bc, $09f3
    di
    ld bc, $01fb
    ei
    rla
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$1f
    rst $38
    ld e, $f1
    ld e, l
    or a
    rra
    or e
    cp [hl]
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    adc l
    rst $38
    ld a, [c]
    rst $38
    dec a
    rst $38
    ld e, a
    cp $00
    nop
    nop
    nop
    rlca
    ld bc, $feff
    add b
    nop
    ret nz

    add b
    add b
    ret nz

    ret nz

    ret nz

    jr c, jr_006_6e21

    jr c, jr_006_6e23

    ld hl, sp-$01
    or b
    rra
    jr nc, jr_006_6e29

    ld hl, $213f
    ccf
    ld b, a
    ld a, [hl]
    dec sp
    rst $38
    ld d, d
    rst $38
    ld [hl], l
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    or a
    rst $38
    db $eb
    ld h, a
    db $e3
    rst $20
    reti


jr_006_6e21:
    rst $38
    or l

jr_006_6e23:
    rst $38
    dec h
    rst $38
    ld [$faff], a

jr_006_6e29:
    rst $38
    sbc [hl]
    rst $38
    adc $ff
    db $fc
    rst $28
    pop de
    ld a, h
    ld c, b
    call c, $c841
    ld d, l
    ldh [rWY], a
    ldh a, [rLYC]
    ld a, [$ff81]
    add b
    rst $38
    ld d, $8a
    ret z

    inc b
    ld b, b
    inc b
    ld b, h
    ld [bc], a
    sub d
    ld bc, $8954
    ld sp, $a0ee
    rst $38
    nop
    ld bc, $0300
    nop
    ld [bc], a
    nop
    inc b
    inc b
    ld [$0801], sp
    nop
    ld de, $2112
    nop
    rra
    jr nz, jr_006_6e83

    ld b, b
    ccf
    nop
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $05fb
    ei
    dec b
    ei
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rra
    ld d, $5d

jr_006_6e83:
    ld d, $9f
    ld e, h
    dec a
    call c, $f41d
    inc e
    db $fc
    adc [hl]
    db $fc
    adc e
    cp $af
    sbc a
    adc a
    sbc a
    sbc a
    cp a
    db $fc
    rst $38
    cp d
    db $fc
    sbc h
    db $fc
    jp Jump_006_63ff


    ld a, a
    ldh [rLCDC], a
    ldh [$80], a
    add c
    pop bc
    jp nz, $c5c3

    rst $00
    sbc a
    sbc $40
    add b
    add b
    nop
    jp z, $9d7d

    pop af
    ld sp, $61e1
    ret nz

    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    and a
    rst $28
    ld a, a
    cp a
    xor a
    ccf
    ld h, $3f
    jr nc, @+$41

    inc e
    rra
    ccf
    ld c, a
    jr nz, jr_006_6eef

    db $fc
    rst $28
    dec h
    rst $28
    and l
    cpl
    dec l
    cpl
    cp c
    rst $28
    ld a, [$b2df]
    rst $38
    ld h, h
    cp a
    add b
    rst $38

jr_006_6ee2:
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

jr_006_6eef:
    rst $38
    ld d, b
    rst $38
    ld [$04ff], sp
    rst $38
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
    jr nz, jr_006_6ee2

    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    jp nz, $01fe

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
    add b
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
    nop
    nop
    ld bc, $0200
    ld [bc], a
    inc b
    nop
    inc c
    inc b
    inc hl
    nop
    ld b, a
    ld c, b
    add a
    db $10
    adc a
    jr nz, jr_006_6f59

    ld b, b
    ccf
    nop
    ld a, a
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_006_6f59:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    add a
    db $fd
    ld b, [hl]
    db $fc
    ld b, d
    cp $29
    rst $38
    inc d
    cp $0a
    rst $38
    ld bc, $00ff

jr_006_6f6f:
    rst $38
    cp $3e
    inc e
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp-$3a
    cp $20
    nop
    db $10
    jr nz, jr_006_6fad

    jr nc, jr_006_6fc3

    jr nc, jr_006_6fbd

    jr c, jr_006_6f6f

    ld a, b
    ld a, [de]

jr_006_6f8d:
    nop
    inc l
    ld e, $01
    nop
    ld bc, $0700
    ld bc, $0703
    rrca
    ld bc, $0e3f
    cp b
    ld [hl], b
    ld c, a
    inc a
    call z, $987b
    rst $30
    jr c, jr_006_6f8d

    ret nc

    rst $08
    and b
    sbc a
    ld b, c
    ccf
    add [hl]

jr_006_6fad:
    ld a, a
    jr @+$01

    nop
    rst $38

jr_006_6fb2:
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
    ld a, a

jr_006_6fbd:
    rst $38
    add b
    add b
    nop
    rst $38
    nop

jr_006_6fc3:
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
    ld a, b
    ld a, a
    jr nz, jr_006_6fb2

    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $01
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
    ld bc, $0200
    ld bc, $0008
    ld de, $2102
    inc h
    ld b, e
    ld [$10c7], sp
    adc a
    inc hl
    rra
    ld c, h
    inc a
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc c
    db $fc
    jr nc, @-$0e

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rra
    rst $38
    ldh [$e0], a
    nop
    nop
    nop
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

    rst $38
    jr c, jr_006_7063

    ld e, $17
    inc sp
    ld hl, $2020
    ld h, b
    ld b, b
    ld b, c
    ld b, b
    pop bc
    add b
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [$7f]
    db $ec
    rra
    rst $38
    rrca
    add sp, $18
    add hl, sp
    rst $38
    add [hl]
    cp $79
    rst $38
    rlca
    cp $01
    rst $38
    rrca
    rst $38
    db $db
    pop af
    di
    pop hl
    ld bc, $0080
    nop
    and b
    ret nz

    nop
    nop
    ret nz

    add b
    ld [hl], b
    ldh [$dc], a
    jr c, jr_006_7095

    ld c, $e8
    ldh a, [rP1]

jr_006_7063:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0f37
    ld a, e
    rlca
    ld [hl], l
    rrca
    ld l, c
    rra
    push de
    dec sp
    xor l
    ld [hl], e
    db $dd
    db $e3
    ld a, l
    add e
    ldh [rIE], a
    nop
    rst $38
    ld bc, $82ff
    rst $38
    ld [hl], l
    cp $ab
    call c, $8c7b
    rst $30
    inc l
    ld h, $fe
    db $fc
    db $fc
    inc d

jr_006_7095:
    db $fc
    call c, $fc24
    inc b
    ld a, [$fa06]
    ld b, $fe
    ld [bc], a
    rlca
    rlca

jr_006_70a2:
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    rst $38
    jr nc, @+$41

    ld [$060f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    jr nz, jr_006_70a2

    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $01
    rst $38
    add c
    rst $38
    ld b, b
    ld a, a
    nop
    nop

jr_006_70d2:
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $000f
    inc b
    dec b
    ld [$130d], sp
    ld d, $6e
    jr c, jr_006_70d2

    and b
    ld h, b
    ret nz

    ret nz

    nop
    nop
    or b
    ld [hl], b
    ret nz

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
    ld bc, $0101
    ld bc, $0203
    ld [bc], a
    ld [bc], a
    ld b, $04
    inc b
    inc b
    inc c
    ld [$8083], sp
    add e
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    pop af
    ld de, $30d0
    ldh [rNR41], a
    ldh [rNR41], a
    and b
    ld h, b
    pop bc
    ld b, c
    ld b, c
    pop bc
    add e
    add d
    daa
    dec h
    ld h, a
    ld b, l
    ld b, a
    ld b, e
    jp $8181


    add c
    add c
    nop
    nop
    nop
    nop
    nop
    dec c
    inc bc
    pop hl
    ret nz

    dec a
    cp $03
    rst $38
    ld h, b
    sbc a
    or b
    rst $08
    ret c

    ld h, a
    ld l, h
    inc sp
    adc $87
    ld a, e
    db $fc
    cp $01
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
    db $fd
    inc bc
    rst $20
    rra
    ld a, c
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    dec c
    cp $17
    ld hl, sp+$6f
    ldh a, [$bf]
    ld h, h
    ld e, a
    db $e4
    cp a
    call nz, $847f
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    cp $02
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    cp $01
    cp $01
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_006_71a4:
    nop
    nop

jr_006_71a6:
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
    jr nz, jr_006_71f1

    db $10
    rra
    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld b, b
    ret nz

    jr nz, jr_006_71a4

    jr nz, jr_006_71a6

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp-$7c
    db $fc
    ld b, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld b, $0e
    ld [$3038], sp
    ld [hl], b
    ld b, b
    ld b, b
    ld b, $1e
    jr jr_006_725c

    ld h, b
    ldh [$80], a
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

jr_006_71f1:
    nop
    nop
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
    ld a, [de]
    inc e
    ld [$1808], sp
    db $10
    db $10
    db $10
    jr nc, jr_006_7228

    jr nz, @+$22

    ld a, a
    ld c, a
    db $fc
    ldh a, [rP1]
    nop
    rra
    nop
    ld e, $01
    ccf
    ld bc, $033d
    ld [hl], a
    rrca
    ld sp, hl
    ld hl, sp+$04
    inc bc
    ld b, b
    ccf
    add d
    add d
    add [hl]
    add h
    inc c
    ld [$7078], sp

jr_006_7228:
    sub b
    ldh a, [rNR23]
    ldh a, [$08]
    ld hl, sp+$04
    db $fc

jr_006_7230:
    ld a, $11
    rra
    ld [$060d], sp
    ld b, $03
    inc bc
    ld bc, $0001
    inc bc
    ld bc, $0706
    nop
    rst $38
    inc bc
    rst $38
    add l
    ld a, [hl]
    db $db
    inc a
    cpl
    ldh a, [$e3]
    ret nz

    ld h, c
    ret nz

    jr nc, jr_006_7230

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

jr_006_725c:
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    db $fd
    ld b, $fd
    ld b, $fb
    ld b, $fe
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $00ff
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
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    and b
    ld h, b
    and b
    ld h, b
    ldh [rNR41], a
    ld [hl+], a
    ld a, $12
    ld e, $19
    rra
    add hl, bc
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
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
    ld b, b
    ret nz

    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $04
    jr jr_006_72d2

    jr nc, jr_006_72dc

    ldh [$c0], a
    nop
    nop
    ld l, b
    ld [hl], b
    ret nz

    add b
    nop
    nop
    ld bc, $0000
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    inc b
    inc bc

jr_006_72d2:
    jr nz, jr_006_72f3

    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_006_72dc:
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
    ld [bc], a
    cp $01

jr_006_72f3:
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
    ret nz

    add b
    ld h, c
    pop hl
    ld e, $f3
    inc c
    rst $38
    ld [de], a
    di
    ld hl, $18e1
    rrca

jr_006_7312:
    jr nc, jr_006_7353

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
    jr jr_006_7312

    inc c
    ld hl, sp+$07
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
    ld a, a
    nop
    ccf

jr_006_7333:
    nop
    rra

jr_006_7335:
    nop
    adc a
    nop
    rst $00
    add b
    ld h, e
    ret nz

    ld sp, $19e0
    pop af
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    ei
    rlca
    db $ec
    rra
    ld [hl], b
    rst $38
    add b
    rst $38
    cp a
    ret nz

    ld a, a

jr_006_7353:
    db $fc
    ld b, e
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
    ret nc

    jr nc, jr_006_7333

    jr nc, jr_006_7335

    ldh a, [$3e]
    cp $01
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

jr_006_7374:
    nop
    nop
    nop
    nop
    ldh [$e0], a
    jr jr_006_7374

    inc b
    db $fc
    ld [bc], a
    cp $c0
    ret nz

    ldh [$e0], a
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    jr nc, jr_006_73ba

    jr nc, jr_006_73bc

    jr jr_006_73a6

    jr jr_006_73a8

    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop

jr_006_73a6:
    nop
    nop

jr_006_73a8:
    nop
    nop
    nop
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_73ba:
    nop
    nop

jr_006_73bc:
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_006_73f3

    nop
    nop
    nop
    nop
    nop
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
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    nop
    nop
    nop
    nop

jr_006_73f3:
    nop
    nop
    nop
    nop
    nop
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    jr z, jr_006_7429

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
    nop
    nop
    nop
    dec l
    ld l, $2f
    jr nc, jr_006_7443

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $11
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    jr c, jr_006_745c

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_006_7429:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    ld c, d
    ld c, e
    ld c, h
    ld b, [hl]
    ld c, l
    ld c, [hl]
    ld c, a
    ld b, e
    nop

jr_006_7443:
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
    nop
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    nop
    nop
    ld h, b
    ld h, c
    ld h, d

jr_006_745c:
    nop
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
    nop
    nop
    ld l, l
    ld l, [hl]
    nop
    ld l, a
    ld [hl], b
    nop
    nop
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    nop
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    nop
    nop
    nop
    ld a, e
    ld a, h
    nop
    nop
    nop
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
    add a
    adc b
    adc c
    nop
    nop
    nop
    adc d
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    jr jr_006_74af

    inc sp
    jr nz, jr_006_7508

    ld b, b
    ld c, a
    ld b, b
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

jr_006_74af:
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_006_74fc

    ld l, b
    daa
    jr z, @+$39

    jr z, jr_006_74de

jr_006_74bb:
    inc a
    inc de
    inc e
    inc de
    inc e
    ld de, $091e
    ld c, $e8
    jr jr_006_74bb

    inc c
    ei
    rlca
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
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
    add b
    add b
    ld b, b
    ret nz

jr_006_74de:
    scf
    rst $30
    inc c
    ld hl, sp+$06
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    jp nz, $0081

    nop
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

jr_006_74fc:
    nop
    nop
    ret nz

    ret nz

    ld [hl], b
    jr nc, @-$12

    inc e
    nop
    nop
    nop
    nop

jr_006_7508:
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc b
    inc b
    add hl, bc
    ld [$101b], sp
    dec bc
    ld c, $0a
    rrca
    ld a, c
    ld a, a
    call $0c87
    rlca
    ld a, h
    rlca
    ld a, [$fa07]
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    rst $28
    sub b
    or a
    ret z

    ld a, e
    call nz, $e25d
    add e
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $18
    ldh [$2c], a
    di
    jr @+$01

    ld b, $ff
    ld bc, $00ff
    rst $38
    ret nz

    ccf
    ei
    rlca
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    inc c
    rst $38
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $01
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc a
    jr c, @+$32

    jr nz, jr_006_75a1

    jr nz, jr_006_75a3

    jr nz, jr_006_7585

jr_006_7585:
    nop
    rlca
    rlca
    ld a, [hl]
    ld a, b
    ldh [$80], a
    nop
    nop
    ld bc, $0100
    ld bc, $0103
    inc de
    db $10
    rst $20
    ldh [$ef], a
    ld b, b
    rst $08
    ld b, b
    sbc a
    add b
    sbc a
    add b
    ccf

jr_006_75a1:
    nop
    ccf

jr_006_75a3:
    nop
    cp $03
    cp $03
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01fe
    rst $38
    nop
    rst $38
    nop
    ld a, $e1
    ld l, $f1
    rla
    ld hl, sp+$0f
    ld hl, sp+$0b
    db $fc
    add l
    cp $83
    cp $42
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    jr nz, jr_006_763e

    sub b
    cp l
    ld c, b
    adc $34
    ldh a, [rIF]
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    jr c, jr_006_75e4

jr_006_75e4:
    inc bc
    rst $38
    inc b
    ld sp, hl
    ld b, c
    ld a, $1c
    inc bc
    add c
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    rst $38
    ret nz

    rst $38
    jr nc, jr_006_7679

    sbc h
    rrca
    jp $0207


    ld bc, $0000
    jr jr_006_7604

jr_006_7604:
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp+$64
    db $fc
    ld d, d
    ld a, $20
    jr nz, jr_006_7637

    jr nz, jr_006_7639

    jr nz, jr_006_763b

    jr nz, jr_006_763d

    jr nz, jr_006_764e

    jr nz, jr_006_7660

    jr nz, jr_006_7642

    jr nc, jr_006_7628

    ld [bc], a
    ld b, $02

jr_006_7628:
    ld [bc], a
    ld b, $04
    inc b
    db $f4
    inc c
    ld sp, hl
    ld [$18e9], sp
    ld a, [c]
    db $10
    ld a, a
    nop
    ld a, a

jr_006_7637:
    nop
    ld [hl], a

jr_006_7639:
    nop
    rst $28

jr_006_763b:
    nop
    rst $08

jr_006_763d:
    nop

jr_006_763e:
    adc a
    nop
    rrca
    nop

jr_006_7642:
    rrca
    nop
    db $fc
    inc bc
    ld a, [$f507]
    ld c, $eb
    inc e
    sub $39

jr_006_764e:
    xor [hl]
    ld [hl], c
    ld a, h
    db $e3
    pop af
    rst $00
    ld b, c
    rst $38
    ret nz

    ld a, a
    and b
    ld a, a
    jr nz, @+$01

    db $10
    rst $38
    ld a, a
    rst $38

jr_006_7660:
    ret nz

    add b
    ld b, b
    add b
    ld h, a
    sbc e
    or l
    jp z, $e45a

    ld l, l
    ld a, [c]
    ld [hl-], a
    db $fd
    ld hl, sp-$01
    ld e, $0f
    dec c
    rlca
    inc c
    nop
    add d
    add b
    ld b, b

jr_006_7679:
    ret nz

    jr nz, jr_006_76ec

    sbc b
    jr c, jr_006_76d4

    xor [hl]
    dec hl
    rst $10
    ld c, $f1
    inc e
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    rrca
    nop
    rst $00
    nop
    and a
    ret nz

    inc c
    inc bc
    ld c, $01
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    pop bc
    nop
    db $fc
    nop
    rst $38
    nop
    ld [$071e], a
    rst $38
    ld bc, $80ff
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a
    add b
    ld a, a
    ret nz

    ccf
    nop
    nop
    nop

jr_006_76b7:
    nop
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rrca
    jr jr_006_76de

    ld [$0d06], sp
    rlca
    dec b

jr_006_76d4:
    ret nc

    jr nc, jr_006_76b7

    jr nz, jr_006_7679

    ld h, b
    pop bc
    ld b, b
    ld b, e
    ret nz

jr_006_76de:
    and a
    add b
    xor a
    add b
    ld a, a
    nop
    ld c, $01
    dec b
    inc bc
    dec bc
    rlca
    ld [bc], a
    rrca

jr_006_76ec:
    ld d, $0e
    ld a, [hl+]
    ld e, $0c
    inc a
    dec d
    inc a
    pop af
    add a
    ld h, d
    add a
    jp $c702


    ld [bc], a
    sub a
    ld [bc], a
    dec [hl]
    ld b, $77
    inc b
    rst $38
    inc b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ld b, $03
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
    nop
    jp Jump_006_60fc


    rst $38
    cp b
    rst $38
    sub $7f
    ld a, l
    inc sp
    ld l, a
    jr @+$77

    ld c, $7f
    nop
    ld e, e
    ldh [$af], a
    ld [hl], b
    ld d, a
    cp b
    dec bc
    db $fc
    push bc
    cp $b2
    ld a, a
    jp hl


    rra
    db $f4
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    di
    inc c
    ld [hl], c
    adc [hl]

jr_006_7752:
    ldh a, [$8f]
    ret nc

    ccf
    ldh a, [$1f]
    add sp, $1f
    add sp, $1f
    db $e4
    rra
    and $1f
    db $e3
    rra
    db $e3
    rra
    ld [bc], a
    cp $02
    cp $09
    rst $38
    inc b
    rst $38
    ld b, $ff
    inc de
    rst $38
    ld a, [de]
    cp $89
    rst $38
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
    ld b, b
    ret nz

    ret nz

    ret nz

    ld h, b
    ld h, b
    inc bc
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    dec b
    inc b
    dec bc
    ld [$1013], sp
    scf
    jr nz, jr_006_7814

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or $09
    cp $09
    db $fc
    inc de
    ld e, e
    jr c, jr_006_7752

    ld a, b
    xor a
    ld a, b
    ld e, [hl]
    pop af
    ld a, h
    db $d3
    ld a, b
    rst $10
    cp b
    rst $10
    ldh a, [$af]
    rst $38
    rlca
    db $db
    cpl
    sbc h
    ld l, a
    dec de
    rst $28
    dec de
    rst $28
    ld e, $ef
    dec e
    rst $28
    dec de
    db $ed

jr_006_77c4:
    cp $e0
    rst $38
    rst $38
    add e
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    cp a
    rst $38
    sbc a
    ccf
    rra
    ccf
    ld bc, $ff00
    rst $38
    cp a
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [rSVBK], a
    ldh [$f0], a
    ld h, b
    jr nz, jr_006_77c4

    rst $18
    ccf
    db $e3
    db $fc
    rst $38
    nop
    db $fd
    inc bc
    ei
    rlca
    rlca
    rrca
    dec b
    rrca
    rlca
    inc bc
    cp $ff
    cp c
    ld a, a
    rst $20
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    sbc [hl]
    rst $38
    adc a
    rra
    rra
    rra
    cp b
    rst $00
    ld a, b
    rst $00
    ret c

    rst $20
    cp h
    db $e3
    db $ec
    di
    db $ec
    di
    ld l, h
    di
    ld l, h
    di

jr_006_7814:
    ld h, d
    sbc a
    ld hl, $21ff
    rst $38
    ld de, $11ff
    rst $38
    add hl, de
    rst $38
    jr @+$01

    inc c
    rst $38
    adc l
    rst $38
    set 7, e
    ld l, d
    ei
    ld d, l
    db $fd
    dec l
    db $fd
    inc l
    db $fc
    sub [hl]
    cp $96
    cp $60

jr_006_7835:
    ld h, b
    jr nc, jr_006_7868

    or b
    or b
    sub b
    sub b
    adc b
    adc b
    adc b
    adc b
    ret z

    ret z

    call nz, Call_000_00c4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f01
    ld e, $00
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc c
    inc c
    ld sp, $e330
    ret nz

    rrca
    nop
    ld l, a
    ld b, b
    rst $18
    add b

jr_006_7868:
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    ld sp, hl
    rlca
    db $ec
    inc sp
    cp l
    ld h, e
    reti


    ld h, a
    ld a, c
    rst $00
    cp c
    rst $00
    ld a, [c]
    adc a
    ld [hl], d
    adc a
    di
    rrca
    ldh a, [$af]
    ld [hl], b
    xor a
    ldh a, [$2f]
    db $e3
    ld e, a
    push hl
    ld e, a
    db $eb
    ld e, [hl]
    or $5c
    db $e4
    db $fc
    rra
    jp hl


    rra
    db $fd
    rst $38
    db $e3
    jp $8181


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    ld a, a
    cp $ff
    ld a, d
    db $fd
    or b
    ld sp, hl
    sbc c
    ld a, [c]
    adc $7c
    ld a, a
    ld a, $58
    jr nc, jr_006_7835

    ldh [$c0], a
    and b
    add b
    add b
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    dec b
    inc bc
    dec b
    dec b
    ld bc, $0001
    ld [bc], a
    nop
    ld bc, $0000
    nop
    ld e, a

jr_006_78d5:
    cp a
    rst $38
    rst $38
    dec sp
    db $fd
    ld sp, $9df9
    ld a, [$6ff7]
    cp $ff
    dec bc
    ld b, $ec
    ld [hl], e
    db $ec
    ld [hl], e
    jr z, jr_006_7961

    cp b
    ld h, a
    jr c, jr_006_78d5

    ld e, b
    rst $20
    ld [hl], b
    rst $08
    or b
    rst $08
    inc c
    rst $38
    inc c
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    add hl, bc
    rst $38
    ld de, $92ff
    cp $8a
    cp $8a
    cp $89
    rst $38
    add l
    rst $38
    add d
    rst $38
    add d
    rst $38
    add c
    rst $38
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add d
    add d
    add d
    add d
    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0e01
    ld c, $33
    jr nc, jr_006_7982

    ld c, a
    inc e
    ld a, h
    ld h, b
    ld h, b
    inc bc
    inc bc
    dec a
    ld a, $e3
    ret nz

    ccf
    nop
    ccf
    rst $38
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    ld hl, sp+$1c
    rra
    inc bc
    inc bc
    nop
    nop
    ldh [$e0], a
    ld bc, $ff00
    nop
    rst $38
    nop
    ld hl, sp+$07
    nop
    rst $38
    db $fc

jr_006_7961:
    rst $38
    inc bc
    inc bc
    ld a, a
    nop
    rst $38
    nop
    ei
    inc b
    rst $20
    jr jr_006_797b

    pop af
    jr @-$17

    ld [$f0ff], sp
    rst $38
    pop af
    rrca
    ld [c], a
    rra
    jp nz, $823f

jr_006_797b:
    ld a, a
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc e
    rst $38

jr_006_7982:
    ld h, b
    rst $38
    sbc $3f
    cp a
    ld h, b
    ld a, a
    ret nz

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
    inc b
    db $fc
    inc c

jr_006_7997:
    ld hl, sp-$34
    jr c, jr_006_7997

    ld [$08fc], sp
    db $fc
    ld [$0cf4], sp
    db $76
    db $fc
    jr nc, jr_006_79be

    ld [$1818], sp
    ld [$080c], sp
    ld b, $0c
    ld c, $04
    rrca
    ld b, $07
    ld b, $00
    nop
    ld bc, $0200
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc

jr_006_79be:
    nop
    nop
    jr jr_006_79c2

jr_006_79c2:
    jr jr_006_7a03

    nop
    nop
    nop
    nop
    add b
    nop
    nop
    add b
    add b
    nop
    ld bc, $0900
    nop
    dec e
    ld hl, sp+$1e
    ld bc, $033d
    ld a, e
    ld b, $f6
    dec c
    rst $28
    rra
    sbc c
    ld a, a
    ld a, [$f407]
    rrca
    ldh [$9f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    inc h
    rst $38
    ld de, $11ff
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    ld h, c
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b

jr_006_7a03:
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
    nop
    rst $38
    nop
    rst $38
    and b
    ldh [$60], a
    ldh [$30], a
    ldh a, [rNR23]
    ld hl, sp+$0c
    db $fc
    ld b, $fe
    ld [bc], a
    cp $01
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
    ld bc, $0301
    inc bc
    rlca
    dec b
    inc hl
    ccf
    inc a
    ccf
    ld h, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38

jr_006_7a40:
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $02ff
    rst $38
    inc c
    rst $38
    jr nc, @+$01

    ld e, b
    rst $20
    ld a, a
    ret nz

    ld a, a
    ret nz

    db $fd
    add e
    ld a, e
    add [hl]
    db $76
    adc h
    ld l, h
    sbc b
    ld e, b
    or b
    jr nc, jr_006_7a40

    ld h, b
    ret nz

    ld h, b
    ret nz

    cp $8c
    ld a, [bc]
    inc b
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    ld bc, $0202
    ld bc, $0102
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
    nop
    nop
    add b
    nop
    inc bc
    rlca
    rlca
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0303
    ld bc, $0103
    ld [bc], a
    ld bc, $0102
    xor b
    db $10
    add b
    nop
    ret nz

    add b
    ret nz

    add b
    ld h, b
    ret nz

    ld h, b
    ret nz

    or b
    ldh [$b8], a
    ldh a, [rSB]
    nop
    ld bc, $0200
    ld bc, $0003
    rlca
    nop
    ld b, $01
    dec c
    inc bc
    ld d, $0f
    ret c

    ccf
    ldh [$7f], a
    add e
    rst $38
    ld a, h
    rst $38
    and c
    ld a, a
    pop hl
    rst $38
    reti


    cp a
    or a
    rst $18
    ld c, b
    rst $38
    sub b
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    ld [hl+], a
    rst $38
    sub $df
    ld d, l
    ld e, a
    dec bc
    dec c
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld l, a
    rst $38
    ld e, d
    or $7d
    jp $c1bf


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_006_7aea:
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld c, $0f
    ld bc, $0001
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
    add b
    rst $38
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_006_7aea

    db $10
    ldh a, [$08]
    ld hl, sp+$06
    cp $01
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
    ld bc, $0301
    ld [bc], a
    ld b, $04
    rrca
    add hl, bc
    ld a, [de]
    inc de
    ld [hl], $23
    ld h, [hl]
    ld b, e
    jp nz, $8487

    rlca
    inc c
    rlca
    inc b
    rrca
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
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld e, a
    ldh [$7e], a
    pop hl
    ld a, l
    db $e3
    ld c, a
    ld a, [c]
    cp d
    add $e0
    ld b, b
    and b
    ld h, b
    and b
    ld h, b
    ld h, b
    ldh [$e0], a
    and b
    and b
    jr nz, jr_006_7b71

jr_006_7b71:
    jr nz, jr_006_7b83

    jr nz, jr_006_7b76

    nop

jr_006_7b76:
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

jr_006_7b83:
    nop
    nop
    add b
    nop
    add b
    ld b, b
    add b
    ld b, c
    add b
    and e
    ld b, b
    ld b, a
    jr nc, @+$29

    jr @+$1d

    inc c
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    ld a, [$f507]
    ld c, $da
    dec a
    xor [hl]
    db $fc
    sub e
    rst $38
    sbc a
    ld hl, sp-$42
    db $fc
    jp c, $bee6

    jp $83ff


    cp $83
    jr c, jr_006_7bd5

    rst $20
    ld hl, sp-$01
    nop
    ld e, $01
    dec a
    inc bc
    ld a, [hl-]
    rlca
    dec [hl]
    adc [hl]
    adc e
    db $fc
    ld l, e
    rst $10
    ld a, l
    jp $c37d


    cp a
    pop bc
    ld a, a
    add c
    cp $01
    cp $01
    rst $38
    nop
    dec bc

jr_006_7bd5:
    inc c
    rlca
    inc b
    rlca
    inc b
    dec b
    ld b, $83
    add d
    jp nz, $a1c3

    pop hl
    ld e, c
    ld sp, hl
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
    ld a, a
    add b
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    and b
    ld h, b
    ldh [rNR41], a
    ldh a, [rNR10]
    add sp, $18
    ld hl, sp+$08
    ld h, b
    ld a, a
    jr @+$21

jr_006_7c08:
    ld b, $07
    ld bc, $0001
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
    rst $38
    ret nz

    rst $38
    jr c, jr_006_7c5d

    rlca
    rlca
    nop
    nop

jr_006_7c22:
    nop
    nop
    ld b, b
    ret nz

    jr nz, jr_006_7c08

    jr jr_006_7c22

    inc b
    db $fc
    ld [bc], a
    cp $01
    rst $38
    ldh a, [rIE]
    ld c, $0f
    nop
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
    ld h, b
    ldh [rNR23], a
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
    nop
    ld bc, $0301
    ld [bc], a
    inc c
    ld [$1018], sp
    jr nc, @+$22

    jr nz, jr_006_7c7c

    ld h, b

jr_006_7c5d:
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    ld [$080f], sp
    rrca
    jr jr_006_7c79

    jr jr_006_7c7b

    jr jr_006_7c7d

    jr z, jr_006_7c8f

    ld [hl], b
    rra
    ldh a, [$1f]
    ld bc, $02ff
    rst $38
    dec b

jr_006_7c79:
    cp $07

jr_006_7c7b:
    db $fc

jr_006_7c7c:
    rlca

jr_006_7c7d:
    db $fc
    dec b
    cp $02
    rst $38
    inc bc
    rst $38
    ld a, [hl]
    add h
    db $fc
    inc b
    db $fc
    inc b
    cp $04
    ld a, [$fb06]

jr_006_7c8f:
    ld b, $ff
    cp $fe
    ld bc, $2010
    jr z, jr_006_7ca8

    inc b
    ld [$0601], sp
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_7ca8:
    nop
    nop
    nop
    nop
    ld b, b
    add b
    and b
    ld b, b
    ld d, b
    jr nz, jr_006_7cdb

    db $10
    dec c
    ld b, $06
    inc bc
    dec b
    inc bc
    ld [bc], a
    ld bc, $0007
    rrca
    nop
    rra
    nop
    ccf
    nop
    db $dd
    db $e3
    or $0f
    ld e, e
    cp h
    rst $28
    ldh a, [$5f]
    ldh [rIE], a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld a, a
    add d
    cp $02
    rst $38
    ld [bc], a
    db $fd

jr_006_7cdb:
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03fd
    ld [hl], a
    ld hl, sp-$45
    ld a, h
    ld b, l
    cp $82
    rst $38
    ld bc, $00ff
    rst $38
    nop
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
    ld a, a
    add b
    rst $38
    ret nz

    ld l, $f1
    dec d
    ei
    rst $00
    ld a, a
    and [hl]
    ld a, a
    call nc, $d43f
    ccf
    db $e4
    ccf
    call nz, $847f
    rst $38
    nop
    rst $38
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_006_7d1e:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc b
    cp $f2
    rrca
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
    ret nz

    ret nz

    jr nz, jr_006_7d1e

    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
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
    add $fe
    inc a
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
    nop
    nop
    nop
    ld b, $04
    inc c
    ld [$0808], sp
    jr jr_006_7d7c

    db $10
    db $10
    jr nc, jr_006_7d90

    jr nz, jr_006_7d92

    ld h, b
    ld b, b
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop

jr_006_7d7c:
    ld e, $01
    ccf
    ld bc, $037e
    db $fc
    rlca
    ret nc

    ccf
    ldh a, [$3f]
    ret nc

    ld a, a
    sub b
    rst $38
    sub b
    rst $38
    db $10
    rst $38

jr_006_7d90:
    db $10
    rst $38

jr_006_7d92:
    db $10
    rst $38
    ld bc, $00ff
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

jr_006_7da4:
    cp $01
    cp $81
    ret nz

    add b
    ld h, b
    ret nz

    ld h, b
    ret nz

    jr nz, jr_006_7d90

    jr nc, jr_006_7d92

    jr jr_006_7da4

    nop
    nop
    add b
    nop
    nop
    add b
    ld b, b
    add b
    ld b, b
    add b
    jr nz, jr_006_7dc0

jr_006_7dc0:
    inc e
    jr nz, jr_006_7de3

    rra
    inc d
    ld [$0619], sp
    inc bc
    rlca
    ld e, $01
    ccf
    ld [bc], a
    ld a, e
    ld b, $75
    ld c, $6b
    sbc h
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    add c
    di
    rst $38
    rst $28
    ld e, $ed
    ld e, $d2
    ccf
    and c

jr_006_7de3:
    ld a, a
    ld h, e
    call c, $f3bc
    db $d3
    ldh [rSTAT], a
    add b
    dec b
    inc bc
    xor $1f
    or b
    ld a, a
    ret nc

    rst $38
    ld a, [$f407]
    rrca
    inc e
    rst $38
    ld h, h
    rst $38
    add h
    rst $38
    rlca
    rst $38
    rlca
    db $fc
    inc c
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $cfff
    cp $fe
    jr nc, jr_006_7e1f

    rst $38
    inc b
    rst $38
    inc c
    rst $38
    ld e, $f3
    ld [hl], e
    pop hl
    pop hl

jr_006_7e1f:
    add b
    add b
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
    add b
    rst $38
    ret nz

    ld a, a
    ld h, b
    ccf
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38

jr_006_7e42:
    db $10
    rst $38

jr_006_7e44:
    ld [bc], a
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
    rst $38
    nop
    nop
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

    jr nz, jr_006_7e42

    jr nz, jr_006_7e44

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
    nop
    nop
    nop
    nop
    nop
    inc bc
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
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    nop
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
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_006_7eb0

jr_006_7eb0:
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
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_006_7ee3

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
    inc h
    dec h
    ld h, $27
    jr z, jr_006_7efc

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_006_7f14

jr_006_7ee3:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_006_7f24

    ld a, [hl-]
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_006_7efc:
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    nop
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

jr_006_7f14:
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_006_7f24:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    nop
    nop
    nop
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
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    nop
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
    add a
    adc b
    adc c
    adc d
    adc e
    nop
    adc h
    adc l
    nop
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
    ld l, h
    sbc h
    sbc l
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

Call_006_7fbf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
