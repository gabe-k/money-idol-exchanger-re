; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

Call_00a_4000:
Jump_00a_4000:
    call Call_000_05e9
    di
    call Call_000_04e1
    ld a, [$cf2f]
    ld hl, $1170
    and a
    call nz, Call_000_0f3a
    ld hl, $4092
    ld de, $8000
    ld bc, $0890
    call Call_000_0634
    ld de, $4922
    ld hl, $9800
    call Call_000_0502
    xor a
    ld [$cf0b], a
    ld [$cf0c], a
    ld a, $8f
    ldh [rWY], a
    ld a, $a6
    ldh [rWX], a
    ld a, $e4
    ld [$cf1b], a
    ld [$cf1c], a
    ld a, $06
    call Call_000_063d
    ld a, $d1
    call Call_000_03da
    call Call_000_0369
    ld hl, $01d6

jr_00a_404d:
    call Call_000_0369
    call Call_000_055e
    ldh a, [$8b]
    bit 0, a
    ret nz

    dec hl
    ld a, h
    or l
    jr nz, jr_00a_404d

    call Call_00a_4081
    call Call_00a_407c
    call Call_00a_4081
    call Call_00a_407c
    call Call_00a_4081
    call Call_00a_407c
    call Call_00a_4081
    call Call_00a_407c
    call Call_00a_4081
    call Call_00a_407c
    ret


Call_00a_407c:
    ld d, $01
    jp Jump_000_03b6


Call_00a_4081:
    ld e, $0c

jr_00a_4083:
    call Call_000_0369
    call Call_000_055e
    ldh a, [$8b]
    bit 0, a
    ret nz

    dec e
    jr nz, jr_00a_4083

    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_40a2:
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
    rrca
    nop
    nop
    nop
    inc bc
    nop
    rra
    nop
    ld a, a
    nop
    ld hl, sp+$07
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    nop
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$00
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

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld a, b
    add b
    jr c, jr_00a_40a2

    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    rra
    nop
    inc a
    inc bc
    ld a, b
    rlca
    ld [hl], b
    rrca
    nop
    nop
    cp $00
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld a, b
    add b
    add hl, sp
    ret nz

    nop
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, h
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    nop
    nop
    pop bc
    nop
    db $e3
    nop
    rst $30
    nop
    ld [hl], a
    add b
    ld a, $c1
    inc a
    jp $e718


    nop
    nop
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    rra
    nop
    cp h
    inc bc
    cp b
    rlca
    ldh a, [rIF]
    nop
    nop
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
    nop
    rst $38
    nop
    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rrca
    ldh a, [$03]
    db $fc
    ld bc, $00fe
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
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ld c, $01
    inc e
    inc bc
    inc e
    inc bc
    jr c, jr_00a_4191

    jr c, jr_00a_4193

    jr c, jr_00a_4195

    ld [hl], b
    rrca
    ld [hl], b

jr_00a_4191:
    rrca
    nop

jr_00a_4193:
    rst $38

jr_00a_4194:
    nop

jr_00a_4195:
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    jr jr_00a_4194

    inc e
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [rIE], a
    nop
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add c
    ld a, [hl]
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    add a
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $31
    dec e
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
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
    add b
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
    add b
    ld a, a
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$3f]
    ret nz

    ccf
    ret nz

    ld a, a
    add b
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
    pop bc
    ld a, $ff
    nop
    rst $38
    nop
    ccf
    ret nz

    ld e, $e1
    ldh [rP1], a
    ldh [rNR10], a
    ldh a, [rNR23]
    call c, $f838
    inc a
    cp h
    ld a, h
    ld a, h
    db $fc
    db $fc
    db $fc
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld a, b
    rlca
    ld a, b
    rlca
    rra
    ldh [rNR34], a
    pop hl
    ld e, $e1
    ld e, $e1
    ld e, $e1
    rrca
    ldh a, [rIF]
    ldh a, [rTAC]
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
    nop
    rst $38
    ld hl, sp+$07
    ldh a, [rIF]
    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$0e]
    pop af
    ld c, $f1
    ld c, $f1
    ld e, $e1
    ld a, $c1
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    or [hl]
    ld a, c
    cp $79
    rst $38
    ld a, b
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
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $80
    ld a, a
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    pop bc
    ld a, $c1
    ld a, $c1
    ld a, $e3
    inc e
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
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
    add b
    ld a, a
    add b
    ld a, a
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

    ccf
    ret nz

    ccf
    ret nz

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
    ld a, a
    add b
    ccf

jr_00a_431f:
    ret nz

    ccf
    ret nz

    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    ldh [$3f], a
    ret nz

    rst $38
    nop
    pop hl
    ld e, $c0
    ccf
    ld hl, sp-$04
    db $fc
    ld hl, sp-$10
    ld hl, sp+$60
    ldh a, [$a0]
    ld h, b
    ret nz

    jr nz, jr_00a_431f

    nop
    ldh a, [rP1]
    jr c, jr_00a_434b

    inc a
    inc bc
    inc a
    inc bc
    ld e, $01
    rra

jr_00a_434b:
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    inc b
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    db $fc
    inc bc
    ret nz

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
    ld [bc], a
    db $fd
    rrca
    ldh a, [$3e]
    pop bc
    ld e, $e1
    ld c, $f1
    ld c, $f1
    ld b, $f9
    ld b, $f9
    rlca
    ld hl, sp+$0f
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp-$71
    ld [hl], b
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
    rst $38
    db $fc
    rst $38
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $83
    ld a, h
    rst $00
    jr c, @-$7e

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    pop af
    ld c, $ff

jr_00a_43c3:
    nop
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    db $eb
    inc e
    rst $38
    inc e
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $81fe
    ld a, [hl]
    add e
    ld a, h
    rst $00
    jr c, jr_00a_43c3

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, h
    add e
    rst $18
    ldh [rIF], a
    ldh a, [rP1]
    rst $38
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
    ld bc, $07fe
    ld hl, sp+$70
    add b
    ld [hl], b
    adc b
    ld a, b
    adc h
    ld a, [hl]
    adc h
    db $ec
    ld e, $fe
    ld e, $de
    ld a, $be
    ld a, [hl]
    dec b
    ld [bc], a
    ld bc, $0203
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
    ld a, a
    add b
    rst $28
    ldh a, [$7f]
    rst $38
    cp a
    ld a, a
    ld e, a
    ccf
    rla
    rrca
    dec b
    inc bc
    rst $38
    nop
    db $fd
    ld [bc], a
    or $0f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $f4
    ld sp, hl
    db $fd
    ld [bc], a
    ei
    ld b, $f6
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$03
    ldh a, [$f8]
    cp $01
    db $fd
    inc bc
    rst $30
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ldh [$80], a
    ret nz

    add b
    nop
    rst $38
    ld bc, $01ff
    cp l
    jp Jump_00a_7f7f


    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    rra
    ccf
    ld a, a
    add b
    cp a
    ret nz

    xor $f1
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $18
    adc a
    rst $18
    rlca
    adc a
    db $dd
    ld a, $be
    ld a, a
    db $fc
    cp $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$08
    ldh a, [$f8]
    ldh [$f0], a
    cp $01
    db $fd
    inc bc
    dec sp
    rst $00
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    rra
    ccf
    rrca
    rra
    rst $28
    ldh a, [$fb]
    db $fc
    cp $ff
    rst $38
    rst $38
    db $e3
    rst $30
    pop bc
    db $e3
    add c
    ret nz

    nop
    add b
    rst $38
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

jr_00a_44de:
    ld a, a
    rst $38
    ld e, a
    ccf
    rst $38
    nop
    cp $01
    ei
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    cp $fc
    cp $fe
    db $fc
    ld hl, sp-$04
    ldh a, [$f8]
    ldh [$f0], a
    ret nz

    ldh [rLCDC], a
    add b
    rlca
    nop
    rra
    nop
    ld a, a
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    rra
    ldh [rTAC], a
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    inc bc
    nop
    rlca
    nop
    add a
    nop
    rst $00
    nop
    xor $01
    xor $01
    ld a, [hl]
    add c
    db $fc
    nop
    cp $00
    rst $38
    nop
    adc a
    ld [hl], b
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    add a
    nop
    add a
    nop
    rst $00
    ld b, b
    rst $20
    ld h, b
    ld a, h
    nop
    cp $00
    rst $38
    nop
    rst $00
    jr c, jr_00a_44de

    ld a, h
    ld bc, $01fe
    cp $01
    cp $03
    nop
    rrca
    nop
    rra
    nop
    cp [hl]
    ld bc, $07f8
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
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
    nop
    rst $38
    nop
    rst $38
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    cp $07
    nop
    rra
    nop
    ccf
    nop
    ld a, h
    inc bc
    ld [hl], b
    rrca
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ldh [rP1], a
    ld hl, sp+$00
    cp $00
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    cp $00
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
    ret nz

    nop
    ret nz

    nop
    ld c, $01
    ld e, $01
    inc e
    inc bc
    inc a
    inc bc
    jr c, @+$09

    jr c, jr_00a_45d5

    ld a, b
    rlca
    ld [hl], b
    rrca
    ld bc, $07fe

jr_00a_45d5:
    ld hl, sp+$0f
    ldh a, [rIF]
    pop af
    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp-$39
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    call c, Call_000_3ee3
    pop bc
    ld a, $c1
    ld e, $e1
    ld e, $e1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld b, $f9
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    cp $e7
    ld h, b
    rst $30
    ld [hl], b
    rst $30
    ld [hl], b
    rst $38
    jr nc, @+$01

jr_00a_461b:
    jr nc, jr_00a_461b

    ld sp, $31fe
    cp $31
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $c0
    ccf
    ret nz

    ccf
    ret nz

    ccf
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
    nop
    rst $38
    ld e, $e1
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $83
    ld a, h
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    add hl, sp
    ret nz

    add hl, sp
    ret nz

    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    ldh [rP1], a
    ldh [rNR10], a
    ld hl, sp+$10
    ldh a, [rNR23]
    db $fc
    jr @-$06

    inc e
    db $fc
    inc e
    db $fc
    inc e
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld a, b
    rlca
    jr c, jr_00a_46a7

    jr c, jr_00a_46a9

    rra
    db $e3
    rrca
    pop af
    rrca

jr_00a_46a7:
    ldh a, [rTAC]

jr_00a_46a9:
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc h
    jp $8738


    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    nop

jr_00a_46bd:
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rSB]
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, b
    add a
    jr nc, jr_00a_46bd

    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$80]
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
    ld a, a
    ret nz

    ccf
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
    ld a, a
    add b
    ld a, a
    add b
    ld e, $e1
    add hl, sp
    ret nz

    add hl, sp
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    jp $813c


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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    rlca
    ld hl, sp+$06
    ld sp, hl
    inc bc
    db $fc
    inc bc
    db $fc
    call c, $fc3c
    inc a
    cp h
    ld a, h
    db $fc
    ld a, h
    ld a, h
    db $fc
    ld hl, sp-$04
    ld a, h
    ld hl, sp-$50
    ld a, b
    inc a
    inc bc
    inc e
    inc bc
    ld e, $01
    rrca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0002
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    db $fc
    inc bc
    rst $38
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
    inc bc
    db $fc
    rrca
    ldh a, [rIE]
    nop
    rra
    ldh [rNR33], a
    ld [c], a
    ccf
    jp nz, $877a

    rst $38
    rlca
    rst $30
    rrca
    rst $28
    rra
    rst $18
    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, h
    add e
    cp a
    ret nz

    rra
    and b
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
    rst $38
    nop
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld a, l
    add d
    ld a, [$f707]
    rrca
    rst $28
    rra
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, [hl]
    add c
    cp a
    ret nz

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
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    rrca
    ldh a, [$fe]
    ld bc, $3fc0
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ld [hl], c
    adc [hl]
    cp a
    ret nz

    ld a, a
    add b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, e
    adc h
    rst $38
    inc c
    db $ed
    ld e, $fe
    rra
    sbc $3e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    pop hl
    ld e, $7f
    add b
    ret c

    jr nc, @+$62

    sub b
    ld [hl], b
    add b
    ld a, b
    add b
    ld [hl], h
    adc b
    add sp, $1c
    db $fc
    ld e, $de
    ld a, $03
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
    ld a, a
    add b
    rst $18
    ldh [$7f], a
    rst $38
    ccf
    ld a, a
    rra
    ccf
    rla
    rrca
    dec b
    inc bc
    nop
    nop
    rst $38
    nop
    db $fd
    inc bc
    rst $38
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
    nop
    ld a, a
    rst $38
    cp $ff
    db $fc
    cp $f8
    db $fc
    ldh a, [$f8]
    ret nc

    ldh [rLCDC], a
    add b
    nop
    nop
    or a
    jr jr_00a_4892

    ld e, $07
    rrca
    inc bc
    rlca
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop

