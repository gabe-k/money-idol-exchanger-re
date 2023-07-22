; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    di
    call Call_000_04e1
    xor a
    ld [$cf0b], a
    ld [$cf0c], a
    ld a, [$cf2c]
    ld hl, $40db
    call Call_000_065e
    ld a, [hl]
    ldh [$9f], a
    ld a, [$cf2d]
    ld hl, $40db
    call Call_000_065e
    ld a, [hl]
    ldh [$a0], a
    ld hl, $736b
    ld de, $8000
    ld bc, $0530
    call memcpy
    ld hl, $789b
    ld de, $8e30
    ld bc, $01d0
    call memcpy
    ld hl, $9800
    call Call_000_07c3
    ld de, $4103
    ld hl, $9800
    call Call_000_0502
    xor a
    ld [$cf0b], a
    ld [$cf0c], a
    ld a, $8f
    ldh [rWY], a
    ld a, $a6
    ldh [rWX], a
    ld hl, $42fb
    ld de, $c100
    ld b, $70

jr_00d_4061:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00d_4061

    ldh a, [$9f]
    ld hl, $40e3
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $8600
    ld bc, $0300
    call memcpy
    ldh a, [$a0]
    ld hl, $40f3
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $8900
    ld bc, $0300
    call memcpy
    ldh a, [$9f]
    ld hl, $426b
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $988a
    call Call_000_0683
    ldh a, [$a0]
    ld hl, $426b
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $99c4
    call Call_000_0683
    ld a, $e4

Call_00d_40b3:
    ld [$cf1b], a
    ld [$cf1c], a
    ld a, $12
    call Call_000_063d
    call Call_000_047e
    ld a, $d3
    call Call_000_03da
    call Call_000_0369
    ld b, $32

jr_00d_40cb:
    call Call_000_0369
    call Call_000_055e
    dec b
    jr nz, jr_00d_40cb

    call Call_000_03b4
    call Call_000_05e9
    ret


    nop
    ld [bc], a
    ld bc, $0703
    dec b
    inc b
    ld b, $6b
    ld b, e
    ld l, e
    ld b, [hl]
    ld l, e
    ld c, c
    ld l, e
    ld c, a
    ld l, e
    ld c, h
    ld l, e
    ld d, d
    ld l, e
    ld d, l
    ld l, e
    ld e, b
    ld l, e
    ld e, e
    ld l, e
    ld e, [hl]
    ld l, e
    ld h, c
    ld l, e
    ld h, a
    ld l, e
    ld h, h
    ld l, e
    ld l, d
    ld l, e
    ld l, l
    ld l, e
    ld [hl], b
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    nop
    nop
    ld b, $60
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
    rlca
    nop
    nop
    ld [$6968], sp
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    stop
    nop
    ld [$7170], sp
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
    nop
    nop
    stop
    nop
    ld [$7978], sp
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    ld [$8180], sp
    add d
    add e
    add h
    add l
    add [hl]
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    ld de, $8988
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
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    inc de
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_00d_41e8

    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    inc e
    nop
    nop
    dec e
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_41e8:
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
    ld e, $00
    nop
    rra
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $20
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ld hl, $0000
    rra
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
    and l
    and [hl]
    and a
    ld hl, $0000
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    ld hl, $0000
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    ld hl, $0000
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    inc hl
    nop
    nop
    inc h
    dec h
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    daa
    jr z, jr_00d_42e7

    ld b, d
    adc e
    ld b, d
    sbc e
    ld b, d
    xor e
    ld b, d
    cp e
    ld b, d
    bit 0, d
    db $db
    ld b, d
    db $eb
    ld b, d
    rlca
    ld [bc], a
    add hl, hl
    ld a, [hl+]
    dec hl
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_00d_42ba

    ld [hl-], a
    inc sp
    rlca
    ld [bc], a
    ld [hl], $37
    jr c, jr_00d_42ca

    nop
    nop
    nop
    nop
    nop
    ld a, $3f
    jr nc, jr_00d_42da

    ld b, c
    rlca
    ld [bc], a
    ld l, $2f
    ld b, [hl]
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $49
    ld c, d
    inc sp
    rlca
    ld [bc], a
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    ld c, c
    ld b, b
    ld b, c

jr_00d_42ba:
    nop
    rlca
    ld [bc], a
    add hl, hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    inc sp
    dec [hl]
    inc sp

jr_00d_42ca:
    nop
    rlca
    ld [bc], a
    ld a, [hl-]
    dec sp
    inc a
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    ld b, e
    ld b, h

jr_00d_42da:
    ld b, l
    rlca
    ld [bc], a
    ld b, a
    ld c, b
    dec [hl]
    inc sp
    nop
    nop
    nop
    nop
    nop
    ld c, e

jr_00d_42e7:
    inc sp
    dec [hl]
    ld c, h
    inc sp
    rlca
    ld [bc], a
    ld b, a
    ld c, c
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    ld d, c
    inc sp
    ld d, d
    inc sp
    jr c, @+$3a

    db $e3
    nop
    jr c, jr_00d_4341

    db $e4
    nop
    jr c, jr_00d_434d

    push hl
    nop
    jr c, jr_00d_4359

    and $00
    jr c, jr_00d_4365

    rst $20
    nop
    jr c, jr_00d_4371

    add sp, $00
    jr c, jr_00d_437d

    jp hl


    nop
    ld b, b
    jr c, @-$14

    nop
    ld b, b
    ld b, b
    db $eb
    nop
    ld b, b
    ld c, b
    db $ec
    nop
    ld b, b
    ld d, b
    db $ed
    nop

jr_00d_4327:
    ld b, b
    ld e, b
    xor $00
    ld b, b
    ld h, b
    rst $28
    nop
    ld b, b
    ld l, b
    ldh a, [rP1]
    ld c, b
    jr c, jr_00d_4327

    nop
    ld c, b
    ld b, b
    ld a, [c]
    nop
    ld c, b
    ld c, b
    di
    nop
    ld c, b
    ld d, b

jr_00d_4341:
    db $f4
    nop
    ld c, b
    ld e, b
    push af
    nop
    ld c, b
    ld h, b
    or $00
    ld c, b
    ld l, b

jr_00d_434d:
    rst $30
    nop
    ld d, b
    jr c, @-$06

    nop
    ld d, b
    ld b, b
    ld sp, hl
    nop
    ld d, b
    ld c, b

jr_00d_4359:
    ld a, [$5000]
    ld d, b
    ei
    nop
    ld d, b
    ld e, b
    db $fc
    nop
    ld d, b
    ld h, b

jr_00d_4365:
    db $fd
    nop
    ld d, b
    ld l, b
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_4371:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_437d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e01
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
    ld a, b
    ld a, b
    add h
    db $fc
    ld [hl], h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00d_43ff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $2f3f
    ccf
    jr z, jr_00d_4439

    jr z, jr_00d_443b

    jr z, @+$2a

    jr z, @+$3a

    jr z, @+$3a

    jr z, jr_00d_4453

    ldh [$e0], a
    sbc $fe
    dec a
    ccf
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rrca
    jr nz, jr_00d_4468

    inc a
    ld a, [hl]
    ld b, d
    rst $38
    add a
    ld a, e
    db $fc
    rst $08
    ldh a, [$1f]
    ldh [$ef], a
    db $10

jr_00d_4439:
    rst $38
    nop

jr_00d_443b:
    ld sp, $c73f
    cp $ff
    ei
    adc h
    ld a, h
    ldh a, [rTMA]
    db $fc
    ld bc, $22dc
    ldh [rNR24], a
    db $f4
    db $fc
    call c, $ee1c
    and $1f
    add hl, de

jr_00d_4453:
    rra
    ld e, $19
    sbc c
    cp b
    ld a, b
    ret nc

    jr nc, jr_00d_445c

jr_00d_445c:
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
    or b

jr_00d_4468:
    ldh a, [$78]
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
    db $10
    db $10
    jr c, jr_00d_44b1

    ld a, h
    ld e, h
    inc d
    inc e
    inc d
    inc e
    inc d
    inc e
    ld a, [bc]
    ld c, $0b
    rrca
    add hl, bc
    rrca
    dec b
    rlca
    inc bc
    inc bc
    rra
    ld b, b
    rra
    ld b, b
    ld l, [hl]
    add c
    ld h, l
    add d
    jr nc, @-$3a

    ld a, $c4
    rra
    add sp, -$15
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $fc
    ld [bc], a

jr_00d_44b1:
    and $01
    ld a, [hl+]
    ld bc, $2549
    rst $30
    dec l
    sbc $6b
    ld hl, sp+$04
    or c
    ld c, d
    ld e, b
    dec h
    ld bc, $0012
    ld d, c
    ld b, d
    xor c
    rst $20
    xor b
    or a
    add sp, $6b
    sbc e
    add [hl]
    ld a, a
    push hl
    dec a
    ld l, b
    cp b
    ret c

    ld a, b
    ret nc

    ld [hl], b
    ld l, b
    cp b
    xor b
    ld hl, sp-$1c
    db $fc
    ret c

    ld a, b
    ld l, b
    ld hl, sp-$4c
    xor h
    inc a
    inc h
    jr z, jr_00d_451f

    db $10
    stop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $2001
    jr nz, jr_00d_4564

    ld d, b
    ldh a, [$90]
    ldh [$60], a
    add b
    add b
    ldh [$e0], a
    ret c

    ld a, b
    ret c

    add sp, -$10
    ldh a, [$c0]
    ret nz

    ld h, b
    ld h, b
    ld [hl], b
    ld d, b
    inc a
    inc l
    inc bc
    ld [bc], a
    ld b, $04
    dec b
    inc b
    dec b
    inc b
    rlca
    inc b
    dec bc
    ld c, $1d
    rla
    ld a, b
    ld l, a
    call nc, $d37f
    ld a, a

jr_00d_451f:
    rst $18
    ld a, a
    sub $7e
    rst $18
    ld a, a
    rst $10
    ld a, a
    cp h
    rst $28
    rst $38
    db $eb
    ld c, e
    cp $b7
    db $fc
    sbc $79
    db $eb
    or c
    or e
    and c
    and e
    add c
    and e
    add c
    inc bc
    ld bc, $f9ae
    ret c

    rst $38
    db $e4
    rst $38
    or b
    sbc a
    ld sp, hl
    rst $18
    rst $10
    rst $18
    ld e, e
    db $dd
    ld a, [$a89e]
    ld hl, sp-$28
    ld hl, sp-$30
    ldh a, [$d0]
    ldh a, [rHDMA1]
    ld [hl], c
    and a
    and $a7
    db $e4
    jp Jump_000_00c3


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b

jr_00d_4564:
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    call z, Call_000_004c
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh a, [$30]
    rst $18
    rrca
    add a
    add b
    ld a, a
    ld b, b
    dec de
    inc de
    dec c
    inc c
    rlca
    rlca
    dec c
    ld [$717e], sp
    cp h
    jp nz, Jump_000_04fb

    rst $20
    jr @-$06

    sub a
    db $fd
    ld h, e
    cp $83
    rst $38
    inc bc
    db $fc
    inc b
    add sp, $08
    db $10
    db $10
    ldh a, [$30]
    cp e
    db $ec
    ld e, l
    or $8e
    rst $38
    db $e3
    rst $38
    cp $1f
    ccf
    inc hl
    ld a, a
    jr nz, jr_00d_4619

    jr nc, jr_00d_45b3

    ld [bc], a
    ld e, $1c
    add b
    inc d
    and [hl]
    reti


jr_00d_45b3:
    ld l, e
    rst $38
    ccf
    rst $18
    sbc $f3
    rst $38
    dec [hl]
    call z, $2c1c
    inc e
    sub $3e
    rst $38
    ei
    ld hl, sp-$78
    db $f4
    inc c
    inc a
    call nz, $e61a
    ld b, $06
    rlca
    dec b
    dec b
    ld b, $05
    rlca
    add [hl]
    add [hl]
    ld b, b
    ld b, b
    ld [hl], c
    ld [hl], c
    ld a, $2e
    call c, $acd4
    db $f4
    db $f4
    db $fc
    ld l, h
    ld l, h
    ld h, b
    ld h, b
    and b
    ldh [$c0], a
    ld b, b
    ret nz

    ld b, b
    scf
    jr c, jr_00d_45fd

    rrca
    dec a
    jr nc, jr_00d_4665

    ld b, b
    or e
    jp $8cff


    ld [hl], a
    or b
    ld h, e
    call z, $e07f

jr_00d_45fd:
    xor $91
    db $dd
    inc hl
    cp d
    rst $00
    push af
    rrca
    ld [$d51f], a
    ld a, $e7
    inc a
    ldh a, [$60]
    or b
    ldh [$60], a
    ldh [$a0], a
    ldh [rSVBK], a
    and b
    sbc $34
    rst $28
    ld a, [de]

jr_00d_4619:
    or $0c
    inc hl
    inc a
    ld hl, $203e
    ccf
    jr nc, jr_00d_4642

    ld sp, $7e1f
    cpl
    cp h
    rla
    jr jr_00d_463a

    rst $38
    ld d, d
    ld a, a
    ret z

    ccf
    and $9f
    pop af
    ld c, $ff
    ld d, $ef
    rra
    jp hl


    ccf

jr_00d_463a:
    call z, $e29f
    adc l
    di
    call Call_000_3ff3

jr_00d_4642:
    cp $0b
    or $0d
    di
    ld b, $f9
    add l
    ei
    dec de
    ld de, $1e3e
    cpl
    dec sp
    ld [hl], a
    inc a
    set 7, [hl]
    ld [hl], l
    adc a
    ld a, [$7d87]
    add e
    add b
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b

jr_00d_4665:
    jr nz, jr_00d_4687

    ldh [$a0], a
    ld [hl], b
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00d_4684:
    nop
    nop
    nop

jr_00d_4687:
    nop
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
    add hl, de
    rra
    ld l, $31
    ld e, [hl]
    ld h, c
    sbc [hl]
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    ld h, e
    or a
    push de
    rst $38
    ld [$8cf3], a
    cp a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    add a

jr_00d_46b2:
    add a
    ret c

    rst $18
    or e
    ld a, h
    db $d3
    inc a
    di
    inc e
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

    ret nc

    jr nc, jr_00d_46b2

    jr jr_00d_46cc

jr_00d_46cc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    ld [$080f], sp
    rrca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rrca
    ldh a, [$03]
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld a, a
    ret nz

    ld e, d
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld l, b
    ret nz

    ld a, e
    ret nz

    xor a
    ret nc

    adc a
    ldh a, [$b1]
    ld e, $30
    rra
    jr nc, jr_00d_4750

    ld [hl], b
    rra
    ldh a, [$1f]
    ret nc

    ccf
    ret nc

    ccf
    xor h
    ld e, a
    db $f4
    inc c
    ld a, [$7e06]
    add d
    add hl, de
    rst $20
    ld bc, $01ff
    rst $38
    ld [bc], a
    cp $1c
    db $fc
    nop
    nop
    nop
    nop
    nop

