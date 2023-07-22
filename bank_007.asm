; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    nop
    nop
    nop
    nop
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
    sbc b
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    nop
    inc b
    nop
    inc b
    ld [bc], a
    inc b
    nop
    ld [bc], a
    nop
    add [hl]
    adc [hl]
    ld bc, $000f
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$0c]
    db $fc
    inc bc
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
    ret nz

    ret nz

    jr nc, jr_007_4052

    ld [bc], a

jr_007_4052:
    nop
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
    ld a, a
    nop
    ccf
    ld b, b
    sbc a
    jr nz, jr_007_4076

    sub b
    rlca
    ld c, b
    inc hl
    ld c, h
    dec b
    ld h, $12
    daa
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_007_4076:
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
    ldh a, [$0c]
    db $fc
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
    nop

jr_007_4091:
    nop
    nop
    nop
    nop
    ldh [$e0], a
    jr jr_007_4091

    ld b, $fe
    ld bc, $00ff
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

    jr nz, jr_007_40b1

jr_007_40b1:
    nop
    nop
    nop
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
    inc bc
    ld [bc], a
    inc b
    inc b
    ld [$1301], sp
    ld [bc], a
    add hl, bc
    ld bc, $1018
    ld h, h
    ld b, d
    add h
    inc c
    ld [bc], a
    ld a, $01
    ld a, [hl]
    ld bc, $827d
    cp [hl]
    pop bc
    ld e, a
    ldh [$37], a
    ld hl, sp-$75
    ld a, h

jr_007_40ea:
    dec b
    ld a, [hl]
    ld b, d
    ccf
    add c
    ccf
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    jr nz, jr_007_40ea

    db $10
    di
    ld [$8479], sp
    ldh [rNR23], a
    db $fc
    inc b
    ld a, [c]
    ld c, $81
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
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

    jr nz, @-$1e

    db $10
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
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_4138:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop

jr_007_4151:
    inc bc
    inc bc
    inc c
    rrca
    db $10
    ld e, $21
    inc a
    ld b, d
    ld a, b
    add h
    ldh a, [$08]
    ldh [rNR10], a
    rst $38
    nop
    ldh a, [rIF]
    ret nz

    jr nc, jr_007_4167

jr_007_4167:
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$08]
    jr c, jr_007_4138

    inc c
    ld [hl-], a
    inc b
    ld a, [bc]
    ld [bc], a
    dec b
    nop
    inc bc
    nop
    inc bc
    nop

Jump_007_417f:
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    inc b
    ld [$1008], sp
    ld de, $0920
    db $10
    inc bc
    ld h, b
    ld b, a
    add b
    rrca
    nop
    rra
    nop
    ld a, a
    nop

jr_007_419c:
    cp $01
    db $fd
    inc bc
    rst $38
    nop
    rst $38
    nop
    cp $01
    ei
    rlca
    xor $1c
    jr c, jr_007_419c

    ldh [$c0], a
    ret nz

    add b
    jr nz, jr_007_4151

    ld b, b
    sbc a
    ld a, a
    rst $38
    ldh [$80], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_41bf:
    nop
    db $fc
    jp nz, $e238

    ld a, [$11f1]
    ld [$0408], sp
    ld [bc], a
    inc b
    ld bc, $0202
    ld bc, $00ff
    ld a, a
    nop
    dec a

jr_007_41d5:
    nop
    ld e, $80
    ld c, $80
    rlca
    ld b, b
    inc bc
    ld h, b
    ld hl, $e030
    rra
    ldh a, [rIF]
    ld hl, sp+$07
    db $f4
    inc bc
    ld [hl], d
    ld bc, $0039
    jr jr_007_41ee

jr_007_41ee:
    adc h
    nop
    ld [$0cf8], sp
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $01
    rst $38
    ld hl, $90df
    ld l, a
    ld e, b
    daa
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    rlca
    adc c
    adc a
    adc d
    adc [hl]
    ld [hl], b
    ld a, a
    add b

jr_007_4213:
    rst $38
    ld bc, $0eff
    cp $30
    ldh a, [$c0]
    ret nz

jr_007_421c:
    nop
    nop
    nop
    nop
    inc b
    db $fc
    ld [bc], a
    cp $81
    rst $38
    ld h, b
    ld a, a
    db $10
    rra
    ld [$080f], sp
    rrca
    inc b
    rlca
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

    jr nz, jr_007_421c

    db $10
    ldh a, [$08]

Jump_007_423f:
    ld hl, sp+$01
    ld [bc], a
    ld bc, $0302
    inc b
    inc bc
    inc b
    rlca
    ld [$0807], sp
    ld c, $11
    ld c, $11
    ret nz

    jr nz, jr_007_4213

    jr nz, jr_007_41d5

    ld b, b
    add b
    ld b, b
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
    ld bc, $0201
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0002
    ld bc, $0600
    nop
    add $80
    ld b, h
    nop
    adc h
    nop
    sbc b
    nop
    ldh a, [$80]
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
    ld bc, $0100
    nop
    ld bc, $4023
    rlca
    ld b, b
    ld b, a
    add b

jr_007_4296:
    rrca
    add b
    rra
    add b
    sbc [hl]
    ld bc, $01be
    dec a
    ld [bc], a
    db $eb
    rla
    db $dd
    daa
    or a
    ld c, [hl]
    ld a, d
    adc [hl]
    ld l, [hl]
    sbc h
    db $f4
    inc e
    db $dd
    add hl, sp
    rst $28
    dec sp
    add b
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rra
    rlca
    db $fd
    ld a, $ff
    rst $38
    ld [hl], d
    adc a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ccf
    ret nz

    or $09
    ld a, d
    add l
    call c, Call_000_01f3
    nop
    ld bc, $0000
    nop
    db $fc
    ldh a, [$cf]
    ccf
    xor $11
    rst $28
    db $10
    db $dd
    inc hl
    db $10
    cp b
    ld [$8c98], sp
    ld d, h
    or h
    ld c, d
    jp nc, $f929

    add sp, $7c
    add sp, -$41
    xor $84
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub [hl]
    add b
    sbc [hl]
    add e
    sbc $43
    inc h
    inc de
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    stop
    jr nc, jr_007_4296

    inc d
    add sp, $4c
    call z, $c848
    xor b
    ld l, b
    ld l, b
    jr z, @+$2a

    jr z, jr_007_434f

    inc d
    inc sp
    ld d, e
    jr c, jr_007_4368

    nop
    nop
    ld h, b
    ld h, b
    ld e, b
    ld a, b
    ld c, b
    ld a, b
    ld d, b
    ld [hl], b
    sub b
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    add d
    cp $82
    cp $82

jr_007_434f:
    cp $1e
    ld hl, $211e
    inc e
    ld [hl+], a
    inc a
    ld b, d
    inc a
    ld b, d
    inc a
    ld b, d
    ld e, h
    and d
    ld e, b
    and h
    nop
    ld bc, $0100
    nop
    ld bc, $0201

jr_007_4368:
    dec b
    ld b, $0c
    ld a, [bc]
    jr c, jr_007_43a0

    ld h, b
    ld b, d
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    dec sp
    inc b
    ld a, e
    inc b
    ld a, e

jr_007_437b:
    inc b
    ld a, e
    inc b
    ld e, e
    inc b
    db $ed
    ld a, $f7
    jr c, jr_007_437b

    add hl, sp
    rst $38
    ld sp, $33fd
    ei
    scf
    rst $28
    scf
    xor $36
    rst $18
    ccf
    ld [hl], c
    rst $38
    rst $18
    ldh [$bf], a
    ret nz

    ldh [$80], a
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_43a0:
    xor [hl]
    ei
    push af
    rst $38
    ld e, a
    db $fc
    db $db
    ld d, h
    ld a, [hl]
    ret nc

    db $fc
    ldh a, [$b8]
    ldh a, [$b8]
    ldh a, [$d6]
    cpl
    db $db
    ccf
    ld a, [hl]
    sbc a
    and $1a

jr_007_43b8:
    ccf
    ld [bc], a

jr_007_43ba:
    rrca
    inc bc

jr_007_43bc:
    rlca
    inc bc

jr_007_43be:
    rlca
    inc bc

jr_007_43c0:
    ei
    rst $38

jr_007_43c2:
    sbc a
    rst $38

jr_007_43c4:
    cp $99
    sbc a
    sbc b
    adc e
    ret z

    ret z

    ret z

    ld b, b
    ret nz

    ld b, b
    ret nz

    rst $38
    ld b, c
    rst $38
    pop hl
    cp $e1
    ld [hl], h
    ei
    or h
    ld a, e
    ld hl, sp+$3f
    ld e, b
    ccf
    jr c, jr_007_43ff

    ld bc, $00fe
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
    jr jr_007_445a

    ret z

    jr c, jr_007_443d

    cp b
    ld [$04f8], sp
    db $fc
    inc b
    db $fc

jr_007_43fc:
    inc b
    db $fc
    inc b

jr_007_43ff:
    db $fc
    ld b, d
    ld a, [hl]
    ld b, c
    ld a, a
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    ld [hl], c
    ld a, a
    ld [hl], c
    ld a, a
    ld [hl], d
    ld a, [hl]
    ld [hl-], a
    ld a, $18
    and h
    jr jr_007_43b8

    jr jr_007_43ba

    jr jr_007_43bc

    jr jr_007_43be

    jr jr_007_43c0

    jr jr_007_43c2

    jr jr_007_43c4

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_4429:
    nop
    ld bc, $0101
    ld bc, $0000
    ld bc, $0301
    ld [bc], a
    ld c, $0c
    inc a
    jr nc, jr_007_4429

    ret nz

    add b
    nop
    nop

jr_007_443d:
    add b
    ret nz

    add b
    jp nz, Jump_000_0284

    inc b
    nop
    inc b
    inc b
    ld [$0800], sp
    ld [$0010], sp
    db $10
    ld de, $1a20
    inc b
    ld a, [bc]
    inc b
    ld [$0004], sp
    inc h
    nop
    ld [hl+], a

jr_007_445a:
    ld b, b
    ld [hl+], a
    ret nc

    ld hl, $21da
    ld [$6a36], a
    ld [hl], $6e
    ld sp, $322d
    dec de
    inc d
    rla
    jr jr_007_43fc

    jr jr_007_44ea

    adc h
    nop
    nop
    nop
    nop
    dec bc
    inc b
    db $f4
    ld [$10e8], sp
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    sbc b
    ldh a, [rBCPS]
    ldh a, [$c2]
    ld bc, $0003
    rrca
    ld b, a
    ccf
    ld e, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld b, [hl]
    add e
    and l
    jp $c0a3


    ret nz

    nop

jr_007_4498:
    ldh a, [$e0]
    db $fc
    ld sp, hl
    rst $38
    db $fc
    cp $fc
    ret nz

    ret nz

    add b
    ret nz

    ldh [rP1], a
    ccf
    ld b, b
    ld b, b
    add h
    add c
    inc b
    dec b
    ld [$0803], sp
    jr jr_007_44d1

    jr jr_007_44d3

    dec h
    rra
    push de
    rrca
    ld a, l
    rlca
    ld a, a
    add [hl]
    ld [hl], a
    adc [hl]
    ld [hl], a
    adc h
    add b
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
    adc a
    nop
    rlca
    inc b

jr_007_44d1:
    db $fc
    ld [bc], a

jr_007_44d3:
    cp $02
    cp $02
    cp $02
    cp $05
    rst $38
    rlca
    db $fc
    ld c, d
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

jr_007_44ea:
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ld [hl-], a
    ld a, $32
    ld a, $32
    ld a, $2a
    ld a, $2a
    ld a, $2a
    ld a, $2a
    ld a, $2a
    ld a, $28
    sub h
    jr z, jr_007_4498

    ld [$0894], sp
    sub h
    inc c
    sub d
    inc d
    adc d
    ld d, l
    adc d
    ld b, [hl]
    adc c
    ld h, b
    ld b, b
    ld b, b
    ld h, b
    jr nc, jr_007_4536

    db $10
    ld de, $1219
    ld a, [bc]
    inc c
    inc b
    ld [$1008], sp
    inc hl
    ld b, b
    ld b, [hl]
    add b
    inc c
    add b
    sbc b
    nop
    jr c, jr_007_452a

jr_007_452a:
    jr c, jr_007_452c

jr_007_452c:
    ld a, b
    inc b
    db $fd
    ld [bc], a
    rst $18
    jr nz, jr_007_4552

    jr nz, jr_007_4554

    nop

jr_007_4536:
    ld c, $01
    rrca
    nop
    inc de
    inc c
    dec h
    ld e, $d6
    ccf
    dec [hl]
    adc $f2
    ld a, a
    rst $28
    ccf
    push af
    dec de
    ld l, a
    sbc h
    db $db
    ld h, [hl]
    ld sp, hl
    ccf
    ld d, a
    cp a
    ret nz

    nop

jr_007_4552:
    ret nz

    nop

jr_007_4554:
    ld b, b
    add b
    ret nz

    add b
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc

jr_007_456b:
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    cp $fe
    di
    cp $c2
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $0bff
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    ld bc, $000f
    xor $1c
    add sp, $1a
    call c, $f63a
    ld sp, $71d7
    xor a
    ld [c], a
    ld l, e
    and [hl]
    rst $18
    ld b, h
    nop
    inc bc
    nop
    inc bc
    inc b
    inc bc
    adc b
    rlca
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, d
    db $fc
    ld c, a
    ld hl, sp+$4f
    ld hl, sp+$2f
    ld hl, sp+$2f
    ld hl, sp+$2f
    ld hl, sp+$2b
    db $fc
    ld d, $fd
    ld h, b
    jr nz, jr_007_45f3

    db $10
    db $10
    db $10
    or b
    db $10
    and b
    jr nz, jr_007_456b

    ld h, b
    ld b, b
    ret nz

    add b
    add b
    ld a, [hl+]
    ld a, $2a
    ld a, $2a
    ld a, [hl]
    ld c, d
    ld a, [hl]
    ld c, d
    ld a, [hl]
    ld c, d
    ld a, [hl]
    jp z, $cafe

    cp $0a
    ld b, l
    ld a, [bc]
    ld b, l
    inc bc
    ld b, h
    dec h
    ld b, d
    jr nz, @+$45

    nop
    ld hl, $2000
    db $10
    jr nz, jr_007_45f1

jr_007_45f1:
    nop
    add b

jr_007_45f3:
    nop
    nop
    add b
    nop
    add b
    add b
    ld b, b
    ld b, b
    or b
    nop
    rst $38
    ld b, $78
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    inc c
    ld [$2030], sp
    ret nz

    add e
    nop
    rrca
    nop
    ld de, $2320
    ret nz

    add a
    nop
    rra
    nop
    ccf
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ld [de], a
    rst $38
    db $eb
    rra
    ld l, e
    sbc a
    ld b, $ff
    dec b
    rst $38
    inc bc
    rst $38
    ld bc, $02ff
    rst $38
    dec bc
    db $fc
    ld b, $ff
    ld bc, $80ff
    rst $38
    ld h, b
    rst $38
    inc e
    rst $38
    db $e3
    rst $38
    inc bc
    rst $38
    ret nz

    nop
    ldh [rP1], a
    ld [hl], b
    add b
    cp b
    ret nz

    ld e, h
    ldh [$f6], a
    ld hl, sp-$61
    rrca
    rst $38
    ld hl, sp-$08
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld b, b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    scf
    rst $38
    ld a, a
    call z, Call_000_000f
    rra
    ld bc, $021e
    rra
    rlca
    inc e
    rrca
    dec a
    inc bc
    ei
    ld b, $fe
    db $fc
    xor e
    sbc b
    db $76
    ld sp, $e1c6
    ld c, h
    jp $83cc


    adc [hl]
    inc bc
    inc d
    rrca
    inc e
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
    rst $38
    nop
    rst $38
    dec d
    rst $38
    dec bc
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b