jr_00a_4892:
    rst $38
    nop
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    ccf
    nop
    nop
    cp a
    ld a, a
    rst $38
    rst $38
    cp $ff
    db $fc
    cp $f8
    db $fc
    add sp, -$10
    and b
    ret nz

    nop
    nop
    xor a
    ldh a, [rNR31]
    cp h
    rrca
    rra
    rlca
    rrca
    inc bc
    rlca
    ld [bc], a
    ld bc, $0000
    nop
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
    rst $38
    rst $38
    cp a
    ld a, a
    nop
    nop
    db $fd
    inc bc
    ei
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $00
    nop
    rst $18
    ldh [$ee], a
    pop af
    rst $38
    rst $38
    rst $18
    rst $38
    and a
    rst $08
    inc bc
    add a
    ld [bc], a
    ld bc, $0000
    cp [hl]
    ld a, [hl]
    cp $fe
    db $fc
    cp $fe
    db $fc
    ld hl, sp-$04
    ldh a, [$f8]
    ret nc

    ldh [rP1], a
    nop
    cp a
    ret nz

    ld l, a
    ld [hl], b
    ccf
    ld a, a
    rra
    ccf
    rrca
    rra
    rlca
    rrca
    ld bc, $0003
    nop
    cp [hl]
    ld a, [hl]
    ld a, [hl]
    cp $fc
    cp $fe
    db $fc
    ld hl, sp-$04
    ldh a, [$f8]
    ldh [$f0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, $00
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
    jr jr_00a_49ad

    ld a, [de]
    dec de
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    ld e, $1f
    jr nz, jr_00a_49c3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_00a_49d3

    ld a, [hl+]
    nop
    nop

jr_00a_49ad:
    nop
    nop
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_00a_49e9

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_00a_49c0

jr_00a_49c0:
    nop
    nop
    nop

jr_00a_49c3:
    nop
    nop
    add hl, sp
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
    ld b, [hl]

jr_00a_49d3:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4847
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld c, [hl]
    ld d, c
    ld d, d
    nop
    nop

jr_00a_49e9:
    nop
    nop
    nop
    nop
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
    daa
    ld e, l
    ld e, [hl]
    ld e, a
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
    daa
    ld l, d
    ld l, e
    ld l, h
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call Call_000_05e9
    di
    call Call_000_04e1
    ld hl, $4e01
    ld de, $8000
    ld bc, $0e10
    call Call_000_0634
    ld de, $5c11
    ld hl, $9800
    call Call_000_0502
    call Call_00a_5d79
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
    ld a, [$cf2f]
    ld hl, $4b06
    and a
    call nz, Call_000_0f3a
    ld a, $d1
    call Call_000_03da
    call Call_000_0369
    ld bc, $0064

jr_00a_4ad9:
    call Call_000_0369
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_4ad9

    call Call_000_0369
    ld bc, $0096

jr_00a_4ae7:
    call Call_000_0369
    call Call_000_055e
    ldh a, [$8b]
    bit 0, a
    jr nz, jr_00a_4afb

    dec bc
    ld a, b
    or c
    jr nz, jr_00a_4ae7

    call Call_000_03b4

jr_00a_4afb:
    ld a, [$cf2f]
    ld hl, $4b16
    and a
    call nz, Call_000_0f3a
    ret


    ld d, c
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    push bc
    nop
    nop
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
    ld a, [$c2a7]
    ld hl, $4d61
    call Call_000_065e
    ld e, [hl]
    ld a, [$c2a8]
    ld hl, $4d4d
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $00
    add hl, de
    ld de, $fffa
    ld a, $ff

jr_00a_4b44:
    inc a
    add hl, de
    bit 7, h
    jr z, jr_00a_4b44

    cp $0f
    jr c, jr_00a_4b50

    ld a, $0f

jr_00a_4b50:
    inc a
    call Call_000_0674
    ld [$c2c5], a
    ld a, $01
    ld [$c2c6], a
    ld a, [$c2a9]
    and a
    jr z, jr_00a_4b69

    dec a
    cp $0f
    jr c, jr_00a_4b69

    ld a, $0f

jr_00a_4b69:
    inc a
    call Call_000_0674
    ld [$c2c6], a
    ld a, [$c2bf]
    dec a
    cp $0c
    jr nc, jr_00a_4b81

    ld hl, $4bd0
    call Call_000_065e
    ld a, [hl]
    jr jr_00a_4b89

jr_00a_4b81:
    sub $09
    cp $0f
    jr c, jr_00a_4b89

    ld a, $0f

jr_00a_4b89:
    inc a
    call Call_000_0674
    ld [$c2c4], a
    ld a, [$c2be]
    ld hl, $4d4d
    call Call_000_065d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [$c2bd]
    ld hl, $4d61
    call Call_000_065e
    ld a, [hl]
    call Call_000_0665
    ld a, e
    cp $0f
    jr c, jr_00a_4bb0

    ld a, $0f

jr_00a_4bb0:
    inc a
    call Call_000_0674
    ld [$c2c3], a
    ld a, [$c2c3]
    ld b, a
    ld a, [$c2c4]
    add b
    daa
    ld b, a
    ld a, [$c2c5]
    add b
    daa
    ld b, a
    ld a, [$c2c6]
    add b
    daa
    ld [$c2c7], a
    ret


    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    ld a, $ef
    ldh [rLCDC], a
    ld a, $30
    ld [$cf0c], a
    xor a
    ld [$cf0b], a
    ld a, [$c2c3]
    call Call_00a_4cf0
    ld de, $9c81
    ld c, $03

jr_00a_4bf4:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_00a_4bf4

    ld a, $03
    call Call_000_0750
    call Call_00a_4cde
    ld a, [$c2c4]
    call Call_00a_4cf0
    ld de, $9ce1
    ld c, $03

jr_00a_4c0f:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_00a_4c0f

    ld a, $03
    call Call_000_0750
    call Call_00a_4cde
    ld a, [$c2c5]
    call Call_00a_4cf0
    ld de, $9d41
    ld c, $03

jr_00a_4c2a:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_00a_4c2a

    ld a, $03
    call Call_000_0750
    call Call_00a_4cde
    ld a, [$c2c6]
    call Call_00a_4cf0
    ld de, $9da1
    ld c, $03

jr_00a_4c45:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_00a_4c45

    ld a, $03
    call Call_000_0750
    call Call_00a_4ce9
    ld a, [$c2c7]
    ld b, a
    swap a
    and $0f
    ld d, a
    ld a, b
    and $0f
    ld e, a
    ld a, $0b
    ld hl, $7704
    call Call_000_0061
    ld hl, $da00
    ld de, $8c40
    ld a, $40
    call Call_000_0750
    call Call_00a_4ce9
    ld hl, $da40
    ld de, $8c80
    ld a, $40
    call Call_000_0750
    call Call_00a_4ce9
    ld hl, $da80
    ld de, $8cc0
    ld a, $40
    call Call_000_0750
    call Call_00a_4ce9
    ld hl, $dac0
    ld de, $8d00
    ld a, $40
    call Call_000_0750
    call Call_00a_4ce9
    ld hl, $db00
    ld de, $8d40
    ld a, $40
    call Call_000_0750
    call Call_00a_4ce9
    ld hl, $db40
    ld de, $8d80
    ld a, $40
    call Call_000_0750
    call Call_00a_4ce9
    ld hl, $4d11
    ld de, $9c48
    call Call_000_06a5
    call Call_00a_4cde
    ld hl, $4d32
    ld de, $9cca
    call Call_000_06a5
    ld a, $c8

jr_00a_4cd5:
    push af
    call Call_00a_4ce9
    pop af
    dec a
    jr nz, jr_00a_4cd5

    ret


Call_00a_4cde:
    ld a, $14

jr_00a_4ce0:
    push af
    call Call_00a_4ce9
    pop af
    dec a
    jr nz, jr_00a_4ce0

    ret


Call_00a_4ce9:
    call Call_000_0369
    call Call_000_047e
    ret


Call_00a_4cf0:
    ld c, a
    ld b, $00
    swap a
    and $0f
    jr z, jr_00a_4cfc

    add $19
    ld b, a

jr_00a_4cfc:
    ld a, b
    ld [$c2aa], a
    ld a, c
    and $0f
    add $19
    ld [$c2ab], a
    ld a, $0f
    ld [$c2ac], a
    ld hl, $c2aa
    ret


    ld e, $0a
    inc bc
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
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    jr @+$08

    inc b
    call nz, $c8c6
    ret nc

    jp nc, $c5d4

    rst $00
    ret


    pop de
    db $d3
    push de
    jp z, $cecc

    sub $d8
    jp c, $cdcb

    rst $08
    rst $10
    reti


    db $db
    nop
    nop
    ld h, h
    nop
    ret z

    nop
    inc l
    ld bc, $0190
    db $f4
    ld bc, $0258
    cp h
    ld [bc], a
    jr nz, jr_00a_4d62

    add h
    inc bc
    nop

jr_00a_4d62:
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_00a_4da0

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    nop
    nop
    nop
    nop

jr_00a_4da0:
    nop
    jr z, jr_00a_4dcc

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_00a_4ddc

    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_00a_4df2

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
    ld b, l
    nop

jr_00a_4dcc:
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
    nop

jr_00a_4ddc:
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

jr_00a_4de7:
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d

jr_00a_4df2:
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

jr_00a_4dfc:
    nop
    nop
    nop

jr_00a_4dff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, c
    inc l
    ld de, $3000
    ld h, b
    ld c, $63
    ld [$0904], sp
    dec b
    ld h, d
    db $10
    ldh [$89], a
    db $10
    ld h, b
    add hl, bc
    ld h, b
    add hl, bc
    ld de, $4c08
    jr nc, jr_00a_4e35

    ret nz

    nop
    jr nz, @-$7a

    ld a, b
    ld b, b
    add [hl]

jr_00a_4e35:
    or d
    ld bc, $01b0
    ld b, b
    adc b
    add b
    ld [hl], b
    rst $38
    nop
    nop
    nop
    ld [bc], a
    inc e
    dec b
    ld [hl+], a
    ld a, [de]
    ld bc, $019a
    dec b
    jp nz, Jump_000_3c42

    rst $38
    nop
    nop
    nop
    ld [$1107], sp
    ld [$1006], sp
    ld b, $10
    ld [$3210], sp
    inc c
    ldh [$03], a
    nop
    inc b
    nop
    nop
    jr nc, jr_00a_4de7

    inc [hl]
    adc b
    nop
    inc c
    ld b, $70
    add $10
    jr nz, jr_00a_4dff

    and b
    ld b, [hl]
    ld b, b
    add d
    inc [hl]
    add d
    jr nc, jr_00a_4dfc

    adc b
    ld b, h
    ld b, h
    jr c, jr_00a_4e82

    nop
    ld [bc], a
    nop
    ld c, d
    jr nc, jr_00a_4ea2

jr_00a_4e82:
    ret nz

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
    ld bc, $1101
    add hl, de
    rrca
    rrca
    ld bc, $0901
    add hl, bc
    rlca
    rlca
    nop

jr_00a_4ea2:
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    add b
    add b
    nop
    nop
    ld b, b
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
    inc b
    ld b, $03
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
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0f01
    rrca
    ld bc, $3f01
    ccf
    ld bc, $0f01
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    db $10
    db $10
    db $fc
    db $fc
    db $10
    db $10
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0709], sp
    rlca
    ld bc, $0101
    ld bc, $1111
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
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc bc
    ld e, $1f
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld b, $06
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
    jr nz, jr_00a_4f4d

    ldh [$e0], a
    ld d, b
    ld d, b
    nop
    nop
    nop
    nop
    ld b, $06
    jr jr_00a_4f51

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

jr_00a_4f4d:
    inc e
    inc e
    nop
    nop

jr_00a_4f51:
    inc b
    inc bc
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
    ld [bc], a
    ld b, c
    inc l
    ld b, c
    inc c
    and c
    ld de, $2222
    inc e
    ld h, b
    nop
    ld b, b
    nop
    ld d, d
    inc c
    or [hl]
    ld c, b
    ld c, d
    add h
    ld [hl-], a
    add h
    ld [hl-], a
    add h
    ld [bc], a
    adc b
    add d
    ld b, b
    ld [hl+], a
    ld b, b
    ld [bc], a
    jr nc, @+$03

    ld bc, $0101
    rrca
    rrca
    ld de, $0e11
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
    add b
    ret nz

    ld h, b
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
    ld [$0808], sp
    inc c
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
    db $10
    db $10
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3f01
    ccf
    ld [$0f08], sp
    rrca
    ld [$0f08], sp
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    db $10
    db $10
    ldh a, [$f0]
    db $10
    db $10
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    rrca
    rrca
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
    add b
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

Call_00a_5000:
Jump_00a_5000:
    nop
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [de], a
    inc de
    inc de
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    adc b
    adc b
    adc b
    ld [$1008], sp
    db $10
    ld h, b
    ld h, b
    nop
    nop
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
    jr nc, jr_00a_505b

    db $10
    stop
    nop
    nop
    nop
    ld hl, sp-$08
    ld [$4808], sp
    ld e, b
    jr nc, @+$32

    ld c, b
    ld l, b
    add h
    add h
    nop
    nop
    nop
    nop
    ld l, l
    ld [de], a
    ld d, d
    ld hl, $214c
    ld c, h
    ld hl, $1140
    ld b, c
    ld [bc], a
    ld b, h
    ld [bc], a
    ld b, b
    inc c
    ld [de], a
    ld [$0806], sp
    ld [bc], a
    ld b, h
    ld [hl-], a
    add h
    ld [hl-], a
    add h

jr_00a_505b:
    ld c, d
    add h
    or [hl]
    ld c, b
    ld c, d
    jr nc, jr_00a_5062

jr_00a_5062:
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $7f7f
    ld bc, $0301
    inc bc
    dec b
    dec b
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
    nop
    nop
    nop
    nop
    nop

Call_00a_5082:
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $02
    ld [bc], a
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
    ld h, b
    ldh [$80], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    dec b
    dec c
    add hl, bc
    add hl, de
    ld de, $1111
    ld de, $0000
    nop
    nop
    nop
    nop
    ret nz

    ldh [rNR41], a
    jr nc, jr_00a_50cc

    jr jr_00a_50c6

    ld [$0808], sp
    nop
    nop
    nop
    nop
    nop

jr_00a_50c6:
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0103

jr_00a_50cc:
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rra
    rra
    inc b
    ld b, $04
    inc b
    ld [$000c], sp
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    db $10
    db $10
    ld [$2008], sp
    jr nz, jr_00a_50f2

jr_00a_50f2:
    nop
    nop
    nop
    ld [$0808], sp
    ld [$1b13], sp
    db $10
    db $10
    ld [hl-], a
    ld [hl-], a
    ld d, c
    ld d, e
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
    db $10
    db $10
    db $10
    db $10
    ld c, b
    db $10
    ld h, b
    db $10
    ld b, b
    ld [hl+], a
    ld c, h
    ld hl, $214c
    ld d, d
    ld hl, $126d
    ld d, d
    inc c
    dec b
    dec b
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $04
    inc c
    ld [$0808], sp
    ld [$0707], sp
    nop
    nop
    nop
    nop
    nop
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
    ld de, $1213
    inc de
    ld a, [bc]
    ld a, [de]
    inc b
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$1810], sp
    jr nz, jr_00a_5199

    ld b, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [$1008], sp
    jr jr_00a_5197

    ld de, $0202
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00a_51b3

    jr nz, jr_00a_51b5

    ldh [$e0], a

jr_00a_5197:
    jr c, jr_00a_51d1

