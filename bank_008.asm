; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

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
    nop
    inc b
    inc b
    ld [$0000], sp
    nop
    nop
    nop
    rrca
    nop
    ld [hl], b
    nop
    add b
    nop
    nop
    inc bc
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    inc bc
    inc bc
    ld b, $04
    db $fc
    ld [$08f8], sp
    ld hl, sp+$10
    nop
    nop
    inc a
    inc a
    rst $38
    jp $0081


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
    add b
    add b
    ret nz

    ld b, b
    ld h, b
    jr nz, jr_008_407d

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
    nop
    nop
    inc bc
    inc bc
    ld b, $04
    inc c
    ld [$0000], sp
    nop
    nop
    nop
    ld bc, $0201
    cp $fe
    add e
    ld bc, $0000
    nop
    nop
    nop
    jr nz, jr_008_4093

    ld d, b
    nop
    adc b
    nop
    rlca
    nop
    nop
    add b
    add b
    rst $08

jr_008_407d:
    ld b, b
    ld a, a
    jr nz, jr_008_4085

    ld [$1008], sp
    nop

jr_008_4085:
    jr nz, jr_008_4088

    ret nz

jr_008_4088:
    ld bc, $0300
    nop
    inc bc
    nop
    rst $38
    nop
    ld a, a
    nop

jr_008_4092:
    ld a, a

jr_008_4093:
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    jr nz, jr_008_4092

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$06
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

jr_008_40c6:
    nop
    nop
    nop
    nop
    ldh [$e0], a
    jr jr_008_40c6

    inc b
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
    inc c
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    jr jr_008_40eb

jr_008_40eb:
    jr jr_008_40ed

jr_008_40ed:
    jr z, jr_008_40ff

    ld c, b
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    call c, $2000
    nop
    nop
    nop
    nop

jr_008_40ff:
    nop
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    jr nc, jr_008_411a

    jr c, jr_008_411c

    jr c, jr_008_4116

    ld a, h
    ld [$0007], sp
    rrca
    nop
    rra
    nop

jr_008_4116:
    ccf
    nop
    ccf
    nop

jr_008_411a:
    ld a, a
    nop

jr_008_411c:
    ld a, a
    nop
    ld a, a

jr_008_411f:
    nop
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    add sp, $18
    ldh a, [rNR10]
    ret nc

    jr nc, jr_008_411f

    jr nc, jr_008_4131

jr_008_4131:
    nop
    nop
    nop
    rrca
    rrca
    db $10
    db $10
    ld hl, $2320
    jr nz, jr_008_4164

    jr nz, jr_008_4156

    stop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    jr jr_008_4162

    jr nc, jr_008_4174

    jr nz, @+$22

jr_008_4156:
    ld h, b
    ld b, b
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

jr_008_4162:
    nop
    nop

jr_008_4164:
    rrca
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    db $10
    rra
    db $10

jr_008_4174:
    rst $38
    ld [$08ff], sp
    rst $30
    inc c
    rst $38
    inc b
    db $fd
    ld b, $fd
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    adc $00
    call c, $9800
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_008_4197:
    nop
    sbc a
    nop
    rra
    nop
    scf
    rrca
    ld l, b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, a
    add b
    rst $18
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_008_4197

    ld h, b
    sbc a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e00
    nop
    jr nc, jr_008_420f

    ret nz

    nop
    inc de
    db $10
    jr nz, jr_008_41f8

    jr nz, jr_008_41fe

    ld b, b

jr_008_41f8:
    rrca
    add b
    rra
    nop
    ccf
    nop

jr_008_41fe:
    rst $38
    nop
    nop
    sub b
    nop
    jr nz, jr_008_4206

    nop

jr_008_4206:
    rst $00
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_008_420f:
    nop
    jr jr_008_4212

jr_008_4212:
    ld a, c
    nop
    or $00
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    cp $04
    adc a
    ld [bc], a
    dec e
    inc bc
    inc a
    inc bc
    ld a, [hl]
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, [hl]
    ld bc, $c7bb
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    xor b
    ld a, b
    ret z

    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    push af
    add hl, de
    and $0f
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
    ccf
    ld hl, $04c0
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    jr jr_008_427b

    jr nz, jr_008_4270

    ret nz

    rrca
    nop

jr_008_4270:
    ld h, c
    ld b, b
    ld hl, $3120
    jr nz, jr_008_4290

    ret nc

    dec c
    jr c, jr_008_4282

jr_008_427b:
    inc b
    cp $03
    rst $38
    ld bc, $00ff

jr_008_4282:
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
    db $dd
    db $e3

jr_008_4290:
    db $f4
    rrca

jr_008_4292:
    ld hl, sp+$0f
    add sp, $1f
    ldh a, [$1f]
    pop de
    ld a, $a1
    ld a, [hl]
    ld b, e
    db $fc
    rst $00
    cp b
    sub b
    nop
    or b
    nop
    and b
    nop
    and c
    nop
    pop hl
    nop
    pop af
    nop
    ld sp, hl
    nop
    db $fd
    nop
    ld d, b
    ccf
    pop hl
    ccf
    and [hl]
    ld a, a
    bit 7, h
    ld c, a
    ld hl, sp-$69
    ld hl, sp-$69
    ld hl, sp-$69
    ld hl, sp+$3f
    ldh [$ef], a
    ldh a, [rTAC]
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr jr_008_4292

    inc a
    ldh [$1f], a
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
    nop
    rst $38
    ld [bc], a
    cp $02
    cp $02
    cp $04
    db $fc
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [rP1]
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0002
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    add d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $e3
    nop
    adc a
    nop
    rra
    nop
    ld a, $01
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
    inc a
    jp $00ff


    rst $38
    nop
    rst $38
    nop
    jp $013c


    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    sbc a
    adc b
    rrca
    inc b
    inc e
    rlca
    cp h
    rlca
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    ld [bc], a
    ld hl, sp+$04
    ld bc, $02f8
    pop af
    ld h, b
    sbc b
    add c
    ld h, b
    ld b, a
    add b
    rra
    nop
    ccf
    nop
    cp $01
    cp $01
    inc e
    db $e3
    ld [hl-], a
    ld c, $e5
    ld e, $cb
    inc a
    sub a
    ld a, b
    cpl
    rst $38
    jr nc, @+$01

    ld c, a
    ldh a, [$bf]
    ret nz

    ccf
    nop
    rst $38

Jump_008_4383:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    ldh a, [rNR33]
    cp $f3
    rrca
    cp $01
    cp $01
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    or b
    rst $08
    ld h, b
    rst $38
    ld a, $ff
    rlca
    db $fc
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
    rst $38
    rst $38
    nop
    rst $38
    rrca
    ld hl, sp+$10
    ldh a, [$a0]
    ld h, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ret nz

    rst $38
    nop

Jump_008_43c2:
    rst $38
    ret nz

    ld a, a
    jr nz, jr_008_4406

    db $10
    rra
    db $10
    rra
    ld [$080f], sp
    rrca
    ld [$fc4b], sp
    push bc
    ld a, [hl]
    and d
    ld a, a
    pop de
    ccf
    db $ec
    rra
    di
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    rrca
    rst $38
    ldh [rIE], a
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    cp $0c
    db $fc
    inc [hl]
    db $fc
    call nz, Call_000_20fc
    ldh [rLCDC], a
    ret nz

    add b
    add b

jr_008_4406:
    nop
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
    add b
    nop
    add b
    nop
    add b
    ld b, b
    add b
    ld h, b
    ld b, b
    ld d, b
    ld h, b
    jr c, jr_008_443e

    ld l, $30
    ccf
    rlca
    ld a, c
    rrca
    ld [hl], e
    ld e, $73
    ld e, $73
    ld e, $3b
    ld c, $3f
    ld b, $1f
    nop
    add sp, -$09
    sbc b
    rst $38
    ld h, h
    sbc a
    ld a, [c]
    rrca
    ld a, [$f907]
    rlca
    ld sp, hl
    rlca

jr_008_443e:
    ld sp, hl
    rlca
    nop
    rst $38
    nop
    rst $38

jr_008_4444:
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
    ld hl, sp-$71
    ld [hl], b
    rst $38
    inc bc
    rst $38
    ld b, $fc
    ld [$10f8], sp
    pop af
    jr nz, jr_008_4444

    ld b, h
    ret z

    ccf
    rst $38
    ldh [$c0], a
    add a
    nop
    ld de, $0f0e
    ld [hl], b
    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    pop af
    rst $38
    cp $0f
    ld hl, sp+$07
    ldh a, [rIF]
    pop hl
    ld e, $e1
    ld e, $c3
    inc a
    jp Jump_008_7f3c


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
    rst $30
    nop
    ld [hl], c
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
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ret c

    ccf

jr_008_44a2:
    db $76
    rrca
    adc l
    inc bc
    jp $c000


    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    rst $38
    nop
    rst $38

jr_008_44b4:
    add b
    rst $38
    ld h, b
    rst $38
    sbc b
    ld a, a
    ld c, h
    ccf
    ld h, $1f
    inc de
    rrca
    jr nc, jr_008_44a2

    jr z, jr_008_44b4

    inc e
    ld hl, sp+$07
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rra
    ld [$1c33], sp
    and b
    ld a, a
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
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, $c1
    rrca
    ldh a, [$3b]
    db $fc
    ld b, [hl]
    rst $00
    add c
    add c
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
    ld a, a
    di
    rrca
    db $fc
    db $fc
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    rra
    db $10
    rla
    jr jr_008_451e

    ld c, $04
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop

jr_008_451e:
    nop
    nop
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$8c], a
    di
    ld h, b
    ld a, a
    rra
    rra
    pop af
    rrca
    pop af
    rrca
    pop hl
    rra
    jp nz, Jump_000_0c3f

    rst $38
    inc de
    rst $38
    ld l, h
    db $fc
    ldh a, [$f0]
    nop
    rst $38
    jr nc, @+$01

    ld c, c
    rst $08
    ld b, l
    rst $00
    add d
    add e
    ld [bc], a
    ld [bc], a
    ld b, $04
    inc b
    inc b
    add c
    sub b
    add e
    and b
    rlca
    ld b, b
    rrca
    add b
    ld e, $00

jr_008_455a:
    inc e
    nop
    jr nc, jr_008_455e

jr_008_455e:
    nop
    nop
    rst $38
    nop
    xor $00
    sbc h
    nop
    jr jr_008_4568

jr_008_4568:
    jr nc, jr_008_456a

jr_008_456a:
    nop
    nop
    nop
    nop

jr_008_456e:
    ld [$c700], sp
    jr c, jr_008_455a

    jr jr_008_456e

    nop
    pop hl
    nop
    add c
    nop
    ld bc, $0300
    ld [bc], a
    dec e
    ld b, $70
    nop
    jr nc, jr_008_4584

jr_008_4584:
    nop
    nop
    ld bc, $6100
    nop
    ld e, b
    ld hl, $39c5
    jp Jump_000_003d


    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    ld c, $01
    ld e, $01
    ld b, $19
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    sbc a
    nop
    rst $38
    ld c, c
    add a
    db $10
    rst $20
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    add c
    rst $38
    ld a, [hl]
    cp $08
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    ld [$0809], sp
    add hl, bc
    ld [$1019], sp
    inc de
    db $10
    inc de
    db $10
    inc de
    db $10
    rla
    ld de, $0000
    ld [bc], a
    nop
    ld c, $00
    ccf
    nop
    ld a, a
    nop
    cp a
    ld b, b
    cp $81
    ld a, h
    add e
    jr c, jr_008_4602

jr_008_4602:
    ld a, l
    nop
    rst $38
    nop
    rst $38
    nop
    or $09
    ld h, b
    sbc a
    ld b, b
    cp a
    nop
    rst $38
    db $fd
    ld b, $fd
    ld b, $fd
    rlca
    dec h
    rst $18
    dec b
    rst $38
    dec d
    rst $38
    dec d
    rst $38
    dec d
    rst $38
    pop bc
    ccf
    pop bc
    ccf
    ret nz

    ccf
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add d
    rst $38
    nop
    rst $38
    ld bc, $80ff
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    ld c, b
    rst $38
    ld l, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    ld a, c
    rst $38
    daa
    rst $38
    rla
    rst $38
    inc e
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$88ff], sp
    rst $38
    db $e4
    rst $38
    call c, Call_000_14ff
    rst $38
    inc d
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
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
    db $fc
    add h
    db $fc
    add h
    db $fc
    rla
    ld de, $1316
    ld e, $13
    ld e, $13
    ld e, $13
    ld c, $0b
    ld c, $0b
    ld c, $0b
    ld a, h
    add e
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    jr nz, @+$01

    jr nz, @+$01

    inc l
    rst $38
    ld l, $ff
    dec l
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    dec h
    rst $38
    dec d
    rst $38
    rla
    rst $38
    ld d, $ff
    dec d
    rst $38
    sub l
    rst $38
    xor $ff
    ei
    cp $fe
    rst $38
    ld b, d
    rst $38
    ld b, e
    rst $38
    and d
    rst $38
    sub c
    rst $38
    ld c, l
    rst $38
    db $db
    rst $20
    ld l, [hl]
    pop af
    or a
    ld a, b
    dec sp
    rst $38
    inc l
    rst $38
    sub h
    rst $38
    ld [hl], e
    rst $38
    rra
    rst $38
    adc a
    rst $38
    ld a, a
    rst $38
    cp $0f
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $ed
    sbc h
    adc [hl]
    dec e
    rra
    rra
    cp a
    rra
    rst $18
    cp a
    ld a, [$feff]
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    adc $8f
    cp a
    adc $04
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$97ff], sp
    rst $38
    sbc d
    db $fd
    xor a
    ld hl, sp-$31
    ld hl, sp-$78
    ld hl, sp+$48
    ld hl, sp+$48
    ld hl, sp+$48
    ld hl, sp+$48
    ld hl, sp-$70
    ldh a, [$50]
    ldh a, [$d0]
    ld [hl], b
    rlca
    dec b
    rlca
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rIF]
    ld [hl], b
    adc a
    cp b
    rst $00
    ret c

    rst $20
    ld l, h
    ld [hl], e
    db $10
    rra
    ld [$060f], sp
    rlca
    dec h
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $03ff
    rst $38
    or e
    rst $38
    cp e
    rst $20
    rst $20
    and a
    rst $30
    and a
    rst $28
    rst $10
    rst $10
    rst $18
    rst $38
    rst $08
    ld h, a
    rst $28
    ld [hl], e
    adc h
    cp b
    ret nz

    ldh a, [$c0]
    ret nz

    ld b, b
    ld b, b
    ld b, b
    ldh [$60], a
    ldh [$e0], a
    and b
    and b
    dec c
    ld c, $04
    inc c
    inc c
    inc b
    ld b, $00
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
    ld a, a
    ld h, a
    ld a, a
    ld [hl], b
    ccf
    sbc a
    ld a, a
    cpl
    rra
    inc bc
    nop
    nop
    nop
    db $fd
    cp $de
    push hl
    and l
    jp $83c6


    adc h
    rst $00
    ret z

    rst $38
    add sp, $1f
    ldh a, [$1f]
    rst $08
    ld hl, sp-$71
    ld hl, sp+$0b
    db $fc
    dec bc
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    ld b, $fd
    and b
    ld h, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    and b
    ld h, b
    ret nz

    ld b, b
    ld b, b
    ret nz

    add b
    add b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_47ca:
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    cp $17
    jr jr_008_4804

    jr nc, jr_008_4836

    ld h, b