jr_007_46c6:
    ret nz

    ret nz

    ldh [$e0], a
    jr nc, @-$0e

    jr jr_007_46c6

    rlca
    rst $38
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_007_471b

    ret nz

    rst $38
    nop
    rst $38
    ld c, c
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld [bc], a
    cp $02
    cp $04
    db $fc
    inc b
    db $fc
    ld [$08f8], sp
    db $10
    inc c
    db $10
    rlca
    ld [$0807], sp
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    add b
    nop
    ld [hl], b
    nop
    ccf
    nop
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
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ei

jr_007_471b:
    rlca
    db $ed
    dec e
    ld [hl], e
    ld a, [c]
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    sbc [hl]
    ld h, a
    ld a, [$f4cf]
    sbc a
    db $e4
    ccf
    bit 7, a
    ret nz

    ccf
    nop
    rst $38
    ld b, $ff
    ld a, [bc]
    rst $38
    inc de
    rst $38
    ld h, d
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc h
    rst $38
    jr z, @+$01

jr_007_4744:
    ldh a, [rIE]
    and b
    rst $38
    jr nz, @+$01

    ld b, c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rrca
    db $fc
    jr c, jr_007_4744

    ld h, b
    ret nz

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
    rrca
    ld b, $05
    inc bc
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    ld c, $00
    ld [$0000], sp
    nop
    ret nz

    ld a, a
    ld h, b
    rst $38
    cp c
    rst $18
    adc $0f
    add l
    rlca
    dec b
    rlca
    rlca
    ld b, $1e
    inc b
    sbc e
    add [hl]
    sbc a
    adc a
    cp [hl]
    ret nc

    cp $f0
    adc [hl]
    nop
    ld c, $00
    ld b, $00
    inc bc
    nop
    rst $08
    add a
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
    cp $ff
    pop bc
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ccf
    jr nc, jr_007_47c9

    jr nc, jr_007_47cb

    db $10
    rra
    db $10
    rra
    nop
    rst $38
    ldh [rIE], a
    jr @+$01

    ld b, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10

jr_007_47c9:
    rst $38
    adc b

jr_007_47cb:
    rst $38
    adc b
    rst $38
    ld b, h
    rst $38

jr_007_47d0:
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
    rlca
    rst $38
    ld hl, sp-$08
    jr nz, jr_007_47d0

    ld [$10f8], sp
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

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
    nop
    nop
    nop
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
    add h
    rrca
    add hl, bc
    ld b, $07
    inc b
    rlca
    ld [$080f], sp
    rrca
    db $10
    rra
    db $10
    rra
    adc h
    rst $38
    db $10
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
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0300
    nop
    adc a
    nop
    sbc a
    nop
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    ret nz

    rlca
    nop
    rlca
    nop
    rst $00
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
    db $fc
    inc b
    cp $04
    cp $06
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    ld e, $00
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
    db $10
    rra
    jr jr_007_48b3

    ld [$e80f], sp
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    add sp, $1f
    ld b, e
    rst $38
    ld b, c

jr_007_48b3:
    rst $38
    ld b, e
    rst $38
    ld [hl], c
    rst $38
    ld c, a
    rst $38
    ld b, c

jr_007_48bb:
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    jp nz, Jump_000_01ff

    rst $38
    add c
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
    rst $38
    ret nc

    jr nc, jr_007_48bb

    jr jr_007_4949

    adc h
    db $fc
    add h
    ld a, d
    add $5d
    db $e3
    ccf
    pop hl
    ld l, $f1
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld bc, $0101
    ld bc, $3f20
    jr nz, jr_007_4943

    ld b, b
    ld a, a
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    add b
    rst $38
    add b
    rst $38
    ld e, a
    ldh [$bf], a
    ldh [$af], a
    ldh a, [$57]
    ld hl, sp+$4d
    cp $23
    rst $38
    ld de, $08ff
    rst $38
    rst $38
    nop
    rst $38

jr_007_4943:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_007_4949:
    nop
    db $ed
    di
    cp d
    rst $00
    ld a, h
    rst $38
    rst $30
    ld c, $f9
    rrca
    jp hl


    rra
    or c
    ld a, a
    ld b, c
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    nop
    rra
    nop
    cp a
    nop
    rst $38
    add b
    ld a, a
    ret nz

    rst $18
    ldh [$b7], a
    ld hl, sp-$73
    cp $ff
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
    db $ed
    rra
    or a
    ld a, c
    ldh a, [$1f]
    ldh a, [$1f]
    ret nc

    ccf
    and b
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
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    add b
    rst $38
    add b
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
    rra
    ldh a, [rNR22]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0b
    db $fc
    dec bc

jr_007_49bd:
    db $fc
    rlca
    db $fc
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    and b
    ld h, b
    ldh [rNR41], a
    ret nc

    jr nc, jr_007_49bd

    db $10
    ldh a, [rNR10]
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld b, $07
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
    inc c
    dec b
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld [$1211], sp
    nop
    inc de
    inc d
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_007_4a26

jr_007_4a26:
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_007_4a50

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_007_4a63

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_007_4a73

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    ld [hl], $00
    nop
    nop
    scf
    jr c, jr_007_4a89

jr_007_4a50:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    nop
    nop
    ld b, c
    nop
    nop
    nop
    ld b, d
    nop
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_007_4a63:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    ld d, b
    nop
    nop
    nop
    ld d, c
    nop

jr_007_4a73:
    nop
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
    ld e, [hl]
    nop
    nop
    nop
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_007_4a89:
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
    ld l, [hl]
    ld l, a
    nop
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
    add b
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
    ld l, e
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
    ld l, e
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
    ld l, e
    sbc h
    sbc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    nop
    nop
    ld c, $0e
    ld a, [bc]
    ld c, $07
    rlca
    dec b
    rlca
    dec b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
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
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    inc b
    ld [$100b], sp
    inc d
    inc hl
    jr z, jr_007_4b6b

    nop
    rra
    rla
    ld h, b
    ld e, b
    add a
    ld h, b
    rra
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    ret nz

    nop
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
    ret nz

    nop
    ldh a, [rNR10]
    db $ec
    ld [$06f3], sp
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_4b6b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
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
    nop
    nop
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    pop bc
    and b
    pop hl
    and c
    ld [c], a
    and b
    ld [c], a
    ld d, d
    ld [hl], h
    ld d, c

jr_007_4b93:
    ld [hl], h
    ld de, $524e
    adc l
    and [hl]
    add hl, de
    ld c, h
    inc sp
    inc d
    ld h, e
    xor b
    ld b, a
    add hl, hl
    add $5a
    add l
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
    jr nz, jr_007_4b93

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
    inc b
    ei
    ld bc, $00fe
    rst $38
    nop

jr_007_4bc9:
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
    ld b, b
    add b
    jr nz, @+$42

    sub b
    ld b, b
    adc b
    jr nz, @-$3a

    inc d
    ld [c], a
    ld a, [bc]
    pop af
    ld [$2df1], sp
    jr c, jr_007_4c11

jr_007_4be7:
    add hl, sp
    ld a, [hl+]
    add hl, sp
    inc d
    ccf
    inc d
    ccf
    dec d
    ld a, $0b
    ld l, $0a
    cpl
    ld d, [hl]
    adc c
    sbc e
    nop
    sub e
    nop
    jp nz, $c900

jr_007_4bfd:
    nop
    jp c, Jump_007_6a01

    sub c
    ld l, h
    sub e
    ld h, b
    sbc a
    ret nz

    ccf
    ld b, b
    ccf
    ld b, c
    cp [hl]
    ld b, a
    cp b
    ret z

jr_007_4c0f:
    jr nc, jr_007_4c61

jr_007_4c11:
    jr nz, jr_007_4c73

    nop
    jr jr_007_4bfd

    jr nc, jr_007_4be7

    ldh a, [rIF]
    and c
    ld e, $42
    inc a
    ld d, h
    jr z, jr_007_4bc9

    ld b, b
    ld [hl+], a
    ret nz

    nop
    rst $38
    ld b, b
    cp a
    add c
    ld a, [hl]
    sub c
    ld l, [hl]
    ld [c], a
    inc c
    add b
    inc e
    jr nz, jr_007_4c4e

    ld b, c
    inc a
    add b
    ld a, a
    ret nz

    ccf
    ld b, d
    dec a
    dec h
    ld a, [de]
    ld [hl], b
    ld a, [bc]
    sub l
    ld l, d
    pop de
    ld l, [hl]
    ld c, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$90f7], sp
    ld h, a

jr_007_4c4e:
    ld b, l
    ld [hl+], a
    ld b, c
    ld [hl-], a
    xor d
    ld de, $f805
    ld [bc], a
    db $fc
    ld [hl+], a
    call c, $e619
    rra
    ldh [$91], a
    ld h, b
    ld d, b

jr_007_4c61:
    jr nz, jr_007_4c8d

    stop
    add b
    add b
    ld b, b
    nop
    ld b, b
    ld b, b
    jr nz, jr_007_4c6d

jr_007_4c6d:
    jr nz, jr_007_4c0f

    db $10
    add b
    db $10
    ld d, b

jr_007_4c73:
    ld [$2f0a], sp
    dec l
    ld b, a
    dec d
    ld c, a
    inc d
    ld c, a
    ld [hl+], a
    ld e, a
    ld [hl+], a
    ld e, a
    ld [hl+], a
    ld e, a
    ld hl, $485f
    or a
    dec bc
    or $03
    cp $83
    cp $83

jr_007_4c8d:
    cp $84
    rst $38
    call nz, Call_007_64ff
    rst $38
    ld b, h
    ld bc, $011d
    ld h, $1b
    jp nz, Jump_000_043f

    rst $38
    inc b
    rst $38
    ld [$09ff], sp
    rst $38
    ld h, $c0
    ld e, e
    add h
    ld h, d
    sbc l
    ld b, b
    cp a
    ld bc, $42ff
    rst $38
    add l
    cp $0b
    db $fc
    adc [hl]
    ld a, c
    db $10
    rst $38
    ld d, b
    rst $38
    sub c
    rst $38
    ld h, c
    cp a
    ld [c], a
    ccf

jr_007_4cc0:
    push bc
    ld a, a
    bit 7, a
    ld c, l
    rst $38
    call $ceff
    rst $38
    ld d, [hl]
    rst $38
    ld d, [hl]
    rst $38
    db $dd
    or $6d
    or $7f
    db $e4
    ld h, h
    sbc c
    inc sp
    call c, $ff90
    sub b
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor l
    rst $38
    cp a
    db $ed
    ld [hl], a
    ld [$a55a], sp
    ld b, b
    cp a
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    cp a
    ld b, b
    ld [$0488], sp
    ld c, b
    add h
    jr nz, jr_007_4cc0

    db $10
    db $e4
    db $10
    db $e4
    db $10
    db $e4
    inc d
    ld [c], a
    ld b, c
    ld a, a
    ld b, e
    ld a, a
    adc h
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    db $f4
    rst $38
    adc h
    rst $08
    ld c, b
    rst $28
    ld c, b
    rst $38
    jr z, @+$01

    jr z, @+$01

    jr c, @+$01

    ld c, b
    rst $38
    ld a, [bc]
    rst $38
    ld [de], a
    rst $38
    inc d
    rst $38
    sbc c
    rst $38
    sbc d
    rst $38
    or l
    cp $b4
    rst $38
    rst $38
    rst $38
    ld e, $ff
    ld hl, $dfff
    pop hl
    cp $ff
    rst $38
    rlca
    ei
    inc a
    ld b, $ff
    ld sp, hl
    rst $38
    adc [hl]
    ei
    sub a
    ld a, [$f27d]
    db $eb
    adc h
    rst $30
    call nz, Call_007_76f5
    ei
    ld [de], a
    cp e
    jp nz, $6cf7

    db $db
    db $ec
    rst $38
    ret z

    xor l
    ret z

    reti


    sub b
    ld de, $8181
    ld bc, $0001
    cp a
    db $ed
    db $db
    db $ed
    rst $38
    ret


    rst $30
    rst $08
    sbc c
    rst $38
    ld h, $ff
    db $db
    ld a, h
    xor a
    ld hl, sp+$60
    cp a
    ld h, h
    cp a
    ld h, h
    cp a
    db $e4
    rst $38
    and h
    ccf
    call nc, $d41f
    rra
    ld a, h
    rst $18
    inc d
    ld [c], a
    ld [$08f2], sp
    ld a, [c]
    ld [$48f2], sp
    ld a, [c]
    ld c, b
    ld a, [c]
    ld c, b
    ld a, [c]
    ld c, b
    ld a, [c]
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $ff88
    adc c
    rst $38
    adc d
    rst $38
    dec c
    rst $38
    ld b, $ff
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    or b
    rst $38
    ld d, b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    cp d
    cp $b6
    ld a, [$faab]
    xor d
    di
    cp e
    push hl
    cp a
    db $e3
    ld a, d
    push hl
    xor $70
    ld a, [hl]
    rst $38
    ld b, a
    ccf
    ld h, e
    ccf
    dec bc
    or $14
    and $f8
    db $fc
    xor a
    ldh a, [rP1]
    nop
    ld l, l
    pop af
    cp l
    pop de
    push de
    jp hl


    ld a, a
    pop hl
    add hl, sp
    ld [hl], c
    ld h, c
    ld bc, $0381
    inc bc
    dec b
    nop
    ld bc, $0103
    ld bc, $0203
    inc bc
    inc bc
    ld [bc], a
    rst $38
    rst $38
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    rst $10
    rst $38
    cp a
    rst $38
    ld b, h
    rst $38
    sub a
    adc h
    rst $28
    or l
    sub l
    push hl
    adc d
    rst $38
    cp a
    ld a, b
    db $ec
    rst $08
    db $fc
    rst $28
    cp b
    rst $28
    reti


    rst $28
    ret


    rst $38
    adc c
    rst $38
    cp c
    rst $28
    cp c
    rst $28
    ld c, b
    ld a, [c]
    ld c, h
    ld a, [c]
    ld c, h
    ld a, [c]
    ld c, h
    ld a, [c]
    ld c, b
    db $f4
    ld c, b
    db $f4
    ld c, b
    db $f4
    ld c, b
    db $f4
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    sub h
    rst $38
    sub h
    rst $38
    ld d, l
    cp $55
    cp $36
    db $fc
    inc [hl]
    db $fc
    rst $28
    ld [hl], b
    ld a, a
    or b
    rst $30
    cp b
    cp e
    call c, Call_007_5efd
    ld a, a
    cpl
    ld [hl], $3f
    ld a, $1f
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld [hl], b
    add b
    pop hl
    rst $38
    rst $18
    ld a, $03
    dec b
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld c, $04
    inc l
    jr @+$3a

    ld [hl], b
    ldh [$c0], a
    add b
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [de], a
    inc bc
    dec de
    ld bc, $0119
    add hl, sp
    nop
    inc a
    nop
    ld bc, $0101
    ld bc, $0101
    add e
    ld bc, $8103

jr_007_4eae:
    add l
    jp nz, $ffff

jr_007_4eb2:
    cp d
    rst $00
    ld [hl], c
    rst $18
    ld a, [c]
    sbc a
    ld h, d
    cp a
    ld h, d
    cp a