jr_00a_5199:
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1111
    ld de, $1111
    ld de, $1011
    db $10
    inc de
    inc de
    nop
    nop
    nop
    nop
    db $10
    db $10

jr_00a_51b3:
    db $10
    db $10

jr_00a_51b5:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_00a_51db

    ld hl, sp-$08
    nop
    nop
    nop
    nop
    ld [$1408], sp
    inc d
    ld a, $3e
    ld b, c
    ld b, c
    inc e
    inc e
    inc b
    inc b
    ld [$0008], sp
    nop

jr_00a_51d1:
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0f0f

jr_00a_51db:
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    db $10
    db $10
    and b
    and b
    nop
    nop
    nop
    nop
    db $10
    db $10
    rra
    rra
    inc h
    inc h
    ld bc, $1f01
    rra
    ld bc, $0001
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld a, h
    ld a, h
    sub b
    sub b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    jr z, @+$2a

    inc d
    inc d
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    rlca
    rlca
    inc e
    inc e
    inc b
    inc b
    ld [$000c], sp
    nop
    nop
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
    db $10
    stop
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
    inc a
    inc a
    ld bc, $0001
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
    and h
    and h
    ld [$2008], sp
    jr nz, jr_00a_52b2

    ld a, $48
    ld c, b
    ld a, $3e
    jr z, jr_00a_52a3

    ld a, [hl]
    ld a, [hl]
    ld [$0808], sp
    ld [$0808], sp
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf

jr_00a_52a3:
    nop
    nop
    rra
    rra
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc

jr_00a_52b2:
    db $fc
    jr nz, jr_00a_52d5

    ld hl, sp-$08
    jr nz, jr_00a_52d9

    jr nz, jr_00a_52db

    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    jr nz, jr_00a_52f3

    nop
    nop

jr_00a_52d5:
    nop
    nop
    nop
    nop

jr_00a_52d9:
    nop
    nop

jr_00a_52db:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$1810], sp
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00a_5313

jr_00a_52f3:
    nop
    nop
    add b
    add b
    add b
    add b
    ld a, b
    ld a, b
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
    inc a
    inc a
    dec h
    dec h
    dec h
    dec h
    dec a
    dec a
    nop
    nop
    nop
    nop
    jr nz, jr_00a_5333

jr_00a_5313:
    db $10
    db $10
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, b
    ld h, b
    jr c, jr_00a_5355

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
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    db $fc
    db $fc

jr_00a_5333:
    jr nz, jr_00a_5355

    jr nz, jr_00a_5357

    jr nz, jr_00a_5359

    jr nz, jr_00a_535b

    cp $fe
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_5355:
    nop
    nop

jr_00a_5357:
    db $fc
    db $fc

jr_00a_5359:
    db $10
    db $10

jr_00a_535b:
    db $10
    db $10
    db $10
    db $10
    ld d, b
    ld d, b
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
    jr jr_00a_5385

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
    sbc b
    sub b
    sub b
    cp b
    cp b
    adc b
    adc b
    nop
    nop
    nop
    nop

jr_00a_5385:
    nop
    nop
    ld [$0808], sp
    jr jr_00a_539d

    ld de, $1010
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    jr nz, jr_00a_53bd

jr_00a_539d:
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
    jr nz, jr_00a_53c9

    jr z, jr_00a_53d3

    ldh a, [$f0]
    jr nz, jr_00a_53cf

    jr nz, jr_00a_53d1

    nop
    nop
    nop
    nop
    ld bc, $3f01
    ccf
    jr nz, jr_00a_53db

    jr nz, jr_00a_53dd

jr_00a_53bd:
    rrca
    rrca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08

jr_00a_53c9:
    ld [$0808], sp
    ld [$f0f0], sp

jr_00a_53cf:
    nop
    nop

jr_00a_53d1:
    nop
    nop

jr_00a_53d3:
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop

jr_00a_53db:
    nop
    nop

jr_00a_53dd:
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    adc b
    ret z

    ld [$1088], sp
    jr jr_00a_53fa

    db $10
    jr nz, jr_00a_540d

    ret nz

    ret nz

    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    ld [de], a
    ld [de], a
    ld [de], a

jr_00a_53fa:
    ld [de], a
    ld e, $1e
    nop
    nop
    nop
    nop
    ld e, h
    ld e, h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    db $fc
    db $fc

jr_00a_540d:
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
    ld a, [bc]
    dec bc
    nop
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
    or b
    jr z, jr_00a_5453

    ld b, h
    ld b, h
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    dec d
    dec d
    ld [$081c], sp
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
    add b
    ld hl, sp-$08
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

jr_00a_5453:
    inc d
    inc d
    jr @+$1e

    add hl, bc
    add hl, de
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00a_5483

    jr nz, jr_00a_5485

    ldh [$f0], a
    jr c, jr_00a_54a1

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0901
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec e
    inc de
    scf
    jr nz, @+$23

    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_5483:
    ldh a, [$f0]

jr_00a_5485:
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
    ld bc, $0001
    nop

jr_00a_54a1:
    ld hl, sp-$08
    ld [$0808], sp
    ld [$1810], sp
    jr nc, jr_00a_54db

    ld c, b
    add sp, -$7c
    add h
    nop
    nop
    ld a, $3e
    ld [hl+], a
    ld [hl+], a
    ld a, $3e
    ld [hl+], a
    ld [hl+], a
    ld a, $3e
    ld [hl+], a
    ld h, d
    ld b, [hl]
    ld b, [hl]
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
    inc h
    inc h
    inc h
    inc h
    inc a
    inc a
    inc h
    inc h
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    add h
    add h
    add h
    add h

jr_00a_54db:
    db $fc
    db $fc
    add h
    add h
    add h
    add h
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc de
    dec de
    ld c, $0e
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
    jr nc, jr_00a_5529

    adc b
    adc b
    inc b
    inc b
    nop
    nop
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld bc, $3f01
    ccf
    ld bc, $1f01
    rra
    ld bc, $3f01
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
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

jr_00a_5529:
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
    ld bc, $0001
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ld hl, sp-$08
    jr @+$1a

    ldh [$e0], a
    jr nz, jr_00a_5567

    jr nz, jr_00a_5569

    db $fc
    db $fc
    jr nz, jr_00a_556d

    jr nz, jr_00a_55af

    ld b, b
    ld b, b
    inc h
    inc h
    inc a
    inc a
    nop
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    add h
    add h
    add h
    add h

jr_00a_5567:
    inc b
    inc b

jr_00a_5569:
    inc b
    inc b
    inc c
    inc c

jr_00a_556d:
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    dec d
    dec d
    ld [$0818], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld c, $0e
    ld [de], a
    ld a, [de]
    ld c, $0e
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    sub b
    ld [$0808], sp
    ld [$1010], sp
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld [$180c], sp
    jr jr_00a_55d0

    add hl, hl
    ld c, $0e
    jr jr_00a_55c5

    nop
    nop

jr_00a_55af:
    nop
    nop
    add b
    add b
    ld c, b
    ret z

    ld d, b
    ld d, b
    jr nz, jr_00a_55d9

    db $10
    db $10
    inc c
    inc c
    nop
    nop
    nop
    nop
    ld [$0308], sp
    inc bc

jr_00a_55c5:
    nop
    nop
    rrca
    rrca
    ld bc, $0201
    ld [bc], a
    inc c
    inc c
    nop

jr_00a_55d0:
    nop
    adc b
    adc b
    ldh [$e0], a
    add b
    add b
    ld hl, sp-$08

jr_00a_55d9:
    ld b, b
    ld b, b
    jr nz, @+$22

    jr jr_00a_55f7

    nop
    nop
    add b
    add b
    nop
    nop
    ld a, $3e
    ld [$0808], sp
    ld [$0808], sp
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_55f7:
    nop
    nop
    ld [$0808], sp
    jr jr_00a_560e

    db $10
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
    jr nz, jr_00a_562d

    db $10

jr_00a_560e:
    db $10
    db $10
    jr jr_00a_5612

jr_00a_5612:
    nop
    nop
    nop
    db $10
    db $10
    add hl, bc
    add hl, bc
    nop
    nop
    inc bc
    inc bc
    ld bc, $3b01
    dec sp
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld hl, sp-$08
    ld b, b
    ld b, b
    db $fc
    db $fc

jr_00a_562d:
    db $10
    db $10
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
    add hl, bc
    dec c
    ld [$1908], sp
    add hl, de
    jr z, jr_00a_566a

    nop
    nop
    nop
    nop
    jr nz, jr_00a_5667

    jr nz, jr_00a_5669

    db $fc
    db $fc
    nop
    nop
    ld [$8808], sp
    adc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld a, [bc]
    ld a, [bc]
    dec b
    dec b
    inc c
    inc c
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld sp, hl
    ld sp, hl
    nop
    nop
    nop
    nop

jr_00a_5667:
    ld hl, sp-$08

jr_00a_5669:
    db $10

jr_00a_566a:
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $8011
    add b
    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$100c], sp
    jr jr_00a_56de

    ld [hl], b
    add b
    ret nz

    ld a, $3e
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $3e
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $3e
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    ld [$0a19], sp
    ld a, [bc]
    inc b
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$1818], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0908], sp
    add hl, bc
    ld [$0b08], sp
    dec bc
    inc d
    inc d
    inc hl
    inc hl
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld hl, sp-$08
    ld b, b
    ld b, b
    db $fc
    db $fc
    ld b, b
    ld b, b
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    nop

jr_00a_56de:
    nop
    nop
    nop
    adc b
    adc b
    adc b
    adc b
    sub b
    sub b
    sub b
    sub b
    db $10
    db $10
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    rrca
    rrca
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    rrca
    rrca
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh [$e0], a
    add b
    add b
    ld hl, sp-$08
    and c
    and c
    sub b
    sub b
    ld hl, sp-$08
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ret nz

    ret nz

    jr nz, jr_00a_577b

    add d
    add d
    ld b, h
    call nz, Call_000_0c08
    nop
    nop
    nop
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
    db $10
    jr jr_00a_5732

jr_00a_5732:
    nop
    nop
    nop
    ld [$0408], sp
    inc c
    inc b
    inc b
    inc b
    inc b
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
    nop
    nop
    inc bc
    rlca
    inc a
    inc a
    ld bc, $0201
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$72

    ret nz

    ldh [$80], a
    add b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0e01
    ld c, $00
    nop
    rlca
    rlca
    inc b
    inc b
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    jr nz, jr_00a_5793

    ldh [$e0], a
    jr jr_00a_578f

    nop
    nop
    ldh a, [$f0]

jr_00a_577b:
    db $10
    db $10
    ldh a, [$f0]
    jr nz, jr_00a_57a1

    jr nc, jr_00a_57bb

    ret nz

    ldh [rP1], a
    nop
    jr nz, @+$22

    ld l, $3e
    ld [hl], d
    ld [hl], d
    inc d
    inc d

jr_00a_578f:
    db $10
    db $10
    jr nz, jr_00a_57b3

jr_00a_5793:
    nop
    nop
    nop
    add b
    add b
    add b
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_57a1:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_57b3:
    nop
    nop
    db $10
    db $10
    ld h, b
    ld h, b
    add b
    ret nz

jr_00a_57bb:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a

jr_00a_57c2:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_57d6:
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
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc c
    inc c
    nop
    nop
    nop
    nop
    ld bc, $e001
    ldh [rNR41], a
    jr nz, jr_00a_57d6

    ldh [rNR41], a
    jr nz, jr_00a_5812

    jr jr_00a_57fc

jr_00a_57fc:
    nop
    add b
    add b
    ld b, b
    ld b, b
    db $10
    stop
    nop
    jr nz, jr_00a_5827

    jr nz, jr_00a_5829

    jr nz, jr_00a_582b

    jr nz, jr_00a_582d

    jr nz, jr_00a_582f

    jr nz, jr_00a_5831

    nop

jr_00a_5812:
    nop
    nop
    nop
    ld a, $3e
    nop
    nop
    nop
    nop
    ld a, $3e
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    nop
    db $fc
    db $fc

jr_00a_5827:
    jr nz, jr_00a_5849

jr_00a_5829:
    db $fc
    db $fc

jr_00a_582b:
    add h
    add h

jr_00a_582d:
    db $fc
    db $fc

jr_00a_582f:
    add h
    add h

jr_00a_5831:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    ld b, h
    jr c, jr_00a_57c2

    ld b, h
    jr nc, jr_00a_57c2

    inc [hl]
    add d
    ld b, b
    add d
    ld [bc], a
    ld b, $0d
    dec c
    nop
    nop
    rrca
    rrca

jr_00a_5849:
    ld bc, $0201
    ld [bc], a
    rrca
    rrca
    nop
    nop
    jr nz, jr_00a_5883

    ret c

    ret c

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr nc, jr_00a_58cd

    add sp, -$18
    nop
    nop
    ld a, $3e
    nop
    nop
    inc d
    inc d
    ld d, $16
    jr c, @+$3e

    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    add h
    add h
    db $fc
    db $fc
    nop
    nop
    ld c, b
    ld c, b
    add h
    add h
    nop
    nop
    nop
    nop

jr_00a_5881:
    nop
    nop

jr_00a_5883:
    nop
    nop

jr_00a_5885:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0304
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld [hl+], a
    inc e
    ld de, $0c22
    and c
    inc l
    ld b, c
    ld [bc], a
    ld b, c
    dec b
    ld h, d
    inc b
    add hl, bc
    ld h, e
    ld [$0e60], sp
    nop
    jr nc, jr_00a_58d8

    ld de, $410c
    nop
    nop
    nop
    jr nz, jr_00a_58bb

    ret nz

    ld c, h
    jr nc, jr_00a_58c9

    ld [$0960], sp

jr_00a_58bb:
    ld h, b
    add hl, bc
    adc c
    db $10
    db $10
    ldh [rP1], a
    nop
    rst $38
    nop
    add b
    ld [hl], b
    ld b, b
    adc b

jr_00a_58c9:
    or b
    ld bc, $01b2

jr_00a_58cd:
    ld b, b
    add [hl]
    add h
    ld a, b
    nop
    nop
    rst $38
    nop
    ld b, d
    inc a
    dec b