jr_008_47d8:
    ccf
    jr nz, @+$60

    ld h, c
    db $76
    ld c, c
    ld e, h
    ld a, e
    cp [hl]
    ld h, a
    sub a
    ld [hl], e
    or l
    ld [hl], e
    jr nz, jr_008_47d8

    jr nc, jr_008_47ca

    ld h, b
    ldh [$60], a
    ldh [rSVBK], a
    ldh [$60], a
    and b
    jr nz, @-$1e

    ldh [$c0], a
    nop
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

jr_008_4804:
    rlca
    nop
    rrca
    nop
    dec e
    ld c, $5e
    inc sp
    inc sp
    ld h, c
    ldh [rLCDC], a
    add sp, $3f
    ret c

    cpl
    ld hl, sp+$0f
    push af
    rrca
    rst $30
    ld c, $9e
    ld a, b
    ld hl, sp-$20
    ret nz

    nop
    rlca
    rst $38
    rra
    db $fc
    ld a, h
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    db $f4
    inc c
    ld [hl], h
    inc c

jr_008_4836:
    ld hl, sp+$08
    add sp, $18
    add sp, $18
    add sp, $18
    db $eb
    dec de
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0601
    ld b, $0f
    dec c
    rra
    dec d
    ccf
    ld a, [hl-]
    rra
    dec d
    ccf
    ld a, [hl-]
    ld a, a
    ld h, [hl]
    ld hl, sp-$08
    rrca
    rlca
    nop
    nop
    add b
    inc d
    add b
    sub l
    ret nz

    ld c, d
    ldh [$a9], a
    ldh a, [$a5]
    nop
    nop
    add b
    add b
    ld hl, sp+$78
    rrca
    add a
    ld bc, $0040
    sub b
    nop
    stop
    jr c, jr_008_48ed

    ld l, e
    rlca
    rlca
    dec b
    ld b, $0f
    ld [$f0ff], sp
    ld a, $19
    rrca
    rlca
    dec e
    dec bc
    ld l, b
    ldh a, [$90]
    ld hl, sp-$12
    inc a
    and a
    ld a, a
    ld b, h
    rst $38
    set 7, h
    cp [hl]
    rst $38
    add hl, hl
    rst $38
    ld bc, $0700
    rra
    db $10
    jr nz, jr_008_48e7

    add b
    rst $30
    ld hl, sp-$11
    rra
    rst $38
    nop
    cp $01
    ld [hl], b
    ld hl, sp+$42
    add c
    ld a, a
    ccf
    ldh [rLCDC], a
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld h, b
    ret nz

    ret nz

    add b
    di
    db $fc
    cpl
    rra
    dec e
    inc bc
    rra
    ld bc, $031e
    ld e, $03
    rlca
    nop
    ld a, [hl]
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    nop
    nop

jr_008_48de:
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_48e7:
    nop
    nop
    nop
    nop
    nop
    inc bc

jr_008_48ed:
    nop
    rra
    nop
    ld a, h
    rrca
    ld [hl], l
    ld c, $23
    inc b
    inc bc
    nop
    nop
    db $10
    ret nz

    jr nz, jr_008_48de

    ld b, b
    pop bc
    add b
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    ld bc, $0700
    nop
    rrca
    nop
    rra
    nop
    rra
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
    add b
    add b
    rst $38
    sbc c
    rst $38
    and $1f
    dec e
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
    ldh a, [$50]
    ld hl, sp-$58
    db $fc
    ld d, h
    cp $d4
    cp $ea
    ccf
    dec [hl]
    ld e, $1e
    ld [de], a
    ld e, $00
    inc d
    nop
    inc d
    nop
    stop
    nop
    nop
    inc b
    ret nz

    call nz, $e2a0
    ldh a, [$a2]
    ld a, $13
    ld a, d
    daa
    ld a, h
    ld b, a
    ld d, a
    ld c, a
    xor b
    sbc c
    db $db
    cp h
    and a
    rst $38
    and $7f
    ld a, $f1
    ld e, a
    ldh [rPCM34], a
    ld hl, sp-$41
    ret nz

    db $fc
    nop
    nop
    nop
    and b
    ret nz

    ld h, b
    ldh [rIE], a
    add c
    ld e, l
    db $e3
    cp a
    ld a, [hl]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ld h, b
    jr nz, jr_008_499d

    ld h, b
    jr nz, jr_008_49e0

    add b
    nop
    nop
    nop

jr_008_4984:
    nop
    nop
    nop
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
    inc bc
    ld c, $01
    rrca
    nop
    rrca
    nop
    ld c, $00
    nop
    nop
    nop

jr_008_499d:
    nop
    nop
    nop
    ld b, b
    add b
    db $e3
    ret nz

    rst $38
    jr nc, jr_008_4984

    ld c, $07
    inc bc
    inc bc
    nop
    inc bc
    nop
    ld bc, $ff00
    ld bc, $03ff
    ei
    ld b, $fd
    ld b, $77
    adc h
    set 7, h
    cp a
    ld a, b
    rst $38
    nop
    ld [c], a
    pop bc
    cp d
    ld [hl], c
    xor $1b
    rst $30
    ld c, $fc
    ld b, $fc
    ld b, $f6
    inc c
    ld hl, sp+$0c
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop

jr_008_49e0:
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
    ldh [rNR41], a
    ret nc

    jr nc, jr_008_4a08

    dec de
    ld l, $33
    ccf
    ld [hl+], a
    ld e, l
    ld h, [hl]
    ld a, [hl]
    ld b, h
    adc h
    call nz, $848c
    add h
    add b
    ret nc

    ld sp, $3010
    jr nc, jr_008_4a16

    ld a, b
    db $10

jr_008_4a08:
    ld a, b
    db $10
    ld l, h
    jr @+$78

    inc c
    dec sp
    rlca
    ld c, h
    ld a, a
    ld d, h
    rst $38
    ld a, e
    ld l, a

jr_008_4a16:
    ccf
    dec b
    rra
    nop
    rrca
    nop
    rlca
    nop
    add c
    nop
    ld d, b
    and b
    add sp, -$70
    add c
    nop
    ld b, b
    add c
    push de
    db $e3
    ld a, [c]
    ccf
    rst $38
    rrca
    rst $38

jr_008_4a2f:
    inc b
    ldh [rLCDC], a
    ldh [rLCDC], a
    ld h, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ldh [$c0], a
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
    rst $38
    nop
    db $fd
    nop
    pop af
    nop
    ld b, b
    nop
    nop
    nop
    nop

jr_008_4a5b:
    nop
    nop
    nop
    nop
    nop
    db $fc
    ld [$0cfa], sp
    push af
    ld c, $3e
    rlca
    dec a
    inc bc
    ccf
    nop
    ccf

jr_008_4a6d:
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    db $fd
    cp $ab
    db $76
    xor $33
    db $fd
    inc hl
    ldh a, [rNR10]
    add sp, $18
    add sp, $18
    add sp, $18
    ret nc

    jr nc, jr_008_4a5b

    jr nc, jr_008_4a6d

    jr nz, jr_008_4a2f

    ld h, b
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
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
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_008_4acc

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    nop
    ld e, $1f
    jr nz, jr_008_4ade

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_008_4aee

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    nop

jr_008_4acc:
    nop
    jr nc, jr_008_4b00

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_008_4b10

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_008_4ade:
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
    ld c, h
    ld c, l

jr_008_4aee:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    nop
    nop
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

jr_008_4b00:
    ld e, h
    ld e, l
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    ld h, b
    ld h, c

jr_008_4b10:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    ld a, [hl]
    ld a, a
    add b
    nop
    add c
    add d
    add e
    add h
    add l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    and b
    and c
    and d
    and e
    and h
    nop
    nop
    and l
    and [hl]
    and a
    xor b
    xor c
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
    ld e, $18
    jr nc, jr_008_4bc0

    ld h, b
    ld b, b
    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld e, $06
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
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a

jr_008_4bc0:
    add d
    add d
    ret nz

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
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $4141
    add c
    add c
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
    nop
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop

jr_008_4bfc:
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ld b, b
    and b
    ld h, b
    pop hl
    ld hl, $2eef
    db $fc
    jr c, jr_008_4bfc

    ld [hl], $f7
    dec sp
    xor l
    ld l, b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    db $fc
    inc a
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
    add b
    add b
    ldh [$60], a
    jr c, jr_008_4c5a

    ld c, $06
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
    ld bc, $0101
    ld bc, $0000
    add b
    add b
    add b
    add b
    ld b, b
    ld b, b

jr_008_4c5a:
    ld b, b
    ld b, b
    jr nz, jr_008_4c7e

    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    add b
    ld h, b
    ld b, b
    jr nc, @+$22

    ld e, $18
    rlca
    rlca
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, [hl]
    ld bc, $033d
    ld [hl], $0e

jr_008_4c7e:
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    add $44
    ld b, d
    jp nz, $8283

    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ldh [rLCDC], a
    ld h, b
    jr nz, jr_008_4cc9

    jr nz, jr_008_4ccb

    db $10
    sub b
    db $10
    sbc b
    sub b
    sbc b
    adc b
    adc b
    adc b
    ldh a, [$e0]
    ret nc

    ld [hl], b
    ret c

    ld [hl], b
    ld c, b
    ld a, b
    ld a, h
    jr z, jr_008_4d2b

    jr z, jr_008_4d25

    inc a
    ld a, h
    inc [hl]
    ld bc, $0103
    nop
    nop
    nop
    jr nc, jr_008_4cbc

jr_008_4cbc:
    ld a, $1c
    ld [de], a
    ld e, $17
    ld a, [de]
    rla
    ld a, [de]
    nop
    nop
    add b
    add b
    ret nz

jr_008_4cc9:
    ld b, b
    ld h, b

jr_008_4ccb:
    jr nz, jr_008_4cfd

    db $10
    jr jr_008_4cd8

    inc c
    inc b
    ld b, $02
    nop
    nop
    rrca
    rrca

jr_008_4cd8:
    rrca
    ld [$0808], sp
    jr jr_008_4cee

    db $10
    db $10
    jr nc, @+$22

    ld hl, $0020

jr_008_4ce5:
    nop
    nop
    nop
    ret nz

    ret nz

    ld h, b
    jr nz, jr_008_4d1d

    db $10

jr_008_4cee:
    ret z

    jr jr_008_4ce5

    inc c
    ei
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

jr_008_4cfd:
    nop
    nop
    nop
    ld bc, $0601
    rlca
    call z, $4c88
    ld b, h
    ld b, h
    ld b, h
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld b, d
    ld h, d
    ld b, d
    ld [c], a
    jp nz, Jump_000_2223

    ld a, h
    inc [hl]
    ld a, $34
    ld a, $34
    ld a, [hl-]
    ld e, $3e

jr_008_4d1d:
    ld a, [de]
    ld a, $1a
    ccf
    ld a, [de]
    ccf
    dec de
    rla

jr_008_4d25:
    ld a, [de]
    dec e
    dec bc
    dec e
    dec bc
    rra

jr_008_4d2b:
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rst $38
    ld a, a
    rst $20
    ld hl, sp+$03
    ld bc, $0011
    jr jr_008_4d52

    inc e
    jr jr_008_4d59

    inc c
    sbc h
    inc c
    cp $fc
    add a
    ld c, $00
    nop
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ld h, b
    jr nz, jr_008_4d7f

    db $10
    jr jr_008_4d5a

jr_008_4d52:
    ld [$0008], sp
    nop
    nop
    nop
    nop

jr_008_4d59:
    nop

jr_008_4d5a:
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
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld e, $1c
    ldh a, [$e0]
    add b
    nop
    ld h, c
    ld b, b
    ld b, e
    ld b, b
    jp $8780


    nop
    rrca
    nop
    rrca

jr_008_4d7f:
    nop
    rra
    nop
    ccf
    nop
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    sbc b
    sbc h
    ld h, e
    ldh a, [rNR32]
    di
    adc h
    ld a, a
    rst $00
    ccf
    pop hl
    rra
    ldh a, [rIF]
    ld hl, sp+$07
    db $e3
    ld hl, $e123
    inc hl
    pop hl
    scf
    db $e3
    ld a, $e7
    cp h
    rst $38
    ld hl, sp-$01
    inc a
    rst $38
    ld a, $1f
    ldh a, [$7f]
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
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
    pop hl
    rst $38
    ccf
    rst $38
    ld [hl], c
    add e
    inc c
    ldh a, [rSC]
    db $fc
    ld bc, $00fe
    rst $38
    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    call z, $6684
    jp nz, Jump_008_723a

    adc a
    add hl, de
    ld b, a
    adc l
    inc hl
    rst $00
    sub c
    db $e3
    add sp, -$0f
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0707
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc c
    ld [$1019], sp
    add b
    nop
    sbc a
    nop
    sbc a
    nop
    ccf
    nop

jr_008_4e1c:
    ld a, a
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    rst $28
    nop
    rst $08
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
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
    ld a, [$f606]

jr_008_4e3f:
    inc c
    db $ed

jr_008_4e41:
    jr jr_008_4e1c

    jr nc, jr_008_4e41

    inc bc
    cp [hl]
    ld bc, $00bf
    ld a, a
    nop
    ld a, a
    nop
    rst $18
    nop
    rst $10
    nop
    rst $10
    nop
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    cp $ef
    ldh a, [$37]
    ld hl, sp+$0c
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $18
    ccf
    rst $28
    rra
    rst $30
    rrca
    ei
    rlca
    sbc l
    db $e3
    db $76
    ld sp, hl
    dec bc
    db $fc
    rst $38
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
    ld a, a
    rst $38
    cp a
    ld a, a
    db $f4
    ld hl, sp-$06
    db $fc
    ld a, [$fdfc]
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ld b, b
    jr nz, jr_008_4f0c

    and b
    jr nz, jr_008_4e3f

    jr nc, jr_008_4f01

    sub b
    ld d, b
    sub b
    nop
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
    ld a, h
    ld c, a
    ld b, e
    pop bc
    add b
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $c0c0
    inc sp
    jr nz, jr_008_4f3a

    ld b, b
    jp Jump_000_0380


    nop
    rlca
    nop
    ld b, $00
    add [hl]
    nop
    adc [hl]
    add b
    adc a
    nop
    adc e
    nop
    dec bc
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    stop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    rlca
    nop
    rlca

jr_008_4f01:
    nop
    rrca
    nop
    or e
    ld h, b
    jp $c160


    ld h, b
    pop bc
    ld h, b

jr_008_4f0c:
    and b
    ld h, b
    ldh [rNR41], a
    add sp, $30
    call c, $9b30
    nop
    adc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1900
    nop
    dec e
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    jr c, jr_008_4f2e

jr_008_4f2e:
    sbc a
    nop
    rst $08
    nop
    rst $30
    nop
    inc bc
    nop
    nop
    nop
    ld b, b
    nop