jr_007_4ebc:
    jp nz, $847f

    rst $38
    ld b, h
    rst $38
    adc b
    rst $38
    jr nc, jr_007_4eae

    jr nc, @-$16

    jr nc, jr_007_4eb2

    jr nz, jr_007_4ebc

    ld h, b
    ret nc

    ld h, b
    ret nc

    ld b, b
    ldh [$c0], a
    and b
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    and b
    rst $38
    or b
    rst $28
    or b
    rst $28
    pop af
    adc $72
    call z, $98e4
    jp hl


    sub b
    or e
    nop
    dec e
    db $f4
    ld d, l
    or h
    push de
    inc [hl]
    ld d, [hl]
    dec [hl]
    ld a, $15
    inc a
    rra
    inc e
    rra
    inc a
    ccf
    ei
    rrca
    dec b
    rst $38
    ld b, $ff
    ld b, h
    rst $38
    ld h, d
    rst $38
    ld d, d
    rst $38
    ld l, c
    rst $38
    ld d, h
    rst $38
    ld a, h
    add b
    cp $80
    cp [hl]
    ret nz

    ld a, [hl]
    ret nz

    ccf
    ldh [rVBK], a
    ldh a, [$37]
    ld hl, sp-$63
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    dec b
    rrca
    add h
    inc bc
    ret nz

    nop
    ld a, h
    nop
    ld [hl], e
    ld bc, $0306
    ld c, $04
    inc bc
    ld bc, $c7ea
    ld e, h
    adc a
    ld sp, $c41f
    ld c, a
    reti


    adc a
    ld [de], a
    ccf
    db $e4
    ld a, a
    adc b
    rst $38
    db $10
    rst $38
    ld h, e
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    add hl, de
    rst $38
    add hl, sp
    rst $38
    ld [hl-], a
    cp $54
    db $fd
    and h
    db $fc
    ld c, b
    ld hl, sp+$48
    ld hl, sp-$80
    ret nz

    nop
    ld b, b
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
    rlca
    rlca
    rlca
    ld b, $07
    ld b, $06
    inc b
    ld b, $04
    inc b
    inc b
    dec c
    ld [$080f], sp
    add [hl]
    ld bc, $030c
    jr jr_007_4f91

    jr nc, @+$11

    ld h, b
    rra
    ret nz

    ccf
    add b

jr_007_4f91:
    ld a, a
    ld bc, $bcff
    ccf
    or h
    ccf
    or h
    ccf
    call nc, Call_007_547f
    rst $38
    sub d
    rst $38
    and d
    rst $38
    ld [hl+], a
    rst $38
    ld d, [hl]
    rst $38
    dec hl
    rst $38
    ld a, [hl+]
    rst $38
    ld h, l
    rst $38
    ld h, [hl]
    rst $38
    ld d, l
    rst $38
    ld d, d
    rst $38
    ld e, d
    rst $38
    ld [hl], a
    rst $08
    ld e, l
    db $e3
    xor a
    ldh a, [$5d]
    cp $b3
    rst $38
    ld c, d
    rst $38
    ld [c], a
    rst $38
    ld [hl-], a
    rst $38
    ld h, b
    add b
    ret nc

    ldh [rBCPS], a
    pop af
    rst $18
    ccf
    db $fc
    rst $38
    rst $38
    inc bc
    ei
    ld a, h
    rst $00
    ld a, a
    ld h, a
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ret nc

    rra
    ret nc

    rst $18
    ldh a, [rIE]
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    rrca
    rst $38
    ld de, $61ff
    rst $38
    sbc b
    ld hl, sp+$28
    ld hl, sp+$48
    ld hl, sp-$70
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR21]
    add hl, de
    inc e
    inc de
    jr jr_007_5021

    jr nz, @+$41

    jr nz, jr_007_504d

    jr nz, jr_007_504f

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    inc bc
    rst $38
    dec e

jr_007_5021:
    cp $70
    ldh [rNR41], a
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add e
    rst $38
    db $fc
    rst $38
    ei
    rlca
    ld bc, $5600
    rst $38
    sub l
    rst $38
    and l
    rst $38
    or e
    rst $38
    ld c, a
    rst $38
    cp e
    rst $00
    ld a, a
    add e
    rst $08
    di
    ld a, [de]
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $81ff

jr_007_504d:
    rst $38
    rst $38

jr_007_504f:
    rst $38
    ld h, d
    sbc a
    ld a, [$c007]
    ld a, a
    ret nz

    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    cp h
    ld a, a
    ld a, a
    add e
    ei
    db $fc
    rlca
    rst $38
    ld [hl], c
    rst $38

jr_007_5066:
    sub b
    sbc a

jr_007_5068:
    ret nc

    sbc a

jr_007_506a:
    ld [hl], b
    rst $38

jr_007_506c:
    ld d, b
    rst $18

jr_007_506e:
    ret nc

    rst $18

jr_007_5070:
    ret nc

    rra

jr_007_5072:
    ldh a, [rIE]

jr_007_5074:
    add c
    rst $38
    ld bc, $0aff
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    jr nz, jr_007_5066

    jr nz, jr_007_5068

    jr nz, jr_007_506a

    jr nz, jr_007_506c

    jr nz, jr_007_506e

    jr nz, jr_007_5070

    jr nz, jr_007_5072

    jr nz, jr_007_5074

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
    inc bc
    ld b, b
    ld a, a
    add c
    rst $38
    add e
    cp $06
    db $fc
    dec b
    db $fc
    rlca
    db $fc
    dec bc
    db $fc
    rrca
    ld hl, sp-$40
    add b
    add b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    rst $38
    nop
    ld a, d
    scf
    rra
    rrca
    dec bc
    ld b, $03
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    cp $03
    ld b, [hl]
    add e
    or l
    ld a, e
    xor a
    rra
    call $e183
    ld b, c
    ld hl, $3161
    ld hl, $fe01
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret z

    ld a, a
    ld h, h
    ld a, a
    ld h, a
    ld a, e
    ld [hl], e

jr_007_510b:
    inc a
    xor b
    ccf
    xor h
    scf
    and [hl]
    inc sp
    or e
    ld de, $ff0a
    rra
    rst $38
    and $f8
    inc [hl]
    jr jr_007_510b

    inc c
    rla
    ld [c], a
    dec c
    pop af
    ld [bc], a
    db $fc
    cp $fe
    ld a, l
    add e
    rrca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    ret nz

    add b
    ldh [rLCDC], a
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld a, h
    inc b
    ld a, [hl-]
    ld b, $02
    inc bc
    ld [bc], a
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
    ld b, $07
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$0f
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
    rst $38
    nop
    nop
    nop
    add b
    nop
    add b
    nop

jr_007_517a:
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
    ld de, $3131
    ld de, $1131
    ld de, $1111
    ld de, $1111
    ld de, $1311
    ld de, $ff40
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b

jr_007_51a3:
    rst $38
    ld e, c
    sub b
    ld d, b
    sbc b
    ld e, b
    adc b
    inc l
    ret z

    jr z, jr_007_517a

    ld c, [hl]
    add h
    ld d, h
    adc [hl]
    ld d, d
    adc [hl]
    add c
    cp $c0
    ld a, a
    ld h, b
    ccf
    jr c, jr_007_51db

    inc d
    rrca
    rlca
    inc bc
    ld [bc], a
    ld bc, $0001
    ld [hl], b
    jr nz, jr_007_51a3

    jr jr_007_51f7

    call nz, $e217
    dec bc
    pop af
    dec b
    ld hl, sp-$7e
    db $fc
    pop hl
    ld a, [hl]
    dec e
    inc bc
    rrca
    ld bc, $0106
    rlca

jr_007_51db:
    nop
    add e
    nop
    jp $e180


    ld b, d
    ld h, c
    ld b, d
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

    ld b, b
    ret nz

    ld b, b
    and b
    ld h, b
    nop
    nop
    nop

jr_007_51f7:
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
    inc bc
    inc b
    dec b
    ld b, $07
    rlca
    ld [$0a09], sp
    nop
    nop
    nop
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
    ld c, $0f
    rlca
    rlca
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
    jr jr_007_5256

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
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_007_5271

    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop

jr_007_5256:
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
    jr z, @+$2b

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

jr_007_5271:
    ld l, $2f
    jr nc, jr_007_52a6

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
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
    scf
    jr c, jr_007_52c0

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
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
    nop
    nop
    nop
    nop

jr_007_52a6:
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_52c0:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld l, c
    ld l, d
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    and b
    ldh [rP1], a
    nop
    nop
    ld bc, $0601
    rlca
    jr jr_007_5330

    jr nz, jr_007_5351

    ld b, b
    ld a, c
    add b
    ld [hl], a
    add b
    nop
    ccf
    ccf
    ret nz

    rst $38
    nop
    ldh a, [rP1]
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rlca
    nop

jr_007_5330:
    db $fc
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
    nop
    ld a, a
    nop
    ccf
    nop
    add e
    nop
    rst $28
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    inc c
    db $fc
    inc bc
    rst $38

jr_007_5351:
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
    add b
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    inc bc
    and b
    ldh [rSVBK], a
    ld [hl], b
    ld d, b
    ld [hl], b
    jr z, jr_007_53a8

    jr z, jr_007_53aa

    inc d
    inc e
    inc d
    inc e
    ld a, [bc]
    ld c, $00
    ld bc, $0300
    inc bc
    inc b
    rlca
    ld [$1007], sp
    rrca
    jr nz, jr_007_53a4

    ld b, b
    rra
    add b
    rst $38
    nop
    db $fc
    inc bc
    add b
    ld a, a
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
    ld a, a
    add b
    inc c
    di
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a

jr_007_53a4:
    db $fc
    inc bc
    rst $38
    nop

jr_007_53a8:
    rst $38
    nop

jr_007_53aa:
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    di
    nop
    ld hl, sp+$00
    db $fd
    nop
    ld hl, sp+$00
    or c
    ld b, b
    jp $f024


    rrca
    rst $38
    nop
    rst $38
    nop
    ld a, a

jr_007_53cf:
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b

jr_007_53da:
    sbc a
    ld h, b
    rst $20
    jr jr_007_53da

    inc b
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_007_53cf

    db $10
    ldh a, [$08]
    ld [hl], b
    adc b
    cp b
    ld b, h
    ret c

    inc h
    ld a, [bc]
    rrca
    dec b
    rlca
    dec b
    rlca
    ld [bc], a
    inc bc
    inc bc
    dec b
    inc bc
    dec b
    rlca
    ld [$0807], sp
    cp a
    nop
    ld a, l
    nop
    cp e
    nop
    rst $20
    add b
    ld h, a
    ret nz

    ld [hl], a
    ret nz

    or l
    ldh [$b1], a
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
    rst $18
    nop
    or a
    ld [$0837], sp
    ld l, a
    db $10
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    or $09
    ldh a, [rTIMA]
    ldh [rTIMA], a
    ret z

    inc b
    adc d
    inc b
    ld b, e
    inc b
    ld l, b
    sub e
    add c
    ld c, h
    add hl, bc
    ld h, $e6
    ld d, e
    rst $30
    ld l, c
    ld e, e
    db $f4
    ld l, a
    jp c, $edb7

    rst $08
    jr nc, @+$75

    adc h
    cp l
    ld b, d
    sbc $21
    rst $28
    sub b
    rst $38
    ret z

jr_007_5464:
    ld a, l
    and [hl]
    or a
    ld e, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $18
    jr nz, jr_007_5464

    db $10
    rst $30
    ld [$12ec], sp
    db $f4
    ld a, [bc]
    ld a, [$fc05]

Call_007_547f:
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_007_5489

jr_007_5489:
    nop
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
    ld b, b
    rlca
    ld [$0807], sp
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    ld c, $11
    ld [$0017], sp
    rra
    db $dd
    ld [hl], b
    db $dd
    ld [hl], b
    db $ed
    jr c, @-$12

    jr c, @-$09

    inc e
    ld a, e
    adc [hl]
    dec sp
    adc $1d
    rst $20
    ld sp, hl
    nop
    or a
    nop
    rrca
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, [hl]
    db $10
    ld h, l
    ld [de], a
    ld bc, $8322
    inc h
    adc e
    ld b, h
    xor e
    ld b, h
    cp e
    ld b, h
    ld [hl], a
    adc b
    pop bc
    ld b, $e5
    ld a, [bc]
    push hl
    ld a, [bc]
    or l
    ld c, d
    or a
    ld c, d
    or [hl]
    ld c, e
    xor e
    ld d, a
    ld l, l
    sub a
    rst $38
    and l
    rst $38
    and d
    rst $38

jr_007_54ed:
    and c
    rst $18
    or c
    di
    sub b
    pop af
    sub b
    pop bc
    db $10
    sub b
    nop
    cp d
    ld c, l
    db $dd
    and [hl]
    sbc a
    db $e3
    db $fd
    and e
    and [hl]
    pop hl
    and e
    ldh [$e1], a
    ld b, b
    ldh [rLCDC], a
    ei
    add h

jr_007_550a:
    db $fd
    ld b, d
    sbc $e1
    ld [hl], $ff
    db $db
    cp h
    cpl
    db $f4
    rst $18
    ld l, a
    rst $38
    ld e, a
    rst $18
    jr nz, jr_007_550a

    db $10
    rst $30
    ld [$8877], sp
    ld a, e
    add h
    cp e
    ld b, h
    db $dd
    ld [hl+], a
    ld l, l
    sub d
    add b
    ld b, b
    ret nz

    jr nz, jr_007_54ed

    jr nz, @-$1e

    db $10
    ldh [rNR10], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR14], a
    nop
    ccf
    nop
    ccf
    jr nz, jr_007_557d

    jr nz, jr_007_557f

    jr nz, jr_007_5581

    jr nz, jr_007_5583

    jr nz, jr_007_5585

    jr nz, jr_007_5587

    dec c
    rst $30
    ld b, $fb
    ld b, $fb
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fc
    ld bc, $01fe
    cp $ff
    nop
    rst $38
    add b
    rst $38
    add b
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop bc
    cp a
    pop hl
    xor a
    pop af
    ld a, l
    rst $38

jr_007_5568:
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    xor $11
    ld a, a
    sub [hl]
    ld a, a
    sub [hl]
    db $76

jr_007_557d:
    sbc h
    ld h, [hl]

jr_007_557f:
    cp h
    ld a, a

jr_007_5581:
    cp a
    ld a, a

jr_007_5583:
    and b
    ld l, a

jr_007_5585:
    cp a
    cp a

jr_007_5587:
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    ldh a, [$ef]
    ld e, $3d
    jp $fcfb


    add b
    ld b, b
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    jr nz, jr_007_5568

    or e
    rst $38
    cp l
    di
    push af
    db $eb
    ld c, c
    db $eb
    ret


    ld l, e
    jp hl


    ld a, e
    ld a, d
    ld a, e
    dec hl
    ld a, d
    xor [hl]
    pop de
    db $76
    ret


    rst $10
    ld l, b
    db $eb
    ld [hl], h
    db $db
    ld [hl], h
    push de
    ld a, d
    call $cb7a
    ld a, h
    ldh [rNR14], a
    ldh [rNR12], a
    ld [hl], b
    adc d
    ld [hl], c
    adc d
    or b
    ld c, c
    or b
    ld c, c
    or b
    ld c, c
    jp c, Jump_000_0024

    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_007_5629

    jr nz, @+$41

    jr nz, jr_007_562d

    jr nz, jr_007_562f

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    dec b
    cp $08
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    db $d3
    rst $28
    ld l, a
    di
    rst $10
    dec sp
    rst $28
    dec de
    ld a, [$760f]
    adc a
    ld a, [hl-]
    rst $00
    ld a, [de]
    rst $20
    ld l, a
    sub c
    ld [hl], a
    sbc c
    inc sp
    db $dd
    inc sp
    db $dd
    sub c
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    cp a

jr_007_5629:
    ld a, a
    ldh a, [$7f]
    ret z