jr_00a_58d8:
    jp nz, Jump_000_019a

    ld a, [de]
    ld bc, $2205
    ld [bc], a
    inc e
    nop
    inc b
    ldh [$03], a
    ld [hl-], a
    inc c
    ld [$0610], sp
    db $10
    ld b, $10
    ld de, $0808
    rlca
    and b
    ld b, [hl]
    jr nz, jr_00a_5885

    add $10
    ld b, $70
    nop
    inc c
    inc [hl]
    adc b
    jr nc, jr_00a_5881

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
    inc b
    inc b
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
    jr nz, jr_00a_5941

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

jr_00a_5941:
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
    ld [$0808], sp
    ld [$1010], sp
    jr nz, jr_00a_598b

    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00a_5993

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
    nop
    nop
    inc e
    inc e
    ld a, [hl+]
    ld a, [hl+]
    ld [$0808], sp
    ld [$0808], sp

jr_00a_598b:
    ld [$0008], sp
    nop
    nop
    nop
    inc h
    inc h

jr_00a_5993:
    inc h
    ld h, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    add h
    add h
    jr jr_00a_59b5

    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_59b5:
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
    jr nz, jr_00a_59ff

    jr nz, jr_00a_5a01

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

jr_00a_59ff:
    nop
    nop

jr_00a_5a01:
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
    inc b
    ld b, $04
    inc b
    ld [$1008], sp
    db $10
    jr nz, @+$22

    nop
    nop
    nop
    nop
    jr nz, jr_00a_5a43

    jr nz, jr_00a_5a45

    jr nz, jr_00a_5a47

    jr nz, jr_00a_5a49

    inc h
    inc h
    inc e
    inc e
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

jr_00a_5a43:
    xor b
    xor b

jr_00a_5a45:
    sub b
    sub b

jr_00a_5a47:
    sub b
    sub b

jr_00a_5a49:
    jr z, jr_00a_5a73

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

jr_00a_5a73:
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
    nop
    nop
    nop
    nop
    rra
    rra
    ld de, $1111
    ld de, $1111
    ld de, $1213
    ld [de], a
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
    ld b, h
    ld b, h
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
    jr nz, jr_00a_5b0d

    ld b, b
    ld b, b
    add b
    add b
    inc d
    inc d
    jr jr_00a_5b0d

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
    nop
    nop
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

jr_00a_5b0d:
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
    ld hl, sp-$08
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
    ld bc, $0101
    ld bc, $0101
    rra
    rra
    ld [bc], a
    inc bc
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
    jr nz, jr_00a_5b71

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
    nop
    nop
    add b
    add b

jr_00a_5b71:
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
    nop
    nop
    jr nz, jr_00a_5ba3

    jr nz, jr_00a_5ba5

    jr nz, @+$22

    jr nz, @+$22

    db $fc
    db $fc
    nop
    nop
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
    jr nz, jr_00a_5bb9

    db $10
    db $10
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop

jr_00a_5ba3:
    nop
    nop

jr_00a_5ba5:
    ld bc, $0101
    ld bc, $3f3f
    nop
    nop
    nop
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

jr_00a_5bb9:
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    jr nz, jr_00a_5be1

    jr nz, jr_00a_5be3

    db $10
    db $10
    db $10
    db $10
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

jr_00a_5be1:
    nop
    nop

jr_00a_5be3:
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
    nop
    nop
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
    ld bc, $0302
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0000], sp
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    inc de
    inc d
    dec d
    ld d, $17
    nop
    nop
    nop
    nop
    jr jr_00a_5c59

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_00a_5c69

    nop
    ld [hl+], a
    inc hl
    nop
    inc h
    dec h
    nop
    nop
    nop
    nop
    ld h, $27
    jr z, jr_00a_5c7f

    ld a, [hl+]
    dec hl
    inc l

jr_00a_5c59:
    nop
    dec l
    ld l, $00
    cpl
    jr nc, jr_00a_5c60

jr_00a_5c60:
    ld sp, $0017
    nop
    nop
    nop
    ld [hl-], a
    nop
    inc sp

jr_00a_5c69:
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    jr c, jr_00a_5ca9

    nop
    ld a, [hl-]
    dec sp
    nop
    inc h
    dec h
    nop
    nop
    nop
    inc a
    nop
    nop
    dec a
    ld a, $3f

jr_00a_5c7f:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    ld b, l
    ld b, [hl]
    nop
    ld sp, $0017
    nop
    nop
    ld b, a
    nop
    nop
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
    ld d, c
    nop
    inc h
    dec h
    nop
    ld d, d
    ld d, e
    nop
    nop
    nop
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

jr_00a_5ca9:
    ld e, c
    ld e, b
    ld e, d
    nop
    ld e, e
    ld e, h
    nop
    ld sp, $0017
    ld e, l
    ld e, [hl]
    inc a
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
    nop
    ld h, a
    ld l, b
    nop
    inc h
    dec h
    nop
    ld l, c
    ld l, d
    ld l, e
    nop
    nop
    ld l, h
    ld l, l
    ld e, b
    ld e, c
    ld l, [hl]
    ld l, a
    inc de
    inc d
    nop
    ld [hl], b
    ld [hl], c
    nop
    ld sp, $7217
    ld [hl], e
    ld [hl], h
    nop
    nop
    nop
    ld [hl], l
    db $76
    ld [hl], a
    ld h, h
    ld a, b
    ld a, c
    ld [hl+], a
    inc hl
    nop
    ld a, d
    ld a, e
    nop
    inc h
    dec h
    ld a, h
    ld a, l
    ld a, [hl]
    inc a
    nop
    nop
    ld a, a
    add b
    add c
    add d
    ld a, a
    add b
    add e
    add h
    nop
    nop
    nop
    nop
    ld sp, $8517
    add [hl]
    add a
    adc b
    nop
    nop
    adc c
    adc d
    adc e
    adc h
    adc c
    adc d
    adc l
    adc [hl]
    nop
    nop
    nop
    nop
    inc h
    dec h
    adc a
    sub b
    sub c
    nop
    nop
    nop
    ld b, e
    sub d
    sub e
    nop
    sub h
    sub l
    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    nop
    ld sp, $9617
    sub a
    sbc b
    nop
    nop
    nop
    ld c, [hl]
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld d, b
    ld d, c
    nop
    nop
    nop
    nop
    inc h
    dec h
    sbc [hl]
    sbc a
    and b
    nop
    nop
    nop
    sub e
    nop
    ld b, e
    sub d
    and c
    and d
    ld e, e
    ld e, h
    nop
    nop
    nop
    nop
    ld sp, $a4a3
    and l
    nop
    nop
    nop
    nop
    sbc d
    sbc e
    ld c, [hl]
    sbc c
    and [hl]
    and a
    ld h, a
    ld l, b
    nop
    nop
    nop
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor h
    xor l
    xor h
    xor l
    xor h
    xor l
    xor h
    xor l
    xor h
    xor l
    xor h
    xor l
    xor h
    xor l
    xor [hl]
    xor a

Call_00a_5d79:
    ld hl, $c2c3
    ld a, [hl]
    inc hl
    add [hl]
    daa
    inc hl
    add [hl]
    daa
    inc hl
    add [hl]
    daa
    ld b, a
    cp $45
    jr c, jr_00a_5da3

    ld a, [hl-]
    cp $11
    jr c, jr_00a_5da3

    ld a, [hl-]
    cp $11
    jr c, jr_00a_5da3

    ld a, [hl-]
    cp $11
    jr c, jr_00a_5da3

    ld a, [hl-]
    cp $11
    jr c, jr_00a_5da3

    ld a, $0f
    jr jr_00a_5dbd

jr_00a_5da3:
    ld a, b
    and $0f
    ld c, a
    ld a, b
    swap a
    and $0f
    jr z, jr_00a_5db5

    ld b, a
    xor a

jr_00a_5db0:
    add $0a
    dec b
    jr nz, jr_00a_5db0

jr_00a_5db5:
    add c
    ld hl, $5df7
    call Call_000_065e
    ld a, [hl]

jr_00a_5dbd:
    ld [$c2ca], a
    ld hl, $5e2c
    call Call_000_065d
    ld de, $c200
    ld a, $02
    ld [de], a
    inc de
    ld a, $04
    ld [de], a
    inc de
    ld a, [hl+]
    add a
    push hl
    ld hl, $5e4c
    call Call_000_065d
    call Call_00a_5df2
    pop hl
    ld a, [hl]
    add a
    ld hl, $5e4c
    call Call_000_065d
    call Call_00a_5df2
    ld hl, $c200
    ld de, $9990
    jp Jump_000_0683


Call_00a_5df2:
    ld b, $04

jr_00a_5df4:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00a_5df4

    ret


    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
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
    dec b
    dec b
    ld b, $06
    rlca
    rlca
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    dec bc
    ld b, $0b
    dec b
    dec bc
    inc b
    dec bc
    inc bc
    dec bc
    ld [bc], a
    dec bc
    ld bc, $000b
    dec bc
    ld a, [bc]
    inc c
    ld bc, $020c
    inc c
    inc bc
    inc c
    inc b
    inc c
    dec b
    inc c
    ld b, $0c
    dec c
    ld c, $00
    nop
    or h
    or l
    cp d
    cp e
    cp a
    ret nz

    push bc
    add $c9
    jp z, $cccb

    rst $08
    ret nc

    db $d3
    call nc, $d8d7
    jp c, $b6db

    call c, $dedd
    rst $18
    ldh [$b0], a
    or c
    or [hl]
    or a
    cp h
    cp l
    pop bc
    jp nz, $c8c7

    ld c, h
    nop
    or d
    or e
    cp b
    cp c
    ld d, [hl]
    cp [hl]
    jp $13c4


    inc d
    ld [hl+], a
    inc hl
    call $d1ce
    jp nc, $d6d5

    pop bc
    reti


    di
    call Call_000_04e1
    ld hl, $62f1
    ld de, $8000
    ld bc, $0e60
    call Call_000_0634
    ld hl, $7151
    ld de, $9000
    ld bc, $0370
    call Call_000_0634
    ld hl, $9800
    call Call_000_07c3
    ld de, $74c1
    ld hl, $9800
    call Call_000_0502
    xor a
    ld [$cf0b], a
    ld [$cf0c], a
    ldh [$a0], a
    ldh [$9f], a
    ldh [$a1], a
    ldh [$a2], a
    ldh [$a3], a
    inc a
    ldh [$a4], a
    ld a, $8f
    ldh [rWY], a
    ld a, $a6
    ldh [rWX], a
    ld a, $e4
    ld [$cf1b], a
    ld [$cf1c], a
    ld bc, $03c0
    ld hl, $9440

jr_00a_5edd:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_5edd

    ld a, $10
    call Call_000_063d
    ld a, $c3
    call Call_000_03da
    call Call_000_0369

jr_00a_5ef1:
    call Call_000_0369
    call Call_000_047e
    call Call_000_055e
    ldh a, [$a0]
    inc a
    ldh [$a0], a
    and $07
    call z, Call_00a_7629
    ldh a, [$a2]
    and a
    call nz, Call_00a_5f6b
    ldh a, [$a4]
    dec a
    ldh [$a4], a
    jr nz, jr_00a_5ef1

    ldh a, [$a3]
    call Call_00a_5fa8
    ldh a, [$a3]
    inc a
    ldh [$a3], a
    cp $16
    jr nz, jr_00a_5ef1

jr_00a_5f1f:
    call Call_000_0369
    call Call_000_047e
    call Call_000_055e
    ldh a, [$a0]
    inc a
    ldh [$a0], a
    and $07
    call z, Call_00a_7629
    ldh a, [$8c]
    and $09
    jr nz, jr_00a_5f3f

    ld a, [$de0d]
    cp $ff
    jr nz, jr_00a_5f1f

jr_00a_5f3f:
    call Call_000_0369
    call Call_00a_62e0
    call Call_00a_62db
    call Call_00a_62e0
    call Call_00a_62db
    call Call_00a_62e0
    call Call_00a_62db
    call Call_00a_62e0
    call Call_00a_62db
    call Call_00a_62e0
    call Call_00a_62db
    ld a, $0a
    ld hl, $4000
    call Call_000_0061
    jp Jump_000_0150


Call_00a_5f6b:
    ldh a, [$a1]
    ld d, $00
    sla a
    rl d
    sla a
    rl d
    sla a
    rl d
    sla a
    rl d
    ld e, a
    add $00
    ldh [$bf], a
    ld a, d
    add $da
    ldh [$c0], a
    ld hl, $9440
    add hl, de
    ld a, l
    ldh [$c1], a
    ld a, h
    ldh [$c2], a
    ld a, $40
    ldh [$c3], a
    ldh [$bd], a
    ldh a, [$a1]
    add $04
    ldh [$a1], a
    cp $3c
    ret c

    xor a
    ldh [$a2], a
    ldh [$a1], a
    ret


Call_00a_5fa8:
    push af
    ld bc, $0400
    ld hl, $da00

jr_00a_5faf:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_5faf

    pop af
    ld hl, $5fe4
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d010
    ld b, $32

jr_00a_5fc5:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00a_5fc5

    ld a, $c0
    ld [$c25b], a
    ld de, $d010
    ld a, $0e
    ld hl, $5cc2
    call Call_000_0061
    ld a, $ff
    ldh [$a2], a
    ld a, $c8
    ldh [$a4], a
    ret


    db $10
    ld h, b
    ld a, [hl-]
    ld h, b
    ld e, d
    ld h, b
    ld a, l
    ld h, b
    sbc e
    ld h, b
    cp l
    ld h, b
    pop hl
    ld h, b
    ld b, $61
    inc h
    ld h, c
    ld a, $61
    ld d, l

jr_00a_5ff9:
    ld h, c
    ld [hl], a
    ld h, c
    sbc e
    ld h, c
    cp c
    ld h, c
    push de
    ld h, c
    rst $28
    ld h, c
    ld a, [bc]
    ld h, d
    inc [hl]
    ld h, d
    ld d, [hl]
    ld h, d
    db $76
    ld h, d
    sub h
    ld h, d
    or c
    ld h, d
    add d
    add sp, -$7e
    push hl
    add d
    and h
    add d
    xor d