jr_008_4f3a:
    ld [hl], b
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
    rst $30
    nop
    add hl, sp
    nop
    ld [$0000], sp
    nop
    ld [bc], a
    nop
    pop af
    nop
    ld hl, sp+$00
    rst $18
    ccf
    rst $28
    rra
    rst $30
    rrca
    ld a, a
    rlca
    ld a, [hl-]
    rlca
    dec e
    inc bc
    rrca
    ld bc, $018e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    xor b
    ret c

    xor b
    ret c

    ret z

    ld hl, sp-$38
    ld hl, sp-$14
    db $fc
    db $ec
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    dec b
    rrca
    add hl, bc
    dec sp
    ld [hl-], a
    inc sp
    ld [hl+], a
    ret nz

    add b
    add b
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    ld [hl], b
    nop
    inc e
    ld h, b
    ld l, $70
    ld [hl], b
    jr nc, @+$1e

    inc c
    rlca
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_008_4fb1:
    nop
    nop
    nop
    adc $80
    ld b, [hl]
    ld b, b
    and $c0
    and $60
    ld h, e
    jr nz, jr_008_4ff2

    jr nz, jr_008_4ff2

    db $10
    jr c, jr_008_4fd4

    jr c, jr_008_4fc6

jr_008_4fc6:
    inc a
    nop
    ld a, $00
    ccf
    nop
    ld a, a
    nop
    ld h, a
    jr jr_008_4fb1

    rra
    pop hl
    rra

jr_008_4fd4:
    ld l, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ldh [$5f], a
    ldh [$cf], a
    ldh a, [$3d]
    ld a, $fc
    db $10

jr_008_4fe6:
    or $18
    rst $28
    jr jr_008_4fe6

    inc c
    push af
    ld c, $f6
    rrca
    rst $20
    rra

jr_008_4ff2:
    or $1f
    rra
    nop
    ld [hl], $09
    ld a, $09
    ld a, d
    dec c
    or $0d
    db $f4
    rrca
    jp c, $e9e7

    rst $30
    ei
    nop
    ld a, l
    add b
    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    cp $01
    rst $38
    nop
    rst $30
    ld [$0cf3], sp
    ldh a, [rIF]
    ld [hl], b
    adc a
    nop
    rst $38
    ld bc, $fcff
    nop
    ld a, $c0
    rrca
    ldh a, [$81]
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld c, a
    rst $38
    daa
    rst $38
    daa
    rst $38
    inc de
    rst $38
    dec bc
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    xor $1e
    ld b, l
    add e
    ld [hl-], a
    ld [hl+], a
    ld h, $22
    ld h, $22
    ld h, $24
    ld h, $24
    dec h
    inc h
    dec l
    inc h
    ld l, l
    ld b, h
    ld d, l
    ld a, [hl-]
    xor $19
    rst $30
    inc c
    ei
    ld b, $ef
    rra
    pop de
    ccf
    and b
    ld a, a
    and b
    ld a, a
    nop
    nop
    add b
    nop
    add b
    add b
    ret nz

    add b
    ldh [rLCDC], a
    ldh [rNR41], a
    ldh a, [$a0]
    ld a, b
    ret nc

    jr @+$12

    ld e, $08
    rrca
    rlca
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0103
    ld bc, $6301
    ld e, $33
    ld c, $93
    adc [hl]
    bit 0, [hl]
    ld l, e
    ld h, $21
    daa
    dec [hl]
    inc de
    sub c
    inc de
    add d
    add e
    rst $38
    ld a, a
    ld a, l
    inc bc
    rlca
    ld bc, $010f
    rra
    ld bc, $011f
    cp [hl]
    ld bc, $1ef6
    or $1e
    db $76
    sbc [hl]
    xor [hl]
    sbc $6f
    rst $18
    rst $10
    ld l, a
    dec h
    rst $38
    db $db
    cp h
    call c, $f4f3
    ei
    cp [hl]
    cp c
    cp d
    db $fd
    push de
    cp $ba
    rst $30
    db $fd
    di
    ld l, [hl]
    pop hl
    rst $00
    rst $38
    db $e4
    rst $38
    ld e, e
    db $fc
    ld e, a
    ldh [$3e], a
    pop hl
    inc hl
    rst $38
    cpl
    rst $38
    sbc a
    rst $38
    add [hl]
    rst $38
    ld a, d
    db $fd
    db $eb
    rra
    or a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld sp, hl
    rst $38
    sbc b
    ld a, a
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    sbc [hl]
    cp $9a
    cp $6a
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

    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    ret c

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
    inc bc
    cp $c1
    add b
    ret nz

    add b
    add c
    add c
    adc [hl]
    add [hl]
    sbc b
    adc b
    or b
    db $10
    jr nc, jr_008_5162

    ld h, b
    jr nz, @-$7e

    add b
    ret nz

    ld b, b
    ldh [$e0], a
    ld d, b
    jr nc, jr_008_515d

    db $10
    jr jr_008_5158

    ld [$0c08], sp
    inc b
    ld l, l
    ld b, h
    ld c, a
    ld c, b

jr_008_5158:
    ld e, [hl]
    ld c, c
    ld e, a
    ld c, c
    push de

jr_008_515d:
    sbc e
    sbc $93
    sbc d

jr_008_5161:
    sub a

jr_008_5162:
    cp h
    sub a
    ret nz

    ld a, a
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
    ld e, b
    add sp, $3c
    add sp, $1e
    db $f4
    ld c, $fa
    rlca
    cp $03
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $0001
    ld bc, $0001
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    add b
    ret nz

    add b
    dec de
    sub c
    sbc c
    adc c
    reti


    adc c
    adc l
    ret


    db $fd
    call $f5ff
    ld a, a
    jp z, Jump_008_54fe

    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    ccf
    nop

jr_008_51ae:
    ld a, a
    nop
    ld [hl], a
    rrca
    rst $38
    jr jr_008_5161

    ret c

    db $fc
    ld l, b
    ret


    jr c, jr_008_51ae

    add hl, de
    di
    ld e, $fe
    inc e
    call c, $bcf8
    ld [hl], b
    ld b, a
    ld h, b
    jp $c040


    add b
    adc b
    nop
    jr jr_008_51ce

jr_008_51ce:
    inc a
    nop
    ld a, h
    nop
    db $fc
    nop
    ld e, [hl]
    rst $38
    cp b
    ld a, a
    db $ed
    ld e, $7b
    ld b, $32
    nop
    stop
    nop
    nop
    nop

jr_008_51e3:
    nop
    call nz, $f6e7
    rst $38
    sbc a
    ld a, a
    ld [hl], e
    rrca
    rra
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    sub a
    rst $38
    ld l, a
    rst $38
    cp $ff
    ei
    db $fc
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ld a, $01
    or h
    rst $18
    ld l, h
    sbc a
    ld [$ea1f], a
    rra
    ld [$ed1f], a
    dec de
    db $ed
    dec de
    db $ed
    db $db
    dec b
    cp $07
    db $fc
    dec bc
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0b
    db $fc
    dec b
    cp $fc
    ld b, b
    cp $40
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    cp a
    ld h, b
    rst $28
    jr nc, @-$27

    jr c, jr_008_5241

    inc b
    inc a
    inc e
    ccf
    daa
    or b
    jr nz, @+$01

    ld e, $e9
    add hl, de
    ret nc

jr_008_5241:
    jr nc, jr_008_51e3

    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld c, $0e
    pop af
    pop hl
    rra
    rra
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    or h
    sbc a
    cp b
    ccf
    cp b
    ccf
    ld [hl], b
    ccf
    jr nc, @+$81

    ld [hl], b
    ld a, a
    ldh [$7f], a
    ldh [$7f], a
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
    ld bc, $03ff
    cp $06
    db $fc
    inc c
    ld hl, sp+$18
    ldh a, [$31]
    ldh [$27], a
    db $e3
    ld l, h
    add $e4
    ret nz

    and $20
    ld [hl-], a
    ld [hl+], a
    dec sp
    ld [de], a
    ei
    add hl, sp
    db $ed
    reti


    rst $08
    inc a
    add a
    ld a, [hl]
    ld a, h
    ld a, b
    ld a, c
    ld d, b
    ld a, c
    jr nc, jr_008_5324

    add hl, hl
    dec sp
    add hl, hl
    cp a
    ld a, [hl+]
    cp [hl]
    and [hl]
    cp h
    sub [hl]
    ld hl, sp+$20
    ldh [rLCDC], a
    ret nz

    add b
    add e
    ld bc, $0207
    ld b, $04
    inc b
    inc b
    ld b, $04
    dec a
    ld e, $0b
    rlca
    ld b, $03
    jp $f383


    ld h, e
    ld a, [hl-]
    inc de
    rra
    ld a, [bc]
    rrca
    ld b, $fc
    nop
    db $fc
    add b
    cp $c0
    ld l, a
    ldh [$b0], a
    ldh [$d1], a
    ldh a, [$59]
    rst $20
    xor a
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    cp a
    ld a, a
    call nz, $fac6
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    ld [hl], b
    ldh a, [$e0]
    or b
    ld [hl], b
    jr nz, jr_008_5344

    ld b, b
    ccf
    ld bc, $013f
    ld a, a
    ld bc, $017e
    ld a, a
    nop
    ld a, [hl]
    ld bc, $03fc
    reti


    rlca
    dec [hl]
    ei
    ld l, [hl]
    sub e
    ld a, [hl]
    add e
    cp $83
    cp [hl]
    jp $e35e


    or $fb
    cp $fb

jr_008_5324:
    ld b, $ff
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rra
    rst $38
    db $fc
    xor h
    ldh a, [$ec]
    or b
    call c, $fcf0
    ret nc

    db $fc
    ret nc

    db $fc
    ret nc

jr_008_5344:
    ldh a, [$f0]
    ret c

    adc b
    call z, $e4c4
    call nz, $e2a6
    or d
    ld [c], a
    db $d3
    ld [hl], c
    ld sp, hl
    ld d, c
    inc bc
    ld [bc], a
    inc b
    rlca
    dec b
    rlca
    rlca
    rlca
    ld b, $07
    dec b
    rlca
    rrca
    add hl, bc
    ld e, $13
    ld h, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc c
    rst $38
    jr nc, @+$01

    ret nz

    rst $38
    ld a, c
    call z, $d952
    jp nc, Jump_008_74b1

    and e
    or h
    ld h, e
    add sp, $47
    ld l, b
    rst $00
    or c
    rst $08
    rlca
    rst $38
    dec c
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ret z

    rst $38
    sbc $94
    sbc $d4

jr_008_53a8:
    cp $d4
    db $fc
    xor $7e
    ld [$fa3f], a
    ld a, [hl-]
    di
    dec sp
    ld sp, hl
    rlca
    ld [bc], a
    dec b
    inc bc
    ld c, $01
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    add b
    rlca
    ld [bc], a
    add e
    ld bc, $8081
    ld b, b
    ret nz

    ldh [rLCDC], a
    and b
    ld h, b
    ldh [$30], a
    ret c

    jr nc, jr_008_53a8

    add hl, sp
    jp hl


    inc e
    or $8c
    ld a, [$7e46]
    inc hl
    scf
    add hl, de
    ld a, [de]
    dec c
    ld c, $07
    ld bc, $ffff
    rst $38
    ld a, h
    inc bc
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    add b
    add c
    ret nz

    db $d3
    ld h, b
    and a
    ret nz

    ld b, a
    add b
    rlca
    nop
    ld d, $01
    dec sp
    rlca
    ld l, [hl]
    inc e
    cp b
    ld [hl], b
    add a
    rrca
    adc $19
    ret c

    ld sp, $e071
    jp $8680


    ld bc, $030d
    dec de
    rlca
    ld a, [$feff]
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_008_542f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call c, $d8d0
    ret nc

    ret c

    sub b
    or b
    sub b
    or h
    and h
    or h
    inc h
    dec h
    inc h
    cpl
    dec b
    jp hl


    ld e, b
    ld l, b
    ld e, b
    ld a, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    jr nz, jr_008_542f

    ld b, b
    pop bc
    add b
    add e
    nop
    ldh a, [$f0]
    ret c

    adc b
    call z, Call_008_6644
    ld b, [hl]
    ld h, a
    inc hl
    di
    ld h, c
    ld sp, hl
    sub b
    reti


    jr c, jr_008_5465

jr_008_5465:
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

    ret nz

    ret nz

    ld b, b
    ld [hl], $23
    ld h, [hl]
    ld b, a
    dec b
    rlca
    rrca
    ld b, $0e
    ld [$1018], sp
    jr nc, jr_008_54a2

    ccf
    nop
    add hl, de
    cp $68
    ldh a, [$c0]
    add b
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $03fe
    pop bc
    ccf
    inc sp
    rrca
    rrca
    rlca
    cpl
    rra
    or e
    ld a, a
    ret nz

    rst $38
    nop
    rst $38

jr_008_54a2:
    nop
    rst $38
    or c
    rst $08
    and c
    rst $18
    and c
    rst $18
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ret z

    rst $38
    add sp, -$01
    add sp, -$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    dec a
    ld hl, sp+$1e
    db $f4
    rra
    ld a, [c]
    dec de
    ld sp, hl
    inc c
    ld hl, sp+$0e
    db $fc
    ld b, $fe
    ld b, $fe
    cp a
    ret nz

    ldh [$7f], a
    ccf
    rra
    rst $08
    add b
    rst $38
    ld a, a
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    sbc h
    ld a, b
    ld a, $ec
    ld a, [c]
    sbc $eb
    db $76
    cp a
    jp nz, $02ff

    db $fd
    inc bc
    rst $38
    ld bc, $0305
    ld bc, $0000
    nop
    nop
    nop
    add b
    add b

Jump_008_54fe:
    ret nz

    add b
    ret nz

    ld b, b
    rst $28
    ld b, b
    ld h, d
    pop bc
    db $e3
    rst $38
    cp $7f
    ld a, [hl]
    inc sp
    cpl
    rra
    dec b
    inc bc
    ld bc, $0000
    nop
    ldh a, [$e0]
    ld h, c
    pop bc
    pop bc
    add c
    add a
    add b
    adc a
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld [hl], a
    rrca
    rst $28
    rra
    ld e, a
    cp a
    rst $38
    rst $38
    rst $18
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    cp $fe
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$2f
    inc b
    dec bc
    inc c
    rrca
    add hl, bc
    rrca
    ld c, $00
    nop
    rlca
    inc bc
    ld c, $0c
    ld bc, $0700
    nop
    adc e
    rlca
    sbc a
    add b
    dec sp
    rlca
    rst $38
    inc a
    db $e3
    pop bc
    ld e, $0f
    di
    inc a
    rst $20
    ld sp, hl
    ld a, a

jr_008_5567:
    adc a
    or $7f
    sbc e
    db $fc
    ld l, [hl]
    ldh a, [$b8]
    ret nz

    ldh [rP1], a
    rlca
    nop
    ld h, b
    ld h, b
    ld a, b
    jr c, jr_008_5567

    ld e, $83
    rlca
    ld [bc], a
    ld bc, $003f
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

    ret nz

    ld [hl], b
    ldh a, [$d8]
    jr c, @-$12

    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
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
    dec b
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
    nop
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_008_55f4

    ld a, [de]
    dec de
    inc e
    nop
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
    ld e, $1f
    jr nz, jr_008_560e

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    nop