jr_00d_4750:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0303
    rst $10
    adc a
    sbc e
    add b
    push bc
    inc bc
    db $eb
    rlca
    ld d, [hl]
    xor [hl]
    cpl
    rst $38
    ld [hl], l
    rst $18
    rst $10
    call c, $b06f
    ld e, a
    ldh [$be], a
    pop bc
    call z, $bff3
    cp a
    ld hl, sp-$10
    or b
    ldh [rNR41], a
    and b
    and e
    ld [hl], a
    ld e, c
    or b
    ld c, a
    db $fc
    cp l
    cp $56
    rst $10
    ei
    ld a, e
    push af
    ld a, l
    rst $00
    ld e, c
    ld hl, sp-$18
    ld l, h
    inc b
    inc l
    inc b
    adc h
    inc b
    db $fc
    inc b
    xor h
    ld d, h
    ld [hl], h
    call c, $f898
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_47df:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    inc c
    rrca
    inc d
    rra
    inc e
    rla
    dec e
    rla
    ld e, $17
    inc d
    rra
    ld e, h
    ret z

    xor e
    ld l, h
    rst $18
    cp a
    and b
    rst $38
    pop bc
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ret nc

    ld b, b
    jr nz, jr_00d_47df

    nop
    rlca
    cp $f8
    ld b, $fc
    ei
    ld b, $f6
    rrca
    ld a, c
    add a
    add hl, sp
    ld [hl], b
    jr nz, @+$1b

    dec de
    rlca
    ld a, $0f
    ld d, c
    ccf
    ldh a, [$7f]
    adc c
    cp $00
    rst $38
    inc e
    db $fc
    xor d
    or $d5
    rst $28
    add hl, sp
    rst $38
    ld b, [hl]
    cp a
    ld sp, hl
    rlca
    cp $01
    ld a, a
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$100f], sp
    rra
    jr nz, jr_00d_48c0

    jr nc, jr_00d_48c2

    ld a, b
    ld c, a
    ld c, h
    ld b, a
    ld b, h
    ld b, a
    add $83
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, l
    add e
    dec a
    jp $c13e


    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, l
    add e
    ld a, l
    add e
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b

jr_00d_48b8:
    rst $38
    ld b, b
    rst $38
    ccf
    ret nz

    rra
    ldh [rIF], a

jr_00d_48c0:
    ldh a, [rTAC]

jr_00d_48c2:
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc

jr_00d_48ca:
    db $fc
    and b
    ld h, b
    ret nc

    jr nc, jr_00d_48b8

    jr jr_00d_48ca

    ld [$0cf4], sp
    db $f4
    inc c
    db $ec
    inc e
    jp nc, Jump_000_0032

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    add e
    add e
    add c
    add c
    add b
    ret nz

    add b
    ret nz

    add b
    ld b, b
    ld b, b
    ld h, b
    ld b, b
    jr nc, jr_00d_492b

    nop
    rst $38
    nop
    rst $38
    add c
    cp $80
    rst $38
    ld h, a
    ld a, a
    jr jr_00d_492f

    nop
    nop
    nop
    nop
    ld a, d
    add a
    ld a, [$f707]
    dec c
    push af
    inc c
    inc l
    ret c

    reti


    ldh a, [$33]
    ld hl, $4262

jr_00d_492b:
    jr nz, @+$01

    db $10
    rst $38

jr_00d_492f:
    jr nc, @+$01

    ld hl, sp-$31
    inc c
    rlca
    db $e4
    rst $00
    ld [hl], $23
    inc de
    ld de, $fe01
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    ld h, l
    rst $38
    rst $38
    sbc d
    add b
    nop
    and d
    ld h, d
    and d
    ld h, d
    ld b, d
    jp nz, $c242

    add d
    add d
    inc b
    inc b
    inc b
    inc b
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    ld b, $04
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
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
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld [de], a
    ld [de], a
    ld a, [de]
    ld [de], a
    inc c
    inc c
    ld a, b
    ld a, b
    call nz, $0084
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_00d_49fb

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f01
    ld c, $1f
    db $10
    jr c, @+$22

    ld [hl], b
    ld b, b
    ld h, a
    ld b, b
    ld b, a
    ld b, b
    rst $08
    add b

jr_00d_49fb:
    ld hl, sp-$78
    db $dd
    dec b
    rrca
    ld [bc], a
    ccf
    ld [bc], a
    dec sp
    ld b, $cf
    ld [bc], a
    cp c
    rra
    and $25
    ret z

    adc b
    add h
    inc b
    ld [bc], a
    ld [bc], a
    jp nz, $e302

    inc bc
    or $03
    db $fc
    rlca
    ld sp, hl
    adc [hl]
    ld bc, $0101
    ld bc, $0101
    rra
    rra
    add sp, -$09
    adc h
    ld [hl], e
    ld [$89f7], sp
    db $76
    add d
    ld [bc], a
    inc bc
    inc bc
    jp $e702


    ld [bc], a
    db $ed
    add [hl]
    ld a, b
    rst $38
    db $e4
    rra
    ld a, [$fc07]
    call z, Call_000_02fe
    add [hl]
    ld [bc], a
    rlca
    ld bc, $01f7

jr_00d_4a45:
    ei
    ld sp, $c84f
    add l
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
    ldh [$e0], a
    ld hl, sp+$18
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_4a6b:
    rst $08
    add b
    xor $81
    ld a, h
    ld b, e
    jr c, jr_00d_4a9a

    dec sp
    inc h
    ld [hl], a
    ld c, b
    pop af
    adc [hl]
    ret nc

    adc a
    rst $30
    inc h
    ld e, d
    cp l
    ccf

jr_00d_4a80:
    pop bc
    dec e
    db $e3
    add b
    ld a, a
    ret nz

    ccf
    push bc
    ccf
    add $3f
    ld [hl], a
    ld hl, sp-$31
    ldh a, [$2f]
    jr nc, jr_00d_4a45

    jr nz, jr_00d_4a6b

    db $e3
    adc a
    db $e4

jr_00d_4a97:
    jr jr_00d_4a80

    sub a

jr_00d_4a9a:
    ld l, a
    swap h
    rst $20
    jr jr_00d_4a97

    ld [$0cdb], sp
    rst $10
    adc h
    sub [hl]
    ld e, [hl]
    cp a
    jp c, $fbae

    rst $38
    ld bc, $00fb
    ld sp, hl
    nop
    db $e3
    nop
    db $d3
    nop
    ei
    pop bc
    ld [hl], l
    jr nz, jr_00d_4ae1

    ret nc

    db $e4
    add h
    cp $c8
    or a
    ld hl, sp-$3d
    ld a, h
    ld b, b
    rst $38
    ld b, c
    cp $c2
    db $fd
    ld b, d
    db $fd
    inc a
    inc b
    inc e
    inc b
    sbc [hl]
    ld [bc], a
    cp $02
    ld e, $e2
    rst $20
    add hl, de
    rst $30
    add hl, bc
    ld [hl], e
    adc l
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_4ae1:
    nop
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
    ld b, a
    inc l
    inc hl
    inc a
    inc hl
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
    ld a, l
    cp [hl]
    daa
    db $e4
    rst $00
    call nz, $0605
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $9701
    ld l, [hl]
    xor l
    ld e, l
    xor a
    ld e, a
    cpl
    rst $18
    dec l
    rst $38
    cp c
    rst $18
    rst $30
    ld e, [hl]
    rst $38
    ld c, b
    db $dd
    rst $30
    rst $38
    ld l, a
    ld c, [hl]
    ld h, d
    daa
    ld b, e
    ld b, a
    inc bc
    ld a, [bc]
    rlca
    adc d
    rlca
    dec b
    inc bc
    set 6, h
    db $e3
    ld a, h
    ld [c], a
    cp l
    and b
    cp a
    and c
    cp a
    sbc l
    cp a

jr_00d_4b37:
    or d
    cp [hl]
    rst $28
    ld a, a
    cp h
    ld a, a
    inc h
    rst $20
    sub d
    di
    pop de
    pop af
    ld d, b
    ld [hl], b
    jr nz, jr_00d_4b67

    jr nz, jr_00d_4b69

    nop
    nop
    inc sp
    call $fe02
    ld [bc], a
    cp $04
    db $fc
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

jr_00d_4b62:
    nop
    nop
    nop
    nop
    nop

jr_00d_4b67:
    nop
    nop

jr_00d_4b69:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    ld [$0c0f], sp
    scf
    inc sp
    ld sp, $2020
    jr nz, jr_00d_4bba

    jr nz, jr_00d_4b62

    ld hl, sp-$1a
    ld hl, sp-$05
    inc e
    cp $07
    db $fd
    add e
    rst $38
    ld b, d
    ld a, a
    ld sp, $097f
    ld b, e
    jr c, jr_00d_4bae

    jr z, jr_00d_4ba9

    jr nc, jr_00d_4b37

    inc hl
    or [hl]
    rst $08
    ld sp, hl
    rst $38
    rst $18
    adc [hl]

jr_00d_4ba9:
    adc a
    inc b
    sbc b
    ccf
    ld e, l

jr_00d_4bae:
    scf
    ld l, c
    rst $38
    sub [hl]
    rst $38
    ld b, $ff
    ldh [rIE], a
    ldh a, [$1f]
    db $fc

jr_00d_4bba:
    rlca
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    inc [hl]
    db $fc
    ld h, e
    rst $38
    ld h, d
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

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add hl, de
    ld de, $0b0e
    rlca
    ld b, $03
    ld [bc], a
    inc bc
    ld [bc], a
    rrca
    ld c, $7e
    ld [hl], e
    ld a, $0b
    rst $18
    rst $08
    cp e
    ld a, l
    db $ed
    nop
    ld b, $05
    inc e
    rlca
    ei
    rlca
    xor $1f
    rst $00
    inc b
    rst $28
    inc b
    rst $38
    adc b
    rst $18
    or b
    rst $38
    ldh a, [$ef]
    ld hl, sp-$31
    ld hl, sp-$79
    db $fc
    cp $0f

jr_00d_4c2d:
    db $f4
    dec b
    pop hl
    ld bc, $00e0
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    inc bc
    rst $38
    inc bc
    cp $03
    cp $83
    rst $38
    add e
    rst $38
    add d
    cp $84
    db $fc
    add h
    db $fc
    jr nz, jr_00d_4c2d

    and b
    ldh [$a0], a
    ldh [rNR41], a
    ldh [$c0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$100f], sp
    rra
    ldh [rIE], a
    inc c
    inc c
    ld a, [hl-]
    ld a, $e1
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    cp $06
    xor $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_4cf7:
    nop
    nop
    nop
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
    jr jr_00d_4d78

    ld h, b
    ld h, c
    ld b, b
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    ld sp, hl
    rst $38
    ld a, [c]
    rra
    ld [hl], d
    dec de
    db $e4
    daa

jr_00d_4d19:
    db $e4
    cpl
    ld b, b
    rst $38
    add b
    cp $00
    push af
    nop
    and d
    nop
    xor c
    ld bc, $025f
    rst $38
    rlca
    rst $38
    dec c
    rst $18
    inc d
    cp a
    jr z, jr_00d_4db0

    ld d, b
    rst $38
    and b
    cp $24
    db $f4
    ld d, h
    rst $38
    cp $fb
    nop
    nop
    add b
    add b
    ld a, [hl]
    cp $33
    ld h, c
    jr nc, jr_00d_4d65

    jr jr_00d_4cf7

    jr jr_00d_4d19

    inc c
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld [hl], b
    jr nc, @+$32

    db $10
    jr nc, jr_00d_4d69

    jr nz, jr_00d_4d7b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_4d65:
    nop
    nop
    nop
    nop

jr_00d_4d69:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_4d78:
    nop
    nop
    nop

jr_00d_4d7b:
    ld sp, $1b20
    db $10
    rrca
    ld [$0407], sp
    inc bc
    ld [bc], a
    ld bc, $0201
    inc bc
    inc b
    rlca
    db $e4
    ccf
    ret z

    ld a, a
    ret


    ld a, a
    adc c
    rst $38
    adc b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    adc a
    ld hl, sp-$54
    ld hl, sp+$58
    ldh a, [$58]
    ldh a, [$ec]
    cp b
    rst $28
    rst $38
    ld sp, hl
    cp $97
    cp h
    cp $03
    ld e, $03
    rrca

jr_00d_4db0:
    ld bc, $010f
    rra
    rrca
    db $fd
    rst $38
    rst $38
    ccf
    db $eb
    ld l, a
    inc c
    add sp, $0e
    add sp, $06
    db $ec
    rlca
    db $f4
    ld b, e
    or $23
    ei
    ld hl, $41fb
    db $fd
    ld h, b
    jr nz, jr_00d_4e0e

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_4df1:
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc

jr_00d_4df9:
    inc b
    rlca
    inc b
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_00d_4e42

    ld b, e
    ld a, a
    adc h
    db $fc
    jr nc, jr_00d_4df9

    ret nz

    ret nz

    dec b
    rst $38
    rlca

jr_00d_4e0e:
    rst $38
    dec b
    rst $18
    ld [bc], a
    rst $28
    ld [c], a
    rst $38
    ld a, c
    ld e, a
    rst $38
    add a
    rst $38
    add b
    db $fc
    add sp, -$14
    add sp, -$60
    add sp, -$08
    ret nz

    ldh a, [rP1]
    ld [hl], e
    add h
    cp e
    ret nz

    db $ec
    ldh a, [$7e]
    dec sp
    add hl, sp
    ld a, e
    ld a, [hl+]
    ld a, c
    ld e, a
    ld sp, $0335
    dec bc
    add [hl]
    cpl
    inc e
    cp a
    ld a, h
    add b
    cp $80
    rst $38
    and b
    rst $38
    ld b, b

jr_00d_4e42:
    rst $38
    ret nz

    rst $38
    cp $3f
    reti


    add hl, bc
    db $ec
    inc b
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_00d_4df1

    db $10
    ret nc

    ld [$04e8], sp
    db $f4
    ld [c], a
    ld a, [$1d19]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    ld a, [bc]
    ld a, [bc]
    inc d
    inc d
    inc d
    inc d
    jr z, @+$2a

    jr z, jr_00d_4e9f

    jr z, @+$3a

    jr z, jr_00d_4eb3

    ld bc, $0101
    ld bc, $0203

jr_00d_4e81:
    inc bc
    ld [bc], a
    rlca
    inc b
    ld h, a
    ld h, h

jr_00d_4e87:
    sub a
    db $f4
    ld l, a
    ld a, c
    rst $38
    ld bc, $03ff
    rst $38
    inc c
    ld hl, sp+$10
    cp $20
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    db $db
    call c, $8f8f

jr_00d_4e9f:
    jp $2043


    jr nz, jr_00d_4ebd

    add hl, de
    rrca
    rlca
    call nz, $f904
    add hl, bc
    ld d, a
    or $a7
    rst $20
    ld b, h
    call nz, $888f