jr_007_562d:
    ld a, a
    sbc c

jr_007_562f:
    ld c, [hl]
    sbc a
    adc h
    sbc $9d
    add sp, -$02
    inc c
    ldh a, [$67]
    sbc [hl]
    ei
    add a
    and $83
    ld b, c
    jp nz, $c043

    ld b, [hl]
    ret nz

    db $ec
    ld e, h
    ld a, b

jr_007_5647:
    ldh a, [$e0]
    nop
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
    ld l, a
    jr c, jr_007_56cf

    jr c, jr_007_5685

    jr nc, jr_007_5697

    db $10
    dec d
    dec bc
    pop hl
    nop
    db $fd
    nop
    ld a, h
    ld bc, $7cc7
    push bc
    ld a, [hl]
    and e
    ld a, [hl]
    ld h, e
    ld a, $d3
    cp [hl]
    ld a, [c]
    sbc a
    ld c, c
    sbc a
    adc c
    rra
    jp c, $ea24

    inc d
    add sp, $14
    add sp, $14
    add sp, $14
    or b
    ld c, h
    or b

jr_007_5685:
    ld c, h
    or b
    ld c, h
    ld c, $8e
    rla
    sbc c
    ld a, [de]
    sub c
    rra
    sub b
    rla
    sbc b
    rrca
    ld [$0c0b], sp
    dec b

jr_007_5697:
    ld b, $1c
    inc e
    ld l, d
    db $76
    cp [hl]
    jp nz, $867a

    db $f4
    inc c
    add sp, $18
    ret nc

    jr nc, jr_007_5647

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
    jr nz, jr_007_56b8

jr_007_56b8:
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b

jr_007_56cf:
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $06ff
    rst $38
    ld a, [de]
    rst $38
    ld l, d
    rst $30
    sbc [hl]
    db $e3
    ld c, $f3
    ld c, $f3
    dec b
    ei
    rlca
    ld sp, hl
    adc b
    rst $38
    ret z

    rst $38
    call nz, $c4ff
    rst $38
    and d
    rst $38
    and e
    rst $38
    pop de
    rst $38
    pop de
    rst $38
    cp h
    push bc
    rst $30
    rst $28
    db $fd
    cp $af
    ld hl, sp-$01
    add b
    ld a, a
    ret nz

    rst $38
    ret nz

    ld a, a
    ldh [$e0], a
    ret nz

    add b
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, b
    ld bc, $0231
    inc h
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$5800], sp
    jr nc, jr_007_575a

    rra
    ld sp, $111f
    ccf
    ld h, c
    ccf
    ld h, c
    ccf
    ld [hl+], a
    ld a, a
    jp $c37e


    ld a, [hl]
    or b
    ld c, b
    or b
    ld c, b
    or b
    ld c, b
    and b
    ld d, b
    and b
    ld d, b
    ld b, b
    ldh [rLCDC], a
    ldh [$80], a
    ldh [rSC], a
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
    nop
    ld b, b
    ret nz

jr_007_575a:
    add b
    add b
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
    jr nz, jr_007_576a

jr_007_576a:
    jr nz, jr_007_576c

jr_007_576c:
    jr nz, jr_007_576e

jr_007_576e:
    jr nz, jr_007_5770

jr_007_5770:
    ld d, b
    nop
    ld b, b
    adc h
    and b
    ld d, b
    ld b, b
    jr nz, jr_007_57b9

    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld b, h
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
    add e
    db $fd
    add e
    db $fd
    ld b, c
    rst $38
    ld b, c
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$c8ff], sp
    rst $38

jr_007_57aa:
    ret z

    rst $38
    and h
    rst $38
    and h
    rst $38
    and d
    rst $38
    sub d
    rst $38
    pop de
    rst $38
    ret


    rst $38
    cp a

jr_007_57b9:
    ldh [$8f], a
    ldh a, [$7f]
    ret nz

    cp a
    ldh [$5f], a
    ldh a, [$57]
    ld hl, sp+$2b
    db $fc
    dec e
    cp $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec bc
    rlca
    inc b
    inc bc
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

    nop
    jr nc, jr_007_57aa

    pop bc
    nop
    ld bc, $0000
    ld bc, $0103
    inc bc
    ld bc, $0302
    ld b, $03
    ld b, [hl]
    db $fd
    add l
    rst $38
    adc e
    rst $38
    sbc [hl]
    rst $38
    ld [hl], $fd
    ld c, l
    cp $0f
    ld a, [$f21f]
    ret nz

    and b
    nop
    ret nz

    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    jr nz, jr_007_581b

jr_007_581b:
    jr nz, jr_007_583d

    nop
    jr nz, jr_007_5820

jr_007_5820:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    add h
    rst $38
    add h
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

jr_007_583d:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [$06ff], sp
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
    ld d, h
    rst $38
    ld d, d
    rst $38
    ld [c], a
    rst $38
    ld hl, $20ff
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld c, $ff
    add hl, bc
    rst $38
    dec b
    cp $12
    rst $38
    sub c
    rst $38
    adc b
    rst $38
    ld c, h
    rst $38
    ld h, $ff
    rst $38
    nop
    cp a
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    ret nz

    ccf
    rst $38
    db $10
    rst $38
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    rra
    ldh a, [$1f]
    ldh [$3f], a
    ld hl, sp-$01
    ld a, b
    rst $08
    ld [bc], a
    rlca
    inc c
    rlca
    inc d
    rrca
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc hl
    or $37
    and $56
    rst $20
    ld [hl], h
    rst $00
    ld [hl], h
    rst $00
    ld h, [hl]
    call $8eec
    db $ec
    adc [hl]
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
    ld bc, $0101
    ld bc, $0203
    nop
    nop
    scf
    scf
    ld a, d
    ld e, c
    ei
    sbc b
    cp e
    xor b
    ei
    jr z, jr_007_5940

    ld e, b
    ld a, c
    ld d, b
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

    ld b, b
    ret nz

    ld b, b
    and b
    ld h, b
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    db $10

jr_007_58f9:
    rst $38
    db $10

jr_007_58fb:
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, jr_007_58f9

    jr nc, jr_007_58fb

    ld sp, $31ee
    xor $3b
    db $e4

jr_007_5912:
    dec sp
    db $e4
    ccf
    ldh [$3f], a
    ldh [rNR51], a
    rst $38
    ld [de], a
    rst $38
    ld [hl-], a
    rst $38
    ld a, [hl+]
    rst $38
    xor c
    ld a, a
    and l
    ld a, a
    and l
    ld a, a
    add h
    ld a, a
    adc h
    rst $38
    ld h, e
    rst $38
    rra
    rst $38
    ld d, $f8
    jr nc, jr_007_5912

    ld h, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, b
    rst $08
    ld a, b
    rst $08
    ld hl, sp-$11
    ld a, b
    rra

jr_007_5940:
    ld c, $07
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $80ff
    rst $38
    ld b, b
    rst $38
    ld h, b
    ccf
    db $ec
    adc [hl]
    db $ec
    adc [hl]
    call z, $cc1c
    inc e
    call z, $c71c
    rla
    sbc $1e
    db $f4
    db $f4
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    rlca
    dec b
    rrca
    rrca
    ld a, e
    ld a, h
    rst $08
    ret z

    rla
    jr jr_007_5996

    db $10
    pop de
    ld [hl], b
    or c
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    pop hl
    ld hl, $21e1
    ld h, e
    ld [hl+], a
    ld h, d
    ld [hl+], a

jr_007_5996:
    ld [hl], d
    ld [hl-], a
    jr jr_007_59b2

    ld h, h
    ld a, h
    jp c, $9e86

    ld [bc], a
    dec e
    inc bc
    rra
    ld bc, $011f
    rrca
    ld bc, $ff20
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

jr_007_59b2:
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$c6], a
    ccf
    add $3f
    add $3f
    push bc
    ccf
    push bc
    ccf
    jp $c33f


    ccf
    jp $c03f


    add b
    ret nz

    add b
    add b
    add b
    sbc a
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    inc sp
    rra
    ld c, $1f
    jr jr_007_5a0d

    inc c
    rlca
    ld b, $03
    inc bc
    ld bc, $0001
    nop
    nop
    call nz, $c6d4
    ld d, $c2

jr_007_5a0d:
    ld [de], a
    jp nz, $c112

    ld de, $10c0
    ret nz

    ret z

    ld a, b
    jr c, jr_007_5a48

    jr nc, jr_007_5a4a

    jr nc, jr_007_5a4b

    ld sp, $131d
    rra
    ld [de], a
    rla
    ld a, [de]
    dec c
    dec bc
    dec c
    dec bc
    cp $fe
    push bc
    add e
    pop bc
    add b
    cp b
    ret nz

    ld l, [hl]
    ret nc

    ld a, e
    inc l
    or [hl]
    rra
    ld l, l
    sbc a
    ld a, [hl]
    inc a
    db $ec
    xor h
    ld h, h
    db $e4
    ld h, h

jr_007_5a3f:
    inc h
    ld l, h
    jr z, jr_007_5a3f

    ld e, b
    ret c

    ld c, b
    ld c, b
    ret z

jr_007_5a48:
    ld c, $01

jr_007_5a4a:
    rrca

jr_007_5a4b:
    nop
    rlca
    nop
    rlca
    nop
    ld [bc], a
    ld bc, $0100
    inc bc
    inc bc
    rrca
    dec c
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
    nop
    nop
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld l, a
    ret nc

    ld l, a
    ret nc

    ld l, a
    ret nc

    ld l, a
    ret nc

    ld l, a
    ret nc

    ld l, a
    ret nc

    xor a
    ret nc

    xor a
    ret nc

    jp nz, $c23f

    ccf
    jp Jump_007_423f


    cp [hl]
    ld b, [hl]
    cp [hl]
    ld b, h
    cp [hl]
    ld b, h
    cp [hl]
    ld c, b

jr_007_5a97:
    cp [hl]
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    db $fc
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    db $fd
    nop
    rst $38
    ld bc, $0e16
    dec b
    inc bc
    ld c, $06
    jr c, jr_007_5ae8

    ld h, e
    jr nz, jr_007_5a97

    ld b, e
    add a
    add b
    jr nz, jr_007_5ad8

jr_007_5ad8:
    ld a, [bc]
    dec c
    add [hl]
    add l
    ld h, [hl]
    ld h, l
    sbc l
    ld a, a
    ld b, $ff
    ld bc, $80ff
    ld a, a
    cp b
    ld b, a

jr_007_5ae8:
    push af
    adc [hl]
    rst $38
    add l
    cp $87
    ld a, l
    add [hl]
    rst $38
    inc b
    or a
    call $f94f
    scf
    ld sp, hl
    xor b
    ret z

    cp b
    add sp, -$27
    cp c
    rst $28
    sbc d
    db $fc
    adc h
    ld a, h
    sbc b
    ld l, h
    db $fc
    cp h
    call z, Call_000_1139
    ld h, e
    ld h, c
    jp Jump_000_0281


    ld [bc], a
    ld b, $02
    ld b, $02
    inc b
    inc b
    inc c
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
    nop
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
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
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
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_007_5b79

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
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_007_5b93

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop

jr_007_5b79:
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_007_5bad

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
    nop

jr_007_5b93:
    jr nc, jr_007_5bc6

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_007_5bd6

    ld a, [hl-]
    dec sp
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_007_5bad:
    nop
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop

jr_007_5bc6:
    nop
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_007_5bd6:
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, c
    ld c, d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld l, h
    ld c, d
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld a, b
    ld c, d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    nop
    jr nc, jr_007_5c59

jr_007_5c59:
    ret nz

    nop
    nop
    nop
    nop
    nop

jr_007_5c5f:
    rrca
    nop
    ld [hl], b
    nop
    add b
    nop

jr_007_5c65:
    nop
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
    inc bc
    ld [bc], a
    inc c
    ld [$1310], sp
    jr nz, jr_007_5cab

    ld b, b
    ld b, c
    add b
    ld [bc], a
    add c
    nop
    ldh a, [$cf]
    nop
    jr nc, jr_007_5ca1

    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    daa
    jr jr_007_5c5f

    ccf
    nop

jr_007_5ca1:
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

jr_007_5cab:
    rst $38
    ld bc, $fe00
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add [hl]
    db $76
    inc e
    rrca
    pop af
    db $10
    ld l, $f0
    ld b, c
    cp $80
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
    ret nz

    ld b, b
    jr nc, jr_007_5c65

    ld [$8448], sp
    ld h, $c7
    nop
    ld a, [$0000]
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
    nop
    nop
    nop
    nop
    nop
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
    ld a, b
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    ld bc, $0001
    nop
    db $10
    db $10
    dec hl
    dec sp
    call z, $00ff
    rst $38
    ld [hl], b
    rst $38
    ld c, [hl]
    rst $08
    add d
    add e
    add d
    add e
    nop
    ld bc, $0201
    add d

jr_007_5d21:
    add h
    add b
    add h
    add l
    adc b
    add d
    adc c
    ld b, l
    jp nc, $d649

    add d
    ld bc, $0304
    ld c, d
    dec b
    sub [hl]
    add hl, bc
    sbc h
    inc bc
    and l
    ld [bc], a
    dec bc
    inc b
    inc l
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_007_5d44:
    ld b, b
    cp a
    ret nz

    ccf
    add h
    ld a, e
    adc h
    ld [hl], e
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
    db $10
    rst $28
    jr z, jr_007_5d21

    ld b, h
    add e
    nop
    rst $38
    nop
    rst $38
    nop

jr_007_5d61:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    add [hl]
    ld a, c
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
    db $10
    rst $28
    jr jr_007_5d61

    ld d, h
    and e
    jp z, Jump_007_7431

    adc c
    ld c, l
    add b
    jr nz, jr_007_5d44

    ld [hl-], a
    ret nz

    ld [de], a
    ldh [rNR31], a
    ldh [$0b], a
    ldh a, [rP1]
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
    ld b, b
    ld b, b
    jr nz, jr_007_5d9b

jr_007_5d9b:
    jr nz, jr_007_5d9d

jr_007_5d9d:
    ret nz

    nop
    jr nz, jr_007_5da1

jr_007_5da1:
    stop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    rrca
    rrca
    ldh a, [$f0]
    nop
    nop
    ld c, d
    db $e4
    ld [hl], d
    db $ec
    dec [hl]
    add sp, $26
    ld sp, hl
    xor h
    di
    add sp, -$09
    and b
    rst $38
    sub b
    rst $38
    ld h, b
    nop
    and d
    ld b, b
    ld c, [hl]
    add b
    ld [hl], d
    adc h
    jp $803c


    ld a, a
    nop
    rst $38
    nop
    rst $38
    or b
    ld b, d
    pop bc
    inc b
    ld [hl], $09
    ret nz

    ccf
    jr nz, @+$01

    jr nz, @+$01

    ld b, c

jr_007_5df9:
    rst $38
    ld b, c
    rst $38
    ld b, h
    inc bc
    db $d3
    nop
    ld l, c
    sub b
    ld c, b
    or b
    inc b
    ld hl, sp-$7d
    db $fc
    add b
    rst $38
    ld [bc], a
    rst $38
    reti


    jr nz, @+$2b

    nop

jr_007_5e10:
    ld [$1600], sp
    ld [$0e91], sp
    ld h, b
    sbc a
    jr nz, jr_007_5df9

    ld b, b
    rst $38
    ld [hl], d
    add c
    or c
    nop
    sub h
    nop
    daa
    nop
    inc [hl]
    inc bc
    db $ec
    inc de
    ld h, $d9
    ld [bc], a
    db $fd
    ld a, [hl-]
    pop bc
    sbc d
    ld h, c
    ld d, d
    ld hl, $0334
    call nc, Call_000_2403
    jp $e31c


    inc c
    di
    and b
    db $10
    add b
    db $10
    ld b, b
    sub b
    ld b, b
    adc b
    jr nz, @-$36

    jr nz, jr_007_5e10

    db $10
    db $e4
    db $10
    db $e4
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr nz, @+$22

    jr jr_007_5e76

    ld h, b
    ld h, b
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
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