jr_00a_6018:
    add d
    and [hl]
    add c
    ld b, b
    add d
    and d
    add d
    pop bc
    add d
    rst $08
    add d
    and d
    inc bc
    add c
    ld b, b
    add c
    ld b, b
    add d
    cp [hl]
    add d
    and d
    add d
    cp c
    add d
    and d
    add d
    or c
    add d
    and h
    add c
    ld b, b
    add c
    ld b, b
    ld [bc], a

jr_00a_603a:
    add e
    db $76
    add e
    adc l
    add e
    ld h, [hl]
    add e
    add l
    add c
    ld e, e
    add e
    ld d, h
    add c
    ld e, e
    inc bc
    ld b, l
    ld l, $54
    ld h, c
    ld l, e
    ld h, l
    ld l, c
    ld [hl], e
    ld l, b
    ld l, c
    jr nz, @-$7c

    cp e
    add d
    call z, Call_000_0231
    add e
    db $76
    add e
    adc l

jr_00a_605e:
    add e
    ld h, [hl]
    add e
    add l
    add c
    ld e, e
    add e
    ld d, h
    add c
    ld e, e
    add d
    reti


    add d
    or e
    inc bc
    ld b, c
    ld l, $54
    ld h, c
    ld l, [hl]
    ld h, c
    ld l, e
    ld h, c
    jr nz, jr_00a_5ff9

    cp e
    add d
    call z, Call_00a_5082
    ld [bc], a
    add e
    ld d, c
    add c
    ld e, e
    add e

jr_00a_6082:
    add b
    add e
    ld b, c
    add e
    adc h
    add e
    sub e
    add e
    ld d, a
    inc bc
    ld c, l
    ld l, $4b
    ld l, a
    ld a, c
    ld h, c
    ld l, l
    ld h, c
    jr nz, jr_00a_6018

    cp e
    add d
    call z, Call_000_0231
    add d
    ldh [$82], a
    pop af
    add d
    xor l
    add d
    ldh a, [$82]
    and d
    add d
    and h
    add d
    ret nc

    add d
    add $03
    ld b, l
    ld l, $54
    ld h, c
    ld l, e
    ld h, l
    ld l, c
    ld [hl], e
    ld l, b
    ld l, c
    jr nz, jr_00a_603a

    cp e
    add d
    call z, $0232
    add d
    ldh [$82], a
    pop af
    add d
    xor l
    add d
    ldh a, [$82]
    and d
    add d
    db $ed
    add d
    ld [$bd82], a
    add d
    ret nc

    add d
    add $03
    ld c, l
    ld l, $4b
    ld l, a
    ld a, c
    ld h, c
    ld l, l
    ld h, c
    jr nz, jr_00a_605e

    cp e
    add d
    call z, $0232
    add e
    ld e, b
    add e
    ld h, a
    add e
    adc h
    add e
    ld e, b
    add c
    ld b, b
    add d
    cp l
    add d
    rst $18
    add d
    cp l
    add d
    ret nc

    add d
    add $03
    ld c, b
    ld l, $4d
    ld l, a
    ld l, l
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_00a_6082

    cp e
    add d
    call z, Call_00a_5082
    ld [bc], a
    add d
    or c
    add d
    db $ed
    add d
    xor l
    add d
    call nz, Call_00a_4081
    add d
    and [hl]
    add d
    rst $20
    add d
    and d
    add d
    ret nc

jr_00a_6118:
    add d
    add $03
    ld d, h
    ld l, $4b
    ld h, c
    ld l, [hl]
    ld h, c
    ld a, c
    ld h, c
    ld [bc], a
    add e
    db $76
    add e
    adc l
    add e
    ld c, a
    add e
    adc c
    add e
    add b
    inc bc
    ld c, l
    ld l, $4b
    ld l, a
    ld a, c
    ld h, c
    ld l, l
    ld h, c
    jr nz, @-$7c

    cp e
    add d
    call z, Call_000_0233
    ld b, a
    ld b, d
    jr nz, jr_00a_6189

    ld [hl], d
    ld h, c
    ld h, [hl]
    ld l, c
    ld h, e
    inc bc
    ld d, h
    ld l, a
    ld l, l
    ld l, a
    ld l, e
    ld l, a
    jr nz, jr_00a_619b

    ld h, c
    ld [hl], h

jr_00a_6152:
    ld l, a
    ld l, b
    ld [bc], a
    add d
    xor e
    add d
    pop hl
    add d
    rst $20
    add d
    xor l
    add d
    cp l
    add c
    ld e, e
    add e
    ld h, [hl]
    add e
    ld d, l
    add e
    ld b, e
    add e
    sub e
    inc bc
    ld b, c
    ld [hl], h

jr_00a_616c:
    ld [hl], l
    ld l, e
    ld l, a
    jr nz, jr_00a_61ba

    ld [hl], e
    ld l, b
    ld l, c
    ld h, h
    ld h, c
    ld [bc], a
    add d
    xor b
    add d
    pop af
    add d
    xor d
    add d
    xor l
    add c
    ld b, b
    add e
    db $76
    add e
    adc l
    add e

jr_00a_6186:
    ld c, a
    add e
    adc c

jr_00a_6189:
    add e
    add b
    inc bc
    ld c, l
    ld l, $4b
    ld l, a
    ld a, c
    ld h, c
    ld l, l
    ld h, c
    jr nz, jr_00a_6118

    cp e
    add d
    call z, $0234

jr_00a_619b:
    add d
    xor b
    add d
    pop af
    add d
    xor d
    add d
    xor l
    add c
    ld b, b
    add d
    cp c
    add d
    and d
    add d
    or e
    add d
    xor l
    inc bc
    ld c, e
    ld h, c
    ld a, d
    ld [hl], l
    ld l, a
    jr nz, @+$55

    ld h, c
    ld [hl], a
    ld h, c
    ld [bc], a
    add e

jr_00a_61ba:
    ld h, [hl]
    add e
    ld l, a
    add e
    ld h, d
    add e
    ld c, a
    jr nz, jr_00a_61f4

    inc bc
    ld b, l
    ld l, $54
    ld h, c
    ld l, e
    ld h, l
    ld l, c
    ld [hl], e
    ld l, b
    ld l, c
    jr nz, jr_00a_6152

    cp e
    add d
    call z, Call_000_0233
    add e
    ld h, [hl]
    add e
    ld l, a
    add e
    ld h, d
    add e
    ld c, a
    jr nz, jr_00a_6211

    inc bc
    ld b, c
    ld l, $54
    ld h, c
    ld l, [hl]
    ld h, c
    ld l, e
    ld h, c
    jr nz, jr_00a_616c

    cp e
    add d
    call z, $0232
    add e
    ld h, [hl]
    add e
    ld l, a
    add e

jr_00a_61f4:
    ld h, d
    add e
    ld c, a
    jr nz, jr_00a_622c

    inc bc
    ld c, b
    ld l, $4d
    ld l, a
    ld l, l
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_00a_6186

    cp e
    add d
    call z, $5182
    ld [bc], a
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c

jr_00a_6211:
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    inc bc
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c

jr_00a_622c:
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    ld [bc], a
    add d
    xor c
    add d
    and d
    add d
    call $c282
    add c
    ld b, l
    add d
    cp a
    add d
    push hl
    add d
    or e
    add d
    xor l
    inc bc
    add d
    ld l, d
    add d
    ld l, d
    add c
    ld b, b
    add e
    ld [hl], h
    add e
    ld b, [hl]
    add e
    ld b, e
    add e
    ld e, b
    ld [bc], a
    add d
    cp c
    add d
    and d
    add d
    or e
    add d
    xor l
    add c
    ld b, l
    add d
    call $f182
    add d
    adc $82
    and d
    inc bc
    add d
    ld l, d
    add d
    ld l, d
    add c
    ld b, b
    add e
    ld b, c
    add e
    ld h, l
    add e
    ld l, c
    ld [bc], a
    ld b, e
    ld l, a
    ld [hl], b
    ld a, c
    ld [hl], d
    ld l, c
    ld h, a
    ld [hl], h
    jr nz, jr_00a_62b1

    add hl, sp
    add hl, sp
    scf
    inc bc
    ld b, c
    ld [hl], h
    ld l, b
    ld h, l
    ld l, [hl]
    ld h, c
    jr nz, @+$65

    ld l, a
    ld l, $2c
    ld l, h
    ld [hl], h
    ld h, h
    ld l, $02
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_00a_6314

    ld l, a
    ld [hl], l
    jr nz, jr_00a_6305

    ld l, a
    ld [hl], d
    inc bc
    jr nz, jr_00a_631d

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $02

jr_00a_62b1:
    add d
    and b
    add d
    cp e
    add d
    pop af
    add d
    push bc
    add d
    xor l
    add d
    ld [$c482], a
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    inc bc
    add c
    ld b, b
    add d
    and b
    add d
    add sp, -$7e
    xor d
    add d
    add $82
    and h
    add c
    ld b, b
    add d
    call c, $bd82
    add d
    rlc d

Call_00a_62db:
    ld d, $01
    jp Jump_000_03b6


Call_00a_62e0:
    ld e, $0a

jr_00a_62e2:
    call Call_000_0369
    call Call_000_055e
    ldh a, [$8b]
    bit 0, a
    ret nz

    dec e
    jr nz, jr_00a_62e2

    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_6305:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    nop
    nop
    nop

jr_00a_6314:
    nop
    nop
    nop
    ld bc, $c101
    pop bc
    daa
    daa

jr_00a_631d:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
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
    ld bc, $0301
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
    ld a, e
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$3a

    db $fc
    db $fc
    cp $fe
    cp $fe
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
    ld c, $0e
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    add b
    add b
    add $c6
    rrca
    rrca
    inc de
    inc de
    rla
    rla
    rlca
    rlca
    rrca
    rrca
    add hl, bc
    add hl, bc
    nop
    nop
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    add c
    add c
    add a
    add a
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
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
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    inc e
    inc e
    ld [c], a
    ld [c], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $fe01
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
    rst $38
    ldh a, [$f0]
    db $fc
    db $fc
    cp $fe
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc de
    inc de
    dec e
    dec e
    rra
    rra
    rrca
    rrca
    rla
    rla
    rlca
    rlca
    rlca
    rlca
    rst $30
    rst $30
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
    rst $08
    rst $08
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ret nz

    ret nz

    ldh [$e0], a
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
    inc e
    inc e
    ld a, $3e
    ld a, $3e
    ld a, h
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld e, $1e
    rst $20
    rst $20
    ei
    ei
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rlca
    rlca
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rrca
    rrca
    inc bc
    inc bc
    add c
    add c
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    ld bc, $f001
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
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
    push bc
    push bc
    ei
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00a_6529

    db $10
    db $10
    ld de, $3511
    dec [hl]
    ld [hl], l
    ld [hl], l
    nop
    nop
    nop
    nop
    nop
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
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00a_6529:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld a, a
    ld a, a
    sbc a
    sbc a
    rst $08
    rst $08
    rlca
    rlca
    rst $38
    rst $38
    pop bc
    pop bc
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

    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld e, $1e
    ld c, $0e
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
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld a, b
    ld a, b
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $28
    rst $28
    adc a
    adc a
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $e001
    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    cp $fe
    rst $38
    rst $38
    ccf
    ccf
    rra
    rra
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    ld l, a
    ld l, a
    scf
    scf
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ld b, b
    and b
    and b
    ret nz

    ret nz

    ld h, b
    ld h, b
    and b
    and b
    and b
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
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rst $30
    rst $30
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
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
    nop
    nop
    nop
    jr c, jr_00a_665b

    nop
    nop
    nop
    nop
    nop
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
    inc de
    inc de
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rra
    rra
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    add e
    add e
    db $e3
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38

jr_00a_665b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
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
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    add e
    add e
    jp $e1c3


    pop hl
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, [hl]
    ld a, [hl]
    ccf
    ccf
    inc bc
    inc bc
    inc bc
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
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rra
    rra
    rra
    rra
    rra
    rra
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
    rst $38
    cp $fe
    db $ec
    db $ec
    ld [c], a
    ld [c], a
    db $fc
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh [$e0], a
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ld b, b
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    ldh [$e0], a
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
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
    db $fc
    rra
    rra
    rrca
    rrca
    add [hl]
    add [hl]
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    rlca
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ld a, l
    ld a, l
    dec e
    dec e
    inc bc
    inc bc
    ld [hl], e
    ld [hl], e
    ld a, e
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    add [hl]
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    add b
    add b
    add b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
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
    jp $efc3


    rst $28
    rst $38
    rst $38
    nop
    nop
    ld b, $06
    rrca
    rrca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
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
    rra
    rra
    inc bc
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
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    rst $08
    rst $08
    rst $00
    rst $00
    add a
    add a
    add e
    add e
    add c
    add c
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    pop af
    pop af
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
    nop
    nop
    nop
    ld hl, sp-$08
    ld a, h
    ld a, h
    inc a
    inc a
    inc e
    inc e
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
    ld a, e
    ld a, e
    dec sp
    dec sp
    add hl, de
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
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
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $18
    rst $18
    sbc a
    sbc a
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    jr nc, jr_00a_69a9

    jr c, jr_00a_69b3

    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
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
    ld bc, $0001
    nop
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1301
    inc de
    sbc e
    sbc e
    rst $38
    rst $38
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

jr_00a_69a9:
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    nop
    nop

jr_00a_69b3:
    ld bc, $0001
    nop
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ccf
    ccf
    rst $38
    rst $38
    rst $38
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
    ld a, a
    cp $fe
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_00a_6a13

    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    add b
    add b
    add b
    add b
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
    nop
    ld a, b
    ld a, b
    rra
    rra

jr_00a_6a13:
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld sp, $1731
    rla
    db $e4
    db $e4
    cp $fe
    cp $fe
    cp $fe
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0707
    ccf
    ccf
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
    add b
    add b
    cp [hl]
    cp [hl]
    rst $38
    rst $38
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
    add b
    add b
    ret nz

    ret nz

    ld e, a
    ld e, a
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    dec b
    rrca
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
    rst $38
    rst $38
    rst $38
    and $e6
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    jr c, jr_00a_6af7

    ld a, h
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    ldh a, [$f0]
    ldh [$e0], a
    call nz, $fcc4
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$e0], a
    ld h, b
    ld h, b
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
    nop
    nop
    nop
    nop