jr_00d_4eb3:
    rst $18
    ld d, b
    rst $38
    jr nc, jr_00d_4e87

    ret


    daa
    rst $20
    and $02

jr_00d_4ebd:
    di
    pop bc
    add hl, sp
    jr nc, jr_00d_4ed0

    inc c
    inc bc
    inc bc
    ld [hl], b
    nop
    db $fd
    ld bc, $01ff
    inc b
    ld b, $02
    inc bc
    add c

jr_00d_4ed0:
    add c
    ret nz

    ld b, b
    ret nz

    ld b, b
    and $a6
    cp c
    add hl, de
    db $10
    db $10
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_00d_4e81

    and b
    and b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    jr z, jr_00d_4f11

    jr z, jr_00d_4f13

    jr z, jr_00d_4f25

    jr @+$1a

    inc c
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
    cpl
    ld a, [hl-]
    ld e, a
    ld [hl], d
    rst $38
    db $f4
    sbc a
    sub h
    rra
    rla
    ccf
    jr nz, jr_00d_4f47

    jr nz, @+$41

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop

jr_00d_4f11:
    rst $38
    nop

jr_00d_4f13:
    rst $38
    add b
    rst $38
    ld a, b
    rst $28
    scf
    db $fc
    jr nz, jr_00d_4f13

    sub a
    add sp, $6f
    ldh a, [$7e]
    ldh [$3f], a
    ldh [$3f], a

jr_00d_4f25:
    ldh a, [$1f]
    ldh a, [rIE]
    ret z

jr_00d_4f2a:
    ld c, a
    ld d, h
    or a
    add sp, -$22
    jr z, @+$01

    db $10
    ld a, a
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    rst $38
    add e
    ld a, h
    rst $00
    dec sp
    ld l, h
    scf
    ld hl, sp+$57
    ret c

    ld a, [hl]
    db $fc

jr_00d_4f47:
    ld a, a
    jp $c07e


    sbc b
    jr jr_00d_4f2a

    sub h
    cp $4a
    ld a, a
    daa
    inc sp
    ld de, $1011
    or b
    db $10
    ldh a, [$a0]
    jr z, jr_00d_4f85

    ld d, b
    ld [hl], b
    and b
    ldh [$c0], a
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc e

jr_00d_4f85:
    ld e, $12
    rra
    ld de, $191f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rNR41], a
    ldh [rNR41], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    rla
    inc d
    inc de
    ld [de], a
    inc de
    ld [de], a
    dec bc
    add hl, bc
    dec bc
    ld [$0809], sp
    dec b
    inc b
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    pop hl
    ld hl, $a2e3
    or $94
    or $54
    nop
    nop
    nop
    nop
    ccf
    ccf
    ret nc

    rst $08
    and b
    rra
    ld b, b
    ccf
    jr nz, jr_00d_5048

    rrca
    ccf
    nop
    nop
    db $fc
    db $fc
    rrca
    di
    add hl, bc
    ldh a, [rTMA]
    ld sp, hl
    inc bc
    rst $38
    dec b
    cp $00
    rst $38

jr_00d_503b:
    inc bc
    ld [bc], a
    rlca
    inc b
    add a
    add h
    ld c, a
    ret z

    rst $38
    cp $09
    rlca
    and h

jr_00d_5048:
    inc bc
    ld [hl], d
    add c
    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    and b
    and b
    and b
    and b
    ldh [$a0], a
    ld b, b
    ret nz

    jr nz, jr_00d_503b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ei
    ld c, h
    ld sp, hl
    ld l, $f8
    cpl
    db $fc
    rla
    db $fc
    rla
    db $fd
    adc a
    ld a, l
    ld c, a
    dec a
    cpl
    inc [hl]
    ld [hl], e
    ld l, [hl]
    pop bc
    ld h, c
    ret nz

    and b
    jp nc, $e498

    ld b, [hl]
    db $fc
    ld b, l
    rst $38
    ld b, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    and e
    ld a, [hl]
    ld d, l
    ld a, a
    call nc, $d8ff
    rst $38

jr_00d_50b7:
    or [hl]
    rst $38
    ld h, l
    add e
    add hl, de
    pop hl
    add hl, hl
    ret nz

    sub c
    ld h, h
    ld [hl], c
    ld [bc], a
    and d
    sub c
    add a
    adc c
    sbc h
    add a
    db $f4
    adc a
    sub b
    ldh a, [$e8]
    ld hl, sp-$30
    ld d, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_00d_50b7

    and b
    ldh [$a0], a
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
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec c
    add hl, bc
    dec c
    ld a, [bc]
    jr jr_00d_510c

    jr c, jr_00d_511e

    db $10
    rra
    ld [$000f], sp
    nop
    nop
    nop
    ldh [$e0], a
    sub b
    db $10
    ret nc

    db $10
    ld h, b
    and b
    ld b, b
    ret nz

    ld b, b
    ret nz

    dec e

jr_00d_510c:
    rra
    inc de
    inc de
    ld [hl+], a
    ld [hl+], a
    ld hl, $2121
    ld hl, $2123
    inc de
    ld de, $1a1f
    ld h, d
    rst $38
    ld d, a

jr_00d_511e:
    rst $38
    rst $18
    db $fd
    ld a, d
    ld a, d
    sbc $7e
    cp $7e
    jp nc, $b87e

    call c, $81c3
    jp $4781


    add e
    jp nz, $8786

    add a
    add a
    rlca
    dec c
    rlca
    ld c, $07
    ld b, h
    rst $38
    ld d, h
    rst $38
    sub l
    rst $38
    and l
    rst $38
    jp z, Jump_00d_587a

    ld a, b
    ld a, b
    ld l, b
    ldh a, [$50]
    and b
    ldh [$a0], a
    ldh [$e0], a
    ldh [$50], a
    ld d, b
    add hl, hl
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    dec l
    inc h
    ld a, c
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
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, $07
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_00d_5177:
    inc bc
    inc bc
    inc b
    inc b
    ld h, b
    and b
    jr c, jr_00d_5177

    rra
    rst $20
    jp nz, Jump_000_24fd

    ccf
    ld a, [de]
    dec de
    ld bc, $8201
    add d
    scf
    cpl
    jr nz, jr_00d_51ce

    ldh [rIE], a
    rra
    rst $38
    inc de
    ldh a, [$7f]
    ldh a, [$86]
    add b
    db $e4
    nop
    db $fc
    ret nz

    ret nc

    ldh [$a8], a
    or b
    ld a, [de]
    inc e
    cp [hl]
    cp a
    push hl
    ld a, a
    jp nz, $bf5f

    ccf
    rra
    nop
    rlca
    ld [$5027], sp
    dec l
    inc bc
    or a
    ld c, $ff
    ld sp, hl

jr_00d_51b7:
    ld h, $ff
    push af
    cp $a0
    ld h, b
    or b
    ld [hl], b
    ld l, b
    add sp, -$32
    adc [hl]
    pop bc
    ld bc, $c3c2
    or c
    ld h, c
    ld hl, sp+$20
    ld h, $39
    inc hl

jr_00d_51ce:
    inc a
    ld b, c
    ld a, [hl]
    ret nz

    cp a
    cp a
    ld a, a
    jr nz, jr_00d_51b7

    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    ldh [rNR41], a
    ret nz

    ret nz

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
    inc b
    inc b
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
    add l
    add h
    inc bc
    ld [bc], a
    dec b
    rlca
    rrca
    ld a, [bc]
    ld a, [de]
    ld d, $32
    ld l, $66
    ld e, h
    push bc
    cp h
    ret nz

    nop
    add b
    nop
    ld [$1900], sp
    nop
    add hl, sp
    nop
    ld a, c
    nop
    di
    jr nc, @-$07

    ld a, [c]
    cp h
    inc hl
    ccf
    jr nz, jr_00d_525f

    jr nz, jr_00d_5235

    inc e
    db $10
    rra
    sub b
    rra
    sub b
    rra
    db $d3
    rra
    db $eb
    call c, $ce75
    db $fc
    ld b, a
    call c, $cc67
    ld [hl], a

jr_00d_5235:
    ld b, a
    rst $38
    ld hl, sp-$01
    inc a
    rst $20
    reti


    jr nc, @+$01

    rla
    ld [$7d1b], a
    adc c
    ccf
    res 1, [hl]
    rst $38
    ld a, [hl]
    ei
    ld e, a
    or c
    ret nz

    ret nz

    ldh a, [$30]
    ld a, b
    adc b
    inc l
    call nz, $e216
    adc e
    pop af
    ld b, l
    ld hl, sp+$22
    db $fc
    nop
    nop
    nop
    nop

jr_00d_525f:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_00d_52ae

    jr nc, @+$31

    ld [hl], b
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    dec b
    ld sp, hl
    ld [bc], a
    db $fc
    ld bc, $01fe
    cp $00
    nop
    nop

jr_00d_52ae:
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ld h, b
    sub b
    db $10
    ld l, b
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_00d_52f3

    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ldh [$a0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_52f3:
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, b
    ld c, a
    and b
    sbc a
    cp b
    add a
    ld h, b
    rrca
    ld b, l
    ld a, [bc]
    ld [hl], d
    ld [de], a
    sub l
    ld [hl], l
    cp a
    ld h, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    or h
    or l
    dec [hl]
    ld [hl], l
    dec [hl]
    push de
    dec h
    dec l
    sub l
    ld d, $cb
    sla a
    and e
    dec d
    ld d, a
    ld d, e
    ld e, e
    ld c, e
    cp l
    dec hl
    ret nz

    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    cp a
    ld l, a
    ccf
    or $1d
    di
    cp $fd
    ld a, a
    rst $38
    ld l, e
    ei
    ld l, a
    cp $7e
    jp nc, Jump_00d_75d7

    cp $d7
    rst $30
    ld e, a
    rst $38
    xor d
    xor a
    dec h
    dec hl
    cp l
    cp e
    xor a
    dec l
    xor a
    ld h, a
    cp l
    and a
    db $fc
    push hl
    cp $f5
    sbc $f9
    ld c, $fd
    cp $76
    ld a, a
    rst $20
    or l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    inc b
    rlca
    inc b
    rlca
    add hl, bc
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    ld [de], a
    rra
    ld a, [hl]
    db $ec
    call c, $aff0
    rst $38
    rla
    ld hl, sp+$1d
    cp $1f
    rst $30
    ld e, h
    rst $38
    ld d, h
    rst $38
    ld l, a
    ld c, h
    res 1, a
    adc a
    inc b
    ld b, a
    ld [hl-], a
    and e
    ld bc, $8f77

jr_00d_5427:
    ld a, [$4bff]
    or [hl]
    and l
    or l
    push hl
    ld d, l
    jr z, jr_00d_54ae

    cp l
    ld a, c
    jp hl


    pop af
    di
    add c
    ld l, a
    pop af
    reti


    ccf
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    jr nz, jr_00d_5427

    ld d, b
    or b
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    ld [de], a
    rra
    ld a, [hl+]
    ccf
    dec hl
    ccf
    dec hl
    ld a, $4e
    ld a, [hl]
    ld d, [hl]
    ld [hl], h
    sub a
    rst $30
    db $eb
    rst $38
    db $fd
    sbc e
    ld e, l
    rst $08
    ld b, [hl]
    jp $c3ce


    ld l, d
    ld l, a
    inc e
    rrca
    push de
    sbc [hl]
    or [hl]
    call z, $fe7b
    ld de, $39ff
    sbc $7c
    sub a
    cp [hl]
    inc de
    or a
    ld hl, $2061
    db $ec
    rra
    ld a, d

jr_00d_54ae:
    rra
    and l
    ld a, a
    set 7, a
    and c
    ld a, a
    ld [hl], c
    sbc a
    ld e, b
    adc a
    xor h
    rst $00
    xor b
    ret c

    and h
    call c, $ec14
    ld [de], a
    xor $0a
    or $09
    rst $30
    add l
    ei
    add l
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    jr z, jr_00d_552e

    add hl, bc
    ld c, $12
    dec e
    ld a, [de]
    dec e
    inc de
    inc e
    inc h
    dec sp
    jr nz, jr_00d_554a

    ld a, c
    sbc $35
    cp $35
    cp $2a
    rst $38
    dec [hl]
    rst $28
    ld l, d
    rst $30
    sbc c
    ld a, a
    ld b, [hl]
    cp a
    ld h, h
    jr nz, jr_00d_5582

    jr nz, jr_00d_5591

    inc h
    cp l
    inc d
    ld l, l
    sbc b
    db $fd
    ld hl, sp+$16
    db $ec
    adc e
    or $ec
    ld b, a
    ld l, h

jr_00d_552e:
    ld b, a
    ld l, h
    ld c, a
    rst $18
    ld c, a
    ld e, d
    sbc $da
    sbc [hl]
    db $dd
    sbc a
    push de
    sbc a
    add l
    ei
    add l
    ei
    ld c, c
    rst $30
    ld [hl+], a
    cp $dc
    db $ec
    jr nc, jr_00d_5577

    nop
    nop
    nop

jr_00d_554a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_5577:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_5582:
    nop
    nop
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

jr_00d_5591:
    ld [bc], a
    inc bc
    inc c
    rrca
    add hl, sp
    ld a, $63
    ld a, h
    add e
    db $fc
    add h
    db $fc
    ld hl, sp+$78
    and b
    and b
    jr nz, @-$5e

    dec a
    db $fd
    adc [hl]
    ld a, a
    pop hl
    ld e, $f9
    ld b, $00
    nop
    jr c, jr_00d_55e7

    ld c, b
    ld a, b
    cp b
    ret z

    ld [hl], h
    adc h
    ld a, [$cd06]
    inc bc
    jp RST_00


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
    ld [hl], b
    sub b
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_55e4:
    nop
    nop
    nop

jr_00d_55e7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld a, [hl-]
    dec sp
    inc h
    ccf
    add hl, de
    rra
    rlca
    ld hl, sp+$06
    ld hl, sp+$0c
    ldh a, [rNR23]
    ldh [$36], a
    ret nz

    ld a, h
    add b
    ccf
    ret nz

    rst $08
    ldh a, [$5f]
    nop
    jr @+$09

    ccf

jr_00d_5620:
    nop
    dec l

jr_00d_5622:
    nop
    ld l, h
    nop
    jp z, $da04

    inc b
    or d
    ld c, h
    db $e3
    nop
    ld [hl], e
    add b
    dec de
    ldh [$8b], a
    ld [hl], b
    rst $00
    jr c, jr_00d_5679

    inc a
    dec de
    ld a, h
    ld [hl], c
    cp $f0
    db $10
    ret nc

    jr nc, jr_00d_5620

    jr nz, jr_00d_5622

    jr nz, jr_00d_55e4

    ld h, b
    ret nz

    ld b, b
    or b
    ld [hl], b
    ret nc

    jr nc, jr_00d_564c

jr_00d_564c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_00d_5679:
    nop
    nop
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [$f00f], sp
    rst $38
    ldh a, [$1f]
    ldh [rIE], a
    jr nz, jr_00d_56ca

    di
    db $fc
    ld a, h
    rst $38
    cp a
    rst $28
    db $d3
    db $db
    ld d, l
    rst $18
    add hl, sp
    rst $28
    ld e, $ff
    rlca
    ld hl, sp+$66
    sbc c
    push de
    dec hl
    inc sp

jr_00d_56a0:
    rst $08
    or [hl]

jr_00d_56a2:
    adc $e5
    rst $18
    ld c, h
    cp a
    ei
    rlca
    add b
    nop
    pop af
    cp $f9
    xor $fb
    ld a, h
    or a
    cp b
    and e
    cp h
    ret nc

    rst $38
    sbc b
    rst $30
    cp $13

jr_00d_56bb:
    ldh a, [rNR10]
    ret nc

    jr nc, jr_00d_56a0

    jr nz, jr_00d_56a2

    jr nz, jr_00d_56bb

    scf
    ld a, [$3a2a]
    ld hl, sp+$2e

jr_00d_56ca:
    ld [$0000], a
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$60], a
    jr nc, jr_00d_56e9

    adc b
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