jr_007_5e76:
    inc b
    rlca
    inc b
    rlca
    ld [$500f], sp
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld c, b
    rst $38
    inc l
    rst $38
    jr z, @+$01

    jr nc, @+$01

    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $05ff
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    dec d
    rst $38
    and e
    rst $38
    and e
    rst $38
    ld b, l
    rst $38
    ld b, a
    rst $38
    adc e
    rst $38
    adc e
    rst $38
    inc de
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [de]
    rst $38
    ld a, [de]
    rst $38
    ld a, [de]
    rst $38
    dec de
    rst $38
    dec hl
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, c
    rst $38
    ld hl, $30ff
    rst $38
    jr nc, @+$01

    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    call nz, $a4ff
    rst $38
    ld b, $f9
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    db $e4
    db $10
    ld [c], a
    ld [$08f2], sp
    ld a, [c]
    ld [$08f2], sp
    ld a, [c]
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    ld b, b

Call_007_5efd:
    ld b, b
    ld b, b
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
    ld [$080f], sp
    rrca
    db $10
    rra
    db $10
    rra
    db $10
    rra
    ld hl, $223f
    ccf
    ld [hl+], a
    ccf
    and b
    rst $38
    xor b
    rst $38
    ret z

    rst $38
    sub b
    rst $38
    sub b
    rst $38
    jr nz, @+$01

    ld hl, $41ff
    rst $38
    dec l
    rst $38
    dec l
    rst $38
    ld e, c
    rst $38
    ld e, e
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    ld l, l
    rst $38
    ld e, a
    db $ed
    rla
    db $fd
    cpl
    push af
    cpl
    push af
    cpl
    push af
    cpl
    push af
    ccf
    rst $38
    ld c, a
    rst $38
    db $76
    ld sp, hl
    ld [hl], $ef
    ld [hl], $ef
    ld [hl], $ef
    dec [hl]
    rst $28
    cp l
    rst $20
    dec a
    rst $20
    dec a
    rst $20
    cp e
    rst $20
    xor b
    rst $38
    and h
    rst $38
    xor h
    rst $30
    ld l, d
    rst $30
    sub $7b
    cp a
    ld a, a
    rst $38
    ccf
    push af
    dec sp
    and d
    rst $38
    ld h, d
    rst $38
    ld d, d
    rst $38
    ld d, c
    rst $38
    ld c, c
    rst $38
    rst $38
    rst $38
    dec [hl]
    rst $28
    cp l
    rst $20
    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$04ff], sp
    rst $38
    call nz, Call_007_64ff
    cp a
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld bc, $81fe
    cp $00
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
    add b
    nop
    add b
    nop
    ld b, b
    inc h
    ccf
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    and b
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    ld b, d
    rst $38
    ld c, [hl]
    rst $30
    xor [hl]
    rst $10
    sub $87
    add [hl]
    add a
    adc l
    adc a
    dec l
    rrca

jr_007_5fca:
    db $dd
    cpl
    ld a, a
    rst $08
    ld sp, hl
    cp $9f
    add sp, -$07
    add b
    ldh a, [$80]
    ld [hl], b
    add b
    ret nc

    jr nz, jr_007_5fca

    ldh a, [$d6]
    add sp, -$06
    call nz, $c3e0
    pop hl
    ret nz

    push bc
    ld b, d
    ld c, h
    ld b, $3a
    inc c
    push de
    ld a, $7f
    db $e3
    ld e, a
    ld [hl], e
    ld a, c
    inc sp
    inc sp
    pop af
    ld sp, $1110
    db $10
    db $10
    db $10
    db $10
    db $10
    cp $31
    cp a
    ld [hl], b
    rst $18
    ld h, b
    ld a, a
    ret nz

    cp [hl]
    ret nz

    push hl
    add d
    add h
    add e
    adc c
    add a
    ld [$76f7], a
    ei
    db $ed
    ld a, a
    ld a, e
    daa
    ld [hl-], a
    ld hl, $0011
    add c
    nop
    pop bc
    nop
    call nc, $d49f
    sbc a
    jp z, $ca8f

    adc a
    and [hl]
    rst $00
    and [hl]
    rst $00
    cp [hl]
    rst $20
    xor l
    rst $30
    sub c
    xor $d0
    xor a
    ret nc

    xor a
    ret nz

    cp a
    ret z

    or a
    ret c

    or a
    ret nc

    cp a
    ld d, h
    cp e
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
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
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld de, $111f
    rra
    inc bc
    rst $38

jr_007_605e:
    dec c
    rst $38
    dec d
    ei
    ld l, $f3
    ld e, [hl]
    db $e3
    cp [hl]
    jp $877a


    db $fd
    rlca
    adc l
    ld a, a
    dec c
    rst $38
    dec c
    rst $38
    dec d

jr_007_6073:
    rst $38
    dec d
    rst $38
    inc l
    rst $30
    cp h
    rst $20
    cp l
    rst $20
    db $76
    ld sp, hl
    cp a
    ld a, a
    jp c, Jump_007_763f

    adc c
    ld a, e

jr_007_6085:
    add h
    or d
    call z, $e8d6
    ld l, a
    ldh a, [rBCPS]
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    ld b, b
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    ld bc, $1f00
    rra
    jr c, jr_007_60b0

    ld a, b
    jr nc, jr_007_6073

    ld [hl], b
    ld a, [c]
    ld h, b
    ld h, b
    ld [hl+], a
    push hl
    ld b, d
    ld b, [hl]
    jp $8b86


    rst $00
    add b

jr_007_60b0:
    ldh [$c0], a
    and b
    ldh [$f0], a
    ld h, b
    ldh [rSTAT], a
    jr nz, jr_007_611c

    ld h, h
    jr nc, jr_007_605e

    ret nz

    ld l, [hl]
    pop af
    cp a
    ld a, a
    rla
    ccf
    dec d
    ld [bc], a
    nop
    nop
    nop
    ld c, b
    ld c, c
    nop
    ld l, l
    rst $30
    push hl
    rst $38
    push bc
    rst $38
    ld h, l
    rst $38
    xor c
    rst $38
    ld c, e
    cp $d3
    ld a, [hl]
    and l
    cp $55
    cp e
    sbc d
    ld a, l
    xor d
    ld a, l
    or l
    ld l, [hl]
    xor l
    ld h, [hl]
    ld h, $e3
    ld d, [hl]
    db $e3
    ld e, c
    db $e3
    ldh [$e0], a
    ret c

    jr c, jr_007_6085

    inc c
    ld b, $82
    ld b, e
    add c
    add c
    ld b, b
    and b
    ld b, b
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
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld [hl+], a
    ccf
    dec h
    ld a, $47
    ld a, h
    ld c, e
    ld a, h
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    sub [hl]
    ld sp, hl
    sbc l

jr_007_611b:
    di

jr_007_611c:
    or $0f
    ei
    dec c
    db $ed
    dec de
    sbc $33
    cp e
    ld h, a

jr_007_6126:
    db $fd
    rlca
    ei
    adc $fe
    dec e
    db $db
    rst $20
    ld a, d
    rst $00
    or d
    rst $08
    rst $18
    cp a
    jr nz, jr_007_6126

    rst $28
    ld b, b
    ld h, b
    rst $18
    sub e
    db $ec
    ld e, e
    db $fc
    and a
    rst $38
    rst $38
    rst $38
    add b
    nop
    ld a, [hl]
    ld bc, $ff03
    push bc
    ld a, $4b
    inc a
    add l
    inc bc
    rst $38
    cp $ec
    jr c, jr_007_611b

    ld a, b
    add sp, -$08
    jr @-$06

    db $ec
    jr @-$24

    inc c
    jp nz, $0083

    nop
    nop
    nop
    ld e, $0f
    ld a, [hl-]
    inc e
    ld de, $002e
    nop
    nop
    nop
    cp d
    inc e
    rrca
    rlca
    stop
    add b
    nop
    ld b, b
    add b
    nop

jr_007_6177:
    nop
    ld [bc], a
    ld bc, $070b
    ld bc, $ff03

Call_007_617f:
    rst $38
    ld l, a
    jr nc, jr_007_61ff

    jr c, @+$69

    ld a, $a9
    ld a, a
    rst $30
    ld hl, sp+$5f
    ldh [$c9], a
    cp $f2
    db $fd
    rst $18
    ccf
    inc bc
    nop
    rst $20
    nop
    sbc b
    rst $20
    ld b, b
    rst $38
    and b
    ld a, a
    ld a, a
    pop bc
    ld a, a
    ret nz

    cp a
    ret nz

    ld a, a
    ldh a, [$2f]
    jr @-$17

    inc c
    dec d
    and $0a
    di
    ld d, b
    and b
    xor b
    ret nc

    call nc, Call_007_6a68
    inc [hl]
    dec [hl]
    ld a, [de]
    inc e
    rrca
    dec bc
    rlca

jr_007_61ba:
    add d
    ld bc, $40c0
    ret nz

    ld b, b
    jr nz, jr_007_6222

    ld h, b
    jr nz, jr_007_6225

    jr nz, jr_007_6177

    ld [hl], b
    jr nc, jr_007_61ba

    add sp, -$08
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    sbc l
    di
    ld l, $f1
    cpl
    ldh a, [$6f]
    ldh a, [$5f]
    ldh a, [$5f]
    ldh a, [$97]
    ld hl, sp-$71
    ld hl, sp-$49
    ld a, c
    db $dd
    db $e3
    cp $03
    ld a, [$fc07]
    rlca
    db $fc
    rlca
    db $f4
    rrca
    db $f4
    rrca
    inc l
    ret nz

    ld d, e

jr_007_61ff:
    adc h
    and c
    ld e, $c0
    ccf
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc bc
    cp $57
    jr c, jr_007_627e

    jr nc, jr_007_6270

    ld h, b
    cp $40
    cp [hl]
    ret nz

    ld a, h
    add b
    db $fc
    nop
    cp $00
    add [hl]
    rrca
    inc bc
    rlca
    ld b, $03

jr_007_6222:
    dec b
    inc bc
    inc bc

jr_007_6225:
    ld bc, $0102
    ld bc, $0100
    nop
    add b
    nop
    and b
    ret nz

    xor $f1
    rst $38
    sbc a
    ld a, a
    rst $38
    xor a
    ldh a, [$df]
    ldh [$7f], a
    ret nz

    ld l, $1f
    cp c
    ld a, a
    db $db
    rst $28
    rst $28
    ld e, $fe
    db $fc
    sbc h
    ld a, b
    ldh a, [rNR23]
    ldh [$30], a
    cp a
    ret nz

    ld b, c
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
    ret c

    ccf
    db $f4
    rrca
    ld a, [hl-]
    rlca
    dec c
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    rlca
    ld sp, hl
    rlca
    ld sp, hl

jr_007_6270:
    inc b
    ld sp, hl
    inc b
    ld hl, sp-$7e
    db $fc
    ld b, d
    db $fc
    jr nz, jr_007_62f8

    ld h, b
    ccf
    and b
    ret nz

jr_007_627e:
    ld l, b
    ldh a, [$9c]
    ld hl, sp-$3a
    db $fc
    ld [hl], a
    ld a, [$7bce]
    xor e
    add hl, sp
    dec l
    scf
    ld c, b
    ld hl, sp-$34
    ld a, h
    ld b, h
    db $fc
    and h
    db $fc
    and d
    cp $d2
    cp [hl]
    ld [hl], c
    sbc a
    jp hl


    rra
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $07
    ld b, $07
    ld b, $07
    inc c
    rrca
    inc c
    rrca
    dec bc
    db $fc
    rla
    db $fc
    dec e
    or $2b
    or $3e
    db $e3
    ld e, l
    db $e3
    cp a
    pop bc
    cp $81
    db $ec
    rra
    or h
    ld a, a
    ld b, h
    rst $38
    adc h
    rst $38
    sub h
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    call nz, $05ff
    cp $05
    cp $07
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    call z, $fc00
    nop
    cp $00

jr_007_62f8:
    or $08
    ld a, [c]
    inc c
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ccf
    ld h, b
    ld a, a
    jr nz, @+$81

    ld hl, $213f
    ccf
    ld hl, $233e
    ldh a, [rNR41]
    ret nz

    ld h, b
    add b
    ret nz

    ret nz

    add b
    inc bc
    add b
    add a
    nop
    adc e
    inc b
    dec b
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
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $3f60
    ld d, d
    ccf
    ld [hl], h
    ccf
    add hl, sp
    ld a, [hl]
    pop de
    ld a, [hl]
    ld h, d
    db $fc
    add h
    ld hl, sp-$7e
    db $fc
    xor l
    scf
    xor [hl]
    inc sp
    or [hl]
    inc hl
    scf
    ld [de], a
    dec sp
    ld d, $5b
    ld [hl], $53
    ld a, $35
    ld e, $f9
    rrca
    db $f4
    rrca
    db $fc
    rlca
    ld a, [$fe07]
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01fe
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

    jr nz, @-$1e

    jr nz, @-$1e

    and b
    ldh [$09], a
    rrca
    add hl, bc
    rrca

Jump_007_6380:
    ld [de], a
    rra
    inc de
    ld e, $13
    ld e, $25
    ld a, $25
    ld a, $27
    inc a
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
    rst $38
    nop
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    ld c, b
    rst $38
    ret z

    ld a, a
    ret z

    ld a, a
    ret z

    ld a, a
    dec b
    cp $45
    cp $26
    rst $38
    dec e
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp l
    jp $ff7f


    add d
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    db $eb
    inc e
    db $dd
    ld [hl], $ef
    ld a, [c]
    ld e, [hl]
    db $e3
    ld a, a
    pop bc
    cp a
    pop bc
    rst $38
    add c
    rst $38
    rst $38
    rra
    ld [hl-], a
    dec a
    ld d, $ff
    inc d
    rst $38
    inc d
    ei
    inc e
    rst $28
    jr jr_007_6468

    adc b
    rst $38
    adc b
    ld c, $1b
    dec a
    inc de
    rst $18
    ld sp, $21ff
    cp [hl]
    ld h, c
    rst $38
    ld b, b
    ld a, a
    ret nz

    rst $38
    rst $38
    ret nz

    nop
    add sp, -$10
    inc d
    ld hl, sp+$0e
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    dec b
    inc bc
    ld a, [bc]
    rlca
    inc d
    rrca
    cp b
    ld a, a
    ret nc

    rst $38
    db $10
    rst $38
    db $10
    rst $38
    rst $38
    rst $38
    ld bc, $02fe
    db $fc
    inc b
    ld hl, sp+$02
    db $fc
    ld bc, $01fe
    cp $01
    cp $e1
    cp $55
    ld a, $57
    inc a
    scf
    inc e
    ld d, a
    inc a
    ld d, a
    inc a
    ld e, e
    inc a
    ld e, e
    inc a
    ld e, a
    jr c, @+$01

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
    sub b
    ldh a, [$50]
    ldh a, [$c8]
    ld a, b
    xor b
    ld a, b
    add sp, $38
    call nc, $f43c
    inc e
    ld [$001e], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_6468:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    inc bc
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
    rlca
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
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_007_64a7

jr_007_64a7:
    add hl, de
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
    jr nz, jr_007_64d9

    ld [hl+], a
    inc hl
    nop
    nop