jr_00a_6af7:
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add e
    add e
    rst $00
    rst $00
    rst $00
    rst $00
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
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
    ld a, a
    cp a
    cp a
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
    xor $ee
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
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
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
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
    db $fd
    db $fd
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    jr nz, jr_00a_6bb9

    ret nz

    ret nz

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
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    rst $18
    rst $18
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38

jr_00a_6bb9:
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    inc e
    inc e
    rst $38
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
    ld a, a
    cpl
    cpl
    rrca
    rrca
    rst $18
    rst $18
    rst $28
    rst $28
    rst $20
    rst $20
    rst $00
    rst $00
    db $e3
    db $e3
    di
    di
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $e3
    db $e3
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ret nz

    ret nz

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
    ld e, $1e
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
    nop
    nop
    ld l, a
    ld l, a
    ld b, a
    ld b, a
    ld b, e
    ld b, e
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [$e0], a
    db $fc
    db $fc
    db $fc
    db $fc
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    cp $fe
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    cp $fe
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    add b
    add b
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
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

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    inc bc
    adc a
    adc a
    rst $38
    rst $38
    nop
    nop
    inc e
    inc e
    ld a, $3e
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

    ldh [$e0], a
    ldh a, [$f0]
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, [hl]
    ld a, [hl]
    ld e, $1e
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp a
    cp a
    cp a
    cp a
    sbc a
    sbc a
    adc a
    adc a
    add e
    add e
    ld bc, $0001
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    nop
    nop
    rst $00
    rst $00
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
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, b
    ld a, b
    jr nc, jr_00a_6ddb

    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
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
    nop
    nop
    add b
    add b
    jp nz, $c7c2

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

jr_00a_6ddb:
    nop
    nop
    ld b, h
    ld b, h
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_00a_6e19

    ld a, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    cp $fe
    cp $fe
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld d, $16
    dec de
    dec de
    rra
    rra
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    jp $ffc3


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00a_6e19:
    rst $38
    rst $38
    cp $fe
    ldh [$e0], a
    ldh a, [$f0]
    nop
    nop
    add b
    add b
    add b
    add b
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
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $7777
    cp a
    cp a
    rst $38
    rst $38
    rst $38
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
    db $fc
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    add b
    add b
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
    ld b, b
    ld b, b
    ld h, [hl]
    ld h, [hl]
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00a_6ec9

    ld de, $1111
    ld de, $1515
    dec [hl]
    dec [hl]
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rrca
    rrca
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
    adc c
    adc c
    rst $38
    rst $38

jr_00a_6ec9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fd
    db $fd
    ld a, [c]
    ld a, [c]
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
    ld b, $06
    rlca
    rlca
    rst $38
    rst $38
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    ccf
    ccf
    ccf
    ccf
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
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
    nop
    jr nz, jr_00a_6f61

    nop
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
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    jp $e3c3


    db $e3
    rst $38
    rst $38

jr_00a_6f61:
    cp $fe
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    pop hl
    pop hl
    cp $fe
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rrca
    rrca
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    di
    di
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    di
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ld hl, sp-$08
    ldh a, [$f0]
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    adc b
    adc b
    add b
    add b
    ld b, b
    ld b, b
    ldh [$e0], a
    ret nz

    ret nz

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
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rrca
    rrca
    ld b, $06
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
    ld a, a
    ld a, a
    rrca
    rrca
    rlca
    rlca
    cp a
    cp a
    rst $18
    rst $18
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    sbc c
    sbc c
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

    ldh [$e0], a
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
    rst $38
    rst $38
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    ld bc, $3101
    ld sp, $7d7d
    rst $38
    rst $38
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    add [hl]
    add [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rrca
    rrca
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ldh [$e0], a
    add b
    add b
    ld bc, $0701
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    cp a
    cp a
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    ld e, $1e
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_00a_7177:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc b
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1e
    ldh [rLCDC], a
    add b
    add b
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    jr jr_00a_7177

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
    ld bc, $78fe
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
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
    jr c, jr_00a_71de

    ld b, $01
    ld bc, $0000
    nop
    nop

jr_00a_71de:
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
    and b
    ld e, a
    jr jr_00a_71f4

    dec c
    ld [bc], a
    inc bc
    nop
    nop
    rst $38
    nop

jr_00a_71f4:
    rst $38
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
    rlca
    ld hl, sp+$0c
    ldh a, [$38]
    ret nz

    rra
    ldh [rP1], a
    rst $38
    rst $38
    nop
    ld d, b
    and b

jr_00a_7223:
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    nop
    ld [hl], b
    rrca
    ld a, [de]
    dec b
    ld b, $01
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    ld c, $01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld b, b
    ccf
    nop
    ccf
    ld b, b
    cp a
    nop
    rst $38
    rlca
    ld hl, sp+$0e
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    add hl, sp
    add $0f
    ldh a, [$cc]
    nop
    jr nc, jr_00a_7223

    add b
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$00
    ret nz

    nop
    add b
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
    nop
    nop
    jr nz, @-$1f

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
    rst $38
    db $fc
    inc bc
    rra
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld b, b
    cp a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld [bc], a
    db $fd
    ld bc, $07fe
    ld hl, sp+$08
    ldh a, [rNR31]
    ldh [rNR21], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ld h, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    xor d
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
    ld d, l
    nop
    xor d
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, b
    rla
    jr nc, jr_00a_72f4

    inc e
    inc bc
    ld [$4c07], sp
    inc bc
    and [hl]
    ld bc, $00ff
    rst $38
    nop
    ld a, [hl+]
    ret nz

    ld d, l

jr_00a_72f4:
    add b
    rst $38
    nop
    ccf
    ret nz

    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rIE], a
    nop
    xor d
    nop
    ld d, l
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
    xor c
    nop
    ld d, [hl]
    ld bc, $03fc
    rst $38
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
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    or b
    ld c, a
    ldh [$1f], a
    db $fc
    inc bc
    ldh a, [rIF]
    ld bc, $0ffe
    ldh a, [$03]
    db $fc
    inc hl
    call c, $fe01
    rlca
    ld hl, sp+$03
    db $fc
    rrca
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
    rst $38
    nop
    ld hl, sp+$07
    cp $01
    ldh a, [rIF]
    ret nz

    ccf
    ldh a, [rIF]
    cp $01
    ld hl, sp+$07
    db $fc
    inc bc
    rra
    ldh [rTAC], a
    ld hl, sp+$1f
    ldh [$3d], a
    jp nz, $f50a

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
    ld d, l
    xor d
    xor d
    ld d, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    db $ec
    inc de
    ld e, b
    and a
    or b
    ld c, a
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
    ld d, l
    xor d
    ld a, [bc]
    push af
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, l
    xor d
    xor d
    ld d, l
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
    db $fd
    ld d, l
    xor d
    xor b
    ld d, a
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    dec d
    ld [$d52a], a
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
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
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
    xor d
    ld d, l
    ld d, l
    xor d
    xor e
    ld d, h
    ccf
    ret nz

    ld a, a
    add b
    rra
    ldh [rIE], a
    nop
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    sub l
    ld l, d
    rst $38
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
    ld d, l
    xor d
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    rst $38
    nop
    sub b
    ld l, a
    ldh [$1f], a
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
    ld a, [de]
    push hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    dec b
    ld a, [$d52a]
    ld de, $aaee
    ld d, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor b
    ld d, a
    ld d, d
    xor l
    xor b
    ld d, a
    ld d, b
    xor a
    nop
    nop
    jr nc, jr_00a_7481

    ld c, b
    ld b, $4c
    ld b, $3c
    ld c, [hl]
    jr @+$80

    nop
    inc a
    nop
    nop

jr_00a_7481:
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc d
    ld c, h
    inc d
    ld c, h
    inc d
    ld c, h
    inc d
    ld c, h
    inc d
    ld c, h
    inc d
    ld c, h
    inc d
    ld c, h
    inc d
    ld c, h
    jr z, @+$34

    jr z, @+$34

    jr z, jr_00a_74d9

    jr z, @+$34

    jr z, jr_00a_74dd

    jr z, jr_00a_74df

    jr z, jr_00a_74e1

    jr z, @+$34

    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_00a_74d9:
    ld bc, $0201
    inc bc

jr_00a_74dd:
    inc b
    dec b

jr_00a_74df:
    ld b, $07

jr_00a_74e1:
    ld [$0a09], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld c, $0f
    ld bc, $0101
    ld bc, $0101
    ld bc, $1001
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec d
    ld bc, $0101
    ld bc, $0101
    ld d, $17
    jr jr_00a_7530

    jr jr_00a_7532

    jr jr_00a_7534

    jr jr_00a_7536

    jr @+$1a

    jr @+$1b

    ld a, [bc]
    ld bc, $0101
    ld bc, $1a01
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de

jr_00a_7530:
    dec de
    dec de

jr_00a_7532:
    dec de
    dec de

jr_00a_7534:
    dec de
    inc e

jr_00a_7536:
    dec e
    ld bc, $0101
    ld bc, $1f1e
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    jr nz, @+$03

    ld bc, $0101
    ld hl, $2222
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld bc, $0101
    ld bc, $2524
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    ld h, $27
    ld bc, $0101
    jr z, jr_00a_75a2

    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [hl+]
    ld bc, $0101
    ld bc, $2c2b
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    dec l
    ld l, $01
    ld bc, $2f01
    jr nc, jr_00a_75d2

jr_00a_75a2:
    jr nc, jr_00a_75d4

    jr nc, jr_00a_75d6

    jr nc, jr_00a_75d8

    jr nc, jr_00a_75da

    jr nc, jr_00a_75dc

    jr nc, jr_00a_75de

    ld sp, $0101
    ld [hl-], a
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    ld [hl-], a
    inc [hl]
    nop
    ld b, h
    ld b, [hl]
    ld c, b
    ld c, d
    ld c, h
    ld c, [hl]
    ld d, b
    ld d, d
    ld d, h
    ld d, [hl]
    ld e, b

jr_00a_75d2:
    ld e, d
    ld e, h

jr_00a_75d4:
    ld e, [hl]
    ld h, b

jr_00a_75d6:
    nop
    nop

jr_00a_75d8:
    dec [hl]
    inc [hl]

jr_00a_75da:
    nop
    ld b, l

jr_00a_75dc:
    ld b, a
    ld c, c

jr_00a_75de:
    ld c, e
    ld c, l
    ld c, a
    ld d, c
    ld d, e
    ld d, l
    ld d, a
    ld e, c
    ld e, e
    ld e, l
    ld e, a
    ld h, c
    nop
    nop
    dec [hl]
    inc [hl]
    nop
    ld h, d
    ld h, h
    ld h, [hl]
    ld l, b
    ld l, d
    ld l, h
    ld l, [hl]
    ld [hl], b
    ld [hl], d
    ld [hl], h
    db $76
    ld a, b
    ld a, d
    ld a, h
    ld a, [hl]
    nop
    nop
    dec [hl]
    inc [hl]
    nop
    ld h, e
    ld h, l
    ld h, a
    ld l, c
    ld l, e
    ld l, l
    ld l, a
    ld [hl], c
    ld [hl], e
    ld [hl], l
    ld [hl], a
    ld a, c
    ld a, e
    ld a, l
    ld a, a
    nop
    nop
    dec [hl]
    ld [hl-], a
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl-], a

Call_00a_7629:
    ld b, $28
    ld a, $f0
    ld hl, $c100

jr_00a_7630:
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_00a_7630

    ldh a, [$9f]
    inc a
    and $07
    ldh [$9f], a
    ld b, a
    add a
    add b
    add $58
    ld l, a
    ld a, $76
    adc $00
    ld h, a
    ld b, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $c100

jr_00a_7651:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00a_7651

    ret


    and b
    ld [hl], b
    db $76
    sbc b
    db $10
    ld [hl], a
    sub h
    xor b
    ld [hl], a
    sbc h
    inc a
    ld a, b
    and b
    ret c

    ld a, b
    sbc b
    ld a, b
    ld a, c
    sub h
    db $10
    ld a, d
    sbc h
    inc a
    ld a, b
    jr nz, jr_00a_76aa

    ld bc, $2000
    ld b, b
    ld [bc], a
    nop
    jr nz, jr_00a_76c2

    inc bc
    nop
    jr z, jr_00a_76b6

    add hl, bc
    nop
    jr z, jr_00a_76c2

    ld a, [bc]
    nop
    jr z, jr_00a_76ce

    dec bc
    nop
    jr z, jr_00a_76da

    inc c
    nop
    jr z, jr_00a_76e6

    dec c
    nop
    jr z, jr_00a_76f2

    ld c, $00
    jr nc, jr_00a_76ce

    rla
    nop
    jr nc, jr_00a_76da

    jr jr_00a_769c

jr_00a_769c:
    jr nc, jr_00a_76e6

    ld a, [bc]
    nop
    jr nc, jr_00a_76f2

    ld a, [bc]
    nop
    jr nc, jr_00a_76fe

    ld a, [bc]
    nop
    jr nc, jr_00a_770a

jr_00a_76aa:
    add hl, de
    nop
    jr c, jr_00a_76e6

    inc hl
    nop
    jr c, jr_00a_76f2

    inc h
    nop
    jr c, jr_00a_76fe

jr_00a_76b6:
    ld a, [bc]
    nop
    jr c, jr_00a_770a

    dec h
    nop
    jr c, jr_00a_7716

    ld h, $00
    jr c, jr_00a_7722

jr_00a_76c2:
    daa
    nop
    ld b, b
    jr c, jr_00a_76fa

    nop
    ld b, b
    ld b, b
    inc [hl]
    nop
    ld b, b
    ld c, b

jr_00a_76ce:
    dec [hl]
    nop
    ld b, b
    ld d, b
    ld [hl], $00
    ld b, b
    ld e, b
    scf
    nop
    ld c, b
    ld c, b

jr_00a_76da:
    ld b, e
    nop
    ld c, b
    ld d, b
    ld a, [bc]
    nop
    ld c, b
    ld e, b
    ld b, h
    nop
    ld c, b
    ld h, b