jr_00d_56e9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    ld [de], a
    ld e, $0a
    ld c, $05
    rlca
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    call z, $8ec8
    rst $38
    rst $38
    jp hl


    db $ec
    ld hl, sp-$02
    db $fc
    ei
    sbc $dd
    rst $08
    jp nc, $f15f

    ld e, a
    ldh [rP1], a
    call c, $ffe0
    ccf
    inc bc
    ld bc, $ffff
    ld h, $ff
    inc bc
    rst $38
    db $fc
    rst $38
    ld e, l
    dec a
    db $fd
    dec a
    ld a, $ff
    db $fd
    ld a, a
    ld a, a
    sbc $f8
    sub b
    ld sp, hl
    or b
    db $ed
    ret z

    ld b, a
    add $49
    ret


    adc l
    adc c
    rst $20
    and $67
    dec h
    rst $38
    ld e, b
    rst $38
    sbc b
    rst $38
    add sp, -$58
    xor b
    ld hl, sp-$58
    ldh a, [$d0]
    ldh a, [$30]
    ret z

    ret z

    ret z

    ld [$04c4], sp
    db $e4
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
    rlca
    ld b, $1f
    rra
    dec e
    db $10
    add hl, de
    db $10
    dec bc
    add hl, bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, a
    inc [hl]
    add a
    inc bc
    rst $20
    jp nz, $b4ff

    rst $38
    inc c
    di
    ld a, $3d
    ld a, a
    ld a, $7f
    ld sp, hl
    rst $10
    cp [hl]
    ld sp, $109f
    sbc a
    ld [$08ff], sp
    rst $38
    ld de, $23fe
    rst $18
    pop hl
    ld bc, $83fe
    db $fc
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    add hl, de
    rst $30
    and l
    rst $28
    and l
    rst $38
    sbc b
    rst $00
    add l
    rst $00
    add d
    cp $83
    cp $43
    rst $38
    and a
    ld a, a
    rst $18
    db $dd
    sbc [hl]
    nop
    ld a, $e8
    ld [$38f8], sp
    ld hl, sp-$08
    add h
    db $fc
    inc c
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    inc d
    db $fc
    dec de
    ld [de], a
    dec de
    ld [de], a
    inc de
    ld de, $1113
    inc sp
    ld [hl+], a
    ld [hl], $22
    ld h, $24
    ld h, h
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [de], a
    dec de
    ld [de], a
    inc de
    ld de, $1113
    inc sp
    ld [hl+], a
    ld [hl], $22
    ld h, $24
    ld h, h
    ld h, h
    add hl, de
    ld a, a
    ld b, $7f
    dec de
    ccf
    add hl, hl
    ld a, a
    ld d, $7f
    dec bc
    rst $38
    ld b, $ff
    inc b
    db $fd
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    add a
    rst $38
    ld b, c
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    rst $38
    nop
    cp $00
    ld hl, sp-$0f
    di
    rst $38
    db $e3
    rst $38
    add c
    rst $38
    ccf
    rst $38
    di
    rst $38
    nop
    ld a, [hl]
    ld bc, $03fe
    db $fd
    inc bc
    db $fd
    ld b, $fb
    ld a, [hl]
    ei
    adc $ff
    ld c, c
    ei
    sbc h
    rst $38
    rst $38
    rst $38
    ld b, $fc
    ld b, $fc
    ld h, $fc
    inc h
    db $fc
    inc h
    db $fc
    inc h
    cp $b8
    ld hl, sp-$40
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld h, b
    jr nz, jr_00d_5876

    jr nz, jr_00d_5888

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_5876:
    nop
    nop
    nop
    nop

Jump_00d_587a:
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
    rrca

jr_00d_5888:
    rrca
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    pop bc
    pop bc
    ld e, $00
    db $e3
    add b
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc bc
    ld [bc], a
    dec e
    dec e
    di
    ld a, [c]
    dec e
    nop
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    pop bc
    ld b, c
    rst $00
    ld b, [hl]
    rst $28
    cpl
    ld hl, sp+$18
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
    ld h, b
    sub b
    sub b
    ld l, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0108], sp
    ld bc, $0101
    rrca
    ld c, $1f
    db $10
    ld sp, $2f2e
    jr nc, jr_00d_5988

    ld b, b
    add e
    add b
    add a
    nop
    adc $00
    db $fd
    nop
    ld sp, hl
    nop
    ldh a, [rP1]
    ld [hl+], a
    nop
    ld a, a
    nop

jr_00d_591b:
    cp $00
    rst $38
    nop
    rst $28
    nop
    sbc l
    ld [bc], a
    ld a, [de]
    dec b
    ld a, [hl-]
    dec b
    db $76
    add hl, bc
    pop af
    ld c, $f0
    db $10
    db $fc
    inc c
    rst $38
    inc bc
    rst $30
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    jr jr_00d_591b

    jr jr_00d_5955

    inc c
    inc c
    inc b
    inc b
    add [hl]
    add [hl]
    add $46
    push bc
    ld b, l
    and $24
    db $e3
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

jr_00d_5955:
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
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc hl
    inc hl
    ld c, b
    ld b, b
    ld e, a
    ld b, e
    ld e, h
    ld b, h
    dec l
    dec h
    dec d
    dec d
    ld a, c
    ld b, b
    rst $38
    add b
    ld a, a
    nop
    ld hl, sp+$47
    or $89
    pop af
    adc d
    db $e3

jr_00d_5988:
    inc d
    db $e3
    inc d
    xor $10
    sbc h
    ld h, b
    ld a, b
    add b
    pop hl
    nop
    add e
    nop
    rst $20

jr_00d_5996:
    nop
    ld hl, sp+$07
    rst $38
    inc a
    or b
    ld c, a
    or a
    ld c, b
    jp c, $da24

    inc h
    xor d
    ld d, h
    ld e, d
    and h
    and a
    ld e, c
    xor a
    ld d, d
    xor b
    ld d, b
    ld d, l
    xor b
    xor c
    ld d, h
    dec hl
    ld d, h
    ld d, [hl]
    jr z, jr_00d_59cc

    jr z, jr_00d_5996

    and b
    cp $48
    ld h, b
    and b
    ld h, b
    and b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ld h, c
    ld hl, $22e2
    db $e4
    inc h
    nop

jr_00d_59cc:
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
    ld [$f408], sp
    db $f4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    ld h, $7b
    ld a, d
    ld b, e
    ld b, d
    and a
    and h
    rst $10
    sub h
    ld h, a
    ld h, h
    rlca
    inc b
    rlca
    inc b
    pop hl
    rla
    db $e3
    ld d, $c3
    daa
    db $d3
    inc l
    xor e
    ld d, h
    dec e
    ld [c], a
    ld a, l
    add d
    inc sp
    call z, Call_00d_43ff
    ld a, a
    db $fc
    rst $38
    rst $38
    cp e
    ld a, e
    and d
    ld a, [hl]
    cp [hl]
    ld e, h
    cp [hl]
    ld b, b
    sbc $20
    rst $18
    inc h
    rst $28
    sub c
    adc $22
    call Call_000_0687
    rst $00
    ld b, a
    nop
    nop
    nop
    ld bc, $ff18
    db $e4
    rst $38
    ld hl, sp-$01
    pop bc
    ld a, a
    ld b, c
    cp $22
    ld [hl], a
    ld hl, $40f7
    di
    ret nz

    ret


    ld c, c
    adc d
    adc d
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld h, h
    ld h, h
    rst $08
    add e
    ld a, h
    nop
    jp $1801


    jr jr_00d_5a5a

    inc c
    inc b
    inc b
    add [hl]
    add [hl]
    add $46
    push bc
    ld b, l
    and $24
    db $e3

jr_00d_5a5a:
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
    nop
    add b
    add b
    nop
    nop
    inc bc
    ld [bc], a

jr_00d_5a6d:
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    add b
    db $fc
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $18
    jr nc, jr_00d_5a6d

    inc l
    cp a
    ld [hl], a
    ld e, a
    rst $30
    rst $18
    rst $30
    sbc a
    rst $30
    rst $38
    ld sp, hl
    rst $38
    ld b, b
    dec bc
    ld de, $02c7
    rst $38
    add h
    rst $38
    db $fc
    rst $20
    push af
    rst $20
    cp $e7
    db $fc
    cp $7c
    ld hl, sp-$20
    sbc $f0
    sbc a
    ldh a, [rIE]
    ld a, b
    rst $18
    call nz, Call_000_033f
    ld a, a
    inc c
    cp $33
    rst $38
    ld [bc], a
    ld a, $05
    db $fd
    dec bc
    ld sp, hl
    scf
    di
    adc $cf
    dec a
    ccf
    ld sp, hl
    ld a, a
    pop af
    cp $a0
    cp $a0
    cp $a0
    cp $90
    db $dd
    sub c
    db $dd
    ld de, $0ada
    db $dd
    add hl, bc
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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
    add b
    add b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    dec b
    rlca
    dec b
    dec c
    dec c
    dec e
    add hl, de
    ld a, l
    ld l, b
    db $fd
    adc b
    rst $38
    ret nz

    rst $38
    inc a
    rst $38
    jp $fcff


    rst $38
    ccf
    rst $38
    rrca
    rst $38
    add c
    rst $38
    add c
    rst $38
    add b
    db $fc
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ccf
    ld bc, $7e7f
    rst $38
    add c
    rst $38
    ld a, d
    rst $38
    ld a, [$d4dc]
    cp $ec
    cp a
    di
    db $f4
    rst $08
    rst $00

jr_00d_5b2e:
    scf
    db $fd
    rst $08
    ld a, d
    scf
    sbc a
    dec bc
    rst $18
    adc e
    ld a, [hl]
    ld d, a
    db $fc
    ld l, a
    ld a, a
    pop hl
    rra
    pop af
    adc a
    ld hl, sp-$39
    cp $61
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld [hl], h
    rst $38
    cp $38
    rst $38
    ret nz

    db $fd
    nop
    or $00
    ld sp, hl
    add b
    db $fc
    add b
    cp $80
    rst $38
    ldh [rLCDC], a
    ld b, b
    ld b, b
    ld b, b
    or b
    jr nc, jr_00d_5b2e

    inc c
    ld a, d
    ld [bc], a
    dec a
    ld bc, $011d
    dec a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, $2e3f
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
    add b
    add b
    ld [hl], b
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
    ld a, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    rrca
    ld e, $16
    cpl
    ccf
    dec sp
    jr c, jr_00d_5c77

    ld h, a
    ld hl, sp-$68
    ld hl, sp+$78
    sbc b
    sbc c
    dec e
    ld e, $0b
    inc c
    adc h
    db $fc
    db $e3
    ld a, a
    rst $38
    rst $18
    ld sp, $0f3e
    ld h, b
    ccf
    add b
    dec sp
    ld b, h
    rlca
    sbc b

jr_00d_5c1b:
    inc a
    inc a
    ld a, [hl]
    ld b, d
    rst $38
    pop hl
    sbc $3f
    di
    rrca
    ld hl, sp+$07
    rst $30

jr_00d_5c28:
    ld [$00ff], sp
    rlca
    rlca
    ld a, e
    ld a, a
    cp h
    db $fc
    ret nz

    ret nz

    nop
    ret nz

    ret nz

    jr nc, jr_00d_5c28

    ld [$04f0], sp
    add h
    db $fc
    db $f4
    db $fc
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc e
    inc d
    inc e
    inc d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    ccf
    dec de
    ld e, $16
    rra
    dec l
    dec [hl]
    inc a
    inc h
    inc d
    inc e

jr_00d_5c77:
    ld [$0008], sp
    nop
    sub $d9
    ld h, c
    cp $a7
    cp h
    ld d, $1d
    dec de
    ld e, $0b
    ld c, $16
    dec e
    dec d
    rra
    rra
    jr nz, jr_00d_5c1b

    ld d, d
    ld a, [de]
    and h
    add b
    ld c, b
    nop
    adc d
    ld b, d
    sub l
    rst $20
    dec d
    db $ed
    rla
    rst $38
    nop
    rst $38
    nop
    ccf
    ld b, b
    ld h, a
    add b
    ld d, h
    add b
    sub d
    and h
    rst $28
    or h
    ld a, e
    sub $f8
    ld [bc], a
    ld hl, sp+$02
    db $76
    add c
    and [hl]
    ld b, c
    inc c
    inc hl
    ld a, h
    inc hl
    ld hl, sp+$17
    rst $10
    rst $38
    jr z, @+$3a

    jr z, jr_00d_5cf7

    jr z, jr_00d_5cf9

    ld d, b
    ld [hl], b
    ret nc

    ldh a, [$90]
    ldh a, [$a0]
    ldh [$c0], a
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
    ld [$1c08], sp
    inc d
    ld a, $3a
    nop
    nop
    nop
    nop
    nop

jr_00d_5ce0:
    nop
    nop

jr_00d_5ce2:
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
    ld bc, $0301
    ld [bc], a

jr_00d_5cf7:
    inc bc
    ld [bc], a

jr_00d_5cf9:
    inc sp
    ld [hl-], a
    dec d
    rra
    dec de
    rra
    dec bc
    rrca
    dec bc
    rrca
    adc d
    adc [hl]
    push hl
    ld h, a
    push hl
    daa
    jp Jump_00d_75c3


    sbc a
    dec de
    rst $38
    daa
    rst $38
    dec c
    ld sp, hl
    sbc a
    ei
    db $eb