Jump_007_64bc:
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
    jr z, @+$2b

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
    nop
    cpl
    nop

jr_007_64d9:
    jr nc, jr_007_650c

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_007_651c

    nop
    nop
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
    inc a
    dec a
    ld a, $3f
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
    nop
    nop

Call_007_64ff:
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
    ld c, l
    ld c, [hl]
    ld c, a

jr_007_650c:
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

jr_007_651c:
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    nop
    nop
    nop
    nop
    nop
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
    ld h, a
    ld l, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    halt
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    ccf
    jr nc, jr_007_6571

jr_007_6571:
    nop
    nop
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

    ldh a, [$30]
    nop
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
    inc e
    jr @+$22

    jr nz, jr_007_6591

jr_007_6591:
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

    ld [hl], b
    jr nc, jr_007_65b7

    ld [$0000], sp
    nop
    nop
    nop
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

jr_007_65b7:
    nop
    rrca
    rrca
    ld a, a
    ld [hl], b
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
    add b
    add b
    ldh a, [rSVBK]
    jr c, jr_007_65d6

    inc c
    inc b
    nop
    nop
    ld bc, $0301
    ld [bc], a

jr_007_65d6:
    ld b, $04
    inc b
    inc b
    ld [$0808], sp
    ld [$1018], sp
    ldh a, [$c0]
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
    inc a
    inc c
    ld b, $02
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    rrca
    nop
    ccf
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
    ldh [rNR41], a
    nop
    nop
    inc a
    inc a
    ld b, [hl]
    ld b, d
    add e
    add c
    add e
    add c
    rst $08
    add c
    rst $38
    add c
    ld a, [hl]
    ld b, d
    ld h, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    add b
    pop bc
    add b
    jp Jump_007_6380


    ld b, b
    ld [hl], e
    ld b, b
    ccf
    jr nz, jr_007_663d

    inc b
    ld a, h
    inc b
    cp $02
    cp $02
    cp $02
    db $fc
    inc b
    db $fc

jr_007_663d:
    inc b
    ld hl, sp+$08
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc c
    ld [$080c], sp
    inc c
    jr c, @+$3e

    ret z

    nop
    nop
    nop
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
    nop
    ld b, $02
    inc bc
    ld bc, $0103
    ld bc, $0101
    nop
    ld bc, $fd00
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    jr jr_007_6692

    jr jr_007_6694

    jr jr_007_6696

    jr @+$12

    inc c
    ld [$080c], sp
    inc b
    inc b
    ld b, $04
    nop
    nop

jr_007_6692:
    nop
    nop

jr_007_6694:
    nop
    nop

jr_007_6696:
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $7f00
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

jr_007_66b0:
    ldh [rNR41], a

jr_007_66b2:
    ldh [$38], a
    ld hl, sp+$27
    rst $38

jr_007_66b7:
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    inc a
    inc a
    rlca
    rlca
    ld [$1008], sp
    sub b
    and b

jr_007_66c9:
    ld h, b
    pop hl
    jr nz, jr_007_66b0

    jr nz, jr_007_66b2

    jr nz, jr_007_66d1

jr_007_66d1:
    nop
    add b
    add b
    ret nz

    ld b, b
    ld h, b
    jr nz, jr_007_66c9

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR11]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    nop
    nop
    nop
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
    inc bc
    inc e
    rra
    jr jr_007_670a

    rlca
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_670a:
    nop
    nop
    nop
    ld hl, sp-$08
    rlca
    ldh a, [$33]
    jp $07c4


    ld [$0906], sp
    dec c
    ld [de], a
    dec bc
    inc d
    dec bc
    inc d
    dec bc
    inc d
    db $ec
    jr jr_007_66b7

    ld l, h
    ld a, [hl]
    add h
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
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
    rst $00
    nop
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02fe
    db $fc
    inc b
    db $fc
    ld [$70fe], sp
    add b
    add b
    nop
    ld bc, $8600
    inc b
    adc b
    adc b
    ld [hl], b
    ld sp, $0300
    nop
    rlca

jr_007_675f:
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    ld h, b
    inc e
    db $fc
    inc bc
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
    ret nz

    ret nz

    jr nc, jr_007_675f

    db $10
    inc bc
    ld [bc], a
    inc bc
    dec b
    dec b
    ld [$0800], sp
    ld [$0110], sp
    db $10
    ld bc, $0110
    jr nc, jr_007_6791

jr_007_6791:
    nop
    add b
    nop
    ldh [$c0], a
    db $fc
    jr nc, @+$01

    rrca
    ei
    nop
    rst $20
    nop
    add [hl]
    nop
    rst $38
    ld bc, $027f

jr_007_67a4:
    ccf
    inc c
    rst $38
    jr nc, @+$01

    ret nz

    rst $18
    rlca
    cp b
    ld [$1030], sp
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

jr_007_67ba:
    rst $38
    ret nz

    ccf
    jr nz, jr_007_683e

    db $10
    rst $20
    jr nz, jr_007_67ba

    db $10
    rst $38
    ld [$07ff], sp
    ldh a, [rIF]
    pop af
    rrca
    ld hl, sp+$07
    ld a, [$f004]
    rra
    rst $20
    jr c, jr_007_67a4

    ld [hl], b
    sbc e
    rst $20
    cp d
    db $fc
    ret nc

    ldh [$81], a
    nop
    rlca
    nop
    ld a, [hl]
    add c
    rst $38
    nop
    cp $01
    ld a, [$06fd]
    rrca
    ld a, a
    ld bc, $01f6
    and $01
    rra
    and b
    rra
    ldh [$3f], a

jr_007_67f5:
    ret nz

    scf
    rst $08
    dec sp
    db $fc
    rst $18
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    db $fc
    rst $30
    rrca
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    dec bc
    call nc, Call_000_2cc3
    db $e3
    dec d
    pop af
    rrca
    ld a, d
    add [hl]
    ld [hl], d
    xor $d2
    ld a, $ea
    ld e, $bd
    ld a, [hl]
    rst $08
    jp Jump_000_0003


    ld bc, $0000
    nop
    nop
    nop
    rra
    nop
    ccf
    nop
    rst $28
    rra
    rst $38
    nop
    rst $38
    add b
    cp a
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b

jr_007_683e:
    rst $38
    ld b, c
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
    rst $38
    nop
    rst $38
    ret nz

    adc a
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    rst $38
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $38

jr_007_6868:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rNR10], a
    ret nz

    jr nz, jr_007_67f5

    ld h, b
    ld b, b
    ret nz

    ld e, b
    ret c

    ld h, h
    db $fc
    add d
    cp $02
    cp $00
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
    inc bc
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $c601
    ld b, h
    cp b
    and h
    ld b, e
    jp $ff3c


    nop
    jr nz, jr_007_68f2

    ld b, b
    sub b
    and d
    db $10
    dec d
    jr nz, jr_007_6868

    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    pop af
    nop
    di
    nop
    cp $00
    rst $38
    nop
    ld [hl], b
    db $10
    ld [hl], c
    db $10
    pop af
    db $10

jr_007_68c6:
    sbc c
    ld [$071f], sp
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    jr jr_007_68c6

    inc e
    di
    inc e
    db $e3
    inc a
    rst $00
    ld hl, sp+$0f
    ldh a, [$fe]
    ld bc, $01fe
    ldh a, [$08]
    ldh [rNR10], a
    ret nz

    jr nz, @-$5a

    ld b, b
    ld d, b
    adc b
    nop
    or b
    jr nz, jr_007_692e

    ld b, b
    add b
    rra
    nop

jr_007_68f2:
    dec a
    nop
    ld [hl], e
    nop
    jp nz, RST_00

    nop
    nop
    nop
    ld sp, $3b00
    ld b, b
    add $01
    add e
    nop
    nop
    nop
    nop
    nop
    jr c, jr_007_690a

jr_007_690a:
    rst $38
    ld bc, $43be
    ld [hl], a
    adc d
    ccf
    add b
    rra
    nop
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    ldh a, [rP1]
    db $fc
    nop
    ldh [rNR34], a
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    stop
    inc a
    nop
    ld a, a
    nop

jr_007_692e:
    rra
    ldh [$f1], a
    rrca
    ld sp, hl
    rlca
    db $f4
    inc bc
    ld [hl-], a
    ld bc, $0100
    ld bc, $0000
    nop
    ret nz

    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    jp $ff7c


    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ret z

    ld a, a
    cp a
    jp nz, $c2be

    ld a, [hl]
    add d
    ld a, a
    add d
    ld a, a
    add c
    ld a, a
    add b
    ccf
    ret nz

    cp a
    ret nz

    ld a, a
    jr nz, jr_007_69a2

    jr nz, jr_007_69a4

    jr nz, jr_007_69e6

    jr nz, @+$01

    ret nz

    cp $01
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld b, $ff
    dec bc
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
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ret nz

    ccf
    ld bc, $01ff
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

jr_007_69a2:
    nop
    nop

jr_007_69a4:
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
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    dec bc
    inc c
    rlca
    inc b
    rlca
    inc b
    dec b
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    inc bc
    db $fd
    ld b, $f3
    inc c
    rst $30
    ld [$00ff], sp
    cp $01
    cp c
    ld a, a
    ld b, [hl]
    rst $38
    or c
    rst $38
    jp hl


    rra

jr_007_69dc:
    db $f4
    rrca
    db $fc
    rlca
    cp l
    ld a, [hl]
    jp $00ff


    rst $38

jr_007_69e6:
    nop
    rst $38
    ret nz

    rst $38
    jr nz, jr_007_6a2b

    sub b
    sbc a
    sub b
    sbc a
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    ld e, a
    ldh [$2f], a
    ldh a, [rNR22]
    ld hl, sp+$0b
    db $fc
    ld b, $ff
    db $fc

Jump_007_6a01:
    inc bc
    db $fc
    inc bc
    ei
    ld b, $ff
    inc b
    rst $30
    inc c
    rst $28
    jr jr_007_69dc

    jr c, jr_007_6a4e

    ldh a, [$c1]
    nop
    add e
    nop
    adc [hl]
    ld bc, $059a
    add hl, sp
    rlca
    ld [hl], c
    rrca
    pop af
    rrca
    ld h, c
    sbc a
    ld a, a
    add b
    ld a, [hl]
    add c
    or $09
    ld [c], a
    dec e
    ld b, d
    cp a
    ld [bc], a

jr_007_6a2b:
    rst $38
    inc de
    rst $38
    dec d
    rst $38
    ld h, l
    sbc [hl]
    push hl
    ld e, $c5
    ld a, $c4
    ccf
    add h
    ld a, a
    inc b
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    ldh [$3f], a
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    or b
    rst $38
    sbc b
    rst $38

jr_007_6a4e:
    ld d, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    or b
    rst $38
    ret c

    rst $38
    cp h
    rst $38
    pop af
    nop
    rra
    ldh [rIF], a
    ldh a, [rSC]
    db $fd

Call_007_6a68:
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld c, b
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    ld c, $ff
    sbc a
    ldh [$9b], a
    db $e4
    adc b
    rst $30
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    rst $38
    nop
    rst $38
    nop
    cp $01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $17ff
    ld hl, sp+$2f
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$1f]
    ldh a, [rNR22]
    ld hl, sp-$75
    db $fc
    ld b, [hl]
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    ld a, a
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38

jr_007_6ac8:
    ld [bc], a
    cp $02
    cp $04
    db $fc
    jr jr_007_6ac8

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
    inc bc
    ld [bc], a
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
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    ld l, a
    ld [hl], b
    jr @+$21

    rlca
    rlca
    nop
    nop
    db $fc
    rlca
    db $fd
    rlca
    or $0e
    add sp, $18
    or b
    ld [hl], b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    and b
    cp a
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf
    ld [de], a
    rra
    ld c, $0f
    inc bc
    inc bc
    nop
    nop
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_007_6b29:
    rst $38
    nop

jr_007_6b2b:
    rst $38
    nop
    rst $38
    jp $dfff


    ldh a, [rNR34]
    pop af
    ld e, $f1
    ld e, $f1
    inc a
    di
    inc a
    di
    ld c, h
    res 1, h
    adc e
    ld h, c
    sbc a
    ld h, c
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    jr nz, jr_007_6b29

    jr nz, jr_007_6b2b

    jr nz, @+$01

    jr nz, @+$01

    dec d
    rst $38
    rla
    rst $38
    sbc h
    rst $38
    rst $10
    rst $38
    or a
    rst $38
    sbc a
    cp $5a
    cp $7e
    cp $09
    rst $38
    adc d
    db $fd
    ld c, e
    db $fc
    rst $20
    db $fc
    ld sp, hl
    cp $7f
    ld a, b
    ld a, d
    inc a
    ld a, h
    ld a, h
    ld e, l
    di
    rst $30
    ld hl, sp+$4f
    ld hl, sp-$01
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    jp Jump_000_0cff


    rst $38
    cp a
    ld a, a
    rst $38
    ld a, a
    ld l, a
    rst $08
    rst $08
    rst $00
    rst $08
    rst $08
    rst $38
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    jp nz, $e2ff

    rst $38
    ld [c], a
    rst $38
    or h
    rst $38
    db $f4
    rst $38
    ret c

    rst $38
    dec c
    db $fd
    inc c
    db $fc
    inc c
    db $fc
    ld [$88f8], sp
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp+$10
    rst $38
    ret z

    rst $38
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
    ld [bc], a
    cp $0c
    db $fc
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $113f
    rra
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rIE]
    sbc a
    sbc a
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    ld b, $05
    ld b, $05
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
    db $10
    rst $38
    ld [$07ff], sp
    rst $38
    dec b
    rst $38
    add [hl]
    rst $38
    ld b, a
    ld a, [hl]
    ld b, a
    ld a, h
    cpl
    jr c, jr_007_6ca8

    rst $38
    ld a, a
    rst $30
    rst $38
    rst $30
    ld [hl], a
    rst $30
    ld [hl], l
    rst $30
    db $f4
    ld [hl], a
    or [hl]
    ld h, e
    dec sp
    db $e3
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fc
    cp $fc
    add sp, -$04
    call z, $1cf8
    ld hl, sp-$08
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
    inc b
    nop
    ld [$ff04], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $7f
    call z, Call_007_617f
    ld a, a
    ld a, a
    ccf

jr_007_6c6e:
    ld l, $1f

jr_007_6c70:
    pop af
    rst $18
    ld sp, hl
    rst $18
    jp c, $dddf

    rst $18
    call nc, $889f
    sbc a
    xor b
    rra
    add sp, $1f
    adc b
    ld hl, sp-$70
    ldh a, [$90]
    ldh a, [$a0]
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    jr nz, jr_007_6c6e

    db $10
    ldh a, [rP1]
    nop
    nop
    nop

jr_007_6c94:
    nop
    nop

jr_007_6c96:
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
    ld d, $19
    ld e, $11
    inc l
    inc sp
    inc a
    inc hl