jr_008_55f4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_008_5627

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_008_5637

    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_560e:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_008_564e

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
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_008_5627:
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
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

jr_008_5637:
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
    nop
    nop
    nop
    nop
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_008_564e:
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
    nop
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
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    nop
    nop
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
    adc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld a, h
    ld c, h
    ld c, d
    ld b, [hl]

jr_008_56a2:
    adc $82
    call $9c83
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
    nop
    nop
    nop
    add c
    add c
    ld b, c
    pop bc
    nop
    nop
    nop
    nop
    rlca
    rlca
    dec de
    inc e
    cpl
    jr nc, jr_008_56a2

    ldh [$7f], a
    add b
    rst $38
    nop
    rrca
    ld [$0607], sp
    add c
    add c
    ld b, b
    ret nz

    ret nz

    ld b, b
    and b

jr_008_56d3:
    ld h, b
    ldh [rNR41], a
    ret nc

    jr nc, jr_008_56d3

    ld b, $ec
    inc e
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
    db $10
    db $10
    inc a
    inc a
    ld l, $2a
    dec hl
    add hl, hl
    add hl, hl
    jr z, @+$2a

    jr z, jr_008_571d

    jr z, @+$2a

    jr z, jr_008_56f9

jr_008_56f9:
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
    ld b, b
    ld b, b
    ld h, b
    jr nz, jr_008_5709

jr_008_5709:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    db $e3
    add c

jr_008_5716:
    add [hl]
    add b
    nop
    nop
    ld bc, $0101

jr_008_571d:
    ld bc, $0101
    rlca
    ld b, $1c
    jr jr_008_5716

    ldh [rTAC], a
    nop
    sbc h
    add e
    sbc h
    inc bc
    cp [hl]
    ld bc, $013e
    ld a, [hl]
    ld bc, $007f
    rst $38
    nop
    rst $38
    nop
    ld b, d
    jp $e223


    dec e
    cp $01
    cp $01
    cp $03
    cp $03
    cp $05
    cp $ff
    nop
    rst $28
    nop
    rst $28
    nop
    rst $00
    nop
    rst $00
    nop
    add a
    nop
    add e
    nop
    inc de
    nop
    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    ld a, [$fd06]
    inc bc
    cp $01
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
    nop
    nop
    rlca
    rlca
    adc b
    adc a
    sub b
    sbc a
    ld h, b
    rst $38
    jr z, jr_008_57a2

    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    xor c
    xor c
    ld c, c
    ret


    add hl, sp
    pop af
    add hl, de
    pop af
    jr nz, jr_008_57aa

    ldh a, [$90]
    ret nc

    ld d, b
    ret c

    ld c, b
    ret c

jr_008_5791:
    ld c, b
    ret z

    ld c, b
    call z, $cc84
    add h
    ld bc, $0301
    ld [bc], a
    ld c, $0c
    inc c
    ld [$0404], sp

jr_008_57a2:
    ld b, $04
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    sbc a
    nop

jr_008_57aa:
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    nop
    ld a, h
    nop
    ld a, l
    nop
    ld a, c
    nop
    add hl, sp
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_008_57cd:
    nop
    rst $38

jr_008_57cf:
    nop
    ld a, a
    nop
    ccf
    nop

jr_008_57d4:
    ccf
    nop
    ld c, a
    nop
    add a
    ld a, h
    ld a, [$fe3c]
    jr nz, jr_008_57cd

    jr nz, jr_008_57cf

    jr nz, jr_008_5791

    ld h, b
    xor a
    ld h, b

jr_008_57e6:
    ld d, a
    ldh a, [$39]
    nop
    inc a
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_008_57d4

    jr nz, jr_008_57e6

    jr nc, jr_008_5838

    nop
    rra
    nop
    ld e, a
    nop
    rst $18
    nop
    rst $28
    nop
    or $00
    rst $38
    nop
    rst $38
    nop
    and b
    ld a, a
    ret nc

    ccf
    add sp, $1f
    db $f4
    rrca
    ld hl, sp+$07
    cp $01
    ccf
    nop
    sbc a
    nop
    add hl, de
    pop af
    add hl, bc
    ld sp, hl
    dec c
    ld sp, hl
    rlca
    db $fd
    rlca
    cp $03
    cp $03
    cp $01
    rst $38
    call nz, $8484
    add h
    sbc [hl]
    sub d
    sbc [hl]
    sbc d
    sbc [hl]
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    ld a, [de]

jr_008_5838:
    ld bc, $0101
    ld bc, $0000
    nop
    nop

jr_008_5840:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_008_584a

jr_008_584a:
    or h
    nop
    or [hl]
    add b
    cp [hl]
    add b
    cp [hl]
    add b
    sbc $80
    ld e, [hl]
    ld b, b
    ld e, a
    ld b, b
    or $00
    db $e4
    nop
    db $ed
    nop
    jp hl


    nop
    ld a, c
    nop
    ld a, l
    nop
    ld a, a
    nop
    ld a, e
    nop
    rst $08
    nop
    db $ed
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc

jr_008_5872:
    db $f4
    dec bc
    ldh a, [rIF]
    ldh a, [rIF]
    ld d, a
    ldh a, [rVBK]
    ld hl, sp+$2b
    ld hl, sp+$27
    db $fc
    ld [hl], l
    db $fc
    dec sp
    cp $1f
    cp $3f
    rst $38
    rst $20
    jr c, jr_008_5872

    jr c, jr_008_5840

    ld a, h
    sub d
    ld a, a
    sub c
    ld a, a
    adc b
    ld a, a
    call z, $cb3f

jr_008_5897:
    ccf
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

    db $fd
    cp $bb
    rst $00
    rst $18
    ldh [$cf], a
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    inc c
    ld hl, sp-$01
    call nc, $813f
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    jr nc, jr_008_5897

    cp e
    add hl, de
    cp e
    or c
    ei
    or c
    ld a, a
    push de
    ld a, a
    push de
    ccf
    rst $30
    ccf
    rst $20
    rra
    rst $30
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    jr c, jr_008_590e

    jr z, jr_008_5910

    ld e, a
    ld b, b
    ld l, a
    ld b, b
    cpl
    jr nz, jr_008_591e

    jr nz, jr_008_5920

    jr nz, jr_008_5922

    jr nz, jr_008_5924

    jr nz, jr_008_5926

    jr nz, @+$7d

    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ld a, d
    add c
    add d
    ld a, c
    sub b
    ld h, b
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a

jr_008_590e:
    pop bc
    ccf

jr_008_5910:
    add c
    ld a, a
    ld bc, $03ff
    cp $3e
    inc b
    ld e, a
    rst $38
    ld a, a
    rst $18
    rst $18
    adc a

jr_008_591e:
    rst $38
    cp a

jr_008_5920:
    rst $10
    rst $28

jr_008_5922:
    sbc e
    rst $18

jr_008_5924:
    and l
    xor a

jr_008_5926:
    rst $38
    cp $48

jr_008_5929:
    cp a
    rst $00
    cp h
    and a
    call c, $dee5
    jp $fafe


    cp a
    dec d
    adc a
    ld b, $03
    db $fd
    ld [bc], a
    or $0f
    db $ed
    rra
    rst $18
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    db $fc
    rst $38
    rst $08
    cp $be
    ld a, a
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cp $d7
    rst $28
    sbc d
    rst $18
    push af
    xor a
    jr nc, jr_008_5929

    db $10
    rst $28
    nop
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    sub b
    rst $38
    ld [hl], b
    rst $18
    rrca
    db $fd
    ld c, $fa
    ld c, $fa
    rlca
    rst $38
    dec b
    rst $38
    dec b
    cp $07
    cp $03
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
    add b
    add b
    add b
    add b
    add b
    add b
    cpl
    inc h
    ld h, $20
    ld hl, sp+$07
    daa
    jr nz, jr_008_59d0

    jr nz, jr_008_59b2

    db $10
    rra
    db $10
    rra
    db $10
    ret c

    ld b, b
    rlca
    nop
    rra
    ldh [rIE], a
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    cp b
    ld b, a
    ld bc, $e000
    add hl, de
    ld bc, $00f9
    ld sp, hl
    inc b
    ld sp, hl

jr_008_59b2:
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    ld b, $f9
    inc c
    ld hl, sp+$78
    di
    or d
    db $e4
    ld h, h
    ret


    adc c
    jp nz, $84c0

    ret nz

    add b
    rst $38
    cp a
    ld hl, sp+$70
    ld sp, $1710
    ld a, b
    rra
    sbc b

jr_008_59d0:
    rra
    jr jr_008_59e2

    jr jr_008_59e8

    ld [$81c1], sp
    ld h, e
    ld bc, $0ed1
    adc [hl]
    ld [hl], c
    sbc c
    ld b, $c0
    nop

jr_008_59e2:
    ldh [rP1], a
    rst $00
    ld bc, $fffe

jr_008_59e8:
    cp a
    pop af
    ret z

    ld a, b
    jr z, @+$01

    ld b, [hl]
    jr c, jr_008_5a11

    ret nz

    rra
    rrca
    or $f9
    jp $ad00


    rst $38
    rst $28
    ld a, l
    ld a, e
    sbc l
    rrca
    rlca
    rlca
    inc bc
    sbc l
    ld c, $e7
    ret nz

    cp a
    ld h, b
    ret c

    ld a, a
    ld a, b
    ld a, a
    inc [hl]
    ld a, a
    db $ec
    rst $30
    cp l

jr_008_5a11:
    add $f5
    ld c, $e5
    ld e, $ff
    ld a, [hl-]
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add [hl]
    ld a, a
    adc h
    ld a, a
    ret


    ccf
    rst $18
    ccf
    rst $18
    ccf
    ld a, a
    rra
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rrca
    ld [$080f], sp
    rlca
    inc b
    dec b
    ld b, $03
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $7fc0
    ldh [$7f], a
    ret c

    ld a, a
    call nz, $c77f
    ld a, a
    call nz, $c47c
    ld a, h
    ld [hl+], a
    cp $03
    db $fc
    dec de
    db $fc
    daa
    db $e4
    ld b, e
    ret nz

    sbc a
    sbc h
    daa
    ld [hl+], a
    ccf
    ld a, [hl+]
    rla
    ld d, $f7
    ld hl, sp-$20
    ldh a, [$b0]
    and b
    and b
    or b
    sub b
    sub b
    sub b
    sub b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld a, [hl]
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

    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop

jr_008_5aa8:
    rst $10
    jr c, @-$0f

    jr jr_008_5aa8

jr_008_5aad:
    inc c
    rst $30

jr_008_5aaf:
    inc c
    rst $38
    inc b

jr_008_5ab2:
    db $fd
    ld b, $fb
    ld b, $ff
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    inc l

jr_008_5abc:
    rst $30
    jr c, jr_008_5abc

    jr nc, jr_008_5aad

    jr nc, jr_008_5aaf

    jr nc, jr_008_5ab2

    jr c, @-$07

    inc a
    ld l, a
    rra
    ccf
    rrca
    cp a
    rrca
    ld [hl], $0d
    sbc h
    inc b
    call c, $df04
    dec b
    ld [hl], e
    adc [hl]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld h, b
    ldh [$e0], a
    and b
    or b
    db $10
    db $10
    db $10
    ld [c], a
    cp [hl]
    and d
    cp $61
    ld a, a
    ld sp, $103f
    rra
    ld [$080f], sp
    rrca
    inc b
    rlca
    inc bc
    ld [bc], a
    inc hl
    ld [hl+], a
    ld d, e
    ld [hl], d
    ld sp, $b130
    or b
    or c
    or b
    ld d, c
    ldh a, [rNR10]
    ldh a, [$d8]
    ld d, b
    ret c

    ld d, b
    ret c

    ld d, b
    ldh a, [$58]
    ld hl, sp-$18
    jr z, jr_008_5b3c

    jr z, @+$2a

    xor h
    jr z, jr_008_5b19

jr_008_5b19:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    ld bc, $2336
    ccf
    inc d
    inc e
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld bc, $ff00
    sbc c
    rst $28
    db $76
    sbc b
    nop
    nop
    nop
    ld bc, $0100
    nop

jr_008_5b3c:
    ld bc, $e000
    ret nz

    and b
    ld h, b
    ld [hl-], a
    jr nz, jr_008_5b77

    db $10
    ld a, [de]
    db $10
    rst $38
    ld [bc], a
    ei
    ld b, $ff
    ld b, $ff
    ld b, $fb
    ld c, $ff
    ld a, [bc]
    rst $30
    ld a, [de]
    ei
    ld d, $fe
    dec [hl]
    xor [hl]
    ld [hl], l
    sbc d
    ld h, a
    cp $03
    cp $03
    ei
    rlca
    rst $28
    rra
    cp a
    ld a, a
    inc hl
    sbc $03
    rst $38
    rrca
    rst $38
    ccf
    db $fc
    ld hl, sp-$10
    ldh [$c0], a
    ret nz

    add b
    add b

jr_008_5b77:
    nop
    sub b
    db $10
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_008_5b85:
    nop
    nop

jr_008_5b87:
    nop
    ld bc, $fe01
    cp $fc
    db $fc
    cp a
    ld a, a
    rra
    rrca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    add b
    add b

jr_008_5b9a:
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    inc b
    rlca
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
    jr nz, jr_008_5b9a

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
    xor h
    jr z, jr_008_5b87

    jr z, jr_008_5b85

    inc l
    sbc h
    inc d
    ld e, $14
    ld e, $14
    inc e
    ld d, $0e
    ld a, [bc]
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
    inc e
    ld [$00f8], sp
    ld b, $00
    inc b
    ld [bc], a
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    ld e, h
    daa
    dec a
    ld b, a
    ld [hl], a
    rrca
    ld [hl], a
    rrca
    ld a, a
    rrca
    ld l, a
    rra
    ld a, a
    rra
    ld a, a
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    ldh a, [rSVBK]
    jr c, jr_008_5c94

    ld a, b
    jr c, jr_008_5c97

    jr c, jr_008_5c5d

    inc a
    inc a
    inc a
    inc a
    inc a
    ld a, $3e
    ld c, $0a
    ld c, $0a
    rrca
    ld a, [bc]
    dec b
    ld b, $05
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
    nop
    nop
    add b
    nop
    and [hl]
    pop bc
    ld a, a
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
    dec de
    rlca
    db $fc
    rst $38
    rst $00
    nop
    rlca
    nop
    inc bc
    nop
    inc bc

jr_008_5c5d:
    nop
    ld [bc], a
    ld bc, $0f37
    ld a, [$fbfd]
    rlca
    rst $18
    ccf
    rst $18
    ld a, $fe
    ld a, $be
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, b
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$70
    ld a, $3e
    ld a, $3e
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, l
    ld a, $3c
    ld a, b
    ld a, b
    ld [hl], b
    ldh [rSVBK], a
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    cp b
    ld a, b
    rrca
    rlca

jr_008_5c94:
    ld bc, $0000