jr_00d_5d16:
    ei
    jp c, Jump_00d_5fbb

    ld a, c
    jp nc, $ed7f

    ccf
    ld a, e
    sbc [hl]
    rst $10
    adc l
    call $c585
    add c
    push bc
    add c
    ret nz

    add b
    dec hl
    cp $cb
    cp $fb
    cp $6b
    ld a, [hl]
    ei
    cp $eb
    cp $3d
    rst $30
    rst $38
    rst $10
    ret nz

    ld b, b
    ld h, b
    jr nz, jr_00d_5ce0

    jr nz, jr_00d_5ce2

    jr nz, @-$1e

    jr nz, jr_00d_5d16

    ld [hl], b
    cp b
    add sp, $1e
    or $07
    rlca
    dec de
    ld e, $1b
    rla
    rrca
    rrca
    inc bc
    inc bc
    ld b, $06
    ld c, $0a
    inc a
    inc [hl]
    ret nz

    ld b, b
    ld b, b
    ret nz

    add b
    add b
    inc b
    inc b
    ld c, $0a
    rrca
    add hl, bc
    rlca
    ld b, $01
    ld bc, $2b3b
    dec [hl]
    cpl
    cpl
    ccf
    ld [hl], $36
    ld b, $06
    dec b
    rlca
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld h, b
    ld h, b
    ldh [$a0], a
    and b
    ld h, b
    and b
    ldh [$61], a
    ld h, c
    ld [bc], a
    ld [bc], a
    adc [hl]
    adc [hl]
    ld a, h
    ld [hl], h
    inc sp
    jr c, jr_00d_5dc2

    jr c, jr_00d_5dfb

    ld a, h
    rst $38
    rst $18
    rra
    ld de, $302f
    inc a
    inc hl
    ld e, b
    ld h, a
    ldh [rLCDC], a
    ld a, b
    jr c, @+$03

    jr z, jr_00d_5e07

    sbc e
    sub $ff
    db $fc
    ei
    ld a, e
    rst $08
    rst $38
    xor h
    db $dd
    scf
    cp d
    ld l, a
    ld [hl], c

jr_00d_5db0:
    rst $38
    rst $00
    rst $38
    ld a, a
    ld hl, sp-$04
    call nz, Call_000_04fe
    or $0c
    rra
    jp hl


    cp a
    add $7f
    pop bc

jr_00d_5dc1:
    rst $38

jr_00d_5dc2:
    ret nz

    ccf
    jr nz, jr_00d_5ddd

    db $10
    ld [$0f08], sp
    inc c
    ret c

    ret z

    or b
    jr nc, jr_00d_5db0

    ldh [$b0], a
    db $10
    ld a, [hl]
    adc [hl]
    dec a
    ld b, e
    rst $18
    jr nz, jr_00d_5dc1

    jr jr_00d_5ddc

jr_00d_5ddc:
    nop

jr_00d_5ddd:
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rrca
    inc c
    ei
    ldh a, [$e1]
    ld bc, $02fe
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    rlca
    dec b
    ld c, $0b

jr_00d_5dfb:
    ret c

    adc b
    ld a, h
    ld a, b
    db $f4
    call c, Call_000_3cee
    db $d3
    ld a, a
    xor [hl]
    pop af

jr_00d_5e07:
    ld e, a
    pop hl
    cp [hl]
    pop bc
    ld sp, hl
    ld b, a
    or c
    rst $08
    or e
    rst $08
    db $fc
    ld a, a
    ret nc

    ld l, a
    or b
    rst $08
    ld h, b
    sbc a
    and c
    rst $18
    rst $38
    ld c, d
    cp $13
    db $fc
    ld h, a
    ld sp, hl
    adc a
    ld [hl], b
    rst $38
    ld l, b
    rst $30
    ld hl, sp-$69
    db $fc
    inc sp
    call nz, $843c
    ld a, h
    inc b
    db $fc
    inc c
    ld hl, sp-$74
    ld hl, sp+$7e
    db $f4
    dec a
    add sp, $18
    ldh a, [rIF]
    ld b, $0d
    rlca
    ld b, $07
    dec b
    rlca
    ld c, $05
    ld a, e
    inc l
    rst $30
    ld e, b
    ld l, a

jr_00d_5e4a:
    jr nc, jr_00d_5e4a

    rlca
    ld [hl], a
    adc c
    cp e
    call nz, $e35d
    xor a
    ldh a, [$57]
    ld hl, sp-$55
    ld a, h
    rst $20
    inc a
    db $ec
    inc e
    ldh a, [$f0]
    cp h
    inc c
    adc $02
    call $ffc3
    ld sp, $0dee
    add $33
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    dec bc
    inc c
    rla
    jr jr_00d_5e9c

jr_00d_5e9c:
    nop
    nop
    nop
    nop
    nop
    pop hl
    pop hl
    dec de
    ei
    call $cb3e
    inc a
    rst $08
    jr c, jr_00d_5eac

jr_00d_5eac:
    nop
    nop
    nop
    nop
    nop
    add $c6
    db $ed
    xor e
    rst $38
    ld d, a
    rst $08
    ld sp, $03fd
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    sbc b
    ld hl, sp+$74
    adc h
    ld a, d
    add [hl]
    ld a, c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nc, jr_00d_5f6d

    ld h, b
    ld a, [hl]
    ld b, c
    sbc b
    rst $20
    add b
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    jr c, jr_00d_5f5a

    adc l
    ld a, b
    inc c
    ld hl, sp+$0c
    ld hl, sp+$0e
    ld hl, sp+$0f
    ld hl, sp+$0b
    db $fc
    dec bc
    db $fc
    dec [hl]
    ld a, [$03fe]
    ld e, d
    inc bc
    ld [bc], a
    inc bc

jr_00d_5f31:
    ld [bc], a
    inc bc
    ld d, $03
    sbc $03
    push af
    dec bc
    pop af
    rrca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_00d_5f31

    db $10
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    nop

jr_00d_5f5a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_5f6d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rla
    ld [hl], $20
    inc [hl]
    jr nz, @+$33

    jr nz, jr_00d_5fd3

    jr nz, jr_00d_5fcb

    ld a, [hl+]
    ld l, $3b
    add hl, de
    rra
    push bc
    xor $9a
    dec c
    ld a, [c]
    ccf
    cp l
    ld a, a
    ld l, d
    db $eb
    rst $18
    sbc $af
    cp [hl]
    db $e3
    sbc d
    or $0d
    ld a, [$7d07]
    add e
    inc sp
    rst $08
    db $fd
    db $fd
    rra
    rrca
    dec c
    rlca
    inc b
    dec b

Jump_00d_5fbb:
    db $eb
    pop af
    reti


    ld bc, $c0a3
    rst $10
    ldh [rOCPS], a
    ld [hl], l
    db $f4
    rst $38
    xor [hl]
    ei
    db $eb
    dec sp

jr_00d_5fcb:
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b

jr_00d_5fd3:
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    jr c, jr_00d_604c

    ld d, l
    ld l, a
    xor e
    rst $30
    sbc h
    rst $38
    ld h, d
    db $fd
    sbc a
    ldh [$7f], a
    add b
    cp $01
    sbc h
    ld c, $04
    sbc b
    ret c

    ldh [$7c], a
    ldh a, [$8a]
    db $fc
    rrca
    cp $91
    ld a, a
    nop
    rst $38
    dec bc
    ld [bc], a
    inc b
    inc bc
    nop
    ldh [$7f], a
    rra
    ld h, b
    ccf
    rst $18
    ld h, b
    ld l, a
    ldh a, [$9e]
    pop hl
    ld a, [hl-]
    inc de

jr_00d_603d:
    push de
    ld [hl], $fb
    db $fd

jr_00d_6041:
    dec b
    rst $38
    add e
    rst $38
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38

jr_00d_604b:
    and b

jr_00d_604c:
    ld h, b
    ldh [$e0], a
    jr nc, jr_00d_6041

    jr z, jr_00d_604b

    jr c, jr_00d_603d

    cp b
    add sp, $78
    add sp, $28
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $0b
    inc c
    rla
    jr @+$21

    db $10
    cpl
    jr nc, jr_00d_60b5

    jr nc, jr_00d_60bf

    jr c, jr_00d_60d5

    ld c, h
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
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
    ld bc, $03ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    rst $38
    cp [hl]
    pop bc
    cp h
    jp $837c


    ld a, h
    add e
    ld a, h
    add e

jr_00d_60b5:
    ld a, h
    add e
    cp [hl]
    pop bc
    cp [hl]
    pop bc
    nop
    rst $38
    nop
    rst $38

jr_00d_60bf:
    nop
    rst $38
    nop
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
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    inc c
    db $fc
    ld e, $f2

jr_00d_60d5:
    ld [hl-], a
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld h, e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    ld b, c
    ld b, c

jr_00d_6105:
    jr nz, jr_00d_6127

    jr nz, @+$22

    db $10
    db $10
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
    and [hl]
    rst $38
    rst $38
    ld e, c
    ld bc, $0400
    rst $38
    ld [$0cff], sp
    rst $38
    rra
    di
    jr nc, jr_00d_6105

    daa
    db $e3

jr_00d_6127:
    ld l, h
    call nz, $88c8
    ld e, [hl]
    pop hl
    ld e, a
    ldh [$ef], a
    or b
    xor a
    jr nc, jr_00d_6168

    dec de
    sbc e
    rrca
    call z, Call_00d_4684
    ld b, d
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, a
    ld bc, $e6ff
    cp $18
    jr jr_00d_6148

jr_00d_6148:
    nop
    nop
    nop
    ld b, c
    pop bc
    pop bc
    add c
    add c
    ld bc, $0103
    inc bc
    ld bc, $0202
    ld b, $02
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

jr_00d_6168:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_6194:
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    nop
    nop
    nop
    nop
    jr nc, jr_00d_61d1

    ld c, b
    ld c, b
    ld e, b
    ld c, b
    jr nc, jr_00d_61d7

    ld e, $1e
    inc hl
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
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_00d_61f1

jr_00d_61d1:
    ld h, b
    jr nz, jr_00d_6194

    ret nz

    nop
    nop

jr_00d_61d7:
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_61f1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    jr jr_00d_624b

    inc sp
    ld a, a
    ld b, b
    ld h, c
    ld b, b
    ldh [$80], a
    rst $28
    add b
    rst $18
    adc h
    ld a, [c]
    inc de
    and c
    ld hl, $4041
    ret nz

    ret nz

    jp $e740


    ld b, b
    or a
    ld h, c
    ld e, $ff
    daa
    ld hl, sp+$5f
    ldh [$80], a
    add b
    add b
    add b
    add b
    add b
    ld hl, sp-$08
    rla
    rst $28
    ld sp, $10ce
    rst $28
    sub c
    ld l, [hl]
    inc de
    ld de, $2021
    ld b, b
    ld b, b
    ld b, e
    ld b, b
    rst $00
    ret nz

    ld l, a
    ret nz

    ccf
    ldh [$9f], a
    ld [hl], c

jr_00d_624b:
    rra
    ld de, $a0bb
    ldh a, [rLCDC]
    db $fc
    ld b, b
    call c, $f360
    ld b, b
    sbc l
    ld hl, sp+$67
    and h
    add b
    add b
    ldh a, [rSVBK]
    ld hl, sp+$08
    inc e
    inc b
    ld c, $02
    and $02
    ld [c], a
    ld [bc], a
    di
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
    inc a
    jr nz, @+$3a

    jr nz, jr_00d_62f9

    ld b, b
    ld a, a
    ld b, b
    ld a, b
    ld b, a
    rst $20
    sbc b
    rst $28
    sub b
    adc $b1
    daa
    ld hl, $137f
    db $ed
    rra
    jp Jump_000_023e


    rst $38
    add d
    ld a, a
    ld b, e
    cp a
    ld b, d
    cp a
    rst $38
    add b
    rst $18
    nop

jr_00d_629f:
    sbc a
    nop
    rst $00
    nop
    rlc b
    rst $18
    add e
    xor [hl]
    inc b
    db $e4
    dec bc
    db $d3
    inc l
    rst $20
    jr jr_00d_629f

jr_00d_62b0:
    db $10
    db $db
    jr nc, jr_00d_629f

    ld sp, $7a69
    db $fd
    ld e, e
    ld [hl], l
    rst $18
    xor $1f
    di
    rrca
    db $f4
    inc c
    call $eb04
    rst $00
    pop af
    daa
    jr jr_00d_62b0

    jp hl


    or $ef
    inc h
    ld e, d
    cp l
    db $fc
    add e
    cp b
    rst $00
    ld bc, $03fe
    db $fc
    and e
    db $fc
    ld h, e
    db $fc
    di
    ld bc, $8177
    ld a, $c2
    inc e
    db $e4
    call c, $ee24
    ld [de], a
    adc a
    ld [hl], c
    dec bc
    pop af
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_62f9:
    nop
    nop
    call z, Call_00d_40b3
    ld a, a
    ld b, b
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    cp $24
    rst $20
    ld c, c
    rst $08
    adc e
    adc a
    ld a, [bc]
    ld c, $04
    inc b
    inc b
    inc b
    nop
    nop
    db $d3
    cpl
    rst $00
    ld a, $47
    cp l
    dec b
    db $fd
    add l
    db $fd
    cp c
    db $fd
    ld c, l
    ld a, l
    rst $30
    cp $bb
    rst $28
    rst $38
    or $72
    ld b, [hl]
    db $e4
    jp nz, $c0e2

jr_00d_6335:
    ld d, b
    ldh [rHDMA1], a
    ldh [$a0], a
    ret nz

    jp hl


    db $76
    or l
    cp d
    push af
    ld a, [$fbf4]
    or h
    rst $38
    sbc l
    ei
    rst $28
    ld a, d
    rst $38
    ld [de], a
    cp [hl]
    ld a, l
    db $e4
    daa
    db $e3
    inc hl
    and b
    ld h, b
    jr nz, jr_00d_6335

    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b
    ld d, $e2
    inc [hl]
    call nz, $c43c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_00d_63d4

    inc l
    ccf
    add $ff
    ld b, [hl]
    rst $38
    add hl, de
    db $fc
    cp d
    db $ec
    sub [hl]
    rst $38
    ld l, c
    rst $38
    ld h, b
    rst $38
    rlca
    rst $38
    rrca
    ld hl, sp+$3f
    ldh [$c2], a
    inc e
    ld [$9014], sp
    inc c
    xor c
    call nz, $f36d
    sbc a
    rst $38
    ei
    ld [hl], c
    pop af
    jr nz, jr_00d_6427

    rra
    ld h, a
    rra
    rst $18
    jr c, jr_00d_6441

    ldh [$bf], a
    pop bc
    rst $38
    ld b, d
    cp $8c
    cp $90
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ldh a, [$30]
    db $ec

jr_00d_63d4:
    call z, Call_000_048c
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
    rlca
    dec b
    rlca
    dec b
    rlca
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
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    pop bc
    rst $38
    pop bc
    rst $38
    ld b, c
    ld a, a
    ld hl, $213f
    ccf
    ld a, a
    ldh a, [$2f]
    and b
    add a
    add b
    rlca
    nop
    rlca
    nop

jr_00d_6425:
    rlca
    nop