jr_007_6ca8:
    dec a
    inc hl
    ld l, $3f
    or $f8
    jr nc, jr_007_6c70

    ld a, [hl-]
    pop hl
    jr c, jr_007_6c94

    jr c, jr_007_6c96

    inc a
    ldh [rIE], a
    rst $38
    db $e3
    nop
    inc bc
    nop
    ld a, a
    ccf
    ldh a, [$c0]
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    nop
    inc c
    nop
    nop
    nop
    rst $38
    cp $82
    cp $82
    cp $42
    cp $c0
    ld a, [hl]
    ld b, [hl]
    ld a, h
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    ld bc, $0207
    rlca
    ld [bc], a
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    ret nc

    ccf
    db $fc
    rst $38
    adc a
    inc bc
    add c
    nop
    db $10
    ldh a, [$08]
    ld hl, sp+$18
    ld hl, sp+$10
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$a0]
    ldh [$e0], a
    ld h, b
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $04
    inc e
    jr jr_007_6d8f

    ld h, b
    nop
    nop
    ld sp, $ff31
    adc $1c
    ld [$1018], sp
    ld sp, $3311
    ld [hl+], a
    inc h
    inc h
    inc c
    ld c, $d0
    ret c

    and b
    jr nc, jr_007_6d97

    ld b, b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    ld [$0107], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6600
    rst $20
    pop bc
    pop bc
    jr nz, @-$1e

    ld d, b
    jr nc, jr_007_6d89

    db $10
    jr nc, jr_007_6d6c

    jr nz, jr_007_6d7e

    ldh [rNR41], a
    ldh [rP1], a
    or b
    ret nz

    ld l, h
    ld [hl], b
    ld a, [de]
    inc e
    ld b, $07
    dec b
    rlca

jr_007_6d6c:
    dec b
    inc b
    inc b
    inc b
    inc h
    ld a, h
    ld h, h
    inc a
    inc e
    jr c, jr_007_6d8f

    nop
    add b
    nop
    and d
    pop bc
    ld a, e
    rst $20

jr_007_6d7e:
    ld e, l
    ld a, $0d
    inc bc
    ld a, [bc]
    ld b, $14
    inc c
    ld e, h
    inc a
    db $e4

jr_007_6d89:
    ld a, h
    or h
    call z, Call_000_0cf4
    db $f4

jr_007_6d8f:
    inc c
    ldh a, [$c0]
    inc a
    jr c, @+$08

    inc b
    inc bc

jr_007_6d97:
    ld [bc], a
    ld e, $1c
    jr z, jr_007_6dcc

    jr nz, jr_007_6dbe

    jr nz, jr_007_6dc0

    jr c, jr_007_6dba

    ld c, $06
    ld bc, $0203
    ld bc, $0001
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
    add b
    add b
    add b
    add b

jr_007_6dba:
    ld b, b
    ret nz

    and b
    ld h, b

jr_007_6dbe:
    db $e3
    inc hl

jr_007_6dc0:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    rlca

jr_007_6dcb:
    rlca

jr_007_6dcc:
    inc c
    ld [$080c], sp
    ret nz

    add b
    nop
    nop
    nop
    nop
    add c
    nop
    jp $8681


    inc bc
    inc c
    rlca
    add hl, de
    ld c, $3c
    jr z, jr_007_6e53

    jr c, @-$1e

    ld [hl], b
    sub b
    ldh a, [$28]
    ret c

    ld c, h
    add h
    add a
    ld [bc], a
    add hl, bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rlca
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    rst $30
    ld c, $dc
    jr c, @-$06

    jr c, jr_007_6dcb

    ld l, b
    cp b
    ld l, b
    ld l, h
    call nz, $c4cc
    add [hl]
    ld [bc], a
    rlca
    ld bc, $0205
    inc b
    inc b
    rrca
    rrca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nz, jr_007_6e6b

    ret nz

    rst $38
    add b
    rst $38
    ld a, a
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
    db $f4
    inc c
    db $fc
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $60
    ld b, b
    add b

jr_007_6e53:
    ret nz

    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    and b
    ret nz

    ld a, b
    ld [hl], b
    call nc, $fb37
    inc e
    ld l, a
    jr jr_007_6ed6

    jr @+$7d

    inc c
    ld [hl], a

jr_007_6e6b:
    inc c
    scf
    inc c
    dec [hl]
    ld c, $80
    add b
    ld c, a
    rst $08
    cp a

jr_007_6e75:
    ld [hl], b
    db $ec
    jr jr_007_6e75

    ld [$0cf6], sp
    cp $04
    cp $04
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ld h, b
    jr nz, jr_007_6ee9

    jr nz, jr_007_6ebb

    db $10
    jr jr_007_6e96

    inc c
    inc b
    ld [$0808], sp
    ld [$0808], sp

jr_007_6e96:
    ld [$0808], sp
    ld [$0809], sp
    dec bc
    add hl, bc
    ld c, $0b
    ld [de], a
    inc e
    jr jr_007_6ec0

    inc [hl]
    ld e, $6b
    scf
    jp nc, $a161

    ret nz

    ld b, b
    add b
    add b
    nop
    db $10
    rrca
    jr nz, jr_007_6ed3

    ld b, b
    ccf
    add b
    ld a, a
    add b
    rst $38
    ld b, b

jr_007_6ebb:
    rst $38
    jr nz, jr_007_6f3d

    db $10
    ccf

jr_007_6ec0:
    cp a
    ret nz

    ld e, h
    db $e3
    inc sp
    rst $38
    ld c, $fc
    inc c
    ld hl, sp+$18
    ldh a, [$30]
    ldh [rNR41], a
    ldh [$30], a
    ldh [$e0], a

jr_007_6ed3:
    ret nz

    add b
    nop

jr_007_6ed6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc b
    rrca
    ld bc, $0312
    ld b, $03
    inc b

jr_007_6ee9:
    rlca
    inc c
    rlca
    ld [$180f], sp
    rrca
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
    ld bc, $07ff
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
    ld hl, sp-$01
    adc [hl]
    rlca
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    ret z

    cp $04
    rst $38
    ld [bc], a
    rst $38
    ld bc, $807f
    rst $38
    add b
    rst $38
    add b
    cp h
    ret nz

    nop
    nop
    inc bc
    nop
    rrca
    rlca
    cp h
    dec de
    add sp, -$4d
    ld b, d
    pop hl
    ret nz

jr_007_6f3d:
    ld h, c
    or b
    ld h, c
    scf
    ld c, $fb
    cp $02
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld a, [$fa06]
    ld b, $f6
    inc c
    db $fc
    ld [$18e8], sp
    ld a, b
    sub b
    ret c

    or b
    ret nc

    or b
    inc c
    inc b
    ld b, $02
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec c
    ld c, $06
    inc b
    ld [$0c0c], sp
    ld [$1810], sp
    jr jr_007_6f8c

    jr nz, jr_007_6fae

    jr nz, jr_007_6fa0

    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop

jr_007_6f8c:
    rrca
    nop
    rra
    nop
    ld l, h
    rra
    ld a, [$fd07]
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld [bc], a
    ei
    ld b, $ff
    dec b

jr_007_6fa0:
    ld h, b
    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
    nop
    adc h
    nop
    inc a
    nop
    db $fc
    add b

jr_007_6fae:
    db $fc
    ld b, b
    ld [$0000], sp
    ld [$0800], sp
    inc d
    ld [$1408], sp
    add hl, bc
    inc d
    dec hl
    dec d
    ld a, $03
    db $10
    rra
    jr nc, @+$21

    ld h, b
    ccf
    ld h, b
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    ld bc, $0cff
    ld hl, sp+$18
    ldh a, [rNR41]
    ldh a, [$30]
    ldh [rLCDC], a
    ldh [$60], a
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    inc bc
    ld bc, $0001
    nop
    nop

jr_007_6fe6:
    rlca
    nop

jr_007_6fe8:
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ldh [$7f], a
    ld b, b
    ret nz

    ld h, b
    ret nz

    jr nz, jr_007_6fe6

    jr nc, jr_007_6fe8

    db $10
    ldh a, [rNR23]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$61
    jr nc, jr_007_702b

    jr nc, @+$32

    add hl, de
    ld [hl], a
    dec de
    ld d, [hl]
    inc e
    ld e, h
    ld [$08d8], sp
    ret c

    ld [$ff03], sp
    dec e
    cp $ff
    ldh [$c7], a
    nop
    rlca
    nop
    rlca

jr_007_702b:
    nop
    rlca
    nop
    rlca

jr_007_702f:
    nop
    or b
    ldh [rSVBK], a
    ldh [$e0], a
    ld b, b
    ldh [rLCDC], a
    and b
    ld h, b
    ldh a, [rNR41]
    ret nc

    jr nc, jr_007_702f

    db $10
    rlca
    ld bc, $061e
    jr c, jr_007_705e

    ld h, b
    jr nz, jr_007_70a9

    jr nz, jr_007_707b

    db $10
    jr @+$0a

    inc c
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    inc bc
    inc b
    dec b

jr_007_705e:
    ld b, $07
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
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop

jr_007_707b:
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
    jr nz, jr_007_70ab

    ld [hl+], a
    nop
    nop
    nop
    nop
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_007_70bf

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_007_70cf

    ld [hl-], a
    nop
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_007_70e1

    ld a, [hl-]

jr_007_70a9:
    dec sp
    inc a

jr_007_70ab:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_007_70bf:
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
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_007_70cf:
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_70e1:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    sub c
    sub d
    sub e
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc e
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
    cp $00
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
    ld bc, $0081
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ld a, a
    ld h, b
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
    add b
    add b
    ld h, b
    ldh [$d0], a
    jr nc, jr_007_71bb

    ld [$0300], sp
    ld [bc], a
    inc c
    ld [$0111], sp
    ld [hl+], a
    ld [bc], a
    ld b, h
    inc b
    adc b
    nop
    adc b
    ld bc, $a388
    inc e
    sub b
    ld h, b
    ld b, b
    add b
    inc bc

jr_007_71bb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    rrca
    nop
    rst $38
    nop
    rst $18
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add e
    ld h, d
    ld [c], a
    ld [de], a
    or $0c
    cp $04
    cp $04
    ld e, $04
    cp $04
    rst $38
    ld [bc], a
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
    rlca
    nop
    rrca
    nop
    rrca
    nop
    inc b
    inc c
    inc c
    inc b
    ld a, [hl-]
    ld b, $fe
    ld [bc], a
    cp $02
    cp $02
    ld a, [$fc06]
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
    ld bc, $0601
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
    ld hl, sp-$08
    or $0e
    nop
    nop
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
    ld hl, sp+$08
    inc b
    inc b
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
    ld bc, $0100
    nop
    ld bc, $8801
    ld bc, $0388
    adc b
    inc bc
    adc b
    rlca
    adc b
    rlca
    ld [$0817], sp
    rrca
    db $10
    rra
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    nop
    nop
    ld a, a
    nop
    cp $01
    ldh a, [rIF]
    pop bc
    ccf
    ld [bc], a
    cp $04
    db $fc
    inc b
    db $fc
    rra
    ld [bc], a
    rst $38
    ld bc, $f807
    nop
    rst $38
    ldh [rIE], a
    db $10
    rra
    jr c, jr_007_72c1

    ld a, b
    rrca
    rra
    nop
    sbc a
    nop
    cp a
    ret nz

    rst $28
    ld [hl], b
    rra
    rst $38
    ld [bc], a
    cp $02

jr_007_72c1:
    cp $02
    cp $f4
    inc c
    add sp, $18
    ret nc

    jr nc, jr_007_732c

    pop hl
    add c
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
    ldh [$e0], a
    db $10
    db $10
    db $10
    db $10
    ldh [$e0], a
    nop
    nop
    nop
    nop
    inc c
    ld [$1018], sp
    jr nc, jr_007_730a

    jr nz, jr_007_730c

    ld b, b
    ld h, b
    ld h, b
    ld b, b
    ld h, b
    ld b, b
    ld h, b
    ld b, b
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    ld bc, $1f00
    nop
    ccf
    nop
    ld a, a

jr_007_7301:
    nop
    rst $38
    nop
    inc b
    ld [$b088], sp
    ld h, b
    ret nz

jr_007_730a:
    ret nz

    ld b, b

jr_007_730c:
    and c
    ld h, b
    db $e3
    jr nz, @-$17

    jr nz, jr_007_7301

    jr nz, jr_007_7315

jr_007_7315:
    nop
    rlca
    nop
    ccf
    nop
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    inc bc
    nop
    inc b
    nop
    nop
    nop
    ret nz

    nop
    db $fc
    nop
    ld a, a
    nop

jr_007_732c:
    rra
    nop
    rst $38
    nop
    sbc a
    nop
    ld a, a
    nop
    add b
    ld b, b
    ld b, b
    jr nz, jr_007_7359

    db $10
    db $10
    ld [$04c8], sp
    ldh [rSC], a
    ld hl, sp+$01
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
    add b
    add b
    ld b, b
    nop
    ld [bc], a
    nop
    inc b
    nop

jr_007_7359:
    jr jr_007_735b

jr_007_735b:
    inc hl
    nop
    ld b, h
    nop
    add h
    nop
    adc b
    nop
    adc b
    cpl
    db $10
    ld e, a
    jr nz, jr_007_7386

    jp $073a


    ld [hl], h
    rrca
    ld a, c
    rrca
    ld a, [$fb0f]
    ld c, $c0
    ccf
    add b
    ld a, a
    ret nz

    rst $38
    ld [hl], b
    rst $38
    adc b
    rst $38
    ld h, h
    sbc a
    db $f4
    rrca
    db $f4
    rrca
    inc b
    db $fc

jr_007_7386:
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $e6ff
    cp $e8
    rra
    ret nc

    ccf
    ldh [rIE], a
    inc bc

jr_007_739b:
    rst $38
    inc e
    db $fc
    ld h, b
    ldh [$83], a
    add b
    ld e, $00
    inc b
    db $fc
    inc b
    db $fc
    ccf
    rst $38
    ret nz

    ret nz

jr_007_73ac:
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38

jr_007_73b3:
    nop
    nop
    nop

jr_007_73b6:
    nop
    rra
    nop
    ldh [$60], a
    ldh [$1f], a
    jr nc, jr_007_739b

    inc de
    ld sp, hl
    rrca
    ei
    rrca
    nop
    nop
    nop
    rst $20
    nop
    jr jr_007_73eb

    jr nc, jr_007_73ac

    ld h, b
    cp a
    ret nz

    rst $30
    ld hl, sp+$0d
    cp $60
    ld b, b
    ld b, c
    ldh [rNR42], a
    ld h, b
    pop af
    jr nz, jr_007_73b6

    jr nc, @-$13

    inc e
    or $0f
    ld sp, hl
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_007_73eb:
    nop
    cp $01
    db $fd
    inc bc
    or $0f
    db $fc
    rst $38
    db $fc
    jr nz, jr_007_73b3

    ld h, b
    ret c

    ld h, b
    ld a, c
    ret nz

    cp e
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    jr jr_007_7406

jr_007_7406:
    ld [hl], c
    nop
    rst $20
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
    db $fc
    inc bc
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38

jr_007_7427:
    nop
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_007_7431:
    rst $38
    ld bc, $40ff
    jr nc, jr_007_7427

    ld [$08f0], sp
    ldh [rNR23], a
    jr nz, @-$06

    ld b, b
    ldh a, [$a0]
    ret nc

    jr nz, @-$6e

    nop
    ld c, b
    nop
    ld c, b
    nop
    jr z, jr_007_744b

jr_007_744b:
    inc h
    nop
    inc e
    nop
    inc b
    nop
    inc b
    nop
    inc b
    rst $30
    ld c, $fb
    ld b, $fe
    ld bc, $017e
    ld a, b
    rlca
    ld [hl], b
    rrca
    jr nc, jr_007_7471

    jr nc, jr_007_7473

    push af
    rrca
    and $1e
    add h
    ld a, h
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [rNR41]

jr_007_7471:
    ldh [rNR41], a

jr_007_7473:
    pop hl
    inc e
    jr jr_007_7490

    db $10
    inc sp
    jr nz, jr_007_7481

    jr c, jr_007_747d

jr_007_747d:
    jr nz, jr_007_747f

jr_007_747f:
    ld b, b
    nop