jr_00a_76e6:
    ld b, l
    nop
    ld d, b
    ld c, b
    ld d, b
    nop
    ld d, b
    ld d, b
    ld d, c
    nop
    ld d, b
    ld e, b

jr_00a_76f2:
    ld d, d
    nop
    ld d, b
    ld h, b
    ld d, e
    nop
    ld d, b
    ld l, b

jr_00a_76fa:
    ld d, h
    nop
    ld e, b
    ld c, b

jr_00a_76fe:
    ld e, h
    nop
    ld e, b
    ld d, b
    ld e, l
    nop
    ld e, b
    ld e, b
    ld e, [hl]
    nop
    ld e, b
    ld h, b

jr_00a_770a:
    ld e, a
    nop
    ld e, b
    ld l, b
    ld h, b
    nop
    jr nz, jr_00a_7752

    ld h, a
    nop
    jr nz, jr_00a_775e

jr_00a_7716:
    ld l, b
    nop
    jr z, jr_00a_7752

    ld l, h
    nop
    jr z, jr_00a_775e

    ld l, l
    nop
    jr z, jr_00a_776a

jr_00a_7722:
    ld l, [hl]
    nop
    jr z, jr_00a_7776

    ld l, a
    nop
    jr z, jr_00a_7782

    ld [hl], b
    nop
    jr z, jr_00a_778e

    ld [hl], c
    nop
    jr nc, jr_00a_7772

    ld [hl], a
    nop
    jr nc, jr_00a_777e

    ld a, [bc]
    nop
    jr nc, jr_00a_778a

    ld a, b
    nop
    jr nc, jr_00a_7796

    ld a, c
    nop
    jr nc, jr_00a_77a2

    ld a, d
    nop
    jr nc, jr_00a_77ae

    ld a, e
    nop
    jr c, jr_00a_7782

    add b
    nop
    jr c, jr_00a_778e

    add c
    nop
    jr c, jr_00a_779a

jr_00a_7752:
    ld a, [bc]
    nop
    jr c, jr_00a_77a6

    add d
    nop
    jr c, jr_00a_77b2

    ld a, [bc]
    nop
    jr c, jr_00a_77be

jr_00a_775e:
    add e
    nop
    jr c, jr_00a_77ca

    add h
    nop
    ld b, b
    jr c, jr_00a_76f2

    nop
    ld b, b
    ld b, b

jr_00a_776a:
    adc h
    nop
    ld b, b
    ld c, b
    adc l
    nop
    ld b, b
    ld d, b

jr_00a_7772:
    adc [hl]
    nop
    ld b, b
    ld e, b

jr_00a_7776:
    adc a
    nop
    ld b, b
    ld h, b
    sub b
    nop
    ld c, b
    ld c, b

jr_00a_777e:
    sub [hl]
    nop
    ld c, b
    ld d, b

jr_00a_7782:
    ld a, [bc]
    nop
    ld c, b
    ld e, b
    sub a
    nop
    ld d, b
    ld c, b

jr_00a_778a:
    sbc d
    nop
    ld d, b
    ld d, b

jr_00a_778e:
    sbc e
    nop
    ld d, b
    ld e, b
    sbc h
    nop
    ld d, b
    ld h, b

jr_00a_7796:
    sbc l
    nop
    ld e, b
    ld c, b

jr_00a_779a:
    and e
    nop
    ld e, b
    ld d, b
    and h
    nop
    ld e, b
    ld e, b

jr_00a_77a2:
    and l
    nop
    ld e, b
    ld h, b

jr_00a_77a6:
    and [hl]
    nop
    jr nz, jr_00a_77f2

    xor h
    nop
    jr nz, jr_00a_77fe

jr_00a_77ae:
    xor l
    nop
    jr z, jr_00a_77f2

jr_00a_77b2:
    or b
    nop
    jr z, jr_00a_77fe

    or c
    nop
    jr z, jr_00a_780a

    or d
    nop
    jr z, jr_00a_7816

jr_00a_77be:
    or e
    nop
    jr nc, jr_00a_7802

    cp c
    nop
    jr nc, jr_00a_780e

    ld a, [bc]
    nop
    jr nc, jr_00a_781a

jr_00a_77ca:
    cp d
    nop
    jr nc, jr_00a_7826

    jr nz, jr_00a_77d0

jr_00a_77d0:
    jr nc, jr_00a_7832

    cp e
    nop
    jr nc, jr_00a_783e

    ld c, a
    nop
    jr c, jr_00a_781a

    cp a
    nop
    jr c, jr_00a_7826

    ret nz

    nop
    jr c, jr_00a_7832

    pop bc
    nop
    jr c, jr_00a_783e

    jp nz, Jump_000_3800

    ld h, b
    jp Jump_000_3800


    ld l, b
    call nz, Call_00a_4000
    ld b, b

jr_00a_77f2:
    ret z

    nop
    ld b, b
    ld c, b
    ret


    nop
    ld b, b
    ld d, b
    jp z, Jump_00a_4000

    ld e, b

jr_00a_77fe:
    rlc b
    ld b, b
    ld h, b

jr_00a_7802:
    call z, Call_00a_4000
    ld l, b
    call $4800
    ld b, b

jr_00a_780a:
    call nc, $4800
    ld c, b

jr_00a_780e:
    push de
    nop
    ld c, b
    ld d, b
    ld a, [bc]
    nop
    ld c, b
    ld e, b

jr_00a_7816:
    sub $00
    ld c, b
    ld h, b

jr_00a_781a:
    ld c, a
    nop
    ld d, b
    ld c, b
    reti


    nop
    ld d, b
    ld d, b
    ld a, [bc]
    nop
    ld d, b
    ld e, b

jr_00a_7826:
    jp c, Jump_00a_5000

    ld h, b
    db $db
    nop
    ld e, b
    ld c, b
    ldh [rP1], a
    ld e, b
    ld d, b

jr_00a_7832:
    pop hl
    nop
    ld e, b
    ld e, b
    ld [c], a
    nop
    ld e, b
    ld h, b
    ld c, a
    nop
    jr nz, jr_00a_7876

jr_00a_783e:
    inc b
    nop
    jr nz, jr_00a_7882

    dec b
    nop
    jr nz, jr_00a_788e

    ld b, $00
    jr z, jr_00a_7882

    rrca
    nop
    jr z, jr_00a_788e

    ld a, [bc]
    nop
    jr z, jr_00a_789a

    stop
    jr z, jr_00a_78a6

    ld de, $2800
    ld e, b
    ld [de], a
    nop
    jr nc, jr_00a_789e

    ld a, [de]
    nop
    jr nc, @+$4a

    dec de
    nop
    jr nc, jr_00a_78b6

    inc e
    nop
    jr nc, jr_00a_78c2

    stop
    jr nc, jr_00a_78ce

    dec e
    nop
    jr c, jr_00a_78a2

    jr z, jr_00a_7874

jr_00a_7874:
    jr c, jr_00a_78ae

jr_00a_7876:
    add hl, hl
    nop
    jr c, jr_00a_78ba

    ld a, [hl+]
    nop
    jr c, jr_00a_78c6

    ld a, [bc]
    nop
    jr c, jr_00a_78d2

jr_00a_7882:
    dec hl
    nop
    jr c, jr_00a_78de

    inc l
    nop
    jr c, jr_00a_78ea

    dec l
    nop
    jr c, jr_00a_78f6

jr_00a_788e:
    ld l, $00
    ld b, b
    ld b, b
    jr c, jr_00a_7894

jr_00a_7894:
    ld b, b
    ld c, b
    add hl, sp
    nop
    ld b, b
    ld d, b

jr_00a_789a:
    ld a, [hl-]
    nop
    ld b, b
    ld e, b

jr_00a_789e:
    dec sp
    nop
    ld b, b
    ld h, b

jr_00a_78a2:
    inc a
    nop
    ld b, b
    ld l, b

jr_00a_78a6:
    dec a
    nop
    ld c, b
    jr c, @+$48

    nop
    ld c, b
    ld b, b

jr_00a_78ae:
    ld b, a
    nop
    ld c, b
    ld c, b
    ld c, b
    nop
    ld c, b
    ld d, b

jr_00a_78b6:
    ld c, c
    nop
    ld c, b
    ld e, b

jr_00a_78ba:
    ld c, d
    nop
    ld d, b
    jr c, jr_00a_7914

    nop
    ld d, b
    ld b, b

jr_00a_78c2:
    ld d, [hl]
    nop

jr_00a_78c4:
    ld d, b
    ld c, b

jr_00a_78c6:
    ld d, a
    nop
    ld d, b
    ld d, b
    stop
    ld d, b
    ld e, b

jr_00a_78ce:
    ld e, b
    nop
    ld e, b
    ld d, b

jr_00a_78d2:
    ld h, c
    nop
    ld e, b
    ld e, b
    ld h, d
    nop
    jr nz, jr_00a_7912

    ld l, c
    nop
    jr nz, jr_00a_791e

jr_00a_78de:
    ld l, d
    nop
    jr nz, jr_00a_792a

    ld l, e
    nop
    jr z, jr_00a_791e

    ld [hl], d
    nop
    jr z, jr_00a_792a

jr_00a_78ea:
    ld a, [bc]
    nop
    jr z, jr_00a_7936

    ld [hl], e
    nop
    jr z, jr_00a_794a

    ld [hl], h
    nop
    jr z, jr_00a_7956

jr_00a_78f6:
    ld [hl], l
    nop
    jr z, jr_00a_7962

    halt
    jr nc, jr_00a_7936

    ld a, h
    nop
    jr nc, jr_00a_7942

    ld a, l
    nop
    jr nc, jr_00a_794e

    ld a, [bc]
    nop
    jr nc, jr_00a_795a

    ld a, [bc]
    nop
    jr nc, jr_00a_7966

    ld a, [bc]
    nop
    jr nc, jr_00a_7972

jr_00a_7912:
    ld a, [hl]
    nop

jr_00a_7914:
    jr nc, jr_00a_797e

    ld a, a
    nop
    jr c, jr_00a_7952

    add l
    nop
    jr c, jr_00a_795e

jr_00a_791e:
    add [hl]
    nop
    jr c, jr_00a_796a

    add a
    nop
    jr c, jr_00a_7976

    adc b
    nop
    jr c, jr_00a_7982

jr_00a_792a:
    adc c
    nop
    jr c, jr_00a_798e

    adc d
    nop
    ld b, b
    jr c, jr_00a_78c4

    nop
    ld b, b
    ld b, b

jr_00a_7936:
    sub d
    nop
    ld b, b
    ld c, b
    sub e
    nop
    ld b, b
    ld d, b
    sub h
    nop
    ld b, b
    ld e, b

jr_00a_7942:
    sub l
    nop
    ld c, b
    ld c, b
    sbc b
    nop
    ld c, b
    ld d, b

jr_00a_794a:
    ld h, h
    nop
    ld c, b
    ld e, b

jr_00a_794e:
    sbc c
    nop
    ld d, b
    ld c, b

jr_00a_7952:
    sbc [hl]
    nop
    ld d, b
    ld d, b

jr_00a_7956:
    sbc a
    nop
    ld d, b
    ld e, b

jr_00a_795a:
    and b
    nop
    ld d, b
    ld h, b

jr_00a_795e:
    and c
    nop
    ld d, b
    ld l, b

jr_00a_7962:
    and d
    nop
    ld e, b
    ld c, b

jr_00a_7966:
    and a
    nop
    ld e, b
    ld d, b

jr_00a_796a:
    xor b
    nop
    ld e, b
    ld e, b
    xor c
    nop
    ld e, b
    ld h, b

jr_00a_7972:
    xor d
    nop
    ld e, b
    ld l, b

jr_00a_7976:
    xor e
    nop
    jr nz, jr_00a_79ba

    xor [hl]
    nop
    jr nz, jr_00a_79c6

jr_00a_797e:
    xor a
    nop
    jr nz, jr_00a_79d2

jr_00a_7982:
    ld h, a
    nop
    jr z, jr_00a_79be

    or h
    nop
    jr z, jr_00a_79ca

    or l
    nop
    jr z, jr_00a_79d6

jr_00a_798e:
    or [hl]
    nop
    jr z, jr_00a_79e2

    or a
    nop
    jr z, jr_00a_79f6

    cp b
    nop
    jr nc, jr_00a_79d2

    jr c, jr_00a_799c

jr_00a_799c:
    jr nc, jr_00a_79de

    cp h
    nop
    jr nc, jr_00a_79ea

    ld a, [bc]
    nop
    jr nc, jr_00a_79f6

    ld a, b
    nop
    jr nc, jr_00a_7a02

    cp l
    nop
    jr nc, jr_00a_7a0e

    cp [hl]
    nop
    jr nc, jr_00a_7a1a

    ld e, e
    nop
    jr c, jr_00a_79ee

    push bc
    nop
    jr c, jr_00a_79fa

jr_00a_79ba:
    add $00
    jr c, jr_00a_7a06

jr_00a_79be:
    ld a, [bc]
    nop
    jr c, jr_00a_7a12

    ld a, [bc]
    nop
    jr c, jr_00a_7a1e

jr_00a_79c6:
    ld a, [bc]
    nop
    jr c, jr_00a_7a2a

jr_00a_79ca:
    rst $00
    nop
    ld b, b
    jr c, @-$30

    nop
    ld b, b
    ld b, b

jr_00a_79d2:
    rst $08
    nop
    ld b, b
    ld c, b

jr_00a_79d6:
    ret nc

    nop
    ld b, b
    ld d, b
    pop de
    nop
    ld b, b
    ld e, b

jr_00a_79de:
    jp nc, Jump_00a_4000

    ld h, b

jr_00a_79e2:
    db $d3
    nop
    ld c, b
    ld c, b
    rst $10
    nop
    ld c, b
    ld d, b

jr_00a_79ea:
    ld a, [bc]
    nop
    ld c, b
    ld e, b

jr_00a_79ee:
    ret c

    nop
    ld d, b
    ld c, b
    call c, Call_00a_5000
    ld d, b

jr_00a_79f6:
    db $dd
    nop
    ld d, b
    ld e, b

jr_00a_79fa:
    sbc $00
    ld d, b
    ld h, b
    rst $18
    nop
    ld e, b
    ld c, b