jr_008_5c97:
    nop
    nop
    nop
    nop
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
    ld a, $1e
    nop
    nop
    nop
    nop
    nop
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

jr_008_5cb8:
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    add hl, de
    db $10
    inc sp
    jr nz, jr_008_5cb8

    ldh [$e7], a
    ld b, b
    nop
    nop
    inc bc
    inc bc
    rst $38
    db $fc
    rst $00
    jr c, @-$75

    ld [hl], b
    and [hl]
    ld b, e
    ld c, l
    add [hl]
    sbc d
    dec c
    ld a, b
    ld [hl], b
    cp $fc
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    rst $38
    rst $00
    rst $38
    pop de
    rst $38
    sub c
    rst $38
    ld c, $01
    rla
    dec c
    rst $38
    db $fd
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fc
    db $fc
    pop af
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ldh a, [rSVBK]
    ldh a, [$60]
    ldh [$60], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

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
    ld bc, $0300
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $ed
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    ld b, b
    cp $20
    nop
    nop
    ld bc, $0100
    ld bc, $0103
    inc bc
    inc bc
    rlca
    inc bc
    rlca
    rlca
    rrca
    rlca
    rst $38
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ret nz

    ei
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ffff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $c0ff
    ret nz

    cp b
    ld a, b
    cp $06
    cp $00
    ld c, $f0
    ldh [$fe], a
    ld hl, sp-$02
    cp $fe
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $ff01
    cp $80
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
    db $fc
    ldh a, [$80]
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld c, $0c
    ld hl, sp-$10
    ret nz

    nop
    inc e
    nop
    ld [hl-], a
    inc c
    ld l, b
    ld b, $ef
    rra
    ld a, $01
    ccf
    ld bc, $031d
    rra
    ld [bc], a
    rra
    ld [bc], a
    dec bc
    rlca
    inc e
    ccf
    pop bc
    add b
    sbc e
    add c
    or a
    ld [bc], a
    scf
    nop
    ld h, e
    ld bc, $054d
    db $dd
    push bc
    dec a
    push af
    rst $00
    ret nz

    adc $80
    adc h
    add b
    sbc b
    add b
    sub e
    ld bc, $42c7
    adc $85
    sbc c
    rrca
    dec a
    inc de
    ld a, e
    daa
    ld a, a
    ld c, a
    rst $18
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    adc l
    rst $38
    call $c7ff
    rst $38
    rst $00
    rst $38
    ld [c], a
    rst $38
    pop hl
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    ccf
    db $fd
    ld a, a
    db $fc
    db $fd
    ld hl, sp-$07
    pop af
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    ld e, [hl]
    cp $ae
    xor $ae
    cp $4c
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
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    cp $13
    db $fd
    inc de
    rst $38
    ld de, $19ee
    rst $38
    ld [$08ff], sp
    xor $10
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
    rrca
    rrca
    rrca
    rra
    rrca
    ld e, $1f
    cp [hl]
    rra
    cp [hl]
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, $ff
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    ld a, [hl]
    cp $1e
    cp $0e
    cp $06
    cp $00
    cp $80
    cp $c0
    cp $c0
    cp $01
    ld bc, $0203
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    dec b
    dec b
    dec b
    dec b
    inc a
    nop
    ld a, [hl]
    ld a, h
    rst $38
    ld a, [hl]
    rst $08
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rra
    rst $38
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
    ldh [$c0], a
    ldh a, [$e0]
    ld hl, sp-$10

jr_008_5f18:
    and h
    inc bc
    ld [hl], $01
    inc de
    ld hl, $2217
    ld e, h
    ld h, $56
    inc l
    ld e, d
    inc l
    ld e, a
    jr z, jr_008_5f18

    ld [hl], b
    cp a
    ret nz

    adc a
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    db $ed
    inc e
    or $0c
    ld a, [$ff06]
    ld [bc], a
    cp $03
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rla
    dec de
    ld e, e
    scf
    rst $28
    scf
    or a
    cpl
    cp a
    add hl, hl
    ld a, l
    jr z, jr_008_5fa1

    ld a, b
    ld a, b
    ld d, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    ldh a, [$e0]
    ld bc, $0700
    nop
    pop af
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    ld a, [hl]
    ld a, h
    jr nc, jr_008_5f75

jr_008_5f75:
    nop
    add b
    nop
    di
    pop hl
    db $e3
    jp nz, $82c6

    add [hl]
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    inc b
    dec b
    inc b
    ld e, h
    ld e, h
    call c, $fc5c
    adc h
    db $fc
    adc h
    cp $8c
    or $8e
    cp $86
    cp $46
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38

jr_008_5fa1:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08f7], sp
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
    cp $01
    cp $01
    rst $38
    ld bc, $03fd
    db $fd
    inc bc
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    ret nz

    cp $c0
    cp $60
    cp $60
    cp $70
    cp $70
    cp $70
    cp $70
    cp $00
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
    nop
    nop
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
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_008_6066

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
    jr nz, jr_008_6080

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop

jr_008_6066:
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_008_609a

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

jr_008_6080:
    jr nc, jr_008_60b3

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_008_60c3

    ld a, [hl-]
    nop
    nop
    nop
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

jr_008_609a:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_008_60b3:
    ld d, b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    nop
    ld d, [hl]

jr_008_60c3:
    ld d, a
    ld e, b
    nop
    nop
    nop
    ld e, c
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld e, a
    ld h, b
    ld h, c
    nop
    nop
    nop
    nop
    nop
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
    nop
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    add h
    add h
    add d
    add d
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    jr nz, @+$22

    jr jr_008_6140

    nop
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

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    db $10
    inc c
    rrca

jr_008_6140:
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $03fd
    and $1e
    ld hl, sp-$08
    sub b
    sub b
    sbc b
    sub b
    sbc b
    sub b
    sbc b
    sub b
    sbc b
    sub b
    cp b
    sbc b
    inc e
    inc c
    xor $c6
    rst $20
    and e
    di
    and c
    pop af
    and b
    ldh a, [$a0]
    ldh a, [$b0]
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

    ret nz

    ret nz

    ld b, b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    sbc b
    sub b
    sbc b
    adc b
    sbc b
    adc b
    sbc b
    adc b
    sbc b
    adc b
    sbc b
    adc b
    sbc b
    ld [$0898], sp
    ldh a, [$b0]
    ldh a, [$b0]
    ldh a, [$b0]
    ldh a, [$b0]
    ldh a, [$b0]
    ldh a, [$b0]
    ldh a, [$b0]
    ldh a, [$90]
    ld h, b
    ld h, b
    ld [hl], b
    jr nc, jr_008_61e1

    db $10
    jr jr_008_61cc

    jr jr_008_61be

    call z, $eccc
    call nz, $a6e6
    nop
    nop

jr_008_61be:
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca

jr_008_61cc:
    ldh [$e0], a
    call c, $9bbc
    add a
    add e
    add b
    add b
    add b
    ret nz

    add b
    ldh a, [$80]
    ld a, h
    add b
    nop
    nop
    nop
    nop
    add b

jr_008_61e1:
    add b
    ld a, a
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    inc bc
    rra
    rra
    inc [hl]
    inc sp
    xor $e1
    rst $18
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    add e
    add e
    rst $18
    rst $18
    ld a, e
    rst $38
    inc sp
    di
    rra
    ei
    adc a
    ld a, a
    pop bc
    ccf
    ldh [$1f], a
    jr jr_008_6216

    jr jr_008_6218

    jr jr_008_621a

    dec de
    dec bc
    ld e, $17

jr_008_6216:
    jr c, @+$41

jr_008_6218:
    rst $38
    rst $38

jr_008_621a:
    nop
    rst $38
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$b0]
    ld [hl], b
    ret nc

    jr nc, jr_008_6218

    db $10
    ldh a, [$cf]
    rst $38
    or $a2
    di
    and e
    di
    or c
    pop af
    or c
    pop af
    or b
    ldh a, [$b0]
    ld a, [c]
    or b
    di
    or d
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

    ret nz

    ret nz

    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    rrca
    rrca
    ld [$0f08], sp
    ld [$0407], sp
    dec b
    ld b, $05
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    di
    di
    rrca
    rra
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    add hl, bc
    rrca
    ld [de], a
    rra
    ld l, l
    ld a, [hl]
    rst $30
    ld hl, sp+$3f
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    db $e3
    nop
    db $e3
    nop
    pop bc
    nop
    pop bc
    nop
    add a
    nop
    rst $38
    nop
    cp a
    nop
    sbc a
    nop
    rst $08
    nop
    rst $00
    nop
    rst $00
    nop
    db $e3
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
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    sbc a
    nop
    rst $08
    nop
    rst $00
    nop
    nop
    rst $38
    nop
    rst $38
    add b
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
    scf
    rst $38
    ld c, $ff
    ld a, e
    add a
    cp $01
    rst $38

jr_008_62d5:
    nop
    rst $38

jr_008_62d7:
    nop
    rst $38
    nop
    rst $38
    nop
    di
    di
    ld a, a
    di
    rra
    rst $38
    adc a
    rst $38
    ld b, a
    rst $38
    and a
    ld a, a
    rst $18
    ccf
    rst $28
    rra
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr nz, jr_008_6353

    jr nz, jr_008_62d5

    jr nz, jr_008_62d7

    and b
    ldh [$a0], a
    ldh a, [$f0]
    dec b
    ld b, $03
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $3d01
    dec a
    rla
    dec de
    ld [de], a
    add hl, de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    rst $18
    nop
    sbc a
    nop
    adc a
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    dec c
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    call nz, $c700
    nop
    rst $00
    nop
    rst $00
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld a, b
    nop
    ld a, h
    nop
    ld a, $00
    ccf
    nop
    db $db
    inc b
    ld sp, hl
    ld b, $ff
    nop
    ld a, a
    nop
    ccf
    nop
    rrca

jr_008_6353:
    nop
    rlca
    nop
    ld hl, $b000
    nop
    ret c

    nop
    jp $e100


    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    jr c, jr_008_636c

jr_008_636c:
    ei
    nop
    db $fd
    nop
    db $fc
    nop
    ld a, [hl]
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $ff00
    nop
    rst $28
    nop
    ld [hl], a
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    adc h
    nop
    rst $30
    rrca
    ei
    rlca
    db $fd
    inc bc
    db $fc
    inc bc
    cp $01
    ld a, [hl]
    ld bc, $013e
    rra
    nop
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, h
    db $fc
    ld a, [hl]
    cp $3f
    rst $38
    rra
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
    rst $38
    rst $38
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
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
    add hl, bc
    ld [$080d], sp
    inc c
    ld [$0404], sp
    inc b
    inc b
    ld b, $04
    inc b
    ld b, $02
    ld [bc], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ld h, b
    nop
    ld b, b
    nop
    jr nc, jr_008_63ea

jr_008_63ea:
    jr nc, jr_008_63ec

jr_008_63ec:
    dec c
    nop
    ld c, c
    nop
    ret


    nop
    pop bc
    nop
    pop bc
    nop

jr_008_63f6:
    ret nz

    ld bc, $01e0
    db $e3
    ld bc, $8067
    rst $20
    add b
    and e
    ret nz

    db $e3
    ret nz

    db $d3
    ldh [$b3], a
    ldh [$a3], a
    ldh a, [rNR31]
    ldh a, [$fe]
    inc bc
    ld a, l
    add e
    ld a, a
    add c
    ld a, $c1
    ccf
    ret nz

    rra
    ldh [$87], a
    ld a, b
    add e
    ld a, h
    xor $00
    ccf
    ret nz

    rrca
    ldh a, [$81]
    cp $40
    rst $38
    ldh [$7f], a
    or b
    ld a, a
    sbc $3f
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    jr nc, jr_008_63f6

    ld c, $f0
    ld bc, $00fe
    rst $38
    ld h, b
    nop
    jr nc, jr_008_6440

jr_008_6440:
    jr c, jr_008_6442

jr_008_6442:
    ld e, $00
    rra
    nop
    rrca
    nop
    adc a
    nop
    ld a, a
    add b
    rst $00
    nop
    ld b, a
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rst $00
    nop
    ldh a, [rIF]
    ldh [$1f], a
    rrca
    nop
    rst $00
    nop
    db $e3
    nop
    ld sp, hl
    nop
    db $fc
    nop
    rst $38
    nop
    ld [hl], c
    adc [hl]
    ld b, $ff
    rrca
    rst $38
    add a
    ld a, a
    add a
    ld a, a
    jp $c13f


    ccf
    pop bc
    ccf
    ret nz

    ccf
    ldh [$1f], a
    add b
    nop
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

    ret nz

    ret nz

    ld h, b
    ret nz

    ld a, b
    jr jr_008_649b

    inc b
    ld b, $02
    inc bc
    ld bc, $0101
    ld bc, $0100
    nop
    nop

jr_008_649b:
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    stop
    jr jr_008_64c0

jr_008_64c0:
    jr jr_008_64c2

jr_008_64c2:
    inc c
    nop
    adc h
    nop
    call nz, $c680
    add b
    add e
    ret nz

    db $e3
    ld bc, $03e1
    ld [c], a
    inc bc
    ld a, [c]
    inc bc
    ld a, [c]
    rlca
    ld a, [c]
    rlca
    db $fc
    rlca
    or h
    ld c, a
    inc de
    ld hl, sp+$6e
    ld sp, hl
    cp d
    db $fd
    db $dd
    rst $38
    rst $28
    rst $38
    scf
    rst $38
    ld a, [hl-]
    rst $38
    dec sp
    rst $38
    add c
    ld a, [hl]
    ret nz

    ccf
    ld h, b
    cp a
    ldh [$bf], a
    and b
    rst $38
    call nc, $f5ff
    rst $38
    rst $10
    rst $38
    rst $28
    rra
    ld hl, sp+$0f
    dec [hl]
    rst $08
    ld a, [bc]
    rst $30
    ld [bc], a
    rst $38
    ld h, c
    rst $38
    pop af
    rst $38
    jr c, @+$01

    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    call nc, $ef3f
    rra
    rst $30
    rrca
    ld a, a
    adc h
    db $ed
    sbc a
    rrca
    ldh a, [rP1]
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    and b
    ld a, a
    ld [hl], b
    rst $28
    add l
    rst $38
    ld e, [hl]
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    cp $ff
    db $ec
    rst $38
    ld bc, $00ff
    rst $38

jr_008_6540:
    add b
    rst $38

jr_008_6542:
    nop
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    and b
    rst $18
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld h, b
    ret nz

    jr nc, jr_008_6540

    jr c, jr_008_6542

    inc e
    ldh a, [rNR34]
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    db $fc
    inc c
    rst $00
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
    ld bc, $3e00
    nop
    nop
    nop
    nop
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

jr_008_65d8:
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop

jr_008_65df:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0300
    inc bc
    inc bc
    rrca
    inc c
    ccf
    jr nc, jr_008_6652

    ld h, b
    cp a
    ret nz

    ld a, a
    add b

jr_008_65f8:
    ld hl, sp+$00
    add b
    nop
    ld [hl], e
    ret nz

    or e
    ld h, b
    jp hl