jr_00d_6427:
    rrca
    nop
    rrca
    nop
    db $e3
    jr nz, jr_00d_6425

    jr nz, @+$01

    ld de, $0dfb
    rst $38
    rrca
    rst $30
    rra
    di
    rra
    pop hl
    ccf
    ld a, h
    ret nc

    ei
    di
    db $dd
    cp [hl]

jr_00d_6441:
    or a
    nop
    ld h, b
    and b
    jr c, jr_00d_6427

    rst $18
    ldh [rPCM34], a
    ld hl, sp+$08
    ld [$8898], sp
    ld [hl], b
    ret nc

    ldh [$60], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh a, [rSVBK]
    ld a, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_00d_64cd

    ld e, h
    ld a, h
    add a
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    ld h, b
    ld [hl], a
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
    ldh a, [$08]
    ld hl, sp+$07
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

jr_00d_64cd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, $0c
    inc c
    ld [$080c], sp
    inc b
    inc b
    nop
    nop
    ld bc, $7e01
    ld a, a
    call z, Call_000_0c86
    inc b
    jr jr_00d_6524

    jr jr_00d_6524

    jr nc, jr_00d_6536

    or b

jr_00d_651c:
    ei
    jr z, jr_00d_651c

jr_00d_651f:
    inc d
    cp $0a
    rst $38
    dec b

jr_00d_6524:
    ld a, a
    inc h
    cpl
    ld a, [hl+]
    rst $38
    ld a, a
    rst $18
    ld [bc], a
    rst $38
    ld bc, $007f
    xor a
    nop
    ld b, l
    nop
    sub l
    add b

jr_00d_6536:
    ld a, [$ff40]
    ldh [rIE], a
    ret nz

    ret nz

    jr nz, jr_00d_651f

    sub b
    ldh a, [$9f]
    rst $38
    ld c, a
    ld hl, sp+$4e
    ret c

    daa
    db $e4
    daa
    db $f4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    jr c, jr_00d_656f

    ld c, $06
    add [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_656f:
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    jr nc, @+$19

    ld [hl], b
    rla
    ld h, b
    scf
    ldh [$2f], a
    jp nz, $c46f

    rst $18
    add h
    rst $18
    add d
    cp a
    ld a, a
    ret nz

    ld a, b
    ret nz

    ldh a, [$80]
    ldh a, [$80]
    ld hl, sp-$10
    cp a
    rst $38
    rst $38
    db $fc
    rst $10
    or $f1
    rra
    dec [hl]
    rra
    ld a, [de]
    rrca
    ld a, [de]
    rrca
    scf
    dec e
    rst $30
    rst $38
    sbc a
    ld a, a
    jp hl


    dec a

jr_00d_65bb:
    daa
    db $fc
    inc de
    cp $93
    cp $91
    rst $38
    ld de, $50ff
    rst $38
    and b
    rst $38
    ldh [rIE], a
    adc h
    inc b
    ret c

    ld [$10f0], sp
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_00d_65bb

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    ld [$100b], sp
    rla
    jr nz, @+$31

    ld b, a
    ld e, a
    sbc b
    cp b
    ld bc, $017f
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld a, a
    db $fc
    sbc e
    sub b
    scf
    jr nz, jr_00d_669a

    call c, $de9c
    ld d, h
    sbc [hl]
    ld a, [$ac8c]
    ret nz

    ret nc

    ld h, c

jr_00d_6627:
    db $f4
    jr c, jr_00d_6627

    ld a, $3f
    rla
    scf
    rla
    dec b
    rla
    rra
    inc bc
    rrca
    nop
    adc $21
    db $dd
    inc bc
    scf
    rrca
    and b
    rst $38
    ldh [rIE], a
    and b
    ei
    ld b, b
    rst $30
    ld b, a
    rst $38
    sbc [hl]
    ld a, [$e1ff]
    rst $38
    ld bc, $e020
    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    jp nz, Jump_000_31fe

    ccf
    inc c
    rrca

jr_00d_6659:
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
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    ld bc, $0201
    ld [bc], a
    inc b
    dec b
    dec b
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc d
    inc d
    inc d
    inc d
    jr nz, @+$62

    ld b, b
    ret nz

    add c
    add c
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld h, a
    ld h, l
    sbc l
    sbc b
    ld [$6708], sp
    ld b, b
    rst $08
    add e
    sbc h
    inc c
    ld [hl], b
    jr nc, @-$3e

    ret nz

    ld c, $00
    cp a
    add b
    rst $38

jr_00d_669a:
    add b
    ld [$e56f], a
    rst $20
    ld [hl+], a
    inc hl
    pop af
    ld de, $0afb
    rst $38
    inc c
    di
    sub e
    db $e4
    rst $20
    db $db
    dec sp
    pop af
    pop af
    jp $04c2


    inc b
    sbc b
    sbc b
    ldh a, [$e0]
    inc hl
    jr nz, jr_00d_6659

    sub b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    jr nc, jr_00d_66e1

    ld [$047f], sp
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    and $26
    jp hl


    cpl
    or $9e
    sub b
    ldh a, [$50]
    ld d, b
    jr z, jr_00d_6709

jr_00d_66e1:
    jr z, jr_00d_670b

    inc d
    inc d
    inc d
    inc d
    inc d
    inc e
    inc d
    inc e
    inc d
    inc d
    ld a, [bc]
    ld c, $05
    rlca
    inc bc
    inc bc
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    add hl, de
    jr jr_00d_6739

    add hl, hl
    ld a, a
    ld d, d
    cp $e4
    call z, $8888
    ld [$080d], sp

jr_00d_6709:
    rrca
    dec b

jr_00d_670b:
    rst $38
    pop bc
    ld a, $e3
    call c, $ec36
    rra
    ld [$7e1b], a
    ccf
    cp $c3
    ld a, [hl]
    inc bc
    ld a, [hl+]
    db $ed
    rla
    ld a, e
    inc d
    rst $38
    ld [$08fe], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$efff], sp
    jp hl


    rla
    or $0f
    ld a, [hl]
    rlca
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    rst $38

jr_00d_6739:
    inc de
    ld a, [c]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1eff
    rst $30
    db $ec
    ccf
    inc b
    db $f4
    ld e, h
    ld a, [$ff4e]
    cpl
    ld sp, hl
    add hl, hl
    ld hl, sp-$18
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    inc d
    inc e
    jr jr_00d_6777

    jr nc, jr_00d_6791

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

jr_00d_6777:
    nop
    nop
    nop
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
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_6791:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_00d_680d

    ld a, b
    ld c, b
    ld hl, sp-$78
    ld hl, sp-$68
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    rlca
    dec b
    ld [bc], a
    inc bc
    inc b
    rlca
    ret nz

    ld b, b

jr_00d_680d:
    ldh [rNR41], a
    pop hl
    ld hl, $13f2
    rst $38
    ld a, a
    sub b
    ldh [rNR51], a
    ret nz

    ld c, [hl]
    add c
    nop
    nop
    ccf
    ccf
    ldh a, [$cf]
    sub b
    rrca
    ld h, b
    sbc a
    ret nz

    rst $38
    and b
    ld a, a
    nop
    rst $38
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    dec bc
    di
    dec b
    ld hl, sp+$02
    db $fc
    inc b
    ld hl, sp-$10
    db $fc
    ld bc, $0101
    ld bc, $0203
    inc bc
    ld [bc], a
    add a
    add h
    rst $00
    ld b, l
    ld l, a
    add hl, hl
    ld l, a
    ld a, [hl+]
    add sp, $28
    add sp, $28
    ret z

    ld c, b
    ret z

    ld c, b
    ret nc

    sub b
    ret nc

    db $10
    sub b
    db $10
    and b
    jr nz, jr_00d_685c

jr_00d_685c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rla
    rra
    dec bc
    ld a, [bc]
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    dec b
    rlca
    dec b
    rlca
    sbc b
    add a
    sub h
    inc bc
    adc c
    ld h, $8e
    ld b, b
    ld b, l
    adc c
    pop hl
    sub c
    add hl, sp
    pop hl
    cpl
    pop af
    nop
    rst $38
    nop
    rst $38
    push bc
    ld a, [hl]
    xor d
    cp $2b
    rst $38
    dec de
    rst $38
    ld l, l
    rst $38
    and [hl]
    pop bc
    inc l
    adc $76
    add e
    add [hl]
    inc bc
    dec b
    ld c, e
    add hl, de
    daa
    ld h, d
    ccf
    and d
    rst $38
    and d
    rst $38
    rst $18
    ld [hl-], a
    sbc a
    ld [hl], h
    rra
    db $f4
    ccf
    add sp, $3f
    add sp, -$41
    pop af
    cp [hl]
    ld a, [c]
    cp h
    db $f4
    and b
    jr nz, jr_00d_690e

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    rlca
    dec b
    rlca
    rlca
    rlca
    ld a, [bc]
    ld a, [bc]
    sub h
    sub h
    ld d, h
    ld d, h
    or h
    inc h
    sbc [hl]
    ld [hl+], a
    ld [hl+], a
    rst $38
    ld a, [hl+]

jr_00d_690e:
    rst $38
    xor c
    rst $38
    and l
    rst $38
    ld d, e
    ld e, [hl]
    ld a, [de]
    ld e, $1e
    ld d, $0f
    ld a, [bc]
    jp $c381


    add c
    ld [c], a
    pop bc
    ld b, e
    ld h, c
    pop hl
    pop hl
    pop hl
    ldh [$b0], a
    ldh [rSVBK], a
    ldh [rDMA], a
    rst $38
    ld [$fbff], a
    cp a
    ld e, [hl]
    ld e, [hl]
    ld a, e
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld c, e
    ld a, [hl]
    dec e
    dec sp
    cp b
    ld hl, sp-$38
    ret z

    ld b, h
    ld b, h
    add h
    add h
    add h
    add h
    call nz, $c884
    adc b
    ld hl, sp+$58
    nop
    nop

jr_00d_694d:
    nop
    nop
    rlca
    rlca
    add hl, bc
    ld [$080b], sp
    ld b, $05
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld b, b
    ld b, b
    and b
    and b
    or b
    sub b
    or b
    ld d, b
    jr jr_00d_694d

    inc e
    db $e4
    ld [$10f8], sp
    ldh a, [$03]
    inc bc
    rlca
    inc b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld h, h
    sbc h
    call nz, $823c
    ld a, [hl]
    inc bc
    db $fd
    db $fd
    cp $04
    rlca
    inc bc
    inc bc
    ld bc, $0501
    ld b, $0d
    ld c, $16
    rla
    ld [hl], e
    ld [hl], c
    add e
    add b
    ld b, e
    jp $868d


    rra
    inc b
    ld hl, sp+$00
    ldh [rNR10], a
    db $e4
    ld a, [bc]
    or h
    ret nz

    db $ed
    ld [hl], b
    rst $38
    sbc a
    ld h, h
    rst $38
    xor a
    ld a, a
    ccf
    inc bc
    dec bc
    rlca
    dec d
    dec c
    ld e, b
    jr c, jr_00d_6a31

    db $fd
    and a
    cp $43
    ld a, [$fcfd]
    db $ec
    db $f4
    inc b
    db $fc
    rlca
    rst $38
    ld hl, sp-$01
    ret z

    rrca
    cp $0f
    ld h, c
    ld bc, $0027
    ld b, $05
    inc e
    rra
    ld hl, sp-$19
    ld b, e
    cp a
    inc h
    db $fc
    ld e, b
    ret c

    add b
    add b
    ld b, c
    ld b, c
    ld h, b
    ldh [$80], a
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_00d_6a0b

    nop
    nop
    nop
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
    inc bc
    inc bc
    rrca
    inc c
    ld e, $11
    inc [hl]
    inc hl
    ld l, b
    ld b, a
    pop de
    adc a
    and d
    rra
    ld b, h
    ccf

jr_00d_6a0b:
    sbc e
    inc c
    rst $38
    add sp, $57
    ret c

    cp [hl]
    sub c
    db $fc
    db $d3
    ld [hl], c
    rst $38
    ld a, [hl]
    rst $18
    ld a, [$d78d]
    dec sp
    xor [hl]
    ld [hl], e
    ccf
    ld [c], a
    dec sp
    and $33
    xor $e2
    rst $38
    rra
    rst $38
    inc a

Call_00d_6a2a:
    rst $20
    dec a
    call nz, $04fc
    db $fc
    inc b

jr_00d_6a31:
    ret z

    jr c, jr_00d_6a3c

    ld hl, sp+$09
    ld hl, sp+$09
    ld hl, sp-$35
    ld hl, sp+$03

jr_00d_6a3c:
    nop
    ld bc, $1000
    nop
    sbc b
    nop
    sbc h
    nop
    sbc [hl]
    nop
    rst $08
    inc c
    rst $28
    ld c, a
    and c
    ld hl, $40c0
    and b
    ldh [$f0], a
    ld d, b
    ld e, b
    ld l, b
    ld c, h
    ld [hl], h
    ld h, [hl]
    ld a, [hl-]
    and e
    dec a
    jr nz, jr_00d_6a7d

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_6a7d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    ld a, [bc]
    ld c, $0e
    ld a, [bc]
    rlca
    dec b
    rlca
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    ld b, $09
    ld [$1116], sp
    nop
    nop
    nop
    nop

jr_00d_6aaf:
    nop
    nop
    ld a, a
    ld a, a
    and b
    sbc a

jr_00d_6ab5:
    ld b, b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_00d_6ab5

    jr jr_00d_6aaf

    inc c
    db $f4
    ld c, $f2
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    xor e
    and h
    or h
    xor c
    ld l, b
    db $d3
    db $d3
    db $e4
    push bc
    xor b
    ld [$daca], a
    jp nc, $d4bd

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
    rst $38
    dec l
    xor l
    xor h
    xor [hl]
    xor h
    ld a, [bc]
    ld a, [c]
    dec b
    ld sp, hl
    dec e
    pop hl
    ld b, $f0
    and d
    ld d, b
    ld c, [hl]
    ld c, b
    xor c
    xor [hl]
    db $fd
    and [hl]
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
    ld b, b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $e601
    cp l
    push hl
    ccf
    and a
    ld a, a
    xor a
    ld a, e
    sbc a
    ld [hl], b
    cp a
    ld a, a
    ld l, [hl]
    cp $e7
    xor l
    db $eb
    xor [hl]
    ld a, a
    db $eb
    rst $28
    ld a, [$55ff]
    push af
    and h
    call nc, $ddbd
    push af

jr_00d_6bb9:
    or h
    push af

jr_00d_6bbb:
    db $fd
    or $fc
    ld l, a
    cp b
    rst $08
    ld a, a
    cp a
    cp $ff
    sub $df
    or $7f
    ld a, [hl]
    ld c, e
    ld b, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    jr nz, @-$1e

    jr nz, jr_00d_6bb9

    jr nz, jr_00d_6bbb

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    inc b