jr_00a_7a02:
    db $e3
    nop
    ld e, b
    ld d, b

jr_00a_7a06:
    ld a, [bc]
    nop
    ld e, b
    ld e, b
    db $e4
    nop
    ld e, b
    ld h, b

jr_00a_7a0e:
    push hl
    nop
    jr nz, jr_00a_7a5a

jr_00a_7a12:
    rlca
    nop
    jr nz, jr_00a_7a66

    ld [$2800], sp
    ld b, b

jr_00a_7a1a:
    inc de
    nop
    jr z, jr_00a_7a66

jr_00a_7a1e:
    inc d
    nop
    jr z, jr_00a_7a72

    dec d
    nop
    jr z, jr_00a_7a7e

    ld d, $00
    jr nc, jr_00a_7a6a

jr_00a_7a2a:
    ld e, $00
    jr nc, jr_00a_7a76

    ld a, [bc]
    nop
    jr nc, jr_00a_7a82

    rra
    nop
    jr nc, jr_00a_7a8e

    jr nz, jr_00a_7a38

jr_00a_7a38:
    jr nc, jr_00a_7a9a

    ld hl, $3000
    ld l, b
    ld [hl+], a
    nop
    jr c, jr_00a_7a82

    cpl
    nop
    jr c, jr_00a_7a8e

    jr nc, jr_00a_7a48

jr_00a_7a48:
    jr c, jr_00a_7a9a

    ld a, [bc]
    nop
    jr c, @+$5a

    ld a, [bc]
    nop
    jr c, jr_00a_7ab2

    ld sp, $3800
    ld l, b
    ld [hl-], a
    nop
    ld b, b
    ld b, b

jr_00a_7a5a:
    ld a, $00
    ld b, b
    ld c, b
    ccf
    nop
    ld b, b
    ld d, b
    ld a, [bc]
    nop
    ld b, b
    ld e, b

jr_00a_7a66:
    ld b, b
    nop
    ld b, b
    ld h, b

jr_00a_7a6a:
    ld b, c
    nop
    ld b, b
    ld l, b
    ld b, d
    nop
    ld c, b
    ld b, b

jr_00a_7a72:
    ld c, e
    nop
    ld c, b
    ld c, b

jr_00a_7a76:
    ld c, h
    nop
    ld c, b
    ld d, b
    ld c, l
    nop

jr_00a_7a7c:
    ld c, b
    ld e, b

jr_00a_7a7e:
    ld c, [hl]
    nop
    ld c, b
    ld h, b

jr_00a_7a82:
    ld c, a
    nop
    ld d, b
    ld c, b
    ld e, c
    nop
    ld d, b
    ld d, b
    ld a, [bc]
    nop
    ld d, b
    ld e, b

jr_00a_7a8e:
    ld e, d
    nop
    ld d, b
    ld h, b
    ld e, e
    nop
    ld e, b
    ld c, b
    ld h, e
    nop
    ld e, b
    ld d, b

jr_00a_7a9a:
    ld h, h
    nop
    ld e, b
    ld e, b
    ld h, l
    nop
    ld e, b
    ld h, b
    ld h, [hl]
    nop
    ld hl, $7ab1
    ld de, $9010
    ld bc, $04a0
    call Call_000_0634
    ret


    nop

jr_00a_7ab2:
    nop
    ld bc, $0200
    ld bc, $0200
    inc b
    ld [bc], a
    nop
    inc b
    ld [$0704], sp
    ld [$0000], sp
    db $10
    ldh [$08], a
    stop
    ld [$0800], sp
    inc b
    inc c
    ld c, $1f
    xor $1f
    nop
    nop
    nop
    nop
    ld b, h
    jr c, jr_00a_7a5a

    ld b, h
    nop
    add d
    nop
    add e
    add b
    ld [bc], a
    ld hl, sp+$04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    ld a, h
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
    nop
    ld b, h
    jr c, jr_00a_7a7c

    ld b, h
    ld bc, $0082
    add c
    ld a, $41
    nop
    nop
    nop
    nop
    db $10
    inc c
    jr nz, jr_00a_7b1b

    nop
    ld hl, $2040
    nop
    ld b, b
    cp a
    ld b, b
    inc b
    inc bc
    jr nz, jr_00a_7b31

    nop
    ld h, b
    nop
    add b
    nop
    nop

jr_00a_7b1b:
    ld a, a
    add b
    ld a, a
    add b
    ld [hl], a
    adc b
    nop
    ldh a, [rP1]
    ld [$0400], sp
    nop
    inc b
    rlca
    rrca
    adc a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a

jr_00a_7b31:
    nop
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

    ret nz

    rla
    ld [$100f], sp

jr_00a_7b45:
    rrca
    db $10
    cpl
    db $10
    rra
    jr nz, @+$61

    jr nz, jr_00a_7b8d

    ld b, b
    ccf
    ld b, b
    db $dd
    ld a, $dd
    ld a, $dd
    ld a, $eb
    inc e
    db $e3
    inc e
    rst $30
    ld [$00ff], sp
    ld a, a
    add b
    ld hl, sp+$04
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $28
    db $10
    sbc $21
    nop
    nop
    add a
    ld a, b
    cp b
    ld a, a
    rrca
    rst $38
    rst $30
    rrca
    ei
    rlca
    ld hl, sp+$04
    ld a, [$3f06]
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ret nz

    rst $18
    and b
    cpl
    db $10

jr_00a_7b8d:
    rla
    ld [$0817], sp
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    db $fd
    inc bc
    ei
    rlca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    ei
    rlca
    rrca
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$df]
    ldh [$9f], a
    and b
    rra
    jr nz, jr_00a_7b45

    xor d
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, b
    db $fc
    ld a, h
    ld hl, sp+$7c
    ld hl, sp+$78
    ld hl, sp-$80
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
    cp a

jr_00a_7bd2:
    ld b, b
    ld a, [hl+]
    push de
    ld d, h
    xor e
    ld a, [hl+]
    push de
    ld d, h
    xor e
    xor d
    ld d, l
    sub l
    ld l, e
    ld b, e
    ccf
    ld a, a
    add b
    ld d, l
    xor d
    xor d
    push de
    sub l
    ld [$d5aa], a
    push de
    ld [$f5ca], a
    call nc, $deeb
    ld hl, $21de
    cp l
    ld b, e
    dec d
    db $eb
    jr z, jr_00a_7bd2

    dec d
    ld [$d5aa], a
    sub l
    ld [$cf37], a
    rst $08
    rst $38
    rst $38
    rst $38
    ld [c], a
    cp $08
    or $54
    xor e
    xor d
    ld d, l
    ld d, h
    xor e
    rrca
    db $10
    dec h
    ld a, [de]
    ld a, [bc]
    dec [hl]
    ld d, l
    ld a, [hl+]
    ld a, [hl+]
    ld d, l
    inc d
    ld l, e
    xor d
    push de
    sub l
    db $eb
    db $fd
    inc bc
    ld d, l
    xor e
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    sub l
    ld [$d5aa], a
    push de
    ld [$d5aa], a
    sub h
    db $eb
    xor d
    push de
    inc d
    db $eb
    ld a, [hl+]
    push de
    dec d
    db $eb
    ld c, c
    rst $30
    ld h, e
    rst $38
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$10
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [rIF]
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rrca
    inc bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    pop hl
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $08
    rst $18
    rlca
    adc a
    rlca
    inc bc
    nop
    nop
    nop
    nop
    jp z, $d5f5

    ld [$fde2], a
    add sp, -$19
    jp $81e3


    jp Boot


    nop
    nop
    xor c
    ld d, a
    ld d, l
    xor e
    and e
    ld e, a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    ld a, a
    ret


    rst $30
    db $e3
    rst $38
    rst $30
    rst $30
    rst $20
    rst $30
    db $e3
    db $e3
    ret nz

    ldh [$80], a
    ret nz

    add b
    nop
    ld [$d1f5], a
    rst $18
    rst $08
    rst $08
    adc a
    rst $08
    rlca
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    rst $20
    rst $20
    rst $20
    jp $81e3


    pop bc
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0e10
    nop
    nop
    nop
    nop
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
    ld c, $0a
    ld de, $2011
    jr nz, jr_00a_7d31

    nop
    nop
    nop
    nop
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
    ld b, c
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
    ld b, d
    inc a
    nop
    jp $0102


    ld [$1006], sp
    ld [$1000], sp
    jr nz, jr_00a_7d2c

    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    ld e, $21
    inc b
    ld hl, sp+$00
    ld b, $00
    ld bc, $0000
    nop
    ret nz

    ld c, [hl]

jr_00a_7d2c:
    ld [hl], c
    pop af
    rst $38
    ld a, a
    rst $38

jr_00a_7d31:
    nop
    jr nc, jr_00a_7d34

jr_00a_7d34:
    ld b, b
    nop
    add b
    ld a, a
    add b
    ld a, a
    add b
    dec sp
    call nz, $f8c7
    rst $30
    ld hl, sp+$00
    ld [bc], a

jr_00a_7d43:
    nop
    ld [bc], a
    ld bc, $c202

jr_00a_7d48:
    ccf
    sbc $3f
    db $dd
    ld a, $bd

jr_00a_7d4e:
    ld a, [hl]
    cp e
    ld a, h
    add b
    ld b, b
    ld a, e
    add h
    ld [hl], e
    adc h
    di
    inc c
    db $e3
    inc d
    db $eb
    inc e
    db $eb
    inc e
    db $d3
    inc a
    ld [bc], a
    pop bc
    and h
    ld h, d
    cp b
    ld [hl], h
    or a
    ld a, b
    or a
    ld a, b
    xor a
    ld [hl], b
    rst $18
    jr nz, jr_00a_7d4e

    ld hl, $0000
    nop
    nop
    nop
    jr jr_00a_7d43

    inc a
    sbc e
    ld a, h
    inc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld [bc], a
    add c
    nop
    ld b, [hl]
    nop
    jr z, jr_00a_7d48

    jr nc, @-$3e

    jr nc, jr_00a_7daa

    pop hl
    sbc $e1
    call c, $08e3
    ldh a, [rP1]
    inc c
    nop
    ld [bc], a
    nop
    ld bc, $0100
    inc e
    db $e3
    db $e3
    rst $38
    ccf
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

jr_00a_7daa:
    add b
    add b
    add b
    add b
    add b
    nop
    add b
    cpl
    db $10

jr_00a_7db3:
    rrca
    db $10
    inc de
    inc c
    inc b
    inc bc
    ld bc, $3939
    ld b, l
    ld a, h
    add d
    add hl, hl
    sub $9f
    ld a, a
    rst $20
    dec de
    ld a, [$fc04]
    ld [bc], a
    dec a
    jp nz, $e1de

    sbc $e1
    ld a, [bc]
    dec [hl]
    rst $30
    ld hl, sp-$09
    ld hl, sp-$11
    ldh a, [$6f]
    ld [hl], b
    rrca
    db $10
    ld a, [bc]
    dec d
    dec d
    ld a, [hl+]
    ld a, [bc]
    dec [hl]
    cp e
    ld a, h
    cp e
    ld a, h
    or a
    ld a, b
    or d
    ld a, l
    and l
    ld a, d
    xor d
    ld [hl], l
    dec h
    ld a, [$f56a]
    rst $08
    jr nc, jr_00a_7db3

    ld b, b
    rst $38
    nop
    xor d
    ld d, l
    ld d, c
    xor [hl]
    inc c
    rst $38
    ld a, l
    cp $7c
    rst $38
    sbc $21
    cp l
    ld b, e
    cp l
    ld b, e
    cp l
    ld b, e
    dec a
    jp $55aa


    dec d
    ld [$758a], a
    pop bc
    rst $38
    sbc [hl]
    pop hl
    cp a
    ret nz

    cp a
    ret nz

    rst $18
    ldh [$ea], a
    push af
    inc d
    db $eb
    xor d
    ld d, l
    cp a
    ret nz

    cp a
    ret nz

    ld a, a
    add b
    ld a, e
    add h
    ld a, b
    add a
    ld a, e
    add a
    ld [hl], a
    adc a
    and a
    ld e, a
    rst $18
    ccf
    xor $1e
    ldh [rNR10], a
    add sp, $18
    call c, Call_000_3c3c
    db $fc
    ld hl, sp-$08
    add b
    ldh a, [rHDMA4]
    xor e
    ld a, [hl+]
    push de
    sub l
    ld l, d
    ld a, [hl+]
    ld d, l
    ld d, l
    ld a, [hl+]
    ld a, [hl+]
    dec d
    ld de, $040e
    rlca
    inc d
    db $eb
    xor c
    ld d, a
    ld d, l
    xor e
    xor c
    ld d, a
    ld d, e
    xor a
    xor e
    ld d, a
    ld b, a
    cp a
    ccf
    rst $38
    sub l
    xor d
    jp z, $d5f5

    ld [$f5ca], a
    db $e4
    ei
    pop bc
    rst $08
    jp $c3c3


    jp $fa65


    ld l, d
    push af
    ld [hl], h
    ei
    ld sp, hl
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    ld hl, sp-$08
    ldh a, [$f8]
    ld a, l
    cp $f8
    ei
    ld hl, sp-$07
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f0]
    ld h, b
    ld h, b
    ld d, l
    xor d
    adc d
    ld [hl], l
    dec d
    ld [$f5ea], a
    push af
    ld a, [$7f78]
    rra
    rra
    rlca
    rlca
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, h
    xor e
    adc d
    ld [hl], l
    dec h
    ld a, [$f56a]
    db $e4
    ei
    add c
    rst $18
    ld d, b
    xor a
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld d, l
    xor d
    ld a, [hl+]
    push de
    push de
    ld [$ffe0], a
    db $10
    add sp, -$55
    ld d, [hl]
    ld d, e
    xor a
    xor e
    ld d, a
    ld d, a
    xor a
    and a
    ld e, a
    rrca
    rst $38
    ld a, [hl]
    rst $38
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec a
    ld a, [hl]
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
    ldh a, [$f0]
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
    rlca
    add a
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
    adc a
    rst $08
    rlca
    adc a
    inc bc
    rlca
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    db $fc
    cp $f8
    db $fc
    add sp, -$10
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

Jump_00a_7f7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