jr_007_7481:
    add b
    nop
    nop
    ld [hl], c
    nop
    pop hl
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7490:
    ccf
    nop
    cp $00
    rst $18
    nop
    add hl, sp
    nop
    inc bc
    nop
    rlca
    nop
    dec c
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    push bc
    ld a, $87
    ld a, b
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld e, a
    add b
    add a
    nop
    nop
    nop
    ld a, [$fd07]
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp l
    nop
    sbc [hl]
    nop
    ld b, $00
    ldh [$1f], a
    add b
    rst $38
    ld b, b
    rst $38
    and b
    ld a, a
    ret nc

    ccf
    add sp, $1f
    ld [hl], h
    rrca
    ld a, [hl-]
    rlca
    rrca
    rst $38
    ld [hl], $f9
    ld d, b
    ldh [$60], a
    ret nz

    ret nz

    add b
    pop bc
    add b
    rst $00
    add b

jr_007_74e2:
    ld c, a
    ret nz

    ld a, a
    add b
    rst $38
    jp Jump_007_64bc


    ld l, l
    inc [hl]
    ccf
    inc d
    rst $38
    inc de
    rst $18
    jr nc, jr_007_74e2

jr_007_74f3:
    jr nc, jr_007_74f3

    ld bc, $81fe
    cp $41
    cp $41
    cp $41
    cp $81
    cp $01
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_007_750a:
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
    rst $38
    inc bc
    cp $05
    cp $07
    db $fc
    dec b
    cp $03
    cp $02
    rst $38
    ld bc, $20ff
    db $10
    ld b, b
    jr nz, jr_007_7529

jr_007_7529:
    ld h, b
    nop
    ld h, b
    ret nz

    jr nc, jr_007_758f

    sub b
    jr nz, jr_007_750a

    jr @-$18

    nop
    inc b
    nop

jr_007_7537:
    inc b
    nop
    ld [bc], a

jr_007_753a:
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$11

    db $10
    rrca
    ld [$0407], sp
    di
    ld bc, $000f
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_007_7537

    jr nz, jr_007_753a

    ld b, b
    jp nz, $8580

    nop
    dec b
    nop
    ld b, $00
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0720
    ld b, b
    rrca
    add b
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, l
    inc bc
    cp $00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc [hl]
    ld h, c
    cp b
    rst $00
    ld [hl], b
    adc a
    jr nz, jr_007_7586

jr_007_7586:
    ld [$fe00], a
    inc b
    rst $38
    ld [$789f], sp
    ccf

jr_007_758f:
    pop af
    ld d, a
    ld sp, hl
    ld h, d
    rst $38
    nop
    nop
    jr c, jr_007_7598

jr_007_7598:
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    cp [hl]
    pop de
    sbc b
    rst $30
    nop
    nop
    nop
    nop
    jr jr_007_75aa

jr_007_75aa:
    cp $00
    rst $38
    nop
    db $e3
    inc e
    ldh [$1f], a
    ld b, b
    cp a
    ld bc, $0203
    ld bc, $0001
    rrca
    nop
    adc a
    nop
    rst $38
    nop
    ld a, e
    adc h
    inc e
    rst $20
    ld c, a
    ldh [$b6], a
    ld sp, hl
    ld c, a
    rst $38
    ret nz

    ld a, a
    and b
    ld a, a
    ldh [$3f], a
    ret nc

    ccf
    sub b
    ld a, a
    cp a
    ld h, b
    db $fd
    ld [c], a
    ld a, b
    rst $30
    ld d, b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    rst $38
    nop
    ei
    rlca
    ld [hl], h
    adc a
    dec bc
    db $fc
    rla
    ld sp, hl
    ld d, $fb
    rra
    ld a, [c]
    dec l
    or $00
    rst $38
    ret nz

    rst $38
    jr c, @+$01

    db $fc
    rst $38
    ld [hl], d
    adc a
    ld a, [$fa07]
    rlca
    call nz, $ce3f
    pop af
    dec sp
    db $fc
    dec d
    cp $08
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    nop
    add b
    nop
    add b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    ld a, c
    rlca
    ei
    ld b, $f3
    ld c, $75
    adc [hl]
    ld h, l
    sbc [hl]
    ld h, l

Jump_007_763f:
    sbc [hl]
    db $e4
    sbc a
    ld [c], a
    sbc a
    ldh [$1f], a
    jp $8a3f


    ld a, a
    adc h
    ld a, a
    dec c
    cp $2d
    cp $2f
    rst $38
    cpl
    rst $38
    and e
    cp $e5
    cp [hl]
    and l
    cp $95
    ld a, [hl]
    rst $10
    inc a
    rst $30
    inc e
    rra
    adc h
    add c
    add h
    sbc b
    rst $38
    ld e, b
    rst $38
    call nc, $bc7f
    ld [hl], a
    cp $37
    rst $18
    ccf
    add sp, $1f
    or [hl]
    rrca
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld hl, $b4ff
    rst $38
    ld l, [hl]
    rst $38
    ld b, $fb
    inc bc
    db $fd
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
    db $10
    rst $38
    db $10
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld h, h
    rst $38
    inc h
    rst $38
    inc e
    rst $38
    inc de
    di
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$2d], a
    or $ed
    or $1c
    rla
    ld d, $1b
    dec bc
    dec c
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
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
    ld h, b
    rst $38
    db $fc
    rst $38
    ld b, $07
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $0eff
    cp $10
    ldh a, [rLCDC]
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

Call_007_76ea:
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

Call_007_76f5:
    dec b
    inc bc
    dec b
    nop
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [$0b0f], sp
    rrca
    jp nz, Jump_007_41bf

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    ld [$efff], sp
    rst $38
    scf
    db $fd
    inc e
    db $fd
    sbc [hl]
    db $fd
    ld a, a
    ei
    rra
    ei
    rra
    ei
    dec de
    ei
    inc de
    ei
    ret nz

    add b
    add b
    ret nz

    ret nz

    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ret nz

    ldh [$c0], a
    and b
    dec sp
    rrca
    cpl
    rra
    ccf
    inc e
    ld a, a
    add hl, sp
    ld e, d
    ld a, [hl-]
    dec sp
    ld [de], a
    ccf
    inc de
    scf
    inc de
    sub l
    rst $38
    ld [c], a
    db $fd
    ei
    db $fc
    ccf
    ld a, h
    dec a
    ld a, $7f
    ld a, $be
    ld a, a
    rst $38
    rst $38
    ld b, b
    rst $38

jr_007_7756:
    ret nz

    rst $38

jr_007_7758:
    ld h, c
    rst $38
    and c
    ld a, a
    pop de
    ccf
    pop de
    ccf
    pop af
    rra
    ld [hl], c
    sbc a
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    inc l
    rst $38
    inc l
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, c
    rst $38
    jr nz, jr_007_7756

    jr nz, jr_007_7758

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
    nop
    nop
    ld [bc], a
    inc bc

jr_007_7786:
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp Jump_000_3cff


    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_007_7786

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
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    rla
    jr @+$31

    jr nc, jr_007_7820

    ld h, b
    cp a
    ret nz

    ccf
    ccf
    rst $00
    ld hl, sp+$3f
    ret nz

    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01fe
    ldh a, [rIE]
    and b
    ld a, a
    ld hl, sp+$7f
    add sp, $1f
    ret z

    ccf
    add h
    ld a, a
    ld a, [hl-]
    rst $38
    ld a, l
    rst $38
    ld a, [$13f3]
    di
    dec a
    pop hl
    ld h, e
    rst $08
    ld b, c
    sbc $40
    ret nz

    ld h, b
    ret nz

    ldh a, [$e0]
    add b
    and b
    ld b, b
    and b
    ld h, b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    jr c, jr_007_7802

jr_007_7802:
    ld a, b
    ld b, b
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0005
    ld [bc], a
    ld bc, $ffff
    rst $30
    ei
    ei
    pop af
    db $fd
    ei
    ld a, a
    rst $38
    cp d
    rst $38

jr_007_7820:
    rst $00
    cp $fe
    db $fd
    pop af
    rra
    ld e, c
    cp a
    reti


    ccf
    ld a, [$af3f]
    ld a, [hl]
    bit 7, [hl]
    ld b, e
    cp $82
    rst $38
    ld b, d
    cp $c2
    cp $24
    db $fc
    and h
    ld a, h
    xor b
    ld a, b
    ret nc

    ld [hl], b
    ld d, b
    ldh a, [$a0]
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $0601
    rlca
    ld [$140f], sp
    dec de
    inc l
    inc sp
    add hl, sp
    daa
    rra
    rra
    ld h, c
    ld a, a
    add d
    rst $38
    dec c
    cp $35
    cp $5b
    db $ec
    cp e
    call z, $986f
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld a, b
    pop af
    ld c, $ee
    rra
    rst $38
    rra
    rst $38
    rra
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ld a, h
    rst $38

jr_007_7886:
    ld a, h
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add a
    rst $38
    sbc d
    db $fc
    jr jr_007_7886

    inc c
    ld hl, sp+$04
    cp $02
    rst $38
    ld bc, $7fff
    rst $38
    and c
    ret nz

    nop
    nop
    jr jr_007_7906

    jr nc, jr_007_78a8

jr_007_78a8:
    ld bc, $1f10
    inc de
    sbc a
    adc [hl]
    ld [c], a
    adc $f6
    db $ec
    ld e, h
    jr nc, jr_007_78b5

jr_007_78b5:
    nop
    ld bc, $0000
    add b
    ld bc, $0100
    nop
    inc bc
    nop
    ld b, $01
    dec c
    inc bc
    adc l
    ld [hl], e
    ld [bc], a
    rst $38
    db $f4
    rrca
    rst $38
    ccf
    ret c

    ld h, b
    ld h, b
    ret nz

    rst $00
    add e
    sbc l
    rla
    rrca
    rst $38
    rla
    ld hl, sp+$28
    ldh a, [$fc]
    ldh a, [$0e]
    nop
    rst $38
    nop
    rst $30
    ld hl, sp-$05
    inc c
    rst $38
    rst $38
    cp $01
    ccf
    nop
    ccf

jr_007_78eb:
    nop
    ccf
    nop
    ccf
    nop
    sbc a
    nop
    sub a
    ld [$0000], sp
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    and b
    ld h, b
    ldh [rNR41], a
    ret nc

    jr nc, jr_007_78eb

    jr jr_007_795f

    ld h, a

jr_007_7906:
    ld a, e
    ld b, [hl]
    cp [hl]
    call nz, $84fe
    cp $84
    cp $84
    cp $84
    db $fc
    add [hl]
    rst $30
    jr @+$01

    db $10
    ld e, a
    jr nc, jr_007_797a

    jr nc, @+$71

    jr nc, jr_007_798e

    jr nc, jr_007_7950

    jr nc, jr_007_7952

    jr nc, @+$01

    rra
    xor $1f
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    ld bc, $3fd8
    add a
    ld a, a
    adc [hl]
    ld a, a
    dec e
    ld hl, sp+$21
    pop af
    ld b, c
    pop hl
    add c
    ret nz

    nop
    add b
    ldh a, [$e0]
    ret nz

    add b
    add sp, -$10
    add b
    add b
    nop
    add b
    nop
    nop

jr_007_7950:
    nop
    nop

jr_007_7952:
    nop
    nop
    inc c
    jr jr_007_796e

    inc c
    ld a, a
    ccf
    sbc $61
    add [hl]
    push bc
    push bc

jr_007_795f:
    add a
    add a
    jp nz, $41e3

    ld a, a
    ld a, $60
    ret nz

    ret nz

    add b
    add b
    add b
    add d
    add b

jr_007_796e:
    add a
    nop
    rrca
    nop
    rra
    nop
    dec de
    ld e, $3b
    ld e, $37
    inc e

jr_007_797a:
    ld [hl], $1c
    inc d
    inc e
    inc e
    inc c
    add h
    inc c
    call nc, $ff0c
    inc b
    sbc l
    ld b, $0e
    inc bc
    inc bc
    ld bc, $0000

jr_007_798e:
    nop
    nop
    nop
    nop
    nop
    nop
    db $eb
    inc e
    db $dd
    ld a, $be
    ld h, e
    di
    pop bc
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$08
    db $f4
    inc c
    db $f4
    inc c
    cp h
    call nz, Call_007_76ea
    ld a, [hl-]
    ld e, $66
    ld a, $3a
    ld d, $fb
    add [hl]
    rst $38
    add d
    cp l
    jp Jump_007_417f


    ld e, [hl]
    ld h, c
    cpl
    jr nc, jr_007_79d8

    jr jr_007_79cf

    rrca
    cpl
    jr nc, jr_007_79f6

    jr nc, @-$4f

    jr nc, jr_007_7a3a

    or b
    xor a
    ldh a, [$6f]

jr_007_79cf:
    ldh a, [$af]
    ld [hl], b
    scf
    ld hl, sp-$03
    inc bc
    cp $03

jr_007_79d8:
    ei
    ld b, $fc
    ld b, $f6
    inc c
    db $f4
    inc c
    ld hl, sp+$0c
    ld hl, sp+$0c
    nop
    nop
    nop
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
    ld bc, $0303
    ldh [rLCDC], a

jr_007_79f6:
    ld b, b
    ld h, b
    ld [hl], c
    jr nz, jr_007_7a3e

    ld h, c
    ld l, e
    ld [hl], $fe
    ld a, h
    add b
    add b
    ret nz

    add b
    rst $38
    nop
    rst $18
    ld h, b

jr_007_7a08:
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    inc e
    jr c, jr_007_7a08

    ldh [$c0], a
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    dec de
    dec de
    dec c
    dec c
    rlca

jr_007_7a3a:
    rlca
    inc bc
    rlca
    inc bc

jr_007_7a3e:
    inc bc
    ld bc, $0001
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
    add b
    add b
    add b
    add b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    ld b, $07
    rst $30
    ld hl, sp+$1b
    inc e
    ld a, e
    ld a, h
    cp l
    cp $5e
    cp a
    rst $30
    rrca
    ld a, [$fa07]
    rlca
    db $fc
    ld [$08fc], sp
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld a, h
    adc b
    ret z

    db $fc
    ld a, l
    cp $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0103
    ld bc, $e001
    ld b, b
    ldh a, [rNR41]
    ld hl, sp+$10
    db $fc
    ld [$0cfe], sp
    di
    ccf
    call c, Call_007_7fe3
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0f9e
    di
    db $fc
    rst $38
    nop
    inc e
    ld [$1038], sp
    ld a, [hl]
    inc a
    db $db
    ld h, [hl]
    cp l
    jp $01fe


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
    add b
    add b
    add b
    add b
    ret nz

    add b
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    inc b
    inc b
    ld c, $04
    rrca
    inc b
    rrca
    dec bc
    ret nz

    ld b, b
    ld h, b
    jr nz, @+$62

    jr nz, jr_007_7b4b

    jr nz, jr_007_7b4d

    jr nz, @-$3e

    ld b, b
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
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0000
    nop
    nop
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_007_7b41

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_007_7b30

jr_007_7b30:
    nop
    nop
    nop
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_007_7b66

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_007_7b41:
    ld l, $2f
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_007_7b7b

    ld [hl-], a

jr_007_7b4b:
    inc sp
    inc [hl]

jr_007_7b4d:
    dec [hl]
    ld [hl], $37
    jr c, jr_007_7b8b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_007_7b66:
    ld c, c
    ld c, d
    ld c, e
    inc a
    ld c, h
    ld c, l
    nop
    nop
    nop
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

jr_007_7b7b:
    ld d, a
    ld e, b
    inc a
    ld e, c
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_007_7b8b:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    nop
    add c
    add d
    add e
    add h
    add l
    add [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add a
    adc b
    adc c
    nop
    nop
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    nop
    adc a
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub c
    sub d
    sub e
    nop
    nop
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    nop
    sbc c
    sbc d
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

Call_007_7fe3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