jr_008_6601:
    jr nc, jr_008_65d8

    jr c, jr_008_65f8

    inc e
    cp $11
    add hl, sp
    db $10
    db $10
    ld [$4fb4], sp
    jr c, jr_008_65df

    jr jr_008_6601

    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    adc b
    ld a, a
    ldh a, [rIF]
    ld l, l
    rst $38
    ld a, a
    rst $20
    ld [hl], a
    db $e3
    ld [hl], e
    pop hl
    ld h, d
    di
    ld [hl], d
    ld a, [c]
    ld a, e
    ld a, [c]
    ld [hl], e
    ei
    call z, $edff
    cp $e5
    cp $f5
    ld a, [$f8ff]
    ei
    db $fc
    cp a
    db $fc
    ei
    db $fc
    call c, $fa3f
    rra
    rst $28
    dec de
    db $fd
    dec bc

Call_008_6644:
    or $0d
    or $0d
    db $fd
    rlca
    rst $38
    rlca
    rst $18
    cp a
    cp a
    rst $38
    ld a, a
    rst $38

jr_008_6652:
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    cp $ff
    cp $e1
    rst $38
    sbc $fd
    cp e
    and $6d
    rst $18
    ld e, e
    rst $30
    ld [hl], $cf
    adc e
    rlca
    dec b
    inc bc
    add l
    inc bc
    add c
    add e
    jp Jump_008_4383


    jp Jump_008_43c2


    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    jp nz, $c8fc

    ldh a, [$50]
    ldh [rLCDC], a
    ret nc

    ret nc

jr_008_668b:
    ld c, b
    ld bc, $1cff
    db $e3
    sbc c
    ld b, $1f
    nop
    rra
    nop
    ld bc, $0000
    nop
    nop
    nop
    rlca
    db $fc
    add a
    db $fc
    cp e
    ld b, [hl]
    call c, $ec23
    inc de
    or $09
    ld a, [de]
    dec b
    dec c
    inc bc
    db $fc
    nop
    ret nz

    nop
    nop
    nop
    add [hl]
    ld bc, $8e71
    adc b
    ld [hl], b
    ret nc

    jr nz, jr_008_668b

    cpl
    ccf
    nop
    rra
    rlca
    rst $00
    jr c, jr_008_66e3

    ret nz

    ld bc, $0f00
    nop
    ld a, b
    nop
    ret nz

    nop
    rst $38
    ld a, a
    db $fc
    add e
    inc bc
    inc c
    jr c, jr_008_66d4

jr_008_66d4:
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$01
    nop
    ld bc, $0000

jr_008_66e3:
    nop
    nop
    nop
    nop
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
    ld [hl], b
    nop
    inc e
    nop
    ld b, $00
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
    nop
    nop
    inc a
    ret nz

    jr @+$09

    ld h, b
    inc b
    inc c
    ld [$1018], sp
    jr nc, jr_008_6736

    ld h, b
    ld b, b
    nop
    nop
    nop
    nop
    ld h, b
    add b
    adc [hl]
    ld [hl], b
    jr c, jr_008_6722

jr_008_6722:
    inc b
    inc bc
    nop
    inc e
    db $10
    jr nz, jr_008_6729

jr_008_6729:
    ld hl, $2609
    db $10
    add hl, bc
    inc de
    add hl, bc
    inc de
    add hl, bc
    ld [hl], d
    inc de
    inc de
    ld [de], a

jr_008_6736:
    ld [hl], a
    ld [de], a
    ld [hl], l
    sub [hl]
    rst $28
    inc [hl]
    sbc a
    ld [$8874], sp
    add sp, -$61
    add h
    rst $38
    add h
    rst $38
    ld d, d
    rst $38
    jp nc, $d97f

    ld a, a
    push af
    ei
    ld e, e
    cp l
    ld b, $cf
    res 3, a
    rst $10
    cp a
    ei
    push hl
    db $fc
    adc $ff
    jp nc, $fc2b

    db $ed
    rst $18
    sbc $3f
    ei
    db $fc
    ld h, a
    ldh a, [$cc]
    add a
    rra
    rrca
    ld a, $1f
    dec sp
    rst $00
    ei
    add a
    cp $07
    cp $07
    ld d, a
    rst $28
    xor a
    rst $18
    ld a, d
    cp a
    rst $28
    inc e
    ld a, e
    db $fd
    ld [hl], l
    ld sp, hl
    ld [hl], c
    ld sp, hl
    ret


    ld hl, sp-$04
    ld hl, sp-$62
    db $fc
    ld l, a
    sbc [hl]
    rst $38
    rrca
    or e
    rst $38
    cp l
    cp $56
    ld sp, hl
    xor e
    rst $38
    cp $7f
    ld b, [hl]
    jr c, jr_008_6799

jr_008_6799:
    nop
    add b
    nop
    ret nz

    ld b, e
    ld b, h
    add e
    add b
    add a
    ld b, $87
    ld c, $07
    rlca
    ld c, $0d
    ld e, $5b
    inc a
    ldh [$58], a
    ld b, a
    ld hl, sp+$78
    rst $38
    sbc b
    rst $38
    cp b
    rst $38
    cp c
    ld a, [hl]
    cp e
    ld a, h
    cp h
    ld l, a
    rrca
    nop
    cp $01

jr_008_67c0:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ret nz

    nop
    nop
    cp $fe
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38

jr_008_67d4:
    nop
    rst $38
    nop
    rst $38
    inc bc
    nop
    rlca
    nop
    adc h
    ldh a, [rLCDC]
    rst $38
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$3f
    db $fc
    ld l, a
    sbc $f9
    ld c, c
    ld bc, $0000
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
    ldh [rIE], a
    nop
    jr nc, jr_008_67c0

    pop bc
    ld a, $fe
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop

jr_008_680f:
    nop
    add b
    nop
    jr nc, jr_008_67d4

    rst $00
    jr c, jr_008_680f

    rlca
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
    jr nz, @-$3e

    call nz, $c338
    jr nz, jr_008_684f

    stop
    db $10
    db $10
    ld [$0800], sp
    ld [$0404], sp
    ld [bc], a
    ld [bc], a
    ld bc, $00fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_684f:
    nop

jr_008_6850:
    nop
    nop
    ld bc, $0200
    ld bc, $0304
    dec bc
    inc b
    rrca
    nop
    rla
    jr z, jr_008_689e

    db $10
    rra
    ld [hl], b
    ccf
    ret z

    ld a, a
    adc b
    rst $30
    inc c
    rst $38
    inc b
    rst $38
    inc b
    ei
    inc l
    rst $30
    jr c, jr_008_6850

    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    xor b
    ld a, a
    db $ec
    ccf
    db $ec
    ccf
    cp $1f
    db $dd
    ccf
    cp [hl]
    ld a, e
    ld l, d
    set 0, e
    add c
    ei
    db $eb
    sbc e
    pop de
    pop hl
    add b
    ret nz

    ret nz

    ldh [$c0], a
    ld h, b
    ret nz

    ld b, b
    ldh [rSVBK], a
    ldh [$fb], a
    ld a, h

jr_008_689e:
    rst $10
    ld hl, sp-$11
    ld hl, sp-$05
    ld a, h
    dec e
    ld a, $05
    ld c, $01
    nop
    inc bc
    nop
    push de
    dec sp
    xor $1f
    or a
    ld a, b
    rst $18
    db $e3
    cp $00
    db $fc
    nop
    cp $01
    ccf
    rst $38
    push de
    adc a
    adc [hl]
    inc bc
    ld [hl], e
    pop af
    and b
    ret nz

    inc bc
    inc bc
    rrca
    nop
    ccf
    rst $38
    call z, $9ff3
    ldh [$7f], a
    rst $38
    cp a
    rst $38
    call $b77f
    adc a
    rst $38
    nop
    rst $30
    ld hl, sp-$03
    cp $77
    db $fc
    ei
    db $fc
    rst $10
    ld hl, sp-$51
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    cp $01
    cp $01
    cp h
    ld [hl], a
    or $73
    ld [hl], d
    di
    ld [hl], e
    pop af
    pop af
    ldh [$f0], a
    ldh a, [$f9]
    ldh a, [$f3]
    ld hl, sp-$80
    rst $38
    rst $00
    rst $38
    ld sp, hl
    cp b
    sbc b
    adc b
    adc a
    adc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$ff00], sp
    nop
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld h, b
    ccf
    ldh [$3f], a
    ldh a, [$1f]
    ldh a, [$1f]
    ld a, [hl]
    ret z

    ld a, a
    rst $08
    ld a, b
    rst $08
    ld l, a
    ret c

    ld e, a
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$3f]
    ld e, $63
    add c
    and $f8
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ldh a, [$37]
    jr jr_008_69c2

    adc b
    rst $38
    ldh a, [rIE]
    nop
    call c, $f63c
    ld h, d
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

jr_008_6957:
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$07
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
    ld bc, $0000
    ret nz

    ret nc

    jr nz, jr_008_6957

    jr @-$05

    ld b, $fe
    ld bc, $003f
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nc, jr_008_6993

    inc c
    inc b
    ld [bc], a
    ld b, b
    add b
    sub b
    ld h, b
    inc h
    jr @+$21

    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a

jr_008_6993:
    nop
    ld e, a
    ld h, b
    ld [hl], a
    ld a, b
    dec e
    ld c, $07
    inc bc
    ei
    ld b, $ff
    ld [bc], a
    cp $03
    db $fd
    inc bc

jr_008_69a4:
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    ei
    ld b, $ff
    ld bc, $03fd
    ei
    ld b, $f6
    inc c
    call c, $f038
    ldh [rP1], a
    nop
    nop
    nop
    add c
    ld bc, $0001
    nop
    nop

jr_008_69c2:
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    jr nz, @-$0e

    cp b
    ldh a, [$91]
    ld sp, hl
    rst $18
    ld a, e
    ld a, e
    ccf
    adc a
    dec e
    or $0f
    rst $38
    ld b, $17
    rrca
    cp a
    ld a, a
    db $fc
    rst $38
    jr nc, jr_008_69a4

    ld b, b
    add b
    ld b, b
    add b
    sub b
    ldh [$e8], a
    ldh a, [$fe]
    rst $38
    and $f8
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_69f9:
    nop
    ld bc, $6000
    add b
    nop
    nop
    nop
    nop
    stop
    jr nz, jr_008_6a16

    ld a, b
    jr nc, jr_008_69f9

    ld a, b
    call z, $dff8
    ld a, $ee
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $28
    rra

jr_008_6a16:
    di
    rra
    rst $18
    inc sp
    db $ed
    inc sp
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    ld a, a
    add e
    rst $38
    add e
    ei
    add a
    ei
    add a
    rst $38
    add a
    rst $38
    ld hl, sp-$01
    db $fc
    cp $ff
    rst $38
    rst $38
    db $fd
    cp $fb
    db $fc
    db $f4
    ld hl, sp-$18
    ldh a, [$fb]
    inc c
    rst $30
    inc c
    push af
    ld c, $87
    rst $38
    ld sp, hl
    ld a, [hl]
    rst $38
    nop
    rrca
    nop
    nop
    nop
    ld hl, sp+$1f
    call nc, Call_008_7e3f
    rst $38
    sbc d
    rst $20
    cp $03
    db $fd
    inc bc
    rst $38
    ld bc, $01fe
    rra
    ldh a, [rNR22]
    ld hl, sp+$1f
    rst $38
    rrca
    ld hl, sp+$0b
    db $fc
    rlca
    db $fc
    ld b, l
    cp $c2
    rst $38
    rst $38
    nop
    cp $01
    rst $38
    rst $38
    ei
    ld b, $ee
    inc e
    ld hl, sp+$70
    and b
    ret nz

    ret nz

    add b
    pop bc
    add e
    add e
    add c
    add c
    ld bc, $0100
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $30
    ld hl, sp-$01
    adc a
    jp $8080


    ret nz

    ret nz

    ld b, b
    nop
    nop
    nop
    nop
    db $fc
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38

jr_008_6aa7:
    ret nz

    ld a, a
    jr nz, jr_008_6aca

    jr nc, jr_008_6aad

jr_008_6aad:
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$0006], sp
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_6ac5:
    nop
    ldh [rP1], a
    ld hl, sp+$00

jr_008_6aca:
    cp $00
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    or $8c
    db $ec
    ld e, b
    ld e, b
    ld [hl], b
    ld [hl], b
    jr nz, jr_008_6ac5

    jr nz, jr_008_6aa7

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    cp a
    ld h, b
    db $db
    scf
    rst $38
    rlca
    db $fd
    rlca
    cp $05
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    push af
    cp $74
    ld hl, sp-$13
    ld a, [hl]
    ei
    or a
    ld a, [$70b1]
    ret c

    db $fc
    ld e, b
    db $fc
    ld l, b
    cp d
    db $fc
    inc bc
    ld bc, $070b
    ld l, [hl]
    sbc a
    or $f8
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    cp c
    call z, $8c77
    db $fd
    ld b, $7b
    ld b, $7e
    inc bc
    ld a, l
    inc bc
    ld a, a
    nop
    ld a, a
    nop
    cp l
    ld h, e
    db $dd
    ld h, e
    ld a, a
    jp $c3bf


    ei
    add a
    ei
    add a
    ld a, a
    add a
    rst $30
    rrca
    or a
    rst $08
    cp a
    rst $08

jr_008_6b60:
    xor a
    rst $18
    cp a
    rst $18
    sbc a
    rst $38
    cp a
    cp $7f
    cp $fe
    cp $d3
    ldh [$af], a
    ret nz

    ld c, a
    add b
    sbc a
    nop
    dec de
    rlca
    add hl, sp
    rrca
    ld a, $1c
    ld a, b
    jr nc, jr_008_6b60

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    cp $bb
    rst $00
    inc bc
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_008_6b92:
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    rst $18
    ld h, b
    and e
    rst $38
    pop hl
    ccf
    pop af
    rra
    add sp, $1f
    db $f4
    rrca
    ld a, [$fd07]
    rlca
    rst $30
    rrca
    ret nz

    add b
    ldh [$f0], a
    jr nc, jr_008_6b92

    ldh [$c0], a
    add b
    ret nz

    ld h, b
    ret nz

    or b
    ldh [$e0], a
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
    inc a
    nop
    cp $00
    db $10
    ld h, b
    nop
    nop
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    ld b, b
    ret nz

    call nz, $d840
    ld c, b
    scf
    jr jr_008_6bee

    jr jr_008_6c00

    ld [$0c0b], sp
    rrca
    inc b
    rlca
    ld [bc], a
    ld b, $03
    inc bc
    ld bc, $00fe

jr_008_6bee:
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    ld a, a
    nop
    ld a, a
    ld b, b

jr_008_6c00:
    ld a, a
    jr nc, jr_008_6c1f

    rrca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    ret nz

    ld b, b
    ld b, b
    ret nz

    add c
    add c
    add c
    add c
    add c
    add b
    add a
    add b
    rst $18
    ld b, b

jr_008_6c1a:
    rst $18
    ld b, b
    rst $38
    nop
    rst $38