jr_00d_6c14:
    rlca
    inc b
    rlca
    ld a, [bc]
    dec c
    ld c, $09
    and l
    xor l
    and a
    xor d
    inc d
    cp [hl]
    cp l
    sbc [hl]
    sub a
    adc a
    rst $08
    add c
    or $8f
    sbc e
    db $fc
    or $32

jr_00d_6c2d:
    db $d3
    pop af

jr_00d_6c2f:
    pop af
    jr nz, jr_00d_6c14

    ld c, h
    push bc
    add b
    xor $f1
    ld e, a
    rst $38
    jp nc, Jump_00d_7e6d

    scf
    dec sp
    rrca
    push af
    rst $38
    add sp, $1f
    cp b

Call_00d_6c44:
    ld a, a
    ld hl, sp-$11
    ld a, [hl-]
    rst $38
    ld a, [hl+]
    rst $38
    jr nz, jr_00d_6c2d

    jr nz, jr_00d_6c2f

    jr nz, @-$1e

    sub b
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$50]
    ldh a, [rOBP0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec de
    dec h
    dec sp
    jr z, jr_00d_6cc8

    ld c, b
    ld [hl], a
    ld d, b
    ld l, a
    sub b
    rst $28
    and c
    rst $18
    and c
    rst $18
    scf
    ld hl, sp+$5e
    ld hl, sp-$5b
    cp $d3
    rst $38
    add l
    cp $8e
    ld sp, hl
    ld a, [de]
    pop af
    dec [hl]
    db $e3
    ld l, l
    inc sp
    sbc $7f
    adc b
    rst $38
    sbc h
    ld a, e
    ld a, $e9
    ld a, l
    ret z

    db $ed
    add h
    add [hl]
    inc b
    rst $10
    rst $38
    cp a
    reti


    cp d
    di
    ld h, d
    jp $c373


    ld d, [hl]
    or $38

jr_00d_6cc8:
    ldh a, [$ab]
    ld a, c
    ld c, b
    ld hl, sp+$48
    ld hl, sp+$54
    db $fc
    call nc, $d4fc
    ld a, h
    ld [hl], d
    ld a, [hl]
    ld l, d
    ld l, $e9
    rst $28
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_6cea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and c
    rst $18
    and c
    rst $18
    sub d
    rst $28
    ld b, h
    ld a, a
    dec sp
    scf
    inc c
    inc c
    nop
    nop
    nop
    nop
    scf
    ld [c], a
    ld [hl], $e2
    ld [hl], $f2
    ei
    ld a, [c]
    ld e, d
    ld a, e
    ld e, e
    ld a, c
    cp e
    ld sp, hl
    xor e
    ld sp, hl
    ld h, $04
    ld h, $04
    adc [hl]
    inc h
    cp l
    jr z, jr_00d_6cea

    add hl, de
    cp a
    rra
    ld l, b
    scf
    pop de
    ld l, a
    sbc [hl]
    ld a, e
    xor h
    ld a, a
    xor h
    ld a, a
    ld d, h
    rst $38
    xor h
    rst $30
    ld d, [hl]
    rst $28
    sbc c
    cp $62
    db $fd
    ld a, [de]
    cp $14
    db $f4
    sub b
    ld [hl], b
    ld c, b
    cp b
    ld e, b
    cp b
    ret z

    jr c, jr_00d_6d7c

    call c, $fc04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_6d7c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add hl, bc
    rrca
    rrca
    ld [$0000], sp
    inc e
    inc e
    ld [de], a
    ld e, $1d
    inc de
    ld l, $31
    ld e, a
    ld h, b
    or e
    ret nz

    jp Jump_000_2100


    ccf
    rra
    ld e, $05
    dec b
    inc b
    dec b
    cp h
    cp a

jr_00d_6db5:
    ld [hl], c
    cp $87
    ld a, b
    sbc a
    ld h, b
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ld b, b
    ret nz

    jr nc, jr_00d_6db5

    sbc h
    ld a, h
    add $3e
    pop bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0c0b], sp
    rlca
    inc b
    rlca
    inc b
    dec b
    ld b, $03
    ld [bc], a
    dec c
    ld c, $0b
    inc c
    rst $00
    nop
    adc $01
    ret c

    rlca
    pop de
    ld c, $e3
    inc e
    jp nz, $d83c

    ld a, $8e
    ld a, a
    ld a, [$1800]
    ldh [$fc], a
    nop
    or h
    nop
    ld [hl], $00
    ld d, e
    jr nz, jr_00d_6e93

    jr nz, @+$4f

    ld [hl-], a
    ldh [$1f], a
    ld h, b
    rra
    jr nc, jr_00d_6e50

    jr jr_00d_6e4a

    ld l, h
    inc bc
    ld a, $01
    db $fc
    inc bc
    di

jr_00d_6e4a:
    rrca
    add b
    add b
    add b
    add b
    add b

jr_00d_6e50:
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    ld e, h
    call c, $fc24
    sbc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $0c
    ld [$1111], sp
    rrca
    ld [$0c0b], sp
    rlca
    inc b
    rlca
    inc b

jr_00d_6e93:
    rst $28
    db $ec
    ld e, a
    ld d, h
    ld e, h
    rra
    ld [hl], h
    ld d, a
    adc a
    ld a, a
    sbc a
    ld [hl], a
    rst $18
    ld a, $ed
    dec e
    push bc
    dec a
    dec bc
    rst $38
    add hl, de
    rst $28
    ld a, a
    ret z

    ld h, [hl]
    sbc c

jr_00d_6ead:
    xor e
    call nc, $f3cc

jr_00d_6eb1:
    ld l, l
    ld [hl], e
    and a
    ei
    ld [hl-], a
    db $fd
    rst $18
    ldh [rSB], a
    nop
    rst $08
    ccf
    ld a, $ff
    db $fd
    rst $30
    set 3, e
    xor d
    ei
    sbc h
    rst $30
    ld a, b
    rst $38
    ldh [$1f], a
    jr nz, jr_00d_6ead

    jr nz, @-$1e

    jr nz, jr_00d_6eb1

    db $10
    ldh a, [rIF]
    rst $38
    rrca
    ld hl, sp+$07
    rst $38
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
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_6eee:
    nop
    nop
    nop
    nop
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
    dec d
    rra
    dec d
    rrca
    dec bc
    rrca
    inc c
    inc de
    inc de
    inc de
    db $10
    inc hl
    jr nz, jr_00d_6f31

    jr nz, jr_00d_6eee

    ld h, e
    sub d
    sub e
    or c
    sub c
    rst $20
    ld h, a
    and $a4
    rst $38
    ld a, [de]
    rst $38
    add hl, de
    rst $38
    rla
    cp d
    cp h
    cp a
    cp h
    ld a, h
    rst $38
    cp a
    cp $fe
    ld a, e
    rra
    add hl, bc
    sbc a
    dec c
    or a
    inc de
    rlca
    nop
    dec sp
    rlca
    rst $38
    db $fc

jr_00d_6f31:
    ret nz

    add b
    rst $38
    rst $38
    ld h, h
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    ld [hl], c
    rst $38
    rst $38
    sub a
    scf
    rra
    ld a, a
    ccf
    rst $18
    ld a, e
    cp e
    di
    ld c, e
    ld a, [$fa8f]
    adc b
    ld hl, sp+$48
    ld a, b
    ld d, b
    ld [hl], b
    and b
    ldh [$c0], a
    ret nz

    nop
    nop
    ldh [$e0], a
    inc sp
    inc de
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    ret c

    ld c, b
    ret c

    ld c, b
    ret z

    adc b
    ret z

    adc b
    call z, Call_00d_6c44
    ld b, h
    ld h, h
    inc h
    ld h, $26
    rla
    db $10
    rra
    inc e
    rra
    rra
    ld hl, $303f
    ccf
    jr nz, jr_00d_6fd6

    jr nc, jr_00d_6fd8

    jr z, jr_00d_6fda

    db $e3
    and c
    db $e3
    ld b, c
    ld a, a
    pop bc
    ld a, a
    jp nz, $e5ff

jr_00d_6fa5:
    cp $fb
    cp e
    ld a, c
    nop
    ld a, h
    add b
    ld a, a
    pop bc
    ccf
    rst $38
    ld c, $ff
    nop
    rst $38
    sbc b
    rst $28
    and l
    rst $30
    and l
    rst $38
    add hl, de
    sbc a
    db $eb
    ld a, l
    adc h
    ld sp, hl
    ld [$10f9], sp
    rst $38
    db $10
    rst $38
    adc b
    ld a, a
    call nz, $87fb
    cp $2c
    pop hl
    ret nz

    rst $20
    ld b, e
    rst $38
    dec l
    rst $38
    jr nc, jr_00d_6fa5

jr_00d_6fd6:
    ld a, h
    cp h

jr_00d_6fd8:
    cp $7c

jr_00d_6fda:
    cp $e0
    ld h, b
    ld hl, sp-$08
    cp b
    ld [$0898], sp
    ret nc

    sub b
    ret nc

    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $04
    inc b
    inc b
    inc c
    ld [$0808], sp
    add hl, sp
    rst $38
    rst $38
    rst $38
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, h
    ccf
    inc h
    ccf
    inc h
    ccf
    inc h

jr_00d_701a:
    ld a, a
    nop
    ld a, [hl]
    add b
    ld a, a
    ret nz

    cp a
    ret nz

    cp a
    ld h, b
    rst $18
    ld a, [hl]
    rst $18
    ld [hl], e
    rst $38
    sub d
    rst $18
    rst $38
    nop
    ld a, a
    nop
    rra
    adc a
    rst $08
    rst $38
    rst $00
    rst $38
    add c
    rst $38
    db $fc
    rst $38
    rst $08
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    pop hl
    rst $38
    add d
    rst $38
    inc bc
    rst $38
    ld b, $ff
    sbc b
    cp $60
    cp $d8
    db $fc
    sub h
    cp $68
    cp $d0
    rst $38
    ld h, b
    rst $38
    jr nz, jr_00d_701a

    ret c

    ld c, b
    ret c

    ld c, b
    ret z

    adc b
    ret z

    adc b
    call z, Call_00d_6c44
    ld b, h
    ld h, h
    inc h
    ld h, $26
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $09
    add hl, bc
    ld d, $16
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8301
    add d
    db $e3
    ld h, d
    rst $30
    db $f4
    rra
    jr jr_00d_70ac

jr_00d_70ac:
    nop
    nop
    nop
    ldh [$e0], a
    ret nz

    ld b, b
    cp b
    cp b
    rst $08
    ld c, a
    cp b
    nop
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_00d_70fb

    ld b, h
    ld b, h
    add e
    add e
    ld a, b

jr_00d_70c8:
    nop
    rst $00
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld h, b
    jr nz, jr_00d_70c8

    ldh a, [rNR10]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_70fb:
    nop
    nop
    nop
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
    jr jr_00d_7125

    jr nc, jr_00d_713f

    jr nz, jr_00d_7131

    ld h, c
    ld h, c
    ld h, e
    ld h, d
    and e
    and d
    ld h, a
    inc h
    rst $00
    call nz, $080f
    ccf
    jr nc, @+$01

    ret nz

    rst $28
    nop
    sbc a
    nop

jr_00d_7125:
    rra
    nop
    rrca
    nop
    jr jr_00d_7132

    ld a, a
    nop
    rst $38
    nop
    rst $30
    nop

jr_00d_7131:
    cp c

jr_00d_7132:
    ld b, b
    ld e, b
    and b
    ld e, h
    and b
    ld l, [hl]
    sub b
    adc a
    ld [hl], b
    pop bc
    ld bc, $00e1

jr_00d_713f:
    ld [hl], e
    nop
    cp a
    nop
    sbc a
    nop
    rrca
    nop
    ld b, h
    nop
    cp $00
    db $10
    db $10
    add b
    add b
    add b
    add b
    ldh a, [rSVBK]
    ld hl, sp+$08
    adc h
    ld [hl], h
    db $f4
    inc c
    ld a, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $10
    db $10
    cpl
    cpl
    ld b, $05
    ld b, $05
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    add [hl]
    add h
    ld b, a
    ld b, h
    daa
    inc h
    dec d
    ld a, [bc]
    xor d
    dec d
    sub l
    ld a, [hl+]

jr_00d_71a1:
    call nc, Call_00d_6a2a
    inc d
    ld l, b
    inc d
    ld a, e
    dec b
    ld a, a
    ld [de], a
    dec c
    ld a, [c]
    db $ed
    ld [de], a
    ld e, e
    inc h
    ld e, e
    inc h
    ld d, l
    ld a, [hl+]
    ld e, d
    dec h
    push hl
    sbc d
    push af
    ld c, d
    ld [hl], a
    ld [$0639], sp
    ld e, $01
    add a
    nop
    pop bc
    nop
    rst $20
    nop
    rra
    ldh [rIE], a
    inc a
    sbc [hl]
    ld [bc], a
    rst $38
    ld bc, $00fe
    rra
    ld [c], a
    ld l, a
    sub c
    adc a
    ld d, c
    rst $00
    jr z, jr_00d_71a1

    jr z, jr_00d_71dc

jr_00d_71dc:
    nop
    jr c, jr_00d_7217

    call nz, $12c4
    ld [bc], a
    ld a, [$3ac2]
    ld [hl+], a
    or h
    and h
    xor b
    xor b
    nop
    nop
    nop
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
    jr jr_00d_7215

    jr nc, jr_00d_722f

    jr nz, jr_00d_7221

    ld h, c
    ld h, c
    ld h, e
    ld h, d
    and e
    and d
    ld h, a
    inc h
    rst $00
    call nz, $9293
    ld d, c
    ld d, c
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld h, $26

jr_00d_7215:
    di
    pop bc

jr_00d_7217:
    ld a, $00
    jp DMA_COPY_HIGH_RAM


    daa
    rst $38
    rra
    rst $38
    add e

jr_00d_7221:
    cp $82
    ld a, a
    ld b, h
    xor $84
    rst $28
    ld [bc], a
    rst $08
    inc bc
    ei
    inc h
    rst $30
    adc c

jr_00d_722f:
    ld [hl], e
    ld b, h
    or e
    pop hl
    ld h, b
    db $e3
    ld [c], a
    nop
    nop
    nop
    add b
    jr @+$01

    jp nz, Jump_000_3ffe

    rst $38
    rst $38
    db $dd
    sbc $45
    ld a, [hl]
    ld a, l
    ld a, [hl-]
    ld a, l
    ld [bc], a
    ld a, e
    inc b
    add a
    add sp, -$39
    ld l, b
    jp $cbe4


    inc [hl]
    push de
    ld a, [hl+]
    cp b
    ld b, a
    cp [hl]
    ld b, c
    call z, $e433
    ld h, h
    sbc $5e
    jp nz, $e542

    dec h
    db $eb
    add hl, hl
    and $26
    ldh [rNR41], a
    ldh [rNR41], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $7f01
    dec b
    ld a, a
    dec b
    ld a, a
    dec b
    ld a, a
    add hl, bc
    cp e
    adc c
    cp e
    adc b
    ld e, e
    ld d, b
    cp e
    sub b
    rst $38
    ld b, b
    ld a, h
    and b
    cp a
    ret nc

    sbc a
    db $ec
    rst $08
    ld [hl], e
    di
    cp h
    db $fc
    sbc a
    cp $8f
    rra
    rlca
    ld a, e
    rrca
    ld sp, hl
    rrca
    rst $38
    ld e, $fb
    inc hl
    db $fc
    ret nz

    cp $30
    ld a, a
    call z, $88d0
    db $e3
    ld b, b
    rst $38
    ld hl, $3fff
    rst $20
    xor a
    rst $20
    ld a, a
    rst $20
    ccf
    ld a, a
    ld a, $fb
    inc c
    ei
    inc [hl]
    db $fd
    xor $fa
    rst $28
    ei
    rst $28
    ld sp, hl
    rst $28
    rst $38
    sbc a
    rst $38
    ld [bc], a
    rst $30
    ld [$00ff], sp
    rst $38
    ld bc, $c13f
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $40c0
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
    add b
    add b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    inc c
    inc sp
    jr nc, @+$60

    ld b, b
    cp h
    add b
    cp b
    add b
    cp h
    add b
    ld a, a
    inc e
    rst $38
    inc bc
    cp a
    nop
    ld l, a
    nop
    sbc a
    ld bc, $013f
    ld a, a
    ld bc, $07ff
    cp $87
    ld hl, sp-$71
    pop af
    rra
    db $e3
    ld a, a
    add [hl]
    rst $38
    ld a, $ff
    ld e, $ff
    ld l, $ff
    cpl
    di
    db $e3
    db $ec
    cp a
    di
    ld e, [hl]
    db $ec
    ld sp, hl
    ret nc

    ei
    pop de
    ld a, [hl]
    ld [$f63f], a
    db $fc
    add b
    cp $7e
    rst $38
    add c
    rst $38
    ld e, [hl]
    rst $38
    ld e, a
    dec sp
    dec hl
    ld a, a
    scf
    db $fd
    rst $08
    rst $38
    ld bc, $013f
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    inc bc
    rst $38
    inc a
    rst $38
    jp Jump_000_3fff


    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    add c
    rst $38
    add c
    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [$a0], a
    ldh [$a0], a
    or b
    or b
    cp b
    sbc b
    cp [hl]
    ld d, $bf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    inc b
    nop
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
    rst $38
    nop
    nop
    nop
    ld a, a
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
    rst $38
    nop
    nop
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
    rst $38
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
    add b
    nop
    ldh [rP1], a
    jr nz, jr_00d_73c9

jr_00d_73c9:
    or b
    nop
    add hl, bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    sub b
    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    ld a, h
    ld a, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, d
    ld h, d
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld a, [hl]
    ld a, [hl]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    nop
    nop
    ld b, d
    ld b, d
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    jr jr_00d_744b

    jr jr_00d_744d

    jr jr_00d_744f

    jr jr_00d_7451

    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    nop
    nop

jr_00d_744b:
    ld a, h
    ld a, h

jr_00d_744d:
    ld h, d
    ld h, d

jr_00d_744f:
    ld h, d
    ld h, d

jr_00d_7451:
    ld a, h
    ld a, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    nop
    nop
    jr jr_00d_7475

    jr c, jr_00d_7497

    jr jr_00d_7479

    jr jr_00d_747b

    jr jr_00d_747d

    jr jr_00d_747f

    inc a
    inc a
    nop
    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop

jr_00d_7475:
    ret nc

    nop
    ret nc

    nop

jr_00d_7479:
    ret nc

    nop

jr_00d_747b:
    dec bc
    nop

jr_00d_747d:
    dec bc
    nop

jr_00d_747f:
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    add hl, bc
    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop

jr_00d_7497:
    ret nc

    nop
    sub b
    nop
    dec c
    nop
    inc b
    nop
    rlca
    nop
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
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    cp $00
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
    or b
    nop
    jr nz, jr_00d_74df

jr_00d_74df:
    ldh [rP1], a
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
    ld bc, $0700
    nop
    inc b
    nop
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
    rst $38
    nop
    nop
    nop
    ld a, a
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
    rst $38
    nop
    nop
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
    rst $38
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
    add b
    nop
    ldh [rP1], a
    jr nz, jr_00d_753a

jr_00d_753a:
    or b
    nop
    add hl, bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    sub b
    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld b, $06
    inc c
    inc c
    jr jr_00d_758d

    jr nc, jr_00d_75a7

    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    dec bc

jr_00d_758d:
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    add hl, bc
    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

jr_00d_75a7:
    nop
    ret nc

    nop
    sub b
    nop
    dec c
    nop
    inc b
    nop
    rlca
    nop
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
    nop
    nop
    nop
    rst $38

Jump_00d_75c3:
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
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop

Jump_00d_75d7:
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    cp $00
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
    or b
    nop
    jr nz, jr_00d_75f0

jr_00d_75f0:
    ldh [rP1], a
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
    cp $fe
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    cp $fe
    nop
    nop
    ld e, $1e
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld b, d
    inc b
    inc b
    ld [$3008], sp
    jr nc, jr_00d_761c

jr_00d_761c:
    nop
    ld a, h
    ld a, h
    inc b
    inc b
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr z, jr_00d_7651

    add $c6
    ld [bc], a
    ld [bc], a
    and d
    and d
    db $fc
    db $fc
    add h
    add h
    add h
    add h
    inc b
    inc b
    ld [$7008], sp
    ld [hl], b
    add b
    add b
    and d
    and d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$0008], sp
    nop
    ld b, $06
    jr c, jr_00d_7689

jr_00d_7651:
    ld [$7e08], sp
    ld a, [hl]
    ld [$0808], sp
    ld [$3030], sp
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
    db $10
    db $10
    db $10
    db $10
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$7008], sp
    ld [hl], b
    dec b
    dec b
    dec b
    dec b
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], d
    ld [hl], d
    ld [bc], a
    ld [bc], a
    inc b
    inc b

jr_00d_7689:
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00d_76b3

    ld a, h
    ld a, h
    inc h
    inc h
    jr z, jr_00d_76c1

    jr nz, @+$22

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
    add h
    add h
    add h
    add h

jr_00d_76b3:
    add h
    add h
    inc b
    inc b
    ld [$3008], sp
    jr nc, jr_00d_76bc

jr_00d_76bc:
    nop
    db $10
    db $10
    ld a, [hl]
    ld a, [hl]

jr_00d_76c1:
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld b, [hl]
    ld b, [hl]
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    inc b
    inc b
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
    jr nz, jr_00d_76ff

    ld a, $3e
    ld b, h
    ld b, h
    inc b
    inc b
    inc b
    inc b
    ld [$1008], sp
    stop
    nop
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld [$0808], sp
    ld [$1010], sp
    jr nz, jr_00d_771b

    nop
    nop
    nop
    nop

jr_00d_76ff:
    nop
    nop
    ld [$1008], sp
    db $10
    jr nc, @+$32

    ld d, b
    ld d, b
    db $10
    stop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld [$0808], sp
    ld [$0808], sp
    ld [$7f08], sp
    ld a, a

jr_00d_771b:
    nop
    nop
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    dec d
    dec h
    dec h
    ld h, $26
    ld b, h
    ld b, h
    ld bc, $3d01
    dec a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld [$0808], sp
    ld [$1010], sp
    jr nz, jr_00d_775b

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    inc b
    inc b
    ld [$1808], sp
    jr jr_00d_7770

    jr z, jr_00d_7752

    ld [$0505], sp
    dec b
    dec b
    ld c, b
    ld c, b
    ld b, h

jr_00d_7752:
    ld b, h
    add h
    add h
    add d
    add d
    add d
    add d
    add d
    add d

jr_00d_775b:
    nop
    nop
    sub b
    sub b
    db $fc
    db $fc
    add h
    add h
    add h
    add h
    inc b
    inc b
    ld [$3008], sp
    jr nc, jr_00d_776e

    ld [bc], a
    ld c, d

jr_00d_776e:
    ld c, d
    db $fc

jr_00d_7770:
    db $fc
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld [$1008], sp
    db $10
    jr nz, jr_00d_779b

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00d_77af

    jr nz, jr_00d_77b1

    jr nz, jr_00d_77b3

    ld hl, $2221
    ld [hl+], a
    inc h
    inc h
    jr c, jr_00d_77d3

jr_00d_779b:
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    inc c
    inc c
    inc [hl]
    inc [hl]
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_00d_77af:
    inc h
    inc h

jr_00d_77b1:
    ld [hl+], a
    ld [hl+], a

jr_00d_77b3:
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    add b
    add b
    add b
    add b
    nop
    nop
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
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h

jr_00d_77d3:
    ld b, h
    ld b, h
    inc b
    inc b
    ld [$1008], sp
    stop
    nop
    nop
    nop
    cp $fe
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    jr z, jr_00d_780f

    db $10
    db $10
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld [$1008], sp
    stop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$1808], sp
    jr @+$6a

    ld l, b
    ld [$0808], sp
    ld [$0000], sp
    ld e, $1e

jr_00d_780f:
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld e, d
    ld e, d
    inc b
    inc b
    ld [$7008], sp
    ld [hl], b
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    db $10
    db $10
    ld a, [hl]
    ld a, [hl]
    db $10
    db $10
    db $10
    db $10
    ld e, $1e
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc b
    inc b
    ld [$3008], sp
    jr nc, jr_00d_783e

    ld [bc], a
    ld a, d

jr_00d_783e:
    ld a, d
    nop
    nop
    db $fc
    db $fc
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_00d_7869

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
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld [$1008], sp
    stop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr jr_00d_787d

    inc d
    inc d
    db $10
    db $10

jr_00d_7869:
    db $10
    stop
    nop
    jr nz, jr_00d_788f

    jr nz, jr_00d_7891

    jr nz, jr_00d_7893

    jr nc, jr_00d_78a5

    jr z, @+$2a

    jr nz, jr_00d_7899

    jr nz, jr_00d_789b

    add b
    add b

jr_00d_787d:
    add b
    add b
    nop
    nop
    ld [$1008], sp
    db $10
    jr nc, jr_00d_78b7

    ld d, b
    ld d, b
    db $10
    stop
    nop
    ld a, [hl]
    ld a, [hl]

jr_00d_788f:
    nop
    nop

jr_00d_7891:
    ld a, [hl]
    ld a, [hl]

jr_00d_7893:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b

jr_00d_7899:
    jr c, jr_00d_78d3

jr_00d_789b:
    ld bc, $0700
    ld bc, $060f
    inc e
    ld [$1018], sp

jr_00d_78a5:
    jr nc, jr_00d_78b7

    jr nc, jr_00d_78c9

    jr nc, @+$22

    ld hl, sp+$00
    db $fc
    ldh a, [rNR32]
    ld [$040c], sp
    ld b, $02
    ld [bc], a
    ld [bc], a

jr_00d_78b7:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0700
    inc bc
    ld c, $04
    inc e
    ld [$1038], sp
    jr nc, jr_00d_78e9

jr_00d_78c9:
    ld h, b
    jr nz, jr_00d_7904

    nop
    db $fc
    ld hl, sp-$72
    inc b
    rlca
    ld [bc], a

jr_00d_78d3:
    inc bc
    ld bc, $0101
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    rra
    rlca
    inc a
    jr jr_00d_7954

    jr nz, @-$1e

    ld b, b
    ret nz

    ret nz

jr_00d_78e9:
    ret nz

    add b
    rst $38
    nop
    rst $38
    rst $38
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
    add b
    nop
    ldh [rP1], a
    ldh a, [$c0]
    ld a, b
    jr nc, @+$1e

jr_00d_7904:
    ld [$040e], sp
    ld b, $02
    ld [bc], a
    ld [bc], a
    jr nz, jr_00d_792d

    jr nz, jr_00d_792f

    jr nz, jr_00d_7931

    ccf
    jr nz, jr_00d_7953

    jr nz, jr_00d_7935

    jr nc, jr_00d_7957

    db $10
    ccf
    db $10
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld b, $02
    cp $04
    cp $04
    db $fc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    ld h, b
    ld b, b

jr_00d_792d:
    ld h, b
    ld b, b

jr_00d_792f:
    ld b, b
    ld b, b

jr_00d_7931:
    rst $38
    ld b, b
    rst $38
    ret nz

jr_00d_7935:
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld bc, $0100
    nop
    inc bc
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc b
    db $fc
    ld [$8080], sp
    add b
    add b
    add b
    nop
    rst $38
    nop

jr_00d_7953:
    rst $38

jr_00d_7954:
    nop
    rst $38
    add b

jr_00d_7957:
    rst $38
    add b
    rst $38
    ld b, b
    nop
    nop
    nop
    nop
    ld a, b

jr_00d_7960:
    jr nc, jr_00d_7960

    ld a, h
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld c, $04
    sbc h
    ld [$f0f8], sp
    ldh a, [$60]
    ld hl, sp+$10
    rra
    db $10
    rra
    db $10

jr_00d_797f:
    rrca
    jr jr_00d_79a1

    ld [$080f], sp
    inc c
    rlca
    inc b
    rlca
    ld [bc], a
    rlca
    db $fd
    dec b
    db $fd
    dec b
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop

jr_00d_79a1:
    rst $38
    nop
    rst $38
    nop
    ld bc, $01ff
    rst $38
    inc bc
    cp $f8
    db $10
    ldh a, [rNR41]
    ret nz

    ld h, b
    and c
    ret nz

    jp $8281


    inc bc
    ld b, $03
    inc b
    rlca
    ld a, a
    jr nz, jr_00d_79fd

    jr jr_00d_797f

    ld a, a
    rst $38
    jp Jump_000_01ff


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
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$04
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    ld hl, sp+$08
    db $fc
    ld [$04fe], sp
    cp $04
    cp $02
    ld [bc], a
    cp $02
    cp $02
    cp $06
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

jr_00d_79fd:
    nop
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld h, b
    ccf
    jr nc, jr_00d_7a26

    jr jr_00d_7a18

    rrca
    rlca
    ld [bc], a
    cp $06
    db $fc
    inc b
    db $fc
    inc c
    ld hl, sp+$0c
    ld hl, sp+$18
    ldh a, [rNR41]

jr_00d_7a18:
    ldh a, [$c0]
    ldh [rDIV], a
    rlca
    inc b
    rlca
    ld b, $03
    ld [bc], a
    inc bc
    ld bc, $0103

jr_00d_7a26:
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
    add b
    rst $38
    ld [hl], b
    rst $38
    rrca
    rra
    nop
    rst $38
    nop
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
    rst $38
    db $fc
    cp $02
    cp $06
    db $fc
    inc b
    db $fc
    inc c
    ld hl, sp+$10
    ldh a, [rSVBK]
    ldh [$80], a
    ret nz

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

Jump_00d_7e6d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