jr_008_6c1f:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $30
    jr c, jr_008_6c1a

    rra
    rst $28
    inc e
    rst $30
    jr @+$01

    jr nz, @+$01

    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    rrca
    db $fd
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
    rst $38
    nop
    ld e, l
    cp [hl]
    xor $1f
    ei
    adc a
    rst $30
    adc a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add e
    nop
    nop
    adc $3f
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    rra
    ldh [$fc], a
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $28
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fd
    db $fc
    db $fd
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, [$fafb]
    ld a, [$fafa]
    ld a, [c]
    ldh [rLCDC], a
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
    ld bc, $0700
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_6cb5:
    nop
    ld a, h
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    jr nc, jr_008_6cfe

    db $10
    scf
    jr jr_008_6ce2

jr_008_6cc3:
    ld [$081f], sp
    rra
    ld [$081f], sp
    sbc a
    ld [$0cfa], sp
    ld hl, sp+$10
    ret nc

    jr nc, jr_008_6cc3

    jr nz, jr_008_6cb5

jr_008_6cd5:
    ld b, b
    ldh [rLCDC], a
    ld b, b
    ret nz

    ret nz

    add b
    ld [hl], c
    jr nc, @+$1d

    ld [$040f], sp

jr_008_6ce2:
    inc b
    rlca
    rra
    inc bc
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    cp a
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, jr_008_6cd5

    ld d, b

jr_008_6cfe:
    ldh a, [$50]
    ldh [rSVBK], a
    cp h
    ld h, b
    cp $20
    rst $38
    jr nz, @-$3f

    ld h, b
    rst $18
    ld h, b
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
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret nz

    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    nop
    nop
    nop
    nop
    ld bc, $0002
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
    nop
    nop
    nop
    nop
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
    nop
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
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
    dec d
    ld d, $17
    jr jr_008_6d88

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
    nop
    nop
    nop
    rra
    jr nz, jr_008_6da1

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_008_6db1

jr_008_6d88:
    ld a, [hl+]
    dec hl
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
    jr nc, jr_008_6dc8

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_008_6dd8

    nop
    nop

jr_008_6da1:
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

jr_008_6db1:
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

jr_008_6dc8:
    ld e, l
    ld e, [hl]
    ld e, a
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

jr_008_6dd8:
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
    xor c
    xor d
    xor e
    xor h
    xor l
    add hl, de
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
    cp [hl]
    cp a
    ret nz

    pop bc
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
    ld bc, $0201
    inc bc
    nop
    nop
    nop
    nop
    nop

jr_008_6e65:
    nop
    rlca
    rlca
    add hl, de
    rra
    ld h, e
    ld a, a
    xor h
    rst $18
    rst $10
    jr c, jr_008_6e71

jr_008_6e71:
    nop
    nop
    nop
    ld hl, sp-$08
    ld b, b
    ret nz

    ld sp, hl
    ld sp, hl
    ld l, $df
    db $d3
    inc a
    ld l, a
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld [$f4f8], sp
    inc c
    ei
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
    rra
    rra
    cp $ff
    add hl, de
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
    ldh [$e0], a
    ret c

    jr c, jr_008_6e65

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
    inc bc
    inc bc
    inc b
    rlca
    dec b
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
    ldh [$e0], a
    sbc $fe
    add hl, sp
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
    ld bc, $0101
    ld bc, $0101
    inc e
    inc e
    jr z, jr_008_6f1c

    ld d, b
    ld [hl], b
    and b
    ldh [$a0], a
    ldh [$c0], a
    ld b, b
    ret nz

    ld b, b
    and h
    ld h, h
    ldh [$e0], a
    jr nc, jr_008_6f24

    ld [$0408], sp
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    ld e, $19
    scf
    add hl, sp
    ld d, l
    ld a, e
    xor [hl]
    di
    xor $b3
    ld l, d
    or a
    xor [hl]
    ld [hl], c
    ld e, c
    rst $20
    or [hl]
    rst $08
    ld l, e
    sbc h
    ld d, a
    cp b
    xor a
    ld [hl], b

jr_008_6f1c:
    ld e, a
    ldh [$be], a
    jp $c0bc


    ld a, h
    add b

jr_008_6f24:
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
    rlca
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
    rst $38
    nop
    ld l, l
    di
    ret c

    ccf
    rst $30
    rrca
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$6c]
    db $fc
    or [hl]
    ld a, [hl]
    reti


    ccf
    db $f4
    rra
    ld a, [bc]
    ld c, $0a
    ld c, $0a
    ld c, $09
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    ld de, $e11f
    rst $38

jr_008_6f80:
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    jr nz, jr_008_6f80

    call c, Call_008_78bc
    ld a, b
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    rlca
    rlca
    dec b
    ld bc, $3901
    add hl, sp
    ld d, l
    ld l, l
    xor a
    rst $18
    ld [hl], $f9
    rst $18
    ldh [$3f], a
    ret nz

    ld l, e
    sbc h
    ld l, c
    or a
    ld h, l
    cp a
    ld d, d
    cp a
    ld a, [hl+]
    rst $18
    cp e
    rst $08
    ld e, d
    rst $28
    jp c, $fa2f

    rrca
    ld h, c
    sbc a
    adc [hl]
    ld a, a
    ld a, e
    rst $38
    add a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld a, a
    add b
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $00
    nop
    rst $28
    nop
    rst $18
    nop
    rst $28
    nop
    rst $30
    nop
    ei
    nop
    ei
    nop

jr_008_6ffe:
    ei
    nop
    db $e4
    rra
    db $ed
    rra
    db $fd
    rrca
    db $fd
    rrca
    ld a, [$fa0f]
    rrca
    ld sp, hl
    rrca
    db $f4
    rrca
    ld bc, $06ff
    cp $f8
    ld hl, sp+$00
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_008_6ffe

    sbc b
    ld hl, sp+$02
    inc bc

jr_008_7022:
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
    jr nz, @-$1e

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
    nop
    nop
    nop
    nop
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
    dec bc
    dec c
    dec bc
    dec c
    add hl, bc
    rrca
    rlca
    rlca
    ld c, $0f
    dec [hl]
    ld a, [hl]
    ld c, e
    db $fc
    sub [hl]
    ld hl, sp-$29
    jr c, jr_008_7022

    ld [hl], b
    rst $28
    ldh a, [$bf]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or $0f
    ld a, [$fd07]
    inc bc
    rst $38
    ld bc, $03fc
    ld hl, sp+$07
    rst $28
    rra
    ld d, a
    jr c, jr_008_70a9

    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ld d, d
    rst $38
    and e
    cp $a5
    cp $4b
    db $fc
    ld d, a
    ld sp, hl
    rst $38
    add b
    ld l, a
    add b
    rst $28
    nop
    rst $20
    nop
    rst $30
    nop
    di
    nop
    ei
    nop
    ld sp, hl
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

jr_008_70a9:
    nop
    rst $38
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
    inc b
    ei
    inc c
    ei
    inc c
    db $fd
    ld c, $f7
    rrca
    rst $00
    nop
    rst $00
    nop
    rst $18
    nop
    ccf
    nop
    ld a, a
    nop
    rst $30
    rrca
    ret c

    ccf
    ld h, b
    rst $38
    db $fc
    rlca
    ld a, [$fd07]
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $18
    ldh [$37], a
    ld hl, sp+$7e
    cp $07
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    ret z

    ccf
    add sp, $1f
    db $f4
    rrca
    ei
    rlca
    nop
    nop
    nop
    nop
    adc h
    adc h
    ld d, d
    sbc $21
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld [$00ff], sp
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
    inc bc
    inc b
    ld bc, HeaderLogo
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    dec b
    ld bc, $ed05
    or b
    xor c
    ldh a, [$5f]
    ldh [$5f], a
    ldh [$7f], a
    ret nz

    ld a, [hl]
    pop bc
    cp a
    pop bc
    cp a
    pop bc
    cp $00
    ldh a, [rP1]
    db $e3
    nop
    ld b, a
    add b
    rst $28
    add b
    cp a
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    ld l, l
    inc sp
    ld l, [hl]
    inc sp
    ld a, d
    daa
    db $f4
    cpl
    db $f4
    cpl
    db $f4
    cpl
    ld a, [$fa27]
    daa
    ld e, a
    pop af
    cpl
    di
    ccf
    db $e3
    ld a, [hl]
    and e
    ld l, [hl]
    or e
    ld e, [hl]
    or e
    ld [hl], l
    sbc e
    ld a, l
    adc a
    db $fc
    nop
    ld a, [hl]
    add b
    ld a, a
    add b
    ei
    add h
    cp c
    add $6e
    di
    rst $10
    dec sp
    ld l, c
    sbc a
    daa
    nop
    dec bc
    nop
    inc c
    nop
    rst $08
    nop
    rst $28
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    ld a, e
    rlca
    db $fd
    inc bc
    rst $38
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
    rst $38
    db $e4
    ei
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
    dec bc
    db $fc
    add $ff
    and c
    ld a, a
    ret nc

    ccf
    add sp, $1f
    ld hl, sp+$0f
    db $e4
    rra
    ld [c], a
    rra
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    ld e, a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$2f], a
    ldh a, [$f4]
    rrca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    rlca
    add b
    add b
    add b
    add b

jr_008_71d4:
    add b
    add b
    add b
    add b
    sbc [hl]
    sbc [hl]
    ld h, c
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
    inc bc
    nop
    ld b, $00
    ld a, h
    jr nz, jr_008_71d4

    nop
    and b
    ld b, b
    and b
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    stop
    ld [$0800], sp
    nop
    inc b
    nop
    inc bc
    ld bc, $0505
    add hl, bc
    dec b
    add hl, bc
    dec b
    add hl, bc
    dec b
    add hl, de
    inc b
    add hl, de
    rlca
    jr jr_008_7232

    db $ec
    cp a
    pop bc
    cp a
    pop bc
    cp [hl]
    pop bc
    cp a
    ret nz

    rst $38
    add b
    cp a
    ret nz

    adc a
    rst $38
    ld [hl], a
    ld hl, sp-$01
    ld b, b

jr_008_7232:
    rst $18
    ld h, b
    sbc $e1
    ld a, a
    pop hl
    xor a
    ld [hl], c

Jump_008_723a:
    rst $18
    ld sp, $f917
    xor $f9
    cp c
    ld h, a
    ld d, c
    rst $28
    or c
    rst $08
    ld h, d
    sbc a
    ld a, [c]
    ccf
    and h
    ld a, a
    inc [hl]
    rst $38
    sbc a
    rst $38
    ld a, e
    add a
    ld a, $c1
    rst $18
    ldh [$33], a
    db $fc
    dec e
    cp $0e
    rst $38
    or $ff
    ld a, a
    adc a
    or a
    call $cdf6
    ld e, l
    and $be
    ld h, a
    or l
    ld l, a
    or [hl]
    ld l, l
    ld c, b
    ld hl, sp+$50
    ld hl, sp+$5f
    ldh [$b0], a
    rst $38
    adc a
    rst $38
    ld h, b
    rst $38
    rra
    rst $38
    rst $30
    rst $38
    sbc $3f
    add hl, sp
    ld a, a
    rst $38
    nop
    rst $38
    nop
    db $fc
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    add e
    rst $38
    ld a, a
    db $fc
    ei
    add a
    rst $38
    nop
    ld hl, sp+$07
    jr c, @-$37

    nop
    rst $38
    jp $f1ff


    rst $38
    db $eb
    rra
    cp $ff
    ld [hl+], a
    rst $18
    ld bc, $01ff
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
    rra
    ldh a, [$1f]
    ldh a, [rNR22]
    ld hl, sp-$69
    ld hl, sp-$35
    db $fc
    ld h, l
    cp $62
    rst $38
    ld d, c
    rst $38
    cp $03
    db $fd
    inc bc
    rst $38
    nop

jr_008_72c6:
    rst $38
    nop

jr_008_72c8:
    rst $38
    nop
    rst $28
    db $10
    di
    inc c
    ldh a, [rIF]
    jr c, @+$01

    push bc
    cp $fb
    ld b, $fe

jr_008_72d7:
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    pop af
    rrca
    and b
    ld h, b
    ldh [rNR41], a
    ret nc

    jr nc, jr_008_72d7

    db $10
    ld l, b
    sbc b
    ld l, b
    sbc b
    jr z, jr_008_72c6

    jr z, jr_008_72c8

    nop
    ld bc, $0200
    ld bc, $0002
    inc bc
    nop
    inc bc
    ld [bc], a
    dec b
    nop
    dec b
    nop
    add hl, bc
    nop
    ld b, b
    add b
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
    nop
    nop
    nop
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
    nop
    nop
    rrca
    rst $38
    nop
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
    cp e
    inc e
    ld c, a
    add h
    dec b
    ld b, [hl]
    daa
    ld b, d
    ld b, $23
    inc de
    ld hl, $2113
    inc bc
    ld de, $ff4f
    ld b, [hl]
    rst $38
    rst $00
    ld a, a
    rst $00
    ld a, a
    and e
    ld a, a
    and e
    ld a, a
    and a
    ld a, a
    and e
    ld a, a
    ei
    db $fd
    ccf
    cp $df
    rrca
    ld a, a
    cp a
    rst $18
    cp a
    ld c, e
    rst $20
    cp a
    rst $38
    ld e, d
    and h
    ret c

    ldh a, [$ed]
    ld sp, hl
    and $7e
    sbc [hl]
    db $fc
    cp b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    ld h, a
    ld a, [hl]
    ld a, a
    rrca
    inc e
    rrca
    ld a, [de]
    inc e
    inc c
    ld [$0000], sp
    inc bc
    nop
    nop
    nop
    rst $38
    ld a, a
    rst $00
    adc a
    rra
    ccf
    ld a, a
    rst $38
    db $fc
    ld a, a
    ld h, e
    ld sp, $ff1f
    ld a, a
    add hl, bc
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc

jr_008_7397:
    ei
    db $ed
    ei
    or a
    ld sp, hl
    ld e, [hl]
    pop af
    xor a
    ld [hl], b
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
    ld h, b
    rst $38
    ld d, c
    rst $38
    jr z, @+$01

    jr z, @+$01

    inc h
    rst $38
    dec h
    rst $38
    dec h
    rst $38
    add hl, hl
    rst $38
    ld c, c
    rst $38
    ld [hl], h
    adc a
    db $fc
    add a
    ld a, [$fe87]
    add e
    ld a, [hl]
    add e
    ld a, l
    add e
    db $fd
    inc bc
    db $fd
    inc bc
    ld bc, $01ff
    rst $38
    ld [bc], a

jr_008_73d5:
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld de, $13ff
    rst $38
    ld [$08f8], sp
    ld hl, sp+$18
    ld hl, sp+$30
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld [bc], a
    add hl, bc
    ld [bc], a
    add hl, bc
    inc bc
    ld [$0807], sp
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0002
    ld bc, $0100
    nop
    ld bc, $8201
    nop
    add d
    nop
    add h
    add h
    ld a, e
    jr c, jr_008_7412

    ld b, b
    adc b
    nop
    ret nz

jr_008_7412:
    ret nz

    jr nz, jr_008_73d5

    jr nz, jr_008_7397

    ld b, b
    nop
    add b
    nop
    ld bc, $0201
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc h
    db $db
    rst $18
    daa
    cp b
    ld c, a
    ld [hl], a
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
    add b
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    inc bc
    ld de, $1302
    ld [bc], a
    inc de
    rla
    ld [hl+], a
    dec b
    ld h, $2f
    ld b, l
    add hl, sp
    ld c, a
    ld [hl], d
    cp a
    and c
    ld a, a
    xor c
    ld a, a
    ret


    ld a, a
    ret


    ld a, a
    ret


    ld a, a
    push de
    ld a, a
    or h
    ld a, a
    ld a, [c]
    ccf
    add b
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
    ret nz

    add b
    add b
    ret nz

    nop
    nop

jr_008_7472:
    nop
    nop
    ld [bc], a
    nop
    inc b
    ld [bc], a
    inc b
    ld b, $0e
    inc c
    ld e, $3c
    add hl, bc
    ld e, $02
    ld bc, $0003
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    jr nz, jr_008_7472

    ld h, b
    rst $18
    ld h, b
    rst $38
    ld b, b
    db $fd
    ld b, b
    ld a, b
    ret nz

    cp e
    ret nz

    rst $30
    add b
    ret nc

    ccf
    add sp, $1f
    ld hl, sp+$0f
    inc [hl]
    rrca
    scf
    rrca
    ld [hl], h
    rrca
    ld l, l
    rra
    ld d, [hl]
    ccf
    ld d, d

Jump_008_74b1:
    rst $38
    ld d, e
    cp $a5
    cp $db
    db $fc
    ld l, a
    ldh a, [$bf]
    ret nz

    ld a, a
    add b
    rst $38
    nop
    db $fd
    inc bc
    cp $03
    ld a, [$fc07]
    rlca
    db $f4
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld hl, $11ff
    rst $38
    inc de
    rst $38
    inc de
    rst $38
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
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
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
    dec b
    ld bc, $0206
    inc b
    ld bc, $050c
    add hl, bc
    inc bc
    add hl, sp
    inc hl
    jp nc, Jump_000_22c7

    rst $28
    jr nc, @+$01

    ld b, b
    rst $38
    add b
    cp $80
    ld sp, hl
    nop
    and a
    nop
    adc a
    nop
    ccf
    nop
    rst $18
    ccf
    rst $38
    nop
    cp [hl]
    ld bc, $013f
    cp l
    inc bc
    cp a
    ld [bc], a
    ld a, [$fa06]
    ld b, $d5
    xor $db
    inc a
    rst $38
    ldh [$bf], a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    cp $00
    push de
    dec sp
    db $fd
    dec de
    jp hl


    rra
    push af
    rrca
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld [bc], a
    ret nz

    ldh [$a0], a
    ld [hl], b
    cp b
    ld [hl], b
    cp h
    ld a, b
    xor [hl]
    ld a, h
    and a
    ld a, [hl]
    and e
    ld a, a
    and c
    ld a, a
    rrca
    nop
    rlca
    nop
    rra
    dec bc
    rra
    ccf
    ld a, [de]
    ld bc, $0708
    add b
    nop
    ret nz

    add b
    nop
    nop
    nop
    nop
    ld b, b
    add b
    ret nc

    ldh [$a0], a
    ret nz

    add c
    nop
    inc bc
    nop
    rlca
    nop
    ld a, $01
    ld a, l
    inc bc
    ld a, e
    rlca
    or $0f
    db $eb
    ld e, $d3
    ld a, $ae
    ld a, a
    ld e, e
    pop af
    rst $20
    add b
    ld l, a
    add b
    ld e, a
    add b
    rst $38
    nop
    ld a, a
    ret nz

    ld e, a
    ldh [$cf], a
    ld [hl], b
    or a
    ld a, b
    ld h, [hl]
    ccf
    and $3f
    ld [c], a
    ccf
    db $e3
    ccf
    pop de
    ccf
    add sp, $1f
    rst $30
    rrca
    ld hl, sp+$07
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

    rst $38
    ret nz

    rst $18
    ldh [$7f], a
    ldh [$e8], a
    rra
    add sp, $1f
    ld hl, sp+$1f
    db $f4
    rra
    call nc, $d43f
    ccf
    call nc, $e23f
    ccf
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $10ff
    rst $28
    sbc c
    ld h, [hl]
    call c, $8023
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ld h, b

jr_008_75e7:
    ldh [rNR41], a
    ldh [rHDMA1], a
    or c
    inc l
    rst $18
    db $d3
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
    ldh [$e0], a
    ret nc

    jr nc, jr_008_75e7

    jr jr_008_7601

jr_008_7601:
    ld b, $00
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld b, $00
    inc bc
    nop
    nop
    add a
    ld b, h
    ld b, l
    add [hl]
    ld b, h
    add a
    ld b, a
    add e
    and b
    ld b, b
    ret nc

    jr nz, @+$6d

    sub b
    nop
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    cp $7f
    rlca
    inc b
    inc bc
    ld a, [bc]
    pop af
    inc b
    add hl, bc
    ld a, [$fe06]
    ld b, $ff
    ld b, $fd
    rlca
    ld a, l
    add a
    db $fc
    add a
    cp d
    rst $00
    ld sp, hl
    ld b, a
    db $fd
    nop
    db $dd
    nop
    dec bc
    nop
    add a
    nop
    ld a, a
    add b
    cp a
    ret nz

    ld a, e
    db $fc
    ld h, l
    sbc [hl]
    ld a, a
    ld [bc], a
    ld a, a
    ld [bc], a
    ld a, e
    ld b, $bb
    ld b, $bb
    ld b, $dd
    inc b
    db $fd
    inc b
    db $fd
    inc b
    and b
    ld a, a
    and h
    ld a, a
    and h
    ld a, a
    and h
    ld a, a
    xor h
    ld a, a
    xor h
    ld a, a
    xor h
    ld a, a
    xor d
    ld a, a
    ldh [$c0], a
    ld [hl], b

jr_008_7673:
    ldh [$38], a

jr_008_7675:
    ldh a, [$3f]

jr_008_7677:
    ld hl, sp+$37
    rst $38
    jr jr_008_7673

    jr jr_008_7675

    jr jr_008_7677

    rlca
    ld bc, $0f17
    inc a
    ld e, $61
    ldh a, [$fe]
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop af
    pop hl
    add c
    pop bc
    add hl, sp
    ld bc, $39c5
    dec b
    ld sp, hl
    dec b
    ld sp, hl
    dec b
    ld sp, hl
    dec b
    ld sp, hl
    ld l, a
    sbc a
    rst $18
    ldh [$3f], a
    rst $38
    add hl, hl
    rst $20
    add hl, hl
    rst $20
    ld l, c
    rst $00
    ld l, c
    rst $00
    ld c, c
    rst $00
    xor $f3
    dec d
    ei
    ld a, [$0dfd]
    cp $07
    cp $07
    cp $06
    rst $38
    dec bc
    rst $38
    cpl
    ldh a, [$3f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$5f]
    ldh a, [$6d]
    ldh a, [$bd]
    ret nz

    ld a, l
    add b
    and d
    ld a, a
    and c
    ld a, a
    pop bc
    ld a, a
    ret nz

jr_008_76d7:
    ld a, a
    ret nz

    ld a, a
    ret z

    ld a, a
    ret z

    ld a, a
    ret z

    ld a, a
    rst $38
    nop
    ei
    nop
    ld e, h
    add b
    add sp, -$80
    or c
    ret nz

    ld e, e
    ldh [$4e], a
    pop af
    inc h
    ei
    rst $00
    jr jr_008_76d7

    inc bc
    ld c, d
    ld sp, $1827
    ld [$f007], sp
    inc bc
    rra
    ldh [rTAC], a
    ei
    db $f4
    inc c
    ld a, [$1e06]
    ld [c], a
    rrca
    pop af
    sbc [hl]
    ld h, c
    rlca
    ld hl, sp-$80
    ld a, a
    ldh a, [rIE]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    adc h
    ld a, [c]
    cp $fb
    rlca
    ld bc, $00ff
    nop
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
    ld bc, $0002
    dec b
    ld [bc], a
    dec b
    ld bc, $0106
    ld b, $07
    add hl, bc
    dec bc
    pop af
    add [hl]
    inc bc
    ld b, l
    ld a, $dc
    ld h, e
    call c, $be63
    pop bc
    cp $81
    ld a, [hl]
    add c
    cp $01
    cp $01
    cp $01
    jp c, Jump_000_35e7

    ei
    dec bc
    db $fd
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    push af
    inc c
    push af
    inc c
    ld a, l
    adc b
    db $fd
    adc b
    db $fd
    adc b
    db $fd
    adc b
    db $fd
    adc b
    rst $38
    adc a
    sub l
    ld a, a
    sub d
    ld a, a
    sbc d
    ld a, a
    sbc d
    ld a, a
    sub [hl]
    ld a, a
    sub [hl]
    ld a, a
    sub [hl]
    ld a, a
    db $f4
    rst $38
    rla
    rst $38
    sbc a
    rst $38
    ld l, [hl]
    ld sp, hl
    add hl, sp
    ld hl, sp+$30
    ld sp, hl
    ld d, c
    ei
    ld [hl], a
    ei
    or e
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    dec b
    ld sp, hl
    dec b
    ld sp, hl
    dec b
    ld sp, hl
    dec b
    ld sp, hl
    dec b
    ld hl, sp+$05
    ld hl, sp+$0d
    ldh a, [rNR11]
    pop hl
    ld e, c
    rst $00
    ld e, c
    rst $00
    reti


    add a
    reti


    add a
    sbc c
    add a
    cp c
    add a
    cp c
    add a
    cp c
    rlca
    ld [de], a
    rst $38
    dec e
    or $2d
    or $2b
    or $1a
    rst $30
    dec d
    ei
    ld a, [bc]
    db $fd
    dec b
    cp $fd
    nop
    db $fd
    nop
    db $fd
    nop
    rst $18
    nop
    rst $08
    nop
    sbc a
    nop
    cp a
    add b
    ld a, [hl]
    pop bc
    ret z

    ld a, a
    and h
    ld a, a
    call nc, $ee3f
    rra
    ei
    rlca
    db $fd
    inc bc
    ld sp, hl
    rlca
    ld h, c
    sbc a
    jr @+$01

    ld b, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    nop
    rst $38
    ld b, $ff
    rrca
    rst $38
    db $fc
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    ret nz

jr_008_780d:
    rst $38
    ld h, b
    rst $38
    ld a, h
    adc a
    ld [$15f7], a
    ei
    dec bc
    db $fd
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
    ld bc, $81ff
    rst $38
    add c
    rst $38
    add c
    rst $38
    add d
    cp $00
    ld [bc], a
    nop

jr_008_7833:
    ld [bc], a
    nop
    ld [bc], a
    add c
    add d
    ld h, b
    pop hl
    sbc b
    ld sp, hl
    ld h, a

jr_008_783d:
    rst $38
    jr jr_008_783d

    dec sp
    ld c, h
    scf
    ld e, b
    or a
    ld e, b
    or a
    ld e, b
    or a
    ld e, b
    cp a
    ld c, b
    ld e, e
    xor h
    db $fd
    and $fc
    inc bc
    db $fc
    inc bc
    ei
    rlca
    or $0c
    db $ec
    jr jr_008_7833

    jr nc, jr_008_780d

    ld h, b
    ld h, b
    ret nz

    ld bc, $feff
    rst $38
    ld b, l
    add e
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    adc a
    ld a, a
    add b
    ld a, $c1
    rst $38
    rst $38
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ld sp, $f2ff
    pop bc
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
    ld h, a
    cp a
    ld h, a
    cp a
    or a
    rst $38
    sbc a
    rst $38
    rst $18
    ld a, a
    ld l, a
    ccf
    jr nc, jr_008_78bd

    jr jr_008_78af

    ldh [rIE], a
    ldh [rIE], a
    jp $c4fc


    ld hl, sp-$75
    pop af
    ld e, $e7
    ld a, a
    sbc a
    ld a, [c]

jr_008_78af:
    ld a, l
    ld h, e
    add c
    adc a
    rlca
    dec sp
    inc e
    rst $28
    ld [hl], b
    cp a
    ret nz

    rst $38
    rst $38

Call_008_78bc:
    nop

jr_008_78bd:
    rst $38
    rst $38
    nop
    cp c
    rlca
    rst $38
    rst $38
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    ccf
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ld [bc], a
    rst $38
    add c
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    and b
    ld a, a
    ret c

    ccf
    rst $38
    rst $38
    rst $38
    nop
    cp h
    ld h, e
    ld e, b
    or a
    xor b
    rst $18
    ld l, b
    rst $18
    ld l, b
    rst $18
    ld [hl], b
    rst $18
    ret nc

    cp a
    ld a, a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld bc, $00fe
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld hl, sp+$1f
    ld [hl], h
    adc a
    inc a
    rst $00
    ld a, [de]
    rst $20
    dec e
    db $e3
    dec c
    di
    ld b, $f9
    ld [bc], a
    db $fd
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    add l
    rst $38
    add h
    rst $38
    add h
    db $fc
    add h
    db $fc
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    add b
    add b
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_008_794a:
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld e, $bf
    db $e3
    rst $30
    dec e
    cp $03
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$10ff], sp
    rst $38

jr_008_7960:
    add a
    ret nz

    rst $08
    ldh a, [$3e]
    ld a, a
    pop de
    db $e3
    ld a, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ret nz

    nop
    ldh [rP1], a
    db $fc
    nop
    db $e3

jr_008_7977:
    db $fc
    sbc a
    ccf
    add sp, -$0f
    rra
    rst $38
    jr jr_008_7977

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_008_794a

    rst $38
    rst $38
    ld b, d
    add c
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
    nop
    rst $38
    rst $38
    jr nz, jr_008_7960

    rrca
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
    ret nz

    ret nz

    ccf
    rst $38
    cp a
    ret nz

    rst $38
    nop
    ld a, b
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
    ld hl, sp-$01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rra
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f00
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    ld l, h
    rra
    ld a, [bc]
    rlca
    ld bc, $fe03
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    inc bc
    db $fc
    inc bc
    db $fc
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
    ld b, h
    rst $38
    ld b, d
    rst $38
    or c
    ld a, a
    ret z

    ccf
    inc [hl]
    rst $08
    inc e
    rst $20
    ld a, [bc]
    rst $30
    ld a, [bc]
    rst $30
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR23], a
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0900], sp
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
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_008_7a98

    ld a, [de]
    dec de
    inc e
    ld [de], a
    ld [de], a
    dec e
    ld e, $1f
    jr nz, jr_008_7aaa

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
    jr z, jr_008_7ac1

jr_008_7a98:
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
    cpl
    jr nc, jr_008_7ad8

    ld [hl-], a
    inc sp
    inc [hl]

jr_008_7aaa:
    dec [hl]
    ld [hl], $37
    jr c, jr_008_7ae8

    ld a, [hl-]
    dec sp
    inc a
    nop
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

jr_008_7ac1:
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    nop
    nop
    nop
    ld c, l
    ld c, [hl]
    nop
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

jr_008_7ad8:
    ld e, e
    ld e, h
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
    nop
    ld h, [hl]

jr_008_7ae8:
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
    adc h
    adc l
    adc [hl]
    adc a
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
    and b
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_008_7e3f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_008_7f3c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
